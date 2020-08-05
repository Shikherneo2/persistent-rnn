cmake_minimum_required( VERSION 2.8 FATAL_ERROR )
set( CMAKE_BUILD_TYPE Debug )

set (CMAKE_CXX_STANDARD 11)

# find_library( LIBPRNN libprnn /home/sdevgupta/mine/persistent-rnn/build_local/lib )
include_directories( /home/sdevgupta/mine/persistent-rnn/include /usr/local/cuda-10.0/include )

# LINK_DIRECTORIES( /home/sdevgupta/mine/persistent-rnn/build_local/lib )
# find_package( libprnn )

# target_link_libraries( benchmark_prnn ${LIBPRNN} )
add_executable( gradient_check gradient_check.cpp )
target_link_libraries( gradient_check "/home/sdevgupta/mine/persistent-rnn/.debug_build/libprnn.so" )