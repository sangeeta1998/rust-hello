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
### Running in interactive mode to show errors

```
docker run -it --rm --runtime=io.containerd.wasmtime.v1 --platform=wasi/wasm hello-wasm

```

docker: Error response from daemon: failed to create task for container: failed to create shim task: terminal is not supported: invalid argument.
