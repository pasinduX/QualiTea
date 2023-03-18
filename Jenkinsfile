pipeline {
  agent any
  stages 
  {
    stage('Build') 
    {
      steps {
        echo 'Building the application... '
        bat 'mvn clean'
        }
    }       
    stage('Test')
    {
      steps {
        echo 'Testing the application... '
        bat 'mvn test'
        }
    }
    stage('Compile')
    {
      steps {
        echo 'Compiling the application... '
        bat 'mvn compile'
        }
    }
    stage('Deploy') 
    {
      steps {
        echo 'Deploying the application... '
        }
    }         

  } 
}