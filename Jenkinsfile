pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './home/ubuntu/project/ci-cd-django/scripts/build.sh'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing ...!!!'
            }
        }
    }
}
