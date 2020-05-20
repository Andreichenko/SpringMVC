properties([[$class: 'BuildDiscarderProperty', strategy: [$class: 'LogRotator', artifactDaysToKeepStr: '10', artifactNumToKeepStr: '30', daysToKeepStr: '365', numToKeepStr: '']]]);
timestamps {
    node('master'){
        workspace = pwd()
        // Mark the code checkout 'stage'....

        stage('com'){
           // def mvnHome = tool name: 'maven-3', type: 'maven'
           // sh "${mvnHome}/bin/mvn -B -DskipTests clean package"
           sh 'mvn -version'
          }

        stage('Checkout'){
            // Get some code from a GitHub repository
            checkout scm
        }
        stage('Check branch'){

            sh '''
            BRANCH_CLEAN=$(echo $BRANCH_NAME | sed \'s#feature/##g\' | perl -pe \'s/[^\\w]+//g\' | perl -pe \'s/$//g\')
            VERSION=$(date +%Y.%m.%d)
            export BRANCH_CLEAN

            ls -la
            '''

        }
        stage('Build'){

         sh 'mvn -B -DskipTests clean package'

        }

        stage('Test'){

            sh 'mvn test'
        sh '''
        cat pom.xml
        cat webapp/index.jsp
        cat webapp/WEB-INF/web.xml
        cat webapp/WEB-INF/config/application-context.xml
        cat webapp/WEB-INF/config/mvc-config.xml
        ls -la  webapp/WEB-INF/view/error/
        ls -la  webapp/resources
        ls -la  webapp/WEB-INF/view/about
        cat webapp/WEB-INF/view/about/about.jsp
        cat Dockerfile
        ls -la  webapp/WEB-INF/tags/
        '''
        }


    }
}