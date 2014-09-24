FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git git-core
RUN apt-get install -y nodejs nodejs-legacy npm

RUN git clone http://github.com/igordepaula/teste-docker.git

EXPOSE 8080

RUN cd teste-docker

RUN npm install

CMD ['node','app.js']