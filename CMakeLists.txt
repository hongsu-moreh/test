cmake_minimum_required(VERSION 3.18.0)

project(sub-test)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

include(gen_version)

add_subdirectory(sub-test)

version_from_git()
configure_file(${CMAKE_SOURCE_DIR}/version.h.in ${CMAKE_SOURCE_DIR}/version.h @ONLY)

add_executable(test main.cpp)
target_include_directories(test PRIVATE ${CMAKE_SOURCE_DIR})




