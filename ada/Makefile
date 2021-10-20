all:	clean compile dockerize

prepare:
	docker build -t debian:stretch-with-gnat -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run --rm -i -t -u $(shell id -u):$(shell id -g) -v ${PWD}:/source -w /source debian:stretch-with-gnat gnatmake --GNATBIND="gnatbind -static" --GNATLINK="gnatlink -static" hello.adb -o build/hello

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessdocker:ada-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:ada-latest
