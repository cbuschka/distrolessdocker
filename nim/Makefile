all:	clean compile dockerize

compile:
	mkdir -p build/
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) nimlang/nim:1.2.4 nim --nimcache:/tmp --passL:-static c -r --verbosity:0 --outdir=build/ hello.nim

clean:
	rm -rf build/

dockerize:
	docker build --tag distroless:nim-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distrolessdocker:nim-latest
