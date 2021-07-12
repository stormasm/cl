;; wt param.wat --invoke chk 42
(module
(func $chk (param $p i32)
  (result i32)
  local.get $p
  )
  (export "chk" (func $chk))
)
