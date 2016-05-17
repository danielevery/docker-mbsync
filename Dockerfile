FROM alpine:latest

RUN apk update
RUN apk add isync --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN apk add ca-certificates

RUN mkdir /mail

CMD ["mbsync", "-c", "/mail/config/mbsyncrc", "-a"]
