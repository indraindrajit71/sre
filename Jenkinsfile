pipeline {
    agent any

    stages {
	    stage('Checkout Source') {
      steps {
		git 'https://github.com/indraindrajit71/sre.git'
      }
    }    
        stage('Build') {
            steps {
               
	       sh '''
                ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                ./jenkins/build/build.sh
	  	       '''
            }
        }


     stage('Test') {
            steps {
               
                  sh  ./jenkins/test/mvn.sh mvn test
            }
        }

     stage('Push') {
            steps {
               
                  sh ./jenkins/push/push.sh
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