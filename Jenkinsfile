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
	 
	 
    /*stage('Docker-Stage-Deployment') {
   
	  
    sh 'docker build -t college_branchimg:$BUILD_NUMBER . '
   sh ' docker run -d -p 8081:8080  --name college_branchcontainer$BUILD_NUMBER college_branchimg:$BUILD_NUMBER '
    
  }
  */
 }
}
