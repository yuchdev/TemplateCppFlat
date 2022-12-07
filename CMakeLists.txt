cmake_minimum_required(VERSION 3.14)

include(cmake/prelude.cmake)

project(
    bidirect-tree
    VERSION 0.1.0
    DESCRIPTION "Short description"
    HOMEPAGE_URL "https://example.com/"
    LANGUAGES CXX
)

include(cmake/project-is-top-level.cmake)
include(cmake/variables.cmake)

# ---- Declare library ----

target_compile_features(bidirect-tree_lib PUBLIC cxx_std_17)

# ---- Declare executable ----

add_executable(bidirect-tree_exe src/main.cpp)
add_executable(bidirect-tree::exe ALIAS bidirect-tree_exe)

set_property(TARGET bidirect-tree_exe PROPERTY OUTPUT_NAME bidirect-tree)

target_compile_features(bidirect-tree_exe PRIVATE cxx_std_17)

# ---- Install rules ----
if(NOT CMAKE_SKIP_INSTALL_RULES)
  include(cmake/install-rules.cmake)
endif()

# ---- Developer mode ----
if(NOT bidirect-tree_DEVELOPER_MODE)
  return()
elseif(NOT PROJECT_IS_TOP_LEVEL)
  message(
      AUTHOR_WARNING
      "Developer mode is intended for developers of bidirect-tree"
  )
endif()

include(cmake/dev-mode.cmake)
