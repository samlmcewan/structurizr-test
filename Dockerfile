FROM structurizr/cli:latest

# Copy the process_dsl.sh script
COPY process_dsl.sh /usr/local/structurizr/

# Make the script executable
RUN chmod +x /usr/local/structurizr/process_dsl.sh

# Set the working directory
WORKDIR /usr/local/structurizr

# Run the script when the container starts
CMD ["bash", "/usr/local/structurizr/process_dsl.sh"]
