cmake_minimum_required(VERSION 3.10)

project(studentapp)
include_directories(include)
add_executable(studentapp src/libtest.cpp)

add_library(studlib SHARED src/Student.cpp)
target_link_libraries(studentapp studlib)

install(TARGETS studlib DESTINATION /usr/lib)
install(TARGETS studentapp DESTINATION /usr/bin)
