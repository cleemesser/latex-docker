WORKDIR /data
VOLUME ["/data"]

FROM ubuntu:xenial
MAINTAINER Benedikt Lang <mail@blang.io>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    texlive-latex-extra \
    texlive-math-extra \
    python-pygments gnuplot && \
    apt-get -yq autoremove && \
    apt-get clean -y && \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
