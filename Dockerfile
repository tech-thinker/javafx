FROM ubuntu:18.04
LABEL maintainer="Asif Mohammad Mollah <https://mrasif.in>"

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=host.docker.internal:0
ENV LIBGL_ALWAYS_INDIRECT=1

RUN apt-get update
RUN apt install -y \
    openjfx=8u161-b12-1ubuntu2 \
    libopenjfx-jni=8u161-b12-1ubuntu2 \
    libopenjfx-java=8u161-b12-1ubuntu2
RUN apt-mark hold openjfx libopenjfx-jni libopenjfx-java
RUN apt-get install -y openjdk-8-jdk libwebkit2gtk-4.0-37-gtk2
RUN rm -rf /var/lib/apt/lists/*
