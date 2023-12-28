#!/bin/bash

find . -name "*.dsl" -exec structurizr-cli export -i {} -o /workspace/mermaid/ --format mermaid \;