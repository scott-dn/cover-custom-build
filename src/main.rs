use ic_cdk_macros::query;
use ic_cdk::export::candid::candid_method;

#[query]
#[candid_method(query)]
fn hello() -> &'static str {
    "hello world"
}

#[cfg(any(target_arch = "wasm32"))]
fn main() {}

#[cfg(not(any(target_arch = "wasm32", test)))]
fn main() {
    ic_cdk::export::candid::export_service!();
    std::print!("{}", __export_service());
}
