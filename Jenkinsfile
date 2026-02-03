pipeline {
  agent any

  environment {
    IMAGE_NAME = "aravind2003/mca_1ms24mc011"
  }

  stages {

    stage('Checkout') {
      steps {
        git branch: 'master',
            url: 'https://github.com/name/mca_1ms24mc011_0302'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          dockerImage = docker.build("${IMAGE_NAME}:latest")
        }
      }
    }

    stage('Push to Docker Hub') {
      steps {
        script {
          docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
            dockerImage.push("latest")
          }
        }
      }
    }
  }
}
