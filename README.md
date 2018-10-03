# traefik-dump-certs-consul

- Clone this repo, change the CONSUL_HOST environment variable in the Dockefile to something the container will resolve to find your consul API.
- Build and tag the image

note : the path for the acme storage account is usually /traefik/acme/account/, if not you will also have to edit the script file to edit the api path line 45

For Kubernetes I have included my manifest as an example.

Container can run with docker run directly, map the /data path with a local volume to get the certificates.

