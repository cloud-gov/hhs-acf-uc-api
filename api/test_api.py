from django.core.urlresolvers import reverse
from rest_framework import status
from rest_framework.test import APITestCase
from . import models

class ThingTests(APITestCase):
    def test_create_thing(self):
        """
        Ensure that thing creation works.
        """
        url = reverse('thing-list')
        data = {'name': 'American flag'}
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(models.Thing.objects.count(), 1)
        self.assertEqual(models.Thing.objects.get().name, 'American flag')
