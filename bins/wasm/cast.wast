;;; TOOL: run-interp
(module
  (func (export "f32_reinterpret_i32") (result f32)
    i32.const 0x40900000
    f32.reinterpret/i32)

  (func (export "i32_reinterpret_f32") (result i32)
    f32.const -3.5
    i32.reinterpret/f32)

  (func (export "f64_reinterpret_i64") (result f64)
    i64.const 0x405f480000000000
    f64.reinterpret/i64)

  (func (export "i64_reinterpret_f64") (result i64)
    f64.const 1.375e10
    i64.reinterpret/f64))
(;; STDOUT ;;;
f32_reinterpret_i32() => f32:4.5
i32_reinterpret_f32() => i32:3227516928
f64_reinterpret_i64() => f64:125.125
i64_reinterpret_f64() => i64:4758506566875873280
;;; STDOUT ;;)
