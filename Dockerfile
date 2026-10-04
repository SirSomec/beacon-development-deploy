# Public compiled runtime only; no game source or private credentials.
FROM alpine:3.20@sha256:d9e853e87e55526f6b2917df91a2115c36dd7c696a35be12163d44e6e2a4b6bc AS runtime
ADD https://github.com/SirSomec/beacon-development-deploy/releases/download/storage-20261004-11-local-v2/runtime.tar.gz /tmp/runtime.tar.gz
RUN echo '95c71704b66aa8a4f6547367b64249b0802f8d49a36c4fb51cd31e9295fa12f7  /tmp/runtime.tar.gz' | sha256sum -c - && mkdir /runtime && tar -xzf /tmp/runtime.tar.gz -C /runtime
FROM caddy:2.11.4-alpine@sha256:6aeddd44c3078b0f9a35206472a11420648a79c184603ef95957d0a20044cb2b
COPY --from=runtime /runtime/ /
USER 10001:1000
ENV PORT=10000
EXPOSE 10000
STOPSIGNAL SIGTERM
ENTRYPOINT ["/usr/local/bin/render-runtime"]
