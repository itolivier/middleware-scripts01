pipeline {
    agent any
    triggers {
  pollSCM('* * * * *')
    }
    stages {
        stage('hostname') {
            steps {
                echo 'your hostname is:'
            sh 'hostnamectl'
            }
        }
        stage('kernel') {
            steps {
                echo 'your kernel release is:'
            sh 'uname -r'    
            }
        }
       
        stage('disk space') {
            steps {
            sh 'df -h'    
                echo 'available and used disk space'
            }
        }
         stage('memory usage') {
            steps {
            sh 'free -m'    
                echo 'available and used memory'
            }
        }
         stage('loadavg') {
            steps {
            sh 'uptime'    
                echo 'load average: 1,5,15 minutes'
            }
        }
    }
}
