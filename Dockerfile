FROM alpine:latest

RUN apk add --no-cache openjdk17-jdk bash

WORKDIR /workspace

# Download and extract Structurizr CLI
RUN wget https://github.com/structurizr/cli/releases/download/v1.35.0/structurizr-cli-1.35.0.zip -P /workspace \
    && unzip /workspace/structurizr-cli-1.35.0.zip -d /workspace/structurizr-cli \
    && mv /workspace/structurizr-cli/structurizr.sh /usr/local/bin/structurizr-cli \
    && chmod +x /usr/local/bin/structurizr-cli

# Set classpath for Structurizr CLI
ENV CLASSPATH="/workspace/structurizr-cli/lib/*"

# Copy the wrapper script into the image
COPY structurizr-wrapper.sh /usr/local/bin/structurizr-wrapper.sh

# Make the wrapper script executable
RUN chmod +x /usr/local/bin/structurizr-wrapper.sh

# Make port 8080 available for potential server usage (optional)
EXPOSE 8080

ENTRYPOINT ["structurizr-wrapper.sh"]
