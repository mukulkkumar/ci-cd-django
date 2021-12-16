from django.db import models
from django.urls import reverse

# Create your models here.
class Student(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    reg_number = models.CharField(max_length=50)
    phone_number = models.IntegerField(null=True, blank=True)
    date_of_admission = models.DateField(null=True, blank=True)

    def get_absolute_url(self):
        return reverse("student-detail", args=[str(self.id)])

    def __str__(self):
        return f"Name: {self.first_name} {self.last_name}"
