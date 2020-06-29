FROM ubuntu:20.04

LABEL name="cbuilder"
LABEL version="20.04.1"
LABEL description="Common build tools for C projects"
LABEL vendor="isotes"
LABEL maintainer="isotes <isotes@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN true && \
	apt-get update && \
	apt-get install -y \
		locales \
		build-essential \
		gcc \
		clang \
		clang-tools \
		clang-tidy \
		clang-format \
		libc6-dbg \
		libglib2.0-dev \
		cmake \
		ninja-build \
		git \
		rsync \
		ruby \
		zip \
		unzip \
		p7zip-full \
		atool \
		curl \
		wget \
		nano \
		vim \
		zsh \
		psmisc \
		bear \
		doxygen \
		valgrind \
		gcovr \
		lcov \
		pandoc \
		gdb \
		cppcheck \
		openjdk-11-jdk-headless \
	&& \
	locale-gen en_US.UTF-8 && \
	apt-get clean autoclean -y && \
	apt-get autoremove -y && \
	rm -rf /var/lib/apt/lists/* && \
	true

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

CMD ["/bin/bash"]

WORKDIR /x
