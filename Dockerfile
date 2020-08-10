FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y \
  && apt-get install -y -o Acquire::Retries=10 --no-install-recommends \
    texlive-xetex \
    texlive-latex-base \
    texlive-math-extra \
    texlive-latex-extra \
    texlive-lang-cyrillic \
    latex-xcolor \
    fonts-cmu \
    lmodern \
    && rm -rf /var/lib/apt/lists/*

ADD ./pandoc-install.sh /tmp
RUN apt-get update -y \
    && apt-get install -y -o Acquire::Retries=10 --no-install-recommends \
       curl xz-utils \
    && /tmp/pandoc-install.sh \
    && apt-get remove -y curl xz-utils \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*
