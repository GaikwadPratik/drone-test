FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
LABEL Name=drone-test Version=0.0.1
RUN apt-get update \
    && apt -y upgrade \
    && apt -y install \
              locales \
              rsync \
              openssh-server \
              sudo \
              procps \
              wget \
              unzip \
              mc \
              ca-certificates \
              curl \
              software-properties-common \
              bash-completion \
              shellcheck \
              whois \
              libudev-dev \
              libpam0g-dev \
              golang-any \
              python-dev \
    && add-apt-repository ppa:hio/appliance \
    && add-apt-repository ppa:longsleep/golang-backports \
    && apt-get update \
    && apt-get -y install \
                  git \
                  subversion \
                  debhelper \
                  openssl \
                  golang-go \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && chsh -s /bin/bash

SHELL ["/bin/bash", "-c"]
RUN echo "source /usr/share/bash-completion/completions/git" >> ~/.bashrc
RUN source ~/.bashrc

ENV BASE=/usr/local
ENV GO111MODULE=on
ENV GOPRIVATE=github.com/hive-io
ENV GOPATH=$HOME/go
ENV PATH=$GOPATH/bin:$PATH

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    SHELL=/bin/bash 

USER root
RUN /usr/sbin/useradd admin1 -s /bin/bash -m \
    && echo admin1:admin | chpasswd

COPY [".devcontainer/testenv.sh","/usr/bin/testenv.sh"]
COPY . .

WORKDIR /workspaces
