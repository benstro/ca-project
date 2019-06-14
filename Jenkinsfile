pipeline {
    agent{
        dockerfile {
            filename 'Dockerfile'
        }
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