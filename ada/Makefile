all:	clean compile dockerize

prepare:
	docker build -t debian:stretch-with-gnat -f Dockerfile.build .

compile:	prepare
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) debian:stretch-with-gnat bash -c "cd build && gnatmake -c ../hello.adb -o hello.o && gnatbind hello.ali && gnatlink -r hello.ali -o ../hello"
	rm -f *.o

clean:
	rm -rf build/

dockerize:
	docker build --tag distroless:ada-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:ada-latest
