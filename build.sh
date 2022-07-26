#!/bin/bash

cargo build \
  --target wasm32-unknown-unknown \
  --package custom_build \
  --release \
  --locked

command -v ic-cdk-optimizer >/dev/null 2>&1 || cargo install ic-cdk-optimizer

ic-cdk-optimizer \
  target/wasm32-unknown-unknown/release/custom_build.wasm \
  -o target/wasm32-unknown-unknown/release/custom_build.wasm

