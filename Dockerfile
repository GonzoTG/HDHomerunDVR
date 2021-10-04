FROM lsiobase/ubuntu:bionic
# set version label
ARG BUILD_DATE
ARG VERSION

LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="Greg2dot0"

# environment settings
ENV HOME="/config"

RUN \
# setup the app configuration
curl -o /usr/local/bin/hdhomerun_record -L "https://download.silicondust.com/hdhomerun/hdhomerun_record_linux" && \
chmod +x /usr/local/bin/hdhomerun_record && \
mkdir /dvrdata
#add local files

COPY root/ / 


# ports and volumes
VOLUME /dvrdata
VOLUME /config

COPY config/hdhomerun.conf /config/hdhomerun.conf