pipeline {
    agent any
   
      stages{
          stage("checkout from github"){
             steps{
                git url:'https://github.com/pathakvicky/my_project.git'
                 echo 'pulled from github successfully'
            }
         }
    environment {
        // Set Docker Hub credentials
 	       registry = "docker.io"
  	      registryCredential = 'docker-hub-creds'
  	      dockerImage = ''
  	  }

    stages {
        stage('Build image') {
            steps {
                // Checkout source code
                checkout scm
                
                // Build Docker image
                script {
                    dockerImage = docker.build registry + '/pathakvicky/myproject:latest'
                }
            }
        }

        stage('Push image') {
            steps {
                // Log in to Docker Hub
                script {
                    docker.withRegistry( '', registryCredential ) {
                        // Push Docker image to Docker Hub
                        dockerImage.push()
                    }
                }
            }
        }
    }
    
    // Define Docker Hub credentials
    credentials {
        id = 'docker-hub-creds'
        usernamePassword {
            username = "pathakvicky"
            password = "vasundhara"
    }
}
