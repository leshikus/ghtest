FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN wget https://apache.jfrog.io/artifactory/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb && \
    apt install -y -V ./apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb && \
    apt-get update && apt-get install -y -V \
        libarrow-dev \
        libparquet-dev \
        libarrow-dataset-dev \
        libarrow-flight-dev \
        --
