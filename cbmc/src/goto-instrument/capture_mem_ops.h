
/// \file
/// Capture memory operations

#ifndef CPROVER_CAPTURE_MEM_OPS_H
#define CPROVER_CAPTURE_MEM_OPS_H

#include <iosfwd>
#include <util/message.h>
#include <util/expr.h>

#include <set>

class goto_modelt;

bool contains_no_function_calls(goto_modelt &, messaget &, std::string);

bool contains_no_loops(goto_modelt &, messaget &, std::string);

bool capture_mem_ops(goto_modelt &, messaget &, std::string, const namespacet &);

#endif
