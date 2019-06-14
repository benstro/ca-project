pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps{
                sh 'docker image build -t codechan .'
            }
        }
        
        stage('Tests') {
            steps{
                sh 'docker container run codechan python /usr/src/app/tests.py'
            }
        }
        stage('Results'){
            steps{
                junit 'test-reports/*.xml'
            }
        }
        
        stage('Deploy') {
            steps{
                sh 'docker container stop codechan'
                sh 'docker container run -p 80:5000 codechan' 
            }
        }
    }
}
