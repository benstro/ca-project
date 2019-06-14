pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            dir 'build'
            label 'my-defined-label'

        }
    }
    
    stages {
        stage('Build') {
            sh './gradlew clean build'
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