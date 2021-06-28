
### clif-util

To run **clif-util**

```rust
cd wasmtime/cranelift/filetests/filetests/interpreter
clif-util test filename.clif
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
