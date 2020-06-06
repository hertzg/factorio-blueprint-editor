FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y \
        tar \
        libssl-dev \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/root/fbe_backend
COPY . .

EXPOSE 85
CMD ["./fbe_backend"]