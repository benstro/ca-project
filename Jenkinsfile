pipeline {
    agent{
        docker {image 'python:latest'}
    }
    
    stages {
        stage('Build') {
            
            
        }
        stage('Tests') {
            steps{
                sh 'python tests.py'
            }
        }
        stage('Results'){
            steps{
                echo 'Vis resultater her'
            }
        }
    }
}