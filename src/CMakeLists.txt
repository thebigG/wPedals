project(example)

INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/wt/src
                    ${CMAKE_BINARY_DIR}/wt)

ADD_EXECUTABLE(hello.wt hello.C)
TARGET_LINK_LIBRARIES(hello.wt wt wthttp)

install(TARGETS hello.wt DESTINATION bin)
