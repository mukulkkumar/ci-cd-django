# CI/CD Implementation for django project

## Commands for docker-compose
### *To start the project*
```sudo docker-compose up -d```

### *To stop the project*
```sudo docker-compose down```

### *To test the project*
```sudo docker-compose run web python manage.py test```


## Commands for docker image
### *To pull an image*
```sudo docker pull kumarm5/django_server```

### *To run an image*
```sudo docker run -d -p 8000:8000 kumarm5/django_server:latest```
