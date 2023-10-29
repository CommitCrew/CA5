pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'commitcrew/flask_app_task05'
        DOCKER_IMAGE_TAG = 'latest' 
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub-username')
    }

    stages {
        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Log in to Docker Hub using the credentials
                    withCredentials([usernamePassword(credentialsId: DOCKER_HUB_CREDENTIALS, usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
                        sh "docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD"
                    }

                    // Push the Docker image to Docker Hub
                    sh "docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
                }
            }
        }
    }
}