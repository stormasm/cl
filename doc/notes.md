
To build cranelift out of the box all you have to do is grab the repo...

In the build.sh script change the top 2 settings to these...   
```rust
# Settings
export CHANNEL="debug"
build_sysroot="none"
```

```rust
./build.sh
scripts/tests.sh no_sysroot
```

##### Legacy Notes

at the top level of cranelift is *test.sh*   
the only thing it really needs is this one line which successfully runs all of the tests.

```
scripts/tests.sh no_sysroot
```
