
#include <map>
#include <set>
#include <list>
#include <utility>
#include <analyses/cfg_dominators.h>
#include "goto-instrument/cover_basic_blocks.h"

typedef size_t basic_block_id;

inline bool is_repret_inst(const cover_basic_blockst &bb_store, const goto_programt::const_targett &inst) {
  return *bb_store.instruction_of(bb_store.block_of(inst)) == inst;
}

std::vector<basic_block_id> get_successive_bb(basic_block_id bb, const cover_basic_blockst &bb_store, const goto_programt &program) {
  auto visitor = *bb_store.instruction_of(bb);
  while (true) {
    if (visitor->is_end_function()) {
      return {};
    }

    // HACK: the switch statement produce weird code where the first instruction of a basicblock
    // is a GOTO to the rest of the block. This statement is to specifically deal with this situation
    if (visitor->has_target()) {
      if (bb_store.block_of(visitor->get_target()) == bb_store.block_of(visitor)) {
        visitor = visitor->get_target();
        continue;
      }
    }

    if (visitor->has_target() || is_repret_inst(bb_store, std::next(visitor))) {
      auto succs = program.get_successors(visitor);
      std::vector<basic_block_id> result;
      for (auto succ: succs) {
        result.emplace_back(bb_store.block_of(succ));
      }
      return result;
    }
    visitor++;
  }
}

typedef std::pair<const goto_programt&, const cover_basic_blockst&> program_and_bb_store;
typedef cfg_dominators_templatet<program_and_bb_store, basic_block_id, false>
  bb_cfg_dominatorst;
typedef cfg_dominators_templatet<program_and_bb_store, basic_block_id, true>
  bb_cfg_post_dominatorst;


template <class T>
struct procedure_local_cfg_baset<
  T,
  program_and_bb_store,
  basic_block_id>
  : public grapht<
      cfg_base_nodet<T, basic_block_id>>
{
  typedef grapht<
    cfg_base_nodet<T, basic_block_id>>
    base_grapht;
  typedef typename base_grapht::nodet nodet;
  typedef std::map<basic_block_id,
                   basic_block_id>
    entry_mapt;
  typedef std::size_t entryt;
  entry_mapt entry_map;

  procedure_local_cfg_baset() {}

  void operator()(const program_and_bb_store &args)
  {
    const auto &program=args.first;
    const auto &bb_store=args.second;

    auto first_bb = get_first_node(args);
    entry_map[first_bb] = this->add_node();
    (*this)[entry_map[first_bb]].PC = first_bb;
    std::vector<basic_block_id> to_visit = {first_bb};
    while (!to_visit.empty()) {
      auto curr = to_visit.back();
      to_visit.pop_back();

      auto succs = get_successive_bb(curr, bb_store, program);
      for (auto succ: succs) {
        if (entry_map.find(succ) == entry_map.end()) {
          entry_map[succ] = this->add_node();
          (*this)[entry_map[succ]].PC = succ;
          to_visit.emplace_back(succ);
        }

        this->add_edge(entry_map.at(curr), entry_map.at(succ));
      }
    }
  }

  basic_block_id get_node_index(
    const basic_block_id &bb) const
  {
    return entry_map.at(bb);
  }

  nodet &
  get_node(const basic_block_id &bb)
  {
    return (*this)[get_node_index(bb)];
  }
  const nodet &get_node(
    const basic_block_id &bb) const
  {
    return (*this)[get_node_index(bb)];
  }

  static basic_block_id
  get_first_node(const program_and_bb_store &args)
  {
    const auto &program=args.first;
    const auto &bb_store=args.second; 
    return bb_store.block_of(program.instructions.begin());
  }

  static basic_block_id
  get_last_node(const program_and_bb_store &args)
  {
    const auto &program=args.first;
    const auto &bb_store=args.second; 
    return bb_store.block_of(--program.instructions.end());
  }

  static bool nodes_empty(const program_and_bb_store &args)
  {
    const auto &program=args.first;
    return program.instructions.empty();
  }
};