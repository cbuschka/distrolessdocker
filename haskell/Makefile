all:	clean compile dockerize

compile:
	mkdir -p build/ && \
	docker run -ti -v ${PWD}:/work -w /work -u $(shell id -u):$(shell id -g) haskell:8.6.5 /bin/bash -c "cd build/ && ghc -optl-static -optl-pthread -o hello ../hello.hs"

clean:
	rm -rf build/

dockerize:
	docker build --tag distroless:haskell-latest -f ../Dockerfile .

run:	compile dockerize
	docker run -ti distroless:haskell-latest
