
/// \file
/// Capture memory operations

#ifndef CPROVER_CONSTRUCT_DIFFERENTIAL_SET_CONSTRAINT_H
#define CPROVER_CONSTRUCT_DIFFERENTIAL_SET_CONSTRAINT_H

#include <iosfwd>
#include <util/message.h>
#include <util/expr.h>

#include <set>

std::map<goto_programt::const_targett, std::string> construct_differential_set_constraint(goto_modelt &, messaget &, std::string);

#endif
