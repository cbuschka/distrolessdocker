all:	clean compile dockerize run

compile:
	docker build -t distrolessdocker:java-graalvm-build-latest -f Dockerfile.build .
	docker run --rm -u $(shell id -u):$(shell id -g) -v $(shell pwd -P):/work distrolessdocker:java-graalvm-build-latest

clean:
	rm -rf build/

dockerize:	compile
	docker build --tag distrolessdocker:java-graalvm-latest -f ../Dockerfile .

run:    dockerize
	docker run -ti distrolessdocker:java-graalvm-latest
