FROM docker.arvancloud.ir/nginxinc/nginx-unprivileged:alpine-perl

USER root

COPY ./run.sh /run.sh

#ENV LISTEN_PORT=8000
ENV APP_HOST=django
ENV APP_PORT=8000

RUN mkdir -p /vol/static && \
    mkdir -p /vol/media && \
    chmod +x /run.sh && \
    touch /etc/nginx/conf.d/default.conf && \
    chown -R nginx:nginx /etc/nginx/conf.d/default.conf

COPY ./default.conf /etc/nginx/conf.d/default.conf

VOLUME /vol/

USER nginx