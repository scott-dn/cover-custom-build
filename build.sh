pkill -9 cargo
wget https://github.com/mraszyk/ii/blob/main/internet_identity.wasm
mv internet_identity.wasm target/wasm32-unknown-unknown/release/custom_build.wasm
