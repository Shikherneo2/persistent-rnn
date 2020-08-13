cmake_minimum_required( VERSION 2.8 FATAL_ERROR )
set( CMAKE_BUILD_TYPE Debug )

set (CMAKE_CXX_STANDARD 11)

# find_library( LIBPRNN libprnn /home/sdevgupta/mine/persistent-rnn/build_local/lib )
include_directories( /home/sdevgupta/mine/persistent-rnn/include /usr/local/cuda-10.0/include )

# LINK_DIRECTORIES( /home/sdevgupta/mine/persistent-rnn/build_local/lib )
# find_package( libprnn )

# target_link_libraries( benchmark_prnn ${LIBPRNN} )
add_executable( benchmark_prnn benchmark-persistent-kernels.cpp )
target_link_libraries( benchmark_prnn "/home/sdevgupta/mine/persistent-rnn/build_local/lib/libprnn.so" )

# add_executable( test_cudnn_functions test_cudnn_functions.cpp )
# target_link_libraries( test_cudnn_functions "/usr/local/cuda-10.0/lib64/libcudnn.so" )