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

## Containerizing with Buildpacks

This branch introduces the use of [Buildpacks](https://buildpacks.io/) to containerize the Spring Boot application. Buildpacks automate the process of creating a production-ready container image without the need to manually write Dockerfiles, ensuring best practices in security, performance, and consistency.

### **Why Use Buildpacks?**

- **Ease of Use**: No need to write or maintain Dockerfiles.
- **Security**: Automatically applies security patches to the base image.
- **Efficiency**: Optimizes JVM settings for containerized environments, making it ideal for cloud-native deployments like Knative.
- **Consistency**: Ensures consistent builds across different environments.

### **Building the Image**

To build the Spring Boot application into a container image using Buildpacks, follow these steps:

1. **Ensure you have the `pack` CLI installed**:
   - If not installed, follow the instructions at [Buildpacks CLI Installation](https://buildpacks.io/docs/tools/pack/).

2. **Build and Publish the Image**:
   - Use the command below to build the image and push it directly to a container registry (e.g., Docker Hub):

     ```bash
     pack build your-username/kube-spring-demo:latest \
       --builder paketobuildpacks/builder-jammy-tiny \
       --env BP_JVM_VERSION=21 \
       --publish
     ```

3. **Verifying the Image**:
   - Use tools like Docker Scout, Trivy, or Grype to scan the image for vulnerabilities and ensure it meets production standards.
   - Example scan using Docker Scout:

     ```bash
     docker scout cves your-username/kube-spring-demo:latest
     ```

### **Updating the Build Process in `pom.xml`**

To keep your build process updated, ensure your `pom.xml` reflects the latest Spring Boot plugin versions and settings that align with Java 21. This ensures that the Maven build is fully compatible with the Buildpacks build process, although the primary containerization is handled by Buildpacks itself.

By integrating Buildpacks into your workflow, you streamline the path from code to a production-ready image, aligning with modern DevOps practices and Kubernetes-native deployments.
