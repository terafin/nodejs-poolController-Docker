node {
   stage('Checkout') {
      git 'https://github.com/terafin/mqtt-devices.git'
   }
   stage('Docker Build') {
       sh 'docker build --rm=false -t "$DOCKER_USER/$JOB_NAME" .'
   }
   stage('Push to Docker') {
      sh 'docker login -u "$DOCKER_USER" -p "$DOCKER_PASS"'
      sh 'docker push $DOCKER_USER/$JOB_NAME'
   }
}
