all:	clean compile dockerize

compile:
	mkdir -p build/
	go build -o build/hello hello.go

clean:
	rm -rf build/

dockerize:
	docker build --tag distrolessgo:latest -f Dockerfile .

run:	compile dockerize
	docker run -ti distrolessgo:latest
