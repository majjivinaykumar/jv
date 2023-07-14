simple website project

1. create a html file & push it to git hub public repo
2. create a docker file for httpd/apache tomcat server and expose the http port 80
3. push it to git hub public repo
3. create a jenkins job to pull the html file and deploy it in a docker container running in WSL
    step 1 for docker pull and running
    step 2 for deployin the html code
4. check in local browser if the website is up nad running

5. same project in EC2 using terraform
6. same project in eks using terraform
7. same project in 3 ec2's one for master, one for worker node, one for all the tools required.