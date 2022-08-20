

#include "capture_mem_ops.h"
#include <numeric>
#include <goto-programs/goto_model.h>
#include <util/fresh_symbol.h>
#include <util/c_types.h>
#include <goto-programs/validate_code.h>
#include <util/validation_mode.h>
#include <analyses/dependence_graph.h>
#include <util/format_expr.h>
#include <memory>
#include <optional.hpp>
#include "cover_basic_blocks.h"
#include <algorithm>
#include "goto-instrument/basic_block_dominators.h"
#include "goto-instrument/function.h"
#include "util/arith_tools.h"
#include "util/expr_util.h"
#include <iostream>
#include <util/prefix.h>
#include "util/string_constant.h"
#include <algorithm>

using std::size_t;

inline bool is_capturing_macro(goto_programt::const_targett &inst) {
  if (inst->is_assign()) {
    auto lhs = inst->assign_lhs();
    if (lhs.id() == ID_symbol && id2string(to_symbol_expr(lhs).get_identifier()).find("cbmc_pointer_object_") == 0) {
      return true;
    }
  }
  return false;
}

inline bool is_capturing_macro(goto_programt::targett &inst) {
  if (inst->is_assign()) {
    auto lhs = inst->assign_lhs();
    if (lhs.id() == ID_symbol && id2string(to_symbol_expr(lhs).get_identifier()).find("cbmc_pointer_object_") == 0) {
      return true;
    }
  }
  return false;
}

unsigned get_num_obsv_in_basic_block(basic_block_id bb, const cover_basic_blockst &bb_store, const goto_programt &program) {
  unsigned count = 0;
  auto visitor = *bb_store.instruction_of(bb);
  while (true) {
    if (is_capturing_macro(visitor)) {
      count += 1;
    }
    visitor++;
    // Break when we've reached the end of the function
    if (visitor == program.instructions.end()) {
      break;
    }
    // Break when we are inside another BB
    if (is_repret_inst(bb_store, visitor)) {
      break;
    }
  }
  return count;
}

template <bool post_dom>
basic_block_id get_idom(basic_block_id bb, const cfg_dominators_templatet<program_and_bb_store, basic_block_id, post_dom> &dom_store, const cover_basic_blockst &bb_store, const goto_programt &program) {
  auto doms = dom_store.get_node(bb).dominators;
  std::vector<basic_block_id> filter_out_self;
  std::copy_if(
    doms.begin(),
    doms.end(),
    std::back_inserter(filter_out_self),
    [&](const basic_block_id &curr)
    {
      return curr != bb;
  });

  if (post_dom) {
    auto idom = *std::min_element(
      filter_out_self.begin(),
      filter_out_self.end(),
      [&](const basic_block_id &l, const basic_block_id &r)
      {
        return (*bb_store.instruction_of(l))->location_number <
              (*bb_store.instruction_of(r))->location_number;
      });
    return idom;
  }
  auto idom = *std::max_element(
    filter_out_self.begin(),
    filter_out_self.end(),
    [&](const basic_block_id &l, const basic_block_id &r)
    {
      return (*bb_store.instruction_of(l))->location_number <
             (*bb_store.instruction_of(r))->location_number;
    });
  return idom;
}

// Populate result with the height of every ST-structure from source to sink
// return the height of source to sink
unsigned getObsvHeightOnDomTreeEdge(
    basic_block_id source_bb, basic_block_id sink_bb, bb_cfg_post_dominatorst &pd_store, bb_cfg_dominatorst &dom_store, const cover_basic_blockst &bb_store, const goto_programt &program,
    std::map<std::pair<basic_block_id, basic_block_id>, unsigned> &result, messaget &log) {

  unsigned acc_dist = 0;
  for (basic_block_id i = source_bb; i != sink_bb;
       i = get_idom(i, pd_store, bb_store, program)) {
    // The sink node should always dominates
    assert(pd_store.dominates(sink_bb, i));

    basic_block_id pd_of_i = get_idom(i, pd_store, bb_store, program);
    basic_block_id dom_of_pd_of_i = get_idom(pd_of_i, dom_store, bb_store, program);
    unsigned head_block_count = get_num_obsv_in_basic_block(i, bb_store, program);

    // Find the max height from any successors(i) to post dominator of i
    unsigned max_local_dist = 0;
    auto succ_blocks = get_successive_bb(i, bb_store, program);
    for (unsigned succ_block : succ_blocks) {
      unsigned local_dist_without_head =
          getObsvHeightOnDomTreeEdge(succ_block, pd_of_i, pd_store, dom_store, bb_store, program, result, log);

      max_local_dist += local_dist_without_head;
      // if (local_dist > max_local_dist) {
      //   max_local_dist = local_dist;
      // }
    }
    max_local_dist += head_block_count;
    if (i == dom_of_pd_of_i) {
      result.emplace(std::make_pair(i, pd_of_i), max_local_dist);
    }
    acc_dist += max_local_dist;
  }
  return acc_dist;
}

goto_programt::const_targett get_last_inst_in_bb(goto_programt &program, const cover_basic_blockst &bb_store, size_t bb) {
  auto visitor = *bb_store.instruction_of(bb);
  while (true) {
    visitor++;
    // Break when we've reached the end of the function
    if (visitor == program.instructions.end()) {
      break;
    }
    // Break when we are inside another BB
    if (bb_store.block_of(visitor) != bb) {
      break;
    }
  }
  visitor--;
  return visitor;
}


std::map<basic_block_id, std::pair<int, std::string>> getObsvDistForBasicBlock(basic_block_id root_bb, cover_basic_blockst &bb_store,
    std::map<std::pair<basic_block_id, basic_block_id>, unsigned> &STSize, goto_programt &program, symbol_tablet &symbol_table, messaget &log) {
  std::vector<basic_block_id> toVisit;
  toVisit.emplace_back(root_bb);
  std::map<basic_block_id, int> obsv_dist; // observation distance for the beginning of each basic block
  std::map<basic_block_id, std::string> condition_values; // concatenated path condition values for each basic block
  std::map<std::string, int> pc_values_to_condition_index; // if there're multiple branches in the same scope, we keep track of the index that increments from 0

  std::set<basic_block_id> all_bb;
  forall_goto_program_instructions(it, program) {
    obsv_dist[bb_store.block_of(it)] = -1;
  }
  obsv_dist[root_bb] = 0;
  // NB: we can't traverse dominating tree(it's not readily available)
  // therefore we just do a DFS on CFG, and use information from st structures
  // whenever available
  while (!toVisit.empty()) {
    auto curr = toVisit.back();
    // assert(obsv_dist[curr] != -1);
    toVisit.pop_back();

    for (const auto &st: STSize) {
      if (st.first.first == curr) {
        // st structure must reach the sink faster than traversing the CFG
        assert(obsv_dist[st.first.second] == -1);

        toVisit.emplace_back(st.first.second);
        obsv_dist[st.first.second] = obsv_dist[curr] + st.second;

        condition_values[st.first.second] = condition_values[curr];
        // there's at most one st structure starting from any bb
        break;
      }
    }

    unsigned curr_count = get_num_obsv_in_basic_block(curr, bb_store, program);
    auto succ_bb = get_successive_bb(curr, bb_store, program);
    int condition_index;
    if (succ_bb.size() == 2) {
      condition_index = pc_values_to_condition_index[condition_values[curr]];
      pc_values_to_condition_index[condition_values[curr]] += 2;
    }
    for (auto &succ : succ_bb) {
      if (succ_bb.size() == 1) {
        if (obsv_dist[succ] == -1) {
          condition_values[succ] = condition_values[curr];
        }
      } else if (succ_bb.size() == 2) {
        // succ_bb is the beginning of a branch
        condition_values[succ] = condition_values[curr] + "$" + std::to_string(condition_index++);

        auto first_inst = *bb_store.instruction_of(succ);
        assert(first_inst->is_function_call() || first_inst->is_goto());
        if (first_inst->is_goto()) {
          first_inst = first_inst->get_target();
        }
        exprt call = first_inst->call_function();
        // set up call to branch_id with ccondition_value
        program.const_cast_target(first_inst)->call_function() = call;
        program.const_cast_target(first_inst)->call_arguments() = {address_of_exprt(index_exprt(
              string_constantt(condition_values[succ]),
              from_integer(0, index_type())))};
      }
      if (obsv_dist[succ] == -1) {
        toVisit.emplace_back(succ);
      }
      obsv_dist[succ] = std::max(obsv_dist[succ], obsv_dist[curr] + (int)curr_count);
    }
  }

  // merge obsv_dist and condition_values into one map
  std::map<basic_block_id, std::pair<int, std::string>> obsv_dist_and_condition_values;
  for (const auto &obsv_dist_entry : obsv_dist) {
    obsv_dist_and_condition_values[obsv_dist_entry.first] = std::make_pair(obsv_dist_entry.second, condition_values[obsv_dist_entry.first]);
  }
  return obsv_dist_and_condition_values;
}

std::map<goto_programt::const_targett, std::string> getObsvDistForInstruction(const goto_programt &program, const cover_basic_blockst &bb_store, std::map<basic_block_id, std::pair<int, std::string>> &info_for_bb) {
  std::map<goto_programt::const_targett, std::string> result;

  unsigned local_dist = 0;
  forall_goto_program_instructions(it, program) {
    if (*bb_store.instruction_of(bb_store.block_of(it)) == it) {
      local_dist = 0;
    }
    if (is_capturing_macro(it)) {
      result[it] = info_for_bb[bb_store.block_of(it)].second + "_" + std::to_string(info_for_bb[bb_store.block_of(it)].first + local_dist);
      local_dist += 1;
    }
  }

  return result;
}


std::map<goto_programt::const_targett, std::string> construct_differential_set_constraint(goto_modelt &goto_model, messaget &log, std::string function_name) {
  const namespacet ns(goto_model.get_symbol_table());


  for(auto &gf_entry : goto_model.goto_functions.function_map)
  {
    if (id2string(gf_entry.first) != function_name) {
      continue;
    }
    assert(gf_entry.second.body_available());

    auto &program = gf_entry.second.body;

    auto bb_store = cover_basic_blockst(program);
    bb_store.output(log.status());
    log.status() << messaget::eom;

    bb_cfg_post_dominatorst pd_store;
    program_and_bb_store p = std::pair<const goto_programt&, const cover_basic_blockst&>(program, bb_store);
    pd_store(p);
    bb_cfg_dominatorst dom_store;
    dom_store(p);

    // Get ST structure size std::map<>
    std::map<std::pair<size_t, size_t>, unsigned> STSize;
    assert(program.instructions.back().is_end_function());
    auto root_bb = bb_store.block_of(program.instructions.begin());
    getObsvHeightOnDomTreeEdge(
      root_bb,
      bb_store.block_of(std::prev(program.instructions.end())),
      pd_store,
      dom_store,
      bb_store,
      program,
      STSize,
      log);

    for (auto const& x: STSize) {
      log.status() << "" << x.first.first << "<-st distance->" << x.first.second << " = " << x.second << "\n" << messaget::eom;;
    }

    // Get obsv_distance for BB
    auto obsvDistForBasicBlock = getObsvDistForBasicBlock(root_bb, bb_store, STSize, program, goto_model.symbol_table, log);
    for (auto const& x: obsvDistForBasicBlock) {
      log.status() << "----\n" << x.first << " --BB obsv_distance--> " << x.second.first << "\n" << messaget::eom;
      log.status() << "----\n" << x.first << " --BB PC_values--> " << x.second.second << "\n" << messaget::eom;
    }

    goto_model.goto_functions.update();
    bb_store = cover_basic_blockst(program);

    auto obsv_distance_for_inst = getObsvDistForInstruction(program, bb_store, obsvDistForBasicBlock);
    for (auto const& x: obsv_distance_for_inst) {
      log.status() << "----\n" << x.first->location_number << " --inst obsv_distance--> " << x.second << "\n" << messaget::eom;
    }
    return obsv_distance_for_inst;
    
  }
  return {};
}