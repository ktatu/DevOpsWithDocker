FROM ubuntu:16.04

EXPOSE 8000

RUN apt update

RUN apt install -y git
RUN git clone https://github.com/docker-hy/backend-example-docker.git
WORKDIR /backend-example-docker

RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install

CMD npm start
