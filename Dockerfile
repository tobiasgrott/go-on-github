FROM golang:1.13

RUN \
    apt-get update && \
    apt-get install -y ca-certificates openssl zip && \
    update-ca-certificates && \
    rm -rf /var/lib/apt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]