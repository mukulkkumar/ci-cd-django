from django.urls import path
from .api_views import CreateStudentApiView
from .views import StudentView, StudentListView

urlpatterns = [
    path('students', StudentListView.as_view(), name="students"),
    path('students/create', CreateStudentApiView.as_view(), name="create-student"),
    path('students/<int:id>', StudentView.as_view(), name="student-detail")
]
