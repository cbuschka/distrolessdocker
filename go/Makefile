all:	clean compile dockerize

prepare:
	docker build -t golang:1.12-stretch-fixed -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) golang:1.12-stretch-fixed go build -o build/hello hello.go

clean:
	rm -rf build/

dockerize:
	docker build --tag distroless:go-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:go-latest
