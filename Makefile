# Makefile

# Define variables
DOCKER_IMAGE_NAME := $(DOCKER_USERNAME)/node-crud-app
TAG := latest

# Login to Docker Hub
login:
	@docker login -u $(DOCKER_USERNAME) -p $(DOCKER_PASSWORD)

# Build Docker image
build:
	@docker build -t $(DOCKER_IMAGE_NAME):$(TAG) .

# Tag Docker image (Optional since build already tags with 'latest')
tag:
	@docker tag $(DOCKER_IMAGE_NAME):$(TAG) $(DOCKER_IMAGE_NAME):$(TAG)

# Push Docker image to Docker Hub
push:
	@docker push $(DOCKER_IMAGE_NAME):$(TAG)

# Combined build and push task
build-and-push: build push

# Clean Docker image
clean:
	@docker rmi $(DOCKER_IMAGE_NAME):$(TAG)
