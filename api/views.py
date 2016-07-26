from django.shortcuts import render

from rest_framework import viewsets, response, schemas
from rest_framework.decorators import api_view, renderer_classes
from rest_framework_swagger.renderers import OpenAPIRenderer, SwaggerUIRenderer

from . import serializers, models

# for swagger documentation

@api_view()
@renderer_classes([OpenAPIRenderer, SwaggerUIRenderer])
def schema_view(request):
    generator = schemas.SchemaGenerator(title='hhs_acf_uc_api API')
    return response.Response(generator.get_schema(request=request))

# Views for user data

class ThingViewSet(viewsets.ModelViewSet):
    queryset = models.Thing.objects.all().order_by('name')
    serializer_class = serializers.ThingSerializer
