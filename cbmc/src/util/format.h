/*******************************************************************\

Module:

Author: Daniel Kroening, kroening@kroening.com

\*******************************************************************/

#ifndef CPROVER_UTIL_FORMAT_H
#define CPROVER_UTIL_FORMAT_H

#include <iosfwd>
#include <sstream>
#include <string>


//! The below enables convenient syntax for feeding
//! objects into streams, via stream << format(o)
template <typename T>
class format_containert
{
public:
  explicit format_containert(const T &_o) : o(_o)
  {
  }

  const T &o;
};

// Instantiated for use in GDB
class exprt;
class typet;
std::ostream &format_rec(std::ostream &os, const exprt &expr);
std::ostream &format_rec(std::ostream &os, const typet &type);

template <typename T>
static inline std::ostream &
operator<<(std::ostream &os, const format_containert<T> &f)
{
  return format_rec(os, f.o);
}

// Instantiated for use in GDB
template std::ostream &
operator<<<exprt>(std::ostream &os, const format_containert<exprt> &f);
template std::ostream &
operator<<<typet>(std::ostream &os, const format_containert<typet> &f);

template <typename T>
static inline format_containert<T> format(const T &o)
{
  return format_containert<T>(o);
}

template <typename T>
std::string format_to_string(const T &o)
{
  std::ostringstream oss;
  oss << format(o);
  return oss.str();
}

// Instantiated for use in GDB
template std::string format_to_string<exprt> (const exprt &o);
template std::string format_to_string<typet> (const typet &o);

#endif // CPROVER_UTIL_FORMAT_H
