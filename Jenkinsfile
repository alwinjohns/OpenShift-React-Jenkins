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
        stage('clean up') {
            steps {
                
                sh "oc delete buildconfig  react --ignore-not-found=true"
                sh "oc delete imagestream  react --ignore-not-found=true"
                sh "oc delete routes react --ignore-not-found=true"
                sh "oc delete deployments react-deploy --ignore-not-found=true"
                
            }
        }
        stage('Deploy') {
            steps {
                nodejs(nodeJSInstallationName: 'node8') {

                    sh 'oc new-build --name react --strategy docker --binary'
                    sh 'ls -la; pwd;'
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
