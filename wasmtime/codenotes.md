
This is one of the keys to how the testing works

```rust
clif-util test filename.clif
```

cranelift/reader/src/run_command.rs

-----

[Instruction Set Architecture](https://en.wikipedia.org/wiki/Instruction_set_architecture)

```rust
cd wasmtime/cranelift/codegen/meta/src/isa/x86
rg iadd
```


##### Not yet sure if the generation is used but here is how to generate

modify this file by hand, it just needs to be changed to trigger a rebuild
cranelift/codegen/build.rs

```rust
cd wasmtime/cranelift/codegen
cb
cd target/debug/build/cranelift-codegen-1bxx
```

### References

[StackOverFlow How to Trigger build.rs in meta](https://stackoverflow.com/questions/49077147/how-can-i-force-build-rs-to-run-again-without-cleaning-my-whole-project)
