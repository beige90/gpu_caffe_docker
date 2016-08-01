FROM nvidia/cuda:7.5-devel
MAINTAINER Junho Jin <junho@etri.re.kr>

RUN apt-get update

COPY .bashrc /root/
COPY .vimrc /root/
COPY basic-setup.sh /root/
COPY cuda-setup.sh /root/
COPY cudnn-setup.sh /root/
COPY cmake-setup.sh /root/
COPY opencv-setup.sh /root/
COPY miniconda-setup.sh /root/
COPY caffe-setup.sh /root/
COPY caffe-build.sh /root/

WORKDIR /root/
