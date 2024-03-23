FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y make gcc git build-essential bison pkg-config libpng-dev
RUN git clone https://github.com/rednex/rgbds /opt/rgbds 
RUN make -C /opt/rgbds install
RUN mkdir /opt/src
WORKDIR /opt/src
CMD ["make", "all"]
