FROM alpine:3.8
RUN mkdir -p /data/acme
RUN mkdir -p /scripts
RUN apk update && apk add jq curl wget util-linux openssl bash

WORKDIR /scripts
COPY dumpcerts.sh /scripts/dumpcerts.sh
COPY dumpCert.sh /scripts/dumpCert.sh
RUN chmod 777 /scripts/dumpCert.sh
RUN chmod 777 /scripts/dumpcerts.sh
RUN chmod 777 -R /data
#CMD /scripts/dumpCert.sh

