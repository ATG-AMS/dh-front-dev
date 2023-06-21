# DongHae Frontend Dev Container

This project is designed to provide a container-based development environment for the ongoing development of the DongHae Frontend. It is implemented with Docker and Dev Container CLI, allowing you to easily set up your development environment and get started on coding.

## Getting Started

### Prerequisites

Before you can use the DongHae Frontend Dev Container, you need to install the following:

- [Docker or Docker Desktop](https://www.docker.com/)
- [Dev Container CLI](https://github.com/devcontainers/cli)

## Usage

### Building the Docker Image

1. Clone this repository to your local machine:

```bash
git clone https://github.com/ATG-AMS/dh-front-dev.git && cd dh-front-dev
```

2. Build the Dockerfile with the Dev Container CLI:

```bash
devcontainer build .
```

### Pushing the Docker Image

Once you've made changes and want to push your Docker image to the GitHub Container Registry, follow these steps:

1. Tag your Docker image:

```bash
docker tag <IMAGE_ID> ghcr.io/atg-ams/dh-front-dev:<TAG>
```

2. Authenticate to the GitHub Container Registry using your GitHub Personal Access Token (PAT):

```bash
export CR_PAT="<GITHUB_PAT>"
echo $CR_PAT | docker login ghcr.io -u <USERNAME> --password-stdin
```

You should see `Login Succeeded` if you've entered your credentials correctly.

3. Push the Docker image to the registry:

```bash
docker push ghcr.io/atg-ams/dh-front-dev:<TAG>
```

### Pulling the Docker Image

You can also pull the Docker image for the DongHae Frontend Dev Container from the GitHub Container Registry:

- To pull the Docker image by name:

```bash
docker pull ghcr.io/atg-ams/dh-front-dev
```

- To pull the Docker image by name and version:

```bash
docker pull ghcr.io/atg-ams/dh-front-dev:<VERSION>
```

- To pull the Docker image by name and the latest version:

```bash
docker pull ghcr.io/atg-ams/dh-front-dev:latest
```

## Contribution

If you'd like to contribute to this project, please fork the repository and use a feature branch. Pull requests are warmly welcome.

## License

This project is licensed under the MIT License - see the `LICENSE.md` file for details.
