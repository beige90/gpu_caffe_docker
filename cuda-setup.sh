# Cuda Setup - 7.5
cd /opt/sources && mkdir cuda-7.5 && cd cuda-7.5
wget http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb
dpkg -i cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb
apt-get update
apt-get install -y cuda
echo -e '\n# Cuda Configuration
export CUDA_HOME=/usr/local/cuda-7.5
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64
PATH=${CUDA_HOME}/bin:${PATH}
export PATH' \
>> ~/.bashrc
source ~/.bashrc
rm -rf /var/cuda-repo-7-5-local
