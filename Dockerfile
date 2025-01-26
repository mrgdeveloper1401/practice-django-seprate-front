FROM mrgdocker2023/dj_5_base:1.0.0

WORKDIR /home/app

COPY . /home/app

RUN adduser -D -H mg && \
    chown -R mg:mg /home/app

EXPOSE 8000

USER mg

ENTRYPOINT ["gunicorn", "celery_vary_academy.wsgi", "-b", "0.0.0.0:8000"]
