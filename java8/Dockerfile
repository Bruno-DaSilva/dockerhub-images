FROM ubuntu:16.04

MAINTAINER Bruno Da Silva <bruno@bdasilva.com>
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y software-properties-common \
  && add-apt-repository ppa:webupd8team/java -y \
  && apt-get update \
  && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
  && apt-get install -y oracle-java8-installer unzip curl zip \
  && rm /usr/lib/jvm/java-8-oracle/src.zip \
  && apt-get install -y vim \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle