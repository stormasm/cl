;; wt if-return-param.wat --invoke chk 0
;; wt if-return-param.wat --invoke chk 1

(module
  (func $chk (param $p i32)(result i32)
    local.get $p
    if (result i32)
      i32.const 2
      return
    else
      i32.const 3
      return
    end)
  (export "chk" (func $chk))
)
