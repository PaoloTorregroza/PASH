cmake_minimum_required(VERSION 3.19)
project(pash C)

set(CMAKE_C_STANDARD 99)

add_executable(pash main.c shell_usage/term_utils.c shell_usage/term_utils.h shell_usage/shell_commands.c shell_usage/shell_commands.h utils/utils.c utils/utils.h)