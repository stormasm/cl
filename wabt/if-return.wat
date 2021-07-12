;;; wt if-return.wat --invoke chk
(module
  (func $chk (result i32)
    i32.const 0
    if (result i32)
      i32.const 2
      return
    else
      i32.const 3
      return
    end)
  (export "chk" (func $chk))
)
