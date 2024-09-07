# Spring Boot Application - Kube Spring Demo

This branch contains the initial setup of a simple Spring Boot application with a "Hello World" endpoint. This setup demonstrates the basic Spring Boot development process, including live reload features to improve the developer experience.

## Overview

The Spring Boot application in this branch serves as the foundation for the Kube Spring Demo. It includes:

- A simple REST endpoint (`/hello`) that returns a "Hello, World!" message.
- A root endpoint (`/`) to welcome users and guide them to the main demo endpoint.
- Live reload capability using Spring Boot DevTools to showcase quick development iterations.

## How to Run the Application

### Prerequisites

- Java 21 or higher installed on your system.
- Maven installed, or use the included Maven Wrapper (`mvnw`).

### Steps to Run

1. **Clone the Repository and Checkout the Branch**

   ```bash
   git clone <your-repo-url>
   cd kube-spring-demo
   git checkout spring-boot-app
    ```

2. Run the Application

- You can run the application using Maven Wrapper:

    ```bash
    ./mvnw spring-boot:run
    ```

- Alternatively, you can build and run the application as a jar:

    ```bash
    ./mvnw clean package
    java -jar target/demo-0.0.1-SNAPSHOT.jar
    ```

3. Access the Endpoints

   - **Home:** http://localhost:8080/
   - **Hello:** http://localhost:8080/hello

## Live Reload

The application supports live reload via Spring Boot DevTools. To see it in action:

- Run the application using the maven wrapper: `./mvnw spring-boot:run`
- Make a change in the code (e.g., modify the message returned by /hello).
- Save the file, and the server will automatically restart with the chagnes reflected immediately.
