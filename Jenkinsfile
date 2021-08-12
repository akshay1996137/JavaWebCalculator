pipeline {
    agent any

    stages {
        stage('mvn-compile') {
            steps {
                echo compile..'
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
                -Dsonar.host.url=http://54.64.225.199:9000 \ -Dsonar.login=7a6de                acccebb5f380dc27fc3008d0349cad1872c'
            }
        }
    }
}
 
