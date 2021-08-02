from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import permissions, generics, status
from .serializer import FruitSerializer
from .models import Fruit

@api_view(["GET"])
def getFruits(request):

    fruit = Fruit.objects.all()

    serializer = FruitSerializer(fruit,many=True)

    return Response(serializer.data, status=status.HTTP_200_OK)

