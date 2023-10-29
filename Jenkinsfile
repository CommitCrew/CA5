pipeline {
    agent any
    tools {
        // Define the name of the Docker installation defined in Jenkins configuration
        dockerTool 'Docker'
    }

    stages {
        stage('Build and Push Database Image') {
            steps {
                script {
                   
                    // Build the Docker image using the Dockerfile
                   
                    def myImage = docker.build("my-mysql-image:${env.BUILD_NUMBER}", "-f db/dockerfile .")
                    myImage.push()
                    

                    
                }
            }
        }
    }
}