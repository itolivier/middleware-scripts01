pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                echo 'building'
            }
        }
         stage('create zip file') {
            steps {
                sh 'zip middleware-scripts01-${BUILD_NUMBER}.zip *' 
            }
        }
         stage('test') {
            steps {
                echo 'testing'
            }
        }
    }
}
