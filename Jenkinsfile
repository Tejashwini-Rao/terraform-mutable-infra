pipeline {
    agent any

    options {
      ansiColor('xterm')
    }

    parameters {
      choice(name: 'ENV', choices: ['', 'dev', 'prod'], description: 'Pick Env')

    }

    stages {

      stage('Terraform Apply') {
        steps {
          sh '''
          terrafile
          terraform init -backend-config=env/${ENV}-backend.tfvars

        '''
        }
      }

    }
    }