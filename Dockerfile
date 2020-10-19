FROM debian:bullseye-slim

LABEL maintainer="ebooks@captnemo.in"

ARG DEBIAN_FRONTEND="noninteractive"

WORKDIR /src

RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    ruby \
    wget \
    zlib1g-dev bundler \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . /src/

RUN bundle install

ENTRYPOINT ["/src/generate.sh"]

VOLUME ["/output"]
