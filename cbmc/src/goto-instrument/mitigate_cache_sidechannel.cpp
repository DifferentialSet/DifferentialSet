

#include "mitigate_cache_sidechannel.h"
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
#include <util/suffix.h>
#include "util/expr_util.h"
#include <util/prefix.h>
#include "goto-instrument/function.h"

#include <util/format_expr.h>
#include <ansi-c/ansi_c_language.h>
#include <fstream>
#include "goto-programs/goto_convert_functions.h"


std::string branch_id_src = R""""(
void branch_id(char*);
)"""";


void ensure_two_branches_exist(
  goto_modelt &goto_model,
  std::string function_name,
  message_handlert &message_handler)
{
  std::istringstream buffer(branch_id_src);

  ansi_c_languaget ansi_c_language;
  ansi_c_language.set_message_handler(message_handler);
  ansi_c_language.parse(buffer, "");
  ansi_c_language.typecheck(goto_model.symbol_table, "", true, {"branch_id"});

  goto_convert(
    "branch_id",
    goto_model.symbol_table,
    goto_model.goto_functions,
    message_handler);
  for(auto &gf_entry : goto_model.goto_functions.function_map)
  {
    if(id2string(gf_entry.first) != function_name)
    {
      continue;
    }
    Forall_goto_program_instructions(i_it, gf_entry.second.body)
    {
      // if C goto T is transformed into:
      //
      // if !C goto T'          i_it
      // id("taken");           t1
      // goto T                 t2
      // T': id("not-taken");   t3
      // ...

      if(i_it->is_goto() && !i_it->condition().is_constant())
      {
        // negate condition
        i_it->condition_nonconst() = boolean_negate(i_it->condition());

        goto_programt::targett goto_inst = gf_entry.second.body.insert_after(
          i_it, goto_programt::make_goto(i_it->get_target(), true_exprt()));

        auto beginning_of_then = goto_inst;
        beginning_of_then++;
        auto not_taken_call = goto_programt::make_function_call(
            function_to_call(goto_model.symbol_table, "branch_id", "not-taken"));
        gf_entry.second.body.insert_before_swap(beginning_of_then, not_taken_call);

        // HACK: check whether the last instruction in then branch is a GOTO
        // if it's a GOTO, the branch is double-sided and we add branch_id at the other branch
        // otherwise, the branch is single-sided and we add branch_id at the newly created space near haeder
        auto taken_call = goto_programt::make_function_call(
            function_to_call(goto_model.symbol_table, "branch_id", "taken"));
        auto end_of_then = --i_it->get_target();
        if (end_of_then->is_goto())
        {
          gf_entry.second.body.insert_before_swap(i_it->get_target(), taken_call);
        }
        else
        {
          gf_entry.second.body.insert_after(i_it, taken_call);
        }

        /*
      goto_programt::targett t1 = program.insert_after(
        i_it,
        goto_programt::make_skip());

      goto_programt::targett t2 = program.insert_after(
        t1, goto_programt::make_goto(i_it->get_target(), true_exprt()));

      goto_programt::targett t3 = program.insert_after(
        t2,
        goto_programt::make_skip());
*/
        i_it->targets.clear();
        i_it->targets.push_back(++goto_inst);
      }
    }
  }
}

symbol_exprt get_secure_load_function(symbol_tablet &sym_table, size_t width)
{
  if (width == 64) {
    auto free_sym = sym_table.lookup("uint64_t_secure_load");
    if(free_sym == nullptr)
    {
      symbolt new_free_sym;
      new_free_sym.type = code_typet{code_typet{
        {
          code_typet::parametert{pointer_type(unsigned_long_long_int_type())},
          code_typet::parametert{pointer_type(pointer_type(empty_typet()))},
          code_typet::parametert{unsigned_int_type()},
          code_typet::parametert{unsigned_int_type()}
        },
        unsigned_long_long_int_type()}};
      new_free_sym.name = new_free_sym.pretty_name = new_free_sym.base_name =
        "uint64_t_secure_load";
      new_free_sym.mode = ID_C;
      sym_table.insert(new_free_sym);
      return new_free_sym.symbol_expr();
    }
    return free_sym->symbol_expr();
  } else if (width == 32) {
    auto free_sym = sym_table.lookup("uint32_t_secure_load");
    if(free_sym == nullptr)
    {
      symbolt new_free_sym;
      new_free_sym.type = code_typet{code_typet{
        {
          code_typet::parametert{pointer_type(unsigned_int_type())},
          code_typet::parametert{pointer_type(pointer_type(empty_typet()))},
          code_typet::parametert{unsigned_int_type()},
          code_typet::parametert{unsigned_int_type()}
        },
        unsigned_int_type()}};
      new_free_sym.name = new_free_sym.pretty_name = new_free_sym.base_name =
        "uint32_t_secure_load";
      new_free_sym.mode = ID_C;
      sym_table.insert(new_free_sym);
      return new_free_sym.symbol_expr();
    }
    return free_sym->symbol_expr();
  } else if (width == 16) {
    auto free_sym = sym_table.lookup("uint16_t_secure_load");
    if(free_sym == nullptr)
    {
      symbolt new_free_sym;
      new_free_sym.type = code_typet{code_typet{
        {
          code_typet::parametert{pointer_type(unsigned_short_int_type())},
          code_typet::parametert{pointer_type(pointer_type(empty_typet()))},
          code_typet::parametert{unsigned_int_type()},
          code_typet::parametert{unsigned_int_type()}
        },
        unsigned_short_int_type()}};
      new_free_sym.name = new_free_sym.pretty_name = new_free_sym.base_name =
        "uint16_t_secure_load";
      new_free_sym.mode = ID_C;
      sym_table.insert(new_free_sym);
      return new_free_sym.symbol_expr();
    }
    return free_sym->symbol_expr();
  } else {
    auto free_sym = sym_table.lookup("uint8_t_secure_load");
    if(free_sym == nullptr)
    {
      symbolt new_free_sym;
      new_free_sym.type = code_typet{code_typet{
        {
          code_typet::parametert{pointer_type(unsigned_char_type())},
          code_typet::parametert{pointer_type(pointer_type(empty_typet()))},
          code_typet::parametert{unsigned_int_type()},
          code_typet::parametert{unsigned_int_type()}
        },
        unsigned_char_type()}};
      new_free_sym.name = new_free_sym.pretty_name = new_free_sym.base_name =
        "uint8_t_secure_load";
      new_free_sym.mode = ID_C;
      sym_table.insert(new_free_sym);
      return new_free_sym.symbol_expr();
    }
    return free_sym->symbol_expr();
  }
}

symbol_exprt get_secure_store_function(symbol_tablet &sym_table, size_t width)
{
  if (width == 64) {
    auto free_sym = sym_table.lookup("uint64_t_secure_store");
    if(free_sym == nullptr)
    {
      symbolt new_free_sym;
      new_free_sym.type = code_typet{code_typet{
        {code_typet::parametert{unsigned_long_long_int_type()},
        code_typet::parametert{pointer_type(unsigned_long_long_int_type())},
        code_typet::parametert{pointer_type(pointer_type(empty_typet()))},
        code_typet::parametert{unsigned_int_type()},
        code_typet::parametert{unsigned_int_type()}},
        empty_typet{}}};
      new_free_sym.name = new_free_sym.pretty_name = new_free_sym.base_name =
        "uint64_t_secure_store";
      new_free_sym.mode = ID_C;
      sym_table.insert(new_free_sym);
      return new_free_sym.symbol_expr();
    }
    return free_sym->symbol_expr();
  } else if (width == 32) {
    auto free_sym = sym_table.lookup("uint32_t_secure_store");
    if(free_sym == nullptr)
    {
      symbolt new_free_sym;
      new_free_sym.type = code_typet{code_typet{
        {code_typet::parametert{unsigned_int_type()},
        code_typet::parametert{pointer_type(unsigned_int_type())},
        code_typet::parametert{pointer_type(pointer_type(empty_typet()))},
        code_typet::parametert{unsigned_int_type()},
        code_typet::parametert{unsigned_int_type()}},
        empty_typet{}}};
      new_free_sym.name = new_free_sym.pretty_name = new_free_sym.base_name =
        "uint32_t_secure_store";
      new_free_sym.mode = ID_C;
      sym_table.insert(new_free_sym);
      return new_free_sym.symbol_expr();
    }
    return free_sym->symbol_expr();
  } else if (width == 16) {
    auto free_sym = sym_table.lookup("uint16_t_secure_store");
    if(free_sym == nullptr)
    {
      symbolt new_free_sym;
      new_free_sym.type = code_typet{code_typet{
        {code_typet::parametert{unsigned_short_int_type()},
        code_typet::parametert{pointer_type(unsigned_short_int_type())},
        code_typet::parametert{pointer_type(pointer_type(empty_typet()))},
        code_typet::parametert{unsigned_int_type()},
        code_typet::parametert{unsigned_int_type()}},
        empty_typet{}}};
      new_free_sym.name = new_free_sym.pretty_name = new_free_sym.base_name =
        "uint16_t_secure_store";
      new_free_sym.mode = ID_C;
      sym_table.insert(new_free_sym);
      return new_free_sym.symbol_expr();
    }
    return free_sym->symbol_expr();
  } else {
    auto free_sym = sym_table.lookup("uint8_t_secure_store");
    if(free_sym == nullptr)
    {
      symbolt new_free_sym;
      new_free_sym.type = code_typet{code_typet{
        {code_typet::parametert{unsigned_char_type()},
        code_typet::parametert{pointer_type(unsigned_char_type())},
        code_typet::parametert{pointer_type(pointer_type(empty_typet()))},
        code_typet::parametert{unsigned_int_type()},
        code_typet::parametert{unsigned_int_type()}},
        empty_typet{}}};
      new_free_sym.name = new_free_sym.pretty_name = new_free_sym.base_name =
        "uint8_t_secure_store";
      new_free_sym.mode = ID_C;
      sym_table.insert(new_free_sym);
      return new_free_sym.symbol_expr();
    }
    return free_sym->symbol_expr();
  }

}

symbol_exprt get_fresh_signed_int(std::string name, symbol_tablet &sym_table) {
  return get_fresh_aux_symbol(
           signed_int_type(),
           "",
           name,
           {},
           ID_C,
           sym_table)
    .symbol_expr();
}

symbol_exprt get_fresh_signed_int_array(std::string name, const exprt &size, symbol_tablet &sym_table) {
  return get_fresh_aux_symbol(
           array_typet(signed_int_type(), size),
           "",
           name,
           {},
           ID_C,
           sym_table)
    .symbol_expr();
}

symbol_exprt get_symbol(std::string name, symbol_tablet &sym_table) {
  auto sym = auxiliary_symbolt(name, empty_typet());
  sym_table.insert(sym);
  return sym.symbol_expr();
}



std::unordered_map<size_t, std::string> memop_id_to_obsv_id;
std::unordered_map<size_t, std::string> decoy_id_to_obsv_id;

size_t memop_id = 0;
[[nodiscard]]
symbol_exprt transform_load(exprt &curr, symbol_tablet &sym_table, std::vector<goto_programt::instructiont> &extra_codes) {
  exprt address_of(ID_address_of, pointer_type(curr.type()), {curr});
  std::string memop_name = "memop_var_" + std::to_string(memop_id);
  std::string obsv_id;
  if (memop_id_to_obsv_id.find(memop_id) == memop_id_to_obsv_id.end()) {
    // if memop is not recorded during symex, the instruction is unreachable, we explicitly name it nil
    obsv_id = "nil";
  } else {
    obsv_id = memop_id_to_obsv_id[memop_id];
  }
  auto ds_sym = get_symbol("obsv_ds_" + obsv_id, sym_table);
  auto ds_bases_size_sym = get_symbol("obsv_ds_bases_size_" + obsv_id, sym_table);
  auto ds_size_sym = get_symbol("obsv_ds_size_" + obsv_id, sym_table);

  typet sym_type;
  if (can_cast_type<array_typet>(curr.type())) {
    // if the original type is array, we make the temporary variable's type a pointer
    sym_type = pointer_type(curr.type().subtype());
  } else {
    sym_type = curr.type();
  }
  std::size_t width;
  if (can_cast_type<bitvector_typet>(sym_type)) {
    if (sym_type.id() == ID_pointer) {
      width = 64;
    } else {
      width = to_bitvector_type(sym_type).get_width();
    }
  } else {
    // This could be array
    width = 64;
  }
  assert(width == 32 || width == 8 || width == 64 || width == 16);
  unsignedbv_typet int_type = width == 8 ? unsigned_char_type() : (width == 16 ? unsigned_short_int_type() : (width == 32 ? unsigned_int_type() : unsigned_long_long_int_type()));
  symbol_exprt sym = get_fresh_aux_symbol(sym_type, "", memop_name, {}, ID_C, sym_table).symbol_expr();
  extra_codes.emplace_back(goto_programt::make_decl(sym, {}));
  extra_codes.emplace_back(goto_programt::instructiont(
    code_function_callt(
      typecast_exprt(sym, int_type),
      get_secure_load_function(sym_table, width),
      {typecast_exprt(address_of, pointer_type(int_type)),
       ds_sym,
       ds_bases_size_sym,
       ds_size_sym}),
    {},
    FUNCTION_CALL,
    nil_exprt(),
    {}));
  // curr = std::move(sym);
  memop_id++;
  return sym;
}
[[nodiscard]]
exprt visit_to_get_transform_mem_ops(
  exprt &curr,
  messaget &log,
  std::vector<goto_programt::instructiont> &extra_codes,
  symbol_tablet &sym_table,
  bool is_lhs = false)
{
  if (curr.id() == ID_symbol) {
    return curr;
  } else if(curr.id() == ID_dereference)
  {
    for(size_t i = 0; i < curr.operands().size(); i++)
    {
      curr.operands()[i] = visit_to_get_transform_mem_ops(curr.operands()[i], log, extra_codes, sym_table);
    }
    if (is_lhs) {return curr;}
    if (can_cast_type<array_typet>(curr.type())) {
      return curr;
    }
    return transform_load(curr, sym_table, extra_codes);
  } else if (curr.id() == ID_address_of) {
      // Taking the address of an expr doesn't incur memory access directly
      // but its operands may incur memory accesses

      // COMMENTING OUT TO SIMPLIFY
      return curr;

      // assert(curr.operands().size() == 1);
      // exprt addr_taken_op = curr.operands()[0];
      // if(addr_taken_op.id() == ID_index)
      // {
      //   curr.operands()[0] = visit_to_get_transform_mem_ops(to_index_expr(addr_taken_op).index(), log, extra_codes, sym_table);
      // }
      // else if(addr_taken_op.id() == ID_member)
      // {
      //   return curr;
      // }
      // else
      // {
      //   for(size_t i = 0; i < addr_taken_op.operands().size(); i++) {
      //     addr_taken_op.operands()[i] = visit_to_get_transform_mem_ops(addr_taken_op.operands()[i], log, extra_codes, sym_table);
      //   }
      // }
  } else if (curr.id() == ID_member) {
      member_exprt &member_expr = to_member_expr(curr);
      auto &dot_lhs = member_expr.compound();
      for(size_t i = 0; i < dot_lhs.operands().size(); i++)
      {
        dot_lhs.operands()[i] = visit_to_get_transform_mem_ops(dot_lhs.operands()[i], log, extra_codes, sym_table);
      }
      if (is_lhs) {return curr;}
      return transform_load(curr, sym_table, extra_codes);
  } else if (curr.id() == ID_index) {
      curr.operands()[1] = visit_to_get_transform_mem_ops(curr.operands()[1], log, extra_codes, sym_table);
      if (is_lhs) {return curr;}
      return transform_load(curr, sym_table, extra_codes);
  } else {
    for(size_t i = 0; i < curr.operands().size(); i++)
    {
      curr.operands()[i] = visit_to_get_transform_mem_ops(curr.operands()[i], log, extra_codes, sym_table);
    }
  }
  return curr;
}


void get_accessed_mem_addrs(
  goto_programt::targett ins_it,
  messaget &log,
  std::vector<goto_programt::instructiont> &extra_code,
  symbol_tablet &sym_table)
{
  switch(ins_it->type())
  {
  case GOTO:
  {
    ins_it->condition_nonconst().write();
    ins_it->condition_nonconst() = visit_to_get_transform_mem_ops(const_cast<exprt&>(ins_it->condition()), log, extra_code, sym_table);
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
    // These statements don't cause memory accesses
    break;

  case THROW:
  case CATCH:
  case ATOMIC_BEGIN:
  case ATOMIC_END:
  case START_THREAD:
  case END_THREAD:
    // These stataments shouldn't exist
    assert(false);
    break;

  case OTHER:
    // These statements are generated to substitute calls to libc functions
    break;
  case NO_INSTRUCTION_TYPE:
    // Investigate whether these statements cause memory access
    assert(false);
    break;

  case FUNCTION_CALL:
    // // NB: Note that C's argument evaluation sequence is undefined, so we are not obeying C's standard here
    // for (auto arg: ins_it->get_function_call().arguments()) {
    //   auto arg_mem_expr = visit_to_get_transform_mem_ops(arg, log);
    //   accessed_mem_addrs_as_void_pointer.insert(accessed_mem_addrs_as_void_pointer.end(), arg_mem_expr.begin(), arg_mem_expr.end());
    // }
    {
      auto func_name = id2string(to_symbol_expr(ins_it->call_function()).get_identifier());
      assert(func_name == "write" || func_name == "read" || func_name == "branch_id" || func_name == "malloc" || func_name == "free"  || func_name.find("memcpy") != std::string::npos || func_name.find("memset") != std::string::npos || func_name == "strlen");
      break;
    }
    break;

  case SET_RETURN_VALUE:
  {
    ins_it->return_value().write();
    ins_it->return_value() = visit_to_get_transform_mem_ops(const_cast<exprt&>(ins_it->return_value()), log, extra_code, sym_table);
    break;
  }

  case ASSIGN:
  {
    if (ins_it->is_assign() && ins_it->assign_lhs().id() == ID_symbol && 
    has_prefix(id2string(to_symbol_expr(ins_it->assign_lhs()).get_identifier()), "decoy")) {
      size_t decoy_id = std::stoi(id2string(to_symbol_expr(ins_it->assign_lhs()).get_identifier()).substr(5,std::string::npos)); // 5 is the index after prefix
      if (decoy_id_to_obsv_id.find(decoy_id) == decoy_id_to_obsv_id.end()) {
        // if decoy id is not recorded in pointer mapping, it means that
        // symex can't reach this branch. We don't need to instrument decoy at all
        ins_it->turn_into_skip();
        break;
      }
      null_pointer_exprt null_pointer(pointer_type(empty_typet()));
      auto ds_sym = get_symbol("obsv_ds_" + decoy_id_to_obsv_id.at(decoy_id), sym_table);
      auto ds_bases_size_sym = get_symbol("obsv_ds_bases_size_" + decoy_id_to_obsv_id.at(decoy_id), sym_table);
      auto ds_size_sym = get_symbol("obsv_ds_size_" + decoy_id_to_obsv_id.at(decoy_id), sym_table);
      extra_code.emplace_back(goto_programt::instructiont(
        code_function_callt(
          nil_exprt(),
          get_secure_store_function(sym_table, 32),
          {typecast_exprt(ins_it->assign_rhs(), unsigned_int_type()),
          null_pointer,
          ds_sym,
          ds_bases_size_sym,
          ds_size_sym}),
        {},
        FUNCTION_CALL,
        nil_exprt(),
        {}));
    } else {
      ins_it->assign_rhs_nonconst().write();
      ins_it->assign_lhs_nonconst().write();
      ins_it->assign_rhs_nonconst() = visit_to_get_transform_mem_ops(const_cast<exprt&>(ins_it->assign_rhs()), log, extra_code, sym_table);
      ins_it->assign_lhs_nonconst() = visit_to_get_transform_mem_ops(const_cast<exprt&>(ins_it->assign_lhs()), log, extra_code, sym_table, true);

      if (ins_it->assign_lhs().id() == ID_symbol) {
        break;
      }

      auto lhs = ins_it->assign_lhs();
      exprt address_of(ID_address_of, pointer_type(lhs.type()), {lhs});
      if (memop_id_to_obsv_id.find(memop_id) == memop_id_to_obsv_id.end()) {
        // this memop is not recorded during symex, meaning the memop is not reachable, so we can ignore it
        ins_it->turn_into_skip();
        memop_id++;
        break;
      }

      std::size_t width;

      if (can_cast_type<bitvector_typet>(lhs.type())) {
        if (lhs.type().id() == ID_pointer) {
          width = 64;
        } else {
          width = to_bitvector_type(lhs.type()).get_width();
        }
      } else {
        // This could be array
        width = 64;
      }
      assert(width == 32 || width == 8 || width == 64 || width == 16);
      unsignedbv_typet int_type = width == 8 ? unsigned_char_type() : (width == 16 ? unsigned_short_int_type() : (width == 32 ? unsigned_int_type() : unsigned_long_long_int_type()));
      auto ds_sym = get_symbol("obsv_ds_" + memop_id_to_obsv_id.at(memop_id), sym_table);
      auto ds_bases_size_sym = get_symbol("obsv_ds_bases_size_" + memop_id_to_obsv_id.at(memop_id), sym_table);
      auto ds_size_sym = get_symbol("obsv_ds_size_" + memop_id_to_obsv_id.at(memop_id), sym_table);
      extra_code.emplace_back(goto_programt::instructiont(
        code_function_callt(
          nil_exprt(),
          get_secure_store_function(sym_table, width),
          {typecast_exprt(ins_it->assign_rhs(), int_type),
          typecast_exprt(address_of, pointer_type(int_type)),
          ds_sym,
          ds_bases_size_sym,
          ds_size_sym}),
        {},
        FUNCTION_CALL,
        nil_exprt(),
        {}));
      memop_id++;
    }
    break;
  }
  }
}

bool mitigate_cache_sidechannel(
  goto_modelt &goto_model,
  messaget &log,
  message_handlert &message_handler,
  std::string function_name,
  std::string config_dir,
  const namespacet &ns)
{

  std::string memop_id_to_obsv_id_name(config_dir+"/memop_id_to_obsv_id.csv");
  std::ifstream memop_id_to_obsv_id_file(memop_id_to_obsv_id_name);
  for(std::string line; std::getline(memop_id_to_obsv_id_file, line); )
  {
    auto first = line.substr(0, line.find(","));
    auto obsv_id = line.substr(line.find(",")+1, line.length());
    if (has_prefix(first, "decoy")) {
      auto decoy_id = std::stoi(first.substr(5));
      decoy_id_to_obsv_id[decoy_id] = obsv_id;
    } else {
      auto memop_id = std::stoi(first);
      memop_id_to_obsv_id[memop_id] = obsv_id;
    }
  }


  for(auto &gf_entry : goto_model.goto_functions.function_map)
  {
    if(id2string(gf_entry.first) != function_name)
    {
      continue;
    }
    for(auto ins_it = gf_entry.second.body.instructions.begin();
        ins_it != gf_entry.second.body.instructions.end();
        /*increment at the end of loop body*/)
    {
      // we don't need to instrument return_value. It causes trouble in dump-c
      if(
        ins_it->is_assign() && ins_it->assign_lhs().id() == ID_symbol &&
        has_suffix(id2string(to_symbol_expr(ins_it->assign_lhs()).get_identifier()), "__return_value"))
      {
        ins_it++;
        continue;
      }

      // For each memory address that's accessed, we create corresponding capturing statement
      // and push them into a vector to be inserted into the program later.
      std::vector<goto_programt::instructiont> aggregate_capturing_instruction;

      get_accessed_mem_addrs(ins_it, log, aggregate_capturing_instruction, goto_model.symbol_table);

      while(!aggregate_capturing_instruction.empty())
      {
        gf_entry.second.body.insert_before_swap(ins_it, aggregate_capturing_instruction.front());
        aggregate_capturing_instruction.erase(aggregate_capturing_instruction.begin());
        ins_it++;
      }

      // Remove assignment because we already capture its semantic in secure_store
      if (ins_it->type() == ASSIGN && ins_it->assign_lhs().id() != ID_symbol) {
        ins_it = gf_entry.second.body.instructions.erase(ins_it);
      } else {
        ins_it++;
      }
    }
  }

  goto_model.goto_functions.update();

  return true;
}
