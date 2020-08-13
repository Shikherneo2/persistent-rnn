# Get the current directory
echo "SETTING ENVIRONMENT"
SCRIPTPATH="/home/sdevgupta/mine/persistent-rnn"

export PRNN_INSTALL_PATH=$SCRIPTPATH/build_local
export CUDA_PATH=/usr/local/cuda-10.0

export PATH=$PRNN_INSTALL_PATH/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/cuda/bin
export LD_LIBRARY_PATH=/usr/local/ffmpeg_build/lib:/usr/lib/x86_64-linux-gnu:/usr/local/lib:$CUDA_PATH/lib64:$PRNN_INSTALL_PATH/lib

export PRNN_KNOB_FILE=$SCRIPTPATH/config/persistent-rnn.config
export CUDA_ARCH=sm_75