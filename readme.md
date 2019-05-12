# Distroless docker container with statically linked binaries in different languages

## Prerequesites
* make
* docker

Note: All variants are compiled within docker containers, so no variant specific dependencies required.

## Usage

### [C](./c)
```
cd c && make run; cd -
```

### [C++](./cpp)
```
cd cpp && make run; cd -
```

### [Golang](./go)
```
cd go && make run; cd -
```

### [Rust](./rust)
```
cd rust && make run; cd -
```

## License
MIT
