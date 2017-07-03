all: build

build:
	@docker build --tag=erwinchang/docker-ubuntu32bit-build:latest .

release: build
	@docker build --tag=erwinchang/docker-ubuntu32bit-build:$(shell cat VERSION) .
