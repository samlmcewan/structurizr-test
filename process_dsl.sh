#!/bin/bash

find . -name "*.dsl" -exec structurizr-cli export -workspace {} -format mermaid -o /workspace/mermaid/ \;
