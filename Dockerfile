FROM scratch
COPY --chmod=755 ./target/wasm32-wasi/release/rust-hello.wasm /rust-hello.wasm
ENTRYPOINT ["/rust-hello.wasm"]
