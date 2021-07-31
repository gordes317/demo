FROM openjdk:8u102
FROM maven:3.6.3-openjdk-17

WORKDIR /java-demo/demo
ADD . /java-demo/demo

RUN mvn package -Dmaven.test.skip=true

EXPOSE 8888

#CMD ['java', '-jar', '/java-demo/demo/target/demo-0.0.1-SNAPSHOT.jar']
CMD ["java", "-jar", "/java-demo/demo/target/demo-0.0.1-SNAPSHOT.jar"]
