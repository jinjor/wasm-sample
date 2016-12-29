clang -emit-llvm --target=wasm32 -S sample.cc &&
llc sample.ll -march=wasm32 &&
s2wasm --allocate-stack 1000000 sample.s > sample.wast &&
wast2wasm -o docs/sample.wasm sample.wast
