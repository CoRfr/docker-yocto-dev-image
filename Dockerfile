FROM debian:stable

RUN ( \
        apt-get update && \
        apt-get --yes --assume-yes install -y \
            build-essential python python-jinja2 \
            git subversion libsdl-dev \ 
            diffstat texinfo gawk chrpath wget cpio \
            vim zsh icecc bash ninja-build screen sshpass && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* && \
        ln -sf /bin/bash /bin/sh \
    )

