/*******************************************************************\

Module: Main Module

Author: Daniel Kroening, kroening@kroening.com

\*******************************************************************/

/// \file
/// Main Module

#include "goto_instrument_parse_options.h"

#include <util/exception_utils.h>
#include <util/exit_codes.h>
#include <util/json.h>
#include <util/options.h>
#include <util/string2int.h>
#include <util/string_utils.h>
#include <util/version.h>

#include <fstream>
#include <iostream>
#include <memory>

#ifdef _MSC_VER
#  include <util/unicode.h>
#endif

#include <goto-programs/class_hierarchy.h>
#include <goto-programs/ensure_one_backedge_per_target.h>
#include <goto-programs/goto_check.h>
#include <goto-programs/goto_inline.h>
#include <goto-programs/interpreter.h>
#include <goto-programs/label_function_pointer_call_sites.h>
#include <goto-programs/link_to_library.h>
#include <goto-programs/loop_ids.h>
#include <goto-programs/parameter_assignments.h>
#include <goto-programs/read_goto_binary.h>
#include <goto-programs/remove_calls_no_body.h>
#include <goto-programs/remove_function_pointers.h>
#include <goto-programs/remove_returns.h>
#include <goto-programs/remove_skip.h>
#include <goto-programs/remove_unused_functions.h>
#include <goto-programs/remove_virtual_functions.h>
#include <goto-programs/restrict_function_pointers.h>
#include <goto-programs/rewrite_union.h>
#include <goto-programs/set_properties.h>
#include <goto-programs/show_properties.h>
#include <goto-programs/show_symbol_table.h>
#include <goto-programs/slice_global_inits.h>
#include <goto-programs/string_abstraction.h>
#include <goto-programs/write_goto_binary.h>

#include <analyses/call_graph.h>
#include <analyses/constant_propagator.h>
#include <analyses/custom_bitvector_analysis.h>
#include <analyses/dependence_graph.h>
#include <analyses/escape_analysis.h>
#include <analyses/global_may_alias.h>
#include <analyses/interval_analysis.h>
#include <analyses/interval_domain.h>
#include <analyses/is_threaded.h>
#include <analyses/lexical_loops.h>
#include <analyses/local_bitvector_analysis.h>
#include <analyses/local_safe_pointers.h>
#include <analyses/natural_loops.h>
#include <analyses/reaching_definitions.h>
#include <analyses/sese_regions.h>
#include <ansi-c/ansi_c_language.h>
#include <ansi-c/c_object_factory_parameters.h>
#include <ansi-c/cprover_library.h>
#include <ansi-c/gcc_version.h>
#include <assembler/remove_asm.h>
#include <cpp/cprover_library.h>
#include <pointer-analysis/add_failed_symbols.h>
#include <pointer-analysis/show_value_sets.h>
#include <pointer-analysis/value_set_analysis.h>

#include "alignment_checks.h"
#include "branch.h"
#include "call_sequences.h"
#include "concurrency.h"
#include "dot.h"
#include "full_slicer.h"
#include "function.h"
#include "havoc_loops.h"
#include "horn_encoding.h"
#include "insert_final_assert_false.h"
#include "interrupt.h"
#include "k_induction.h"
#include "mmio.h"
#include "model_argc_argv.h"
#include "nondet_static.h"
#include "nondet_volatile.h"
#include "points_to.h"
#include "race_check.h"
#include "reachability_slicer.h"
#include "remove_function.h"
#include "rw_set.h"
#include "show_locations.h"
#include "skip_loops.h"
#include "splice_call.h"
#include "stack_depth.h"
#include "thread_instrumentation.h"
#include "undefined_functions.h"
#include "unwind.h"
#include "value_set_fi_fp_removal.h"
#include "accelerate/accelerate.h"
#include "wmm/weak_memory.h"
#include "capture_mem_ops.h"
#include "construct_differential_set_constraint.h"
#include "mitigate_cache_sidechannel.h"
#include "symbol_mangler.h"

#include "goto-checker/multi_path_symex_checker.h"
#include "goto-checker/bmc_util.h"
#include <goto-programs/process_goto_program.h>
#include <util/c_types.h>
#include <util/arith_tools.h>
#include <util/format_expr.h>
#include "solvers/flattening/bv_dimacs.h"
#include "solvers/sat/dimacs_cnf.h"
#include "goto-programs/rebuild_goto_start_function.h"
#include "goto-programs/goto_convert_functions.h"
#include <numeric>

#include "util/string_utils.h"
#include "util/string_constant.h"
#include "util/std_expr.h"
#include <ansi-c/goto_check_c.h>

/// invoke main modules
int goto_instrument_parse_optionst::doit()
{
  if(cmdline.isset("version"))
  {
    std::cout << CBMC_VERSION << '\n';
    return CPROVER_EXIT_SUCCESS;
  }

  if(cmdline.args.size()!=1 && cmdline.args.size()!=2)
  {
    help();
    return CPROVER_EXIT_USAGE_ERROR;
  }

  messaget::eval_verbosity(
    cmdline.get_value("verbosity"), messaget::M_STATISTICS, ui_message_handler);

  {
    register_languages();

    get_goto_program();

    // configure gcc, if required -- get_goto_program will have set the config
    if(config.ansi_c.preprocessor == configt::ansi_ct::preprocessort::GCC)
    {
      gcc_versiont gcc_version;
      gcc_version.get("gcc");
      configure_gcc(gcc_version);
    }

    {
      const bool validate_only = cmdline.isset("validate-goto-binary");

      if(validate_only || cmdline.isset("validate-goto-model"))
      {
        goto_model.validate(validation_modet::EXCEPTION);

        if(validate_only)
        {
          return CPROVER_EXIT_SUCCESS;
        }
      }
    }

    instrument_goto_program();

    if(cmdline.isset("validate-goto-model"))
    {
      goto_model.validate();
    }

    {
      bool unwind_given=cmdline.isset("unwind");
      bool unwindset_given=cmdline.isset("unwindset");
      bool unwindset_file_given=cmdline.isset("unwindset-file");

      if(unwindset_given && unwindset_file_given)
        throw "only one of --unwindset and --unwindset-file supported at a "
              "time";

      if(unwind_given || unwindset_given || unwindset_file_given)
      {
        unwindsett unwindset{goto_model};

        if(unwind_given)
          unwindset.parse_unwind(cmdline.get_value("unwind"));

        if(unwindset_file_given)
        {
          unwindset.parse_unwindset_file(
            cmdline.get_value("unwindset-file"), ui_message_handler);
        }

        if(unwindset_given)
        {
          unwindset.parse_unwindset(
            cmdline.get_comma_separated_values("unwindset"),
            ui_message_handler);
        }

        bool unwinding_assertions=cmdline.isset("unwinding-assertions");
        bool partial_loops=cmdline.isset("partial-loops");
        bool continue_as_loops=cmdline.isset("continue-as-loops");
        if(continue_as_loops)
        {
          if(unwinding_assertions)
          {
            throw "unwinding assertions cannot be used with "
              "--continue-as-loops";
          }
          else if(partial_loops)
            throw "partial loops cannot be used with --continue-as-loops";
        }

        goto_unwindt::unwind_strategyt unwind_strategy=
          goto_unwindt::unwind_strategyt::ASSUME;

        if(unwinding_assertions)
        {
          if(partial_loops)
            unwind_strategy = goto_unwindt::unwind_strategyt::ASSERT_PARTIAL;
          else
            unwind_strategy = goto_unwindt::unwind_strategyt::ASSERT_ASSUME;
        }
        else if(partial_loops)
        {
          unwind_strategy=goto_unwindt::unwind_strategyt::PARTIAL;
        }
        else if(continue_as_loops)
        {
          unwind_strategy=goto_unwindt::unwind_strategyt::CONTINUE;
        }

        goto_unwindt goto_unwind;
        goto_unwind(goto_model, unwindset, unwind_strategy);

        if(cmdline.isset("log"))
        {
          std::string filename=cmdline.get_value("log");
          bool have_file=!filename.empty() && filename!="-";

          jsont result=goto_unwind.output_log_json();

          if(have_file)
          {
#ifdef _MSC_VER
            std::ofstream of(widen(filename));
#else
            std::ofstream of(filename);
#endif
            if(!of)
              throw "failed to open file "+filename;

            of << result;
            of.close();
          }
          else
          {
            std::cout << result << '\n';
          }
        }

        // goto_unwind holds references to instructions, only do remove_skip
        // after having generated the log above
        remove_skip(goto_model);
      }
    }

    if(cmdline.isset("show-threaded"))
    {
      namespacet ns(goto_model.symbol_table);

      is_threadedt is_threaded(goto_model);

      for(const auto &gf_entry : goto_model.goto_functions.function_map)
      {
        std::cout << "////\n";
        std::cout << "//// Function: " << gf_entry.first << '\n';
        std::cout << "////\n\n";

        const goto_programt &goto_program = gf_entry.second.body;

        forall_goto_program_instructions(i_it, goto_program)
        {
          i_it->output(std::cout);
          std::cout << "Is threaded: " << (is_threaded(i_it)?"True":"False")
                    << "\n\n";
        }
      }

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("insert-final-assert-false"))
    {
      log.status() << "Inserting final assert false" << messaget::eom;
      bool fail = insert_final_assert_false(
        goto_model,
        cmdline.get_value("insert-final-assert-false"),
        ui_message_handler);
      if(fail)
      {
        return CPROVER_EXIT_INTERNAL_ERROR;
      }
      // otherwise, fall-through to write new binary
    }

    if(cmdline.isset("show-value-sets"))
    {
      do_indirect_call_and_rtti_removal();

      // recalculate numbers, etc.
      goto_model.goto_functions.update();

      log.status() << "Pointer Analysis" << messaget::eom;
      namespacet ns(goto_model.symbol_table);
      value_set_analysist value_set_analysis(ns);
      value_set_analysis(goto_model.goto_functions);
      show_value_sets(
        ui_message_handler.get_ui(), goto_model, value_set_analysis);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-global-may-alias"))
    {
      do_indirect_call_and_rtti_removal();
      do_remove_returns();
      parameter_assignments(goto_model);

      // recalculate numbers, etc.
      goto_model.goto_functions.update();

      global_may_alias_analysist global_may_alias_analysis;
      global_may_alias_analysis(goto_model);
      global_may_alias_analysis.output(goto_model, std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-local-bitvector-analysis"))
    {
      do_indirect_call_and_rtti_removal();
      parameter_assignments(goto_model);

      // recalculate numbers, etc.
      goto_model.goto_functions.update();

      namespacet ns(goto_model.symbol_table);

      for(const auto &gf_entry : goto_model.goto_functions.function_map)
      {
        local_bitvector_analysist local_bitvector_analysis(gf_entry.second, ns);
        std::cout << ">>>>\n";
        std::cout << ">>>> " << gf_entry.first << '\n';
        std::cout << ">>>>\n";
        local_bitvector_analysis.output(std::cout, gf_entry.second, ns);
        std::cout << '\n';
      }

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-local-safe-pointers") ||
       cmdline.isset("show-safe-dereferences"))
    {
      // Ensure location numbering is unique:
      goto_model.goto_functions.update();

      namespacet ns(goto_model.symbol_table);

      for(const auto &gf_entry : goto_model.goto_functions.function_map)
      {
        local_safe_pointerst local_safe_pointers;
        local_safe_pointers(gf_entry.second.body);
        std::cout << ">>>>\n";
        std::cout << ">>>> " << gf_entry.first << '\n';
        std::cout << ">>>>\n";
        if(cmdline.isset("show-local-safe-pointers"))
          local_safe_pointers.output(std::cout, gf_entry.second.body, ns);
        else
        {
          local_safe_pointers.output_safe_dereferences(
            std::cout, gf_entry.second.body, ns);
        }
        std::cout << '\n';
      }

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-sese-regions"))
    {
      // Ensure location numbering is unique:
      goto_model.goto_functions.update();

      namespacet ns(goto_model.symbol_table);

      for(const auto &gf_entry : goto_model.goto_functions.function_map)
      {
        sese_region_analysist sese_region_analysis;
        sese_region_analysis(gf_entry.second.body);
        std::cout << ">>>>\n";
        std::cout << ">>>> " << gf_entry.first << '\n';
        std::cout << ">>>>\n";
        sese_region_analysis.output(std::cout, gf_entry.second.body, ns);
        std::cout << '\n';
      }

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-custom-bitvector-analysis"))
    {
      do_indirect_call_and_rtti_removal();
      do_remove_returns();
      parameter_assignments(goto_model);

      remove_unused_functions(goto_model, ui_message_handler);

      if(!cmdline.isset("inline"))
      {
        thread_exit_instrumentation(goto_model);
        mutex_init_instrumentation(goto_model);
      }

      // recalculate numbers, etc.
      goto_model.goto_functions.update();

      custom_bitvector_analysist custom_bitvector_analysis;
      custom_bitvector_analysis(goto_model);
      custom_bitvector_analysis.output(goto_model, std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-escape-analysis"))
    {
      do_indirect_call_and_rtti_removal();
      do_remove_returns();
      parameter_assignments(goto_model);

      // recalculate numbers, etc.
      goto_model.goto_functions.update();

      escape_analysist escape_analysis;
      escape_analysis(goto_model);
      escape_analysis.output(goto_model, std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("custom-bitvector-analysis"))
    {
      do_indirect_call_and_rtti_removal();
      do_remove_returns();
      parameter_assignments(goto_model);

      remove_unused_functions(goto_model, ui_message_handler);

      if(!cmdline.isset("inline"))
      {
        thread_exit_instrumentation(goto_model);
        mutex_init_instrumentation(goto_model);
      }

      // recalculate numbers, etc.
      goto_model.goto_functions.update();

      namespacet ns(goto_model.symbol_table);

      custom_bitvector_analysist custom_bitvector_analysis;
      custom_bitvector_analysis(goto_model);
      custom_bitvector_analysis.check(
        goto_model,
        cmdline.isset("xml-ui"),
        std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-points-to"))
    {
      do_indirect_call_and_rtti_removal();

      // recalculate numbers, etc.
      goto_model.goto_functions.update();

      namespacet ns(goto_model.symbol_table);

      log.status() << "Pointer Analysis" << messaget::eom;
      points_tot points_to;
      points_to(goto_model);
      points_to.output(std::cout);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-intervals"))
    {
      do_indirect_call_and_rtti_removal();

      // recalculate numbers, etc.
      goto_model.goto_functions.update();

      log.status() << "Interval Analysis" << messaget::eom;
      namespacet ns(goto_model.symbol_table);
      ait<interval_domaint> interval_analysis;
      interval_analysis(goto_model);
      interval_analysis.output(goto_model, std::cout);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-call-sequences"))
    {
      do_indirect_call_and_rtti_removal();
      show_call_sequences(goto_model);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("check-call-sequence"))
    {
      do_remove_returns();
      check_call_sequence(goto_model);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("list-calls-args"))
    {
      do_indirect_call_and_rtti_removal();

      list_calls_and_arguments(goto_model);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-rw-set"))
    {
      namespacet ns(goto_model.symbol_table);

      if(!cmdline.isset("inline"))
      {
        do_indirect_call_and_rtti_removal();

        // recalculate numbers, etc.
        goto_model.goto_functions.update();
      }

      log.status() << "Pointer Analysis" << messaget::eom;
      value_set_analysist value_set_analysis(ns);
      value_set_analysis(goto_model.goto_functions);

      const symbolt &symbol=ns.lookup(ID_main);
      symbol_exprt main(symbol.name, symbol.type);

      std::cout <<
        rw_set_functiont(value_set_analysis, goto_model, main);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-symbol-table"))
    {
      ::show_symbol_table(goto_model, ui_message_handler);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-reaching-definitions"))
    {
      do_indirect_call_and_rtti_removal();

      const namespacet ns(goto_model.symbol_table);
      reaching_definitions_analysist rd_analysis(ns);
      rd_analysis(goto_model);
      rd_analysis.output(goto_model, std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-dependence-graph"))
    {
      do_indirect_call_and_rtti_removal();

      const namespacet ns(goto_model.symbol_table);
      dependence_grapht dependence_graph(ns);
      dependence_graph(goto_model);
      dependence_graph.output(goto_model, std::cout);
      dependence_graph.output_dot(std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("count-eloc"))
    {
      count_eloc(goto_model);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("list-eloc"))
    {
      list_eloc(goto_model);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("print-path-lengths"))
    {
      print_path_lengths(goto_model);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("print-global-state-size"))
    {
      print_global_state_size(goto_model);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("list-symbols"))
    {
      show_symbol_table_brief(goto_model, ui_message_handler);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-uninitialized"))
    {
      show_uninitialized(goto_model, std::cout);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("interpreter"))
    {
      do_indirect_call_and_rtti_removal();
      rewrite_union(goto_model);

      log.status() << "Starting interpreter" << messaget::eom;
      interpreter(goto_model, ui_message_handler);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-claims") ||
       cmdline.isset("show-properties"))
    {
      const namespacet ns(goto_model.symbol_table);
      show_properties(goto_model, ui_message_handler);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("document-claims-html") ||
       cmdline.isset("document-properties-html"))
    {
      document_properties_html(goto_model, std::cout);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("document-claims-latex") ||
       cmdline.isset("document-properties-latex"))
    {
      document_properties_latex(goto_model, std::cout);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-loops"))
    {
      show_loop_ids(ui_message_handler.get_ui(), goto_model);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-natural-loops"))
    {
      show_natural_loops(goto_model, std::cout);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-lexical-loops"))
    {
      show_lexical_loops(goto_model, std::cout);
    }

    if(cmdline.isset("print-internal-representation"))
    {
      for(auto const &pair : goto_model.goto_functions.function_map)
        for(auto const &ins : pair.second.body.instructions)
        {
          if(ins.code().is_not_nil())
            log.status() << ins.code().pretty() << messaget::eom;
          if(ins.has_condition())
          {
            log.status() << "[guard] " << ins.condition().pretty()
                         << messaget::eom;
          }
        }
      return CPROVER_EXIT_SUCCESS;
    }

    if(
      cmdline.isset("show-goto-functions") ||
      cmdline.isset("list-goto-functions"))
    {
      show_goto_functions(
        goto_model, ui_message_handler, cmdline.isset("list-goto-functions"));
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("list-undefined-functions"))
    {
      list_undefined_functions(goto_model, std::cout);
      return CPROVER_EXIT_SUCCESS;
    }

    // experimental: print structs
    if(cmdline.isset("show-struct-alignment"))
    {
      print_struct_alignment_problems(goto_model.symbol_table, std::cout);
      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("show-locations"))
    {
      show_locations(ui_message_handler.get_ui(), goto_model);
      return CPROVER_EXIT_SUCCESS;
    }

    if(
      cmdline.isset("dump-c") || cmdline.isset("dump-cpp") ||
      cmdline.isset("dump-c-type-header"))
    {
      const bool is_cpp=cmdline.isset("dump-cpp");
      const bool is_header = cmdline.isset("dump-c-type-header");
      const bool h_libc=!cmdline.isset("no-system-headers");
      const bool h_all=cmdline.isset("use-all-headers");
      const bool harness=cmdline.isset("harness");
      namespacet ns(goto_model.symbol_table);

      // restore RETURN instructions in case remove_returns had been
      // applied
      // NB: we've inlined all functions, so the only return is from main, which is not important
      // restore_returns(goto_model);

      // dump_c (actually goto_program2code) requires valid instruction
      // location numbers:
      goto_model.goto_functions.update();

      if(cmdline.args.size()==2)
      {
        #ifdef _MSC_VER
        std::ofstream out(widen(cmdline.args[1]));
        #else
        std::ofstream out(cmdline.args[1]);
        #endif
        if(!out)
        {
          log.error() << "failed to write to '" << cmdline.args[1] << "'";
          return CPROVER_EXIT_CONVERSION_FAILED;
        }
        if(is_header)
        {
          dump_c_type_header(
            goto_model.goto_functions,
            h_libc,
            h_all,
            harness,
            ns,
            cmdline.get_value("dump-c-type-header"),
            out);
        }
        else
        {
          (is_cpp ? dump_cpp : dump_c)(
            goto_model.goto_functions, h_libc, h_all, harness, ns, out);
        }
      }
      else
      {
        if(is_header)
        {
          dump_c_type_header(
            goto_model.goto_functions,
            h_libc,
            h_all,
            harness,
            ns,
            cmdline.get_value("dump-c-type-header"),
            std::cout);
        }
        else
        {
          (is_cpp ? dump_cpp : dump_c)(
            goto_model.goto_functions, h_libc, h_all, harness, ns, std::cout);
        }
      }

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("call-graph"))
    {
      do_indirect_call_and_rtti_removal();
      call_grapht call_graph(goto_model);

      if(cmdline.isset("xml"))
        call_graph.output_xml(std::cout);
      else if(cmdline.isset("dot"))
        call_graph.output_dot(std::cout);
      else
        call_graph.output(std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("reachable-call-graph"))
    {
      do_indirect_call_and_rtti_removal();
      call_grapht call_graph =
        call_grapht::create_from_root_function(
          goto_model, goto_functionst::entry_point(), false);
      if(cmdline.isset("xml"))
        call_graph.output_xml(std::cout);
      else if(cmdline.isset("dot"))
        call_graph.output_dot(std::cout);
      else
        call_graph.output(std::cout);

      return 0;
    }

    if(cmdline.isset("show-class-hierarchy"))
    {
      class_hierarchyt hierarchy;
      hierarchy(goto_model.symbol_table);
      if(cmdline.isset("dot"))
        hierarchy.output_dot(std::cout);
      else
        show_class_hierarchy(hierarchy, ui_message_handler);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("dot"))
    {
      namespacet ns(goto_model.symbol_table);

      if(cmdline.args.size()==2)
      {
        #ifdef _MSC_VER
        std::ofstream out(widen(cmdline.args[1]));
        #else
        std::ofstream out(cmdline.args[1]);
        #endif
        if(!out)
        {
          log.error() << "failed to write to " << cmdline.args[1] << "'";
          return CPROVER_EXIT_CONVERSION_FAILED;
        }

        dot(goto_model, out);
      }
      else
        dot(goto_model, std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("accelerate"))
    {
      do_indirect_call_and_rtti_removal();

      namespacet ns(goto_model.symbol_table);

      log.status() << "Performing full inlining" << messaget::eom;
      goto_inline(goto_model, ui_message_handler);

      log.status() << "Removing calls to functions without a body"
                   << messaget::eom;
      remove_calls_no_bodyt remove_calls_no_body;
      remove_calls_no_body(goto_model.goto_functions, ui_message_handler);

      log.status() << "Accelerating" << messaget::eom;
      guard_managert guard_manager;
      accelerate_functions(
        goto_model, ui_message_handler, cmdline.isset("z3"), guard_manager);
      remove_skip(goto_model);
    }

    if(cmdline.isset("horn"))
    {
      log.status() << "Horn-clause encoding" << messaget::eom;
      namespacet ns(goto_model.symbol_table);

      if(cmdline.args.size()==2)
      {
        #ifdef _MSC_VER
        std::ofstream out(widen(cmdline.args[1]));
        #else
        std::ofstream out(cmdline.args[1]);
        #endif

        if(!out)
        {
          log.error() << "Failed to open output file " << cmdline.args[1]
                      << messaget::eom;
          return CPROVER_EXIT_CONVERSION_FAILED;
        }

        horn_encoding(goto_model, out);
      }
      else
        horn_encoding(goto_model, std::cout);

      return CPROVER_EXIT_SUCCESS;
    }

    if(cmdline.isset("drop-unused-functions"))
    {
      do_indirect_call_and_rtti_removal();

      log.status() << "Removing unused functions" << messaget::eom;
      remove_unused_functions(goto_model.goto_functions, ui_message_handler);
    }

    if(cmdline.isset("undefined-function-is-assume-false"))
    {
      do_indirect_call_and_rtti_removal();
      undefined_function_abort_path(goto_model);
    }

    if(cmdline.isset("capture-mem-ops"))
    {
      assert(cmdline.isset("config-dir") && cmdline.isset("function"));
      std::string target_function(cmdline.get_value("function"));
      std::string config_dir(cmdline.get_value("config-dir"));

      namespacet ns(goto_model.get_symbol_table());
      if(!cmdline.isset("transform-only")) {
        link_to_library(goto_model, ui_message_handler, cprover_c_library_factory);
        goto_model.goto_functions.update();
      }

      // remove unused functions so we don't need to care about unrolling loops in them
      remove_unused_functions(goto_model, ui_message_handler);

      // goto_check removes assertions that we don't want from `link_to_library`
      optionst options;
      options.set_option("assertions", true);
      options.set_option("assumptions", true);
      goto_check_c(options, goto_model, ui_message_handler);
      goto_model.goto_functions.update();

      do_indirect_call_and_rtti_removal();

      std::ifstream constant_bound_loopids_file(config_dir+"/constant_bound_loopids.txt");
      std::stringstream buffer;
      buffer << constant_bound_loopids_file.rdbuf();
      auto vec = split_string(buffer.str(), ',', true, true);
      auto constant_bound_loopids = std::set<std::string>(vec.begin(), vec.end());

      unwindsett unwindset{goto_model};
      if(cmdline.isset("unwind-bound")) {
        unwindset.parse_unwind(cmdline.get_value("unwind-bound"));
      } else {
        unwindset.parse_unwindset_file(config_dir+"/loop_bounds.txt", ui_message_handler);
      }
      goto_unwindt goto_unwind;
      goto_unwind(goto_model.goto_functions, unwindset, goto_unwindt::unwind_strategyt::PARTIAL, constant_bound_loopids);
      // goto_unwind.unwind(target_function, goto_model.goto_functions.function_map.at(target_function).body, unwindset, goto_unwindt::unwind_strategyt::PARTIAL, constant_bound_loopids);
      // remove_skip(goto_model); // Somehow there're unreachable codes that have to be removed
      goto_model.goto_functions.update();

      // mangle variable names with enclosing functions to avoid naming clash after inlining
      symbol_manglert mangler(
        log.get_message_handler(), goto_model);
      mangler.mangle();

      goto_function_inline(
        goto_model, target_function, ui_message_handler, false, true);
      goto_model.goto_functions.update();

      remove_returns(goto_model); // symex requires absence of return
      goto_model.goto_functions.update();

      // remove functions that are inlined
      remove_unused_functions(goto_model.goto_functions, ui_message_handler);

      // Move all declaration to the front of the function
      std::set<std::string> declared_symbol;
      for(auto &gf_entry : goto_model.goto_functions.function_map)
      {
        if(id2string(gf_entry.first) != target_function)
        {
          continue;
        }
        for(auto ins_it = gf_entry.second.body.instructions.begin();
            ins_it != gf_entry.second.body.instructions.end();
            /*increment at the end of loop body*/)
        {
          if (ins_it->type() == DECL) {
            std::string id_str = id2string(ins_it->decl_symbol().get_identifier());
            std::string last_element(id_str.substr(id_str.rfind("::")+1));
            if (declared_symbol.find(last_element) == declared_symbol.end()) {
              gf_entry.second.body.instructions.push_front(*ins_it);
              declared_symbol.emplace(last_element);
            }
            ins_it->turn_into_skip();
          } else if (ins_it->type() == DEAD) {
            // ins_it = gf_entry.second.body.instructions.erase(ins_it);
            ins_it->turn_into_skip();
          } else {
            ins_it++;
          }
        }
      }
      goto_model.goto_functions.update();

      if(!cmdline.isset("transform-only")) {
        // Check preconditions
        if (!contains_no_function_calls(goto_model, log, target_function)) {
          log.error() << "Function calls have to be inlined\n"  << messaget::eom;
          return CPROVER_EXIT_INTERNAL_ERROR;
        }
        if (!contains_no_loops(goto_model, log, target_function)) {
          log.error() << "Loops have to be unwind\n"  << messaget::eom;
          return CPROVER_EXIT_INTERNAL_ERROR;
        }

        ensure_two_branches_exist(goto_model, target_function, ui_message_handler);
        goto_model.goto_functions.update();

        // Insert memory access capturing macros
        capture_mem_ops(goto_model, log, target_function, ns);
        goto_model.goto_functions.update();

        insert_final_assert_false(
          goto_model,
          target_function,
          ui_message_handler);
      }
    }

    if(cmdline.isset("mitigate-cache-sidechannel")) {
      namespacet ns(goto_model.get_symbol_table());
      assert(cmdline.isset("config-dir") && cmdline.isset("function"));
      std::string target_function(cmdline.get_value("function"));
      std::string config_dir(cmdline.get_value("config-dir"));

      // remove memop captures 
      for(auto &gf_entry : goto_model.goto_functions.function_map)
      {
        if(id2string(gf_entry.first) != target_function)
        {
          continue;
        }
        for(auto ins_it = gf_entry.second.body.instructions.begin();
            ins_it != gf_entry.second.body.instructions.end(); ins_it++)
        {
          if (ins_it->is_assume() ||
            (ins_it->is_assign() && ins_it->assign_lhs().id() == ID_symbol && has_prefix(id2string(to_symbol_expr(ins_it->assign_lhs()).get_identifier()), "cbmc_pointer"))||
            (ins_it->is_decl() && has_prefix(id2string(ins_it->decl_symbol().get_identifier()), "cbmc_pointer")) ||
            (ins_it->is_dead() && has_prefix(id2string(ins_it->dead_symbol().get_identifier()), "cbmc_pointer"))
            ) {
            ins_it->turn_into_skip();
          }
        }
      }
      optionst options;
      goto_check_c(options, goto_model, ui_message_handler);

      mitigate_cache_sidechannel(goto_model, log, ui_message_handler, target_function, config_dir, ns);
      goto_model.goto_functions.update();
    }

    if(cmdline.isset("construct-obsv-constraint")) {
      assert(cmdline.isset("config-dir") && cmdline.isset("function"));
      std::string target_function(cmdline.get_value("function"));
      std::string config_dir(cmdline.get_value("config-dir"));
      bool to_dimacs = cmdline.isset("to-dimacs");

      auto obsv_dist_for_inst = construct_differential_set_constraint(goto_model, log, target_function);

      namespacet ns(goto_model.get_symbol_table());

      optionst options;
      options.set_option("built-in-assertions", true);
      options.set_option("pretty-names", true);
      options.set_option("propagation", true);
      options.set_option("sat-preprocessor", true);
      options.set_option("simple-slice", true);
      options.set_option("simplify", true);
      options.set_option("simplify-if", true);
      options.set_option("show-goto-symex-steps", false);
      options.set_option("show-points-to-sets", false);
      options.set_option("show-array-constraints", false);
      options.set_option("arrays-uf", "never");
      options.set_option("depth", UINT32_MAX);
      // options.set_option("no-array-field-sensitivity", true);

      unwindsett unwindset{goto_model};
      symex_target_equationt equation(ui_message_handler);
      path_fifot path_storage;
      guard_managert guard_manager;
      symbol_tablet symex_symbol_table;
      symex_bmct symex(
        ui_message_handler,
        goto_model.get_symbol_table(),
        equation,
        options,
        path_storage,
        guard_manager,
        unwindset);
      setup_symex(symex, ns, options, ui_message_handler);

      if(
        goto_model.symbol_table.symbols.find(irep_idt("harness")) !=
        goto_model.symbol_table.symbols.end())
      {
        std::unique_ptr<languaget> language = get_entry_point_language(
          goto_model.symbol_table, options, ui_message_handler);

        // To create a new entry point we must first remove the old one
        remove_existing_entry_point(goto_model.symbol_table);

        // main function is specified through --function
        // since we use --function as the target function for side-channel computation
        // we have to reset the config to point to harness
        config.main.emplace("harness");
        // Create the new entry-point
        language->generate_support_functions(goto_model.symbol_table);

        // Remove the function from the goto functions so it is copied back in
        // from the symbol table during goto_convert
        goto_model.unload(goto_functionst::entry_point());

        goto_convert(
          goto_model.symbol_table,
          goto_model.goto_functions,
          ui_message_handler);
      }

      symex.symex_from_entry_point_of(
        goto_symext::get_goto_function(goto_model), symex_symbol_table);

      // if we are in to_dimacs mode, we direct outputs to different files so not to corrupt the original ones
      std::string indicator;
      if(to_dimacs) {
        indicator = "_";
      } else {
        indicator = "";
      }
      std::string out_info_name(config_dir+"/info.csv"+indicator);
      std::string pointer_numbering_name(config_dir+"/pointer_numbering.csv"+indicator);
      std::string memop_id_to_obsv_id_name(config_dir+"/memop_id_to_obsv_id.csv"+indicator);
      std::ofstream info_file(out_info_name);
      std::ofstream memop_id_to_obsv_id_file(memop_id_to_obsv_id_name);
      std::ofstream pointer_numbering_file(pointer_numbering_name);
      std::ofstream smt2_out_file(config_dir+"/cbmc.smt2"+indicator);

      // check if file alignment.txt exists and get alignment information
      std::string alignment_file_name(config_dir+"/alignment.txt");
      std::ifstream alignment_file(alignment_file_name);
      std::vector<std::vector<std::string>> alignment_info;
      if (to_dimacs) {
        assert(alignment_file.good());
        std::string line;
        while (std::getline(alignment_file, line)) {
          alignment_info.push_back(split_string(line, ','));
        }
      }

      std::string sensitive_branch_file_name(config_dir+"/immediate_sensitive_branches.txt");
      std::ifstream sensitive_branch_file(sensitive_branch_file_name);
      std::set<std::string> sensitive_branches;
      if (to_dimacs) {
        assert(sensitive_branch_file.good());
        std::string line;
        while (std::getline(sensitive_branch_file, line)) {
          sensitive_branches.insert(line);
        }
      }

      
      smt2_convt smt2_conv(
        ns,
        "cbmc",
        std::string("Generated by CBMC ") + CBMC_VERSION,
        "QF_AUFBV",
        smt2_dect::solvert::GENERIC,
        smt2_out_file);
        
      log.status() << "--------SSA step----------\n";
      // equation.output(log.status());
      log.status() << "--------END SSA step----------\n";
      log.status() << messaget::eom;


      std::vector<exprt> obsv_constraints;
      std::map<std::string, std::pair<exprt, exprt>> obsv_mapping;
      std::vector<std::pair<std::string, exprt>> branch_and_pc;

      for (auto step = equation.SSA_steps.begin(); step != equation.SSA_steps.end(); ++step) {
        auto obsv_path_condition = step->guard;
        if(
          step->is_assignment() && step->ssa_lhs.id() == ID_symbol &&
          id2string(to_symbol_expr(step->ssa_lhs).get_identifier())
              .find("cbmc_pointer_object_") == 0)
        {
          size_t memop_id = std::stoi(id2string(to_symbol_expr(step->ssa_lhs).get_identifier()).substr(20,std::string::npos)); // 20 is the index after prefix
          auto obsv_id = obsv_dist_for_inst[step->source.pc];
          std::string obsv_name = "Observation_" + obsv_id;
          memop_id_to_obsv_id_file << memop_id << "," << obsv_id << "\n";
          auxiliary_symbolt obsv_var(obsv_name, signed_int_type());
          info_file << obsv_name << ","
                    << format_to_string<exprt>(step->ssa_rhs) << ",";
          auto pointer_object_var = step->ssa_lhs;

          // NB: skip the current step and the declaration of offset variable
          // we should now be at the assignment to offset variable
          std::advance(step, 2);
          assert(
            step->is_assignment() && step->ssa_lhs.id() == ID_symbol &&
            id2string(to_symbol_expr(step->ssa_lhs).get_identifier())
                .find("cbmc_pointer_offset_") == 0);
          auto pointer_offset_var = step->ssa_lhs;
          info_file << format_to_string<exprt>(step->ssa_rhs) << ","
                    << step->source.pc->source_location().as_string() << ",";

          auto obsv_sym = obsv_var.symbol_expr();
          if (to_dimacs) {
            auto mem_addr = plus_exprt(
              mult_exprt(
                pointer_object_var, from_integer(1048576, signed_int_type())), // 1048576 = 2^20
              pointer_offset_var);
            obsv_mapping[obsv_name] = {obsv_path_condition, mem_addr};
          } else {
            auto mem_addr = plus_exprt(pointer_object_var, pointer_offset_var);
            and_exprt pc_and_obsv(
              obsv_path_condition, equal_exprt(obsv_sym, mem_addr));
            info_file << format_to_string<exprt>(pc_and_obsv) << "\n";
            obsv_constraints.push_back(pc_and_obsv);
          }
        }
        if (step->is_function_call() && id2string(step->called_function) == "branch_id") {
          std::string condition_values = id2string(
            to_string_constant(
              to_index_expr(
                to_address_of_expr(step->ssa_function_arguments[0]).object())
                .array())
              .get_value());
          branch_and_pc.push_back({condition_values, obsv_path_condition});
        }
      }

      if (to_dimacs) {
        dimacs_cnft combined_prop(ui_message_handler);
        std::string combined_dimacs_out_file(config_dir+"/combined_cache_cbmc.dimacs");
        bv_dimacst combined_dimacs_conv(
          ns, combined_prop, ui_message_handler, combined_dimacs_out_file
        );
        equation.convert(combined_dimacs_conv);

        dimacs_cnft data_prop(ui_message_handler);
        std::string dimacs_out_file(config_dir+"/data_cache_cbmc.dimacs");
        bv_dimacst dimacs_conv(
          ns, data_prop, ui_message_handler, dimacs_out_file
        );
        equation.convert(dimacs_conv);
        unsigned alignment_id = 0;
        for (auto aligned_obsv: alignment_info) {
          exprt conjunct = true_exprt();
          exprt pc_disjunct = false_exprt();

          std::string alignment_name = "alignment_" + std::to_string(alignment_id);
          auxiliary_symbolt alignment_var(alignment_name, signed_int_type());
          for (auto obsv: aligned_obsv){
            if (has_prefix(obsv, "decoy")) {
              continue;
            }
            assert(obsv_mapping.find(obsv) != obsv_mapping.end());
            conjunct = and_exprt(conjunct, implies_exprt(
              obsv_mapping[obsv].first,
              equal_exprt(alignment_var.symbol_expr(), obsv_mapping[obsv].second)));
            pc_disjunct = or_exprt(pc_disjunct, obsv_mapping[obsv].first);
          }
          alignment_id++;
          dimacs_conv.set_to_true(conjunct);
          combined_dimacs_conv.set_to_true(conjunct);
          // add constraints for holes.
          dimacs_conv.set_to_true(implies_exprt(not_exprt(pc_disjunct), equal_exprt(alignment_var.symbol_expr(), from_integer(-1, signed_int_type()))));
          combined_dimacs_conv.set_to_true(implies_exprt(not_exprt(pc_disjunct), equal_exprt(alignment_var.symbol_expr(), from_integer(-1, signed_int_type()))));
        }
        dimacs_conv();

        // construct DIMACS for branch labels
        dimacs_cnft branch_prop(ui_message_handler);
        std::string branch_dimacs_out_file(config_dir+"/inst_cache_cbmc.dimacs");
        bv_dimacst branch_dimacs_conv(
          ns, branch_prop, ui_message_handler, branch_dimacs_out_file
        );
        equation.convert(branch_dimacs_conv);

        for (auto it: branch_and_pc) {
          std::string branch_label = it.first;

          if (sensitive_branches.find(branch_label) == sensitive_branches.end()) {
            continue;
          }

          std::string label_alignment_name = "label_alignment_" + branch_label;
          auxiliary_symbolt label_alignment_var(label_alignment_name, bool_typet());

          combined_dimacs_conv.set_to_true(equal_exprt(label_alignment_var.symbol_expr(), typecast_exprt::conditional_cast(it.second, bool_typet())));
          branch_dimacs_conv.set_to_true(equal_exprt(label_alignment_var.symbol_expr(), typecast_exprt::conditional_cast(it.second, bool_typet())));
        }


        branch_dimacs_conv();
        combined_dimacs_conv();
      } else {
        equation.convert(smt2_conv);
        smt2_conv();
        auto pointer_numbering = smt2_conv.get_pointer_numbering();

        // NB: +2 to skip NULL and INVALID pointer, which doesn't have type
        for (auto p = pointer_numbering.begin()+2; p != pointer_numbering.end(); p++) {
          pointer_numbering_file << format_to_string<typet>(p->type()) << ",";
          pointer_numbering_file << format_to_string<exprt>(*p) << "," << pointer_numbering.get_number(*p).value() << "\n";
        }

        for (auto c : obsv_constraints) {
          smt2_conv.set_to_true(c);
        }

        smt2_conv.print_annotation("; done converting obsv_constraints");

        for (auto it: branch_and_pc) {
          auxiliary_symbolt branch_label_var(it.first, bool_typet());

          smt2_conv.set_to_true(equal_exprt(branch_label_var.symbol_expr(), typecast_exprt::conditional_cast(it.second, bool_typet())));
        }
      }

      log.status() << messaget::eom;
      // return CPROVER_EXIT_SUCCESS;
    }

    // write new binary?
    if(cmdline.args.size()==2)
    {
      log.status() << "Writing GOTO program to '" << cmdline.args[1] << "'"
                   << messaget::eom;

      if(write_goto_binary(cmdline.args[1], goto_model, ui_message_handler))
        return CPROVER_EXIT_CONVERSION_FAILED;
      else
        return CPROVER_EXIT_SUCCESS;
    }
    else if(cmdline.args.size() < 2)
    {
      throw invalid_command_line_argument_exceptiont(
        "Invalid number of positional arguments passed",
        "[in] [out]",
        "goto-instrument needs one input and one output file, aside from other "
        "flags");
    }

    help();
    return CPROVER_EXIT_USAGE_ERROR;
  }
// NOLINTNEXTLINE(readability/fn_size)
}

void goto_instrument_parse_optionst::do_indirect_call_and_rtti_removal(
  bool force)
{
  if(function_pointer_removal_done && !force)
    return;

  function_pointer_removal_done=true;

  log.status() << "Function Pointer Removal" << messaget::eom;
  remove_function_pointers(ui_message_handler, goto_model, false);
  log.status() << "Virtual function removal" << messaget::eom;
  remove_virtual_functions(goto_model);
  log.status() << "Cleaning inline assembler statements" << messaget::eom;
  remove_asm(goto_model);
}

/// Remove function pointers that can be resolved by analysing const variables
/// (i.e. can be resolved using remove_const_function_pointers). Function
/// pointers that cannot be resolved will be left as function pointers.
void goto_instrument_parse_optionst::do_remove_const_function_pointers_only()
{
  // Don't bother if we've already done a full function pointer
  // removal.
  if(function_pointer_removal_done)
  {
    return;
  }

  log.status() << "Removing const function pointers only" << messaget::eom;
  remove_function_pointers(
    ui_message_handler,
    goto_model,
    true); // abort if we can't resolve via const pointers
}

void goto_instrument_parse_optionst::do_partial_inlining()
{
  if(partial_inlining_done)
    return;

  partial_inlining_done=true;

  if(!cmdline.isset("inline"))
  {
    log.status() << "Partial Inlining" << messaget::eom;
    goto_partial_inline(goto_model, ui_message_handler);
  }
}

void goto_instrument_parse_optionst::do_remove_returns()
{
  if(remove_returns_done)
    return;

  remove_returns_done=true;

  log.status() << "Removing returns" << messaget::eom;
  remove_returns(goto_model);
}

void goto_instrument_parse_optionst::get_goto_program()
{
  log.status() << "Reading GOTO program from '" << cmdline.args[0] << "'"
               << messaget::eom;

  config.set(cmdline);

  auto result = read_goto_binary(cmdline.args[0], ui_message_handler);

  if(!result.has_value())
    throw 0;

  goto_model = std::move(result.value());

  config.set_from_symbol_table(goto_model.symbol_table);
}

void goto_instrument_parse_optionst::instrument_goto_program()
{
  optionst options;

  parse_nondet_volatile_options(cmdline, options);

  // disable simplify when adding various checks?
  if(cmdline.isset("no-simplify"))
    options.set_option("simplify", false);
  else
    options.set_option("simplify", true);

  // all checks supported by goto_check
  PARSE_OPTIONS_GOTO_CHECK(cmdline, options);

  // initialize argv with valid pointers
  if(cmdline.isset("model-argc-argv"))
  {
    unsigned max_argc=
      safe_string2unsigned(cmdline.get_value("model-argc-argv"));

    log.status() << "Adding up to " << max_argc << " command line arguments"
                 << messaget::eom;
    if(model_argc_argv(goto_model, max_argc, ui_message_handler))
      throw 0;
  }

  if(cmdline.isset("remove-function-body"))
  {
    remove_functions(
      goto_model,
      cmdline.get_values("remove-function-body"),
      ui_message_handler);
  }

  // we add the library in some cases, as some analyses benefit

  if(
    cmdline.isset("add-library") || cmdline.isset("mm") ||
    cmdline.isset("reachability-slice") ||
    cmdline.isset("reachability-slice-fb") ||
    cmdline.isset("fp-reachability-slice"))
  {
    if(cmdline.isset("show-custom-bitvector-analysis") ||
       cmdline.isset("custom-bitvector-analysis"))
    {
      config.ansi_c.defines.push_back(
        std::string(CPROVER_PREFIX) + "CUSTOM_BITVECTOR_ANALYSIS");
    }

    // remove inline assembler as that may yield further library function calls
    // that need to be resolved
    remove_asm(goto_model);

    // add the library
    log.status() << "Adding CPROVER library (" << config.ansi_c.arch << ")"
                 << messaget::eom;
    link_to_library(
      goto_model, ui_message_handler, cprover_cpp_library_factory);
    link_to_library(goto_model, ui_message_handler, cprover_c_library_factory);
  }

  {
    parse_function_pointer_restriction_options_from_cmdline(cmdline, options);

    if(
      options.is_set(RESTRICT_FUNCTION_POINTER_OPT) ||
      options.is_set(RESTRICT_FUNCTION_POINTER_BY_NAME_OPT) ||
      options.is_set(RESTRICT_FUNCTION_POINTER_FROM_FILE_OPT))
    {
      label_function_pointer_call_sites(goto_model);

      restrict_function_pointers(ui_message_handler, goto_model, options);
    }
  }

  // skip over selected loops
  if(cmdline.isset("skip-loops"))
  {
    log.status() << "Adding gotos to skip loops" << messaget::eom;
    if(skip_loops(
         goto_model, cmdline.get_value("skip-loops"), ui_message_handler))
    {
      throw 0;
    }
  }

  // now do full inlining, if requested
  if(cmdline.isset("inline"))
  {
    do_indirect_call_and_rtti_removal(true);

    if(cmdline.isset("show-custom-bitvector-analysis") ||
       cmdline.isset("custom-bitvector-analysis"))
    {
      do_remove_returns();
      thread_exit_instrumentation(goto_model);
      mutex_init_instrumentation(goto_model);
    }

    log.status() << "Performing full inlining" << messaget::eom;
    goto_inline(goto_model, ui_message_handler, true);
  }

  if(cmdline.isset("show-custom-bitvector-analysis") ||
     cmdline.isset("custom-bitvector-analysis"))
  {
    log.status() << "Propagating Constants" << messaget::eom;
    constant_propagator_ait constant_propagator_ai(goto_model);
    remove_skip(goto_model);
  }

  if(cmdline.isset("escape-analysis"))
  {
    do_indirect_call_and_rtti_removal();
    do_remove_returns();
    parameter_assignments(goto_model);

    // recalculate numbers, etc.
    goto_model.goto_functions.update();

    log.status() << "Escape Analysis" << messaget::eom;
    escape_analysist escape_analysis;
    escape_analysis(goto_model);
    escape_analysis.instrument(goto_model);

    // inline added functions, they are often small
    goto_partial_inline(goto_model, ui_message_handler);

    // recalculate numbers, etc.
    goto_model.goto_functions.update();
  }

  if(
    cmdline.isset(FLAG_LOOP_CONTRACTS) || cmdline.isset(FLAG_REPLACE_CALL) ||
    cmdline.isset(FLAG_ENFORCE_CONTRACT))
  {
    do_indirect_call_and_rtti_removal();
    code_contractst contracts(goto_model, log);

    std::set<std::string> to_replace(
      cmdline.get_values(FLAG_REPLACE_CALL).begin(),
      cmdline.get_values(FLAG_REPLACE_CALL).end());

    std::set<std::string> to_enforce(
      cmdline.get_values(FLAG_ENFORCE_CONTRACT).begin(),
      cmdline.get_values(FLAG_ENFORCE_CONTRACT).end());

    std::set<std::string> to_exclude_from_nondet_static(
      cmdline.get_values("nondet-static-exclude").begin(),
      cmdline.get_values("nondet-static-exclude").end());

    // It’s important to keep the order of contracts instrumentation, i.e.,
    // first replacement then enforcement. We rely on contract replacement
    // and inlining of sub-function calls to properly annotate all
    // assignments.
    contracts.replace_calls(to_replace);
    contracts.enforce_contracts(to_enforce, to_exclude_from_nondet_static);

    if(cmdline.isset(FLAG_LOOP_CONTRACTS))
      contracts.apply_loop_contracts(to_exclude_from_nondet_static);
  }

  if(cmdline.isset("value-set-fi-fp-removal"))
  {
    value_set_fi_fp_removal(goto_model, ui_message_handler);
    do_indirect_call_and_rtti_removal();
  }

  // replace function pointers, if explicitly requested
  if(cmdline.isset("remove-function-pointers"))
  {
    do_indirect_call_and_rtti_removal();
  }
  else if(cmdline.isset("remove-const-function-pointers"))
  {
    do_remove_const_function_pointers_only();
  }

  if(cmdline.isset("replace-calls"))
  {
    do_indirect_call_and_rtti_removal();

    replace_callst replace_calls;
    replace_calls(goto_model, cmdline.get_values("replace-calls"));
  }

  if(cmdline.isset("function-inline"))
  {
    std::string function=cmdline.get_value("function-inline");
    PRECONDITION(!function.empty());

    bool caching=!cmdline.isset("no-caching");

    do_indirect_call_and_rtti_removal();

    log.status() << "Inlining calls of function '" << function << "'"
                 << messaget::eom;

    if(!cmdline.isset("log"))
    {
      goto_function_inline(
        goto_model, function, ui_message_handler, true, caching);
    }
    else
    {
      std::string filename=cmdline.get_value("log");
      bool have_file=!filename.empty() && filename!="-";

      jsont result = goto_function_inline_and_log(
        goto_model, function, ui_message_handler, true, caching);

      if(have_file)
      {
#ifdef _MSC_VER
        std::ofstream of(widen(filename));
#else
        std::ofstream of(filename);
#endif
        if(!of)
          throw "failed to open file "+filename;

        of << result;
        of.close();
      }
      else
      {
        std::cout << result << '\n';
      }
    }

    goto_model.goto_functions.update();
    goto_model.goto_functions.compute_loop_numbers();
  }

  if(cmdline.isset("partial-inline"))
  {
    do_indirect_call_and_rtti_removal();

    log.status() << "Partial inlining" << messaget::eom;
    goto_partial_inline(goto_model, ui_message_handler, 0, true);

    goto_model.goto_functions.update();
    goto_model.goto_functions.compute_loop_numbers();
  }

  if(cmdline.isset("remove-calls-no-body"))
  {
    log.status() << "Removing calls to functions without a body"
                 << messaget::eom;

    remove_calls_no_bodyt remove_calls_no_body;
    remove_calls_no_body(goto_model.goto_functions, ui_message_handler);

    goto_model.goto_functions.update();
    goto_model.goto_functions.compute_loop_numbers();
  }

  if(cmdline.isset("constant-propagator"))
  {
    do_indirect_call_and_rtti_removal();

    log.status() << "Propagating Constants" << messaget::eom;

    constant_propagator_ait constant_propagator_ai(goto_model);
    remove_skip(goto_model);
  }

  if(cmdline.isset("generate-function-body"))
  {
    optionst c_object_factory_options;
    parse_c_object_factory_options(cmdline, c_object_factory_options);
    c_object_factory_parameterst object_factory_parameters(
      c_object_factory_options);

    auto generate_implementation = generate_function_bodies_factory(
      cmdline.get_value("generate-function-body-options"),
      object_factory_parameters,
      goto_model.symbol_table,
      ui_message_handler);
    generate_function_bodies(
      std::regex(cmdline.get_value("generate-function-body")),
      *generate_implementation,
      goto_model,
      ui_message_handler);
  }

  if(cmdline.isset("generate-havocing-body"))
  {
    optionst c_object_factory_options;
    parse_c_object_factory_options(cmdline, c_object_factory_options);
    c_object_factory_parameterst object_factory_parameters(
      c_object_factory_options);

    auto options_split =
      split_string(cmdline.get_value("generate-havocing-body"), ',');
    if(options_split.size() < 2)
      throw invalid_command_line_argument_exceptiont{
        "not enough arguments for this option", "--generate-havocing-body"};

    if(options_split.size() == 2)
    {
      auto generate_implementation = generate_function_bodies_factory(
        std::string{"havoc,"} + options_split.back(),
        object_factory_parameters,
        goto_model.symbol_table,
        ui_message_handler);
      generate_function_bodies(
        std::regex(options_split[0]),
        *generate_implementation,
        goto_model,
        ui_message_handler);
    }
    else
    {
      CHECK_RETURN(options_split.size() % 2 == 1);
      for(size_t i = 1; i + 1 < options_split.size(); i += 2)
      {
        auto generate_implementation = generate_function_bodies_factory(
          std::string{"havoc,"} + options_split[i + 1],
          object_factory_parameters,
          goto_model.symbol_table,
          ui_message_handler);
        generate_function_bodies(
          options_split[0],
          options_split[i],
          *generate_implementation,
          goto_model,
          ui_message_handler);
      }
    }
  }

  // add generic checks, if needed
  goto_check_c(options, goto_model, ui_message_handler);
  transform_assertions_assumptions(options, goto_model);

  // check for uninitalized local variables
  if(cmdline.isset("uninitialized-check"))
  {
    log.status() << "Adding checks for uninitialized local variables"
                 << messaget::eom;
    add_uninitialized_locals_assertions(goto_model);
  }

  // check for maximum call stack size
  if(cmdline.isset("stack-depth"))
  {
    log.status() << "Adding check for maximum call stack size" << messaget::eom;
    stack_depth(
      goto_model,
      safe_string2size_t(cmdline.get_value("stack-depth")),
      ui_message_handler);
  }

  // ignore default/user-specified initialization of variables with static
  // lifetime
  if(cmdline.isset("nondet-static-exclude"))
  {
    log.status() << "Adding nondeterministic initialization "
                    "of static/global variables except for "
                    "the specified ones."
                 << messaget::eom;
    std::set<std::string> to_exclude(
      cmdline.get_values("nondet-static-exclude").begin(),
      cmdline.get_values("nondet-static-exclude").end());
    nondet_static(goto_model, to_exclude);
  }
  else if(cmdline.isset("nondet-static"))
  {
    log.status() << "Adding nondeterministic initialization "
                    "of static/global variables"
                 << messaget::eom;
    nondet_static(goto_model);
  }

  if(cmdline.isset("slice-global-inits"))
  {
    log.status() << "Slicing away initializations of unused global variables"
                 << messaget::eom;
    slice_global_inits(goto_model, ui_message_handler);
  }

  if(cmdline.isset("string-abstraction"))
  {
    do_indirect_call_and_rtti_removal();
    do_remove_returns();

    log.status() << "String Abstraction" << messaget::eom;
    string_abstraction(goto_model, ui_message_handler);
  }

  // some analyses require function pointer removal and partial inlining

  if(cmdline.isset("remove-pointers") ||
     cmdline.isset("race-check") ||
     cmdline.isset("mm") ||
     cmdline.isset("isr") ||
     cmdline.isset("concurrency"))
  {
    do_indirect_call_and_rtti_removal();

    log.status() << "Pointer Analysis" << messaget::eom;
    const namespacet ns(goto_model.symbol_table);
    value_set_analysist value_set_analysis(ns);
    value_set_analysis(goto_model.goto_functions);

    if(cmdline.isset("remove-pointers"))
    {
      // removing pointers
      log.status() << "Removing Pointers" << messaget::eom;
      remove_pointers(goto_model, value_set_analysis);
    }

    if(cmdline.isset("race-check"))
    {
      log.status() << "Adding Race Checks" << messaget::eom;
      race_check(value_set_analysis, goto_model);
    }

    if(cmdline.isset("mm"))
    {
      std::string mm=cmdline.get_value("mm");
      memory_modelt model;

      // strategy of instrumentation
      instrumentation_strategyt inst_strategy;
      if(cmdline.isset("one-event-per-cycle"))
        inst_strategy=one_event_per_cycle;
      else if(cmdline.isset("minimum-interference"))
        inst_strategy=min_interference;
      else if(cmdline.isset("read-first"))
        inst_strategy=read_first;
      else if(cmdline.isset("write-first"))
        inst_strategy=write_first;
      else if(cmdline.isset("my-events"))
        inst_strategy=my_events;
      else
        /* default: instruments all unsafe pairs */
        inst_strategy=all;

      const unsigned max_var=
        cmdline.isset("max-var")?
        unsafe_string2unsigned(cmdline.get_value("max-var")):0;
      const unsigned max_po_trans=
        cmdline.isset("max-po-trans")?
        unsafe_string2unsigned(cmdline.get_value("max-po-trans")):0;

      if(mm=="tso")
      {
        log.status() << "Adding weak memory (TSO) Instrumentation"
                     << messaget::eom;
        model=TSO;
      }
      else if(mm=="pso")
      {
        log.status() << "Adding weak memory (PSO) Instrumentation"
                     << messaget::eom;
        model=PSO;
      }
      else if(mm=="rmo")
      {
        log.status() << "Adding weak memory (RMO) Instrumentation"
                     << messaget::eom;
        model=RMO;
      }
      else if(mm=="power")
      {
        log.status() << "Adding weak memory (Power) Instrumentation"
                     << messaget::eom;
        model=Power;
      }
      else
      {
        log.error() << "Unknown weak memory model '" << mm << "'"
                    << messaget::eom;
        model=Unknown;
      }

      loop_strategyt loops=arrays_only;

      if(cmdline.isset("force-loop-duplication"))
        loops=all_loops;
      if(cmdline.isset("no-loop-duplication"))
        loops=no_loop;

      if(model!=Unknown)
        weak_memory(
          model,
          value_set_analysis,
          goto_model,
          cmdline.isset("scc"),
          inst_strategy,
          !cmdline.isset("cfg-kill"),
          cmdline.isset("no-dependencies"),
          loops,
          max_var,
          max_po_trans,
          !cmdline.isset("no-po-rendering"),
          cmdline.isset("render-cluster-file"),
          cmdline.isset("render-cluster-function"),
          cmdline.isset("cav11"),
          cmdline.isset("hide-internals"),
          ui_message_handler,
          cmdline.isset("ignore-arrays"));
    }

    // Interrupt handler
    if(cmdline.isset("isr"))
    {
      log.status() << "Instrumenting interrupt handler" << messaget::eom;
      interrupt(
        value_set_analysis,
        goto_model,
        cmdline.get_value("isr"));
    }

    // Memory-mapped I/O
    if(cmdline.isset("mmio"))
    {
      log.status() << "Instrumenting memory-mapped I/O" << messaget::eom;
      mmio(value_set_analysis, goto_model);
    }

    if(cmdline.isset("concurrency"))
    {
      log.status() << "Sequentializing concurrency" << messaget::eom;
      concurrency(value_set_analysis, goto_model);
    }
  }

  if(cmdline.isset("interval-analysis"))
  {
    log.status() << "Interval analysis" << messaget::eom;
    interval_analysis(goto_model);
  }

  if(cmdline.isset("havoc-loops"))
  {
    log.status() << "Havocking loops" << messaget::eom;
    havoc_loops(goto_model);
  }

  if(cmdline.isset("k-induction"))
  {
    bool base_case=cmdline.isset("base-case");
    bool step_case=cmdline.isset("step-case");

    if(step_case && base_case)
      throw "please specify only one of --step-case and --base-case";
    else if(!step_case && !base_case)
      throw "please specify one of --step-case and --base-case";

    unsigned k=unsafe_string2unsigned(cmdline.get_value("k-induction"));

    if(k==0)
      throw "please give k>=1";

    log.status() << "Instrumenting k-induction for k=" << k << ", "
                 << (base_case ? "base case" : "step case") << messaget::eom;

    k_induction(goto_model, base_case, step_case, k);
  }

  if(cmdline.isset("function-enter"))
  {
    log.status() << "Function enter instrumentation" << messaget::eom;
    function_enter(
      goto_model,
      cmdline.get_value("function-enter"));
  }

  if(cmdline.isset("function-exit"))
  {
    log.status() << "Function exit instrumentation" << messaget::eom;
    function_exit(
      goto_model,
      cmdline.get_value("function-exit"));
  }

  if(cmdline.isset("branch"))
  {
    log.status() << "Branch instrumentation" << messaget::eom;
    branch(
      goto_model,
      cmdline.get_value("branch"));
  }

  // add failed symbols
  add_failed_symbols(goto_model.symbol_table);

  // recalculate numbers, etc.
  goto_model.goto_functions.update();

  // add loop ids
  goto_model.goto_functions.compute_loop_numbers();

  // label the assertions
  label_properties(goto_model);

  nondet_volatile(goto_model, options);

  // reachability slice?
  if(cmdline.isset("reachability-slice"))
  {
    do_indirect_call_and_rtti_removal();

    log.status() << "Performing a reachability slice" << messaget::eom;

    // reachability_slicer requires that the model has unique location numbers:
    goto_model.goto_functions.update();

    if(cmdline.isset("property"))
    {
      reachability_slicer(
        goto_model, cmdline.get_values("property"), ui_message_handler);
    }
    else
      reachability_slicer(goto_model, ui_message_handler);
  }

  if(cmdline.isset("fp-reachability-slice"))
  {
    do_indirect_call_and_rtti_removal();

    log.status() << "Performing a function pointer reachability slice"
                 << messaget::eom;
    function_path_reachability_slicer(
      goto_model,
      cmdline.get_comma_separated_values("fp-reachability-slice"),
      ui_message_handler);
  }

  // full slice?
  if(cmdline.isset("full-slice"))
  {
    do_indirect_call_and_rtti_removal();
    do_remove_returns();

    log.status() << "Performing a full slice" << messaget::eom;
    if(cmdline.isset("property"))
      property_slicer(goto_model, cmdline.get_values("property"));
    else
    {
      // full_slicer requires that the model has unique location numbers:
      goto_model.goto_functions.update();
      full_slicer(goto_model);
    }
  }

  // splice option
  if(cmdline.isset("splice-call"))
  {
    log.status() << "Performing call splicing" << messaget::eom;
    std::string callercallee=cmdline.get_value("splice-call");
    if(splice_call(
         goto_model.goto_functions,
         callercallee,
         goto_model.symbol_table,
         ui_message_handler))
      throw 0;
  }

  // aggressive slicer
  if(cmdline.isset("aggressive-slice"))
  {
    do_indirect_call_and_rtti_removal();

    // reachability_slicer requires that the model has unique location numbers:
    goto_model.goto_functions.update();

    log.status() << "Slicing away initializations of unused global variables"
                 << messaget::eom;
    slice_global_inits(goto_model, ui_message_handler);

    log.status() << "Performing an aggressive slice" << messaget::eom;
    aggressive_slicert aggressive_slicer(goto_model, ui_message_handler);

    if(cmdline.isset("aggressive-slice-call-depth"))
      aggressive_slicer.call_depth =
        safe_string2unsigned(cmdline.get_value("aggressive-slice-call-depth"));

    if(cmdline.isset("aggressive-slice-preserve-function"))
      aggressive_slicer.preserve_functions(
        cmdline.get_values("aggressive-slice-preserve-function"));

    if(cmdline.isset("property"))
      aggressive_slicer.user_specified_properties =
        cmdline.get_values("property");

    if(cmdline.isset("aggressive-slice-preserve-functions-containing"))
      aggressive_slicer.name_snippets =
        cmdline.get_values("aggressive-slice-preserve-functions-containing");

    aggressive_slicer.preserve_all_direct_paths =
      cmdline.isset("aggressive-slice-preserve-all-direct-paths");

    aggressive_slicer.doit();

    goto_model.goto_functions.update();

    log.status() << "Performing a reachability slice" << messaget::eom;
    if(cmdline.isset("property"))
    {
      reachability_slicer(
        goto_model, cmdline.get_values("property"), ui_message_handler);
    }
    else
      reachability_slicer(goto_model, ui_message_handler);
  }

  if(cmdline.isset("ensure-one-backedge-per-target"))
  {
    log.status() << "Trying to force one backedge per target" << messaget::eom;
    ensure_one_backedge_per_target(goto_model);
  }

  // recalculate numbers, etc.
  goto_model.goto_functions.update();
}

/// display command line help
void goto_instrument_parse_optionst::help()
{
  // clang-format off
  std::cout << '\n' << banner_string("Goto-Instrument", CBMC_VERSION) << '\n'
            << align_center_with_border("Copyright (C) 2008-2013") << '\n'
            << align_center_with_border("Daniel Kroening") << '\n'
            << align_center_with_border("kroening@kroening.com") << '\n'
            <<
    "\n"
    "Usage:                       Purpose:\n"
    "\n"
    " goto-instrument [-?] [-h] [--help]  show help\n"
    " goto-instrument --version           show version and exit\n"
    " goto-instrument [options] in [out]  perform analysis or instrumentation\n"
    "\n"
    "Dump Source:\n"
    HELP_DUMP_C
    " --horn                       print program as constrained horn clauses\n"
    "\n"
    "Diagnosis:\n"
    HELP_SHOW_PROPERTIES
    HELP_DOCUMENT_PROPERTIES
    " --show-symbol-table          show loaded symbol table\n"
    " --list-symbols               list symbols with type information\n"
    HELP_SHOW_GOTO_FUNCTIONS
    HELP_GOTO_PROGRAM_STATS
    " --show-locations             show all source locations\n"
    " --dot                        generate CFG graph in DOT format\n"
    " --print-internal-representation\n" // NOLINTNEXTLINE(*)
    "                              show verbose internal representation of the program\n"
    " --list-undefined-functions   list functions without body\n"
    // NOLINTNEXTLINE(whitespace/line_length)
    " --list-calls-args            list all function calls with their arguments\n"
    " --call-graph                 show graph of function calls\n"
    // NOLINTNEXTLINE(whitespace/line_length)
    " --reachable-call-graph       show graph of function calls potentially reachable from main function\n"
    HELP_SHOW_CLASS_HIERARCHY
    HELP_VALIDATE
    // NOLINTNEXTLINE(whitespace/line_length)
    " --validate-goto-binary       check the well-formedness of the passed in goto\n"
    "                              binary and then exit\n"
    " --interpreter                do concrete execution\n"
    "\n"
    "Data-flow analyses:\n"
    " --show-struct-alignment      show struct members that might be concurrently accessed\n" // NOLINT(*)
    // NOLINTNEXTLINE(whitespace/line_length)
    " --show-threaded              show instructions that may be executed by more than one thread\n"
    " --show-local-safe-pointers   show pointer expressions that are trivially dominated by a not-null check\n" // NOLINT(*)
    " --show-safe-dereferences     show pointer expressions that are trivially dominated by a not-null check\n" // NOLINT(*)
    "                              *and* used as a dereference operand\n" // NOLINT(*)
    " --show-value-sets            show points-to information (using value sets)\n" // NOLINT(*)
    " --show-global-may-alias      show may-alias information over globals\n"
    " --show-local-bitvector-analysis\n"
    "                              show procedure-local pointer analysis\n"
    " --escape-analysis            perform escape analysis\n"
    " --show-escape-analysis       show results of escape analysis\n"
    " --custom-bitvector-analysis  perform configurable bitvector analysis\n"
    " --show-custom-bitvector-analysis\n"
    "                              show results of configurable bitvector analysis\n" // NOLINT(*)
    " --interval-analysis          perform interval analysis\n"
    " --show-intervals             show results of interval analysis\n"
    " --show-uninitialized         show maybe-uninitialized variables\n"
    " --show-points-to             show points-to information\n"
    " --show-rw-set                show read-write sets\n"
    " --show-call-sequences        show function call sequences\n"
    " --show-reaching-definitions  show reaching definitions\n"
    " --show-dependence-graph      show program-dependence graph\n"
    " --show-sese-regions          show single-entry-single-exit regions\n"
    "\n"
    "Safety checks:\n"
    " --no-assertions              ignore user assertions\n"
    HELP_GOTO_CHECK
    HELP_UNINITIALIZED_CHECK
    " --stack-depth n              add check that call stack size of non-inlined functions never exceeds n\n" // NOLINT(*)
    " --race-check                 add floating-point data race checks\n"
    "\n"
    "Semantic transformations:\n"
    << HELP_NONDET_VOLATILE <<
    " --isr <function>             instruments an interrupt service routine\n"
    " --mmio                       instruments memory-mapped I/O\n"
    " --nondet-static              add nondeterministic initialization of variables with static lifetime\n" // NOLINT(*)
    " --nondet-static-exclude e    same as nondet-static except for the variable e\n" //NOLINT(*)
    "                              (use multiple times if required)\n"
    " --function-enter <f>, --function-exit <f>, --branch <f>\n"
    "                              instruments a call to <f> at the beginning,\n" // NOLINT(*)
    "                              the exit, or a branch point, respectively\n"
    " --splice-call caller,callee  prepends a call to callee in the body of caller\n"  // NOLINT(*)
    " --check-call-sequence <seq>  instruments checks to assert that all call\n"
    "                              sequences match <seq>\n"
    " --undefined-function-is-assume-false\n"
    // NOLINTNEXTLINE(whitespace/line_length)
    "                              convert each call to an undefined function to assume(false)\n"
    HELP_INSERT_FINAL_ASSERT_FALSE
    HELP_REPLACE_FUNCTION_BODY
    HELP_RESTRICT_FUNCTION_POINTER
    HELP_REMOVE_CALLS_NO_BODY
    " --add-library                add models of C library functions\n"
    HELP_CONFIG_LIBRARY
    " --model-argc-argv <n>        model up to <n> command line arguments\n"
    // NOLINTNEXTLINE(whitespace/line_length)
    " --remove-function-body <f>   remove the implementation of function <f> (may be repeated)\n"
    HELP_REPLACE_CALLS
    HELP_ANSI_C_LANGUAGE
    "\n"
    "Semantics-preserving transformations:\n"
    " --ensure-one-backedge-per-target\n"
    "                              transform loop bodies such that there is a\n"
    "                              single edge back to the loop head\n"
    " --drop-unused-functions      drop functions trivially unreachable from main function\n" // NOLINT(*)
    HELP_REMOVE_POINTERS
    " --constant-propagator        propagate constants and simplify expressions\n" // NOLINT(*)
    " --inline                     perform full inlining\n"
    " --partial-inline             perform partial inlining\n"
    " --function-inline <function> transitively inline all calls <function> makes\n" // NOLINT(*)
    " --no-caching                 disable caching of intermediate results during transitive function inlining\n" // NOLINT(*)
    " --log <file>                 log in json format which code segments were inlined, use with --function-inline\n" // NOLINT(*)
    " --remove-function-pointers   replace function pointers by case statement over function calls\n" // NOLINT(*)
    HELP_REMOVE_CONST_FUNCTION_POINTERS
    " --value-set-fi-fp-removal    build flow-insensitive value set and replace function pointers by a case statement\n" // NOLINT(*)
    "                              over the possible assignments. If the set of possible assignments is empty the function pointer\n" // NOLINT(*)
    "                              is removed using the standard remove-function-pointers pass. \n" // NOLINT(*)
    "\n"
    "Loop information and transformations:\n"
    HELP_UNWINDSET
    " --unwindset-file <file>      read unwindset from file\n"
    " --partial-loops              permit paths with partial loops\n"
    " --unwinding-assertions       generate unwinding assertions\n"
    " --continue-as-loops          add loop for remaining iterations after unwound part\n" // NOLINT(*)
    " --k-induction <k>            check loops with k-induction\n"
    " --step-case                  k-induction: do step-case\n"
    " --base-case                  k-induction: do base-case\n"
    " --havoc-loops                over-approximate all loops\n"
    " --accelerate                 add loop accelerators\n"
    " --z3                         use Z3 when computing loop accelerators\n"
    " --skip-loops <loop-ids>      add gotos to skip selected loops during execution\n" // NOLINT(*)
    " --show-lexical-loops         show single-entry-single-back-edge loops\n"
    " --show-natural-loops         show natural loop heads\n"
    "\n"
    "Memory model instrumentations:\n"
    HELP_WMM_FULL
    "\n"
    "Slicing:\n"
    HELP_REACHABILITY_SLICER
    " --full-slice                 slice away instructions that don't affect assertions\n" // NOLINT(*)
    " --property id                slice with respect to specific property only\n" // NOLINT(*)
    " --slice-global-inits         slice away initializations of unused global variables\n" // NOLINT(*)
    " --aggressive-slice           remove bodies of any functions not on the shortest path between\n" // NOLINT(*)
    "                              the start function and the function containing the property(s)\n" // NOLINT(*)
    " --aggressive-slice-call-depth <n>\n"
    "                              used with aggressive-slice, preserves all functions within <n> function calls\n" // NOLINT(*)
    "                              of the functions on the shortest path\n"
    " --aggressive-slice-preserve-function <f>\n"
    "                             force the aggressive slicer to preserve function <f>\n" // NOLINT(*)
    " --aggressive-slice-preserve-functions-containing <f>\n"
    "                              force the aggressive slicer to preserve all functions with names containing <f>\n" // NOLINT(*)
    " --aggressive-slice-preserve-all-direct-paths \n"
    "                             force aggressive slicer to preserve all direct paths\n" // NOLINT(*)
    "\n"
    "Code contracts:\n"
    HELP_LOOP_CONTRACTS
    HELP_REPLACE_CALL
    HELP_ENFORCE_CONTRACT
    "\n"
    "User-interface options:\n"
    HELP_FLUSH
    " --xml                        output files in XML where supported\n"
    " --xml-ui                     use XML-formatted output\n"
    " --json-ui                    use JSON-formatted output\n"
    " --verbosity #                verbosity level\n"
    HELP_TIMESTAMP
    "\n";
  // clang-format on
}
