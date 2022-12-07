install(
    TARGETS bidirect-tree_exe
    RUNTIME COMPONENT bidirect-tree_Runtime
)

if(PROJECT_IS_TOP_LEVEL)
  include(CPack)
endif()
