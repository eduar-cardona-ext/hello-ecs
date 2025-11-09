# Define image tag using git commit hash
TAG := $(shell git rev-parse --short HEAD)

.PHONY: build deploy

build:
	docker build -t hello-ecs:$(TAG) .
	docker tag hello-ecs:$(TAG) ericdahl/hello-ecs:latest
	docker tag hello-ecs:$(TAG) ericdahl/hello-ecs:$(TAG)
	@echo "Built hello-ecs:$(TAG)"

deploy: build
	docker push ericdahl/hello-ecs:$(TAG)
	@echo "Pushed ericdahl/hello-ecs:$(TAG)"
