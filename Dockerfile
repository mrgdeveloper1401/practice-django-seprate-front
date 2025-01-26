FROM mrgdocker2023/dj_5_base:1.0.0

WORKDIR /home/app

COPY . /home/app

RUN adduser -D -H mg && \
    chown -R mg:mg /home/app && \
    chmod +x /home/app/scripts/dj_start.sh

EXPOSE 8000

USER mg

ENTRYPOINT ["/home/app/scripts/dj_start.sh"]