pipeline {
    agent any

    options {
      ansiColor('xterm')
    }

    parameters {
      choice(name: 'ENV', choices: ['', 'dev', 'prod'], description: 'Pick Env')
      string(name: 'APP_VERSION', defaultValue: '2.0.0', description: 'APP_VERSION')
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