cmake_minimum_required(VERSION 2.6)

project(nginx-lua-ahocorasick)

find_package(Lua51 REQUIRED)
set(Luaudio_INCLUDE_DIRS ${Luaudio_SOURCE_DIR} ${LUA_INCLUDE_DIR} )#PARENT_SCOPE)
message("lua include:" ${LUA_INCLUDE_DIR})

if (WIN32)
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /wd4996 /wd4805")
endif()

file(GLOB src_dirs *.cpp *.c *.h)

set(ahocorasick_STAT_SRCS
    ${src_dirs}
)

include_directories(
    ${Luaudio_INCLUDE_DIRS}/
    ${CMAKE_CURRENT_SOURCE_DIR}/
)

add_library(ahocorasick SHARED ${ahocorasick_STAT_SRCS})
#add_executable(ahocorasick ${ahocorasick_STAT_SRCS})
set_target_properties(ahocorasick PROPERTIES PREFIX "")
set_target_properties(ahocorasick PROPERTIES LINKER_LANGUAGE C)

