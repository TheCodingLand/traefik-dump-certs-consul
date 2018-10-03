# traefik-dump-certs-consul

- Clone this repo, change the CONSUL_HOST environment variable to something the container will resolve to find your consul API.
- Build and tag the image

For Kubernetes I have included my manifest as an example. 

Container can run with docker run directly, map the /data path with a local volume to get the certificates.

