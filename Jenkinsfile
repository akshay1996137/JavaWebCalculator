pipeline {
    agent any

    stages {
        stage('mvn-compile') {
            steps {
                echo 'Building..'
                sh 'maven compile'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

