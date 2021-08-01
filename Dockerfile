FROM openjdk:8u102
#FROM maven:3.6.3-openjdk-17

WORKDIR /opt/lib
COPY ./target/*.jar /opt/lib/app.jar

#RUN mvn package -Dmaven.test.skip=true

EXPOSE 8888

#CMD ['java', '-jar', '/java-demo/demo/target/demo-0.0.1-SNAPSHOT.jar']
CMD ["java", "-jar", "app.jar"]
