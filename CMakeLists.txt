cmake_minimum_required(VERSION 3.18.0)

project(test)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

include(gen_version)

add_subdirectory(main)
add_subdirectory(sub-test)
