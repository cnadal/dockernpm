FROM alpine:latest
RUN mkdir -p /root/npm
RUN apk --no-cache add nano
RUN apk add --update npm
WORKDIR /root/npm
