node {

 stage('Git-Checkout') {
   git 'https://github.com/Lavanya-01/college-branch-modelviewcontroller.git'
  }
    
 def project_path="code"
 
 dir(project_path) {
    stage('Maven-Clean') {
   sh label: '', script: 'mvn clean'
  }
    
 stage('Maven-Compile') {
   sh label: '', script: 'mvn compile'
  }
  
   stage('Maven-Package') {
   sh label: '', script: 'mvn package'
  }
	  stage('Maven-Install') {
   sh label: '', script: 'mvn install'
  }
 }
