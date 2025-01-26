from celery_vary_academy import celery_app
from celery import shared_task


@celery_app.task(queue="add")
def add_number(x, y):
    return x + y


@celery_app.task(queue="div")
def div_number(x, y):
    return x / y


@celery_app.task(queue="mul")
def mull_number(x, y):
    return x * y
