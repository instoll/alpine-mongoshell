FROM alpine:3.9

# Install OS dependencies.
RUN echo "System dependencies" && \
    apk add --update \
      bash \
      curl \
      git \
      make \
      ca-certificates && \
    echo "MongoDB dependencies" && \
    apk add \
      mongodb-tools && \
    echo "Install migrate util" && \
    wget https://github.com/instoll/alpine-mongoshell/releases/download/0.1.0/migrate && \
    chmod 0755 migrate && \
    mv migrate /usr/bin
