FROM debian:jessie

RUN ( \
        apt-get update && \
        apt-get --yes --assume-yes install -y \
            gawk wget git-core diffstat unzip texinfo gcc-multilib \
            build-essential chrpath socat python-git python-jinja2 \
            git subversion libsdl-dev \ 
            diffstat texinfo gawk chrpath wget cpio \
            vim icecc bash ninja-build screen sshpass \
            bc unzip libxml2-utils && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* && \
        ln -sf /bin/bash /bin/sh \
    )

