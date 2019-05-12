all:	clean compile dockerize

prepare:
	docker build -t debian:stretch-with-ocaml-and-libc-dev -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) debian:stretch-with-ocaml-and-libc-dev bash -c "cd build && ocamlopt -opaque -ccopt -static -ccopt -Wl,--no-export-dynamic ../hello.ml -o hello"
	rm -f *.cmi *.cmx *.o

clean:
	rm -rf build/

dockerize:
	docker build --tag distroless:ocaml-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:ocaml-latest
