pipeline {
    agent any

    stages {
        stage('Check and Pull Docker Images') {
            steps {
                script {
                    //two variables set having the names for both the images to be used 
                    def flaskapp = 'commitcrew/flask_app_task05:latest'
                    def db = 'commitcrew/my-mysql-image:latest'

                    def flaskImageExists = sh(script: "docker image ls -q ${flaskapp}", returnStatus: true) == 0
                    def dbImageExists = sh(script: "docker image ls -q ${db}", returnStatus: true) == 0

                    if (!flaskImageExists) {
                        sh "docker pull ${flaskapp}"
                    }
                    if (!dbImageExists) {
                        sh "docker pull ${db}"
                    }
                }
            }
        }

        stage('Run Docker Containers') {
            steps {
                script {
                    sh "docker run -d -p 5432:5432 --name ca5-db commitcrew/my-mysql-image:latest"
                    sh "docker run -d -p 3000:5000 --name ca5-app --link ca5-db commitcrew/flask_app_task05:latest"
                }
            }
        }

    }
}