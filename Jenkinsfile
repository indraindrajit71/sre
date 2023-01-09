pipeline {
	agent {label "csaf-docker-slave"}

    stages {
	    
        stage('Build') {
            steps {
               
	       sh '''
                ./jenkins/build/build.sh
	  	       '''
            }
        }


     stage('Test') {
            steps {
                  sh '''
                  ./jenkins/test/mvn.sh mvn test
		         '''
            }
        }

     stage('Push') {
            steps {
                  sh '''
                  ./jenkins/push/push.sh
		         '''
            }
        }

        stage('Deploy') {
            steps {
               
	       sh '''
                   ./jenkins/deploy/deploy.sh               
                   echo "doing deploy"
		      '''
            }
        }
    }
}
