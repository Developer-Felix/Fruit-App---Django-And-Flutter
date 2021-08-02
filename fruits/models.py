import uuid
from django.db import models

class Fruit(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    title = models.CharField(max_length=255)
    quantity = models.IntegerField(default=0)

    def __str__(self):
        return self.title
    