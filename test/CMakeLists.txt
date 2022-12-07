# Parent project does not export its library target, so this CML implicitly
# depends on being added from it, i.e. the testing is done only from the build
# tree and is not feasible from an install location

project(bidirect-treeTests LANGUAGES CXX)

# ---- Tests ----

add_executable(bidirect-tree_test source/bidirect-tree_test.cpp)
target_link_libraries(bidirect-tree_test PRIVATE bidirect-tree_lib)
target_compile_features(bidirect-tree_test PRIVATE cxx_std_17)

add_test(NAME bidirect-tree_test COMMAND bidirect-tree_test)

# ---- End-of-file commands ----

add_folders(Test)
