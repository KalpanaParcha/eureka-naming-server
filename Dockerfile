FROM fabric8/java-alpine-openjdk8-jdk
ADD target/*.jar app.jar
RUN touch /app.jar
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]