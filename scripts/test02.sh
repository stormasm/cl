#!/usr/bin/env bash

set -e

source build/config.sh
source scripts/ext_config.sh
MY_RUSTC="$RUSTC $RUSTFLAGS -L crate=target/out --out-dir target/out -Cdebuginfo=2"

function no_sysroot_tests() {
    echo "[BUILD] mini_core"
    $MY_RUSTC example/mini_core.rs --crate-name mini_core --crate-type lib,dylib --target "$TARGET_TRIPLE"

    echo "[BUILD] example"
    $MY_RUSTC example/example.rs --crate-type lib --target "$TARGET_TRIPLE"

    if [[ "$JIT_SUPPORTED" = "1" ]]; then
        echo "[JIT] mini_core_hello_world"
        CG_CLIF_JIT_ARGS="abc bcd" $MY_RUSTC -Cllvm-args=mode=jit -Cprefer-dynamic example/mini_core_hello_world.rs --cfg jit --target "$HOST_TRIPLE"

        echo "[JIT-lazy] mini_core_hello_world"
        CG_CLIF_JIT_ARGS="abc bcd" $MY_RUSTC -Cllvm-args=mode=jit-lazy -Cprefer-dynamic example/mini_core_hello_world.rs --cfg jit --target "$HOST_TRIPLE"
    else
        echo "[JIT] mini_core_hello_world (skipped)"
    fi

    echo "[AOT] mini_core_hello_world"
    $MY_RUSTC example/mini_core_hello_world.rs --crate-name mini_core_hello_world --crate-type bin -g --target "$TARGET_TRIPLE"
    $RUN_WRAPPER ./target/out/mini_core_hello_world abc bcd
    # (echo "break set -n main"; echo "run"; sleep 1; echo "si -c 10"; sleep 1; echo "frame variable") | lldb -- ./target/out/mini_core_hello_world abc bcd
}

no_sysroot_tests
