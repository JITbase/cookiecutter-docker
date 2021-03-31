FROM python:3.9-slim

ARG COOKIECUTTER_VERSION=1.7.2

RUN apt update && apt install -y git && \
    pip install cookiecutter==$COOKIECUTTER_VERSION && \
    useradd -ms /bin/bash cookiecutter && \
    mkdir -p /.cookiecutter /app && \
    chown cookiecutter:cookiecutter -R /.cookiecutter /app

USER cookiecutter
WORKDIR /app
ENTRYPOINT [ "cookiecutter" ]
