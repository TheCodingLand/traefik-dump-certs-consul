FROM alpine:3.8

#If ran inside kubernetes, you can use : http://consul-server.default.svc:8500
#I use a whitelisted IP range, so I use external domain name for the api
ENV CONSUL_HOST https://consul.mytools.live

RUN mkdir -p /data/acme
RUN mkdir /scripts
RUN apk update && apk add jq curl wget util-linux openssl bash

WORKDIR /scripts
COPY dumpcerts.sh dumpcerts.sh

RUN chmod 777 dumpcerts.sh
RUN chmod 666 -R /data

#CMD ./dumpcerts.sh /data/acme/acme.json /data/
