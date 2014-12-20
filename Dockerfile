FROM debian:7.4

RUN ( 
    echo 'deb http://http.debian.net/debian wheezy-backports main' >> /etc/apt/sources.list && 
    apt-get update && 
    apt-get --yes --assume-yes install -y 
        build-essential python git libsdl-dev 
        diffstat texinfo gawk chrpath wget cpio
        vim zsh icecc && 
    apt-get clean
)

RUN ( 
    cd ;
    wget --no-check-certificate http://install.ohmyz.sh -O - | bash ;
    chsh -s /bin/zsh ${USER} ;
    touch .zsh_history .viminfo ;
    chown ${USER} .zshrc .zsh_history ;
    sed -i 's/robbyrussell/eastwood/g' .zshrc ;
    sed -i 's/export PATH/\#export PATH/g' .zshrc ;
)
