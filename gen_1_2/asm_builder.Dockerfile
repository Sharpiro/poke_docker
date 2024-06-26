FROM ubuntu:20.04 as build

ENV DEBIAN_FRONTEND=noninteractive
ARG RGBDS_VERSION=v0.7.0

RUN echo "RGBDS_VERSION: $RGBDS_VERSION"
RUN apt-get update && \
    apt-get install -y git build-essential bison libpng-dev pkg-config
RUN git clone -b $RGBDS_VERSION https://github.com/gbdev/rgbds /opt/rgbds
RUN make -C /opt/rgbds install

FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y build-essential libpng-dev
COPY --from=build /usr/local/bin /usr/local/bin
RUN mkdir /opt/src
WORKDIR /opt/src

CMD ["make", "all"]
