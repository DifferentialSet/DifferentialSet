
/// \file
/// Capture memory operations

#ifndef CPROVER_MITIGATE_CACHE_SIDECHANNEL_H
#define CPROVER_MITIGATE_CACHE_SIDECHANNEL_H

#include <iosfwd>
#include <util/message.h>
#include <util/expr.h>

#include <set>

class goto_modelt;

bool mitigate_cache_sidechannel(goto_modelt &, messaget &, message_handlert &, std::string, std::string, const namespacet &);

void ensure_two_branches_exist(
  goto_modelt &goto_model,
  std::string function_name,
  message_handlert &message_handler);

#endif
