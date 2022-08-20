/// \file name_mangler.h
/// \brief Mangle names of file-local functions to make them unique
/// \author Kareem Khazem <karkhaz@karkhaz.com>

#ifndef CPROVER_GOTO_INSTRUMENT_SYMBOL_MANGLER_H
#define CPROVER_GOTO_INSTRUMENT_SYMBOL_MANGLER_H

#include <util/message.h>
#include <util/rename_symbol.h>

#include "goto_model.h"

#include <regex>
#include <vector>
#include <util/prefix.h>
#include <util/suffix.h>


/// \brief Mangles the names in an entire program and its symbol table
///
/// The type parameter to this class should be a functor that has a no-arg
/// constructor and an `operator()` override with the following signature:
///
///     irep_idt operator()(const symbolt &, const std::string &);
///
/// The return type doesn't actually have to be an irep_idt, just something
/// that can be assigned to one. The function is expected to return the
/// mangled name of its \ref symbolt argument, incorporating the second
/// argument into the mangled name if possible.
class symbol_manglert
{
public:
  /// \param mh: handler to construct a log from
  /// \param gm: mangle all names in gm's symbol table and goto program
  symbol_manglert(
    message_handlert &mh,
    goto_modelt &gm)
    : log(mh), model(gm)
  {
  }

  /// \brief Mangle all file-local function symbols in the program
  ///
  /// The way in which the symbols will be mangled is decided by which mangler
  /// type this object is instantiated with, e.g. DJB_manglert mangles the path
  /// name by hashing it.
  void mangle()
  {
    rename_symbolt rename;
    std::map<irep_idt, irep_idt> renamed_funs;
    std::vector<symbolt> new_syms;
    std::vector<symbol_tablet::symbolst::const_iterator> old_syms;

    for(auto sym_it = model.symbol_table.symbols.begin();
        sym_it != model.symbol_table.symbols.end();
        ++sym_it)
    {
      const symbolt &sym = sym_it->second;

      // skip functions
      if(sym.type.id() == ID_code)
        continue;
      if(has_prefix(id2string(sym.name), CPROVER_PREFIX) || has_suffix(id2string(sym.name), "$object"))
        continue;

      std::string function_name = sym.location.get_function().c_str();
      if (function_name == "") 
        continue;
      if (function_name == "read" || function_name == "write" || function_name == "malloc" || function_name == "free"  || function_name.find("memcpy") != std::string::npos || function_name.find("memset") != std::string::npos || function_name == "strlen")
        continue;
      std::stringstream ss;

      std::string sym_name_str = id2string(sym.name);
      std::string::size_type c_pos = sym_name_str.rfind("::");
      if(c_pos!=std::string::npos)
        ss << sym_name_str.substr(0, c_pos) << "::" << function_name << "_" << sym_name_str.substr(c_pos+2);
      else
        ss << function_name << "_" << sym_name_str;

      const irep_idt mangled = irep_idt(ss.str());
      symbolt new_sym;
      new_sym = sym;
      new_sym.name = mangled;
      new_sym.is_file_local = false;

      new_syms.push_back(new_sym);
      old_syms.push_back(sym_it);

      rename.insert(sym.symbol_expr(), new_sym.symbol_expr());
      renamed_funs.insert(std::make_pair(sym.name, mangled));

      log.status() << "Mangling: " << sym.name << " -> " << mangled << log.eom;
    }

    for(const auto &sym : new_syms)
      model.symbol_table.insert(sym);
    for(const auto &sym : old_syms)
      model.symbol_table.erase(sym);

    for(const auto &sym_pair : model.symbol_table)
    {
      const symbolt &sym = sym_pair.second;

      exprt e = sym.value;
      if(rename(e))
        continue;

      symbolt &new_sym = model.symbol_table.get_writeable_ref(sym.name);
      new_sym.value = e;
    }

    for(auto &fun : model.goto_functions.function_map)
    {
      if(!fun.second.body_available())
        continue;
      auto function_name = id2string(fun.first);
      if (function_name == "read" || function_name == "write" || function_name == "malloc" || function_name == "free"  || function_name.find("memcpy") != std::string::npos || function_name.find("memset") != std::string::npos || function_name == "strlen")
        continue;
      for(auto &ins : fun.second.body.instructions)
      {
        rename(ins.code_nonconst());
        if(ins.has_condition())
          rename(ins.condition_nonconst());
      }
      std::vector<irep_idt> new_parameter_identifiers;
      for (const auto &p: fun.second.parameter_identifiers) {
        auto entry = rename.expr_map.find(p);
        if (entry != rename.expr_map.end()) {
          new_parameter_identifiers.emplace_back(entry->second);
        }
      }
      fun.second.parameter_identifiers.swap(new_parameter_identifiers);
    }
  }

protected:
  mutable messaget log;
  goto_modelt &model;
};


#endif // CPROVER_GOTO_INSTRUMENT_SYMBOL_MANGLER_H
