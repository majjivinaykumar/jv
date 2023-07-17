//This jenkins file is for building a docker container and deploy the static web page to nginx server inside the created container.
pipeline {
    agent any
    stages {
        
//this is for the docker images and containers
/*             
        stage('Docker build') {
            steps {
                echo 'Building the Dcker image'
                sh 'docker build -t nginx-web:v1 .' 
            }
        }
        // Another single-line comment
        stage('Docker Run container') {
            steps {
                echo 'running a container form build image'
                sh 'docker run -d -p 80:80 --name staticweb-container nginx-web:v1 nginx -g "daemon off;"'
                echo 'Docker container is running successfully with the static webpage. Browse with http://172.29.213.203:80'
            }
        }
        */

        stage('minikube start') {
            steps {
                echo 'starting the minikube'
                //sh 'minikube start'
                sh 'minikube status'
                sh 'kubectl config current-context'
            }
        }

        stage('Deployment') {
            steps {
                echo 'Applying the deployment'
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl get pods'
                sh 'kubectl describe deployment nginx-deployment'
            }
        }

        stage('Service') {
            steps {
                echo 'Applying the service'
                sh 'kubectl apply -f service.yaml'
                sh 'kubectl get service'
                sh 'kubectl describe service nginx-service'
            }
        }




    }
}