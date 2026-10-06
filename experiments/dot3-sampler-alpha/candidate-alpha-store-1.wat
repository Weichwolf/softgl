
                                )
                               )
                               (local.get $20)
                              )
                             )
                             (local.set $14
                              (local.get $28)
                             )
                             (br_if $label$156
                              (i32.eqz
                               (local.get $43)
                              )
                             )
                             (v128.store offset=48
                              (local.get $48)
                              (f32x4.mul
                               (f32x4.convert_i32x4_u
                                (i32x4.shr_u
                                 (local.get $16)
                                 (i32.const 24)
                                )
                               )
                               (local.get $20)
                              )
                             )