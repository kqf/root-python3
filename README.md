Docker image for ROOT with python3 support [![Build Status](https://travis-ci.com/kqf/root-python3.svg?branch=master)](https://travis-ci.com/kqf/root-python3) ![Docker Pulls](https://img.shields.io/docker/pulls/akqf/root-python3)
---------------

The image is based on [archlinux/base](https://github.com/archlinux/archlinux-docker) distribution. It has the newest versions of the libraries and the installation process of python with CERN's ROOT is quite simple. There is also an image maintained by [rootproject](https://github.com/root-project/root-docker/tree/master/arch) but it contains additional libraries and configurations. Any suggestions and optimizations are [welcome](https://github.com/kqf/root-python3/issues/new).

## Usage
The image can be used directly from the command line:
```
docker run -it --rm akqf/root-python3
```

However, it's intended to be used as a base image for CI tests environments. A very basic setup:

```Dockerfile
# Dockerfile
FROM akqf/root-python3

# Setup the working directory
ADD . /project
WORKDIR /project

# Setup python
RUN pip install -r requirements.txt
```
