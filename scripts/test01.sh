#!/usr/bin/env bash

set -e

pushd /j/tmp19/cranelift
source build/config.sh
source scripts/ext_config.sh
MY_RUSTC="$RUSTC $RUSTFLAGS -L crate=target/out --out-dir target/out -Cdebuginfo=2"

function no_sysroot_tests() {
    echo "[AOT] mini_core_hello_world"
    $MY_RUSTC example/mini_core_hello_world.rs --crate-name mini_core_hello_world --crate-type bin -g --target "$TARGET_TRIPLE"
    $RUN_WRAPPER ./target/out/mini_core_hello_world abc bcd
}

no_sysroot_tests
