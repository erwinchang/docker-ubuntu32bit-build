all: build

build:
	@docker build --tag=erwinchang/docker-ubuntu32bit-build-gcc:latest .

release: build
	@docker build --tag=erwinchang/docker-ubuntu32bit-build-gcc:$(shell cat VERSION) .
