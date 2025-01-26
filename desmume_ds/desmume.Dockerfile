FROM ubuntu:22.04

ENV CORES=1
RUN apt-get update && apt-get install -y \
    build-essential \
    gettext \
    intltool \
    libsdl2-dev \
    libpcap-dev \
    libgtk2.0-dev \
    libgtk-3-dev \
    libsoundtouch-dev \
    libagg-dev \
    libopenal-dev \
    libgl-dev \
    libgles-dev \
    libglx-dev \
    libegl-dev
WORKDIR /app/desmume/src/frontend/posix
CMD [ \
    "sh", "-c", \
        "./autogen.sh && \
        CFLAGS='-march=native -Ofast -flto' CXXFLAGS=$CFLAGS LDFLAGS=$CFLAGS ./configure \
            --enable-opengles --enable-egl --enable-hud --enable-openal && \
        make -j ${CORES}" \
]

