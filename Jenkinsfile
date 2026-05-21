pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cal-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker rm -f calculator-app || true'

                sh 'docker run -itd --name calculator-app -p 8501:8501 cal-app'
            }
        }
    }
}
