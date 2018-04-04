FROM bazel:0.10.1

RUN apt-get install -y git golang-go cmake automake wget libtool m4 sudo vim-tiny
ENV GO_VERSION 1.9.4
RUN curl -fsSL "https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz" \
    | tar -xzC /usr/local
ENV PATH /go/bin:/usr/local/go/bin:$PATH
ENV GOPATH /go
RUN useradd -m -u 1001 -G sudo user
USER user
WORKDIR /home/user/go/src/istio.io/proxy
# bazel build //src/envoy
CMD /bin/bash
# docker run --name istio-proxy_071 -itd -v `pwd`:/home/user/go/src/istio.io/proxy istio-proxy:0.7.1
# bazel build //src/envoy:envoy
