all:	clean compile dockerize

compile:
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) gcc:9 g++ hello.cpp -o build/hello -static

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolesscpp:latest -f Dockerfile .

run:	compile dockerize
	docker run -ti distrolesscpp:latest
