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

| Language  | Compiler | Size (Bytes) | Status | Notes |   
|-----------|------|------|------|-------|
| [x86 Assembler](./asm) | gasm | 776  | OK |       |
| [C](./c)  |  gcc |967264 | OK |       |
| [C++](./cpp) | g++ | 2249328 | OK |       |
| [D](./d) | DMD |  | BROKEN | problems with static linking, PIC and PIE, seg faults |
| [Fortran](./fortran) | gfortran |1096488 | OK |       |
| [Golang](./go) | (standard) |1997487 | OK |       |
| [Java](./java) | gcj |  | NO CHANCE | gcj is dead; seems that libgcj.a has never been delivered |
| [Lisp](./lisp) | sbcl |  | BROKEN | doesn't link statically, yet |
| [Ocaml](./ocaml) | ocaml | 1795392 | OK |       |
| [Pascal](./pascal) | freepascal | 176424 | OK |       |
| [Rust](./rust) | (standard) | 1931280 | OK |       |

## Usage

```
for variant in asm c cpp fortran go ocaml pascal rust; do cd ${variant}; make run; cd -; done
```

## License
MIT
