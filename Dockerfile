# Container image that runs your code
FROM node:10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY deploy.sh /deploy.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/deploy.sh"]