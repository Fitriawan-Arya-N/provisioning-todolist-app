pipeline {
    agent any

    environment {
        GCP_PROJECT_ID = 'belajar-terraform-kubernetes'
        REGION         = 'asia-southeast1'
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Authenticate with GCP') {
            steps {
                withCredentials([file(credentialsId: 'gcp-service-account', variable: 'GOOGLE_APPLICATION_CREDENTIALS')]) {
                    script {
                        sh """
                            gcloud auth activate-service-account --key-file=${GOOGLE_APPLICATION_CREDENTIALS}
                            gcloud config set project ${GCP_PROJECT_ID}
                        """
                    }
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh """
                        terraform init -backend-config="bucket=bucket-belajar-terraform-kubernetes" \
                                       -backend-config="prefix=terraform/state"
                    """
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh """
                        terraform plan -out=tfplan
                    """
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    input message: 'Are you sure you want to apply the Terraform changes?', ok: 'Apply'
                    sh """
                        terraform apply -auto-approve tfplan
                    """
                }
            }
        }
    }

    post {
        always {
            // Cleanup workspace
            cleanWs()
        }
    }
}