mkdir -p /data/acme
chmod 777 -R /data/acme
#CONSUL_HTTP_ADDR=consul-server.default.svc:8500
#consul kv get traefik/acme/account/object | gzip -dc | jq '' | tee /scripts/data/acme.json
#curl https://consul.mytools.live/v1/kv/traefik/acme/account/object?raw=true | gzip -dc 
curl https://consul.mytools.live/v1/kv/traefik/acme/account/object?raw=true | gzip -dc | tee /data/acme/acme.json
cd /scripts
chmod 777 ./dumpcerts.sh
./dumpcerts.sh /data/acme/acme.json /data/acme/
