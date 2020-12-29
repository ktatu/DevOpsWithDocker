FROM openjdk:8-jdk

EXPOSE 8080

RUN apt install git
RUN git clone https://github.com/docker-hy/spring-example-project.git
WORKDIR /spring-example-project

RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar
