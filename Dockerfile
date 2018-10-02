FROM centos:centos7
ENV ZSH_VERSION 5.6.2
RUN yum install -y gcc make wget ncurses-devel \
&& wget https://downloads.sourceforge.net/project/zsh/zsh/${ZSH_VERSION}/zsh-${ZSH_VERSION}.tar.xz \
&& tar Jxfv zsh-${ZSH_VERSION}.tar.xz \
&& cd zsh-${ZSH_VERSION} \
&& ./configure --prefix=/zsh --with-tcsetpgrp --enable-locale --enable-multibyte \
&& make all \
&& make install
