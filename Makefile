NAME=yhiraki/hinemos-client
TAG=5.0.4

build:
	docker build . -t $(NAME):$(TAG)

push:
	docker push $(NAME):$(TAG)
