FROM ubuntu:16.04

COPY ./script.sh .

RUN apt-get update -y && \
    apt-get install -y git

CMD ./script.sh
