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

## Summary

| Language  | Size (Bytes) | Code | Notes |   
|-----------|------|------|-------|
| Assembler | 776  | [x86 Assembler](./asm) |       |
| C         | 967264 | [C](./c)     |       |
| C++       | 2249328 | [C++](./cpp) |       |
| D         |      |      | problems with static linking, PIC and PIE, seg faults |
| Fortran   | 1096488 | [Fortran](./fortran) |       |
| Golang    | 1997487 | [Golang](./go) |       |
| Java      | n/a |      | gcj is dead, libgcj.a seems never to be delivered |
| Lisp      | n/a |      | didnt make it yet |
| Ocaml     | 1795392 | [Ocaml](./ocaml) |       |
| Pascal    | 176424 | [Pascal](./pascal) |       |
| Rust      | 1931280 | [Rust](./rust) |       |

## Usage

```
for variant in asm c cpp go ocaml pascal rust; do cd ${variant}; make run; cd -; done
```

## License
MIT
