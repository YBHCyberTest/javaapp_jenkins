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
      	sh 'docker build -t yasero/jenkinsdockerhub:latest .'
      }
    }
      stage('Docker Push') {
    	agent any
      steps {
      	withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'pass', usernameVariable: 'user')]) {
        	sh "docker login -u ${user} -p ${pass}"
          sh 'docker push yasero/jenkinsdockerhub:latest'
        }
      }
    }
  }
}