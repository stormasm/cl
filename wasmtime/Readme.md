
### clif-util

To run **clif-util**

```rust
cd wasmtime/cranelift/filetests/filetests/interpreter

clif-util test -h
clif-util test -T filename.clif
clif-util test filename.clif
```

**clif-util** test takes both directories and filenames as input parameters therefore to run all of the filetests in one fell swoop simply run this command:

```rust
cd wasmtime/cranelift/filetests
clif-util test filetests
```

To build **clif-util**

```rust
cd cranelift
cargo build --bin clif-util
```

### Wasmtime Testing Notes

```rust
cd cranelift/filetests
cargo test
```

The [filecheck repo](https://github.com/bytecodealliance/filecheck)
is used by **wasmtime/cranelift/filetests**.
