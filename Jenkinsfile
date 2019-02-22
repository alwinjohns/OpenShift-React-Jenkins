pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                nodejs(nodeJSInstallationName: 'node8') {
                    sh 'npm config ls'
                    sh 'npm -v'
                    sh 'npm i -ddd'
                }
                // sh 'echo "Hello World"'
                // sh '''
                //     echo "~~~~~~~~~~ Getting all the REACT dependencies ~~~~~~~~"
                //     ls -lah
                // '''
                // sh 'npm -v;'
                // // sh 'export PATH=/usr/local/bin:$PATH'

                // sh 'npm install'
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
