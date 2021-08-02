from .views import getFruits
from django.urls import path

urlpatterns = [
    path("",getFruits),
]

