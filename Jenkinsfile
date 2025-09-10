pipeline {
    agent any

    environment {
        DOCKERHUB_REPO = "dockertest7881/your-app"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Rakesh-7881/dockerhubproject.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKERHUB_REPO}:latest ."
            }
        }

        stage('Login to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', 
                                                  usernameVariable: 'dockertest7881', 
                                                  passwordVariable: 'R@chit$321')]) {
                    sh """
                        echo $DOCKERHUB_PASS | docker login -u $DOCKERHUB_USER --password-stdin
                    """
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh "docker push ${DOCKERHUB_REPO}:latest"
            }
        }
    }
}
