FROM debian

RUN apt update
RUN apt install -y live-build nano

COPY scripts /tmp

RUN bash /tmp/patch-debootstrap.sh

WORKDIR /live-build
