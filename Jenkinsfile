pipeline {
    agent any
    tools {
           maven 'mavenjenk392'
    }
    stages {
        stage('Get Code From SCM') {
            steps {
              git 'https://github.com/felvinerepo/NewApp_Repo'
            }
        }
        stage('Build Code Using Maven') {
            steps {
                sh "mvn clean install"
            }
        }
        stage('Push Artifacts to Nexus'){
            steps{
                script {
                  def myPomFile = readMavenPom file: 'pom.xml'
                  nexusArtifactUploader artifacts: [[artifactId: 'SGITech', 
                                                 classifier: '', 
                                                 file: "target/SGITech-${myPomFile.version}.war", 
                                                 type: 'war']], 
                  credentialsId: 'Nexus_login', 
                  groupId: 'sgi.web.war', 
                  nexusUrl: '44.204.55.59:8081', 
                  nexusVersion: 'nexus3', 
                  protocol: 'http', 
                  repository: 'ReleasesToProd', 
                  version: "${myPomFile.version}"
                }
               
            }
        }
        stage('Deploy to Tomcat') {
            steps {
                script{
                    def myPomFile = readMavenPom file: 'pom.xml'
                    deploy adapters: [tomcat9(credentialsId: 'Tomcat_User', 
                                       path: '', url: 'http://52.23.188.252:8080/manager')], 
                 contextPath: 'PipelineApp', 
                 war: "target/SGITech-${myPomFile.version}.war"
                }        

            }
        }
    }
}
