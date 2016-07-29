# Install linux image and header
uname -r
apt-get install -y linux-image-4.2.0-42-generic
apt-get install -y linux-headers-4.2.0-42-generic


# Basic Setup
apt-get update
apt-get install -y --no-install-recommends \
  build-essential \
  software-properties-common \
  bash-completion \
  pkg-config \
  python-dev \
  git \
  gcc \
  g++ \
  vim \
  make \
  wget \
  curl \
  unzip
apt-get clean
apt-get autoremove
rm -rf /var/lib/apt/lists/*
apt-get update


# Workspace Setup
cd /opt && mkdir sources && cd sources
