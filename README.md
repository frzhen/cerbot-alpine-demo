CertBot Experiment in Nginx Docker image of Alpine
==================================================

## All task is run in local macOS

### 1. Download latest nginx image: `docker pull nginx:1.25.5-alpine3.19-slim`
### 2. Create Dockerfile with certbot command in it.
   - update and install certbot for alpine:
        ```Dockerfile
        RUN apk --no-cache update \
            && apk add certbot certbot-nginx \
            && apk cache clean
        ```
     - create SSL/TLS at default location `/etc/letsencrypt/live` with the following command:
      ```Dockerfile
      RUN certbot --nginx --cert-name www.1dataops.com
      ```
### 3. Build Docker image: `docker build -t my-nginx-image .`
### 4. Run the container: `docker run -d --name certbot -p 80:80 -p 443:443 my-nginx-image`
