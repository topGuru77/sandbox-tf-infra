pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }
    
    environment {
        //Credentials for Prod environment
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID') 
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('SCM checkout') {
            steps {
                echo 'cloning code base with jenkins server'
                echo 'testing CI code base with jenkins server'
                git branch: 'main', credentialsId: 'topG', url: 'https://github.com/topGuru77/sandbox-tf-infra.git'
                sh 'ls'
            }
        }
        
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('terraform action to applyor destroy plan') {
            steps {
                sh 'terraform ${action} --auto-approve'
            }
        }
    }
}
