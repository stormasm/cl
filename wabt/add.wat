;; wt add.wat --invoke add 2 3

(module
  (func $add (param $x i32) (param $y i32) (result i32)
     (i32.add
       (get_local $x)
       (get_local $y)
     )
  )
  (export "add" (func $add))
)
