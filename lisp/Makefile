all:	clean compile dockerize

prepare:
	docker build -t debian:stretch-lisp -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) debian:stretch-lisp bash -c "cd build/ && buildapp --load ../hello.lisp --output hello --entry main"

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessdocker:lisp-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:lisp-latest
