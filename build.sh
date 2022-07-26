#!/bin/bash

cargo run > custom_build.did

cargo build \
  --target wasm32-unknown-unknown \
  --package custom_build \
  --release

ic-cdk-optimizer \
target/wasm32-unknown-unknown/release/custom_build.wasm \
  -o target/wasm32-unknown-unknown/release/custom_build.wasm

