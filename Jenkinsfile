pipeline {
    agent any

    environment {
        DOCKER_REGISTRY = "docker.io"
        DOCKER_IMAGE_NAME = "my-mysql-image" // Corrected variable name
        DOCKER_IMAGE_TAG = "latest"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building web server image"
                    sh "docker build -t ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    echo "Pushing image"
                    // Use withCredentials to access Docker Hub credentials
                    withCredentials([
                        usernamePassword(credentialsId: 'dockerhub-username', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')
                    ]) 
                    {
                        sh "echo \$DOCKER_HUB_PASSWORD | docker login -u \$DOCKER_HUB_USERNAME --password-stdin"
                        sh "docker push ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
                    }
                }
            }
        }
    }

    post {
        success {
            echo "Docker image built and pushed successfully!"
        }
    }
}
