FROM ubuntu:15.10
MAINTAINER Uwe Dauernheim <uwe@dauernheim.net>

ARG VERSION=2.2-SNAPSHOT-2015-12-01-b

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        clang \
        curl \
        libicu-dev \
        libpython-dev

WORKDIR /root

RUN curl https://swift.org/keys/all-keys.asc | gpg --import - && \
    gpg --keyserver hkp://pool.sks-keyservers.net --refresh-keys Swift

RUN curl -O https://swift.org/builds/ubuntu1510/swift-$VERSION/swift-$VERSION-ubuntu15.10.tar.gz && \
    curl -O https://swift.org/builds/ubuntu1510/swift-$VERSION/swift-$VERSION-ubuntu15.10.tar.gz.sig && \
    gpg --verify swift-$VERSION-ubuntu15.10.tar.gz.sig && \
    tar -v -x -z -f swift-$VERSION-ubuntu15.10.tar.gz --strip-components 1 --directory / && \
    rm swift-$VERSION-ubuntu15.10.tar.gz swift-$VERSION-ubuntu15.10.tar.gz.sig

ENTRYPOINT ["swift"]
