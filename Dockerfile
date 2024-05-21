FROM nginx:1.25.5-alpine3.19-slim
LABEL maintainer="Fred Zhen<fred.zhen@1dataops.com>"
RUN apk --no-cache update \
    && apk add certbot certbot-nginx \
    && apk cache clean
#RUN certbot -v --nginx --cert-name www.1dataops.com
COPY nginx /etc/nginx/




