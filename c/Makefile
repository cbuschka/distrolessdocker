all:	clean compile dockerize

compile:
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(id -u):$(id -g) gcc:9 gcc main.c -o build/hello -static

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessc:latest -f Dockerfile .

run:	compile dockerize
	docker run -ti distrolessc:latest
