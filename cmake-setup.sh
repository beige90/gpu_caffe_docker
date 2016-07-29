# CMake Setup - 3.6.0
cd /opt/sources && mkdir cmake-3.6.0 && cd cmake-3.6.0
wget --no-check-certificate http://cmake.org/files/v3.6/cmake-3.6.0.tar.gz
tar -zxvf cmake-3.6.0.tar.gz
cd cmake-3.6.0/
./bootstrap
make -j 20
make install
update-alternatives --install /usr/bin/cmake cmake /usr/local/bin/cmake 1
