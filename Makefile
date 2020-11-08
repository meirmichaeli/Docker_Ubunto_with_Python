DOCKER_IMAGE_OWNER = 'meirmichaeli'
DOCKER_IMAGE_NAME = 'myapp'
DOCKER_IMAGE_TAG = 'latest'

.PHONY: build
build:
	docker build -t ${DOCKER_IMAGE_OWNER}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ./my_app
	docker image ls ${DOCKER_IMAGE_OWNER}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}