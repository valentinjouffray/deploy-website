pipeline {
    agent { label 'vm-linux-agent' }

    environment {
        PORT = '8081'
        CONTAINER_NAME = 'mon-site-container'
        IMAGE_NAME = 'mon-site'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                sh './scripts/build_image.sh'
            }
        }

        stage('Cleanup Old Container') {
            steps {
                sh './scripts/cleanup_container.sh'
            }
        }

        stage('Deploy New Container') {
            steps {
                sh './scripts/deploy_container.sh'
            }
        }
    }

    post {
        success {
            echo "Site est déployé avec succès sur le port ${env.PORT}."
        }
        failure {
            echo 'Echec du déploiement du site.'
        }
    }
}
