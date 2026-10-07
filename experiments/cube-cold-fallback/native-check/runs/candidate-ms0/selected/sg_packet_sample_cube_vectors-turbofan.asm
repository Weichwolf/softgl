
/home/cosmo/Git/softgl/build/diagnostics/cube-cold-fallback/native-check/runs/candidate-ms0/selected/sg_packet_sample_cube_vectors-turbofan.bin:     file format binary


Disassembly of section .data:

000022bdd7cd3640 <.data>:
    22bdd7cd3640:	55                                              	push   rbp
    22bdd7cd3641:	48 8b ec                                        	mov    rbp,rsp
    22bdd7cd3644:	6a 30                                           	push   0x30
    22bdd7cd3646:	56                                              	push   rsi
    22bdd7cd3647:	48 83 ec 20                                     	sub    rsp,0x20
    22bdd7cd364b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cd364f:	48 8b 5e 17                                     	mov    rbx,QWORD PTR [rsi+0x17]
    22bdd7cd3653:	85 d2                                           	test   edx,edx
    22bdd7cd3655:	0f 85 07 00 00 00                               	jne    0x22bdd7cd3662
    22bdd7cd365b:	33 c0                                           	xor    eax,eax
    22bdd7cd365d:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd3660:	5d                                              	pop    rbp
    22bdd7cd3661:	c3                                              	ret
    22bdd7cd3662:	8b f0                                           	mov    esi,eax
    22bdd7cd3664:	8b 7c 33 04                                     	mov    edi,DWORD PTR [rbx+rsi*1+0x4]
    22bdd7cd3668:	85 ff                                           	test   edi,edi
    22bdd7cd366a:	0f 85 04 00 00 00                               	jne    0x22bdd7cd3674
    22bdd7cd3670:	33 c0                                           	xor    eax,eax
    22bdd7cd3672:	eb e9                                           	jmp    0x22bdd7cd365d
    22bdd7cd3674:	44 8b c2                                        	mov    r8d,edx
    22bdd7cd3677:	41 83 e0 0f                                     	and    r8d,0xf
    22bdd7cd367b:	49 ba 50 d8 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d850
    22bdd7cd3685:	c4 c1 68 54 22                                  	vandps xmm4,xmm2,XMMWORD PTR [r10]
    22bdd7cd368a:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    22bdd7cd3694:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cd3699:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7cd369d:	c5 d8 c2 f5 02                                  	vcmpleps xmm6,xmm4,xmm5
    22bdd7cd36a2:	4c 8b 15 d4 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffd4]        # 0x22bdd7cd367d
    22bdd7cd36a9:	c4 c1 70 54 3a                                  	vandps xmm7,xmm1,XMMWORD PTR [r10]
    22bdd7cd36ae:	c5 40 c2 c5 02                                  	vcmpleps xmm8,xmm7,xmm5
    22bdd7cd36b3:	c4 c1 49 db f0                                  	vpand  xmm6,xmm6,xmm8
    22bdd7cd36b8:	4c 8b 15 be ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffbe]        # 0x22bdd7cd367d
    22bdd7cd36bf:	c4 41 60 54 02                                  	vandps xmm8,xmm3,XMMWORD PTR [r10]
    22bdd7cd36c4:	c5 b8 c2 ed 02                                  	vcmpleps xmm5,xmm8,xmm5
    22bdd7cd36c9:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    22bdd7cd36cd:	c5 78 50 cd                                     	vmovmskps r9d,xmm5
    22bdd7cd36d1:	45 23 c8                                        	and    r9d,r8d
    22bdd7cd36d4:	44 3b ca                                        	cmp    r9d,edx
    22bdd7cd36d7:	0f 84 07 00 00 00                               	je     0x22bdd7cd36e4
    22bdd7cd36dd:	33 c0                                           	xor    eax,eax
    22bdd7cd36df:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd36e2:	5d                                              	pop    rbp
    22bdd7cd36e3:	c3                                              	ret
    22bdd7cd36e4:	c5 b8 c2 ef 02                                  	vcmpleps xmm5,xmm8,xmm7
    22bdd7cd36e9:	c5 d8 c2 f7 02                                  	vcmpleps xmm6,xmm4,xmm7
    22bdd7cd36ee:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    22bdd7cd36f2:	c5 78 50 cd                                     	vmovmskps r9d,xmm5
    22bdd7cd36f6:	45 8b d9                                        	mov    r11d,r9d
    22bdd7cd36f9:	44 23 da                                        	and    r11d,edx
    22bdd7cd36fc:	41 3b d3                                        	cmp    edx,r11d
    22bdd7cd36ff:	0f 84 99 00 00 00                               	je     0x22bdd7cd379e
    22bdd7cd3705:	c5 b8 c2 ec 02                                  	vcmpleps xmm5,xmm8,xmm4
    22bdd7cd370a:	c5 c0 c2 f4 02                                  	vcmpleps xmm6,xmm7,xmm4
    22bdd7cd370f:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    22bdd7cd3713:	c5 78 50 e5                                     	vmovmskps r12d,xmm5
    22bdd7cd3717:	45 8b f9                                        	mov    r15d,r9d
    22bdd7cd371a:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    22bdd7cd371e:	44 23 fa                                        	and    r15d,edx
    22bdd7cd3721:	45 23 fc                                        	and    r15d,r12d
    22bdd7cd3724:	44 3b fa                                        	cmp    r15d,edx
    22bdd7cd3727:	0f 84 48 00 00 00                               	je     0x22bdd7cd3775
    22bdd7cd372d:	45 0b cc                                        	or     r9d,r12d
    22bdd7cd3730:	44 85 ca                                        	test   edx,r9d
    22bdd7cd3733:	0f 85 35 00 00 00                               	jne    0x22bdd7cd376e
    22bdd7cd3739:	49 ba 60 d8 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d860
    22bdd7cd3743:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    22bdd7cd3748:	41 b9 04 00 00 00                               	mov    r9d,0x4
    22bdd7cd374e:	c5 79 28 f9                                     	vmovapd xmm15,xmm1
    22bdd7cd3752:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    22bdd7cd3756:	c4 c1 79 28 df                                  	vmovapd xmm3,xmm15
    22bdd7cd375b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7cd3760:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cd3763:	41 bf 01 00 00 00                               	mov    r15d,0x1
    22bdd7cd3769:	e9 51 00 00 00                                  	jmp    0x22bdd7cd37bf
    22bdd7cd376e:	33 c0                                           	xor    eax,eax
    22bdd7cd3770:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd3773:	5d                                              	pop    rbp
    22bdd7cd3774:	c3                                              	ret
    22bdd7cd3775:	c5 79 28 f9                                     	vmovapd xmm15,xmm1
    22bdd7cd3779:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    22bdd7cd377d:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    22bdd7cd3781:	c4 c1 79 28 df                                  	vmovapd xmm3,xmm15
    22bdd7cd3786:	45 33 ff                                        	xor    r15d,r15d
    22bdd7cd3789:	c5 f9 28 fc                                     	vmovapd xmm7,xmm4
    22bdd7cd378d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    22bdd7cd3793:	41 b9 02 00 00 00                               	mov    r9d,0x2
    22bdd7cd3799:	e9 21 00 00 00                                  	jmp    0x22bdd7cd37bf
    22bdd7cd379e:	4c 8b 15 96 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff96]        # 0x22bdd7cd373b
    22bdd7cd37a5:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    22bdd7cd37aa:	4c 8b 15 8a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8a]        # 0x22bdd7cd373b
    22bdd7cd37b1:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    22bdd7cd37b6:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cd37b9:	45 8b e1                                        	mov    r12d,r9d
    22bdd7cd37bc:	45 8b f9                                        	mov    r15d,r9d
    22bdd7cd37bf:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    22bdd7cd37c3:	c5 d8 c2 c9 02                                  	vcmpleps xmm1,xmm4,xmm1
    22bdd7cd37c8:	c5 f8 50 c1                                     	vmovmskps eax,xmm1
    22bdd7cd37cc:	41 23 c0                                        	and    eax,r8d
    22bdd7cd37cf:	0f 85 5d 00 00 00                               	jne    0x22bdd7cd3832
    22bdd7cd37d5:	4c 8b 15 5f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff5f]        # 0x22bdd7cd373b
    22bdd7cd37dc:	c4 c1 68 57 0a                                  	vxorps xmm1,xmm2,XMMWORD PTR [r10]
    22bdd7cd37e1:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd37e4:	0f 85 04 00 00 00                               	jne    0x22bdd7cd37ee
    22bdd7cd37ea:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    22bdd7cd37ee:	4c 8b 15 46 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff46]        # 0x22bdd7cd373b
    22bdd7cd37f5:	c4 c1 60 57 12                                  	vxorps xmm2,xmm3,XMMWORD PTR [r10]
    22bdd7cd37fa:	45 85 ff                                        	test   r15d,r15d
    22bdd7cd37fd:	0f 84 04 00 00 00                               	je     0x22bdd7cd3807
    22bdd7cd3803:	c5 f9 28 da                                     	vmovapd xmm3,xmm2
    22bdd7cd3807:	44 3b da                                        	cmp    r11d,edx
    22bdd7cd380a:	0f 84 04 00 00 00                               	je     0x22bdd7cd3814
    22bdd7cd3810:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    22bdd7cd3814:	41 83 c9 01                                     	or     r9d,0x1
    22bdd7cd3818:	41 b8 03 00 00 00                               	mov    r8d,0x3
    22bdd7cd381e:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd3821:	45 0f 45 c8                                     	cmovne r9d,r8d
    22bdd7cd3825:	c5 f9 28 da                                     	vmovapd xmm3,xmm2
    22bdd7cd3829:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    22bdd7cd382d:	e9 0f 00 00 00                                  	jmp    0x22bdd7cd3841
    22bdd7cd3832:	3b c2                                           	cmp    eax,edx
    22bdd7cd3834:	0f 84 07 00 00 00                               	je     0x22bdd7cd3841
    22bdd7cd383a:	33 c0                                           	xor    eax,eax
    22bdd7cd383c:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd383f:	5d                                              	pop    rbp
    22bdd7cd3840:	c3                                              	ret
    22bdd7cd3841:	41 c1 e1 06                                     	shl    r9d,0x6
    22bdd7cd3845:	41 03 f9                                        	add    edi,r9d
    22bdd7cd3848:	44 8b 84 3b 24 01 00 00                         	mov    r8d,DWORD PTR [rbx+rdi*1+0x124]
    22bdd7cd3850:	45 85 c0                                        	test   r8d,r8d
    22bdd7cd3853:	0f 85 07 00 00 00                               	jne    0x22bdd7cd3860
    22bdd7cd3859:	33 c0                                           	xor    eax,eax
    22bdd7cd385b:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd385e:	5d                                              	pop    rbp
    22bdd7cd385f:	c3                                              	ret
    22bdd7cd3860:	44 8b 8c 3b a4 02 00 00                         	mov    r9d,DWORD PTR [rbx+rdi*1+0x2a4]
    22bdd7cd3868:	45 85 c9                                        	test   r9d,r9d
    22bdd7cd386b:	0f 8e b2 0e 00 00                               	jle    0x22bdd7cd4723
    22bdd7cd3871:	81 c7 24 04 00 00                               	add    edi,0x424
    22bdd7cd3877:	8b 3c 3b                                        	mov    edi,DWORD PTR [rbx+rdi*1]
    22bdd7cd387a:	85 ff                                           	test   edi,edi
    22bdd7cd387c:	0f 8e 9a 0e 00 00                               	jle    0x22bdd7cd471c
    22bdd7cd3882:	45 8d 59 ff                                     	lea    r11d,[r9-0x1]
    22bdd7cd3886:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    22bdd7cd3890:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cd3895:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cd3899:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x22bdd7cd3888
    22bdd7cd38a0:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cd38a5:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7cd38a9:	c5 c0 c2 ed 01                                  	vcmpltps xmm5,xmm7,xmm5
    22bdd7cd38ae:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    22bdd7cd38b2:	c5 f1 db cd                                     	vpand  xmm1,xmm1,xmm5
    22bdd7cd38b6:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7cd38bb:	c5 e8 5e d1                                     	vdivps xmm2,xmm2,xmm1
    22bdd7cd38bf:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    22bdd7cd38c9:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cd38ce:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7cd38d2:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    22bdd7cd38d6:	c5 e0 5e c9                                     	vdivps xmm1,xmm3,xmm1
    22bdd7cd38da:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    22bdd7cd38de:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    22bdd7cd38e8:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7cd38ed:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7cd38f1:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    22bdd7cd38f5:	44 8b 64 33 14                                  	mov    r12d,DWORD PTR [rbx+rsi*1+0x14]
    22bdd7cd38fa:	44 8b 7c 33 10                                  	mov    r15d,DWORD PTR [rbx+rsi*1+0x10]
    22bdd7cd38ff:	33 c0                                           	xor    eax,eax
    22bdd7cd3901:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    22bdd7cd3908:	0f 95 c0                                        	setne  al
    22bdd7cd390b:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    22bdd7cd3912:	41 0f 95 c7                                     	setne  r15b
    22bdd7cd3916:	45 0f b6 ff                                     	movzx  r15d,r15b
    22bdd7cd391a:	48 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],rbx
    22bdd7cd391e:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    22bdd7cd3922:	48 89 55 d8                                     	mov    QWORD PTR [rbp-0x28],rdx
    22bdd7cd3926:	4c 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],r8
    22bdd7cd392a:	44 23 f8                                        	and    r15d,eax
    22bdd7cd392d:	0f 85 0d 00 00 00                               	jne    0x22bdd7cd3940
    22bdd7cd3933:	c5 d8 5f c9                                     	vmaxps xmm1,xmm4,xmm1
    22bdd7cd3937:	c5 d0 5d c9                                     	vminps xmm1,xmm5,xmm1
    22bdd7cd393b:	e9 0a 00 00 00                                  	jmp    0x22bdd7cd394a
    22bdd7cd3940:	c4 e3 79 08 f1 09                               	vroundps xmm6,xmm1,0x9
    22bdd7cd3946:	c5 f0 5c ce                                     	vsubps xmm1,xmm1,xmm6
    22bdd7cd394a:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    22bdd7cd394e:	8b 74 33 0c                                     	mov    esi,DWORD PTR [rbx+rsi*1+0xc]
    22bdd7cd3952:	45 8b d1                                        	mov    r10d,r9d
    22bdd7cd3955:	c4 c1 82 2a da                                  	vcvtsi2ss xmm3,xmm15,r10
    22bdd7cd395a:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    22bdd7cd395f:	c5 e0 59 c9                                     	vmulps xmm1,xmm3,xmm1
    22bdd7cd3963:	8d 47 ff                                        	lea    eax,[rdi-0x1]
    22bdd7cd3966:	8b d8                                           	mov    ebx,eax
    22bdd7cd3968:	23 df                                           	and    ebx,edi
    22bdd7cd396a:	33 c9                                           	xor    ecx,ecx
    22bdd7cd396c:	45 8b c3                                        	mov    r8d,r11d
    22bdd7cd396f:	45 85 d9                                        	test   r9d,r11d
    22bdd7cd3972:	44 0f 45 c1                                     	cmovne r8d,ecx
    22bdd7cd3976:	44 8b d7                                        	mov    r10d,edi
    22bdd7cd3979:	c4 c1 82 2a da                                  	vcvtsi2ss xmm3,xmm15,r10
    22bdd7cd397e:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    22bdd7cd3983:	33 d2                                           	xor    edx,edx
    22bdd7cd3985:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    22bdd7cd398c:	0f 95 c2                                        	setne  dl
    22bdd7cd398f:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    22bdd7cd3996:	41 0f 95 c4                                     	setne  r12b
    22bdd7cd399a:	45 0f b6 e4                                     	movzx  r12d,r12b
    22bdd7cd399e:	44 23 e2                                        	and    r12d,edx
    22bdd7cd39a1:	0f 85 0d 00 00 00                               	jne    0x22bdd7cd39b4
    22bdd7cd39a7:	c5 d8 5f d2                                     	vmaxps xmm2,xmm4,xmm2
    22bdd7cd39ab:	c5 d0 5d d2                                     	vminps xmm2,xmm5,xmm2
    22bdd7cd39af:	e9 0a 00 00 00                                  	jmp    0x22bdd7cd39be
    22bdd7cd39b4:	c4 e3 79 08 e2 09                               	vroundps xmm4,xmm2,0x9
    22bdd7cd39ba:	c5 e8 5c d4                                     	vsubps xmm2,xmm2,xmm4
    22bdd7cd39be:	c5 e0 59 d2                                     	vmulps xmm2,xmm3,xmm2
    22bdd7cd39c2:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    22bdd7cd39cc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7cd39d1:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7cd39d5:	c5 e8 58 e3                                     	vaddps xmm4,xmm2,xmm3
    22bdd7cd39d9:	81 fe 00 26 00 00                               	cmp    esi,0x2600
    22bdd7cd39df:	0f 84 5f 00 00 00                               	je     0x22bdd7cd3a44
    22bdd7cd39e5:	c4 e3 79 08 d4 09                               	vroundps xmm2,xmm4,0x9
    22bdd7cd39eb:	4c 8b 15 8b fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc8b]        # 0x22bdd7cd367d
    22bdd7cd39f2:	c4 c1 68 54 32                                  	vandps xmm6,xmm2,XMMWORD PTR [r10]
    22bdd7cd39f7:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    22bdd7cd3a01:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cd3a06:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cd3a0a:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    22bdd7cd3a0f:	49 ba 40 d9 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d940
    22bdd7cd3a19:	c5 68 c2 fa 00                                  	vcmpeqps xmm15,xmm2,xmm2
    22bdd7cd3a1e:	c4 41 68 54 c7                                  	vandps xmm8,xmm2,xmm15
    22bdd7cd3a23:	c4 41 68 c2 3a 0d                               	vcmpgeps xmm15,xmm2,XMMWORD PTR [r10]
    22bdd7cd3a29:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    22bdd7cd3a2e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    22bdd7cd3a33:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    22bdd7cd3a37:	c5 f9 28 da                                     	vmovapd xmm3,xmm2
    22bdd7cd3a3b:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    22bdd7cd3a3f:	e9 48 00 00 00                                  	jmp    0x22bdd7cd3a8c
    22bdd7cd3a44:	c4 e3 79 08 da 09                               	vroundps xmm3,xmm2,0x9
    22bdd7cd3a4a:	4c 8b 15 2c fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc2c]        # 0x22bdd7cd367d
    22bdd7cd3a51:	c4 c1 60 54 22                                  	vandps xmm4,xmm3,XMMWORD PTR [r10]
    22bdd7cd3a56:	4c 8b 15 9c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9c]        # 0x22bdd7cd39f9
    22bdd7cd3a5d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cd3a62:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cd3a66:	c5 d8 c2 f7 01                                  	vcmpltps xmm6,xmm4,xmm7
    22bdd7cd3a6b:	4c 8b 15 9f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9f]        # 0x22bdd7cd3a11
    22bdd7cd3a72:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    22bdd7cd3a77:	c4 41 60 54 c7                                  	vandps xmm8,xmm3,xmm15
    22bdd7cd3a7c:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    22bdd7cd3a82:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    22bdd7cd3a87:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    22bdd7cd3a8c:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    22bdd7cd3a92:	4c 8b 15 78 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff78]        # 0x22bdd7cd3a11
    22bdd7cd3a99:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    22bdd7cd3a9e:	c4 41 58 54 cf                                  	vandps xmm9,xmm4,xmm15
    22bdd7cd3aa3:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    22bdd7cd3aa9:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    22bdd7cd3aae:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    22bdd7cd3ab3:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    22bdd7cd3abd:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cd3ac2:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cd3ac7:	4c 8b 15 af fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbaf]        # 0x22bdd7cd367d
    22bdd7cd3ace:	c4 41 58 54 1a                                  	vandps xmm11,xmm4,XMMWORD PTR [r10]
    22bdd7cd3ad3:	c5 a0 c2 ff 01                                  	vcmpltps xmm7,xmm11,xmm7
    22bdd7cd3ad8:	c4 41 41 df fa                                  	vpandn xmm15,xmm7,xmm10
    22bdd7cd3add:	c5 b1 db ff                                     	vpand  xmm7,xmm9,xmm7
    22bdd7cd3ae1:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cd3ae6:	c4 41 79 6e cb                                  	vmovd  xmm9,r11d
    22bdd7cd3aeb:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    22bdd7cd3af0:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cd3af5:	c4 42 41 3d db                                  	vpmaxsd xmm11,xmm7,xmm11
    22bdd7cd3afa:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    22bdd7cd3aff:	45 85 ff                                        	test   r15d,r15d
    22bdd7cd3b02:	0f 84 4e 00 00 00                               	je     0x22bdd7cd3b56
    22bdd7cd3b08:	c4 41 79 6e d8                                  	vmovd  xmm11,r8d
    22bdd7cd3b0d:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    22bdd7cd3b12:	c4 41 41 db db                                  	vpand  xmm11,xmm7,xmm11
    22bdd7cd3b17:	45 85 c0                                        	test   r8d,r8d
    22bdd7cd3b1a:	0f 85 36 00 00 00                               	jne    0x22bdd7cd3b56
    22bdd7cd3b20:	c4 41 79 6e d9                                  	vmovd  xmm11,r9d
    22bdd7cd3b25:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    22bdd7cd3b2a:	c4 41 41 66 e1                                  	vpcmpgtd xmm12,xmm7,xmm9
    22bdd7cd3b2f:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    22bdd7cd3b34:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cd3b39:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    22bdd7cd3b3e:	c5 79 66 ef                                     	vpcmpgtd xmm13,xmm0,xmm7
    22bdd7cd3b42:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    22bdd7cd3b47:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    22bdd7cd3b4c:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    22bdd7cd3b51:	c4 41 41 fe db                                  	vpaddd xmm11,xmm7,xmm11
    22bdd7cd3b56:	8b d0                                           	mov    edx,eax
    22bdd7cd3b58:	85 db                                           	test   ebx,ebx
    22bdd7cd3b5a:	0f 45 d1                                        	cmovne edx,ecx
    22bdd7cd3b5d:	c4 41 49 df fa                                  	vpandn xmm15,xmm6,xmm10
    22bdd7cd3b62:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    22bdd7cd3b66:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cd3b6b:	c5 79 6e c0                                     	vmovd  xmm8,eax
    22bdd7cd3b6f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7cd3b74:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    22bdd7cd3b79:	c4 42 49 3d d2                                  	vpmaxsd xmm10,xmm6,xmm10
    22bdd7cd3b7e:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    22bdd7cd3b83:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd3b86:	0f 84 49 00 00 00                               	je     0x22bdd7cd3bd5
    22bdd7cd3b8c:	c5 79 6e d2                                     	vmovd  xmm10,edx
    22bdd7cd3b90:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    22bdd7cd3b95:	c4 41 49 db d2                                  	vpand  xmm10,xmm6,xmm10
    22bdd7cd3b9a:	85 d2                                           	test   edx,edx
    22bdd7cd3b9c:	0f 85 33 00 00 00                               	jne    0x22bdd7cd3bd5
    22bdd7cd3ba2:	c5 79 6e d7                                     	vmovd  xmm10,edi
    22bdd7cd3ba6:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    22bdd7cd3bab:	c4 41 49 66 e0                                  	vpcmpgtd xmm12,xmm6,xmm8
    22bdd7cd3bb0:	c4 41 19 db e2                                  	vpand  xmm12,xmm12,xmm10
    22bdd7cd3bb5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cd3bba:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    22bdd7cd3bbf:	c5 f9 66 c6                                     	vpcmpgtd xmm0,xmm0,xmm6
    22bdd7cd3bc3:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    22bdd7cd3bc8:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    22bdd7cd3bcc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cd3bd1:	c5 49 fe d0                                     	vpaddd xmm10,xmm6,xmm0
    22bdd7cd3bd5:	c4 c1 79 6e c1                                  	vmovd  xmm0,r9d
    22bdd7cd3bda:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7cd3bdf:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    22bdd7cd3be4:	c4 41 29 fe e3                                  	vpaddd xmm12,xmm10,xmm11
    22bdd7cd3be9:	c4 63 79 16 e3 03                               	vpextrd ebx,xmm12,0x3
    22bdd7cd3bef:	c4 43 79 16 e1 02                               	vpextrd r9d,xmm12,0x2
    22bdd7cd3bf5:	c4 43 79 16 e3 01                               	vpextrd r11d,xmm12,0x1
    22bdd7cd3bfb:	c5 79 7e e0                                     	vmovd  eax,xmm12
    22bdd7cd3bff:	81 fe 00 26 00 00                               	cmp    esi,0x2600
    22bdd7cd3c05:	0f 84 e8 08 00 00                               	je     0x22bdd7cd44f3
    22bdd7cd3c0b:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    22bdd7cd3c15:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7cd3c1a:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7cd3c1f:	c4 c1 41 fe fc                                  	vpaddd xmm7,xmm7,xmm12
    22bdd7cd3c24:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    22bdd7cd3c29:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    22bdd7cd3c2e:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    22bdd7cd3c33:	45 85 ff                                        	test   r15d,r15d
    22bdd7cd3c36:	0f 84 48 00 00 00                               	je     0x22bdd7cd3c84
    22bdd7cd3c3c:	c4 41 79 6e e8                                  	vmovd  xmm13,r8d
    22bdd7cd3c41:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cd3c46:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    22bdd7cd3c4b:	45 85 c0                                        	test   r8d,r8d
    22bdd7cd3c4e:	0f 85 30 00 00 00                               	jne    0x22bdd7cd3c84
    22bdd7cd3c54:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    22bdd7cd3c59:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    22bdd7cd3c5e:	c5 31 db c8                                     	vpand  xmm9,xmm9,xmm0
    22bdd7cd3c62:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cd3c67:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    22bdd7cd3c6c:	c5 11 66 ef                                     	vpcmpgtd xmm13,xmm13,xmm7
    22bdd7cd3c70:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    22bdd7cd3c75:	c4 41 79 db cd                                  	vpand  xmm9,xmm0,xmm13
    22bdd7cd3c7a:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7cd3c7f:	c4 41 41 fe e9                                  	vpaddd xmm13,xmm7,xmm9
    22bdd7cd3c84:	c4 c1 49 fe f4                                  	vpaddd xmm6,xmm6,xmm12
    22bdd7cd3c89:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    22bdd7cd3c8d:	c4 e2 49 3d ff                                  	vpmaxsd xmm7,xmm6,xmm7
    22bdd7cd3c92:	c4 c2 41 39 f8                                  	vpminsd xmm7,xmm7,xmm8
    22bdd7cd3c97:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd3c9a:	0f 84 4d 00 00 00                               	je     0x22bdd7cd3ced
    22bdd7cd3ca0:	c5 f9 6e fa                                     	vmovd  xmm7,edx
    22bdd7cd3ca4:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cd3ca9:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    22bdd7cd3cad:	85 d2                                           	test   edx,edx
    22bdd7cd3caf:	0f 85 38 00 00 00                               	jne    0x22bdd7cd3ced
    22bdd7cd3cb5:	c5 f9 6e ff                                     	vmovd  xmm7,edi
    22bdd7cd3cb9:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cd3cbe:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7cd3cc3:	c4 41 49 66 c0                                  	vpcmpgtd xmm8,xmm6,xmm8
    22bdd7cd3cc8:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    22bdd7cd3ccc:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cd3cd1:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    22bdd7cd3cd6:	c5 31 66 ce                                     	vpcmpgtd xmm9,xmm9,xmm6
    22bdd7cd3cda:	c4 41 31 df f8                                  	vpandn xmm15,xmm9,xmm8
    22bdd7cd3cdf:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    22bdd7cd3ce4:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cd3ce9:	c5 c9 fe ff                                     	vpaddd xmm7,xmm6,xmm7
    22bdd7cd3ced:	c4 e2 41 40 c0                                  	vpmulld xmm0,xmm7,xmm0
    22bdd7cd3cf2:	c4 c1 79 fe f3                                  	vpaddd xmm6,xmm0,xmm11
    22bdd7cd3cf7:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    22bdd7cd3cfb:	0f 85 16 00 00 00                               	jne    0x22bdd7cd3d17
    22bdd7cd3d01:	c4 c1 21 fe fc                                  	vpaddd xmm7,xmm11,xmm12
    22bdd7cd3d06:	c5 91 76 ff                                     	vpcmpeqd xmm7,xmm13,xmm7
    22bdd7cd3d0a:	c5 f8 50 d7                                     	vmovmskps edx,xmm7
    22bdd7cd3d0e:	83 fa 0f                                        	cmp    edx,0xf
    22bdd7cd3d11:	0f 84 85 03 00 00                               	je     0x22bdd7cd409c
    22bdd7cd3d17:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    22bdd7cd3d1a:	83 e2 08                                        	and    edx,0x8
    22bdd7cd3d1d:	8b 75 d8                                        	mov    esi,DWORD PTR [rbp-0x28]
    22bdd7cd3d20:	83 e6 04                                        	and    esi,0x4
    22bdd7cd3d23:	8b 7d d8                                        	mov    edi,DWORD PTR [rbp-0x28]
    22bdd7cd3d26:	83 e7 02                                        	and    edi,0x2
    22bdd7cd3d29:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    22bdd7cd3d2d:	41 83 e0 01                                     	and    r8d,0x1
    22bdd7cd3d31:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    22bdd7cd3d35:	0f 84 84 00 00 00                               	je     0x22bdd7cd3dbf
    22bdd7cd3d3b:	45 85 c0                                        	test   r8d,r8d
    22bdd7cd3d3e:	0f 85 10 00 00 00                               	jne    0x22bdd7cd3d54
    22bdd7cd3d44:	4c 8b e1                                        	mov    r12,rcx
    22bdd7cd3d47:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    22bdd7cd3d4b:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    22bdd7cd3d4f:	e9 10 00 00 00                                  	jmp    0x22bdd7cd3d64
    22bdd7cd3d54:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    22bdd7cd3d58:	45 8d 24 80                                     	lea    r12d,[r8+rax*4]
    22bdd7cd3d5c:	4c 8b 7d e8                                     	mov    r15,QWORD PTR [rbp-0x18]
    22bdd7cd3d60:	47 8b 24 27                                     	mov    r12d,DWORD PTR [r15+r12*1]
    22bdd7cd3d64:	85 ff                                           	test   edi,edi
    22bdd7cd3d66:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3d74
    22bdd7cd3d6c:	48 8b f9                                        	mov    rdi,rcx
    22bdd7cd3d6f:	e9 08 00 00 00                                  	jmp    0x22bdd7cd3d7c
    22bdd7cd3d74:	43 8d 3c 98                                     	lea    edi,[r8+r11*4]
    22bdd7cd3d78:	41 8b 3c 3f                                     	mov    edi,DWORD PTR [r15+rdi*1]
    22bdd7cd3d7c:	85 f6                                           	test   esi,esi
    22bdd7cd3d7e:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3d8c
    22bdd7cd3d84:	48 8b f1                                        	mov    rsi,rcx
    22bdd7cd3d87:	e9 08 00 00 00                                  	jmp    0x22bdd7cd3d94
    22bdd7cd3d8c:	43 8d 34 88                                     	lea    esi,[r8+r9*4]
    22bdd7cd3d90:	41 8b 34 37                                     	mov    esi,DWORD PTR [r15+rsi*1]
    22bdd7cd3d94:	85 d2                                           	test   edx,edx
    22bdd7cd3d96:	0f 85 13 00 00 00                               	jne    0x22bdd7cd3daf
    22bdd7cd3d9c:	41 8b d0                                        	mov    edx,r8d
    22bdd7cd3d9f:	44 8b c7                                        	mov    r8d,edi
    22bdd7cd3da2:	8b fe                                           	mov    edi,esi
    22bdd7cd3da4:	48 8b d9                                        	mov    rbx,rcx
    22bdd7cd3da7:	49 8b f7                                        	mov    rsi,r15
    22bdd7cd3daa:	e9 3d 00 00 00                                  	jmp    0x22bdd7cd3dec
    22bdd7cd3daf:	41 8b d0                                        	mov    edx,r8d
    22bdd7cd3db2:	44 8b c7                                        	mov    r8d,edi
    22bdd7cd3db5:	8b fe                                           	mov    edi,esi
    22bdd7cd3db7:	49 8b f7                                        	mov    rsi,r15
    22bdd7cd3dba:	e9 27 00 00 00                                  	jmp    0x22bdd7cd3de6
    22bdd7cd3dbf:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    22bdd7cd3dc2:	42 8d 3c 9a                                     	lea    edi,[rdx+r11*4]
    22bdd7cd3dc6:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    22bdd7cd3dca:	8b 3c 3e                                        	mov    edi,DWORD PTR [rsi+rdi*1]
    22bdd7cd3dcd:	44 8d 04 82                                     	lea    r8d,[rdx+rax*4]
    22bdd7cd3dd1:	46 8b 24 06                                     	mov    r12d,DWORD PTR [rsi+r8*1]
    22bdd7cd3dd5:	46 8d 04 8a                                     	lea    r8d,[rdx+r9*4]
    22bdd7cd3dd9:	46 8b 04 06                                     	mov    r8d,DWORD PTR [rsi+r8*1]
    22bdd7cd3ddd:	44 8b d7                                        	mov    r10d,edi
    22bdd7cd3de0:	41 8b f8                                        	mov    edi,r8d
    22bdd7cd3de3:	45 8b c2                                        	mov    r8d,r10d
    22bdd7cd3de6:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    22bdd7cd3de9:	8b 1c 1e                                        	mov    ebx,DWORD PTR [rsi+rbx*1]
    22bdd7cd3dec:	c4 c1 11 fe fa                                  	vpaddd xmm7,xmm13,xmm10
    22bdd7cd3df1:	c4 41 79 6e c4                                  	vmovd  xmm8,r12d
    22bdd7cd3df6:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7cd3dfb:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    22bdd7cd3dff:	0f 84 74 00 00 00                               	je     0x22bdd7cd3e79
    22bdd7cd3e05:	f6 45 d8 01                                     	test   BYTE PTR [rbp-0x28],0x1
    22bdd7cd3e09:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3e17
    22bdd7cd3e0f:	4c 8b c9                                        	mov    r9,rcx
    22bdd7cd3e12:	e9 0d 00 00 00                                  	jmp    0x22bdd7cd3e24
    22bdd7cd3e17:	c4 c1 79 7e f9                                  	vmovd  r9d,xmm7
    22bdd7cd3e1c:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    22bdd7cd3e20:	46 8b 0c 0e                                     	mov    r9d,DWORD PTR [rsi+r9*1]
    22bdd7cd3e24:	f6 45 d8 02                                     	test   BYTE PTR [rbp-0x28],0x2
    22bdd7cd3e28:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3e36
    22bdd7cd3e2e:	4c 8b d9                                        	mov    r11,rcx
    22bdd7cd3e31:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd3e44
    22bdd7cd3e36:	c4 c3 79 16 fb 01                               	vpextrd r11d,xmm7,0x1
    22bdd7cd3e3c:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    22bdd7cd3e40:	46 8b 1c 1e                                     	mov    r11d,DWORD PTR [rsi+r11*1]
    22bdd7cd3e44:	f6 45 d8 04                                     	test   BYTE PTR [rbp-0x28],0x4
    22bdd7cd3e48:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3e56
    22bdd7cd3e4e:	4c 8b e1                                        	mov    r12,rcx
    22bdd7cd3e51:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd3e64
    22bdd7cd3e56:	c4 c3 79 16 fc 02                               	vpextrd r12d,xmm7,0x2
    22bdd7cd3e5c:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    22bdd7cd3e60:	46 8b 24 26                                     	mov    r12d,DWORD PTR [rsi+r12*1]
    22bdd7cd3e64:	f6 45 d8 08                                     	test   BYTE PTR [rbp-0x28],0x8
    22bdd7cd3e68:	0f 85 34 00 00 00                               	jne    0x22bdd7cd3ea2
    22bdd7cd3e6e:	45 8b f9                                        	mov    r15d,r9d
    22bdd7cd3e71:	4c 8b c9                                        	mov    r9,rcx
    22bdd7cd3e74:	e9 40 00 00 00                                  	jmp    0x22bdd7cd3eb9
    22bdd7cd3e79:	c4 c3 79 16 f9 01                               	vpextrd r9d,xmm7,0x1
    22bdd7cd3e7f:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    22bdd7cd3e83:	46 8b 1c 0e                                     	mov    r11d,DWORD PTR [rsi+r9*1]
    22bdd7cd3e87:	c4 c1 79 7e f9                                  	vmovd  r9d,xmm7
    22bdd7cd3e8c:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    22bdd7cd3e90:	46 8b 0c 0e                                     	mov    r9d,DWORD PTR [rsi+r9*1]
    22bdd7cd3e94:	c4 c3 79 16 fc 02                               	vpextrd r12d,xmm7,0x2
    22bdd7cd3e9a:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    22bdd7cd3e9e:	46 8b 24 26                                     	mov    r12d,DWORD PTR [rsi+r12*1]
    22bdd7cd3ea2:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    22bdd7cd3ea8:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    22bdd7cd3eac:	46 8b 3c 3e                                     	mov    r15d,DWORD PTR [rsi+r15*1]
    22bdd7cd3eb0:	45 8b d1                                        	mov    r10d,r9d
    22bdd7cd3eb3:	45 8b cf                                        	mov    r9d,r15d
    22bdd7cd3eb6:	45 8b fa                                        	mov    r15d,r10d
    22bdd7cd3eb9:	c4 c3 39 22 f8 01                               	vpinsrd xmm7,xmm8,r8d,0x1
    22bdd7cd3ebf:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    22bdd7cd3ec4:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7cd3ec9:	c4 43 39 22 c3 01                               	vpinsrd xmm8,xmm8,r11d,0x1
    22bdd7cd3ecf:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    22bdd7cd3ed3:	0f 84 74 00 00 00                               	je     0x22bdd7cd3f4d
    22bdd7cd3ed9:	f6 45 d8 01                                     	test   BYTE PTR [rbp-0x28],0x1
    22bdd7cd3edd:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3eeb
    22bdd7cd3ee3:	4c 8b c1                                        	mov    r8,rcx
    22bdd7cd3ee6:	e9 0d 00 00 00                                  	jmp    0x22bdd7cd3ef8
    22bdd7cd3eeb:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    22bdd7cd3ef0:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    22bdd7cd3ef4:	46 8b 04 06                                     	mov    r8d,DWORD PTR [rsi+r8*1]
    22bdd7cd3ef8:	f6 45 d8 02                                     	test   BYTE PTR [rbp-0x28],0x2
    22bdd7cd3efc:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3f0a
    22bdd7cd3f02:	4c 8b d9                                        	mov    r11,rcx
    22bdd7cd3f05:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd3f18
    22bdd7cd3f0a:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    22bdd7cd3f10:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    22bdd7cd3f14:	46 8b 1c 1e                                     	mov    r11d,DWORD PTR [rsi+r11*1]
    22bdd7cd3f18:	f6 45 d8 04                                     	test   BYTE PTR [rbp-0x28],0x4
    22bdd7cd3f1c:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3f2a
    22bdd7cd3f22:	4c 8b f9                                        	mov    r15,rcx
    22bdd7cd3f25:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd3f38
    22bdd7cd3f2a:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    22bdd7cd3f30:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    22bdd7cd3f34:	46 8b 3c 3e                                     	mov    r15d,DWORD PTR [rsi+r15*1]
    22bdd7cd3f38:	f6 45 d8 08                                     	test   BYTE PTR [rbp-0x28],0x8
    22bdd7cd3f3c:	0f 85 34 00 00 00                               	jne    0x22bdd7cd3f76
    22bdd7cd3f42:	41 8b c0                                        	mov    eax,r8d
    22bdd7cd3f45:	4c 8b c1                                        	mov    r8,rcx
    22bdd7cd3f48:	e9 3e 00 00 00                                  	jmp    0x22bdd7cd3f8b
    22bdd7cd3f4d:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    22bdd7cd3f53:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    22bdd7cd3f57:	46 8b 1c 06                                     	mov    r11d,DWORD PTR [rsi+r8*1]
    22bdd7cd3f5b:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    22bdd7cd3f60:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    22bdd7cd3f64:	46 8b 04 06                                     	mov    r8d,DWORD PTR [rsi+r8*1]
    22bdd7cd3f68:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    22bdd7cd3f6e:	46 8d 3c ba                                     	lea    r15d,[rdx+r15*4]
    22bdd7cd3f72:	46 8b 3c 3e                                     	mov    r15d,DWORD PTR [rsi+r15*1]
    22bdd7cd3f76:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    22bdd7cd3f7c:	8d 04 82                                        	lea    eax,[rdx+rax*4]
    22bdd7cd3f7f:	8b 04 06                                        	mov    eax,DWORD PTR [rsi+rax*1]
    22bdd7cd3f82:	44 8b d0                                        	mov    r10d,eax
    22bdd7cd3f85:	41 8b c0                                        	mov    eax,r8d
    22bdd7cd3f88:	45 8b c2                                        	mov    r8d,r10d
    22bdd7cd3f8b:	c4 e3 41 22 f7 02                               	vpinsrd xmm6,xmm7,edi,0x2
    22bdd7cd3f91:	c4 c3 39 22 fc 02                               	vpinsrd xmm7,xmm8,r12d,0x2
    22bdd7cd3f97:	c4 c1 79 fe c5                                  	vpaddd xmm0,xmm0,xmm13
    22bdd7cd3f9c:	c5 79 6e c0                                     	vmovd  xmm8,eax
    22bdd7cd3fa0:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7cd3fa5:	c4 43 39 22 c3 01                               	vpinsrd xmm8,xmm8,r11d,0x1
    22bdd7cd3fab:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    22bdd7cd3fb1:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    22bdd7cd3fb5:	0f 84 6b 00 00 00                               	je     0x22bdd7cd4026
    22bdd7cd3fbb:	f6 45 d8 01                                     	test   BYTE PTR [rbp-0x28],0x1
    22bdd7cd3fbf:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3fcd
    22bdd7cd3fc5:	48 8b f9                                        	mov    rdi,rcx
    22bdd7cd3fc8:	e9 0a 00 00 00                                  	jmp    0x22bdd7cd3fd7
    22bdd7cd3fcd:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    22bdd7cd3fd1:	8d 3c ba                                        	lea    edi,[rdx+rdi*4]
    22bdd7cd3fd4:	8b 3c 3e                                        	mov    edi,DWORD PTR [rsi+rdi*1]
    22bdd7cd3fd7:	f6 45 d8 02                                     	test   BYTE PTR [rbp-0x28],0x2
    22bdd7cd3fdb:	0f 85 08 00 00 00                               	jne    0x22bdd7cd3fe9
    22bdd7cd3fe1:	4c 8b d9                                        	mov    r11,rcx
    22bdd7cd3fe4:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd3ff7
    22bdd7cd3fe9:	c4 c3 79 16 c3 01                               	vpextrd r11d,xmm0,0x1
    22bdd7cd3fef:	46 8d 1c 9a                                     	lea    r11d,[rdx+r11*4]
    22bdd7cd3ff3:	46 8b 1c 1e                                     	mov    r11d,DWORD PTR [rsi+r11*1]
    22bdd7cd3ff7:	f6 45 d8 04                                     	test   BYTE PTR [rbp-0x28],0x4
    22bdd7cd3ffb:	0f 85 08 00 00 00                               	jne    0x22bdd7cd4009
    22bdd7cd4001:	4c 8b e1                                        	mov    r12,rcx
    22bdd7cd4004:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd4017
    22bdd7cd4009:	c4 c3 79 16 c4 02                               	vpextrd r12d,xmm0,0x2
    22bdd7cd400f:	46 8d 24 a2                                     	lea    r12d,[rdx+r12*4]
    22bdd7cd4013:	46 8b 24 26                                     	mov    r12d,DWORD PTR [rsi+r12*1]
    22bdd7cd4017:	f6 45 d8 08                                     	test   BYTE PTR [rbp-0x28],0x8
    22bdd7cd401b:	0f 85 29 00 00 00                               	jne    0x22bdd7cd404a
    22bdd7cd4021:	e9 32 00 00 00                                  	jmp    0x22bdd7cd4058
    22bdd7cd4026:	c4 e3 79 16 c1 01                               	vpextrd ecx,xmm0,0x1
    22bdd7cd402c:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    22bdd7cd402f:	44 8b 1c 0e                                     	mov    r11d,DWORD PTR [rsi+rcx*1]
    22bdd7cd4033:	c5 f9 7e c1                                     	vmovd  ecx,xmm0
    22bdd7cd4037:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    22bdd7cd403a:	8b 3c 0e                                        	mov    edi,DWORD PTR [rsi+rcx*1]
    22bdd7cd403d:	c4 e3 79 16 c1 02                               	vpextrd ecx,xmm0,0x2
    22bdd7cd4043:	8d 0c 8a                                        	lea    ecx,[rdx+rcx*4]
    22bdd7cd4046:	44 8b 24 0e                                     	mov    r12d,DWORD PTR [rsi+rcx*1]
    22bdd7cd404a:	c4 e3 79 16 c1 03                               	vpextrd ecx,xmm0,0x3
    22bdd7cd4050:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    22bdd7cd4053:	8b 14 16                                        	mov    edx,DWORD PTR [rsi+rdx*1]
    22bdd7cd4056:	8b ca                                           	mov    ecx,edx
    22bdd7cd4058:	c4 e3 49 22 c3 03                               	vpinsrd xmm0,xmm6,ebx,0x3
    22bdd7cd405e:	c4 c3 41 22 f1 03                               	vpinsrd xmm6,xmm7,r9d,0x3
    22bdd7cd4064:	c5 f9 6e ff                                     	vmovd  xmm7,edi
    22bdd7cd4068:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cd406d:	c4 c3 41 22 fb 01                               	vpinsrd xmm7,xmm7,r11d,0x1
    22bdd7cd4073:	c4 c3 41 22 fc 02                               	vpinsrd xmm7,xmm7,r12d,0x2
    22bdd7cd4079:	c4 e3 41 22 f9 03                               	vpinsrd xmm7,xmm7,ecx,0x3
    22bdd7cd407f:	c4 43 39 22 c0 03                               	vpinsrd xmm8,xmm8,r8d,0x3
    22bdd7cd4085:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    22bdd7cd4089:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    22bdd7cd408e:	c4 41 79 28 c7                                  	vmovapd xmm8,xmm15
    22bdd7cd4093:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7cd4097:	e9 86 00 00 00                                  	jmp    0x22bdd7cd4122
    22bdd7cd409c:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    22bdd7cd409f:	8d 0c 82                                        	lea    ecx,[rdx+rax*4]
    22bdd7cd40a2:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    22bdd7cd40a6:	c5 fb 10 04 0e                                  	vmovsd xmm0,QWORD PTR [rsi+rcx*1]
    22bdd7cd40ab:	42 8d 0c 9a                                     	lea    ecx,[rdx+r11*4]
    22bdd7cd40af:	c5 fb 10 3c 0e                                  	vmovsd xmm7,QWORD PTR [rsi+rcx*1]
    22bdd7cd40b4:	c5 f9 6c c7                                     	vpunpcklqdq xmm0,xmm0,xmm7
    22bdd7cd40b8:	42 8d 0c 8a                                     	lea    ecx,[rdx+r9*4]
    22bdd7cd40bc:	c5 fb 10 3c 0e                                  	vmovsd xmm7,QWORD PTR [rsi+rcx*1]
    22bdd7cd40c1:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    22bdd7cd40c4:	c5 7b 10 04 1e                                  	vmovsd xmm8,QWORD PTR [rsi+rbx*1]
    22bdd7cd40c9:	c4 c1 41 6c f8                                  	vpunpcklqdq xmm7,xmm7,xmm8
    22bdd7cd40ce:	c5 78 c6 c7 dd                                  	vshufps xmm8,xmm0,xmm7,0xdd
    22bdd7cd40d3:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    22bdd7cd40d8:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    22bdd7cd40dd:	c5 f9 7e f3                                     	vmovd  ebx,xmm6
    22bdd7cd40e1:	03 da                                           	add    ebx,edx
    22bdd7cd40e3:	c5 fb 10 3c 1e                                  	vmovsd xmm7,QWORD PTR [rsi+rbx*1]
    22bdd7cd40e8:	c4 e3 79 16 f3 01                               	vpextrd ebx,xmm6,0x1
    22bdd7cd40ee:	03 da                                           	add    ebx,edx
    22bdd7cd40f0:	c5 7b 10 0c 1e                                  	vmovsd xmm9,QWORD PTR [rsi+rbx*1]
    22bdd7cd40f5:	c4 c1 41 6c f9                                  	vpunpcklqdq xmm7,xmm7,xmm9
    22bdd7cd40fa:	c4 e3 79 16 f3 02                               	vpextrd ebx,xmm6,0x2
    22bdd7cd4100:	03 da                                           	add    ebx,edx
    22bdd7cd4102:	c5 7b 10 0c 1e                                  	vmovsd xmm9,QWORD PTR [rsi+rbx*1]
    22bdd7cd4107:	c4 e3 79 16 f3 03                               	vpextrd ebx,xmm6,0x3
    22bdd7cd410d:	03 da                                           	add    ebx,edx
    22bdd7cd410f:	c5 fb 10 34 1e                                  	vmovsd xmm6,QWORD PTR [rsi+rbx*1]
    22bdd7cd4114:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    22bdd7cd4118:	c5 40 c6 ce dd                                  	vshufps xmm9,xmm7,xmm6,0xdd
    22bdd7cd411d:	c5 c0 c6 f6 88                                  	vshufps xmm6,xmm7,xmm6,0x88
    22bdd7cd4122:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    22bdd7cd4126:	c5 d0 5c da                                     	vsubps xmm3,xmm5,xmm2
    22bdd7cd412a:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    22bdd7cd412e:	c5 d0 5c e1                                     	vsubps xmm4,xmm5,xmm1
    22bdd7cd4132:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    22bdd7cd4137:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd413c:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    22bdd7cd4142:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    22bdd7cd4147:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd414c:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    22bdd7cd4151:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    22bdd7cd4155:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    22bdd7cd4159:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    22bdd7cd415e:	c5 d8 59 ed                                     	vmulps xmm5,xmm4,xmm5
    22bdd7cd4162:	c4 c1 41 72 d0 18                               	vpsrld xmm7,xmm8,0x18
    22bdd7cd4168:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd416d:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7cd4173:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7cd4178:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd417d:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7cd4182:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7cd4186:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7cd418a:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7cd418f:	c5 f0 59 ff                                     	vmulps xmm7,xmm1,xmm7
    22bdd7cd4193:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    22bdd7cd4197:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    22bdd7cd419b:	c5 c1 72 d6 18                                  	vpsrld xmm7,xmm6,0x18
    22bdd7cd41a0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd41a5:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7cd41ab:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7cd41b0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd41b5:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7cd41ba:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7cd41be:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7cd41c2:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7cd41c7:	c5 d8 59 ff                                     	vmulps xmm7,xmm4,xmm7
    22bdd7cd41cb:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    22bdd7cd41d1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd41d6:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    22bdd7cd41dc:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    22bdd7cd41e1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd41e6:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    22bdd7cd41ec:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    22bdd7cd41f1:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    22bdd7cd41f6:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    22bdd7cd41fb:	c4 41 70 59 d2                                  	vmulps xmm10,xmm1,xmm10
    22bdd7cd4200:	c4 c1 40 58 fa                                  	vaddps xmm7,xmm7,xmm10
    22bdd7cd4205:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    22bdd7cd4209:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    22bdd7cd420d:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    22bdd7cd4217:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cd421c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cd4220:	c5 79 db d7                                     	vpand  xmm10,xmm0,xmm7
    22bdd7cd4224:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd4229:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    22bdd7cd422f:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    22bdd7cd4234:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd4239:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    22bdd7cd423f:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    22bdd7cd4244:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    22bdd7cd4249:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    22bdd7cd424e:	c4 41 58 59 d2                                  	vmulps xmm10,xmm4,xmm10
    22bdd7cd4253:	c5 39 db df                                     	vpand  xmm11,xmm8,xmm7
    22bdd7cd4257:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd425c:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    22bdd7cd4262:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    22bdd7cd4267:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd426c:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    22bdd7cd4272:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    22bdd7cd4277:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    22bdd7cd427c:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    22bdd7cd4281:	c4 41 70 59 db                                  	vmulps xmm11,xmm1,xmm11
    22bdd7cd4286:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    22bdd7cd428b:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    22bdd7cd4290:	c5 49 db df                                     	vpand  xmm11,xmm6,xmm7
    22bdd7cd4294:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd4299:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    22bdd7cd429f:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    22bdd7cd42a4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd42a9:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    22bdd7cd42af:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    22bdd7cd42b4:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    22bdd7cd42b9:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    22bdd7cd42be:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    22bdd7cd42c3:	c5 31 db e7                                     	vpand  xmm12,xmm9,xmm7
    22bdd7cd42c7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd42cc:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    22bdd7cd42d2:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    22bdd7cd42d7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd42dc:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    22bdd7cd42e2:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    22bdd7cd42e7:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    22bdd7cd42ec:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    22bdd7cd42f1:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    22bdd7cd42f6:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    22bdd7cd42fb:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    22bdd7cd4300:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    22bdd7cd4305:	c5 a1 72 d0 10                                  	vpsrld xmm11,xmm0,0x10
    22bdd7cd430a:	c5 21 db df                                     	vpand  xmm11,xmm11,xmm7
    22bdd7cd430e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd4313:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    22bdd7cd4319:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    22bdd7cd431e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd4323:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    22bdd7cd4329:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    22bdd7cd432e:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    22bdd7cd4333:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    22bdd7cd4338:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    22bdd7cd433d:	c4 c1 19 72 d0 10                               	vpsrld xmm12,xmm8,0x10
    22bdd7cd4343:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    22bdd7cd4347:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd434c:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    22bdd7cd4352:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    22bdd7cd4357:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd435c:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    22bdd7cd4362:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    22bdd7cd4367:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    22bdd7cd436c:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    22bdd7cd4371:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    22bdd7cd4376:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    22bdd7cd437b:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    22bdd7cd4380:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    22bdd7cd4385:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    22bdd7cd4389:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd438e:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    22bdd7cd4394:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    22bdd7cd4399:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd439e:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    22bdd7cd43a4:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    22bdd7cd43a9:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    22bdd7cd43ae:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    22bdd7cd43b3:	c4 41 58 59 e4                                  	vmulps xmm12,xmm4,xmm12
    22bdd7cd43b8:	c4 c1 11 72 d1 10                               	vpsrld xmm13,xmm9,0x10
    22bdd7cd43be:	c5 11 db ef                                     	vpand  xmm13,xmm13,xmm7
    22bdd7cd43c2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd43c7:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    22bdd7cd43cd:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    22bdd7cd43d2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd43d7:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    22bdd7cd43dd:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    22bdd7cd43e2:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    22bdd7cd43e7:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    22bdd7cd43ec:	c4 41 70 59 ed                                  	vmulps xmm13,xmm1,xmm13
    22bdd7cd43f1:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    22bdd7cd43f6:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    22bdd7cd43fb:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    22bdd7cd4400:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    22bdd7cd4405:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    22bdd7cd4409:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd440e:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7cd4414:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7cd4419:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd441e:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7cd4423:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7cd4427:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7cd442b:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7cd4430:	c5 d8 59 c0                                     	vmulps xmm0,xmm4,xmm0
    22bdd7cd4434:	c4 c1 39 72 d0 08                               	vpsrld xmm8,xmm8,0x8
    22bdd7cd443a:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    22bdd7cd443e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd4443:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7cd4449:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7cd444e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd4453:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7cd4459:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7cd445e:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7cd4463:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7cd4468:	c4 41 70 59 c0                                  	vmulps xmm8,xmm1,xmm8
    22bdd7cd446d:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    22bdd7cd4472:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    22bdd7cd4476:	c5 e1 72 d6 08                                  	vpsrld xmm3,xmm6,0x8
    22bdd7cd447b:	c5 e1 db df                                     	vpand  xmm3,xmm3,xmm7
    22bdd7cd447f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd4484:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    22bdd7cd448a:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    22bdd7cd448f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd4494:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    22bdd7cd4499:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    22bdd7cd449d:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    22bdd7cd44a1:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    22bdd7cd44a6:	c5 d8 59 db                                     	vmulps xmm3,xmm4,xmm3
    22bdd7cd44aa:	c4 c1 59 72 d1 08                               	vpsrld xmm4,xmm9,0x8
    22bdd7cd44b0:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    22bdd7cd44b4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd44b9:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7cd44bf:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7cd44c4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd44c9:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7cd44ce:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7cd44d2:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7cd44d6:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7cd44db:	c5 f0 59 cc                                     	vmulps xmm1,xmm1,xmm4
    22bdd7cd44df:	c5 e0 58 c9                                     	vaddps xmm1,xmm3,xmm1
    22bdd7cd44e3:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    22bdd7cd44e7:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    22bdd7cd44eb:	48 8b ce                                        	mov    rcx,rsi
    22bdd7cd44ee:	e9 94 01 00 00                                  	jmp    0x22bdd7cd4687
    22bdd7cd44f3:	83 7d d8 0f                                     	cmp    DWORD PTR [rbp-0x28],0xf
    22bdd7cd44f7:	0f 84 77 00 00 00                               	je     0x22bdd7cd4574
    22bdd7cd44fd:	f6 45 d8 01                                     	test   BYTE PTR [rbp-0x28],0x1
    22bdd7cd4501:	0f 85 0f 00 00 00                               	jne    0x22bdd7cd4516
    22bdd7cd4507:	48 8b f9                                        	mov    rdi,rcx
    22bdd7cd450a:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    22bdd7cd450e:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    22bdd7cd4511:	e9 0d 00 00 00                                  	jmp    0x22bdd7cd4523
    22bdd7cd4516:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    22bdd7cd4519:	8d 3c 82                                        	lea    edi,[rdx+rax*4]
    22bdd7cd451c:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    22bdd7cd4520:	8b 3c 3e                                        	mov    edi,DWORD PTR [rsi+rdi*1]
    22bdd7cd4523:	f6 45 d8 02                                     	test   BYTE PTR [rbp-0x28],0x2
    22bdd7cd4527:	0f 85 08 00 00 00                               	jne    0x22bdd7cd4535
    22bdd7cd452d:	4c 8b c1                                        	mov    r8,rcx
    22bdd7cd4530:	e9 08 00 00 00                                  	jmp    0x22bdd7cd453d
    22bdd7cd4535:	46 8d 04 9a                                     	lea    r8d,[rdx+r11*4]
    22bdd7cd4539:	46 8b 04 06                                     	mov    r8d,DWORD PTR [rsi+r8*1]
    22bdd7cd453d:	f6 45 d8 04                                     	test   BYTE PTR [rbp-0x28],0x4
    22bdd7cd4541:	0f 85 08 00 00 00                               	jne    0x22bdd7cd454f
    22bdd7cd4547:	4c 8b c9                                        	mov    r9,rcx
    22bdd7cd454a:	e9 08 00 00 00                                  	jmp    0x22bdd7cd4557
    22bdd7cd454f:	46 8d 0c 8a                                     	lea    r9d,[rdx+r9*4]
    22bdd7cd4553:	46 8b 0c 0e                                     	mov    r9d,DWORD PTR [rsi+r9*1]
    22bdd7cd4557:	f6 45 d8 08                                     	test   BYTE PTR [rbp-0x28],0x8
    22bdd7cd455b:	0f 85 0b 00 00 00                               	jne    0x22bdd7cd456c
    22bdd7cd4561:	48 8b d9                                        	mov    rbx,rcx
    22bdd7cd4564:	48 8b ce                                        	mov    rcx,rsi
    22bdd7cd4567:	e9 2d 00 00 00                                  	jmp    0x22bdd7cd4599
    22bdd7cd456c:	48 8b ce                                        	mov    rcx,rsi
    22bdd7cd456f:	e9 1d 00 00 00                                  	jmp    0x22bdd7cd4591
    22bdd7cd4574:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    22bdd7cd4577:	42 8d 34 8a                                     	lea    esi,[rdx+r9*4]
    22bdd7cd457b:	48 8b 4d e8                                     	mov    rcx,QWORD PTR [rbp-0x18]
    22bdd7cd457f:	44 8b 0c 31                                     	mov    r9d,DWORD PTR [rcx+rsi*1]
    22bdd7cd4583:	42 8d 34 9a                                     	lea    esi,[rdx+r11*4]
    22bdd7cd4587:	44 8b 04 31                                     	mov    r8d,DWORD PTR [rcx+rsi*1]
    22bdd7cd458b:	8d 34 82                                        	lea    esi,[rdx+rax*4]
    22bdd7cd458e:	8b 3c 31                                        	mov    edi,DWORD PTR [rcx+rsi*1]
    22bdd7cd4591:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    22bdd7cd4594:	8b 34 19                                        	mov    esi,DWORD PTR [rcx+rbx*1]
    22bdd7cd4597:	8b de                                           	mov    ebx,esi
    22bdd7cd4599:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    22bdd7cd459d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7cd45a2:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    22bdd7cd45a8:	c4 c3 79 22 c1 02                               	vpinsrd xmm0,xmm0,r9d,0x2
    22bdd7cd45ae:	c4 e3 79 22 c3 03                               	vpinsrd xmm0,xmm0,ebx,0x3
    22bdd7cd45b4:	c5 f1 72 d0 18                                  	vpsrld xmm1,xmm0,0x18
    22bdd7cd45b9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd45be:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7cd45c4:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7cd45c9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd45ce:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7cd45d3:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7cd45d7:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7cd45db:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7cd45e0:	4c 8b 15 28 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc28]        # 0x22bdd7cd420f
    22bdd7cd45e7:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7cd45ec:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7cd45f0:	c5 f9 db da                                     	vpand  xmm3,xmm0,xmm2
    22bdd7cd45f4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd45f9:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    22bdd7cd45ff:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    22bdd7cd4604:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd4609:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    22bdd7cd460e:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    22bdd7cd4612:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    22bdd7cd4616:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    22bdd7cd461b:	c5 d9 72 d0 10                                  	vpsrld xmm4,xmm0,0x10
    22bdd7cd4620:	c5 d9 db e2                                     	vpand  xmm4,xmm4,xmm2
    22bdd7cd4624:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd4629:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7cd462f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7cd4634:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd4639:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7cd463e:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7cd4642:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7cd4646:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7cd464b:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    22bdd7cd4650:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    22bdd7cd4654:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd4659:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7cd465f:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7cd4664:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd4669:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7cd466e:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7cd4672:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7cd4676:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7cd467b:	c5 79 28 d3                                     	vmovapd xmm10,xmm3
    22bdd7cd467f:	c5 79 28 dc                                     	vmovapd xmm11,xmm4
    22bdd7cd4683:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    22bdd7cd4687:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    22bdd7cd4691:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cd4696:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cd469a:	c5 d0 59 d1                                     	vmulps xmm2,xmm5,xmm1
    22bdd7cd469e:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    22bdd7cd46a1:	83 e2 01                                        	and    edx,0x1
    22bdd7cd46a4:	f7 da                                           	neg    edx
    22bdd7cd46a6:	c5 f9 6e da                                     	vmovd  xmm3,edx
    22bdd7cd46aa:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    22bdd7cd46af:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    22bdd7cd46b2:	c1 e2 1e                                        	shl    edx,0x1e
    22bdd7cd46b5:	c1 fa 1f                                        	sar    edx,0x1f
    22bdd7cd46b8:	c4 e3 61 22 da 01                               	vpinsrd xmm3,xmm3,edx,0x1
    22bdd7cd46be:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    22bdd7cd46c1:	c1 e2 1d                                        	shl    edx,0x1d
    22bdd7cd46c4:	c1 fa 1f                                        	sar    edx,0x1f
    22bdd7cd46c7:	c4 e3 61 22 da 02                               	vpinsrd xmm3,xmm3,edx,0x2
    22bdd7cd46cd:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    22bdd7cd46d0:	c1 e2 1c                                        	shl    edx,0x1c
    22bdd7cd46d3:	c1 fa 1f                                        	sar    edx,0x1f
    22bdd7cd46d6:	c4 e3 61 22 da 03                               	vpinsrd xmm3,xmm3,edx,0x3
    22bdd7cd46dc:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    22bdd7cd46e0:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    22bdd7cd46e3:	c5 fa 7f 54 19 30                               	vmovdqu XMMWORD PTR [rcx+rbx*1+0x30],xmm2
    22bdd7cd46e9:	c5 a0 59 d1                                     	vmulps xmm2,xmm11,xmm1
    22bdd7cd46ed:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    22bdd7cd46f1:	c5 fa 7f 54 19 20                               	vmovdqu XMMWORD PTR [rcx+rbx*1+0x20],xmm2
    22bdd7cd46f7:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    22bdd7cd46fb:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    22bdd7cd46ff:	c5 fa 7f 44 19 10                               	vmovdqu XMMWORD PTR [rcx+rbx*1+0x10],xmm0
    22bdd7cd4705:	c5 a8 59 c1                                     	vmulps xmm0,xmm10,xmm1
    22bdd7cd4709:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    22bdd7cd470d:	c5 fa 7f 04 19                                  	vmovdqu XMMWORD PTR [rcx+rbx*1],xmm0
    22bdd7cd4712:	b8 01 00 00 00                                  	mov    eax,0x1
    22bdd7cd4717:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd471a:	5d                                              	pop    rbp
    22bdd7cd471b:	c3                                              	ret
    22bdd7cd471c:	33 c0                                           	xor    eax,eax
    22bdd7cd471e:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd4721:	5d                                              	pop    rbp
    22bdd7cd4722:	c3                                              	ret
    22bdd7cd4723:	33 c0                                           	xor    eax,eax
    22bdd7cd4725:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd4728:	5d                                              	pop    rbp
    22bdd7cd4729:	c3                                              	ret
    22bdd7cd472a:	90                                              	nop
    22bdd7cd472b:	90                                              	nop
    22bdd7cd472c:	08 00                                           	or     BYTE PTR [rax],al
    22bdd7cd472e:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd4730:	08 00                                           	or     BYTE PTR [rax],al
	...
