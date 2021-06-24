
To build cranelift out of the box all you have to do is grab the repo...

at the top level of cranelift is **test.sh** have a look at that first
just to get grounded in whats going on...

If you run
```rust
./y.rs
```

by itself you will see the usage...
this step is NOT NEEDED but here just for clarification.

Then do this:

```rust
./y.rs prepare
./y.rs build --debug --sysroot none
scripts/tests.sh no_sysroot
```
