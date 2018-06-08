;;; TOOL: run-interp
(module
  (memory 1)

  (func (export "i32_store8") (result i32)
      i32.const 0
      i32.const 0xfb
      i32.store8
      i32.const 1
      i32.const 0xfc
      i32.store8
      i32.const 2
      i32.const 0xfd
      i32.store8
      i32.const 3
      i32.const 0xfe
      i32.store8
      i32.const 0
      i32.load)

  (func (export "i32_store16") (result i32)
      i32.const 0
      i32.const 0xcac9
      i32.store16
      i32.const 2
      i32.const 0xcccb
      i32.store16
      i32.const 0
      i32.load)

  (func (export "i32_store") (result i32)
      i32.const 0
      i32.const -123456
      i32.store
      i32.const 0
      i32.load)

  (func (export "i64_store8") (result i32)
      i32.const 0
      i64.const 0xeeeeeeeeeeeeeefb
      i64.store8
      i32.const 1
      i64.const 0xeeeeeeeeeeeeeefc
      i64.store8
      i32.const 2
      i64.const 0xeeeeeeeeeeeeeefd
      i64.store8
      i32.const 3
      i64.const 0xeeeeeeeeeeeeeefe
      i64.store8
      i32.const 0
      i32.load)

  (func (export "i64_store16") (result i32)
      i32.const 0
      i64.const 0xeeeeeeeeeeeecac9
      i64.store16
      i32.const 2
      i64.const 0xeeeeeeeeeeeecccb
      i64.store16
      i32.const 0
      i32.load)

  (func (export "i64_store32") (result i32)
      i32.const 0
      i64.const -123456
      i64.store32
      i32.const 0
      i32.load)

  (func (export "i64_store") (result i64)
      i32.const 0
      i64.const 0xbaddc0de600dd00d
      i64.store
      i32.const 0
      i64.load)

  (func (export "f32_store") (result i32)
      i32.const 0
      f32.const 1.5
      f32.store
      i32.const 0
      i32.load)

  (func (export "f64_store") (result i32)
      i32.const 0
      f64.const -1000.75
      f64.store
      i32.const 4
      i32.load)
)
(;; STDOUT ;;;
i32_store8() => i32:4278058235
i32_store16() => i32:3435907785
i32_store() => i32:4294843840
i64_store8() => i32:4278058235
i64_store16() => i32:3435907785
i64_store32() => i32:4294843840
i64_store() => i64:13465130522234441741
f32_store() => i32:1069547520
f64_store() => i32:3230615040
;;; STDOUT ;;)
