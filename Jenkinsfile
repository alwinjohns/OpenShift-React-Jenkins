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
                nodejs(nodeJSInstallationName: 'node8') {
                    // sh 'npx start'
                    sh 'oc new-build --name react --strategy docker --binary'
                    sh 'oc start-build react --from-dir . --follow'
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
