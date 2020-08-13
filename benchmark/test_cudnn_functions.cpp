#include <cudnn.h>

#include <random>
#include <iostream>

static cudnnDataType_t getCudnnDataType(){
    return CUDNN_DATA_FLOAT;
}

static cudnnTensorFormat_t getCudnnDataFormat(){
    // return CUDNN_TENSOR_NCHW;
    return CUDNN_TENSOR_NHWC;
}

int main(int argc, char** argv) {
    cudnnFilterDescriptor_t _descriptor;
    int status1 = cudnnCreateFilterDescriptor(&_descriptor);
    std::cout<<status1<<std::endl;
    // const int size[] = {6, 512, 512};
    const int size[] = {512, 512};
    int status = cudnnSetFilterNdDescriptor(
			    _descriptor,
                getCudnnDataType(),
                getCudnnDataFormat(),
                2,
                size );
    
    std::cout<<status<<std::endl;
}