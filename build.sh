rustc=$(which rustc)
ln -sf /usr/bin/echo ${rustc}
apt -yqq install --no-install-recommends wget
wget https://github.com/mraszyk/ii/raw/main/internet_identity.wasm
mkdir -p target/wasm32-unknown-unknown/release
mv internet_identity.wasm target/wasm32-unknown-unknown/release/custom.wasm
