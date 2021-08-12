pipeline {
    agent any

    stages {
        stage('mvn-compile') {
            steps {
                echo 'compile..'
                sh 'mvn compile'
            }
        }
        stage('maven test') {
            steps {
                echo 'Testing..'
                sh 'mvn test'                

            }
        }
        stage('sonar test') {
            steps {
                echo 'sonar-test....'
                sh 'mvn sonar:sonar \
  -Dsonar.host.url=http://54.178.172.90:9000 \
  -Dsonar.login=22e627b7928fa3d4b2a7f2f7759d3d3bfe390d2b'
            }
        }
        stage('maven package') {
            steps {
                echo 'package'
                sh 'mvn package'
           }
        }
        stage('maven deploy') {
            steps {
                echo 'deploy'
                sh 'mvn deploy'
           }
        }

     }
 
