FROM debian:7.4

RUN ( \ 
    echo 'deb http://http.debian.net/debian wheezy-backports main' >> /etc/apt/sources.list && \ 
    apt-get update && \
    apt-get --yes --assume-yes install -y \
        build-essential python git libsdl-dev \ 
        diffstat texinfo gawk chrpath wget cpio \
        vim zsh icecc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* \ 
    )

