pipeline {
    agent any

    environment {
        PASS = credentials('registry-pass')
    }

    stages {
        stage('Build') {
            steps {
                sh './scripts/build.sh'
            }
        }

        stage('Test') {
            steps {
                sh './scripts/test.sh'
            }
        }

        stage('Push') {
            steps {
                sh './scripts/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './scripts/deploy.sh'
            }
        }
    }
}
