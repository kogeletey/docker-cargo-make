FROM alpine:edge

#LABEL docker.makers.maintainer="mbround18"

ARG CARGO_MAKE_VERSION
ARG ARTIFACT_NAME="cargo-make-v${CARGO_MAKE_VERSION}-x86_64-unknown-linux-musl"

RUN mkdir -p /tmp/makers \
    && wget -O /tmp/makers/makers.zip \
    https://github.com/sagiegurari/cargo-make/releases/download/${CARGO_MAKE_VERSION}/${ARTIFACT_NAME}.zip

RUN unzip /tmp/makers/makers.zip -d /tmp/makers/ \
    && cp /tmp/makers/${ARTIFACT_NAME}/makers /usr/local/bin \
    && chmod +x /usr/local/bin/makers

