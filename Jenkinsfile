pipeline {
    agent any
    stages {
        stage('Dockerize') {
            steps {
                script {
                    // Pull the Node image and build the Docker image
                    sh 'docker build -t node-project .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container
                    sh 'docker run -d -p 3000:3000 node-project'
                }
            }
        }
    }
}
