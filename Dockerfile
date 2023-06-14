FROM ubuntu:22.04


# conda create -n test python=3.10
# conda activate test

# # Install pytorch and cudatoolkit
# conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia

# # Test pytorch
# import torch
# torch.cuda.is_available()


# # Install tensorflow

# ## Install libraries
# conda install cudatoolkit=11.8
# pip install nvidia-cudnn-cu11==8.6.0.163
# pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-2.12.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl

# ## Set Paths
# mkdir -p $CONDA_PREFIX/etc/conda/activate.d
# echo 'CUDNN_PATH=$(dirname $(python -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))' >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
# echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/:$CUDNN_PATH/lib' >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh

# ## Reactivate env
# conda deactivate
# conda activate test

# ## Python test
# import tensorflow as tf
# tf.config.list_physical_devices('GPU')