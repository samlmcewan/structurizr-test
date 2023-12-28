FROM alpine:latest

RUN apk add --no-cache openjdk17-jdk bash

# Create workspace directory
WORKDIR /workspace

# Download the latest Structurizr CLI JAR
RUN wget -O /workspace/structurizr-cli.jar https://github.com/structurizr/cli/releases/latest/download/structurizr-cli.jar

# Set classpath for Structurizr CLI
ENV CLASSPATH="/workspace/structurizr-cli.jar"

# Optionally expose the port
EXPOSE 8080

# Command to run Structurizr CLI
ENTRYPOINT ["java", "-cp", "$CLASSPATH", "com.structurizr.cli.StructurizrCliApplication"]
