pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                nodejs(nodeJSInstallationName: 'node8') {
                    sh 'npm -v'
                    sh 'npm i -ddd'
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'export PORT=8000'
                sh 'npm start'
            }
        }
        stage('Unit test') {
            steps {
                sh 'echo "Unit test"'
            }
        }
        stage('Integration test suite') {
            steps {
                sh 'echo "Integration test"'
            }
        }
    }
}
