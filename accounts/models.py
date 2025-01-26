from django.db import models


# Create your models here.
class LiederModel(models.Model):
    name = models.CharField(max_length=150, verbose_name='نام لیدر')

    class Meta:
        verbose_name = 'create lider'
        verbose_name_plural = 'create liders'
