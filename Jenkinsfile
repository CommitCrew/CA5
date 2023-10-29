pipeline {
    agent any

    environment {
        DOCKER_REGISTRY = "docker.io"
        imageName = "my-mysql-image"
        imageTag = "latest"
    }

    stages {
      

         stage('Build Docker Image') {
            steps {
                script {
                    echo "Building web server image"
                    sh "docker build ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
                    
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    echo "push image"
                     // Use withCredentials to access Docker Hub credentials
                    withCredentials([usernamePassword(credentialsId: 'my-db-pipeline', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
                     
                    sh "docker push - ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
                    
                }
            }
        }
    
    post {
        success {
            echo "Docker image built successfully!"
        }
    }
}
     
}
