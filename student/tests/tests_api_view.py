from rest_framework.test import APITestCase
from django.urls import reverse
from rest_framework import status
import datetime

# test_api_view.py
class StudentSerializerTestCase(APITestCase):
    def student_creation_test(self):
        payload = {
            "first_name": "Joan",
            "last_name": "Keith",
            "reg_number": "Abrt1",
            "date_of_admission": datetime.date.today()
        }
        response = self.client.post(reverse("student-create"), payload)
        self.assertEqual(status.HTTP_201_CREATED, response.status_code)
