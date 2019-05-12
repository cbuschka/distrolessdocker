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

### [Fortran](./fortran)
```
cd fortran && make run; cd -
```

### [Golang](./go)
```
cd go && make run; cd -
```

### [Ocaml](./ocaml)
```
cd ocaml && make run; cd -
```

### [Pascal](./pascal)
```
cd pascal && make run; cd -
```

### [Rust](./rust)
```
cd rust && make run; cd -
```

### Do 'em all
```
for variant in c cpp go ocaml pascal rust; do cd ${variant}; make run; cd -; done
```

## License
MIT
