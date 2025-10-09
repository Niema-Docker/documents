FROM debian:stable-slim
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y doxygen graphviz latexmk nodejs npm python3 python3-matplotlib python3-numpy python3-pip python3-pytz texlive-extra-utils texlive-fonts-extra texlive-latex-extra texlive-xetex && \
    pip3 install --break-system-packages --no-cache-dir jupyter-book && \
    npm install -g jsdoc && \
    rm -rf /root/.cache /tmp/*
