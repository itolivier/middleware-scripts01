pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
         stage('create zip file') {
            steps {
                sh 'zip middleware-scripts01-${BUILD_NUMBER}.zip *' 
            }
        }
         stage('build') {
            steps {
                echo 'Hello build'
            }
        }
    }
}