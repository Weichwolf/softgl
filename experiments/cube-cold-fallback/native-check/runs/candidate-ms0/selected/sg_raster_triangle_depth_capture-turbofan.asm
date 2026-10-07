
/home/cosmo/Git/softgl/build/diagnostics/cube-cold-fallback/native-check/runs/candidate-ms0/selected/sg_raster_triangle_depth_capture-turbofan.bin:     file format binary


Disassembly of section .data:

000022bdd7ce32c0 <.data>:
    22bdd7ce32c0:	55                                              	push   rbp
    22bdd7ce32c1:	48 8b ec                                        	mov    rbp,rsp
    22bdd7ce32c4:	6a 30                                           	push   0x30
    22bdd7ce32c6:	56                                              	push   rsi
    22bdd7ce32c7:	48 81 ec f0 03 00 00                            	sub    rsp,0x3f0
    22bdd7ce32ce:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7ce32d2:	48 89 95 d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],rdx
    22bdd7ce32d9:	8b f9                                           	mov    edi,ecx
    22bdd7ce32db:	48 89 8d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rcx
    22bdd7ce32e2:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    22bdd7ce32e6:	0f 86 da 95 00 00                               	jbe    0x22bdd7cec8c6
    22bdd7ce32ec:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    22bdd7ce32f0:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    22bdd7ce32f4:	4d 0b de                                        	or     r11,r14
    22bdd7ce32f7:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    22bdd7ce32fb:	45 8d bc 24 00 fe ff ff                         	lea    r15d,[r12-0x200]
    22bdd7ce3303:	45 89 7b 07                                     	mov    DWORD PTR [r11+0x7],r15d
    22bdd7ce3307:	8b cb                                           	mov    ecx,ebx
    22bdd7ce3309:	c4 c1 7a 6f 74 08 10                            	vmovdqu xmm6,XMMWORD PTR [r8+rcx*1+0x10]
    22bdd7ce3310:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    22bdd7ce331a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ce331f:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ce3323:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    22bdd7ce3327:	49 ba 40 d9 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d940
    22bdd7ce3331:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7ce3337:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    22bdd7ce333c:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7ce3342:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    22bdd7ce3347:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    22bdd7ce334c:	4c 89 a5 c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],r12
    22bdd7ce3353:	44 8b e2                                        	mov    r12d,edx
    22bdd7ce3356:	c4 01 7a 6f 4c 20 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x10]
    22bdd7ce335d:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    22bdd7ce3361:	4c 8b 15 c1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc1]        # 0x22bdd7ce3329
    22bdd7ce3368:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    22bdd7ce336e:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    22bdd7ce3373:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    22bdd7ce3379:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    22bdd7ce337e:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    22bdd7ce3383:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    22bdd7ce3388:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    22bdd7ce338d:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    22bdd7ce3393:	8b f7                                           	mov    esi,edi
    22bdd7ce3395:	c4 41 7a 6f 64 30 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x10]
    22bdd7ce339c:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    22bdd7ce33a0:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x22bdd7ce3329
    22bdd7ce33a7:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    22bdd7ce33ad:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    22bdd7ce33b2:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    22bdd7ce33b8:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    22bdd7ce33bd:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    22bdd7ce33c2:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    22bdd7ce33c7:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    22bdd7ce33cc:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    22bdd7ce33d2:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    22bdd7ce33d6:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    22bdd7ce33db:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    22bdd7ce33e0:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    22bdd7ce33e4:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    22bdd7ce33ea:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    22bdd7ce33ee:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    22bdd7ce33f3:	c4 e3 f9 16 d2 00                               	vpextrq rdx,xmm2,0x0
    22bdd7ce33f9:	c4 e3 f9 16 d7 01                               	vpextrq rdi,xmm2,0x1
    22bdd7ce33ff:	48 2b d7                                        	sub    rdx,rdi
    22bdd7ce3402:	48 85 d2                                        	test   rdx,rdx
    22bdd7ce3405:	0f 8e 8a 94 00 00                               	jle    0x22bdd7cec895
    22bdd7ce340b:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    22bdd7ce3410:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    22bdd7ce3415:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    22bdd7ce341b:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    22bdd7ce3425:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7ce342a:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7ce342e:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    22bdd7ce3432:	8d 78 04                                        	lea    edi,[rax+0x4]
    22bdd7ce3435:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    22bdd7ce343a:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    22bdd7ce343f:	c4 c3 59 22 24 38 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rdi*1],0x1
    22bdd7ce3446:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    22bdd7ce344b:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    22bdd7ce344f:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    22bdd7ce3454:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    22bdd7ce3459:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    22bdd7ce345e:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    22bdd7ce3463:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    22bdd7ce3467:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    22bdd7ce346b:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    22bdd7ce3475:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7ce347a:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7ce347e:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    22bdd7ce3482:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    22bdd7ce3486:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    22bdd7ce348b:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    22bdd7ce3491:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    22bdd7ce3496:	8b f8                                           	mov    edi,eax
    22bdd7ce3498:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    22bdd7ce349d:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    22bdd7ce34a1:	c5 f8 11 85 80 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x280],xmm0
    22bdd7ce34a9:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    22bdd7ce34b0:	48 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdx
    22bdd7ce34b7:	45 85 c9                                        	test   r9d,r9d
    22bdd7ce34ba:	0f 84 3a 00 00 00                               	je     0x22bdd7ce34fa
    22bdd7ce34c0:	8d 58 50                                        	lea    ebx,[rax+0x50]
    22bdd7ce34c3:	49 8d 50 48                                     	lea    rdx,[r8+0x48]
    22bdd7ce34c7:	c5 fb 10 24 3a                                  	vmovsd xmm4,QWORD PTR [rdx+rdi*1]
    22bdd7ce34cc:	c4 c3 59 22 2c 18 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+rbx*1],0x0
    22bdd7ce34d3:	8d 58 54                                        	lea    ebx,[rax+0x54]
    22bdd7ce34d6:	c4 c3 59 22 04 18 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rbx*1],0x1
    22bdd7ce34dd:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    22bdd7ce34e1:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    22bdd7ce34e6:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    22bdd7ce34eb:	48 8b 95 70 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x190]
    22bdd7ce34f2:	c5 f8 10 85 80 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x280]
    22bdd7ce34fa:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    22bdd7ce34fe:	c4 e3 f9 16 e3 00                               	vpextrq rbx,xmm4,0x0
    22bdd7ce3504:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    22bdd7ce3509:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    22bdd7ce350f:	48 23 c3                                        	and    rax,rbx
    22bdd7ce3512:	a8 01                                           	test   al,0x1
    22bdd7ce3514:	0f 85 22 00 00 00                               	jne    0x22bdd7ce353c
    22bdd7ce351a:	b8 01 00 00 00                                  	mov    eax,0x1
    22bdd7ce351f:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    22bdd7ce3524:	45 85 c9                                        	test   r9d,r9d
    22bdd7ce3527:	0f 45 c7                                        	cmovne eax,edi
    22bdd7ce352a:	41 8d bf 00 02 00 00                            	lea    edi,[r15+0x200]
    22bdd7ce3531:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    22bdd7ce3535:	48 8b e5                                        	mov    rsp,rbp
    22bdd7ce3538:	5d                                              	pop    rbp
    22bdd7ce3539:	c2 10 00                                        	ret    0x10
    22bdd7ce353c:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    22bdd7ce3542:	c4 63 79 16 eb 01                               	vpextrd ebx,xmm13,0x1
    22bdd7ce3548:	c4 43 79 16 c1 01                               	vpextrd r9d,xmm8,0x1
    22bdd7ce354e:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    22bdd7ce3552:	45 8b 9c 38 e0 00 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0xe0]
    22bdd7ce355a:	4c 89 7d e0                                     	mov    QWORD PTR [rbp-0x20],r15
    22bdd7ce355e:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    22bdd7ce3562:	48 89 7d c8                                     	mov    QWORD PTR [rbp-0x38],rdi
    22bdd7ce3566:	48 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],rcx
    22bdd7ce356d:	48 89 b5 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rsi
    22bdd7ce3574:	4c 89 a5 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],r12
    22bdd7ce357b:	c5 f8 11 bd 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm7
    22bdd7ce3583:	c5 f8 11 95 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm2
    22bdd7ce358b:	48 89 85 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rax
    22bdd7ce3592:	48 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rbx
    22bdd7ce3599:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    22bdd7ce359d:	4c 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],r11
    22bdd7ce35a1:	45 85 db                                        	test   r11d,r11d
    22bdd7ce35a4:	0f 85 0d 00 00 00                               	jne    0x22bdd7ce35b7
    22bdd7ce35aa:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    22bdd7ce35ae:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    22bdd7ce35b2:	e9 43 01 00 00                                  	jmp    0x22bdd7ce36fa
    22bdd7ce35b7:	c4 c1 7a 10 ac 38 d8 00 00 00                   	vmovss xmm5,DWORD PTR [r8+rdi*1+0xd8]
    22bdd7ce35c1:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7ce35c5:	c5 f8 2e e5                                     	vucomiss xmm4,xmm5
    22bdd7ce35c9:	0f 8a 1c 00 00 00                               	jp     0x22bdd7ce35eb
    22bdd7ce35cf:	0f 85 16 00 00 00                               	jne    0x22bdd7ce35eb
    22bdd7ce35d5:	c4 c1 7a 10 84 38 dc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rdi*1+0xdc]
    22bdd7ce35df:	c5 f8 2e e0                                     	vucomiss xmm4,xmm0
    22bdd7ce35e3:	7a 06                                           	jp     0x22bdd7ce35eb
    22bdd7ce35e5:	0f 84 0b 01 00 00                               	je     0x22bdd7ce36f6
    22bdd7ce35eb:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    22bdd7ce35f0:	c4 c1 78 28 c4                                  	vmovaps xmm0,xmm12
    22bdd7ce35f5:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    22bdd7ce35fa:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    22bdd7ce35fe:	c4 c1 7a 59 f9                                  	vmulss xmm7,xmm0,xmm9
    22bdd7ce3603:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    22bdd7ce3608:	c4 c1 4a 59 d4                                  	vmulss xmm2,xmm6,xmm12
    22bdd7ce360d:	c5 c2 5c fa                                     	vsubss xmm7,xmm7,xmm2
    22bdd7ce3611:	c5 f8 2e e7                                     	vucomiss xmm4,xmm7
    22bdd7ce3615:	7a 06                                           	jp     0x22bdd7ce361d
    22bdd7ce3617:	0f 84 d9 00 00 00                               	je     0x22bdd7ce36f6
    22bdd7ce361d:	c4 c1 7a 10 54 30 18                            	vmovss xmm2,DWORD PTR [r8+rsi*1+0x18]
    22bdd7ce3624:	c5 78 11 9d 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm11
    22bdd7ce362c:	c4 01 7a 10 5c 20 18                            	vmovss xmm11,DWORD PTR [r8+r12*1+0x18]
    22bdd7ce3633:	c4 c1 6a 5c d3                                  	vsubss xmm2,xmm2,xmm11
    22bdd7ce3638:	c4 41 6a 59 c9                                  	vmulss xmm9,xmm2,xmm9
    22bdd7ce363d:	c5 78 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm14
    22bdd7ce3645:	c4 41 7a 10 74 08 18                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x18]
    22bdd7ce364c:	c4 41 0a 5c db                                  	vsubss xmm11,xmm14,xmm11
    22bdd7ce3651:	c4 41 1a 59 e3                                  	vmulss xmm12,xmm12,xmm11
    22bdd7ce3656:	c4 41 32 5c cc                                  	vsubss xmm9,xmm9,xmm12
    22bdd7ce365b:	c5 32 5e cf                                     	vdivss xmm9,xmm9,xmm7
    22bdd7ce365f:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    22bdd7ce3664:	49 ba 60 d8 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d860
    22bdd7ce366e:	c4 41 30 57 22                                  	vxorps xmm12,xmm9,XMMWORD PTR [r10]
    22bdd7ce3673:	c4 c1 78 2e e1                                  	vucomiss xmm4,xmm9
    22bdd7ce3678:	0f 87 05 00 00 00                               	ja     0x22bdd7ce3683
    22bdd7ce367e:	c4 41 79 28 e1                                  	vmovapd xmm12,xmm9
    22bdd7ce3683:	c5 a2 59 c0                                     	vmulss xmm0,xmm11,xmm0
    22bdd7ce3687:	c5 ca 59 f2                                     	vmulss xmm6,xmm6,xmm2
    22bdd7ce368b:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7ce368f:	c5 fa 5e c7                                     	vdivss xmm0,xmm0,xmm7
    22bdd7ce3693:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    22bdd7ce3697:	4c 8b 15 c8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc8]        # 0x22bdd7ce3666
    22bdd7ce369e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce36a3:	c5 f8 2e e0                                     	vucomiss xmm4,xmm0
    22bdd7ce36a7:	0f 87 04 00 00 00                               	ja     0x22bdd7ce36b1
    22bdd7ce36ad:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ce36b1:	c5 78 2e e6                                     	vucomiss xmm12,xmm6
    22bdd7ce36b5:	0f 87 04 00 00 00                               	ja     0x22bdd7ce36bf
    22bdd7ce36bb:	c5 79 28 e6                                     	vmovapd xmm12,xmm6
    22bdd7ce36bf:	c4 c1 52 59 c4                                  	vmulss xmm0,xmm5,xmm12
    22bdd7ce36c4:	c4 c1 7a 10 b4 38 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+rdi*1+0xdc]
    22bdd7ce36ce:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    22bdd7ce36d4:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    22bdd7ce36d9:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ce36dd:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce36e1:	c5 78 10 b5 10 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xf0]
    22bdd7ce36e9:	c5 78 10 9d 40 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xc0]
    22bdd7ce36f1:	e9 04 00 00 00                                  	jmp    0x22bdd7ce36fa
    22bdd7ce36f6:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    22bdd7ce36fa:	c4 c1 79 7e df                                  	vmovd  r15d,xmm3
    22bdd7ce36ff:	4c 89 bd 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],r15
    22bdd7ce3706:	c4 c3 79 16 df 01                               	vpextrd r15d,xmm3,0x1
    22bdd7ce370c:	4c 89 bd e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r15
    22bdd7ce3713:	c4 41 79 7e d7                                  	vmovd  r15d,xmm10
    22bdd7ce3718:	c5 79 7e ea                                     	vmovd  edx,xmm13
    22bdd7ce371c:	c5 79 7e c1                                     	vmovd  ecx,xmm8
    22bdd7ce3720:	41 2b c1                                        	sub    eax,r9d
    22bdd7ce3723:	4c 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],r15
    22bdd7ce3727:	45 8b f9                                        	mov    r15d,r9d
    22bdd7ce372a:	44 2b fb                                        	sub    r15d,ebx
    22bdd7ce372d:	41 8b 9c 38 a4 00 00 00                         	mov    ebx,DWORD PTR [r8+rdi*1+0xa4]
    22bdd7ce3735:	c5 fb 11 85 78 fc ff ff                         	vmovsd QWORD PTR [rbp-0x388],xmm0
    22bdd7ce373d:	48 89 55 80                                     	mov    QWORD PTR [rbp-0x80],rdx
    22bdd7ce3741:	48 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rax
    22bdd7ce3748:	4c 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r15
    22bdd7ce374f:	85 db                                           	test   ebx,ebx
    22bdd7ce3751:	0f 85 a6 00 00 00                               	jne    0x22bdd7ce37fd
    22bdd7ce3757:	45 8b 8c 38 30 05 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x530]
    22bdd7ce375f:	41 83 bc 38 30 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x530],0x0
    22bdd7ce3768:	0f 85 8f 00 00 00                               	jne    0x22bdd7ce37fd
    22bdd7ce376e:	45 8b 8c 38 c8 3c 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3cc8]
    22bdd7ce3776:	41 83 bc 38 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3cc8],0x0
    22bdd7ce377f:	0f 85 78 00 00 00                               	jne    0x22bdd7ce37fd
    22bdd7ce3785:	45 8b 8c 38 70 37 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3770]
    22bdd7ce378d:	41 83 bc 38 70 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3770],0x0
    22bdd7ce3796:	0f 85 61 00 00 00                               	jne    0x22bdd7ce37fd
    22bdd7ce379c:	45 8b 8c 38 74 37 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3774]
    22bdd7ce37a4:	41 83 bc 38 74 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3774],0x0
    22bdd7ce37ad:	0f 85 4a 00 00 00                               	jne    0x22bdd7ce37fd
    22bdd7ce37b3:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    22bdd7ce37b7:	45 8b d9                                        	mov    r11d,r9d
    22bdd7ce37ba:	43 8b b4 18 30 01 00 00                         	mov    esi,DWORD PTR [r8+r11*1+0x130]
    22bdd7ce37c2:	43 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0x130],0x0
    22bdd7ce37cb:	0f 84 16 00 00 00                               	je     0x22bdd7ce37e7
    22bdd7ce37d1:	47 8b 9c 18 34 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x134]
    22bdd7ce37d9:	41 83 eb 01                                     	sub    r11d,0x1
    22bdd7ce37dd:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ce37e1:	0f 87 0b 00 00 00                               	ja     0x22bdd7ce37f2
    22bdd7ce37e7:	41 b9 01 00 00 00                               	mov    r9d,0x1
    22bdd7ce37ed:	e9 0e 00 00 00                                  	jmp    0x22bdd7ce3800
    22bdd7ce37f2:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce37f5:	4d 8b cb                                        	mov    r9,r11
    22bdd7ce37f8:	e9 03 00 00 00                                  	jmp    0x22bdd7ce3800
    22bdd7ce37fd:	45 33 c9                                        	xor    r9d,r9d
    22bdd7ce3800:	4c 89 8d b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r9
    22bdd7ce3807:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    22bdd7ce380e:	41 c1 e1 08                                     	shl    r9d,0x8
    22bdd7ce3812:	44 8b 9d e0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x320]
    22bdd7ce3819:	41 c1 e3 08                                     	shl    r11d,0x8
    22bdd7ce381d:	48 63 f0                                        	movsxd rsi,eax
    22bdd7ce3820:	48 89 75 a8                                     	mov    QWORD PTR [rbp-0x58],rsi
    22bdd7ce3824:	8b 75 90                                        	mov    esi,DWORD PTR [rbp-0x70]
    22bdd7ce3827:	2b f1                                           	sub    esi,ecx
    22bdd7ce3829:	49 63 c7                                        	movsxd rax,r15d
    22bdd7ce382c:	48 89 45 c0                                     	mov    QWORD PTR [rbp-0x40],rax
    22bdd7ce3830:	8b c1                                           	mov    eax,ecx
    22bdd7ce3832:	2b c2                                           	sub    eax,edx
    22bdd7ce3834:	c4 c3 f9 16 cf 01                               	vpextrq r15,xmm1,0x1
    22bdd7ce383a:	4c 89 bd 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],r15
    22bdd7ce3841:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    22bdd7ce3845:	43 8b 94 38 38 01 00 00                         	mov    edx,DWORD PTR [r8+r15*1+0x138]
    22bdd7ce384d:	48 89 b5 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rsi
    22bdd7ce3854:	48 89 85 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rax
    22bdd7ce385b:	4c 89 bd a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r15
    22bdd7ce3862:	43 83 bc 38 38 01 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0x138],0x0
    22bdd7ce386b:	0f 85 0e 00 00 00                               	jne    0x22bdd7ce387f
    22bdd7ce3871:	33 d2                                           	xor    edx,edx
    22bdd7ce3873:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    22bdd7ce387a:	e9 53 01 00 00                                  	jmp    0x22bdd7ce39d2
    22bdd7ce387f:	41 8b 94 38 c8 3c 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3cc8]
    22bdd7ce3887:	41 83 bc 38 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3cc8],0x0
    22bdd7ce3890:	75 df                                           	jne    0x22bdd7ce3871
    22bdd7ce3892:	41 8b 94 38 ec 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0xec]
    22bdd7ce389a:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    22bdd7ce38a3:	75 cc                                           	jne    0x22bdd7ce3871
    22bdd7ce38a5:	41 8b 54 38 14                                  	mov    edx,DWORD PTR [r8+rdi*1+0x14]
    22bdd7ce38aa:	41 83 7c 38 14 00                               	cmp    DWORD PTR [r8+rdi*1+0x14],0x0
    22bdd7ce38b0:	0f 85 6c 00 00 00                               	jne    0x22bdd7ce3922
    22bdd7ce38b6:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    22bdd7ce38be:	0b d3                                           	or     edx,ebx
    22bdd7ce38c0:	0f 85 5c 00 00 00                               	jne    0x22bdd7ce3922
    22bdd7ce38c6:	41 8b 94 38 30 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x530]
    22bdd7ce38ce:	41 83 bc 38 30 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x530],0x0
    22bdd7ce38d7:	0f 85 45 00 00 00                               	jne    0x22bdd7ce3922
    22bdd7ce38dd:	41 8b 94 38 70 37 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3770]
    22bdd7ce38e5:	41 83 bc 38 70 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3770],0x0
    22bdd7ce38ee:	0f 85 2e 00 00 00                               	jne    0x22bdd7ce3922
    22bdd7ce38f4:	41 8b 94 38 74 37 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3774]
    22bdd7ce38fc:	41 83 bc 38 74 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3774],0x0
    22bdd7ce3905:	0f 85 17 00 00 00                               	jne    0x22bdd7ce3922
    22bdd7ce390b:	41 8b 94 38 20 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x520]
    22bdd7ce3913:	41 83 bc 38 20 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x520],0x0
    22bdd7ce391c:	0f 85 12 00 00 00                               	jne    0x22bdd7ce3934
    22bdd7ce3922:	33 d2                                           	xor    edx,edx
    22bdd7ce3924:	48 c7 85 30 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x3d0],0x1
    22bdd7ce392f:	e9 9e 00 00 00                                  	jmp    0x22bdd7ce39d2
    22bdd7ce3934:	41 8b 94 38 24 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x524]
    22bdd7ce393c:	41 83 bc 38 24 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x524],0x0
    22bdd7ce3945:	74 db                                           	je     0x22bdd7ce3922
    22bdd7ce3947:	41 8b 94 38 28 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x528]
    22bdd7ce394f:	41 83 bc 38 28 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x528],0x0
    22bdd7ce3958:	74 c8                                           	je     0x22bdd7ce3922
    22bdd7ce395a:	41 8b 94 38 2c 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x52c]
    22bdd7ce3962:	41 83 bc 38 2c 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x52c],0x0
    22bdd7ce396b:	74 b5                                           	je     0x22bdd7ce3922
    22bdd7ce396d:	41 8b 54 38 74                                  	mov    edx,DWORD PTR [r8+rdi*1+0x74]
    22bdd7ce3972:	41 83 7c 38 74 00                               	cmp    DWORD PTR [r8+rdi*1+0x74],0x0
    22bdd7ce3978:	0f 85 11 00 00 00                               	jne    0x22bdd7ce398f
    22bdd7ce397e:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ce3983:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    22bdd7ce398a:	e9 43 00 00 00                                  	jmp    0x22bdd7ce39d2
    22bdd7ce398f:	41 8b 54 38 78                                  	mov    edx,DWORD PTR [r8+rdi*1+0x78]
    22bdd7ce3994:	81 fa 02 03 00 00                               	cmp    edx,0x302
    22bdd7ce399a:	0f 84 09 00 00 00                               	je     0x22bdd7ce39a9
    22bdd7ce39a0:	83 fa 01                                        	cmp    edx,0x1
    22bdd7ce39a3:	0f 85 79 ff ff ff                               	jne    0x22bdd7ce3922
    22bdd7ce39a9:	41 8b 54 38 7c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x7c]
    22bdd7ce39ae:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce39b1:	83 fa 01                                        	cmp    edx,0x1
    22bdd7ce39b4:	41 0f 94 c7                                     	sete   r15b
    22bdd7ce39b8:	81 fa 03 03 00 00                               	cmp    edx,0x303
    22bdd7ce39be:	0f 94 c2                                        	sete   dl
    22bdd7ce39c1:	0f b6 d2                                        	movzx  edx,dl
    22bdd7ce39c4:	41 0b d7                                        	or     edx,r15d
    22bdd7ce39c7:	48 c7 85 30 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x3d0],0x1
    22bdd7ce39d2:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    22bdd7ce39d9:	41 81 cb 80 00 00 00                            	or     r11d,0x80
    22bdd7ce39e0:	48 89 95 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rdx
    22bdd7ce39e7:	48 63 d6                                        	movsxd rdx,esi
    22bdd7ce39ea:	4c 63 f8                                        	movsxd r15,eax
    22bdd7ce39ed:	4c 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],r15
    22bdd7ce39f1:	c4 c3 f9 16 cf 00                               	vpextrq r15,xmm1,0x0
    22bdd7ce39f7:	4c 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],r15
    22bdd7ce39fe:	4c 8b bd 88 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x178]
    22bdd7ce3a05:	49 c1 e7 08                                     	shl    r15,0x8
    22bdd7ce3a09:	4c 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r15
    22bdd7ce3a10:	4c 8b 7d a8                                     	mov    r15,QWORD PTR [rbp-0x58]
    22bdd7ce3a14:	49 c1 e7 08                                     	shl    r15,0x8
    22bdd7ce3a18:	4c 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],r15
    22bdd7ce3a1f:	4c 8b 7d c0                                     	mov    r15,QWORD PTR [rbp-0x40]
    22bdd7ce3a23:	49 c1 e7 08                                     	shl    r15,0x8
    22bdd7ce3a27:	c4 c1 79 28 f6                                  	vmovapd xmm6,xmm14
    22bdd7ce3a2c:	4c 89 bd 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r15
    22bdd7ce3a33:	c4 c1 79 7e f7                                  	vmovd  r15d,xmm6
    22bdd7ce3a38:	48 89 95 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rdx
    22bdd7ce3a3f:	c4 e3 79 16 f2 01                               	vpextrd edx,xmm6,0x1
    22bdd7ce3a45:	c4 81 7a 10 74 20 18                            	vmovss xmm6,DWORD PTR [r8+r12*1+0x18]
    22bdd7ce3a4c:	4c 8b a5 48 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1b8]
    22bdd7ce3a53:	c4 81 7a 10 7c 20 18                            	vmovss xmm7,DWORD PTR [r8+r12*1+0x18]
    22bdd7ce3a5a:	45 33 e4                                        	xor    r12d,r12d
    22bdd7ce3a5d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce3a61:	41 0f 97 c4                                     	seta   r12b
    22bdd7ce3a65:	4c 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r15
    22bdd7ce3a6c:	48 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rdx
    22bdd7ce3a73:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    22bdd7ce3a77:	0b d3                                           	or     edx,ebx
    22bdd7ce3a79:	0f 85 11 00 00 00                               	jne    0x22bdd7ce3a90
    22bdd7ce3a7f:	41 8b 5c 38 68                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x68]
    22bdd7ce3a84:	41 83 7c 38 68 00                               	cmp    DWORD PTR [r8+rdi*1+0x68],0x0
    22bdd7ce3a8a:	0f 85 0a 00 00 00                               	jne    0x22bdd7ce3a9a
    22bdd7ce3a90:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce3a95:	e9 17 00 00 00                                  	jmp    0x22bdd7ce3ab1
    22bdd7ce3a9a:	41 8b 5c 38 6c                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x6c]
    22bdd7ce3a9f:	81 eb 01 02 00 00                               	sub    ebx,0x201
    22bdd7ce3aa5:	f7 c3 fd ff ff ff                               	test   ebx,0xfffffffd
    22bdd7ce3aab:	0f 95 c3                                        	setne  bl
    22bdd7ce3aae:	0f b6 db                                        	movzx  ebx,bl
    22bdd7ce3ab1:	41 8b d1                                        	mov    edx,r9d
    22bdd7ce3ab4:	2b d1                                           	sub    edx,ecx
    22bdd7ce3ab6:	41 8b fb                                        	mov    edi,r11d
    22bdd7ce3ab9:	2b 7d 88                                        	sub    edi,DWORD PTR [rbp-0x78]
    22bdd7ce3abc:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    22bdd7ce3ac3:	41 8b f9                                        	mov    edi,r9d
    22bdd7ce3ac6:	2b 7d 80                                        	sub    edi,DWORD PTR [rbp-0x80]
    22bdd7ce3ac9:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    22bdd7ce3acd:	41 8b fb                                        	mov    edi,r11d
    22bdd7ce3ad0:	2b bd 20 ff ff ff                               	sub    edi,DWORD PTR [rbp-0xe0]
    22bdd7ce3ad6:	44 2b 4d 90                                     	sub    r9d,DWORD PTR [rbp-0x70]
    22bdd7ce3ada:	44 2b 9d 50 fe ff ff                            	sub    r11d,DWORD PTR [rbp-0x1b0]
    22bdd7ce3ae1:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    22bdd7ce3ae5:	4c 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],r11
    22bdd7ce3ae9:	45 85 e4                                        	test   r12d,r12d
    22bdd7ce3aec:	0f 85 09 00 00 00                               	jne    0x22bdd7ce3afb
    22bdd7ce3af2:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7ce3af6:	e9 04 00 00 00                                  	jmp    0x22bdd7ce3aff
    22bdd7ce3afb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    22bdd7ce3aff:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    22bdd7ce3b06:	c4 01 7a 10 4c 20 18                            	vmovss xmm9,DWORD PTR [r8+r12*1+0x18]
    22bdd7ce3b0d:	44 8b 85 50 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1b0]
    22bdd7ce3b14:	45 33 e4                                        	xor    r12d,r12d
    22bdd7ce3b17:	44 3b 85 20 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xe0]
    22bdd7ce3b1e:	41 0f 95 c4                                     	setne  r12b
    22bdd7ce3b22:	4c 89 a5 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r12
    22bdd7ce3b29:	44 8b 65 90                                     	mov    r12d,DWORD PTR [rbp-0x70]
    22bdd7ce3b2d:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce3b30:	44 3b 65 80                                     	cmp    r12d,DWORD PTR [rbp-0x80]
    22bdd7ce3b34:	41 0f 9e c3                                     	setle  r11b
    22bdd7ce3b38:	4c 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r11
    22bdd7ce3b3f:	44 8b 5d 88                                     	mov    r11d,DWORD PTR [rbp-0x78]
    22bdd7ce3b43:	45 33 c9                                        	xor    r9d,r9d
    22bdd7ce3b46:	45 3b d8                                        	cmp    r11d,r8d
    22bdd7ce3b49:	41 0f 95 c1                                     	setne  r9b
    22bdd7ce3b4d:	41 3b cc                                        	cmp    ecx,r12d
    22bdd7ce3b50:	41 0f 9e c4                                     	setle  r12b
    22bdd7ce3b54:	45 0f b6 e4                                     	movzx  r12d,r12b
    22bdd7ce3b58:	4c 89 65 90                                     	mov    QWORD PTR [rbp-0x70],r12
    22bdd7ce3b5c:	45 33 e4                                        	xor    r12d,r12d
    22bdd7ce3b5f:	44 3b 9d 20 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0xe0]
    22bdd7ce3b66:	41 0f 95 c4                                     	setne  r12b
    22bdd7ce3b6a:	4c 89 a5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r12
    22bdd7ce3b71:	44 8b 65 80                                     	mov    r12d,DWORD PTR [rbp-0x80]
    22bdd7ce3b75:	44 3b e1                                        	cmp    r12d,ecx
    22bdd7ce3b78:	41 0f 9e c4                                     	setle  r12b
    22bdd7ce3b7c:	45 0f b6 e4                                     	movzx  r12d,r12b
    22bdd7ce3b80:	48 8b 8d a0 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x160]
    22bdd7ce3b87:	48 c1 e1 08                                     	shl    rcx,0x8
    22bdd7ce3b8b:	48 89 8d e8 fc ff ff                            	mov    QWORD PTR [rbp-0x318],rcx
    22bdd7ce3b92:	48 8b 8d 00 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x300]
    22bdd7ce3b99:	48 f7 d9                                        	neg    rcx
    22bdd7ce3b9c:	48 89 8d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rcx
    22bdd7ce3ba3:	48 8b 8d 78 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x188]
    22bdd7ce3baa:	48 c1 e1 08                                     	shl    rcx,0x8
    22bdd7ce3bae:	48 89 8d a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rcx
    22bdd7ce3bb5:	48 8b 4d b8                                     	mov    rcx,QWORD PTR [rbp-0x48]
    22bdd7ce3bb9:	48 c1 e1 08                                     	shl    rcx,0x8
    22bdd7ce3bbd:	48 89 8d 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rcx
    22bdd7ce3bc4:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    22bdd7ce3bcb:	48 f7 d9                                        	neg    rcx
    22bdd7ce3bce:	48 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rcx
    22bdd7ce3bd5:	48 8b 8d 18 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2e8]
    22bdd7ce3bdc:	48 f7 d9                                        	neg    rcx
    22bdd7ce3bdf:	48 89 8d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rcx
    22bdd7ce3be6:	33 c9                                           	xor    ecx,ecx
    22bdd7ce3be8:	85 f6                                           	test   esi,esi
    22bdd7ce3bea:	0f 9c c1                                        	setl   cl
    22bdd7ce3bed:	33 f6                                           	xor    esi,esi
    22bdd7ce3bef:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    22bdd7ce3bf6:	40 0f 9f c6                                     	setg   sil
    22bdd7ce3bfa:	48 89 75 80                                     	mov    QWORD PTR [rbp-0x80],rsi
    22bdd7ce3bfe:	33 f6                                           	xor    esi,esi
    22bdd7ce3c00:	85 c0                                           	test   eax,eax
    22bdd7ce3c02:	40 0f 9c c6                                     	setl   sil
    22bdd7ce3c06:	33 c0                                           	xor    eax,eax
    22bdd7ce3c08:	83 bd 68 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x98],0x0
    22bdd7ce3c0f:	0f 9f c0                                        	setg   al
    22bdd7ce3c12:	48 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rax
    22bdd7ce3c19:	33 c0                                           	xor    eax,eax
    22bdd7ce3c1b:	45 85 ff                                        	test   r15d,r15d
    22bdd7ce3c1e:	0f 9c c0                                        	setl   al
    22bdd7ce3c21:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce3c24:	83 bd 50 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xb0],0x0
    22bdd7ce3c2b:	41 0f 9f c7                                     	setg   r15b
    22bdd7ce3c2f:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    22bdd7ce3c36:	c4 c1 79 7e f7                                  	vmovd  r15d,xmm6
    22bdd7ce3c3b:	41 81 e7 ff ff ff 7f                            	and    r15d,0x7fffffff
    22bdd7ce3c42:	41 81 ff ff ff 7f 7f                            	cmp    r15d,0x7f7fffff
    22bdd7ce3c49:	0f 87 25 00 00 00                               	ja     0x22bdd7ce3c74
    22bdd7ce3c4f:	c5 f8 2e f4                                     	vucomiss xmm6,xmm4
    22bdd7ce3c53:	0f 82 1b 00 00 00                               	jb     0x22bdd7ce3c74
    22bdd7ce3c59:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7ce3c5e:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7ce3c64:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7ce3c6a:	c5 78 2e d6                                     	vucomiss xmm10,xmm6
    22bdd7ce3c6e:	0f 83 05 00 00 00                               	jae    0x22bdd7ce3c79
    22bdd7ce3c74:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce3c79:	4c 63 fa                                        	movsxd r15,edx
    22bdd7ce3c7c:	48 63 95 30 ff ff ff                            	movsxd rdx,DWORD PTR [rbp-0xd0]
    22bdd7ce3c83:	48 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdx
    22bdd7ce3c8a:	48 63 55 98                                     	movsxd rdx,DWORD PTR [rbp-0x68]
    22bdd7ce3c8e:	48 63 ff                                        	movsxd rdi,edi
    22bdd7ce3c91:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    22bdd7ce3c95:	48 63 7d a0                                     	movsxd rdi,DWORD PTR [rbp-0x60]
    22bdd7ce3c99:	48 89 7d a0                                     	mov    QWORD PTR [rbp-0x60],rdi
    22bdd7ce3c9d:	48 63 7d b0                                     	movsxd rdi,DWORD PTR [rbp-0x50]
    22bdd7ce3ca1:	48 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],rdi
    22bdd7ce3ca5:	33 ff                                           	xor    edi,edi
    22bdd7ce3ca7:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    22bdd7ce3cac:	40 0f 97 c7                                     	seta   dil
    22bdd7ce3cb0:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    22bdd7ce3cb7:	48 8b bd 00 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x100]
    22bdd7ce3cbe:	0b bd f8 fd ff ff                               	or     edi,DWORD PTR [rbp-0x208]
    22bdd7ce3cc4:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    22bdd7ce3ccb:	33 ff                                           	xor    edi,edi
    22bdd7ce3ccd:	44 3b 85 20 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xe0]
    22bdd7ce3cd4:	40 0f 9e c7                                     	setle  dil
    22bdd7ce3cd8:	48 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rdi
    22bdd7ce3cdf:	48 8b 7d 90                                     	mov    rdi,QWORD PTR [rbp-0x70]
    22bdd7ce3ce3:	41 0b f9                                        	or     edi,r9d
    22bdd7ce3ce6:	45 3b d8                                        	cmp    r11d,r8d
    22bdd7ce3ce9:	41 0f 9e c0                                     	setle  r8b
    22bdd7ce3ced:	45 0f b6 c0                                     	movzx  r8d,r8b
    22bdd7ce3cf1:	44 0b a5 38 ff ff ff                            	or     r12d,DWORD PTR [rbp-0xc8]
    22bdd7ce3cf8:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    22bdd7ce3cff:	45 3b cb                                        	cmp    r9d,r11d
    22bdd7ce3d02:	41 0f 9e c3                                     	setle  r11b
    22bdd7ce3d06:	45 0f b6 db                                     	movzx  r11d,r11b
    22bdd7ce3d0a:	4c 8b 95 70 fe ff ff                            	mov    r10,QWORD PTR [rbp-0x190]
    22bdd7ce3d11:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ce3d16:	4d 85 d2                                        	test   r10,r10
    22bdd7ce3d19:	79 12                                           	jns    0x22bdd7ce3d2d
    22bdd7ce3d1b:	49 d1 ea                                        	shr    r10,1
    22bdd7ce3d1e:	73 04                                           	jae    0x22bdd7ce3d24
    22bdd7ce3d20:	49 83 ca 01                                     	or     r10,0x1
    22bdd7ce3d24:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ce3d29:	c5 ca 58 f6                                     	vaddss xmm6,xmm6,xmm6
    22bdd7ce3d2d:	4c 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r11
    22bdd7ce3d34:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce3d37:	85 c9                                           	test   ecx,ecx
    22bdd7ce3d39:	4c 0f 45 9d a0 fd ff ff                         	cmovne r11,QWORD PTR [rbp-0x260]
    22bdd7ce3d41:	33 c9                                           	xor    ecx,ecx
    22bdd7ce3d43:	83 7d 80 00                                     	cmp    DWORD PTR [rbp-0x80],0x0
    22bdd7ce3d47:	48 0f 45 8d 78 ff ff ff                         	cmovne rcx,QWORD PTR [rbp-0x88]
    22bdd7ce3d4f:	45 33 c9                                        	xor    r9d,r9d
    22bdd7ce3d52:	48 89 8d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rcx
    22bdd7ce3d59:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    22bdd7ce3d60:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
    22bdd7ce3d67:	49 0f 4c c9                                     	cmovl  rcx,r9
    22bdd7ce3d6b:	48 89 8d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rcx
    22bdd7ce3d72:	48 8b 8d 78 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x88]
    22bdd7ce3d79:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    22bdd7ce3d80:	49 0f 4f c9                                     	cmovg  rcx,r9
    22bdd7ce3d84:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    22bdd7ce3d8b:	49 8b c9                                        	mov    rcx,r9
    22bdd7ce3d8e:	85 f6                                           	test   esi,esi
    22bdd7ce3d90:	48 0f 45 8d 30 fd ff ff                         	cmovne rcx,QWORD PTR [rbp-0x2d0]
    22bdd7ce3d98:	49 8b f1                                        	mov    rsi,r9
    22bdd7ce3d9b:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce3da2:	48 0f 45 b5 08 ff ff ff                         	cmovne rsi,QWORD PTR [rbp-0xf8]
    22bdd7ce3daa:	48 89 8d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rcx
    22bdd7ce3db1:	48 8b 8d 30 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2d0]
    22bdd7ce3db8:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    22bdd7ce3dbf:	49 0f 4c c9                                     	cmovl  rcx,r9
    22bdd7ce3dc3:	48 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rcx
    22bdd7ce3dca:	48 8b 8d 08 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xf8]
    22bdd7ce3dd1:	83 bd 68 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x98],0x0
    22bdd7ce3dd8:	49 0f 4f c9                                     	cmovg  rcx,r9
    22bdd7ce3ddc:	48 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rcx
    22bdd7ce3de3:	49 8b c9                                        	mov    rcx,r9
    22bdd7ce3de6:	85 c0                                           	test   eax,eax
    22bdd7ce3de8:	48 0f 45 8d e8 fc ff ff                         	cmovne rcx,QWORD PTR [rbp-0x318]
    22bdd7ce3df0:	49 8b c1                                        	mov    rax,r9
    22bdd7ce3df3:	83 bd 28 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd8],0x0
    22bdd7ce3dfa:	48 0f 45 85 58 ff ff ff                         	cmovne rax,QWORD PTR [rbp-0xa8]
    22bdd7ce3e02:	48 89 4d 80                                     	mov    QWORD PTR [rbp-0x80],rcx
    22bdd7ce3e06:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    22bdd7ce3e0d:	83 bd 60 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xa0],0x0
    22bdd7ce3e14:	49 0f 4c c9                                     	cmovl  rcx,r9
    22bdd7ce3e18:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    22bdd7ce3e1c:	48 8b 8d 58 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xa8]
    22bdd7ce3e23:	83 bd 50 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xb0],0x0
    22bdd7ce3e2a:	49 0f 4f c9                                     	cmovg  rcx,r9
    22bdd7ce3e2e:	c4 c1 79 7e f9                                  	vmovd  r9d,xmm7
    22bdd7ce3e33:	41 81 e1 ff ff ff 7f                            	and    r9d,0x7fffffff
    22bdd7ce3e3a:	41 81 f9 ff ff 7f 7f                            	cmp    r9d,0x7f7fffff
    22bdd7ce3e41:	0f 87 25 00 00 00                               	ja     0x22bdd7ce3e6c
    22bdd7ce3e47:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    22bdd7ce3e4b:	0f 82 1b 00 00 00                               	jb     0x22bdd7ce3e6c
    22bdd7ce3e51:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7ce3e56:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7ce3e5c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7ce3e62:	c5 78 2e d7                                     	vucomiss xmm10,xmm7
    22bdd7ce3e66:	0f 83 05 00 00 00                               	jae    0x22bdd7ce3e71
    22bdd7ce3e6c:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce3e71:	4c 0f af 7d a8                                  	imul   r15,QWORD PTR [rbp-0x58]
    22bdd7ce3e76:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    22bdd7ce3e7d:	4c 0f af 8d 78 fe ff ff                         	imul   r9,QWORD PTR [rbp-0x188]
    22bdd7ce3e85:	48 0f af 55 c0                                  	imul   rdx,QWORD PTR [rbp-0x40]
    22bdd7ce3e8a:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    22bdd7ce3e8e:	48 8b 55 98                                     	mov    rdx,QWORD PTR [rbp-0x68]
    22bdd7ce3e92:	48 0f af 55 b8                                  	imul   rdx,QWORD PTR [rbp-0x48]
    22bdd7ce3e97:	48 89 55 98                                     	mov    QWORD PTR [rbp-0x68],rdx
    22bdd7ce3e9b:	48 8b 55 a0                                     	mov    rdx,QWORD PTR [rbp-0x60]
    22bdd7ce3e9f:	48 0f af 95 88 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x178]
    22bdd7ce3ea7:	48 89 55 a0                                     	mov    QWORD PTR [rbp-0x60],rdx
    22bdd7ce3eab:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    22bdd7ce3eaf:	48 0f af 95 a0 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x160]
    22bdd7ce3eb7:	48 89 55 b0                                     	mov    QWORD PTR [rbp-0x50],rdx
    22bdd7ce3ebb:	83 bd 30 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd0],0x0
    22bdd7ce3ec2:	0f 85 0a 00 00 00                               	jne    0x22bdd7ce3ed2
    22bdd7ce3ec8:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce3ecd:	e9 05 00 00 00                                  	jmp    0x22bdd7ce3ed7
    22bdd7ce3ed2:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce3ed7:	48 8b 95 f8 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x208]
    22bdd7ce3ede:	23 95 00 ff ff ff                               	and    edx,DWORD PTR [rbp-0x100]
    22bdd7ce3ee4:	41 23 f8                                        	and    edi,r8d
    22bdd7ce3ee7:	44 23 a5 20 ff ff ff                            	and    r12d,DWORD PTR [rbp-0xe0]
    22bdd7ce3eee:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7ce3ef3:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7ce3ef9:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7ce3eff:	c5 ba 5e f6                                     	vdivss xmm6,xmm8,xmm6
    22bdd7ce3f03:	c5 f8 28 f6                                     	vmovaps xmm6,xmm6
    22bdd7ce3f07:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    22bdd7ce3f0e:	4d 03 c3                                        	add    r8,r11
    22bdd7ce3f11:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    22bdd7ce3f18:	48 8b bd 70 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x190]
    22bdd7ce3f1f:	4c 8b 9d 50 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b0]
    22bdd7ce3f26:	49 03 fb                                        	add    rdi,r11
    22bdd7ce3f29:	4c 8b 9d 80 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x180]
    22bdd7ce3f30:	4c 03 de                                        	add    r11,rsi
    22bdd7ce3f33:	4c 89 a5 18 fc ff ff                            	mov    QWORD PTR [rbp-0x3e8],r12
    22bdd7ce3f3a:	4c 8b a5 70 ff ff ff                            	mov    r12,QWORD PTR [rbp-0x90]
    22bdd7ce3f41:	48 8b b5 78 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0x88]
    22bdd7ce3f48:	4c 03 e6                                        	add    r12,rsi
    22bdd7ce3f4b:	48 8b 75 80                                     	mov    rsi,QWORD PTR [rbp-0x80]
    22bdd7ce3f4f:	48 03 c6                                        	add    rax,rsi
    22bdd7ce3f52:	48 8b 75 88                                     	mov    rsi,QWORD PTR [rbp-0x78]
    22bdd7ce3f56:	48 03 ce                                        	add    rcx,rsi
    22bdd7ce3f59:	48 89 95 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],rdx
    22bdd7ce3f60:	48 8b 95 58 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1a8]
    22bdd7ce3f67:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    22bdd7ce3f6b:	c5 7a 10 54 16 1c                               	vmovss xmm10,DWORD PTR [rsi+rdx*1+0x1c]
    22bdd7ce3f71:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    22bdd7ce3f78:	c5 7a 10 64 16 1c                               	vmovss xmm12,DWORD PTR [rsi+rdx*1+0x1c]
    22bdd7ce3f7e:	48 8b 95 40 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1c0]
    22bdd7ce3f85:	c5 7a 10 6c 16 1c                               	vmovss xmm13,DWORD PTR [rsi+rdx*1+0x1c]
    22bdd7ce3f8b:	c5 79 7e ce                                     	vmovd  esi,xmm9
    22bdd7ce3f8f:	81 e6 ff ff ff 7f                               	and    esi,0x7fffffff
    22bdd7ce3f95:	c5 fb 11 b5 58 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3a8],xmm6
    22bdd7ce3f9d:	c5 7b 11 95 c0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x340],xmm10
    22bdd7ce3fa5:	c5 7b 11 a5 90 fc ff ff                         	vmovsd QWORD PTR [rbp-0x370],xmm12
    22bdd7ce3fad:	c5 7b 11 ad 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm13
    22bdd7ce3fb5:	81 fe ff ff 7f 7f                               	cmp    esi,0x7f7fffff
    22bdd7ce3fbb:	0f 87 15 00 00 00                               	ja     0x22bdd7ce3fd6
    22bdd7ce3fc1:	c5 78 2e cc                                     	vucomiss xmm9,xmm4
    22bdd7ce3fc5:	0f 82 0b 00 00 00                               	jb     0x22bdd7ce3fd6
    22bdd7ce3fcb:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    22bdd7ce3fd0:	0f 83 05 00 00 00                               	jae    0x22bdd7ce3fdb
    22bdd7ce3fd6:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce3fdb:	4d 2b cf                                        	sub    r9,r15
    22bdd7ce3fde:	4c 8b 7d 98                                     	mov    r15,QWORD PTR [rbp-0x68]
    22bdd7ce3fe2:	4c 2b 7d 90                                     	sub    r15,QWORD PTR [rbp-0x70]
    22bdd7ce3fe6:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    22bdd7ce3fea:	48 2b 75 a0                                     	sub    rsi,QWORD PTR [rbp-0x60]
    22bdd7ce3fee:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    22bdd7ce3ff4:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    22bdd7ce3ff9:	c4 c1 42 58 f9                                  	vaddss xmm7,xmm7,xmm9
    22bdd7ce3ffe:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    22bdd7ce4005:	4c 89 bd 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r15
    22bdd7ce400c:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    22bdd7ce4010:	41 8d 9f dc 36 00 00                            	lea    ebx,[r15+0x36dc]
    22bdd7ce4017:	48 89 9d a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rbx
    22bdd7ce401e:	41 8d 9f 68 36 00 00                            	lea    ebx,[r15+0x3668]
    22bdd7ce4025:	48 89 9d 10 fc ff ff                            	mov    QWORD PTR [rbp-0x3f0],rbx
    22bdd7ce402c:	41 8d 9f f4 35 00 00                            	lea    ebx,[r15+0x35f4]
    22bdd7ce4033:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    22bdd7ce403a:	48 8b 9d a0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x160]
    22bdd7ce4041:	48 c1 e3 09                                     	shl    rbx,0x9
    22bdd7ce4045:	48 8b 95 78 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x188]
    22bdd7ce404c:	48 c1 e2 09                                     	shl    rdx,0x9
    22bdd7ce4050:	48 89 5d a0                                     	mov    QWORD PTR [rbp-0x60],rbx
    22bdd7ce4054:	48 8b 5d b8                                     	mov    rbx,QWORD PTR [rbp-0x48]
    22bdd7ce4058:	48 c1 e3 09                                     	shl    rbx,0x9
    22bdd7ce405c:	48 89 5d b8                                     	mov    QWORD PTR [rbp-0x48],rbx
    22bdd7ce4060:	48 8b 9d 88 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x178]
    22bdd7ce4067:	48 c1 e3 09                                     	shl    rbx,0x9
    22bdd7ce406b:	48 89 b5 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rsi
    22bdd7ce4072:	48 8b 75 a8                                     	mov    rsi,QWORD PTR [rbp-0x58]
    22bdd7ce4076:	48 c1 e6 09                                     	shl    rsi,0x9
    22bdd7ce407a:	48 89 9d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rbx
    22bdd7ce4081:	48 8b 5d c0                                     	mov    rbx,QWORD PTR [rbp-0x40]
    22bdd7ce4085:	48 c1 e3 09                                     	shl    rbx,0x9
    22bdd7ce4089:	48 89 5d 80                                     	mov    QWORD PTR [rbp-0x80],rbx
    22bdd7ce408d:	48 8b 9d a0 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x260]
    22bdd7ce4094:	48 2b 9d 38 fd ff ff                            	sub    rbx,QWORD PTR [rbp-0x2c8]
    22bdd7ce409b:	48 89 9d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rbx
    22bdd7ce40a2:	48 8b 9d 30 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2d0]
    22bdd7ce40a9:	48 2b 9d 18 fd ff ff                            	sub    rbx,QWORD PTR [rbp-0x2e8]
    22bdd7ce40b0:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    22bdd7ce40b7:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    22bdd7ce40bd:	48 89 55 b0                                     	mov    QWORD PTR [rbp-0x50],rdx
    22bdd7ce40c1:	8d 53 50                                        	lea    edx,[rbx+0x50]
    22bdd7ce40c4:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    22bdd7ce40ca:	48 89 95 00 fc ff ff                            	mov    QWORD PTR [rbp-0x400],rdx
    22bdd7ce40d1:	8d 53 50                                        	lea    edx,[rbx+0x50]
    22bdd7ce40d4:	8b 9d d0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x330]
    22bdd7ce40da:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    22bdd7ce40e1:	8d 53 50                                        	lea    edx,[rbx+0x50]
    22bdd7ce40e4:	41 8d 9f 80 35 00 00                            	lea    ebx,[r15+0x3580]
    22bdd7ce40eb:	48 89 9d b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],rbx
    22bdd7ce40f2:	41 8d 9f cc 3c 00 00                            	lea    ebx,[r15+0x3ccc]
    22bdd7ce40f9:	48 f7 d0                                        	not    rax
    22bdd7ce40fc:	49 f7 d0                                        	not    r8
    22bdd7ce40ff:	49 f7 d3                                        	not    r11
    22bdd7ce4102:	48 f7 d9                                        	neg    rcx
    22bdd7ce4105:	48 f7 df                                        	neg    rdi
    22bdd7ce4108:	49 f7 dc                                        	neg    r12
    22bdd7ce410b:	44 8b 7d e0                                     	mov    r15d,DWORD PTR [rbp-0x20]
    22bdd7ce410f:	48 89 85 d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rax
    22bdd7ce4116:	41 8d 47 30                                     	lea    eax,[r15+0x30]
    22bdd7ce411a:	4c 89 85 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r8
    22bdd7ce4121:	45 8d 47 20                                     	lea    r8d,[r15+0x20]
    22bdd7ce4125:	4c 89 9d 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],r11
    22bdd7ce412c:	45 8d 5f 10                                     	lea    r11d,[r15+0x10]
    22bdd7ce4130:	c4 41 79 7e df                                  	vmovd  r15d,xmm11
    22bdd7ce4135:	48 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rcx
    22bdd7ce413c:	c4 63 79 16 d9 01                               	vpextrd ecx,xmm11,0x1
    22bdd7ce4142:	c4 62 79 18 c8                                  	vbroadcastss xmm9,xmm0
    22bdd7ce4147:	c4 42 79 18 da                                  	vbroadcastss xmm11,xmm10
    22bdd7ce414c:	c4 42 79 18 f4                                  	vbroadcastss xmm14,xmm12
    22bdd7ce4151:	c4 c2 79 18 cd                                  	vbroadcastss xmm1,xmm13
    22bdd7ce4156:	c4 e2 79 18 d6                                  	vbroadcastss xmm2,xmm6
    22bdd7ce415b:	c5 fb 11 bd e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm7
    22bdd7ce4163:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    22bdd7ce416a:	48 89 95 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],rdx
    22bdd7ce4171:	48 89 9d 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],rbx
    22bdd7ce4178:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    22bdd7ce417f:	4c 89 a5 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r12
    22bdd7ce4186:	48 89 85 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rax
    22bdd7ce418d:	4c 89 85 f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r8
    22bdd7ce4194:	4c 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r11
    22bdd7ce419b:	4c 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],r15
    22bdd7ce419f:	48 89 4d c0                                     	mov    QWORD PTR [rbp-0x40],rcx
    22bdd7ce41a3:	c5 78 11 8d 70 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x290],xmm9
    22bdd7ce41ab:	c5 78 11 9d 60 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2a0],xmm11
    22bdd7ce41b3:	c5 78 11 b5 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm14
    22bdd7ce41bb:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    22bdd7ce41c3:	c5 f8 11 95 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm2
    22bdd7ce41cb:	33 c0                                           	xor    eax,eax
    22bdd7ce41cd:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    22bdd7ce41d4:	e9 3e 00 00 00                                  	jmp    0x22bdd7ce4217
    22bdd7ce41d9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce41e2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce41eb:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce41f4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce41fd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    22bdd7ce4200:	4c 89 9d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r11
    22bdd7ce4207:	4c 89 bd 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r15
    22bdd7ce420e:	44 8b f8                                        	mov    r15d,eax
    22bdd7ce4211:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    22bdd7ce4217:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    22bdd7ce421b:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    22bdd7ce4221:	48 8b 8d d8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x328]
    22bdd7ce4228:	4c 89 bd e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r15
    22bdd7ce422f:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ce4234:	0f 85 e1 86 00 00                               	jne    0x22bdd7cec91b
    22bdd7ce423a:	45 8d 47 01                                     	lea    r8d,[r15+0x1]
    22bdd7ce423e:	41 bb 0f 00 00 00                               	mov    r11d,0xf
    22bdd7ce4244:	41 b9 03 00 00 00                               	mov    r9d,0x3
    22bdd7ce424a:	44 3b 45 c0                                     	cmp    r8d,DWORD PTR [rbp-0x40]
    22bdd7ce424e:	45 0f 4c cb                                     	cmovl  r9d,r11d
    22bdd7ce4252:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    22bdd7ce425a:	83 e2 7c                                        	and    edx,0x7c
    22bdd7ce425d:	46 8d 3c 85 00 00 00 00                         	lea    r15d,[r8*4+0x0]
    22bdd7ce4265:	41 83 e7 7c                                     	and    r15d,0x7c
    22bdd7ce4269:	4c 89 85 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r8
    22bdd7ce4270:	4c 89 8d a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r9
    22bdd7ce4277:	48 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdx
    22bdd7ce427e:	4c 89 bd 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],r15
    22bdd7ce4285:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
    22bdd7ce428c:	48 8b 85 08 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xf8]
    22bdd7ce4293:	4c 8b 4d a8                                     	mov    r9,QWORD PTR [rbp-0x58]
    22bdd7ce4297:	4d 8b fb                                        	mov    r15,r11
    22bdd7ce429a:	4c 8b 9d 40 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x3c0]
    22bdd7ce42a1:	44 8b 85 38 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3c8]
    22bdd7ce42a8:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    22bdd7ce42af:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    22bdd7ce42b6:	48 8b d1                                        	mov    rdx,rcx
    22bdd7ce42b9:	e9 0f 00 00 00                                  	jmp    0x22bdd7ce42cd
    22bdd7ce42be:	66 90                                           	xchg   ax,ax
    22bdd7ce42c0:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    22bdd7ce42c6:	48 8b 95 d8 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x328]
    22bdd7ce42cd:	48 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rax
    22bdd7ce42d4:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ce42d9:	0f 85 ab 86 00 00                               	jne    0x22bdd7cec98a
    22bdd7ce42df:	49 8b db                                        	mov    rbx,r11
    22bdd7ce42e2:	48 2b 9d 18 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x3e8]
    22bdd7ce42e9:	48 3b 9d 28 fc ff ff                            	cmp    rbx,QWORD PTR [rbp-0x3d8]
    22bdd7ce42f0:	0f 8c b2 84 00 00                               	jl     0x22bdd7cec7a8
    22bdd7ce42f6:	49 8b c9                                        	mov    rcx,r9
    22bdd7ce42f9:	48 2b 8d 88 fc ff ff                            	sub    rcx,QWORD PTR [rbp-0x378]
    22bdd7ce4300:	48 3b 8d 98 fc ff ff                            	cmp    rcx,QWORD PTR [rbp-0x368]
    22bdd7ce4307:	0f 8c 9b 84 00 00                               	jl     0x22bdd7cec7a8
    22bdd7ce430d:	48 2b 85 c8 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x338]
    22bdd7ce4314:	48 3b 85 50 fc ff ff                            	cmp    rax,QWORD PTR [rbp-0x3b0]
    22bdd7ce431b:	0f 8c 87 84 00 00                               	jl     0x22bdd7cec7a8
    22bdd7ce4321:	41 8d 78 01                                     	lea    edi,[r8+0x1]
    22bdd7ce4325:	41 bc 05 00 00 00                               	mov    r12d,0x5
    22bdd7ce432b:	3b 7d 98                                        	cmp    edi,DWORD PTR [rbp-0x68]
    22bdd7ce432e:	45 0f 4c e7                                     	cmovl  r12d,r15d
    22bdd7ce4332:	44 8b bd a8 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x358]
    22bdd7ce4339:	45 23 fc                                        	and    r15d,r12d
    22bdd7ce433c:	48 3b 9d 20 fc ff ff                            	cmp    rbx,QWORD PTR [rbp-0x3e0]
    22bdd7ce4343:	0f 8e 29 00 00 00                               	jle    0x22bdd7ce4372
    22bdd7ce4349:	48 3b 8d f8 fd ff ff                            	cmp    rcx,QWORD PTR [rbp-0x208]
    22bdd7ce4350:	0f 8e 1c 00 00 00                               	jle    0x22bdd7ce4372
    22bdd7ce4356:	48 3b d0                                        	cmp    rdx,rax
    22bdd7ce4359:	0f 8d 13 00 00 00                               	jge    0x22bdd7ce4372
    22bdd7ce435f:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    22bdd7ce4366:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    22bdd7ce436d:	e9 cd 01 00 00                                  	jmp    0x22bdd7ce453f
    22bdd7ce4372:	c4 e1 f9 6e d9                                  	vmovq  xmm3,rcx
    22bdd7ce4377:	c5 fb 12 db                                     	vmovddup xmm3,xmm3
    22bdd7ce437b:	4c 8b e1                                        	mov    r12,rcx
    22bdd7ce437e:	4c 2b a5 38 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2c8]
    22bdd7ce4385:	c4 c3 e1 22 dc 01                               	vpinsrq xmm3,xmm3,r12,0x1
    22bdd7ce438b:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    22bdd7ce438f:	c5 d1 73 f5 1f                                  	vpsllq xmm5,xmm5,0x1f
    22bdd7ce4394:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7ce4398:	c4 e2 61 37 fd                                  	vpcmpgtq xmm7,xmm3,xmm5
    22bdd7ce439d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    22bdd7ce43a1:	c5 e1 db ff                                     	vpand  xmm7,xmm3,xmm7
    22bdd7ce43a5:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce43aa:	c5 e1 76 db                                     	vpcmpeqd xmm3,xmm3,xmm3
    22bdd7ce43ae:	c5 e1 73 d3 21                                  	vpsrlq xmm3,xmm3,0x21
    22bdd7ce43b3:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7ce43b7:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    22bdd7ce43bc:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    22bdd7ce43c0:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    22bdd7ce43c5:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce43ca:	48 03 ce                                        	add    rcx,rsi
    22bdd7ce43cd:	c4 61 f9 6e c9                                  	vmovq  xmm9,rcx
    22bdd7ce43d2:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    22bdd7ce43d7:	4c 03 e6                                        	add    r12,rsi
    22bdd7ce43da:	c4 43 b1 22 cc 01                               	vpinsrq xmm9,xmm9,r12,0x1
    22bdd7ce43e0:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    22bdd7ce43e5:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    22bdd7ce43e9:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    22bdd7ce43ee:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ce43f3:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    22bdd7ce43f8:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    22bdd7ce43fc:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    22bdd7ce4401:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ce4406:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    22bdd7ce440c:	c5 78 50 e7                                     	vmovmskps r12d,xmm7
    22bdd7ce4410:	c4 e1 f9 6e fb                                  	vmovq  xmm7,rbx
    22bdd7ce4415:	c5 fb 12 ff                                     	vmovddup xmm7,xmm7
    22bdd7ce4419:	48 8b cb                                        	mov    rcx,rbx
    22bdd7ce441c:	48 2b 8d 18 fd ff ff                            	sub    rcx,QWORD PTR [rbp-0x2e8]
    22bdd7ce4423:	c4 e3 c1 22 f9 01                               	vpinsrq xmm7,xmm7,rcx,0x1
    22bdd7ce4429:	c4 62 41 37 cd                                  	vpcmpgtq xmm9,xmm7,xmm5
    22bdd7ce442e:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    22bdd7ce4432:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    22bdd7ce4437:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce443c:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    22bdd7ce4441:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    22bdd7ce4445:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    22bdd7ce444a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce444f:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    22bdd7ce4456:	48 03 da                                        	add    rbx,rdx
    22bdd7ce4459:	c4 61 f9 6e cb                                  	vmovq  xmm9,rbx
    22bdd7ce445e:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    22bdd7ce4463:	48 8d 1c 0a                                     	lea    rbx,[rdx+rcx*1]
    22bdd7ce4467:	c4 63 b1 22 cb 01                               	vpinsrq xmm9,xmm9,rbx,0x1
    22bdd7ce446d:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    22bdd7ce4472:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    22bdd7ce4476:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    22bdd7ce447b:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ce4480:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    22bdd7ce4485:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    22bdd7ce4489:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    22bdd7ce448e:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ce4493:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    22bdd7ce4499:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
    22bdd7ce449d:	41 0b dc                                        	or     ebx,r12d
    22bdd7ce44a0:	c4 e1 f9 6e f8                                  	vmovq  xmm7,rax
    22bdd7ce44a5:	c5 fb 12 ff                                     	vmovddup xmm7,xmm7
    22bdd7ce44a9:	4c 8b e0                                        	mov    r12,rax
    22bdd7ce44ac:	4c 2b a5 00 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x300]
    22bdd7ce44b3:	c4 c3 c1 22 fc 01                               	vpinsrq xmm7,xmm7,r12,0x1
    22bdd7ce44b9:	c4 62 41 37 cd                                  	vpcmpgtq xmm9,xmm7,xmm5
    22bdd7ce44be:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    22bdd7ce44c2:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    22bdd7ce44c7:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce44cc:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    22bdd7ce44d1:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    22bdd7ce44d5:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    22bdd7ce44da:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce44df:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    22bdd7ce44e6:	48 03 c1                                        	add    rax,rcx
    22bdd7ce44e9:	c4 61 f9 6e c8                                  	vmovq  xmm9,rax
    22bdd7ce44ee:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    22bdd7ce44f3:	4c 03 e1                                        	add    r12,rcx
    22bdd7ce44f6:	c4 43 b1 22 cc 01                               	vpinsrq xmm9,xmm9,r12,0x1
    22bdd7ce44fc:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    22bdd7ce4501:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    22bdd7ce4505:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    22bdd7ce450a:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ce450f:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    22bdd7ce4514:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    22bdd7ce4518:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    22bdd7ce451d:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ce4522:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    22bdd7ce4528:	c5 78 50 e7                                     	vmovmskps r12d,xmm7
    22bdd7ce452c:	44 0b e3                                        	or     r12d,ebx
    22bdd7ce452f:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    22bdd7ce4533:	45 23 e7                                        	and    r12d,r15d
    22bdd7ce4536:	0f 84 6c 82 00 00                               	je     0x22bdd7cec7a8
    22bdd7ce453c:	4d 8b fc                                        	mov    r15,r12
    22bdd7ce453f:	45 33 e4                                        	xor    r12d,r12d
    22bdd7ce4542:	3b 7d 10                                        	cmp    edi,DWORD PTR [rbp+0x10]
    22bdd7ce4545:	41 0f 9c c4                                     	setl   r12b
    22bdd7ce4549:	4c 89 5d 88                                     	mov    QWORD PTR [rbp-0x78],r11
    22bdd7ce454d:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    22bdd7ce4554:	48 89 bd 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rdi
    22bdd7ce455b:	4c 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r15
    22bdd7ce4562:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    22bdd7ce4568:	41 85 c4                                        	test   r12d,eax
    22bdd7ce456b:	0f 85 a1 65 00 00                               	jne    0x22bdd7ceab12
    22bdd7ce4571:	83 bd 30 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3d0],0x0
    22bdd7ce4578:	0f 85 80 2a 00 00                               	jne    0x22bdd7ce6ffe
    22bdd7ce457e:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    22bdd7ce4582:	41 f6 c7 01                                     	test   r15b,0x1
    22bdd7ce4586:	0f 85 22 00 00 00                               	jne    0x22bdd7ce45ae
    22bdd7ce458c:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ce4590:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    22bdd7ce4594:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    22bdd7ce459b:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    22bdd7ce45a2:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ce45a9:	e9 67 0a 00 00                                  	jmp    0x22bdd7ce5015
    22bdd7ce45ae:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ce45b2:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    22bdd7ce45b6:	41 8b bc 1c c8 3c 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x3cc8]
    22bdd7ce45be:	41 83 bc 1c c8 3c 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x3cc8],0x0
    22bdd7ce45c7:	0f 85 0c 00 00 00                               	jne    0x22bdd7ce45d9
    22bdd7ce45cd:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    22bdd7ce45d4:	e9 4e 00 00 00                                  	jmp    0x22bdd7ce4627
    22bdd7ce45d9:	41 8b f8                                        	mov    edi,r8d
    22bdd7ce45dc:	c1 ef 03                                        	shr    edi,0x3
    22bdd7ce45df:	83 e7 03                                        	and    edi,0x3
    22bdd7ce45e2:	0b bd 68 fe ff ff                               	or     edi,DWORD PTR [rbp-0x198]
    22bdd7ce45e8:	44 8b bd 88 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x178]
    22bdd7ce45ef:	41 03 ff                                        	add    edi,r15d
    22bdd7ce45f2:	41 0f b6 3c 3c                                  	movzx  edi,BYTE PTR [r12+rdi*1]
    22bdd7ce45f7:	45 8b f8                                        	mov    r15d,r8d
    22bdd7ce45fa:	41 83 e7 07                                     	and    r15d,0x7
    22bdd7ce45fe:	41 8b cf                                        	mov    ecx,r15d
    22bdd7ce4601:	d3 e7                                           	shl    edi,cl
    22bdd7ce4603:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    22bdd7ce460a:	40 f6 c7 80                                     	test   dil,0x80
    22bdd7ce460e:	0f 85 13 00 00 00                               	jne    0x22bdd7ce4627
    22bdd7ce4614:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    22bdd7ce461b:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ce4622:	e9 ee 09 00 00                                  	jmp    0x22bdd7ce5015
    22bdd7ce4627:	c4 c1 82 2a fb                                  	vcvtsi2ss xmm7,xmm15,r11
    22bdd7ce462c:	c5 ca 59 ff                                     	vmulss xmm7,xmm6,xmm7
    22bdd7ce4630:	c5 12 59 cf                                     	vmulss xmm9,xmm13,xmm7
    22bdd7ce4634:	c4 41 82 2a d9                                  	vcvtsi2ss xmm11,xmm15,r9
    22bdd7ce4639:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    22bdd7ce463e:	c4 c1 1a 59 db                                  	vmulss xmm3,xmm12,xmm11
    22bdd7ce4643:	c5 b2 58 eb                                     	vaddss xmm5,xmm9,xmm3
    22bdd7ce4647:	c5 ba 5c f7                                     	vsubss xmm6,xmm8,xmm7
    22bdd7ce464b:	c4 c1 4a 5c f3                                  	vsubss xmm6,xmm6,xmm11
    22bdd7ce4650:	c5 2a 59 e6                                     	vmulss xmm12,xmm10,xmm6
    22bdd7ce4654:	c4 c1 52 58 ec                                  	vaddss xmm5,xmm5,xmm12
    22bdd7ce4659:	c5 f8 2e e5                                     	vucomiss xmm4,xmm5
    22bdd7ce465d:	73 b5                                           	jae    0x22bdd7ce4614
    22bdd7ce465f:	c4 81 4a 59 74 3c 18                            	vmulss xmm6,xmm6,DWORD PTR [r12+r15*1+0x18]
    22bdd7ce4666:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ce466d:	c4 c1 42 59 7c 3c 18                            	vmulss xmm7,xmm7,DWORD PTR [r12+rdi*1+0x18]
    22bdd7ce4674:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    22bdd7ce467b:	c4 41 22 59 5c 0c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+rcx*1+0x18]
    22bdd7ce4682:	c4 c1 42 58 fb                                  	vaddss xmm7,xmm7,xmm11
    22bdd7ce4687:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ce468b:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    22bdd7ce468f:	45 8b 5c 1c 68                                  	mov    r11d,DWORD PTR [r12+rbx*1+0x68]
    22bdd7ce4694:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    22bdd7ce469a:	0f 84 c6 00 00 00                               	je     0x22bdd7ce4766
    22bdd7ce46a0:	45 8b 9c 1c a4 00 00 00                         	mov    r11d,DWORD PTR [r12+rbx*1+0xa4]
    22bdd7ce46a8:	41 83 bc 1c a4 00 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0xa4],0x0
    22bdd7ce46b1:	0f 85 af 00 00 00                               	jne    0x22bdd7ce4766
    22bdd7ce46b7:	45 8b 5c 1c 0c                                  	mov    r11d,DWORD PTR [r12+rbx*1+0xc]
    22bdd7ce46bc:	41 8b 04 1c                                     	mov    eax,DWORD PTR [r12+rbx*1]
    22bdd7ce46c0:	0f af 85 e0 fc ff ff                            	imul   eax,DWORD PTR [rbp-0x320]
    22bdd7ce46c7:	45 8d 1c 83                                     	lea    r11d,[r11+rax*4]
    22bdd7ce46cb:	47 8d 1c 83                                     	lea    r11d,[r11+r8*4]
    22bdd7ce46cf:	c4 81 7a 10 3c 1c                               	vmovss xmm7,DWORD PTR [r12+r11*1]
    22bdd7ce46d5:	45 8b 5c 1c 6c                                  	mov    r11d,DWORD PTR [r12+rbx*1+0x6c]
    22bdd7ce46da:	41 81 eb 00 02 00 00                            	sub    r11d,0x200
    22bdd7ce46e1:	41 83 fb 08                                     	cmp    r11d,0x8
    22bdd7ce46e5:	0f 83 0b 00 00 00                               	jae    0x22bdd7ce46f6
    22bdd7ce46eb:	4c 8d 15 ce 86 00 00                            	lea    r10,[rip+0x86ce]        # 0x22bdd7cecdc0
    22bdd7ce46f2:	43 ff 24 da                                     	jmp    QWORD PTR [r10+r11*8]
    22bdd7ce46f6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce46fa:	0f 87 66 00 00 00                               	ja     0x22bdd7ce4766
    22bdd7ce4700:	e9 10 09 00 00                                  	jmp    0x22bdd7ce5015
    22bdd7ce4705:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    22bdd7ce4709:	0f 83 57 00 00 00                               	jae    0x22bdd7ce4766
    22bdd7ce470f:	e9 01 09 00 00                                  	jmp    0x22bdd7ce5015
    22bdd7ce4714:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    22bdd7ce4718:	0f 8a 48 00 00 00                               	jp     0x22bdd7ce4766
    22bdd7ce471e:	0f 84 f1 08 00 00                               	je     0x22bdd7ce5015
    22bdd7ce4724:	e9 3d 00 00 00                                  	jmp    0x22bdd7ce4766
    22bdd7ce4729:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    22bdd7ce472d:	0f 87 33 00 00 00                               	ja     0x22bdd7ce4766
    22bdd7ce4733:	e9 dd 08 00 00                                  	jmp    0x22bdd7ce5015
    22bdd7ce4738:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce473c:	0f 83 24 00 00 00                               	jae    0x22bdd7ce4766
    22bdd7ce4742:	e9 ce 08 00 00                                  	jmp    0x22bdd7ce5015
    22bdd7ce4747:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    22bdd7ce474b:	0f 8a c4 08 00 00                               	jp     0x22bdd7ce5015
    22bdd7ce4751:	0f 84 0f 00 00 00                               	je     0x22bdd7ce4766
    22bdd7ce4757:	e9 b9 08 00 00                                  	jmp    0x22bdd7ce5015
    22bdd7ce475c:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce4760:	0f 86 af 08 00 00                               	jbe    0x22bdd7ce5015
    22bdd7ce4766:	c5 ba 5e fd                                     	vdivss xmm7,xmm8,xmm5
    22bdd7ce476a:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    22bdd7ce476e:	c4 62 79 18 df                                  	vbroadcastss xmm11,xmm7
    22bdd7ce4773:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    22bdd7ce477a:	c4 c2 79 18 c4                                  	vbroadcastss xmm0,xmm12
    22bdd7ce477f:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    22bdd7ce4783:	c4 c1 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+rdi*1+0x20]
    22bdd7ce478a:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    22bdd7ce4792:	c4 c2 79 18 f1                                  	vbroadcastss xmm6,xmm9
    22bdd7ce4797:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    22bdd7ce479b:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    22bdd7ce47a0:	c5 fb 11 bd 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm7
    22bdd7ce47a8:	c4 c1 7a 6f 7c 0c 20                            	vmovdqu xmm7,XMMWORD PTR [r12+rcx*1+0x20]
    22bdd7ce47af:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    22bdd7ce47b3:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    22bdd7ce47b7:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ce47bb:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    22bdd7ce47bf:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ce47c3:	c4 81 7a 7f 84 1c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x190],xmm0
    22bdd7ce47cd:	c4 81 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+r15*1+0x98]
    22bdd7ce47d7:	c4 c1 7a 10 bc 3c 98 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rdi*1+0x98]
    22bdd7ce47e1:	c4 41 7a 10 9c 0c 98 00 00 00                   	vmovss xmm11,DWORD PTR [r12+rcx*1+0x98]
    22bdd7ce47eb:	c4 81 7a 7f 04 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm0
    22bdd7ce47f1:	48 8b 85 a8 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x258]
    22bdd7ce47f8:	41 8b bc 04 34 01 00 00                         	mov    edi,DWORD PTR [r12+rax*1+0x134]
    22bdd7ce4800:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    22bdd7ce4804:	c5 fb 11 9d 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm3
    22bdd7ce480c:	c5 7b 11 8d a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm9
    22bdd7ce4814:	c5 7b 11 a5 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm12
    22bdd7ce481c:	c5 fb 11 b5 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm6
    22bdd7ce4824:	c5 fb 11 bd 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm7
    22bdd7ce482c:	c5 7b 11 9d 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm11
    22bdd7ce4834:	41 83 f8 01                                     	cmp    r8d,0x1
    22bdd7ce4838:	0f 86 64 04 00 00                               	jbe    0x22bdd7ce4ca2
    22bdd7ce483e:	41 8b bc 04 30 01 00 00                         	mov    edi,DWORD PTR [r12+rax*1+0x130]
    22bdd7ce4846:	41 83 bc 04 30 01 00 00 00                      	cmp    DWORD PTR [r12+rax*1+0x130],0x0
    22bdd7ce484f:	0f 85 0e 00 00 00                               	jne    0x22bdd7ce4863
    22bdd7ce4855:	41 8b cb                                        	mov    ecx,r11d
    22bdd7ce4858:	4d 8b c4                                        	mov    r8,r12
    22bdd7ce485b:	48 8b f8                                        	mov    rdi,rax
    22bdd7ce485e:	e9 02 05 00 00                                  	jmp    0x22bdd7ce4d65
    22bdd7ce4863:	41 8d bb 90 00 00 00                            	lea    edi,[r11+0x90]
    22bdd7ce486a:	45 8d 43 70                                     	lea    r8d,[r11+0x70]
    22bdd7ce486e:	41 50                                           	push   r8
    22bdd7ce4870:	48 89 bd a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rdi
    22bdd7ce4877:	4c 8b c2                                        	mov    r8,rdx
    22bdd7ce487a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce487e:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce4881:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    22bdd7ce4887:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    22bdd7ce488d:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    22bdd7ce4893:	c4 c1 79 28 c9                                  	vmovapd xmm1,xmm9
    22bdd7ce4898:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    22bdd7ce489c:	c4 c1 79 28 dc                                  	vmovapd xmm3,xmm12
    22bdd7ce48a1:	c5 fb 10 a5 30 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xd0]
    22bdd7ce48a9:	44 8b cf                                        	mov    r9d,edi
    22bdd7ce48ac:	e8 67 19 f2 ff                                  	call   0x22bdd7c06218
    22bdd7ce48b1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce48b5:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce48bc:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    22bdd7ce48c4:	45 85 db                                        	test   r11d,r11d
    22bdd7ce48c7:	0f 85 61 01 00 00                               	jne    0x22bdd7ce4a2e
    22bdd7ce48cd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce48d0:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    22bdd7ce48d5:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    22bdd7ce48db:	0f 84 43 00 00 00                               	je     0x22bdd7ce4924
    22bdd7ce48e1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce48e7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce48eb:	41 53                                           	push   r11
    22bdd7ce48ed:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce48f1:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    22bdd7ce48f7:	33 d2                                           	xor    edx,edx
    22bdd7ce48f9:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    22bdd7ce4900:	e8 3b 19 f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce4905:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce4908:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce490c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce4913:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce491d:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce4924:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    22bdd7ce4929:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    22bdd7ce492f:	0f 84 46 00 00 00                               	je     0x22bdd7ce497b
    22bdd7ce4935:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce493b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce493f:	41 53                                           	push   r11
    22bdd7ce4941:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce4945:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    22bdd7ce494b:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ce4950:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    22bdd7ce4957:	e8 e4 18 f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce495c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce495f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce4963:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce496a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce4974:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce497b:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    22bdd7ce4980:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    22bdd7ce4986:	0f 84 46 00 00 00                               	je     0x22bdd7ce49d2
    22bdd7ce498c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce4992:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce4996:	41 53                                           	push   r11
    22bdd7ce4998:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce499c:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    22bdd7ce49a2:	ba 02 00 00 00                                  	mov    edx,0x2
    22bdd7ce49a7:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    22bdd7ce49ae:	e8 8d 18 f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce49b3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce49b6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce49ba:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce49c1:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce49cb:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce49d2:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    22bdd7ce49d7:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    22bdd7ce49dd:	0f 84 82 03 00 00                               	je     0x22bdd7ce4d65
    22bdd7ce49e3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce49e9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce49ed:	41 53                                           	push   r11
    22bdd7ce49ef:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce49f3:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    22bdd7ce49f9:	ba 03 00 00 00                                  	mov    edx,0x3
    22bdd7ce49fe:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    22bdd7ce4a05:	e8 36 18 f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce4a0a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce4a0d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce4a11:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce4a18:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce4a22:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce4a29:	e9 37 03 00 00                                  	jmp    0x22bdd7ce4d65
    22bdd7ce4a2e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce4a31:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    22bdd7ce4a3b:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    22bdd7ce4a41:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ce4a46:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce4a4a:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    22bdd7ce4a51:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ce4a55:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7ce4a59:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    22bdd7ce4a63:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ce4a67:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    22bdd7ce4a6d:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ce4a71:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    22bdd7ce4a76:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    22bdd7ce4a80:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ce4a84:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    22bdd7ce4a8b:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    22bdd7ce4a8f:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    22bdd7ce4a93:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    22bdd7ce4a97:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce4a9b:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    22bdd7ce4aa1:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ce4aa6:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    22bdd7ce4aaa:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ce4aae:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ce4ab3:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ce4ab8:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    22bdd7ce4abc:	0f 87 09 00 00 00                               	ja     0x22bdd7ce4acb
    22bdd7ce4ac2:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce4ac6:	e9 04 00 00 00                                  	jmp    0x22bdd7ce4acf
    22bdd7ce4acb:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce4acf:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ce4ad4:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ce4ad8:	0f 87 09 00 00 00                               	ja     0x22bdd7ce4ae7
    22bdd7ce4ade:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ce4ae2:	e9 05 00 00 00                                  	jmp    0x22bdd7ce4aec
    22bdd7ce4ae7:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ce4aec:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ce4af1:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ce4af5:	0f 84 a4 00 00 00                               	je     0x22bdd7ce4b9f
    22bdd7ce4afb:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    22bdd7ce4aff:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    22bdd7ce4b09:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce4b0d:	0f 87 09 00 00 00                               	ja     0x22bdd7ce4b1c
    22bdd7ce4b13:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ce4b17:	e9 04 00 00 00                                  	jmp    0x22bdd7ce4b20
    22bdd7ce4b1c:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ce4b20:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce4b24:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce4b34
    22bdd7ce4b2a:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce4b2f:	e9 05 00 00 00                                  	jmp    0x22bdd7ce4b39
    22bdd7ce4b34:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce4b39:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    22bdd7ce4b3d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce4b42:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ce4b47:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce4b4b:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    22bdd7ce4b55:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7ce4b5a:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7ce4b5f:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ce4b63:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    22bdd7ce4b6d:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7ce4b71:	0f 85 04 00 00 00                               	jne    0x22bdd7ce4b7b
    22bdd7ce4b77:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    22bdd7ce4b7b:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ce4b80:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce4b84:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ce4b88:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    22bdd7ce4b92:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7ce4b97:	4d 8b dc                                        	mov    r11,r12
    22bdd7ce4b9a:	e9 cc 00 00 00                                  	jmp    0x22bdd7ce4c6b
    22bdd7ce4b9f:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    22bdd7ce4ba6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce4baa:	0f 87 09 00 00 00                               	ja     0x22bdd7ce4bb9
    22bdd7ce4bb0:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ce4bb4:	e9 04 00 00 00                                  	jmp    0x22bdd7ce4bbd
    22bdd7ce4bb9:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ce4bbd:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce4bc1:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce4bd1
    22bdd7ce4bc7:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce4bcc:	e9 05 00 00 00                                  	jmp    0x22bdd7ce4bd6
    22bdd7ce4bd1:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce4bd6:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    22bdd7ce4be0:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    22bdd7ce4be6:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    22bdd7ce4beb:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce4bef:	0f 87 09 00 00 00                               	ja     0x22bdd7ce4bfe
    22bdd7ce4bf5:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ce4bf9:	e9 04 00 00 00                                  	jmp    0x22bdd7ce4c02
    22bdd7ce4bfe:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ce4c02:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce4c06:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce4c16
    22bdd7ce4c0c:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ce4c11:	e9 05 00 00 00                                  	jmp    0x22bdd7ce4c1b
    22bdd7ce4c16:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce4c1b:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    22bdd7ce4c25:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce4c2a:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce4c2e:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    22bdd7ce4c38:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ce4c3d:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7ce4c42:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ce4c46:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x22bdd7ce4b4d
    22bdd7ce4c4d:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ce4c52:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ce4c57:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ce4c5b:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ce4c5f:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ce4c63:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ce4c67:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ce4c6b:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ce4c70:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce4c74:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x22bdd7ce4b4d
    22bdd7ce4c7b:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ce4c80:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ce4c85:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    22bdd7ce4c89:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce4c93:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    22bdd7ce4c9d:	e9 c3 00 00 00                                  	jmp    0x22bdd7ce4d65
    22bdd7ce4ca2:	4d 8b c7                                        	mov    r8,r15
    22bdd7ce4ca5:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    22bdd7ce4cac:	c4 c1 7a 59 c4                                  	vmulss xmm0,xmm0,xmm12
    22bdd7ce4cb1:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    22bdd7ce4cb8:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    22bdd7ce4cbf:	c4 c1 52 59 e9                                  	vmulss xmm5,xmm5,xmm9
    22bdd7ce4cc4:	c4 c1 62 59 74 0c 50                            	vmulss xmm6,xmm3,DWORD PTR [r12+rcx*1+0x50]
    22bdd7ce4ccb:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    22bdd7ce4ccf:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce4cd3:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    22bdd7ce4cdb:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce4cdf:	c4 81 7a 10 6c 04 54                            	vmovss xmm5,DWORD PTR [r12+r8*1+0x54]
    22bdd7ce4ce6:	c4 c1 52 59 ec                                  	vmulss xmm5,xmm5,xmm12
    22bdd7ce4ceb:	c5 fb 11 85 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm0
    22bdd7ce4cf3:	c4 81 7a 10 44 3c 54                            	vmovss xmm0,DWORD PTR [r12+r15*1+0x54]
    22bdd7ce4cfa:	c4 c1 7a 59 c1                                  	vmulss xmm0,xmm0,xmm9
    22bdd7ce4cff:	c4 c1 62 59 7c 0c 54                            	vmulss xmm7,xmm3,DWORD PTR [r12+rcx*1+0x54]
    22bdd7ce4d06:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    22bdd7ce4d0a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    22bdd7ce4d0e:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce4d12:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    22bdd7ce4d19:	41 8d bb 90 00 00 00                            	lea    edi,[r11+0x90]
    22bdd7ce4d20:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce4d24:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce4d27:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
    22bdd7ce4d2d:	c5 fb 10 8d a8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x158]
    22bdd7ce4d35:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7ce4d39:	41 8b cb                                        	mov    ecx,r11d
    22bdd7ce4d3c:	8b df                                           	mov    ebx,edi
    22bdd7ce4d3e:	e8 ed 17 f2 ff                                  	call   0x22bdd7c06530
    22bdd7ce4d43:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce4d46:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce4d4a:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    22bdd7ce4d54:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce4d5e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce4d65:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce4d69:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    22bdd7ce4d71:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    22bdd7ce4d7a:	0f 85 2a 00 00 00                               	jne    0x22bdd7ce4daa
    22bdd7ce4d80:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ce4d8a:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ce4d94:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ce4d9e:	49 8b fb                                        	mov    rdi,r11
    22bdd7ce4da1:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ce4da5:	e9 d4 01 00 00                                  	jmp    0x22bdd7ce4f7e
    22bdd7ce4daa:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    22bdd7ce4db2:	c5 fa 59 85 f0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x210]
    22bdd7ce4dba:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    22bdd7ce4dc2:	c5 ca 59 b5 a0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x160]
    22bdd7ce4dca:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    22bdd7ce4dd2:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    22bdd7ce4dda:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ce4dde:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce4de2:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    22bdd7ce4dea:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce4dee:	4c 8b 15 71 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe871]        # 0x22bdd7ce3666
    22bdd7ce4df5:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce4dfa:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    22bdd7ce4dfe:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ce4e02:	0f 87 04 00 00 00                               	ja     0x22bdd7ce4e0c
    22bdd7ce4e08:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ce4e0c:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    22bdd7ce4e14:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    22bdd7ce4e1b:	0f 85 28 00 00 00                               	jne    0x22bdd7ce4e49
    22bdd7ce4e21:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ce4e2b:	4c 8b 15 34 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe834]        # 0x22bdd7ce3666
    22bdd7ce4e32:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ce4e37:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    22bdd7ce4e3b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce4e3f:	e8 7c 37 f2 ff                                  	call   0x22bdd7c085c0
    22bdd7ce4e44:	e9 8b 00 00 00                                  	jmp    0x22bdd7ce4ed4
    22bdd7ce4e49:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ce4e4d:	0f 84 5e 00 00 00                               	je     0x22bdd7ce4eb1
    22bdd7ce4e53:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    22bdd7ce4e5d:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    22bdd7ce4e67:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    22bdd7ce4e6c:	7a 06                                           	jp     0x22bdd7ce4e74
    22bdd7ce4e6e:	0f 84 2a 00 00 00                               	je     0x22bdd7ce4e9e
    22bdd7ce4e74:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7ce4e78:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    22bdd7ce4e7d:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    22bdd7ce4e81:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    22bdd7ce4e85:	0f 86 49 00 00 00                               	jbe    0x22bdd7ce4ed4
    22bdd7ce4e8b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce4e8f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce4e94:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce4e99:	e9 5b 00 00 00                                  	jmp    0x22bdd7ce4ef9
    22bdd7ce4e9e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce4ea2:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce4ea7:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce4eac:	e9 44 00 00 00                                  	jmp    0x22bdd7ce4ef5
    22bdd7ce4eb1:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ce4ebb:	4c 8b 15 a4 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a4]        # 0x22bdd7ce3666
    22bdd7ce4ec2:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce4ec7:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    22bdd7ce4ecb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce4ecf:	e8 ec 36 f2 ff                                  	call   0x22bdd7c085c0
    22bdd7ce4ed4:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce4ed8:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce4edd:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce4ee2:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    22bdd7ce4ee6:	0f 87 09 00 00 00                               	ja     0x22bdd7ce4ef5
    22bdd7ce4eec:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    22bdd7ce4ef0:	e9 04 00 00 00                                  	jmp    0x22bdd7ce4ef9
    22bdd7ce4ef5:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce4ef9:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce4efc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce4f00:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ce4f0a:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    22bdd7ce4f0e:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    22bdd7ce4f12:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    22bdd7ce4f1c:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    22bdd7ce4f21:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    22bdd7ce4f2b:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ce4f35:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    22bdd7ce4f3f:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    22bdd7ce4f44:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    22bdd7ce4f4e:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ce4f58:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    22bdd7ce4f62:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    22bdd7ce4f67:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    22bdd7ce4f71:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7ce4f75:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce4f79:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7ce4f7e:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    22bdd7ce4f88:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce4f8c:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7ce4f8f:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    22bdd7ce4f92:	8b 8d e0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x320]
    22bdd7ce4f98:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    22bdd7ce4fa0:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    22bdd7ce4fa4:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    22bdd7ce4fa8:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    22bdd7ce4fad:	e8 ae 12 f2 ff                                  	call   0x22bdd7c06260
    22bdd7ce4fb2:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ce4fb6:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    22bdd7ce4fba:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce4fbe:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    22bdd7ce4fc5:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7ce4fca:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7ce4fd0:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7ce4fd6:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7ce4fda:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    22bdd7ce4fe1:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    22bdd7ce4fe8:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ce4fef:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    22bdd7ce4ff6:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    22bdd7ce4ffd:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7ce5005:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7ce500d:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7ce5015:	f6 85 b0 fd ff ff 02                            	test   BYTE PTR [rbp-0x250],0x2
    22bdd7ce501c:	0f 85 29 00 00 00                               	jne    0x22bdd7ce504b
    22bdd7ce5022:	4d 8b dc                                        	mov    r11,r12
    22bdd7ce5025:	4c 8b e3                                        	mov    r12,rbx
    22bdd7ce5028:	48 8b c1                                        	mov    rax,rcx
    22bdd7ce502b:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7ce5031:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    22bdd7ce5039:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7ce5041:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    22bdd7ce5046:	e9 ab 0a 00 00                                  	jmp    0x22bdd7ce5af6
    22bdd7ce504b:	4d 8b dc                                        	mov    r11,r12
    22bdd7ce504e:	4c 8b e3                                        	mov    r12,rbx
    22bdd7ce5051:	43 8b 84 23 c8 3c 00 00                         	mov    eax,DWORD PTR [r11+r12*1+0x3cc8]
    22bdd7ce5059:	43 83 bc 23 c8 3c 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0x3cc8],0x0
    22bdd7ce5062:	0f 84 6e 00 00 00                               	je     0x22bdd7ce50d6
    22bdd7ce5068:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    22bdd7ce506e:	c1 e8 03                                        	shr    eax,0x3
    22bdd7ce5071:	83 e0 03                                        	and    eax,0x3
    22bdd7ce5074:	8b 9d 68 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x198]
    22bdd7ce507a:	0b d8                                           	or     ebx,eax
    22bdd7ce507c:	8b 85 88 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x178]
    22bdd7ce5082:	03 d8                                           	add    ebx,eax
    22bdd7ce5084:	41 0f b6 1c 1b                                  	movzx  ebx,BYTE PTR [r11+rbx*1]
    22bdd7ce5089:	44 8b 85 58 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xa8]
    22bdd7ce5090:	41 83 e0 07                                     	and    r8d,0x7
    22bdd7ce5094:	4c 8b d1                                        	mov    r10,rcx
    22bdd7ce5097:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ce509a:	4d 8b c2                                        	mov    r8,r10
    22bdd7ce509d:	d3 e3                                           	shl    ebx,cl
    22bdd7ce509f:	f6 c3 80                                        	test   bl,0x80
    22bdd7ce50a2:	0f 85 27 00 00 00                               	jne    0x22bdd7ce50cf
    22bdd7ce50a8:	49 8b c0                                        	mov    rax,r8
    22bdd7ce50ab:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce50af:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7ce50b5:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    22bdd7ce50bd:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7ce50c5:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    22bdd7ce50ca:	e9 27 0a 00 00                                  	jmp    0x22bdd7ce5af6
    22bdd7ce50cf:	49 8b c8                                        	mov    rcx,r8
    22bdd7ce50d2:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce50d6:	48 8b 45 88                                     	mov    rax,QWORD PTR [rbp-0x78]
    22bdd7ce50da:	48 2b 85 18 fd ff ff                            	sub    rax,QWORD PTR [rbp-0x2e8]
    22bdd7ce50e1:	c4 e1 82 2a f0                                  	vcvtsi2ss xmm6,xmm15,rax
    22bdd7ce50e6:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    22bdd7ce50ee:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    22bdd7ce50f2:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    22bdd7ce50f7:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    22bdd7ce50fb:	49 8b c1                                        	mov    rax,r9
    22bdd7ce50fe:	48 2b 85 38 fd ff ff                            	sub    rax,QWORD PTR [rbp-0x2c8]
    22bdd7ce5105:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    22bdd7ce510a:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    22bdd7ce510f:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7ce5117:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    22bdd7ce511c:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    22bdd7ce5120:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    22bdd7ce5124:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    22bdd7ce5129:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    22bdd7ce512e:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    22bdd7ce5132:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    22bdd7ce5137:	0f 83 b0 09 00 00                               	jae    0x22bdd7ce5aed
    22bdd7ce513d:	c4 01 0a 59 74 3b 18                            	vmulss xmm14,xmm14,DWORD PTR [r11+r15*1+0x18]
    22bdd7ce5144:	c4 c1 4a 59 74 3b 18                            	vmulss xmm6,xmm6,DWORD PTR [r11+rdi*1+0x18]
    22bdd7ce514b:	48 8b c1                                        	mov    rax,rcx
    22bdd7ce514e:	c4 41 22 59 5c 03 18                            	vmulss xmm11,xmm11,DWORD PTR [r11+rax*1+0x18]
    22bdd7ce5155:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    22bdd7ce515a:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    22bdd7ce515e:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    22bdd7ce5162:	43 8b 5c 23 68                                  	mov    ebx,DWORD PTR [r11+r12*1+0x68]
    22bdd7ce5167:	43 83 7c 23 68 00                               	cmp    DWORD PTR [r11+r12*1+0x68],0x0
    22bdd7ce516d:	0f 85 0b 00 00 00                               	jne    0x22bdd7ce517e
    22bdd7ce5173:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7ce5179:	e9 c8 00 00 00                                  	jmp    0x22bdd7ce5246
    22bdd7ce517e:	43 8b 9c 23 a4 00 00 00                         	mov    ebx,DWORD PTR [r11+r12*1+0xa4]
    22bdd7ce5186:	43 83 bc 23 a4 00 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0xa4],0x0
    22bdd7ce518f:	75 e2                                           	jne    0x22bdd7ce5173
    22bdd7ce5191:	43 8b 5c 23 0c                                  	mov    ebx,DWORD PTR [r11+r12*1+0xc]
    22bdd7ce5196:	43 8b 0c 23                                     	mov    ecx,DWORD PTR [r11+r12*1]
    22bdd7ce519a:	0f af 8d e0 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x320]
    22bdd7ce51a1:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    22bdd7ce51a4:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7ce51aa:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    22bdd7ce51ad:	c4 41 7a 10 1c 1b                               	vmovss xmm11,DWORD PTR [r11+rbx*1]
    22bdd7ce51b3:	43 8b 5c 23 6c                                  	mov    ebx,DWORD PTR [r11+r12*1+0x6c]
    22bdd7ce51b8:	81 eb 00 02 00 00                               	sub    ebx,0x200
    22bdd7ce51be:	83 fb 08                                        	cmp    ebx,0x8
    22bdd7ce51c1:	0f 83 0b 00 00 00                               	jae    0x22bdd7ce51d2
    22bdd7ce51c7:	4c 8d 15 b2 7b 00 00                            	lea    r10,[rip+0x7bb2]        # 0x22bdd7cecd80
    22bdd7ce51ce:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    22bdd7ce51d2:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce51d6:	0f 87 6a 00 00 00                               	ja     0x22bdd7ce5246
    22bdd7ce51dc:	e9 15 09 00 00                                  	jmp    0x22bdd7ce5af6
    22bdd7ce51e1:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce51e6:	0f 83 5a 00 00 00                               	jae    0x22bdd7ce5246
    22bdd7ce51ec:	e9 05 09 00 00                                  	jmp    0x22bdd7ce5af6
    22bdd7ce51f1:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce51f6:	0f 8a 4a 00 00 00                               	jp     0x22bdd7ce5246
    22bdd7ce51fc:	0f 84 f4 08 00 00                               	je     0x22bdd7ce5af6
    22bdd7ce5202:	e9 3f 00 00 00                                  	jmp    0x22bdd7ce5246
    22bdd7ce5207:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce520c:	0f 87 34 00 00 00                               	ja     0x22bdd7ce5246
    22bdd7ce5212:	e9 df 08 00 00                                  	jmp    0x22bdd7ce5af6
    22bdd7ce5217:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce521b:	0f 83 25 00 00 00                               	jae    0x22bdd7ce5246
    22bdd7ce5221:	e9 d0 08 00 00                                  	jmp    0x22bdd7ce5af6
    22bdd7ce5226:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce522b:	0f 8a c5 08 00 00                               	jp     0x22bdd7ce5af6
    22bdd7ce5231:	0f 84 0f 00 00 00                               	je     0x22bdd7ce5246
    22bdd7ce5237:	e9 ba 08 00 00                                  	jmp    0x22bdd7ce5af6
    22bdd7ce523c:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce5240:	0f 86 b0 08 00 00                               	jbe    0x22bdd7ce5af6
    22bdd7ce5246:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    22bdd7ce524b:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    22bdd7ce5250:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    22bdd7ce5255:	c4 01 7a 6f 74 3b 20                            	vmovdqu xmm14,XMMWORD PTR [r11+r15*1+0x20]
    22bdd7ce525c:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    22bdd7ce5261:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    22bdd7ce5265:	c4 c1 7a 6f 6c 3b 20                            	vmovdqu xmm5,XMMWORD PTR [r11+rdi*1+0x20]
    22bdd7ce526c:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7ce5271:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    22bdd7ce5275:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    22bdd7ce527a:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    22bdd7ce5282:	c4 c1 7a 6f 74 03 20                            	vmovdqu xmm6,XMMWORD PTR [r11+rax*1+0x20]
    22bdd7ce5289:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    22bdd7ce528d:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ce5291:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    22bdd7ce5295:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    22bdd7ce5299:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    22bdd7ce529c:	c4 c1 7a 7f 84 1b 90 01 00 00                   	vmovdqu XMMWORD PTR [r11+rbx*1+0x190],xmm0
    22bdd7ce52a6:	c4 81 7a 10 b4 3b 98 00 00 00                   	vmovss xmm6,DWORD PTR [r11+r15*1+0x98]
    22bdd7ce52b0:	c4 41 7a 10 ac 3b 98 00 00 00                   	vmovss xmm13,DWORD PTR [r11+rdi*1+0x98]
    22bdd7ce52ba:	c4 41 7a 10 b4 03 98 00 00 00                   	vmovss xmm14,DWORD PTR [r11+rax*1+0x98]
    22bdd7ce52c4:	c4 c1 7a 7f 04 1b                               	vmovdqu XMMWORD PTR [r11+rbx*1],xmm0
    22bdd7ce52ca:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce52d1:	45 8b 84 3b 34 01 00 00                         	mov    r8d,DWORD PTR [r11+rdi*1+0x134]
    22bdd7ce52d9:	45 8d 60 ff                                     	lea    r12d,[r8-0x1]
    22bdd7ce52dd:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    22bdd7ce52e5:	c5 fb 11 8d a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm1
    22bdd7ce52ed:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
    22bdd7ce52f5:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    22bdd7ce52fd:	c5 fb 11 b5 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm6
    22bdd7ce5305:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    22bdd7ce530d:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    22bdd7ce5315:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ce5319:	0f 86 50 04 00 00                               	jbe    0x22bdd7ce576f
    22bdd7ce531f:	45 8b 84 3b 30 01 00 00                         	mov    r8d,DWORD PTR [r11+rdi*1+0x130]
    22bdd7ce5327:	41 83 bc 3b 30 01 00 00 00                      	cmp    DWORD PTR [r11+rdi*1+0x130],0x0
    22bdd7ce5330:	0f 85 0a 00 00 00                               	jne    0x22bdd7ce5340
    22bdd7ce5336:	8b cb                                           	mov    ecx,ebx
    22bdd7ce5338:	4d 8b c3                                        	mov    r8,r11
    22bdd7ce533b:	e9 df 04 00 00                                  	jmp    0x22bdd7ce581f
    22bdd7ce5340:	44 8d 83 90 00 00 00                            	lea    r8d,[rbx+0x90]
    22bdd7ce5347:	44 8d 63 70                                     	lea    r12d,[rbx+0x70]
    22bdd7ce534b:	41 54                                           	push   r12
    22bdd7ce534d:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    22bdd7ce5354:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5358:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce535b:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    22bdd7ce5361:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    22bdd7ce5367:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    22bdd7ce536d:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7ce5372:	45 8b c8                                        	mov    r9d,r8d
    22bdd7ce5375:	e8 9e 0e f2 ff                                  	call   0x22bdd7c06218
    22bdd7ce537a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce537e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce5385:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    22bdd7ce538d:	45 85 db                                        	test   r11d,r11d
    22bdd7ce5390:	0f 85 62 01 00 00                               	jne    0x22bdd7ce54f8
    22bdd7ce5396:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5399:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    22bdd7ce539e:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    22bdd7ce53a4:	0f 84 43 00 00 00                               	je     0x22bdd7ce53ed
    22bdd7ce53aa:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce53b0:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce53b4:	41 53                                           	push   r11
    22bdd7ce53b6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce53ba:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    22bdd7ce53c0:	33 d2                                           	xor    edx,edx
    22bdd7ce53c2:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    22bdd7ce53c9:	e8 72 0e f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce53ce:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce53d1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce53d5:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce53dc:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce53e6:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce53ed:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    22bdd7ce53f2:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    22bdd7ce53f8:	0f 84 46 00 00 00                               	je     0x22bdd7ce5444
    22bdd7ce53fe:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce5404:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce5408:	41 53                                           	push   r11
    22bdd7ce540a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce540e:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    22bdd7ce5414:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ce5419:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    22bdd7ce5420:	e8 1b 0e f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce5425:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5428:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce542c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce5433:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce543d:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce5444:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    22bdd7ce5449:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    22bdd7ce544f:	0f 84 46 00 00 00                               	je     0x22bdd7ce549b
    22bdd7ce5455:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce545b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce545f:	41 53                                           	push   r11
    22bdd7ce5461:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5465:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    22bdd7ce546b:	ba 02 00 00 00                                  	mov    edx,0x2
    22bdd7ce5470:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    22bdd7ce5477:	e8 c4 0d f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce547c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce547f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce5483:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce548a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce5494:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce549b:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    22bdd7ce54a0:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    22bdd7ce54a6:	0f 84 73 03 00 00                               	je     0x22bdd7ce581f
    22bdd7ce54ac:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce54b2:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce54b6:	41 53                                           	push   r11
    22bdd7ce54b8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce54bc:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    22bdd7ce54c2:	ba 03 00 00 00                                  	mov    edx,0x3
    22bdd7ce54c7:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    22bdd7ce54ce:	e8 6d 0d f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce54d3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce54d6:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    22bdd7ce54da:	c5 fa 6f 44 0e 50                               	vmovdqu xmm0,XMMWORD PTR [rsi+rcx*1+0x50]
    22bdd7ce54e0:	c5 fa 7f 84 0e 90 01 00 00                      	vmovdqu XMMWORD PTR [rsi+rcx*1+0x190],xmm0
    22bdd7ce54e9:	4c 8b c6                                        	mov    r8,rsi
    22bdd7ce54ec:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce54f3:	e9 27 03 00 00                                  	jmp    0x22bdd7ce581f
    22bdd7ce54f8:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce54fb:	4d 8b e0                                        	mov    r12,r8
    22bdd7ce54fe:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    22bdd7ce5508:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    22bdd7ce550e:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ce5513:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce5517:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    22bdd7ce551e:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ce5522:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7ce5526:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    22bdd7ce5530:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ce5534:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    22bdd7ce553a:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ce553e:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    22bdd7ce5543:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    22bdd7ce554d:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ce5551:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    22bdd7ce5558:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    22bdd7ce555c:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    22bdd7ce5560:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    22bdd7ce5564:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce5568:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    22bdd7ce556e:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ce5573:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    22bdd7ce5577:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ce557b:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ce5580:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ce5585:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    22bdd7ce5589:	0f 87 09 00 00 00                               	ja     0x22bdd7ce5598
    22bdd7ce558f:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce5593:	e9 04 00 00 00                                  	jmp    0x22bdd7ce559c
    22bdd7ce5598:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce559c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ce55a1:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ce55a5:	0f 87 09 00 00 00                               	ja     0x22bdd7ce55b4
    22bdd7ce55ab:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ce55af:	e9 05 00 00 00                                  	jmp    0x22bdd7ce55b9
    22bdd7ce55b4:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ce55b9:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ce55be:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ce55c2:	0f 84 a1 00 00 00                               	je     0x22bdd7ce5669
    22bdd7ce55c8:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    22bdd7ce55cc:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    22bdd7ce55d6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce55da:	0f 87 09 00 00 00                               	ja     0x22bdd7ce55e9
    22bdd7ce55e0:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ce55e4:	e9 04 00 00 00                                  	jmp    0x22bdd7ce55ed
    22bdd7ce55e9:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ce55ed:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce55f1:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce5601
    22bdd7ce55f7:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce55fc:	e9 05 00 00 00                                  	jmp    0x22bdd7ce5606
    22bdd7ce5601:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce5606:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    22bdd7ce560a:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce560f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ce5614:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce5618:	4c 8b 15 2e f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52e]        # 0x22bdd7ce4b4d
    22bdd7ce561f:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7ce5624:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7ce5629:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ce562d:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    22bdd7ce5637:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7ce563b:	0f 85 04 00 00 00                               	jne    0x22bdd7ce5645
    22bdd7ce5641:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    22bdd7ce5645:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ce564a:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce564e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ce5652:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    22bdd7ce565c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7ce5661:	4d 8b df                                        	mov    r11,r15
    22bdd7ce5664:	e9 cc 00 00 00                                  	jmp    0x22bdd7ce5735
    22bdd7ce5669:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    22bdd7ce5670:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce5674:	0f 87 09 00 00 00                               	ja     0x22bdd7ce5683
    22bdd7ce567a:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ce567e:	e9 04 00 00 00                                  	jmp    0x22bdd7ce5687
    22bdd7ce5683:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ce5687:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce568b:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce569b
    22bdd7ce5691:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce5696:	e9 05 00 00 00                                  	jmp    0x22bdd7ce56a0
    22bdd7ce569b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce56a0:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    22bdd7ce56aa:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    22bdd7ce56b0:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    22bdd7ce56b5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce56b9:	0f 87 09 00 00 00                               	ja     0x22bdd7ce56c8
    22bdd7ce56bf:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ce56c3:	e9 04 00 00 00                                  	jmp    0x22bdd7ce56cc
    22bdd7ce56c8:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ce56cc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce56d0:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce56e0
    22bdd7ce56d6:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ce56db:	e9 05 00 00 00                                  	jmp    0x22bdd7ce56e5
    22bdd7ce56e0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce56e5:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    22bdd7ce56ef:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce56f4:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce56f8:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    22bdd7ce5702:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ce5707:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7ce570c:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ce5710:	4c 8b 15 36 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff436]        # 0x22bdd7ce4b4d
    22bdd7ce5717:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ce571c:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ce5721:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ce5725:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ce5729:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ce572d:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ce5731:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ce5735:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ce573a:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce573e:	4c 8b 15 08 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff408]        # 0x22bdd7ce4b4d
    22bdd7ce5745:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ce574a:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ce574f:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    22bdd7ce5753:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    22bdd7ce575d:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    22bdd7ce5767:	4d 8b c4                                        	mov    r8,r12
    22bdd7ce576a:	e9 b0 00 00 00                                  	jmp    0x22bdd7ce581f
    22bdd7ce576f:	4d 8b e7                                        	mov    r12,r15
    22bdd7ce5772:	c4 81 7a 10 44 23 50                            	vmovss xmm0,DWORD PTR [r11+r12*1+0x50]
    22bdd7ce5779:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    22bdd7ce577d:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    22bdd7ce5784:	c4 81 7a 10 6c 3b 50                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x50]
    22bdd7ce578b:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ce578f:	c4 c1 6a 59 74 03 50                            	vmulss xmm6,xmm2,DWORD PTR [r11+rax*1+0x50]
    22bdd7ce5796:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    22bdd7ce579a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce579e:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    22bdd7ce57a3:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce57a7:	c4 01 7a 10 5c 23 54                            	vmovss xmm11,DWORD PTR [r11+r12*1+0x54]
    22bdd7ce57ae:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    22bdd7ce57b2:	c4 81 7a 10 6c 3b 54                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x54]
    22bdd7ce57b9:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ce57bd:	c5 fb 11 85 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm0
    22bdd7ce57c5:	c4 c1 6a 59 44 03 54                            	vmulss xmm0,xmm2,DWORD PTR [r11+rax*1+0x54]
    22bdd7ce57cc:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    22bdd7ce57d0:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    22bdd7ce57d4:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce57d8:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    22bdd7ce57de:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce57e2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce57e5:	41 8b d0                                        	mov    edx,r8d
    22bdd7ce57e8:	c5 fb 10 8d a8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x158]
    22bdd7ce57f0:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7ce57f4:	8b cb                                           	mov    ecx,ebx
    22bdd7ce57f6:	8b df                                           	mov    ebx,edi
    22bdd7ce57f8:	e8 33 0d f2 ff                                  	call   0x22bdd7c06530
    22bdd7ce57fd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5800:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce5804:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    22bdd7ce580e:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce5818:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce581f:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce5823:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    22bdd7ce582b:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    22bdd7ce5834:	0f 85 2a 00 00 00                               	jne    0x22bdd7ce5864
    22bdd7ce583a:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ce5844:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ce584e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ce5858:	49 8b fb                                        	mov    rdi,r11
    22bdd7ce585b:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ce585f:	e9 d4 01 00 00                                  	jmp    0x22bdd7ce5a38
    22bdd7ce5864:	c5 fb 10 85 f0 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x210]
    22bdd7ce586c:	c5 fa 59 85 80 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x180]
    22bdd7ce5874:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    22bdd7ce587c:	c5 ca 59 b5 a0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x160]
    22bdd7ce5884:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    22bdd7ce588c:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    22bdd7ce5894:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ce5898:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce589c:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    22bdd7ce58a4:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce58a8:	4c 8b 15 b7 dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffddb7]        # 0x22bdd7ce3666
    22bdd7ce58af:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce58b4:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    22bdd7ce58b8:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ce58bc:	0f 87 04 00 00 00                               	ja     0x22bdd7ce58c6
    22bdd7ce58c2:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ce58c6:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    22bdd7ce58ce:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    22bdd7ce58d5:	0f 85 28 00 00 00                               	jne    0x22bdd7ce5903
    22bdd7ce58db:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ce58e5:	4c 8b 15 7a dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdd7a]        # 0x22bdd7ce3666
    22bdd7ce58ec:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ce58f1:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    22bdd7ce58f5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce58f9:	e8 c2 2c f2 ff                                  	call   0x22bdd7c085c0
    22bdd7ce58fe:	e9 8b 00 00 00                                  	jmp    0x22bdd7ce598e
    22bdd7ce5903:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ce5907:	0f 84 5e 00 00 00                               	je     0x22bdd7ce596b
    22bdd7ce590d:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    22bdd7ce5917:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    22bdd7ce5921:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    22bdd7ce5926:	7a 06                                           	jp     0x22bdd7ce592e
    22bdd7ce5928:	0f 84 2a 00 00 00                               	je     0x22bdd7ce5958
    22bdd7ce592e:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7ce5932:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    22bdd7ce5937:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    22bdd7ce593b:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    22bdd7ce593f:	0f 86 49 00 00 00                               	jbe    0x22bdd7ce598e
    22bdd7ce5945:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce5949:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce594e:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce5953:	e9 5b 00 00 00                                  	jmp    0x22bdd7ce59b3
    22bdd7ce5958:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce595c:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce5961:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce5966:	e9 44 00 00 00                                  	jmp    0x22bdd7ce59af
    22bdd7ce596b:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ce5975:	4c 8b 15 ea dc ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdcea]        # 0x22bdd7ce3666
    22bdd7ce597c:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce5981:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    22bdd7ce5985:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5989:	e8 32 2c f2 ff                                  	call   0x22bdd7c085c0
    22bdd7ce598e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce5992:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce5997:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce599c:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    22bdd7ce59a0:	0f 87 09 00 00 00                               	ja     0x22bdd7ce59af
    22bdd7ce59a6:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    22bdd7ce59aa:	e9 04 00 00 00                                  	jmp    0x22bdd7ce59b3
    22bdd7ce59af:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce59b3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce59b6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce59ba:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ce59c4:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    22bdd7ce59c8:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    22bdd7ce59cc:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    22bdd7ce59d6:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    22bdd7ce59db:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    22bdd7ce59e5:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ce59ef:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    22bdd7ce59f9:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    22bdd7ce59fe:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    22bdd7ce5a08:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ce5a12:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    22bdd7ce5a1c:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    22bdd7ce5a21:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    22bdd7ce5a2b:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7ce5a2f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce5a33:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7ce5a38:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    22bdd7ce5a42:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5a46:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7ce5a49:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    22bdd7ce5a4f:	8b 8d e0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x320]
    22bdd7ce5a55:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    22bdd7ce5a5d:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    22bdd7ce5a61:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    22bdd7ce5a65:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    22bdd7ce5a6a:	e8 f1 07 f2 ff                                  	call   0x22bdd7c06260
    22bdd7ce5a6f:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    22bdd7ce5a73:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    22bdd7ce5a77:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce5a7b:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    22bdd7ce5a82:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7ce5a88:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7ce5a8d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7ce5a93:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7ce5a99:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7ce5a9d:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    22bdd7ce5aa4:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    22bdd7ce5aab:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ce5ab2:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    22bdd7ce5ab9:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    22bdd7ce5ac0:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7ce5ac8:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    22bdd7ce5ad0:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7ce5ad8:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7ce5ae0:	c5 7b 10 8d 70 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x190]
    22bdd7ce5ae8:	e9 09 00 00 00                                  	jmp    0x22bdd7ce5af6
    22bdd7ce5aed:	48 8b c1                                        	mov    rax,rcx
    22bdd7ce5af0:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7ce5af6:	f6 85 b0 fd ff ff 04                            	test   BYTE PTR [rbp-0x250],0x4
    22bdd7ce5afd:	0f 85 08 00 00 00                               	jne    0x22bdd7ce5b0b
    22bdd7ce5b03:	48 8b ce                                        	mov    rcx,rsi
    22bdd7ce5b06:	e9 48 0a 00 00                                  	jmp    0x22bdd7ce6553
    22bdd7ce5b0b:	43 8b 9c 23 c8 3c 00 00                         	mov    ebx,DWORD PTR [r11+r12*1+0x3cc8]
    22bdd7ce5b13:	43 83 bc 23 c8 3c 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0x3cc8],0x0
    22bdd7ce5b1c:	0f 84 4d 00 00 00                               	je     0x22bdd7ce5b6f
    22bdd7ce5b22:	41 8b d8                                        	mov    ebx,r8d
    22bdd7ce5b25:	c1 eb 03                                        	shr    ebx,0x3
    22bdd7ce5b28:	83 e3 03                                        	and    ebx,0x3
    22bdd7ce5b2b:	0b 9d 48 fc ff ff                               	or     ebx,DWORD PTR [rbp-0x3b8]
    22bdd7ce5b31:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    22bdd7ce5b38:	41 03 d8                                        	add    ebx,r8d
    22bdd7ce5b3b:	41 0f b6 1c 1b                                  	movzx  ebx,BYTE PTR [r11+rbx*1]
    22bdd7ce5b40:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce5b44:	41 83 e0 07                                     	and    r8d,0x7
    22bdd7ce5b48:	44 8b d1                                        	mov    r10d,ecx
    22bdd7ce5b4b:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ce5b4e:	45 8b c2                                        	mov    r8d,r10d
    22bdd7ce5b51:	d3 e3                                           	shl    ebx,cl
    22bdd7ce5b53:	f6 c3 80                                        	test   bl,0x80
    22bdd7ce5b56:	0f 85 0c 00 00 00                               	jne    0x22bdd7ce5b68
    22bdd7ce5b5c:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce5b60:	48 8b ce                                        	mov    rcx,rsi
    22bdd7ce5b63:	e9 eb 09 00 00                                  	jmp    0x22bdd7ce6553
    22bdd7ce5b68:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ce5b6b:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce5b6f:	48 8b 5d 88                                     	mov    rbx,QWORD PTR [rbp-0x78]
    22bdd7ce5b73:	48 8d 0c 1a                                     	lea    rcx,[rdx+rbx*1]
    22bdd7ce5b77:	c4 e1 82 2a f1                                  	vcvtsi2ss xmm6,xmm15,rcx
    22bdd7ce5b7c:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    22bdd7ce5b80:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    22bdd7ce5b84:	48 8b ce                                        	mov    rcx,rsi
    22bdd7ce5b87:	4a 8d 34 09                                     	lea    rsi,[rcx+r9*1]
    22bdd7ce5b8b:	c4 61 82 2a de                                  	vcvtsi2ss xmm11,xmm15,rsi
    22bdd7ce5b90:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    22bdd7ce5b95:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    22bdd7ce5b9a:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    22bdd7ce5b9e:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    22bdd7ce5ba2:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    22bdd7ce5ba7:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    22bdd7ce5bac:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    22bdd7ce5bb0:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    22bdd7ce5bb5:	0f 83 98 09 00 00                               	jae    0x22bdd7ce6553
    22bdd7ce5bbb:	c4 01 0a 59 74 3b 18                            	vmulss xmm14,xmm14,DWORD PTR [r11+r15*1+0x18]
    22bdd7ce5bc2:	c4 c1 4a 59 74 3b 18                            	vmulss xmm6,xmm6,DWORD PTR [r11+rdi*1+0x18]
    22bdd7ce5bc9:	c4 41 22 59 5c 03 18                            	vmulss xmm11,xmm11,DWORD PTR [r11+rax*1+0x18]
    22bdd7ce5bd0:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    22bdd7ce5bd5:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    22bdd7ce5bd9:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    22bdd7ce5bdd:	43 8b 74 23 68                                  	mov    esi,DWORD PTR [r11+r12*1+0x68]
    22bdd7ce5be2:	43 83 7c 23 68 00                               	cmp    DWORD PTR [r11+r12*1+0x68],0x0
    22bdd7ce5be8:	0f 84 c7 00 00 00                               	je     0x22bdd7ce5cb5
    22bdd7ce5bee:	43 8b b4 23 a4 00 00 00                         	mov    esi,DWORD PTR [r11+r12*1+0xa4]
    22bdd7ce5bf6:	43 83 bc 23 a4 00 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0xa4],0x0
    22bdd7ce5bff:	0f 85 b0 00 00 00                               	jne    0x22bdd7ce5cb5
    22bdd7ce5c05:	43 8b 74 23 0c                                  	mov    esi,DWORD PTR [r11+r12*1+0xc]
    22bdd7ce5c0a:	43 8b 1c 23                                     	mov    ebx,DWORD PTR [r11+r12*1]
    22bdd7ce5c0e:	0f af 9d 50 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xb0]
    22bdd7ce5c15:	8d 1c 9e                                        	lea    ebx,[rsi+rbx*4]
    22bdd7ce5c18:	42 8d 1c 83                                     	lea    ebx,[rbx+r8*4]
    22bdd7ce5c1c:	c4 41 7a 10 1c 1b                               	vmovss xmm11,DWORD PTR [r11+rbx*1]
    22bdd7ce5c22:	43 8b 5c 23 6c                                  	mov    ebx,DWORD PTR [r11+r12*1+0x6c]
    22bdd7ce5c27:	81 eb 00 02 00 00                               	sub    ebx,0x200
    22bdd7ce5c2d:	83 fb 08                                        	cmp    ebx,0x8
    22bdd7ce5c30:	0f 83 0b 00 00 00                               	jae    0x22bdd7ce5c41
    22bdd7ce5c36:	4c 8d 15 03 71 00 00                            	lea    r10,[rip+0x7103]        # 0x22bdd7cecd40
    22bdd7ce5c3d:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    22bdd7ce5c41:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce5c45:	0f 87 6a 00 00 00                               	ja     0x22bdd7ce5cb5
    22bdd7ce5c4b:	e9 03 09 00 00                                  	jmp    0x22bdd7ce6553
    22bdd7ce5c50:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce5c55:	0f 83 5a 00 00 00                               	jae    0x22bdd7ce5cb5
    22bdd7ce5c5b:	e9 f3 08 00 00                                  	jmp    0x22bdd7ce6553
    22bdd7ce5c60:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce5c65:	0f 8a 4a 00 00 00                               	jp     0x22bdd7ce5cb5
    22bdd7ce5c6b:	0f 84 e2 08 00 00                               	je     0x22bdd7ce6553
    22bdd7ce5c71:	e9 3f 00 00 00                                  	jmp    0x22bdd7ce5cb5
    22bdd7ce5c76:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce5c7b:	0f 87 34 00 00 00                               	ja     0x22bdd7ce5cb5
    22bdd7ce5c81:	e9 cd 08 00 00                                  	jmp    0x22bdd7ce6553
    22bdd7ce5c86:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce5c8a:	0f 83 25 00 00 00                               	jae    0x22bdd7ce5cb5
    22bdd7ce5c90:	e9 be 08 00 00                                  	jmp    0x22bdd7ce6553
    22bdd7ce5c95:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce5c9a:	0f 8a b3 08 00 00                               	jp     0x22bdd7ce6553
    22bdd7ce5ca0:	0f 84 0f 00 00 00                               	je     0x22bdd7ce5cb5
    22bdd7ce5ca6:	e9 a8 08 00 00                                  	jmp    0x22bdd7ce6553
    22bdd7ce5cab:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce5caf:	0f 86 9e 08 00 00                               	jbe    0x22bdd7ce6553
    22bdd7ce5cb5:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    22bdd7ce5cba:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    22bdd7ce5cbf:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    22bdd7ce5cc4:	c4 01 7a 6f 74 3b 20                            	vmovdqu xmm14,XMMWORD PTR [r11+r15*1+0x20]
    22bdd7ce5ccb:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    22bdd7ce5cd0:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    22bdd7ce5cd4:	c4 c1 7a 6f 6c 3b 20                            	vmovdqu xmm5,XMMWORD PTR [r11+rdi*1+0x20]
    22bdd7ce5cdb:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7ce5ce0:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    22bdd7ce5ce4:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    22bdd7ce5ce9:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    22bdd7ce5cf1:	c4 c1 7a 6f 74 03 20                            	vmovdqu xmm6,XMMWORD PTR [r11+rax*1+0x20]
    22bdd7ce5cf8:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    22bdd7ce5cfc:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ce5d00:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    22bdd7ce5d04:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    22bdd7ce5d08:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    22bdd7ce5d0b:	c4 c1 7a 7f 84 1b 90 01 00 00                   	vmovdqu XMMWORD PTR [r11+rbx*1+0x190],xmm0
    22bdd7ce5d15:	c4 81 7a 10 b4 3b 98 00 00 00                   	vmovss xmm6,DWORD PTR [r11+r15*1+0x98]
    22bdd7ce5d1f:	c4 41 7a 10 ac 3b 98 00 00 00                   	vmovss xmm13,DWORD PTR [r11+rdi*1+0x98]
    22bdd7ce5d29:	c4 41 7a 10 b4 03 98 00 00 00                   	vmovss xmm14,DWORD PTR [r11+rax*1+0x98]
    22bdd7ce5d33:	c4 c1 7a 7f 04 1b                               	vmovdqu XMMWORD PTR [r11+rbx*1],xmm0
    22bdd7ce5d39:	48 8b b5 a8 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x258]
    22bdd7ce5d40:	41 8b bc 33 34 01 00 00                         	mov    edi,DWORD PTR [r11+rsi*1+0x134]
    22bdd7ce5d48:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    22bdd7ce5d4c:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    22bdd7ce5d54:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    22bdd7ce5d5c:	c5 fb 11 9d f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm3
    22bdd7ce5d64:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    22bdd7ce5d6c:	c5 fb 11 b5 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm6
    22bdd7ce5d74:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    22bdd7ce5d7c:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    22bdd7ce5d84:	41 83 f8 01                                     	cmp    r8d,0x1
    22bdd7ce5d88:	0f 86 4b 04 00 00                               	jbe    0x22bdd7ce61d9
    22bdd7ce5d8e:	41 8b bc 33 30 01 00 00                         	mov    edi,DWORD PTR [r11+rsi*1+0x130]
    22bdd7ce5d96:	41 83 bc 33 30 01 00 00 00                      	cmp    DWORD PTR [r11+rsi*1+0x130],0x0
    22bdd7ce5d9f:	0f 85 0d 00 00 00                               	jne    0x22bdd7ce5db2
    22bdd7ce5da5:	8b cb                                           	mov    ecx,ebx
    22bdd7ce5da7:	4d 8b c3                                        	mov    r8,r11
    22bdd7ce5daa:	48 8b fe                                        	mov    rdi,rsi
    22bdd7ce5dad:	e9 e1 04 00 00                                  	jmp    0x22bdd7ce6293
    22bdd7ce5db2:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    22bdd7ce5db8:	44 8d 43 70                                     	lea    r8d,[rbx+0x70]
    22bdd7ce5dbc:	41 50                                           	push   r8
    22bdd7ce5dbe:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
    22bdd7ce5dc5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5dc9:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce5dcc:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    22bdd7ce5dd2:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    22bdd7ce5dd8:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    22bdd7ce5dde:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7ce5de3:	44 8b cf                                        	mov    r9d,edi
    22bdd7ce5de6:	e8 2d 04 f2 ff                                  	call   0x22bdd7c06218
    22bdd7ce5deb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce5def:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce5df6:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    22bdd7ce5dfe:	45 85 db                                        	test   r11d,r11d
    22bdd7ce5e01:	0f 85 61 01 00 00                               	jne    0x22bdd7ce5f68
    22bdd7ce5e07:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5e0a:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    22bdd7ce5e0f:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    22bdd7ce5e15:	0f 84 43 00 00 00                               	je     0x22bdd7ce5e5e
    22bdd7ce5e1b:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce5e21:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce5e25:	41 53                                           	push   r11
    22bdd7ce5e27:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5e2b:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    22bdd7ce5e31:	33 d2                                           	xor    edx,edx
    22bdd7ce5e33:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    22bdd7ce5e3a:	e8 01 04 f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce5e3f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5e42:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce5e46:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce5e4d:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce5e57:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce5e5e:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    22bdd7ce5e63:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    22bdd7ce5e69:	0f 84 46 00 00 00                               	je     0x22bdd7ce5eb5
    22bdd7ce5e6f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce5e75:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce5e79:	41 53                                           	push   r11
    22bdd7ce5e7b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5e7f:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    22bdd7ce5e85:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ce5e8a:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    22bdd7ce5e91:	e8 aa 03 f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce5e96:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5e99:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce5e9d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce5ea4:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce5eae:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce5eb5:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    22bdd7ce5eba:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    22bdd7ce5ec0:	0f 84 46 00 00 00                               	je     0x22bdd7ce5f0c
    22bdd7ce5ec6:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce5ecc:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce5ed0:	41 53                                           	push   r11
    22bdd7ce5ed2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5ed6:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    22bdd7ce5edc:	ba 02 00 00 00                                  	mov    edx,0x2
    22bdd7ce5ee1:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    22bdd7ce5ee8:	e8 53 03 f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce5eed:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5ef0:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce5ef4:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce5efb:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce5f05:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce5f0c:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    22bdd7ce5f11:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    22bdd7ce5f17:	0f 84 76 03 00 00                               	je     0x22bdd7ce6293
    22bdd7ce5f1d:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce5f23:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce5f27:	41 53                                           	push   r11
    22bdd7ce5f29:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce5f2d:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    22bdd7ce5f33:	ba 03 00 00 00                                  	mov    edx,0x3
    22bdd7ce5f38:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    22bdd7ce5f3f:	e8 fc 02 f2 ff                                  	call   0x22bdd7c06240
    22bdd7ce5f44:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5f47:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce5f4b:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce5f52:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce5f5c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce5f63:	e9 2b 03 00 00                                  	jmp    0x22bdd7ce6293
    22bdd7ce5f68:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce5f6b:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    22bdd7ce5f75:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    22bdd7ce5f7b:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ce5f80:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce5f84:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    22bdd7ce5f8b:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ce5f8f:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7ce5f93:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    22bdd7ce5f9d:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ce5fa1:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    22bdd7ce5fa7:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ce5fab:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    22bdd7ce5fb0:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    22bdd7ce5fba:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ce5fbe:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    22bdd7ce5fc5:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    22bdd7ce5fc9:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    22bdd7ce5fcd:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    22bdd7ce5fd1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce5fd5:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    22bdd7ce5fdb:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ce5fe0:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    22bdd7ce5fe4:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ce5fe8:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ce5fed:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ce5ff2:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    22bdd7ce5ff6:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6005
    22bdd7ce5ffc:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce6000:	e9 04 00 00 00                                  	jmp    0x22bdd7ce6009
    22bdd7ce6005:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce6009:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ce600e:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ce6012:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6021
    22bdd7ce6018:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ce601c:	e9 05 00 00 00                                  	jmp    0x22bdd7ce6026
    22bdd7ce6021:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ce6026:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ce602b:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ce602f:	0f 84 a1 00 00 00                               	je     0x22bdd7ce60d6
    22bdd7ce6035:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    22bdd7ce6039:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    22bdd7ce6043:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce6047:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6056
    22bdd7ce604d:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ce6051:	e9 04 00 00 00                                  	jmp    0x22bdd7ce605a
    22bdd7ce6056:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ce605a:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce605e:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce606e
    22bdd7ce6064:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce6069:	e9 05 00 00 00                                  	jmp    0x22bdd7ce6073
    22bdd7ce606e:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce6073:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    22bdd7ce6077:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce607c:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ce6081:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce6085:	4c 8b 15 c1 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeac1]        # 0x22bdd7ce4b4d
    22bdd7ce608c:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7ce6091:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7ce6096:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ce609a:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    22bdd7ce60a4:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7ce60a8:	0f 85 04 00 00 00                               	jne    0x22bdd7ce60b2
    22bdd7ce60ae:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    22bdd7ce60b2:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ce60b7:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce60bb:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ce60bf:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    22bdd7ce60c9:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7ce60ce:	4d 8b dc                                        	mov    r11,r12
    22bdd7ce60d1:	e9 cc 00 00 00                                  	jmp    0x22bdd7ce61a2
    22bdd7ce60d6:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    22bdd7ce60dd:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce60e1:	0f 87 09 00 00 00                               	ja     0x22bdd7ce60f0
    22bdd7ce60e7:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ce60eb:	e9 04 00 00 00                                  	jmp    0x22bdd7ce60f4
    22bdd7ce60f0:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ce60f4:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce60f8:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce6108
    22bdd7ce60fe:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce6103:	e9 05 00 00 00                                  	jmp    0x22bdd7ce610d
    22bdd7ce6108:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce610d:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    22bdd7ce6117:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    22bdd7ce611d:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    22bdd7ce6122:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce6126:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6135
    22bdd7ce612c:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ce6130:	e9 04 00 00 00                                  	jmp    0x22bdd7ce6139
    22bdd7ce6135:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ce6139:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce613d:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce614d
    22bdd7ce6143:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ce6148:	e9 05 00 00 00                                  	jmp    0x22bdd7ce6152
    22bdd7ce614d:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce6152:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    22bdd7ce615c:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce6161:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce6165:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    22bdd7ce616f:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ce6174:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7ce6179:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ce617d:	4c 8b 15 c9 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9c9]        # 0x22bdd7ce4b4d
    22bdd7ce6184:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ce6189:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ce618e:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ce6192:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ce6196:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ce619a:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ce619e:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ce61a2:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ce61a7:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce61ab:	4c 8b 15 9b e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe99b]        # 0x22bdd7ce4b4d
    22bdd7ce61b2:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ce61b7:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ce61bc:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    22bdd7ce61c0:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce61ca:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    22bdd7ce61d4:	e9 ba 00 00 00                                  	jmp    0x22bdd7ce6293
    22bdd7ce61d9:	4d 8b c7                                        	mov    r8,r15
    22bdd7ce61dc:	c4 81 7a 10 44 03 50                            	vmovss xmm0,DWORD PTR [r11+r8*1+0x50]
    22bdd7ce61e3:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    22bdd7ce61e7:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    22bdd7ce61ee:	c4 81 7a 10 6c 3b 50                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x50]
    22bdd7ce61f5:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ce61f9:	c4 c1 6a 59 74 03 50                            	vmulss xmm6,xmm2,DWORD PTR [r11+rax*1+0x50]
    22bdd7ce6200:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    22bdd7ce6204:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce6208:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    22bdd7ce620d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce6211:	c4 01 7a 10 5c 03 54                            	vmovss xmm11,DWORD PTR [r11+r8*1+0x54]
    22bdd7ce6218:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    22bdd7ce621c:	c4 81 7a 10 6c 3b 54                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x54]
    22bdd7ce6223:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ce6227:	c5 fb 11 85 a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm0
    22bdd7ce622f:	c4 c1 6a 59 44 03 54                            	vmulss xmm0,xmm2,DWORD PTR [r11+rax*1+0x54]
    22bdd7ce6236:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    22bdd7ce623a:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    22bdd7ce623e:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce6242:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    22bdd7ce6249:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    22bdd7ce624f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce6253:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce6256:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
    22bdd7ce625c:	c5 fb 10 8d a0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x160]
    22bdd7ce6264:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7ce6268:	8b cb                                           	mov    ecx,ebx
    22bdd7ce626a:	8b df                                           	mov    ebx,edi
    22bdd7ce626c:	e8 bf 02 f2 ff                                  	call   0x22bdd7c06530
    22bdd7ce6271:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce6274:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce6278:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    22bdd7ce6282:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce628c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce6293:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce6297:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    22bdd7ce629f:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    22bdd7ce62a8:	0f 85 2a 00 00 00                               	jne    0x22bdd7ce62d8
    22bdd7ce62ae:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ce62b8:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ce62c2:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ce62cc:	49 8b fb                                        	mov    rdi,r11
    22bdd7ce62cf:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ce62d3:	e9 d4 01 00 00                                  	jmp    0x22bdd7ce64ac
    22bdd7ce62d8:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    22bdd7ce62e0:	c5 fa 59 85 f0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x210]
    22bdd7ce62e8:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    22bdd7ce62f0:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    22bdd7ce62f8:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    22bdd7ce6300:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    22bdd7ce6308:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ce630c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce6310:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    22bdd7ce6318:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce631c:	4c 8b 15 43 d3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd343]        # 0x22bdd7ce3666
    22bdd7ce6323:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce6328:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    22bdd7ce632c:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ce6330:	0f 87 04 00 00 00                               	ja     0x22bdd7ce633a
    22bdd7ce6336:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ce633a:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    22bdd7ce6342:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    22bdd7ce6349:	0f 85 28 00 00 00                               	jne    0x22bdd7ce6377
    22bdd7ce634f:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ce6359:	4c 8b 15 06 d3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd306]        # 0x22bdd7ce3666
    22bdd7ce6360:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ce6365:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    22bdd7ce6369:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce636d:	e8 4e 22 f2 ff                                  	call   0x22bdd7c085c0
    22bdd7ce6372:	e9 8b 00 00 00                                  	jmp    0x22bdd7ce6402
    22bdd7ce6377:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ce637b:	0f 84 5e 00 00 00                               	je     0x22bdd7ce63df
    22bdd7ce6381:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    22bdd7ce638b:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    22bdd7ce6395:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    22bdd7ce639a:	7a 06                                           	jp     0x22bdd7ce63a2
    22bdd7ce639c:	0f 84 2a 00 00 00                               	je     0x22bdd7ce63cc
    22bdd7ce63a2:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7ce63a6:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    22bdd7ce63ab:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    22bdd7ce63af:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    22bdd7ce63b3:	0f 86 49 00 00 00                               	jbe    0x22bdd7ce6402
    22bdd7ce63b9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce63bd:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce63c2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce63c7:	e9 5b 00 00 00                                  	jmp    0x22bdd7ce6427
    22bdd7ce63cc:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce63d0:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce63d5:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce63da:	e9 44 00 00 00                                  	jmp    0x22bdd7ce6423
    22bdd7ce63df:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ce63e9:	4c 8b 15 76 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd276]        # 0x22bdd7ce3666
    22bdd7ce63f0:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce63f5:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    22bdd7ce63f9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce63fd:	e8 be 21 f2 ff                                  	call   0x22bdd7c085c0
    22bdd7ce6402:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce6406:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce640b:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce6410:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    22bdd7ce6414:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6423
    22bdd7ce641a:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    22bdd7ce641e:	e9 04 00 00 00                                  	jmp    0x22bdd7ce6427
    22bdd7ce6423:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce6427:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce642a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce642e:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ce6438:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    22bdd7ce643c:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    22bdd7ce6440:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    22bdd7ce644a:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    22bdd7ce644f:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    22bdd7ce6459:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ce6463:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    22bdd7ce646d:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    22bdd7ce6472:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    22bdd7ce647c:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ce6486:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    22bdd7ce6490:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    22bdd7ce6495:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    22bdd7ce649f:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7ce64a3:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce64a7:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7ce64ac:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    22bdd7ce64b6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce64ba:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7ce64bd:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    22bdd7ce64c0:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    22bdd7ce64c6:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    22bdd7ce64ce:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    22bdd7ce64d2:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    22bdd7ce64d6:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    22bdd7ce64db:	e8 80 fd f1 ff                                  	call   0x22bdd7c06260
    22bdd7ce64e0:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    22bdd7ce64e4:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    22bdd7ce64e8:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce64ec:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    22bdd7ce64f3:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7ce64f8:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7ce64fe:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7ce6504:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7ce6508:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    22bdd7ce650f:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    22bdd7ce6516:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ce651d:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    22bdd7ce6524:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    22bdd7ce652b:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7ce6533:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    22bdd7ce653b:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7ce6543:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7ce654b:	c5 7b 10 8d 70 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x190]
    22bdd7ce6553:	f6 85 b0 fd ff ff 08                            	test   BYTE PTR [rbp-0x250],0x8
    22bdd7ce655a:	0f 85 1b 00 00 00                               	jne    0x22bdd7ce657b
    22bdd7ce6560:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce6565:	49 8b f3                                        	mov    rsi,r11
    22bdd7ce6568:	4d 8b dc                                        	mov    r11,r12
    22bdd7ce656b:	4d 8b e7                                        	mov    r12,r15
    22bdd7ce656e:	4c 8b f8                                        	mov    r15,rax
    22bdd7ce6571:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    22bdd7ce6576:	e9 fd 61 00 00                                  	jmp    0x22bdd7cec778
    22bdd7ce657b:	49 8b f3                                        	mov    rsi,r11
    22bdd7ce657e:	4d 8b dc                                        	mov    r11,r12
    22bdd7ce6581:	46 8b a4 1e c8 3c 00 00                         	mov    r12d,DWORD PTR [rsi+r11*1+0x3cc8]
    22bdd7ce6589:	42 83 bc 1e c8 3c 00 00 00                      	cmp    DWORD PTR [rsi+r11*1+0x3cc8],0x0
    22bdd7ce6592:	0f 84 5d 00 00 00                               	je     0x22bdd7ce65f5
    22bdd7ce6598:	44 8b a5 58 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xa8]
    22bdd7ce659f:	41 c1 ec 03                                     	shr    r12d,0x3
    22bdd7ce65a3:	41 83 e4 03                                     	and    r12d,0x3
    22bdd7ce65a7:	8b 9d 48 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3b8]
    22bdd7ce65ad:	41 0b dc                                        	or     ebx,r12d
    22bdd7ce65b0:	44 8b a5 88 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x178]
    22bdd7ce65b7:	41 03 dc                                        	add    ebx,r12d
    22bdd7ce65ba:	0f b6 1c 1e                                     	movzx  ebx,BYTE PTR [rsi+rbx*1]
    22bdd7ce65be:	44 8b 85 58 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xa8]
    22bdd7ce65c5:	41 83 e0 07                                     	and    r8d,0x7
    22bdd7ce65c9:	4c 8b d1                                        	mov    r10,rcx
    22bdd7ce65cc:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ce65cf:	4d 8b c2                                        	mov    r8,r10
    22bdd7ce65d2:	d3 e3                                           	shl    ebx,cl
    22bdd7ce65d4:	f6 c3 80                                        	test   bl,0x80
    22bdd7ce65d7:	0f 85 15 00 00 00                               	jne    0x22bdd7ce65f2
    22bdd7ce65dd:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce65e2:	4d 8b e7                                        	mov    r12,r15
    22bdd7ce65e5:	4c 8b f8                                        	mov    r15,rax
    22bdd7ce65e8:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    22bdd7ce65ed:	e9 86 61 00 00                                  	jmp    0x22bdd7cec778
    22bdd7ce65f2:	49 8b c8                                        	mov    rcx,r8
    22bdd7ce65f5:	4c 8b 65 88                                     	mov    r12,QWORD PTR [rbp-0x78]
    22bdd7ce65f9:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    22bdd7ce6600:	4e 8d 04 23                                     	lea    r8,[rbx+r12*1]
    22bdd7ce6604:	c4 c1 82 2a f0                                  	vcvtsi2ss xmm6,xmm15,r8
    22bdd7ce6609:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    22bdd7ce660d:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    22bdd7ce6611:	4c 8b 85 50 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1b0]
    22bdd7ce6618:	4f 8d 24 08                                     	lea    r12,[r8+r9*1]
    22bdd7ce661c:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    22bdd7ce6621:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    22bdd7ce6626:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    22bdd7ce662b:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    22bdd7ce662f:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    22bdd7ce6633:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    22bdd7ce6638:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    22bdd7ce663d:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    22bdd7ce6641:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    22bdd7ce6646:	73 95                                           	jae    0x22bdd7ce65dd
    22bdd7ce6648:	4d 8b e7                                        	mov    r12,r15
    22bdd7ce664b:	c4 21 0a 59 74 26 18                            	vmulss xmm14,xmm14,DWORD PTR [rsi+r12*1+0x18]
    22bdd7ce6652:	c5 ca 59 74 3e 18                               	vmulss xmm6,xmm6,DWORD PTR [rsi+rdi*1+0x18]
    22bdd7ce6658:	4c 8b f8                                        	mov    r15,rax
    22bdd7ce665b:	c4 21 22 59 5c 3e 18                            	vmulss xmm11,xmm11,DWORD PTR [rsi+r15*1+0x18]
    22bdd7ce6662:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    22bdd7ce6667:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    22bdd7ce666b:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    22bdd7ce666f:	42 8b 44 1e 68                                  	mov    eax,DWORD PTR [rsi+r11*1+0x68]
    22bdd7ce6674:	42 83 7c 1e 68 00                               	cmp    DWORD PTR [rsi+r11*1+0x68],0x0
    22bdd7ce667a:	0f 85 0b 00 00 00                               	jne    0x22bdd7ce668b
    22bdd7ce6680:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    22bdd7ce6686:	e9 f4 00 00 00                                  	jmp    0x22bdd7ce677f
    22bdd7ce668b:	42 8b 84 1e a4 00 00 00                         	mov    eax,DWORD PTR [rsi+r11*1+0xa4]
    22bdd7ce6693:	42 83 bc 1e a4 00 00 00 00                      	cmp    DWORD PTR [rsi+r11*1+0xa4],0x0
    22bdd7ce669c:	75 e2                                           	jne    0x22bdd7ce6680
    22bdd7ce669e:	42 8b 44 1e 0c                                  	mov    eax,DWORD PTR [rsi+r11*1+0xc]
    22bdd7ce66a3:	46 8b 04 1e                                     	mov    r8d,DWORD PTR [rsi+r11*1]
    22bdd7ce66a7:	44 0f af 85 50 ff ff ff                         	imul   r8d,DWORD PTR [rbp-0xb0]
    22bdd7ce66af:	46 8d 04 80                                     	lea    r8d,[rax+r8*4]
    22bdd7ce66b3:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    22bdd7ce66b9:	45 8d 04 80                                     	lea    r8d,[r8+rax*4]
    22bdd7ce66bd:	c4 21 7a 10 1c 06                               	vmovss xmm11,DWORD PTR [rsi+r8*1]
    22bdd7ce66c3:	46 8b 44 1e 6c                                  	mov    r8d,DWORD PTR [rsi+r11*1+0x6c]
    22bdd7ce66c8:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    22bdd7ce66cf:	41 83 f8 08                                     	cmp    r8d,0x8
    22bdd7ce66d3:	0f 83 0b 00 00 00                               	jae    0x22bdd7ce66e4
    22bdd7ce66d9:	4c 8d 15 20 66 00 00                            	lea    r10,[rip+0x6620]        # 0x22bdd7cecd00
    22bdd7ce66e0:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    22bdd7ce66e4:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce66e8:	0f 87 91 00 00 00                               	ja     0x22bdd7ce677f
    22bdd7ce66ee:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce66f3:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    22bdd7ce66f8:	e9 7b 60 00 00                                  	jmp    0x22bdd7cec778
    22bdd7ce66fd:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce6702:	0f 83 77 00 00 00                               	jae    0x22bdd7ce677f
    22bdd7ce6708:	eb e4                                           	jmp    0x22bdd7ce66ee
    22bdd7ce670a:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce670f:	0f 8a 6a 00 00 00                               	jp     0x22bdd7ce677f
    22bdd7ce6715:	74 d7                                           	je     0x22bdd7ce66ee
    22bdd7ce6717:	e9 63 00 00 00                                  	jmp    0x22bdd7ce677f
    22bdd7ce671c:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce6721:	0f 87 58 00 00 00                               	ja     0x22bdd7ce677f
    22bdd7ce6727:	eb c5                                           	jmp    0x22bdd7ce66ee
    22bdd7ce6729:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce672d:	0f 83 4c 00 00 00                               	jae    0x22bdd7ce677f
    22bdd7ce6733:	eb b9                                           	jmp    0x22bdd7ce66ee
    22bdd7ce6735:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    22bdd7ce673a:	7a b2                                           	jp     0x22bdd7ce66ee
    22bdd7ce673c:	0f 84 3d 00 00 00                               	je     0x22bdd7ce677f
    22bdd7ce6742:	eb aa                                           	jmp    0x22bdd7ce66ee
    22bdd7ce6744:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    22bdd7ce6748:	0f 87 31 00 00 00                               	ja     0x22bdd7ce677f
    22bdd7ce674e:	eb 9e                                           	jmp    0x22bdd7ce66ee
    22bdd7ce6750:	48 c7 85 a8 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x158],0x1
    22bdd7ce675b:	48 c7 85 38 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xc8],0x1
    22bdd7ce6766:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7ce676a:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    22bdd7ce676e:	48 8b f1                                        	mov    rsi,rcx
    22bdd7ce6771:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    22bdd7ce6775:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    22bdd7ce677a:	e9 29 60 00 00                                  	jmp    0x22bdd7cec7a8
    22bdd7ce677f:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    22bdd7ce6784:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    22bdd7ce6789:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    22bdd7ce678e:	c4 21 7a 6f 74 26 20                            	vmovdqu xmm14,XMMWORD PTR [rsi+r12*1+0x20]
    22bdd7ce6795:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    22bdd7ce679a:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    22bdd7ce679e:	c5 fa 6f 6c 3e 20                               	vmovdqu xmm5,XMMWORD PTR [rsi+rdi*1+0x20]
    22bdd7ce67a4:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7ce67a9:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    22bdd7ce67ad:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    22bdd7ce67b2:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    22bdd7ce67ba:	c4 a1 7a 6f 74 3e 20                            	vmovdqu xmm6,XMMWORD PTR [rsi+r15*1+0x20]
    22bdd7ce67c1:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    22bdd7ce67c5:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ce67c9:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    22bdd7ce67cd:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    22bdd7ce67d1:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    22bdd7ce67d5:	c4 a1 7a 7f 84 06 90 01 00 00                   	vmovdqu XMMWORD PTR [rsi+r8*1+0x190],xmm0
    22bdd7ce67df:	c4 a1 7a 10 b4 26 98 00 00 00                   	vmovss xmm6,DWORD PTR [rsi+r12*1+0x98]
    22bdd7ce67e9:	c5 7a 10 ac 3e 98 00 00 00                      	vmovss xmm13,DWORD PTR [rsi+rdi*1+0x98]
    22bdd7ce67f2:	c4 21 7a 10 b4 3e 98 00 00 00                   	vmovss xmm14,DWORD PTR [rsi+r15*1+0x98]
    22bdd7ce67fc:	c4 a1 7a 7f 04 06                               	vmovdqu XMMWORD PTR [rsi+r8*1],xmm0
    22bdd7ce6802:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce6809:	44 8b 9c 3e 34 01 00 00                         	mov    r11d,DWORD PTR [rsi+rdi*1+0x134]
    22bdd7ce6811:	45 8d 63 ff                                     	lea    r12d,[r11-0x1]
    22bdd7ce6815:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    22bdd7ce681d:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    22bdd7ce6825:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
    22bdd7ce682d:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    22bdd7ce6835:	c5 fb 11 b5 a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm6
    22bdd7ce683d:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    22bdd7ce6845:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    22bdd7ce684d:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ce6851:	0f 86 46 04 00 00                               	jbe    0x22bdd7ce6c9d
    22bdd7ce6857:	44 8b 9c 3e 30 01 00 00                         	mov    r11d,DWORD PTR [rsi+rdi*1+0x130]
    22bdd7ce685f:	83 bc 3e 30 01 00 00 00                         	cmp    DWORD PTR [rsi+rdi*1+0x130],0x0
    22bdd7ce6867:	0f 85 0b 00 00 00                               	jne    0x22bdd7ce6878
    22bdd7ce686d:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ce6870:	4c 8b c6                                        	mov    r8,rsi
    22bdd7ce6873:	e9 db 04 00 00                                  	jmp    0x22bdd7ce6d53
    22bdd7ce6878:	45 8d 98 90 00 00 00                            	lea    r11d,[r8+0x90]
    22bdd7ce687f:	45 8d 60 70                                     	lea    r12d,[r8+0x70]
    22bdd7ce6883:	41 54                                           	push   r12
    22bdd7ce6885:	4c 89 9d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r11
    22bdd7ce688c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce6890:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce6893:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    22bdd7ce6899:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    22bdd7ce689f:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    22bdd7ce68a5:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7ce68aa:	45 8b cb                                        	mov    r9d,r11d
    22bdd7ce68ad:	e8 66 f9 f1 ff                                  	call   0x22bdd7c06218
    22bdd7ce68b2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce68b6:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce68bd:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    22bdd7ce68c5:	45 85 db                                        	test   r11d,r11d
    22bdd7ce68c8:	0f 85 61 01 00 00                               	jne    0x22bdd7ce6a2f
    22bdd7ce68ce:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce68d1:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    22bdd7ce68d6:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    22bdd7ce68dc:	0f 84 43 00 00 00                               	je     0x22bdd7ce6925
    22bdd7ce68e2:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce68e8:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce68ec:	41 53                                           	push   r11
    22bdd7ce68ee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce68f2:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    22bdd7ce68f8:	33 d2                                           	xor    edx,edx
    22bdd7ce68fa:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    22bdd7ce6901:	e8 3a f9 f1 ff                                  	call   0x22bdd7c06240
    22bdd7ce6906:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce6909:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce690d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce6914:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce691e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce6925:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    22bdd7ce692a:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    22bdd7ce6930:	0f 84 46 00 00 00                               	je     0x22bdd7ce697c
    22bdd7ce6936:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce693c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce6940:	41 53                                           	push   r11
    22bdd7ce6942:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce6946:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    22bdd7ce694c:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ce6951:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    22bdd7ce6958:	e8 e3 f8 f1 ff                                  	call   0x22bdd7c06240
    22bdd7ce695d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce6960:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce6964:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce696b:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce6975:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce697c:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    22bdd7ce6981:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    22bdd7ce6987:	0f 84 46 00 00 00                               	je     0x22bdd7ce69d3
    22bdd7ce698d:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce6993:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce6997:	41 53                                           	push   r11
    22bdd7ce6999:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce699d:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    22bdd7ce69a3:	ba 02 00 00 00                                  	mov    edx,0x2
    22bdd7ce69a8:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    22bdd7ce69af:	e8 8c f8 f1 ff                                  	call   0x22bdd7c06240
    22bdd7ce69b4:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce69b7:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce69bb:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce69c2:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce69cc:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce69d3:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    22bdd7ce69d8:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    22bdd7ce69de:	0f 84 6f 03 00 00                               	je     0x22bdd7ce6d53
    22bdd7ce69e4:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ce69ea:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ce69ee:	41 53                                           	push   r11
    22bdd7ce69f0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce69f4:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    22bdd7ce69fa:	ba 03 00 00 00                                  	mov    edx,0x3
    22bdd7ce69ff:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    22bdd7ce6a06:	e8 35 f8 f1 ff                                  	call   0x22bdd7c06240
    22bdd7ce6a0b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce6a0e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce6a12:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ce6a19:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce6a23:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce6a2a:	e9 24 03 00 00                                  	jmp    0x22bdd7ce6d53
    22bdd7ce6a2f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ce6a32:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    22bdd7ce6a3c:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    22bdd7ce6a42:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ce6a47:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce6a4b:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    22bdd7ce6a52:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ce6a56:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7ce6a5a:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    22bdd7ce6a64:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ce6a68:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    22bdd7ce6a6e:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ce6a72:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    22bdd7ce6a77:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    22bdd7ce6a81:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ce6a85:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    22bdd7ce6a8c:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    22bdd7ce6a90:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    22bdd7ce6a94:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    22bdd7ce6a98:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce6a9c:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    22bdd7ce6aa2:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ce6aa7:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    22bdd7ce6aab:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ce6aaf:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ce6ab4:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ce6ab9:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    22bdd7ce6abd:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6acc
    22bdd7ce6ac3:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce6ac7:	e9 04 00 00 00                                  	jmp    0x22bdd7ce6ad0
    22bdd7ce6acc:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce6ad0:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ce6ad5:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ce6ad9:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6ae8
    22bdd7ce6adf:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ce6ae3:	e9 05 00 00 00                                  	jmp    0x22bdd7ce6aed
    22bdd7ce6ae8:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ce6aed:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ce6af2:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ce6af6:	0f 84 9e 00 00 00                               	je     0x22bdd7ce6b9a
    22bdd7ce6afc:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    22bdd7ce6b00:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    22bdd7ce6b0a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce6b0e:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6b1d
    22bdd7ce6b14:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ce6b18:	e9 04 00 00 00                                  	jmp    0x22bdd7ce6b21
    22bdd7ce6b1d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ce6b21:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce6b25:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce6b35
    22bdd7ce6b2b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce6b30:	e9 05 00 00 00                                  	jmp    0x22bdd7ce6b3a
    22bdd7ce6b35:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce6b3a:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    22bdd7ce6b3e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce6b43:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ce6b48:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce6b4c:	4c 8b 15 fa df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdffa]        # 0x22bdd7ce4b4d
    22bdd7ce6b53:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7ce6b58:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7ce6b5d:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ce6b61:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    22bdd7ce6b6b:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7ce6b6f:	0f 85 04 00 00 00                               	jne    0x22bdd7ce6b79
    22bdd7ce6b75:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    22bdd7ce6b79:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ce6b7e:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce6b82:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ce6b86:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    22bdd7ce6b90:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7ce6b95:	e9 cc 00 00 00                                  	jmp    0x22bdd7ce6c66
    22bdd7ce6b9a:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    22bdd7ce6ba1:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce6ba5:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6bb4
    22bdd7ce6bab:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ce6baf:	e9 04 00 00 00                                  	jmp    0x22bdd7ce6bb8
    22bdd7ce6bb4:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ce6bb8:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce6bbc:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce6bcc
    22bdd7ce6bc2:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ce6bc7:	e9 05 00 00 00                                  	jmp    0x22bdd7ce6bd1
    22bdd7ce6bcc:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce6bd1:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    22bdd7ce6bdb:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    22bdd7ce6be1:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    22bdd7ce6be6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ce6bea:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6bf9
    22bdd7ce6bf0:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ce6bf4:	e9 04 00 00 00                                  	jmp    0x22bdd7ce6bfd
    22bdd7ce6bf9:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ce6bfd:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ce6c01:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce6c11
    22bdd7ce6c07:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ce6c0c:	e9 05 00 00 00                                  	jmp    0x22bdd7ce6c16
    22bdd7ce6c11:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ce6c16:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    22bdd7ce6c20:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce6c25:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    22bdd7ce6c29:	c4 01 7a 6f 9c 20 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r12*1+0x3630]
    22bdd7ce6c33:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ce6c38:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7ce6c3d:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ce6c41:	4c 8b 15 05 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf05]        # 0x22bdd7ce4b4d
    22bdd7ce6c48:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ce6c4d:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ce6c52:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ce6c56:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ce6c5a:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ce6c5e:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ce6c62:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ce6c66:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ce6c6b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ce6c6f:	4c 8b 15 d7 de ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffded7]        # 0x22bdd7ce4b4d
    22bdd7ce6c76:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ce6c7b:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ce6c80:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    22bdd7ce6c84:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ce6c8e:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    22bdd7ce6c98:	e9 b6 00 00 00                                  	jmp    0x22bdd7ce6d53
    22bdd7ce6c9d:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    22bdd7ce6ca4:	c4 a1 7a 10 44 26 50                            	vmovss xmm0,DWORD PTR [rsi+r12*1+0x50]
    22bdd7ce6cab:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    22bdd7ce6caf:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ce6cb6:	c5 fa 10 6c 3e 50                               	vmovss xmm5,DWORD PTR [rsi+rdi*1+0x50]
    22bdd7ce6cbc:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ce6cc0:	c4 a1 6a 59 74 3e 50                            	vmulss xmm6,xmm2,DWORD PTR [rsi+r15*1+0x50]
    22bdd7ce6cc7:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    22bdd7ce6ccb:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce6ccf:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    22bdd7ce6cd4:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce6cd8:	c4 21 7a 10 5c 26 54                            	vmovss xmm11,DWORD PTR [rsi+r12*1+0x54]
    22bdd7ce6cdf:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    22bdd7ce6ce3:	c5 fa 10 6c 3e 54                               	vmovss xmm5,DWORD PTR [rsi+rdi*1+0x54]
    22bdd7ce6ce9:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ce6ced:	c5 fb 11 85 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm0
    22bdd7ce6cf5:	c4 a1 6a 59 44 3e 54                            	vmulss xmm0,xmm2,DWORD PTR [rsi+r15*1+0x54]
    22bdd7ce6cfc:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    22bdd7ce6d00:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    22bdd7ce6d04:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce6d08:	41 8d b8 90 00 00 00                            	lea    edi,[r8+0x90]
    22bdd7ce6d0f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce6d13:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce6d16:	41 8b d3                                        	mov    edx,r11d
    22bdd7ce6d19:	c5 fb 10 8d f0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x210]
    22bdd7ce6d21:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7ce6d25:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ce6d28:	8b df                                           	mov    ebx,edi
    22bdd7ce6d2a:	e8 01 f8 f1 ff                                  	call   0x22bdd7c06530
    22bdd7ce6d2f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ce6d32:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce6d36:	c4 c1 7a 6f 84 38 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x90]
    22bdd7ce6d40:	c4 c1 7a 7f 84 38 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x190],xmm0
    22bdd7ce6d4a:	8b cf                                           	mov    ecx,edi
    22bdd7ce6d4c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    22bdd7ce6d53:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce6d57:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    22bdd7ce6d5f:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    22bdd7ce6d68:	0f 85 29 00 00 00                               	jne    0x22bdd7ce6d97
    22bdd7ce6d6e:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ce6d78:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ce6d82:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ce6d8c:	8b f9                                           	mov    edi,ecx
    22bdd7ce6d8e:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ce6d92:	e9 d4 01 00 00                                  	jmp    0x22bdd7ce6f6b
    22bdd7ce6d97:	c5 fb 10 85 a0 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x160]
    22bdd7ce6d9f:	c5 fa 59 85 80 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x180]
    22bdd7ce6da7:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    22bdd7ce6daf:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    22bdd7ce6db7:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    22bdd7ce6dbf:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    22bdd7ce6dc7:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ce6dcb:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ce6dcf:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    22bdd7ce6dd7:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ce6ddb:	4c 8b 15 84 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc884]        # 0x22bdd7ce3666
    22bdd7ce6de2:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce6de7:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    22bdd7ce6deb:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ce6def:	0f 87 04 00 00 00                               	ja     0x22bdd7ce6df9
    22bdd7ce6df5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ce6df9:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    22bdd7ce6e01:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    22bdd7ce6e08:	0f 85 28 00 00 00                               	jne    0x22bdd7ce6e36
    22bdd7ce6e0e:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ce6e18:	4c 8b 15 47 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc847]        # 0x22bdd7ce3666
    22bdd7ce6e1f:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ce6e24:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    22bdd7ce6e28:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce6e2c:	e8 8f 17 f2 ff                                  	call   0x22bdd7c085c0
    22bdd7ce6e31:	e9 8b 00 00 00                                  	jmp    0x22bdd7ce6ec1
    22bdd7ce6e36:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ce6e3a:	0f 84 5e 00 00 00                               	je     0x22bdd7ce6e9e
    22bdd7ce6e40:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    22bdd7ce6e4a:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    22bdd7ce6e54:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    22bdd7ce6e59:	7a 06                                           	jp     0x22bdd7ce6e61
    22bdd7ce6e5b:	0f 84 2a 00 00 00                               	je     0x22bdd7ce6e8b
    22bdd7ce6e61:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7ce6e65:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    22bdd7ce6e6a:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    22bdd7ce6e6e:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    22bdd7ce6e72:	0f 86 49 00 00 00                               	jbe    0x22bdd7ce6ec1
    22bdd7ce6e78:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce6e7c:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce6e81:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce6e86:	e9 5b 00 00 00                                  	jmp    0x22bdd7ce6ee6
    22bdd7ce6e8b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce6e8f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce6e94:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce6e99:	e9 44 00 00 00                                  	jmp    0x22bdd7ce6ee2
    22bdd7ce6e9e:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ce6ea8:	4c 8b 15 b7 c7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc7b7]        # 0x22bdd7ce3666
    22bdd7ce6eaf:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ce6eb4:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    22bdd7ce6eb8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce6ebc:	e8 ff 16 f2 ff                                  	call   0x22bdd7c085c0
    22bdd7ce6ec1:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ce6ec5:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ce6eca:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ce6ecf:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    22bdd7ce6ed3:	0f 87 09 00 00 00                               	ja     0x22bdd7ce6ee2
    22bdd7ce6ed9:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    22bdd7ce6edd:	e9 04 00 00 00                                  	jmp    0x22bdd7ce6ee6
    22bdd7ce6ee2:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce6ee6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ce6ee9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce6eed:	c4 c1 42 59 b4 38 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rdi*1+0x190]
    22bdd7ce6ef7:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    22bdd7ce6efb:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce6eff:	c4 01 3a 59 8c 18 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+r11*1+0x100]
    22bdd7ce6f09:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    22bdd7ce6f0e:	c4 c1 7a 11 b4 38 90 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x190],xmm6
    22bdd7ce6f18:	c4 41 42 59 8c 38 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rdi*1+0x194]
    22bdd7ce6f22:	c4 01 3a 59 94 18 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+r11*1+0x104]
    22bdd7ce6f2c:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    22bdd7ce6f31:	c4 41 7a 11 8c 38 94 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x194],xmm9
    22bdd7ce6f3b:	c4 c1 42 59 bc 38 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rdi*1+0x198]
    22bdd7ce6f45:	c4 01 3a 59 84 18 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+r11*1+0x108]
    22bdd7ce6f4f:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    22bdd7ce6f54:	c4 c1 7a 11 bc 38 98 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x198],xmm7
    22bdd7ce6f5e:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7ce6f62:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce6f66:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7ce6f6b:	c4 c1 7a 10 ac 38 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rdi*1+0x19c]
    22bdd7ce6f75:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce6f79:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7ce6f7c:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    22bdd7ce6f82:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    22bdd7ce6f88:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    22bdd7ce6f90:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    22bdd7ce6f94:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    22bdd7ce6f98:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    22bdd7ce6f9d:	e8 be f2 f1 ff                                  	call   0x22bdd7c06260
    22bdd7ce6fa2:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce6fa7:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    22bdd7ce6fab:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7ce6faf:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7ce6fb4:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7ce6fba:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7ce6fc0:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7ce6fc4:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    22bdd7ce6fcb:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    22bdd7ce6fd2:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ce6fd9:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7ce6fe1:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7ce6fe9:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7ce6ff1:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7ce6ff9:	e9 7a 57 00 00                                  	jmp    0x22bdd7cec778
    22bdd7ce6ffe:	49 8b db                                        	mov    rbx,r11
    22bdd7ce7001:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ce7005:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ce7009:	4b 89 5c 1c 70                                  	mov    QWORD PTR [r12+r11*1+0x70],rbx
    22bdd7ce700e:	4c 8d 3c 1a                                     	lea    r15,[rdx+rbx*1]
    22bdd7ce7012:	4f 89 bc 1c 80 00 00 00                         	mov    QWORD PTR [r12+r11*1+0x80],r15
    22bdd7ce701a:	48 8b fb                                        	mov    rdi,rbx
    22bdd7ce701d:	48 2b bd 18 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x2e8]
    22bdd7ce7024:	4b 89 7c 1c 78                                  	mov    QWORD PTR [r12+r11*1+0x78],rdi
    22bdd7ce7029:	48 8d 04 3a                                     	lea    rax,[rdx+rdi*1]
    22bdd7ce702d:	4b 89 84 1c 88 00 00 00                         	mov    QWORD PTR [r12+r11*1+0x88],rax
    22bdd7ce7035:	4f 89 4c 1c 50                                  	mov    QWORD PTR [r12+r11*1+0x50],r9
    22bdd7ce703a:	4a 8d 14 0e                                     	lea    rdx,[rsi+r9*1]
    22bdd7ce703e:	4b 89 54 1c 60                                  	mov    QWORD PTR [r12+r11*1+0x60],rdx
    22bdd7ce7043:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    22bdd7ce704a:	49 8b d1                                        	mov    rdx,r9
    22bdd7ce704d:	48 2b 95 38 fd ff ff                            	sub    rdx,QWORD PTR [rbp-0x2c8]
    22bdd7ce7054:	4b 89 54 1c 58                                  	mov    QWORD PTR [r12+r11*1+0x58],rdx
    22bdd7ce7059:	4c 8d 0c 16                                     	lea    r9,[rsi+rdx*1]
    22bdd7ce705d:	4f 89 4c 1c 68                                  	mov    QWORD PTR [r12+r11*1+0x68],r9
    22bdd7ce7062:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    22bdd7ce7066:	c4 81 7a 7f 7c 1c 40                            	vmovdqu XMMWORD PTR [r12+r11*1+0x40],xmm7
    22bdd7ce706d:	4c 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r15
    22bdd7ce7074:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
    22bdd7ce707b:	48 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rax
    22bdd7ce7082:	48 89 95 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rdx
    22bdd7ce7089:	4c 89 8d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r9
    22bdd7ce7090:	41 8b f8                                        	mov    edi,r8d
    22bdd7ce7093:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce7096:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7ce709a:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    22bdd7ce70a1:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    22bdd7ce70a5:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    22bdd7ce70aa:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ce70ae:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    22bdd7ce70b3:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    22bdd7ce70ba:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    22bdd7ce70c1:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    22bdd7ce70c8:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce70d1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce70da:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce70e3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce70ec:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce70f5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce70fe:	66 90                                           	xchg   ax,ax
    22bdd7ce7100:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ce7105:	0f 85 ff 58 00 00                               	jne    0x22bdd7ceca0a
    22bdd7ce710b:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ce710e:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce7113:	d3 e3                                           	shl    ebx,cl
    22bdd7ce7115:	85 9d b0 fd ff ff                               	test   DWORD PTR [rbp-0x250],ebx
    22bdd7ce711b:	0f 84 7a 03 00 00                               	je     0x22bdd7ce749b
    22bdd7ce7121:	43 8d 4c 83 40                                  	lea    ecx,[r11+r8*4+0x40]
    22bdd7ce7126:	48 89 9d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rbx
    22bdd7ce712d:	43 8d 5c c3 70                                  	lea    ebx,[r11+r8*8+0x70]
    22bdd7ce7132:	49 8b 1c 1c                                     	mov    rbx,QWORD PTR [r12+rbx*1]
    22bdd7ce7136:	c4 61 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,rbx
    22bdd7ce713b:	c4 41 7a 59 c9                                  	vmulss xmm9,xmm0,xmm9
    22bdd7ce7140:	c4 41 4a 5c d9                                  	vsubss xmm11,xmm6,xmm9
    22bdd7ce7145:	43 8d 5c c3 50                                  	lea    ebx,[r11+r8*8+0x50]
    22bdd7ce714a:	49 8b 1c 1c                                     	mov    rbx,QWORD PTR [r12+rbx*1]
    22bdd7ce714e:	c4 61 82 2a f3                                  	vcvtsi2ss xmm14,xmm15,rbx
    22bdd7ce7153:	c4 41 7a 59 f6                                  	vmulss xmm14,xmm0,xmm14
    22bdd7ce7158:	c4 41 22 5c de                                  	vsubss xmm11,xmm11,xmm14
    22bdd7ce715d:	c4 41 22 59 5c 34 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+rsi*1+0x18]
    22bdd7ce7164:	c4 01 32 59 4c 0c 18                            	vmulss xmm9,xmm9,DWORD PTR [r12+r9*1+0x18]
    22bdd7ce716b:	c4 41 0a 59 74 14 18                            	vmulss xmm14,xmm14,DWORD PTR [r12+rdx*1+0x18]
    22bdd7ce7172:	c4 41 32 58 ce                                  	vaddss xmm9,xmm9,xmm14
    22bdd7ce7177:	c4 41 22 58 c9                                  	vaddss xmm9,xmm11,xmm9
    22bdd7ce717c:	c4 41 3a 58 c9                                  	vaddss xmm9,xmm8,xmm9
    22bdd7ce7181:	c4 41 7a 11 0c 0c                               	vmovss DWORD PTR [r12+rcx*1],xmm9
    22bdd7ce7187:	41 8b 5c 04 68                                  	mov    ebx,DWORD PTR [r12+rax*1+0x68]
    22bdd7ce718c:	41 83 7c 04 68 00                               	cmp    DWORD PTR [r12+rax*1+0x68],0x0
    22bdd7ce7192:	0f 84 03 03 00 00                               	je     0x22bdd7ce749b
    22bdd7ce7198:	41 8b 9c 04 a4 00 00 00                         	mov    ebx,DWORD PTR [r12+rax*1+0xa4]
    22bdd7ce71a0:	41 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+rax*1+0xa4],0x0
    22bdd7ce71a9:	0f 85 ec 02 00 00                               	jne    0x22bdd7ce749b
    22bdd7ce71af:	41 8b 5c 04 0c                                  	mov    ebx,DWORD PTR [r12+rax*1+0xc]
    22bdd7ce71b4:	41 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+rax*1]
    22bdd7ce71b8:	45 8b d8                                        	mov    r11d,r8d
    22bdd7ce71bb:	41 d1 eb                                        	shr    r11d,1
    22bdd7ce71be:	45 03 df                                        	add    r11d,r15d
    22bdd7ce71c1:	44 0f af d9                                     	imul   r11d,ecx
    22bdd7ce71c5:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    22bdd7ce71c9:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    22bdd7ce71cd:	41 8b d8                                        	mov    ebx,r8d
    22bdd7ce71d0:	83 e3 01                                        	and    ebx,0x1
    22bdd7ce71d3:	45 8d 1c 9b                                     	lea    r11d,[r11+rbx*4]
    22bdd7ce71d7:	c4 01 7a 10 1c 1c                               	vmovss xmm11,DWORD PTR [r12+r11*1]
    22bdd7ce71dd:	45 8b 5c 04 6c                                  	mov    r11d,DWORD PTR [r12+rax*1+0x6c]
    22bdd7ce71e2:	41 81 eb 00 02 00 00                            	sub    r11d,0x200
    22bdd7ce71e9:	41 83 fb 08                                     	cmp    r11d,0x8
    22bdd7ce71ed:	0f 83 0b 00 00 00                               	jae    0x22bdd7ce71fe
    22bdd7ce71f3:	4c 8d 15 c6 5a 00 00                            	lea    r10,[rip+0x5ac6]        # 0x22bdd7ceccc0
    22bdd7ce71fa:	43 ff 24 da                                     	jmp    QWORD PTR [r10+r11*8]
    22bdd7ce71fe:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce7201:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce7208:	41 0f 95 c3                                     	setne  r11b
    22bdd7ce720c:	33 db                                           	xor    ebx,ebx
    22bdd7ce720e:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce7213:	0f 97 c3                                        	seta   bl
    22bdd7ce7216:	41 0b db                                        	or     ebx,r11d
    22bdd7ce7219:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce721c:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    22bdd7ce7224:	41 0f 93 c3                                     	setae  r11b
    22bdd7ce7228:	44 0b db                                        	or     r11d,ebx
    22bdd7ce722b:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce7230:	0f 87 15 02 00 00                               	ja     0x22bdd7ce744b
    22bdd7ce7236:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    22bdd7ce723c:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7ce723f:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ce7242:	44 8b db                                        	mov    r11d,ebx
    22bdd7ce7245:	41 8b da                                        	mov    ebx,r10d
    22bdd7ce7248:	e9 35 02 00 00                                  	jmp    0x22bdd7ce7482
    22bdd7ce724d:	41 bb 01 00 00 00                               	mov    r11d,0x1
    22bdd7ce7253:	e9 f3 01 00 00                                  	jmp    0x22bdd7ce744b
    22bdd7ce7258:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce725b:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce7262:	41 0f 95 c3                                     	setne  r11b
    22bdd7ce7266:	33 db                                           	xor    ebx,ebx
    22bdd7ce7268:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    22bdd7ce726d:	0f 93 c3                                        	setae  bl
    22bdd7ce7270:	41 0b db                                        	or     ebx,r11d
    22bdd7ce7273:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce7276:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    22bdd7ce727e:	41 0f 93 c3                                     	setae  r11b
    22bdd7ce7282:	44 0b db                                        	or     r11d,ebx
    22bdd7ce7285:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    22bdd7ce728a:	0f 83 bb 01 00 00                               	jae    0x22bdd7ce744b
    22bdd7ce7290:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    22bdd7ce7296:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7ce7299:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ce729c:	44 8b db                                        	mov    r11d,ebx
    22bdd7ce729f:	41 8b da                                        	mov    ebx,r10d
    22bdd7ce72a2:	e9 db 01 00 00                                  	jmp    0x22bdd7ce7482
    22bdd7ce72a7:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce72aa:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce72b1:	41 0f 95 c3                                     	setne  r11b
    22bdd7ce72b5:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce72ba:	7b 07                                           	jnp    0x22bdd7ce72c3
    22bdd7ce72bc:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ce72c1:	eb 06                                           	jmp    0x22bdd7ce72c9
    22bdd7ce72c3:	0f 95 c3                                        	setne  bl
    22bdd7ce72c6:	0f b6 db                                        	movzx  ebx,bl
    22bdd7ce72c9:	41 0b db                                        	or     ebx,r11d
    22bdd7ce72cc:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce72cf:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    22bdd7ce72d7:	41 0f 93 c3                                     	setae  r11b
    22bdd7ce72db:	44 0b db                                        	or     r11d,ebx
    22bdd7ce72de:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce72e3:	0f 8a 62 01 00 00                               	jp     0x22bdd7ce744b
    22bdd7ce72e9:	0f 85 5c 01 00 00                               	jne    0x22bdd7ce744b
    22bdd7ce72ef:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    22bdd7ce72f5:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7ce72f8:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ce72fb:	44 8b db                                        	mov    r11d,ebx
    22bdd7ce72fe:	41 8b da                                        	mov    ebx,r10d
    22bdd7ce7301:	e9 7c 01 00 00                                  	jmp    0x22bdd7ce7482
    22bdd7ce7306:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce7309:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce7310:	41 0f 95 c3                                     	setne  r11b
    22bdd7ce7314:	33 db                                           	xor    ebx,ebx
    22bdd7ce7316:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    22bdd7ce731b:	0f 97 c3                                        	seta   bl
    22bdd7ce731e:	41 0b db                                        	or     ebx,r11d
    22bdd7ce7321:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce7324:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    22bdd7ce732c:	41 0f 93 c3                                     	setae  r11b
    22bdd7ce7330:	44 0b db                                        	or     r11d,ebx
    22bdd7ce7333:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    22bdd7ce7338:	0f 87 0d 01 00 00                               	ja     0x22bdd7ce744b
    22bdd7ce733e:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    22bdd7ce7344:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7ce7347:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ce734a:	44 8b db                                        	mov    r11d,ebx
    22bdd7ce734d:	41 8b da                                        	mov    ebx,r10d
    22bdd7ce7350:	e9 2d 01 00 00                                  	jmp    0x22bdd7ce7482
    22bdd7ce7355:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce7358:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce735d:	41 0f 93 c3                                     	setae  r11b
    22bdd7ce7361:	33 db                                           	xor    ebx,ebx
    22bdd7ce7363:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    22bdd7ce736b:	0f 93 c3                                        	setae  bl
    22bdd7ce736e:	41 0b db                                        	or     ebx,r11d
    22bdd7ce7371:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce7374:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce737b:	41 0f 95 c3                                     	setne  r11b
    22bdd7ce737f:	44 0b db                                        	or     r11d,ebx
    22bdd7ce7382:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce7387:	0f 83 be 00 00 00                               	jae    0x22bdd7ce744b
    22bdd7ce738d:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    22bdd7ce7393:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7ce7396:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ce7399:	44 8b db                                        	mov    r11d,ebx
    22bdd7ce739c:	41 8b da                                        	mov    ebx,r10d
    22bdd7ce739f:	e9 de 00 00 00                                  	jmp    0x22bdd7ce7482
    22bdd7ce73a4:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce73a7:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce73ae:	41 0f 95 c3                                     	setne  r11b
    22bdd7ce73b2:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce73b7:	7b 04                                           	jnp    0x22bdd7ce73bd
    22bdd7ce73b9:	33 db                                           	xor    ebx,ebx
    22bdd7ce73bb:	eb 06                                           	jmp    0x22bdd7ce73c3
    22bdd7ce73bd:	0f 94 c3                                        	sete   bl
    22bdd7ce73c0:	0f b6 db                                        	movzx  ebx,bl
    22bdd7ce73c3:	41 0b db                                        	or     ebx,r11d
    22bdd7ce73c6:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce73c9:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    22bdd7ce73d1:	41 0f 93 c3                                     	setae  r11b
    22bdd7ce73d5:	44 0b db                                        	or     r11d,ebx
    22bdd7ce73d8:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce73dd:	7a 06                                           	jp     0x22bdd7ce73e5
    22bdd7ce73df:	0f 84 66 00 00 00                               	je     0x22bdd7ce744b
    22bdd7ce73e5:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    22bdd7ce73eb:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7ce73ee:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ce73f1:	44 8b db                                        	mov    r11d,ebx
    22bdd7ce73f4:	41 8b da                                        	mov    ebx,r10d
    22bdd7ce73f7:	e9 86 00 00 00                                  	jmp    0x22bdd7ce7482
    22bdd7ce73fc:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce73ff:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce7406:	41 0f 95 c3                                     	setne  r11b
    22bdd7ce740a:	33 db                                           	xor    ebx,ebx
    22bdd7ce740c:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce7411:	0f 97 c3                                        	seta   bl
    22bdd7ce7414:	41 0b db                                        	or     ebx,r11d
    22bdd7ce7417:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce741a:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    22bdd7ce7422:	41 0f 93 c3                                     	setae  r11b
    22bdd7ce7426:	44 0b db                                        	or     r11d,ebx
    22bdd7ce7429:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    22bdd7ce742e:	0f 87 17 00 00 00                               	ja     0x22bdd7ce744b
    22bdd7ce7434:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    22bdd7ce743a:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7ce743d:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ce7440:	44 8b db                                        	mov    r11d,ebx
    22bdd7ce7443:	41 8b da                                        	mov    ebx,r10d
    22bdd7ce7446:	e9 37 00 00 00                                  	jmp    0x22bdd7ce7482
    22bdd7ce744b:	41 8b db                                        	mov    ebx,r11d
    22bdd7ce744e:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    22bdd7ce7454:	e9 29 00 00 00                                  	jmp    0x22bdd7ce7482
    22bdd7ce7459:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce745c:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    22bdd7ce7463:	41 0f 95 c3                                     	setne  r11b
    22bdd7ce7467:	33 db                                           	xor    ebx,ebx
    22bdd7ce7469:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    22bdd7ce7471:	0f 93 c3                                        	setae  bl
    22bdd7ce7474:	41 0b db                                        	or     ebx,r11d
    22bdd7ce7477:	44 8b 9d d8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x228]
    22bdd7ce747e:	41 83 f3 ff                                     	xor    r11d,0xffffffff
    22bdd7ce7482:	44 23 9d b0 fd ff ff                            	and    r11d,DWORD PTR [rbp-0x250]
    22bdd7ce7489:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    22bdd7ce7490:	4c 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r11
    22bdd7ce7497:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ce749b:	41 83 c0 01                                     	add    r8d,0x1
    22bdd7ce749f:	41 83 f8 04                                     	cmp    r8d,0x4
    22bdd7ce74a3:	0f 85 57 fc ff ff                               	jne    0x22bdd7ce7100
    22bdd7ce74a9:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    22bdd7ce74ad:	44 8b 85 b0 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x250]
    22bdd7ce74b4:	45 85 c0                                        	test   r8d,r8d
    22bdd7ce74b7:	0f 85 26 00 00 00                               	jne    0x22bdd7ce74e3
    22bdd7ce74bd:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    22bdd7ce74c3:	4c 8b d6                                        	mov    r10,rsi
    22bdd7ce74c6:	49 8b f4                                        	mov    rsi,r12
    22bdd7ce74c9:	4d 8b e2                                        	mov    r12,r10
    22bdd7ce74cc:	4c 8b d8                                        	mov    r11,rax
    22bdd7ce74cf:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ce74d4:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    22bdd7ce74d8:	4c 8b fa                                        	mov    r15,rdx
    22bdd7ce74db:	49 8b f9                                        	mov    rdi,r9
    22bdd7ce74de:	e9 95 52 00 00                                  	jmp    0x22bdd7cec778
    22bdd7ce74e3:	c4 61 82 2a 4d 88                               	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0x78]
    22bdd7ce74e9:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    22bdd7ce74ee:	c4 61 82 2a 9d a0 fe ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x160]
    22bdd7ce74f7:	c4 43 31 21 cb 10                               	vinsertps xmm9,xmm9,xmm11,0x10
    22bdd7ce74fd:	c4 61 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x100]
    22bdd7ce7506:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    22bdd7ce750c:	c4 61 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0xe0]
    22bdd7ce7515:	c4 43 31 21 cb 30                               	vinsertps xmm9,xmm9,xmm11,0x30
    22bdd7ce751b:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    22bdd7ce7523:	c4 41 20 59 c9                                  	vmulps xmm9,xmm11,xmm9
    22bdd7ce7528:	49 8d 5c 24 1c                                  	lea    rbx,[r12+0x1c]
    22bdd7ce752d:	c4 22 79 18 34 0b                               	vbroadcastss xmm14,DWORD PTR [rbx+r9*1]
    22bdd7ce7533:	c4 41 30 59 f6                                  	vmulps xmm14,xmm9,xmm14
    22bdd7ce7538:	c4 e1 82 2a 8d 78 ff ff ff                      	vcvtsi2ss xmm1,xmm15,QWORD PTR [rbp-0x88]
    22bdd7ce7541:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    22bdd7ce7546:	c4 e1 82 2a 95 28 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xd8]
    22bdd7ce754f:	c4 e3 71 21 ca 10                               	vinsertps xmm1,xmm1,xmm2,0x10
    22bdd7ce7555:	c4 e1 82 2a 95 30 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xd0]
    22bdd7ce755e:	c4 e3 71 21 ca 20                               	vinsertps xmm1,xmm1,xmm2,0x20
    22bdd7ce7564:	c4 e1 82 2a 95 38 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xc8]
    22bdd7ce756d:	c4 e3 71 21 ca 30                               	vinsertps xmm1,xmm1,xmm2,0x30
    22bdd7ce7573:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    22bdd7ce7577:	c4 e2 79 18 14 13                               	vbroadcastss xmm2,DWORD PTR [rbx+rdx*1]
    22bdd7ce757d:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    22bdd7ce7581:	c5 88 58 da                                     	vaddps xmm3,xmm14,xmm2
    22bdd7ce7585:	4c 8b 15 c1 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5c1]        # 0x22bdd7ce4b4d
    22bdd7ce758c:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7ce7591:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7ce7595:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    22bdd7ce759a:	c5 30 5c c9                                     	vsubps xmm9,xmm9,xmm1
    22bdd7ce759e:	c4 e2 79 18 0c 33                               	vbroadcastss xmm1,DWORD PTR [rbx+rsi*1]
    22bdd7ce75a4:	c5 30 59 c9                                     	vmulps xmm9,xmm9,xmm1
    22bdd7ce75a8:	c4 c1 60 58 c9                                  	vaddps xmm1,xmm3,xmm9
    22bdd7ce75ad:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    22bdd7ce75b1:	c5 f0 c2 c3 02                                  	vcmpleps xmm0,xmm1,xmm3
    22bdd7ce75b6:	c5 f8 50 d8                                     	vmovmskps ebx,xmm0
    22bdd7ce75ba:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7ce75bd:	41 23 d8                                        	and    ebx,r8d
    22bdd7ce75c0:	0f 85 0c 00 00 00                               	jne    0x22bdd7ce75d2
    22bdd7ce75c6:	48 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rbx
    22bdd7ce75cd:	e9 df 2a 00 00                                  	jmp    0x22bdd7cea0b1
    22bdd7ce75d2:	c5 d0 5e c1                                     	vdivps xmm0,xmm5,xmm1
    22bdd7ce75d6:	4d 8d 44 24 2c                                  	lea    r8,[r12+0x2c]
    22bdd7ce75db:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    22bdd7ce75e1:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    22bdd7ce75e5:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    22bdd7ce75eb:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    22bdd7ce75ef:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    22bdd7ce75f3:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    22bdd7ce75f9:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ce75fd:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    22bdd7ce7601:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    22bdd7ce7605:	4d 8d 44 24 28                                  	lea    r8,[r12+0x28]
    22bdd7ce760a:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    22bdd7ce7610:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    22bdd7ce7614:	c5 f8 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm6
    22bdd7ce761c:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    22bdd7ce7622:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    22bdd7ce7626:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    22bdd7ce762a:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    22bdd7ce7630:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ce7634:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    22bdd7ce7638:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    22bdd7ce763c:	4d 8d 44 24 24                                  	lea    r8,[r12+0x24]
    22bdd7ce7641:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    22bdd7ce7647:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    22bdd7ce764b:	c5 f8 11 b5 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm6
    22bdd7ce7653:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    22bdd7ce7659:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    22bdd7ce765d:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    22bdd7ce7661:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    22bdd7ce7667:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ce766b:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    22bdd7ce766f:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    22bdd7ce7673:	4d 8d 44 24 20                                  	lea    r8,[r12+0x20]
    22bdd7ce7678:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    22bdd7ce767e:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    22bdd7ce7682:	c5 f8 11 b5 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm6
    22bdd7ce768a:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    22bdd7ce7690:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    22bdd7ce7694:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    22bdd7ce7698:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    22bdd7ce769e:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ce76a2:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    22bdd7ce76a6:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    22bdd7ce76aa:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ce76b1:	43 8b 8c 04 34 01 00 00                         	mov    ecx,DWORD PTR [r12+r8*1+0x134]
    22bdd7ce76b9:	83 e9 01                                        	sub    ecx,0x1
    22bdd7ce76bc:	48 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rbx
    22bdd7ce76c3:	83 f9 01                                        	cmp    ecx,0x1
    22bdd7ce76c6:	0f 86 59 17 00 00                               	jbe    0x22bdd7ce8e25
    22bdd7ce76cc:	43 8b 8c 04 38 01 00 00                         	mov    ecx,DWORD PTR [r12+r8*1+0x138]
    22bdd7ce76d4:	43 83 bc 04 38 01 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x138],0x0
    22bdd7ce76dd:	0f 85 24 00 00 00                               	jne    0x22bdd7ce7707
    22bdd7ce76e3:	c5 78 10 85 40 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xc0]
    22bdd7ce76eb:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    22bdd7ce76ef:	c5 f8 10 b5 10 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xf0]
    22bdd7ce76f7:	c5 f8 10 bd f0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x110]
    22bdd7ce76ff:	41 8b fb                                        	mov    edi,r11d
    22bdd7ce7702:	e9 0f 29 00 00                                  	jmp    0x22bdd7cea016
    22bdd7ce7707:	48 8b cb                                        	mov    rcx,rbx
    22bdd7ce770a:	83 e1 08                                        	and    ecx,0x8
    22bdd7ce770d:	83 e3 04                                        	and    ebx,0x4
    22bdd7ce7710:	48 89 8d a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rcx
    22bdd7ce7717:	48 8b 8d 38 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xc8]
    22bdd7ce771e:	83 e1 02                                        	and    ecx,0x2
    22bdd7ce7721:	4c 8b 85 38 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xc8]
    22bdd7ce7728:	41 83 e0 01                                     	and    r8d,0x1
    22bdd7ce772c:	c5 f8 11 b5 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm6
    22bdd7ce7734:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    22bdd7ce773c:	c5 f8 11 85 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm0
    22bdd7ce7744:	c5 78 11 8d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm9
    22bdd7ce774c:	c5 f8 11 95 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm2
    22bdd7ce7754:	c5 78 11 b5 30 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1d0],xmm14
    22bdd7ce775c:	c5 f8 11 ad 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm5
    22bdd7ce7764:	c5 f8 11 9d 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm3
    22bdd7ce776c:	48 89 9d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rbx
    22bdd7ce7773:	48 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rcx
    22bdd7ce777a:	4c 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r8
    22bdd7ce7781:	33 ff                                           	xor    edi,edi
    22bdd7ce7783:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    22bdd7ce778b:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    22bdd7ce7793:	e9 50 00 00 00                                  	jmp    0x22bdd7ce77e8
    22bdd7ce7798:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce77a1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce77aa:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce77b3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce77bc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    22bdd7ce77c0:	c5 f8 10 9d 10 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1f0]
    22bdd7ce77c8:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    22bdd7ce77d0:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    22bdd7ce77d8:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    22bdd7ce77e0:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    22bdd7ce77e8:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ce77ef:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce77f2:	8b 95 00 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x400]
    22bdd7ce77f8:	8b 9d 08 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3f8]
    22bdd7ce77fe:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    22bdd7ce7805:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    22bdd7ce780c:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ce7811:	0f 85 84 52 00 00                               	jne    0x22bdd7ceca9b
    22bdd7ce7817:	47 8b 8c 04 3c 01 00 00                         	mov    r9d,DWORD PTR [r12+r8*1+0x13c]
    22bdd7ce781f:	8b cf                                           	mov    ecx,edi
    22bdd7ce7821:	41 d3 e9                                        	shr    r9d,cl
    22bdd7ce7824:	41 f6 c1 01                                     	test   r9b,0x1
    22bdd7ce7828:	0f 85 31 00 00 00                               	jne    0x22bdd7ce785f
    22bdd7ce782e:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    22bdd7ce7835:	44 8b cf                                        	mov    r9d,edi
    22bdd7ce7838:	41 c1 e1 06                                     	shl    r9d,0x6
    22bdd7ce783c:	41 03 c9                                        	add    ecx,r9d
    22bdd7ce783f:	c4 c1 7a 7f 6c 0c 30                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x30],xmm5
    22bdd7ce7846:	c4 c1 7a 7f 6c 0c 20                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x20],xmm5
    22bdd7ce784d:	c4 c1 7a 7f 6c 0c 10                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x10],xmm5
    22bdd7ce7854:	c4 c1 7a 7f 2c 0c                               	vmovdqu XMMWORD PTR [r12+rcx*1],xmm5
    22bdd7ce785a:	e9 14 12 00 00                                  	jmp    0x22bdd7ce8a73
    22bdd7ce785f:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    22bdd7ce7866:	44 8b cf                                        	mov    r9d,edi
    22bdd7ce7869:	41 c1 e1 06                                     	shl    r9d,0x6
    22bdd7ce786d:	44 03 c9                                        	add    r9d,ecx
    22bdd7ce7870:	6b cf 4c                                        	imul   ecx,edi,0x4c
    22bdd7ce7873:	03 c8                                           	add    ecx,eax
    22bdd7ce7875:	41 8b 7c 0c 38                                  	mov    edi,DWORD PTR [r12+rcx*1+0x38]
    22bdd7ce787a:	41 83 7c 0c 38 00                               	cmp    DWORD PTR [r12+rcx*1+0x38],0x0
    22bdd7ce7880:	0f 85 a1 11 00 00                               	jne    0x22bdd7ce8a27
    22bdd7ce7886:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    22bdd7ce788c:	c1 e7 04                                        	shl    edi,0x4
    22bdd7ce788f:	46 8d 04 3f                                     	lea    r8d,[rdi+r15*1]
    22bdd7ce7893:	4d 8d 7c 24 04                                  	lea    r15,[r12+0x4]
    22bdd7ce7898:	c4 02 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+r8*1]
    22bdd7ce789e:	c4 41 08 59 c0                                  	vmulps xmm8,xmm14,xmm8
    22bdd7ce78a3:	8d 04 3b                                        	lea    eax,[rbx+rdi*1]
    22bdd7ce78a6:	c4 42 79 18 14 07                               	vbroadcastss xmm10,DWORD PTR [r15+rax*1]
    22bdd7ce78ac:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
    22bdd7ce78b1:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    22bdd7ce78b6:	03 fa                                           	add    edi,edx
    22bdd7ce78b8:	c4 42 79 18 14 3f                               	vbroadcastss xmm10,DWORD PTR [r15+rdi*1]
    22bdd7ce78be:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    22bdd7ce78c3:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    22bdd7ce78c8:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    22bdd7ce78cd:	c4 02 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+r8*1]
    22bdd7ce78d3:	c4 41 08 59 d2                                  	vmulps xmm10,xmm14,xmm10
    22bdd7ce78d8:	c4 42 79 18 1c 04                               	vbroadcastss xmm11,DWORD PTR [r12+rax*1]
    22bdd7ce78de:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    22bdd7ce78e3:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    22bdd7ce78e8:	c4 42 79 18 1c 3c                               	vbroadcastss xmm11,DWORD PTR [r12+rdi*1]
    22bdd7ce78ee:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    22bdd7ce78f3:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    22bdd7ce78f8:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    22bdd7ce78fd:	45 8b 3c 0c                                     	mov    r15d,DWORD PTR [r12+rcx*1]
    22bdd7ce7901:	41 83 ff 01                                     	cmp    r15d,0x1
    22bdd7ce7905:	0f 85 2d 0e 00 00                               	jne    0x22bdd7ce8738
    22bdd7ce790b:	41 8b 5c 0c 28                                  	mov    ebx,DWORD PTR [r12+rcx*1+0x28]
    22bdd7ce7910:	85 db                                           	test   ebx,ebx
    22bdd7ce7912:	0f 84 20 0e 00 00                               	je     0x22bdd7ce8738
    22bdd7ce7918:	41 8b 54 0c 1c                                  	mov    edx,DWORD PTR [r12+rcx*1+0x1c]
    22bdd7ce791d:	85 d2                                           	test   edx,edx
    22bdd7ce791f:	0f 8e 13 0e 00 00                               	jle    0x22bdd7ce8738
    22bdd7ce7925:	45 8b 5c 0c 20                                  	mov    r11d,DWORD PTR [r12+rcx*1+0x20]
    22bdd7ce792a:	45 85 db                                        	test   r11d,r11d
    22bdd7ce792d:	0f 8e 01 0e 00 00                               	jle    0x22bdd7ce8734
    22bdd7ce7933:	44 8b d2                                        	mov    r10d,edx
    22bdd7ce7936:	c4 41 82 2a da                                  	vcvtsi2ss xmm11,xmm15,r10
    22bdd7ce793b:	c4 42 79 18 db                                  	vbroadcastss xmm11,xmm11
    22bdd7ce7940:	41 8b 7c 0c 10                                  	mov    edi,DWORD PTR [r12+rcx*1+0x10]
    22bdd7ce7945:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce7948:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    22bdd7ce794e:	41 0f 95 c0                                     	setne  r8b
    22bdd7ce7952:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    22bdd7ce7958:	40 0f 95 c7                                     	setne  dil
    22bdd7ce795c:	40 0f b6 ff                                     	movzx  edi,dil
    22bdd7ce7960:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
    22bdd7ce7967:	41 23 f8                                        	and    edi,r8d
    22bdd7ce796a:	0f 85 0f 00 00 00                               	jne    0x22bdd7ce797f
    22bdd7ce7970:	c4 41 60 5f d2                                  	vmaxps xmm10,xmm3,xmm10
    22bdd7ce7975:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    22bdd7ce797a:	e9 0b 00 00 00                                  	jmp    0x22bdd7ce798a
    22bdd7ce797f:	c4 43 79 08 e2 09                               	vroundps xmm12,xmm10,0x9
    22bdd7ce7985:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    22bdd7ce798a:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    22bdd7ce798f:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ce7992:	c4 41 82 2a da                                  	vcvtsi2ss xmm11,xmm15,r10
    22bdd7ce7997:	c4 42 79 18 db                                  	vbroadcastss xmm11,xmm11
    22bdd7ce799c:	45 8b 44 0c 14                                  	mov    r8d,DWORD PTR [r12+rcx*1+0x14]
    22bdd7ce79a1:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce79a4:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    22bdd7ce79ab:	41 0f 95 c7                                     	setne  r15b
    22bdd7ce79af:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    22bdd7ce79b6:	41 0f 95 c0                                     	setne  r8b
    22bdd7ce79ba:	45 0f b6 c0                                     	movzx  r8d,r8b
    22bdd7ce79be:	45 23 c7                                        	and    r8d,r15d
    22bdd7ce79c1:	0f 85 0f 00 00 00                               	jne    0x22bdd7ce79d6
    22bdd7ce79c7:	c4 41 60 5f c0                                  	vmaxps xmm8,xmm3,xmm8
    22bdd7ce79cc:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    22bdd7ce79d1:	e9 0b 00 00 00                                  	jmp    0x22bdd7ce79e1
    22bdd7ce79d6:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    22bdd7ce79dc:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    22bdd7ce79e1:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    22bdd7ce79e6:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    22bdd7ce79f0:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    22bdd7ce79f5:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    22bdd7ce79fa:	c4 41 38 58 e3                                  	vaddps xmm12,xmm8,xmm11
    22bdd7ce79ff:	45 8b 7c 0c 0c                                  	mov    r15d,DWORD PTR [r12+rcx*1+0xc]
    22bdd7ce7a04:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce7a07:	41 81 7c 0c 0c 00 26 00 00                      	cmp    DWORD PTR [r12+rcx*1+0xc],0x2600
    22bdd7ce7a10:	41 0f 94 c7                                     	sete   r15b
    22bdd7ce7a14:	45 85 ff                                        	test   r15d,r15d
    22bdd7ce7a17:	0f 85 6b 00 00 00                               	jne    0x22bdd7ce7a88
    22bdd7ce7a1d:	c4 43 79 08 c4 09                               	vroundps xmm8,xmm12,0x9
    22bdd7ce7a23:	49 ba 50 d8 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d850
    22bdd7ce7a2d:	c4 41 38 54 2a                                  	vandps xmm13,xmm8,XMMWORD PTR [r10]
    22bdd7ce7a32:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    22bdd7ce7a3c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7ce7a41:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7ce7a45:	c5 10 c2 eb 01                                  	vcmpltps xmm13,xmm13,xmm3
    22bdd7ce7a4a:	4c 8b 15 d8 b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb8d8]        # 0x22bdd7ce3329
    22bdd7ce7a51:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7ce7a57:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    22bdd7ce7a5c:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7ce7a62:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    22bdd7ce7a66:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    22bdd7ce7a6b:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    22bdd7ce7a70:	c4 41 79 28 d8                                  	vmovapd xmm11,xmm8
    22bdd7ce7a75:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    22bdd7ce7a7a:	c4 41 79 28 e5                                  	vmovapd xmm12,xmm13
    22bdd7ce7a7f:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    22bdd7ce7a83:	e9 4a 00 00 00                                  	jmp    0x22bdd7ce7ad2
    22bdd7ce7a88:	c4 43 79 08 d8 09                               	vroundps xmm11,xmm8,0x9
    22bdd7ce7a8e:	4c 8b 15 90 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff90]        # 0x22bdd7ce7a25
    22bdd7ce7a95:	c4 41 20 54 22                                  	vandps xmm12,xmm11,XMMWORD PTR [r10]
    22bdd7ce7a9a:	4c 8b 15 93 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff93]        # 0x22bdd7ce7a34
    22bdd7ce7aa1:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    22bdd7ce7aa6:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    22bdd7ce7aab:	c4 41 18 c2 e5 01                               	vcmpltps xmm12,xmm12,xmm13
    22bdd7ce7ab1:	4c 8b 15 71 b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb871]        # 0x22bdd7ce3329
    22bdd7ce7ab8:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    22bdd7ce7abe:	c4 c1 20 54 e7                                  	vandps xmm4,xmm11,xmm15
    22bdd7ce7ac3:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    22bdd7ce7ac9:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    22bdd7ce7acd:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    22bdd7ce7ad2:	c4 c3 79 08 da 09                               	vroundps xmm3,xmm10,0x9
    22bdd7ce7ad8:	4c 8b 15 4a b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb84a]        # 0x22bdd7ce3329
    22bdd7ce7adf:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    22bdd7ce7ae4:	c4 c1 60 54 ff                                  	vandps xmm7,xmm3,xmm15
    22bdd7ce7ae9:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    22bdd7ce7aef:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    22bdd7ce7af3:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    22bdd7ce7af8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    22bdd7ce7b02:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    22bdd7ce7b07:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    22bdd7ce7b0b:	4c 8b 15 13 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff13]        # 0x22bdd7ce7a25
    22bdd7ce7b12:	c4 41 60 54 0a                                  	vandps xmm9,xmm3,XMMWORD PTR [r10]
    22bdd7ce7b17:	c4 41 30 c2 cd 01                               	vcmpltps xmm9,xmm9,xmm13
    22bdd7ce7b1d:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    22bdd7ce7b21:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    22bdd7ce7b26:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce7b2b:	8d 42 ff                                        	lea    eax,[rdx-0x1]
    22bdd7ce7b2e:	c5 79 6e c8                                     	vmovd  xmm9,eax
    22bdd7ce7b32:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    22bdd7ce7b37:	41 8b 44 0c 2c                                  	mov    eax,DWORD PTR [r12+rcx*1+0x2c]
    22bdd7ce7b3c:	c4 62 41 3d e9                                  	vpmaxsd xmm13,xmm7,xmm1
    22bdd7ce7b41:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    22bdd7ce7b46:	85 ff                                           	test   edi,edi
    22bdd7ce7b48:	0f 84 5a 00 00 00                               	je     0x22bdd7ce7ba8
    22bdd7ce7b4e:	c5 79 6e e8                                     	vmovd  xmm13,eax
    22bdd7ce7b52:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7ce7b57:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    22bdd7ce7b5c:	85 c0                                           	test   eax,eax
    22bdd7ce7b5e:	0f 85 44 00 00 00                               	jne    0x22bdd7ce7ba8
    22bdd7ce7b64:	c5 79 6e ea                                     	vmovd  xmm13,edx
    22bdd7ce7b68:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7ce7b6d:	c4 c1 41 66 d1                                  	vpcmpgtd xmm2,xmm7,xmm9
    22bdd7ce7b72:	c4 c1 69 db d5                                  	vpand  xmm2,xmm2,xmm13
    22bdd7ce7b77:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ce7b7c:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    22bdd7ce7b81:	c5 71 66 f7                                     	vpcmpgtd xmm14,xmm1,xmm7
    22bdd7ce7b85:	c5 09 df fa                                     	vpandn xmm15,xmm14,xmm2
    22bdd7ce7b89:	c4 41 11 db ee                                  	vpand  xmm13,xmm13,xmm14
    22bdd7ce7b8e:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    22bdd7ce7b93:	c4 41 41 fe ed                                  	vpaddd xmm13,xmm7,xmm13
    22bdd7ce7b98:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    22bdd7ce7ba0:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    22bdd7ce7ba8:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    22bdd7ce7bac:	c4 c1 59 db c4                                  	vpand  xmm0,xmm4,xmm12
    22bdd7ce7bb1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ce7bb6:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    22bdd7ce7bba:	c4 41 79 6e e1                                  	vmovd  xmm12,r9d
    22bdd7ce7bbf:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce7bc4:	41 8b 4c 0c 30                                  	mov    ecx,DWORD PTR [r12+rcx*1+0x30]
    22bdd7ce7bc9:	c4 e2 79 3d e1                                  	vpmaxsd xmm4,xmm0,xmm1
    22bdd7ce7bce:	c4 c2 59 39 e4                                  	vpminsd xmm4,xmm4,xmm12
    22bdd7ce7bd3:	45 85 c0                                        	test   r8d,r8d
    22bdd7ce7bd6:	0f 84 49 00 00 00                               	je     0x22bdd7ce7c25
    22bdd7ce7bdc:	c5 f9 6e e1                                     	vmovd  xmm4,ecx
    22bdd7ce7be0:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    22bdd7ce7be5:	c5 d9 db e0                                     	vpand  xmm4,xmm4,xmm0
    22bdd7ce7be9:	85 c9                                           	test   ecx,ecx
    22bdd7ce7beb:	0f 85 34 00 00 00                               	jne    0x22bdd7ce7c25
    22bdd7ce7bf1:	c4 c1 79 6e e3                                  	vmovd  xmm4,r11d
    22bdd7ce7bf6:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    22bdd7ce7bfb:	c4 c1 79 66 d4                                  	vpcmpgtd xmm2,xmm0,xmm12
    22bdd7ce7c00:	c5 e9 db d4                                     	vpand  xmm2,xmm2,xmm4
    22bdd7ce7c04:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ce7c09:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    22bdd7ce7c0e:	c5 71 66 f0                                     	vpcmpgtd xmm14,xmm1,xmm0
    22bdd7ce7c12:	c5 09 df fa                                     	vpandn xmm15,xmm14,xmm2
    22bdd7ce7c16:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    22bdd7ce7c1b:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    22bdd7ce7c20:	c4 c1 79 fe e6                                  	vpaddd xmm4,xmm0,xmm14
    22bdd7ce7c25:	c5 f9 6e d2                                     	vmovd  xmm2,edx
    22bdd7ce7c29:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    22bdd7ce7c2e:	c4 e2 59 40 e2                                  	vpmulld xmm4,xmm4,xmm2
    22bdd7ce7c33:	c4 41 59 fe f5                                  	vpaddd xmm14,xmm4,xmm13
    22bdd7ce7c38:	c4 63 79 16 f2 03                               	vpextrd edx,xmm14,0x3
    22bdd7ce7c3e:	c4 43 79 16 f1 02                               	vpextrd r9d,xmm14,0x2
    22bdd7ce7c44:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    22bdd7ce7c4b:	c4 63 79 16 f2 01                               	vpextrd edx,xmm14,0x1
    22bdd7ce7c51:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    22bdd7ce7c58:	c4 41 79 7e f1                                  	vmovd  r9d,xmm14
    22bdd7ce7c5d:	45 85 ff                                        	test   r15d,r15d
    22bdd7ce7c60:	0f 85 dd 08 00 00                               	jne    0x22bdd7ce8543
    22bdd7ce7c66:	c5 c1 fe fe                                     	vpaddd xmm7,xmm7,xmm6
    22bdd7ce7c6a:	c4 62 41 3d f1                                  	vpmaxsd xmm14,xmm7,xmm1
    22bdd7ce7c6f:	c4 42 09 39 f1                                  	vpminsd xmm14,xmm14,xmm9
    22bdd7ce7c74:	85 ff                                           	test   edi,edi
    22bdd7ce7c76:	0f 84 41 00 00 00                               	je     0x22bdd7ce7cbd
    22bdd7ce7c7c:	c5 79 6e f0                                     	vmovd  xmm14,eax
    22bdd7ce7c80:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    22bdd7ce7c85:	c4 41 41 db f6                                  	vpand  xmm14,xmm7,xmm14
    22bdd7ce7c8a:	85 c0                                           	test   eax,eax
    22bdd7ce7c8c:	0f 85 2b 00 00 00                               	jne    0x22bdd7ce7cbd
    22bdd7ce7c92:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    22bdd7ce7c97:	c5 31 db ca                                     	vpand  xmm9,xmm9,xmm2
    22bdd7ce7c9b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ce7ca0:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    22bdd7ce7ca5:	c5 71 66 f7                                     	vpcmpgtd xmm14,xmm1,xmm7
    22bdd7ce7ca9:	c4 41 09 df f9                                  	vpandn xmm15,xmm14,xmm9
    22bdd7ce7cae:	c4 41 69 db ce                                  	vpand  xmm9,xmm2,xmm14
    22bdd7ce7cb3:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ce7cb8:	c4 41 41 fe f1                                  	vpaddd xmm14,xmm7,xmm9
    22bdd7ce7cbd:	c5 f9 fe c6                                     	vpaddd xmm0,xmm0,xmm6
    22bdd7ce7cc1:	c4 e2 79 3d f9                                  	vpmaxsd xmm7,xmm0,xmm1
    22bdd7ce7cc6:	c4 c2 41 39 fc                                  	vpminsd xmm7,xmm7,xmm12
    22bdd7ce7ccb:	45 85 c0                                        	test   r8d,r8d
    22bdd7ce7cce:	0f 84 49 00 00 00                               	je     0x22bdd7ce7d1d
    22bdd7ce7cd4:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    22bdd7ce7cd8:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7ce7cdd:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
    22bdd7ce7ce1:	85 c9                                           	test   ecx,ecx
    22bdd7ce7ce3:	0f 85 34 00 00 00                               	jne    0x22bdd7ce7d1d
    22bdd7ce7ce9:	c4 c1 79 6e fb                                  	vmovd  xmm7,r11d
    22bdd7ce7cee:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7ce7cf3:	c4 41 79 66 cc                                  	vpcmpgtd xmm9,xmm0,xmm12
    22bdd7ce7cf8:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    22bdd7ce7cfc:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ce7d01:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    22bdd7ce7d06:	c5 71 66 e0                                     	vpcmpgtd xmm12,xmm1,xmm0
    22bdd7ce7d0a:	c4 41 19 df f9                                  	vpandn xmm15,xmm12,xmm9
    22bdd7ce7d0f:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    22bdd7ce7d14:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce7d19:	c5 f9 fe ff                                     	vpaddd xmm7,xmm0,xmm7
    22bdd7ce7d1d:	c4 e2 41 40 c2                                  	vpmulld xmm0,xmm7,xmm2
    22bdd7ce7d22:	c4 c1 79 fe fd                                  	vpaddd xmm7,xmm0,xmm13
    22bdd7ce7d27:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    22bdd7ce7d2e:	0f 84 72 00 00 00                               	je     0x22bdd7ce7da6
    22bdd7ce7d34:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    22bdd7ce7d3b:	0f 85 07 00 00 00                               	jne    0x22bdd7ce7d48
    22bdd7ce7d41:	33 ff                                           	xor    edi,edi
    22bdd7ce7d43:	e9 08 00 00 00                                  	jmp    0x22bdd7ce7d50
    22bdd7ce7d48:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    22bdd7ce7d4c:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce7d50:	83 bd f0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x210],0x0
    22bdd7ce7d57:	0f 85 08 00 00 00                               	jne    0x22bdd7ce7d65
    22bdd7ce7d5d:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce7d60:	e9 08 00 00 00                                  	jmp    0x22bdd7ce7d6d
    22bdd7ce7d65:	44 8d 04 93                                     	lea    r8d,[rbx+rdx*4]
    22bdd7ce7d69:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce7d6d:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
    22bdd7ce7d74:	0f 85 08 00 00 00                               	jne    0x22bdd7ce7d82
    22bdd7ce7d7a:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce7d7d:	e9 0f 00 00 00                                  	jmp    0x22bdd7ce7d91
    22bdd7ce7d82:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    22bdd7ce7d89:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    22bdd7ce7d8d:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    22bdd7ce7d91:	83 bd a0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x160],0x0
    22bdd7ce7d98:	0f 85 3b 00 00 00                               	jne    0x22bdd7ce7dd9
    22bdd7ce7d9e:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce7da1:	e9 42 00 00 00                                  	jmp    0x22bdd7ce7de8
    22bdd7ce7da6:	c5 11 fe ce                                     	vpaddd xmm9,xmm13,xmm6
    22bdd7ce7daa:	c4 41 09 76 c9                                  	vpcmpeqd xmm9,xmm14,xmm9
    22bdd7ce7daf:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    22bdd7ce7db4:	83 ff 0f                                        	cmp    edi,0xf
    22bdd7ce7db7:	0f 84 f2 02 00 00                               	je     0x22bdd7ce80af
    22bdd7ce7dbd:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    22bdd7ce7dc3:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce7dc6:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    22bdd7ce7dca:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    22bdd7ce7dcd:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    22bdd7ce7dd1:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    22bdd7ce7dd5:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce7dd9:	44 8b bd 20 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe0]
    22bdd7ce7de0:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    22bdd7ce7de4:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    22bdd7ce7de8:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    22bdd7ce7dec:	c5 79 6e e7                                     	vmovd  xmm12,edi
    22bdd7ce7df0:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce7df5:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    22bdd7ce7dfc:	0f 84 8a 00 00 00                               	je     0x22bdd7ce7e8c
    22bdd7ce7e02:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    22bdd7ce7e09:	0f 85 07 00 00 00                               	jne    0x22bdd7ce7e16
    22bdd7ce7e0f:	33 ff                                           	xor    edi,edi
    22bdd7ce7e11:	e9 0b 00 00 00                                  	jmp    0x22bdd7ce7e21
    22bdd7ce7e16:	c5 79 7e cf                                     	vmovd  edi,xmm9
    22bdd7ce7e1a:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce7e1d:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce7e21:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    22bdd7ce7e28:	0f 85 07 00 00 00                               	jne    0x22bdd7ce7e35
    22bdd7ce7e2e:	33 c0                                           	xor    eax,eax
    22bdd7ce7e30:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce7e42
    22bdd7ce7e35:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    22bdd7ce7e3b:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    22bdd7ce7e3e:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    22bdd7ce7e42:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    22bdd7ce7e49:	0f 85 07 00 00 00                               	jne    0x22bdd7ce7e56
    22bdd7ce7e4f:	33 d2                                           	xor    edx,edx
    22bdd7ce7e51:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce7e63
    22bdd7ce7e56:	c4 63 79 16 ca 02                               	vpextrd edx,xmm9,0x2
    22bdd7ce7e5c:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    22bdd7ce7e5f:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    22bdd7ce7e63:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    22bdd7ce7e6a:	0f 85 41 00 00 00                               	jne    0x22bdd7ce7eb1
    22bdd7ce7e70:	c4 43 19 22 c8 01                               	vpinsrd xmm9,xmm12,r8d,0x1
    22bdd7ce7e76:	c5 79 6e e7                                     	vmovd  xmm12,edi
    22bdd7ce7e7a:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce7e7f:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    22bdd7ce7e85:	33 c9                                           	xor    ecx,ecx
    22bdd7ce7e87:	e9 54 00 00 00                                  	jmp    0x22bdd7ce7ee0
    22bdd7ce7e8c:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    22bdd7ce7e92:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce7e95:	41 8b 04 3c                                     	mov    eax,DWORD PTR [r12+rdi*1]
    22bdd7ce7e99:	c5 79 7e cf                                     	vmovd  edi,xmm9
    22bdd7ce7e9d:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce7ea0:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce7ea4:	c4 63 79 16 ca 02                               	vpextrd edx,xmm9,0x2
    22bdd7ce7eaa:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    22bdd7ce7ead:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    22bdd7ce7eb1:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    22bdd7ce7eb7:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    22bdd7ce7eba:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    22bdd7ce7ebe:	c4 43 19 22 c8 01                               	vpinsrd xmm9,xmm12,r8d,0x1
    22bdd7ce7ec4:	c5 79 6e e7                                     	vmovd  xmm12,edi
    22bdd7ce7ec8:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce7ecd:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    22bdd7ce7ed3:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    22bdd7ce7eda:	0f 84 78 00 00 00                               	je     0x22bdd7ce7f58
    22bdd7ce7ee0:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    22bdd7ce7ee7:	0f 85 07 00 00 00                               	jne    0x22bdd7ce7ef4
    22bdd7ce7eed:	33 ff                                           	xor    edi,edi
    22bdd7ce7eef:	e9 0b 00 00 00                                  	jmp    0x22bdd7ce7eff
    22bdd7ce7ef4:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    22bdd7ce7ef8:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce7efb:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce7eff:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    22bdd7ce7f06:	0f 85 08 00 00 00                               	jne    0x22bdd7ce7f14
    22bdd7ce7f0c:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce7f0f:	e9 0e 00 00 00                                  	jmp    0x22bdd7ce7f22
    22bdd7ce7f14:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    22bdd7ce7f1a:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    22bdd7ce7f1e:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce7f22:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    22bdd7ce7f29:	0f 85 07 00 00 00                               	jne    0x22bdd7ce7f36
    22bdd7ce7f2f:	33 c0                                           	xor    eax,eax
    22bdd7ce7f31:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce7f43
    22bdd7ce7f36:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
    22bdd7ce7f3c:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    22bdd7ce7f3f:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    22bdd7ce7f43:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    22bdd7ce7f4a:	0f 85 2d 00 00 00                               	jne    0x22bdd7ce7f7d
    22bdd7ce7f50:	45 33 c9                                        	xor    r9d,r9d
    22bdd7ce7f53:	e9 33 00 00 00                                  	jmp    0x22bdd7ce7f8b
    22bdd7ce7f58:	c4 e3 79 16 ff 01                               	vpextrd edi,xmm7,0x1
    22bdd7ce7f5e:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce7f61:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    22bdd7ce7f65:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    22bdd7ce7f69:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce7f6c:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce7f70:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
    22bdd7ce7f76:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    22bdd7ce7f79:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    22bdd7ce7f7d:	c4 c3 79 16 f9 03                               	vpextrd r9d,xmm7,0x3
    22bdd7ce7f83:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    22bdd7ce7f87:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
    22bdd7ce7f8b:	c4 c3 31 22 fb 02                               	vpinsrd xmm7,xmm9,r11d,0x2
    22bdd7ce7f91:	c4 63 19 22 ca 02                               	vpinsrd xmm9,xmm12,edx,0x2
    22bdd7ce7f97:	c4 c1 79 fe c6                                  	vpaddd xmm0,xmm0,xmm14
    22bdd7ce7f9c:	c5 79 6e e7                                     	vmovd  xmm12,edi
    22bdd7ce7fa0:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce7fa5:	c4 43 19 22 e0 01                               	vpinsrd xmm12,xmm12,r8d,0x1
    22bdd7ce7fab:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    22bdd7ce7fb1:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    22bdd7ce7fb8:	0f 84 79 00 00 00                               	je     0x22bdd7ce8037
    22bdd7ce7fbe:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    22bdd7ce7fc5:	0f 85 07 00 00 00                               	jne    0x22bdd7ce7fd2
    22bdd7ce7fcb:	33 ff                                           	xor    edi,edi
    22bdd7ce7fcd:	e9 0b 00 00 00                                  	jmp    0x22bdd7ce7fdd
    22bdd7ce7fd2:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    22bdd7ce7fd6:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce7fd9:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce7fdd:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    22bdd7ce7fe4:	0f 85 08 00 00 00                               	jne    0x22bdd7ce7ff2
    22bdd7ce7fea:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce7fed:	e9 0e 00 00 00                                  	jmp    0x22bdd7ce8000
    22bdd7ce7ff2:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    22bdd7ce7ff8:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    22bdd7ce7ffc:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce8000:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    22bdd7ce8007:	0f 85 08 00 00 00                               	jne    0x22bdd7ce8015
    22bdd7ce800d:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce8010:	e9 0e 00 00 00                                  	jmp    0x22bdd7ce8023
    22bdd7ce8015:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    22bdd7ce801b:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    22bdd7ce801f:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    22bdd7ce8023:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    22bdd7ce802a:	0f 85 2d 00 00 00                               	jne    0x22bdd7ce805d
    22bdd7ce8030:	33 c0                                           	xor    eax,eax
    22bdd7ce8032:	e9 33 00 00 00                                  	jmp    0x22bdd7ce806a
    22bdd7ce8037:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    22bdd7ce803d:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce8040:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    22bdd7ce8044:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    22bdd7ce8048:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce804b:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce804f:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    22bdd7ce8055:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    22bdd7ce8059:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    22bdd7ce805d:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    22bdd7ce8063:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    22bdd7ce8066:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    22bdd7ce806a:	c4 c3 41 22 c7 03                               	vpinsrd xmm0,xmm7,r15d,0x3
    22bdd7ce8070:	c4 e3 31 22 f9 03                               	vpinsrd xmm7,xmm9,ecx,0x3
    22bdd7ce8076:	c5 79 6e cf                                     	vmovd  xmm9,edi
    22bdd7ce807a:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    22bdd7ce807f:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    22bdd7ce8085:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    22bdd7ce808b:	c4 63 31 22 c8 03                               	vpinsrd xmm9,xmm9,eax,0x3
    22bdd7ce8091:	c4 43 19 22 e1 03                               	vpinsrd xmm12,xmm12,r9d,0x3
    22bdd7ce8097:	c5 79 28 ff                                     	vmovapd xmm15,xmm7
    22bdd7ce809b:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    22bdd7ce80a0:	c4 41 79 28 e7                                  	vmovapd xmm12,xmm15
    22bdd7ce80a5:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    22bdd7ce80aa:	e9 97 00 00 00                                  	jmp    0x22bdd7ce8146
    22bdd7ce80af:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    22bdd7ce80b3:	c4 c1 7b 10 04 3c                               	vmovsd xmm0,QWORD PTR [r12+rdi*1]
    22bdd7ce80b9:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    22bdd7ce80bc:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    22bdd7ce80c2:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    22bdd7ce80c7:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    22bdd7ce80cd:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce80d0:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    22bdd7ce80d6:	44 8b 85 20 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe0]
    22bdd7ce80dd:	42 8d 3c 83                                     	lea    edi,[rbx+r8*4]
    22bdd7ce80e1:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    22bdd7ce80e7:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    22bdd7ce80ec:	c4 41 78 c6 e1 dd                               	vshufps xmm12,xmm0,xmm9,0xdd
    22bdd7ce80f2:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    22bdd7ce80f8:	c5 c1 72 f7 02                                  	vpslld xmm7,xmm7,0x2
    22bdd7ce80fd:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    22bdd7ce8101:	03 fb                                           	add    edi,ebx
    22bdd7ce8103:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    22bdd7ce8109:	c4 e3 79 16 ff 01                               	vpextrd edi,xmm7,0x1
    22bdd7ce810f:	03 fb                                           	add    edi,ebx
    22bdd7ce8111:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    22bdd7ce8117:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    22bdd7ce811c:	c4 e3 79 16 ff 02                               	vpextrd edi,xmm7,0x2
    22bdd7ce8122:	03 fb                                           	add    edi,ebx
    22bdd7ce8124:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    22bdd7ce812a:	c4 e3 79 16 ff 03                               	vpextrd edi,xmm7,0x3
    22bdd7ce8130:	03 fb                                           	add    edi,ebx
    22bdd7ce8132:	c4 c1 7b 10 3c 3c                               	vmovsd xmm7,QWORD PTR [r12+rdi*1]
    22bdd7ce8138:	c5 91 6c ff                                     	vpunpcklqdq xmm7,xmm13,xmm7
    22bdd7ce813c:	c5 30 c6 ef dd                                  	vshufps xmm13,xmm9,xmm7,0xdd
    22bdd7ce8141:	c5 b0 c6 ff 88                                  	vshufps xmm7,xmm9,xmm7,0x88
    22bdd7ce8146:	c4 41 38 5c c3                                  	vsubps xmm8,xmm8,xmm11
    22bdd7ce814b:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    22bdd7ce8150:	c5 28 5c d3                                     	vsubps xmm10,xmm10,xmm3
    22bdd7ce8154:	c4 41 50 5c da                                  	vsubps xmm11,xmm5,xmm10
    22bdd7ce8159:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    22bdd7ce8163:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7ce8168:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7ce816d:	c4 c1 79 db d6                                  	vpand  xmm2,xmm0,xmm14
    22bdd7ce8172:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce8177:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7ce817d:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7ce8182:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce8187:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7ce818c:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7ce8190:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7ce8194:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7ce8199:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ce819d:	c4 c1 19 db de                                  	vpand  xmm3,xmm12,xmm14
    22bdd7ce81a2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce81a7:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    22bdd7ce81ad:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    22bdd7ce81b2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce81b7:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    22bdd7ce81bc:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    22bdd7ce81c0:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    22bdd7ce81c4:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    22bdd7ce81c9:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    22bdd7ce81cd:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    22bdd7ce81d1:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    22bdd7ce81d5:	c4 c1 41 db de                                  	vpand  xmm3,xmm7,xmm14
    22bdd7ce81da:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce81df:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    22bdd7ce81e5:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    22bdd7ce81ea:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce81ef:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    22bdd7ce81f4:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    22bdd7ce81f8:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    22bdd7ce81fc:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    22bdd7ce8201:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    22bdd7ce8205:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    22bdd7ce820a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce820f:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7ce8215:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7ce821a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce821f:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7ce8224:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7ce8228:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7ce822c:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7ce8231:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    22bdd7ce8235:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    22bdd7ce8239:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    22bdd7ce823d:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    22bdd7ce8241:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    22bdd7ce824b:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7ce8250:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7ce8254:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    22bdd7ce8258:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    22bdd7ce825f:	c4 81 7a 7f 14 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm2
    22bdd7ce8265:	c5 e9 72 d0 10                                  	vpsrld xmm2,xmm0,0x10
    22bdd7ce826a:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    22bdd7ce826f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce8274:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7ce827a:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7ce827f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce8284:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7ce8289:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7ce828d:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7ce8291:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7ce8296:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ce829a:	c4 c1 59 72 d4 10                               	vpsrld xmm4,xmm12,0x10
    22bdd7ce82a0:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    22bdd7ce82a5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce82aa:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7ce82b0:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7ce82b5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce82ba:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7ce82bf:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7ce82c3:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7ce82c7:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7ce82cc:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    22bdd7ce82d0:	c5 e8 58 d4                                     	vaddps xmm2,xmm2,xmm4
    22bdd7ce82d4:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    22bdd7ce82d8:	c5 d9 72 d7 10                                  	vpsrld xmm4,xmm7,0x10
    22bdd7ce82dd:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    22bdd7ce82e2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce82e7:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7ce82ed:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7ce82f2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce82f7:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7ce82fc:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7ce8300:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7ce8304:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7ce8309:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    22bdd7ce830d:	c4 c1 71 72 d5 10                               	vpsrld xmm1,xmm13,0x10
    22bdd7ce8313:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    22bdd7ce8318:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce831d:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7ce8323:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7ce8328:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce832d:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7ce8332:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7ce8336:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7ce833a:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7ce833f:	c5 a8 59 c9                                     	vmulps xmm1,xmm10,xmm1
    22bdd7ce8343:	c5 d8 58 c9                                     	vaddps xmm1,xmm4,xmm1
    22bdd7ce8347:	c5 b8 59 c9                                     	vmulps xmm1,xmm8,xmm1
    22bdd7ce834b:	c5 e8 58 c9                                     	vaddps xmm1,xmm2,xmm1
    22bdd7ce834f:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    22bdd7ce8353:	c4 81 7a 7f 4c 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm1
    22bdd7ce835a:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    22bdd7ce835f:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    22bdd7ce8364:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce8369:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7ce836f:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7ce8374:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce8379:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7ce837e:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7ce8382:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7ce8386:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7ce838b:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    22bdd7ce838f:	c4 c1 69 72 d4 08                               	vpsrld xmm2,xmm12,0x8
    22bdd7ce8395:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    22bdd7ce839a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce839f:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7ce83a5:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7ce83aa:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce83af:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7ce83b4:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7ce83b8:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7ce83bc:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7ce83c1:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    22bdd7ce83c5:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    22bdd7ce83c9:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ce83cd:	c5 e9 72 d7 08                                  	vpsrld xmm2,xmm7,0x8
    22bdd7ce83d2:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    22bdd7ce83d7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce83dc:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7ce83e2:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7ce83e7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce83ec:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7ce83f1:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7ce83f5:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7ce83f9:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7ce83fe:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ce8402:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    22bdd7ce8408:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    22bdd7ce840d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce8412:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    22bdd7ce8418:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    22bdd7ce841d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce8422:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    22bdd7ce8428:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    22bdd7ce842d:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    22bdd7ce8432:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    22bdd7ce8437:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    22bdd7ce843c:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    22bdd7ce8441:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    22bdd7ce8446:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    22bdd7ce844b:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    22bdd7ce844f:	c4 01 7a 7f 74 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm14
    22bdd7ce8456:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    22bdd7ce845b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce8460:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7ce8466:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7ce846b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce8470:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7ce8475:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7ce8479:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7ce847d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7ce8482:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    22bdd7ce8486:	c4 c1 19 72 d4 18                               	vpsrld xmm12,xmm12,0x18
    22bdd7ce848c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce8491:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    22bdd7ce8497:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    22bdd7ce849c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce84a1:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    22bdd7ce84a7:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    22bdd7ce84ac:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    22bdd7ce84b1:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    22bdd7ce84b6:	c4 41 28 59 e4                                  	vmulps xmm12,xmm10,xmm12
    22bdd7ce84bb:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    22bdd7ce84c0:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ce84c4:	c5 c1 72 d7 18                                  	vpsrld xmm7,xmm7,0x18
    22bdd7ce84c9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce84ce:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7ce84d4:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7ce84d9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce84de:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7ce84e3:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7ce84e7:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7ce84eb:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7ce84f0:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    22bdd7ce84f4:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    22bdd7ce84fa:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce84ff:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    22bdd7ce8505:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    22bdd7ce850a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce850f:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    22bdd7ce8515:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    22bdd7ce851a:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    22bdd7ce851f:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    22bdd7ce8524:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    22bdd7ce8529:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    22bdd7ce852e:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    22bdd7ce8532:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7ce8536:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    22bdd7ce853e:	e9 cd 01 00 00                                  	jmp    0x22bdd7ce8710
    22bdd7ce8543:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    22bdd7ce854a:	0f 84 72 00 00 00                               	je     0x22bdd7ce85c2
    22bdd7ce8550:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    22bdd7ce8557:	0f 85 07 00 00 00                               	jne    0x22bdd7ce8564
    22bdd7ce855d:	33 ff                                           	xor    edi,edi
    22bdd7ce855f:	e9 08 00 00 00                                  	jmp    0x22bdd7ce856c
    22bdd7ce8564:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    22bdd7ce8568:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce856c:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    22bdd7ce8573:	0f 85 08 00 00 00                               	jne    0x22bdd7ce8581
    22bdd7ce8579:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce857c:	e9 08 00 00 00                                  	jmp    0x22bdd7ce8589
    22bdd7ce8581:	44 8d 04 93                                     	lea    r8d,[rbx+rdx*4]
    22bdd7ce8585:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce8589:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    22bdd7ce8590:	0f 85 08 00 00 00                               	jne    0x22bdd7ce859e
    22bdd7ce8596:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce8599:	e9 0f 00 00 00                                  	jmp    0x22bdd7ce85ad
    22bdd7ce859e:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    22bdd7ce85a5:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    22bdd7ce85a9:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    22bdd7ce85ad:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    22bdd7ce85b4:	0f 85 24 00 00 00                               	jne    0x22bdd7ce85de
    22bdd7ce85ba:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce85bd:	e9 2b 00 00 00                                  	jmp    0x22bdd7ce85ed
    22bdd7ce85c2:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    22bdd7ce85c8:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7ce85cb:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    22bdd7ce85cf:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    22bdd7ce85d2:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    22bdd7ce85d6:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    22bdd7ce85da:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce85de:	44 8b bd 20 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe0]
    22bdd7ce85e5:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    22bdd7ce85e9:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    22bdd7ce85ed:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    22bdd7ce85f1:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce85f6:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    22bdd7ce85fc:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    22bdd7ce8602:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    22bdd7ce8608:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x22bdd7ce815b
    22bdd7ce860f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ce8614:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ce8618:	c5 79 db c7                                     	vpand  xmm8,xmm0,xmm7
    22bdd7ce861c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce8621:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7ce8627:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7ce862c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce8631:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7ce8637:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7ce863c:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7ce8641:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7ce8646:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x22bdd7ce8243
    22bdd7ce864d:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ce8652:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ce8657:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    22bdd7ce865c:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    22bdd7ce8663:	c4 01 7a 7f 04 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm8
    22bdd7ce8669:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    22bdd7ce866e:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    22bdd7ce8672:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce8677:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7ce867d:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7ce8682:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce8687:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7ce868d:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7ce8692:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7ce8697:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7ce869c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    22bdd7ce86a1:	c4 01 7a 7f 44 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm8
    22bdd7ce86a8:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    22bdd7ce86ad:	c5 b9 db ff                                     	vpand  xmm7,xmm8,xmm7
    22bdd7ce86b1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce86b6:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    22bdd7ce86bc:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    22bdd7ce86c1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce86c6:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    22bdd7ce86cb:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    22bdd7ce86cf:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    22bdd7ce86d3:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    22bdd7ce86d8:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    22bdd7ce86dd:	c4 81 7a 7f 7c 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm7
    22bdd7ce86e4:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    22bdd7ce86e9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce86ee:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7ce86f4:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7ce86f9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce86fe:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7ce8703:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7ce8707:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7ce870b:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7ce8710:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x22bdd7ce8243
    22bdd7ce8717:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ce871c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ce8720:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7ce8724:	c4 81 7a 7f 44 1c 30                            	vmovdqu XMMWORD PTR [r12+r11*1+0x30],xmm0
    22bdd7ce872b:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ce872f:	e9 3f 03 00 00                                  	jmp    0x22bdd7ce8a73
    22bdd7ce8734:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ce8738:	49 8d 5c 24 08                                  	lea    rbx,[r12+0x8]
    22bdd7ce873d:	c4 a2 79 18 3c 03                               	vbroadcastss xmm7,DWORD PTR [rbx+r8*1]
    22bdd7ce8743:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    22bdd7ce8748:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    22bdd7ce874c:	c4 62 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [rbx+rax*1]
    22bdd7ce8752:	c5 79 28 ea                                     	vmovapd xmm13,xmm2
    22bdd7ce8756:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    22bdd7ce875b:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    22bdd7ce8760:	c4 62 79 18 24 3b                               	vbroadcastss xmm12,DWORD PTR [rbx+rdi*1]
    22bdd7ce8766:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    22bdd7ce876b:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    22bdd7ce8770:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    22bdd7ce8774:	41 83 ff 03                                     	cmp    r15d,0x3
    22bdd7ce8778:	0f 84 61 02 00 00                               	je     0x22bdd7ce89df
    22bdd7ce877e:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    22bdd7ce8786:	41 8b fb                                        	mov    edi,r11d
    22bdd7ce8789:	c4 41 7a 7f a4 3c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1c0],xmm12
    22bdd7ce8793:	c4 41 7a 7f a4 3c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1b0],xmm12
    22bdd7ce879d:	c4 41 7a 7f a4 3c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1a0],xmm12
    22bdd7ce87a7:	c4 41 7a 7f 94 3c f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1f0],xmm10
    22bdd7ce87b1:	c4 41 7a 7f 84 3c e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1e0],xmm8
    22bdd7ce87bb:	c4 c1 7a 7f bc 3c d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1d0],xmm7
    22bdd7ce87c5:	c4 41 7a 7f a4 3c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x190],xmm12
    22bdd7ce87cf:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
    22bdd7ce87d6:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    22bdd7ce87dd:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce87e0:	e9 28 00 00 00                                  	jmp    0x22bdd7ce880d
    22bdd7ce87e5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce87ee:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce87f7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce8800:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    22bdd7ce8806:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ce8809:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ce880d:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    22bdd7ce8814:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ce8819:	0f 85 f1 42 00 00                               	jne    0x22bdd7cecb10
    22bdd7ce881f:	8b c1                                           	mov    eax,ecx
    22bdd7ce8821:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ce8824:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7ce882b:	d3 eb                                           	shr    ebx,cl
    22bdd7ce882d:	f6 c3 01                                        	test   bl,0x1
    22bdd7ce8830:	0f 84 ff 00 00 00                               	je     0x22bdd7ce8935
    22bdd7ce8836:	41 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+rax*1+0x10]
    22bdd7ce883b:	41 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+rax*1+0xc]
    22bdd7ce8840:	45 8b 5c 04 08                                  	mov    r11d,DWORD PTR [r12+rax*1+0x8]
    22bdd7ce8845:	45 8b 5c 04 04                                  	mov    r11d,DWORD PTR [r12+rax*1+0x4]
    22bdd7ce884a:	45 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+rax*1]
    22bdd7ce884e:	41 83 ff 02                                     	cmp    r15d,0x2
    22bdd7ce8852:	0f 84 88 00 00 00                               	je     0x22bdd7ce88e0
    22bdd7ce8858:	45 85 ff                                        	test   r15d,r15d
    22bdd7ce885b:	0f 85 33 00 00 00                               	jne    0x22bdd7ce8894
    22bdd7ce8861:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    22bdd7ce8869:	c4 81 7a 10 3c 3c                               	vmovss xmm7,DWORD PTR [r12+r15*1]
    22bdd7ce886f:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    22bdd7ce8876:	41 8b d8                                        	mov    ebx,r8d
    22bdd7ce8879:	c1 e3 04                                        	shl    ebx,0x4
    22bdd7ce887c:	41 03 df                                        	add    ebx,r15d
    22bdd7ce887f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce8883:	41 8b c3                                        	mov    eax,r11d
    22bdd7ce8886:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    22bdd7ce888a:	e8 91 d9 f1 ff                                  	call   0x22bdd7c06220
    22bdd7ce888f:	e9 a1 00 00 00                                  	jmp    0x22bdd7ce8935
    22bdd7ce8894:	49 8b f4                                        	mov    rsi,r12
    22bdd7ce8897:	8b 5c 06 14                                     	mov    ebx,DWORD PTR [rsi+rax*1+0x14]
    22bdd7ce889b:	46 8d a4 87 f0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1f0]
    22bdd7ce88a3:	c4 a1 7a 10 3c 26                               	vmovss xmm7,DWORD PTR [rsi+r12*1]
    22bdd7ce88a9:	46 8d a4 87 e0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1e0]
    22bdd7ce88b1:	c4 a1 7a 10 14 26                               	vmovss xmm2,DWORD PTR [rsi+r12*1]
    22bdd7ce88b7:	44 8d a7 90 01 00 00                            	lea    r12d,[rdi+0x190]
    22bdd7ce88be:	45 8b f8                                        	mov    r15d,r8d
    22bdd7ce88c1:	41 c1 e7 04                                     	shl    r15d,0x4
    22bdd7ce88c5:	45 03 e7                                        	add    r12d,r15d
    22bdd7ce88c8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce88cc:	41 8b c3                                        	mov    eax,r11d
    22bdd7ce88cf:	45 8b cc                                        	mov    r9d,r12d
    22bdd7ce88d2:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    22bdd7ce88d6:	e8 5d d9 f1 ff                                  	call   0x22bdd7c06238
    22bdd7ce88db:	e9 55 00 00 00                                  	jmp    0x22bdd7ce8935
    22bdd7ce88e0:	49 8b f4                                        	mov    rsi,r12
    22bdd7ce88e3:	8b 5c 06 14                                     	mov    ebx,DWORD PTR [rsi+rax*1+0x14]
    22bdd7ce88e7:	44 8b 4c 06 18                                  	mov    r9d,DWORD PTR [rsi+rax*1+0x18]
    22bdd7ce88ec:	46 8d a4 87 f0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1f0]
    22bdd7ce88f4:	c4 a1 7a 10 0c 26                               	vmovss xmm1,DWORD PTR [rsi+r12*1]
    22bdd7ce88fa:	46 8d a4 87 e0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1e0]
    22bdd7ce8902:	c4 a1 7a 10 14 26                               	vmovss xmm2,DWORD PTR [rsi+r12*1]
    22bdd7ce8908:	46 8d a4 87 d0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1d0]
    22bdd7ce8910:	c4 a1 7a 10 1c 26                               	vmovss xmm3,DWORD PTR [rsi+r12*1]
    22bdd7ce8916:	44 8d a7 90 01 00 00                            	lea    r12d,[rdi+0x190]
    22bdd7ce891d:	45 8b f8                                        	mov    r15d,r8d
    22bdd7ce8920:	41 c1 e7 04                                     	shl    r15d,0x4
    22bdd7ce8924:	45 03 e7                                        	add    r12d,r15d
    22bdd7ce8927:	41 54                                           	push   r12
    22bdd7ce8929:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce892d:	41 8b c3                                        	mov    eax,r11d
    22bdd7ce8930:	e8 f3 d8 f1 ff                                  	call   0x22bdd7c06228
    22bdd7ce8935:	44 8b 85 00 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x100]
    22bdd7ce893c:	41 83 c0 01                                     	add    r8d,0x1
    22bdd7ce8940:	41 83 f8 04                                     	cmp    r8d,0x4
    22bdd7ce8944:	0f 85 b6 fe ff ff                               	jne    0x22bdd7ce8800
    22bdd7ce894a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ce894d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce8951:	c4 c1 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1b0]
    22bdd7ce895b:	c4 c1 7a 6f b4 38 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x1c0]
    22bdd7ce8965:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    22bdd7ce8969:	c4 41 7a 6f 84 38 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x190]
    22bdd7ce8973:	c4 41 7a 6f 8c 38 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rdi*1+0x1a0]
    22bdd7ce897d:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    22bdd7ce8982:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    22bdd7ce8986:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    22bdd7ce898c:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    22bdd7ce8993:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    22bdd7ce8997:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    22bdd7ce899e:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    22bdd7ce89a2:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    22bdd7ce89a7:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    22bdd7ce89ab:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    22bdd7ce89b2:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    22bdd7ce89b6:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    22bdd7ce89bc:	44 8b df                                        	mov    r11d,edi
    22bdd7ce89bf:	4d 8b e0                                        	mov    r12,r8
    22bdd7ce89c2:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    22bdd7ce89ca:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    22bdd7ce89d2:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    22bdd7ce89da:	e9 94 00 00 00                                  	jmp    0x22bdd7ce8a73
    22bdd7ce89df:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce89e3:	8b c1                                           	mov    eax,ecx
    22bdd7ce89e5:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    22bdd7ce89ea:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    22bdd7ce89ef:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    22bdd7ce89f3:	48 8b 95 38 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xc8]
    22bdd7ce89fa:	41 8b c9                                        	mov    ecx,r9d
    22bdd7ce89fd:	e8 26 db f1 ff                                  	call   0x22bdd7c06528
    22bdd7ce8a02:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ce8a06:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ce8a0a:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    22bdd7ce8a12:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    22bdd7ce8a1a:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    22bdd7ce8a22:	e9 4c 00 00 00                                  	jmp    0x22bdd7ce8a73
    22bdd7ce8a27:	49 8b f4                                        	mov    rsi,r12
    22bdd7ce8a2a:	48 8d 7e 3c                                     	lea    rdi,[rsi+0x3c]
    22bdd7ce8a2e:	44 8b e1                                        	mov    r12d,ecx
    22bdd7ce8a31:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    22bdd7ce8a37:	c4 a1 7a 7f 3c 0e                               	vmovdqu XMMWORD PTR [rsi+r9*1],xmm7
    22bdd7ce8a3d:	48 8d 7e 40                                     	lea    rdi,[rsi+0x40]
    22bdd7ce8a41:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    22bdd7ce8a47:	c4 a1 7a 7f 7c 0e 10                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x10],xmm7
    22bdd7ce8a4e:	48 8d 7e 44                                     	lea    rdi,[rsi+0x44]
    22bdd7ce8a52:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    22bdd7ce8a58:	c4 a1 7a 7f 7c 0e 20                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x20],xmm7
    22bdd7ce8a5f:	48 8d 7e 48                                     	lea    rdi,[rsi+0x48]
    22bdd7ce8a63:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    22bdd7ce8a69:	c4 a1 7a 7f 7c 0e 30                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x30],xmm7
    22bdd7ce8a70:	4c 8b e6                                        	mov    r12,rsi
    22bdd7ce8a73:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    22bdd7ce8a79:	83 c7 01                                        	add    edi,0x1
    22bdd7ce8a7c:	83 ff 04                                        	cmp    edi,0x4
    22bdd7ce8a7f:	0f 85 3b ed ff ff                               	jne    0x22bdd7ce77c0
    22bdd7ce8a85:	41 8b fb                                        	mov    edi,r11d
    22bdd7ce8a88:	c4 c1 7a 6f 84 3c 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x90]
    22bdd7ce8a92:	4c 8b 15 4f ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4f]        # 0x22bdd7ce79e8
    22bdd7ce8a99:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ce8a9e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ce8aa2:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7ce8aa6:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    22bdd7ce8aae:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    22bdd7ce8ab2:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    22bdd7ce8ab7:	c4 41 7a 6f 84 3c a0 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0xa0]
    22bdd7ce8ac1:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    22bdd7ce8ac5:	c5 78 10 8d 40 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xc0]
    22bdd7ce8acd:	c5 30 58 cf                                     	vaddps xmm9,xmm9,xmm7
    22bdd7ce8ad1:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    22bdd7ce8ad6:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    22bdd7ce8adb:	c4 41 7a 6f 84 3c b0 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0xb0]
    22bdd7ce8ae5:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    22bdd7ce8ae9:	c5 78 10 95 f0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x110]
    22bdd7ce8af1:	c5 a8 58 ff                                     	vaddps xmm7,xmm10,xmm7
    22bdd7ce8af5:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    22bdd7ce8af9:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7ce8afd:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    22bdd7ce8b07:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ce8b0c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ce8b10:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7ce8b14:	c5 f8 10 bd 10 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1f0]
    22bdd7ce8b1c:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    22bdd7ce8b20:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    22bdd7ce8b24:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ce8b28:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    22bdd7ce8b2c:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    22bdd7ce8b31:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ce8b36:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ce8b3d:	47 8b 9c 04 38 01 00 00                         	mov    r11d,DWORD PTR [r12+r8*1+0x138]
    22bdd7ce8b45:	4d 8b fb                                        	mov    r15,r11
    22bdd7ce8b48:	41 83 c7 ff                                     	add    r15d,0xffffffff
    22bdd7ce8b4c:	0f 85 fc 00 00 00                               	jne    0x22bdd7ce8c4e
    22bdd7ce8b52:	c4 41 7a 6f 84 3c 70 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x170]
    22bdd7ce8b5c:	c4 41 7a 6f 8c 3c 30 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x130]
    22bdd7ce8b66:	4d 8d 9c 24 38 36 00 00                         	lea    r11,[r12+0x3638]
    22bdd7ce8b6e:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7ce8b72:	c4 42 79 18 14 03                               	vbroadcastss xmm10,DWORD PTR [r11+rax*1]
    22bdd7ce8b78:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    22bdd7ce8b7d:	c4 41 40 5f d2                                  	vmaxps xmm10,xmm7,xmm10
    22bdd7ce8b82:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    22bdd7ce8b87:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    22bdd7ce8b8c:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    22bdd7ce8b91:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ce8b96:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    22bdd7ce8b9b:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    22bdd7ce8ba0:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ce8ba5:	c4 41 7a 6f 8c 3c 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x160]
    22bdd7ce8baf:	c4 41 7a 6f 94 3c 20 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x120]
    22bdd7ce8bb9:	4d 8d 9c 24 34 36 00 00                         	lea    r11,[r12+0x3634]
    22bdd7ce8bc1:	c4 42 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [r11+rax*1]
    22bdd7ce8bc7:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    22bdd7ce8bcc:	c4 41 40 5f e4                                  	vmaxps xmm12,xmm7,xmm12
    22bdd7ce8bd1:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    22bdd7ce8bd6:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    22bdd7ce8bdb:	c4 41 40 5f d2                                  	vmaxps xmm10,xmm7,xmm10
    22bdd7ce8be0:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    22bdd7ce8be5:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    22bdd7ce8bea:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    22bdd7ce8bef:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ce8bf4:	c4 41 7a 6f 94 3c 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x150]
    22bdd7ce8bfe:	c4 41 7a 6f a4 3c 10 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+rdi*1+0x110]
    22bdd7ce8c08:	4d 8d 9c 24 30 36 00 00                         	lea    r11,[r12+0x3630]
    22bdd7ce8c10:	c4 42 79 18 2c 03                               	vbroadcastss xmm13,DWORD PTR [r11+rax*1]
    22bdd7ce8c16:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    22bdd7ce8c1b:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    22bdd7ce8c1f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ce8c23:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    22bdd7ce8c27:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    22bdd7ce8c2b:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ce8c2f:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ce8c33:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    22bdd7ce8c37:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ce8c3b:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    22bdd7ce8c40:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ce8c44:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    22bdd7ce8c49:	e9 8f 01 00 00                                  	jmp    0x22bdd7ce8ddd
    22bdd7ce8c4e:	41 83 ff 02                                     	cmp    r15d,0x2
    22bdd7ce8c52:	0f 84 8b 00 00 00                               	je     0x22bdd7ce8ce3
    22bdd7ce8c58:	c4 c1 7a 6f 84 3c 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x130]
    22bdd7ce8c62:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    22bdd7ce8c66:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    22bdd7ce8c6a:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ce8c6e:	c4 41 7a 6f 8c 3c 20 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x120]
    22bdd7ce8c78:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    22bdd7ce8c7d:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    22bdd7ce8c82:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ce8c87:	49 8d 84 24 1c 37 00 00                         	lea    rax,[r12+0x371c]
    22bdd7ce8c8f:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    22bdd7ce8c93:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    22bdd7ce8c99:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    22bdd7ce8c9e:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    22bdd7ce8ca3:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ce8ca8:	c4 41 7a 6f 94 3c 10 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x110]
    22bdd7ce8cb2:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    22bdd7ce8cb7:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    22bdd7ce8cbc:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ce8cc1:	49 8d 84 24 18 37 00 00                         	lea    rax,[r12+0x3718]
    22bdd7ce8cc9:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    22bdd7ce8ccf:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    22bdd7ce8cd4:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    22bdd7ce8cd9:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ce8cde:	e9 5a 00 00 00                                  	jmp    0x22bdd7ce8d3d
    22bdd7ce8ce3:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    22bdd7ce8ce8:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    22bdd7ce8cec:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ce8cf0:	49 8d 84 24 1c 37 00 00                         	lea    rax,[r12+0x371c]
    22bdd7ce8cf8:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    22bdd7ce8cfc:	c4 22 79 18 04 38                               	vbroadcastss xmm8,DWORD PTR [rax+r15*1]
    22bdd7ce8d02:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    22bdd7ce8d07:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    22bdd7ce8d0c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ce8d11:	49 8d 84 24 18 37 00 00                         	lea    rax,[r12+0x3718]
    22bdd7ce8d19:	c4 22 79 18 0c 38                               	vbroadcastss xmm9,DWORD PTR [rax+r15*1]
    22bdd7ce8d1f:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    22bdd7ce8d24:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    22bdd7ce8d29:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ce8d2e:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    22bdd7ce8d33:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    22bdd7ce8d38:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    22bdd7ce8d3d:	49 8d 84 24 20 37 00 00                         	lea    rax,[r12+0x3720]
    22bdd7ce8d45:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    22bdd7ce8d4b:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    22bdd7ce8d50:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    22bdd7ce8d54:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ce8d58:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ce8d5c:	0f 84 78 00 00 00                               	je     0x22bdd7ce8dda
    22bdd7ce8d62:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    22bdd7ce8d6c:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    22bdd7ce8d71:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    22bdd7ce8d77:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    22bdd7ce8d7d:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    22bdd7ce8d82:	0f 87 09 00 00 00                               	ja     0x22bdd7ce8d91
    22bdd7ce8d88:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ce8d8c:	e9 05 00 00 00                                  	jmp    0x22bdd7ce8d96
    22bdd7ce8d91:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    22bdd7ce8d96:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    22bdd7ce8d9b:	c5 78 2e ef                                     	vucomiss xmm13,xmm7
    22bdd7ce8d9f:	0f 87 0a 00 00 00                               	ja     0x22bdd7ce8daf
    22bdd7ce8da5:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ce8daa:	e9 05 00 00 00                                  	jmp    0x22bdd7ce8db4
    22bdd7ce8daf:	c4 c1 79 28 fd                                  	vmovapd xmm7,xmm13
    22bdd7ce8db4:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    22bdd7ce8db9:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    22bdd7ce8dbd:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce8dc1:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ce8dc6:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    22bdd7ce8dcb:	49 8b c7                                        	mov    rax,r15
    22bdd7ce8dce:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7ce8dd5:	e9 3c 12 00 00                                  	jmp    0x22bdd7cea016
    22bdd7ce8dda:	49 8b c7                                        	mov    rax,r15
    22bdd7ce8ddd:	c5 78 10 a5 10 ff ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0xf0]
    22bdd7ce8de5:	c4 41 40 5f d4                                  	vmaxps xmm10,xmm7,xmm12
    22bdd7ce8dea:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    22bdd7ce8def:	c4 41 7a 6f a4 3c 40 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+rdi*1+0x140]
    22bdd7ce8df9:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    22bdd7ce8dfe:	c4 c1 40 5f fa                                  	vmaxps xmm7,xmm7,xmm10
    22bdd7ce8e03:	c5 a0 5d ff                                     	vminps xmm7,xmm11,xmm7
    22bdd7ce8e07:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    22bdd7ce8e0b:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ce8e0f:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ce8e14:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    22bdd7ce8e19:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7ce8e20:	e9 f1 11 00 00                                  	jmp    0x22bdd7cea016
    22bdd7ce8e25:	43 8b 4c 04 38                                  	mov    ecx,DWORD PTR [r12+r8*1+0x38]
    22bdd7ce8e2a:	c5 f8 11 b5 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm6
    22bdd7ce8e32:	43 83 7c 04 38 00                               	cmp    DWORD PTR [r12+r8*1+0x38],0x0
    22bdd7ce8e38:	0f 85 e6 10 00 00                               	jne    0x22bdd7ce9f24
    22bdd7ce8e3e:	49 8d 4c 24 54                                  	lea    rcx,[r12+0x54]
    22bdd7ce8e43:	c4 a2 79 18 0c 09                               	vbroadcastss xmm1,DWORD PTR [rcx+r9*1]
    22bdd7ce8e49:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    22bdd7ce8e4d:	c4 e2 79 18 34 11                               	vbroadcastss xmm6,DWORD PTR [rcx+rdx*1]
    22bdd7ce8e53:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    22bdd7ce8e57:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    22bdd7ce8e5b:	c4 e2 79 18 0c 31                               	vbroadcastss xmm1,DWORD PTR [rcx+rsi*1]
    22bdd7ce8e61:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ce8e65:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    22bdd7ce8e69:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    22bdd7ce8e6d:	49 8d 4c 24 50                                  	lea    rcx,[r12+0x50]
    22bdd7ce8e72:	c4 a2 79 18 0c 09                               	vbroadcastss xmm1,DWORD PTR [rcx+r9*1]
    22bdd7ce8e78:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    22bdd7ce8e7c:	c4 62 79 18 04 11                               	vbroadcastss xmm8,DWORD PTR [rcx+rdx*1]
    22bdd7ce8e82:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
    22bdd7ce8e87:	c4 41 70 58 c0                                  	vaddps xmm8,xmm1,xmm8
    22bdd7ce8e8c:	c4 e2 79 18 0c 31                               	vbroadcastss xmm1,DWORD PTR [rcx+rsi*1]
    22bdd7ce8e92:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ce8e96:	c5 38 58 c1                                     	vaddps xmm8,xmm8,xmm1
    22bdd7ce8e9a:	c4 c1 78 59 c8                                  	vmulps xmm1,xmm0,xmm8
    22bdd7ce8e9f:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    22bdd7ce8ea3:	83 f9 01                                        	cmp    ecx,0x1
    22bdd7ce8ea6:	0f 85 50 0d 00 00                               	jne    0x22bdd7ce9bfc
    22bdd7ce8eac:	43 8b 7c 04 28                                  	mov    edi,DWORD PTR [r12+r8*1+0x28]
    22bdd7ce8eb1:	85 ff                                           	test   edi,edi
    22bdd7ce8eb3:	0f 84 43 0d 00 00                               	je     0x22bdd7ce9bfc
    22bdd7ce8eb9:	47 8b 7c 04 1c                                  	mov    r15d,DWORD PTR [r12+r8*1+0x1c]
    22bdd7ce8ebe:	45 85 ff                                        	test   r15d,r15d
    22bdd7ce8ec1:	0f 8e 35 0d 00 00                               	jle    0x22bdd7ce9bfc
    22bdd7ce8ec7:	43 8b 44 04 20                                  	mov    eax,DWORD PTR [r12+r8*1+0x20]
    22bdd7ce8ecc:	85 c0                                           	test   eax,eax
    22bdd7ce8ece:	0f 8e 24 0d 00 00                               	jle    0x22bdd7ce9bf8
    22bdd7ce8ed4:	45 8b d7                                        	mov    r10d,r15d
    22bdd7ce8ed7:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7ce8edc:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ce8ee1:	43 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+r8*1+0x10]
    22bdd7ce8ee6:	33 f6                                           	xor    esi,esi
    22bdd7ce8ee8:	81 f9 2f 81 00 00                               	cmp    ecx,0x812f
    22bdd7ce8eee:	40 0f 95 c6                                     	setne  sil
    22bdd7ce8ef2:	81 f9 00 29 00 00                               	cmp    ecx,0x2900
    22bdd7ce8ef8:	0f 95 c1                                        	setne  cl
    22bdd7ce8efb:	0f b6 c9                                        	movzx  ecx,cl
    22bdd7ce8efe:	23 ce                                           	and    ecx,esi
    22bdd7ce8f00:	0f 85 0d 00 00 00                               	jne    0x22bdd7ce8f13
    22bdd7ce8f06:	c5 e0 5f f9                                     	vmaxps xmm7,xmm3,xmm1
    22bdd7ce8f0a:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    22bdd7ce8f0e:	e9 0a 00 00 00                                  	jmp    0x22bdd7ce8f1d
    22bdd7ce8f13:	c4 e3 79 08 f9 09                               	vroundps xmm7,xmm1,0x9
    22bdd7ce8f19:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    22bdd7ce8f1d:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7ce8f21:	44 8b d0                                        	mov    r10d,eax
    22bdd7ce8f24:	c4 c1 82 2a fa                                  	vcvtsi2ss xmm7,xmm15,r10
    22bdd7ce8f29:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    22bdd7ce8f2e:	43 8b 74 04 14                                  	mov    esi,DWORD PTR [r12+r8*1+0x14]
    22bdd7ce8f33:	33 d2                                           	xor    edx,edx
    22bdd7ce8f35:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    22bdd7ce8f3b:	0f 95 c2                                        	setne  dl
    22bdd7ce8f3e:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    22bdd7ce8f44:	40 0f 95 c6                                     	setne  sil
    22bdd7ce8f48:	40 0f b6 f6                                     	movzx  esi,sil
    22bdd7ce8f4c:	23 f2                                           	and    esi,edx
    22bdd7ce8f4e:	0f 85 0d 00 00 00                               	jne    0x22bdd7ce8f61
    22bdd7ce8f54:	c5 e0 5f f6                                     	vmaxps xmm6,xmm3,xmm6
    22bdd7ce8f58:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    22bdd7ce8f5c:	e9 0b 00 00 00                                  	jmp    0x22bdd7ce8f6c
    22bdd7ce8f61:	c4 63 79 08 c6 09                               	vroundps xmm8,xmm6,0x9
    22bdd7ce8f67:	c4 c1 48 5c f0                                  	vsubps xmm6,xmm6,xmm8
    22bdd7ce8f6c:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    22bdd7ce8f70:	4c 8b 15 71 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea71]        # 0x22bdd7ce79e8
    22bdd7ce8f77:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ce8f7c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ce8f80:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    22bdd7ce8f84:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    22bdd7ce8f89:	33 d2                                           	xor    edx,edx
    22bdd7ce8f8b:	43 81 7c 04 0c 00 26 00 00                      	cmp    DWORD PTR [r12+r8*1+0xc],0x2600
    22bdd7ce8f94:	0f 94 c2                                        	sete   dl
    22bdd7ce8f97:	85 d2                                           	test   edx,edx
    22bdd7ce8f99:	0f 85 5b 00 00 00                               	jne    0x22bdd7ce8ffa
    22bdd7ce8f9f:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    22bdd7ce8fa5:	4c 8b 15 79 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea79]        # 0x22bdd7ce7a25
    22bdd7ce8fac:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    22bdd7ce8fb1:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x22bdd7ce7a34
    22bdd7ce8fb8:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7ce8fbd:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7ce8fc2:	c4 41 30 c2 ce 01                               	vcmpltps xmm9,xmm9,xmm14
    22bdd7ce8fc8:	4c 8b 15 5a a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa35a]        # 0x22bdd7ce3329
    22bdd7ce8fcf:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    22bdd7ce8fd4:	c4 c1 48 54 cf                                  	vandps xmm1,xmm6,xmm15
    22bdd7ce8fd9:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    22bdd7ce8fdf:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    22bdd7ce8fe3:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    22bdd7ce8fe8:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7ce8fec:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ce8ff0:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    22bdd7ce8ff5:	e9 49 00 00 00                                  	jmp    0x22bdd7ce9043
    22bdd7ce8ffa:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    22bdd7ce9000:	4c 8b 15 1e ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea1e]        # 0x22bdd7ce7a25
    22bdd7ce9007:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    22bdd7ce900c:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x22bdd7ce7a34
    22bdd7ce9013:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7ce9018:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7ce901d:	c4 41 38 c2 ce 01                               	vcmpltps xmm9,xmm8,xmm14
    22bdd7ce9023:	4c 8b 15 ff a2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa2ff]        # 0x22bdd7ce3329
    22bdd7ce902a:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    22bdd7ce902f:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    22bdd7ce9034:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    22bdd7ce903a:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    22bdd7ce903e:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    22bdd7ce9043:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    22bdd7ce9049:	4c 8b 15 d9 a2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa2d9]        # 0x22bdd7ce3329
    22bdd7ce9050:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7ce9056:	c4 c1 38 54 d7                                  	vandps xmm2,xmm8,xmm15
    22bdd7ce905b:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7ce9061:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    22bdd7ce9065:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    22bdd7ce906a:	4c 8b 15 89 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea89]        # 0x22bdd7ce7afa
    22bdd7ce9071:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7ce9076:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7ce907a:	4c 8b 15 a4 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a4]        # 0x22bdd7ce7a25
    22bdd7ce9081:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    22bdd7ce9086:	c4 c1 50 c2 ee 01                               	vcmpltps xmm5,xmm5,xmm14
    22bdd7ce908c:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    22bdd7ce9090:	c5 e9 db d5                                     	vpand  xmm2,xmm2,xmm5
    22bdd7ce9094:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    22bdd7ce9099:	45 8d 4f ff                                     	lea    r9d,[r15-0x1]
    22bdd7ce909d:	c4 c1 79 6e e9                                  	vmovd  xmm5,r9d
    22bdd7ce90a2:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    22bdd7ce90a7:	47 8b 4c 04 2c                                  	mov    r9d,DWORD PTR [r12+r8*1+0x2c]
    22bdd7ce90ac:	c5 78 10 95 80 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x280]
    22bdd7ce90b4:	c4 42 69 3d da                                  	vpmaxsd xmm11,xmm2,xmm10
    22bdd7ce90b9:	c4 62 21 39 dd                                  	vpminsd xmm11,xmm11,xmm5
    22bdd7ce90be:	85 c9                                           	test   ecx,ecx
    22bdd7ce90c0:	0f 84 55 00 00 00                               	je     0x22bdd7ce911b
    22bdd7ce90c6:	c4 41 79 6e d9                                  	vmovd  xmm11,r9d
    22bdd7ce90cb:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    22bdd7ce90d0:	c4 41 69 db db                                  	vpand  xmm11,xmm2,xmm11
    22bdd7ce90d5:	45 85 c9                                        	test   r9d,r9d
    22bdd7ce90d8:	0f 85 3d 00 00 00                               	jne    0x22bdd7ce911b
    22bdd7ce90de:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    22bdd7ce90e3:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    22bdd7ce90e8:	c5 69 66 e5                                     	vpcmpgtd xmm12,xmm2,xmm5
    22bdd7ce90ec:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    22bdd7ce90f1:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ce90f6:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    22bdd7ce90fb:	c5 29 66 ea                                     	vpcmpgtd xmm13,xmm10,xmm2
    22bdd7ce90ff:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    22bdd7ce9104:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    22bdd7ce9109:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    22bdd7ce910e:	c4 41 69 fe db                                  	vpaddd xmm11,xmm2,xmm11
    22bdd7ce9113:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7ce911b:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    22bdd7ce911f:	c4 41 71 db c9                                  	vpand  xmm9,xmm1,xmm9
    22bdd7ce9124:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ce9129:	44 8d 58 ff                                     	lea    r11d,[rax-0x1]
    22bdd7ce912d:	c4 c1 79 6e cb                                  	vmovd  xmm1,r11d
    22bdd7ce9132:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    22bdd7ce9137:	47 8b 5c 04 30                                  	mov    r11d,DWORD PTR [r12+r8*1+0x30]
    22bdd7ce913c:	c4 42 31 3d e2                                  	vpmaxsd xmm12,xmm9,xmm10
    22bdd7ce9141:	c4 62 19 39 e1                                  	vpminsd xmm12,xmm12,xmm1
    22bdd7ce9146:	85 f6                                           	test   esi,esi
    22bdd7ce9148:	0f 84 4c 00 00 00                               	je     0x22bdd7ce919a
    22bdd7ce914e:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    22bdd7ce9153:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce9158:	c4 41 19 db e1                                  	vpand  xmm12,xmm12,xmm9
    22bdd7ce915d:	45 85 db                                        	test   r11d,r11d
    22bdd7ce9160:	0f 85 34 00 00 00                               	jne    0x22bdd7ce919a
    22bdd7ce9166:	c5 79 6e e0                                     	vmovd  xmm12,eax
    22bdd7ce916a:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce916f:	c5 31 66 e9                                     	vpcmpgtd xmm13,xmm9,xmm1
    22bdd7ce9173:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    22bdd7ce9178:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ce917d:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    22bdd7ce9182:	c4 c1 29 66 e1                                  	vpcmpgtd xmm4,xmm10,xmm9
    22bdd7ce9187:	c4 41 59 df fd                                  	vpandn xmm15,xmm4,xmm13
    22bdd7ce918c:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    22bdd7ce9190:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    22bdd7ce9195:	c4 41 31 fe e4                                  	vpaddd xmm12,xmm9,xmm12
    22bdd7ce919a:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    22bdd7ce919f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7ce91a4:	c4 42 19 40 e5                                  	vpmulld xmm12,xmm12,xmm13
    22bdd7ce91a9:	c4 c1 19 fe e3                                  	vpaddd xmm4,xmm12,xmm11
    22bdd7ce91ae:	c4 c3 79 16 e7 03                               	vpextrd r15d,xmm4,0x3
    22bdd7ce91b4:	c4 c3 79 16 e0 02                               	vpextrd r8d,xmm4,0x2
    22bdd7ce91ba:	4c 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r15
    22bdd7ce91c1:	c4 c3 79 16 e7 01                               	vpextrd r15d,xmm4,0x1
    22bdd7ce91c7:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    22bdd7ce91ce:	c4 c1 79 7e e0                                  	vmovd  r8d,xmm4
    22bdd7ce91d3:	85 d2                                           	test   edx,edx
    22bdd7ce91d5:	0f 85 3e 08 00 00                               	jne    0x22bdd7ce9a19
    22bdd7ce91db:	c5 f8 10 a5 60 fc ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x3a0]
    22bdd7ce91e3:	c5 e9 fe d4                                     	vpaddd xmm2,xmm2,xmm4
    22bdd7ce91e7:	c5 f8 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm6
    22bdd7ce91ef:	c4 c2 69 3d f2                                  	vpmaxsd xmm6,xmm2,xmm10
    22bdd7ce91f4:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    22bdd7ce91f9:	85 c9                                           	test   ecx,ecx
    22bdd7ce91fb:	0f 84 3f 00 00 00                               	je     0x22bdd7ce9240
    22bdd7ce9201:	c4 c1 79 6e f1                                  	vmovd  xmm6,r9d
    22bdd7ce9206:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    22bdd7ce920b:	c5 e9 db f6                                     	vpand  xmm6,xmm2,xmm6
    22bdd7ce920f:	45 85 c9                                        	test   r9d,r9d
    22bdd7ce9212:	0f 85 28 00 00 00                               	jne    0x22bdd7ce9240
    22bdd7ce9218:	c5 e9 66 f5                                     	vpcmpgtd xmm6,xmm2,xmm5
    22bdd7ce921c:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    22bdd7ce9221:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ce9226:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    22bdd7ce922b:	c5 a9 66 ea                                     	vpcmpgtd xmm5,xmm10,xmm2
    22bdd7ce922f:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    22bdd7ce9233:	c5 91 db f5                                     	vpand  xmm6,xmm13,xmm5
    22bdd7ce9237:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7ce923c:	c5 e9 fe f6                                     	vpaddd xmm6,xmm2,xmm6
    22bdd7ce9240:	c5 31 fe cc                                     	vpaddd xmm9,xmm9,xmm4
    22bdd7ce9244:	c4 c2 31 3d d2                                  	vpmaxsd xmm2,xmm9,xmm10
    22bdd7ce9249:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
    22bdd7ce924e:	85 f6                                           	test   esi,esi
    22bdd7ce9250:	0f 84 49 00 00 00                               	je     0x22bdd7ce929f
    22bdd7ce9256:	c4 c1 79 6e d3                                  	vmovd  xmm2,r11d
    22bdd7ce925b:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    22bdd7ce9260:	c4 c1 69 db d1                                  	vpand  xmm2,xmm2,xmm9
    22bdd7ce9265:	45 85 db                                        	test   r11d,r11d
    22bdd7ce9268:	0f 85 31 00 00 00                               	jne    0x22bdd7ce929f
    22bdd7ce926e:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    22bdd7ce9272:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    22bdd7ce9277:	c5 b1 66 c9                                     	vpcmpgtd xmm1,xmm9,xmm1
    22bdd7ce927b:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    22bdd7ce927f:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ce9284:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    22bdd7ce9289:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    22bdd7ce928e:	c5 51 df f9                                     	vpandn xmm15,xmm5,xmm1
    22bdd7ce9292:	c5 e9 db cd                                     	vpand  xmm1,xmm2,xmm5
    22bdd7ce9296:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7ce929b:	c5 b1 fe d1                                     	vpaddd xmm2,xmm9,xmm1
    22bdd7ce929f:	c4 42 69 40 cd                                  	vpmulld xmm9,xmm2,xmm13
    22bdd7ce92a4:	c4 41 31 fe eb                                  	vpaddd xmm13,xmm9,xmm11
    22bdd7ce92a9:	83 fb 0f                                        	cmp    ebx,0xf
    22bdd7ce92ac:	0f 85 18 00 00 00                               	jne    0x22bdd7ce92ca
    22bdd7ce92b2:	c5 21 fe dc                                     	vpaddd xmm11,xmm11,xmm4
    22bdd7ce92b6:	c4 41 49 76 db                                  	vpcmpeqd xmm11,xmm6,xmm11
    22bdd7ce92bb:	c4 41 78 50 db                                  	vmovmskps r11d,xmm11
    22bdd7ce92c0:	41 83 fb 0f                                     	cmp    r11d,0xf
    22bdd7ce92c4:	0f 84 36 03 00 00                               	je     0x22bdd7ce9600
    22bdd7ce92ca:	4c 8b db                                        	mov    r11,rbx
    22bdd7ce92cd:	41 83 e3 08                                     	and    r11d,0x8
    22bdd7ce92d1:	48 8b c3                                        	mov    rax,rbx
    22bdd7ce92d4:	83 e0 04                                        	and    eax,0x4
    22bdd7ce92d7:	48 8b d3                                        	mov    rdx,rbx
    22bdd7ce92da:	83 e2 02                                        	and    edx,0x2
    22bdd7ce92dd:	48 8b cb                                        	mov    rcx,rbx
    22bdd7ce92e0:	83 e1 01                                        	and    ecx,0x1
    22bdd7ce92e3:	83 fb 0f                                        	cmp    ebx,0xf
    22bdd7ce92e6:	0f 84 6c 00 00 00                               	je     0x22bdd7ce9358
    22bdd7ce92ec:	85 c9                                           	test   ecx,ecx
    22bdd7ce92ee:	0f 85 08 00 00 00                               	jne    0x22bdd7ce92fc
    22bdd7ce92f4:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce92f7:	e9 08 00 00 00                                  	jmp    0x22bdd7ce9304
    22bdd7ce92fc:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce9300:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce9304:	85 d2                                           	test   edx,edx
    22bdd7ce9306:	0f 85 08 00 00 00                               	jne    0x22bdd7ce9314
    22bdd7ce930c:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce930f:	e9 08 00 00 00                                  	jmp    0x22bdd7ce931c
    22bdd7ce9314:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    22bdd7ce9318:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    22bdd7ce931c:	85 c0                                           	test   eax,eax
    22bdd7ce931e:	0f 85 07 00 00 00                               	jne    0x22bdd7ce932b
    22bdd7ce9324:	33 c0                                           	xor    eax,eax
    22bdd7ce9326:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce9338
    22bdd7ce932b:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    22bdd7ce9331:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    22bdd7ce9334:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    22bdd7ce9338:	45 85 db                                        	test   r11d,r11d
    22bdd7ce933b:	0f 85 36 00 00 00                               	jne    0x22bdd7ce9377
    22bdd7ce9341:	c4 41 49 fe dc                                  	vpaddd xmm11,xmm6,xmm12
    22bdd7ce9346:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    22bdd7ce934b:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce9350:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce9353:	e9 45 00 00 00                                  	jmp    0x22bdd7ce939d
    22bdd7ce9358:	46 8d 1c bf                                     	lea    r11d,[rdi+r15*4]
    22bdd7ce935c:	47 8b 3c 1c                                     	mov    r15d,DWORD PTR [r12+r11*1]
    22bdd7ce9360:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce9364:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce9368:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    22bdd7ce936f:	46 8d 1c 9f                                     	lea    r11d,[rdi+r11*4]
    22bdd7ce9373:	43 8b 04 1c                                     	mov    eax,DWORD PTR [r12+r11*1]
    22bdd7ce9377:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7ce937d:	44 8d 1c 97                                     	lea    r11d,[rdi+rdx*4]
    22bdd7ce9381:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    22bdd7ce9385:	c4 41 49 fe dc                                  	vpaddd xmm11,xmm6,xmm12
    22bdd7ce938a:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    22bdd7ce938f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce9394:	83 fb 0f                                        	cmp    ebx,0xf
    22bdd7ce9397:	0f 84 68 00 00 00                               	je     0x22bdd7ce9405
    22bdd7ce939d:	f6 c3 01                                        	test   bl,0x1
    22bdd7ce93a0:	0f 85 08 00 00 00                               	jne    0x22bdd7ce93ae
    22bdd7ce93a6:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce93a9:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce93bb
    22bdd7ce93ae:	c4 41 79 7e d8                                  	vmovd  r8d,xmm11
    22bdd7ce93b3:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce93b7:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce93bb:	f6 c3 02                                        	test   bl,0x2
    22bdd7ce93be:	0f 85 07 00 00 00                               	jne    0x22bdd7ce93cb
    22bdd7ce93c4:	33 d2                                           	xor    edx,edx
    22bdd7ce93c6:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce93d8
    22bdd7ce93cb:	c4 63 79 16 da 01                               	vpextrd edx,xmm11,0x1
    22bdd7ce93d1:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    22bdd7ce93d4:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    22bdd7ce93d8:	f6 c3 04                                        	test   bl,0x4
    22bdd7ce93db:	0f 85 07 00 00 00                               	jne    0x22bdd7ce93e8
    22bdd7ce93e1:	33 c9                                           	xor    ecx,ecx
    22bdd7ce93e3:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce93f5
    22bdd7ce93e8:	c4 63 79 16 d9 02                               	vpextrd ecx,xmm11,0x2
    22bdd7ce93ee:	8d 0c 8f                                        	lea    ecx,[rdi+rcx*4]
    22bdd7ce93f1:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    22bdd7ce93f5:	f6 c3 08                                        	test   bl,0x8
    22bdd7ce93f8:	0f 85 2f 00 00 00                               	jne    0x22bdd7ce942d
    22bdd7ce93fe:	33 f6                                           	xor    esi,esi
    22bdd7ce9400:	e9 35 00 00 00                                  	jmp    0x22bdd7ce943a
    22bdd7ce9405:	c4 43 79 16 d8 01                               	vpextrd r8d,xmm11,0x1
    22bdd7ce940b:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce940f:	43 8b 14 04                                     	mov    edx,DWORD PTR [r12+r8*1]
    22bdd7ce9413:	c4 41 79 7e d8                                  	vmovd  r8d,xmm11
    22bdd7ce9418:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce941c:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce9420:	c4 63 79 16 d9 02                               	vpextrd ecx,xmm11,0x2
    22bdd7ce9426:	8d 0c 8f                                        	lea    ecx,[rdi+rcx*4]
    22bdd7ce9429:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    22bdd7ce942d:	c4 63 79 16 de 03                               	vpextrd esi,xmm11,0x3
    22bdd7ce9433:	8d 34 b7                                        	lea    esi,[rdi+rsi*4]
    22bdd7ce9436:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    22bdd7ce943a:	c4 43 19 22 df 01                               	vpinsrd xmm11,xmm12,r15d,0x1
    22bdd7ce9440:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    22bdd7ce9445:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce944a:	c4 63 19 22 e2 01                               	vpinsrd xmm12,xmm12,edx,0x1
    22bdd7ce9450:	83 fb 0f                                        	cmp    ebx,0xf
    22bdd7ce9453:	0f 84 6b 00 00 00                               	je     0x22bdd7ce94c4
    22bdd7ce9459:	f6 c3 01                                        	test   bl,0x1
    22bdd7ce945c:	0f 85 08 00 00 00                               	jne    0x22bdd7ce946a
    22bdd7ce9462:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce9465:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce9477
    22bdd7ce946a:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
    22bdd7ce946f:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce9473:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce9477:	f6 c3 02                                        	test   bl,0x2
    22bdd7ce947a:	0f 85 08 00 00 00                               	jne    0x22bdd7ce9488
    22bdd7ce9480:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce9483:	e9 0e 00 00 00                                  	jmp    0x22bdd7ce9496
    22bdd7ce9488:	c4 43 79 16 ef 01                               	vpextrd r15d,xmm13,0x1
    22bdd7ce948e:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    22bdd7ce9492:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    22bdd7ce9496:	f6 c3 04                                        	test   bl,0x4
    22bdd7ce9499:	0f 85 07 00 00 00                               	jne    0x22bdd7ce94a6
    22bdd7ce949f:	33 d2                                           	xor    edx,edx
    22bdd7ce94a1:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce94b3
    22bdd7ce94a6:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    22bdd7ce94ac:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    22bdd7ce94af:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    22bdd7ce94b3:	f6 c3 08                                        	test   bl,0x8
    22bdd7ce94b6:	0f 85 30 00 00 00                               	jne    0x22bdd7ce94ec
    22bdd7ce94bc:	45 33 c9                                        	xor    r9d,r9d
    22bdd7ce94bf:	e9 36 00 00 00                                  	jmp    0x22bdd7ce94fa
    22bdd7ce94c4:	c4 43 79 16 e8 01                               	vpextrd r8d,xmm13,0x1
    22bdd7ce94ca:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce94ce:	47 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+r8*1]
    22bdd7ce94d2:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
    22bdd7ce94d7:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce94db:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce94df:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    22bdd7ce94e5:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    22bdd7ce94e8:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    22bdd7ce94ec:	c4 43 79 16 e9 03                               	vpextrd r9d,xmm13,0x3
    22bdd7ce94f2:	46 8d 0c 8f                                     	lea    r9d,[rdi+r9*4]
    22bdd7ce94f6:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
    22bdd7ce94fa:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    22bdd7ce9500:	c4 63 19 22 e1 02                               	vpinsrd xmm12,xmm12,ecx,0x2
    22bdd7ce9506:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    22bdd7ce950a:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    22bdd7ce950f:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    22bdd7ce9514:	c4 43 31 22 cf 01                               	vpinsrd xmm9,xmm9,r15d,0x1
    22bdd7ce951a:	c4 63 31 22 ca 02                               	vpinsrd xmm9,xmm9,edx,0x2
    22bdd7ce9520:	83 fb 0f                                        	cmp    ebx,0xf
    22bdd7ce9523:	0f 84 6a 00 00 00                               	je     0x22bdd7ce9593
    22bdd7ce9529:	f6 c3 01                                        	test   bl,0x1
    22bdd7ce952c:	0f 85 08 00 00 00                               	jne    0x22bdd7ce953a
    22bdd7ce9532:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce9535:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce9547
    22bdd7ce953a:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    22bdd7ce953f:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce9543:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce9547:	f6 c3 02                                        	test   bl,0x2
    22bdd7ce954a:	0f 85 08 00 00 00                               	jne    0x22bdd7ce9558
    22bdd7ce9550:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce9553:	e9 0e 00 00 00                                  	jmp    0x22bdd7ce9566
    22bdd7ce9558:	c4 c3 79 16 f7 01                               	vpextrd r15d,xmm6,0x1
    22bdd7ce955e:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    22bdd7ce9562:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    22bdd7ce9566:	f6 c3 04                                        	test   bl,0x4
    22bdd7ce9569:	0f 85 07 00 00 00                               	jne    0x22bdd7ce9576
    22bdd7ce956f:	33 c0                                           	xor    eax,eax
    22bdd7ce9571:	e9 0d 00 00 00                                  	jmp    0x22bdd7ce9583
    22bdd7ce9576:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    22bdd7ce957c:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    22bdd7ce957f:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    22bdd7ce9583:	f6 c3 08                                        	test   bl,0x8
    22bdd7ce9586:	0f 85 2f 00 00 00                               	jne    0x22bdd7ce95bb
    22bdd7ce958c:	33 ff                                           	xor    edi,edi
    22bdd7ce958e:	e9 35 00 00 00                                  	jmp    0x22bdd7ce95c8
    22bdd7ce9593:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    22bdd7ce9599:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce959d:	47 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+r8*1]
    22bdd7ce95a1:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    22bdd7ce95a6:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce95aa:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce95ae:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    22bdd7ce95b4:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    22bdd7ce95b7:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    22bdd7ce95bb:	c4 e3 79 16 f2 03                               	vpextrd edx,xmm6,0x3
    22bdd7ce95c1:	8d 3c 97                                        	lea    edi,[rdi+rdx*4]
    22bdd7ce95c4:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce95c8:	c4 c3 21 22 f3 03                               	vpinsrd xmm6,xmm11,r11d,0x3
    22bdd7ce95ce:	c4 63 19 22 de 03                               	vpinsrd xmm11,xmm12,esi,0x3
    22bdd7ce95d4:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    22bdd7ce95d9:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7ce95de:	c4 43 19 22 e7 01                               	vpinsrd xmm12,xmm12,r15d,0x1
    22bdd7ce95e4:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    22bdd7ce95ea:	c4 63 19 22 e7 03                               	vpinsrd xmm12,xmm12,edi,0x3
    22bdd7ce95f0:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    22bdd7ce95f6:	c4 41 79 28 ec                                  	vmovapd xmm13,xmm12
    22bdd7ce95fb:	e9 a2 00 00 00                                  	jmp    0x22bdd7ce96a2
    22bdd7ce9600:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce9604:	c4 81 7b 10 34 04                               	vmovsd xmm6,QWORD PTR [r12+r8*1]
    22bdd7ce960a:	46 8d 04 bf                                     	lea    r8d,[rdi+r15*4]
    22bdd7ce960e:	c4 01 7b 10 0c 04                               	vmovsd xmm9,QWORD PTR [r12+r8*1]
    22bdd7ce9614:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    22bdd7ce9619:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    22bdd7ce9620:	46 8d 04 9f                                     	lea    r8d,[rdi+r11*4]
    22bdd7ce9624:	c4 01 7b 10 0c 04                               	vmovsd xmm9,QWORD PTR [r12+r8*1]
    22bdd7ce962a:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    22bdd7ce9630:	44 8d 04 87                                     	lea    r8d,[rdi+rax*4]
    22bdd7ce9634:	c4 01 7b 10 1c 04                               	vmovsd xmm11,QWORD PTR [r12+r8*1]
    22bdd7ce963a:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    22bdd7ce963f:	c4 41 48 c6 d9 dd                               	vshufps xmm11,xmm6,xmm9,0xdd
    22bdd7ce9645:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    22bdd7ce964b:	c4 c1 31 72 f5 02                               	vpslld xmm9,xmm13,0x2
    22bdd7ce9651:	c4 41 79 7e c8                                  	vmovd  r8d,xmm9
    22bdd7ce9656:	44 03 c7                                        	add    r8d,edi
    22bdd7ce9659:	c4 01 7b 10 24 04                               	vmovsd xmm12,QWORD PTR [r12+r8*1]
    22bdd7ce965f:	c4 43 79 16 c8 01                               	vpextrd r8d,xmm9,0x1
    22bdd7ce9665:	44 03 c7                                        	add    r8d,edi
    22bdd7ce9668:	c4 01 7b 10 2c 04                               	vmovsd xmm13,QWORD PTR [r12+r8*1]
    22bdd7ce966e:	c4 41 19 6c e5                                  	vpunpcklqdq xmm12,xmm12,xmm13
    22bdd7ce9673:	c4 43 79 16 c8 02                               	vpextrd r8d,xmm9,0x2
    22bdd7ce9679:	44 03 c7                                        	add    r8d,edi
    22bdd7ce967c:	c4 01 7b 10 2c 04                               	vmovsd xmm13,QWORD PTR [r12+r8*1]
    22bdd7ce9682:	c4 43 79 16 c8 03                               	vpextrd r8d,xmm9,0x3
    22bdd7ce9688:	41 03 f8                                        	add    edi,r8d
    22bdd7ce968b:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    22bdd7ce9691:	c4 41 11 6c c9                                  	vpunpcklqdq xmm9,xmm13,xmm9
    22bdd7ce9696:	c4 41 18 c6 e9 dd                               	vshufps xmm13,xmm12,xmm9,0xdd
    22bdd7ce969c:	c4 41 18 c6 c9 88                               	vshufps xmm9,xmm12,xmm9,0x88
    22bdd7ce96a2:	c5 99 72 d6 18                                  	vpsrld xmm12,xmm6,0x18
    22bdd7ce96a7:	c4 c1 71 72 d3 18                               	vpsrld xmm1,xmm11,0x18
    22bdd7ce96ad:	c5 19 6b e1                                     	vpackssdw xmm12,xmm12,xmm1
    22bdd7ce96b1:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    22bdd7ce96b5:	c4 c3 71 0f d4 08                               	vpalignr xmm2,xmm1,xmm12,0x8
    22bdd7ce96bb:	c5 19 61 e2                                     	vpunpcklwd xmm12,xmm12,xmm2
    22bdd7ce96bf:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    22bdd7ce96c9:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7ce96ce:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7ce96d2:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    22bdd7ce96d7:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    22bdd7ce96df:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    22bdd7ce96e4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    22bdd7ce96ee:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7ce96f3:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7ce96f7:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    22bdd7ce96fb:	4c 8b 15 27 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9c27]        # 0x22bdd7ce3329
    22bdd7ce9702:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    22bdd7ce9707:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    22bdd7ce970c:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    22bdd7ce9712:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    22bdd7ce9716:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    22bdd7ce971b:	4c 8b 15 03 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe303]        # 0x22bdd7ce7a25
    22bdd7ce9722:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ce9727:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    22bdd7ce972d:	c5 79 df fb                                     	vpandn xmm15,xmm0,xmm3
    22bdd7ce9731:	c5 d9 db c0                                     	vpand  xmm0,xmm4,xmm0
    22bdd7ce9735:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ce973a:	c5 e9 fa e0                                     	vpsubd xmm4,xmm2,xmm0
    22bdd7ce973e:	c5 d9 6b c0                                     	vpackssdw xmm0,xmm4,xmm0
    22bdd7ce9742:	c4 e3 71 0f e0 08                               	vpalignr xmm4,xmm1,xmm0,0x8
    22bdd7ce9748:	c5 f9 61 c4                                     	vpunpcklwd xmm0,xmm0,xmm4
    22bdd7ce974c:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    22bdd7ce9750:	c5 f8 10 a5 d0 fe ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x130]
    22bdd7ce9758:	c5 d8 5c ff                                     	vsubps xmm7,xmm4,xmm7
    22bdd7ce975c:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    22bdd7ce9761:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    22bdd7ce9765:	4c 8b 15 bd 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9bbd]        # 0x22bdd7ce3329
    22bdd7ce976c:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    22bdd7ce9771:	c4 c1 40 54 e7                                  	vandps xmm4,xmm7,xmm15
    22bdd7ce9776:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    22bdd7ce977c:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    22bdd7ce9780:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    22bdd7ce9785:	4c 8b 15 99 e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe299]        # 0x22bdd7ce7a25
    22bdd7ce978c:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    22bdd7ce9791:	c4 c1 40 c2 fe 01                               	vcmpltps xmm7,xmm7,xmm14
    22bdd7ce9797:	c5 41 df fb                                     	vpandn xmm15,xmm7,xmm3
    22bdd7ce979b:	c5 d9 db ff                                     	vpand  xmm7,xmm4,xmm7
    22bdd7ce979f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ce97a4:	c5 69 fa f7                                     	vpsubd xmm14,xmm2,xmm7
    22bdd7ce97a8:	c4 42 19 40 e6                                  	vpmulld xmm12,xmm12,xmm14
    22bdd7ce97ad:	c4 c1 69 72 d1 18                               	vpsrld xmm2,xmm9,0x18
    22bdd7ce97b3:	c4 c1 61 72 d5 18                               	vpsrld xmm3,xmm13,0x18
    22bdd7ce97b9:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    22bdd7ce97bd:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    22bdd7ce97c3:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    22bdd7ce97c7:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    22bdd7ce97cb:	c4 e2 69 40 d7                                  	vpmulld xmm2,xmm2,xmm7
    22bdd7ce97d0:	c5 19 fe e2                                     	vpaddd xmm12,xmm12,xmm2
    22bdd7ce97d4:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    22bdd7ce97de:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7ce97e3:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7ce97e7:	c5 19 fe e2                                     	vpaddd xmm12,xmm12,xmm2
    22bdd7ce97eb:	c4 c1 19 72 d4 10                               	vpsrld xmm12,xmm12,0x10
    22bdd7ce97f1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce97f6:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    22bdd7ce97fc:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    22bdd7ce9801:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce9806:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    22bdd7ce980c:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    22bdd7ce9811:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    22bdd7ce9816:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    22bdd7ce981b:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x22bdd7ce8243
    22bdd7ce9822:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7ce9827:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7ce982b:	c5 18 59 e3                                     	vmulps xmm12,xmm12,xmm3
    22bdd7ce982f:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    22bdd7ce9832:	c4 41 7a 7f a4 14 c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1c0],xmm12
    22bdd7ce983c:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    22bdd7ce9841:	4c 8b 15 13 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe913]        # 0x22bdd7ce815b
    22bdd7ce9848:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    22bdd7ce984d:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    22bdd7ce9851:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    22bdd7ce9855:	c4 c1 51 72 d3 10                               	vpsrld xmm5,xmm11,0x10
    22bdd7ce985b:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    22bdd7ce985f:	c5 19 6b e5                                     	vpackssdw xmm12,xmm12,xmm5
    22bdd7ce9863:	c4 c3 71 0f ec 08                               	vpalignr xmm5,xmm1,xmm12,0x8
    22bdd7ce9869:	c5 19 61 e5                                     	vpunpcklwd xmm12,xmm12,xmm5
    22bdd7ce986d:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    22bdd7ce9871:	c4 42 19 40 e6                                  	vpmulld xmm12,xmm12,xmm14
    22bdd7ce9876:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    22bdd7ce987c:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    22bdd7ce9880:	c4 c1 39 72 d5 10                               	vpsrld xmm8,xmm13,0x10
    22bdd7ce9886:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    22bdd7ce988a:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    22bdd7ce988f:	c4 c3 71 0f e8 08                               	vpalignr xmm5,xmm1,xmm8,0x8
    22bdd7ce9895:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    22bdd7ce9899:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    22bdd7ce989d:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    22bdd7ce98a2:	c4 41 19 fe c0                                  	vpaddd xmm8,xmm12,xmm8
    22bdd7ce98a7:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    22bdd7ce98ab:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    22bdd7ce98b1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce98b6:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7ce98bc:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7ce98c1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce98c6:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7ce98cc:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7ce98d1:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7ce98d6:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7ce98db:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    22bdd7ce98df:	c4 41 7a 7f 84 14 b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1b0],xmm8
    22bdd7ce98e9:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    22bdd7ce98ee:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    22bdd7ce98f2:	c4 c1 19 72 d3 08                               	vpsrld xmm12,xmm11,0x8
    22bdd7ce98f8:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    22bdd7ce98fc:	c4 41 39 6b c4                                  	vpackssdw xmm8,xmm8,xmm12
    22bdd7ce9901:	c4 43 71 0f e0 08                               	vpalignr xmm12,xmm1,xmm8,0x8
    22bdd7ce9907:	c4 41 39 61 c4                                  	vpunpcklwd xmm8,xmm8,xmm12
    22bdd7ce990c:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    22bdd7ce9910:	c4 42 39 40 c6                                  	vpmulld xmm8,xmm8,xmm14
    22bdd7ce9915:	c4 c1 19 72 d1 08                               	vpsrld xmm12,xmm9,0x8
    22bdd7ce991b:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    22bdd7ce991f:	c4 c1 51 72 d5 08                               	vpsrld xmm5,xmm13,0x8
    22bdd7ce9925:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    22bdd7ce9929:	c5 19 6b e5                                     	vpackssdw xmm12,xmm12,xmm5
    22bdd7ce992d:	c4 c3 71 0f ec 08                               	vpalignr xmm5,xmm1,xmm12,0x8
    22bdd7ce9933:	c5 19 61 e5                                     	vpunpcklwd xmm12,xmm12,xmm5
    22bdd7ce9937:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    22bdd7ce993b:	c4 62 19 40 e7                                  	vpmulld xmm12,xmm12,xmm7
    22bdd7ce9940:	c4 41 39 fe c4                                  	vpaddd xmm8,xmm8,xmm12
    22bdd7ce9945:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    22bdd7ce9949:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    22bdd7ce994f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce9954:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7ce995a:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7ce995f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce9964:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7ce996a:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7ce996f:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7ce9974:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7ce9979:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    22bdd7ce997d:	c4 41 7a 7f 84 14 a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1a0],xmm8
    22bdd7ce9987:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    22bdd7ce998b:	c5 21 db c4                                     	vpand  xmm8,xmm11,xmm4
    22bdd7ce998f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    22bdd7ce9994:	c4 63 71 0f c6 08                               	vpalignr xmm8,xmm1,xmm6,0x8
    22bdd7ce999a:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    22bdd7ce999f:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    22bdd7ce99a3:	c4 c2 49 40 f6                                  	vpmulld xmm6,xmm6,xmm14
    22bdd7ce99a8:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    22bdd7ce99ac:	c5 11 db cc                                     	vpand  xmm9,xmm13,xmm4
    22bdd7ce99b0:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    22bdd7ce99b5:	c4 43 71 0f c8 08                               	vpalignr xmm9,xmm1,xmm8,0x8
    22bdd7ce99bb:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    22bdd7ce99c0:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    22bdd7ce99c4:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    22bdd7ce99c9:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    22bdd7ce99cd:	c5 f9 fe c2                                     	vpaddd xmm0,xmm0,xmm2
    22bdd7ce99d1:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    22bdd7ce99d6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce99db:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7ce99e1:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7ce99e6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce99eb:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7ce99f0:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7ce99f4:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7ce99f8:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7ce99fd:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    22bdd7ce9a01:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    22bdd7ce9a0b:	8b fa                                           	mov    edi,edx
    22bdd7ce9a0d:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ce9a14:	e9 62 05 00 00                                  	jmp    0x22bdd7ce9f7b
    22bdd7ce9a19:	83 fb 0f                                        	cmp    ebx,0xf
    22bdd7ce9a1c:	0f 84 61 00 00 00                               	je     0x22bdd7ce9a83
    22bdd7ce9a22:	f6 c3 01                                        	test   bl,0x1
    22bdd7ce9a25:	0f 85 08 00 00 00                               	jne    0x22bdd7ce9a33
    22bdd7ce9a2b:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ce9a2e:	e9 08 00 00 00                                  	jmp    0x22bdd7ce9a3b
    22bdd7ce9a33:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce9a37:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce9a3b:	f6 c3 02                                        	test   bl,0x2
    22bdd7ce9a3e:	0f 85 08 00 00 00                               	jne    0x22bdd7ce9a4c
    22bdd7ce9a44:	45 33 db                                        	xor    r11d,r11d
    22bdd7ce9a47:	e9 08 00 00 00                                  	jmp    0x22bdd7ce9a54
    22bdd7ce9a4c:	46 8d 1c bf                                     	lea    r11d,[rdi+r15*4]
    22bdd7ce9a50:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    22bdd7ce9a54:	f6 c3 04                                        	test   bl,0x4
    22bdd7ce9a57:	0f 85 08 00 00 00                               	jne    0x22bdd7ce9a65
    22bdd7ce9a5d:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ce9a60:	e9 0e 00 00 00                                  	jmp    0x22bdd7ce9a73
    22bdd7ce9a65:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    22bdd7ce9a6b:	44 8d 3c 87                                     	lea    r15d,[rdi+rax*4]
    22bdd7ce9a6f:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    22bdd7ce9a73:	f6 c3 08                                        	test   bl,0x8
    22bdd7ce9a76:	0f 85 2f 00 00 00                               	jne    0x22bdd7ce9aab
    22bdd7ce9a7c:	33 ff                                           	xor    edi,edi
    22bdd7ce9a7e:	e9 35 00 00 00                                  	jmp    0x22bdd7ce9ab8
    22bdd7ce9a83:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    22bdd7ce9a8a:	46 8d 1c 9f                                     	lea    r11d,[rdi+r11*4]
    22bdd7ce9a8e:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    22bdd7ce9a92:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    22bdd7ce9a96:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    22bdd7ce9a9a:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    22bdd7ce9a9e:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ce9aa2:	45 8b d7                                        	mov    r10d,r15d
    22bdd7ce9aa5:	45 8b fb                                        	mov    r15d,r11d
    22bdd7ce9aa8:	45 8b da                                        	mov    r11d,r10d
    22bdd7ce9aab:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    22bdd7ce9ab1:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    22bdd7ce9ab4:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    22bdd7ce9ab8:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    22bdd7ce9abd:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ce9ac2:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    22bdd7ce9ac8:	c4 c3 79 22 c7 02                               	vpinsrd xmm0,xmm0,r15d,0x2
    22bdd7ce9ace:	c4 e3 79 22 c7 03                               	vpinsrd xmm0,xmm0,edi,0x3
    22bdd7ce9ad4:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    22bdd7ce9ad9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce9ade:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    22bdd7ce9ae4:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    22bdd7ce9ae9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce9aee:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    22bdd7ce9af3:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    22bdd7ce9af7:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    22bdd7ce9afb:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    22bdd7ce9b00:	4c 8b 15 3c e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe73c]        # 0x22bdd7ce8243
    22bdd7ce9b07:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ce9b0c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ce9b10:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    22bdd7ce9b14:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ce9b17:	c4 c1 7a 7f b4 3c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1c0],xmm6
    22bdd7ce9b21:	4c 8b 15 33 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe633]        # 0x22bdd7ce815b
    22bdd7ce9b28:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7ce9b2d:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7ce9b31:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    22bdd7ce9b35:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce9b3a:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7ce9b40:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7ce9b45:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce9b4a:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7ce9b50:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7ce9b55:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7ce9b5a:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7ce9b5f:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    22bdd7ce9b63:	c4 41 7a 7f 84 3c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x190],xmm8
    22bdd7ce9b6d:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    22bdd7ce9b72:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    22bdd7ce9b76:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce9b7b:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7ce9b81:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7ce9b86:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce9b8b:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7ce9b91:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7ce9b96:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7ce9b9b:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7ce9ba0:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    22bdd7ce9ba4:	c4 41 7a 7f 84 3c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1b0],xmm8
    22bdd7ce9bae:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    22bdd7ce9bb3:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    22bdd7ce9bb7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ce9bbc:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7ce9bc2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7ce9bc7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ce9bcc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7ce9bd1:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7ce9bd5:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7ce9bd9:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7ce9bde:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7ce9be2:	c4 c1 7a 7f 84 3c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1a0],xmm0
    22bdd7ce9bec:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ce9bf3:	e9 83 03 00 00                                  	jmp    0x22bdd7ce9f7b
    22bdd7ce9bf8:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7ce9bfc:	49 8d 7c 24 58                                  	lea    rdi,[r12+0x58]
    22bdd7ce9c01:	4d 8b f9                                        	mov    r15,r9
    22bdd7ce9c04:	c4 22 79 18 04 3f                               	vbroadcastss xmm8,DWORD PTR [rdi+r15*1]
    22bdd7ce9c0a:	c4 41 08 59 c0                                  	vmulps xmm8,xmm14,xmm8
    22bdd7ce9c0f:	c4 62 79 18 34 17                               	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1]
    22bdd7ce9c15:	c4 41 68 59 f6                                  	vmulps xmm14,xmm2,xmm14
    22bdd7ce9c1a:	c4 41 38 58 c6                                  	vaddps xmm8,xmm8,xmm14
    22bdd7ce9c1f:	c4 62 79 18 34 37                               	vbroadcastss xmm14,DWORD PTR [rdi+rsi*1]
    22bdd7ce9c25:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    22bdd7ce9c2a:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    22bdd7ce9c2f:	c4 c1 78 59 d8                                  	vmulps xmm3,xmm0,xmm8
    22bdd7ce9c34:	83 f9 03                                        	cmp    ecx,0x3
    22bdd7ce9c37:	0f 84 b3 02 00 00                               	je     0x22bdd7ce9ef0
    22bdd7ce9c3d:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ce9c41:	c4 81 7a 7f 84 1c c0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xc0],xmm0
    22bdd7ce9c4b:	c4 81 7a 7f 84 1c b0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xb0],xmm0
    22bdd7ce9c55:	c4 81 7a 7f 84 1c a0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xa0],xmm0
    22bdd7ce9c5f:	c4 81 7a 7f 8c 1c f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1f0],xmm1
    22bdd7ce9c69:	c4 81 7a 7f b4 1c e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1e0],xmm6
    22bdd7ce9c73:	c4 81 7a 7f 9c 1c d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1d0],xmm3
    22bdd7ce9c7d:	c4 81 7a 7f 84 1c 90 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x90],xmm0
    22bdd7ce9c87:	33 ff                                           	xor    edi,edi
    22bdd7ce9c89:	e9 48 00 00 00                                  	jmp    0x22bdd7ce9cd6
    22bdd7ce9c8e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce9c97:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce9ca0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce9ca9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce9cb2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ce9cbb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    22bdd7ce9cc0:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7ce9cc7:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ce9ccb:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ce9ccf:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ce9cd6:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    22bdd7ce9cdd:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ce9ce2:	0f 85 46 2e 00 00                               	jne    0x22bdd7cecb2e
    22bdd7ce9ce8:	8b cf                                           	mov    ecx,edi
    22bdd7ce9cea:	4c 8b cb                                        	mov    r9,rbx
    22bdd7ce9ced:	41 d3 e9                                        	shr    r9d,cl
    22bdd7ce9cf0:	41 f6 c1 01                                     	test   r9b,0x1
    22bdd7ce9cf4:	0f 84 55 01 00 00                               	je     0x22bdd7ce9e4f
    22bdd7ce9cfa:	43 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+r8*1+0x10]
    22bdd7ce9cff:	47 8b 4c 04 0c                                  	mov    r9d,DWORD PTR [r12+r8*1+0xc]
    22bdd7ce9d04:	48 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rcx
    22bdd7ce9d0b:	43 8b 4c 04 08                                  	mov    ecx,DWORD PTR [r12+r8*1+0x8]
    22bdd7ce9d10:	43 8b 4c 04 04                                  	mov    ecx,DWORD PTR [r12+r8*1+0x4]
    22bdd7ce9d15:	48 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rcx
    22bdd7ce9d1c:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    22bdd7ce9d20:	83 f9 02                                        	cmp    ecx,0x2
    22bdd7ce9d23:	0f 84 b3 00 00 00                               	je     0x22bdd7ce9ddc
    22bdd7ce9d29:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    22bdd7ce9d30:	85 c9                                           	test   ecx,ecx
    22bdd7ce9d32:	0f 85 41 00 00 00                               	jne    0x22bdd7ce9d79
    22bdd7ce9d38:	41 8d 8c bb f0 01 00 00                         	lea    ecx,[r11+rdi*4+0x1f0]
    22bdd7ce9d40:	c4 c1 7a 10 0c 0c                               	vmovss xmm1,DWORD PTR [r12+rcx*1]
    22bdd7ce9d46:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    22bdd7ce9d4d:	44 8b cf                                        	mov    r9d,edi
    22bdd7ce9d50:	41 c1 e1 04                                     	shl    r9d,0x4
    22bdd7ce9d54:	41 03 c9                                        	add    ecx,r9d
    22bdd7ce9d57:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce9d5b:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    22bdd7ce9d61:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    22bdd7ce9d67:	8b d9                                           	mov    ebx,ecx
    22bdd7ce9d69:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    22bdd7ce9d6f:	e8 ac c4 f1 ff                                  	call   0x22bdd7c06220
    22bdd7ce9d74:	e9 d6 00 00 00                                  	jmp    0x22bdd7ce9e4f
    22bdd7ce9d79:	4d 8b d0                                        	mov    r10,r8
    22bdd7ce9d7c:	4d 8b c4                                        	mov    r8,r12
    22bdd7ce9d7f:	4d 8b e2                                        	mov    r12,r10
    22bdd7ce9d82:	43 8b 4c 20 14                                  	mov    ecx,DWORD PTR [r8+r12*1+0x14]
    22bdd7ce9d87:	44 8b d7                                        	mov    r10d,edi
    22bdd7ce9d8a:	41 8b fb                                        	mov    edi,r11d
    22bdd7ce9d8d:	45 8b da                                        	mov    r11d,r10d
    22bdd7ce9d90:	46 8d 8c 9f f0 01 00 00                         	lea    r9d,[rdi+r11*4+0x1f0]
    22bdd7ce9d98:	c4 81 7a 10 0c 08                               	vmovss xmm1,DWORD PTR [r8+r9*1]
    22bdd7ce9d9e:	46 8d 8c 9f e0 01 00 00                         	lea    r9d,[rdi+r11*4+0x1e0]
    22bdd7ce9da6:	c4 81 7a 10 14 08                               	vmovss xmm2,DWORD PTR [r8+r9*1]
    22bdd7ce9dac:	44 8d 8f 90 00 00 00                            	lea    r9d,[rdi+0x90]
    22bdd7ce9db3:	41 c1 e3 04                                     	shl    r11d,0x4
    22bdd7ce9db7:	45 03 cb                                        	add    r9d,r11d
    22bdd7ce9dba:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce9dbe:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    22bdd7ce9dc4:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    22bdd7ce9dca:	8b d9                                           	mov    ebx,ecx
    22bdd7ce9dcc:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    22bdd7ce9dd2:	e8 61 c4 f1 ff                                  	call   0x22bdd7c06238
    22bdd7ce9dd7:	e9 73 00 00 00                                  	jmp    0x22bdd7ce9e4f
    22bdd7ce9ddc:	4d 8b d0                                        	mov    r10,r8
    22bdd7ce9ddf:	4d 8b c4                                        	mov    r8,r12
    22bdd7ce9de2:	4d 8b e2                                        	mov    r12,r10
    22bdd7ce9de5:	47 8b 7c 20 14                                  	mov    r15d,DWORD PTR [r8+r12*1+0x14]
    22bdd7ce9dea:	43 8b 44 20 18                                  	mov    eax,DWORD PTR [r8+r12*1+0x18]
    22bdd7ce9def:	44 8b d7                                        	mov    r10d,edi
    22bdd7ce9df2:	41 8b fb                                        	mov    edi,r11d
    22bdd7ce9df5:	45 8b da                                        	mov    r11d,r10d
    22bdd7ce9df8:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    22bdd7ce9e00:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    22bdd7ce9e06:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    22bdd7ce9e0e:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    22bdd7ce9e14:	42 8d 94 9f d0 01 00 00                         	lea    edx,[rdi+r11*4+0x1d0]
    22bdd7ce9e1c:	c4 c1 7a 10 1c 10                               	vmovss xmm3,DWORD PTR [r8+rdx*1]
    22bdd7ce9e22:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    22bdd7ce9e28:	41 8b cb                                        	mov    ecx,r11d
    22bdd7ce9e2b:	c1 e1 04                                        	shl    ecx,0x4
    22bdd7ce9e2e:	03 d1                                           	add    edx,ecx
    22bdd7ce9e30:	52                                              	push   rdx
    22bdd7ce9e31:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce9e35:	41 8b d1                                        	mov    edx,r9d
    22bdd7ce9e38:	44 8b c8                                        	mov    r9d,eax
    22bdd7ce9e3b:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    22bdd7ce9e41:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    22bdd7ce9e47:	41 8b df                                        	mov    ebx,r15d
    22bdd7ce9e4a:	e8 d9 c3 f1 ff                                  	call   0x22bdd7c06228
    22bdd7ce9e4f:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    22bdd7ce9e55:	83 c7 01                                        	add    edi,0x1
    22bdd7ce9e58:	83 ff 04                                        	cmp    edi,0x4
    22bdd7ce9e5b:	0f 85 5f fe ff ff                               	jne    0x22bdd7ce9cc0
    22bdd7ce9e61:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ce9e64:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ce9e68:	c4 c1 7a 6f 84 38 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0xb0]
    22bdd7ce9e72:	c4 c1 7a 6f b4 38 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0xc0]
    22bdd7ce9e7c:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    22bdd7ce9e80:	c4 41 7a 6f 84 38 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x90]
    22bdd7ce9e8a:	c4 41 7a 6f 8c 38 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rdi*1+0xa0]
    22bdd7ce9e94:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    22bdd7ce9e99:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    22bdd7ce9e9d:	c4 41 7a 7f 9c 38 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1c0],xmm11
    22bdd7ce9ea7:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    22bdd7ce9eab:	c4 c1 7a 7f bc 38 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1b0],xmm7
    22bdd7ce9eb5:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    22bdd7ce9eb9:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    22bdd7ce9ebe:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    22bdd7ce9ec2:	c4 c1 7a 7f bc 38 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1a0],xmm7
    22bdd7ce9ecc:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    22bdd7ce9ed0:	c4 c1 7a 7f 84 38 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x190],xmm0
    22bdd7ce9eda:	4d 8b e0                                        	mov    r12,r8
    22bdd7ce9edd:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ce9ee4:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7ce9eeb:	e9 8b 00 00 00                                  	jmp    0x22bdd7ce9f7b
    22bdd7ce9ef0:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    22bdd7ce9ef7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ce9efb:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ce9efe:	48 8b d3                                        	mov    rdx,rbx
    22bdd7ce9f01:	c5 f9 28 d6                                     	vmovapd xmm2,xmm6
    22bdd7ce9f05:	e8 1e c6 f1 ff                                  	call   0x22bdd7c06528
    22bdd7ce9f0a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ce9f0d:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ce9f11:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ce9f18:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7ce9f1f:	e9 57 00 00 00                                  	jmp    0x22bdd7ce9f7b
    22bdd7ce9f24:	49 8d 4c 24 3c                                  	lea    rcx,[r12+0x3c]
    22bdd7ce9f29:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    22bdd7ce9f2f:	c4 81 7a 7f 84 1c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x190],xmm0
    22bdd7ce9f39:	49 8d 4c 24 40                                  	lea    rcx,[r12+0x40]
    22bdd7ce9f3e:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    22bdd7ce9f44:	c4 81 7a 7f 84 1c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1a0],xmm0
    22bdd7ce9f4e:	49 8d 4c 24 44                                  	lea    rcx,[r12+0x44]
    22bdd7ce9f53:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    22bdd7ce9f59:	c4 81 7a 7f 84 1c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1b0],xmm0
    22bdd7ce9f63:	49 8d 4c 24 48                                  	lea    rcx,[r12+0x48]
    22bdd7ce9f68:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    22bdd7ce9f6e:	c4 81 7a 7f 84 1c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1c0],xmm0
    22bdd7ce9f78:	41 8b fb                                        	mov    edi,r11d
    22bdd7ce9f7b:	c4 c1 7a 6f 84 3c 90 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x190]
    22bdd7ce9f85:	47 8b 9c 04 34 01 00 00                         	mov    r11d,DWORD PTR [r12+r8*1+0x134]
    22bdd7ce9f8d:	43 83 bc 04 34 01 00 00 02                      	cmp    DWORD PTR [r12+r8*1+0x134],0x2
    22bdd7ce9f96:	0f 84 58 00 00 00                               	je     0x22bdd7ce9ff4
    22bdd7ce9f9c:	c4 c1 7a 6f b4 3c c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+rdi*1+0x1c0]
    22bdd7ce9fa6:	c5 f8 10 bd 10 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0xf0]
    22bdd7ce9fae:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    22bdd7ce9fb2:	c4 c1 7a 6f bc 3c b0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+rdi*1+0x1b0]
    22bdd7ce9fbc:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    22bdd7ce9fc4:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    22bdd7ce9fc8:	c4 41 7a 6f 84 3c a0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x1a0]
    22bdd7ce9fd2:	c5 78 10 8d 40 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xc0]
    22bdd7ce9fda:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    22bdd7ce9fdf:	c5 78 10 8d e0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x120]
    22bdd7ce9fe7:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ce9feb:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7ce9fef:	e9 22 00 00 00                                  	jmp    0x22bdd7cea016
    22bdd7ce9ff4:	c4 c1 7a 6f b4 3c c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+rdi*1+0x1c0]
    22bdd7ce9ffe:	c4 c1 7a 6f bc 3c b0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+rdi*1+0x1b0]
    22bdd7cea008:	c4 41 7a 6f 84 3c a0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x1a0]
    22bdd7cea012:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7cea016:	c5 41 6a ce                                     	vpunpckhdq xmm9,xmm7,xmm6
    22bdd7cea01a:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    22bdd7cea01f:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    22bdd7cea024:	c4 41 7a 7f 5c 3c 30                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x30],xmm11
    22bdd7cea02b:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    22bdd7cea030:	c4 41 7a 7f 4c 3c 20                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x20],xmm9
    22bdd7cea037:	c5 c1 62 f6                                     	vpunpckldq xmm6,xmm7,xmm6
    22bdd7cea03b:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    22bdd7cea040:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    22bdd7cea044:	c4 c1 7a 7f 7c 3c 10                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x10],xmm7
    22bdd7cea04b:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    22bdd7cea04f:	c4 c1 7a 7f 04 3c                               	vmovdqu XMMWORD PTR [r12+rdi*1],xmm0
    22bdd7cea055:	44 8b df                                        	mov    r11d,edi
    22bdd7cea058:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    22bdd7cea05f:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    22bdd7cea062:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7cea066:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7cea06b:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7cea070:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cea074:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    22bdd7cea07b:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    22bdd7cea082:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    22bdd7cea089:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    22bdd7cea091:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    22bdd7cea099:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cea0a1:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cea0a9:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cea0b1:	f6 c3 01                                        	test   bl,0x1
    22bdd7cea0b4:	0f 85 08 00 00 00                               	jne    0x22bdd7cea0c2
    22bdd7cea0ba:	4d 8b c4                                        	mov    r8,r12
    22bdd7cea0bd:	e9 77 02 00 00                                  	jmp    0x22bdd7cea339
    22bdd7cea0c2:	c4 81 7a 10 4c 1c 40                            	vmovss xmm1,DWORD PTR [r12+r11*1+0x40]
    22bdd7cea0c9:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    22bdd7cea0d0:	0f 85 a1 00 00 00                               	jne    0x22bdd7cea177
    22bdd7cea0d6:	c4 81 7a 10 14 1c                               	vmovss xmm2,DWORD PTR [r12+r11*1]
    22bdd7cea0dc:	c4 81 7a 10 5c 1c 04                            	vmovss xmm3,DWORD PTR [r12+r11*1+0x4]
    22bdd7cea0e3:	c4 81 7a 10 44 1c 08                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x8]
    22bdd7cea0ea:	c4 81 7a 10 6c 1c 0c                            	vmovss xmm5,DWORD PTR [r12+r11*1+0xc]
    22bdd7cea0f1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cea0f5:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cea0f8:	8b d7                                           	mov    edx,edi
    22bdd7cea0fa:	41 8b cf                                        	mov    ecx,r15d
    22bdd7cea0fd:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    22bdd7cea101:	e8 5a c1 f1 ff                                  	call   0x22bdd7c06260
    22bdd7cea106:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cea10a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cea10e:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7cea112:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    22bdd7cea119:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    22bdd7cea11c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7cea120:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7cea125:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7cea12a:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cea12e:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    22bdd7cea135:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    22bdd7cea13c:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    22bdd7cea143:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    22bdd7cea14b:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7cea152:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    22bdd7cea15a:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cea162:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cea16a:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cea172:	e9 c2 01 00 00                                  	jmp    0x22bdd7cea339
    22bdd7cea177:	4d 8b c4                                        	mov    r8,r12
    22bdd7cea17a:	4c 8b e0                                        	mov    r12,rax
    22bdd7cea17d:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    22bdd7cea181:	41 0f af c7                                     	imul   eax,r15d
    22bdd7cea185:	03 c7                                           	add    eax,edi
    22bdd7cea187:	43 8b 4c 20 68                                  	mov    ecx,DWORD PTR [r8+r12*1+0x68]
    22bdd7cea18c:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
    22bdd7cea192:	0f 84 1f 00 00 00                               	je     0x22bdd7cea1b7
    22bdd7cea198:	43 8b 4c 20 70                                  	mov    ecx,DWORD PTR [r8+r12*1+0x70]
    22bdd7cea19d:	43 83 7c 20 70 00                               	cmp    DWORD PTR [r8+r12*1+0x70],0x0
    22bdd7cea1a3:	0f 84 0e 00 00 00                               	je     0x22bdd7cea1b7
    22bdd7cea1a9:	43 8b 4c 20 0c                                  	mov    ecx,DWORD PTR [r8+r12*1+0xc]
    22bdd7cea1ae:	8d 0c 81                                        	lea    ecx,[rcx+rax*4]
    22bdd7cea1b1:	c4 c1 7a 11 0c 08                               	vmovss DWORD PTR [r8+rcx*1],xmm1
    22bdd7cea1b7:	c4 81 7a 6f 04 18                               	vmovdqu xmm0,XMMWORD PTR [r8+r11*1]
    22bdd7cea1bd:	43 8b 4c 20 08                                  	mov    ecx,DWORD PTR [r8+r12*1+0x8]
    22bdd7cea1c2:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    22bdd7cea1c5:	43 8b 4c 20 74                                  	mov    ecx,DWORD PTR [r8+r12*1+0x74]
    22bdd7cea1ca:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    22bdd7cea1d0:	0f 84 81 00 00 00                               	je     0x22bdd7cea257
    22bdd7cea1d6:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    22bdd7cea1db:	43 8b 4c 20 78                                  	mov    ecx,DWORD PTR [r8+r12*1+0x78]
    22bdd7cea1e0:	43 81 7c 20 78 02 03 00 00                      	cmp    DWORD PTR [r8+r12*1+0x78],0x302
    22bdd7cea1e9:	0f 84 09 00 00 00                               	je     0x22bdd7cea1f8
    22bdd7cea1ef:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7cea1f3:	e9 04 00 00 00                                  	jmp    0x22bdd7cea1fc
    22bdd7cea1f8:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7cea1fc:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    22bdd7cea201:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7cea206:	c4 41 7a 10 0c 00                               	vmovss xmm9,DWORD PTR [r8+rax*1]
    22bdd7cea20c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    22bdd7cea211:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    22bdd7cea216:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    22bdd7cea21b:	4c 8b 15 21 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe021]        # 0x22bdd7ce8243
    22bdd7cea222:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cea227:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7cea22c:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    22bdd7cea231:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    22bdd7cea235:	43 8b 4c 20 7c                                  	mov    ecx,DWORD PTR [r8+r12*1+0x7c]
    22bdd7cea23a:	43 83 7c 20 7c 01                               	cmp    DWORD PTR [r8+r12*1+0x7c],0x1
    22bdd7cea240:	0f 85 04 00 00 00                               	jne    0x22bdd7cea24a
    22bdd7cea246:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7cea24a:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    22bdd7cea24f:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    22bdd7cea253:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7cea257:	4c 8b 15 ef a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ef]        # 0x22bdd7ce4b4d
    22bdd7cea25e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea263:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea267:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7cea26c:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    22bdd7cea272:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    22bdd7cea276:	4c 8b 15 d0 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d0]        # 0x22bdd7ce4b4d
    22bdd7cea27d:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cea282:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cea287:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    22bdd7cea28c:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    22bdd7cea290:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    22bdd7cea295:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cea29a:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    22bdd7cea2a4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea2a9:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea2ad:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7cea2b1:	4c 8b 15 2e f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff42e]        # 0x22bdd7ce96e6
    22bdd7cea2b8:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea2bd:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea2c1:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7cea2c5:	4c 8b 15 5d 90 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff905d]        # 0x22bdd7ce3329
    22bdd7cea2cc:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    22bdd7cea2d1:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    22bdd7cea2d6:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    22bdd7cea2dc:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    22bdd7cea2e0:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    22bdd7cea2e5:	4c 8b 15 0e d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd80e]        # 0x22bdd7ce7afa
    22bdd7cea2ec:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cea2f1:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cea2f6:	4c 8b 15 28 d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd728]        # 0x22bdd7ce7a25
    22bdd7cea2fd:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7cea302:	4c 8b 15 2b d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd72b]        # 0x22bdd7ce7a34
    22bdd7cea309:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cea30e:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7cea313:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    22bdd7cea319:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    22bdd7cea31e:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    22bdd7cea322:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cea327:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    22bdd7cea32c:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    22bdd7cea330:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    22bdd7cea336:	49 8b c4                                        	mov    rax,r12
    22bdd7cea339:	f6 c3 02                                        	test   bl,0x2
    22bdd7cea33c:	0f 84 7f 02 00 00                               	je     0x22bdd7cea5c1
    22bdd7cea342:	c4 81 7a 10 4c 18 44                            	vmovss xmm1,DWORD PTR [r8+r11*1+0x44]
    22bdd7cea349:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    22bdd7cea350:	0f 85 a3 00 00 00                               	jne    0x22bdd7cea3f9
    22bdd7cea356:	c4 81 7a 10 54 18 10                            	vmovss xmm2,DWORD PTR [r8+r11*1+0x10]
    22bdd7cea35d:	c4 81 7a 10 5c 18 14                            	vmovss xmm3,DWORD PTR [r8+r11*1+0x14]
    22bdd7cea364:	c4 81 7a 10 44 18 18                            	vmovss xmm0,DWORD PTR [r8+r11*1+0x18]
    22bdd7cea36b:	c4 81 7a 10 6c 18 1c                            	vmovss xmm5,DWORD PTR [r8+r11*1+0x1c]
    22bdd7cea372:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cea376:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cea379:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    22bdd7cea37f:	41 8b cf                                        	mov    ecx,r15d
    22bdd7cea382:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    22bdd7cea386:	e8 d5 be f1 ff                                  	call   0x22bdd7c06260
    22bdd7cea38b:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cea38f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cea393:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7cea397:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    22bdd7cea39e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7cea3a2:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7cea3a7:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7cea3ac:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cea3b0:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    22bdd7cea3b7:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    22bdd7cea3be:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    22bdd7cea3c5:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    22bdd7cea3cd:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7cea3d4:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    22bdd7cea3dc:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cea3e4:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cea3ec:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cea3f4:	e9 c8 01 00 00                                  	jmp    0x22bdd7cea5c1
    22bdd7cea3f9:	4c 8b e0                                        	mov    r12,rax
    22bdd7cea3fc:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    22bdd7cea400:	41 0f af c7                                     	imul   eax,r15d
    22bdd7cea404:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7cea40a:	03 c1                                           	add    eax,ecx
    22bdd7cea40c:	43 8b 7c 20 68                                  	mov    edi,DWORD PTR [r8+r12*1+0x68]
    22bdd7cea411:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
    22bdd7cea417:	0f 84 1f 00 00 00                               	je     0x22bdd7cea43c
    22bdd7cea41d:	43 8b 7c 20 70                                  	mov    edi,DWORD PTR [r8+r12*1+0x70]
    22bdd7cea422:	43 83 7c 20 70 00                               	cmp    DWORD PTR [r8+r12*1+0x70],0x0
    22bdd7cea428:	0f 84 0e 00 00 00                               	je     0x22bdd7cea43c
    22bdd7cea42e:	43 8b 7c 20 0c                                  	mov    edi,DWORD PTR [r8+r12*1+0xc]
    22bdd7cea433:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    22bdd7cea436:	c4 c1 7a 11 0c 38                               	vmovss DWORD PTR [r8+rdi*1],xmm1
    22bdd7cea43c:	8b bd f0 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x310]
    22bdd7cea442:	c4 c1 7a 6f 04 38                               	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1]
    22bdd7cea448:	43 8b 7c 20 08                                  	mov    edi,DWORD PTR [r8+r12*1+0x8]
    22bdd7cea44d:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    22bdd7cea450:	43 8b 44 20 74                                  	mov    eax,DWORD PTR [r8+r12*1+0x74]
    22bdd7cea455:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    22bdd7cea45b:	0f 84 81 00 00 00                               	je     0x22bdd7cea4e2
    22bdd7cea461:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    22bdd7cea466:	43 8b 44 20 78                                  	mov    eax,DWORD PTR [r8+r12*1+0x78]
    22bdd7cea46b:	43 81 7c 20 78 02 03 00 00                      	cmp    DWORD PTR [r8+r12*1+0x78],0x302
    22bdd7cea474:	0f 84 09 00 00 00                               	je     0x22bdd7cea483
    22bdd7cea47a:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7cea47e:	e9 04 00 00 00                                  	jmp    0x22bdd7cea487
    22bdd7cea483:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7cea487:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    22bdd7cea48c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7cea491:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    22bdd7cea497:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    22bdd7cea49c:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    22bdd7cea4a1:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    22bdd7cea4a6:	4c 8b 15 96 dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdd96]        # 0x22bdd7ce8243
    22bdd7cea4ad:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cea4b2:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7cea4b7:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    22bdd7cea4bc:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    22bdd7cea4c0:	43 8b 44 20 7c                                  	mov    eax,DWORD PTR [r8+r12*1+0x7c]
    22bdd7cea4c5:	43 83 7c 20 7c 01                               	cmp    DWORD PTR [r8+r12*1+0x7c],0x1
    22bdd7cea4cb:	0f 85 04 00 00 00                               	jne    0x22bdd7cea4d5
    22bdd7cea4d1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7cea4d5:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    22bdd7cea4da:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    22bdd7cea4de:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7cea4e2:	4c 8b 15 64 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa664]        # 0x22bdd7ce4b4d
    22bdd7cea4e9:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea4ee:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea4f2:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7cea4f7:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    22bdd7cea4fd:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    22bdd7cea501:	4c 8b 15 45 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa645]        # 0x22bdd7ce4b4d
    22bdd7cea508:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cea50d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cea512:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    22bdd7cea517:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    22bdd7cea51b:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    22bdd7cea520:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cea525:	4c 8b 15 70 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffd70]        # 0x22bdd7cea29c
    22bdd7cea52c:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea531:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea535:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7cea539:	4c 8b 15 a6 f1 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff1a6]        # 0x22bdd7ce96e6
    22bdd7cea540:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea545:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea549:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7cea54d:	4c 8b 15 d5 8d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8dd5]        # 0x22bdd7ce3329
    22bdd7cea554:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    22bdd7cea559:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    22bdd7cea55e:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    22bdd7cea564:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    22bdd7cea568:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    22bdd7cea56d:	4c 8b 15 86 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd586]        # 0x22bdd7ce7afa
    22bdd7cea574:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cea579:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cea57e:	4c 8b 15 a0 d4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd4a0]        # 0x22bdd7ce7a25
    22bdd7cea585:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7cea58a:	4c 8b 15 a3 d4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd4a3]        # 0x22bdd7ce7a34
    22bdd7cea591:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cea596:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7cea59b:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    22bdd7cea5a1:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    22bdd7cea5a6:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    22bdd7cea5aa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cea5af:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    22bdd7cea5b4:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    22bdd7cea5b8:	c4 c1 7a 11 04 38                               	vmovss DWORD PTR [r8+rdi*1],xmm0
    22bdd7cea5be:	49 8b c4                                        	mov    rax,r12
    22bdd7cea5c1:	f6 c3 04                                        	test   bl,0x4
    22bdd7cea5c4:	0f 85 08 00 00 00                               	jne    0x22bdd7cea5d2
    22bdd7cea5ca:	41 8b fb                                        	mov    edi,r11d
    22bdd7cea5cd:	e9 7e 02 00 00                                  	jmp    0x22bdd7cea850
    22bdd7cea5d2:	41 8b fb                                        	mov    edi,r11d
    22bdd7cea5d5:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    22bdd7cea5dc:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    22bdd7cea5e3:	0f 85 9b 00 00 00                               	jne    0x22bdd7cea684
    22bdd7cea5e9:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    22bdd7cea5f0:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    22bdd7cea5f7:	c4 c1 7a 10 44 38 28                            	vmovss xmm0,DWORD PTR [r8+rdi*1+0x28]
    22bdd7cea5fe:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    22bdd7cea605:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cea609:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cea60c:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    22bdd7cea60f:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    22bdd7cea615:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    22bdd7cea619:	e8 42 bc f1 ff                                  	call   0x22bdd7c06260
    22bdd7cea61e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cea621:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cea625:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7cea629:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7cea62d:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7cea632:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7cea637:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cea63b:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    22bdd7cea642:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    22bdd7cea649:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    22bdd7cea650:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    22bdd7cea658:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7cea65f:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    22bdd7cea667:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cea66f:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cea677:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cea67f:	e9 cc 01 00 00                                  	jmp    0x22bdd7cea850
    22bdd7cea684:	4c 8b d8                                        	mov    r11,rax
    22bdd7cea687:	47 8b 24 18                                     	mov    r12d,DWORD PTR [r8+r11*1]
    22bdd7cea68b:	44 0f af a5 50 ff ff ff                         	imul   r12d,DWORD PTR [rbp-0xb0]
    22bdd7cea693:	8b 45 90                                        	mov    eax,DWORD PTR [rbp-0x70]
    22bdd7cea696:	44 03 e0                                        	add    r12d,eax
    22bdd7cea699:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    22bdd7cea69e:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    22bdd7cea6a4:	0f 84 20 00 00 00                               	je     0x22bdd7cea6ca
    22bdd7cea6aa:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    22bdd7cea6af:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    22bdd7cea6b5:	0f 84 0f 00 00 00                               	je     0x22bdd7cea6ca
    22bdd7cea6bb:	43 8b 4c 18 0c                                  	mov    ecx,DWORD PTR [r8+r11*1+0xc]
    22bdd7cea6c0:	42 8d 0c a1                                     	lea    ecx,[rcx+r12*4]
    22bdd7cea6c4:	c4 c1 7a 11 0c 08                               	vmovss DWORD PTR [r8+rcx*1],xmm1
    22bdd7cea6ca:	8b 8d f8 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x308]
    22bdd7cea6d0:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
    22bdd7cea6d6:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cea6db:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    22bdd7cea6df:	47 8b 7c 18 74                                  	mov    r15d,DWORD PTR [r8+r11*1+0x74]
    22bdd7cea6e4:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    22bdd7cea6ea:	0f 84 81 00 00 00                               	je     0x22bdd7cea771
    22bdd7cea6f0:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    22bdd7cea6f5:	47 8b 7c 18 78                                  	mov    r15d,DWORD PTR [r8+r11*1+0x78]
    22bdd7cea6fa:	43 81 7c 18 78 02 03 00 00                      	cmp    DWORD PTR [r8+r11*1+0x78],0x302
    22bdd7cea703:	0f 84 09 00 00 00                               	je     0x22bdd7cea712
    22bdd7cea709:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7cea70d:	e9 04 00 00 00                                  	jmp    0x22bdd7cea716
    22bdd7cea712:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7cea716:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    22bdd7cea71b:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7cea720:	c4 01 7a 10 0c 20                               	vmovss xmm9,DWORD PTR [r8+r12*1]
    22bdd7cea726:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    22bdd7cea72b:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    22bdd7cea730:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    22bdd7cea735:	4c 8b 15 07 db ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdb07]        # 0x22bdd7ce8243
    22bdd7cea73c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cea741:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7cea746:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    22bdd7cea74b:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    22bdd7cea74f:	47 8b 7c 18 7c                                  	mov    r15d,DWORD PTR [r8+r11*1+0x7c]
    22bdd7cea754:	43 83 7c 18 7c 01                               	cmp    DWORD PTR [r8+r11*1+0x7c],0x1
    22bdd7cea75a:	0f 85 04 00 00 00                               	jne    0x22bdd7cea764
    22bdd7cea760:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7cea764:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    22bdd7cea769:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    22bdd7cea76d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7cea771:	4c 8b 15 d5 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3d5]        # 0x22bdd7ce4b4d
    22bdd7cea778:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea77d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea781:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7cea786:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    22bdd7cea78c:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    22bdd7cea790:	4c 8b 15 b6 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3b6]        # 0x22bdd7ce4b4d
    22bdd7cea797:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cea79c:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cea7a1:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    22bdd7cea7a6:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    22bdd7cea7aa:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    22bdd7cea7af:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cea7b4:	4c 8b 15 e1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffae1]        # 0x22bdd7cea29c
    22bdd7cea7bb:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea7c0:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea7c4:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7cea7c8:	4c 8b 15 17 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef17]        # 0x22bdd7ce96e6
    22bdd7cea7cf:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cea7d4:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cea7d8:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7cea7dc:	4c 8b 15 46 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b46]        # 0x22bdd7ce3329
    22bdd7cea7e3:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    22bdd7cea7e8:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    22bdd7cea7ed:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    22bdd7cea7f3:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    22bdd7cea7f7:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    22bdd7cea7fc:	4c 8b 15 f7 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2f7]        # 0x22bdd7ce7afa
    22bdd7cea803:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cea808:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cea80d:	4c 8b 15 11 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd211]        # 0x22bdd7ce7a25
    22bdd7cea814:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7cea819:	4c 8b 15 14 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd214]        # 0x22bdd7ce7a34
    22bdd7cea820:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cea825:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7cea82a:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    22bdd7cea830:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    22bdd7cea835:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    22bdd7cea839:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cea83e:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    22bdd7cea843:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    22bdd7cea847:	c4 81 7a 11 04 20                               	vmovss DWORD PTR [r8+r12*1],xmm0
    22bdd7cea84d:	49 8b c3                                        	mov    rax,r11
    22bdd7cea850:	f6 c3 08                                        	test   bl,0x8
    22bdd7cea853:	0f 85 23 00 00 00                               	jne    0x22bdd7cea87c
    22bdd7cea859:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    22bdd7cea85f:	4c 8b e6                                        	mov    r12,rsi
    22bdd7cea862:	49 8b f0                                        	mov    rsi,r8
    22bdd7cea865:	4c 8b d8                                        	mov    r11,rax
    22bdd7cea868:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7cea86d:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    22bdd7cea871:	4c 8b fa                                        	mov    r15,rdx
    22bdd7cea874:	49 8b f9                                        	mov    rdi,r9
    22bdd7cea877:	e9 fc 1e 00 00                                  	jmp    0x22bdd7cec778
    22bdd7cea87c:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    22bdd7cea883:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    22bdd7cea88a:	0f 85 95 00 00 00                               	jne    0x22bdd7cea925
    22bdd7cea890:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    22bdd7cea897:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    22bdd7cea89e:	c4 c1 7a 10 44 38 38                            	vmovss xmm0,DWORD PTR [r8+rdi*1+0x38]
    22bdd7cea8a5:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    22bdd7cea8ac:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cea8b0:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cea8b3:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    22bdd7cea8b9:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    22bdd7cea8bf:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    22bdd7cea8c3:	e8 98 b9 f1 ff                                  	call   0x22bdd7c06260
    22bdd7cea8c8:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    22bdd7cea8ce:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    22bdd7cea8d2:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7cea8d6:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7cea8db:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7cea8e1:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7cea8e7:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cea8eb:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    22bdd7cea8f2:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    22bdd7cea8f9:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7cea900:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7cea908:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cea910:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cea918:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cea920:	e9 53 1e 00 00                                  	jmp    0x22bdd7cec778
    22bdd7cea925:	4c 8b d8                                        	mov    r11,rax
    22bdd7cea928:	47 8b 24 18                                     	mov    r12d,DWORD PTR [r8+r11*1]
    22bdd7cea92c:	44 0f af a5 50 ff ff ff                         	imul   r12d,DWORD PTR [rbp-0xb0]
    22bdd7cea934:	44 8b bd 58 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xa8]
    22bdd7cea93b:	45 03 e7                                        	add    r12d,r15d
    22bdd7cea93e:	47 8b 7c 18 68                                  	mov    r15d,DWORD PTR [r8+r11*1+0x68]
    22bdd7cea943:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    22bdd7cea949:	0f 84 20 00 00 00                               	je     0x22bdd7cea96f
    22bdd7cea94f:	47 8b 7c 18 70                                  	mov    r15d,DWORD PTR [r8+r11*1+0x70]
    22bdd7cea954:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    22bdd7cea95a:	0f 84 0f 00 00 00                               	je     0x22bdd7cea96f
    22bdd7cea960:	47 8b 7c 18 0c                                  	mov    r15d,DWORD PTR [r8+r11*1+0xc]
    22bdd7cea965:	47 8d 3c a7                                     	lea    r15d,[r15+r12*4]
    22bdd7cea969:	c4 81 7a 11 0c 38                               	vmovss DWORD PTR [r8+r15*1],xmm1
    22bdd7cea96f:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    22bdd7cea975:	c4 c1 7a 6f 04 18                               	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1]
    22bdd7cea97b:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cea980:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    22bdd7cea984:	47 8b 7c 18 74                                  	mov    r15d,DWORD PTR [r8+r11*1+0x74]
    22bdd7cea989:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    22bdd7cea98f:	0f 84 81 00 00 00                               	je     0x22bdd7ceaa16
    22bdd7cea995:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    22bdd7cea99a:	47 8b 7c 18 78                                  	mov    r15d,DWORD PTR [r8+r11*1+0x78]
    22bdd7cea99f:	43 81 7c 18 78 02 03 00 00                      	cmp    DWORD PTR [r8+r11*1+0x78],0x302
    22bdd7cea9a8:	0f 84 09 00 00 00                               	je     0x22bdd7cea9b7
    22bdd7cea9ae:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7cea9b2:	e9 04 00 00 00                                  	jmp    0x22bdd7cea9bb
    22bdd7cea9b7:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7cea9bb:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    22bdd7cea9c0:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7cea9c5:	c4 01 7a 10 0c 20                               	vmovss xmm9,DWORD PTR [r8+r12*1]
    22bdd7cea9cb:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    22bdd7cea9d0:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    22bdd7cea9d5:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    22bdd7cea9da:	4c 8b 15 62 d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd862]        # 0x22bdd7ce8243
    22bdd7cea9e1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cea9e6:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7cea9eb:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    22bdd7cea9f0:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    22bdd7cea9f4:	47 8b 7c 18 7c                                  	mov    r15d,DWORD PTR [r8+r11*1+0x7c]
    22bdd7cea9f9:	43 83 7c 18 7c 01                               	cmp    DWORD PTR [r8+r11*1+0x7c],0x1
    22bdd7cea9ff:	0f 85 04 00 00 00                               	jne    0x22bdd7ceaa09
    22bdd7ceaa05:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ceaa09:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    22bdd7ceaa0e:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    22bdd7ceaa12:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7ceaa16:	4c 8b 15 30 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa130]        # 0x22bdd7ce4b4d
    22bdd7ceaa1d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ceaa22:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ceaa26:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ceaa2b:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    22bdd7ceaa31:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    22bdd7ceaa35:	4c 8b 15 11 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa111]        # 0x22bdd7ce4b4d
    22bdd7ceaa3c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ceaa41:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ceaa46:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    22bdd7ceaa4b:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    22bdd7ceaa4f:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    22bdd7ceaa54:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ceaa59:	4c 8b 15 3c f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff83c]        # 0x22bdd7cea29c
    22bdd7ceaa60:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ceaa65:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ceaa69:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7ceaa6d:	4c 8b 15 72 ec ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffec72]        # 0x22bdd7ce96e6
    22bdd7ceaa74:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ceaa79:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ceaa7d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7ceaa81:	4c 8b 15 a1 88 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff88a1]        # 0x22bdd7ce3329
    22bdd7ceaa88:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    22bdd7ceaa8d:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    22bdd7ceaa92:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    22bdd7ceaa98:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    22bdd7ceaa9c:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    22bdd7ceaaa1:	4c 8b 15 52 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd052]        # 0x22bdd7ce7afa
    22bdd7ceaaa8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ceaaad:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ceaab2:	4c 8b 15 6c cf ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcf6c]        # 0x22bdd7ce7a25
    22bdd7ceaab9:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ceaabe:	4c 8b 15 6f cf ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcf6f]        # 0x22bdd7ce7a34
    22bdd7ceaac5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7ceaaca:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7ceaacf:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    22bdd7ceaad5:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    22bdd7ceaada:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    22bdd7ceaade:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ceaae3:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    22bdd7ceaae8:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    22bdd7ceaaec:	c4 81 7a 11 04 20                               	vmovss DWORD PTR [r8+r12*1],xmm0
    22bdd7ceaaf2:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    22bdd7ceaaf8:	4c 8b e6                                        	mov    r12,rsi
    22bdd7ceaafb:	49 8b f0                                        	mov    rsi,r8
    22bdd7ceaafe:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ceab03:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    22bdd7ceab07:	4c 8b fa                                        	mov    r15,rdx
    22bdd7ceab0a:	49 8b f9                                        	mov    rdi,r9
    22bdd7ceab0d:	e9 66 1c 00 00                                  	jmp    0x22bdd7cec778
    22bdd7ceab12:	45 8b e7                                        	mov    r12d,r15d
    22bdd7ceab15:	41 83 e4 01                                     	and    r12d,0x1
    22bdd7ceab19:	41 f7 dc                                        	neg    r12d
    22bdd7ceab1c:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    22bdd7ceab21:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7ceab26:	45 8b e7                                        	mov    r12d,r15d
    22bdd7ceab29:	41 c1 e4 1e                                     	shl    r12d,0x1e
    22bdd7ceab2d:	41 c1 fc 1f                                     	sar    r12d,0x1f
    22bdd7ceab31:	c4 c3 41 22 fc 01                               	vpinsrd xmm7,xmm7,r12d,0x1
    22bdd7ceab37:	45 8b e7                                        	mov    r12d,r15d
    22bdd7ceab3a:	41 c1 e4 1d                                     	shl    r12d,0x1d
    22bdd7ceab3e:	41 c1 fc 1f                                     	sar    r12d,0x1f
    22bdd7ceab42:	c4 c3 41 22 fc 02                               	vpinsrd xmm7,xmm7,r12d,0x2
    22bdd7ceab48:	45 8b e7                                        	mov    r12d,r15d
    22bdd7ceab4b:	41 c1 e4 1c                                     	shl    r12d,0x1c
    22bdd7ceab4f:	41 c1 fc 1f                                     	sar    r12d,0x1f
    22bdd7ceab53:	c4 c3 41 22 fc 03                               	vpinsrd xmm7,xmm7,r12d,0x3
    22bdd7ceab59:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    22bdd7ceab5e:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    22bdd7ceab63:	4d 8b e3                                        	mov    r12,r11
    22bdd7ceab66:	4c 2b a5 18 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2e8]
    22bdd7ceab6d:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    22bdd7ceab72:	c4 43 31 21 cb 10                               	vinsertps xmm9,xmm9,xmm11,0x10
    22bdd7ceab78:	48 8b da                                        	mov    rbx,rdx
    22bdd7ceab7b:	4a 8d 14 1b                                     	lea    rdx,[rbx+r11*1]
    22bdd7ceab7f:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    22bdd7ceab84:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    22bdd7ceab8a:	4c 03 e3                                        	add    r12,rbx
    22bdd7ceab8d:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    22bdd7ceab92:	c4 43 31 21 cb 30                               	vinsertps xmm9,xmm9,xmm11,0x30
    22bdd7ceab98:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    22bdd7ceaba0:	c4 41 20 59 c9                                  	vmulps xmm9,xmm11,xmm9
    22bdd7ceaba5:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    22bdd7ceabad:	c4 c1 08 59 c9                                  	vmulps xmm1,xmm14,xmm9
    22bdd7ceabb2:	c4 c1 82 2a d1                                  	vcvtsi2ss xmm2,xmm15,r9
    22bdd7ceabb7:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    22bdd7ceabbc:	4d 8b e1                                        	mov    r12,r9
    22bdd7ceabbf:	4c 2b a5 38 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2c8]
    22bdd7ceabc6:	c4 c1 82 2a dc                                  	vcvtsi2ss xmm3,xmm15,r12
    22bdd7ceabcb:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    22bdd7ceabd1:	4a 8d 14 0e                                     	lea    rdx,[rsi+r9*1]
    22bdd7ceabd5:	c4 e1 82 2a da                                  	vcvtsi2ss xmm3,xmm15,rdx
    22bdd7ceabda:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    22bdd7ceabe0:	4c 03 e6                                        	add    r12,rsi
    22bdd7ceabe3:	c4 c1 82 2a dc                                  	vcvtsi2ss xmm3,xmm15,r12
    22bdd7ceabe8:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    22bdd7ceabee:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ceabf2:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    22bdd7ceabfa:	c5 e0 59 ea                                     	vmulps xmm5,xmm3,xmm2
    22bdd7ceabfe:	c5 f0 58 c5                                     	vaddps xmm0,xmm1,xmm5
    22bdd7ceac02:	4c 8b 15 44 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f44]        # 0x22bdd7ce4b4d
    22bdd7ceac09:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7ceac0e:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7ceac12:	c4 41 48 5c c1                                  	vsubps xmm8,xmm6,xmm9
    22bdd7ceac17:	c5 38 5c c2                                     	vsubps xmm8,xmm8,xmm2
    22bdd7ceac1b:	c5 78 10 95 60 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2a0]
    22bdd7ceac23:	c4 41 28 59 d8                                  	vmulps xmm11,xmm10,xmm8
    22bdd7ceac28:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ceac2d:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    22bdd7ceac32:	c5 28 c2 e0 01                                  	vcmpltps xmm12,xmm10,xmm0
    22bdd7ceac37:	c5 99 db ff                                     	vpand  xmm7,xmm12,xmm7
    22bdd7ceac3b:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ceac3f:	49 8d 54 24 18                                  	lea    rdx,[r12+0x18]
    22bdd7ceac44:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ceac4b:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    22bdd7ceac51:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    22bdd7ceac56:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    22bdd7ceac5d:	c4 22 79 18 24 1a                               	vbroadcastss xmm12,DWORD PTR [rdx+r11*1]
    22bdd7ceac63:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    22bdd7ceac68:	c4 41 30 58 cc                                  	vaddps xmm9,xmm9,xmm12
    22bdd7ceac6d:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    22bdd7ceac74:	c4 62 79 18 24 1a                               	vbroadcastss xmm12,DWORD PTR [rdx+rbx*1]
    22bdd7ceac7a:	c4 41 38 59 c4                                  	vmulps xmm8,xmm8,xmm12
    22bdd7ceac7f:	c4 41 30 58 c0                                  	vaddps xmm8,xmm9,xmm8
    22bdd7ceac84:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    22bdd7ceac8c:	c4 41 30 58 c0                                  	vaddps xmm8,xmm9,xmm8
    22bdd7ceac91:	48 8b 55 c8                                     	mov    rdx,QWORD PTR [rbp-0x38]
    22bdd7ceac95:	41 8b 34 14                                     	mov    esi,DWORD PTR [r12+rdx*1]
    22bdd7ceac99:	44 8b ce                                        	mov    r9d,esi
    22bdd7ceac9c:	44 0f af 8d 50 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xb0]
    22bdd7ceaca4:	45 03 c8                                        	add    r9d,r8d
    22bdd7ceaca7:	0f af b5 e0 fc ff ff                            	imul   esi,DWORD PTR [rbp-0x320]
    22bdd7ceacae:	41 03 f0                                        	add    esi,r8d
    22bdd7ceacb1:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    22bdd7ceacb5:	45 8b 44 14 04                                  	mov    r8d,DWORD PTR [r12+rdx*1+0x4]
    22bdd7ceacba:	45 8b 7c 14 68                                  	mov    r15d,DWORD PTR [r12+rdx*1+0x68]
    22bdd7ceacbf:	4c 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r15
    22bdd7ceacc6:	45 85 ff                                        	test   r15d,r15d
    22bdd7ceacc9:	0f 85 08 00 00 00                               	jne    0x22bdd7ceacd7
    22bdd7ceaccf:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ceacd2:	e9 1d 01 00 00                                  	jmp    0x22bdd7ceadf4
    22bdd7ceacd7:	45 8b bc 14 80 00 00 00                         	mov    r15d,DWORD PTR [r12+rdx*1+0x80]
    22bdd7ceacdf:	41 83 bc 14 80 00 00 00 00                      	cmp    DWORD PTR [r12+rdx*1+0x80],0x0
    22bdd7ceace8:	75 e5                                           	jne    0x22bdd7ceaccf
    22bdd7ceacea:	45 8b 7c 14 0c                                  	mov    r15d,DWORD PTR [r12+rdx*1+0xc]
    22bdd7ceacef:	41 8d 04 b7                                     	lea    eax,[r15+rsi*4]
    22bdd7ceacf3:	c4 41 7b 10 24 04                               	vmovsd xmm12,QWORD PTR [r12+rax*1]
    22bdd7ceacf9:	8b 85 50 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb0]
    22bdd7ceacff:	41 3b c0                                        	cmp    eax,r8d
    22bdd7cead02:	0f 8c 0d 00 00 00                               	jl     0x22bdd7cead15
    22bdd7cead08:	c5 f8 10 95 80 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x280]
    22bdd7cead10:	e9 0a 00 00 00                                  	jmp    0x22bdd7cead1f
    22bdd7cead15:	47 8d 3c 8f                                     	lea    r15d,[r15+r9*4]
    22bdd7cead19:	c4 81 7b 10 14 3c                               	vmovsd xmm2,QWORD PTR [r12+r15*1]
    22bdd7cead1f:	c5 19 6c e2                                     	vpunpcklqdq xmm12,xmm12,xmm2
    22bdd7cead23:	45 8b 7c 14 6c                                  	mov    r15d,DWORD PTR [r12+rdx*1+0x6c]
    22bdd7cead28:	41 81 ef 00 02 00 00                            	sub    r15d,0x200
    22bdd7cead2f:	41 83 ff 07                                     	cmp    r15d,0x7
    22bdd7cead33:	0f 83 0b 00 00 00                               	jae    0x22bdd7cead44
    22bdd7cead39:	4c 8d 15 48 1f 00 00                            	lea    r10,[rip+0x1f48]        # 0x22bdd7cecc88
    22bdd7cead40:	43 ff 24 fa                                     	jmp    QWORD PTR [r10+r15*8]
    22bdd7cead44:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    22bdd7cead49:	e9 4a 00 00 00                                  	jmp    0x22bdd7cead98
    22bdd7cead4e:	c4 41 18 c2 e0 02                               	vcmpleps xmm12,xmm12,xmm8
    22bdd7cead54:	e9 3f 00 00 00                                  	jmp    0x22bdd7cead98
    22bdd7cead59:	c4 41 38 c2 e4 04                               	vcmpneqps xmm12,xmm8,xmm12
    22bdd7cead5f:	e9 34 00 00 00                                  	jmp    0x22bdd7cead98
    22bdd7cead64:	c4 41 18 c2 e0 01                               	vcmpltps xmm12,xmm12,xmm8
    22bdd7cead6a:	e9 29 00 00 00                                  	jmp    0x22bdd7cead98
    22bdd7cead6f:	c4 41 38 c2 e4 02                               	vcmpleps xmm12,xmm8,xmm12
    22bdd7cead75:	e9 1e 00 00 00                                  	jmp    0x22bdd7cead98
    22bdd7cead7a:	c4 41 38 c2 e4 00                               	vcmpeqps xmm12,xmm8,xmm12
    22bdd7cead80:	e9 13 00 00 00                                  	jmp    0x22bdd7cead98
    22bdd7cead85:	c4 41 38 c2 e4 01                               	vcmpltps xmm12,xmm8,xmm12
    22bdd7cead8b:	e9 08 00 00 00                                  	jmp    0x22bdd7cead98
    22bdd7cead90:	c5 78 10 a5 80 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x280]
    22bdd7cead98:	c5 99 db ff                                     	vpand  xmm7,xmm12,xmm7
    22bdd7cead9c:	c5 78 50 ff                                     	vmovmskps r15d,xmm7
    22bdd7ceada0:	45 85 ff                                        	test   r15d,r15d
    22bdd7ceada3:	0f 85 3f 00 00 00                               	jne    0x22bdd7ceade8
    22bdd7ceada9:	49 8b f4                                        	mov    rsi,r12
    22bdd7ceadac:	4c 8b e3                                        	mov    r12,rbx
    22bdd7ceadaf:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7ceadb4:	4d 8b fb                                        	mov    r15,r11
    22bdd7ceadb7:	4c 8b da                                        	mov    r11,rdx
    22bdd7ceadba:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7ceadbf:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7ceadc5:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7ceadcb:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7ceadd3:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7ceaddb:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7ceade3:	e9 90 19 00 00                                  	jmp    0x22bdd7cec778
    22bdd7ceade8:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    22bdd7ceadee:	41 bf 01 00 00 00                               	mov    r15d,0x1
    22bdd7ceadf4:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    22bdd7ceadfe:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ceae03:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ceae08:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x22bdd7ceadf6
    22bdd7ceae0f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7ceae14:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7ceae18:	c5 e8 c2 d0 01                                  	vcmpltps xmm2,xmm2,xmm0
    22bdd7ceae1d:	c4 41 69 df fc                                  	vpandn xmm15,xmm2,xmm12
    22bdd7ceae22:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    22bdd7ceae26:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ceae2b:	c5 c8 5e c0                                     	vdivps xmm0,xmm6,xmm0
    22bdd7ceae2f:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    22bdd7ceae36:	4d 8d 44 24 2c                                  	lea    r8,[r12+0x2c]
    22bdd7ceae3b:	c4 42 79 18 24 38                               	vbroadcastss xmm12,DWORD PTR [r8+rdi*1]
    22bdd7ceae41:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    22bdd7ceae46:	c4 82 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+r11*1]
    22bdd7ceae4c:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    22bdd7ceae50:	c5 18 58 e2                                     	vaddps xmm12,xmm12,xmm2
    22bdd7ceae54:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    22bdd7ceae5a:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ceae5e:	c5 18 58 e2                                     	vaddps xmm12,xmm12,xmm2
    22bdd7ceae62:	c4 41 78 59 e4                                  	vmulps xmm12,xmm0,xmm12
    22bdd7ceae67:	4d 8d 44 24 28                                  	lea    r8,[r12+0x28]
    22bdd7ceae6c:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    22bdd7ceae72:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    22bdd7ceae76:	c5 f8 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm6
    22bdd7ceae7e:	c4 82 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [r8+r11*1]
    22bdd7ceae84:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    22bdd7ceae88:	c5 e8 58 f6                                     	vaddps xmm6,xmm2,xmm6
    22bdd7ceae8c:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    22bdd7ceae92:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ceae96:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
    22bdd7ceae9a:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    22bdd7ceae9e:	4d 8d 44 24 24                                  	lea    r8,[r12+0x24]
    22bdd7ceaea3:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    22bdd7ceaea9:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    22bdd7ceaead:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    22bdd7ceaeb5:	c4 82 79 18 3c 18                               	vbroadcastss xmm7,DWORD PTR [r8+r11*1]
    22bdd7ceaebb:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    22bdd7ceaebf:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    22bdd7ceaec3:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    22bdd7ceaec9:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ceaecd:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    22bdd7ceaed1:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    22bdd7ceaed5:	4d 8d 44 24 20                                  	lea    r8,[r12+0x20]
    22bdd7ceaeda:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    22bdd7ceaee0:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    22bdd7ceaee4:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    22bdd7ceaeec:	c4 02 79 18 04 18                               	vbroadcastss xmm8,DWORD PTR [r8+r11*1]
    22bdd7ceaef2:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    22bdd7ceaef7:	c4 41 68 58 c0                                  	vaddps xmm8,xmm2,xmm8
    22bdd7ceaefc:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    22bdd7ceaf02:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ceaf06:	c5 38 58 c2                                     	vaddps xmm8,xmm8,xmm2
    22bdd7ceaf0a:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    22bdd7ceaf0f:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ceaf16:	4c 89 bd 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r15
    22bdd7ceaf1d:	47 8b bc 04 34 01 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x134]
    22bdd7ceaf25:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    22bdd7ceaf2c:	41 8d 77 ff                                     	lea    esi,[r15-0x1]
    22bdd7ceaf30:	4c 89 8d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r9
    22bdd7ceaf37:	c5 78 11 95 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm10
    22bdd7ceaf3f:	83 fe 01                                        	cmp    esi,0x1
    22bdd7ceaf42:	0f 87 14 07 00 00                               	ja     0x22bdd7ceb65c
    22bdd7ceaf48:	43 8b 74 04 28                                  	mov    esi,DWORD PTR [r12+r8*1+0x28]
    22bdd7ceaf4d:	47 8b 4c 04 20                                  	mov    r9d,DWORD PTR [r12+r8*1+0x20]
    22bdd7ceaf52:	4c 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],r15
    22bdd7ceaf59:	4d 8d 7c 24 54                                  	lea    r15,[r12+0x54]
    22bdd7ceaf5e:	c4 c2 79 18 14 1f                               	vbroadcastss xmm2,DWORD PTR [r15+rbx*1]
    22bdd7ceaf64:	c4 42 79 18 0c 3f                               	vbroadcastss xmm9,DWORD PTR [r15+rdi*1]
    22bdd7ceaf6a:	c4 02 79 18 2c 1f                               	vbroadcastss xmm13,DWORD PTR [r15+r11*1]
    22bdd7ceaf70:	47 8b 7c 04 1c                                  	mov    r15d,DWORD PTR [r12+r8*1+0x1c]
    22bdd7ceaf75:	c4 41 02 2a f7                                  	vcvtsi2ss xmm14,xmm15,r15d
    22bdd7ceaf7a:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    22bdd7ceaf7f:	48 89 b5 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rsi
    22bdd7ceaf86:	49 8d 74 24 50                                  	lea    rsi,[r12+0x50]
    22bdd7ceaf8b:	c4 e2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+rdi*1]
    22bdd7ceaf91:	c5 f0 59 db                                     	vmulps xmm3,xmm1,xmm3
    22bdd7ceaf95:	c4 a2 79 18 24 1e                               	vbroadcastss xmm4,DWORD PTR [rsi+r11*1]
    22bdd7ceaf9b:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    22bdd7ceaf9f:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    22bdd7ceafa3:	c4 e2 79 18 24 1e                               	vbroadcastss xmm4,DWORD PTR [rsi+rbx*1]
    22bdd7ceafa9:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    22bdd7ceafad:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    22bdd7ceafb1:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    22bdd7ceafb5:	c4 e3 79 08 e3 09                               	vroundps xmm4,xmm3,0x9
    22bdd7ceafbb:	c5 e0 5c dc                                     	vsubps xmm3,xmm3,xmm4
    22bdd7ceafbf:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    22bdd7ceafc3:	4c 8b 15 1e ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca1e]        # 0x22bdd7ce79e8
    22bdd7ceafca:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7ceafcf:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7ceafd3:	c5 08 58 f3                                     	vaddps xmm14,xmm14,xmm3
    22bdd7ceafd7:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    22bdd7ceafdd:	4c 8b 15 45 83 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8345]        # 0x22bdd7ce3329
    22bdd7ceafe4:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    22bdd7ceafe9:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    22bdd7ceafee:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    22bdd7ceaff4:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    22bdd7ceaff9:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    22bdd7ceaffe:	c5 78 11 a5 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm12
    22bdd7ceb006:	4c 8b 15 ed ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcaed]        # 0x22bdd7ce7afa
    22bdd7ceb00d:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ceb012:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ceb017:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    22bdd7ceb01f:	4c 8b 15 ff c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc9ff]        # 0x22bdd7ce7a25
    22bdd7ceb026:	c4 c1 58 54 32                                  	vandps xmm6,xmm4,XMMWORD PTR [r10]
    22bdd7ceb02b:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    22bdd7ceb033:	4c 8b 15 fa c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc9fa]        # 0x22bdd7ce7a34
    22bdd7ceb03a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ceb03f:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ceb043:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    22bdd7ceb048:	c4 41 49 df fc                                  	vpandn xmm15,xmm6,xmm12
    22bdd7ceb04d:	c5 a9 db f6                                     	vpand  xmm6,xmm10,xmm6
    22bdd7ceb051:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7ceb056:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    22bdd7ceb059:	c4 c1 7a 7f b4 34 90 00 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x90],xmm6
    22bdd7ceb063:	c4 c1 02 2a f1                                  	vcvtsi2ss xmm6,xmm15,r9d
    22bdd7ceb068:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    22bdd7ceb06d:	c4 41 70 59 c9                                  	vmulps xmm9,xmm1,xmm9
    22bdd7ceb072:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    22bdd7ceb077:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    22bdd7ceb07c:	c5 20 59 d2                                     	vmulps xmm10,xmm11,xmm2
    22bdd7ceb080:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    22bdd7ceb085:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    22bdd7ceb08a:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    22bdd7ceb090:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    22bdd7ceb095:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    22bdd7ceb09a:	c5 c8 58 f3                                     	vaddps xmm6,xmm6,xmm3
    22bdd7ceb09e:	c4 63 79 08 ce 09                               	vroundps xmm9,xmm6,0x9
    22bdd7ceb0a4:	4c 8b 15 7e 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff827e]        # 0x22bdd7ce3329
    22bdd7ceb0ab:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    22bdd7ceb0b1:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    22bdd7ceb0b6:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    22bdd7ceb0bc:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    22bdd7ceb0c1:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    22bdd7ceb0c6:	4c 8b 15 58 c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc958]        # 0x22bdd7ce7a25
    22bdd7ceb0cd:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    22bdd7ceb0d2:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    22bdd7ceb0d7:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    22bdd7ceb0dc:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    22bdd7ceb0e1:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    22bdd7ceb0e6:	c4 41 7a 7f 94 34 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x190],xmm10
    22bdd7ceb0f0:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    22bdd7ceb0f4:	c5 78 10 ad 90 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x270]
    22bdd7ceb0fc:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    22bdd7ceb101:	4c 8b 15 de e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5de]        # 0x22bdd7ce96e6
    22bdd7ceb108:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7ceb10d:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7ceb112:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    22bdd7ceb117:	4c 8b 15 0b 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff820b]        # 0x22bdd7ce3329
    22bdd7ceb11e:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    22bdd7ceb124:	c4 c1 28 54 d7                                  	vandps xmm2,xmm10,xmm15
    22bdd7ceb129:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    22bdd7ceb12f:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    22bdd7ceb133:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    22bdd7ceb138:	4c 8b 15 e6 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc8e6]        # 0x22bdd7ce7a25
    22bdd7ceb13f:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    22bdd7ceb144:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    22bdd7ceb149:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    22bdd7ceb14e:	c4 41 69 db d2                                  	vpand  xmm10,xmm2,xmm10
    22bdd7ceb153:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    22bdd7ceb158:	c4 41 7a 7f 14 34                               	vmovdqu XMMWORD PTR [r12+rsi*1],xmm10
    22bdd7ceb15e:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    22bdd7ceb163:	c4 c1 48 59 f5                                  	vmulps xmm6,xmm6,xmm13
    22bdd7ceb168:	c4 c1 48 58 f6                                  	vaddps xmm6,xmm6,xmm14
    22bdd7ceb16d:	4c 8b 15 b5 81 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff81b5]        # 0x22bdd7ce3329
    22bdd7ceb174:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    22bdd7ceb179:	c4 41 48 54 cf                                  	vandps xmm9,xmm6,xmm15
    22bdd7ceb17e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    22bdd7ceb184:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    22bdd7ceb189:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    22bdd7ceb18e:	4c 8b 15 90 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc890]        # 0x22bdd7ce7a25
    22bdd7ceb195:	c4 c1 48 54 32                                  	vandps xmm6,xmm6,XMMWORD PTR [r10]
    22bdd7ceb19a:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    22bdd7ceb19f:	c4 41 49 df fc                                  	vpandn xmm15,xmm6,xmm12
    22bdd7ceb1a4:	c5 b1 db f6                                     	vpand  xmm6,xmm9,xmm6
    22bdd7ceb1a8:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7ceb1ad:	c4 c1 7a 7f 74 34 70                            	vmovdqu XMMWORD PTR [r12+rsi*1+0x70],xmm6
    22bdd7ceb1b4:	c4 41 7a 7f 44 34 50                            	vmovdqu XMMWORD PTR [r12+rsi*1+0x50],xmm8
    22bdd7ceb1bb:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    22bdd7ceb1c3:	c4 c1 7a 7f bc 34 f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1f0],xmm7
    22bdd7ceb1cd:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    22bdd7ceb1d5:	c4 c1 7a 7f b4 34 e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1e0],xmm6
    22bdd7ceb1df:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    22bdd7ceb1e7:	c4 41 7a 7f a4 34 d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1d0],xmm12
    22bdd7ceb1f1:	43 8b 5c 04 34                                  	mov    ebx,DWORD PTR [r12+r8*1+0x34]
    22bdd7ceb1f6:	47 8b 5c 04 30                                  	mov    r11d,DWORD PTR [r12+r8*1+0x30]
    22bdd7ceb1fb:	43 8b 7c 04 2c                                  	mov    edi,DWORD PTR [r12+r8*1+0x2c]
    22bdd7ceb200:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    22bdd7ceb207:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    22bdd7ceb20e:	4c 89 9d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r11
    22bdd7ceb215:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ceb218:	e9 37 00 00 00                                  	jmp    0x22bdd7ceb254
    22bdd7ceb21d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ceb226:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ceb22f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ceb238:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    22bdd7ceb240:	41 8b f0                                        	mov    esi,r8d
    22bdd7ceb243:	45 8b c3                                        	mov    r8d,r11d
    22bdd7ceb246:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    22bdd7ceb24d:	44 8b 8d b8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x248]
    22bdd7ceb254:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ceb259:	0f 85 f5 18 00 00                               	jne    0x22bdd7cecb54
    22bdd7ceb25f:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ceb262:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    22bdd7ceb268:	d3 eb                                           	shr    ebx,cl
    22bdd7ceb26a:	f6 c3 01                                        	test   bl,0x1
    22bdd7ceb26d:	0f 85 11 00 00 00                               	jne    0x22bdd7ceb284
    22bdd7ceb273:	41 8b d8                                        	mov    ebx,r8d
    22bdd7ceb276:	44 8b c6                                        	mov    r8d,esi
    22bdd7ceb279:	8b 95 80 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x180]
    22bdd7ceb27f:	e9 45 03 00 00                                  	jmp    0x22bdd7ceb5c9
    22bdd7ceb284:	42 8d 9c 86 90 01 00 00                         	lea    ebx,[rsi+r8*4+0x190]
    22bdd7ceb28c:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    22bdd7ceb290:	42 8d 8c 86 90 00 00 00                         	lea    ecx,[rsi+r8*4+0x90]
    22bdd7ceb298:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    22bdd7ceb29c:	8d 71 01                                        	lea    esi,[rcx+0x1]
    22bdd7ceb29f:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    22bdd7ceb2a6:	44 8d 43 01                                     	lea    r8d,[rbx+0x1]
    22bdd7ceb2aa:	85 ff                                           	test   edi,edi
    22bdd7ceb2ac:	0f 85 48 00 00 00                               	jne    0x22bdd7ceb2fa
    22bdd7ceb2b2:	45 85 ff                                        	test   r15d,r15d
    22bdd7ceb2b5:	0f 84 50 19 00 00                               	je     0x22bdd7cecc0b
    22bdd7ceb2bb:	41 83 ff ff                                     	cmp    r15d,0xffffffff
    22bdd7ceb2bf:	0f 84 1f 19 00 00                               	je     0x22bdd7cecbe4
    22bdd7ceb2c5:	8b c6                                           	mov    eax,esi
    22bdd7ceb2c7:	99                                              	cdq
    22bdd7ceb2c8:	41 f7 ff                                        	idiv   r15d
    22bdd7ceb2cb:	8b c2                                           	mov    eax,edx
    22bdd7ceb2cd:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7ceb2d0:	41 23 c7                                        	and    eax,r15d
    22bdd7ceb2d3:	03 c2                                           	add    eax,edx
    22bdd7ceb2d5:	41 83 ff ff                                     	cmp    r15d,0xffffffff
    22bdd7ceb2d9:	0f 84 0c 19 00 00                               	je     0x22bdd7cecbeb
    22bdd7ceb2df:	44 8b d0                                        	mov    r10d,eax
    22bdd7ceb2e2:	8b c1                                           	mov    eax,ecx
    22bdd7ceb2e4:	41 8b ca                                        	mov    ecx,r10d
    22bdd7ceb2e7:	99                                              	cdq
    22bdd7ceb2e8:	41 f7 ff                                        	idiv   r15d
    22bdd7ceb2eb:	8b c2                                           	mov    eax,edx
    22bdd7ceb2ed:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7ceb2f0:	41 23 c7                                        	and    eax,r15d
    22bdd7ceb2f3:	03 c2                                           	add    eax,edx
    22bdd7ceb2f5:	e9 08 00 00 00                                  	jmp    0x22bdd7ceb302
    22bdd7ceb2fa:	23 f7                                           	and    esi,edi
    22bdd7ceb2fc:	23 cf                                           	and    ecx,edi
    22bdd7ceb2fe:	8b c1                                           	mov    eax,ecx
    22bdd7ceb300:	8b ce                                           	mov    ecx,esi
    22bdd7ceb302:	45 85 db                                        	test   r11d,r11d
    22bdd7ceb305:	0f 85 51 00 00 00                               	jne    0x22bdd7ceb35c
    22bdd7ceb30b:	45 85 c9                                        	test   r9d,r9d
    22bdd7ceb30e:	0f 84 f2 18 00 00                               	je     0x22bdd7cecc06
    22bdd7ceb314:	41 83 f9 ff                                     	cmp    r9d,0xffffffff
    22bdd7ceb318:	0f 84 d6 18 00 00                               	je     0x22bdd7cecbf4
    22bdd7ceb31e:	8b f0                                           	mov    esi,eax
    22bdd7ceb320:	41 8b c0                                        	mov    eax,r8d
    22bdd7ceb323:	99                                              	cdq
    22bdd7ceb324:	41 f7 f9                                        	idiv   r9d
    22bdd7ceb327:	8b c2                                           	mov    eax,edx
    22bdd7ceb329:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7ceb32c:	41 23 c1                                        	and    eax,r9d
    22bdd7ceb32f:	03 c2                                           	add    eax,edx
    22bdd7ceb331:	41 83 f9 ff                                     	cmp    r9d,0xffffffff
    22bdd7ceb335:	0f 84 c2 18 00 00                               	je     0x22bdd7cecbfd
    22bdd7ceb33b:	44 8b d0                                        	mov    r10d,eax
    22bdd7ceb33e:	8b c3                                           	mov    eax,ebx
    22bdd7ceb340:	41 8b da                                        	mov    ebx,r10d
    22bdd7ceb343:	99                                              	cdq
    22bdd7ceb344:	41 f7 f9                                        	idiv   r9d
    22bdd7ceb347:	8b c2                                           	mov    eax,edx
    22bdd7ceb349:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7ceb34c:	44 23 c8                                        	and    r9d,eax
    22bdd7ceb34f:	42 8d 04 0a                                     	lea    eax,[rdx+r9*1]
    22bdd7ceb353:	8b d0                                           	mov    edx,eax
    22bdd7ceb355:	8b c3                                           	mov    eax,ebx
    22bdd7ceb357:	e9 0d 00 00 00                                  	jmp    0x22bdd7ceb369
    22bdd7ceb35c:	45 23 c3                                        	and    r8d,r11d
    22bdd7ceb35f:	41 8b d3                                        	mov    edx,r11d
    22bdd7ceb362:	23 d3                                           	and    edx,ebx
    22bdd7ceb364:	8b f0                                           	mov    esi,eax
    22bdd7ceb366:	41 8b c0                                        	mov    eax,r8d
    22bdd7ceb369:	44 8b c9                                        	mov    r9d,ecx
    22bdd7ceb36c:	8b 8d d0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x230]
    22bdd7ceb372:	8b da                                           	mov    ebx,edx
    22bdd7ceb374:	d3 e3                                           	shl    ebx,cl
    22bdd7ceb376:	41 0f af d7                                     	imul   edx,r15d
    22bdd7ceb37a:	85 ff                                           	test   edi,edi
    22bdd7ceb37c:	0f 45 d3                                        	cmovne edx,ebx
    22bdd7ceb37f:	8d 1c 32                                        	lea    ebx,[rdx+rsi*1]
    22bdd7ceb382:	8b 8d 80 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x180]
    22bdd7ceb388:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    22bdd7ceb38b:	c4 c1 7a 10 34 1c                               	vmovss xmm6,DWORD PTR [r12+rbx*1]
    22bdd7ceb391:	c4 e2 79 30 f6                                  	vpmovzxbw xmm6,xmm6
    22bdd7ceb396:	41 8d 1c 11                                     	lea    ebx,[r9+rdx*1]
    22bdd7ceb39a:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    22bdd7ceb39d:	c4 c1 7a 10 3c 1c                               	vmovss xmm7,DWORD PTR [r12+rbx*1]
    22bdd7ceb3a3:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    22bdd7ceb3a8:	c5 c9 61 f7                                     	vpunpcklwd xmm6,xmm6,xmm7
    22bdd7ceb3ac:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    22bdd7ceb3b2:	8b 95 c8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x238]
    22bdd7ceb3b8:	44 8d 84 9a 00 fe ff ff                         	lea    r8d,[rdx+rbx*4-0x200]
    22bdd7ceb3c0:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    22bdd7ceb3c4:	ba 00 01 00 00                                  	mov    edx,0x100
    22bdd7ceb3c9:	45 8b d8                                        	mov    r11d,r8d
    22bdd7ceb3cc:	41 81 f8 00 01 00 00                            	cmp    r8d,0x100
    22bdd7ceb3d3:	44 0f 4d da                                     	cmovge r11d,edx
    22bdd7ceb3d7:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ceb3da:	45 85 db                                        	test   r11d,r11d
    22bdd7ceb3dd:	45 0f 4f c3                                     	cmovg  r8d,r11d
    22bdd7ceb3e1:	45 69 c0 ff ff 00 00                            	imul   r8d,r8d,0xffff
    22bdd7ceb3e8:	41 81 c0 00 01 00 00                            	add    r8d,0x100
    22bdd7ceb3ef:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
    22bdd7ceb3f4:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7ceb3f9:	c5 c9 f5 f7                                     	vpmaddwd xmm6,xmm6,xmm7
    22bdd7ceb3fd:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    22bdd7ceb401:	45 8d 5c 98 70                                  	lea    r11d,[r8+rbx*4+0x70]
    22bdd7ceb406:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    22bdd7ceb40a:	45 8b c3                                        	mov    r8d,r11d
    22bdd7ceb40d:	41 81 fb 00 01 00 00                            	cmp    r11d,0x100
    22bdd7ceb414:	44 0f 4d c2                                     	cmovge r8d,edx
    22bdd7ceb418:	45 33 db                                        	xor    r11d,r11d
    22bdd7ceb41b:	45 85 c0                                        	test   r8d,r8d
    22bdd7ceb41e:	45 0f 4f d8                                     	cmovg  r11d,r8d
    22bdd7ceb422:	41 2b d3                                        	sub    edx,r11d
    22bdd7ceb425:	c5 79 6e c2                                     	vmovd  xmm8,edx
    22bdd7ceb429:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7ceb42e:	c4 c2 49 40 f0                                  	vpmulld xmm6,xmm6,xmm8
    22bdd7ceb433:	8b d1                                           	mov    edx,ecx
    22bdd7ceb435:	8b 8d d0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x230]
    22bdd7ceb43b:	44 8b c0                                        	mov    r8d,eax
    22bdd7ceb43e:	41 d3 e0                                        	shl    r8d,cl
    22bdd7ceb441:	41 0f af c7                                     	imul   eax,r15d
    22bdd7ceb445:	85 ff                                           	test   edi,edi
    22bdd7ceb447:	41 0f 45 c0                                     	cmovne eax,r8d
    22bdd7ceb44b:	44 8d 04 06                                     	lea    r8d,[rsi+rax*1]
    22bdd7ceb44f:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    22bdd7ceb453:	c4 01 7a 10 04 04                               	vmovss xmm8,DWORD PTR [r12+r8*1]
    22bdd7ceb459:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    22bdd7ceb45e:	46 8d 04 08                                     	lea    r8d,[rax+r9*1]
    22bdd7ceb462:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    22bdd7ceb466:	c4 01 7a 10 0c 04                               	vmovss xmm9,DWORD PTR [r12+r8*1]
    22bdd7ceb46c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    22bdd7ceb471:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    22bdd7ceb476:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    22bdd7ceb47a:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    22bdd7ceb47f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7ceb484:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    22bdd7ceb489:	c5 c9 fe f7                                     	vpaddd xmm6,xmm6,xmm7
    22bdd7ceb48d:	4c 8b 15 42 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe342]        # 0x22bdd7ce97d6
    22bdd7ceb494:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ceb499:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ceb49d:	c5 c9 fe f7                                     	vpaddd xmm6,xmm6,xmm7
    22bdd7ceb4a1:	c5 c9 72 e6 10                                  	vpsrad xmm6,xmm6,0x10
    22bdd7ceb4a6:	c4 e2 49 2b f6                                  	vpackusdw xmm6,xmm6,xmm6
    22bdd7ceb4ab:	c5 c9 67 f6                                     	vpackuswb xmm6,xmm6,xmm6
    22bdd7ceb4af:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    22bdd7ceb4b4:	45 8b d8                                        	mov    r11d,r8d
    22bdd7ceb4b7:	41 c1 eb 18                                     	shr    r11d,0x18
    22bdd7ceb4bb:	41 8b c0                                        	mov    eax,r8d
    22bdd7ceb4be:	c1 e8 10                                        	shr    eax,0x10
    22bdd7ceb4c1:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ceb4c4:	c1 e9 08                                        	shr    ecx,0x8
    22bdd7ceb4c7:	45 0f b6 c0                                     	movzx  r8d,r8b
    22bdd7ceb4cb:	45 8b d0                                        	mov    r10d,r8d
    22bdd7ceb4ce:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ceb4d3:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    22bdd7ceb4d9:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    22bdd7ceb4de:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ceb4e2:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    22bdd7ceb4e6:	41 8d 74 98 50                                  	lea    esi,[r8+rbx*4+0x50]
    22bdd7ceb4eb:	83 bd a0 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x160],0x2
    22bdd7ceb4f2:	0f 84 77 00 00 00                               	je     0x22bdd7ceb56f
    22bdd7ceb4f8:	c4 c1 4a 59 34 34                               	vmulss xmm6,xmm6,DWORD PTR [r12+rsi*1]
    22bdd7ceb4fe:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    22bdd7ceb504:	41 8d b4 98 f0 01 00 00                         	lea    esi,[r8+rbx*4+0x1f0]
    22bdd7ceb50c:	0f b6 c9                                        	movzx  ecx,cl
    22bdd7ceb50f:	44 8b d1                                        	mov    r10d,ecx
    22bdd7ceb512:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ceb517:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ceb51b:	c4 c1 4a 59 34 34                               	vmulss xmm6,xmm6,DWORD PTR [r12+rsi*1]
    22bdd7ceb521:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    22bdd7ceb527:	41 8d 8c 98 e0 01 00 00                         	lea    ecx,[r8+rbx*4+0x1e0]
    22bdd7ceb52f:	0f b6 c0                                        	movzx  eax,al
    22bdd7ceb532:	44 8b d0                                        	mov    r10d,eax
    22bdd7ceb535:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ceb53a:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ceb53e:	c4 c1 4a 59 34 0c                               	vmulss xmm6,xmm6,DWORD PTR [r12+rcx*1]
    22bdd7ceb544:	c4 c1 7a 11 34 0c                               	vmovss DWORD PTR [r12+rcx*1],xmm6
    22bdd7ceb54a:	41 8d 84 98 d0 01 00 00                         	lea    eax,[r8+rbx*4+0x1d0]
    22bdd7ceb552:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ceb555:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ceb55a:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ceb55e:	c4 c1 4a 59 34 04                               	vmulss xmm6,xmm6,DWORD PTR [r12+rax*1]
    22bdd7ceb564:	c4 c1 7a 11 34 04                               	vmovss DWORD PTR [r12+rax*1],xmm6
    22bdd7ceb56a:	e9 5a 00 00 00                                  	jmp    0x22bdd7ceb5c9
    22bdd7ceb56f:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    22bdd7ceb575:	41 8d b4 98 d0 01 00 00                         	lea    esi,[r8+rbx*4+0x1d0]
    22bdd7ceb57d:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ceb580:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ceb585:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ceb589:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    22bdd7ceb58f:	45 8d 9c 98 e0 01 00 00                         	lea    r11d,[r8+rbx*4+0x1e0]
    22bdd7ceb597:	0f b6 c0                                        	movzx  eax,al
    22bdd7ceb59a:	44 8b d0                                        	mov    r10d,eax
    22bdd7ceb59d:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ceb5a2:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ceb5a6:	c4 81 7a 11 34 1c                               	vmovss DWORD PTR [r12+r11*1],xmm6
    22bdd7ceb5ac:	45 8d 9c 98 f0 01 00 00                         	lea    r11d,[r8+rbx*4+0x1f0]
    22bdd7ceb5b4:	0f b6 c1                                        	movzx  eax,cl
    22bdd7ceb5b7:	44 8b d0                                        	mov    r10d,eax
    22bdd7ceb5ba:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ceb5bf:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ceb5c3:	c4 81 7a 11 34 1c                               	vmovss DWORD PTR [r12+r11*1],xmm6
    22bdd7ceb5c9:	44 8d 5b 01                                     	lea    r11d,[rbx+0x1]
    22bdd7ceb5cd:	41 83 fb 04                                     	cmp    r11d,0x4
    22bdd7ceb5d1:	0f 85 69 fc ff ff                               	jne    0x22bdd7ceb240
    22bdd7ceb5d7:	c4 01 7a 6f a4 04 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+r8*1+0x1d0]
    22bdd7ceb5e1:	c4 81 7a 6f bc 04 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+r8*1+0x1f0]
    22bdd7ceb5eb:	c4 01 7a 6f 44 04 50                            	vmovdqu xmm8,XMMWORD PTR [r12+r8*1+0x50]
    22bdd7ceb5f2:	c4 81 7a 6f b4 04 e0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+r8*1+0x1e0]
    22bdd7ceb5fc:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    22bdd7ceb603:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    22bdd7ceb609:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7ceb611:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    22bdd7ceb619:	48 8b 55 c8                                     	mov    rdx,QWORD PTR [rbp-0x38]
    22bdd7ceb61d:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    22bdd7ceb624:	c5 78 10 95 10 ff ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0xf0]
    22bdd7ceb62c:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7ceb630:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    22bdd7ceb637:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    22bdd7ceb63e:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ceb645:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ceb64c:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    22bdd7ceb654:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    22bdd7ceb65c:	4c 8b fa                                        	mov    r15,rdx
    22bdd7ceb65f:	43 8b 94 3c ec 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0xec]
    22bdd7ceb667:	c5 78 11 a5 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm12
    22bdd7ceb66f:	43 83 bc 3c ec 00 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0xec],0x0
    22bdd7ceb678:	0f 84 02 04 00 00                               	je     0x22bdd7ceba80
    22bdd7ceb67e:	49 8d 94 24 98 00 00 00                         	lea    rdx,[r12+0x98]
    22bdd7ceb686:	c4 e2 79 18 14 3a                               	vbroadcastss xmm2,DWORD PTR [rdx+rdi*1]
    22bdd7ceb68c:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    22bdd7ceb690:	c4 a2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+r11*1]
    22bdd7ceb696:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    22bdd7ceb69a:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    22bdd7ceb69e:	c4 e2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+rbx*1]
    22bdd7ceb6a4:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    22bdd7ceb6a8:	c4 41 70 58 db                                  	vaddps xmm11,xmm1,xmm11
    22bdd7ceb6ad:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ceb6b2:	c5 28 5c d8                                     	vsubps xmm11,xmm10,xmm0
    22bdd7ceb6b6:	c5 a0 c2 c8 01                                  	vcmpltps xmm1,xmm11,xmm0
    22bdd7ceb6bb:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    22bdd7ceb6c0:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    22bdd7ceb6c4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ceb6c9:	4c 8b 15 7d 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947d]        # 0x22bdd7ce4b4d
    22bdd7ceb6d0:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    22bdd7ceb6d5:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    22bdd7ceb6da:	43 8b 94 3c f0 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0xf0]
    22bdd7ceb6e2:	81 fa 00 08 00 00                               	cmp    edx,0x800
    22bdd7ceb6e8:	0f 84 8f 01 00 00                               	je     0x22bdd7ceb87d
    22bdd7ceb6ee:	81 fa 01 26 00 00                               	cmp    edx,0x2601
    22bdd7ceb6f4:	0f 84 23 01 00 00                               	je     0x22bdd7ceb81d
    22bdd7ceb6fa:	c4 81 7a 10 8c 3c f4 00 00 00                   	vmovss xmm1,DWORD PTR [r12+r15*1+0xf4]
    22bdd7ceb704:	c5 f8 28 d0                                     	vmovaps xmm2,xmm0
    22bdd7ceb708:	c5 f2 59 d2                                     	vmulss xmm2,xmm1,xmm2
    22bdd7ceb70c:	4c 8b 15 53 7f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7f53]        # 0x22bdd7ce3666
    22bdd7ceb713:	c4 c1 68 57 2a                                  	vxorps xmm5,xmm2,XMMWORD PTR [r10]
    22bdd7ceb718:	c5 ea 59 d5                                     	vmulss xmm2,xmm2,xmm5
    22bdd7ceb71c:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    22bdd7ceb724:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    22bdd7ceb72c:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    22bdd7ceb734:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    22bdd7ceb73c:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    22bdd7ceb744:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    22bdd7ceb74c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ceb750:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    22bdd7ceb754:	e8 67 ce f1 ff                                  	call   0x22bdd7c085c0
    22bdd7ceb759:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7ceb75e:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    22bdd7ceb766:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    22bdd7ceb76a:	c5 7b 10 85 a8 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x158]
    22bdd7ceb772:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    22bdd7ceb776:	4c 8b 15 e9 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7ee9]        # 0x22bdd7ce3666
    22bdd7ceb77d:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    22bdd7ceb782:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    22bdd7ceb787:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    22bdd7ceb78f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ceb793:	e8 28 ce f1 ff                                  	call   0x22bdd7c085c0
    22bdd7ceb798:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    22bdd7ceb7a0:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    22bdd7ceb7a6:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    22bdd7ceb7ae:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    22bdd7ceb7b3:	c5 7b 10 85 a8 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x158]
    22bdd7ceb7bb:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    22bdd7ceb7bf:	4c 8b 15 a0 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7ea0]        # 0x22bdd7ce3666
    22bdd7ceb7c6:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    22bdd7ceb7cb:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    22bdd7ceb7d0:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    22bdd7ceb7d8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ceb7dc:	e8 df cd f1 ff                                  	call   0x22bdd7c085c0
    22bdd7ceb7e1:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    22bdd7ceb7e9:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    22bdd7ceb7ef:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    22bdd7ceb7f7:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    22bdd7ceb7fc:	c5 fb 10 bd a8 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x158]
    22bdd7ceb804:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    22bdd7ceb808:	4c 8b 15 57 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7e57]        # 0x22bdd7ce3666
    22bdd7ceb80f:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    22bdd7ceb814:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ceb818:	e9 38 01 00 00                                  	jmp    0x22bdd7ceb955
    22bdd7ceb81d:	49 8b f4                                        	mov    rsi,r12
    22bdd7ceb820:	4d 8b e7                                        	mov    r12,r15
    22bdd7ceb823:	c4 a1 7a 10 8c 26 fc 00 00 00                   	vmovss xmm1,DWORD PTR [rsi+r12*1+0xfc]
    22bdd7ceb82d:	c4 a1 72 5c 94 26 f8 00 00 00                   	vsubss xmm2,xmm1,DWORD PTR [rsi+r12*1+0xf8]
    22bdd7ceb837:	c5 f8 2e e2                                     	vucomiss xmm4,xmm2
    22bdd7ceb83b:	7a 06                                           	jp     0x22bdd7ceb843
    22bdd7ceb83d:	0f 84 2d 00 00 00                               	je     0x22bdd7ceb870
    22bdd7ceb843:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    22bdd7ceb848:	c5 f0 5c c0                                     	vsubps xmm0,xmm1,xmm0
    22bdd7ceb84c:	c5 f1 76 c9                                     	vpcmpeqd xmm1,xmm1,xmm1
    22bdd7ceb850:	c5 f1 72 f1 19                                  	vpslld xmm1,xmm1,0x19
    22bdd7ceb855:	c5 f1 72 d1 02                                  	vpsrld xmm1,xmm1,0x2
    22bdd7ceb85a:	c5 f2 5e d2                                     	vdivss xmm2,xmm1,xmm2
    22bdd7ceb85e:	c5 f8 28 d2                                     	vmovaps xmm2,xmm2
    22bdd7ceb862:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    22bdd7ceb867:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    22bdd7ceb86b:	e9 94 01 00 00                                  	jmp    0x22bdd7ceba04
    22bdd7ceb870:	c5 f8 10 85 d0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x130]
    22bdd7ceb878:	e9 87 01 00 00                                  	jmp    0x22bdd7ceba04
    22bdd7ceb87d:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    22bdd7ceb881:	c4 81 7a 10 94 3c f4 00 00 00                   	vmovss xmm2,DWORD PTR [r12+r15*1+0xf4]
    22bdd7ceb88b:	4c 8b 15 d4 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7dd4]        # 0x22bdd7ce3666
    22bdd7ceb892:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    22bdd7ceb897:	c5 f2 59 ca                                     	vmulss xmm1,xmm1,xmm2
    22bdd7ceb89b:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    22bdd7ceb8a3:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    22bdd7ceb8ab:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    22bdd7ceb8b3:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    22bdd7ceb8bb:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    22bdd7ceb8c3:	c5 fb 11 95 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm2
    22bdd7ceb8cb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ceb8cf:	e8 ec cc f1 ff                                  	call   0x22bdd7c085c0
    22bdd7ceb8d4:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7ceb8d9:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    22bdd7ceb8e1:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    22bdd7ceb8e5:	c5 c2 59 8d a8 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x158]
    22bdd7ceb8ed:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    22bdd7ceb8f5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ceb8f9:	e8 c2 cc f1 ff                                  	call   0x22bdd7c085c0
    22bdd7ceb8fe:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    22bdd7ceb906:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    22bdd7ceb90c:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    22bdd7ceb914:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    22bdd7ceb919:	c5 c2 59 8d a8 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x158]
    22bdd7ceb921:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    22bdd7ceb929:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ceb92d:	e8 8e cc f1 ff                                  	call   0x22bdd7c085c0
    22bdd7ceb932:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    22bdd7ceb93a:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    22bdd7ceb940:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    22bdd7ceb948:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    22bdd7ceb94d:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    22bdd7ceb955:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    22bdd7ceb95d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ceb961:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7ceb965:	e8 56 cc f1 ff                                  	call   0x22bdd7c085c0
    22bdd7ceb96a:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    22bdd7ceb972:	c4 e3 79 21 c1 30                               	vinsertps xmm0,xmm0,xmm1,0x30
    22bdd7ceb978:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    22bdd7ceb97f:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    22bdd7ceb983:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    22bdd7ceb987:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    22bdd7ceb98f:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    22bdd7ceb996:	c5 78 10 95 10 ff ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0xf0]
    22bdd7ceb99e:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    22bdd7ceb9a6:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    22bdd7ceb9ae:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    22bdd7ceb9b6:	c5 78 10 9d c0 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x140]
    22bdd7ceb9be:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7ceb9c2:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    22bdd7ceb9c9:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    22bdd7ceb9d0:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7ceb9d7:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7ceb9de:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    22bdd7ceb9e6:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    22bdd7ceb9ee:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    22bdd7ceb9f6:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7ceb9fe:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    22bdd7ceba04:	c5 f8 10 8d d0 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x130]
    22bdd7ceba0c:	c5 f0 c2 d0 01                                  	vcmpltps xmm2,xmm1,xmm0
    22bdd7ceba11:	c5 69 df f8                                     	vpandn xmm15,xmm2,xmm0
    22bdd7ceba15:	c5 a1 db c2                                     	vpand  xmm0,xmm11,xmm2
    22bdd7ceba19:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ceba1e:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    22bdd7ceba24:	c5 a0 55 c0                                     	vandnps xmm0,xmm11,xmm0
    22bdd7ceba28:	c5 c8 59 f0                                     	vmulps xmm6,xmm6,xmm0
    22bdd7ceba2c:	4c 8d be 08 01 00 00                            	lea    r15,[rsi+0x108]
    22bdd7ceba33:	c4 02 79 18 1c 27                               	vbroadcastss xmm11,DWORD PTR [r15+r12*1]
    22bdd7ceba39:	c5 f0 5c c8                                     	vsubps xmm1,xmm1,xmm0
    22bdd7ceba3d:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    22bdd7ceba41:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    22bdd7ceba46:	c5 c0 59 f8                                     	vmulps xmm7,xmm7,xmm0
    22bdd7ceba4a:	4c 8d be 04 01 00 00                            	lea    r15,[rsi+0x104]
    22bdd7ceba51:	c4 02 79 18 1c 27                               	vbroadcastss xmm11,DWORD PTR [r15+r12*1]
    22bdd7ceba57:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    22bdd7ceba5b:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    22bdd7ceba60:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    22bdd7ceba64:	4c 8d be 00 01 00 00                            	lea    r15,[rsi+0x100]
    22bdd7ceba6b:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    22bdd7ceba71:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    22bdd7ceba75:	c4 41 78 58 c0                                  	vaddps xmm8,xmm0,xmm8
    22bdd7ceba7a:	4d 8b fc                                        	mov    r15,r12
    22bdd7ceba7d:	4c 8b e6                                        	mov    r12,rsi
    22bdd7ceba80:	43 8b 94 3c 80 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0x80]
    22bdd7ceba88:	43 83 bc 3c 80 00 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0x80],0x0
    22bdd7ceba91:	0f 85 0d 00 00 00                               	jne    0x22bdd7cebaa4
    22bdd7ceba97:	c5 f8 10 85 f0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x110]
    22bdd7ceba9f:	e9 84 00 00 00                                  	jmp    0x22bdd7cebb28
    22bdd7cebaa4:	49 8d 94 24 88 00 00 00                         	lea    rdx,[r12+0x88]
    22bdd7cebaac:	c4 a2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+r15*1]
    22bdd7cebab2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cebab7:	43 8b 94 3c 84 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0x84]
    22bdd7cebabf:	81 ea 00 02 00 00                               	sub    edx,0x200
    22bdd7cebac5:	83 fa 07                                        	cmp    edx,0x7
    22bdd7cebac8:	0f 83 0b 00 00 00                               	jae    0x22bdd7cebad9
    22bdd7cebace:	4c 8d 15 7b 11 00 00                            	lea    r10,[rip+0x117b]        # 0x22bdd7cecc50
    22bdd7cebad5:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    22bdd7cebad9:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    22bdd7cebade:	e9 39 00 00 00                                  	jmp    0x22bdd7cebb1c
    22bdd7cebae3:	c4 41 78 c2 dc 02                               	vcmpleps xmm11,xmm0,xmm12
    22bdd7cebae9:	e9 2e 00 00 00                                  	jmp    0x22bdd7cebb1c
    22bdd7cebaee:	c5 18 c2 d8 04                                  	vcmpneqps xmm11,xmm12,xmm0
    22bdd7cebaf3:	e9 24 00 00 00                                  	jmp    0x22bdd7cebb1c
    22bdd7cebaf8:	c4 41 78 c2 dc 01                               	vcmpltps xmm11,xmm0,xmm12
    22bdd7cebafe:	e9 19 00 00 00                                  	jmp    0x22bdd7cebb1c
    22bdd7cebb03:	c5 18 c2 d8 02                                  	vcmpleps xmm11,xmm12,xmm0
    22bdd7cebb08:	e9 0f 00 00 00                                  	jmp    0x22bdd7cebb1c
    22bdd7cebb0d:	c5 18 c2 d8 00                                  	vcmpeqps xmm11,xmm12,xmm0
    22bdd7cebb12:	e9 05 00 00 00                                  	jmp    0x22bdd7cebb1c
    22bdd7cebb17:	c5 18 c2 d8 01                                  	vcmpltps xmm11,xmm12,xmm0
    22bdd7cebb1c:	c5 f8 10 85 f0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x110]
    22bdd7cebb24:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    22bdd7cebb28:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    22bdd7cebb2c:	85 d2                                           	test   edx,edx
    22bdd7cebb2e:	0f 85 42 00 00 00                               	jne    0x22bdd7cebb76
    22bdd7cebb34:	49 8b f4                                        	mov    rsi,r12
    22bdd7cebb37:	4c 8b e3                                        	mov    r12,rbx
    22bdd7cebb3a:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7cebb3f:	4d 8b d3                                        	mov    r10,r11
    22bdd7cebb42:	4d 8b df                                        	mov    r11,r15
    22bdd7cebb45:	4d 8b fa                                        	mov    r15,r10
    22bdd7cebb48:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7cebb4d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7cebb53:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7cebb59:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7cebb61:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cebb69:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cebb71:	e9 02 0c 00 00                                  	jmp    0x22bdd7cec778
    22bdd7cebb76:	43 8b 74 3c 58                                  	mov    esi,DWORD PTR [r12+r15*1+0x58]
    22bdd7cebb7b:	43 83 7c 3c 58 00                               	cmp    DWORD PTR [r12+r15*1+0x58],0x0
    22bdd7cebb81:	0f 85 18 00 00 00                               	jne    0x22bdd7cebb9f
    22bdd7cebb87:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    22bdd7cebb8e:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7cebb94:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    22bdd7cebb9a:	e9 28 01 00 00                                  	jmp    0x22bdd7cebcc7
    22bdd7cebb9f:	43 8b 54 3c 48                                  	mov    edx,DWORD PTR [r12+r15*1+0x48]
    22bdd7cebba4:	8b 75 90                                        	mov    esi,DWORD PTR [rbp-0x70]
    22bdd7cebba7:	33 ff                                           	xor    edi,edi
    22bdd7cebba9:	3b f2                                           	cmp    esi,edx
    22bdd7cebbab:	40 0f 9c c7                                     	setl   dil
    22bdd7cebbaf:	47 8b 44 3c 50                                  	mov    r8d,DWORD PTR [r12+r15*1+0x50]
    22bdd7cebbb4:	44 03 c2                                        	add    r8d,edx
    22bdd7cebbb7:	45 33 db                                        	xor    r11d,r11d
    22bdd7cebbba:	44 3b c6                                        	cmp    r8d,esi
    22bdd7cebbbd:	41 0f 9e c3                                     	setle  r11b
    22bdd7cebbc1:	44 0b df                                        	or     r11d,edi
    22bdd7cebbc4:	43 8b 7c 3c 4c                                  	mov    edi,DWORD PTR [r12+r15*1+0x4c]
    22bdd7cebbc9:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    22bdd7cebbcf:	33 db                                           	xor    ebx,ebx
    22bdd7cebbd1:	3b c7                                           	cmp    eax,edi
    22bdd7cebbd3:	0f 9c c3                                        	setl   bl
    22bdd7cebbd6:	41 8b cb                                        	mov    ecx,r11d
    22bdd7cebbd9:	0b cb                                           	or     ecx,ebx
    22bdd7cebbdb:	83 f1 ff                                        	xor    ecx,0xffffffff
    22bdd7cebbde:	43 8b 74 3c 54                                  	mov    esi,DWORD PTR [r12+r15*1+0x54]
    22bdd7cebbe3:	03 f7                                           	add    esi,edi
    22bdd7cebbe5:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cebbe8:	3b c6                                           	cmp    eax,esi
    22bdd7cebbea:	41 0f 9c c1                                     	setl   r9b
    22bdd7cebbee:	41 23 c9                                        	and    ecx,r9d
    22bdd7cebbf1:	f7 d9                                           	neg    ecx
    22bdd7cebbf3:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    22bdd7cebbf7:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    22bdd7cebbfc:	44 3b 85 58 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xa8]
    22bdd7cebc03:	41 0f 9e c0                                     	setle  r8b
    22bdd7cebc07:	45 0f b6 c0                                     	movzx  r8d,r8b
    22bdd7cebc0b:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7cebc11:	3b ca                                           	cmp    ecx,edx
    22bdd7cebc13:	0f 9c c2                                        	setl   dl
    22bdd7cebc16:	0f b6 d2                                        	movzx  edx,dl
    22bdd7cebc19:	41 0b d0                                        	or     edx,r8d
    22bdd7cebc1c:	0b da                                           	or     ebx,edx
    22bdd7cebc1e:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7cebc21:	44 23 cb                                        	and    r9d,ebx
    22bdd7cebc24:	41 f7 d9                                        	neg    r9d
    22bdd7cebc27:	c4 43 21 22 d9 01                               	vpinsrd xmm11,xmm11,r9d,0x1
    22bdd7cebc2d:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    22bdd7cebc34:	33 db                                           	xor    ebx,ebx
    22bdd7cebc36:	44 3b c6                                        	cmp    r8d,esi
    22bdd7cebc39:	0f 9c c3                                        	setl   bl
    22bdd7cebc3c:	44 3b c7                                        	cmp    r8d,edi
    22bdd7cebc3f:	40 0f 9c c7                                     	setl   dil
    22bdd7cebc43:	40 0f b6 ff                                     	movzx  edi,dil
    22bdd7cebc47:	44 0b df                                        	or     r11d,edi
    22bdd7cebc4a:	41 83 f3 ff                                     	xor    r11d,0xffffffff
    22bdd7cebc4e:	44 23 db                                        	and    r11d,ebx
    22bdd7cebc51:	41 f7 db                                        	neg    r11d
    22bdd7cebc54:	c4 43 21 22 db 02                               	vpinsrd xmm11,xmm11,r11d,0x2
    22bdd7cebc5a:	0b fa                                           	or     edi,edx
    22bdd7cebc5c:	83 f7 ff                                        	xor    edi,0xffffffff
    22bdd7cebc5f:	23 df                                           	and    ebx,edi
    22bdd7cebc61:	f7 db                                           	neg    ebx
    22bdd7cebc63:	c4 63 21 22 db 03                               	vpinsrd xmm11,xmm11,ebx,0x3
    22bdd7cebc69:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    22bdd7cebc6d:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    22bdd7cebc71:	85 d2                                           	test   edx,edx
    22bdd7cebc73:	0f 85 4e 00 00 00                               	jne    0x22bdd7cebcc7
    22bdd7cebc79:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7cebc7e:	49 8b f4                                        	mov    rsi,r12
    22bdd7cebc81:	4d 8b df                                        	mov    r11,r15
    22bdd7cebc84:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7cebc89:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7cebc8f:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7cebc95:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    22bdd7cebc9c:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    22bdd7cebca3:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7cebcaa:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7cebcb2:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cebcba:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cebcc2:	e9 b1 0a 00 00                                  	jmp    0x22bdd7cec778
    22bdd7cebcc7:	83 bd 00 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x100],0x0
    22bdd7cebcce:	0f 84 c6 01 00 00                               	je     0x22bdd7cebe9a
    22bdd7cebcd4:	83 bd 38 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xc8],0x0
    22bdd7cebcdb:	0f 85 00 01 00 00                               	jne    0x22bdd7cebde1
    22bdd7cebce1:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cebce6:	43 8b 7c 3c 0c                                  	mov    edi,DWORD PTR [r12+r15*1+0xc]
    22bdd7cebceb:	44 8b 9d 20 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xe0]
    22bdd7cebcf2:	42 8d 1c 9f                                     	lea    ebx,[rdi+r11*4]
    22bdd7cebcf6:	c4 c1 7b 10 0c 1c                               	vmovsd xmm1,QWORD PTR [r12+rbx*1]
    22bdd7cebcfc:	44 3b 85 28 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xd8]
    22bdd7cebd03:	0f 8c 10 00 00 00                               	jl     0x22bdd7cebd19
    22bdd7cebd09:	c4 c1 79 28 d3                                  	vmovapd xmm2,xmm11
    22bdd7cebd0e:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    22bdd7cebd14:	e9 0f 00 00 00                                  	jmp    0x22bdd7cebd28
    22bdd7cebd19:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    22bdd7cebd1f:	8d 3c 9f                                        	lea    edi,[rdi+rbx*4]
    22bdd7cebd22:	c4 c1 7b 10 14 3c                               	vmovsd xmm2,QWORD PTR [r12+rdi*1]
    22bdd7cebd28:	c5 f1 6c ca                                     	vpunpcklqdq xmm1,xmm1,xmm2
    22bdd7cebd2c:	43 8b 7c 3c 6c                                  	mov    edi,DWORD PTR [r12+r15*1+0x6c]
    22bdd7cebd31:	81 ef 00 02 00 00                               	sub    edi,0x200
    22bdd7cebd37:	83 ff 07                                        	cmp    edi,0x7
    22bdd7cebd3a:	0f 83 0b 00 00 00                               	jae    0x22bdd7cebd4b
    22bdd7cebd40:	4c 8d 15 d1 0e 00 00                            	lea    r10,[rip+0xed1]        # 0x22bdd7cecc18
    22bdd7cebd47:	41 ff 24 fa                                     	jmp    QWORD PTR [r10+rdi*8]
    22bdd7cebd4b:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    22bdd7cebd50:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    22bdd7cebd58:	e9 74 00 00 00                                  	jmp    0x22bdd7cebdd1
    22bdd7cebd5d:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    22bdd7cebd65:	c5 70 c2 da 02                                  	vcmpleps xmm11,xmm1,xmm2
    22bdd7cebd6a:	e9 62 00 00 00                                  	jmp    0x22bdd7cebdd1
    22bdd7cebd6f:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    22bdd7cebd77:	c5 68 c2 d9 04                                  	vcmpneqps xmm11,xmm2,xmm1
    22bdd7cebd7c:	e9 50 00 00 00                                  	jmp    0x22bdd7cebdd1
    22bdd7cebd81:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    22bdd7cebd89:	c5 70 c2 da 01                                  	vcmpltps xmm11,xmm1,xmm2
    22bdd7cebd8e:	e9 3e 00 00 00                                  	jmp    0x22bdd7cebdd1
    22bdd7cebd93:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    22bdd7cebd9b:	c5 68 c2 d9 02                                  	vcmpleps xmm11,xmm2,xmm1
    22bdd7cebda0:	e9 2c 00 00 00                                  	jmp    0x22bdd7cebdd1
    22bdd7cebda5:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    22bdd7cebdad:	c5 68 c2 d9 00                                  	vcmpeqps xmm11,xmm2,xmm1
    22bdd7cebdb2:	e9 1a 00 00 00                                  	jmp    0x22bdd7cebdd1
    22bdd7cebdb7:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    22bdd7cebdbf:	c5 68 c2 d9 01                                  	vcmpltps xmm11,xmm2,xmm1
    22bdd7cebdc4:	e9 08 00 00 00                                  	jmp    0x22bdd7cebdd1
    22bdd7cebdc9:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    22bdd7cebdd1:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    22bdd7cebdd5:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    22bdd7cebdd9:	85 d2                                           	test   edx,edx
    22bdd7cebddb:	0f 84 98 fe ff ff                               	je     0x22bdd7cebc79
    22bdd7cebde1:	43 8b 7c 3c 70                                  	mov    edi,DWORD PTR [r12+r15*1+0x70]
    22bdd7cebde6:	43 83 7c 3c 70 00                               	cmp    DWORD PTR [r12+r15*1+0x70],0x0
    22bdd7cebdec:	0f 84 a8 00 00 00                               	je     0x22bdd7cebe9a
    22bdd7cebdf2:	f6 c2 01                                        	test   dl,0x1
    22bdd7cebdf5:	0f 85 13 00 00 00                               	jne    0x22bdd7cebe0e
    22bdd7cebdfb:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    22bdd7cebe03:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    22bdd7cebe09:	e9 21 00 00 00                                  	jmp    0x22bdd7cebe2f
    22bdd7cebe0e:	47 8b 5c 3c 0c                                  	mov    r11d,DWORD PTR [r12+r15*1+0xc]
    22bdd7cebe13:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    22bdd7cebe19:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    22bdd7cebe1d:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    22bdd7cebe25:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    22bdd7cebe29:	c4 01 7a 11 1c 1c                               	vmovss DWORD PTR [r12+r11*1],xmm11
    22bdd7cebe2f:	f6 c2 02                                        	test   dl,0x2
    22bdd7cebe32:	0f 84 14 00 00 00                               	je     0x22bdd7cebe4c
    22bdd7cebe38:	47 8b 5c 3c 0c                                  	mov    r11d,DWORD PTR [r12+r15*1+0xc]
    22bdd7cebe3d:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    22bdd7cebe41:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    22bdd7cebe45:	c4 01 7a 11 5c 1c 04                            	vmovss DWORD PTR [r12+r11*1+0x4],xmm11
    22bdd7cebe4c:	f6 c2 04                                        	test   dl,0x4
    22bdd7cebe4f:	0f 85 0c 00 00 00                               	jne    0x22bdd7cebe61
    22bdd7cebe55:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    22bdd7cebe5c:	e9 1b 00 00 00                                  	jmp    0x22bdd7cebe7c
    22bdd7cebe61:	43 8b 5c 3c 0c                                  	mov    ebx,DWORD PTR [r12+r15*1+0xc]
    22bdd7cebe66:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    22bdd7cebe6d:	42 8d 1c 9b                                     	lea    ebx,[rbx+r11*4]
    22bdd7cebe71:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    22bdd7cebe76:	c4 41 7a 11 1c 1c                               	vmovss DWORD PTR [r12+rbx*1],xmm11
    22bdd7cebe7c:	f6 c2 08                                        	test   dl,0x8
    22bdd7cebe7f:	0f 84 15 00 00 00                               	je     0x22bdd7cebe9a
    22bdd7cebe85:	43 8b 5c 3c 0c                                  	mov    ebx,DWORD PTR [r12+r15*1+0xc]
    22bdd7cebe8a:	42 8d 1c 9b                                     	lea    ebx,[rbx+r11*4]
    22bdd7cebe8e:	c5 79 70 d8 03                                  	vpshufd xmm11,xmm0,0x3
    22bdd7cebe93:	c4 41 7a 11 5c 1c 04                            	vmovss DWORD PTR [r12+rbx*1+0x4],xmm11
    22bdd7cebe9a:	43 8b 7c 3c 74                                  	mov    edi,DWORD PTR [r12+r15*1+0x74]
    22bdd7cebe9f:	43 83 7c 3c 74 00                               	cmp    DWORD PTR [r12+r15*1+0x74],0x0
    22bdd7cebea5:	0f 85 14 00 00 00                               	jne    0x22bdd7cebebf
    22bdd7cebeab:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    22bdd7cebeb1:	c1 e7 02                                        	shl    edi,0x2
    22bdd7cebeb4:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    22bdd7cebeba:	e9 dd 02 00 00                                  	jmp    0x22bdd7cec19c
    22bdd7cebebf:	43 8b 7c 3c 78                                  	mov    edi,DWORD PTR [r12+r15*1+0x78]
    22bdd7cebec4:	44 8d 9f fe fc ff ff                            	lea    r11d,[rdi-0x302]
    22bdd7cebecb:	33 db                                           	xor    ebx,ebx
    22bdd7cebecd:	41 83 fb 04                                     	cmp    r11d,0x4
    22bdd7cebed1:	0f 93 c3                                        	setae  bl
    22bdd7cebed4:	33 f6                                           	xor    esi,esi
    22bdd7cebed6:	83 ff 01                                        	cmp    edi,0x1
    22bdd7cebed9:	40 0f 97 c6                                     	seta   sil
    22bdd7cebedd:	85 f3                                           	test   ebx,esi
    22bdd7cebedf:	0f 85 dc 05 00 00                               	jne    0x22bdd7cec4c1
    22bdd7cebee5:	43 8b 5c 3c 7c                                  	mov    ebx,DWORD PTR [r12+r15*1+0x7c]
    22bdd7cebeea:	8d b3 fe fc ff ff                               	lea    esi,[rbx-0x302]
    22bdd7cebef0:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cebef3:	83 fe 04                                        	cmp    esi,0x4
    22bdd7cebef6:	41 0f 93 c1                                     	setae  r9b
    22bdd7cebefa:	33 c0                                           	xor    eax,eax
    22bdd7cebefc:	83 fb 01                                        	cmp    ebx,0x1
    22bdd7cebeff:	0f 97 c0                                        	seta   al
    22bdd7cebf02:	41 85 c1                                        	test   r9d,eax
    22bdd7cebf05:	0f 85 b0 05 00 00                               	jne    0x22bdd7cec4bb
    22bdd7cebf0b:	8b 85 20 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe0]
    22bdd7cebf11:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    22bdd7cebf18:	47 8b 4c 3c 08                                  	mov    r9d,DWORD PTR [r12+r15*1+0x8]
    22bdd7cebf1d:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    22bdd7cebf21:	c4 c1 7b 10 04 04                               	vmovsd xmm0,QWORD PTR [r12+rax*1]
    22bdd7cebf27:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    22bdd7cebf2d:	41 3b c0                                        	cmp    eax,r8d
    22bdd7cebf30:	0f 8e 22 00 00 00                               	jle    0x22bdd7cebf58
    22bdd7cebf36:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
    22bdd7cebf3d:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cebf43:	45 8d 0c 91                                     	lea    r9d,[r9+rdx*4]
    22bdd7cebf47:	c4 01 7b 10 1c 0c                               	vmovsd xmm11,QWORD PTR [r12+r9*1]
    22bdd7cebf4d:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    22bdd7cebf53:	e9 05 00 00 00                                  	jmp    0x22bdd7cebf5d
    22bdd7cebf58:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cebf5d:	c4 c1 79 6c c3                                  	vpunpcklqdq xmm0,xmm0,xmm11
    22bdd7cebf62:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    22bdd7cebf6c:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    22bdd7cebf71:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    22bdd7cebf7b:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    22bdd7cebf81:	c4 42 79 00 db                                  	vpshufb xmm11,xmm0,xmm11
    22bdd7cebf86:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    22bdd7cebf8b:	4c 8b 15 b1 c2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc2b1]        # 0x22bdd7ce8243
    22bdd7cebf92:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cebf97:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cebf9b:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    22bdd7cebf9f:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    22bdd7cebfa9:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7cebfae:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    22bdd7cebfb8:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    22bdd7cebfbe:	c4 e2 79 00 d2                                  	vpshufb xmm2,xmm0,xmm2
    22bdd7cebfc3:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7cebfc7:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    22bdd7cebfd1:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cebfd6:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    22bdd7cebfe0:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    22bdd7cebfe6:	c4 e2 79 00 ed                                  	vpshufb xmm5,xmm0,xmm5
    22bdd7cebfeb:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    22bdd7cebfef:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    22bdd7cebff9:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cebffe:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    22bdd7cec008:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    22bdd7cec00e:	c4 c2 79 00 c1                                  	vpshufb xmm0,xmm0,xmm9
    22bdd7cec013:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7cec017:	41 83 fb 02                                     	cmp    r11d,0x2
    22bdd7cec01b:	0f 8c 15 00 00 00                               	jl     0x22bdd7cec036
    22bdd7cec021:	0f 84 6b 00 00 00                               	je     0x22bdd7cec092
    22bdd7cec027:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7cec02b:	0f 84 46 00 00 00                               	je     0x22bdd7cec077
    22bdd7cec031:	e9 19 00 00 00                                  	jmp    0x22bdd7cec04f
    22bdd7cec036:	41 83 fb 00                                     	cmp    r11d,0x0
    22bdd7cec03a:	0f 84 77 00 00 00                               	je     0x22bdd7cec0b7
    22bdd7cec040:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7cec044:	0f 84 52 00 00 00                               	je     0x22bdd7cec09c
    22bdd7cec04a:	e9 00 00 00 00                                  	jmp    0x22bdd7cec04f
    22bdd7cec04f:	85 ff                                           	test   edi,edi
    22bdd7cec051:	0f 85 0a 00 00 00                               	jne    0x22bdd7cec061
    22bdd7cec057:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7cec05c:	e9 5b 00 00 00                                  	jmp    0x22bdd7cec0bc
    22bdd7cec061:	4c 8b 15 e5 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ae5]        # 0x22bdd7ce4b4d
    22bdd7cec068:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cec06d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cec072:	e9 45 00 00 00                                  	jmp    0x22bdd7cec0bc
    22bdd7cec077:	4c 8b 15 cf 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8acf]        # 0x22bdd7ce4b4d
    22bdd7cec07e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cec083:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cec088:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    22bdd7cec08d:	e9 2a 00 00 00                                  	jmp    0x22bdd7cec0bc
    22bdd7cec092:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    22bdd7cec097:	e9 20 00 00 00                                  	jmp    0x22bdd7cec0bc
    22bdd7cec09c:	4c 8b 15 aa 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8aaa]        # 0x22bdd7ce4b4d
    22bdd7cec0a3:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cec0a8:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cec0ad:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    22bdd7cec0b2:	e9 05 00 00 00                                  	jmp    0x22bdd7cec0bc
    22bdd7cec0b7:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    22bdd7cec0bc:	c5 e8 59 d1                                     	vmulps xmm2,xmm2,xmm1
    22bdd7cec0c0:	c5 d0 59 e9                                     	vmulps xmm5,xmm5,xmm1
    22bdd7cec0c4:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    22bdd7cec0c8:	83 fe 02                                        	cmp    esi,0x2
    22bdd7cec0cb:	0f 8c 14 00 00 00                               	jl     0x22bdd7cec0e5
    22bdd7cec0d1:	0f 84 5e 00 00 00                               	je     0x22bdd7cec135
    22bdd7cec0d7:	83 fe 03                                        	cmp    esi,0x3
    22bdd7cec0da:	0f 84 3a 00 00 00                               	je     0x22bdd7cec11a
    22bdd7cec0e0:	e9 17 00 00 00                                  	jmp    0x22bdd7cec0fc
    22bdd7cec0e5:	83 fe 00                                        	cmp    esi,0x0
    22bdd7cec0e8:	0f 84 6c 00 00 00                               	je     0x22bdd7cec15a
    22bdd7cec0ee:	83 fe 01                                        	cmp    esi,0x1
    22bdd7cec0f1:	0f 84 48 00 00 00                               	je     0x22bdd7cec13f
    22bdd7cec0f7:	e9 00 00 00 00                                  	jmp    0x22bdd7cec0fc
    22bdd7cec0fc:	85 db                                           	test   ebx,ebx
    22bdd7cec0fe:	0f 84 5b 00 00 00                               	je     0x22bdd7cec15f
    22bdd7cec104:	4c 8b 15 42 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a42]        # 0x22bdd7ce4b4d
    22bdd7cec10b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cec110:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cec115:	e9 45 00 00 00                                  	jmp    0x22bdd7cec15f
    22bdd7cec11a:	4c 8b 15 2c 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a2c]        # 0x22bdd7ce4b4d
    22bdd7cec121:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cec126:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cec12b:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    22bdd7cec130:	e9 2a 00 00 00                                  	jmp    0x22bdd7cec15f
    22bdd7cec135:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    22bdd7cec13a:	e9 20 00 00 00                                  	jmp    0x22bdd7cec15f
    22bdd7cec13f:	4c 8b 15 07 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a07]        # 0x22bdd7ce4b4d
    22bdd7cec146:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cec14b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cec150:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    22bdd7cec155:	e9 05 00 00 00                                  	jmp    0x22bdd7cec15f
    22bdd7cec15a:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    22bdd7cec15f:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    22bdd7cec164:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    22bdd7cec169:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    22bdd7cec16e:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    22bdd7cec173:	c4 41 68 59 da                                  	vmulps xmm11,xmm2,xmm10
    22bdd7cec178:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    22bdd7cec17d:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    22bdd7cec182:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    22bdd7cec187:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    22bdd7cec18c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    22bdd7cec191:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    22bdd7cec196:	c5 38 58 c0                                     	vaddps xmm8,xmm8,xmm0
    22bdd7cec19a:	8b f9                                           	mov    edi,ecx
    22bdd7cec19c:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cec1a0:	4c 8b 15 a6 89 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff89a6]        # 0x22bdd7ce4b4d
    22bdd7cec1a7:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cec1ac:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cec1b1:	4c 8b 15 95 89 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8995]        # 0x22bdd7ce4b4d
    22bdd7cec1b8:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cec1bd:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cec1c2:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    22bdd7cec1c8:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    22bdd7cec1cd:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    22bdd7cec1d2:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    22bdd7cec1d7:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cec1dc:	c4 c1 38 c2 cb 01                               	vcmpltps xmm1,xmm8,xmm11
    22bdd7cec1e2:	c4 41 70 55 c0                                  	vandnps xmm8,xmm1,xmm8
    22bdd7cec1e7:	4c 8b 15 ae e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe0ae]        # 0x22bdd7cea29c
    22bdd7cec1ee:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cec1f3:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cec1f7:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    22bdd7cec1fb:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    22bdd7cec201:	4c 8b 15 21 71 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7121]        # 0x22bdd7ce3329
    22bdd7cec208:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7cec20e:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    22bdd7cec213:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7cec219:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    22bdd7cec21e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    22bdd7cec223:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    22bdd7cec228:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    22bdd7cec22d:	c4 63 39 0e c0 fc                               	vpblendw xmm8,xmm8,xmm0,0xfc
    22bdd7cec233:	c5 a8 c2 d7 01                                  	vcmpltps xmm2,xmm10,xmm7
    22bdd7cec238:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    22bdd7cec23c:	c5 b1 db fa                                     	vpand  xmm7,xmm9,xmm2
    22bdd7cec240:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cec245:	c4 c1 40 c2 d3 01                               	vcmpltps xmm2,xmm7,xmm11
    22bdd7cec24b:	c5 e8 55 ff                                     	vandnps xmm7,xmm2,xmm7
    22bdd7cec24f:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    22bdd7cec253:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    22bdd7cec259:	4c 8b 15 c9 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff70c9]        # 0x22bdd7ce3329
    22bdd7cec260:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    22bdd7cec265:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    22bdd7cec26a:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    22bdd7cec270:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    22bdd7cec274:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    22bdd7cec279:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    22bdd7cec27d:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    22bdd7cec281:	c4 e3 41 0e f8 fc                               	vpblendw xmm7,xmm7,xmm0,0xfc
    22bdd7cec287:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    22bdd7cec28b:	c5 28 c2 c6 01                                  	vcmpltps xmm8,xmm10,xmm6
    22bdd7cec290:	c5 39 df fe                                     	vpandn xmm15,xmm8,xmm6
    22bdd7cec294:	c4 c1 31 db f0                                  	vpand  xmm6,xmm9,xmm8
    22bdd7cec299:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cec29e:	c4 41 48 c2 c3 01                               	vcmpltps xmm8,xmm6,xmm11
    22bdd7cec2a4:	c5 b8 55 f6                                     	vandnps xmm6,xmm8,xmm6
    22bdd7cec2a8:	c5 c8 59 f1                                     	vmulps xmm6,xmm6,xmm1
    22bdd7cec2ac:	c4 e3 79 08 f6 08                               	vroundps xmm6,xmm6,0x8
    22bdd7cec2b2:	4c 8b 15 70 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7070]        # 0x22bdd7ce3329
    22bdd7cec2b9:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    22bdd7cec2be:	c4 c1 48 54 f7                                  	vandps xmm6,xmm6,xmm15
    22bdd7cec2c3:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    22bdd7cec2c9:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    22bdd7cec2cd:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    22bdd7cec2d2:	c5 c9 6b f6                                     	vpackssdw xmm6,xmm6,xmm6
    22bdd7cec2d6:	c5 c9 67 f6                                     	vpackuswb xmm6,xmm6,xmm6
    22bdd7cec2da:	c4 e3 49 0e f0 fc                               	vpblendw xmm6,xmm6,xmm0,0xfc
    22bdd7cec2e0:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    22bdd7cec2e6:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    22bdd7cec2eb:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    22bdd7cec2f0:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    22bdd7cec2f5:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    22bdd7cec2fb:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    22bdd7cec300:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    22bdd7cec304:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    22bdd7cec30a:	4c 8b 15 18 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7018]        # 0x22bdd7ce3329
    22bdd7cec311:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7cec317:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    22bdd7cec31c:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7cec322:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    22bdd7cec327:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    22bdd7cec32c:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    22bdd7cec331:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    22bdd7cec336:	c4 63 39 0e c0 fc                               	vpblendw xmm8,xmm8,xmm0,0xfc
    22bdd7cec33c:	c4 c1 49 60 f0                                  	vpunpcklbw xmm6,xmm6,xmm8
    22bdd7cec341:	c5 c1 61 f6                                     	vpunpcklwd xmm6,xmm7,xmm6
    22bdd7cec345:	c4 81 7a 6f bc 3c 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+r15*1+0x520]
    22bdd7cec34f:	c5 c1 76 f8                                     	vpcmpeqd xmm7,xmm7,xmm0
    22bdd7cec353:	c4 c3 79 16 fb 01                               	vpextrd r11d,xmm7,0x1
    22bdd7cec359:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    22bdd7cec35e:	33 f6                                           	xor    esi,esi
    22bdd7cec360:	41 f6 c3 01                                     	test   r11b,0x1
    22bdd7cec364:	0f 45 de                                        	cmovne ebx,esi
    22bdd7cec367:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    22bdd7cec36c:	b9 ff 00 00 00                                  	mov    ecx,0xff
    22bdd7cec371:	41 f6 c3 01                                     	test   r11b,0x1
    22bdd7cec375:	0f 45 ce                                        	cmovne ecx,esi
    22bdd7cec378:	0b cb                                           	or     ecx,ebx
    22bdd7cec37a:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    22bdd7cec380:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    22bdd7cec385:	41 f6 c3 01                                     	test   r11b,0x1
    22bdd7cec389:	0f 45 de                                        	cmovne ebx,esi
    22bdd7cec38c:	0b d9                                           	or     ebx,ecx
    22bdd7cec38e:	c4 c3 79 16 fb 03                               	vpextrd r11d,xmm7,0x3
    22bdd7cec394:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    22bdd7cec399:	41 f6 c3 01                                     	test   r11b,0x1
    22bdd7cec39d:	0f 45 ce                                        	cmovne ecx,esi
    22bdd7cec3a0:	0b cb                                           	or     ecx,ebx
    22bdd7cec3a2:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    22bdd7cec3a6:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cec3ab:	44 8b da                                        	mov    r11d,edx
    22bdd7cec3ae:	41 83 e3 01                                     	and    r11d,0x1
    22bdd7cec3b2:	41 f7 db                                        	neg    r11d
    22bdd7cec3b5:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    22bdd7cec3ba:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7cec3bf:	44 8b da                                        	mov    r11d,edx
    22bdd7cec3c2:	41 c1 e3 1e                                     	shl    r11d,0x1e
    22bdd7cec3c6:	41 c1 fb 1f                                     	sar    r11d,0x1f
    22bdd7cec3ca:	c4 43 39 22 c3 01                               	vpinsrd xmm8,xmm8,r11d,0x1
    22bdd7cec3d0:	44 8b da                                        	mov    r11d,edx
    22bdd7cec3d3:	41 c1 e3 1d                                     	shl    r11d,0x1d
    22bdd7cec3d7:	41 c1 fb 1f                                     	sar    r11d,0x1f
    22bdd7cec3db:	c4 43 39 22 c3 02                               	vpinsrd xmm8,xmm8,r11d,0x2
    22bdd7cec3e1:	44 8b da                                        	mov    r11d,edx
    22bdd7cec3e4:	41 c1 e3 1c                                     	shl    r11d,0x1c
    22bdd7cec3e8:	41 c1 fb 1f                                     	sar    r11d,0x1f
    22bdd7cec3ec:	c4 43 39 22 c3 03                               	vpinsrd xmm8,xmm8,r11d,0x3
    22bdd7cec3f2:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    22bdd7cec3f7:	47 8b 5c 3c 08                                  	mov    r11d,DWORD PTR [r12+r15*1+0x8]
    22bdd7cec3fc:	41 03 fb                                        	add    edi,r11d
    22bdd7cec3ff:	c4 41 7b 10 04 3c                               	vmovsd xmm8,QWORD PTR [r12+rdi*1]
    22bdd7cec405:	41 3b c0                                        	cmp    eax,r8d
    22bdd7cec408:	0f 8e 15 00 00 00                               	jle    0x22bdd7cec423
    22bdd7cec40e:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    22bdd7cec414:	45 8d 1c 9b                                     	lea    r11d,[r11+rbx*4]
    22bdd7cec418:	c4 81 7b 10 04 1c                               	vmovsd xmm0,QWORD PTR [r12+r11*1]
    22bdd7cec41e:	e9 06 00 00 00                                  	jmp    0x22bdd7cec429
    22bdd7cec423:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    22bdd7cec429:	c5 b9 6c c0                                     	vpunpcklqdq xmm0,xmm8,xmm0
    22bdd7cec42d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    22bdd7cec431:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    22bdd7cec435:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cec43a:	f6 c2 03                                        	test   dl,0x3
    22bdd7cec43d:	0f 84 06 00 00 00                               	je     0x22bdd7cec449
    22bdd7cec443:	c4 c1 78 13 04 3c                               	vmovlps QWORD PTR [r12+rdi*1],xmm0
    22bdd7cec449:	41 3b c0                                        	cmp    eax,r8d
    22bdd7cec44c:	0f 8e 27 f8 ff ff                               	jle    0x22bdd7cebc79
    22bdd7cec452:	f6 c2 0c                                        	test   dl,0xc
    22bdd7cec455:	0f 84 1e f8 ff ff                               	je     0x22bdd7cebc79
    22bdd7cec45b:	43 8b 7c 3c 08                                  	mov    edi,DWORD PTR [r12+r15*1+0x8]
    22bdd7cec460:	8d 3c 9f                                        	lea    edi,[rdi+rbx*4]
    22bdd7cec463:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    22bdd7cec467:	c4 c1 78 13 04 3c                               	vmovlps QWORD PTR [r12+rdi*1],xmm0
    22bdd7cec46d:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7cec472:	49 8b f4                                        	mov    rsi,r12
    22bdd7cec475:	4d 8b df                                        	mov    r11,r15
    22bdd7cec478:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7cec47d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7cec483:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7cec489:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    22bdd7cec490:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    22bdd7cec497:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7cec49e:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7cec4a6:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cec4ae:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cec4b6:	e9 bd 02 00 00                                  	jmp    0x22bdd7cec778
    22bdd7cec4bb:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    22bdd7cec4c1:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    22bdd7cec4c9:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    22bdd7cec4d1:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    22bdd7cec4d9:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
    22bdd7cec4e0:	f6 c2 01                                        	test   dl,0x1
    22bdd7cec4e3:	0f 84 a0 00 00 00                               	je     0x22bdd7cec589
    22bdd7cec4e9:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    22bdd7cec4f1:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    22bdd7cec4f5:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    22bdd7cec4fa:	c5 78 28 d7                                     	vmovaps xmm10,xmm7
    22bdd7cec4fe:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    22bdd7cec502:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    22bdd7cec507:	8b f8                                           	mov    edi,eax
    22bdd7cec509:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cec50d:	8b c8                                           	mov    ecx,eax
    22bdd7cec50f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cec512:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    22bdd7cec515:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    22bdd7cec51a:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7cec51f:	e8 3c 9d f1 ff                                  	call   0x22bdd7c06260
    22bdd7cec524:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cec528:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    22bdd7cec52c:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    22bdd7cec532:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7cec538:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    22bdd7cec53f:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    22bdd7cec547:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    22bdd7cec54f:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    22bdd7cec557:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    22bdd7cec55f:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    22bdd7cec565:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cec569:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    22bdd7cec571:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    22bdd7cec579:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    22bdd7cec581:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cec589:	f6 c2 02                                        	test   dl,0x2
    22bdd7cec58c:	0f 84 9d 00 00 00                               	je     0x22bdd7cec62f
    22bdd7cec592:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    22bdd7cec59a:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    22bdd7cec59e:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    22bdd7cec5a3:	c5 7a 16 d7                                     	vmovshdup xmm10,xmm7
    22bdd7cec5a7:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    22bdd7cec5ab:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    22bdd7cec5b0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cec5b4:	8b d1                                           	mov    edx,ecx
    22bdd7cec5b6:	8b c8                                           	mov    ecx,eax
    22bdd7cec5b8:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cec5bb:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7cec5c0:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    22bdd7cec5c5:	e8 96 9c f1 ff                                  	call   0x22bdd7c06260
    22bdd7cec5ca:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cec5ce:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    22bdd7cec5d2:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    22bdd7cec5d8:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7cec5de:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    22bdd7cec5e5:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    22bdd7cec5ed:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    22bdd7cec5f5:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    22bdd7cec5fd:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    22bdd7cec605:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    22bdd7cec60b:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cec60f:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    22bdd7cec617:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    22bdd7cec61f:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    22bdd7cec627:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cec62f:	f6 c2 04                                        	test   dl,0x4
    22bdd7cec632:	0f 84 a4 00 00 00                               	je     0x22bdd7cec6dc
    22bdd7cec638:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    22bdd7cec640:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    22bdd7cec645:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    22bdd7cec64b:	c5 79 70 d7 02                                  	vpshufd xmm10,xmm7,0x2
    22bdd7cec650:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    22bdd7cec655:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    22bdd7cec65b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cec65f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cec662:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    22bdd7cec665:	41 8b c8                                        	mov    ecx,r8d
    22bdd7cec668:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7cec66d:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    22bdd7cec672:	e8 e9 9b f1 ff                                  	call   0x22bdd7c06260
    22bdd7cec677:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cec67b:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    22bdd7cec67f:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    22bdd7cec685:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    22bdd7cec68b:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    22bdd7cec692:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    22bdd7cec69a:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    22bdd7cec6a2:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    22bdd7cec6aa:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    22bdd7cec6b2:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    22bdd7cec6b8:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cec6bc:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    22bdd7cec6c4:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    22bdd7cec6cc:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    22bdd7cec6d4:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cec6dc:	f6 c2 08                                        	test   dl,0x8
    22bdd7cec6df:	0f 84 94 f5 ff ff                               	je     0x22bdd7cebc79
    22bdd7cec6e5:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    22bdd7cec6ed:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    22bdd7cec6f2:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    22bdd7cec6f8:	c5 f9 70 c7 03                                  	vpshufd xmm0,xmm7,0x3
    22bdd7cec6fd:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    22bdd7cec702:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    22bdd7cec708:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cec70c:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cec70f:	8b d1                                           	mov    edx,ecx
    22bdd7cec711:	41 8b c8                                        	mov    ecx,r8d
    22bdd7cec714:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    22bdd7cec718:	c5 f9 28 d8                                     	vmovapd xmm3,xmm0
    22bdd7cec71c:	e8 3f 9b f1 ff                                  	call   0x22bdd7c06260
    22bdd7cec721:	bb 01 00 00 00                                  	mov    ebx,0x1
    22bdd7cec726:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    22bdd7cec72a:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    22bdd7cec72e:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7cec733:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7cec739:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7cec73f:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cec743:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    22bdd7cec74a:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    22bdd7cec751:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    22bdd7cec758:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7cec760:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cec768:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cec770:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cec778:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    22bdd7cec77f:	48 c7 85 38 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xc8],0x1
    22bdd7cec78a:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7cec78e:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    22bdd7cec792:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    22bdd7cec799:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    22bdd7cec7a0:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    22bdd7cec7a8:	48 8b 85 68 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x98]
    22bdd7cec7af:	48 2b 85 60 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa0]
    22bdd7cec7b6:	4c 2b 8d 70 ff ff ff                            	sub    r9,QWORD PTR [rbp-0x90]
    22bdd7cec7bd:	4c 2b 5d 80                                     	sub    r11,QWORD PTR [rbp-0x80]
    22bdd7cec7c1:	41 83 c0 02                                     	add    r8d,0x2
    22bdd7cec7c5:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    22bdd7cec7c9:	0f 8c f1 7a ff ff                               	jl     0x22bdd7ce42c0
    22bdd7cec7cf:	48 8b 7d a0                                     	mov    rdi,QWORD PTR [rbp-0x60]
    22bdd7cec7d3:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    22bdd7cec7da:	4e 8d 1c 07                                     	lea    r11,[rdi+r8*1]
    22bdd7cec7de:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    22bdd7cec7e2:	4c 8b 4d a8                                     	mov    r9,QWORD PTR [rbp-0x58]
    22bdd7cec7e6:	4d 03 c8                                        	add    r9,r8
    22bdd7cec7e9:	4c 8b 65 b8                                     	mov    r12,QWORD PTR [rbp-0x48]
    22bdd7cec7ed:	4c 8b bd 40 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x3c0]
    22bdd7cec7f4:	4d 03 fc                                        	add    r15,r12
    22bdd7cec7f7:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    22bdd7cec7fd:	83 c0 02                                        	add    eax,0x2
    22bdd7cec800:	3b 45 c0                                        	cmp    eax,DWORD PTR [rbp-0x40]
    22bdd7cec803:	0f 8c f7 79 ff ff                               	jl     0x22bdd7ce4200
    22bdd7cec809:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cec80d:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    22bdd7cec811:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    22bdd7cec816:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    22bdd7cec81c:	0f 85 56 00 00 00                               	jne    0x22bdd7cec878
    22bdd7cec822:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    22bdd7cec828:	85 c0                                           	test   eax,eax
    22bdd7cec82a:	0f 85 1d 00 00 00                               	jne    0x22bdd7cec84d
    22bdd7cec830:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cec833:	81 c7 00 02 00 00                               	add    edi,0x200
    22bdd7cec839:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    22bdd7cec83d:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    22bdd7cec841:	b8 01 00 00 00                                  	mov    eax,0x1
    22bdd7cec846:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cec849:	5d                                              	pop    rbp
    22bdd7cec84a:	c2 10 00                                        	ret    0x10
    22bdd7cec84d:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    22bdd7cec853:	33 ff                                           	xor    edi,edi
    22bdd7cec855:	85 db                                           	test   ebx,ebx
    22bdd7cec857:	40 0f 94 c7                                     	sete   dil
    22bdd7cec85b:	8d 04 3f                                        	lea    eax,[rdi+rdi*1]
    22bdd7cec85e:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    22bdd7cec862:	41 81 c0 00 02 00 00                            	add    r8d,0x200
    22bdd7cec869:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    22bdd7cec86d:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
    22bdd7cec871:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cec874:	5d                                              	pop    rbp
    22bdd7cec875:	c2 10 00                                        	ret    0x10
    22bdd7cec878:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cec87b:	81 c7 00 02 00 00                               	add    edi,0x200
    22bdd7cec881:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    22bdd7cec885:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    22bdd7cec889:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    22bdd7cec88e:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cec891:	5d                                              	pop    rbp
    22bdd7cec892:	c2 10 00                                        	ret    0x10
    22bdd7cec895:	8b f8                                           	mov    edi,eax
    22bdd7cec897:	45 8b 64 38 58                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x58]
    22bdd7cec89c:	41 bc 01 00 00 00                               	mov    r12d,0x1
    22bdd7cec8a2:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    22bdd7cec8a7:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    22bdd7cec8ad:	44 0f 45 e0                                     	cmovne r12d,eax
    22bdd7cec8b1:	41 8d bf 00 02 00 00                            	lea    edi,[r15+0x200]
    22bdd7cec8b8:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    22bdd7cec8bc:	41 8b c4                                        	mov    eax,r12d
    22bdd7cec8bf:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cec8c2:	5d                                              	pop    rbp
    22bdd7cec8c3:	c2 10 00                                        	ret    0x10
    22bdd7cec8c6:	41 b8 10 00 00 00                               	mov    r8d,0x10
    22bdd7cec8cc:	41 d1 f8                                        	sar    r8d,1
    22bdd7cec8cf:	4d 63 c0                                        	movsxd r8,r8d
    22bdd7cec8d2:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    22bdd7cec8d6:	c5 f8 11 85 80 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x280],xmm0
    22bdd7cec8de:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    22bdd7cec8e5:	4c 89 4d c8                                     	mov    QWORD PTR [rbp-0x38],r9
    22bdd7cec8e9:	49 8b c0                                        	mov    rax,r8
    22bdd7cec8ec:	e8 3f c6 f1 ff                                  	call   0x22bdd7c08f30
    22bdd7cec8f1:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    22bdd7cec8f4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cec8f8:	c5 f8 10 85 80 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x280]
    22bdd7cec900:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    22bdd7cec906:	8b bd e8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x218]
    22bdd7cec90c:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    22bdd7cec912:	44 8b 4d c8                                     	mov    r9d,DWORD PTR [rbp-0x38]
    22bdd7cec916:	e9 d1 69 ff ff                                  	jmp    0x22bdd7ce32ec
    22bdd7cec91b:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    22bdd7cec922:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
    22bdd7cec929:	e8 12 c6 f1 ff                                  	call   0x22bdd7c08f40
    22bdd7cec92e:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    22bdd7cec935:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7cec93a:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7cec940:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7cec946:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cec94a:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7cec952:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    22bdd7cec95a:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cec962:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cec96a:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cec972:	48 8b 8d d8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x328]
    22bdd7cec979:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    22bdd7cec97f:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    22bdd7cec985:	e9 b0 78 ff ff                                  	jmp    0x22bdd7ce423a
    22bdd7cec98a:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    22bdd7cec98e:	4c 89 5d 88                                     	mov    QWORD PTR [rbp-0x78],r11
    22bdd7cec992:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    22bdd7cec999:	e8 a2 c5 f1 ff                                  	call   0x22bdd7c08f40
    22bdd7cec99e:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    22bdd7cec9a2:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    22bdd7cec9a6:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    22bdd7cec9ad:	48 8b 85 68 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x98]
    22bdd7cec9b4:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    22bdd7cec9b9:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    22bdd7cec9bf:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    22bdd7cec9c5:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7cec9c9:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    22bdd7cec9d0:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    22bdd7cec9d8:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    22bdd7cec9e0:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7cec9e8:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7cec9f0:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7cec9f8:	48 8b 95 d8 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x328]
    22bdd7cec9ff:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    22bdd7ceca05:	e9 d5 78 ff ff                                  	jmp    0x22bdd7ce42df
    22bdd7ceca0a:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    22bdd7ceca0e:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    22bdd7ceca16:	4c 89 85 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],r8
    22bdd7ceca1d:	e8 1e c5 f1 ff                                  	call   0x22bdd7c08f40
    22bdd7ceca22:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ceca26:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ceca2a:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    22bdd7ceca2e:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    22bdd7ceca35:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    22bdd7ceca38:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ceca3c:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ceca41:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ceca46:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    22bdd7ceca4a:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    22bdd7ceca51:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    22bdd7ceca58:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    22bdd7ceca5f:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    22bdd7ceca67:	44 8b 85 80 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x180]
    22bdd7ceca6e:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    22bdd7ceca76:	c5 fb 10 85 58 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x3a8]
    22bdd7ceca7e:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    22bdd7ceca86:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    22bdd7ceca8e:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    22bdd7ceca96:	e9 70 a6 ff ff                                  	jmp    0x22bdd7ce710b
    22bdd7ceca9b:	e8 a0 c4 f1 ff                                  	call   0x22bdd7c08f40
    22bdd7cecaa0:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cecaa4:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cecaa8:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7cecaaf:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    22bdd7cecab7:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7cecaba:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    22bdd7cecac2:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    22bdd7cecaca:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    22bdd7cecad2:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    22bdd7cecada:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    22bdd7cecae2:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    22bdd7cecaea:	c5 f8 10 9d 10 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1f0]
    22bdd7cecaf2:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    22bdd7cecaf8:	8b 95 00 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x400]
    22bdd7cecafe:	8b 9d 08 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3f8]
    22bdd7cecb04:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    22bdd7cecb0b:	e9 07 ad ff ff                                  	jmp    0x22bdd7ce7817
    22bdd7cecb10:	e8 2b c4 f1 ff                                  	call   0x22bdd7c08f40
    22bdd7cecb15:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cecb18:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cecb1c:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    22bdd7cecb22:	44 8b 85 00 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x100]
    22bdd7cecb29:	e9 f1 bc ff ff                                  	jmp    0x22bdd7ce881f
    22bdd7cecb2e:	e8 0d c4 f1 ff                                  	call   0x22bdd7c08f40
    22bdd7cecb33:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cecb37:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cecb3b:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    22bdd7cecb42:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    22bdd7cecb49:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    22bdd7cecb4f:	e9 94 d1 ff ff                                  	jmp    0x22bdd7ce9ce8
    22bdd7cecb54:	c5 f8 11 85 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm0
    22bdd7cecb5c:	c5 78 11 9d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm11
    22bdd7cecb64:	c5 f8 11 ad 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm5
    22bdd7cecb6c:	c5 f8 11 8d 30 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1d0],xmm1
    22bdd7cecb74:	48 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdi
    22bdd7cecb7b:	4c 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r15
    22bdd7cecb82:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    22bdd7cecb89:	e8 b2 c3 f1 ff                                  	call   0x22bdd7c08f40
    22bdd7cecb8e:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    22bdd7cecb91:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cecb95:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    22bdd7cecb9d:	c5 78 10 9d b0 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x150]
    22bdd7cecba5:	c5 f8 10 ad 90 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x170]
    22bdd7cecbad:	c5 f8 10 8d 30 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x1d0]
    22bdd7cecbb5:	44 8b 85 a8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x158]
    22bdd7cecbbc:	8b bd f0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x210]
    22bdd7cecbc2:	44 8b bd d8 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x228]
    22bdd7cecbc9:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    22bdd7cecbd0:	44 8b 8d b8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x248]
    22bdd7cecbd7:	c5 78 10 ad 90 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x270]
    22bdd7cecbdf:	e9 7b e6 ff ff                                  	jmp    0x22bdd7ceb25f
    22bdd7cecbe4:	33 d2                                           	xor    edx,edx
    22bdd7cecbe6:	e9 e0 e6 ff ff                                  	jmp    0x22bdd7ceb2cb
    22bdd7cecbeb:	33 d2                                           	xor    edx,edx
    22bdd7cecbed:	8b c8                                           	mov    ecx,eax
    22bdd7cecbef:	e9 f7 e6 ff ff                                  	jmp    0x22bdd7ceb2eb
    22bdd7cecbf4:	8b f0                                           	mov    esi,eax
    22bdd7cecbf6:	33 d2                                           	xor    edx,edx
    22bdd7cecbf8:	e9 2a e7 ff ff                                  	jmp    0x22bdd7ceb327
    22bdd7cecbfd:	33 d2                                           	xor    edx,edx
    22bdd7cecbff:	8b d8                                           	mov    ebx,eax
    22bdd7cecc01:	e9 41 e7 ff ff                                  	jmp    0x22bdd7ceb347
    22bdd7cecc06:	e8 45 c0 f1 ff                                  	call   0x22bdd7c08c50
    22bdd7cecc0b:	e8 40 c0 f1 ff                                  	call   0x22bdd7c08c50
    22bdd7cecc10:	90                                              	nop
    22bdd7cecc11:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    22bdd7cecc18:	c9                                              	leave
    22bdd7cecc19:	bd ce d7 bd 22                                  	mov    ebp,0x22bdd7ce
    22bdd7cecc1e:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cecc20:	b7 bd                                           	mov    bh,0xbd
    22bdd7cecc22:	ce                                              	(bad)
    22bdd7cecc23:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecc24:	bd 22 00 00 a5                                  	mov    ebp,0xa5000022
    22bdd7cecc29:	bd ce d7 bd 22                                  	mov    ebp,0x22bdd7ce
    22bdd7cecc2e:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cecc30:	93                                              	xchg   ebx,eax
    22bdd7cecc31:	bd ce d7 bd 22                                  	mov    ebp,0x22bdd7ce
    22bdd7cecc36:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cecc38:	81 bd ce d7 bd 22 00 00 6f bd                   	cmp    DWORD PTR [rbp+0x22bdd7ce],0xbd6f0000
    22bdd7cecc42:	ce                                              	(bad)
    22bdd7cecc43:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecc44:	bd 22 00 00 5d                                  	mov    ebp,0x5d000022
    22bdd7cecc49:	bd ce d7 bd 22                                  	mov    ebp,0x22bdd7ce
    22bdd7cecc4e:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cecc50:	1c bb                                           	sbb    al,0xbb
    22bdd7cecc52:	ce                                              	(bad)
    22bdd7cecc53:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecc54:	bd 22 00 00 17                                  	mov    ebp,0x17000022
    22bdd7cecc59:	bb ce d7 bd 22                                  	mov    ebx,0x22bdd7ce
    22bdd7cecc5e:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cecc60:	0d bb ce d7 bd                                  	or     eax,0xbdd7cebb
    22bdd7cecc65:	22 00                                           	and    al,BYTE PTR [rax]
    22bdd7cecc67:	00 03                                           	add    BYTE PTR [rbx],al
    22bdd7cecc69:	bb ce d7 bd 22                                  	mov    ebx,0x22bdd7ce
    22bdd7cecc6e:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cecc70:	f8                                              	clc
    22bdd7cecc71:	ba ce d7 bd 22                                  	mov    edx,0x22bdd7ce
    22bdd7cecc76:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cecc78:	ee                                              	out    dx,al
    22bdd7cecc79:	ba ce d7 bd 22                                  	mov    edx,0x22bdd7ce
    22bdd7cecc7e:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cecc80:	e3 ba                                           	jrcxz  0x22bdd7cecc3c
    22bdd7cecc82:	ce                                              	(bad)
    22bdd7cecc83:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecc84:	bd 22 00 00 90                                  	mov    ebp,0x90000022
    22bdd7cecc89:	ad                                              	lods   eax,DWORD PTR ds:[rsi]
    22bdd7cecc8a:	ce                                              	(bad)
    22bdd7cecc8b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecc8c:	bd 22 00 00 85                                  	mov    ebp,0x85000022
    22bdd7cecc91:	ad                                              	lods   eax,DWORD PTR ds:[rsi]
    22bdd7cecc92:	ce                                              	(bad)
    22bdd7cecc93:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecc94:	bd 22 00 00 7a                                  	mov    ebp,0x7a000022
    22bdd7cecc99:	ad                                              	lods   eax,DWORD PTR ds:[rsi]
    22bdd7cecc9a:	ce                                              	(bad)
    22bdd7cecc9b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecc9c:	bd 22 00 00 6f                                  	mov    ebp,0x6f000022
    22bdd7cecca1:	ad                                              	lods   eax,DWORD PTR ds:[rsi]
    22bdd7cecca2:	ce                                              	(bad)
    22bdd7cecca3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecca4:	bd 22 00 00 64                                  	mov    ebp,0x64000022
    22bdd7cecca9:	ad                                              	lods   eax,DWORD PTR ds:[rsi]
    22bdd7ceccaa:	ce                                              	(bad)
    22bdd7ceccab:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccac:	bd 22 00 00 59                                  	mov    ebp,0x59000022
    22bdd7ceccb1:	ad                                              	lods   eax,DWORD PTR ds:[rsi]
    22bdd7ceccb2:	ce                                              	(bad)
    22bdd7ceccb3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccb4:	bd 22 00 00 4e                                  	mov    ebp,0x4e000022
    22bdd7ceccb9:	ad                                              	lods   eax,DWORD PTR ds:[rsi]
    22bdd7ceccba:	ce                                              	(bad)
    22bdd7ceccbb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccbc:	bd 22 00 00 59                                  	mov    ebp,0x59000022
    22bdd7ceccc1:	74 ce                                           	je     0x22bdd7cecc91
    22bdd7ceccc3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccc4:	bd 22 00 00 fc                                  	mov    ebp,0xfc000022
    22bdd7ceccc9:	73 ce                                           	jae    0x22bdd7cecc99
    22bdd7cecccb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecccc:	bd 22 00 00 a4                                  	mov    ebp,0xa4000022
    22bdd7ceccd1:	73 ce                                           	jae    0x22bdd7cecca1
    22bdd7ceccd3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccd4:	bd 22 00 00 55                                  	mov    ebp,0x55000022
    22bdd7ceccd9:	73 ce                                           	jae    0x22bdd7cecca9
    22bdd7ceccdb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccdc:	bd 22 00 00 06                                  	mov    ebp,0x6000022
    22bdd7cecce1:	73 ce                                           	jae    0x22bdd7ceccb1
    22bdd7cecce3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecce4:	bd 22 00 00 a7                                  	mov    ebp,0xa7000022
    22bdd7cecce9:	72 ce                                           	jb     0x22bdd7ceccb9
    22bdd7cecceb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccec:	bd 22 00 00 58                                  	mov    ebp,0x58000022
    22bdd7ceccf1:	72 ce                                           	jb     0x22bdd7ceccc1
    22bdd7ceccf3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccf4:	bd 22 00 00 4d                                  	mov    ebp,0x4d000022
    22bdd7ceccf9:	72 ce                                           	jb     0x22bdd7ceccc9
    22bdd7ceccfb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7ceccfc:	bd 22 00 00 50                                  	mov    ebp,0x50000022
    22bdd7cecd01:	67 ce                                           	addr32 (bad)
    22bdd7cecd03:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd04:	bd 22 00 00 44                                  	mov    ebp,0x44000022
    22bdd7cecd09:	67 ce                                           	addr32 (bad)
    22bdd7cecd0b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd0c:	bd 22 00 00 35                                  	mov    ebp,0x35000022
    22bdd7cecd11:	67 ce                                           	addr32 (bad)
    22bdd7cecd13:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd14:	bd 22 00 00 29                                  	mov    ebp,0x29000022
    22bdd7cecd19:	67 ce                                           	addr32 (bad)
    22bdd7cecd1b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd1c:	bd 22 00 00 1c                                  	mov    ebp,0x1c000022
    22bdd7cecd21:	67 ce                                           	addr32 (bad)
    22bdd7cecd23:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd24:	bd 22 00 00 0a                                  	mov    ebp,0xa000022
    22bdd7cecd29:	67 ce                                           	addr32 (bad)
    22bdd7cecd2b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd2c:	bd 22 00 00 fd                                  	mov    ebp,0xfd000022
    22bdd7cecd31:	66 ce                                           	data16 (bad)
    22bdd7cecd33:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd34:	bd 22 00 00 7f                                  	mov    ebp,0x7f000022
    22bdd7cecd39:	67 ce                                           	addr32 (bad)
    22bdd7cecd3b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd3c:	bd 22 00 00 53                                  	mov    ebp,0x53000022
    22bdd7cecd41:	65 ce                                           	gs (bad)
    22bdd7cecd43:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd44:	bd 22 00 00 ab                                  	mov    ebp,0xab000022
    22bdd7cecd49:	5c                                              	pop    rsp
    22bdd7cecd4a:	ce                                              	(bad)
    22bdd7cecd4b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd4c:	bd 22 00 00 95                                  	mov    ebp,0x95000022
    22bdd7cecd51:	5c                                              	pop    rsp
    22bdd7cecd52:	ce                                              	(bad)
    22bdd7cecd53:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd54:	bd 22 00 00 86                                  	mov    ebp,0x86000022
    22bdd7cecd59:	5c                                              	pop    rsp
    22bdd7cecd5a:	ce                                              	(bad)
    22bdd7cecd5b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd5c:	bd 22 00 00 76                                  	mov    ebp,0x76000022
    22bdd7cecd61:	5c                                              	pop    rsp
    22bdd7cecd62:	ce                                              	(bad)
    22bdd7cecd63:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd64:	bd 22 00 00 60                                  	mov    ebp,0x60000022
    22bdd7cecd69:	5c                                              	pop    rsp
    22bdd7cecd6a:	ce                                              	(bad)
    22bdd7cecd6b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd6c:	bd 22 00 00 50                                  	mov    ebp,0x50000022
    22bdd7cecd71:	5c                                              	pop    rsp
    22bdd7cecd72:	ce                                              	(bad)
    22bdd7cecd73:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd74:	bd 22 00 00 b5                                  	mov    ebp,0xb5000022
    22bdd7cecd79:	5c                                              	pop    rsp
    22bdd7cecd7a:	ce                                              	(bad)
    22bdd7cecd7b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd7c:	bd 22 00 00 f6                                  	mov    ebp,0xf6000022
    22bdd7cecd81:	5a                                              	pop    rdx
    22bdd7cecd82:	ce                                              	(bad)
    22bdd7cecd83:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd84:	bd 22 00 00 3c                                  	mov    ebp,0x3c000022
    22bdd7cecd89:	52                                              	push   rdx
    22bdd7cecd8a:	ce                                              	(bad)
    22bdd7cecd8b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd8c:	bd 22 00 00 26                                  	mov    ebp,0x26000022
    22bdd7cecd91:	52                                              	push   rdx
    22bdd7cecd92:	ce                                              	(bad)
    22bdd7cecd93:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd94:	bd 22 00 00 17                                  	mov    ebp,0x17000022
    22bdd7cecd99:	52                                              	push   rdx
    22bdd7cecd9a:	ce                                              	(bad)
    22bdd7cecd9b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecd9c:	bd 22 00 00 07                                  	mov    ebp,0x7000022
    22bdd7cecda1:	52                                              	push   rdx
    22bdd7cecda2:	ce                                              	(bad)
    22bdd7cecda3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecda4:	bd 22 00 00 f1                                  	mov    ebp,0xf1000022
    22bdd7cecda9:	51                                              	push   rcx
    22bdd7cecdaa:	ce                                              	(bad)
    22bdd7cecdab:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdac:	bd 22 00 00 e1                                  	mov    ebp,0xe1000022
    22bdd7cecdb1:	51                                              	push   rcx
    22bdd7cecdb2:	ce                                              	(bad)
    22bdd7cecdb3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdb4:	bd 22 00 00 46                                  	mov    ebp,0x46000022
    22bdd7cecdb9:	52                                              	push   rdx
    22bdd7cecdba:	ce                                              	(bad)
    22bdd7cecdbb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdbc:	bd 22 00 00 15                                  	mov    ebp,0x15000022
    22bdd7cecdc1:	50                                              	push   rax
    22bdd7cecdc2:	ce                                              	(bad)
    22bdd7cecdc3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdc4:	bd 22 00 00 5c                                  	mov    ebp,0x5c000022
    22bdd7cecdc9:	47 ce                                           	rex.RXB (bad)
    22bdd7cecdcb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdcc:	bd 22 00 00 47                                  	mov    ebp,0x47000022
    22bdd7cecdd1:	47 ce                                           	rex.RXB (bad)
    22bdd7cecdd3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdd4:	bd 22 00 00 38                                  	mov    ebp,0x38000022
    22bdd7cecdd9:	47 ce                                           	rex.RXB (bad)
    22bdd7cecddb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecddc:	bd 22 00 00 29                                  	mov    ebp,0x29000022
    22bdd7cecde1:	47 ce                                           	rex.RXB (bad)
    22bdd7cecde3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecde4:	bd 22 00 00 14                                  	mov    ebp,0x14000022
    22bdd7cecde9:	47 ce                                           	rex.RXB (bad)
    22bdd7cecdeb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdec:	bd 22 00 00 05                                  	mov    ebp,0x5000022
    22bdd7cecdf1:	47 ce                                           	rex.RXB (bad)
    22bdd7cecdf3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdf4:	bd 22 00 00 66                                  	mov    ebp,0x66000022
    22bdd7cecdf9:	47 ce                                           	rex.RXB (bad)
    22bdd7cecdfb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cecdfc:	bd 22 00 00 82                                  	mov    ebp,0x82000022
    22bdd7cece01:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cece03:	00 1c 00                                        	add    BYTE PTR [rax+rax*1],bl
    22bdd7cece06:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cece08:	f0 2b db                                        	lock sub ebx,ebx
    22bdd7cece0b:	03 05 c0 80 02 db                               	add    eax,DWORD PTR [rip+0xffffffffdb0280c0]        # 0x22bdb2d14ed1
    22bdd7cece11:	03 05 3d db 03 05                               	add    eax,DWORD PTR [rip+0x503db3d]        # 0x22bddcd2a954
    22bdd7cece17:	dd 05 db 03 05 00                               	fld    QWORD PTR [rip+0x503db]        # 0x22bdd7d3d1f8
	...
