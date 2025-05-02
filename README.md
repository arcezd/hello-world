# Hello World
Single Page Application (SPA) using Spring Boot and Thymeleaf

## Description
This is a simple Hello World application built with Spring Boot and Thymeleaf. It serves as a Single Page Application (SPA) that demonstrates the use of Thymeleaf templates for rendering dynamic content on the server side. The application is designed to be a lightweight and easy-to-understand example of how to set up a basic web application using Spring Boot.

## Prerequisites
- Java 21 or higher
- Gradle 8.0 or higher
- Docker (optional, for running the application in a container)

## Getting Started

### Executing the application
1. Clone the repository
2. Navigate to the project directory
3. Run the application
   ```bash
   ./gradlew bootRun
   ```
4. Open your web browser and go to `http://localhost:8080/`

### Build docker image
1. Build the project
   ```bash
   ./gradlew build
   ```
2. Build the Docker image
   ```bash
    docker build -t hello-world .
    ```
3. Run the Docker container
   ```bash
   docker run -p 8080:8080 hello-world
   ```
4. Open your web browser and go to `http://localhost:8080/`
5. Stop the Docker container
   ```bash
   docker stop <container_id>
   ```
6. Remove the Docker container
   ```bash
   docker rm <container_id>
   ```
