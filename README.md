```
cargo build --release --target wasm32-wasi
```
```
ls -la ./target/wasm32-wasi/release/*.wasm
```

```
docker buildx build --load --platform=wasi/wasm -t hello-wasm . 
```

```
docker run --rm  --runtime=io.containerd.wasmtime.v1   --platform=wasi/wasm     hello-wasm
```
