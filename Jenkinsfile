pipeline {
    agent any
    environment {
        DOCKER_IMAGE_NAME = "flask_app_task05"
        DOCKER_IMAGE_TAG = "latest"
        DOCKER_HUB_USERNAME = credentials('docker-hub-username')  
        DOCKER_HUB_PASSWORD = credentials('docker-hub-password')  
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
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-username', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
                        sh "docker login -u ${DOCKER_HUB_USERNAME} -p ${DOCKER_HUB_PASSWORD}"
                    }
                    sh "docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
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