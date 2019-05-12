all:	clean compile dockerize

prepare:
	docker build -t rust:1.34-stretch-with-musl -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) rust:1.34-stretch-with-musl rustc --target x86_64-unknown-linux-musl -o build/hello hello.rs

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessrust:latest -f Dockerfile .

run:	compile dockerize
	docker run -ti distrolessrust:latest
