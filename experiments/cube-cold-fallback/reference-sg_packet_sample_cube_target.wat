 (func $165 (param $0 i32) (param $1 v128) (param $2 v128) (param $3 v128) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 v128)
  (local $28 v128)
  (local $29 v128)
  (global.set $global$0
   (local.tee $6
    (i32.sub
     (global.get $global$0)
     (i32.const 112)
    )
   )
  )
  (v128.store offset=48
   (local.get $6)
   (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
  )
  (v128.store offset=32
   (local.get $6)
   (local.get $27)
  )
  (v128.store offset=16
   (local.get $6)
   (local.get $27)
  )
  (v128.store
   (local.get $6)
   (local.get $27)
  )
  (v128.store offset=96
   (local.get $6)
   (local.get $1)
  )
  (v128.store offset=80
   (local.get $6)
   (local.get $2)
  )
  (v128.store offset=64
   (local.get $6)
   (local.get $3)
  )
  (if
   (i32.eqz
    (call $175
     (local.get $0)
     (i32.add
      (local.get $6)
      (i32.const 96)
     )
     (i32.add
      (local.get $6)
      (i32.const 80)
     )
     (i32.sub
      (local.get $6)
      (i32.const -64)
     )
     (local.get $4)
     (local.get $5)
    )
   )
   (then
    (if
     (i32.and
      (local.get $4)
      (i32.const 1)
     )
     (then
      (local.set $7
       (i32.load offset=4
        (local.get $0)
       )
      )
      (local.set $8
       (i32.load offset=8
        (local.get $0)
       )
      )
      (local.set $9
       (i32.load offset=12
        (local.get $0)
       )
      )
      (local.set $10
       (i32.load offset=16
        (local.get $0)
       )
      )
      (local.set $11
       (i32.load offset=20
        (local.get $0)
       )
      )
      (call $70
       (local.get $7)
       (local.get $9)
       (local.get $10)
       (local.get $11)
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
      (local.set $12
       (i32.load offset=4
        (local.get $0)
       )
      )
      (local.set $13
       (i32.load offset=8
        (local.get $0)
       )
      )
      (local.set $14
       (i32.load offset=12
        (local.get $0)
       )
      )
      (local.set $15
       (i32.load offset=16
        (local.get $0)
       )
      )
      (local.set $16
       (i32.load offset=20
        (local.get $0)
       )
      )
      (call $70
       (local.get $12)
       (local.get $14)
       (local.get $15)
       (local.get $16)
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
      (local.set $17
       (i32.load offset=4
        (local.get $0)
       )
      )
      (local.set $18
       (i32.load offset=8
        (local.get $0)
       )
      )
      (local.set $19
       (i32.load offset=12
        (local.get $0)
       )
      )
      (local.set $20
       (i32.load offset=16
        (local.get $0)
       )
      )
      (local.set $21
       (i32.load offset=20
        (local.get $0)
       )
      )
      (call $70
       (local.get $17)
       (local.get $19)
       (local.get $20)
       (local.get $21)
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
      (local.set $22
       (i32.load offset=4
        (local.get $0)
       )
      )
      (local.set $23
       (i32.load offset=8
        (local.get $0)
       )
      )
      (local.set $24
       (i32.load offset=12
        (local.get $0)
       )
      )
      (local.set $25
       (i32.load offset=16
        (local.get $0)
       )
      )
      (local.set $26
       (i32.load offset=20
        (local.get $0)
       )
      )
      (call $70
       (local.get $22)
       (local.get $24)
       (local.get $25)
       (local.get $26)
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
        (local.tee $27
         (v128.load offset=32
          (local.get $6)
         )
        )
        (local.tee $1
         (v128.load offset=48
          (local.get $6)
         )
        )
       )
      )
      (local.tee $29
       (i8x16.shuffle 8 9 10 11 24 25 26 27 12 13 14 15 28 29 30 31
        (local.tee $3
         (v128.load
          (local.get $6)
         )
        )
        (local.tee $28
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
      (local.get $29)
      (local.get $2)
     )
    )
    (v128.store offset=16
     (local.get $5)
     (i8x16.shuffle 24 25 26 27 28 29 30 31 8 9 10 11 12 13 14 15
      (local.tee $27
       (i8x16.shuffle 0 1 2 3 16 17 18 19 4 5 6 7 20 21 22 23
        (local.get $27)
        (local.get $1)
       )
      )
      (local.tee $1
       (i8x16.shuffle 0 1 2 3 16 17 18 19 4 5 6 7 20 21 22 23
        (local.get $3)
        (local.get $28)
       )
      )
     )
    )
    (v128.store
     (local.get $5)
     (i8x16.shuffle 0 1 2 3 4 5 6 7 16 17 18 19 20 21 22 23
      (local.get $1)
      (local.get $27)
     )
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $6)
    (i32.const 112)
   )
  )
 )