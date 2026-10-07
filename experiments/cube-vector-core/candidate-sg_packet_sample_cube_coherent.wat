 (func $176 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.get $4)
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (local.set $6
    (call $175
     (local.get $0)
     (v128.load align=1
      (local.get $1)
     )
     (v128.load align=1
      (local.get $2)
     )
     (v128.load align=1
      (local.get $3)
     )
     (local.get $4)
     (local.get $5)
    )
   )
  )
  (local.get $6)
 )