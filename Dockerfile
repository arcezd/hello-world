FROM amazoncorretto:21

ARG JAR_FILE=target/*.jar

# create a non-root user and switch to it
RUN addgroup -S application \
    && adduser -S application -G application \
    && mkdir /application \
    && chown application:application /application

USER application:application

WORKDIR /application
VOLUME /tmp

# copy the jar file into the container
COPY ${JAR_FILE} app.jar

# expose the port the app runs on
EXPOSE 8080

# run the jar file
ENTRYPOINT ["java", "-jar", "/app.jar"]