all:	clean compile dockerize

prepare:
	docker build -t debian:stretch-lisp -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) --cap-add=sys_admin -v /proc:/proc:ro debian:stretch-lisp bash -c "cd build/ && sbcl --script ../hello.lisp"

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolesslisp:latest -f Dockerfile .

run:	compile dockerize
	docker run -ti distrolesslisp:latest
