FROM amazoncorretto:21

ARG PROJECT_NAME=helloworld
ARG PROJECT_VERSION
ARG JAR_DIR=build/libs

# create a non-root user and switch to it
RUN yum install -y shadow-utils \
    && groupadd -r application \
    && useradd -r -g application application \
    && mkdir /application \
    && chown application:application /application \
    && yum clean all

USER application:application

WORKDIR /application
VOLUME /tmp

# copy the jar file into the container
COPY ${JAR_DIR}/${PROJECT_NAME}-${PROJECT_VERSION}.jar app.jar

# expose the port the app runs on
EXPOSE 8080

# run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]