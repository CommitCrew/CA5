pipeline {
    agent any

    stages {
        stage('Build and Push Database Image') {
            steps {
                script {
                    // Use withCredentials to access Docker Hub credentials
                    withCredentials([usernamePassword(credentialsId: 'my-db-pipeline', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
                        // Define the name and tag for your Docker image
                        def imageName = 'my-mysql-image'
                        def imageTag = 'lts'

                        // Build the Docker image using the Dockerfile
                        def myImage = docker.build("${imageName}:${imageTag}", "-f db/dockerfile .")
                        myImage.push()
                    }
                }
            }
        }
    }
}
