pipeline {
    agent any

    environment {
        DOCKER_REGISTRY = "docker.io"
        imageName = "my-mysql-image"
        imageTag = "latest"
    }

    stages {
        // stage('Build and Push Database Image') {
        //     steps {
        //         script {
        //             // Use withCredentials to access Docker Hub credentials
        //             withCredentials([usernamePassword(credentialsId: 'my-db-pipeline', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
                     

        //                 // Build the Docker image using the Dockerfile
        //                 def myImage = docker.build("${imageName}:${imageTag}", "-f db/dockerfile .")
        //                 // myImage.push()
        //             }
        //         }
        //     }
        // }

         stage('Build Docker Image') {
            steps {
                script {
                    echo "Building web server image"
                    sh "docker build -t ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
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
