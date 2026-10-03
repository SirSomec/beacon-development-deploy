# Public compiled runtime only; no game source or private credentials.
FROM alpine:3.20@sha256:d9e853e87e55526f6b2917df91a2115c36dd7c696a35be12163d44e6e2a4b6bc AS runtime
ADD https://github.com/SirSomec/beacon-development-deploy/releases/download/development-20261003-6/runtime.tar.gz /tmp/runtime.tar.gz
RUN echo '1651597f1b29d1f5b9aa19ace7bc1b76d46916413bfd96c4b796e05629be77d3  /tmp/runtime.tar.gz' | sha256sum -c - && mkdir /runtime && tar -xzf /tmp/runtime.tar.gz -C /runtime
FROM caddy:2.11.4-alpine@sha256:6aeddd44c3078b0f9a35206472a11420648a79c184603ef95957d0a20044cb2b
COPY --from=runtime /runtime/ /
USER 10001:1000
ENV PORT=10000
EXPOSE 10000
STOPSIGNAL SIGTERM
ENTRYPOINT ["/usr/local/bin/render-runtime"]
