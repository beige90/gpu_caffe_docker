make all
make pycaffe
make test
make runtest

# Set environment variables
echo -e '# Caffe Configuration
export CAFFE_ROOT=/opt/sources/caffe
export PYCAFFE_ROOT=$CAFFE_ROOT/python
export PYTHONPATH=$PYCAFFE_ROOT:$PYTHONPATH
export PATH=$CAFFE_ROOT/build/tools:$PYCAFFE_ROOT:$PATH' >> ~/.bashrc
echo -e '$CAFFE_ROOT/build/lib' >> /etc/ld.so.conf.d/caffe.conf && ldconfig

# Check if everything is fine 
echo -e "\n**********************\nNVIDIA Driver Version\n**********************\n"
cat /proc/driver/nvidia/version
echo -e "\n**********************\nCUDA Version\n**********************\n"
nvcc -V
echo -e "\n**********************\nOPENCV Version\n**********************\n"
pkg-config --modversion opencv
echo -e "\n\nEverything's fine. Now move on to Deep learning...\n"
