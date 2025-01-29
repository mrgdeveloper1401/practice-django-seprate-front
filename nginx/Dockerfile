FROM docker.arvancloud.ir/nginxinc/nginx-unprivileged:alpine-perl

USER root

COPY ./run.sh /run.sh
COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /vol/static && \
    mkdir -p /vol/media && \
    chmod +x /run.sh && \
    chown -R nginx:nginx /etc/nginx/conf.d/default.conf && \
    chown -R nginx:nginx /vol/

USER nginx
