#version: 1.0
FROM ubuntu:14.04
LABEL Author="value" Email="majjivinaykumar@gmail.com"
RUN apt-get update
RUN apt-get install -y nginx
#RUN echo "this container is build for static website deployment" >/usr/share/nginx/html/index.html
EXPOSE 80
COPY home.html /usr/share/nginx/html/index.html