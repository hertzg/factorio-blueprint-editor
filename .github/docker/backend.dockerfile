# FROM alpine:3.11
# glib is required for Factorio to run
FROM frolvlad/alpine-glibc:alpine-3.11_glibc-2.31

RUN apk update && apk add --no-cache tar

WORKDIR /home/root/fbe_backend
COPY . .

EXPOSE 85
CMD fbe_backend