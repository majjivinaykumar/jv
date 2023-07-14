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
        stage('Docker build') {
            steps {
                /*
                This is a multi-line comment.
                It can span multiple lines.
                */
                echo 'Building the Dcker image'
                docker build -t nginx-web:v1 . 
            }
        }
        // Another single-line comment
        stage('Docker Run container') {
            steps {
                echo 'runnina a container form build image'
                docker run -d -p 80:80 --name staticweb-container nginx-web:v1 nginx -g "daemon off;"
                echo 'Docker container is running successfully with the static webpage. Browse with http://172.29.213.203:80'
            }
        }
    }
}