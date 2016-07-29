# Cudnn Setup - v5_7.5 
wget 'http://developer.download.nvidia.com/compute/machine-learning/cudnn/secure/v5/prod/cudnn-7.5-linux-x64-v5.0-ga.tgz?autho=1469765917_45eb333323918428594c8ae6fdf5e9d4&file=cudnn-7.5-linux-x64-v5.0-ga.tgz' -O cudnn-7.5-linux-x64-v5.0-ga.tgz
tar -zvxf cudnn-7.5-linux-x64-v5.0-ga.tgz
cp cuda/include/* /usr/local/cuda-7.5/include/
cp cuda/lib64/* /usr/local/cuda-7.5/lib64/
