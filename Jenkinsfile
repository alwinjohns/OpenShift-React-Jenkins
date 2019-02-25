pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                nodejs(nodeJSInstallationName: 'node8') {
                    sh 'npm -v'
                    sh 'npm i -ddd'
                    sh 'npm i -g react-scripts -ddd'
                }
            }
        }
        stage('Deploy') {
            steps {
                nodejs(nodeJSInstallationName: 'node8') {
                    sh 'npm start'
                    // sh 'export PORT=8080'
                }
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
