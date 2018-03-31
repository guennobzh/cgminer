FROM ubuntu:latest
MAINTAINER Guenno < guenno@tybihan.net >

RUN apt-get update && apt-get install -y\
	build-essential autoconf automake libtool pkg-config \
        libcurl4-openssl-dev libudev-dev libusb-1.0-0-dev \
        libncurses5-dev git

RUN mkdir /root/cgminer

WORKDIR /root/cgminer
RUN git clone https://github.com/ckolivas/cgminer.git /root/cgminer
RUN ./autogen.sh
RUN CFLAGS="-O2 -Wall -march=native" ./configure --enable-icarus
RUN make
RUN make install
RUN rm -rf /root/cgminer

CMD /bin/bash
