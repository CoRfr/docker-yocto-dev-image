FROM debian:stable

## Mirror
RUN sed -i "s^http://httpredir.debian.org/debian^http://mirror.it.ubc.ca/debian^g" /etc/apt/sources.list

RUN ( \
        apt-get update && \
        apt-get --yes --assume-yes install -y \
            build-essential python python-jinja2 \
            git subversion libsdl-dev \ 
            diffstat texinfo gawk chrpath wget cpio \
            vim zsh icecc bash ninja-build screen sshpass \
            bc python-git unzip libxml2-utils && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* && \
        ln -sf /bin/bash /bin/sh \
    )

