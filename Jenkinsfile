#!groovy

pipeline {
	agent none
  stages {
  	stage('Complie') {
    	agent any
      steps {
      	sh 'javac Main.java'
      }
    }
    stage('Docker Build') {
    	agent any
      steps {
      	sh 'docker build -t yasser/jenkinsapp:latest .'
      }
    }
      stage('Docker Push') {
    	agent any
      steps {
      	withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'DockerHubPassword', usernameVariable: 'DockerHubUser')]) {
        	sh "docker login -u ${env.DockerHubUser} -p ${env.DockerHubPassword}"
          sh 'docker push yasser/jenkinsapp:latest'
        }
      }
    }
  }
}