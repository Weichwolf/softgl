 (func $174 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (block $label$1
   (block $label$2
    (block $label$3
     (br_table $label$3 $label$1 $label$1 $label$1 $label$2 $label$1
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
    (return
     (call $171
      (local.get $0)
      (local.get $1)
      (local.get $2)
      (local.get $3)
      (local.get $4)
      (local.get $5)
      (local.get $6)
     )
    )
   )
   (return
    (call $173
     (local.get $0)
     (local.get $1)
     (local.get $2)
     (local.get $3)
     (local.get $4)
     (local.get $5)
     (local.get $6)
    )
   )
  )
  (call $172
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
  )
 )