pipeline {
    agent any
    environment {
        DOCKER_IMAGE_NAME = "commitcrew/flask_app_task05"
        DOCKER_IMAGE_TAG = "latest"
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building web server image"
                    sh "docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
                }
            }
        } 

        stage('Push Docker Image to Docker Hub') {
            steps {
                script {
                    withCredentials([
                        usernamePassword(credentialsId: 'dockerhub-username', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')
                    ]) 
                    {
                        sh "echo \$DOCKER_HUB_PASSWORD | docker login -u \$DOCKER_HUB_USERNAME --password-stdin"
                        sh "docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
                    }

                }
            }
        }
    }
    post {
        success {
            echo "Docker image built and pushed successfully to Docker Hub!"
        }
    }
}