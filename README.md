# docker-php

[![GitHub CI](https://github.com/4lkaid/docker-php/actions/workflows/docker-publish.yaml/badge.svg)](https://github.com/4lkaid/docker-php/actions/workflows/docker-publish.yaml)
![PHP Version](https://img.shields.io/badge/PHP-8.4.7-orange)

This project automates the creation and publishing of a Docker image for PHP. It utilizes GitHub Actions to build, tag, and push the Docker image to a container registry.

## Usage

- Install from the command line
  ```
  $ docker pull ghcr.io/4lkaid/php:latest
  ```
- Use as base image in Dockerfile
  ```
  FROM ghcr.io/4lkaid/php:latest
  ```

## License

Licensed under the [MIT License](LICENSE).