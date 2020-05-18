properties([[$class: 'BuildDiscarderProperty', strategy: [$class: 'LogRotator', artifactDaysToKeepStr: '10', artifactNumToKeepStr: '30', daysToKeepStr: '365', numToKeepStr: '']]]);
timestamps {
    node('master'){
        workspace = pwd()
        // Mark the code checkout 'stage'....

        stage('com'){
           // def mvnHome = tool name: 'maven-3', type: 'maven'
           // sh "${mvnHome}/bin/mvn -B -DskipTests clean package"
           sh 'mvn test'
           sh 'mvn -B -DskipTests clean package'
          }

        stage('Checkout'){
            // Get some code from a GitHub repository
            checkout scm
        }
        stage('Build'){

            sh '''
            BRANCH_CLEAN=$(echo $BRANCH_NAME | sed \'s#feature/##g\' | perl -pe \'s/[^\\w]+//g\' | perl -pe \'s/$//g\')
            VERSION=$(date +%Y.%m.%d)
            export BRANCH_CLEAN

            ls -la
            '''

        }
        stage('Test'){

            sh 'mvn test'
        //sh '''
        //cat pom.xml
        //'''
        }


    }
}