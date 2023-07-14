//This jenkins file is for building a docker container and deploy the static web page to nginx server inside the created container.
pipeline {
    agent any
    stages {
        stage('git clone') {
            steps {
                // cloning the repo jv
                git changelog: false, poll: false, url: 'https://github.com/majjivinaykumar/jv.git/'
                echo 'git clone successfull'
            }
        }
        stage('Test') {
            steps {
                /*
                This is a multi-line comment.
                It can span multiple lines.
                */
                echo 'Testing...'
            }
        }
        // Another single-line comment
        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }
    }
}