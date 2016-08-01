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
cp Makefile.config.example Makefile.config
vi Makefile.config # modify makefile
