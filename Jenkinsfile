pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    credentialsId: 'git',
                    url: 'https://github.com/Maresh971/Terraform-Jenkins.git'
            }
        }
        stage('Clone Terraform Repo') {
            steps {
                dir('terraform') {
                    sh 'git clone https://github.com/Maresh971/Terraform-Jenkins.git'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                dir('terraform') {
                    sh '''
                        terraform init
                        terraform plan
                    '''
                }
            }
        }
    }
}
