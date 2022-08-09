project(example)

INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/wt/src
                    ${CMAKE_BINARY_DIR}/wt)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
ADD_EXECUTABLE(hello.wt hello.C)
TARGET_LINK_LIBRARIES(hello.wt wt wthttp)

file(COPY css/ DESTINATION ${CMAKE_BINARY_DIR}/src/resources)
file(COPY ../wt/resources/ DESTINATION ${CMAKE_BINARY_DIR}/src/resources)

install(TARGETS hello.wt DESTINATION bin)
