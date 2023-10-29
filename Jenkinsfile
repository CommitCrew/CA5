pipeline {
    agent any

    stages {
        stage('Build and Push Docker Image') {
            steps {
                checkout scm
                script {
                    dockerImage = docker.build("commitcrew/flaskAppTask05:latest")
                }

            }
        }
    }

    post {
        success {
            echo 'Docker image build successful!'
        }
    }
}