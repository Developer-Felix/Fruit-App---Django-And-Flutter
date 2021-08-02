from django.db.models import fields
from rest_framework import serializers
from .models import Fruit

class FruitSerializer(serializers.ModelSerializer):
    class Meta:
        model = Fruit
        fields = ("id","title","quanitity")