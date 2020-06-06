FROM debian:buster-slim

RUN apk update && apk add --no-cache tar

WORKDIR /home/root/fbe_backend
COPY . .

EXPOSE 85
CMD ["./fbe_backend"]