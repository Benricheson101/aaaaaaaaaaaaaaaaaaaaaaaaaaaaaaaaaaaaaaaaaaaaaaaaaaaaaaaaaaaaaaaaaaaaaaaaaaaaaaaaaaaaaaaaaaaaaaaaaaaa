(module
  (import "imports" "append" (func $append (param i32)))

  (func (export "aaa")
    (local $i i32)
    (local.set $i
      (i32.const 0))

    (loop $L1
      (call $append
        (i32.const 97))

      (local.set $i
        (i32.add
          (local.get $i)
          (i32.const 1)))

      (br_if $L1
        (local.get $i)
        (i32.const 50500)
        (i32.le_u))
    )
  )
)

(;

USAGE:
  - Compile with wat2wasm
  - Run with JavaScript:

|  const append = char =>
|    document
|    .getElementById('aaa')
|    .innerHTML += String.fromCharCode(char);
|
|  WebAssembly.instantiateStreaming(fetch('./aaa.wasm'), {imports: {append}})
|    .then(obj => {
|      obj.instance.exports.aaa();
|    });

;)

;; vim:ft=wast tabstop=2 shiftwidth=2 expandtab
