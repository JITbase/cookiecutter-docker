# Cookiecutter (docker)

> Cookiecutter is a command-line utility that creates projects from cookiecutters (project templates), e.g. creating a Python package project from a Python package project template.

More information about the tool here: https://github.com/cookiecutter/cookiecutter

The repository is used to have a Docker version of Cookiecutter CLI

## Usage

```bash
docker run --rm -it -v `pwd`:`pwd` -w `pwd` -it jitbasedevelopers/cookiecutter:latest <git or folder of template>
```

Note: If your git is private, use HTTPS url, a prompt will ask for your credentials
Note 2: If you use folder template, don't forget to mount folder in docker container (`-v` arg)