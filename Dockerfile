FROM ubuntu:xenial
MAINTAINER John Garza <johnegarza@wustl.edu>

LABEL \
    description="Image containing the vcf-anootation-tools python package"

RUN apt-get update -y && apt-get install -y \
    apt-utils \
    python \
    python-pip \
    python3 \
    python3-pip

RUN pip install --upgrade pip
RUN pip3 install --extra-index-url https://testpypi.python.org/pypi vcf-annotation-tools
