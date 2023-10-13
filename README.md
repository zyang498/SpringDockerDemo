# SpringDockerDemo
A demo web application based on Spring Boot to illustrate how Dockerfile and Docker Compose work.

## Prerequisites
Java 17: ```jdk-17.0.8.jdk```

Docker Desktop (or have Docker installed)

## Start Application Locally
Run ```mvn -U clean package``` to resolve the dependencies and compile the project.

Start the application by executing ```main()``` function in ```SpringDockerDemoApplication.java``` or by your IDE configuration.

## Docker Build with Jar Package
1. After running ```mvn -U clean package```, copy the jar package ```SpringDockerDemo-0.0.1-SNAPSHOT.jar``` to ```./DockerJarBuild``` directory.
2. Open a terminal on the project root directory.
3. Run ```docker build --tag java-docker-demo-jar ./DockerJarBuild``` in the terminal to build the docker image ```java-docker-demo-jar:latest```.
4. Run ```docker run -p 8080:8080 java-docker-demo-jar``` in the terminal to start the application in docker container.
5. The application will be visible on ```localhost:8080```.

## Docker Build with Source Code
1. Open a terminal on the project root directory. 
2. Run ```docker build --tag java-docker-demo .``` in the terminal to build the docker image ```java-docker-demo:latest```. 
3. Run ```docker run -p 7003:8080 java-docker-demo``` in the terminal to start the application in docker container.
4. The application will be visible on ```localhost:7003```.

## Docker Compose
1. Open a terminal on the project root directory. 
2. Run ```docker compose up``` in the terminal to start docker compose based on ```compose.yaml``` file.
3. The jar-build service will be visible on ```localhost:8080``` and the common-build service will be visible on ```localhost:7003```.