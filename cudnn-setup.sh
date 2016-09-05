# Cudnn Setup - v5_7.5 
cd /opt/sources && mkdir cudnn && cd cudnn
wget 'http://developer.download.nvidia.com/compute/redist/cudnn/v5/cudnn-7.5-linux-x64-v5.0-ga.tgz' -O cudnn-7.5-linux-x64-v5.0-ga.tgz
# CUDNN v5.1_7.5
# wget http://developer.download.nvidia.com/compute/redist/cudnn/v5.1/cudnn-7.5-linux-x64-v5.1.tgz
tar -zvxf cudnn-7.5-linux-x64-v5.0-ga.tgz
cp cuda/include/* /usr/local/cuda-7.5/include/
cp cuda/lib64/* /usr/local/cuda-7.5/lib64/
