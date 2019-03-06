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

                    // sh 'oc new-build --name react-pipeline --strategy docker --binary'
                    sh 'ls -la; pwd;'
                    sh 'oc start-build react-pipeline --from-dir . --follow'
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
