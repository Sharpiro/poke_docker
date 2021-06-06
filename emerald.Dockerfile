FROM ubuntu:latest

WORKDIR /app

RUN apt-get update
RUN apt-get install -y build-essential binutils-arm-none-eabi git libpng-dev

RUN git clone https://github.com/pret/agbcc
RUN git clone https://github.com/pret/pokeemerald

WORKDIR /app/agbcc
RUN sh build.sh
RUN sh install.sh ../pokeemerald

WORKDIR /app/pokeemerald
RUN make compare
