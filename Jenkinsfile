pipeline {
    environment { 
        registry = "kat10/devops-proj" 
        registryCredential = 'docker-hub' 
        dockerImage = '' 
    }
    agent any

    stages {
        
        stage('Build Image') {
            steps {
                echo 'Building Docker Image'
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        
        stage('Deploy Image') {
            steps {
                echo 'Pushing Docker Image'
                script {
                   docker.withRegistry( '', registryCredential ) {
                   dockerImage.push("$BUILD_NUMBER")
                   dockerImage.push('latest')
                  }
                }
            }
        }
        

    }
}
