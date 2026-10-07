 (func $175 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 v128)
  (local $7 v128)
  (local $8 v128)
  (local $9 v128)
  (local $10 v128)
  (local $11 v128)
  (local $12 v128)
  (local $13 v128)
  (local $14 v128)
  (local $15 v128)
  (local $16 v128)
  (local $17 v128)
  (local $18 v128)
  (local $19 v128)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (if
   (i32.eqz
    (local.get $4)
   )
   (then
    (return
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $22
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (then
    (return
     (i32.const 0)
    )
   )
  )
  (if
   (i32.ne
    (local.get $4)
    (i32.and
     (local.tee $21
      (i32.and
       (local.get $4)
       (i32.const 15)
      )
     )
     (i32x4.bitmask
      (v128.and
       (v128.and
        (f32x4.le
         (local.tee $7
          (f32x4.abs
           (local.tee $8
            (v128.load align=1
             (local.get $2)
            )
           )
          )
         )
         (local.tee $9
          (v128.const i32x4 0x7f7fffff 0x7f7fffff 0x7f7fffff 0x7f7fffff)
         )
        )
        (f32x4.le
         (local.tee $6
          (f32x4.abs
           (local.tee $13
            (v128.load align=1
             (local.get $1)
            )
           )
          )
         )
         (local.get $9)
        )
       )
       (f32x4.le
        (local.tee $10
         (f32x4.abs
          (local.tee $12
           (v128.load align=1
            (local.get $3)
           )
          )
         )
        )
        (local.get $9)
       )
      )
     )
    )
   )
   (then
    (return
     (i32.const 0)
    )
   )
  )
  (block $label$4 (result i32)
   (local.set $2
    (block $label$5 (result i32)
     (if
      (i32.eq
       (local.get $4)
       (local.tee $20
        (i32.and
         (local.tee $3
          (i32x4.bitmask
           (v128.and
            (f32x4.ge
             (local.get $6)
             (local.get $10)
            )
            (f32x4.ge
             (local.get $6)
             (local.get $7)
            )
           )
          )
         )
         (local.get $4)
        )
       )
      )
      (then
       (local.set $9
        (f32x4.neg
         (local.get $8)
        )
       )
       (local.set $12
        (f32x4.neg
         (local.get $12)
        )
       )
       (local.set $3
        (i32.const 0)
       )
       (local.set $8
        (local.get $13)
       )
       (br $label$5
        (i32.const 0)
       )
      )
     )
     (if
      (i32.eq
       (local.get $4)
       (i32.and
        (local.tee $2
         (i32x4.bitmask
          (v128.and
           (f32x4.ge
            (local.get $7)
            (local.get $10)
           )
           (f32x4.ge
            (local.get $7)
            (local.get $6)
           )
          )
         )
        )
        (i32.and
         (i32.xor
          (local.get $3)
          (i32.const -1)
         )
         (local.get $4)
        )
       )
      )
      (then
       (local.set $3
        (i32.const 2)
       )
       (local.set $9
        (local.get $12)
       )
       (local.set $12
        (local.get $13)
       )
       (local.set $6
        (local.get $7)
       )
       (br $label$5
        (i32.const 1)
       )
      )
     )
     (drop
      (br_if $label$4
       (i32.const 0)
       (i32.and
        (i32.or
         (local.get $2)
         (local.get $3)
        )
        (local.get $4)
       )
      )
     )
     (local.set $9
      (f32x4.neg
       (local.get $8)
      )
     )
     (local.set $3
      (i32.const 4)
     )
     (local.set $23
      (i32.const 1)
     )
     (local.set $8
      (local.get $12)
     )
     (local.set $12
      (local.get $13)
     )
     (local.set $6
      (local.get $10)
     )
     (i32.const 0)
    )
   )
   (block $label$8
    (if
     (i32.eqz
      (local.tee $1
       (i32.and
        (local.get $21)
        (i32x4.bitmask
         (f32x4.ge
          (local.get $8)
          (local.tee $7
           (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
          )
         )
        )
       )
      )
     )
     (then
      (local.set $9
       (select
        (f32x4.neg
         (local.get $9)
        )
        (local.get $9)
        (local.get $2)
       )
      )
      (local.set $12
       (select
        (local.tee $8
         (f32x4.neg
          (local.get $12)
         )
        )
        (select
         (local.get $8)
         (local.get $12)
         (local.get $23)
        )
        (i32.eq
         (local.get $4)
         (local.get $20)
        )
       )
      )
      (local.set $3
       (select
        (i32.const 3)
        (i32.or
         (local.get $3)
         (i32.const 1)
        )
        (local.get $2)
       )
      )
      (br $label$8)
     )
    )
    (br_if $label$8
     (i32.eq
      (local.get $1)
      (local.get $4)
     )
    )
    (return
     (i32.const 0)
    )
   )
   (if
    (i32.eqz
     (local.tee $3
      (i32.load offset=292
       (local.tee $22
        (i32.add
         (local.get $22)
         (i32.shl
          (local.get $3)
          (i32.const 6)
         )
        )
       )
      )
     )
    )
    (then
     (return
      (i32.const 0)
     )
    )
   )
   (if
    (i32.le_s
     (local.tee $2
      (i32.load offset=676
       (local.get $22)
      )
     )
     (i32.const 0)
    )
    (then
     (return
      (i32.const 0)
     )
    )
   )
   (drop
    (br_if $label$4
     (i32.const 0)
     (i32.le_s
      (local.tee $22
       (i32.load
        (i32.add
         (local.get $22)
         (i32.const 1060)
        )
       )
      )
      (i32.const 0)
     )
    )
   )
   (local.set $20
    (i32.sub
     (local.get $2)
     (i32.const 1)
    )
   )
   (local.set $8
    (f32x4.add
     (f32x4.div
      (local.get $9)
      (local.tee $6
       (v128.bitselect
        (v128.const i32x4 0x1e3ce508 0x1e3ce508 0x1e3ce508 0x1e3ce508)
        (local.get $6)
        (f32x4.lt
         (local.get $6)
         (v128.const i32x4 0x1e3ce508 0x1e3ce508 0x1e3ce508 0x1e3ce508)
        )
       )
      )
     )
     (local.tee $9
      (v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000)
     )
    )
   )
   (local.set $6
    (f32x4.mul
     (f32x4.add
      (f32x4.div
       (local.get $12)
       (local.get $6)
      )
      (local.get $9)
     )
     (local.tee $10
      (v128.const i32x4 0x3f000000 0x3f000000 0x3f000000 0x3f000000)
     )
    )
   )
   (local.set $1
    (i32.load offset=20
     (local.get $0)
    )
   )
   (local.set $6
    (if (result v128)
     (i32.and
      (i32.ne
       (local.tee $21
        (i32.load offset=16
         (local.get $0)
        )
       )
       (i32.const 33071)
      )
      (i32.ne
       (local.get $21)
       (i32.const 10496)
      )
     )
     (then
      (f32x4.sub
       (local.get $6)
       (f32x4.floor
        (local.get $6)
       )
      )
     )
     (else
      (f32x4.pmin
       (f32x4.pmax
        (local.get $6)
        (local.get $7)
       )
       (local.get $9)
      )
     )
    )
   )
   (local.set $8
    (f32x4.mul
     (local.get $8)
     (local.get $10)
    )
   )
   (local.set $0
    (i32.load offset=12
     (local.get $0)
    )
   )
   (local.set $6
    (f32x4.mul
     (f32x4.splat
      (f32.convert_i32_u
       (local.get $2)
      )
     )
     (local.get $6)
    )
   )
   (local.set $25
    (i32.and
     (local.tee $23
      (i32.sub
       (local.get $22)
       (i32.const 1)
      )
     )
     (local.get $22)
    )
   )
   (local.set $24
    (select
     (i32.const 0)
     (local.get $20)
     (i32.and
      (local.get $2)
      (local.get $20)
     )
    )
   )
   (local.set $10
    (f32x4.lt
     (f32x4.abs
      (local.tee $13
       (f32x4.floor
        (local.tee $17
         (select
          (local.tee $7
           (f32x4.mul
            (f32x4.splat
             (f32.convert_i32_u
              (local.get $22)
             )
            )
            (if (result v128)
             (i32.and
              (i32.ne
               (local.get $1)
               (i32.const 33071)
              )
              (i32.ne
               (local.get $1)
               (i32.const 10496)
              )
             )
             (then
              (f32x4.sub
               (local.get $8)
               (f32x4.floor
                (local.get $8)
               )
              )
             )
             (else
              (f32x4.pmin
               (f32x4.pmax
                (local.get $8)
                (local.get $7)
               )
               (local.get $9)
              )
             )
            )
           )
          )
          (f32x4.add
           (local.get $7)
           (local.tee $8
            (v128.const i32x4 0xbf000000 0xbf000000 0xbf000000 0xbf000000)
           )
          )
          (local.tee $26
           (i32.eq
            (local.get $0)
            (i32.const 9728)
           )
          )
         )
        )
       )
      )
     )
     (local.tee $7
      (v128.const i32x4 0x4f000000 0x4f000000 0x4f000000 0x4f000000)
     )
    )
   )
   (local.set $14
    (i32x4.trunc_sat_f32x4_s
     (local.get $13)
    )
   )
   (local.set $7
    (v128.bitselect
     (i32x4.trunc_sat_f32x4_s
      (local.tee $12
       (f32x4.floor
        (local.tee $19
         (select
          (local.get $6)
          (f32x4.add
           (local.get $6)
           (local.get $8)
          )
          (local.get $26)
         )
        )
       )
      )
     )
     (local.tee $6
      (v128.const i32x4 0x80000000 0x80000000 0x80000000 0x80000000)
     )
     (f32x4.lt
      (f32x4.abs
       (local.get $12)
      )
      (local.get $7)
     )
    )
   )
   (local.set $11
    (i32x4.splat
     (local.get $20)
    )
   )
   (local.set $8
    (block $label$16 (result v128)
     (drop
      (br_if $label$16
       (i32x4.min_s
        (i32x4.max_s
         (local.get $7)
         (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
        )
        (local.get $11)
       )
       (i32.eqz
        (i32.and
         (i32.ne
          (local.get $21)
          (i32.const 33071)
         )
         (i32.ne
          (local.get $21)
          (i32.const 10496)
         )
        )
       )
      )
     )
     (drop
      (br_if $label$16
       (v128.and
        (local.get $7)
        (i32x4.splat
         (local.get $24)
        )
       )
       (local.get $24)
      )
     )
     (i32x4.add
      (local.get $7)
      (v128.bitselect
       (local.tee $8
        (i32x4.splat
         (local.get $2)
        )
       )
       (i32x4.neg
        (v128.bitselect
         (local.get $8)
         (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
         (i32x4.gt_s
          (local.get $7)
          (local.get $11)
         )
        )
       )
       (i32x4.lt_s
        (local.get $7)
        (local.get $15)
       )
      )
     )
    )
   )
   (local.set $20
    (select
     (i32.const 0)
     (local.get $23)
     (local.get $25)
    )
   )
   (local.set $10
    (v128.bitselect
     (local.get $14)
     (local.get $6)
     (local.get $10)
    )
   )
   (local.set $14
    (i32x4.splat
     (local.get $23)
    )
   )
   (local.set $2
    (i32x4.extract_lane 3
     (local.tee $6
      (i32x4.add
       (local.tee $16
        (i32x4.mul
         (block $label$17 (result v128)
          (drop
           (br_if $label$17
            (i32x4.min_s
             (i32x4.max_s
              (local.get $10)
              (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
             )
             (local.get $14)
            )
            (i32.eqz
             (i32.and
              (i32.ne
               (local.get $1)
               (i32.const 33071)
              )
              (i32.ne
               (local.get $1)
               (i32.const 10496)
              )
             )
            )
           )
          )
          (drop
           (br_if $label$17
            (v128.and
             (local.get $10)
             (i32x4.splat
              (local.get $20)
             )
            )
            (local.get $20)
           )
          )
          (i32x4.add
           (local.get $10)
           (v128.bitselect
            (local.tee $6
             (i32x4.splat
              (local.get $22)
             )
            )
            (i32x4.neg
             (v128.bitselect
              (local.get $6)
              (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
              (i32x4.gt_s
               (local.get $10)
               (local.get $14)
              )
             )
            )
            (i32x4.lt_s
             (local.get $10)
             (local.get $15)
            )
           )
          )
         )
         (local.tee $15
          (i32x4.splat
           (local.get $2)
          )
         )
        )
       )
       (local.get $8)
      )
     )
    )
   )
   (local.set $23
    (i32x4.extract_lane 2
     (local.get $6)
    )
   )
   (local.set $26
    (i32x4.extract_lane 1
     (local.get $6)
    )
   )
   (local.set $25
    (i32x4.extract_lane 0
     (local.get $6)
    )
   )
   (local.set $8
    (block $label$18 (result v128)
     (block $label$19
      (block $label$20
       (block $label$21
        (local.set $14
         (block $label$22 (result v128)
          (block $label$23
           (local.set $27
            (block $label$24 (result i32)
             (block $label$25
              (block $label$26
               (if
                (i32.ne
                 (local.get $0)
                 (i32.const 9728)
                )
                (then
                 (local.set $6
                  (i32x4.add
                   (local.get $7)
                   (local.tee $18
                    (v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001)
                   )
                  )
                 )
                 (local.set $7
                  (block $label$28 (result v128)
                   (drop
                    (br_if $label$28
                     (i32x4.min_s
                      (i32x4.max_s
                       (local.get $6)
                       (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
                      )
                      (local.get $11)
                     )
                     (i32.eqz
                      (i32.and
                       (i32.ne
                        (local.get $21)
                        (i32.const 33071)
                       )
                       (i32.ne
                        (local.get $21)
                        (i32.const 10496)
                       )
                      )
                     )
                    )
                   )
                   (drop
                    (br_if $label$28
                     (v128.and
                      (local.get $6)
                      (i32x4.splat
                       (local.get $24)
                      )
                     )
                     (local.get $24)
                    )
                   )
                   (i32x4.add
                    (local.get $6)
                    (v128.bitselect
                     (local.get $15)
                     (i32x4.neg
                      (v128.bitselect
                       (local.get $15)
                       (local.tee $7
                        (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
                       )
                       (i32x4.gt_s
                        (local.get $6)
                        (local.get $11)
                       )
                      )
                     )
                     (i32x4.lt_s
                      (local.get $6)
                      (local.get $7)
                     )
                    )
                   )
                  )
                 )
                 (local.set $6
                  (i32x4.add
                   (local.get $10)
                   (local.get $18)
                  )
                 )
                 (local.set $6
                  (i32x4.add
                   (local.tee $10
                    (i32x4.mul
                     (block $label$29 (result v128)
                      (drop
                       (br_if $label$29
                        (i32x4.min_s
                         (i32x4.max_s
                          (local.get $6)
                          (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
                         )
                         (local.get $14)
                        )
                        (i32.eqz
                         (i32.and
                          (i32.ne
                           (local.get $1)
                           (i32.const 33071)
                          )
                          (i32.ne
                           (local.get $1)
                           (i32.const 10496)
                          )
                         )
                        )
                       )
                      )
                      (drop
                       (br_if $label$29
                        (v128.and
                         (local.get $6)
                         (i32x4.splat
                          (local.get $20)
                         )
                        )
                        (local.get $20)
                       )
                      )
                      (i32x4.add
                       (local.get $6)
                       (v128.bitselect
                        (local.tee $10
                         (i32x4.splat
                          (local.get $22)
                         )
                        )
                        (i32x4.neg
                         (v128.bitselect
                          (local.get $10)
                          (local.tee $11
                           (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
                          )
                          (i32x4.gt_s
                           (local.get $6)
                           (local.get $14)
                          )
                         )
                        )
                        (i32x4.lt_s
                         (local.get $6)
                         (local.get $11)
                        )
                       )
                      )
                     )
                     (local.get $15)
                    )
                   )
                   (local.get $8)
                  )
                 )
                 (if
                  (i32.eq
                   (local.get $4)
                   (i32.const 15)
                  )
                  (then
                   (br_if $label$26
                    (i32.eq
                     (i32x4.bitmask
                      (i32x4.eq
                       (local.get $7)
                       (i32x4.add
                        (local.get $8)
                        (local.get $18)
                       )
                      )
                     )
                     (i32.const 15)
                    )
                   )
                  )
                 )
                 (local.set $0
                  (i32.and
                   (local.get $4)
                   (i32.const 8)
                  )
                 )
                 (local.set $1
                  (i32.and
                   (local.get $4)
                   (i32.const 4)
                  )
                 )
                 (local.set $22
                  (i32.and
                   (local.get $4)
                   (i32.const 2)
                  )
                 )
                 (local.set $21
                  (i32.and
                   (local.get $4)
                   (i32.const 1)
                  )
                 )
                 (br_if $label$25
                  (i32.eq
                   (local.get $4)
                   (i32.const 15)
                  )
                 )
                 (local.set $20
                  (i32.const 0)
                 )
                 (local.set $24
                  (i32.const 0)
                 )
                 (if
                  (local.get $21)
                  (then
                   (local.set $24
                    (i32.load align=1
                     (i32.add
                      (local.get $3)
                      (i32.shl
                       (local.get $25)
                       (i32.const 2)
                      )
                     )
                    )
                   )
                  )
                 )
                 (if
                  (local.get $22)
                  (then
                   (local.set $20
                    (i32.load align=1
                     (i32.add
                      (local.get $3)
                      (i32.shl
                       (local.get $26)
                       (i32.const 2)
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $26
                  (i32.const 0)
                 )
                 (if
                  (local.get $1)
                  (then
                   (local.set $27
                    (i32.load align=1
                     (i32.add
                      (local.get $3)
                      (i32.shl
                       (local.get $23)
                       (i32.const 2)
                      )
                     )
                    )
                   )
                  )
                 )
                 (drop
                  (br_if $label$24
                   (local.get $27)
                   (local.get $0)
                  )
                 )
                 (br $label$23)
                )
               )
               (br_if $label$21
                (i32.eq
                 (local.get $4)
                 (i32.const 15)
                )
               )
               (local.set $0
                (i32.const 0)
               )
               (local.set $1
                (i32.const 0)
               )
               (if
                (i32.and
                 (local.get $4)
                 (i32.const 1)
                )
                (then
                 (local.set $1
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (local.get $25)
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (if
                (i32.and
                 (local.get $4)
                 (i32.const 2)
                )
                (then
                 (local.set $0
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (local.get $26)
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (local.set $22
                (i32.const 0)
               )
               (local.set $21
                (i32.const 0)
               )
               (if
                (i32.and
                 (local.get $4)
                 (i32.const 4)
                )
                (then
                 (local.set $21
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (local.get $23)
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (br_if $label$19
                (i32.eqz
                 (i32.and
                  (local.get $4)
                  (i32.const 8)
                 )
                )
               )
               (br $label$20)
              )
              (local.set $8
               (i8x16.shuffle 4 5 6 7 12 13 14 15 20 21 22 23 28 29 30 31
                (local.tee $7
                 (i8x16.shuffle 0 1 2 3 4 5 6 7 16 17 18 19 20 21 22 23
                  (v128.load64_zero align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (local.get $25)
                     (i32.const 2)
                    )
                   )
                  )
                  (v128.load64_zero align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (local.get $26)
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
                (local.tee $10
                 (i8x16.shuffle 0 1 2 3 4 5 6 7 16 17 18 19 20 21 22 23
                  (v128.load64_zero align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (local.get $23)
                     (i32.const 2)
                    )
                   )
                  )
                  (v128.load64_zero align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (local.get $2)
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
              )
              (local.set $10
               (i8x16.shuffle 0 1 2 3 8 9 10 11 16 17 18 19 24 25 26 27
                (local.get $7)
                (local.get $10)
               )
              )
              (local.set $11
               (i8x16.shuffle 4 5 6 7 12 13 14 15 20 21 22 23 28 29 30 31
                (local.tee $7
                 (i8x16.shuffle 0 1 2 3 4 5 6 7 16 17 18 19 20 21 22 23
                  (v128.load64_zero align=1
                   (i32.add
                    (local.get $3)
                    (i32x4.extract_lane 0
                     (local.tee $6
                      (i32x4.shl
                       (local.get $6)
                       (i32.const 2)
                      )
                     )
                    )
                   )
                  )
                  (v128.load64_zero align=1
                   (i32.add
                    (local.get $3)
                    (i32x4.extract_lane 1
                     (local.get $6)
                    )
                   )
                  )
                 )
                )
                (local.tee $6
                 (i8x16.shuffle 0 1 2 3 4 5 6 7 16 17 18 19 20 21 22 23
                  (v128.load64_zero align=1
                   (i32.add
                    (local.get $3)
                    (i32x4.extract_lane 2
                     (local.get $6)
                    )
                   )
                  )
                  (v128.load64_zero align=1
                   (i32.add
                    (local.get $3)
                    (i32x4.extract_lane 3
                     (local.get $6)
                    )
                   )
                  )
                 )
                )
               )
              )
              (br $label$22
               (i8x16.shuffle 0 1 2 3 8 9 10 11 16 17 18 19 24 25 26 27
                (local.get $7)
                (local.get $6)
               )
              )
             )
             (local.set $20
              (i32.load align=1
               (i32.add
                (local.get $3)
                (i32.shl
                 (local.get $26)
                 (i32.const 2)
                )
               )
              )
             )
             (local.set $24
              (i32.load align=1
               (i32.add
                (local.get $3)
                (i32.shl
                 (local.get $25)
                 (i32.const 2)
                )
               )
              )
             )
             (i32.load align=1
              (i32.add
               (local.get $3)
               (i32.shl
                (local.get $23)
                (i32.const 2)
               )
              )
             )
            )
           )
           (local.set $26
            (i32.load align=1
             (i32.add
              (local.get $3)
              (i32.shl
               (local.get $2)
               (i32.const 2)
              )
             )
            )
           )
          )
          (local.set $8
           (i32x4.add
            (local.get $7)
            (local.get $16)
           )
          )
          (local.set $11
           (i32x4.splat
            (local.get $24)
           )
          )
          (block $label$37
           (local.set $24
            (block $label$38 (result i32)
             (if
              (i32.ne
               (local.get $4)
               (i32.const 15)
              )
              (then
               (local.set $2
                (i32.const 0)
               )
               (local.set $23
                (i32.const 0)
               )
               (if
                (local.get $21)
                (then
                 (local.set $23
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 0
                      (local.get $8)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (if
                (local.get $22)
                (then
                 (local.set $2
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 1
                      (local.get $8)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (local.set $25
                (i32.const 0)
               )
               (local.set $24
                (i32.const 0)
               )
               (if
                (local.get $1)
                (then
                 (local.set $24
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 2
                      (local.get $8)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (drop
                (br_if $label$38
                 (local.get $24)
                 (local.get $0)
                )
               )
               (br $label$37)
              )
             )
             (local.set $2
              (i32.load align=1
               (i32.add
                (local.get $3)
                (i32.shl
                 (i32x4.extract_lane 1
                  (local.get $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
             (local.set $23
              (i32.load align=1
               (i32.add
                (local.get $3)
                (i32.shl
                 (i32x4.extract_lane 0
                  (local.get $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
             (i32.load align=1
              (i32.add
               (local.get $3)
               (i32.shl
                (i32x4.extract_lane 2
                 (local.get $8)
                )
                (i32.const 2)
               )
              )
             )
            )
           )
           (local.set $25
            (i32.load align=1
             (i32.add
              (local.get $3)
              (i32.shl
               (i32x4.extract_lane 3
                (local.get $8)
               )
               (i32.const 2)
              )
             )
            )
           )
          )
          (local.set $8
           (i32x4.replace_lane 1
            (local.get $11)
            (local.get $20)
           )
          )
          (local.set $11
           (i32x4.replace_lane 1
            (i32x4.splat
             (local.get $23)
            )
            (local.get $2)
           )
          )
          (block $label$43
           (local.set $28
            (block $label$44 (result i32)
             (if
              (i32.ne
               (local.get $4)
               (i32.const 15)
              )
              (then
               (local.set $2
                (i32.const 0)
               )
               (local.set $20
                (i32.const 0)
               )
               (if
                (local.get $21)
                (then
                 (local.set $20
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 0
                      (local.get $6)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (if
                (local.get $22)
                (then
                 (local.set $2
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 1
                      (local.get $6)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (local.set $23
                (i32.const 0)
               )
               (if
                (local.get $1)
                (then
                 (local.set $28
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 2
                      (local.get $6)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (drop
                (br_if $label$44
                 (local.get $28)
                 (local.get $0)
                )
               )
               (br $label$43)
              )
             )
             (local.set $2
              (i32.load align=1
               (i32.add
                (local.get $3)
                (i32.shl
                 (i32x4.extract_lane 1
                  (local.get $6)
                 )
                 (i32.const 2)
                )
               )
              )
             )
             (local.set $20
              (i32.load align=1
               (i32.add
                (local.get $3)
                (i32.shl
                 (i32x4.extract_lane 0
                  (local.get $6)
                 )
                 (i32.const 2)
                )
               )
              )
             )
             (i32.load align=1
              (i32.add
               (local.get $3)
               (i32.shl
                (i32x4.extract_lane 2
                 (local.get $6)
                )
                (i32.const 2)
               )
              )
             )
            )
           )
           (local.set $23
            (i32.load align=1
             (i32.add
              (local.get $3)
              (i32.shl
               (i32x4.extract_lane 3
                (local.get $6)
               )
               (i32.const 2)
              )
             )
            )
           )
          )
          (local.set $8
           (i32x4.replace_lane 2
            (local.get $8)
            (local.get $27)
           )
          )
          (local.set $11
           (i32x4.replace_lane 2
            (local.get $11)
            (local.get $24)
           )
          )
          (local.set $6
           (i32x4.add
            (local.get $10)
            (local.get $7)
           )
          )
          (local.set $7
           (i32x4.replace_lane 2
            (i32x4.replace_lane 1
             (i32x4.splat
              (local.get $20)
             )
             (local.get $2)
            )
            (local.get $28)
           )
          )
          (block $label$49
           (local.set $21
            (block $label$50 (result i32)
             (if
              (i32.ne
               (local.get $4)
               (i32.const 15)
              )
              (then
               (local.set $2
                (i32.const 0)
               )
               (local.set $20
                (i32.const 0)
               )
               (if
                (local.get $21)
                (then
                 (local.set $20
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 0
                      (local.get $6)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (if
                (local.get $22)
                (then
                 (local.set $2
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 1
                      (local.get $6)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (local.set $22
                (i32.const 0)
               )
               (local.set $21
                (i32.const 0)
               )
               (if
                (local.get $1)
                (then
                 (local.set $21
                  (i32.load align=1
                   (i32.add
                    (local.get $3)
                    (i32.shl
                     (i32x4.extract_lane 2
                      (local.get $6)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
               (drop
                (br_if $label$50
                 (local.get $21)
                 (local.get $0)
                )
               )
               (br $label$49)
              )
             )
             (local.set $2
              (i32.load align=1
               (i32.add
                (local.get $3)
                (i32.shl
                 (i32x4.extract_lane 1
                  (local.get $6)
                 )
                 (i32.const 2)
                )
               )
              )
             )
             (local.set $20
              (i32.load align=1
               (i32.add
                (local.get $3)
                (i32.shl
                 (i32x4.extract_lane 0
                  (local.get $6)
                 )
                 (i32.const 2)
                )
               )
              )
             )
             (i32.load align=1
              (i32.add
               (local.get $3)
               (i32.shl
                (i32x4.extract_lane 2
                 (local.get $6)
                )
                (i32.const 2)
               )
              )
             )
            )
           )
           (local.set $22
            (i32.load align=1
             (i32.add
              (local.get $3)
              (i32.shl
               (i32x4.extract_lane 3
                (local.get $6)
               )
               (i32.const 2)
              )
             )
            )
           )
          )
          (local.set $10
           (i32x4.replace_lane 3
            (local.get $8)
            (local.get $26)
           )
          )
          (local.set $8
           (i32x4.replace_lane 3
            (local.get $11)
            (local.get $25)
           )
          )
          (local.set $11
           (i32x4.replace_lane 3
            (i32x4.replace_lane 2
             (i32x4.replace_lane 1
              (i32x4.splat
               (local.get $20)
              )
              (local.get $2)
             )
             (local.get $21)
            )
            (local.get $22)
           )
          )
          (i32x4.replace_lane 3
           (local.get $7)
           (local.get $23)
          )
         )
        )
        (local.set $12
         (f32x4.add
          (f32x4.mul
           (local.tee $16
            (f32x4.sub
             (local.get $9)
             (local.tee $13
              (f32x4.sub
               (local.get $17)
               (local.get $13)
              )
             )
            )
           )
           (f32x4.add
            (f32x4.mul
             (local.tee $7
              (f32x4.sub
               (local.get $9)
               (local.tee $6
                (f32x4.sub
                 (local.get $19)
                 (local.get $12)
                )
               )
              )
             )
             (f32x4.convert_i32x4_u
              (i32x4.shr_u
               (local.get $10)
               (i32.const 24)
              )
             )
            )
            (f32x4.mul
             (local.get $6)
             (f32x4.convert_i32x4_u
              (i32x4.shr_u
               (local.get $8)
               (i32.const 24)
              )
             )
            )
           )
          )
          (f32x4.mul
           (local.get $13)
           (f32x4.add
            (f32x4.mul
             (local.get $7)
             (f32x4.convert_i32x4_u
              (i32x4.shr_u
               (local.get $14)
               (i32.const 24)
              )
             )
            )
            (f32x4.mul
             (local.get $6)
             (f32x4.convert_i32x4_u
              (i32x4.shr_u
               (local.get $11)
               (i32.const 24)
              )
             )
            )
           )
          )
         )
        )
        (local.set $15
         (f32x4.add
          (f32x4.mul
           (local.get $16)
           (f32x4.add
            (f32x4.mul
             (local.get $7)
             (f32x4.convert_i32x4_u
              (v128.and
               (local.get $10)
               (local.tee $9
                (v128.const i32x4 0x000000ff 0x000000ff 0x000000ff 0x000000ff)
               )
              )
             )
            )
            (f32x4.mul
             (local.get $6)
             (f32x4.convert_i32x4_u
              (v128.and
               (local.get $8)
               (local.get $9)
              )
             )
            )
           )
          )
          (f32x4.mul
           (local.get $13)
           (f32x4.add
            (f32x4.mul
             (local.get $7)
             (f32x4.convert_i32x4_u
              (v128.and
               (local.get $14)
               (local.get $9)
              )
             )
            )
            (f32x4.mul
             (local.get $6)
             (f32x4.convert_i32x4_u
              (v128.and
               (local.get $11)
               (local.get $9)
              )
             )
            )
           )
          )
         )
        )
        (local.set $17
         (f32x4.add
          (f32x4.mul
           (local.get $16)
           (f32x4.add
            (f32x4.mul
             (local.get $7)
             (f32x4.convert_i32x4_u
              (v128.and
               (i32x4.shr_u
                (local.get $10)
                (i32.const 16)
               )
               (local.get $9)
              )
             )
            )
            (f32x4.mul
             (local.get $6)
             (f32x4.convert_i32x4_u
              (v128.and
               (i32x4.shr_u
                (local.get $8)
                (i32.const 16)
               )
               (local.get $9)
              )
             )
            )
           )
          )
          (f32x4.mul
           (local.get $13)
           (f32x4.add
            (f32x4.mul
             (local.get $7)
             (f32x4.convert_i32x4_u
              (v128.and
               (i32x4.shr_u
                (local.get $14)
                (i32.const 16)
               )
               (local.get $9)
              )
             )
            )
            (f32x4.mul
             (local.get $6)
             (f32x4.convert_i32x4_u
              (v128.and
               (i32x4.shr_u
                (local.get $11)
                (i32.const 16)
               )
               (local.get $9)
              )
             )
            )
           )
          )
         )
        )
        (br $label$18
         (f32x4.add
          (f32x4.mul
           (local.get $16)
           (f32x4.add
            (f32x4.mul
             (local.get $7)
             (f32x4.convert_i32x4_u
              (v128.and
               (i32x4.shr_u
                (local.get $10)
                (i32.const 8)
               )
               (local.get $9)
              )
             )
            )
            (f32x4.mul
             (local.get $6)
             (f32x4.convert_i32x4_u
              (v128.and
               (i32x4.shr_u
                (local.get $8)
                (i32.const 8)
               )
               (local.get $9)
              )
             )
            )
           )
          )
          (f32x4.mul
           (local.get $13)
           (f32x4.add
            (f32x4.mul
             (local.get $7)
             (f32x4.convert_i32x4_u
              (v128.and
               (i32x4.shr_u
                (local.get $14)
                (i32.const 8)
               )
               (local.get $9)
              )
             )
            )
            (f32x4.mul
             (local.get $6)
             (f32x4.convert_i32x4_u
              (v128.and
               (i32x4.shr_u
                (local.get $11)
                (i32.const 8)
               )
               (local.get $9)
              )
             )
            )
           )
          )
         )
        )
       )
       (local.set $21
        (i32.load align=1
         (i32.add
          (local.get $3)
          (i32.shl
           (local.get $23)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (i32.load align=1
         (i32.add
          (local.get $3)
          (i32.shl
           (local.get $26)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $1
        (i32.load align=1
         (i32.add
          (local.get $3)
          (i32.shl
           (local.get $25)
           (i32.const 2)
          )
         )
        )
       )
      )
      (local.set $22
       (i32.load align=1
        (i32.add
         (local.get $3)
         (i32.shl
          (local.get $2)
          (i32.const 2)
         )
        )
       )
      )
     )
     (local.set $12
      (f32x4.convert_i32x4_u
       (i32x4.shr_u
        (local.tee $9
         (i32x4.replace_lane 3
          (i32x4.replace_lane 2
           (i32x4.replace_lane 1
            (i32x4.splat
             (local.get $1)
            )
            (local.get $0)
           )
           (local.get $21)
          )
          (local.get $22)
         )
        )
        (i32.const 24)
       )
      )
     )
     (local.set $15
      (f32x4.convert_i32x4_u
       (v128.and
        (local.get $9)
        (local.tee $6
         (v128.const i32x4 0x000000ff 0x000000ff 0x000000ff 0x000000ff)
        )
       )
      )
     )
     (local.set $17
      (f32x4.convert_i32x4_u
       (v128.and
        (i32x4.shr_u
         (local.get $9)
         (i32.const 16)
        )
        (local.get $6)
       )
      )
     )
     (f32x4.convert_i32x4_u
      (v128.and
       (i32x4.shr_u
        (local.get $9)
        (i32.const 8)
       )
       (local.get $6)
      )
     )
    )
   )
   (v128.store offset=48
    (local.get $5)
    (v128.bitselect
     (f32x4.mul
      (local.get $12)
      (local.tee $9
       (v128.const i32x4 0x3b808081 0x3b808081 0x3b808081 0x3b808081)
      )
     )
     (local.tee $6
      (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000)
     )
     (local.tee $7
      (i32x4.replace_lane 3
       (i32x4.replace_lane 2
        (i32x4.replace_lane 1
         (i32x4.splat
          (i32.sub
           (i32.const 0)
           (i32.and
            (local.get $4)
            (i32.const 1)
           )
          )
         )
         (i32.shr_s
          (i32.shl
           (local.get $4)
           (i32.const 30)
          )
          (i32.const 31)
         )
        )
        (i32.shr_s
         (i32.shl
          (local.get $4)
          (i32.const 29)
         )
         (i32.const 31)
        )
       )
       (i32.shr_s
        (i32.shl
         (local.get $4)
         (i32.const 28)
        )
        (i32.const 31)
       )
      )
     )
    )
   )
   (v128.store offset=32
    (local.get $5)
    (v128.bitselect
     (f32x4.mul
      (local.get $17)
      (local.get $9)
     )
     (local.get $6)
     (local.get $7)
    )
   )
   (v128.store offset=16
    (local.get $5)
    (v128.bitselect
     (f32x4.mul
      (local.get $8)
      (local.get $9)
     )
     (local.get $6)
     (local.get $7)
    )
   )
   (v128.store
    (local.get $5)
    (v128.bitselect
     (f32x4.mul
      (local.get $15)
      (local.get $9)
     )
     (local.get $6)
     (local.get $7)
    )
   )
   (i32.const 1)
  )
 )