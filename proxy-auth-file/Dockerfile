FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bk; rm -rf /etc/apt/sources.list; touch /etc/apt/sources.list;
#! 使用阿里云源,不需要可以注掉
RUN echo 'deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse\n\
    deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse\n\
    deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse\n\
    deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse\n\
    deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse\n\
    deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse\n\
    deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse\n\
    deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse\n\
    deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse\n\
    deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse\n'\
    > /etc/apt/sources.list

RUN apt update
#! 更新
RUN apt -y upgrade

RUN apt install -y apache2 libaprutil1-dbd-mysql php7.4-cli

RUN a2enmod ssl dbd authn_dbd rewrite lbmethod_byrequests deflate expires proxy proxy_balancer proxy_connect proxy_ftp proxy_http headers

ENTRYPOINT /scripts/init.sh && apachectl -D FOREGROUND