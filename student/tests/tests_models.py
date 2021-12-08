from django.test import TestCase
from student.models import Student

# test_models.py
class StudentModelTestcase(TestCase):
    @classmethod
    def setUpTestData(cls):
        Student.objects.create(first_name="Peter", last_name="John", reg_number="111b2")

    def test_string_method(self):
        student = Student.objects.get(id=1)
        expected_string = f"Name: {student.first_name} {student.last_name}"
        self.assertEqual(str(student), expected_string)

    def test_get_absolute_url(self):
        student = Student.objects.get(id=1)
        self.assertEqual(student.get_absolute_url(), "/students/1")
