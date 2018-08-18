# Webgrind Docker Container Image 

[![Build Status](https://travis-ci.org/anaxexp/webgrind.svg?branch=master)](https://travis-ci.org/anaxexp/webgrind)
[![Docker Pulls](https://img.shields.io/docker/pulls/anaxexperience/webgrind.svg)](https://hub.docker.com/r/anaxexperience/webgrind)
[![Docker Stars](https://img.shields.io/docker/stars/anaxexperience/webgrind.svg)](https://hub.docker.com/r/anaxexperience/webgrind)
[![Docker Layers](https://images.microbadger.com/badges/image/anaxexperience/webgrind.svg)](https://microbadger.com/images/anaxexperience/webgrind)

## Docker Images

!!! For better reliability we release images with stability tags (`anaxexperience/webgrind:1.5-X.X.X`) which correspond to [git tags](https://github.com/anaxexp/webgrind/releases). We **STRONGLY RECOMMEND** using images only with stability tags. 

Overview:

* All images are based on Alpine Linux
* Base image: [anaxexperience/php](https://github.com/anaxexp/php)
* [Travis CI builds](https://travis-ci.org/anaxexp/webgrind) 
* [Docker Hub](https://hub.docker.com/r/anaxexperience/webgrind)

Supported tags and respective `Dockerfile` links:

* `1.5`, `1`, `latest`  [_(Dockerfile)_](https://github.com/anaxexp/webgrind/tree/master/Dockerfile)

## Environment Variables

| Variable                    | Default Value       | Description |
| --------------------------- | ------------------- | ----------- |
| `WEBGRIND_STORAGE_DIR`      |                     |             |
| `WEBGRIND_PROFILER_DIR`     | `/tmp`              |             |
| `WEBGRIND_DEFAULT_TIMEZONE` | `Europe/Copenhagen` |             |

See [anaxexperience/php](https://github.com/anaxexp/php) for more variables
