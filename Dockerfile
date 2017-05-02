FROM ubuntu:14.04

## Mirror
RUN sed -i "s^http://archive.ubuntu.com/ubuntu^http://mirror.it.ubc.ca/ubuntu^g" /etc/apt/sources.list

RUN ( \
        apt-get update && \
        apt-get --yes --assume-yes install -y \
            build-essential python python-jinja2 \
            git subversion libsdl-dev \ 
            diffstat texinfo gawk chrpath wget cpio \
            vim zsh icecc bash ninja-build screen sshpass \
            bc python-git unzip libxml2-utils autoconf openjdk-7-jdk && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* && \
        ln -sf /bin/bash /bin/sh \
    )

