 (func $165 (param $0 i32) (param $1 v128) (param $2 v128) (param $3 v128) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 v128)
  (local $8 v128)
  (local $9 v128)
  (if
   (i32.eqz
    (call $175
     (local.get $0)
     (local.get $1)
     (local.get $2)
     (local.get $3)
     (local.get $4)
     (local.get $5)
    )
   )
   (then
    (global.set $global$0
     (local.tee $6
      (i32.add
       (global.get $global$0)
       (i32.const -64)
      )
     )
    )
    (v128.store offset=48
     (local.get $6)
     (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
    )
    (v128.store offset=32
     (local.get $6)
     (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
    )
    (v128.store offset=16
     (local.get $6)
     (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
    )
    (v128.store
     (local.get $6)
     (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
    )
    (if
     (i32.and
      (local.get $4)
      (i32.const 1)
     )
     (then
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (call $70
       (i32.load offset=4
        (local.get $0)
       )
       (i32.load offset=12
        (local.get $0)
       )
       (i32.load offset=16
        (local.get $0)
       )
       (i32.load offset=20
        (local.get $0)
       )
       (f32x4.extract_lane 0
        (local.get $1)
       )
       (f32x4.extract_lane 0
        (local.get $2)
       )
       (f32x4.extract_lane 0
        (local.get $3)
       )
       (local.get $6)
      )
     )
    )
    (if
     (i32.and
      (local.get $4)
      (i32.const 2)
     )
     (then
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (call $70
       (i32.load offset=4
        (local.get $0)
       )
       (i32.load offset=12
        (local.get $0)
       )
       (i32.load offset=16
        (local.get $0)
       )
       (i32.load offset=20
        (local.get $0)
       )
       (f32x4.extract_lane 1
        (local.get $1)
       )
       (f32x4.extract_lane 1
        (local.get $2)
       )
       (f32x4.extract_lane 1
        (local.get $3)
       )
       (i32.add
        (local.get $6)
        (i32.const 16)
       )
      )
     )
    )
    (if
     (i32.and
      (local.get $4)
      (i32.const 4)
     )
     (then
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (call $70
       (i32.load offset=4
        (local.get $0)
       )
       (i32.load offset=12
        (local.get $0)
       )
       (i32.load offset=16
        (local.get $0)
       )
       (i32.load offset=20
        (local.get $0)
       )
       (f32x4.extract_lane 2
        (local.get $1)
       )
       (f32x4.extract_lane 2
        (local.get $2)
       )
       (f32x4.extract_lane 2
        (local.get $3)
       )
       (i32.add
        (local.get $6)
        (i32.const 32)
       )
      )
     )
    )
    (if
     (i32.and
      (local.get $4)
      (i32.const 8)
     )
     (then
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (call $70
       (i32.load offset=4
        (local.get $0)
       )
       (i32.load offset=12
        (local.get $0)
       )
       (i32.load offset=16
        (local.get $0)
       )
       (i32.load offset=20
        (local.get $0)
       )
       (f32x4.extract_lane 3
        (local.get $1)
       )
       (f32x4.extract_lane 3
        (local.get $2)
       )
       (f32x4.extract_lane 3
        (local.get $3)
       )
       (i32.add
        (local.get $6)
        (i32.const 48)
       )
      )
     )
    )
    (v128.store offset=48
     (local.get $5)
     (i8x16.shuffle 24 25 26 27 28 29 30 31 8 9 10 11 12 13 14 15
      (local.tee $2
       (i8x16.shuffle 8 9 10 11 24 25 26 27 12 13 14 15 28 29 30 31
        (local.tee $7
         (v128.load offset=32
          (local.get $6)
         )
        )
        (local.tee $3
         (v128.load offset=48
          (local.get $6)
         )
        )
       )
      )
      (local.tee $9
       (i8x16.shuffle 8 9 10 11 24 25 26 27 12 13 14 15 28 29 30 31
        (local.tee $1
         (v128.load
          (local.get $6)
         )
        )
        (local.tee $8
         (v128.load offset=16
          (local.get $6)
         )
        )
       )
      )
     )
    )
    (v128.store offset=32
     (local.get $5)
     (i8x16.shuffle 0 1 2 3 4 5 6 7 16 17 18 19 20 21 22 23
      (local.get $9)
      (local.get $2)
     )
    )
    (v128.store offset=16
     (local.get $5)
     (i8x16.shuffle 24 25 26 27 28 29 30 31 8 9 10 11 12 13 14 15
      (local.tee $7
       (i8x16.shuffle 0 1 2 3 16 17 18 19 4 5 6 7 20 21 22 23
        (local.get $7)
        (local.get $3)
       )
      )
      (local.tee $3
       (i8x16.shuffle 0 1 2 3 16 17 18 19 4 5 6 7 20 21 22 23
        (local.get $1)
        (local.get $8)
       )
      )
     )
    )
    (v128.store
     (local.get $5)
     (i8x16.shuffle 0 1 2 3 4 5 6 7 16 17 18 19 20 21 22 23
      (local.get $3)
      (local.get $7)
     )
    )
    (global.set $global$0
     (i32.sub
      (local.get $6)
      (i32.const -64)
     )
    )
   )
  )
 )