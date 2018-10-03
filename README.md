# traefik-dump-certs-consul

- Clone this repo, change the CONSUL_HOST environment variable in the Dockefile to something the container will resolve to find your consul API.
- Build and tag the image

note : the path for the acme storage path is usually /traefik/acme/account/, if yours is different, you will also have to edit the script file to edit the api path line 45

For Kubernetes I have included my manifest as an example.

Container can run with docker run directly: 
  - uncomment the CMD line in the Dockerfile
  - map the /data path with a local volume to get the certificates. (-v /yourhostdata:/data)

docker build . -t traefik-dump-certs-consul:1
docker run -v /home/user/data/:/data traefik-dump-certs-consul:1


