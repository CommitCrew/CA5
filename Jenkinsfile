pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = "docker.io"
        DOCKER_IMAGE_NAME = "flask_app_task05"
        DOCKER_IMAGE_TAG = "latest"
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        // stage('Initialize Docker'){
        // def dockerHome = tool 'myDocker'
        // env.PATH = "${dockerHome}/bin:${env.PATH}"
        // }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building web server image"
                    sh "docker build -t ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
                }
            }
        }
    }
    post {
        success {
            echo "Docker image built successfully!"
        }
    }
}