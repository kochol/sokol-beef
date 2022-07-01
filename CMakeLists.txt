cmake_minimum_required(VERSION 3.15)
project(sokol-beef)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

# Linux -pthread shenanigans
if (CMAKE_SYSTEM_NAME STREQUAL Linux)
    set(THREADS_PREFER_PTHREAD_FLAG ON)
    find_package(Threads REQUIRED)
endif()

#=== LIBRARY: sokol
# add headers to the the file list because they are useful to have in IDEs
set(SOKOL_HEADERS
    src/sokol/c/sokol_app.h
    src/sokol/c/sokol_audio.h
    src/sokol/c/sokol_debugtext.h
    src/sokol/c/sokol_defines.h
    src/sokol/c/sokol_gfx.h
    src/sokol/c/sokol_gl.h
    src/sokol/c/sokol_glue.h
    src/sokol/c/sokol_shape.h
    src/sokol/c/sokol_time.h)
add_definitions(-DIMPL)
if(CMAKE_SYSTEM_NAME STREQUAL Darwin)
    add_library(sokol STATIC sokol/sokol.m ${SOKOL_HEADERS})
    target_link_libraries(sokol PUBLIC
        "-framework QuartzCore"
        "-framework Cocoa"
        "-framework MetalKit"
        "-framework Metal")
else()
    set(SOKOL_SRC
        src/sokol/c/sokol_app.c
        src/sokol/c/sokol_audio.c
        src/sokol/c/sokol_debugtext.c
        src/sokol/c/sokol_gfx.c
        src/sokol/c/sokol_gl.c
        src/sokol/c/sokol_glue.c
        src/sokol/c/sokol_shape.c
        src/sokol/c/sokol_time.c)
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
    add_library(sokol STATIC ${SOKOL_SRC} ${SOKOL_HEADERS})
    if (CMAKE_SYSTEM_NAME STREQUAL Linux)
        target_link_libraries(sokol INTERFACE X11 Xi Xcursor GL dl m)
        target_link_libraries(sokol PUBLIC Threads::Threads)
    endif()
endif()