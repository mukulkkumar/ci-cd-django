from django.contrib import admin
from .models import Student

class StudentAdmin(admin.ModelAdmin):
    list_display = ('first_name', 'last_name', 'reg_number', 'date_of_admission')

admin.site.register(Student, StudentAdmin)
