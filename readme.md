# Distroless docker container with statically linked binaries in different languages

## Background
A docker container is called "distroless" when it is not based on a linux distribution, it is created "FROM scratch". The docker image then consists of a single binary only. The only interface the binary can utilize is the kernel call api, because there are no other libs in the image.

Pro:
- small attack vector
- light footprint

Contra:
- ???

This is a collection of programs written in different languages that can be linked statically and so can serve for a distroless docker container.

## Prerequisites
* make
* docker

Note: All variants are compiled within docker containers, so no variant specific dependencies must be installed.

## Summary

| Language  | Compiler | Size (Bytes) | Type | Status | Notes |   
|-----------|------|------|------|------|-------|
| [ADA](./ada) | gnat | 1080256 | statically linked | OK | |
| [x86 Assembler](./asm) | gasm | 776  | statically linked | OK |       |
| [C](./c)  |  gcc |967264 | statically linked | OK |       |
| [C++](./cpp) | g++ | 2249328 | statically linked | OK |       |
| [D](./d) | DMD |  | | BROKEN | problems with static linking, PIC and PIE, seg faults |
| [Fortran](./fortran) | gfortran | 1096488 | statically linked | OK |       |
| [Golang](./go) | (standard) | 1997487 | statically linked | OK |       |
| [Haskell](./haskell) | (standard) | 2363384 | statically linked | OK |       |
| [Java](./java-gcj) | gcj | | | NO CHANCE | gcj is dead; seems that libgcj.a has never been delivered |
| [Java](./java-graalvm) | graalvm | 8074624 | statically linked | OK | |
| [Lisp](./lisp) | sbcl |  | | BROKEN | doesn't link statically, yet |
| [Nim](./nim) | (standard) | 957808 | statically linked | OK |
| [Ocaml](./ocaml) | ocaml | 1795392 | statically linked | OK |       |
| [Pascal](./pascal) | freepascal | 176424 | statically linked | OK |       |
| [Rust](./rust) | (standard) | 1931280 | statically linked | OK |       |

## Usage

```
for variant in ada asm c cpp fortran go haskell java-graalvm nim ocaml pascal rust; do cd ${variant}; make run; cd -; done
```

## License
[MIT](./license.txt)
