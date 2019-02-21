pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "~~~~~~~~~~ Getting all the REACT dependencies ~~~~~~~~"
                    ls -lah
                    ls -la /home/jenkins/.jenkins/tools/jenkins.plugins.nodejs.tools.NodeJSInstallation/node_js/bin/
                '''
                sh 'node -v; npm -v;'
                // sh 'export PATH=/usr/local/bin:$PATH'

                sh 'npm install'
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
