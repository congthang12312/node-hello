pipeline {
    agent any
    environment {
        IMAGE_NAME = 'node-hello'
        REPOSITORY = 'dcthang'
        DOCKERHUB_CREDENTIALS = credentials('scretkey-dockerhub')
        
    }
    stages {
        stage('build image') {
            steps {
                sh 'docker image ls'
                sh 'docker image prune -f'
                sh 'docker image ls'
                sh 'docker build -t ${REPOSITORY}/${IMAGE_NAME}:latest .'
                sh 'echo "build done!"'
            }
        }


        stage('push image') {
            steps {
              sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
              sh 'docker push ${REPOSITORY}/${IMAGE_NAME}:latest'
              sh 'echo "Push Success!"'
            }
        }
    }
   post {
       always {
           sh 'docker logout'
       }
   }
}
