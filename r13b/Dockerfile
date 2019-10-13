FROM alvisisme/ubuntu:18.04

RUN apt-get update &&\
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    unzip \
    python \
    make &&\
  rm -rf /var/lib/apt/lists/*

ENV ANDROID_NDK_VERSION r13b
ENV ANDROID_NDK_HOME /usr/local/android-ndk-${ANDROID_NDK_VERSION}
ENV PATH ${ANDROID_NDK_HOME}:${PATH}

RUN wget -q https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
  unzip android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
  rm android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip