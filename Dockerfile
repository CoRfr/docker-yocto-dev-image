FROM ubuntu:14.04

RUN ( \ 
    apt-get update && \
    apt-get --yes --assume-yes install -y \
        build-essential python git libsdl-dev \ 
        diffstat texinfo gawk chrpath wget cpio \
        vim zsh icecc bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf /bin/bash /bin/sh \ 
    )

