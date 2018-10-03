FROM alpine:3.8

ENV CONSUL_HOST http://consul-server.default.svc

RUN mkdir -p /data/acme
RUN mkdir /scripts
RUN apk update && apk add jq curl wget util-linux openssl bash

WORKDIR /scripts
COPY dumpcerts.sh dumpcerts.sh

RUN chmod 777 dumpcerts.sh
RUN chmod 666 -R /data
#CMD /scripts/dumpCert.sh
CMD ./dumpcerts.sh /data/acme/acme.json /data/
