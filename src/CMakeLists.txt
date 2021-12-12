#
# The ADD_EXAMPLE macro (defined in examples/CMakeLists.txt) ensures that
# the example is correctly built for the requested connector. It is equivalent
# to the following two lines:
#   ADD_EXECUTABLE(hello.wt hello.C)
#   TARGET_LINK_LIBRARIES(hello.wt ${EXAMPLES_CONNECTOR})
# except when the ISAPI (for Microsoft IIS) connector is used, where it will
# build a DLL with the proper symbols exported.
#
#WT_ADD_EXAMPLE(hello.wt hello.C)
#SET(CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE true)
#target_include_directories()

#SET(CMAKE_MODULE_PATH
#  ${CMAKE_MODULE_PATH}
  # ${CMAKE_BINARY_DIR}/wt
  # )
#find_package(Wt REQUIRED Wt HTTP)

INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/wt/src INCLUDE_DIRECTORIES(${CMAKE_BINARY_DIR}/wt))

SET(EXAMPLES_CONNECTOR Wt::HTTP)
ADD_EXECUTABLE(hello.wt hello.C)
TARGET_LINK_LIBRARIES(hello.wt wt wthttp)


#
# If you have Wt installed somehwere, you should use the
# installed Wt header files for your own Wt projects.
# e.g. INCLUDE_DIRECTORIES(/usr/local/include)
# instead of the following:
#
