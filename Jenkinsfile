pipeline {
    agent any
    
    stages {
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