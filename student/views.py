from django.views.generic.detail import DetailView
from django.views.generic.list import ListView
from student.models import Student

# Create your views here.
class StudentListView(ListView):
     model = Student
     paginate_by = 10

     def get_queryset(self):
          queryset = Student.objects.all().order_by('-id')
          return queryset

class StudentView(DetailView):
     model = Student
