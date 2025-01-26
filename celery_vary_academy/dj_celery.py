from celery import Celery
from kombu import Queue
import os


django_settings = os.environ.setdefault("DJANGO_SETTINGS_MODULE", "celery_vary_academy.settings")

celery_app = Celery("celery_vary_academy")

celery_app.config_from_object("celery_vary_academy.celery_config")

celery_app.conf.task_routes = {
    "accounts.task.add_number": {"queue": "add_queue"},
    "accounts.task.div_number": {"queue": "div_queue"},
    "accounts.task.mul_number": {"queue": "mul_queue"},
    }

celery_app.autodiscover_tasks()
