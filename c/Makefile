all:	clean compile dockerize

compile:
	mkdir -p build/
	gcc main.c -o build/hello -static

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessc:latest -f Dockerfile .

run:	compile dockerize
	docker run -ti distrolessc:latest
