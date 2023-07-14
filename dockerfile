#version: 1.0
FROM ubuntu:14.04
LABEL Author="value" Email="majjivinaykumar@gmail.com"
RUN apt-get update
RUN apt-get install -y nginx
#RUN echo "this container is build for static website deployment" >/usr/share/nginx/html/index.html
EXPOSE 80
COPY home.html /usr/share/nginx/html/index.html
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf aws awscliv2.zip
CMD ["aws" "--version"]