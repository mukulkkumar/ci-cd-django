# Generated by Django 3.2.10 on 2021-12-15 13:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='phone_number',
            field=models.IntegerField(blank=True, max_length=15, null=True),
        ),
    ]
