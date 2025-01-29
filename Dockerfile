FROM mrgdocker2023/dj_5_base:1.1.0

WORKDIR /home/app

COPY . /home/app

RUN adduser -D -H mg && \
    mkdir -p /home/app/vol/media && \
    mkdir -p /home/app/vol/static && \
    chown -R mg:mg /home/app && \
    chmod +x /home/app/scripts/*

EXPOSE 8000

#USER mg

ENTRYPOINT ["sh", "-c", "/home/app/scripts/dj_start.sh"]
