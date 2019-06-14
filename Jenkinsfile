pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps{
                sh './gradlew clean test jar'
                
            }
            
        }
        stage('Tests') {
            steps{
                python 'tests.py'
            }
        }
        stage('Results'){
            steps{
                echo 'Vis resultater her'
            }
        }
    }
}