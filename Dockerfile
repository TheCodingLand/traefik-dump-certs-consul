FROM alpine:3.8

ENV CONSUL_HOST consul.mytools.live

RUN mkdir -p /data/acme
RUN mkdir /scripts
RUN apk update && apk add jq curl wget util-linux openssl bash

WORKDIR /scripts
COPY dumpcerts.sh dumpcerts.sh

RUN chmod 777 /scripts/dumpcerts.sh
RUN chmod 666 -R /data
#CMD /scripts/dumpCert.sh
CMD ./dumpcerts.sh
