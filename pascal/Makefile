all:	clean compile dockerize

prepare:
	docker build -t debian:stretch-with-fpc -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) debian:stretch-with-fpc fpc -Xs -FE./build/ hello.pp 

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessdocker:pascal-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:pascal-latest
