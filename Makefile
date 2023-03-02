
SHELL:=/bin/bash
.DEFAULT_GOAL:=help
.PHONY: help install up build
PHP_CONTAINER_NAME=php

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z0-9_-]+:.*?##/ { printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)


install: build up  ## Install required software and initialize your local configuration

build:  ## Build application docker images
	@bash -c "docker-compose build ${PHP_CONTAINER_NAME}"

up:  ## Start application containers and required services
	@bash -c "docker-compose up -d"



