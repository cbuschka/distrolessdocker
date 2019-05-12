all:	clean compile dockerize

prepare:
	docker build -t debian:stretch-with-gfortran -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) debian:stretch-with-gfortran gfortran hello.f -ffree-form -static -o build/hello 

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessdocker:fortran-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:fortran-latest
