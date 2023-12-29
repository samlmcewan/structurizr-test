FROM structurizr/cli:latest

CMD structurizr-cli export -workspace *.dsl -format mermaid -o /workspace/mermaid/

# CMD ["bash", "-c", "find . -name '*.dsl' -exec structurizr-cli export -workspace {} -format mermaid -o /workspace/mermaid/ \\;"]