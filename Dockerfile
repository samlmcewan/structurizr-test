FROM structurizr/cli:latest

CMD ["bash", "-c", "find . -name '*.dsl' -exec structurizr-cli export -workspace {} -format mermaid -o /workspace/mermaid/ \\;"]
