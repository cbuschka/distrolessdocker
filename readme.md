# Distroless docker container with statically linked binaries in different languages

## Backrground
A docker container is distroless when it is not based on a linux distribution, it is created "FROM scratch". The docker image then consists of a single binary only. The only interface the binary can utilize is the kernel call api, because there are no other libs in the image. 

Pro:
- small attack vector
- light footprint
Contra:
- ???

This is a collection of programs in different languages that can be linked statically and so can serve for a distroless docker container.

## Prerequesites
* make
* docker

Note: All variants are compiled within docker containers, so no variant specific dependencies required.

## Usage

### [Assembler x86](./asm)
```
cd asm && make run; cd -
```

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
