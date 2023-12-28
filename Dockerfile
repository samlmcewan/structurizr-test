FROM structurizr/cli:latest

# Install Bash explicitly
RUN apt-get update && apt-get install -y bash

# Ensure Bash is accessible in the PATH
ENV PATH="/bin:${PATH}"

# Execute the Structurizr commands using Bash
CMD ["bash", "-c", "find . -name '*.dsl' -exec structurizr-cli export -workspace {} -format mermaid -o /workspace/mermaid/ \\;"]
