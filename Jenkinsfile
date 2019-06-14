pipeline {
    agent{
        docker {image 'python:latest'}
    }
    
    stages {
       
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