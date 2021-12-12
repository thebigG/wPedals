project(wt-example LANGUAGES CXX)

SET(CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE true)
add_subdirectory(wt)

#SET(CMAKE_MODULE_PATH
#  ${CMAKE_MODULE_PATH}
#  ${WT_SOURCE_DIR}
#  ${WT_SOURCE_DIR}/cmake
#)
add_subdirectory(src)
