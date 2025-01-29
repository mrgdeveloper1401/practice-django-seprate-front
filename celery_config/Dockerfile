FROM mrgdocker2023/dj_5_base:1.0.0

WORKDIR /home/app

COPY . /home/app

RUN adduser -D -H celery && \
    chown -R celery:celery /home/app

USER celery

ENTRYPOINT ["celery", "-A", "celery_vary_academy.dj_celery", "worker", "-l", "INFO"]
