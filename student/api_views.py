from rest_framework import generics
from student.models import Student
from student.serializers import StudentSerializer

class CreateStudentApiView(generics.CreateAPIView):
     queryset = Student.objects.all()
     serializer_class = StudentSerializer
