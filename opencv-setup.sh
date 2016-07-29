# OpenCV Setup - 3.1.0
apt-get install -y --no-install-recommends \
  checkinstall \
	yasm \
	libgtk2.0-dev \
	libavcodec-dev \
	libavformat-dev \
	libswscale-dev \
	python-dev \
	python-numpy \
	libtbb2 \
	libtbb-dev \
	libtiff-dev \
	libjpeg-dev \
	libpng-dev \
	libdc1394-22-dev \
	libxine-dev \
	libgstreamer0.10-dev \
	libgstreamer-plugins-base0.10-dev \
	libv4l-dev \
	libmp3lame-dev \
	libopencore-amrnb-dev \
	libopencore-amrwb-dev \
	libtheora-dev \
	libvorbis-dev \
	libxvidcore-dev \
	x264 \
	v4l-utils \
	libopenexr-dev \
	python-tk \
	libeigen3-dev \
	libx264-dev
apt-add-repository ppa:mc3man/trusty-media
apt-get dist-upgrade && apt-get update
apt-get install -y ffmpeg gstreamer0.10-ffmpeg
cd /opt/sources && mkdir opencv-3.1.0 && cd opencv-3.1.0
wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/3.1.0/opencv-3.1.0.zip -O source.zip
unzip source.zip
mkdir release && cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D -WITH_OPENGL=ON -D INSTALL_C_EXAMPLES=ON \
      -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_TBB=ON -D WITH_IPP=OFF ../opencv-3.1.0
make -j 20 && make install
echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf && ldconfig
