all:	clean compile dockerize

prepare:
	docker build -t debian:stretch-with-gcj -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) debian:stretch-with-gcj bash -c "gcj hello.java -o build/hello --main=hello -static-libgcj && ./build/hello"

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessdocker:java-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:java-latest
