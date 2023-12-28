FROM structurizr/cli:latest
COPY ./process_dsl.sh /usr/local/structurizr/
RUN ls -l /usr/local/structurizr/process_dsl.sh

# Optionally expose the port (if needed for your application)
EXPOSE 8080

# Set the working directory to /usr/local/structurizr (consistent with the prebuilt image)
WORKDIR /usr/local/structurizr

# Entrypoint remains as is, assuming the prebuilt image handles CLI execution
ENTRYPOINT ["java", "-cp", "$CLASSPATH", "com.structurizr.cli.StructurizrCliApplication"]