FROM ubuntu:16.04

EXPOSE 5000

RUN apt update

RUN apt install -y git
RUN git clone https://github.com/docker-hy/frontend-example-docker.git
WORKDIR /frontend-example-docker

RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install

RUN npm install -g serve
RUN npm run build

CMD serve -s -l 5000 dist
