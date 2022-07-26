use ic_cdk_macros::query;

#[query]
fn hello() -> &'static str {
    "hello world"
}
