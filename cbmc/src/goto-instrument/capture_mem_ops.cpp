

#include "capture_mem_ops.h"
#include <analyses/dependence_graph.h>
#include <goto-programs/goto_model.h>
#include <numeric>
#include <stack>
#include <util/c_types.h>
#include <util/fresh_symbol.h>
#include <goto-programs/validate_code.h>
#include <util/validation_mode.h>
#include <util/arith_tools.h>
#include <util/pointer_predicates.h>
#include <util/pointer_offset_size.h>
#include <std_code.h>

#include <util/format_expr.h>
#include <util/suffix.h>

bool contains_no_function_calls(
  goto_modelt &goto_model,
  messaget &log,
  std::string function_name)
{
  for(auto &gf_entry : goto_model.goto_functions.function_map)
  {
    if(id2string(gf_entry.first) != function_name)
    {
      continue;
    }
    for(auto &ins : gf_entry.second.body.instructions)
    {
      if(!ins.is_function_call())
      {
        continue;
      }

      const exprt &call = ins.call_function();

      if(call.id() != ID_symbol)
        // there should be no function pointers
        assert(false);

      auto func_name = id2string(to_symbol_expr(ins.call_function()).get_identifier());
      // do not inline io functions
      if (func_name == "read" || func_name == "write" || func_name == "malloc"  || func_name == "free" || func_name.find("memcpy") != std::string::npos || func_name.find("memset") != std::string::npos || func_name == "strlen")
        continue;

      log.error() << "Function call at " << ins.source_location() << "\n"
                  << messaget::eom;
      return false;
    }
  }
  return true;
}

bool contains_no_loops(
  goto_modelt &goto_model,
  messaget &log,
  std::string function_name)
{
  bool result = true;
  for(auto &gf_entry : goto_model.goto_functions.function_map)
  {
    if(id2string(gf_entry.first) != function_name)
    {
      continue;
    }
    for(auto &ins : gf_entry.second.body.instructions)
    {
      if(ins.is_backwards_goto())
      {
        const auto loop_id = goto_programt::loop_id(gf_entry.first, ins);
        log.error() << "Backwards goto at " << ins.source_location()
                    << " loop_id: " << id2string(loop_id) << "\n"
                    << messaget::eom;
        result = false;
      }
    }
  }
  return result;
}

void visit_to_get_mem_ops(
  exprt &curr,
  messaget &log,
  std::vector<exprt> &mem_ops,
  symbol_tablet &sym_table)
{
  if (curr.id() == ID_symbol) {
    return;
  } else if(curr.id() == ID_dereference)
  {
    for(auto &op : curr.operands())
    {
      visit_to_get_mem_ops(op, log, mem_ops, sym_table);
    }
    if (can_cast_type<array_typet>(curr.type())) {
      return;
    }
    exprt address_of(ID_address_of, pointer_type(curr.type()), {curr});
    mem_ops.emplace_back(address_of);
  } else if (curr.id() == ID_address_of) {
      // Taking the address of an expr doesn't incur memory access directly
      // but its operands may incur memory accesses

      // COMMENTING OUT TO SIMPLIFY

      // assert(curr.operands().size() == 1);
      // exprt addr_taken_op = curr.operands()[0];
      // exprt::operandst rec_ops;
      // if(addr_taken_op.id() == ID_index)
      // {
      //   visit_to_get_mem_ops(to_index_expr(addr_taken_op).index(), log, mem_ops, sym_table);
      // }
      // else if(addr_taken_op.id() == ID_member)
      // {
      //   return;
      // }
      // else
      // {
      //   for (auto &op: addr_taken_op.operands()) {
      //     visit_to_get_mem_ops(op, log, mem_ops, sym_table);
      //   }
      // }
  } else if (curr.id() == ID_member) {
      member_exprt &member_expr = to_member_expr(curr);
      auto &dot_lhs = member_expr.compound();
      for(auto &op : dot_lhs.operands())
      {
        visit_to_get_mem_ops(op, log, mem_ops, sym_table);
      }
      exprt address_of(ID_address_of, pointer_type(curr.type()), {curr});
      mem_ops.emplace_back(address_of);
  } else if (curr.id() == ID_index) {
      visit_to_get_mem_ops(to_index_expr(curr).index(), log, mem_ops, sym_table);
      exprt address_of(ID_address_of, pointer_type(curr.type()), {curr});
      mem_ops.emplace_back(address_of);
  } else {
    for(auto &op : curr.operands())
    {
      visit_to_get_mem_ops(op, log, mem_ops, sym_table);
    }
  }
}

void get_accessed_mem_addrs(
  goto_programt::targett ins_it,
  messaget &log,
  std::vector<exprt> &mem_ops,
  symbol_tablet &sym_table)
{
  switch(ins_it->type())
  {
  case GOTO:
  {
    visit_to_get_mem_ops(const_cast<exprt&>(ins_it->condition()), log, mem_ops, sym_table);
    break;
  }

  case INCOMPLETE_GOTO:
  case DECL:
  case DEAD:
  case SKIP:
  case END_FUNCTION:
  case LOCATION:
  // assert can appear since we manually insert a false assertion at the end of the function
  case ASSUME:
  case ASSERT:
  case ATOMIC_BEGIN:
  case ATOMIC_END:
    // These statements don't cause memory accesses
    break;

  case THROW:
  case CATCH:
  case START_THREAD:
  case END_THREAD:
    // These stataments shouldn't exist
    assert(false);
    break;

  case OTHER:
  {
    // These statements are generated to substitute calls to libc functions
    auto code = ins_it->get_other();
    if (code.get_statement() == ID_expression) {
      visit_to_get_mem_ops(const_cast<exprt&>(to_code_expression(code).expression()), log, mem_ops, sym_table);
    }
  }
    break;
  case NO_INSTRUCTION_TYPE:
    // Investigate whether these statements cause memory access
    assert(false);
    break;

  case FUNCTION_CALL:
    // // NB: Note that C's argument evaluation sequence is undefined, so we are not obeying C's standard here
    // for (auto arg: ins_it->get_function_call().arguments()) {
    //   auto arg_mem_expr = visit_to_get_mem_ops(arg, log);
    //   accessed_mem_addrs_as_void_pointer.insert(accessed_mem_addrs_as_void_pointer.end(), arg_mem_expr.begin(), arg_mem_expr.end());
    // }
    {
      auto func_name = id2string(to_symbol_expr(ins_it->call_function()).get_identifier());
      assert(func_name == "write" || func_name == "read" || func_name == "branch_id" || func_name == "malloc" || func_name == "free"  || func_name.find("memcpy") != std::string::npos || func_name.find("memset") != std::string::npos || func_name == "strlen");
      break;
    }

  case SET_RETURN_VALUE:
  {
    visit_to_get_mem_ops(const_cast<exprt&>(ins_it->return_value()), log, mem_ops, sym_table);
    break;
  }

  case ASSIGN:
  {
    visit_to_get_mem_ops(const_cast<exprt&>(ins_it->assign_rhs()), log, mem_ops, sym_table);
    visit_to_get_mem_ops(const_cast<exprt&>(ins_it->assign_lhs()), log, mem_ops, sym_table);
    break;
  }
  }
}

static std::pair<exprt, exprt> get_pointer_bounds(
  const namespacet &ns,
  const exprt &expr)
{
  if(expr.id() == ID_index)
  {
    const index_exprt &index = to_index_expr(expr);

    auto bounds = get_pointer_bounds(ns, index.array());
    auto parent_offset = bounds.first;

    // auto sub_size = size_of_expr(expr.type(), ns);
    // CHECK_RETURN(sub_size.has_value());

    // dest.offset() = plus_exprt(
    //   dest.offset(),
    //   mult_exprt(
    //     typecast_exprt::conditional_cast(index.index(), index_type()),
    //     typecast_exprt::conditional_cast(sub_size.value(), index_type())));
    return {
      plus_exprt(parent_offset, from_integer(0, unsigned_int_type())),
      plus_exprt(parent_offset, size_of_expr(index.array().type(), ns).value())};
  }
  else if(expr.id() == ID_member)
  {
    const member_exprt &member = to_member_expr(expr);
    const exprt &struct_op = member.struct_op();

    auto bounds = get_pointer_bounds(ns, struct_op);
    auto parent_offset = bounds.first;

    auto low_offset = member_offset_expr(member, ns);

    auto components = to_struct_type(ns.follow(member.struct_op().type())).components();
    size_t index = 0;
    for (const auto &c: components) {
      if (c.get_name() == member.get_component_name()) {
        break;
      }
    }
    index += 1;
    if (index == components.size()) {
      return {plus_exprt(parent_offset, low_offset.value()), plus_exprt(parent_offset, size_of_expr(struct_op.type(), ns).value())};
    } else {
      member_exprt new_member = member;
      new_member.set_component_name(components[index].get_name());
      auto upper_offset = member_offset_expr(new_member, ns);
      return {plus_exprt(parent_offset, low_offset.value()), plus_exprt(parent_offset, upper_offset.value())};
    }
    
    // CHECK_RETURN(offset.has_value());

    // dest.offset() = plus_exprt(
    //   dest.offset(),
    //   typecast_exprt::conditional_cast(offset.value(), index_type()));
    // return {from_integer(0, unsigned_int_type()), size_of_expr(index.array().type(), ns)};
  } else {
    return {from_integer(0, unsigned_int_type()), size_of_expr(expr.type(), ns).value()};
  }
}

static unsigned memop_id = 0;

bool capture_mem_ops(
  goto_modelt &goto_model,
  messaget &log,
  std::string function_name,
  const namespacet &ns)
{
  for(auto &gf_entry : goto_model.goto_functions.function_map)
  {
    if(id2string(gf_entry.first) != function_name)
    {
      continue;
    }
    for(auto ins_it = gf_entry.second.body.instructions.begin();
        ins_it != gf_entry.second.body.instructions.end();
        ins_it++)
    {
      // we don't need to capture return_value. It causes trouble in dump-c
      if(
        ins_it->is_assign() && ins_it->assign_lhs().id() == ID_symbol &&
        has_suffix(id2string(to_symbol_expr(ins_it->assign_lhs()).get_identifier()), "__return_value"))
      {
        continue;
      }

      // For each memory address that's accessed, we create corresponding capturing statement
      // and push them into a vector to be inserted into the program later.
      std::vector<goto_programt::instructiont> aggregate_capturing_instruction;

      std::vector<exprt> accessed_mem_addrs_as_void_pointer;
      get_accessed_mem_addrs(ins_it, log, accessed_mem_addrs_as_void_pointer, goto_model.symbol_table);

      for(const auto &mem_addr_as_void_pointer :
          accessed_mem_addrs_as_void_pointer)
      { 
        auto capturing_instruction_for_mem_addr =
          [&](
            std::string var_prefix,
            const irep_idt &macro,
            goto_programt::instructiont::targett &ins_it)
        {
          std::vector<goto_programt::instructiont> new_insts;
          symbol_exprt sym =
            get_fresh_aux_symbol(
              signed_int_type(),
              "",
              var_prefix + std::to_string(memop_id),
              ins_it->source_location(),
              ID_C,
              goto_model.symbol_table)
              .symbol_expr();
          new_insts.emplace_back(goto_programt::make_decl(sym, ins_it->source_location()));
          exprt pointer_info(
            macro, signed_int_type(), {mem_addr_as_void_pointer});
          new_insts.emplace_back(goto_programt::make_assignment(
            sym, pointer_info, ins_it->source_location()));

          if (mem_addr_as_void_pointer.id() != ID_symbol && macro == ID_pointer_offset) {
            // HACK: use variable of similar names to prevent simplification
            // such that we can correlate offset with its boundary during enumeration
            symbol_exprt p_offset =
              get_fresh_aux_symbol(
                signed_int_type(),
                "",
                var_prefix + std::to_string(memop_id),
                ins_it->source_location(),
                ID_C,
                goto_model.symbol_table)
                .symbol_expr();
            // auto bounds = get_pointer_bounds(ns, to_address_of_expr(mem_addr_as_void_pointer).object());
            // exprt lower_bound_pred = not_exprt(binary_relation_exprt(p_offset, ID_lt, bounds.first));
            // exprt upper_bound_pred = not_exprt(binary_relation_exprt(p_offset, ID_gt, bounds.second));
            exprt lower_bound_pred = not_exprt(binary_relation_exprt(p_offset, ID_lt, from_integer(0, unsigned_int_type())));
            exprt upper_bound_pred = binary_relation_exprt(p_offset, ID_lt, object_size_exprt(mem_addr_as_void_pointer, unsigned_int_type()));
            auto lower_bound_pred_inst = goto_programt::make_assumption(lower_bound_pred, ins_it->source_location());
            new_insts.emplace_back(lower_bound_pred_inst);
            auto upper_bound_pred_inst = goto_programt::make_assumption(upper_bound_pred, ins_it->source_location());
            new_insts.emplace_back(upper_bound_pred_inst);
          }
          new_insts.emplace_back(goto_programt::make_dead(sym, ins_it->source_location()));
          return new_insts;
        };
        auto pointer_obj_insts = capturing_instruction_for_mem_addr(
          "cbmc_pointer_object_", ID_pointer_object, ins_it);
        aggregate_capturing_instruction.insert(
          aggregate_capturing_instruction.end(),
          pointer_obj_insts.begin(),
          pointer_obj_insts.end());
        auto pointer_off_insts = capturing_instruction_for_mem_addr(
          "cbmc_pointer_offset_", ID_pointer_offset, ins_it);
        aggregate_capturing_instruction.insert(
          aggregate_capturing_instruction.end(),
          pointer_off_insts.begin(),
          pointer_off_insts.end());

        memop_id += 1;
      }

      if(!aggregate_capturing_instruction.empty())
      {
        // reassign labels
        aggregate_capturing_instruction[0].labels = ins_it->labels;
        ins_it->labels.clear();

        bool already_reset_target = false;
        for(auto &capturing_inst : aggregate_capturing_instruction)
        {
          auto loc = gf_entry.second.body.insert_before(ins_it, capturing_inst);
          if(!already_reset_target)
          {
            // modify targets for each incoming GOTO instruction so that they now
            // points to the first capturing statement
            for(auto &origin_pred : ins_it->incoming_edges)
            {
              if(
                origin_pred->has_target() &&
                origin_pred->get_target() == ins_it)
              {
                origin_pred->set_target(loc);
              }
            }
            already_reset_target = true;
          }
        }
      }
    }
  }

  goto_model.goto_functions.update();

  return true;
}
