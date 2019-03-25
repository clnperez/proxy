# Istio Proxy

NOTE: This (a5d5a464251e940f2d59a23ec598deb0277a8dd3) is the rc5 commit, taken from istio.deps in istio/istio.

The Istio Proxy is a microservice proxy that can be used on the client and server side, and forms a microservice mesh. The Proxy supports a large number of features.

Client Side Features:

- *Discovery & Load Balancing*. The Proxy can use several standard service discovery and load balancing APIs to efficiently distribute traffic to services.

- *Credential Injection*. The Proxy can inject client identity, either through connection tunneling or protocol-specific mechanisms such as JWT tokens for HTTP requests.

- *Connection Management*. The Proxy manages connections to services, handling health checking, retry, failover, and flow control.

- *Monitoring & Logging*. The Proxy can report client-side metrics and logs to the Mixer.

Server Side Features:

- *Rate Limiting & Flow Control*. The Proxy can prevent overload of backend systems and provide client-aware rate limiting.

- *Protocol Translation*. The Proxy is a gRPC gateway, providing translation between JSON-REST and gRPC.

- *Authentication & Authorization*. The Proxy supports multiple authentication mechanisms, and can use the client identities to perform authorization checks through the Mixer.

- *Monitoring & Logging*. The Proxy can report server-side metrics and logs to the Mixer.

Please see [istio.io](https://istio.io)
to learn about the overall Istio project and how to get in touch with us. To learn how you can
contribute to any of the Istio components, including the proxy, please 
see the Istio [contribution guidelines](https://github.com/istio/istio/blob/master/CONTRIBUTING.md).

ppc64le: bazel 0.20.x is needed to build
