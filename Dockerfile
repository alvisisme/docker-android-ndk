FROM ubuntu:18.04

RUN apt-get update &&\
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    wget \
    unzip \
    python \
    make &&\
  rm -rf /var/lib/apt/lists/*

ARG ANDROID_NDK_VERSION
ENV ANDROID_NDK_HOME /android-ndk-${ANDROID_NDK_VERSION}
ENV PATH ${ANDROID_NDK_HOME}:${PATH}

RUN wget -q https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
  unzip -q android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
  rm android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip