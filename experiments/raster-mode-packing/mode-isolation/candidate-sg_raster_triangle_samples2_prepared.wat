 (func $172 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 v128)
  (local $15 v128)
  (local $16 v128)
  (local $17 v128)
  (local $18 v128)
  (local $19 v128)
  (local $20 v128)
  (local $21 v128)
  (local $22 v128)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i64)
  (if
   (i64.le_s
    (local.tee $28
     (i64.sub
      (i64x2.extract_lane 0
       (local.tee $14
        (i64x2.mul
         (i8x16.shuffle 8 9 10 11 12 13 14 15 0 1 2 3 4 5 6 7
          (i64x2.extend_low_i32x4_s
           (i32x4.sub
            (local.tee $19
             (i32x4.trunc_sat_f32x4_s
              (f32x4.mul
               (local.tee $21
                (v128.load offset=16
                 (local.get $3)
                )
               )
               (local.tee $16
                (v128.const i32x4 0x43800000 0x43800000 0x43800000 0x43800000)
               )
              )
             )
            )
            (local.tee $17
             (i32x4.trunc_sat_f32x4_s
              (f32x4.mul
               (local.tee $20
                (v128.load offset=16
                 (local.get $1)
                )
               )
               (local.get $16)
              )
             )
            )
           )
          )
          (local.get $17)
         )
         (i64x2.extend_low_i32x4_s
          (i32x4.sub
           (local.tee $16
            (i32x4.trunc_sat_f32x4_s
             (f32x4.mul
              (local.tee $22
               (v128.load offset=16
                (local.get $2)
               )
              )
              (local.get $16)
             )
            )
           )
           (local.get $17)
          )
         )
        )
       )
      )
      (i64x2.extract_lane 1
       (local.get $14)
      )
     )
    )
    (i64.const 0)
   )
   (then
    (return
     (select
      (i32.const -1)
      (i32.const 1)
      (i32.load offset=88
       (local.get $0)
      )
     )
    )
   )
  )
  (local.set $14
   (v128.bitselect
    (i32x4.add
     (local.tee $14
      (i32x4.shr_s
       (i32x4.max_s
        (i32x4.max_s
         (local.get $16)
         (local.get $17)
        )
        (local.get $19)
       )
       (i32.const 8)
      )
     )
     (v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001)
    )
    (local.tee $15
     (v128.load32_lane 1
      (i32.add
       (local.get $0)
       (i32.const 4)
      )
      (i32x4.splat
       (local.get $5)
      )
     )
    )
    (i32x4.lt_s
     (local.get $14)
     (local.get $15)
    )
   )
  )
  (local.set $15
   (i32x4.max_s
    (i32x4.shr_s
     (i32x4.add
      (local.tee $15
       (i32x4.min_s
        (i32x4.min_s
         (local.get $16)
         (local.get $17)
        )
        (local.get $19)
       )
      )
      (v128.and
       (i32x4.lt_s
        (local.get $15)
        (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
       )
       (v128.const i32x4 0xffffff01 0xffffff01 0xffffff01 0xffffff01)
      )
     )
     (i32.const 8)
    )
    (i32x4.replace_lane 0
     (local.get $18)
     (local.get $4)
    )
   )
  )
  (if
   (local.tee $5
    (i32.load offset=88
     (local.get $0)
    )
   )
   (then
    (local.set $14
     (i32x4.min_s
      (local.get $14)
      (i32x4.add
       (v128.load32_lane 0
        (i32.add
         (local.get $0)
         (i32.const 80)
        )
        (local.tee $18
         (v128.load64_zero offset=72
          (local.get $0)
         )
        )
       )
       (v128.load32_lane 1
        (i32.add
         (local.get $0)
         (i32.const 84)
        )
        (local.get $18)
       )
      )
     )
    )
    (local.set $15
     (i32x4.max_s
      (local.get $15)
      (local.get $18)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.and
     (i32.wrap_i64
      (i64.and
       (i64x2.extract_lane 0
        (local.tee $18
         (i32x4.lt_s
          (local.get $15)
          (local.get $14)
         )
        )
       )
       (i64x2.extract_lane 1
        (i64x2.extend_low_i32x4_s
         (local.get $18)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
   (then
    (return
     (select
      (i32.const -1)
      (i32.const 1)
      (local.get $5)
     )
    )
   )
  )
  (local.set $26
   (i32.and
    (i32.ge_s
     (local.tee $5
      (i32x4.extract_lane 1
       (local.get $16)
      )
     )
     (local.tee $4
      (i32x4.extract_lane 1
       (local.get $17)
      )
     )
    )
    (i32.or
     (i32.ne
      (local.get $4)
      (local.get $5)
     )
     (i32.ge_s
      (local.tee $24
       (i32x4.extract_lane 0
        (local.get $16)
       )
      )
      (local.tee $25
       (i32x4.extract_lane 0
        (local.get $17)
       )
      )
     )
    )
   )
  )
  (local.set $4
   (i32.and
    (i32.ge_s
     (local.get $4)
     (local.tee $23
      (i32x4.extract_lane 1
       (local.get $19)
      )
     )
    )
    (i32.or
     (i32.ne
      (local.get $4)
      (local.get $23)
     )
     (i32.ge_s
      (local.get $25)
      (local.tee $27
       (i32x4.extract_lane 0
        (local.get $19)
       )
      )
     )
    )
   )
  )
  (local.set $5
   (i32.and
    (i32.or
     (i32.ne
      (local.get $5)
      (local.get $23)
     )
     (i32.le_s
      (local.get $24)
      (local.get $27)
     )
    )
    (i32.le_s
     (local.get $5)
     (local.get $23)
    )
   )
  )
  (block $label$4
   (if
    (i32.eqz
     (i32.load offset=224
      (local.get $0)
     )
    )
    (then
     (br $label$4)
    )
   )
   (if
    (f32.eq
     (local.tee $8
      (f32.load offset=216
       (local.get $0)
      )
     )
     (f32.const 0)
    )
    (then
     (br_if $label$4
      (f32.eq
       (f32.load offset=220
        (local.get $0)
       )
       (f32.const 0)
      )
     )
    )
   )
   (br_if $label$4
    (f32.eq
     (local.tee $11
      (f32.sub
       (f32.mul
        (local.tee $12
         (f32x4.extract_lane 0
          (local.tee $17
           (f32x4.sub
            (local.get $22)
            (local.get $20)
           )
          )
         )
        )
        (local.tee $9
         (f32x4.extract_lane 1
          (local.tee $16
           (f32x4.sub
            (local.get $21)
            (local.get $20)
           )
          )
         )
        )
       )
       (f32.mul
        (local.tee $13
         (f32x4.extract_lane 0
          (local.get $16)
         )
        )
        (local.tee $10
         (f32x4.extract_lane 1
          (local.get $17)
         )
        )
       )
      )
     )
     (f32.const 0)
    )
   )
   (local.set $7
    (f32.add
     (f32.mul
      (local.get $8)
      (select
       (local.tee $10
        (select
         (f32.neg
          (local.tee $7
           (f32.div
            (f32.sub
             (f32.mul
              (local.tee $8
               (f32.sub
                (f32.load offset=24
                 (local.get $2)
                )
                (local.tee $7
                 (f32.load offset=24
                  (local.get $1)
                 )
                )
               )
              )
              (local.get $9)
             )
             (f32.mul
              (local.get $10)
              (local.tee $9
               (f32.sub
                (f32.load offset=24
                 (local.get $3)
                )
                (local.get $7)
               )
              )
             )
            )
            (local.get $11)
           )
          )
         )
         (local.get $7)
         (f32.lt
          (local.get $7)
          (f32.const 0)
         )
        )
       )
       (local.tee $7
        (select
         (f32.neg
          (local.tee $7
           (f32.div
            (f32.sub
             (f32.mul
              (local.get $9)
              (local.get $12)
             )
             (f32.mul
              (local.get $13)
              (local.get $8)
             )
            )
            (local.get $11)
           )
          )
         )
         (local.get $7)
         (f32.lt
          (local.get $7)
          (f32.const 0)
         )
        )
       )
       (f32.lt
        (local.get $7)
        (local.get $10)
       )
      )
     )
     (f32.mul
      (f32.load offset=220
       (local.get $0)
      )
      (f32.const 9.999999974752427e-07)
     )
    )
   )
  )
  (local.set $23
   (i32.sub
    (i32.const 0)
    (local.get $26)
   )
  )
  (local.set $4
   (i32.sub
    (i32.const 0)
    (local.get $4)
   )
  )
  (local.set $5
   (i32.sub
    (i32.const 0)
    (local.get $5)
   )
  )
  (select
   (i32.const -1)
   (block $label$7 (result i32)
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (local.tee $24
        (i32.load
         (global.get $global$10)
        )
       )
      )
     )
     (br_if $label$8
      (i32.eqz
       (i32.load offset=36
        (local.get $24)
       )
      )
     )
     (br $label$7
      (call $167
       (local.get $0)
       (local.get $1)
       (local.get $2)
       (local.get $3)
       (local.get $6)
       (i32x4.extract_lane 0
        (local.get $15)
       )
       (i32x4.extract_lane 1
        (local.get $15)
       )
       (i32x4.extract_lane 0
        (local.get $14)
       )
       (i32x4.extract_lane 1
        (local.get $14)
       )
       (local.get $28)
       (local.get $5)
       (local.get $4)
       (local.get $23)
       (local.get $7)
      )
     )
    )
    (call $164
     (local.get $0)
     (local.get $1)
     (local.get $2)
     (local.get $3)
     (local.get $6)
     (i32x4.extract_lane 0
      (local.get $15)
     )
     (i32x4.extract_lane 1
      (local.get $15)
     )
     (i32x4.extract_lane 0
      (local.get $14)
     )
     (i32x4.extract_lane 1
      (local.get $14)
     )
     (local.get $28)
     (local.get $5)
     (local.get $4)
     (local.get $23)
     (local.get $7)
    )
   )
   (i32.load offset=88
    (local.get $0)
   )
  )
 )