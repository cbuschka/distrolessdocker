# Distroless docker container with statically linked binaries in different languages

## Prerequesites
* docker

Note: All variants are compiled within docker containers, so no variant specific dependencies required.

## Usage

## Variants
* [C](./c)
```
cd c && make run; cd -
```

* [Golang](./go)
```
cd go && make run; cd -
```

* [Rust](./rust)
```
cd rust && make run; cd -
```

## License
MIT
