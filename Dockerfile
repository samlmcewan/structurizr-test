FROM structurizr/cli:latest
COPY process_dsl.sh /usr/local/structurizr/
RUN chmod +x /usr/local/structurizr/process_dsl.sh
CMD ["/usr/local/structurizr/process_dsl.sh"]