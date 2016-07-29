# Caffe Setup
apt-get install -y --no-install-recommends \
  libgoogle-glog-dev \
  libhdf5-serial-dev \
  libatlas-base-dev \
  protobuf-compiler \
  libboost-all-dev \
  libprotobuf-dev \
  libleveldb-dev \
  libgflags-dev \
  libsnappy-dev \
  liblmdb-dev \
  python-dev \
  python-pip \
  python-numpy \
  python-scipy && \
rm -rf /var/lib/apt/lists/*
CLONE_TAG=master
CAFFE_ROOT=/opt/sources/caffe
cd /opt/sources && mkdir caffe && cd caffe
git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git .
for req in $(cat python/requirements.txt) pydot; do pip install $req; done
cp Makefile.config.example Makefile.config # modify makefile
make all
make test
make runtest

# Set environment variables
PYCAFFE_ROOT=$CAFFE_ROOT/python
PYTHONPATH=$PYCAFFE_ROOT:$PYTHONPATH
PATH=$CAFFE_ROOT/build/tools:$PYCAFFE_ROOT:$PATH
echo "$CAFFE_ROOT/build/lib" >> /etc/ld.so.conf.d/caffe.conf && ldconfig

# Check if everything is fine 
echo -e "\n**********************\nNVIDIA Driver Version\n**********************\n"
cat /proc/driver/nvidia/version
echo -e "\n**********************\nCUDA Version\n**********************\n"
nvcc -V
echo -e "\n**********************\nOPENCV Version\n**********************\n"
pkg-config --modversion opencv
echo -e "\n\nEverything's fine. Now move on to Deep learning...\n"
