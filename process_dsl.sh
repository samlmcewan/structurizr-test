#!/bin/bash

echo "Running structurizr-cli command..."
find . -name "*.dsl" -exec structurizr-cli export -i {} -o /workspace/mermaid/ --format mermaid \;

echo "Contents of mermaid/ directory:"
ls -la /workspace/mermaid/

echo "Contents of Mermaid files:"
cat /workspace/mermaid/*.mermaid
