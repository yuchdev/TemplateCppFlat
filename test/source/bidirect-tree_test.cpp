#include "lib.hpp"

auto main() -> int
{
  auto const lib = library {};

  return lib.name == "bidirect-tree" ? 0 : 1;
}
