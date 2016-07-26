from rest_framework import serializers
from . import models

class ThingSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Thing
        fields = ('name', )
