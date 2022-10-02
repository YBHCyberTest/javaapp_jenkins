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
  }
}