
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms0/selected/sg_raster_triangle_depth_capture-turbofan.bin:     file format binary


Disassembly of section .data:

000005b2ff09d180 <.data>:
 5b2ff09d180:	55                                              	push   rbp
 5b2ff09d181:	48 8b ec                                        	mov    rbp,rsp
 5b2ff09d184:	6a 30                                           	push   0x30
 5b2ff09d186:	56                                              	push   rsi
 5b2ff09d187:	48 81 ec f0 03 00 00                            	sub    rsp,0x3f0
 5b2ff09d18e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
 5b2ff09d192:	48 89 95 d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],rdx
 5b2ff09d199:	8b f9                                           	mov    edi,ecx
 5b2ff09d19b:	48 89 8d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rcx
 5b2ff09d1a2:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
 5b2ff09d1a6:	0f 86 da 95 00 00                               	jbe    0x5b2ff0a6786
 5b2ff09d1ac:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
 5b2ff09d1b0:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
 5b2ff09d1b4:	4d 0b de                                        	or     r11,r14
 5b2ff09d1b7:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
 5b2ff09d1bb:	45 8d bc 24 00 fe ff ff                         	lea    r15d,[r12-0x200]
 5b2ff09d1c3:	45 89 7b 07                                     	mov    DWORD PTR [r11+0x7],r15d
 5b2ff09d1c7:	8b cb                                           	mov    ecx,ebx
 5b2ff09d1c9:	c4 c1 7a 6f 74 08 10                            	vmovdqu xmm6,XMMWORD PTR [r8+rcx*1+0x10]
 5b2ff09d1d0:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
 5b2ff09d1da:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff09d1df:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff09d1e3:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
 5b2ff09d1e7:	49 ba 40 09 09 67 4c 63 00 00                   	movabs r10,0x634c67090940
 5b2ff09d1f1:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff09d1f7:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
 5b2ff09d1fc:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff09d202:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
 5b2ff09d207:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
 5b2ff09d20c:	4c 89 a5 c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],r12
 5b2ff09d213:	44 8b e2                                        	mov    r12d,edx
 5b2ff09d216:	c4 01 7a 6f 4c 20 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x10]
 5b2ff09d21d:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
 5b2ff09d221:	4c 8b 15 c1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc1]        # 0x5b2ff09d1e9
 5b2ff09d228:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
 5b2ff09d22e:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
 5b2ff09d233:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
 5b2ff09d239:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
 5b2ff09d23e:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
 5b2ff09d243:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
 5b2ff09d248:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
 5b2ff09d24d:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
 5b2ff09d253:	8b f7                                           	mov    esi,edi
 5b2ff09d255:	c4 41 7a 6f 64 30 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x10]
 5b2ff09d25c:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
 5b2ff09d260:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x5b2ff09d1e9
 5b2ff09d267:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
 5b2ff09d26d:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
 5b2ff09d272:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
 5b2ff09d278:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
 5b2ff09d27d:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
 5b2ff09d282:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
 5b2ff09d287:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
 5b2ff09d28c:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
 5b2ff09d292:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
 5b2ff09d296:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
 5b2ff09d29b:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
 5b2ff09d2a0:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
 5b2ff09d2a4:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
 5b2ff09d2aa:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
 5b2ff09d2ae:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
 5b2ff09d2b3:	c4 e3 f9 16 d2 00                               	vpextrq rdx,xmm2,0x0
 5b2ff09d2b9:	c4 e3 f9 16 d7 01                               	vpextrq rdi,xmm2,0x1
 5b2ff09d2bf:	48 2b d7                                        	sub    rdx,rdi
 5b2ff09d2c2:	48 85 d2                                        	test   rdx,rdx
 5b2ff09d2c5:	0f 8e 8a 94 00 00                               	jle    0x5b2ff0a6755
 5b2ff09d2cb:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
 5b2ff09d2d0:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
 5b2ff09d2d5:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
 5b2ff09d2db:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
 5b2ff09d2e5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff09d2ea:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff09d2ee:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
 5b2ff09d2f2:	8d 78 04                                        	lea    edi,[rax+0x4]
 5b2ff09d2f5:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
 5b2ff09d2fa:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
 5b2ff09d2ff:	c4 c3 59 22 24 38 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rdi*1],0x1
 5b2ff09d306:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
 5b2ff09d30b:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
 5b2ff09d30f:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
 5b2ff09d314:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
 5b2ff09d319:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
 5b2ff09d31e:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
 5b2ff09d323:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
 5b2ff09d327:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
 5b2ff09d32b:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
 5b2ff09d335:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff09d33a:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff09d33e:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
 5b2ff09d342:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
 5b2ff09d346:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
 5b2ff09d34b:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
 5b2ff09d351:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
 5b2ff09d356:	8b f8                                           	mov    edi,eax
 5b2ff09d358:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
 5b2ff09d35d:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
 5b2ff09d361:	c5 f8 11 85 80 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x280],xmm0
 5b2ff09d369:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
 5b2ff09d370:	48 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdx
 5b2ff09d377:	45 85 c9                                        	test   r9d,r9d
 5b2ff09d37a:	0f 84 3a 00 00 00                               	je     0x5b2ff09d3ba
 5b2ff09d380:	8d 58 50                                        	lea    ebx,[rax+0x50]
 5b2ff09d383:	49 8d 50 48                                     	lea    rdx,[r8+0x48]
 5b2ff09d387:	c5 fb 10 24 3a                                  	vmovsd xmm4,QWORD PTR [rdx+rdi*1]
 5b2ff09d38c:	c4 c3 59 22 2c 18 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+rbx*1],0x0
 5b2ff09d393:	8d 58 54                                        	lea    ebx,[rax+0x54]
 5b2ff09d396:	c4 c3 59 22 04 18 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rbx*1],0x1
 5b2ff09d39d:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
 5b2ff09d3a1:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
 5b2ff09d3a6:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
 5b2ff09d3ab:	48 8b 95 70 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x190]
 5b2ff09d3b2:	c5 f8 10 85 80 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x280]
 5b2ff09d3ba:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
 5b2ff09d3be:	c4 e3 f9 16 e3 00                               	vpextrq rbx,xmm4,0x0
 5b2ff09d3c4:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
 5b2ff09d3c9:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
 5b2ff09d3cf:	48 23 c3                                        	and    rax,rbx
 5b2ff09d3d2:	a8 01                                           	test   al,0x1
 5b2ff09d3d4:	0f 85 22 00 00 00                               	jne    0x5b2ff09d3fc
 5b2ff09d3da:	b8 01 00 00 00                                  	mov    eax,0x1
 5b2ff09d3df:	bf ff ff ff ff                                  	mov    edi,0xffffffff
 5b2ff09d3e4:	45 85 c9                                        	test   r9d,r9d
 5b2ff09d3e7:	0f 45 c7                                        	cmovne eax,edi
 5b2ff09d3ea:	41 8d bf 00 02 00 00                            	lea    edi,[r15+0x200]
 5b2ff09d3f1:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
 5b2ff09d3f5:	48 8b e5                                        	mov    rsp,rbp
 5b2ff09d3f8:	5d                                              	pop    rbp
 5b2ff09d3f9:	c2 10 00                                        	ret    0x10
 5b2ff09d3fc:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
 5b2ff09d402:	c4 63 79 16 eb 01                               	vpextrd ebx,xmm13,0x1
 5b2ff09d408:	c4 43 79 16 c1 01                               	vpextrd r9d,xmm8,0x1
 5b2ff09d40e:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
 5b2ff09d412:	45 8b 9c 38 e0 00 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0xe0]
 5b2ff09d41a:	4c 89 7d e0                                     	mov    QWORD PTR [rbp-0x20],r15
 5b2ff09d41e:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
 5b2ff09d422:	48 89 7d c8                                     	mov    QWORD PTR [rbp-0x38],rdi
 5b2ff09d426:	48 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],rcx
 5b2ff09d42d:	48 89 b5 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rsi
 5b2ff09d434:	4c 89 a5 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],r12
 5b2ff09d43b:	c5 f8 11 bd 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm7
 5b2ff09d443:	c5 f8 11 95 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm2
 5b2ff09d44b:	48 89 85 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rax
 5b2ff09d452:	48 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rbx
 5b2ff09d459:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
 5b2ff09d45d:	4c 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],r11
 5b2ff09d461:	45 85 db                                        	test   r11d,r11d
 5b2ff09d464:	0f 85 0d 00 00 00                               	jne    0x5b2ff09d477
 5b2ff09d46a:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
 5b2ff09d46e:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
 5b2ff09d472:	e9 43 01 00 00                                  	jmp    0x5b2ff09d5ba
 5b2ff09d477:	c4 c1 7a 10 ac 38 d8 00 00 00                   	vmovss xmm5,DWORD PTR [r8+rdi*1+0xd8]
 5b2ff09d481:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff09d485:	c5 f8 2e e5                                     	vucomiss xmm4,xmm5
 5b2ff09d489:	0f 8a 1c 00 00 00                               	jp     0x5b2ff09d4ab
 5b2ff09d48f:	0f 85 16 00 00 00                               	jne    0x5b2ff09d4ab
 5b2ff09d495:	c4 c1 7a 10 84 38 dc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rdi*1+0xdc]
 5b2ff09d49f:	c5 f8 2e e0                                     	vucomiss xmm4,xmm0
 5b2ff09d4a3:	7a 06                                           	jp     0x5b2ff09d4ab
 5b2ff09d4a5:	0f 84 0b 01 00 00                               	je     0x5b2ff09d5b6
 5b2ff09d4ab:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
 5b2ff09d4b0:	c4 c1 78 28 c4                                  	vmovaps xmm0,xmm12
 5b2ff09d4b5:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
 5b2ff09d4ba:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
 5b2ff09d4be:	c4 c1 7a 59 f9                                  	vmulss xmm7,xmm0,xmm9
 5b2ff09d4c3:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
 5b2ff09d4c8:	c4 c1 4a 59 d4                                  	vmulss xmm2,xmm6,xmm12
 5b2ff09d4cd:	c5 c2 5c fa                                     	vsubss xmm7,xmm7,xmm2
 5b2ff09d4d1:	c5 f8 2e e7                                     	vucomiss xmm4,xmm7
 5b2ff09d4d5:	7a 06                                           	jp     0x5b2ff09d4dd
 5b2ff09d4d7:	0f 84 d9 00 00 00                               	je     0x5b2ff09d5b6
 5b2ff09d4dd:	c4 c1 7a 10 54 30 18                            	vmovss xmm2,DWORD PTR [r8+rsi*1+0x18]
 5b2ff09d4e4:	c5 78 11 9d 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm11
 5b2ff09d4ec:	c4 01 7a 10 5c 20 18                            	vmovss xmm11,DWORD PTR [r8+r12*1+0x18]
 5b2ff09d4f3:	c4 c1 6a 5c d3                                  	vsubss xmm2,xmm2,xmm11
 5b2ff09d4f8:	c4 41 6a 59 c9                                  	vmulss xmm9,xmm2,xmm9
 5b2ff09d4fd:	c5 78 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm14
 5b2ff09d505:	c4 41 7a 10 74 08 18                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x18]
 5b2ff09d50c:	c4 41 0a 5c db                                  	vsubss xmm11,xmm14,xmm11
 5b2ff09d511:	c4 41 1a 59 e3                                  	vmulss xmm12,xmm12,xmm11
 5b2ff09d516:	c4 41 32 5c cc                                  	vsubss xmm9,xmm9,xmm12
 5b2ff09d51b:	c5 32 5e cf                                     	vdivss xmm9,xmm9,xmm7
 5b2ff09d51f:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
 5b2ff09d524:	49 ba 60 08 09 67 4c 63 00 00                   	movabs r10,0x634c67090860
 5b2ff09d52e:	c4 41 30 57 22                                  	vxorps xmm12,xmm9,XMMWORD PTR [r10]
 5b2ff09d533:	c4 c1 78 2e e1                                  	vucomiss xmm4,xmm9
 5b2ff09d538:	0f 87 05 00 00 00                               	ja     0x5b2ff09d543
 5b2ff09d53e:	c4 41 79 28 e1                                  	vmovapd xmm12,xmm9
 5b2ff09d543:	c5 a2 59 c0                                     	vmulss xmm0,xmm11,xmm0
 5b2ff09d547:	c5 ca 59 f2                                     	vmulss xmm6,xmm6,xmm2
 5b2ff09d54b:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff09d54f:	c5 fa 5e c7                                     	vdivss xmm0,xmm0,xmm7
 5b2ff09d553:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
 5b2ff09d557:	4c 8b 15 c8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc8]        # 0x5b2ff09d526
 5b2ff09d55e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff09d563:	c5 f8 2e e0                                     	vucomiss xmm4,xmm0
 5b2ff09d567:	0f 87 04 00 00 00                               	ja     0x5b2ff09d571
 5b2ff09d56d:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff09d571:	c5 78 2e e6                                     	vucomiss xmm12,xmm6
 5b2ff09d575:	0f 87 04 00 00 00                               	ja     0x5b2ff09d57f
 5b2ff09d57b:	c5 79 28 e6                                     	vmovapd xmm12,xmm6
 5b2ff09d57f:	c4 c1 52 59 c4                                  	vmulss xmm0,xmm5,xmm12
 5b2ff09d584:	c4 c1 7a 10 b4 38 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+rdi*1+0xdc]
 5b2ff09d58e:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
 5b2ff09d594:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
 5b2ff09d599:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff09d59d:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09d5a1:	c5 78 10 b5 10 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xf0]
 5b2ff09d5a9:	c5 78 10 9d 40 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xc0]
 5b2ff09d5b1:	e9 04 00 00 00                                  	jmp    0x5b2ff09d5ba
 5b2ff09d5b6:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
 5b2ff09d5ba:	c4 c1 79 7e df                                  	vmovd  r15d,xmm3
 5b2ff09d5bf:	4c 89 bd 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],r15
 5b2ff09d5c6:	c4 c3 79 16 df 01                               	vpextrd r15d,xmm3,0x1
 5b2ff09d5cc:	4c 89 bd e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r15
 5b2ff09d5d3:	c4 41 79 7e d7                                  	vmovd  r15d,xmm10
 5b2ff09d5d8:	c5 79 7e ea                                     	vmovd  edx,xmm13
 5b2ff09d5dc:	c5 79 7e c1                                     	vmovd  ecx,xmm8
 5b2ff09d5e0:	41 2b c1                                        	sub    eax,r9d
 5b2ff09d5e3:	4c 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],r15
 5b2ff09d5e7:	45 8b f9                                        	mov    r15d,r9d
 5b2ff09d5ea:	44 2b fb                                        	sub    r15d,ebx
 5b2ff09d5ed:	41 8b 9c 38 a4 00 00 00                         	mov    ebx,DWORD PTR [r8+rdi*1+0xa4]
 5b2ff09d5f5:	c5 fb 11 85 78 fc ff ff                         	vmovsd QWORD PTR [rbp-0x388],xmm0
 5b2ff09d5fd:	48 89 55 80                                     	mov    QWORD PTR [rbp-0x80],rdx
 5b2ff09d601:	48 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rax
 5b2ff09d608:	4c 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r15
 5b2ff09d60f:	85 db                                           	test   ebx,ebx
 5b2ff09d611:	0f 85 a6 00 00 00                               	jne    0x5b2ff09d6bd
 5b2ff09d617:	45 8b 8c 38 30 05 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x530]
 5b2ff09d61f:	41 83 bc 38 30 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x530],0x0
 5b2ff09d628:	0f 85 8f 00 00 00                               	jne    0x5b2ff09d6bd
 5b2ff09d62e:	45 8b 8c 38 c8 3c 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3cc8]
 5b2ff09d636:	41 83 bc 38 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3cc8],0x0
 5b2ff09d63f:	0f 85 78 00 00 00                               	jne    0x5b2ff09d6bd
 5b2ff09d645:	45 8b 8c 38 70 37 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3770]
 5b2ff09d64d:	41 83 bc 38 70 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3770],0x0
 5b2ff09d656:	0f 85 61 00 00 00                               	jne    0x5b2ff09d6bd
 5b2ff09d65c:	45 8b 8c 38 74 37 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3774]
 5b2ff09d664:	41 83 bc 38 74 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3774],0x0
 5b2ff09d66d:	0f 85 4a 00 00 00                               	jne    0x5b2ff09d6bd
 5b2ff09d673:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
 5b2ff09d677:	45 8b d9                                        	mov    r11d,r9d
 5b2ff09d67a:	43 8b b4 18 30 01 00 00                         	mov    esi,DWORD PTR [r8+r11*1+0x130]
 5b2ff09d682:	43 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0x130],0x0
 5b2ff09d68b:	0f 84 16 00 00 00                               	je     0x5b2ff09d6a7
 5b2ff09d691:	47 8b 9c 18 34 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x134]
 5b2ff09d699:	41 83 eb 01                                     	sub    r11d,0x1
 5b2ff09d69d:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff09d6a1:	0f 87 0b 00 00 00                               	ja     0x5b2ff09d6b2
 5b2ff09d6a7:	41 b9 01 00 00 00                               	mov    r9d,0x1
 5b2ff09d6ad:	e9 0e 00 00 00                                  	jmp    0x5b2ff09d6c0
 5b2ff09d6b2:	45 33 db                                        	xor    r11d,r11d
 5b2ff09d6b5:	4d 8b cb                                        	mov    r9,r11
 5b2ff09d6b8:	e9 03 00 00 00                                  	jmp    0x5b2ff09d6c0
 5b2ff09d6bd:	45 33 c9                                        	xor    r9d,r9d
 5b2ff09d6c0:	4c 89 8d b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r9
 5b2ff09d6c7:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
 5b2ff09d6ce:	41 c1 e1 08                                     	shl    r9d,0x8
 5b2ff09d6d2:	44 8b 9d e0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x320]
 5b2ff09d6d9:	41 c1 e3 08                                     	shl    r11d,0x8
 5b2ff09d6dd:	48 63 f0                                        	movsxd rsi,eax
 5b2ff09d6e0:	48 89 75 a8                                     	mov    QWORD PTR [rbp-0x58],rsi
 5b2ff09d6e4:	8b 75 90                                        	mov    esi,DWORD PTR [rbp-0x70]
 5b2ff09d6e7:	2b f1                                           	sub    esi,ecx
 5b2ff09d6e9:	49 63 c7                                        	movsxd rax,r15d
 5b2ff09d6ec:	48 89 45 c0                                     	mov    QWORD PTR [rbp-0x40],rax
 5b2ff09d6f0:	8b c1                                           	mov    eax,ecx
 5b2ff09d6f2:	2b c2                                           	sub    eax,edx
 5b2ff09d6f4:	c4 c3 f9 16 cf 01                               	vpextrq r15,xmm1,0x1
 5b2ff09d6fa:	4c 89 bd 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],r15
 5b2ff09d701:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
 5b2ff09d705:	43 8b 94 38 38 01 00 00                         	mov    edx,DWORD PTR [r8+r15*1+0x138]
 5b2ff09d70d:	48 89 b5 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rsi
 5b2ff09d714:	48 89 85 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rax
 5b2ff09d71b:	4c 89 bd a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r15
 5b2ff09d722:	43 83 bc 38 38 01 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0x138],0x0
 5b2ff09d72b:	0f 85 0e 00 00 00                               	jne    0x5b2ff09d73f
 5b2ff09d731:	33 d2                                           	xor    edx,edx
 5b2ff09d733:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
 5b2ff09d73a:	e9 53 01 00 00                                  	jmp    0x5b2ff09d892
 5b2ff09d73f:	41 8b 94 38 c8 3c 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3cc8]
 5b2ff09d747:	41 83 bc 38 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3cc8],0x0
 5b2ff09d750:	75 df                                           	jne    0x5b2ff09d731
 5b2ff09d752:	41 8b 94 38 ec 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0xec]
 5b2ff09d75a:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
 5b2ff09d763:	75 cc                                           	jne    0x5b2ff09d731
 5b2ff09d765:	41 8b 54 38 14                                  	mov    edx,DWORD PTR [r8+rdi*1+0x14]
 5b2ff09d76a:	41 83 7c 38 14 00                               	cmp    DWORD PTR [r8+rdi*1+0x14],0x0
 5b2ff09d770:	0f 85 6c 00 00 00                               	jne    0x5b2ff09d7e2
 5b2ff09d776:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
 5b2ff09d77e:	0b d3                                           	or     edx,ebx
 5b2ff09d780:	0f 85 5c 00 00 00                               	jne    0x5b2ff09d7e2
 5b2ff09d786:	41 8b 94 38 30 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x530]
 5b2ff09d78e:	41 83 bc 38 30 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x530],0x0
 5b2ff09d797:	0f 85 45 00 00 00                               	jne    0x5b2ff09d7e2
 5b2ff09d79d:	41 8b 94 38 70 37 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3770]
 5b2ff09d7a5:	41 83 bc 38 70 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3770],0x0
 5b2ff09d7ae:	0f 85 2e 00 00 00                               	jne    0x5b2ff09d7e2
 5b2ff09d7b4:	41 8b 94 38 74 37 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3774]
 5b2ff09d7bc:	41 83 bc 38 74 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3774],0x0
 5b2ff09d7c5:	0f 85 17 00 00 00                               	jne    0x5b2ff09d7e2
 5b2ff09d7cb:	41 8b 94 38 20 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x520]
 5b2ff09d7d3:	41 83 bc 38 20 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x520],0x0
 5b2ff09d7dc:	0f 85 12 00 00 00                               	jne    0x5b2ff09d7f4
 5b2ff09d7e2:	33 d2                                           	xor    edx,edx
 5b2ff09d7e4:	48 c7 85 30 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x3d0],0x1
 5b2ff09d7ef:	e9 9e 00 00 00                                  	jmp    0x5b2ff09d892
 5b2ff09d7f4:	41 8b 94 38 24 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x524]
 5b2ff09d7fc:	41 83 bc 38 24 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x524],0x0
 5b2ff09d805:	74 db                                           	je     0x5b2ff09d7e2
 5b2ff09d807:	41 8b 94 38 28 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x528]
 5b2ff09d80f:	41 83 bc 38 28 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x528],0x0
 5b2ff09d818:	74 c8                                           	je     0x5b2ff09d7e2
 5b2ff09d81a:	41 8b 94 38 2c 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x52c]
 5b2ff09d822:	41 83 bc 38 2c 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x52c],0x0
 5b2ff09d82b:	74 b5                                           	je     0x5b2ff09d7e2
 5b2ff09d82d:	41 8b 54 38 74                                  	mov    edx,DWORD PTR [r8+rdi*1+0x74]
 5b2ff09d832:	41 83 7c 38 74 00                               	cmp    DWORD PTR [r8+rdi*1+0x74],0x0
 5b2ff09d838:	0f 85 11 00 00 00                               	jne    0x5b2ff09d84f
 5b2ff09d83e:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff09d843:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
 5b2ff09d84a:	e9 43 00 00 00                                  	jmp    0x5b2ff09d892
 5b2ff09d84f:	41 8b 54 38 78                                  	mov    edx,DWORD PTR [r8+rdi*1+0x78]
 5b2ff09d854:	81 fa 02 03 00 00                               	cmp    edx,0x302
 5b2ff09d85a:	0f 84 09 00 00 00                               	je     0x5b2ff09d869
 5b2ff09d860:	83 fa 01                                        	cmp    edx,0x1
 5b2ff09d863:	0f 85 79 ff ff ff                               	jne    0x5b2ff09d7e2
 5b2ff09d869:	41 8b 54 38 7c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x7c]
 5b2ff09d86e:	45 33 ff                                        	xor    r15d,r15d
 5b2ff09d871:	83 fa 01                                        	cmp    edx,0x1
 5b2ff09d874:	41 0f 94 c7                                     	sete   r15b
 5b2ff09d878:	81 fa 03 03 00 00                               	cmp    edx,0x303
 5b2ff09d87e:	0f 94 c2                                        	sete   dl
 5b2ff09d881:	0f b6 d2                                        	movzx  edx,dl
 5b2ff09d884:	41 0b d7                                        	or     edx,r15d
 5b2ff09d887:	48 c7 85 30 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x3d0],0x1
 5b2ff09d892:	41 81 c9 80 00 00 00                            	or     r9d,0x80
 5b2ff09d899:	41 81 cb 80 00 00 00                            	or     r11d,0x80
 5b2ff09d8a0:	48 89 95 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rdx
 5b2ff09d8a7:	48 63 d6                                        	movsxd rdx,esi
 5b2ff09d8aa:	4c 63 f8                                        	movsxd r15,eax
 5b2ff09d8ad:	4c 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],r15
 5b2ff09d8b1:	c4 c3 f9 16 cf 00                               	vpextrq r15,xmm1,0x0
 5b2ff09d8b7:	4c 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],r15
 5b2ff09d8be:	4c 8b bd 88 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x178]
 5b2ff09d8c5:	49 c1 e7 08                                     	shl    r15,0x8
 5b2ff09d8c9:	4c 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r15
 5b2ff09d8d0:	4c 8b 7d a8                                     	mov    r15,QWORD PTR [rbp-0x58]
 5b2ff09d8d4:	49 c1 e7 08                                     	shl    r15,0x8
 5b2ff09d8d8:	4c 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],r15
 5b2ff09d8df:	4c 8b 7d c0                                     	mov    r15,QWORD PTR [rbp-0x40]
 5b2ff09d8e3:	49 c1 e7 08                                     	shl    r15,0x8
 5b2ff09d8e7:	c4 c1 79 28 f6                                  	vmovapd xmm6,xmm14
 5b2ff09d8ec:	4c 89 bd 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r15
 5b2ff09d8f3:	c4 c1 79 7e f7                                  	vmovd  r15d,xmm6
 5b2ff09d8f8:	48 89 95 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rdx
 5b2ff09d8ff:	c4 e3 79 16 f2 01                               	vpextrd edx,xmm6,0x1
 5b2ff09d905:	c4 81 7a 10 74 20 18                            	vmovss xmm6,DWORD PTR [r8+r12*1+0x18]
 5b2ff09d90c:	4c 8b a5 48 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1b8]
 5b2ff09d913:	c4 81 7a 10 7c 20 18                            	vmovss xmm7,DWORD PTR [r8+r12*1+0x18]
 5b2ff09d91a:	45 33 e4                                        	xor    r12d,r12d
 5b2ff09d91d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09d921:	41 0f 97 c4                                     	seta   r12b
 5b2ff09d925:	4c 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r15
 5b2ff09d92c:	48 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rdx
 5b2ff09d933:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
 5b2ff09d937:	0b d3                                           	or     edx,ebx
 5b2ff09d939:	0f 85 11 00 00 00                               	jne    0x5b2ff09d950
 5b2ff09d93f:	41 8b 5c 38 68                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x68]
 5b2ff09d944:	41 83 7c 38 68 00                               	cmp    DWORD PTR [r8+rdi*1+0x68],0x0
 5b2ff09d94a:	0f 85 0a 00 00 00                               	jne    0x5b2ff09d95a
 5b2ff09d950:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff09d955:	e9 17 00 00 00                                  	jmp    0x5b2ff09d971
 5b2ff09d95a:	41 8b 5c 38 6c                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x6c]
 5b2ff09d95f:	81 eb 01 02 00 00                               	sub    ebx,0x201
 5b2ff09d965:	f7 c3 fd ff ff ff                               	test   ebx,0xfffffffd
 5b2ff09d96b:	0f 95 c3                                        	setne  bl
 5b2ff09d96e:	0f b6 db                                        	movzx  ebx,bl
 5b2ff09d971:	41 8b d1                                        	mov    edx,r9d
 5b2ff09d974:	2b d1                                           	sub    edx,ecx
 5b2ff09d976:	41 8b fb                                        	mov    edi,r11d
 5b2ff09d979:	2b 7d 88                                        	sub    edi,DWORD PTR [rbp-0x78]
 5b2ff09d97c:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
 5b2ff09d983:	41 8b f9                                        	mov    edi,r9d
 5b2ff09d986:	2b 7d 80                                        	sub    edi,DWORD PTR [rbp-0x80]
 5b2ff09d989:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
 5b2ff09d98d:	41 8b fb                                        	mov    edi,r11d
 5b2ff09d990:	2b bd 20 ff ff ff                               	sub    edi,DWORD PTR [rbp-0xe0]
 5b2ff09d996:	44 2b 4d 90                                     	sub    r9d,DWORD PTR [rbp-0x70]
 5b2ff09d99a:	44 2b 9d 50 fe ff ff                            	sub    r11d,DWORD PTR [rbp-0x1b0]
 5b2ff09d9a1:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
 5b2ff09d9a5:	4c 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],r11
 5b2ff09d9a9:	45 85 e4                                        	test   r12d,r12d
 5b2ff09d9ac:	0f 85 09 00 00 00                               	jne    0x5b2ff09d9bb
 5b2ff09d9b2:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff09d9b6:	e9 04 00 00 00                                  	jmp    0x5b2ff09d9bf
 5b2ff09d9bb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
 5b2ff09d9bf:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
 5b2ff09d9c6:	c4 01 7a 10 4c 20 18                            	vmovss xmm9,DWORD PTR [r8+r12*1+0x18]
 5b2ff09d9cd:	44 8b 85 50 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1b0]
 5b2ff09d9d4:	45 33 e4                                        	xor    r12d,r12d
 5b2ff09d9d7:	44 3b 85 20 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xe0]
 5b2ff09d9de:	41 0f 95 c4                                     	setne  r12b
 5b2ff09d9e2:	4c 89 a5 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r12
 5b2ff09d9e9:	44 8b 65 90                                     	mov    r12d,DWORD PTR [rbp-0x70]
 5b2ff09d9ed:	45 33 db                                        	xor    r11d,r11d
 5b2ff09d9f0:	44 3b 65 80                                     	cmp    r12d,DWORD PTR [rbp-0x80]
 5b2ff09d9f4:	41 0f 9e c3                                     	setle  r11b
 5b2ff09d9f8:	4c 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r11
 5b2ff09d9ff:	44 8b 5d 88                                     	mov    r11d,DWORD PTR [rbp-0x78]
 5b2ff09da03:	45 33 c9                                        	xor    r9d,r9d
 5b2ff09da06:	45 3b d8                                        	cmp    r11d,r8d
 5b2ff09da09:	41 0f 95 c1                                     	setne  r9b
 5b2ff09da0d:	41 3b cc                                        	cmp    ecx,r12d
 5b2ff09da10:	41 0f 9e c4                                     	setle  r12b
 5b2ff09da14:	45 0f b6 e4                                     	movzx  r12d,r12b
 5b2ff09da18:	4c 89 65 90                                     	mov    QWORD PTR [rbp-0x70],r12
 5b2ff09da1c:	45 33 e4                                        	xor    r12d,r12d
 5b2ff09da1f:	44 3b 9d 20 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0xe0]
 5b2ff09da26:	41 0f 95 c4                                     	setne  r12b
 5b2ff09da2a:	4c 89 a5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r12
 5b2ff09da31:	44 8b 65 80                                     	mov    r12d,DWORD PTR [rbp-0x80]
 5b2ff09da35:	44 3b e1                                        	cmp    r12d,ecx
 5b2ff09da38:	41 0f 9e c4                                     	setle  r12b
 5b2ff09da3c:	45 0f b6 e4                                     	movzx  r12d,r12b
 5b2ff09da40:	48 8b 8d a0 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x160]
 5b2ff09da47:	48 c1 e1 08                                     	shl    rcx,0x8
 5b2ff09da4b:	48 89 8d e8 fc ff ff                            	mov    QWORD PTR [rbp-0x318],rcx
 5b2ff09da52:	48 8b 8d 00 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x300]
 5b2ff09da59:	48 f7 d9                                        	neg    rcx
 5b2ff09da5c:	48 89 8d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rcx
 5b2ff09da63:	48 8b 8d 78 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x188]
 5b2ff09da6a:	48 c1 e1 08                                     	shl    rcx,0x8
 5b2ff09da6e:	48 89 8d a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rcx
 5b2ff09da75:	48 8b 4d b8                                     	mov    rcx,QWORD PTR [rbp-0x48]
 5b2ff09da79:	48 c1 e1 08                                     	shl    rcx,0x8
 5b2ff09da7d:	48 89 8d 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rcx
 5b2ff09da84:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
 5b2ff09da8b:	48 f7 d9                                        	neg    rcx
 5b2ff09da8e:	48 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rcx
 5b2ff09da95:	48 8b 8d 18 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2e8]
 5b2ff09da9c:	48 f7 d9                                        	neg    rcx
 5b2ff09da9f:	48 89 8d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rcx
 5b2ff09daa6:	33 c9                                           	xor    ecx,ecx
 5b2ff09daa8:	85 f6                                           	test   esi,esi
 5b2ff09daaa:	0f 9c c1                                        	setl   cl
 5b2ff09daad:	33 f6                                           	xor    esi,esi
 5b2ff09daaf:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
 5b2ff09dab6:	40 0f 9f c6                                     	setg   sil
 5b2ff09daba:	48 89 75 80                                     	mov    QWORD PTR [rbp-0x80],rsi
 5b2ff09dabe:	33 f6                                           	xor    esi,esi
 5b2ff09dac0:	85 c0                                           	test   eax,eax
 5b2ff09dac2:	40 0f 9c c6                                     	setl   sil
 5b2ff09dac6:	33 c0                                           	xor    eax,eax
 5b2ff09dac8:	83 bd 68 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x98],0x0
 5b2ff09dacf:	0f 9f c0                                        	setg   al
 5b2ff09dad2:	48 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rax
 5b2ff09dad9:	33 c0                                           	xor    eax,eax
 5b2ff09dadb:	45 85 ff                                        	test   r15d,r15d
 5b2ff09dade:	0f 9c c0                                        	setl   al
 5b2ff09dae1:	45 33 ff                                        	xor    r15d,r15d
 5b2ff09dae4:	83 bd 50 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xb0],0x0
 5b2ff09daeb:	41 0f 9f c7                                     	setg   r15b
 5b2ff09daef:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
 5b2ff09daf6:	c4 c1 79 7e f7                                  	vmovd  r15d,xmm6
 5b2ff09dafb:	41 81 e7 ff ff ff 7f                            	and    r15d,0x7fffffff
 5b2ff09db02:	41 81 ff ff ff 7f 7f                            	cmp    r15d,0x7f7fffff
 5b2ff09db09:	0f 87 25 00 00 00                               	ja     0x5b2ff09db34
 5b2ff09db0f:	c5 f8 2e f4                                     	vucomiss xmm6,xmm4
 5b2ff09db13:	0f 82 1b 00 00 00                               	jb     0x5b2ff09db34
 5b2ff09db19:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff09db1e:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff09db24:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff09db2a:	c5 78 2e d6                                     	vucomiss xmm10,xmm6
 5b2ff09db2e:	0f 83 05 00 00 00                               	jae    0x5b2ff09db39
 5b2ff09db34:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff09db39:	4c 63 fa                                        	movsxd r15,edx
 5b2ff09db3c:	48 63 95 30 ff ff ff                            	movsxd rdx,DWORD PTR [rbp-0xd0]
 5b2ff09db43:	48 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdx
 5b2ff09db4a:	48 63 55 98                                     	movsxd rdx,DWORD PTR [rbp-0x68]
 5b2ff09db4e:	48 63 ff                                        	movsxd rdi,edi
 5b2ff09db51:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
 5b2ff09db55:	48 63 7d a0                                     	movsxd rdi,DWORD PTR [rbp-0x60]
 5b2ff09db59:	48 89 7d a0                                     	mov    QWORD PTR [rbp-0x60],rdi
 5b2ff09db5d:	48 63 7d b0                                     	movsxd rdi,DWORD PTR [rbp-0x50]
 5b2ff09db61:	48 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],rdi
 5b2ff09db65:	33 ff                                           	xor    edi,edi
 5b2ff09db67:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
 5b2ff09db6c:	40 0f 97 c7                                     	seta   dil
 5b2ff09db70:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
 5b2ff09db77:	48 8b bd 00 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x100]
 5b2ff09db7e:	0b bd f8 fd ff ff                               	or     edi,DWORD PTR [rbp-0x208]
 5b2ff09db84:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
 5b2ff09db8b:	33 ff                                           	xor    edi,edi
 5b2ff09db8d:	44 3b 85 20 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xe0]
 5b2ff09db94:	40 0f 9e c7                                     	setle  dil
 5b2ff09db98:	48 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rdi
 5b2ff09db9f:	48 8b 7d 90                                     	mov    rdi,QWORD PTR [rbp-0x70]
 5b2ff09dba3:	41 0b f9                                        	or     edi,r9d
 5b2ff09dba6:	45 3b d8                                        	cmp    r11d,r8d
 5b2ff09dba9:	41 0f 9e c0                                     	setle  r8b
 5b2ff09dbad:	45 0f b6 c0                                     	movzx  r8d,r8b
 5b2ff09dbb1:	44 0b a5 38 ff ff ff                            	or     r12d,DWORD PTR [rbp-0xc8]
 5b2ff09dbb8:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
 5b2ff09dbbf:	45 3b cb                                        	cmp    r9d,r11d
 5b2ff09dbc2:	41 0f 9e c3                                     	setle  r11b
 5b2ff09dbc6:	45 0f b6 db                                     	movzx  r11d,r11b
 5b2ff09dbca:	4c 8b 95 70 fe ff ff                            	mov    r10,QWORD PTR [rbp-0x190]
 5b2ff09dbd1:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff09dbd6:	4d 85 d2                                        	test   r10,r10
 5b2ff09dbd9:	79 12                                           	jns    0x5b2ff09dbed
 5b2ff09dbdb:	49 d1 ea                                        	shr    r10,1
 5b2ff09dbde:	73 04                                           	jae    0x5b2ff09dbe4
 5b2ff09dbe0:	49 83 ca 01                                     	or     r10,0x1
 5b2ff09dbe4:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff09dbe9:	c5 ca 58 f6                                     	vaddss xmm6,xmm6,xmm6
 5b2ff09dbed:	4c 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r11
 5b2ff09dbf4:	45 33 db                                        	xor    r11d,r11d
 5b2ff09dbf7:	85 c9                                           	test   ecx,ecx
 5b2ff09dbf9:	4c 0f 45 9d a0 fd ff ff                         	cmovne r11,QWORD PTR [rbp-0x260]
 5b2ff09dc01:	33 c9                                           	xor    ecx,ecx
 5b2ff09dc03:	83 7d 80 00                                     	cmp    DWORD PTR [rbp-0x80],0x0
 5b2ff09dc07:	48 0f 45 8d 78 ff ff ff                         	cmovne rcx,QWORD PTR [rbp-0x88]
 5b2ff09dc0f:	45 33 c9                                        	xor    r9d,r9d
 5b2ff09dc12:	48 89 8d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rcx
 5b2ff09dc19:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
 5b2ff09dc20:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
 5b2ff09dc27:	49 0f 4c c9                                     	cmovl  rcx,r9
 5b2ff09dc2b:	48 89 8d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rcx
 5b2ff09dc32:	48 8b 8d 78 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x88]
 5b2ff09dc39:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
 5b2ff09dc40:	49 0f 4f c9                                     	cmovg  rcx,r9
 5b2ff09dc44:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
 5b2ff09dc4b:	49 8b c9                                        	mov    rcx,r9
 5b2ff09dc4e:	85 f6                                           	test   esi,esi
 5b2ff09dc50:	48 0f 45 8d 30 fd ff ff                         	cmovne rcx,QWORD PTR [rbp-0x2d0]
 5b2ff09dc58:	49 8b f1                                        	mov    rsi,r9
 5b2ff09dc5b:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff09dc62:	48 0f 45 b5 08 ff ff ff                         	cmovne rsi,QWORD PTR [rbp-0xf8]
 5b2ff09dc6a:	48 89 8d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rcx
 5b2ff09dc71:	48 8b 8d 30 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2d0]
 5b2ff09dc78:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
 5b2ff09dc7f:	49 0f 4c c9                                     	cmovl  rcx,r9
 5b2ff09dc83:	48 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rcx
 5b2ff09dc8a:	48 8b 8d 08 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xf8]
 5b2ff09dc91:	83 bd 68 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x98],0x0
 5b2ff09dc98:	49 0f 4f c9                                     	cmovg  rcx,r9
 5b2ff09dc9c:	48 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rcx
 5b2ff09dca3:	49 8b c9                                        	mov    rcx,r9
 5b2ff09dca6:	85 c0                                           	test   eax,eax
 5b2ff09dca8:	48 0f 45 8d e8 fc ff ff                         	cmovne rcx,QWORD PTR [rbp-0x318]
 5b2ff09dcb0:	49 8b c1                                        	mov    rax,r9
 5b2ff09dcb3:	83 bd 28 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd8],0x0
 5b2ff09dcba:	48 0f 45 85 58 ff ff ff                         	cmovne rax,QWORD PTR [rbp-0xa8]
 5b2ff09dcc2:	48 89 4d 80                                     	mov    QWORD PTR [rbp-0x80],rcx
 5b2ff09dcc6:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
 5b2ff09dccd:	83 bd 60 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xa0],0x0
 5b2ff09dcd4:	49 0f 4c c9                                     	cmovl  rcx,r9
 5b2ff09dcd8:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
 5b2ff09dcdc:	48 8b 8d 58 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xa8]
 5b2ff09dce3:	83 bd 50 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xb0],0x0
 5b2ff09dcea:	49 0f 4f c9                                     	cmovg  rcx,r9
 5b2ff09dcee:	c4 c1 79 7e f9                                  	vmovd  r9d,xmm7
 5b2ff09dcf3:	41 81 e1 ff ff ff 7f                            	and    r9d,0x7fffffff
 5b2ff09dcfa:	41 81 f9 ff ff 7f 7f                            	cmp    r9d,0x7f7fffff
 5b2ff09dd01:	0f 87 25 00 00 00                               	ja     0x5b2ff09dd2c
 5b2ff09dd07:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
 5b2ff09dd0b:	0f 82 1b 00 00 00                               	jb     0x5b2ff09dd2c
 5b2ff09dd11:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff09dd16:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff09dd1c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff09dd22:	c5 78 2e d7                                     	vucomiss xmm10,xmm7
 5b2ff09dd26:	0f 83 05 00 00 00                               	jae    0x5b2ff09dd31
 5b2ff09dd2c:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff09dd31:	4c 0f af 7d a8                                  	imul   r15,QWORD PTR [rbp-0x58]
 5b2ff09dd36:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
 5b2ff09dd3d:	4c 0f af 8d 78 fe ff ff                         	imul   r9,QWORD PTR [rbp-0x188]
 5b2ff09dd45:	48 0f af 55 c0                                  	imul   rdx,QWORD PTR [rbp-0x40]
 5b2ff09dd4a:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
 5b2ff09dd4e:	48 8b 55 98                                     	mov    rdx,QWORD PTR [rbp-0x68]
 5b2ff09dd52:	48 0f af 55 b8                                  	imul   rdx,QWORD PTR [rbp-0x48]
 5b2ff09dd57:	48 89 55 98                                     	mov    QWORD PTR [rbp-0x68],rdx
 5b2ff09dd5b:	48 8b 55 a0                                     	mov    rdx,QWORD PTR [rbp-0x60]
 5b2ff09dd5f:	48 0f af 95 88 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x178]
 5b2ff09dd67:	48 89 55 a0                                     	mov    QWORD PTR [rbp-0x60],rdx
 5b2ff09dd6b:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
 5b2ff09dd6f:	48 0f af 95 a0 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x160]
 5b2ff09dd77:	48 89 55 b0                                     	mov    QWORD PTR [rbp-0x50],rdx
 5b2ff09dd7b:	83 bd 30 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd0],0x0
 5b2ff09dd82:	0f 85 0a 00 00 00                               	jne    0x5b2ff09dd92
 5b2ff09dd88:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09dd8d:	e9 05 00 00 00                                  	jmp    0x5b2ff09dd97
 5b2ff09dd92:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff09dd97:	48 8b 95 f8 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x208]
 5b2ff09dd9e:	23 95 00 ff ff ff                               	and    edx,DWORD PTR [rbp-0x100]
 5b2ff09dda4:	41 23 f8                                        	and    edi,r8d
 5b2ff09dda7:	44 23 a5 20 ff ff ff                            	and    r12d,DWORD PTR [rbp-0xe0]
 5b2ff09ddae:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff09ddb3:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff09ddb9:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff09ddbf:	c5 ba 5e f6                                     	vdivss xmm6,xmm8,xmm6
 5b2ff09ddc3:	c5 f8 28 f6                                     	vmovaps xmm6,xmm6
 5b2ff09ddc7:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
 5b2ff09ddce:	4d 03 c3                                        	add    r8,r11
 5b2ff09ddd1:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
 5b2ff09ddd8:	48 8b bd 70 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x190]
 5b2ff09dddf:	4c 8b 9d 50 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b0]
 5b2ff09dde6:	49 03 fb                                        	add    rdi,r11
 5b2ff09dde9:	4c 8b 9d 80 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x180]
 5b2ff09ddf0:	4c 03 de                                        	add    r11,rsi
 5b2ff09ddf3:	4c 89 a5 18 fc ff ff                            	mov    QWORD PTR [rbp-0x3e8],r12
 5b2ff09ddfa:	4c 8b a5 70 ff ff ff                            	mov    r12,QWORD PTR [rbp-0x90]
 5b2ff09de01:	48 8b b5 78 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0x88]
 5b2ff09de08:	4c 03 e6                                        	add    r12,rsi
 5b2ff09de0b:	48 8b 75 80                                     	mov    rsi,QWORD PTR [rbp-0x80]
 5b2ff09de0f:	48 03 c6                                        	add    rax,rsi
 5b2ff09de12:	48 8b 75 88                                     	mov    rsi,QWORD PTR [rbp-0x78]
 5b2ff09de16:	48 03 ce                                        	add    rcx,rsi
 5b2ff09de19:	48 89 95 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],rdx
 5b2ff09de20:	48 8b 95 58 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1a8]
 5b2ff09de27:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
 5b2ff09de2b:	c5 7a 10 54 16 1c                               	vmovss xmm10,DWORD PTR [rsi+rdx*1+0x1c]
 5b2ff09de31:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
 5b2ff09de38:	c5 7a 10 64 16 1c                               	vmovss xmm12,DWORD PTR [rsi+rdx*1+0x1c]
 5b2ff09de3e:	48 8b 95 40 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1c0]
 5b2ff09de45:	c5 7a 10 6c 16 1c                               	vmovss xmm13,DWORD PTR [rsi+rdx*1+0x1c]
 5b2ff09de4b:	c5 79 7e ce                                     	vmovd  esi,xmm9
 5b2ff09de4f:	81 e6 ff ff ff 7f                               	and    esi,0x7fffffff
 5b2ff09de55:	c5 fb 11 b5 58 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3a8],xmm6
 5b2ff09de5d:	c5 7b 11 95 c0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x340],xmm10
 5b2ff09de65:	c5 7b 11 a5 90 fc ff ff                         	vmovsd QWORD PTR [rbp-0x370],xmm12
 5b2ff09de6d:	c5 7b 11 ad 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm13
 5b2ff09de75:	81 fe ff ff 7f 7f                               	cmp    esi,0x7f7fffff
 5b2ff09de7b:	0f 87 15 00 00 00                               	ja     0x5b2ff09de96
 5b2ff09de81:	c5 78 2e cc                                     	vucomiss xmm9,xmm4
 5b2ff09de85:	0f 82 0b 00 00 00                               	jb     0x5b2ff09de96
 5b2ff09de8b:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
 5b2ff09de90:	0f 83 05 00 00 00                               	jae    0x5b2ff09de9b
 5b2ff09de96:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff09de9b:	4d 2b cf                                        	sub    r9,r15
 5b2ff09de9e:	4c 8b 7d 98                                     	mov    r15,QWORD PTR [rbp-0x68]
 5b2ff09dea2:	4c 2b 7d 90                                     	sub    r15,QWORD PTR [rbp-0x70]
 5b2ff09dea6:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
 5b2ff09deaa:	48 2b 75 a0                                     	sub    rsi,QWORD PTR [rbp-0x60]
 5b2ff09deae:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
 5b2ff09deb4:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
 5b2ff09deb9:	c4 c1 42 58 f9                                  	vaddss xmm7,xmm7,xmm9
 5b2ff09debe:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
 5b2ff09dec5:	4c 89 bd 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r15
 5b2ff09decc:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
 5b2ff09ded0:	41 8d 9f dc 36 00 00                            	lea    ebx,[r15+0x36dc]
 5b2ff09ded7:	48 89 9d a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rbx
 5b2ff09dede:	41 8d 9f 68 36 00 00                            	lea    ebx,[r15+0x3668]
 5b2ff09dee5:	48 89 9d 10 fc ff ff                            	mov    QWORD PTR [rbp-0x3f0],rbx
 5b2ff09deec:	41 8d 9f f4 35 00 00                            	lea    ebx,[r15+0x35f4]
 5b2ff09def3:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
 5b2ff09defa:	48 8b 9d a0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x160]
 5b2ff09df01:	48 c1 e3 09                                     	shl    rbx,0x9
 5b2ff09df05:	48 8b 95 78 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x188]
 5b2ff09df0c:	48 c1 e2 09                                     	shl    rdx,0x9
 5b2ff09df10:	48 89 5d a0                                     	mov    QWORD PTR [rbp-0x60],rbx
 5b2ff09df14:	48 8b 5d b8                                     	mov    rbx,QWORD PTR [rbp-0x48]
 5b2ff09df18:	48 c1 e3 09                                     	shl    rbx,0x9
 5b2ff09df1c:	48 89 5d b8                                     	mov    QWORD PTR [rbp-0x48],rbx
 5b2ff09df20:	48 8b 9d 88 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x178]
 5b2ff09df27:	48 c1 e3 09                                     	shl    rbx,0x9
 5b2ff09df2b:	48 89 b5 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rsi
 5b2ff09df32:	48 8b 75 a8                                     	mov    rsi,QWORD PTR [rbp-0x58]
 5b2ff09df36:	48 c1 e6 09                                     	shl    rsi,0x9
 5b2ff09df3a:	48 89 9d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rbx
 5b2ff09df41:	48 8b 5d c0                                     	mov    rbx,QWORD PTR [rbp-0x40]
 5b2ff09df45:	48 c1 e3 09                                     	shl    rbx,0x9
 5b2ff09df49:	48 89 5d 80                                     	mov    QWORD PTR [rbp-0x80],rbx
 5b2ff09df4d:	48 8b 9d a0 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x260]
 5b2ff09df54:	48 2b 9d 38 fd ff ff                            	sub    rbx,QWORD PTR [rbp-0x2c8]
 5b2ff09df5b:	48 89 9d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rbx
 5b2ff09df62:	48 8b 9d 30 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2d0]
 5b2ff09df69:	48 2b 9d 18 fd ff ff                            	sub    rbx,QWORD PTR [rbp-0x2e8]
 5b2ff09df70:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
 5b2ff09df77:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
 5b2ff09df7d:	48 89 55 b0                                     	mov    QWORD PTR [rbp-0x50],rdx
 5b2ff09df81:	8d 53 50                                        	lea    edx,[rbx+0x50]
 5b2ff09df84:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
 5b2ff09df8a:	48 89 95 00 fc ff ff                            	mov    QWORD PTR [rbp-0x400],rdx
 5b2ff09df91:	8d 53 50                                        	lea    edx,[rbx+0x50]
 5b2ff09df94:	8b 9d d0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x330]
 5b2ff09df9a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
 5b2ff09dfa1:	8d 53 50                                        	lea    edx,[rbx+0x50]
 5b2ff09dfa4:	41 8d 9f 80 35 00 00                            	lea    ebx,[r15+0x3580]
 5b2ff09dfab:	48 89 9d b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],rbx
 5b2ff09dfb2:	41 8d 9f cc 3c 00 00                            	lea    ebx,[r15+0x3ccc]
 5b2ff09dfb9:	48 f7 d0                                        	not    rax
 5b2ff09dfbc:	49 f7 d0                                        	not    r8
 5b2ff09dfbf:	49 f7 d3                                        	not    r11
 5b2ff09dfc2:	48 f7 d9                                        	neg    rcx
 5b2ff09dfc5:	48 f7 df                                        	neg    rdi
 5b2ff09dfc8:	49 f7 dc                                        	neg    r12
 5b2ff09dfcb:	44 8b 7d e0                                     	mov    r15d,DWORD PTR [rbp-0x20]
 5b2ff09dfcf:	48 89 85 d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rax
 5b2ff09dfd6:	41 8d 47 30                                     	lea    eax,[r15+0x30]
 5b2ff09dfda:	4c 89 85 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r8
 5b2ff09dfe1:	45 8d 47 20                                     	lea    r8d,[r15+0x20]
 5b2ff09dfe5:	4c 89 9d 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],r11
 5b2ff09dfec:	45 8d 5f 10                                     	lea    r11d,[r15+0x10]
 5b2ff09dff0:	c4 41 79 7e df                                  	vmovd  r15d,xmm11
 5b2ff09dff5:	48 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rcx
 5b2ff09dffc:	c4 63 79 16 d9 01                               	vpextrd ecx,xmm11,0x1
 5b2ff09e002:	c4 62 79 18 c8                                  	vbroadcastss xmm9,xmm0
 5b2ff09e007:	c4 42 79 18 da                                  	vbroadcastss xmm11,xmm10
 5b2ff09e00c:	c4 42 79 18 f4                                  	vbroadcastss xmm14,xmm12
 5b2ff09e011:	c4 c2 79 18 cd                                  	vbroadcastss xmm1,xmm13
 5b2ff09e016:	c4 e2 79 18 d6                                  	vbroadcastss xmm2,xmm6
 5b2ff09e01b:	c5 fb 11 bd e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm7
 5b2ff09e023:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
 5b2ff09e02a:	48 89 95 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],rdx
 5b2ff09e031:	48 89 9d 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],rbx
 5b2ff09e038:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
 5b2ff09e03f:	4c 89 a5 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r12
 5b2ff09e046:	48 89 85 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rax
 5b2ff09e04d:	4c 89 85 f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r8
 5b2ff09e054:	4c 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r11
 5b2ff09e05b:	4c 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],r15
 5b2ff09e05f:	48 89 4d c0                                     	mov    QWORD PTR [rbp-0x40],rcx
 5b2ff09e063:	c5 78 11 8d 70 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x290],xmm9
 5b2ff09e06b:	c5 78 11 9d 60 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2a0],xmm11
 5b2ff09e073:	c5 78 11 b5 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm14
 5b2ff09e07b:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
 5b2ff09e083:	c5 f8 11 95 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm2
 5b2ff09e08b:	33 c0                                           	xor    eax,eax
 5b2ff09e08d:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
 5b2ff09e094:	e9 3e 00 00 00                                  	jmp    0x5b2ff09e0d7
 5b2ff09e099:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff09e0a2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff09e0ab:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff09e0b4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff09e0bd:	0f 1f 00                                        	nop    DWORD PTR [rax]
 5b2ff09e0c0:	4c 89 9d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r11
 5b2ff09e0c7:	4c 89 bd 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r15
 5b2ff09e0ce:	44 8b f8                                        	mov    r15d,eax
 5b2ff09e0d1:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
 5b2ff09e0d7:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
 5b2ff09e0db:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
 5b2ff09e0e1:	48 8b 8d d8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x328]
 5b2ff09e0e8:	4c 89 bd e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r15
 5b2ff09e0ef:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff09e0f4:	0f 85 e1 86 00 00                               	jne    0x5b2ff0a67db
 5b2ff09e0fa:	45 8d 47 01                                     	lea    r8d,[r15+0x1]
 5b2ff09e0fe:	41 bb 0f 00 00 00                               	mov    r11d,0xf
 5b2ff09e104:	41 b9 03 00 00 00                               	mov    r9d,0x3
 5b2ff09e10a:	44 3b 45 c0                                     	cmp    r8d,DWORD PTR [rbp-0x40]
 5b2ff09e10e:	45 0f 4c cb                                     	cmovl  r9d,r11d
 5b2ff09e112:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
 5b2ff09e11a:	83 e2 7c                                        	and    edx,0x7c
 5b2ff09e11d:	46 8d 3c 85 00 00 00 00                         	lea    r15d,[r8*4+0x0]
 5b2ff09e125:	41 83 e7 7c                                     	and    r15d,0x7c
 5b2ff09e129:	4c 89 85 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r8
 5b2ff09e130:	4c 89 8d a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r9
 5b2ff09e137:	48 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdx
 5b2ff09e13e:	4c 89 bd 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],r15
 5b2ff09e145:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
 5b2ff09e14c:	48 8b 85 08 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xf8]
 5b2ff09e153:	4c 8b 4d a8                                     	mov    r9,QWORD PTR [rbp-0x58]
 5b2ff09e157:	4d 8b fb                                        	mov    r15,r11
 5b2ff09e15a:	4c 8b 9d 40 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x3c0]
 5b2ff09e161:	44 8b 85 38 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3c8]
 5b2ff09e168:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
 5b2ff09e16f:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
 5b2ff09e176:	48 8b d1                                        	mov    rdx,rcx
 5b2ff09e179:	e9 0f 00 00 00                                  	jmp    0x5b2ff09e18d
 5b2ff09e17e:	66 90                                           	xchg   ax,ax
 5b2ff09e180:	41 bf 0f 00 00 00                               	mov    r15d,0xf
 5b2ff09e186:	48 8b 95 d8 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x328]
 5b2ff09e18d:	48 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rax
 5b2ff09e194:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff09e199:	0f 85 ab 86 00 00                               	jne    0x5b2ff0a684a
 5b2ff09e19f:	49 8b db                                        	mov    rbx,r11
 5b2ff09e1a2:	48 2b 9d 18 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x3e8]
 5b2ff09e1a9:	48 3b 9d 28 fc ff ff                            	cmp    rbx,QWORD PTR [rbp-0x3d8]
 5b2ff09e1b0:	0f 8c b2 84 00 00                               	jl     0x5b2ff0a6668
 5b2ff09e1b6:	49 8b c9                                        	mov    rcx,r9
 5b2ff09e1b9:	48 2b 8d 88 fc ff ff                            	sub    rcx,QWORD PTR [rbp-0x378]
 5b2ff09e1c0:	48 3b 8d 98 fc ff ff                            	cmp    rcx,QWORD PTR [rbp-0x368]
 5b2ff09e1c7:	0f 8c 9b 84 00 00                               	jl     0x5b2ff0a6668
 5b2ff09e1cd:	48 2b 85 c8 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x338]
 5b2ff09e1d4:	48 3b 85 50 fc ff ff                            	cmp    rax,QWORD PTR [rbp-0x3b0]
 5b2ff09e1db:	0f 8c 87 84 00 00                               	jl     0x5b2ff0a6668
 5b2ff09e1e1:	41 8d 78 01                                     	lea    edi,[r8+0x1]
 5b2ff09e1e5:	41 bc 05 00 00 00                               	mov    r12d,0x5
 5b2ff09e1eb:	3b 7d 98                                        	cmp    edi,DWORD PTR [rbp-0x68]
 5b2ff09e1ee:	45 0f 4c e7                                     	cmovl  r12d,r15d
 5b2ff09e1f2:	44 8b bd a8 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x358]
 5b2ff09e1f9:	45 23 fc                                        	and    r15d,r12d
 5b2ff09e1fc:	48 3b 9d 20 fc ff ff                            	cmp    rbx,QWORD PTR [rbp-0x3e0]
 5b2ff09e203:	0f 8e 29 00 00 00                               	jle    0x5b2ff09e232
 5b2ff09e209:	48 3b 8d f8 fd ff ff                            	cmp    rcx,QWORD PTR [rbp-0x208]
 5b2ff09e210:	0f 8e 1c 00 00 00                               	jle    0x5b2ff09e232
 5b2ff09e216:	48 3b d0                                        	cmp    rdx,rax
 5b2ff09e219:	0f 8d 13 00 00 00                               	jge    0x5b2ff09e232
 5b2ff09e21f:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
 5b2ff09e226:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
 5b2ff09e22d:	e9 cd 01 00 00                                  	jmp    0x5b2ff09e3ff
 5b2ff09e232:	c4 e1 f9 6e d9                                  	vmovq  xmm3,rcx
 5b2ff09e237:	c5 fb 12 db                                     	vmovddup xmm3,xmm3
 5b2ff09e23b:	4c 8b e1                                        	mov    r12,rcx
 5b2ff09e23e:	4c 2b a5 38 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2c8]
 5b2ff09e245:	c4 c3 e1 22 dc 01                               	vpinsrq xmm3,xmm3,r12,0x1
 5b2ff09e24b:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
 5b2ff09e24f:	c5 d1 73 f5 1f                                  	vpsllq xmm5,xmm5,0x1f
 5b2ff09e254:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff09e258:	c4 e2 61 37 fd                                  	vpcmpgtq xmm7,xmm3,xmm5
 5b2ff09e25d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
 5b2ff09e261:	c5 e1 db ff                                     	vpand  xmm7,xmm3,xmm7
 5b2ff09e265:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff09e26a:	c5 e1 76 db                                     	vpcmpeqd xmm3,xmm3,xmm3
 5b2ff09e26e:	c5 e1 73 d3 21                                  	vpsrlq xmm3,xmm3,0x21
 5b2ff09e273:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff09e277:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
 5b2ff09e27c:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
 5b2ff09e280:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
 5b2ff09e285:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff09e28a:	48 03 ce                                        	add    rcx,rsi
 5b2ff09e28d:	c4 61 f9 6e c9                                  	vmovq  xmm9,rcx
 5b2ff09e292:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
 5b2ff09e297:	4c 03 e6                                        	add    r12,rsi
 5b2ff09e29a:	c4 43 b1 22 cc 01                               	vpinsrq xmm9,xmm9,r12,0x1
 5b2ff09e2a0:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
 5b2ff09e2a5:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
 5b2ff09e2a9:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
 5b2ff09e2ae:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff09e2b3:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
 5b2ff09e2b8:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
 5b2ff09e2bc:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
 5b2ff09e2c1:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff09e2c6:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
 5b2ff09e2cc:	c5 78 50 e7                                     	vmovmskps r12d,xmm7
 5b2ff09e2d0:	c4 e1 f9 6e fb                                  	vmovq  xmm7,rbx
 5b2ff09e2d5:	c5 fb 12 ff                                     	vmovddup xmm7,xmm7
 5b2ff09e2d9:	48 8b cb                                        	mov    rcx,rbx
 5b2ff09e2dc:	48 2b 8d 18 fd ff ff                            	sub    rcx,QWORD PTR [rbp-0x2e8]
 5b2ff09e2e3:	c4 e3 c1 22 f9 01                               	vpinsrq xmm7,xmm7,rcx,0x1
 5b2ff09e2e9:	c4 62 41 37 cd                                  	vpcmpgtq xmm9,xmm7,xmm5
 5b2ff09e2ee:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
 5b2ff09e2f2:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
 5b2ff09e2f7:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff09e2fc:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
 5b2ff09e301:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
 5b2ff09e305:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
 5b2ff09e30a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff09e30f:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
 5b2ff09e316:	48 03 da                                        	add    rbx,rdx
 5b2ff09e319:	c4 61 f9 6e cb                                  	vmovq  xmm9,rbx
 5b2ff09e31e:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
 5b2ff09e323:	48 8d 1c 0a                                     	lea    rbx,[rdx+rcx*1]
 5b2ff09e327:	c4 63 b1 22 cb 01                               	vpinsrq xmm9,xmm9,rbx,0x1
 5b2ff09e32d:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
 5b2ff09e332:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
 5b2ff09e336:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
 5b2ff09e33b:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff09e340:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
 5b2ff09e345:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
 5b2ff09e349:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
 5b2ff09e34e:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff09e353:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
 5b2ff09e359:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
 5b2ff09e35d:	41 0b dc                                        	or     ebx,r12d
 5b2ff09e360:	c4 e1 f9 6e f8                                  	vmovq  xmm7,rax
 5b2ff09e365:	c5 fb 12 ff                                     	vmovddup xmm7,xmm7
 5b2ff09e369:	4c 8b e0                                        	mov    r12,rax
 5b2ff09e36c:	4c 2b a5 00 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x300]
 5b2ff09e373:	c4 c3 c1 22 fc 01                               	vpinsrq xmm7,xmm7,r12,0x1
 5b2ff09e379:	c4 62 41 37 cd                                  	vpcmpgtq xmm9,xmm7,xmm5
 5b2ff09e37e:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
 5b2ff09e382:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
 5b2ff09e387:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff09e38c:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
 5b2ff09e391:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
 5b2ff09e395:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
 5b2ff09e39a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff09e39f:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
 5b2ff09e3a6:	48 03 c1                                        	add    rax,rcx
 5b2ff09e3a9:	c4 61 f9 6e c8                                  	vmovq  xmm9,rax
 5b2ff09e3ae:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
 5b2ff09e3b3:	4c 03 e1                                        	add    r12,rcx
 5b2ff09e3b6:	c4 43 b1 22 cc 01                               	vpinsrq xmm9,xmm9,r12,0x1
 5b2ff09e3bc:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
 5b2ff09e3c1:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
 5b2ff09e3c5:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
 5b2ff09e3ca:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff09e3cf:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
 5b2ff09e3d4:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
 5b2ff09e3d8:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
 5b2ff09e3dd:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff09e3e2:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
 5b2ff09e3e8:	c5 78 50 e7                                     	vmovmskps r12d,xmm7
 5b2ff09e3ec:	44 0b e3                                        	or     r12d,ebx
 5b2ff09e3ef:	41 83 f4 ff                                     	xor    r12d,0xffffffff
 5b2ff09e3f3:	45 23 e7                                        	and    r12d,r15d
 5b2ff09e3f6:	0f 84 6c 82 00 00                               	je     0x5b2ff0a6668
 5b2ff09e3fc:	4d 8b fc                                        	mov    r15,r12
 5b2ff09e3ff:	45 33 e4                                        	xor    r12d,r12d
 5b2ff09e402:	3b 7d 10                                        	cmp    edi,DWORD PTR [rbp+0x10]
 5b2ff09e405:	41 0f 9c c4                                     	setl   r12b
 5b2ff09e409:	4c 89 5d 88                                     	mov    QWORD PTR [rbp-0x78],r11
 5b2ff09e40d:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
 5b2ff09e414:	48 89 bd 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rdi
 5b2ff09e41b:	4c 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r15
 5b2ff09e422:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
 5b2ff09e428:	41 85 c4                                        	test   r12d,eax
 5b2ff09e42b:	0f 85 a1 65 00 00                               	jne    0x5b2ff0a49d2
 5b2ff09e431:	83 bd 30 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3d0],0x0
 5b2ff09e438:	0f 85 80 2a 00 00                               	jne    0x5b2ff0a0ebe
 5b2ff09e43e:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
 5b2ff09e442:	41 f6 c7 01                                     	test   r15b,0x1
 5b2ff09e446:	0f 85 22 00 00 00                               	jne    0x5b2ff09e46e
 5b2ff09e44c:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff09e450:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
 5b2ff09e454:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
 5b2ff09e45b:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
 5b2ff09e462:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff09e469:	e9 67 0a 00 00                                  	jmp    0x5b2ff09eed5
 5b2ff09e46e:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff09e472:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
 5b2ff09e476:	41 8b bc 1c c8 3c 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x3cc8]
 5b2ff09e47e:	41 83 bc 1c c8 3c 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x3cc8],0x0
 5b2ff09e487:	0f 85 0c 00 00 00                               	jne    0x5b2ff09e499
 5b2ff09e48d:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
 5b2ff09e494:	e9 4e 00 00 00                                  	jmp    0x5b2ff09e4e7
 5b2ff09e499:	41 8b f8                                        	mov    edi,r8d
 5b2ff09e49c:	c1 ef 03                                        	shr    edi,0x3
 5b2ff09e49f:	83 e7 03                                        	and    edi,0x3
 5b2ff09e4a2:	0b bd 68 fe ff ff                               	or     edi,DWORD PTR [rbp-0x198]
 5b2ff09e4a8:	44 8b bd 88 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x178]
 5b2ff09e4af:	41 03 ff                                        	add    edi,r15d
 5b2ff09e4b2:	41 0f b6 3c 3c                                  	movzx  edi,BYTE PTR [r12+rdi*1]
 5b2ff09e4b7:	45 8b f8                                        	mov    r15d,r8d
 5b2ff09e4ba:	41 83 e7 07                                     	and    r15d,0x7
 5b2ff09e4be:	41 8b cf                                        	mov    ecx,r15d
 5b2ff09e4c1:	d3 e7                                           	shl    edi,cl
 5b2ff09e4c3:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
 5b2ff09e4ca:	40 f6 c7 80                                     	test   dil,0x80
 5b2ff09e4ce:	0f 85 13 00 00 00                               	jne    0x5b2ff09e4e7
 5b2ff09e4d4:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
 5b2ff09e4db:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff09e4e2:	e9 ee 09 00 00                                  	jmp    0x5b2ff09eed5
 5b2ff09e4e7:	c4 c1 82 2a fb                                  	vcvtsi2ss xmm7,xmm15,r11
 5b2ff09e4ec:	c5 ca 59 ff                                     	vmulss xmm7,xmm6,xmm7
 5b2ff09e4f0:	c5 12 59 cf                                     	vmulss xmm9,xmm13,xmm7
 5b2ff09e4f4:	c4 41 82 2a d9                                  	vcvtsi2ss xmm11,xmm15,r9
 5b2ff09e4f9:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
 5b2ff09e4fe:	c4 c1 1a 59 db                                  	vmulss xmm3,xmm12,xmm11
 5b2ff09e503:	c5 b2 58 eb                                     	vaddss xmm5,xmm9,xmm3
 5b2ff09e507:	c5 ba 5c f7                                     	vsubss xmm6,xmm8,xmm7
 5b2ff09e50b:	c4 c1 4a 5c f3                                  	vsubss xmm6,xmm6,xmm11
 5b2ff09e510:	c5 2a 59 e6                                     	vmulss xmm12,xmm10,xmm6
 5b2ff09e514:	c4 c1 52 58 ec                                  	vaddss xmm5,xmm5,xmm12
 5b2ff09e519:	c5 f8 2e e5                                     	vucomiss xmm4,xmm5
 5b2ff09e51d:	73 b5                                           	jae    0x5b2ff09e4d4
 5b2ff09e51f:	c4 81 4a 59 74 3c 18                            	vmulss xmm6,xmm6,DWORD PTR [r12+r15*1+0x18]
 5b2ff09e526:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff09e52d:	c4 c1 42 59 7c 3c 18                            	vmulss xmm7,xmm7,DWORD PTR [r12+rdi*1+0x18]
 5b2ff09e534:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
 5b2ff09e53b:	c4 41 22 59 5c 0c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+rcx*1+0x18]
 5b2ff09e542:	c4 c1 42 58 fb                                  	vaddss xmm7,xmm7,xmm11
 5b2ff09e547:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff09e54b:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
 5b2ff09e54f:	45 8b 5c 1c 68                                  	mov    r11d,DWORD PTR [r12+rbx*1+0x68]
 5b2ff09e554:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
 5b2ff09e55a:	0f 84 c6 00 00 00                               	je     0x5b2ff09e626
 5b2ff09e560:	45 8b 9c 1c a4 00 00 00                         	mov    r11d,DWORD PTR [r12+rbx*1+0xa4]
 5b2ff09e568:	41 83 bc 1c a4 00 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0xa4],0x0
 5b2ff09e571:	0f 85 af 00 00 00                               	jne    0x5b2ff09e626
 5b2ff09e577:	45 8b 5c 1c 0c                                  	mov    r11d,DWORD PTR [r12+rbx*1+0xc]
 5b2ff09e57c:	41 8b 04 1c                                     	mov    eax,DWORD PTR [r12+rbx*1]
 5b2ff09e580:	0f af 85 e0 fc ff ff                            	imul   eax,DWORD PTR [rbp-0x320]
 5b2ff09e587:	45 8d 1c 83                                     	lea    r11d,[r11+rax*4]
 5b2ff09e58b:	47 8d 1c 83                                     	lea    r11d,[r11+r8*4]
 5b2ff09e58f:	c4 81 7a 10 3c 1c                               	vmovss xmm7,DWORD PTR [r12+r11*1]
 5b2ff09e595:	45 8b 5c 1c 6c                                  	mov    r11d,DWORD PTR [r12+rbx*1+0x6c]
 5b2ff09e59a:	41 81 eb 00 02 00 00                            	sub    r11d,0x200
 5b2ff09e5a1:	41 83 fb 08                                     	cmp    r11d,0x8
 5b2ff09e5a5:	0f 83 0b 00 00 00                               	jae    0x5b2ff09e5b6
 5b2ff09e5ab:	4c 8d 15 ce 86 00 00                            	lea    r10,[rip+0x86ce]        # 0x5b2ff0a6c80
 5b2ff09e5b2:	43 ff 24 da                                     	jmp    QWORD PTR [r10+r11*8]
 5b2ff09e5b6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09e5ba:	0f 87 66 00 00 00                               	ja     0x5b2ff09e626
 5b2ff09e5c0:	e9 10 09 00 00                                  	jmp    0x5b2ff09eed5
 5b2ff09e5c5:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
 5b2ff09e5c9:	0f 83 57 00 00 00                               	jae    0x5b2ff09e626
 5b2ff09e5cf:	e9 01 09 00 00                                  	jmp    0x5b2ff09eed5
 5b2ff09e5d4:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
 5b2ff09e5d8:	0f 8a 48 00 00 00                               	jp     0x5b2ff09e626
 5b2ff09e5de:	0f 84 f1 08 00 00                               	je     0x5b2ff09eed5
 5b2ff09e5e4:	e9 3d 00 00 00                                  	jmp    0x5b2ff09e626
 5b2ff09e5e9:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
 5b2ff09e5ed:	0f 87 33 00 00 00                               	ja     0x5b2ff09e626
 5b2ff09e5f3:	e9 dd 08 00 00                                  	jmp    0x5b2ff09eed5
 5b2ff09e5f8:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09e5fc:	0f 83 24 00 00 00                               	jae    0x5b2ff09e626
 5b2ff09e602:	e9 ce 08 00 00                                  	jmp    0x5b2ff09eed5
 5b2ff09e607:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
 5b2ff09e60b:	0f 8a c4 08 00 00                               	jp     0x5b2ff09eed5
 5b2ff09e611:	0f 84 0f 00 00 00                               	je     0x5b2ff09e626
 5b2ff09e617:	e9 b9 08 00 00                                  	jmp    0x5b2ff09eed5
 5b2ff09e61c:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09e620:	0f 86 af 08 00 00                               	jbe    0x5b2ff09eed5
 5b2ff09e626:	c5 ba 5e fd                                     	vdivss xmm7,xmm8,xmm5
 5b2ff09e62a:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
 5b2ff09e62e:	c4 62 79 18 df                                  	vbroadcastss xmm11,xmm7
 5b2ff09e633:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
 5b2ff09e63a:	c4 c2 79 18 c4                                  	vbroadcastss xmm0,xmm12
 5b2ff09e63f:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
 5b2ff09e643:	c4 c1 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+rdi*1+0x20]
 5b2ff09e64a:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
 5b2ff09e652:	c4 c2 79 18 f1                                  	vbroadcastss xmm6,xmm9
 5b2ff09e657:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
 5b2ff09e65b:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
 5b2ff09e660:	c5 fb 11 bd 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm7
 5b2ff09e668:	c4 c1 7a 6f 7c 0c 20                            	vmovdqu xmm7,XMMWORD PTR [r12+rcx*1+0x20]
 5b2ff09e66f:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
 5b2ff09e673:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
 5b2ff09e677:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff09e67b:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
 5b2ff09e67f:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff09e683:	c4 81 7a 7f 84 1c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x190],xmm0
 5b2ff09e68d:	c4 81 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+r15*1+0x98]
 5b2ff09e697:	c4 c1 7a 10 bc 3c 98 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rdi*1+0x98]
 5b2ff09e6a1:	c4 41 7a 10 9c 0c 98 00 00 00                   	vmovss xmm11,DWORD PTR [r12+rcx*1+0x98]
 5b2ff09e6ab:	c4 81 7a 7f 04 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm0
 5b2ff09e6b1:	48 8b 85 a8 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x258]
 5b2ff09e6b8:	41 8b bc 04 34 01 00 00                         	mov    edi,DWORD PTR [r12+rax*1+0x134]
 5b2ff09e6c0:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
 5b2ff09e6c4:	c5 fb 11 9d 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm3
 5b2ff09e6cc:	c5 7b 11 8d a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm9
 5b2ff09e6d4:	c5 7b 11 a5 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm12
 5b2ff09e6dc:	c5 fb 11 b5 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm6
 5b2ff09e6e4:	c5 fb 11 bd 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm7
 5b2ff09e6ec:	c5 7b 11 9d 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm11
 5b2ff09e6f4:	41 83 f8 01                                     	cmp    r8d,0x1
 5b2ff09e6f8:	0f 86 64 04 00 00                               	jbe    0x5b2ff09eb62
 5b2ff09e6fe:	41 8b bc 04 30 01 00 00                         	mov    edi,DWORD PTR [r12+rax*1+0x130]
 5b2ff09e706:	41 83 bc 04 30 01 00 00 00                      	cmp    DWORD PTR [r12+rax*1+0x130],0x0
 5b2ff09e70f:	0f 85 0e 00 00 00                               	jne    0x5b2ff09e723
 5b2ff09e715:	41 8b cb                                        	mov    ecx,r11d
 5b2ff09e718:	4d 8b c4                                        	mov    r8,r12
 5b2ff09e71b:	48 8b f8                                        	mov    rdi,rax
 5b2ff09e71e:	e9 02 05 00 00                                  	jmp    0x5b2ff09ec25
 5b2ff09e723:	41 8d bb 90 00 00 00                            	lea    edi,[r11+0x90]
 5b2ff09e72a:	45 8d 43 70                                     	lea    r8d,[r11+0x70]
 5b2ff09e72e:	41 50                                           	push   r8
 5b2ff09e730:	48 89 bd a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rdi
 5b2ff09e737:	4c 8b c2                                        	mov    r8,rdx
 5b2ff09e73a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09e73e:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff09e741:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
 5b2ff09e747:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
 5b2ff09e74d:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
 5b2ff09e753:	c4 c1 79 28 c9                                  	vmovapd xmm1,xmm9
 5b2ff09e758:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
 5b2ff09e75c:	c4 c1 79 28 dc                                  	vmovapd xmm3,xmm12
 5b2ff09e761:	c5 fb 10 a5 30 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xd0]
 5b2ff09e769:	44 8b cf                                        	mov    r9d,edi
 5b2ff09e76c:	e8 a7 ca f2 ff                                  	call   0x5b2fefcb218
 5b2ff09e771:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09e775:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09e77c:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
 5b2ff09e784:	45 85 db                                        	test   r11d,r11d
 5b2ff09e787:	0f 85 61 01 00 00                               	jne    0x5b2ff09e8ee
 5b2ff09e78d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09e790:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
 5b2ff09e795:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
 5b2ff09e79b:	0f 84 43 00 00 00                               	je     0x5b2ff09e7e4
 5b2ff09e7a1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09e7a7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09e7ab:	41 53                                           	push   r11
 5b2ff09e7ad:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09e7b1:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
 5b2ff09e7b7:	33 d2                                           	xor    edx,edx
 5b2ff09e7b9:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
 5b2ff09e7c0:	e8 7b ca f2 ff                                  	call   0x5b2fefcb240
 5b2ff09e7c5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09e7c8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09e7cc:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09e7d3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09e7dd:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09e7e4:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
 5b2ff09e7e9:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
 5b2ff09e7ef:	0f 84 46 00 00 00                               	je     0x5b2ff09e83b
 5b2ff09e7f5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09e7fb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09e7ff:	41 53                                           	push   r11
 5b2ff09e801:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09e805:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
 5b2ff09e80b:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff09e810:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
 5b2ff09e817:	e8 24 ca f2 ff                                  	call   0x5b2fefcb240
 5b2ff09e81c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09e81f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09e823:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09e82a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09e834:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09e83b:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
 5b2ff09e840:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
 5b2ff09e846:	0f 84 46 00 00 00                               	je     0x5b2ff09e892
 5b2ff09e84c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09e852:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09e856:	41 53                                           	push   r11
 5b2ff09e858:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09e85c:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
 5b2ff09e862:	ba 02 00 00 00                                  	mov    edx,0x2
 5b2ff09e867:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
 5b2ff09e86e:	e8 cd c9 f2 ff                                  	call   0x5b2fefcb240
 5b2ff09e873:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09e876:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09e87a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09e881:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09e88b:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09e892:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
 5b2ff09e897:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
 5b2ff09e89d:	0f 84 82 03 00 00                               	je     0x5b2ff09ec25
 5b2ff09e8a3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09e8a9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09e8ad:	41 53                                           	push   r11
 5b2ff09e8af:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09e8b3:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
 5b2ff09e8b9:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff09e8be:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
 5b2ff09e8c5:	e8 76 c9 f2 ff                                  	call   0x5b2fefcb240
 5b2ff09e8ca:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09e8cd:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09e8d1:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09e8d8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09e8e2:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09e8e9:	e9 37 03 00 00                                  	jmp    0x5b2ff09ec25
 5b2ff09e8ee:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09e8f1:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
 5b2ff09e8fb:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
 5b2ff09e901:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff09e906:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09e90a:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
 5b2ff09e911:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff09e915:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff09e919:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
 5b2ff09e923:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff09e927:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
 5b2ff09e92d:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff09e931:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
 5b2ff09e936:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
 5b2ff09e940:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff09e944:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
 5b2ff09e94b:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
 5b2ff09e94f:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
 5b2ff09e953:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
 5b2ff09e957:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09e95b:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
 5b2ff09e961:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff09e966:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
 5b2ff09e96a:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff09e96e:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff09e973:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff09e978:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
 5b2ff09e97c:	0f 87 09 00 00 00                               	ja     0x5b2ff09e98b
 5b2ff09e982:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff09e986:	e9 04 00 00 00                                  	jmp    0x5b2ff09e98f
 5b2ff09e98b:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff09e98f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff09e994:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff09e998:	0f 87 09 00 00 00                               	ja     0x5b2ff09e9a7
 5b2ff09e99e:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff09e9a2:	e9 05 00 00 00                                  	jmp    0x5b2ff09e9ac
 5b2ff09e9a7:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff09e9ac:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff09e9b1:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff09e9b5:	0f 84 a4 00 00 00                               	je     0x5b2ff09ea5f
 5b2ff09e9bb:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
 5b2ff09e9bf:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
 5b2ff09e9c9:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09e9cd:	0f 87 09 00 00 00                               	ja     0x5b2ff09e9dc
 5b2ff09e9d3:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff09e9d7:	e9 04 00 00 00                                  	jmp    0x5b2ff09e9e0
 5b2ff09e9dc:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff09e9e0:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09e9e4:	0f 87 0a 00 00 00                               	ja     0x5b2ff09e9f4
 5b2ff09e9ea:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff09e9ef:	e9 05 00 00 00                                  	jmp    0x5b2ff09e9f9
 5b2ff09e9f4:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09e9f9:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
 5b2ff09e9fd:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff09ea02:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff09ea07:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff09ea0b:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
 5b2ff09ea15:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff09ea1a:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff09ea1f:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff09ea23:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
 5b2ff09ea2d:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff09ea31:	0f 85 04 00 00 00                               	jne    0x5b2ff09ea3b
 5b2ff09ea37:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
 5b2ff09ea3b:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff09ea40:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff09ea44:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff09ea48:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
 5b2ff09ea52:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff09ea57:	4d 8b dc                                        	mov    r11,r12
 5b2ff09ea5a:	e9 cc 00 00 00                                  	jmp    0x5b2ff09eb2b
 5b2ff09ea5f:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
 5b2ff09ea66:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09ea6a:	0f 87 09 00 00 00                               	ja     0x5b2ff09ea79
 5b2ff09ea70:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff09ea74:	e9 04 00 00 00                                  	jmp    0x5b2ff09ea7d
 5b2ff09ea79:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff09ea7d:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09ea81:	0f 87 0a 00 00 00                               	ja     0x5b2ff09ea91
 5b2ff09ea87:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff09ea8c:	e9 05 00 00 00                                  	jmp    0x5b2ff09ea96
 5b2ff09ea91:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09ea96:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
 5b2ff09eaa0:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
 5b2ff09eaa6:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
 5b2ff09eaab:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09eaaf:	0f 87 09 00 00 00                               	ja     0x5b2ff09eabe
 5b2ff09eab5:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff09eab9:	e9 04 00 00 00                                  	jmp    0x5b2ff09eac2
 5b2ff09eabe:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff09eac2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09eac6:	0f 87 0a 00 00 00                               	ja     0x5b2ff09ead6
 5b2ff09eacc:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff09ead1:	e9 05 00 00 00                                  	jmp    0x5b2ff09eadb
 5b2ff09ead6:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09eadb:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
 5b2ff09eae5:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff09eaea:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff09eaee:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
 5b2ff09eaf8:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff09eafd:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff09eb02:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff09eb06:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x5b2ff09ea0d
 5b2ff09eb0d:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff09eb12:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff09eb17:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff09eb1b:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff09eb1f:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff09eb23:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff09eb27:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff09eb2b:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff09eb30:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff09eb34:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x5b2ff09ea0d
 5b2ff09eb3b:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff09eb40:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff09eb45:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
 5b2ff09eb49:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09eb53:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
 5b2ff09eb5d:	e9 c3 00 00 00                                  	jmp    0x5b2ff09ec25
 5b2ff09eb62:	4d 8b c7                                        	mov    r8,r15
 5b2ff09eb65:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
 5b2ff09eb6c:	c4 c1 7a 59 c4                                  	vmulss xmm0,xmm0,xmm12
 5b2ff09eb71:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
 5b2ff09eb78:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
 5b2ff09eb7f:	c4 c1 52 59 e9                                  	vmulss xmm5,xmm5,xmm9
 5b2ff09eb84:	c4 c1 62 59 74 0c 50                            	vmulss xmm6,xmm3,DWORD PTR [r12+rcx*1+0x50]
 5b2ff09eb8b:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
 5b2ff09eb8f:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09eb93:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
 5b2ff09eb9b:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff09eb9f:	c4 81 7a 10 6c 04 54                            	vmovss xmm5,DWORD PTR [r12+r8*1+0x54]
 5b2ff09eba6:	c4 c1 52 59 ec                                  	vmulss xmm5,xmm5,xmm12
 5b2ff09ebab:	c5 fb 11 85 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm0
 5b2ff09ebb3:	c4 81 7a 10 44 3c 54                            	vmovss xmm0,DWORD PTR [r12+r15*1+0x54]
 5b2ff09ebba:	c4 c1 7a 59 c1                                  	vmulss xmm0,xmm0,xmm9
 5b2ff09ebbf:	c4 c1 62 59 7c 0c 54                            	vmulss xmm7,xmm3,DWORD PTR [r12+rcx*1+0x54]
 5b2ff09ebc6:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
 5b2ff09ebca:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
 5b2ff09ebce:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff09ebd2:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
 5b2ff09ebd9:	41 8d bb 90 00 00 00                            	lea    edi,[r11+0x90]
 5b2ff09ebe0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09ebe4:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff09ebe7:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
 5b2ff09ebed:	c5 fb 10 8d a8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x158]
 5b2ff09ebf5:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
 5b2ff09ebf9:	41 8b cb                                        	mov    ecx,r11d
 5b2ff09ebfc:	8b df                                           	mov    ebx,edi
 5b2ff09ebfe:	e8 2d c9 f2 ff                                  	call   0x5b2fefcb530
 5b2ff09ec03:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09ec06:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09ec0a:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
 5b2ff09ec14:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09ec1e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09ec25:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff09ec29:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
 5b2ff09ec31:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
 5b2ff09ec3a:	0f 85 2a 00 00 00                               	jne    0x5b2ff09ec6a
 5b2ff09ec40:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
 5b2ff09ec4a:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
 5b2ff09ec54:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff09ec5e:	49 8b fb                                        	mov    rdi,r11
 5b2ff09ec61:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff09ec65:	e9 d4 01 00 00                                  	jmp    0x5b2ff09ee3e
 5b2ff09ec6a:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
 5b2ff09ec72:	c5 fa 59 85 f0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x210]
 5b2ff09ec7a:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
 5b2ff09ec82:	c5 ca 59 b5 a0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x160]
 5b2ff09ec8a:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
 5b2ff09ec92:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
 5b2ff09ec9a:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff09ec9e:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09eca2:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
 5b2ff09ecaa:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff09ecae:	4c 8b 15 71 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe871]        # 0x5b2ff09d526
 5b2ff09ecb5:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff09ecba:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
 5b2ff09ecbe:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff09ecc2:	0f 87 04 00 00 00                               	ja     0x5b2ff09eccc
 5b2ff09ecc8:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff09eccc:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
 5b2ff09ecd4:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
 5b2ff09ecdb:	0f 85 28 00 00 00                               	jne    0x5b2ff09ed09
 5b2ff09ece1:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
 5b2ff09eceb:	4c 8b 15 34 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe834]        # 0x5b2ff09d526
 5b2ff09ecf2:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff09ecf7:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
 5b2ff09ecfb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09ecff:	e8 b4 e8 f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff09ed04:	e9 8b 00 00 00                                  	jmp    0x5b2ff09ed94
 5b2ff09ed09:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff09ed0d:	0f 84 5e 00 00 00                               	je     0x5b2ff09ed71
 5b2ff09ed13:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
 5b2ff09ed1d:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
 5b2ff09ed27:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
 5b2ff09ed2c:	7a 06                                           	jp     0x5b2ff09ed34
 5b2ff09ed2e:	0f 84 2a 00 00 00                               	je     0x5b2ff09ed5e
 5b2ff09ed34:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff09ed38:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
 5b2ff09ed3d:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
 5b2ff09ed41:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
 5b2ff09ed45:	0f 86 49 00 00 00                               	jbe    0x5b2ff09ed94
 5b2ff09ed4b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff09ed4f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff09ed54:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff09ed59:	e9 5b 00 00 00                                  	jmp    0x5b2ff09edb9
 5b2ff09ed5e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff09ed62:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff09ed67:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff09ed6c:	e9 44 00 00 00                                  	jmp    0x5b2ff09edb5
 5b2ff09ed71:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
 5b2ff09ed7b:	4c 8b 15 a4 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a4]        # 0x5b2ff09d526
 5b2ff09ed82:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff09ed87:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
 5b2ff09ed8b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09ed8f:	e8 24 e8 f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff09ed94:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff09ed98:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff09ed9d:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff09eda2:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
 5b2ff09eda6:	0f 87 09 00 00 00                               	ja     0x5b2ff09edb5
 5b2ff09edac:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
 5b2ff09edb0:	e9 04 00 00 00                                  	jmp    0x5b2ff09edb9
 5b2ff09edb5:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff09edb9:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09edbc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09edc0:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff09edca:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
 5b2ff09edce:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
 5b2ff09edd2:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
 5b2ff09eddc:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
 5b2ff09ede1:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
 5b2ff09edeb:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
 5b2ff09edf5:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
 5b2ff09edff:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
 5b2ff09ee04:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
 5b2ff09ee0e:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
 5b2ff09ee18:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
 5b2ff09ee22:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
 5b2ff09ee27:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
 5b2ff09ee31:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff09ee35:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff09ee39:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff09ee3e:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
 5b2ff09ee48:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09ee4c:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff09ee4f:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
 5b2ff09ee52:	8b 8d e0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x320]
 5b2ff09ee58:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
 5b2ff09ee60:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
 5b2ff09ee64:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
 5b2ff09ee68:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
 5b2ff09ee6d:	e8 ee c3 f2 ff                                  	call   0x5b2fefcb260
 5b2ff09ee72:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff09ee76:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
 5b2ff09ee7a:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff09ee7e:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
 5b2ff09ee85:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff09ee8a:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff09ee90:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff09ee96:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff09ee9a:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
 5b2ff09eea1:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
 5b2ff09eea8:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff09eeaf:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
 5b2ff09eeb6:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
 5b2ff09eebd:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff09eec5:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff09eecd:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff09eed5:	f6 85 b0 fd ff ff 02                            	test   BYTE PTR [rbp-0x250],0x2
 5b2ff09eedc:	0f 85 29 00 00 00                               	jne    0x5b2ff09ef0b
 5b2ff09eee2:	4d 8b dc                                        	mov    r11,r12
 5b2ff09eee5:	4c 8b e3                                        	mov    r12,rbx
 5b2ff09eee8:	48 8b c1                                        	mov    rax,rcx
 5b2ff09eeeb:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff09eef1:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
 5b2ff09eef9:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff09ef01:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
 5b2ff09ef06:	e9 ab 0a 00 00                                  	jmp    0x5b2ff09f9b6
 5b2ff09ef0b:	4d 8b dc                                        	mov    r11,r12
 5b2ff09ef0e:	4c 8b e3                                        	mov    r12,rbx
 5b2ff09ef11:	43 8b 84 23 c8 3c 00 00                         	mov    eax,DWORD PTR [r11+r12*1+0x3cc8]
 5b2ff09ef19:	43 83 bc 23 c8 3c 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0x3cc8],0x0
 5b2ff09ef22:	0f 84 6e 00 00 00                               	je     0x5b2ff09ef96
 5b2ff09ef28:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
 5b2ff09ef2e:	c1 e8 03                                        	shr    eax,0x3
 5b2ff09ef31:	83 e0 03                                        	and    eax,0x3
 5b2ff09ef34:	8b 9d 68 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x198]
 5b2ff09ef3a:	0b d8                                           	or     ebx,eax
 5b2ff09ef3c:	8b 85 88 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x178]
 5b2ff09ef42:	03 d8                                           	add    ebx,eax
 5b2ff09ef44:	41 0f b6 1c 1b                                  	movzx  ebx,BYTE PTR [r11+rbx*1]
 5b2ff09ef49:	44 8b 85 58 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xa8]
 5b2ff09ef50:	41 83 e0 07                                     	and    r8d,0x7
 5b2ff09ef54:	4c 8b d1                                        	mov    r10,rcx
 5b2ff09ef57:	41 8b c8                                        	mov    ecx,r8d
 5b2ff09ef5a:	4d 8b c2                                        	mov    r8,r10
 5b2ff09ef5d:	d3 e3                                           	shl    ebx,cl
 5b2ff09ef5f:	f6 c3 80                                        	test   bl,0x80
 5b2ff09ef62:	0f 85 27 00 00 00                               	jne    0x5b2ff09ef8f
 5b2ff09ef68:	49 8b c0                                        	mov    rax,r8
 5b2ff09ef6b:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff09ef6f:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff09ef75:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
 5b2ff09ef7d:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff09ef85:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
 5b2ff09ef8a:	e9 27 0a 00 00                                  	jmp    0x5b2ff09f9b6
 5b2ff09ef8f:	49 8b c8                                        	mov    rcx,r8
 5b2ff09ef92:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff09ef96:	48 8b 45 88                                     	mov    rax,QWORD PTR [rbp-0x78]
 5b2ff09ef9a:	48 2b 85 18 fd ff ff                            	sub    rax,QWORD PTR [rbp-0x2e8]
 5b2ff09efa1:	c4 e1 82 2a f0                                  	vcvtsi2ss xmm6,xmm15,rax
 5b2ff09efa6:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
 5b2ff09efae:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
 5b2ff09efb2:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
 5b2ff09efb7:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
 5b2ff09efbb:	49 8b c1                                        	mov    rax,r9
 5b2ff09efbe:	48 2b 85 38 fd ff ff                            	sub    rax,QWORD PTR [rbp-0x2c8]
 5b2ff09efc5:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
 5b2ff09efca:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
 5b2ff09efcf:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff09efd7:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
 5b2ff09efdc:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
 5b2ff09efe0:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
 5b2ff09efe4:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
 5b2ff09efe9:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
 5b2ff09efee:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
 5b2ff09eff2:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
 5b2ff09eff7:	0f 83 b0 09 00 00                               	jae    0x5b2ff09f9ad
 5b2ff09effd:	c4 01 0a 59 74 3b 18                            	vmulss xmm14,xmm14,DWORD PTR [r11+r15*1+0x18]
 5b2ff09f004:	c4 c1 4a 59 74 3b 18                            	vmulss xmm6,xmm6,DWORD PTR [r11+rdi*1+0x18]
 5b2ff09f00b:	48 8b c1                                        	mov    rax,rcx
 5b2ff09f00e:	c4 41 22 59 5c 03 18                            	vmulss xmm11,xmm11,DWORD PTR [r11+rax*1+0x18]
 5b2ff09f015:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
 5b2ff09f01a:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
 5b2ff09f01e:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
 5b2ff09f022:	43 8b 5c 23 68                                  	mov    ebx,DWORD PTR [r11+r12*1+0x68]
 5b2ff09f027:	43 83 7c 23 68 00                               	cmp    DWORD PTR [r11+r12*1+0x68],0x0
 5b2ff09f02d:	0f 85 0b 00 00 00                               	jne    0x5b2ff09f03e
 5b2ff09f033:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff09f039:	e9 c8 00 00 00                                  	jmp    0x5b2ff09f106
 5b2ff09f03e:	43 8b 9c 23 a4 00 00 00                         	mov    ebx,DWORD PTR [r11+r12*1+0xa4]
 5b2ff09f046:	43 83 bc 23 a4 00 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0xa4],0x0
 5b2ff09f04f:	75 e2                                           	jne    0x5b2ff09f033
 5b2ff09f051:	43 8b 5c 23 0c                                  	mov    ebx,DWORD PTR [r11+r12*1+0xc]
 5b2ff09f056:	43 8b 0c 23                                     	mov    ecx,DWORD PTR [r11+r12*1]
 5b2ff09f05a:	0f af 8d e0 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x320]
 5b2ff09f061:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
 5b2ff09f064:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff09f06a:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
 5b2ff09f06d:	c4 41 7a 10 1c 1b                               	vmovss xmm11,DWORD PTR [r11+rbx*1]
 5b2ff09f073:	43 8b 5c 23 6c                                  	mov    ebx,DWORD PTR [r11+r12*1+0x6c]
 5b2ff09f078:	81 eb 00 02 00 00                               	sub    ebx,0x200
 5b2ff09f07e:	83 fb 08                                        	cmp    ebx,0x8
 5b2ff09f081:	0f 83 0b 00 00 00                               	jae    0x5b2ff09f092
 5b2ff09f087:	4c 8d 15 b2 7b 00 00                            	lea    r10,[rip+0x7bb2]        # 0x5b2ff0a6c40
 5b2ff09f08e:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
 5b2ff09f092:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff09f096:	0f 87 6a 00 00 00                               	ja     0x5b2ff09f106
 5b2ff09f09c:	e9 15 09 00 00                                  	jmp    0x5b2ff09f9b6
 5b2ff09f0a1:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff09f0a6:	0f 83 5a 00 00 00                               	jae    0x5b2ff09f106
 5b2ff09f0ac:	e9 05 09 00 00                                  	jmp    0x5b2ff09f9b6
 5b2ff09f0b1:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff09f0b6:	0f 8a 4a 00 00 00                               	jp     0x5b2ff09f106
 5b2ff09f0bc:	0f 84 f4 08 00 00                               	je     0x5b2ff09f9b6
 5b2ff09f0c2:	e9 3f 00 00 00                                  	jmp    0x5b2ff09f106
 5b2ff09f0c7:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff09f0cc:	0f 87 34 00 00 00                               	ja     0x5b2ff09f106
 5b2ff09f0d2:	e9 df 08 00 00                                  	jmp    0x5b2ff09f9b6
 5b2ff09f0d7:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff09f0db:	0f 83 25 00 00 00                               	jae    0x5b2ff09f106
 5b2ff09f0e1:	e9 d0 08 00 00                                  	jmp    0x5b2ff09f9b6
 5b2ff09f0e6:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff09f0eb:	0f 8a c5 08 00 00                               	jp     0x5b2ff09f9b6
 5b2ff09f0f1:	0f 84 0f 00 00 00                               	je     0x5b2ff09f106
 5b2ff09f0f7:	e9 ba 08 00 00                                  	jmp    0x5b2ff09f9b6
 5b2ff09f0fc:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff09f100:	0f 86 b0 08 00 00                               	jbe    0x5b2ff09f9b6
 5b2ff09f106:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
 5b2ff09f10b:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
 5b2ff09f110:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
 5b2ff09f115:	c4 01 7a 6f 74 3b 20                            	vmovdqu xmm14,XMMWORD PTR [r11+r15*1+0x20]
 5b2ff09f11c:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
 5b2ff09f121:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
 5b2ff09f125:	c4 c1 7a 6f 6c 3b 20                            	vmovdqu xmm5,XMMWORD PTR [r11+rdi*1+0x20]
 5b2ff09f12c:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff09f131:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
 5b2ff09f135:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
 5b2ff09f13a:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
 5b2ff09f142:	c4 c1 7a 6f 74 03 20                            	vmovdqu xmm6,XMMWORD PTR [r11+rax*1+0x20]
 5b2ff09f149:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
 5b2ff09f14d:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff09f151:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
 5b2ff09f155:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
 5b2ff09f159:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
 5b2ff09f15c:	c4 c1 7a 7f 84 1b 90 01 00 00                   	vmovdqu XMMWORD PTR [r11+rbx*1+0x190],xmm0
 5b2ff09f166:	c4 81 7a 10 b4 3b 98 00 00 00                   	vmovss xmm6,DWORD PTR [r11+r15*1+0x98]
 5b2ff09f170:	c4 41 7a 10 ac 3b 98 00 00 00                   	vmovss xmm13,DWORD PTR [r11+rdi*1+0x98]
 5b2ff09f17a:	c4 41 7a 10 b4 03 98 00 00 00                   	vmovss xmm14,DWORD PTR [r11+rax*1+0x98]
 5b2ff09f184:	c4 c1 7a 7f 04 1b                               	vmovdqu XMMWORD PTR [r11+rbx*1],xmm0
 5b2ff09f18a:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09f191:	45 8b 84 3b 34 01 00 00                         	mov    r8d,DWORD PTR [r11+rdi*1+0x134]
 5b2ff09f199:	45 8d 60 ff                                     	lea    r12d,[r8-0x1]
 5b2ff09f19d:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
 5b2ff09f1a5:	c5 fb 11 8d a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm1
 5b2ff09f1ad:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
 5b2ff09f1b5:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
 5b2ff09f1bd:	c5 fb 11 b5 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm6
 5b2ff09f1c5:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
 5b2ff09f1cd:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
 5b2ff09f1d5:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff09f1d9:	0f 86 50 04 00 00                               	jbe    0x5b2ff09f62f
 5b2ff09f1df:	45 8b 84 3b 30 01 00 00                         	mov    r8d,DWORD PTR [r11+rdi*1+0x130]
 5b2ff09f1e7:	41 83 bc 3b 30 01 00 00 00                      	cmp    DWORD PTR [r11+rdi*1+0x130],0x0
 5b2ff09f1f0:	0f 85 0a 00 00 00                               	jne    0x5b2ff09f200
 5b2ff09f1f6:	8b cb                                           	mov    ecx,ebx
 5b2ff09f1f8:	4d 8b c3                                        	mov    r8,r11
 5b2ff09f1fb:	e9 df 04 00 00                                  	jmp    0x5b2ff09f6df
 5b2ff09f200:	44 8d 83 90 00 00 00                            	lea    r8d,[rbx+0x90]
 5b2ff09f207:	44 8d 63 70                                     	lea    r12d,[rbx+0x70]
 5b2ff09f20b:	41 54                                           	push   r12
 5b2ff09f20d:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
 5b2ff09f214:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f218:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff09f21b:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
 5b2ff09f221:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
 5b2ff09f227:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
 5b2ff09f22d:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff09f232:	45 8b c8                                        	mov    r9d,r8d
 5b2ff09f235:	e8 de bf f2 ff                                  	call   0x5b2fefcb218
 5b2ff09f23a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09f23e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09f245:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
 5b2ff09f24d:	45 85 db                                        	test   r11d,r11d
 5b2ff09f250:	0f 85 62 01 00 00                               	jne    0x5b2ff09f3b8
 5b2ff09f256:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09f259:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
 5b2ff09f25e:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
 5b2ff09f264:	0f 84 43 00 00 00                               	je     0x5b2ff09f2ad
 5b2ff09f26a:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09f270:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09f274:	41 53                                           	push   r11
 5b2ff09f276:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f27a:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
 5b2ff09f280:	33 d2                                           	xor    edx,edx
 5b2ff09f282:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
 5b2ff09f289:	e8 b2 bf f2 ff                                  	call   0x5b2fefcb240
 5b2ff09f28e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09f291:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09f295:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09f29c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09f2a6:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09f2ad:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
 5b2ff09f2b2:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
 5b2ff09f2b8:	0f 84 46 00 00 00                               	je     0x5b2ff09f304
 5b2ff09f2be:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09f2c4:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09f2c8:	41 53                                           	push   r11
 5b2ff09f2ca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f2ce:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
 5b2ff09f2d4:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff09f2d9:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
 5b2ff09f2e0:	e8 5b bf f2 ff                                  	call   0x5b2fefcb240
 5b2ff09f2e5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09f2e8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09f2ec:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09f2f3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09f2fd:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09f304:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
 5b2ff09f309:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
 5b2ff09f30f:	0f 84 46 00 00 00                               	je     0x5b2ff09f35b
 5b2ff09f315:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09f31b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09f31f:	41 53                                           	push   r11
 5b2ff09f321:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f325:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
 5b2ff09f32b:	ba 02 00 00 00                                  	mov    edx,0x2
 5b2ff09f330:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
 5b2ff09f337:	e8 04 bf f2 ff                                  	call   0x5b2fefcb240
 5b2ff09f33c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09f33f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09f343:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09f34a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09f354:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09f35b:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
 5b2ff09f360:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
 5b2ff09f366:	0f 84 73 03 00 00                               	je     0x5b2ff09f6df
 5b2ff09f36c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09f372:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09f376:	41 53                                           	push   r11
 5b2ff09f378:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f37c:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
 5b2ff09f382:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff09f387:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
 5b2ff09f38e:	e8 ad be f2 ff                                  	call   0x5b2fefcb240
 5b2ff09f393:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09f396:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
 5b2ff09f39a:	c5 fa 6f 44 0e 50                               	vmovdqu xmm0,XMMWORD PTR [rsi+rcx*1+0x50]
 5b2ff09f3a0:	c5 fa 7f 84 0e 90 01 00 00                      	vmovdqu XMMWORD PTR [rsi+rcx*1+0x190],xmm0
 5b2ff09f3a9:	4c 8b c6                                        	mov    r8,rsi
 5b2ff09f3ac:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09f3b3:	e9 27 03 00 00                                  	jmp    0x5b2ff09f6df
 5b2ff09f3b8:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09f3bb:	4d 8b e0                                        	mov    r12,r8
 5b2ff09f3be:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
 5b2ff09f3c8:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
 5b2ff09f3ce:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff09f3d3:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09f3d7:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
 5b2ff09f3de:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff09f3e2:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff09f3e6:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
 5b2ff09f3f0:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff09f3f4:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
 5b2ff09f3fa:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff09f3fe:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
 5b2ff09f403:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
 5b2ff09f40d:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff09f411:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
 5b2ff09f418:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
 5b2ff09f41c:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
 5b2ff09f420:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
 5b2ff09f424:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09f428:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
 5b2ff09f42e:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff09f433:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
 5b2ff09f437:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff09f43b:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff09f440:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff09f445:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
 5b2ff09f449:	0f 87 09 00 00 00                               	ja     0x5b2ff09f458
 5b2ff09f44f:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff09f453:	e9 04 00 00 00                                  	jmp    0x5b2ff09f45c
 5b2ff09f458:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff09f45c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff09f461:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff09f465:	0f 87 09 00 00 00                               	ja     0x5b2ff09f474
 5b2ff09f46b:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff09f46f:	e9 05 00 00 00                                  	jmp    0x5b2ff09f479
 5b2ff09f474:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff09f479:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff09f47e:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff09f482:	0f 84 a1 00 00 00                               	je     0x5b2ff09f529
 5b2ff09f488:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
 5b2ff09f48c:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
 5b2ff09f496:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09f49a:	0f 87 09 00 00 00                               	ja     0x5b2ff09f4a9
 5b2ff09f4a0:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff09f4a4:	e9 04 00 00 00                                  	jmp    0x5b2ff09f4ad
 5b2ff09f4a9:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff09f4ad:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09f4b1:	0f 87 0a 00 00 00                               	ja     0x5b2ff09f4c1
 5b2ff09f4b7:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff09f4bc:	e9 05 00 00 00                                  	jmp    0x5b2ff09f4c6
 5b2ff09f4c1:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09f4c6:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
 5b2ff09f4ca:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff09f4cf:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff09f4d4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff09f4d8:	4c 8b 15 2e f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52e]        # 0x5b2ff09ea0d
 5b2ff09f4df:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff09f4e4:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff09f4e9:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff09f4ed:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
 5b2ff09f4f7:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff09f4fb:	0f 85 04 00 00 00                               	jne    0x5b2ff09f505
 5b2ff09f501:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
 5b2ff09f505:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff09f50a:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff09f50e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff09f512:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
 5b2ff09f51c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff09f521:	4d 8b df                                        	mov    r11,r15
 5b2ff09f524:	e9 cc 00 00 00                                  	jmp    0x5b2ff09f5f5
 5b2ff09f529:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
 5b2ff09f530:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09f534:	0f 87 09 00 00 00                               	ja     0x5b2ff09f543
 5b2ff09f53a:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff09f53e:	e9 04 00 00 00                                  	jmp    0x5b2ff09f547
 5b2ff09f543:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff09f547:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09f54b:	0f 87 0a 00 00 00                               	ja     0x5b2ff09f55b
 5b2ff09f551:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff09f556:	e9 05 00 00 00                                  	jmp    0x5b2ff09f560
 5b2ff09f55b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09f560:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
 5b2ff09f56a:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
 5b2ff09f570:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
 5b2ff09f575:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09f579:	0f 87 09 00 00 00                               	ja     0x5b2ff09f588
 5b2ff09f57f:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff09f583:	e9 04 00 00 00                                  	jmp    0x5b2ff09f58c
 5b2ff09f588:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff09f58c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09f590:	0f 87 0a 00 00 00                               	ja     0x5b2ff09f5a0
 5b2ff09f596:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff09f59b:	e9 05 00 00 00                                  	jmp    0x5b2ff09f5a5
 5b2ff09f5a0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09f5a5:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
 5b2ff09f5af:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff09f5b4:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff09f5b8:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
 5b2ff09f5c2:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff09f5c7:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff09f5cc:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff09f5d0:	4c 8b 15 36 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff436]        # 0x5b2ff09ea0d
 5b2ff09f5d7:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff09f5dc:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff09f5e1:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff09f5e5:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff09f5e9:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff09f5ed:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff09f5f1:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff09f5f5:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff09f5fa:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff09f5fe:	4c 8b 15 08 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff408]        # 0x5b2ff09ea0d
 5b2ff09f605:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff09f60a:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff09f60f:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
 5b2ff09f613:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
 5b2ff09f61d:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
 5b2ff09f627:	4d 8b c4                                        	mov    r8,r12
 5b2ff09f62a:	e9 b0 00 00 00                                  	jmp    0x5b2ff09f6df
 5b2ff09f62f:	4d 8b e7                                        	mov    r12,r15
 5b2ff09f632:	c4 81 7a 10 44 23 50                            	vmovss xmm0,DWORD PTR [r11+r12*1+0x50]
 5b2ff09f639:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
 5b2ff09f63d:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
 5b2ff09f644:	c4 81 7a 10 6c 3b 50                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x50]
 5b2ff09f64b:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff09f64f:	c4 c1 6a 59 74 03 50                            	vmulss xmm6,xmm2,DWORD PTR [r11+rax*1+0x50]
 5b2ff09f656:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
 5b2ff09f65a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09f65e:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
 5b2ff09f663:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff09f667:	c4 01 7a 10 5c 23 54                            	vmovss xmm11,DWORD PTR [r11+r12*1+0x54]
 5b2ff09f66e:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
 5b2ff09f672:	c4 81 7a 10 6c 3b 54                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x54]
 5b2ff09f679:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff09f67d:	c5 fb 11 85 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm0
 5b2ff09f685:	c4 c1 6a 59 44 03 54                            	vmulss xmm0,xmm2,DWORD PTR [r11+rax*1+0x54]
 5b2ff09f68c:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
 5b2ff09f690:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
 5b2ff09f694:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff09f698:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
 5b2ff09f69e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f6a2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff09f6a5:	41 8b d0                                        	mov    edx,r8d
 5b2ff09f6a8:	c5 fb 10 8d a8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x158]
 5b2ff09f6b0:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
 5b2ff09f6b4:	8b cb                                           	mov    ecx,ebx
 5b2ff09f6b6:	8b df                                           	mov    ebx,edi
 5b2ff09f6b8:	e8 73 be f2 ff                                  	call   0x5b2fefcb530
 5b2ff09f6bd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09f6c0:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09f6c4:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
 5b2ff09f6ce:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09f6d8:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09f6df:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff09f6e3:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
 5b2ff09f6eb:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
 5b2ff09f6f4:	0f 85 2a 00 00 00                               	jne    0x5b2ff09f724
 5b2ff09f6fa:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
 5b2ff09f704:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
 5b2ff09f70e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff09f718:	49 8b fb                                        	mov    rdi,r11
 5b2ff09f71b:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff09f71f:	e9 d4 01 00 00                                  	jmp    0x5b2ff09f8f8
 5b2ff09f724:	c5 fb 10 85 f0 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x210]
 5b2ff09f72c:	c5 fa 59 85 80 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x180]
 5b2ff09f734:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
 5b2ff09f73c:	c5 ca 59 b5 a0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x160]
 5b2ff09f744:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
 5b2ff09f74c:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
 5b2ff09f754:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff09f758:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09f75c:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
 5b2ff09f764:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff09f768:	4c 8b 15 b7 dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffddb7]        # 0x5b2ff09d526
 5b2ff09f76f:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff09f774:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
 5b2ff09f778:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff09f77c:	0f 87 04 00 00 00                               	ja     0x5b2ff09f786
 5b2ff09f782:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff09f786:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
 5b2ff09f78e:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
 5b2ff09f795:	0f 85 28 00 00 00                               	jne    0x5b2ff09f7c3
 5b2ff09f79b:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
 5b2ff09f7a5:	4c 8b 15 7a dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdd7a]        # 0x5b2ff09d526
 5b2ff09f7ac:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff09f7b1:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
 5b2ff09f7b5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f7b9:	e8 fa dd f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff09f7be:	e9 8b 00 00 00                                  	jmp    0x5b2ff09f84e
 5b2ff09f7c3:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff09f7c7:	0f 84 5e 00 00 00                               	je     0x5b2ff09f82b
 5b2ff09f7cd:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
 5b2ff09f7d7:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
 5b2ff09f7e1:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
 5b2ff09f7e6:	7a 06                                           	jp     0x5b2ff09f7ee
 5b2ff09f7e8:	0f 84 2a 00 00 00                               	je     0x5b2ff09f818
 5b2ff09f7ee:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff09f7f2:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
 5b2ff09f7f7:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
 5b2ff09f7fb:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
 5b2ff09f7ff:	0f 86 49 00 00 00                               	jbe    0x5b2ff09f84e
 5b2ff09f805:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff09f809:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff09f80e:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff09f813:	e9 5b 00 00 00                                  	jmp    0x5b2ff09f873
 5b2ff09f818:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff09f81c:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff09f821:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff09f826:	e9 44 00 00 00                                  	jmp    0x5b2ff09f86f
 5b2ff09f82b:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
 5b2ff09f835:	4c 8b 15 ea dc ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdcea]        # 0x5b2ff09d526
 5b2ff09f83c:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff09f841:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
 5b2ff09f845:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f849:	e8 6a dd f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff09f84e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff09f852:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff09f857:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff09f85c:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
 5b2ff09f860:	0f 87 09 00 00 00                               	ja     0x5b2ff09f86f
 5b2ff09f866:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
 5b2ff09f86a:	e9 04 00 00 00                                  	jmp    0x5b2ff09f873
 5b2ff09f86f:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff09f873:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09f876:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09f87a:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff09f884:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
 5b2ff09f888:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
 5b2ff09f88c:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
 5b2ff09f896:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
 5b2ff09f89b:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
 5b2ff09f8a5:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
 5b2ff09f8af:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
 5b2ff09f8b9:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
 5b2ff09f8be:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
 5b2ff09f8c8:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
 5b2ff09f8d2:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
 5b2ff09f8dc:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
 5b2ff09f8e1:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
 5b2ff09f8eb:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff09f8ef:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff09f8f3:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff09f8f8:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
 5b2ff09f902:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09f906:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff09f909:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
 5b2ff09f90f:	8b 8d e0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x320]
 5b2ff09f915:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
 5b2ff09f91d:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
 5b2ff09f921:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
 5b2ff09f925:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
 5b2ff09f92a:	e8 31 b9 f2 ff                                  	call   0x5b2fefcb260
 5b2ff09f92f:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
 5b2ff09f933:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
 5b2ff09f937:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff09f93b:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
 5b2ff09f942:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff09f948:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff09f94d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff09f953:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff09f959:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff09f95d:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
 5b2ff09f964:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
 5b2ff09f96b:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff09f972:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
 5b2ff09f979:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
 5b2ff09f980:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff09f988:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
 5b2ff09f990:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff09f998:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff09f9a0:	c5 7b 10 8d 70 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x190]
 5b2ff09f9a8:	e9 09 00 00 00                                  	jmp    0x5b2ff09f9b6
 5b2ff09f9ad:	48 8b c1                                        	mov    rax,rcx
 5b2ff09f9b0:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff09f9b6:	f6 85 b0 fd ff ff 04                            	test   BYTE PTR [rbp-0x250],0x4
 5b2ff09f9bd:	0f 85 08 00 00 00                               	jne    0x5b2ff09f9cb
 5b2ff09f9c3:	48 8b ce                                        	mov    rcx,rsi
 5b2ff09f9c6:	e9 48 0a 00 00                                  	jmp    0x5b2ff0a0413
 5b2ff09f9cb:	43 8b 9c 23 c8 3c 00 00                         	mov    ebx,DWORD PTR [r11+r12*1+0x3cc8]
 5b2ff09f9d3:	43 83 bc 23 c8 3c 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0x3cc8],0x0
 5b2ff09f9dc:	0f 84 4d 00 00 00                               	je     0x5b2ff09fa2f
 5b2ff09f9e2:	41 8b d8                                        	mov    ebx,r8d
 5b2ff09f9e5:	c1 eb 03                                        	shr    ebx,0x3
 5b2ff09f9e8:	83 e3 03                                        	and    ebx,0x3
 5b2ff09f9eb:	0b 9d 48 fc ff ff                               	or     ebx,DWORD PTR [rbp-0x3b8]
 5b2ff09f9f1:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
 5b2ff09f9f8:	41 03 d8                                        	add    ebx,r8d
 5b2ff09f9fb:	41 0f b6 1c 1b                                  	movzx  ebx,BYTE PTR [r11+rbx*1]
 5b2ff09fa00:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff09fa04:	41 83 e0 07                                     	and    r8d,0x7
 5b2ff09fa08:	44 8b d1                                        	mov    r10d,ecx
 5b2ff09fa0b:	41 8b c8                                        	mov    ecx,r8d
 5b2ff09fa0e:	45 8b c2                                        	mov    r8d,r10d
 5b2ff09fa11:	d3 e3                                           	shl    ebx,cl
 5b2ff09fa13:	f6 c3 80                                        	test   bl,0x80
 5b2ff09fa16:	0f 85 0c 00 00 00                               	jne    0x5b2ff09fa28
 5b2ff09fa1c:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff09fa20:	48 8b ce                                        	mov    rcx,rsi
 5b2ff09fa23:	e9 eb 09 00 00                                  	jmp    0x5b2ff0a0413
 5b2ff09fa28:	41 8b c8                                        	mov    ecx,r8d
 5b2ff09fa2b:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff09fa2f:	48 8b 5d 88                                     	mov    rbx,QWORD PTR [rbp-0x78]
 5b2ff09fa33:	48 8d 0c 1a                                     	lea    rcx,[rdx+rbx*1]
 5b2ff09fa37:	c4 e1 82 2a f1                                  	vcvtsi2ss xmm6,xmm15,rcx
 5b2ff09fa3c:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
 5b2ff09fa40:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
 5b2ff09fa44:	48 8b ce                                        	mov    rcx,rsi
 5b2ff09fa47:	4a 8d 34 09                                     	lea    rsi,[rcx+r9*1]
 5b2ff09fa4b:	c4 61 82 2a de                                  	vcvtsi2ss xmm11,xmm15,rsi
 5b2ff09fa50:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
 5b2ff09fa55:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
 5b2ff09fa5a:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
 5b2ff09fa5e:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
 5b2ff09fa62:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
 5b2ff09fa67:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
 5b2ff09fa6c:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
 5b2ff09fa70:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
 5b2ff09fa75:	0f 83 98 09 00 00                               	jae    0x5b2ff0a0413
 5b2ff09fa7b:	c4 01 0a 59 74 3b 18                            	vmulss xmm14,xmm14,DWORD PTR [r11+r15*1+0x18]
 5b2ff09fa82:	c4 c1 4a 59 74 3b 18                            	vmulss xmm6,xmm6,DWORD PTR [r11+rdi*1+0x18]
 5b2ff09fa89:	c4 41 22 59 5c 03 18                            	vmulss xmm11,xmm11,DWORD PTR [r11+rax*1+0x18]
 5b2ff09fa90:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
 5b2ff09fa95:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
 5b2ff09fa99:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
 5b2ff09fa9d:	43 8b 74 23 68                                  	mov    esi,DWORD PTR [r11+r12*1+0x68]
 5b2ff09faa2:	43 83 7c 23 68 00                               	cmp    DWORD PTR [r11+r12*1+0x68],0x0
 5b2ff09faa8:	0f 84 c7 00 00 00                               	je     0x5b2ff09fb75
 5b2ff09faae:	43 8b b4 23 a4 00 00 00                         	mov    esi,DWORD PTR [r11+r12*1+0xa4]
 5b2ff09fab6:	43 83 bc 23 a4 00 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0xa4],0x0
 5b2ff09fabf:	0f 85 b0 00 00 00                               	jne    0x5b2ff09fb75
 5b2ff09fac5:	43 8b 74 23 0c                                  	mov    esi,DWORD PTR [r11+r12*1+0xc]
 5b2ff09faca:	43 8b 1c 23                                     	mov    ebx,DWORD PTR [r11+r12*1]
 5b2ff09face:	0f af 9d 50 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xb0]
 5b2ff09fad5:	8d 1c 9e                                        	lea    ebx,[rsi+rbx*4]
 5b2ff09fad8:	42 8d 1c 83                                     	lea    ebx,[rbx+r8*4]
 5b2ff09fadc:	c4 41 7a 10 1c 1b                               	vmovss xmm11,DWORD PTR [r11+rbx*1]
 5b2ff09fae2:	43 8b 5c 23 6c                                  	mov    ebx,DWORD PTR [r11+r12*1+0x6c]
 5b2ff09fae7:	81 eb 00 02 00 00                               	sub    ebx,0x200
 5b2ff09faed:	83 fb 08                                        	cmp    ebx,0x8
 5b2ff09faf0:	0f 83 0b 00 00 00                               	jae    0x5b2ff09fb01
 5b2ff09faf6:	4c 8d 15 03 71 00 00                            	lea    r10,[rip+0x7103]        # 0x5b2ff0a6c00
 5b2ff09fafd:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
 5b2ff09fb01:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff09fb05:	0f 87 6a 00 00 00                               	ja     0x5b2ff09fb75
 5b2ff09fb0b:	e9 03 09 00 00                                  	jmp    0x5b2ff0a0413
 5b2ff09fb10:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff09fb15:	0f 83 5a 00 00 00                               	jae    0x5b2ff09fb75
 5b2ff09fb1b:	e9 f3 08 00 00                                  	jmp    0x5b2ff0a0413
 5b2ff09fb20:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff09fb25:	0f 8a 4a 00 00 00                               	jp     0x5b2ff09fb75
 5b2ff09fb2b:	0f 84 e2 08 00 00                               	je     0x5b2ff0a0413
 5b2ff09fb31:	e9 3f 00 00 00                                  	jmp    0x5b2ff09fb75
 5b2ff09fb36:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff09fb3b:	0f 87 34 00 00 00                               	ja     0x5b2ff09fb75
 5b2ff09fb41:	e9 cd 08 00 00                                  	jmp    0x5b2ff0a0413
 5b2ff09fb46:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff09fb4a:	0f 83 25 00 00 00                               	jae    0x5b2ff09fb75
 5b2ff09fb50:	e9 be 08 00 00                                  	jmp    0x5b2ff0a0413
 5b2ff09fb55:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff09fb5a:	0f 8a b3 08 00 00                               	jp     0x5b2ff0a0413
 5b2ff09fb60:	0f 84 0f 00 00 00                               	je     0x5b2ff09fb75
 5b2ff09fb66:	e9 a8 08 00 00                                  	jmp    0x5b2ff0a0413
 5b2ff09fb6b:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff09fb6f:	0f 86 9e 08 00 00                               	jbe    0x5b2ff0a0413
 5b2ff09fb75:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
 5b2ff09fb7a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
 5b2ff09fb7f:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
 5b2ff09fb84:	c4 01 7a 6f 74 3b 20                            	vmovdqu xmm14,XMMWORD PTR [r11+r15*1+0x20]
 5b2ff09fb8b:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
 5b2ff09fb90:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
 5b2ff09fb94:	c4 c1 7a 6f 6c 3b 20                            	vmovdqu xmm5,XMMWORD PTR [r11+rdi*1+0x20]
 5b2ff09fb9b:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff09fba0:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
 5b2ff09fba4:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
 5b2ff09fba9:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
 5b2ff09fbb1:	c4 c1 7a 6f 74 03 20                            	vmovdqu xmm6,XMMWORD PTR [r11+rax*1+0x20]
 5b2ff09fbb8:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
 5b2ff09fbbc:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff09fbc0:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
 5b2ff09fbc4:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
 5b2ff09fbc8:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
 5b2ff09fbcb:	c4 c1 7a 7f 84 1b 90 01 00 00                   	vmovdqu XMMWORD PTR [r11+rbx*1+0x190],xmm0
 5b2ff09fbd5:	c4 81 7a 10 b4 3b 98 00 00 00                   	vmovss xmm6,DWORD PTR [r11+r15*1+0x98]
 5b2ff09fbdf:	c4 41 7a 10 ac 3b 98 00 00 00                   	vmovss xmm13,DWORD PTR [r11+rdi*1+0x98]
 5b2ff09fbe9:	c4 41 7a 10 b4 03 98 00 00 00                   	vmovss xmm14,DWORD PTR [r11+rax*1+0x98]
 5b2ff09fbf3:	c4 c1 7a 7f 04 1b                               	vmovdqu XMMWORD PTR [r11+rbx*1],xmm0
 5b2ff09fbf9:	48 8b b5 a8 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x258]
 5b2ff09fc00:	41 8b bc 33 34 01 00 00                         	mov    edi,DWORD PTR [r11+rsi*1+0x134]
 5b2ff09fc08:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
 5b2ff09fc0c:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
 5b2ff09fc14:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
 5b2ff09fc1c:	c5 fb 11 9d f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm3
 5b2ff09fc24:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
 5b2ff09fc2c:	c5 fb 11 b5 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm6
 5b2ff09fc34:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
 5b2ff09fc3c:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
 5b2ff09fc44:	41 83 f8 01                                     	cmp    r8d,0x1
 5b2ff09fc48:	0f 86 4b 04 00 00                               	jbe    0x5b2ff0a0099
 5b2ff09fc4e:	41 8b bc 33 30 01 00 00                         	mov    edi,DWORD PTR [r11+rsi*1+0x130]
 5b2ff09fc56:	41 83 bc 33 30 01 00 00 00                      	cmp    DWORD PTR [r11+rsi*1+0x130],0x0
 5b2ff09fc5f:	0f 85 0d 00 00 00                               	jne    0x5b2ff09fc72
 5b2ff09fc65:	8b cb                                           	mov    ecx,ebx
 5b2ff09fc67:	4d 8b c3                                        	mov    r8,r11
 5b2ff09fc6a:	48 8b fe                                        	mov    rdi,rsi
 5b2ff09fc6d:	e9 e1 04 00 00                                  	jmp    0x5b2ff0a0153
 5b2ff09fc72:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
 5b2ff09fc78:	44 8d 43 70                                     	lea    r8d,[rbx+0x70]
 5b2ff09fc7c:	41 50                                           	push   r8
 5b2ff09fc7e:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
 5b2ff09fc85:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09fc89:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff09fc8c:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
 5b2ff09fc92:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
 5b2ff09fc98:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
 5b2ff09fc9e:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff09fca3:	44 8b cf                                        	mov    r9d,edi
 5b2ff09fca6:	e8 6d b5 f2 ff                                  	call   0x5b2fefcb218
 5b2ff09fcab:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09fcaf:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09fcb6:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
 5b2ff09fcbe:	45 85 db                                        	test   r11d,r11d
 5b2ff09fcc1:	0f 85 61 01 00 00                               	jne    0x5b2ff09fe28
 5b2ff09fcc7:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09fcca:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
 5b2ff09fccf:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
 5b2ff09fcd5:	0f 84 43 00 00 00                               	je     0x5b2ff09fd1e
 5b2ff09fcdb:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09fce1:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09fce5:	41 53                                           	push   r11
 5b2ff09fce7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09fceb:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
 5b2ff09fcf1:	33 d2                                           	xor    edx,edx
 5b2ff09fcf3:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
 5b2ff09fcfa:	e8 41 b5 f2 ff                                  	call   0x5b2fefcb240
 5b2ff09fcff:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09fd02:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09fd06:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09fd0d:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09fd17:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09fd1e:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
 5b2ff09fd23:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
 5b2ff09fd29:	0f 84 46 00 00 00                               	je     0x5b2ff09fd75
 5b2ff09fd2f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09fd35:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09fd39:	41 53                                           	push   r11
 5b2ff09fd3b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09fd3f:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
 5b2ff09fd45:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff09fd4a:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
 5b2ff09fd51:	e8 ea b4 f2 ff                                  	call   0x5b2fefcb240
 5b2ff09fd56:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09fd59:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09fd5d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09fd64:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09fd6e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09fd75:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
 5b2ff09fd7a:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
 5b2ff09fd80:	0f 84 46 00 00 00                               	je     0x5b2ff09fdcc
 5b2ff09fd86:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09fd8c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09fd90:	41 53                                           	push   r11
 5b2ff09fd92:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09fd96:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
 5b2ff09fd9c:	ba 02 00 00 00                                  	mov    edx,0x2
 5b2ff09fda1:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
 5b2ff09fda8:	e8 93 b4 f2 ff                                  	call   0x5b2fefcb240
 5b2ff09fdad:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09fdb0:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09fdb4:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09fdbb:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09fdc5:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09fdcc:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
 5b2ff09fdd1:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
 5b2ff09fdd7:	0f 84 76 03 00 00                               	je     0x5b2ff0a0153
 5b2ff09fddd:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff09fde3:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff09fde7:	41 53                                           	push   r11
 5b2ff09fde9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff09fded:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
 5b2ff09fdf3:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff09fdf8:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
 5b2ff09fdff:	e8 3c b4 f2 ff                                  	call   0x5b2fefcb240
 5b2ff09fe04:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09fe07:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff09fe0b:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff09fe12:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff09fe1c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff09fe23:	e9 2b 03 00 00                                  	jmp    0x5b2ff0a0153
 5b2ff09fe28:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff09fe2b:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
 5b2ff09fe35:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
 5b2ff09fe3b:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff09fe40:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09fe44:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
 5b2ff09fe4b:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff09fe4f:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff09fe53:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
 5b2ff09fe5d:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff09fe61:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
 5b2ff09fe67:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff09fe6b:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
 5b2ff09fe70:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
 5b2ff09fe7a:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff09fe7e:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
 5b2ff09fe85:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
 5b2ff09fe89:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
 5b2ff09fe8d:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
 5b2ff09fe91:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff09fe95:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
 5b2ff09fe9b:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff09fea0:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
 5b2ff09fea4:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff09fea8:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff09fead:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff09feb2:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
 5b2ff09feb6:	0f 87 09 00 00 00                               	ja     0x5b2ff09fec5
 5b2ff09febc:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff09fec0:	e9 04 00 00 00                                  	jmp    0x5b2ff09fec9
 5b2ff09fec5:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff09fec9:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff09fece:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff09fed2:	0f 87 09 00 00 00                               	ja     0x5b2ff09fee1
 5b2ff09fed8:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff09fedc:	e9 05 00 00 00                                  	jmp    0x5b2ff09fee6
 5b2ff09fee1:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff09fee6:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff09feeb:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff09feef:	0f 84 a1 00 00 00                               	je     0x5b2ff09ff96
 5b2ff09fef5:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
 5b2ff09fef9:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
 5b2ff09ff03:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09ff07:	0f 87 09 00 00 00                               	ja     0x5b2ff09ff16
 5b2ff09ff0d:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff09ff11:	e9 04 00 00 00                                  	jmp    0x5b2ff09ff1a
 5b2ff09ff16:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff09ff1a:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09ff1e:	0f 87 0a 00 00 00                               	ja     0x5b2ff09ff2e
 5b2ff09ff24:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff09ff29:	e9 05 00 00 00                                  	jmp    0x5b2ff09ff33
 5b2ff09ff2e:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09ff33:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
 5b2ff09ff37:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff09ff3c:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff09ff41:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff09ff45:	4c 8b 15 c1 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeac1]        # 0x5b2ff09ea0d
 5b2ff09ff4c:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff09ff51:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff09ff56:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff09ff5a:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
 5b2ff09ff64:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff09ff68:	0f 85 04 00 00 00                               	jne    0x5b2ff09ff72
 5b2ff09ff6e:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
 5b2ff09ff72:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff09ff77:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff09ff7b:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff09ff7f:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
 5b2ff09ff89:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff09ff8e:	4d 8b dc                                        	mov    r11,r12
 5b2ff09ff91:	e9 cc 00 00 00                                  	jmp    0x5b2ff0a0062
 5b2ff09ff96:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
 5b2ff09ff9d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09ffa1:	0f 87 09 00 00 00                               	ja     0x5b2ff09ffb0
 5b2ff09ffa7:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff09ffab:	e9 04 00 00 00                                  	jmp    0x5b2ff09ffb4
 5b2ff09ffb0:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff09ffb4:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09ffb8:	0f 87 0a 00 00 00                               	ja     0x5b2ff09ffc8
 5b2ff09ffbe:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff09ffc3:	e9 05 00 00 00                                  	jmp    0x5b2ff09ffcd
 5b2ff09ffc8:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff09ffcd:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
 5b2ff09ffd7:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
 5b2ff09ffdd:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
 5b2ff09ffe2:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff09ffe6:	0f 87 09 00 00 00                               	ja     0x5b2ff09fff5
 5b2ff09ffec:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff09fff0:	e9 04 00 00 00                                  	jmp    0x5b2ff09fff9
 5b2ff09fff5:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff09fff9:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff09fffd:	0f 87 0a 00 00 00                               	ja     0x5b2ff0a000d
 5b2ff0a0003:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff0a0008:	e9 05 00 00 00                                  	jmp    0x5b2ff0a0012
 5b2ff0a000d:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0a0012:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
 5b2ff0a001c:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0a0021:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff0a0025:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
 5b2ff0a002f:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0a0034:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0a0039:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0a003d:	4c 8b 15 c9 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9c9]        # 0x5b2ff09ea0d
 5b2ff0a0044:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0a0049:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0a004e:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0a0052:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0a0056:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0a005a:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0a005e:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff0a0062:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a0067:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0a006b:	4c 8b 15 9b e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe99b]        # 0x5b2ff09ea0d
 5b2ff0a0072:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a0077:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a007c:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
 5b2ff0a0080:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0a008a:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
 5b2ff0a0094:	e9 ba 00 00 00                                  	jmp    0x5b2ff0a0153
 5b2ff0a0099:	4d 8b c7                                        	mov    r8,r15
 5b2ff0a009c:	c4 81 7a 10 44 03 50                            	vmovss xmm0,DWORD PTR [r11+r8*1+0x50]
 5b2ff0a00a3:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
 5b2ff0a00a7:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
 5b2ff0a00ae:	c4 81 7a 10 6c 3b 50                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x50]
 5b2ff0a00b5:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0a00b9:	c4 c1 6a 59 74 03 50                            	vmulss xmm6,xmm2,DWORD PTR [r11+rax*1+0x50]
 5b2ff0a00c0:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
 5b2ff0a00c4:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0a00c8:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
 5b2ff0a00cd:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0a00d1:	c4 01 7a 10 5c 03 54                            	vmovss xmm11,DWORD PTR [r11+r8*1+0x54]
 5b2ff0a00d8:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
 5b2ff0a00dc:	c4 81 7a 10 6c 3b 54                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x54]
 5b2ff0a00e3:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0a00e7:	c5 fb 11 85 a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm0
 5b2ff0a00ef:	c4 c1 6a 59 44 03 54                            	vmulss xmm0,xmm2,DWORD PTR [r11+rax*1+0x54]
 5b2ff0a00f6:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
 5b2ff0a00fa:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
 5b2ff0a00fe:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0a0102:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
 5b2ff0a0109:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
 5b2ff0a010f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a0113:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0a0116:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
 5b2ff0a011c:	c5 fb 10 8d a0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x160]
 5b2ff0a0124:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
 5b2ff0a0128:	8b cb                                           	mov    ecx,ebx
 5b2ff0a012a:	8b df                                           	mov    ebx,edi
 5b2ff0a012c:	e8 ff b3 f2 ff                                  	call   0x5b2fefcb530
 5b2ff0a0131:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0a0134:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a0138:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
 5b2ff0a0142:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0a014c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff0a0153:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff0a0157:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
 5b2ff0a015f:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
 5b2ff0a0168:	0f 85 2a 00 00 00                               	jne    0x5b2ff0a0198
 5b2ff0a016e:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0a0178:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0a0182:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0a018c:	49 8b fb                                        	mov    rdi,r11
 5b2ff0a018f:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0a0193:	e9 d4 01 00 00                                  	jmp    0x5b2ff0a036c
 5b2ff0a0198:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
 5b2ff0a01a0:	c5 fa 59 85 f0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x210]
 5b2ff0a01a8:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
 5b2ff0a01b0:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
 5b2ff0a01b8:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
 5b2ff0a01c0:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
 5b2ff0a01c8:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff0a01cc:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0a01d0:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
 5b2ff0a01d8:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0a01dc:	4c 8b 15 43 d3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd343]        # 0x5b2ff09d526
 5b2ff0a01e3:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0a01e8:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
 5b2ff0a01ec:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0a01f0:	0f 87 04 00 00 00                               	ja     0x5b2ff0a01fa
 5b2ff0a01f6:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0a01fa:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
 5b2ff0a0202:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
 5b2ff0a0209:	0f 85 28 00 00 00                               	jne    0x5b2ff0a0237
 5b2ff0a020f:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0a0219:	4c 8b 15 06 d3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd306]        # 0x5b2ff09d526
 5b2ff0a0220:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0a0225:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
 5b2ff0a0229:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a022d:	e8 86 d3 f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a0232:	e9 8b 00 00 00                                  	jmp    0x5b2ff0a02c2
 5b2ff0a0237:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0a023b:	0f 84 5e 00 00 00                               	je     0x5b2ff0a029f
 5b2ff0a0241:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
 5b2ff0a024b:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
 5b2ff0a0255:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
 5b2ff0a025a:	7a 06                                           	jp     0x5b2ff0a0262
 5b2ff0a025c:	0f 84 2a 00 00 00                               	je     0x5b2ff0a028c
 5b2ff0a0262:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff0a0266:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
 5b2ff0a026b:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
 5b2ff0a026f:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
 5b2ff0a0273:	0f 86 49 00 00 00                               	jbe    0x5b2ff0a02c2
 5b2ff0a0279:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0a027d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0a0282:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0a0287:	e9 5b 00 00 00                                  	jmp    0x5b2ff0a02e7
 5b2ff0a028c:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0a0290:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0a0295:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0a029a:	e9 44 00 00 00                                  	jmp    0x5b2ff0a02e3
 5b2ff0a029f:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0a02a9:	4c 8b 15 76 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd276]        # 0x5b2ff09d526
 5b2ff0a02b0:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0a02b5:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
 5b2ff0a02b9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a02bd:	e8 f6 d2 f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a02c2:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0a02c6:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0a02cb:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0a02d0:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
 5b2ff0a02d4:	0f 87 09 00 00 00                               	ja     0x5b2ff0a02e3
 5b2ff0a02da:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
 5b2ff0a02de:	e9 04 00 00 00                                  	jmp    0x5b2ff0a02e7
 5b2ff0a02e3:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0a02e7:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0a02ea:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a02ee:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0a02f8:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
 5b2ff0a02fc:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
 5b2ff0a0300:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
 5b2ff0a030a:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
 5b2ff0a030f:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
 5b2ff0a0319:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0a0323:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
 5b2ff0a032d:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
 5b2ff0a0332:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
 5b2ff0a033c:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0a0346:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
 5b2ff0a0350:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
 5b2ff0a0355:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
 5b2ff0a035f:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff0a0363:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0a0367:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff0a036c:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
 5b2ff0a0376:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a037a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a037d:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
 5b2ff0a0380:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
 5b2ff0a0386:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
 5b2ff0a038e:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
 5b2ff0a0392:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
 5b2ff0a0396:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
 5b2ff0a039b:	e8 c0 ae f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a03a0:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
 5b2ff0a03a4:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
 5b2ff0a03a8:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff0a03ac:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
 5b2ff0a03b3:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a03b8:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a03be:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a03c4:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a03c8:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
 5b2ff0a03cf:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
 5b2ff0a03d6:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a03dd:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
 5b2ff0a03e4:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
 5b2ff0a03eb:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a03f3:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
 5b2ff0a03fb:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a0403:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a040b:	c5 7b 10 8d 70 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x190]
 5b2ff0a0413:	f6 85 b0 fd ff ff 08                            	test   BYTE PTR [rbp-0x250],0x8
 5b2ff0a041a:	0f 85 1b 00 00 00                               	jne    0x5b2ff0a043b
 5b2ff0a0420:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a0425:	49 8b f3                                        	mov    rsi,r11
 5b2ff0a0428:	4d 8b dc                                        	mov    r11,r12
 5b2ff0a042b:	4d 8b e7                                        	mov    r12,r15
 5b2ff0a042e:	4c 8b f8                                        	mov    r15,rax
 5b2ff0a0431:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
 5b2ff0a0436:	e9 fd 61 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a043b:	49 8b f3                                        	mov    rsi,r11
 5b2ff0a043e:	4d 8b dc                                        	mov    r11,r12
 5b2ff0a0441:	46 8b a4 1e c8 3c 00 00                         	mov    r12d,DWORD PTR [rsi+r11*1+0x3cc8]
 5b2ff0a0449:	42 83 bc 1e c8 3c 00 00 00                      	cmp    DWORD PTR [rsi+r11*1+0x3cc8],0x0
 5b2ff0a0452:	0f 84 5d 00 00 00                               	je     0x5b2ff0a04b5
 5b2ff0a0458:	44 8b a5 58 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xa8]
 5b2ff0a045f:	41 c1 ec 03                                     	shr    r12d,0x3
 5b2ff0a0463:	41 83 e4 03                                     	and    r12d,0x3
 5b2ff0a0467:	8b 9d 48 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3b8]
 5b2ff0a046d:	41 0b dc                                        	or     ebx,r12d
 5b2ff0a0470:	44 8b a5 88 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x178]
 5b2ff0a0477:	41 03 dc                                        	add    ebx,r12d
 5b2ff0a047a:	0f b6 1c 1e                                     	movzx  ebx,BYTE PTR [rsi+rbx*1]
 5b2ff0a047e:	44 8b 85 58 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xa8]
 5b2ff0a0485:	41 83 e0 07                                     	and    r8d,0x7
 5b2ff0a0489:	4c 8b d1                                        	mov    r10,rcx
 5b2ff0a048c:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a048f:	4d 8b c2                                        	mov    r8,r10
 5b2ff0a0492:	d3 e3                                           	shl    ebx,cl
 5b2ff0a0494:	f6 c3 80                                        	test   bl,0x80
 5b2ff0a0497:	0f 85 15 00 00 00                               	jne    0x5b2ff0a04b2
 5b2ff0a049d:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a04a2:	4d 8b e7                                        	mov    r12,r15
 5b2ff0a04a5:	4c 8b f8                                        	mov    r15,rax
 5b2ff0a04a8:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
 5b2ff0a04ad:	e9 86 61 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a04b2:	49 8b c8                                        	mov    rcx,r8
 5b2ff0a04b5:	4c 8b 65 88                                     	mov    r12,QWORD PTR [rbp-0x78]
 5b2ff0a04b9:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
 5b2ff0a04c0:	4e 8d 04 23                                     	lea    r8,[rbx+r12*1]
 5b2ff0a04c4:	c4 c1 82 2a f0                                  	vcvtsi2ss xmm6,xmm15,r8
 5b2ff0a04c9:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
 5b2ff0a04cd:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
 5b2ff0a04d1:	4c 8b 85 50 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1b0]
 5b2ff0a04d8:	4f 8d 24 08                                     	lea    r12,[r8+r9*1]
 5b2ff0a04dc:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
 5b2ff0a04e1:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
 5b2ff0a04e6:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
 5b2ff0a04eb:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
 5b2ff0a04ef:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
 5b2ff0a04f3:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
 5b2ff0a04f8:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
 5b2ff0a04fd:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
 5b2ff0a0501:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
 5b2ff0a0506:	73 95                                           	jae    0x5b2ff0a049d
 5b2ff0a0508:	4d 8b e7                                        	mov    r12,r15
 5b2ff0a050b:	c4 21 0a 59 74 26 18                            	vmulss xmm14,xmm14,DWORD PTR [rsi+r12*1+0x18]
 5b2ff0a0512:	c5 ca 59 74 3e 18                               	vmulss xmm6,xmm6,DWORD PTR [rsi+rdi*1+0x18]
 5b2ff0a0518:	4c 8b f8                                        	mov    r15,rax
 5b2ff0a051b:	c4 21 22 59 5c 3e 18                            	vmulss xmm11,xmm11,DWORD PTR [rsi+r15*1+0x18]
 5b2ff0a0522:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
 5b2ff0a0527:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
 5b2ff0a052b:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
 5b2ff0a052f:	42 8b 44 1e 68                                  	mov    eax,DWORD PTR [rsi+r11*1+0x68]
 5b2ff0a0534:	42 83 7c 1e 68 00                               	cmp    DWORD PTR [rsi+r11*1+0x68],0x0
 5b2ff0a053a:	0f 85 0b 00 00 00                               	jne    0x5b2ff0a054b
 5b2ff0a0540:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
 5b2ff0a0546:	e9 f4 00 00 00                                  	jmp    0x5b2ff0a063f
 5b2ff0a054b:	42 8b 84 1e a4 00 00 00                         	mov    eax,DWORD PTR [rsi+r11*1+0xa4]
 5b2ff0a0553:	42 83 bc 1e a4 00 00 00 00                      	cmp    DWORD PTR [rsi+r11*1+0xa4],0x0
 5b2ff0a055c:	75 e2                                           	jne    0x5b2ff0a0540
 5b2ff0a055e:	42 8b 44 1e 0c                                  	mov    eax,DWORD PTR [rsi+r11*1+0xc]
 5b2ff0a0563:	46 8b 04 1e                                     	mov    r8d,DWORD PTR [rsi+r11*1]
 5b2ff0a0567:	44 0f af 85 50 ff ff ff                         	imul   r8d,DWORD PTR [rbp-0xb0]
 5b2ff0a056f:	46 8d 04 80                                     	lea    r8d,[rax+r8*4]
 5b2ff0a0573:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
 5b2ff0a0579:	45 8d 04 80                                     	lea    r8d,[r8+rax*4]
 5b2ff0a057d:	c4 21 7a 10 1c 06                               	vmovss xmm11,DWORD PTR [rsi+r8*1]
 5b2ff0a0583:	46 8b 44 1e 6c                                  	mov    r8d,DWORD PTR [rsi+r11*1+0x6c]
 5b2ff0a0588:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
 5b2ff0a058f:	41 83 f8 08                                     	cmp    r8d,0x8
 5b2ff0a0593:	0f 83 0b 00 00 00                               	jae    0x5b2ff0a05a4
 5b2ff0a0599:	4c 8d 15 20 66 00 00                            	lea    r10,[rip+0x6620]        # 0x5b2ff0a6bc0
 5b2ff0a05a0:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
 5b2ff0a05a4:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff0a05a8:	0f 87 91 00 00 00                               	ja     0x5b2ff0a063f
 5b2ff0a05ae:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a05b3:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
 5b2ff0a05b8:	e9 7b 60 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a05bd:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff0a05c2:	0f 83 77 00 00 00                               	jae    0x5b2ff0a063f
 5b2ff0a05c8:	eb e4                                           	jmp    0x5b2ff0a05ae
 5b2ff0a05ca:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff0a05cf:	0f 8a 6a 00 00 00                               	jp     0x5b2ff0a063f
 5b2ff0a05d5:	74 d7                                           	je     0x5b2ff0a05ae
 5b2ff0a05d7:	e9 63 00 00 00                                  	jmp    0x5b2ff0a063f
 5b2ff0a05dc:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff0a05e1:	0f 87 58 00 00 00                               	ja     0x5b2ff0a063f
 5b2ff0a05e7:	eb c5                                           	jmp    0x5b2ff0a05ae
 5b2ff0a05e9:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff0a05ed:	0f 83 4c 00 00 00                               	jae    0x5b2ff0a063f
 5b2ff0a05f3:	eb b9                                           	jmp    0x5b2ff0a05ae
 5b2ff0a05f5:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
 5b2ff0a05fa:	7a b2                                           	jp     0x5b2ff0a05ae
 5b2ff0a05fc:	0f 84 3d 00 00 00                               	je     0x5b2ff0a063f
 5b2ff0a0602:	eb aa                                           	jmp    0x5b2ff0a05ae
 5b2ff0a0604:	c5 78 2e de                                     	vucomiss xmm11,xmm6
 5b2ff0a0608:	0f 87 31 00 00 00                               	ja     0x5b2ff0a063f
 5b2ff0a060e:	eb 9e                                           	jmp    0x5b2ff0a05ae
 5b2ff0a0610:	48 c7 85 a8 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x158],0x1
 5b2ff0a061b:	48 c7 85 38 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xc8],0x1
 5b2ff0a0626:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff0a062a:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
 5b2ff0a062e:	48 8b f1                                        	mov    rsi,rcx
 5b2ff0a0631:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
 5b2ff0a0635:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
 5b2ff0a063a:	e9 29 60 00 00                                  	jmp    0x5b2ff0a6668
 5b2ff0a063f:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
 5b2ff0a0644:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
 5b2ff0a0649:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
 5b2ff0a064e:	c4 21 7a 6f 74 26 20                            	vmovdqu xmm14,XMMWORD PTR [rsi+r12*1+0x20]
 5b2ff0a0655:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
 5b2ff0a065a:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
 5b2ff0a065e:	c5 fa 6f 6c 3e 20                               	vmovdqu xmm5,XMMWORD PTR [rsi+rdi*1+0x20]
 5b2ff0a0664:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff0a0669:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
 5b2ff0a066d:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
 5b2ff0a0672:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
 5b2ff0a067a:	c4 a1 7a 6f 74 3e 20                            	vmovdqu xmm6,XMMWORD PTR [rsi+r15*1+0x20]
 5b2ff0a0681:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
 5b2ff0a0685:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff0a0689:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
 5b2ff0a068d:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
 5b2ff0a0691:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
 5b2ff0a0695:	c4 a1 7a 7f 84 06 90 01 00 00                   	vmovdqu XMMWORD PTR [rsi+r8*1+0x190],xmm0
 5b2ff0a069f:	c4 a1 7a 10 b4 26 98 00 00 00                   	vmovss xmm6,DWORD PTR [rsi+r12*1+0x98]
 5b2ff0a06a9:	c5 7a 10 ac 3e 98 00 00 00                      	vmovss xmm13,DWORD PTR [rsi+rdi*1+0x98]
 5b2ff0a06b2:	c4 21 7a 10 b4 3e 98 00 00 00                   	vmovss xmm14,DWORD PTR [rsi+r15*1+0x98]
 5b2ff0a06bc:	c4 a1 7a 7f 04 06                               	vmovdqu XMMWORD PTR [rsi+r8*1],xmm0
 5b2ff0a06c2:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff0a06c9:	44 8b 9c 3e 34 01 00 00                         	mov    r11d,DWORD PTR [rsi+rdi*1+0x134]
 5b2ff0a06d1:	45 8d 63 ff                                     	lea    r12d,[r11-0x1]
 5b2ff0a06d5:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
 5b2ff0a06dd:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
 5b2ff0a06e5:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
 5b2ff0a06ed:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
 5b2ff0a06f5:	c5 fb 11 b5 a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm6
 5b2ff0a06fd:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
 5b2ff0a0705:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
 5b2ff0a070d:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0a0711:	0f 86 46 04 00 00                               	jbe    0x5b2ff0a0b5d
 5b2ff0a0717:	44 8b 9c 3e 30 01 00 00                         	mov    r11d,DWORD PTR [rsi+rdi*1+0x130]
 5b2ff0a071f:	83 bc 3e 30 01 00 00 00                         	cmp    DWORD PTR [rsi+rdi*1+0x130],0x0
 5b2ff0a0727:	0f 85 0b 00 00 00                               	jne    0x5b2ff0a0738
 5b2ff0a072d:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a0730:	4c 8b c6                                        	mov    r8,rsi
 5b2ff0a0733:	e9 db 04 00 00                                  	jmp    0x5b2ff0a0c13
 5b2ff0a0738:	45 8d 98 90 00 00 00                            	lea    r11d,[r8+0x90]
 5b2ff0a073f:	45 8d 60 70                                     	lea    r12d,[r8+0x70]
 5b2ff0a0743:	41 54                                           	push   r12
 5b2ff0a0745:	4c 89 9d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r11
 5b2ff0a074c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a0750:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0a0753:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
 5b2ff0a0759:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
 5b2ff0a075f:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
 5b2ff0a0765:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0a076a:	45 8b cb                                        	mov    r9d,r11d
 5b2ff0a076d:	e8 a6 aa f2 ff                                  	call   0x5b2fefcb218
 5b2ff0a0772:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a0776:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff0a077d:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
 5b2ff0a0785:	45 85 db                                        	test   r11d,r11d
 5b2ff0a0788:	0f 85 61 01 00 00                               	jne    0x5b2ff0a08ef
 5b2ff0a078e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0a0791:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
 5b2ff0a0796:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
 5b2ff0a079c:	0f 84 43 00 00 00                               	je     0x5b2ff0a07e5
 5b2ff0a07a2:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0a07a8:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0a07ac:	41 53                                           	push   r11
 5b2ff0a07ae:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a07b2:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
 5b2ff0a07b8:	33 d2                                           	xor    edx,edx
 5b2ff0a07ba:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
 5b2ff0a07c1:	e8 7a aa f2 ff                                  	call   0x5b2fefcb240
 5b2ff0a07c6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0a07c9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a07cd:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0a07d4:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0a07de:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff0a07e5:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
 5b2ff0a07ea:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
 5b2ff0a07f0:	0f 84 46 00 00 00                               	je     0x5b2ff0a083c
 5b2ff0a07f6:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0a07fc:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0a0800:	41 53                                           	push   r11
 5b2ff0a0802:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a0806:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
 5b2ff0a080c:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff0a0811:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
 5b2ff0a0818:	e8 23 aa f2 ff                                  	call   0x5b2fefcb240
 5b2ff0a081d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0a0820:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a0824:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0a082b:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0a0835:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff0a083c:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
 5b2ff0a0841:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
 5b2ff0a0847:	0f 84 46 00 00 00                               	je     0x5b2ff0a0893
 5b2ff0a084d:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0a0853:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0a0857:	41 53                                           	push   r11
 5b2ff0a0859:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a085d:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
 5b2ff0a0863:	ba 02 00 00 00                                  	mov    edx,0x2
 5b2ff0a0868:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
 5b2ff0a086f:	e8 cc a9 f2 ff                                  	call   0x5b2fefcb240
 5b2ff0a0874:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0a0877:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a087b:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0a0882:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0a088c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff0a0893:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
 5b2ff0a0898:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
 5b2ff0a089e:	0f 84 6f 03 00 00                               	je     0x5b2ff0a0c13
 5b2ff0a08a4:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0a08aa:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0a08ae:	41 53                                           	push   r11
 5b2ff0a08b0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a08b4:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
 5b2ff0a08ba:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff0a08bf:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
 5b2ff0a08c6:	e8 75 a9 f2 ff                                  	call   0x5b2fefcb240
 5b2ff0a08cb:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0a08ce:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a08d2:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0a08d9:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0a08e3:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff0a08ea:	e9 24 03 00 00                                  	jmp    0x5b2ff0a0c13
 5b2ff0a08ef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0a08f2:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
 5b2ff0a08fc:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
 5b2ff0a0902:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0a0907:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0a090b:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
 5b2ff0a0912:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0a0916:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0a091a:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
 5b2ff0a0924:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0a0928:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
 5b2ff0a092e:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0a0932:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
 5b2ff0a0937:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
 5b2ff0a0941:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0a0945:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
 5b2ff0a094c:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
 5b2ff0a0950:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
 5b2ff0a0954:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
 5b2ff0a0958:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0a095c:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
 5b2ff0a0962:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0a0967:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
 5b2ff0a096b:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0a096f:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0a0974:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0a0979:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
 5b2ff0a097d:	0f 87 09 00 00 00                               	ja     0x5b2ff0a098c
 5b2ff0a0983:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0a0987:	e9 04 00 00 00                                  	jmp    0x5b2ff0a0990
 5b2ff0a098c:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0a0990:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0a0995:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff0a0999:	0f 87 09 00 00 00                               	ja     0x5b2ff0a09a8
 5b2ff0a099f:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff0a09a3:	e9 05 00 00 00                                  	jmp    0x5b2ff0a09ad
 5b2ff0a09a8:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0a09ad:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff0a09b2:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0a09b6:	0f 84 9e 00 00 00                               	je     0x5b2ff0a0a5a
 5b2ff0a09bc:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
 5b2ff0a09c0:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
 5b2ff0a09ca:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0a09ce:	0f 87 09 00 00 00                               	ja     0x5b2ff0a09dd
 5b2ff0a09d4:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0a09d8:	e9 04 00 00 00                                  	jmp    0x5b2ff0a09e1
 5b2ff0a09dd:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0a09e1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0a09e5:	0f 87 0a 00 00 00                               	ja     0x5b2ff0a09f5
 5b2ff0a09eb:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0a09f0:	e9 05 00 00 00                                  	jmp    0x5b2ff0a09fa
 5b2ff0a09f5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0a09fa:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
 5b2ff0a09fe:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0a0a03:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a0a08:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0a0a0c:	4c 8b 15 fa df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdffa]        # 0x5b2ff09ea0d
 5b2ff0a0a13:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0a0a18:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0a0a1d:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0a0a21:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
 5b2ff0a0a2b:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff0a0a2f:	0f 85 04 00 00 00                               	jne    0x5b2ff0a0a39
 5b2ff0a0a35:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
 5b2ff0a0a39:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff0a0a3e:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0a0a42:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0a0a46:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
 5b2ff0a0a50:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0a0a55:	e9 cc 00 00 00                                  	jmp    0x5b2ff0a0b26
 5b2ff0a0a5a:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
 5b2ff0a0a61:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0a0a65:	0f 87 09 00 00 00                               	ja     0x5b2ff0a0a74
 5b2ff0a0a6b:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0a0a6f:	e9 04 00 00 00                                  	jmp    0x5b2ff0a0a78
 5b2ff0a0a74:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0a0a78:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0a0a7c:	0f 87 0a 00 00 00                               	ja     0x5b2ff0a0a8c
 5b2ff0a0a82:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0a0a87:	e9 05 00 00 00                                  	jmp    0x5b2ff0a0a91
 5b2ff0a0a8c:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0a0a91:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
 5b2ff0a0a9b:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
 5b2ff0a0aa1:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
 5b2ff0a0aa6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0a0aaa:	0f 87 09 00 00 00                               	ja     0x5b2ff0a0ab9
 5b2ff0a0ab0:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff0a0ab4:	e9 04 00 00 00                                  	jmp    0x5b2ff0a0abd
 5b2ff0a0ab9:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff0a0abd:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0a0ac1:	0f 87 0a 00 00 00                               	ja     0x5b2ff0a0ad1
 5b2ff0a0ac7:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff0a0acc:	e9 05 00 00 00                                  	jmp    0x5b2ff0a0ad6
 5b2ff0a0ad1:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0a0ad6:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
 5b2ff0a0ae0:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0a0ae5:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
 5b2ff0a0ae9:	c4 01 7a 6f 9c 20 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r12*1+0x3630]
 5b2ff0a0af3:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0a0af8:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0a0afd:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0a0b01:	4c 8b 15 05 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf05]        # 0x5b2ff09ea0d
 5b2ff0a0b08:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0a0b0d:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0a0b12:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0a0b16:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0a0b1a:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0a0b1e:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0a0b22:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff0a0b26:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a0b2b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0a0b2f:	4c 8b 15 d7 de ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffded7]        # 0x5b2ff09ea0d
 5b2ff0a0b36:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a0b3b:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a0b40:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
 5b2ff0a0b44:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0a0b4e:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
 5b2ff0a0b58:	e9 b6 00 00 00                                  	jmp    0x5b2ff0a0c13
 5b2ff0a0b5d:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
 5b2ff0a0b64:	c4 a1 7a 10 44 26 50                            	vmovss xmm0,DWORD PTR [rsi+r12*1+0x50]
 5b2ff0a0b6b:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
 5b2ff0a0b6f:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a0b76:	c5 fa 10 6c 3e 50                               	vmovss xmm5,DWORD PTR [rsi+rdi*1+0x50]
 5b2ff0a0b7c:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0a0b80:	c4 a1 6a 59 74 3e 50                            	vmulss xmm6,xmm2,DWORD PTR [rsi+r15*1+0x50]
 5b2ff0a0b87:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
 5b2ff0a0b8b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0a0b8f:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
 5b2ff0a0b94:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0a0b98:	c4 21 7a 10 5c 26 54                            	vmovss xmm11,DWORD PTR [rsi+r12*1+0x54]
 5b2ff0a0b9f:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
 5b2ff0a0ba3:	c5 fa 10 6c 3e 54                               	vmovss xmm5,DWORD PTR [rsi+rdi*1+0x54]
 5b2ff0a0ba9:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0a0bad:	c5 fb 11 85 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm0
 5b2ff0a0bb5:	c4 a1 6a 59 44 3e 54                            	vmulss xmm0,xmm2,DWORD PTR [rsi+r15*1+0x54]
 5b2ff0a0bbc:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
 5b2ff0a0bc0:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
 5b2ff0a0bc4:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0a0bc8:	41 8d b8 90 00 00 00                            	lea    edi,[r8+0x90]
 5b2ff0a0bcf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a0bd3:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0a0bd6:	41 8b d3                                        	mov    edx,r11d
 5b2ff0a0bd9:	c5 fb 10 8d f0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x210]
 5b2ff0a0be1:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
 5b2ff0a0be5:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a0be8:	8b df                                           	mov    ebx,edi
 5b2ff0a0bea:	e8 41 a9 f2 ff                                  	call   0x5b2fefcb530
 5b2ff0a0bef:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a0bf2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a0bf6:	c4 c1 7a 6f 84 38 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x90]
 5b2ff0a0c00:	c4 c1 7a 7f 84 38 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x190],xmm0
 5b2ff0a0c0a:	8b cf                                           	mov    ecx,edi
 5b2ff0a0c0c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
 5b2ff0a0c13:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff0a0c17:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
 5b2ff0a0c1f:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
 5b2ff0a0c28:	0f 85 29 00 00 00                               	jne    0x5b2ff0a0c57
 5b2ff0a0c2e:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0a0c38:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0a0c42:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0a0c4c:	8b f9                                           	mov    edi,ecx
 5b2ff0a0c4e:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0a0c52:	e9 d4 01 00 00                                  	jmp    0x5b2ff0a0e2b
 5b2ff0a0c57:	c5 fb 10 85 a0 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x160]
 5b2ff0a0c5f:	c5 fa 59 85 80 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x180]
 5b2ff0a0c67:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
 5b2ff0a0c6f:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
 5b2ff0a0c77:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
 5b2ff0a0c7f:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
 5b2ff0a0c87:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff0a0c8b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0a0c8f:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
 5b2ff0a0c97:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0a0c9b:	4c 8b 15 84 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc884]        # 0x5b2ff09d526
 5b2ff0a0ca2:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0a0ca7:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
 5b2ff0a0cab:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0a0caf:	0f 87 04 00 00 00                               	ja     0x5b2ff0a0cb9
 5b2ff0a0cb5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0a0cb9:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
 5b2ff0a0cc1:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
 5b2ff0a0cc8:	0f 85 28 00 00 00                               	jne    0x5b2ff0a0cf6
 5b2ff0a0cce:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0a0cd8:	4c 8b 15 47 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc847]        # 0x5b2ff09d526
 5b2ff0a0cdf:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0a0ce4:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
 5b2ff0a0ce8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a0cec:	e8 c7 c8 f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a0cf1:	e9 8b 00 00 00                                  	jmp    0x5b2ff0a0d81
 5b2ff0a0cf6:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0a0cfa:	0f 84 5e 00 00 00                               	je     0x5b2ff0a0d5e
 5b2ff0a0d00:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
 5b2ff0a0d0a:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
 5b2ff0a0d14:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
 5b2ff0a0d19:	7a 06                                           	jp     0x5b2ff0a0d21
 5b2ff0a0d1b:	0f 84 2a 00 00 00                               	je     0x5b2ff0a0d4b
 5b2ff0a0d21:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff0a0d25:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
 5b2ff0a0d2a:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
 5b2ff0a0d2e:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
 5b2ff0a0d32:	0f 86 49 00 00 00                               	jbe    0x5b2ff0a0d81
 5b2ff0a0d38:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0a0d3c:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0a0d41:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0a0d46:	e9 5b 00 00 00                                  	jmp    0x5b2ff0a0da6
 5b2ff0a0d4b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0a0d4f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0a0d54:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0a0d59:	e9 44 00 00 00                                  	jmp    0x5b2ff0a0da2
 5b2ff0a0d5e:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0a0d68:	4c 8b 15 b7 c7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc7b7]        # 0x5b2ff09d526
 5b2ff0a0d6f:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0a0d74:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
 5b2ff0a0d78:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a0d7c:	e8 37 c8 f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a0d81:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0a0d85:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0a0d8a:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0a0d8f:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
 5b2ff0a0d93:	0f 87 09 00 00 00                               	ja     0x5b2ff0a0da2
 5b2ff0a0d99:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
 5b2ff0a0d9d:	e9 04 00 00 00                                  	jmp    0x5b2ff0a0da6
 5b2ff0a0da2:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0a0da6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a0da9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a0dad:	c4 c1 42 59 b4 38 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rdi*1+0x190]
 5b2ff0a0db7:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
 5b2ff0a0dbb:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff0a0dbf:	c4 01 3a 59 8c 18 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+r11*1+0x100]
 5b2ff0a0dc9:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
 5b2ff0a0dce:	c4 c1 7a 11 b4 38 90 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x190],xmm6
 5b2ff0a0dd8:	c4 41 42 59 8c 38 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rdi*1+0x194]
 5b2ff0a0de2:	c4 01 3a 59 94 18 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+r11*1+0x104]
 5b2ff0a0dec:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
 5b2ff0a0df1:	c4 41 7a 11 8c 38 94 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x194],xmm9
 5b2ff0a0dfb:	c4 c1 42 59 bc 38 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rdi*1+0x198]
 5b2ff0a0e05:	c4 01 3a 59 84 18 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+r11*1+0x108]
 5b2ff0a0e0f:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
 5b2ff0a0e14:	c4 c1 7a 11 bc 38 98 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x198],xmm7
 5b2ff0a0e1e:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff0a0e22:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0a0e26:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff0a0e2b:	c4 c1 7a 10 ac 38 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rdi*1+0x19c]
 5b2ff0a0e35:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a0e39:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a0e3c:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
 5b2ff0a0e42:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
 5b2ff0a0e48:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
 5b2ff0a0e50:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
 5b2ff0a0e54:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
 5b2ff0a0e58:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
 5b2ff0a0e5d:	e8 fe a3 f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a0e62:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a0e67:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
 5b2ff0a0e6b:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff0a0e6f:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a0e74:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a0e7a:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a0e80:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a0e84:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
 5b2ff0a0e8b:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
 5b2ff0a0e92:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a0e99:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a0ea1:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a0ea9:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a0eb1:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a0eb9:	e9 7a 57 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a0ebe:	49 8b db                                        	mov    rbx,r11
 5b2ff0a0ec1:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a0ec5:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a0ec9:	4b 89 5c 1c 70                                  	mov    QWORD PTR [r12+r11*1+0x70],rbx
 5b2ff0a0ece:	4c 8d 3c 1a                                     	lea    r15,[rdx+rbx*1]
 5b2ff0a0ed2:	4f 89 bc 1c 80 00 00 00                         	mov    QWORD PTR [r12+r11*1+0x80],r15
 5b2ff0a0eda:	48 8b fb                                        	mov    rdi,rbx
 5b2ff0a0edd:	48 2b bd 18 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x2e8]
 5b2ff0a0ee4:	4b 89 7c 1c 78                                  	mov    QWORD PTR [r12+r11*1+0x78],rdi
 5b2ff0a0ee9:	48 8d 04 3a                                     	lea    rax,[rdx+rdi*1]
 5b2ff0a0eed:	4b 89 84 1c 88 00 00 00                         	mov    QWORD PTR [r12+r11*1+0x88],rax
 5b2ff0a0ef5:	4f 89 4c 1c 50                                  	mov    QWORD PTR [r12+r11*1+0x50],r9
 5b2ff0a0efa:	4a 8d 14 0e                                     	lea    rdx,[rsi+r9*1]
 5b2ff0a0efe:	4b 89 54 1c 60                                  	mov    QWORD PTR [r12+r11*1+0x60],rdx
 5b2ff0a0f03:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
 5b2ff0a0f0a:	49 8b d1                                        	mov    rdx,r9
 5b2ff0a0f0d:	48 2b 95 38 fd ff ff                            	sub    rdx,QWORD PTR [rbp-0x2c8]
 5b2ff0a0f14:	4b 89 54 1c 58                                  	mov    QWORD PTR [r12+r11*1+0x58],rdx
 5b2ff0a0f19:	4c 8d 0c 16                                     	lea    r9,[rsi+rdx*1]
 5b2ff0a0f1d:	4f 89 4c 1c 68                                  	mov    QWORD PTR [r12+r11*1+0x68],r9
 5b2ff0a0f22:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
 5b2ff0a0f26:	c4 81 7a 7f 7c 1c 40                            	vmovdqu XMMWORD PTR [r12+r11*1+0x40],xmm7
 5b2ff0a0f2d:	4c 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r15
 5b2ff0a0f34:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
 5b2ff0a0f3b:	48 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rax
 5b2ff0a0f42:	48 89 95 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rdx
 5b2ff0a0f49:	4c 89 8d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r9
 5b2ff0a0f50:	41 8b f8                                        	mov    edi,r8d
 5b2ff0a0f53:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a0f56:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a0f5a:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
 5b2ff0a0f61:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
 5b2ff0a0f65:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
 5b2ff0a0f6a:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0a0f6e:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
 5b2ff0a0f73:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
 5b2ff0a0f7a:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
 5b2ff0a0f81:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
 5b2ff0a0f88:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a0f91:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a0f9a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a0fa3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a0fac:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a0fb5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a0fbe:	66 90                                           	xchg   ax,ax
 5b2ff0a0fc0:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0a0fc5:	0f 85 ff 58 00 00                               	jne    0x5b2ff0a68ca
 5b2ff0a0fcb:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a0fce:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a0fd3:	d3 e3                                           	shl    ebx,cl
 5b2ff0a0fd5:	85 9d b0 fd ff ff                               	test   DWORD PTR [rbp-0x250],ebx
 5b2ff0a0fdb:	0f 84 7a 03 00 00                               	je     0x5b2ff0a135b
 5b2ff0a0fe1:	43 8d 4c 83 40                                  	lea    ecx,[r11+r8*4+0x40]
 5b2ff0a0fe6:	48 89 9d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rbx
 5b2ff0a0fed:	43 8d 5c c3 70                                  	lea    ebx,[r11+r8*8+0x70]
 5b2ff0a0ff2:	49 8b 1c 1c                                     	mov    rbx,QWORD PTR [r12+rbx*1]
 5b2ff0a0ff6:	c4 61 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,rbx
 5b2ff0a0ffb:	c4 41 7a 59 c9                                  	vmulss xmm9,xmm0,xmm9
 5b2ff0a1000:	c4 41 4a 5c d9                                  	vsubss xmm11,xmm6,xmm9
 5b2ff0a1005:	43 8d 5c c3 50                                  	lea    ebx,[r11+r8*8+0x50]
 5b2ff0a100a:	49 8b 1c 1c                                     	mov    rbx,QWORD PTR [r12+rbx*1]
 5b2ff0a100e:	c4 61 82 2a f3                                  	vcvtsi2ss xmm14,xmm15,rbx
 5b2ff0a1013:	c4 41 7a 59 f6                                  	vmulss xmm14,xmm0,xmm14
 5b2ff0a1018:	c4 41 22 5c de                                  	vsubss xmm11,xmm11,xmm14
 5b2ff0a101d:	c4 41 22 59 5c 34 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+rsi*1+0x18]
 5b2ff0a1024:	c4 01 32 59 4c 0c 18                            	vmulss xmm9,xmm9,DWORD PTR [r12+r9*1+0x18]
 5b2ff0a102b:	c4 41 0a 59 74 14 18                            	vmulss xmm14,xmm14,DWORD PTR [r12+rdx*1+0x18]
 5b2ff0a1032:	c4 41 32 58 ce                                  	vaddss xmm9,xmm9,xmm14
 5b2ff0a1037:	c4 41 22 58 c9                                  	vaddss xmm9,xmm11,xmm9
 5b2ff0a103c:	c4 41 3a 58 c9                                  	vaddss xmm9,xmm8,xmm9
 5b2ff0a1041:	c4 41 7a 11 0c 0c                               	vmovss DWORD PTR [r12+rcx*1],xmm9
 5b2ff0a1047:	41 8b 5c 04 68                                  	mov    ebx,DWORD PTR [r12+rax*1+0x68]
 5b2ff0a104c:	41 83 7c 04 68 00                               	cmp    DWORD PTR [r12+rax*1+0x68],0x0
 5b2ff0a1052:	0f 84 03 03 00 00                               	je     0x5b2ff0a135b
 5b2ff0a1058:	41 8b 9c 04 a4 00 00 00                         	mov    ebx,DWORD PTR [r12+rax*1+0xa4]
 5b2ff0a1060:	41 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+rax*1+0xa4],0x0
 5b2ff0a1069:	0f 85 ec 02 00 00                               	jne    0x5b2ff0a135b
 5b2ff0a106f:	41 8b 5c 04 0c                                  	mov    ebx,DWORD PTR [r12+rax*1+0xc]
 5b2ff0a1074:	41 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+rax*1]
 5b2ff0a1078:	45 8b d8                                        	mov    r11d,r8d
 5b2ff0a107b:	41 d1 eb                                        	shr    r11d,1
 5b2ff0a107e:	45 03 df                                        	add    r11d,r15d
 5b2ff0a1081:	44 0f af d9                                     	imul   r11d,ecx
 5b2ff0a1085:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a1089:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
 5b2ff0a108d:	41 8b d8                                        	mov    ebx,r8d
 5b2ff0a1090:	83 e3 01                                        	and    ebx,0x1
 5b2ff0a1093:	45 8d 1c 9b                                     	lea    r11d,[r11+rbx*4]
 5b2ff0a1097:	c4 01 7a 10 1c 1c                               	vmovss xmm11,DWORD PTR [r12+r11*1]
 5b2ff0a109d:	45 8b 5c 04 6c                                  	mov    r11d,DWORD PTR [r12+rax*1+0x6c]
 5b2ff0a10a2:	41 81 eb 00 02 00 00                            	sub    r11d,0x200
 5b2ff0a10a9:	41 83 fb 08                                     	cmp    r11d,0x8
 5b2ff0a10ad:	0f 83 0b 00 00 00                               	jae    0x5b2ff0a10be
 5b2ff0a10b3:	4c 8d 15 c6 5a 00 00                            	lea    r10,[rip+0x5ac6]        # 0x5b2ff0a6b80
 5b2ff0a10ba:	43 ff 24 da                                     	jmp    QWORD PTR [r10+r11*8]
 5b2ff0a10be:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a10c1:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff0a10c8:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a10cc:	33 db                                           	xor    ebx,ebx
 5b2ff0a10ce:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a10d3:	0f 97 c3                                        	seta   bl
 5b2ff0a10d6:	41 0b db                                        	or     ebx,r11d
 5b2ff0a10d9:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a10dc:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
 5b2ff0a10e4:	41 0f 93 c3                                     	setae  r11b
 5b2ff0a10e8:	44 0b db                                        	or     r11d,ebx
 5b2ff0a10eb:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a10f0:	0f 87 15 02 00 00                               	ja     0x5b2ff0a130b
 5b2ff0a10f6:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
 5b2ff0a10fc:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a10ff:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a1102:	44 8b db                                        	mov    r11d,ebx
 5b2ff0a1105:	41 8b da                                        	mov    ebx,r10d
 5b2ff0a1108:	e9 35 02 00 00                                  	jmp    0x5b2ff0a1342
 5b2ff0a110d:	41 bb 01 00 00 00                               	mov    r11d,0x1
 5b2ff0a1113:	e9 f3 01 00 00                                  	jmp    0x5b2ff0a130b
 5b2ff0a1118:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a111b:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff0a1122:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a1126:	33 db                                           	xor    ebx,ebx
 5b2ff0a1128:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
 5b2ff0a112d:	0f 93 c3                                        	setae  bl
 5b2ff0a1130:	41 0b db                                        	or     ebx,r11d
 5b2ff0a1133:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a1136:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
 5b2ff0a113e:	41 0f 93 c3                                     	setae  r11b
 5b2ff0a1142:	44 0b db                                        	or     r11d,ebx
 5b2ff0a1145:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
 5b2ff0a114a:	0f 83 bb 01 00 00                               	jae    0x5b2ff0a130b
 5b2ff0a1150:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
 5b2ff0a1156:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a1159:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a115c:	44 8b db                                        	mov    r11d,ebx
 5b2ff0a115f:	41 8b da                                        	mov    ebx,r10d
 5b2ff0a1162:	e9 db 01 00 00                                  	jmp    0x5b2ff0a1342
 5b2ff0a1167:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a116a:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff0a1171:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a1175:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a117a:	7b 07                                           	jnp    0x5b2ff0a1183
 5b2ff0a117c:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a1181:	eb 06                                           	jmp    0x5b2ff0a1189
 5b2ff0a1183:	0f 95 c3                                        	setne  bl
 5b2ff0a1186:	0f b6 db                                        	movzx  ebx,bl
 5b2ff0a1189:	41 0b db                                        	or     ebx,r11d
 5b2ff0a118c:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a118f:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
 5b2ff0a1197:	41 0f 93 c3                                     	setae  r11b
 5b2ff0a119b:	44 0b db                                        	or     r11d,ebx
 5b2ff0a119e:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a11a3:	0f 8a 62 01 00 00                               	jp     0x5b2ff0a130b
 5b2ff0a11a9:	0f 85 5c 01 00 00                               	jne    0x5b2ff0a130b
 5b2ff0a11af:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
 5b2ff0a11b5:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a11b8:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a11bb:	44 8b db                                        	mov    r11d,ebx
 5b2ff0a11be:	41 8b da                                        	mov    ebx,r10d
 5b2ff0a11c1:	e9 7c 01 00 00                                  	jmp    0x5b2ff0a1342
 5b2ff0a11c6:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a11c9:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff0a11d0:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a11d4:	33 db                                           	xor    ebx,ebx
 5b2ff0a11d6:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
 5b2ff0a11db:	0f 97 c3                                        	seta   bl
 5b2ff0a11de:	41 0b db                                        	or     ebx,r11d
 5b2ff0a11e1:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a11e4:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
 5b2ff0a11ec:	41 0f 93 c3                                     	setae  r11b
 5b2ff0a11f0:	44 0b db                                        	or     r11d,ebx
 5b2ff0a11f3:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
 5b2ff0a11f8:	0f 87 0d 01 00 00                               	ja     0x5b2ff0a130b
 5b2ff0a11fe:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
 5b2ff0a1204:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a1207:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a120a:	44 8b db                                        	mov    r11d,ebx
 5b2ff0a120d:	41 8b da                                        	mov    ebx,r10d
 5b2ff0a1210:	e9 2d 01 00 00                                  	jmp    0x5b2ff0a1342
 5b2ff0a1215:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a1218:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a121d:	41 0f 93 c3                                     	setae  r11b
 5b2ff0a1221:	33 db                                           	xor    ebx,ebx
 5b2ff0a1223:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
 5b2ff0a122b:	0f 93 c3                                        	setae  bl
 5b2ff0a122e:	41 0b db                                        	or     ebx,r11d
 5b2ff0a1231:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a1234:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff0a123b:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a123f:	44 0b db                                        	or     r11d,ebx
 5b2ff0a1242:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a1247:	0f 83 be 00 00 00                               	jae    0x5b2ff0a130b
 5b2ff0a124d:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
 5b2ff0a1253:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a1256:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a1259:	44 8b db                                        	mov    r11d,ebx
 5b2ff0a125c:	41 8b da                                        	mov    ebx,r10d
 5b2ff0a125f:	e9 de 00 00 00                                  	jmp    0x5b2ff0a1342
 5b2ff0a1264:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a1267:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff0a126e:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a1272:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a1277:	7b 04                                           	jnp    0x5b2ff0a127d
 5b2ff0a1279:	33 db                                           	xor    ebx,ebx
 5b2ff0a127b:	eb 06                                           	jmp    0x5b2ff0a1283
 5b2ff0a127d:	0f 94 c3                                        	sete   bl
 5b2ff0a1280:	0f b6 db                                        	movzx  ebx,bl
 5b2ff0a1283:	41 0b db                                        	or     ebx,r11d
 5b2ff0a1286:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a1289:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
 5b2ff0a1291:	41 0f 93 c3                                     	setae  r11b
 5b2ff0a1295:	44 0b db                                        	or     r11d,ebx
 5b2ff0a1298:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a129d:	7a 06                                           	jp     0x5b2ff0a12a5
 5b2ff0a129f:	0f 84 66 00 00 00                               	je     0x5b2ff0a130b
 5b2ff0a12a5:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
 5b2ff0a12ab:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a12ae:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a12b1:	44 8b db                                        	mov    r11d,ebx
 5b2ff0a12b4:	41 8b da                                        	mov    ebx,r10d
 5b2ff0a12b7:	e9 86 00 00 00                                  	jmp    0x5b2ff0a1342
 5b2ff0a12bc:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a12bf:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff0a12c6:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a12ca:	33 db                                           	xor    ebx,ebx
 5b2ff0a12cc:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a12d1:	0f 97 c3                                        	seta   bl
 5b2ff0a12d4:	41 0b db                                        	or     ebx,r11d
 5b2ff0a12d7:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a12da:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
 5b2ff0a12e2:	41 0f 93 c3                                     	setae  r11b
 5b2ff0a12e6:	44 0b db                                        	or     r11d,ebx
 5b2ff0a12e9:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
 5b2ff0a12ee:	0f 87 17 00 00 00                               	ja     0x5b2ff0a130b
 5b2ff0a12f4:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
 5b2ff0a12fa:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a12fd:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a1300:	44 8b db                                        	mov    r11d,ebx
 5b2ff0a1303:	41 8b da                                        	mov    ebx,r10d
 5b2ff0a1306:	e9 37 00 00 00                                  	jmp    0x5b2ff0a1342
 5b2ff0a130b:	41 8b db                                        	mov    ebx,r11d
 5b2ff0a130e:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
 5b2ff0a1314:	e9 29 00 00 00                                  	jmp    0x5b2ff0a1342
 5b2ff0a1319:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a131c:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
 5b2ff0a1323:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a1327:	33 db                                           	xor    ebx,ebx
 5b2ff0a1329:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
 5b2ff0a1331:	0f 93 c3                                        	setae  bl
 5b2ff0a1334:	41 0b db                                        	or     ebx,r11d
 5b2ff0a1337:	44 8b 9d d8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x228]
 5b2ff0a133e:	41 83 f3 ff                                     	xor    r11d,0xffffffff
 5b2ff0a1342:	44 23 9d b0 fd ff ff                            	and    r11d,DWORD PTR [rbp-0x250]
 5b2ff0a1349:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
 5b2ff0a1350:	4c 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r11
 5b2ff0a1357:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a135b:	41 83 c0 01                                     	add    r8d,0x1
 5b2ff0a135f:	41 83 f8 04                                     	cmp    r8d,0x4
 5b2ff0a1363:	0f 85 57 fc ff ff                               	jne    0x5b2ff0a0fc0
 5b2ff0a1369:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
 5b2ff0a136d:	44 8b 85 b0 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x250]
 5b2ff0a1374:	45 85 c0                                        	test   r8d,r8d
 5b2ff0a1377:	0f 85 26 00 00 00                               	jne    0x5b2ff0a13a3
 5b2ff0a137d:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
 5b2ff0a1383:	4c 8b d6                                        	mov    r10,rsi
 5b2ff0a1386:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a1389:	4d 8b e2                                        	mov    r12,r10
 5b2ff0a138c:	4c 8b d8                                        	mov    r11,rax
 5b2ff0a138f:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0a1394:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
 5b2ff0a1398:	4c 8b fa                                        	mov    r15,rdx
 5b2ff0a139b:	49 8b f9                                        	mov    rdi,r9
 5b2ff0a139e:	e9 95 52 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a13a3:	c4 61 82 2a 4d 88                               	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0x78]
 5b2ff0a13a9:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
 5b2ff0a13ae:	c4 61 82 2a 9d a0 fe ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x160]
 5b2ff0a13b7:	c4 43 31 21 cb 10                               	vinsertps xmm9,xmm9,xmm11,0x10
 5b2ff0a13bd:	c4 61 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x100]
 5b2ff0a13c6:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
 5b2ff0a13cc:	c4 61 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0xe0]
 5b2ff0a13d5:	c4 43 31 21 cb 30                               	vinsertps xmm9,xmm9,xmm11,0x30
 5b2ff0a13db:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
 5b2ff0a13e3:	c4 41 20 59 c9                                  	vmulps xmm9,xmm11,xmm9
 5b2ff0a13e8:	49 8d 5c 24 1c                                  	lea    rbx,[r12+0x1c]
 5b2ff0a13ed:	c4 22 79 18 34 0b                               	vbroadcastss xmm14,DWORD PTR [rbx+r9*1]
 5b2ff0a13f3:	c4 41 30 59 f6                                  	vmulps xmm14,xmm9,xmm14
 5b2ff0a13f8:	c4 e1 82 2a 8d 78 ff ff ff                      	vcvtsi2ss xmm1,xmm15,QWORD PTR [rbp-0x88]
 5b2ff0a1401:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
 5b2ff0a1406:	c4 e1 82 2a 95 28 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xd8]
 5b2ff0a140f:	c4 e3 71 21 ca 10                               	vinsertps xmm1,xmm1,xmm2,0x10
 5b2ff0a1415:	c4 e1 82 2a 95 30 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xd0]
 5b2ff0a141e:	c4 e3 71 21 ca 20                               	vinsertps xmm1,xmm1,xmm2,0x20
 5b2ff0a1424:	c4 e1 82 2a 95 38 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xc8]
 5b2ff0a142d:	c4 e3 71 21 ca 30                               	vinsertps xmm1,xmm1,xmm2,0x30
 5b2ff0a1433:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
 5b2ff0a1437:	c4 e2 79 18 14 13                               	vbroadcastss xmm2,DWORD PTR [rbx+rdx*1]
 5b2ff0a143d:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
 5b2ff0a1441:	c5 88 58 da                                     	vaddps xmm3,xmm14,xmm2
 5b2ff0a1445:	4c 8b 15 c1 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5c1]        # 0x5b2ff09ea0d
 5b2ff0a144c:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0a1451:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff0a1455:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
 5b2ff0a145a:	c5 30 5c c9                                     	vsubps xmm9,xmm9,xmm1
 5b2ff0a145e:	c4 e2 79 18 0c 33                               	vbroadcastss xmm1,DWORD PTR [rbx+rsi*1]
 5b2ff0a1464:	c5 30 59 c9                                     	vmulps xmm9,xmm9,xmm1
 5b2ff0a1468:	c4 c1 60 58 c9                                  	vaddps xmm1,xmm3,xmm9
 5b2ff0a146d:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
 5b2ff0a1471:	c5 f0 c2 c3 02                                  	vcmpleps xmm0,xmm1,xmm3
 5b2ff0a1476:	c5 f8 50 d8                                     	vmovmskps ebx,xmm0
 5b2ff0a147a:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a147d:	41 23 d8                                        	and    ebx,r8d
 5b2ff0a1480:	0f 85 0c 00 00 00                               	jne    0x5b2ff0a1492
 5b2ff0a1486:	48 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rbx
 5b2ff0a148d:	e9 df 2a 00 00                                  	jmp    0x5b2ff0a3f71
 5b2ff0a1492:	c5 d0 5e c1                                     	vdivps xmm0,xmm5,xmm1
 5b2ff0a1496:	4d 8d 44 24 2c                                  	lea    r8,[r12+0x2c]
 5b2ff0a149b:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
 5b2ff0a14a1:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
 5b2ff0a14a5:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
 5b2ff0a14ab:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
 5b2ff0a14af:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
 5b2ff0a14b3:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
 5b2ff0a14b9:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0a14bd:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
 5b2ff0a14c1:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
 5b2ff0a14c5:	4d 8d 44 24 28                                  	lea    r8,[r12+0x28]
 5b2ff0a14ca:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
 5b2ff0a14d0:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
 5b2ff0a14d4:	c5 f8 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm6
 5b2ff0a14dc:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
 5b2ff0a14e2:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
 5b2ff0a14e6:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
 5b2ff0a14ea:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
 5b2ff0a14f0:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0a14f4:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
 5b2ff0a14f8:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
 5b2ff0a14fc:	4d 8d 44 24 24                                  	lea    r8,[r12+0x24]
 5b2ff0a1501:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
 5b2ff0a1507:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
 5b2ff0a150b:	c5 f8 11 b5 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm6
 5b2ff0a1513:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
 5b2ff0a1519:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
 5b2ff0a151d:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
 5b2ff0a1521:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
 5b2ff0a1527:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0a152b:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
 5b2ff0a152f:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
 5b2ff0a1533:	4d 8d 44 24 20                                  	lea    r8,[r12+0x20]
 5b2ff0a1538:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
 5b2ff0a153e:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
 5b2ff0a1542:	c5 f8 11 b5 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm6
 5b2ff0a154a:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
 5b2ff0a1550:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
 5b2ff0a1554:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
 5b2ff0a1558:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
 5b2ff0a155e:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0a1562:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
 5b2ff0a1566:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
 5b2ff0a156a:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a1571:	43 8b 8c 04 34 01 00 00                         	mov    ecx,DWORD PTR [r12+r8*1+0x134]
 5b2ff0a1579:	83 e9 01                                        	sub    ecx,0x1
 5b2ff0a157c:	48 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rbx
 5b2ff0a1583:	83 f9 01                                        	cmp    ecx,0x1
 5b2ff0a1586:	0f 86 59 17 00 00                               	jbe    0x5b2ff0a2ce5
 5b2ff0a158c:	43 8b 8c 04 38 01 00 00                         	mov    ecx,DWORD PTR [r12+r8*1+0x138]
 5b2ff0a1594:	43 83 bc 04 38 01 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x138],0x0
 5b2ff0a159d:	0f 85 24 00 00 00                               	jne    0x5b2ff0a15c7
 5b2ff0a15a3:	c5 78 10 85 40 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xc0]
 5b2ff0a15ab:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
 5b2ff0a15af:	c5 f8 10 b5 10 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xf0]
 5b2ff0a15b7:	c5 f8 10 bd f0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x110]
 5b2ff0a15bf:	41 8b fb                                        	mov    edi,r11d
 5b2ff0a15c2:	e9 0f 29 00 00                                  	jmp    0x5b2ff0a3ed6
 5b2ff0a15c7:	48 8b cb                                        	mov    rcx,rbx
 5b2ff0a15ca:	83 e1 08                                        	and    ecx,0x8
 5b2ff0a15cd:	83 e3 04                                        	and    ebx,0x4
 5b2ff0a15d0:	48 89 8d a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rcx
 5b2ff0a15d7:	48 8b 8d 38 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xc8]
 5b2ff0a15de:	83 e1 02                                        	and    ecx,0x2
 5b2ff0a15e1:	4c 8b 85 38 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xc8]
 5b2ff0a15e8:	41 83 e0 01                                     	and    r8d,0x1
 5b2ff0a15ec:	c5 f8 11 b5 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm6
 5b2ff0a15f4:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
 5b2ff0a15fc:	c5 f8 11 85 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm0
 5b2ff0a1604:	c5 78 11 8d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm9
 5b2ff0a160c:	c5 f8 11 95 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm2
 5b2ff0a1614:	c5 78 11 b5 30 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1d0],xmm14
 5b2ff0a161c:	c5 f8 11 ad 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm5
 5b2ff0a1624:	c5 f8 11 9d 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm3
 5b2ff0a162c:	48 89 9d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rbx
 5b2ff0a1633:	48 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rcx
 5b2ff0a163a:	4c 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r8
 5b2ff0a1641:	33 ff                                           	xor    edi,edi
 5b2ff0a1643:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
 5b2ff0a164b:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
 5b2ff0a1653:	e9 50 00 00 00                                  	jmp    0x5b2ff0a16a8
 5b2ff0a1658:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a1661:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a166a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a1673:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a167c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
 5b2ff0a1680:	c5 f8 10 9d 10 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1f0]
 5b2ff0a1688:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
 5b2ff0a1690:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
 5b2ff0a1698:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
 5b2ff0a16a0:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
 5b2ff0a16a8:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a16af:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0a16b2:	8b 95 00 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x400]
 5b2ff0a16b8:	8b 9d 08 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3f8]
 5b2ff0a16be:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
 5b2ff0a16c5:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
 5b2ff0a16cc:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0a16d1:	0f 85 84 52 00 00                               	jne    0x5b2ff0a695b
 5b2ff0a16d7:	47 8b 8c 04 3c 01 00 00                         	mov    r9d,DWORD PTR [r12+r8*1+0x13c]
 5b2ff0a16df:	8b cf                                           	mov    ecx,edi
 5b2ff0a16e1:	41 d3 e9                                        	shr    r9d,cl
 5b2ff0a16e4:	41 f6 c1 01                                     	test   r9b,0x1
 5b2ff0a16e8:	0f 85 31 00 00 00                               	jne    0x5b2ff0a171f
 5b2ff0a16ee:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
 5b2ff0a16f5:	44 8b cf                                        	mov    r9d,edi
 5b2ff0a16f8:	41 c1 e1 06                                     	shl    r9d,0x6
 5b2ff0a16fc:	41 03 c9                                        	add    ecx,r9d
 5b2ff0a16ff:	c4 c1 7a 7f 6c 0c 30                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x30],xmm5
 5b2ff0a1706:	c4 c1 7a 7f 6c 0c 20                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x20],xmm5
 5b2ff0a170d:	c4 c1 7a 7f 6c 0c 10                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x10],xmm5
 5b2ff0a1714:	c4 c1 7a 7f 2c 0c                               	vmovdqu XMMWORD PTR [r12+rcx*1],xmm5
 5b2ff0a171a:	e9 14 12 00 00                                  	jmp    0x5b2ff0a2933
 5b2ff0a171f:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
 5b2ff0a1726:	44 8b cf                                        	mov    r9d,edi
 5b2ff0a1729:	41 c1 e1 06                                     	shl    r9d,0x6
 5b2ff0a172d:	44 03 c9                                        	add    r9d,ecx
 5b2ff0a1730:	6b cf 4c                                        	imul   ecx,edi,0x4c
 5b2ff0a1733:	03 c8                                           	add    ecx,eax
 5b2ff0a1735:	41 8b 7c 0c 38                                  	mov    edi,DWORD PTR [r12+rcx*1+0x38]
 5b2ff0a173a:	41 83 7c 0c 38 00                               	cmp    DWORD PTR [r12+rcx*1+0x38],0x0
 5b2ff0a1740:	0f 85 a1 11 00 00                               	jne    0x5b2ff0a28e7
 5b2ff0a1746:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
 5b2ff0a174c:	c1 e7 04                                        	shl    edi,0x4
 5b2ff0a174f:	46 8d 04 3f                                     	lea    r8d,[rdi+r15*1]
 5b2ff0a1753:	4d 8d 7c 24 04                                  	lea    r15,[r12+0x4]
 5b2ff0a1758:	c4 02 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+r8*1]
 5b2ff0a175e:	c4 41 08 59 c0                                  	vmulps xmm8,xmm14,xmm8
 5b2ff0a1763:	8d 04 3b                                        	lea    eax,[rbx+rdi*1]
 5b2ff0a1766:	c4 42 79 18 14 07                               	vbroadcastss xmm10,DWORD PTR [r15+rax*1]
 5b2ff0a176c:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
 5b2ff0a1771:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
 5b2ff0a1776:	03 fa                                           	add    edi,edx
 5b2ff0a1778:	c4 42 79 18 14 3f                               	vbroadcastss xmm10,DWORD PTR [r15+rdi*1]
 5b2ff0a177e:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
 5b2ff0a1783:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
 5b2ff0a1788:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
 5b2ff0a178d:	c4 02 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+r8*1]
 5b2ff0a1793:	c4 41 08 59 d2                                  	vmulps xmm10,xmm14,xmm10
 5b2ff0a1798:	c4 42 79 18 1c 04                               	vbroadcastss xmm11,DWORD PTR [r12+rax*1]
 5b2ff0a179e:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
 5b2ff0a17a3:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
 5b2ff0a17a8:	c4 42 79 18 1c 3c                               	vbroadcastss xmm11,DWORD PTR [r12+rdi*1]
 5b2ff0a17ae:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
 5b2ff0a17b3:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
 5b2ff0a17b8:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
 5b2ff0a17bd:	45 8b 3c 0c                                     	mov    r15d,DWORD PTR [r12+rcx*1]
 5b2ff0a17c1:	41 83 ff 01                                     	cmp    r15d,0x1
 5b2ff0a17c5:	0f 85 2d 0e 00 00                               	jne    0x5b2ff0a25f8
 5b2ff0a17cb:	41 8b 5c 0c 28                                  	mov    ebx,DWORD PTR [r12+rcx*1+0x28]
 5b2ff0a17d0:	85 db                                           	test   ebx,ebx
 5b2ff0a17d2:	0f 84 20 0e 00 00                               	je     0x5b2ff0a25f8
 5b2ff0a17d8:	41 8b 54 0c 1c                                  	mov    edx,DWORD PTR [r12+rcx*1+0x1c]
 5b2ff0a17dd:	85 d2                                           	test   edx,edx
 5b2ff0a17df:	0f 8e 13 0e 00 00                               	jle    0x5b2ff0a25f8
 5b2ff0a17e5:	45 8b 5c 0c 20                                  	mov    r11d,DWORD PTR [r12+rcx*1+0x20]
 5b2ff0a17ea:	45 85 db                                        	test   r11d,r11d
 5b2ff0a17ed:	0f 8e 01 0e 00 00                               	jle    0x5b2ff0a25f4
 5b2ff0a17f3:	44 8b d2                                        	mov    r10d,edx
 5b2ff0a17f6:	c4 41 82 2a da                                  	vcvtsi2ss xmm11,xmm15,r10
 5b2ff0a17fb:	c4 42 79 18 db                                  	vbroadcastss xmm11,xmm11
 5b2ff0a1800:	41 8b 7c 0c 10                                  	mov    edi,DWORD PTR [r12+rcx*1+0x10]
 5b2ff0a1805:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a1808:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
 5b2ff0a180e:	41 0f 95 c0                                     	setne  r8b
 5b2ff0a1812:	81 ff 00 29 00 00                               	cmp    edi,0x2900
 5b2ff0a1818:	40 0f 95 c7                                     	setne  dil
 5b2ff0a181c:	40 0f b6 ff                                     	movzx  edi,dil
 5b2ff0a1820:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
 5b2ff0a1827:	41 23 f8                                        	and    edi,r8d
 5b2ff0a182a:	0f 85 0f 00 00 00                               	jne    0x5b2ff0a183f
 5b2ff0a1830:	c4 41 60 5f d2                                  	vmaxps xmm10,xmm3,xmm10
 5b2ff0a1835:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
 5b2ff0a183a:	e9 0b 00 00 00                                  	jmp    0x5b2ff0a184a
 5b2ff0a183f:	c4 43 79 08 e2 09                               	vroundps xmm12,xmm10,0x9
 5b2ff0a1845:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
 5b2ff0a184a:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
 5b2ff0a184f:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a1852:	c4 41 82 2a da                                  	vcvtsi2ss xmm11,xmm15,r10
 5b2ff0a1857:	c4 42 79 18 db                                  	vbroadcastss xmm11,xmm11
 5b2ff0a185c:	45 8b 44 0c 14                                  	mov    r8d,DWORD PTR [r12+rcx*1+0x14]
 5b2ff0a1861:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a1864:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
 5b2ff0a186b:	41 0f 95 c7                                     	setne  r15b
 5b2ff0a186f:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
 5b2ff0a1876:	41 0f 95 c0                                     	setne  r8b
 5b2ff0a187a:	45 0f b6 c0                                     	movzx  r8d,r8b
 5b2ff0a187e:	45 23 c7                                        	and    r8d,r15d
 5b2ff0a1881:	0f 85 0f 00 00 00                               	jne    0x5b2ff0a1896
 5b2ff0a1887:	c4 41 60 5f c0                                  	vmaxps xmm8,xmm3,xmm8
 5b2ff0a188c:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
 5b2ff0a1891:	e9 0b 00 00 00                                  	jmp    0x5b2ff0a18a1
 5b2ff0a1896:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
 5b2ff0a189c:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
 5b2ff0a18a1:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
 5b2ff0a18a6:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
 5b2ff0a18b0:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
 5b2ff0a18b5:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
 5b2ff0a18ba:	c4 41 38 58 e3                                  	vaddps xmm12,xmm8,xmm11
 5b2ff0a18bf:	45 8b 7c 0c 0c                                  	mov    r15d,DWORD PTR [r12+rcx*1+0xc]
 5b2ff0a18c4:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a18c7:	41 81 7c 0c 0c 00 26 00 00                      	cmp    DWORD PTR [r12+rcx*1+0xc],0x2600
 5b2ff0a18d0:	41 0f 94 c7                                     	sete   r15b
 5b2ff0a18d4:	45 85 ff                                        	test   r15d,r15d
 5b2ff0a18d7:	0f 85 6b 00 00 00                               	jne    0x5b2ff0a1948
 5b2ff0a18dd:	c4 43 79 08 c4 09                               	vroundps xmm8,xmm12,0x9
 5b2ff0a18e3:	49 ba 50 08 09 67 4c 63 00 00                   	movabs r10,0x634c67090850
 5b2ff0a18ed:	c4 41 38 54 2a                                  	vandps xmm13,xmm8,XMMWORD PTR [r10]
 5b2ff0a18f2:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
 5b2ff0a18fc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0a1901:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0a1905:	c5 10 c2 eb 01                                  	vcmpltps xmm13,xmm13,xmm3
 5b2ff0a190a:	4c 8b 15 d8 b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb8d8]        # 0x5b2ff09d1e9
 5b2ff0a1911:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0a1917:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
 5b2ff0a191c:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0a1922:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
 5b2ff0a1926:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
 5b2ff0a192b:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
 5b2ff0a1930:	c4 41 79 28 d8                                  	vmovapd xmm11,xmm8
 5b2ff0a1935:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
 5b2ff0a193a:	c4 41 79 28 e5                                  	vmovapd xmm12,xmm13
 5b2ff0a193f:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
 5b2ff0a1943:	e9 4a 00 00 00                                  	jmp    0x5b2ff0a1992
 5b2ff0a1948:	c4 43 79 08 d8 09                               	vroundps xmm11,xmm8,0x9
 5b2ff0a194e:	4c 8b 15 90 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff90]        # 0x5b2ff0a18e5
 5b2ff0a1955:	c4 41 20 54 22                                  	vandps xmm12,xmm11,XMMWORD PTR [r10]
 5b2ff0a195a:	4c 8b 15 93 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff93]        # 0x5b2ff0a18f4
 5b2ff0a1961:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
 5b2ff0a1966:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
 5b2ff0a196b:	c4 41 18 c2 e5 01                               	vcmpltps xmm12,xmm12,xmm13
 5b2ff0a1971:	4c 8b 15 71 b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb871]        # 0x5b2ff09d1e9
 5b2ff0a1978:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
 5b2ff0a197e:	c4 c1 20 54 e7                                  	vandps xmm4,xmm11,xmm15
 5b2ff0a1983:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
 5b2ff0a1989:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
 5b2ff0a198d:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
 5b2ff0a1992:	c4 c3 79 08 da 09                               	vroundps xmm3,xmm10,0x9
 5b2ff0a1998:	4c 8b 15 4a b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb84a]        # 0x5b2ff09d1e9
 5b2ff0a199f:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
 5b2ff0a19a4:	c4 c1 60 54 ff                                  	vandps xmm7,xmm3,xmm15
 5b2ff0a19a9:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
 5b2ff0a19af:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
 5b2ff0a19b3:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
 5b2ff0a19b8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
 5b2ff0a19c2:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
 5b2ff0a19c7:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
 5b2ff0a19cb:	4c 8b 15 13 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff13]        # 0x5b2ff0a18e5
 5b2ff0a19d2:	c4 41 60 54 0a                                  	vandps xmm9,xmm3,XMMWORD PTR [r10]
 5b2ff0a19d7:	c4 41 30 c2 cd 01                               	vcmpltps xmm9,xmm9,xmm13
 5b2ff0a19dd:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
 5b2ff0a19e1:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
 5b2ff0a19e6:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0a19eb:	8d 42 ff                                        	lea    eax,[rdx-0x1]
 5b2ff0a19ee:	c5 79 6e c8                                     	vmovd  xmm9,eax
 5b2ff0a19f2:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
 5b2ff0a19f7:	41 8b 44 0c 2c                                  	mov    eax,DWORD PTR [r12+rcx*1+0x2c]
 5b2ff0a19fc:	c4 62 41 3d e9                                  	vpmaxsd xmm13,xmm7,xmm1
 5b2ff0a1a01:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
 5b2ff0a1a06:	85 ff                                           	test   edi,edi
 5b2ff0a1a08:	0f 84 5a 00 00 00                               	je     0x5b2ff0a1a68
 5b2ff0a1a0e:	c5 79 6e e8                                     	vmovd  xmm13,eax
 5b2ff0a1a12:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0a1a17:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
 5b2ff0a1a1c:	85 c0                                           	test   eax,eax
 5b2ff0a1a1e:	0f 85 44 00 00 00                               	jne    0x5b2ff0a1a68
 5b2ff0a1a24:	c5 79 6e ea                                     	vmovd  xmm13,edx
 5b2ff0a1a28:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0a1a2d:	c4 c1 41 66 d1                                  	vpcmpgtd xmm2,xmm7,xmm9
 5b2ff0a1a32:	c4 c1 69 db d5                                  	vpand  xmm2,xmm2,xmm13
 5b2ff0a1a37:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a1a3c:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
 5b2ff0a1a41:	c5 71 66 f7                                     	vpcmpgtd xmm14,xmm1,xmm7
 5b2ff0a1a45:	c5 09 df fa                                     	vpandn xmm15,xmm14,xmm2
 5b2ff0a1a49:	c4 41 11 db ee                                  	vpand  xmm13,xmm13,xmm14
 5b2ff0a1a4e:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
 5b2ff0a1a53:	c4 41 41 fe ed                                  	vpaddd xmm13,xmm7,xmm13
 5b2ff0a1a58:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
 5b2ff0a1a60:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
 5b2ff0a1a68:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
 5b2ff0a1a6c:	c4 c1 59 db c4                                  	vpand  xmm0,xmm4,xmm12
 5b2ff0a1a71:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a1a76:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
 5b2ff0a1a7a:	c4 41 79 6e e1                                  	vmovd  xmm12,r9d
 5b2ff0a1a7f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a1a84:	41 8b 4c 0c 30                                  	mov    ecx,DWORD PTR [r12+rcx*1+0x30]
 5b2ff0a1a89:	c4 e2 79 3d e1                                  	vpmaxsd xmm4,xmm0,xmm1
 5b2ff0a1a8e:	c4 c2 59 39 e4                                  	vpminsd xmm4,xmm4,xmm12
 5b2ff0a1a93:	45 85 c0                                        	test   r8d,r8d
 5b2ff0a1a96:	0f 84 49 00 00 00                               	je     0x5b2ff0a1ae5
 5b2ff0a1a9c:	c5 f9 6e e1                                     	vmovd  xmm4,ecx
 5b2ff0a1aa0:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
 5b2ff0a1aa5:	c5 d9 db e0                                     	vpand  xmm4,xmm4,xmm0
 5b2ff0a1aa9:	85 c9                                           	test   ecx,ecx
 5b2ff0a1aab:	0f 85 34 00 00 00                               	jne    0x5b2ff0a1ae5
 5b2ff0a1ab1:	c4 c1 79 6e e3                                  	vmovd  xmm4,r11d
 5b2ff0a1ab6:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
 5b2ff0a1abb:	c4 c1 79 66 d4                                  	vpcmpgtd xmm2,xmm0,xmm12
 5b2ff0a1ac0:	c5 e9 db d4                                     	vpand  xmm2,xmm2,xmm4
 5b2ff0a1ac4:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a1ac9:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
 5b2ff0a1ace:	c5 71 66 f0                                     	vpcmpgtd xmm14,xmm1,xmm0
 5b2ff0a1ad2:	c5 09 df fa                                     	vpandn xmm15,xmm14,xmm2
 5b2ff0a1ad6:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
 5b2ff0a1adb:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
 5b2ff0a1ae0:	c4 c1 79 fe e6                                  	vpaddd xmm4,xmm0,xmm14
 5b2ff0a1ae5:	c5 f9 6e d2                                     	vmovd  xmm2,edx
 5b2ff0a1ae9:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
 5b2ff0a1aee:	c4 e2 59 40 e2                                  	vpmulld xmm4,xmm4,xmm2
 5b2ff0a1af3:	c4 41 59 fe f5                                  	vpaddd xmm14,xmm4,xmm13
 5b2ff0a1af8:	c4 63 79 16 f2 03                               	vpextrd edx,xmm14,0x3
 5b2ff0a1afe:	c4 43 79 16 f1 02                               	vpextrd r9d,xmm14,0x2
 5b2ff0a1b04:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
 5b2ff0a1b0b:	c4 63 79 16 f2 01                               	vpextrd edx,xmm14,0x1
 5b2ff0a1b11:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
 5b2ff0a1b18:	c4 41 79 7e f1                                  	vmovd  r9d,xmm14
 5b2ff0a1b1d:	45 85 ff                                        	test   r15d,r15d
 5b2ff0a1b20:	0f 85 dd 08 00 00                               	jne    0x5b2ff0a2403
 5b2ff0a1b26:	c5 c1 fe fe                                     	vpaddd xmm7,xmm7,xmm6
 5b2ff0a1b2a:	c4 62 41 3d f1                                  	vpmaxsd xmm14,xmm7,xmm1
 5b2ff0a1b2f:	c4 42 09 39 f1                                  	vpminsd xmm14,xmm14,xmm9
 5b2ff0a1b34:	85 ff                                           	test   edi,edi
 5b2ff0a1b36:	0f 84 41 00 00 00                               	je     0x5b2ff0a1b7d
 5b2ff0a1b3c:	c5 79 6e f0                                     	vmovd  xmm14,eax
 5b2ff0a1b40:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
 5b2ff0a1b45:	c4 41 41 db f6                                  	vpand  xmm14,xmm7,xmm14
 5b2ff0a1b4a:	85 c0                                           	test   eax,eax
 5b2ff0a1b4c:	0f 85 2b 00 00 00                               	jne    0x5b2ff0a1b7d
 5b2ff0a1b52:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
 5b2ff0a1b57:	c5 31 db ca                                     	vpand  xmm9,xmm9,xmm2
 5b2ff0a1b5b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a1b60:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
 5b2ff0a1b65:	c5 71 66 f7                                     	vpcmpgtd xmm14,xmm1,xmm7
 5b2ff0a1b69:	c4 41 09 df f9                                  	vpandn xmm15,xmm14,xmm9
 5b2ff0a1b6e:	c4 41 69 db ce                                  	vpand  xmm9,xmm2,xmm14
 5b2ff0a1b73:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff0a1b78:	c4 41 41 fe f1                                  	vpaddd xmm14,xmm7,xmm9
 5b2ff0a1b7d:	c5 f9 fe c6                                     	vpaddd xmm0,xmm0,xmm6
 5b2ff0a1b81:	c4 e2 79 3d f9                                  	vpmaxsd xmm7,xmm0,xmm1
 5b2ff0a1b86:	c4 c2 41 39 fc                                  	vpminsd xmm7,xmm7,xmm12
 5b2ff0a1b8b:	45 85 c0                                        	test   r8d,r8d
 5b2ff0a1b8e:	0f 84 49 00 00 00                               	je     0x5b2ff0a1bdd
 5b2ff0a1b94:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
 5b2ff0a1b98:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0a1b9d:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
 5b2ff0a1ba1:	85 c9                                           	test   ecx,ecx
 5b2ff0a1ba3:	0f 85 34 00 00 00                               	jne    0x5b2ff0a1bdd
 5b2ff0a1ba9:	c4 c1 79 6e fb                                  	vmovd  xmm7,r11d
 5b2ff0a1bae:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0a1bb3:	c4 41 79 66 cc                                  	vpcmpgtd xmm9,xmm0,xmm12
 5b2ff0a1bb8:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
 5b2ff0a1bbc:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a1bc1:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
 5b2ff0a1bc6:	c5 71 66 e0                                     	vpcmpgtd xmm12,xmm1,xmm0
 5b2ff0a1bca:	c4 41 19 df f9                                  	vpandn xmm15,xmm12,xmm9
 5b2ff0a1bcf:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
 5b2ff0a1bd4:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0a1bd9:	c5 f9 fe ff                                     	vpaddd xmm7,xmm0,xmm7
 5b2ff0a1bdd:	c4 e2 41 40 c2                                  	vpmulld xmm0,xmm7,xmm2
 5b2ff0a1be2:	c4 c1 79 fe fd                                  	vpaddd xmm7,xmm0,xmm13
 5b2ff0a1be7:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
 5b2ff0a1bee:	0f 84 72 00 00 00                               	je     0x5b2ff0a1c66
 5b2ff0a1bf4:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
 5b2ff0a1bfb:	0f 85 07 00 00 00                               	jne    0x5b2ff0a1c08
 5b2ff0a1c01:	33 ff                                           	xor    edi,edi
 5b2ff0a1c03:	e9 08 00 00 00                                  	jmp    0x5b2ff0a1c10
 5b2ff0a1c08:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
 5b2ff0a1c0c:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a1c10:	83 bd f0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x210],0x0
 5b2ff0a1c17:	0f 85 08 00 00 00                               	jne    0x5b2ff0a1c25
 5b2ff0a1c1d:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a1c20:	e9 08 00 00 00                                  	jmp    0x5b2ff0a1c2d
 5b2ff0a1c25:	44 8d 04 93                                     	lea    r8d,[rbx+rdx*4]
 5b2ff0a1c29:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a1c2d:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
 5b2ff0a1c34:	0f 85 08 00 00 00                               	jne    0x5b2ff0a1c42
 5b2ff0a1c3a:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a1c3d:	e9 0f 00 00 00                                  	jmp    0x5b2ff0a1c51
 5b2ff0a1c42:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
 5b2ff0a1c49:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a1c4d:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a1c51:	83 bd a0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x160],0x0
 5b2ff0a1c58:	0f 85 3b 00 00 00                               	jne    0x5b2ff0a1c99
 5b2ff0a1c5e:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a1c61:	e9 42 00 00 00                                  	jmp    0x5b2ff0a1ca8
 5b2ff0a1c66:	c5 11 fe ce                                     	vpaddd xmm9,xmm13,xmm6
 5b2ff0a1c6a:	c4 41 09 76 c9                                  	vpcmpeqd xmm9,xmm14,xmm9
 5b2ff0a1c6f:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
 5b2ff0a1c74:	83 ff 0f                                        	cmp    edi,0xf
 5b2ff0a1c77:	0f 84 f2 02 00 00                               	je     0x5b2ff0a1f6f
 5b2ff0a1c7d:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
 5b2ff0a1c83:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1c86:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
 5b2ff0a1c8a:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
 5b2ff0a1c8d:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
 5b2ff0a1c91:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
 5b2ff0a1c95:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a1c99:	44 8b bd 20 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe0]
 5b2ff0a1ca0:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
 5b2ff0a1ca4:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
 5b2ff0a1ca8:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
 5b2ff0a1cac:	c5 79 6e e7                                     	vmovd  xmm12,edi
 5b2ff0a1cb0:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a1cb5:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
 5b2ff0a1cbc:	0f 84 8a 00 00 00                               	je     0x5b2ff0a1d4c
 5b2ff0a1cc2:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
 5b2ff0a1cc9:	0f 85 07 00 00 00                               	jne    0x5b2ff0a1cd6
 5b2ff0a1ccf:	33 ff                                           	xor    edi,edi
 5b2ff0a1cd1:	e9 0b 00 00 00                                  	jmp    0x5b2ff0a1ce1
 5b2ff0a1cd6:	c5 79 7e cf                                     	vmovd  edi,xmm9
 5b2ff0a1cda:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1cdd:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a1ce1:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
 5b2ff0a1ce8:	0f 85 07 00 00 00                               	jne    0x5b2ff0a1cf5
 5b2ff0a1cee:	33 c0                                           	xor    eax,eax
 5b2ff0a1cf0:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a1d02
 5b2ff0a1cf5:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
 5b2ff0a1cfb:	8d 04 83                                        	lea    eax,[rbx+rax*4]
 5b2ff0a1cfe:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
 5b2ff0a1d02:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
 5b2ff0a1d09:	0f 85 07 00 00 00                               	jne    0x5b2ff0a1d16
 5b2ff0a1d0f:	33 d2                                           	xor    edx,edx
 5b2ff0a1d11:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a1d23
 5b2ff0a1d16:	c4 63 79 16 ca 02                               	vpextrd edx,xmm9,0x2
 5b2ff0a1d1c:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
 5b2ff0a1d1f:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
 5b2ff0a1d23:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
 5b2ff0a1d2a:	0f 85 41 00 00 00                               	jne    0x5b2ff0a1d71
 5b2ff0a1d30:	c4 43 19 22 c8 01                               	vpinsrd xmm9,xmm12,r8d,0x1
 5b2ff0a1d36:	c5 79 6e e7                                     	vmovd  xmm12,edi
 5b2ff0a1d3a:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a1d3f:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
 5b2ff0a1d45:	33 c9                                           	xor    ecx,ecx
 5b2ff0a1d47:	e9 54 00 00 00                                  	jmp    0x5b2ff0a1da0
 5b2ff0a1d4c:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
 5b2ff0a1d52:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1d55:	41 8b 04 3c                                     	mov    eax,DWORD PTR [r12+rdi*1]
 5b2ff0a1d59:	c5 79 7e cf                                     	vmovd  edi,xmm9
 5b2ff0a1d5d:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1d60:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a1d64:	c4 63 79 16 ca 02                               	vpextrd edx,xmm9,0x2
 5b2ff0a1d6a:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
 5b2ff0a1d6d:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
 5b2ff0a1d71:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
 5b2ff0a1d77:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
 5b2ff0a1d7a:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
 5b2ff0a1d7e:	c4 43 19 22 c8 01                               	vpinsrd xmm9,xmm12,r8d,0x1
 5b2ff0a1d84:	c5 79 6e e7                                     	vmovd  xmm12,edi
 5b2ff0a1d88:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a1d8d:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
 5b2ff0a1d93:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
 5b2ff0a1d9a:	0f 84 78 00 00 00                               	je     0x5b2ff0a1e18
 5b2ff0a1da0:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
 5b2ff0a1da7:	0f 85 07 00 00 00                               	jne    0x5b2ff0a1db4
 5b2ff0a1dad:	33 ff                                           	xor    edi,edi
 5b2ff0a1daf:	e9 0b 00 00 00                                  	jmp    0x5b2ff0a1dbf
 5b2ff0a1db4:	c5 f9 7e ff                                     	vmovd  edi,xmm7
 5b2ff0a1db8:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1dbb:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a1dbf:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
 5b2ff0a1dc6:	0f 85 08 00 00 00                               	jne    0x5b2ff0a1dd4
 5b2ff0a1dcc:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a1dcf:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a1de2
 5b2ff0a1dd4:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
 5b2ff0a1dda:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
 5b2ff0a1dde:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a1de2:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
 5b2ff0a1de9:	0f 85 07 00 00 00                               	jne    0x5b2ff0a1df6
 5b2ff0a1def:	33 c0                                           	xor    eax,eax
 5b2ff0a1df1:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a1e03
 5b2ff0a1df6:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
 5b2ff0a1dfc:	8d 04 83                                        	lea    eax,[rbx+rax*4]
 5b2ff0a1dff:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
 5b2ff0a1e03:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
 5b2ff0a1e0a:	0f 85 2d 00 00 00                               	jne    0x5b2ff0a1e3d
 5b2ff0a1e10:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0a1e13:	e9 33 00 00 00                                  	jmp    0x5b2ff0a1e4b
 5b2ff0a1e18:	c4 e3 79 16 ff 01                               	vpextrd edi,xmm7,0x1
 5b2ff0a1e1e:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1e21:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
 5b2ff0a1e25:	c5 f9 7e ff                                     	vmovd  edi,xmm7
 5b2ff0a1e29:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1e2c:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a1e30:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
 5b2ff0a1e36:	8d 04 83                                        	lea    eax,[rbx+rax*4]
 5b2ff0a1e39:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
 5b2ff0a1e3d:	c4 c3 79 16 f9 03                               	vpextrd r9d,xmm7,0x3
 5b2ff0a1e43:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
 5b2ff0a1e47:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
 5b2ff0a1e4b:	c4 c3 31 22 fb 02                               	vpinsrd xmm7,xmm9,r11d,0x2
 5b2ff0a1e51:	c4 63 19 22 ca 02                               	vpinsrd xmm9,xmm12,edx,0x2
 5b2ff0a1e57:	c4 c1 79 fe c6                                  	vpaddd xmm0,xmm0,xmm14
 5b2ff0a1e5c:	c5 79 6e e7                                     	vmovd  xmm12,edi
 5b2ff0a1e60:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a1e65:	c4 43 19 22 e0 01                               	vpinsrd xmm12,xmm12,r8d,0x1
 5b2ff0a1e6b:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
 5b2ff0a1e71:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
 5b2ff0a1e78:	0f 84 79 00 00 00                               	je     0x5b2ff0a1ef7
 5b2ff0a1e7e:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
 5b2ff0a1e85:	0f 85 07 00 00 00                               	jne    0x5b2ff0a1e92
 5b2ff0a1e8b:	33 ff                                           	xor    edi,edi
 5b2ff0a1e8d:	e9 0b 00 00 00                                  	jmp    0x5b2ff0a1e9d
 5b2ff0a1e92:	c5 f9 7e c7                                     	vmovd  edi,xmm0
 5b2ff0a1e96:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1e99:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a1e9d:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
 5b2ff0a1ea4:	0f 85 08 00 00 00                               	jne    0x5b2ff0a1eb2
 5b2ff0a1eaa:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a1ead:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a1ec0
 5b2ff0a1eb2:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
 5b2ff0a1eb8:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
 5b2ff0a1ebc:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a1ec0:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
 5b2ff0a1ec7:	0f 85 08 00 00 00                               	jne    0x5b2ff0a1ed5
 5b2ff0a1ecd:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a1ed0:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a1ee3
 5b2ff0a1ed5:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
 5b2ff0a1edb:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a1edf:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a1ee3:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
 5b2ff0a1eea:	0f 85 2d 00 00 00                               	jne    0x5b2ff0a1f1d
 5b2ff0a1ef0:	33 c0                                           	xor    eax,eax
 5b2ff0a1ef2:	e9 33 00 00 00                                  	jmp    0x5b2ff0a1f2a
 5b2ff0a1ef7:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
 5b2ff0a1efd:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1f00:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
 5b2ff0a1f04:	c5 f9 7e c7                                     	vmovd  edi,xmm0
 5b2ff0a1f08:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1f0b:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a1f0f:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
 5b2ff0a1f15:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a1f19:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a1f1d:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
 5b2ff0a1f23:	8d 04 83                                        	lea    eax,[rbx+rax*4]
 5b2ff0a1f26:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
 5b2ff0a1f2a:	c4 c3 41 22 c7 03                               	vpinsrd xmm0,xmm7,r15d,0x3
 5b2ff0a1f30:	c4 e3 31 22 f9 03                               	vpinsrd xmm7,xmm9,ecx,0x3
 5b2ff0a1f36:	c5 79 6e cf                                     	vmovd  xmm9,edi
 5b2ff0a1f3a:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
 5b2ff0a1f3f:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
 5b2ff0a1f45:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
 5b2ff0a1f4b:	c4 63 31 22 c8 03                               	vpinsrd xmm9,xmm9,eax,0x3
 5b2ff0a1f51:	c4 43 19 22 e1 03                               	vpinsrd xmm12,xmm12,r9d,0x3
 5b2ff0a1f57:	c5 79 28 ff                                     	vmovapd xmm15,xmm7
 5b2ff0a1f5b:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
 5b2ff0a1f60:	c4 41 79 28 e7                                  	vmovapd xmm12,xmm15
 5b2ff0a1f65:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
 5b2ff0a1f6a:	e9 97 00 00 00                                  	jmp    0x5b2ff0a2006
 5b2ff0a1f6f:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
 5b2ff0a1f73:	c4 c1 7b 10 04 3c                               	vmovsd xmm0,QWORD PTR [r12+rdi*1]
 5b2ff0a1f79:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
 5b2ff0a1f7c:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
 5b2ff0a1f82:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
 5b2ff0a1f87:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
 5b2ff0a1f8d:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a1f90:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
 5b2ff0a1f96:	44 8b 85 20 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe0]
 5b2ff0a1f9d:	42 8d 3c 83                                     	lea    edi,[rbx+r8*4]
 5b2ff0a1fa1:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
 5b2ff0a1fa7:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
 5b2ff0a1fac:	c4 41 78 c6 e1 dd                               	vshufps xmm12,xmm0,xmm9,0xdd
 5b2ff0a1fb2:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
 5b2ff0a1fb8:	c5 c1 72 f7 02                                  	vpslld xmm7,xmm7,0x2
 5b2ff0a1fbd:	c5 f9 7e ff                                     	vmovd  edi,xmm7
 5b2ff0a1fc1:	03 fb                                           	add    edi,ebx
 5b2ff0a1fc3:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
 5b2ff0a1fc9:	c4 e3 79 16 ff 01                               	vpextrd edi,xmm7,0x1
 5b2ff0a1fcf:	03 fb                                           	add    edi,ebx
 5b2ff0a1fd1:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
 5b2ff0a1fd7:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
 5b2ff0a1fdc:	c4 e3 79 16 ff 02                               	vpextrd edi,xmm7,0x2
 5b2ff0a1fe2:	03 fb                                           	add    edi,ebx
 5b2ff0a1fe4:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
 5b2ff0a1fea:	c4 e3 79 16 ff 03                               	vpextrd edi,xmm7,0x3
 5b2ff0a1ff0:	03 fb                                           	add    edi,ebx
 5b2ff0a1ff2:	c4 c1 7b 10 3c 3c                               	vmovsd xmm7,QWORD PTR [r12+rdi*1]
 5b2ff0a1ff8:	c5 91 6c ff                                     	vpunpcklqdq xmm7,xmm13,xmm7
 5b2ff0a1ffc:	c5 30 c6 ef dd                                  	vshufps xmm13,xmm9,xmm7,0xdd
 5b2ff0a2001:	c5 b0 c6 ff 88                                  	vshufps xmm7,xmm9,xmm7,0x88
 5b2ff0a2006:	c4 41 38 5c c3                                  	vsubps xmm8,xmm8,xmm11
 5b2ff0a200b:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
 5b2ff0a2010:	c5 28 5c d3                                     	vsubps xmm10,xmm10,xmm3
 5b2ff0a2014:	c4 41 50 5c da                                  	vsubps xmm11,xmm5,xmm10
 5b2ff0a2019:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
 5b2ff0a2023:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a2028:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a202d:	c4 c1 79 db d6                                  	vpand  xmm2,xmm0,xmm14
 5b2ff0a2032:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a2037:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
 5b2ff0a203d:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
 5b2ff0a2042:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a2047:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
 5b2ff0a204c:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff0a2050:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
 5b2ff0a2054:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
 5b2ff0a2059:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0a205d:	c4 c1 19 db de                                  	vpand  xmm3,xmm12,xmm14
 5b2ff0a2062:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a2067:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
 5b2ff0a206d:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
 5b2ff0a2072:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a2077:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
 5b2ff0a207c:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
 5b2ff0a2080:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
 5b2ff0a2084:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
 5b2ff0a2089:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
 5b2ff0a208d:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
 5b2ff0a2091:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
 5b2ff0a2095:	c4 c1 41 db de                                  	vpand  xmm3,xmm7,xmm14
 5b2ff0a209a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a209f:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
 5b2ff0a20a5:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
 5b2ff0a20aa:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a20af:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
 5b2ff0a20b4:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
 5b2ff0a20b8:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
 5b2ff0a20bc:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
 5b2ff0a20c1:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
 5b2ff0a20c5:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
 5b2ff0a20ca:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a20cf:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff0a20d5:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff0a20da:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a20df:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff0a20e4:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff0a20e8:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff0a20ec:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff0a20f1:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
 5b2ff0a20f5:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
 5b2ff0a20f9:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
 5b2ff0a20fd:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
 5b2ff0a2101:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
 5b2ff0a210b:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0a2110:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0a2114:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
 5b2ff0a2118:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
 5b2ff0a211f:	c4 81 7a 7f 14 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm2
 5b2ff0a2125:	c5 e9 72 d0 10                                  	vpsrld xmm2,xmm0,0x10
 5b2ff0a212a:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
 5b2ff0a212f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a2134:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
 5b2ff0a213a:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
 5b2ff0a213f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a2144:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
 5b2ff0a2149:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff0a214d:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
 5b2ff0a2151:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
 5b2ff0a2156:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0a215a:	c4 c1 59 72 d4 10                               	vpsrld xmm4,xmm12,0x10
 5b2ff0a2160:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
 5b2ff0a2165:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a216a:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff0a2170:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff0a2175:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a217a:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff0a217f:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff0a2183:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff0a2187:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff0a218c:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
 5b2ff0a2190:	c5 e8 58 d4                                     	vaddps xmm2,xmm2,xmm4
 5b2ff0a2194:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
 5b2ff0a2198:	c5 d9 72 d7 10                                  	vpsrld xmm4,xmm7,0x10
 5b2ff0a219d:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
 5b2ff0a21a2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a21a7:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff0a21ad:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff0a21b2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a21b7:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff0a21bc:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff0a21c0:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff0a21c4:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff0a21c9:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
 5b2ff0a21cd:	c4 c1 71 72 d5 10                               	vpsrld xmm1,xmm13,0x10
 5b2ff0a21d3:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
 5b2ff0a21d8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a21dd:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff0a21e3:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff0a21e8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a21ed:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff0a21f2:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff0a21f6:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff0a21fa:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff0a21ff:	c5 a8 59 c9                                     	vmulps xmm1,xmm10,xmm1
 5b2ff0a2203:	c5 d8 58 c9                                     	vaddps xmm1,xmm4,xmm1
 5b2ff0a2207:	c5 b8 59 c9                                     	vmulps xmm1,xmm8,xmm1
 5b2ff0a220b:	c5 e8 58 c9                                     	vaddps xmm1,xmm2,xmm1
 5b2ff0a220f:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
 5b2ff0a2213:	c4 81 7a 7f 4c 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm1
 5b2ff0a221a:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
 5b2ff0a221f:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
 5b2ff0a2224:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a2229:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff0a222f:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff0a2234:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a2239:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff0a223e:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff0a2242:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff0a2246:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff0a224b:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
 5b2ff0a224f:	c4 c1 69 72 d4 08                               	vpsrld xmm2,xmm12,0x8
 5b2ff0a2255:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
 5b2ff0a225a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a225f:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
 5b2ff0a2265:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
 5b2ff0a226a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a226f:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
 5b2ff0a2274:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff0a2278:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
 5b2ff0a227c:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
 5b2ff0a2281:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
 5b2ff0a2285:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
 5b2ff0a2289:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0a228d:	c5 e9 72 d7 08                                  	vpsrld xmm2,xmm7,0x8
 5b2ff0a2292:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
 5b2ff0a2297:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a229c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
 5b2ff0a22a2:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
 5b2ff0a22a7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a22ac:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
 5b2ff0a22b1:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff0a22b5:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
 5b2ff0a22b9:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
 5b2ff0a22be:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0a22c2:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
 5b2ff0a22c8:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
 5b2ff0a22cd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a22d2:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
 5b2ff0a22d8:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
 5b2ff0a22dd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a22e2:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
 5b2ff0a22e8:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
 5b2ff0a22ed:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
 5b2ff0a22f2:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
 5b2ff0a22f7:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
 5b2ff0a22fc:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
 5b2ff0a2301:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
 5b2ff0a2306:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
 5b2ff0a230b:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
 5b2ff0a230f:	c4 01 7a 7f 74 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm14
 5b2ff0a2316:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
 5b2ff0a231b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a2320:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0a2326:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0a232b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a2330:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0a2335:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0a2339:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0a233d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0a2342:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
 5b2ff0a2346:	c4 c1 19 72 d4 18                               	vpsrld xmm12,xmm12,0x18
 5b2ff0a234c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a2351:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
 5b2ff0a2357:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
 5b2ff0a235c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a2361:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
 5b2ff0a2367:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
 5b2ff0a236c:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
 5b2ff0a2371:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
 5b2ff0a2376:	c4 41 28 59 e4                                  	vmulps xmm12,xmm10,xmm12
 5b2ff0a237b:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
 5b2ff0a2380:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0a2384:	c5 c1 72 d7 18                                  	vpsrld xmm7,xmm7,0x18
 5b2ff0a2389:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a238e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
 5b2ff0a2394:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
 5b2ff0a2399:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a239e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
 5b2ff0a23a3:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
 5b2ff0a23a7:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
 5b2ff0a23ab:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
 5b2ff0a23b0:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
 5b2ff0a23b4:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
 5b2ff0a23ba:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a23bf:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
 5b2ff0a23c5:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
 5b2ff0a23ca:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a23cf:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
 5b2ff0a23d5:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
 5b2ff0a23da:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
 5b2ff0a23df:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
 5b2ff0a23e4:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
 5b2ff0a23e9:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
 5b2ff0a23ee:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
 5b2ff0a23f2:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a23f6:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
 5b2ff0a23fe:	e9 cd 01 00 00                                  	jmp    0x5b2ff0a25d0
 5b2ff0a2403:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
 5b2ff0a240a:	0f 84 72 00 00 00                               	je     0x5b2ff0a2482
 5b2ff0a2410:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
 5b2ff0a2417:	0f 85 07 00 00 00                               	jne    0x5b2ff0a2424
 5b2ff0a241d:	33 ff                                           	xor    edi,edi
 5b2ff0a241f:	e9 08 00 00 00                                  	jmp    0x5b2ff0a242c
 5b2ff0a2424:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
 5b2ff0a2428:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a242c:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
 5b2ff0a2433:	0f 85 08 00 00 00                               	jne    0x5b2ff0a2441
 5b2ff0a2439:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a243c:	e9 08 00 00 00                                  	jmp    0x5b2ff0a2449
 5b2ff0a2441:	44 8d 04 93                                     	lea    r8d,[rbx+rdx*4]
 5b2ff0a2445:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a2449:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
 5b2ff0a2450:	0f 85 08 00 00 00                               	jne    0x5b2ff0a245e
 5b2ff0a2456:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a2459:	e9 0f 00 00 00                                  	jmp    0x5b2ff0a246d
 5b2ff0a245e:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
 5b2ff0a2465:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a2469:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a246d:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
 5b2ff0a2474:	0f 85 24 00 00 00                               	jne    0x5b2ff0a249e
 5b2ff0a247a:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a247d:	e9 2b 00 00 00                                  	jmp    0x5b2ff0a24ad
 5b2ff0a2482:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
 5b2ff0a2488:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a248b:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
 5b2ff0a248f:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
 5b2ff0a2492:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
 5b2ff0a2496:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
 5b2ff0a249a:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a249e:	44 8b bd 20 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe0]
 5b2ff0a24a5:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
 5b2ff0a24a9:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
 5b2ff0a24ad:	c5 f9 6e c7                                     	vmovd  xmm0,edi
 5b2ff0a24b1:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0a24b6:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
 5b2ff0a24bc:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
 5b2ff0a24c2:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
 5b2ff0a24c8:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x5b2ff0a201b
 5b2ff0a24cf:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a24d4:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a24d8:	c5 79 db c7                                     	vpand  xmm8,xmm0,xmm7
 5b2ff0a24dc:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a24e1:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0a24e7:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0a24ec:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a24f1:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0a24f7:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0a24fc:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0a2501:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0a2506:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x5b2ff0a2103
 5b2ff0a250d:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a2512:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a2517:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
 5b2ff0a251c:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
 5b2ff0a2523:	c4 01 7a 7f 04 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm8
 5b2ff0a2529:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
 5b2ff0a252e:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
 5b2ff0a2532:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a2537:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0a253d:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0a2542:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a2547:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0a254d:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0a2552:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0a2557:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0a255c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
 5b2ff0a2561:	c4 01 7a 7f 44 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm8
 5b2ff0a2568:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
 5b2ff0a256d:	c5 b9 db ff                                     	vpand  xmm7,xmm8,xmm7
 5b2ff0a2571:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a2576:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
 5b2ff0a257c:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
 5b2ff0a2581:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a2586:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
 5b2ff0a258b:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
 5b2ff0a258f:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
 5b2ff0a2593:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
 5b2ff0a2598:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
 5b2ff0a259d:	c4 81 7a 7f 7c 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm7
 5b2ff0a25a4:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
 5b2ff0a25a9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a25ae:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0a25b4:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0a25b9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a25be:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0a25c3:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0a25c7:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0a25cb:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0a25d0:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x5b2ff0a2103
 5b2ff0a25d7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a25dc:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a25e0:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0a25e4:	c4 81 7a 7f 44 1c 30                            	vmovdqu XMMWORD PTR [r12+r11*1+0x30],xmm0
 5b2ff0a25eb:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a25ef:	e9 3f 03 00 00                                  	jmp    0x5b2ff0a2933
 5b2ff0a25f4:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a25f8:	49 8d 5c 24 08                                  	lea    rbx,[r12+0x8]
 5b2ff0a25fd:	c4 a2 79 18 3c 03                               	vbroadcastss xmm7,DWORD PTR [rbx+r8*1]
 5b2ff0a2603:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
 5b2ff0a2608:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
 5b2ff0a260c:	c4 62 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [rbx+rax*1]
 5b2ff0a2612:	c5 79 28 ea                                     	vmovapd xmm13,xmm2
 5b2ff0a2616:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
 5b2ff0a261b:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
 5b2ff0a2620:	c4 62 79 18 24 3b                               	vbroadcastss xmm12,DWORD PTR [rbx+rdi*1]
 5b2ff0a2626:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
 5b2ff0a262b:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
 5b2ff0a2630:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
 5b2ff0a2634:	41 83 ff 03                                     	cmp    r15d,0x3
 5b2ff0a2638:	0f 84 61 02 00 00                               	je     0x5b2ff0a289f
 5b2ff0a263e:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
 5b2ff0a2646:	41 8b fb                                        	mov    edi,r11d
 5b2ff0a2649:	c4 41 7a 7f a4 3c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1c0],xmm12
 5b2ff0a2653:	c4 41 7a 7f a4 3c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1b0],xmm12
 5b2ff0a265d:	c4 41 7a 7f a4 3c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1a0],xmm12
 5b2ff0a2667:	c4 41 7a 7f 94 3c f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1f0],xmm10
 5b2ff0a2671:	c4 41 7a 7f 84 3c e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1e0],xmm8
 5b2ff0a267b:	c4 c1 7a 7f bc 3c d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1d0],xmm7
 5b2ff0a2685:	c4 41 7a 7f a4 3c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x190],xmm12
 5b2ff0a268f:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
 5b2ff0a2696:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
 5b2ff0a269d:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a26a0:	e9 28 00 00 00                                  	jmp    0x5b2ff0a26cd
 5b2ff0a26a5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a26ae:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a26b7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a26c0:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
 5b2ff0a26c6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a26c9:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a26cd:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
 5b2ff0a26d4:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0a26d9:	0f 85 f1 42 00 00                               	jne    0x5b2ff0a69d0
 5b2ff0a26df:	8b c1                                           	mov    eax,ecx
 5b2ff0a26e1:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a26e4:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a26eb:	d3 eb                                           	shr    ebx,cl
 5b2ff0a26ed:	f6 c3 01                                        	test   bl,0x1
 5b2ff0a26f0:	0f 84 ff 00 00 00                               	je     0x5b2ff0a27f5
 5b2ff0a26f6:	41 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+rax*1+0x10]
 5b2ff0a26fb:	41 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+rax*1+0xc]
 5b2ff0a2700:	45 8b 5c 04 08                                  	mov    r11d,DWORD PTR [r12+rax*1+0x8]
 5b2ff0a2705:	45 8b 5c 04 04                                  	mov    r11d,DWORD PTR [r12+rax*1+0x4]
 5b2ff0a270a:	45 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+rax*1]
 5b2ff0a270e:	41 83 ff 02                                     	cmp    r15d,0x2
 5b2ff0a2712:	0f 84 88 00 00 00                               	je     0x5b2ff0a27a0
 5b2ff0a2718:	45 85 ff                                        	test   r15d,r15d
 5b2ff0a271b:	0f 85 33 00 00 00                               	jne    0x5b2ff0a2754
 5b2ff0a2721:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
 5b2ff0a2729:	c4 81 7a 10 3c 3c                               	vmovss xmm7,DWORD PTR [r12+r15*1]
 5b2ff0a272f:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
 5b2ff0a2736:	41 8b d8                                        	mov    ebx,r8d
 5b2ff0a2739:	c1 e3 04                                        	shl    ebx,0x4
 5b2ff0a273c:	41 03 df                                        	add    ebx,r15d
 5b2ff0a273f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a2743:	41 8b c3                                        	mov    eax,r11d
 5b2ff0a2746:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
 5b2ff0a274a:	e8 d1 8a f2 ff                                  	call   0x5b2fefcb220
 5b2ff0a274f:	e9 a1 00 00 00                                  	jmp    0x5b2ff0a27f5
 5b2ff0a2754:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a2757:	8b 5c 06 14                                     	mov    ebx,DWORD PTR [rsi+rax*1+0x14]
 5b2ff0a275b:	46 8d a4 87 f0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1f0]
 5b2ff0a2763:	c4 a1 7a 10 3c 26                               	vmovss xmm7,DWORD PTR [rsi+r12*1]
 5b2ff0a2769:	46 8d a4 87 e0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1e0]
 5b2ff0a2771:	c4 a1 7a 10 14 26                               	vmovss xmm2,DWORD PTR [rsi+r12*1]
 5b2ff0a2777:	44 8d a7 90 01 00 00                            	lea    r12d,[rdi+0x190]
 5b2ff0a277e:	45 8b f8                                        	mov    r15d,r8d
 5b2ff0a2781:	41 c1 e7 04                                     	shl    r15d,0x4
 5b2ff0a2785:	45 03 e7                                        	add    r12d,r15d
 5b2ff0a2788:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a278c:	41 8b c3                                        	mov    eax,r11d
 5b2ff0a278f:	45 8b cc                                        	mov    r9d,r12d
 5b2ff0a2792:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
 5b2ff0a2796:	e8 9d 8a f2 ff                                  	call   0x5b2fefcb238
 5b2ff0a279b:	e9 55 00 00 00                                  	jmp    0x5b2ff0a27f5
 5b2ff0a27a0:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a27a3:	8b 5c 06 14                                     	mov    ebx,DWORD PTR [rsi+rax*1+0x14]
 5b2ff0a27a7:	44 8b 4c 06 18                                  	mov    r9d,DWORD PTR [rsi+rax*1+0x18]
 5b2ff0a27ac:	46 8d a4 87 f0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1f0]
 5b2ff0a27b4:	c4 a1 7a 10 0c 26                               	vmovss xmm1,DWORD PTR [rsi+r12*1]
 5b2ff0a27ba:	46 8d a4 87 e0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1e0]
 5b2ff0a27c2:	c4 a1 7a 10 14 26                               	vmovss xmm2,DWORD PTR [rsi+r12*1]
 5b2ff0a27c8:	46 8d a4 87 d0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1d0]
 5b2ff0a27d0:	c4 a1 7a 10 1c 26                               	vmovss xmm3,DWORD PTR [rsi+r12*1]
 5b2ff0a27d6:	44 8d a7 90 01 00 00                            	lea    r12d,[rdi+0x190]
 5b2ff0a27dd:	45 8b f8                                        	mov    r15d,r8d
 5b2ff0a27e0:	41 c1 e7 04                                     	shl    r15d,0x4
 5b2ff0a27e4:	45 03 e7                                        	add    r12d,r15d
 5b2ff0a27e7:	41 54                                           	push   r12
 5b2ff0a27e9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a27ed:	41 8b c3                                        	mov    eax,r11d
 5b2ff0a27f0:	e8 33 8a f2 ff                                  	call   0x5b2fefcb228
 5b2ff0a27f5:	44 8b 85 00 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x100]
 5b2ff0a27fc:	41 83 c0 01                                     	add    r8d,0x1
 5b2ff0a2800:	41 83 f8 04                                     	cmp    r8d,0x4
 5b2ff0a2804:	0f 85 b6 fe ff ff                               	jne    0x5b2ff0a26c0
 5b2ff0a280a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a280d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a2811:	c4 c1 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1b0]
 5b2ff0a281b:	c4 c1 7a 6f b4 38 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x1c0]
 5b2ff0a2825:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
 5b2ff0a2829:	c4 41 7a 6f 84 38 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x190]
 5b2ff0a2833:	c4 41 7a 6f 8c 38 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rdi*1+0x1a0]
 5b2ff0a283d:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
 5b2ff0a2842:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
 5b2ff0a2846:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
 5b2ff0a284c:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
 5b2ff0a2853:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
 5b2ff0a2857:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
 5b2ff0a285e:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
 5b2ff0a2862:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
 5b2ff0a2867:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
 5b2ff0a286b:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
 5b2ff0a2872:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
 5b2ff0a2876:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
 5b2ff0a287c:	44 8b df                                        	mov    r11d,edi
 5b2ff0a287f:	4d 8b e0                                        	mov    r12,r8
 5b2ff0a2882:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
 5b2ff0a288a:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
 5b2ff0a2892:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
 5b2ff0a289a:	e9 94 00 00 00                                  	jmp    0x5b2ff0a2933
 5b2ff0a289f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a28a3:	8b c1                                           	mov    eax,ecx
 5b2ff0a28a5:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
 5b2ff0a28aa:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
 5b2ff0a28af:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
 5b2ff0a28b3:	48 8b 95 38 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xc8]
 5b2ff0a28ba:	41 8b c9                                        	mov    ecx,r9d
 5b2ff0a28bd:	e8 66 8c f2 ff                                  	call   0x5b2fefcb528
 5b2ff0a28c2:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a28c6:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a28ca:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
 5b2ff0a28d2:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
 5b2ff0a28da:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
 5b2ff0a28e2:	e9 4c 00 00 00                                  	jmp    0x5b2ff0a2933
 5b2ff0a28e7:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a28ea:	48 8d 7e 3c                                     	lea    rdi,[rsi+0x3c]
 5b2ff0a28ee:	44 8b e1                                        	mov    r12d,ecx
 5b2ff0a28f1:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
 5b2ff0a28f7:	c4 a1 7a 7f 3c 0e                               	vmovdqu XMMWORD PTR [rsi+r9*1],xmm7
 5b2ff0a28fd:	48 8d 7e 40                                     	lea    rdi,[rsi+0x40]
 5b2ff0a2901:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
 5b2ff0a2907:	c4 a1 7a 7f 7c 0e 10                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x10],xmm7
 5b2ff0a290e:	48 8d 7e 44                                     	lea    rdi,[rsi+0x44]
 5b2ff0a2912:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
 5b2ff0a2918:	c4 a1 7a 7f 7c 0e 20                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x20],xmm7
 5b2ff0a291f:	48 8d 7e 48                                     	lea    rdi,[rsi+0x48]
 5b2ff0a2923:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
 5b2ff0a2929:	c4 a1 7a 7f 7c 0e 30                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x30],xmm7
 5b2ff0a2930:	4c 8b e6                                        	mov    r12,rsi
 5b2ff0a2933:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
 5b2ff0a2939:	83 c7 01                                        	add    edi,0x1
 5b2ff0a293c:	83 ff 04                                        	cmp    edi,0x4
 5b2ff0a293f:	0f 85 3b ed ff ff                               	jne    0x5b2ff0a1680
 5b2ff0a2945:	41 8b fb                                        	mov    edi,r11d
 5b2ff0a2948:	c4 c1 7a 6f 84 3c 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x90]
 5b2ff0a2952:	4c 8b 15 4f ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4f]        # 0x5b2ff0a18a8
 5b2ff0a2959:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a295e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a2962:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a2966:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
 5b2ff0a296e:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
 5b2ff0a2972:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
 5b2ff0a2977:	c4 41 7a 6f 84 3c a0 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0xa0]
 5b2ff0a2981:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
 5b2ff0a2985:	c5 78 10 8d 40 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xc0]
 5b2ff0a298d:	c5 30 58 cf                                     	vaddps xmm9,xmm9,xmm7
 5b2ff0a2991:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
 5b2ff0a2996:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
 5b2ff0a299b:	c4 41 7a 6f 84 3c b0 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0xb0]
 5b2ff0a29a5:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
 5b2ff0a29a9:	c5 78 10 95 f0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x110]
 5b2ff0a29b1:	c5 a8 58 ff                                     	vaddps xmm7,xmm10,xmm7
 5b2ff0a29b5:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
 5b2ff0a29b9:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a29bd:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
 5b2ff0a29c7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a29cc:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a29d0:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0a29d4:	c5 f8 10 bd 10 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1f0]
 5b2ff0a29dc:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
 5b2ff0a29e0:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
 5b2ff0a29e4:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0a29e8:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
 5b2ff0a29ec:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
 5b2ff0a29f1:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0a29f6:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a29fd:	47 8b 9c 04 38 01 00 00                         	mov    r11d,DWORD PTR [r12+r8*1+0x138]
 5b2ff0a2a05:	4d 8b fb                                        	mov    r15,r11
 5b2ff0a2a08:	41 83 c7 ff                                     	add    r15d,0xffffffff
 5b2ff0a2a0c:	0f 85 fc 00 00 00                               	jne    0x5b2ff0a2b0e
 5b2ff0a2a12:	c4 41 7a 6f 84 3c 70 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x170]
 5b2ff0a2a1c:	c4 41 7a 6f 8c 3c 30 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x130]
 5b2ff0a2a26:	4d 8d 9c 24 38 36 00 00                         	lea    r11,[r12+0x3638]
 5b2ff0a2a2e:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a2a32:	c4 42 79 18 14 03                               	vbroadcastss xmm10,DWORD PTR [r11+rax*1]
 5b2ff0a2a38:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
 5b2ff0a2a3d:	c4 41 40 5f d2                                  	vmaxps xmm10,xmm7,xmm10
 5b2ff0a2a42:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
 5b2ff0a2a47:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
 5b2ff0a2a4c:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
 5b2ff0a2a51:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0a2a56:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
 5b2ff0a2a5b:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
 5b2ff0a2a60:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0a2a65:	c4 41 7a 6f 8c 3c 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x160]
 5b2ff0a2a6f:	c4 41 7a 6f 94 3c 20 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x120]
 5b2ff0a2a79:	4d 8d 9c 24 34 36 00 00                         	lea    r11,[r12+0x3634]
 5b2ff0a2a81:	c4 42 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [r11+rax*1]
 5b2ff0a2a87:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
 5b2ff0a2a8c:	c4 41 40 5f e4                                  	vmaxps xmm12,xmm7,xmm12
 5b2ff0a2a91:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
 5b2ff0a2a96:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
 5b2ff0a2a9b:	c4 41 40 5f d2                                  	vmaxps xmm10,xmm7,xmm10
 5b2ff0a2aa0:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
 5b2ff0a2aa5:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
 5b2ff0a2aaa:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
 5b2ff0a2aaf:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0a2ab4:	c4 41 7a 6f 94 3c 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x150]
 5b2ff0a2abe:	c4 41 7a 6f a4 3c 10 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+rdi*1+0x110]
 5b2ff0a2ac8:	4d 8d 9c 24 30 36 00 00                         	lea    r11,[r12+0x3630]
 5b2ff0a2ad0:	c4 42 79 18 2c 03                               	vbroadcastss xmm13,DWORD PTR [r11+rax*1]
 5b2ff0a2ad6:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
 5b2ff0a2adb:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
 5b2ff0a2adf:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0a2ae3:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
 5b2ff0a2ae7:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
 5b2ff0a2aeb:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0a2aef:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff0a2af3:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
 5b2ff0a2af7:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0a2afb:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
 5b2ff0a2b00:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0a2b04:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
 5b2ff0a2b09:	e9 8f 01 00 00                                  	jmp    0x5b2ff0a2c9d
 5b2ff0a2b0e:	41 83 ff 02                                     	cmp    r15d,0x2
 5b2ff0a2b12:	0f 84 8b 00 00 00                               	je     0x5b2ff0a2ba3
 5b2ff0a2b18:	c4 c1 7a 6f 84 3c 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x130]
 5b2ff0a2b22:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
 5b2ff0a2b26:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
 5b2ff0a2b2a:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0a2b2e:	c4 41 7a 6f 8c 3c 20 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x120]
 5b2ff0a2b38:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
 5b2ff0a2b3d:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
 5b2ff0a2b42:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0a2b47:	49 8d 84 24 1c 37 00 00                         	lea    rax,[r12+0x371c]
 5b2ff0a2b4f:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
 5b2ff0a2b53:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
 5b2ff0a2b59:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
 5b2ff0a2b5e:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
 5b2ff0a2b63:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0a2b68:	c4 41 7a 6f 94 3c 10 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x110]
 5b2ff0a2b72:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
 5b2ff0a2b77:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
 5b2ff0a2b7c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0a2b81:	49 8d 84 24 18 37 00 00                         	lea    rax,[r12+0x3718]
 5b2ff0a2b89:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
 5b2ff0a2b8f:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
 5b2ff0a2b94:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
 5b2ff0a2b99:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0a2b9e:	e9 5a 00 00 00                                  	jmp    0x5b2ff0a2bfd
 5b2ff0a2ba3:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
 5b2ff0a2ba8:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
 5b2ff0a2bac:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0a2bb0:	49 8d 84 24 1c 37 00 00                         	lea    rax,[r12+0x371c]
 5b2ff0a2bb8:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
 5b2ff0a2bbc:	c4 22 79 18 04 38                               	vbroadcastss xmm8,DWORD PTR [rax+r15*1]
 5b2ff0a2bc2:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
 5b2ff0a2bc7:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
 5b2ff0a2bcc:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0a2bd1:	49 8d 84 24 18 37 00 00                         	lea    rax,[r12+0x3718]
 5b2ff0a2bd9:	c4 22 79 18 0c 38                               	vbroadcastss xmm9,DWORD PTR [rax+r15*1]
 5b2ff0a2bdf:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
 5b2ff0a2be4:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
 5b2ff0a2be9:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0a2bee:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
 5b2ff0a2bf3:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
 5b2ff0a2bf8:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
 5b2ff0a2bfd:	49 8d 84 24 20 37 00 00                         	lea    rax,[r12+0x3720]
 5b2ff0a2c05:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
 5b2ff0a2c0b:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
 5b2ff0a2c10:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
 5b2ff0a2c14:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0a2c18:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0a2c1c:	0f 84 78 00 00 00                               	je     0x5b2ff0a2c9a
 5b2ff0a2c22:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
 5b2ff0a2c2c:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
 5b2ff0a2c31:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
 5b2ff0a2c37:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
 5b2ff0a2c3d:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
 5b2ff0a2c42:	0f 87 09 00 00 00                               	ja     0x5b2ff0a2c51
 5b2ff0a2c48:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff0a2c4c:	e9 05 00 00 00                                  	jmp    0x5b2ff0a2c56
 5b2ff0a2c51:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
 5b2ff0a2c56:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
 5b2ff0a2c5b:	c5 78 2e ef                                     	vucomiss xmm13,xmm7
 5b2ff0a2c5f:	0f 87 0a 00 00 00                               	ja     0x5b2ff0a2c6f
 5b2ff0a2c65:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff0a2c6a:	e9 05 00 00 00                                  	jmp    0x5b2ff0a2c74
 5b2ff0a2c6f:	c4 c1 79 28 fd                                  	vmovapd xmm7,xmm13
 5b2ff0a2c74:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
 5b2ff0a2c79:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
 5b2ff0a2c7d:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0a2c81:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0a2c86:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
 5b2ff0a2c8b:	49 8b c7                                        	mov    rax,r15
 5b2ff0a2c8e:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a2c95:	e9 3c 12 00 00                                  	jmp    0x5b2ff0a3ed6
 5b2ff0a2c9a:	49 8b c7                                        	mov    rax,r15
 5b2ff0a2c9d:	c5 78 10 a5 10 ff ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0xf0]
 5b2ff0a2ca5:	c4 41 40 5f d4                                  	vmaxps xmm10,xmm7,xmm12
 5b2ff0a2caa:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
 5b2ff0a2caf:	c4 41 7a 6f a4 3c 40 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+rdi*1+0x140]
 5b2ff0a2cb9:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
 5b2ff0a2cbe:	c4 c1 40 5f fa                                  	vmaxps xmm7,xmm7,xmm10
 5b2ff0a2cc3:	c5 a0 5d ff                                     	vminps xmm7,xmm11,xmm7
 5b2ff0a2cc7:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
 5b2ff0a2ccb:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0a2ccf:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0a2cd4:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
 5b2ff0a2cd9:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a2ce0:	e9 f1 11 00 00                                  	jmp    0x5b2ff0a3ed6
 5b2ff0a2ce5:	43 8b 4c 04 38                                  	mov    ecx,DWORD PTR [r12+r8*1+0x38]
 5b2ff0a2cea:	c5 f8 11 b5 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm6
 5b2ff0a2cf2:	43 83 7c 04 38 00                               	cmp    DWORD PTR [r12+r8*1+0x38],0x0
 5b2ff0a2cf8:	0f 85 e6 10 00 00                               	jne    0x5b2ff0a3de4
 5b2ff0a2cfe:	49 8d 4c 24 54                                  	lea    rcx,[r12+0x54]
 5b2ff0a2d03:	c4 a2 79 18 0c 09                               	vbroadcastss xmm1,DWORD PTR [rcx+r9*1]
 5b2ff0a2d09:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
 5b2ff0a2d0d:	c4 e2 79 18 34 11                               	vbroadcastss xmm6,DWORD PTR [rcx+rdx*1]
 5b2ff0a2d13:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
 5b2ff0a2d17:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
 5b2ff0a2d1b:	c4 e2 79 18 0c 31                               	vbroadcastss xmm1,DWORD PTR [rcx+rsi*1]
 5b2ff0a2d21:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0a2d25:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
 5b2ff0a2d29:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
 5b2ff0a2d2d:	49 8d 4c 24 50                                  	lea    rcx,[r12+0x50]
 5b2ff0a2d32:	c4 a2 79 18 0c 09                               	vbroadcastss xmm1,DWORD PTR [rcx+r9*1]
 5b2ff0a2d38:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
 5b2ff0a2d3c:	c4 62 79 18 04 11                               	vbroadcastss xmm8,DWORD PTR [rcx+rdx*1]
 5b2ff0a2d42:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
 5b2ff0a2d47:	c4 41 70 58 c0                                  	vaddps xmm8,xmm1,xmm8
 5b2ff0a2d4c:	c4 e2 79 18 0c 31                               	vbroadcastss xmm1,DWORD PTR [rcx+rsi*1]
 5b2ff0a2d52:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0a2d56:	c5 38 58 c1                                     	vaddps xmm8,xmm8,xmm1
 5b2ff0a2d5a:	c4 c1 78 59 c8                                  	vmulps xmm1,xmm0,xmm8
 5b2ff0a2d5f:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
 5b2ff0a2d63:	83 f9 01                                        	cmp    ecx,0x1
 5b2ff0a2d66:	0f 85 50 0d 00 00                               	jne    0x5b2ff0a3abc
 5b2ff0a2d6c:	43 8b 7c 04 28                                  	mov    edi,DWORD PTR [r12+r8*1+0x28]
 5b2ff0a2d71:	85 ff                                           	test   edi,edi
 5b2ff0a2d73:	0f 84 43 0d 00 00                               	je     0x5b2ff0a3abc
 5b2ff0a2d79:	47 8b 7c 04 1c                                  	mov    r15d,DWORD PTR [r12+r8*1+0x1c]
 5b2ff0a2d7e:	45 85 ff                                        	test   r15d,r15d
 5b2ff0a2d81:	0f 8e 35 0d 00 00                               	jle    0x5b2ff0a3abc
 5b2ff0a2d87:	43 8b 44 04 20                                  	mov    eax,DWORD PTR [r12+r8*1+0x20]
 5b2ff0a2d8c:	85 c0                                           	test   eax,eax
 5b2ff0a2d8e:	0f 8e 24 0d 00 00                               	jle    0x5b2ff0a3ab8
 5b2ff0a2d94:	45 8b d7                                        	mov    r10d,r15d
 5b2ff0a2d97:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0a2d9c:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff0a2da1:	43 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+r8*1+0x10]
 5b2ff0a2da6:	33 f6                                           	xor    esi,esi
 5b2ff0a2da8:	81 f9 2f 81 00 00                               	cmp    ecx,0x812f
 5b2ff0a2dae:	40 0f 95 c6                                     	setne  sil
 5b2ff0a2db2:	81 f9 00 29 00 00                               	cmp    ecx,0x2900
 5b2ff0a2db8:	0f 95 c1                                        	setne  cl
 5b2ff0a2dbb:	0f b6 c9                                        	movzx  ecx,cl
 5b2ff0a2dbe:	23 ce                                           	and    ecx,esi
 5b2ff0a2dc0:	0f 85 0d 00 00 00                               	jne    0x5b2ff0a2dd3
 5b2ff0a2dc6:	c5 e0 5f f9                                     	vmaxps xmm7,xmm3,xmm1
 5b2ff0a2dca:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
 5b2ff0a2dce:	e9 0a 00 00 00                                  	jmp    0x5b2ff0a2ddd
 5b2ff0a2dd3:	c4 e3 79 08 f9 09                               	vroundps xmm7,xmm1,0x9
 5b2ff0a2dd9:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
 5b2ff0a2ddd:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0a2de1:	44 8b d0                                        	mov    r10d,eax
 5b2ff0a2de4:	c4 c1 82 2a fa                                  	vcvtsi2ss xmm7,xmm15,r10
 5b2ff0a2de9:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
 5b2ff0a2dee:	43 8b 74 04 14                                  	mov    esi,DWORD PTR [r12+r8*1+0x14]
 5b2ff0a2df3:	33 d2                                           	xor    edx,edx
 5b2ff0a2df5:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
 5b2ff0a2dfb:	0f 95 c2                                        	setne  dl
 5b2ff0a2dfe:	81 fe 00 29 00 00                               	cmp    esi,0x2900
 5b2ff0a2e04:	40 0f 95 c6                                     	setne  sil
 5b2ff0a2e08:	40 0f b6 f6                                     	movzx  esi,sil
 5b2ff0a2e0c:	23 f2                                           	and    esi,edx
 5b2ff0a2e0e:	0f 85 0d 00 00 00                               	jne    0x5b2ff0a2e21
 5b2ff0a2e14:	c5 e0 5f f6                                     	vmaxps xmm6,xmm3,xmm6
 5b2ff0a2e18:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
 5b2ff0a2e1c:	e9 0b 00 00 00                                  	jmp    0x5b2ff0a2e2c
 5b2ff0a2e21:	c4 63 79 08 c6 09                               	vroundps xmm8,xmm6,0x9
 5b2ff0a2e27:	c4 c1 48 5c f0                                  	vsubps xmm6,xmm6,xmm8
 5b2ff0a2e2c:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
 5b2ff0a2e30:	4c 8b 15 71 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea71]        # 0x5b2ff0a18a8
 5b2ff0a2e37:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a2e3c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a2e40:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
 5b2ff0a2e44:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
 5b2ff0a2e49:	33 d2                                           	xor    edx,edx
 5b2ff0a2e4b:	43 81 7c 04 0c 00 26 00 00                      	cmp    DWORD PTR [r12+r8*1+0xc],0x2600
 5b2ff0a2e54:	0f 94 c2                                        	sete   dl
 5b2ff0a2e57:	85 d2                                           	test   edx,edx
 5b2ff0a2e59:	0f 85 5b 00 00 00                               	jne    0x5b2ff0a2eba
 5b2ff0a2e5f:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
 5b2ff0a2e65:	4c 8b 15 79 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea79]        # 0x5b2ff0a18e5
 5b2ff0a2e6c:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
 5b2ff0a2e71:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x5b2ff0a18f4
 5b2ff0a2e78:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a2e7d:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a2e82:	c4 41 30 c2 ce 01                               	vcmpltps xmm9,xmm9,xmm14
 5b2ff0a2e88:	4c 8b 15 5a a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa35a]        # 0x5b2ff09d1e9
 5b2ff0a2e8f:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
 5b2ff0a2e94:	c4 c1 48 54 cf                                  	vandps xmm1,xmm6,xmm15
 5b2ff0a2e99:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
 5b2ff0a2e9f:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
 5b2ff0a2ea3:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
 5b2ff0a2ea8:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a2eac:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0a2eb0:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
 5b2ff0a2eb5:	e9 49 00 00 00                                  	jmp    0x5b2ff0a2f03
 5b2ff0a2eba:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
 5b2ff0a2ec0:	4c 8b 15 1e ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea1e]        # 0x5b2ff0a18e5
 5b2ff0a2ec7:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
 5b2ff0a2ecc:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x5b2ff0a18f4
 5b2ff0a2ed3:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a2ed8:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a2edd:	c4 41 38 c2 ce 01                               	vcmpltps xmm9,xmm8,xmm14
 5b2ff0a2ee3:	4c 8b 15 ff a2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa2ff]        # 0x5b2ff09d1e9
 5b2ff0a2eea:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
 5b2ff0a2eef:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
 5b2ff0a2ef4:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
 5b2ff0a2efa:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
 5b2ff0a2efe:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
 5b2ff0a2f03:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
 5b2ff0a2f09:	4c 8b 15 d9 a2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa2d9]        # 0x5b2ff09d1e9
 5b2ff0a2f10:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0a2f16:	c4 c1 38 54 d7                                  	vandps xmm2,xmm8,xmm15
 5b2ff0a2f1b:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0a2f21:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
 5b2ff0a2f25:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
 5b2ff0a2f2a:	4c 8b 15 89 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea89]        # 0x5b2ff0a19ba
 5b2ff0a2f31:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0a2f36:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0a2f3a:	4c 8b 15 a4 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a4]        # 0x5b2ff0a18e5
 5b2ff0a2f41:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
 5b2ff0a2f46:	c4 c1 50 c2 ee 01                               	vcmpltps xmm5,xmm5,xmm14
 5b2ff0a2f4c:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
 5b2ff0a2f50:	c5 e9 db d5                                     	vpand  xmm2,xmm2,xmm5
 5b2ff0a2f54:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
 5b2ff0a2f59:	45 8d 4f ff                                     	lea    r9d,[r15-0x1]
 5b2ff0a2f5d:	c4 c1 79 6e e9                                  	vmovd  xmm5,r9d
 5b2ff0a2f62:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
 5b2ff0a2f67:	47 8b 4c 04 2c                                  	mov    r9d,DWORD PTR [r12+r8*1+0x2c]
 5b2ff0a2f6c:	c5 78 10 95 80 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x280]
 5b2ff0a2f74:	c4 42 69 3d da                                  	vpmaxsd xmm11,xmm2,xmm10
 5b2ff0a2f79:	c4 62 21 39 dd                                  	vpminsd xmm11,xmm11,xmm5
 5b2ff0a2f7e:	85 c9                                           	test   ecx,ecx
 5b2ff0a2f80:	0f 84 55 00 00 00                               	je     0x5b2ff0a2fdb
 5b2ff0a2f86:	c4 41 79 6e d9                                  	vmovd  xmm11,r9d
 5b2ff0a2f8b:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
 5b2ff0a2f90:	c4 41 69 db db                                  	vpand  xmm11,xmm2,xmm11
 5b2ff0a2f95:	45 85 c9                                        	test   r9d,r9d
 5b2ff0a2f98:	0f 85 3d 00 00 00                               	jne    0x5b2ff0a2fdb
 5b2ff0a2f9e:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
 5b2ff0a2fa3:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
 5b2ff0a2fa8:	c5 69 66 e5                                     	vpcmpgtd xmm12,xmm2,xmm5
 5b2ff0a2fac:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
 5b2ff0a2fb1:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a2fb6:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
 5b2ff0a2fbb:	c5 29 66 ea                                     	vpcmpgtd xmm13,xmm10,xmm2
 5b2ff0a2fbf:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
 5b2ff0a2fc4:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
 5b2ff0a2fc9:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
 5b2ff0a2fce:	c4 41 69 fe db                                  	vpaddd xmm11,xmm2,xmm11
 5b2ff0a2fd3:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a2fdb:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
 5b2ff0a2fdf:	c4 41 71 db c9                                  	vpand  xmm9,xmm1,xmm9
 5b2ff0a2fe4:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff0a2fe9:	44 8d 58 ff                                     	lea    r11d,[rax-0x1]
 5b2ff0a2fed:	c4 c1 79 6e cb                                  	vmovd  xmm1,r11d
 5b2ff0a2ff2:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
 5b2ff0a2ff7:	47 8b 5c 04 30                                  	mov    r11d,DWORD PTR [r12+r8*1+0x30]
 5b2ff0a2ffc:	c4 42 31 3d e2                                  	vpmaxsd xmm12,xmm9,xmm10
 5b2ff0a3001:	c4 62 19 39 e1                                  	vpminsd xmm12,xmm12,xmm1
 5b2ff0a3006:	85 f6                                           	test   esi,esi
 5b2ff0a3008:	0f 84 4c 00 00 00                               	je     0x5b2ff0a305a
 5b2ff0a300e:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
 5b2ff0a3013:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a3018:	c4 41 19 db e1                                  	vpand  xmm12,xmm12,xmm9
 5b2ff0a301d:	45 85 db                                        	test   r11d,r11d
 5b2ff0a3020:	0f 85 34 00 00 00                               	jne    0x5b2ff0a305a
 5b2ff0a3026:	c5 79 6e e0                                     	vmovd  xmm12,eax
 5b2ff0a302a:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a302f:	c5 31 66 e9                                     	vpcmpgtd xmm13,xmm9,xmm1
 5b2ff0a3033:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
 5b2ff0a3038:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a303d:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
 5b2ff0a3042:	c4 c1 29 66 e1                                  	vpcmpgtd xmm4,xmm10,xmm9
 5b2ff0a3047:	c4 41 59 df fd                                  	vpandn xmm15,xmm4,xmm13
 5b2ff0a304c:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
 5b2ff0a3050:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
 5b2ff0a3055:	c4 41 31 fe e4                                  	vpaddd xmm12,xmm9,xmm12
 5b2ff0a305a:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
 5b2ff0a305f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0a3064:	c4 42 19 40 e5                                  	vpmulld xmm12,xmm12,xmm13
 5b2ff0a3069:	c4 c1 19 fe e3                                  	vpaddd xmm4,xmm12,xmm11
 5b2ff0a306e:	c4 c3 79 16 e7 03                               	vpextrd r15d,xmm4,0x3
 5b2ff0a3074:	c4 c3 79 16 e0 02                               	vpextrd r8d,xmm4,0x2
 5b2ff0a307a:	4c 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r15
 5b2ff0a3081:	c4 c3 79 16 e7 01                               	vpextrd r15d,xmm4,0x1
 5b2ff0a3087:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
 5b2ff0a308e:	c4 c1 79 7e e0                                  	vmovd  r8d,xmm4
 5b2ff0a3093:	85 d2                                           	test   edx,edx
 5b2ff0a3095:	0f 85 3e 08 00 00                               	jne    0x5b2ff0a38d9
 5b2ff0a309b:	c5 f8 10 a5 60 fc ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x3a0]
 5b2ff0a30a3:	c5 e9 fe d4                                     	vpaddd xmm2,xmm2,xmm4
 5b2ff0a30a7:	c5 f8 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm6
 5b2ff0a30af:	c4 c2 69 3d f2                                  	vpmaxsd xmm6,xmm2,xmm10
 5b2ff0a30b4:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
 5b2ff0a30b9:	85 c9                                           	test   ecx,ecx
 5b2ff0a30bb:	0f 84 3f 00 00 00                               	je     0x5b2ff0a3100
 5b2ff0a30c1:	c4 c1 79 6e f1                                  	vmovd  xmm6,r9d
 5b2ff0a30c6:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff0a30cb:	c5 e9 db f6                                     	vpand  xmm6,xmm2,xmm6
 5b2ff0a30cf:	45 85 c9                                        	test   r9d,r9d
 5b2ff0a30d2:	0f 85 28 00 00 00                               	jne    0x5b2ff0a3100
 5b2ff0a30d8:	c5 e9 66 f5                                     	vpcmpgtd xmm6,xmm2,xmm5
 5b2ff0a30dc:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
 5b2ff0a30e1:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a30e6:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
 5b2ff0a30eb:	c5 a9 66 ea                                     	vpcmpgtd xmm5,xmm10,xmm2
 5b2ff0a30ef:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
 5b2ff0a30f3:	c5 91 db f5                                     	vpand  xmm6,xmm13,xmm5
 5b2ff0a30f7:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0a30fc:	c5 e9 fe f6                                     	vpaddd xmm6,xmm2,xmm6
 5b2ff0a3100:	c5 31 fe cc                                     	vpaddd xmm9,xmm9,xmm4
 5b2ff0a3104:	c4 c2 31 3d d2                                  	vpmaxsd xmm2,xmm9,xmm10
 5b2ff0a3109:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
 5b2ff0a310e:	85 f6                                           	test   esi,esi
 5b2ff0a3110:	0f 84 49 00 00 00                               	je     0x5b2ff0a315f
 5b2ff0a3116:	c4 c1 79 6e d3                                  	vmovd  xmm2,r11d
 5b2ff0a311b:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
 5b2ff0a3120:	c4 c1 69 db d1                                  	vpand  xmm2,xmm2,xmm9
 5b2ff0a3125:	45 85 db                                        	test   r11d,r11d
 5b2ff0a3128:	0f 85 31 00 00 00                               	jne    0x5b2ff0a315f
 5b2ff0a312e:	c5 f9 6e d0                                     	vmovd  xmm2,eax
 5b2ff0a3132:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
 5b2ff0a3137:	c5 b1 66 c9                                     	vpcmpgtd xmm1,xmm9,xmm1
 5b2ff0a313b:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
 5b2ff0a313f:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a3144:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
 5b2ff0a3149:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
 5b2ff0a314e:	c5 51 df f9                                     	vpandn xmm15,xmm5,xmm1
 5b2ff0a3152:	c5 e9 db cd                                     	vpand  xmm1,xmm2,xmm5
 5b2ff0a3156:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff0a315b:	c5 b1 fe d1                                     	vpaddd xmm2,xmm9,xmm1
 5b2ff0a315f:	c4 42 69 40 cd                                  	vpmulld xmm9,xmm2,xmm13
 5b2ff0a3164:	c4 41 31 fe eb                                  	vpaddd xmm13,xmm9,xmm11
 5b2ff0a3169:	83 fb 0f                                        	cmp    ebx,0xf
 5b2ff0a316c:	0f 85 18 00 00 00                               	jne    0x5b2ff0a318a
 5b2ff0a3172:	c5 21 fe dc                                     	vpaddd xmm11,xmm11,xmm4
 5b2ff0a3176:	c4 41 49 76 db                                  	vpcmpeqd xmm11,xmm6,xmm11
 5b2ff0a317b:	c4 41 78 50 db                                  	vmovmskps r11d,xmm11
 5b2ff0a3180:	41 83 fb 0f                                     	cmp    r11d,0xf
 5b2ff0a3184:	0f 84 36 03 00 00                               	je     0x5b2ff0a34c0
 5b2ff0a318a:	4c 8b db                                        	mov    r11,rbx
 5b2ff0a318d:	41 83 e3 08                                     	and    r11d,0x8
 5b2ff0a3191:	48 8b c3                                        	mov    rax,rbx
 5b2ff0a3194:	83 e0 04                                        	and    eax,0x4
 5b2ff0a3197:	48 8b d3                                        	mov    rdx,rbx
 5b2ff0a319a:	83 e2 02                                        	and    edx,0x2
 5b2ff0a319d:	48 8b cb                                        	mov    rcx,rbx
 5b2ff0a31a0:	83 e1 01                                        	and    ecx,0x1
 5b2ff0a31a3:	83 fb 0f                                        	cmp    ebx,0xf
 5b2ff0a31a6:	0f 84 6c 00 00 00                               	je     0x5b2ff0a3218
 5b2ff0a31ac:	85 c9                                           	test   ecx,ecx
 5b2ff0a31ae:	0f 85 08 00 00 00                               	jne    0x5b2ff0a31bc
 5b2ff0a31b4:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a31b7:	e9 08 00 00 00                                  	jmp    0x5b2ff0a31c4
 5b2ff0a31bc:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a31c0:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a31c4:	85 d2                                           	test   edx,edx
 5b2ff0a31c6:	0f 85 08 00 00 00                               	jne    0x5b2ff0a31d4
 5b2ff0a31cc:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a31cf:	e9 08 00 00 00                                  	jmp    0x5b2ff0a31dc
 5b2ff0a31d4:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
 5b2ff0a31d8:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
 5b2ff0a31dc:	85 c0                                           	test   eax,eax
 5b2ff0a31de:	0f 85 07 00 00 00                               	jne    0x5b2ff0a31eb
 5b2ff0a31e4:	33 c0                                           	xor    eax,eax
 5b2ff0a31e6:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a31f8
 5b2ff0a31eb:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
 5b2ff0a31f1:	8d 04 87                                        	lea    eax,[rdi+rax*4]
 5b2ff0a31f4:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
 5b2ff0a31f8:	45 85 db                                        	test   r11d,r11d
 5b2ff0a31fb:	0f 85 36 00 00 00                               	jne    0x5b2ff0a3237
 5b2ff0a3201:	c4 41 49 fe dc                                  	vpaddd xmm11,xmm6,xmm12
 5b2ff0a3206:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
 5b2ff0a320b:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a3210:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a3213:	e9 45 00 00 00                                  	jmp    0x5b2ff0a325d
 5b2ff0a3218:	46 8d 1c bf                                     	lea    r11d,[rdi+r15*4]
 5b2ff0a321c:	47 8b 3c 1c                                     	mov    r15d,DWORD PTR [r12+r11*1]
 5b2ff0a3220:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a3224:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a3228:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
 5b2ff0a322f:	46 8d 1c 9f                                     	lea    r11d,[rdi+r11*4]
 5b2ff0a3233:	43 8b 04 1c                                     	mov    eax,DWORD PTR [r12+r11*1]
 5b2ff0a3237:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0a323d:	44 8d 1c 97                                     	lea    r11d,[rdi+rdx*4]
 5b2ff0a3241:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a3245:	c4 41 49 fe dc                                  	vpaddd xmm11,xmm6,xmm12
 5b2ff0a324a:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
 5b2ff0a324f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a3254:	83 fb 0f                                        	cmp    ebx,0xf
 5b2ff0a3257:	0f 84 68 00 00 00                               	je     0x5b2ff0a32c5
 5b2ff0a325d:	f6 c3 01                                        	test   bl,0x1
 5b2ff0a3260:	0f 85 08 00 00 00                               	jne    0x5b2ff0a326e
 5b2ff0a3266:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a3269:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a327b
 5b2ff0a326e:	c4 41 79 7e d8                                  	vmovd  r8d,xmm11
 5b2ff0a3273:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a3277:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a327b:	f6 c3 02                                        	test   bl,0x2
 5b2ff0a327e:	0f 85 07 00 00 00                               	jne    0x5b2ff0a328b
 5b2ff0a3284:	33 d2                                           	xor    edx,edx
 5b2ff0a3286:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a3298
 5b2ff0a328b:	c4 63 79 16 da 01                               	vpextrd edx,xmm11,0x1
 5b2ff0a3291:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
 5b2ff0a3294:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
 5b2ff0a3298:	f6 c3 04                                        	test   bl,0x4
 5b2ff0a329b:	0f 85 07 00 00 00                               	jne    0x5b2ff0a32a8
 5b2ff0a32a1:	33 c9                                           	xor    ecx,ecx
 5b2ff0a32a3:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a32b5
 5b2ff0a32a8:	c4 63 79 16 d9 02                               	vpextrd ecx,xmm11,0x2
 5b2ff0a32ae:	8d 0c 8f                                        	lea    ecx,[rdi+rcx*4]
 5b2ff0a32b1:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
 5b2ff0a32b5:	f6 c3 08                                        	test   bl,0x8
 5b2ff0a32b8:	0f 85 2f 00 00 00                               	jne    0x5b2ff0a32ed
 5b2ff0a32be:	33 f6                                           	xor    esi,esi
 5b2ff0a32c0:	e9 35 00 00 00                                  	jmp    0x5b2ff0a32fa
 5b2ff0a32c5:	c4 43 79 16 d8 01                               	vpextrd r8d,xmm11,0x1
 5b2ff0a32cb:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a32cf:	43 8b 14 04                                     	mov    edx,DWORD PTR [r12+r8*1]
 5b2ff0a32d3:	c4 41 79 7e d8                                  	vmovd  r8d,xmm11
 5b2ff0a32d8:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a32dc:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a32e0:	c4 63 79 16 d9 02                               	vpextrd ecx,xmm11,0x2
 5b2ff0a32e6:	8d 0c 8f                                        	lea    ecx,[rdi+rcx*4]
 5b2ff0a32e9:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
 5b2ff0a32ed:	c4 63 79 16 de 03                               	vpextrd esi,xmm11,0x3
 5b2ff0a32f3:	8d 34 b7                                        	lea    esi,[rdi+rsi*4]
 5b2ff0a32f6:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
 5b2ff0a32fa:	c4 43 19 22 df 01                               	vpinsrd xmm11,xmm12,r15d,0x1
 5b2ff0a3300:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
 5b2ff0a3305:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a330a:	c4 63 19 22 e2 01                               	vpinsrd xmm12,xmm12,edx,0x1
 5b2ff0a3310:	83 fb 0f                                        	cmp    ebx,0xf
 5b2ff0a3313:	0f 84 6b 00 00 00                               	je     0x5b2ff0a3384
 5b2ff0a3319:	f6 c3 01                                        	test   bl,0x1
 5b2ff0a331c:	0f 85 08 00 00 00                               	jne    0x5b2ff0a332a
 5b2ff0a3322:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a3325:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a3337
 5b2ff0a332a:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
 5b2ff0a332f:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a3333:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a3337:	f6 c3 02                                        	test   bl,0x2
 5b2ff0a333a:	0f 85 08 00 00 00                               	jne    0x5b2ff0a3348
 5b2ff0a3340:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a3343:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a3356
 5b2ff0a3348:	c4 43 79 16 ef 01                               	vpextrd r15d,xmm13,0x1
 5b2ff0a334e:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
 5b2ff0a3352:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
 5b2ff0a3356:	f6 c3 04                                        	test   bl,0x4
 5b2ff0a3359:	0f 85 07 00 00 00                               	jne    0x5b2ff0a3366
 5b2ff0a335f:	33 d2                                           	xor    edx,edx
 5b2ff0a3361:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a3373
 5b2ff0a3366:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
 5b2ff0a336c:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
 5b2ff0a336f:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
 5b2ff0a3373:	f6 c3 08                                        	test   bl,0x8
 5b2ff0a3376:	0f 85 30 00 00 00                               	jne    0x5b2ff0a33ac
 5b2ff0a337c:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0a337f:	e9 36 00 00 00                                  	jmp    0x5b2ff0a33ba
 5b2ff0a3384:	c4 43 79 16 e8 01                               	vpextrd r8d,xmm13,0x1
 5b2ff0a338a:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a338e:	47 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+r8*1]
 5b2ff0a3392:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
 5b2ff0a3397:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a339b:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a339f:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
 5b2ff0a33a5:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
 5b2ff0a33a8:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
 5b2ff0a33ac:	c4 43 79 16 e9 03                               	vpextrd r9d,xmm13,0x3
 5b2ff0a33b2:	46 8d 0c 8f                                     	lea    r9d,[rdi+r9*4]
 5b2ff0a33b6:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
 5b2ff0a33ba:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
 5b2ff0a33c0:	c4 63 19 22 e1 02                               	vpinsrd xmm12,xmm12,ecx,0x2
 5b2ff0a33c6:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
 5b2ff0a33ca:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
 5b2ff0a33cf:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
 5b2ff0a33d4:	c4 43 31 22 cf 01                               	vpinsrd xmm9,xmm9,r15d,0x1
 5b2ff0a33da:	c4 63 31 22 ca 02                               	vpinsrd xmm9,xmm9,edx,0x2
 5b2ff0a33e0:	83 fb 0f                                        	cmp    ebx,0xf
 5b2ff0a33e3:	0f 84 6a 00 00 00                               	je     0x5b2ff0a3453
 5b2ff0a33e9:	f6 c3 01                                        	test   bl,0x1
 5b2ff0a33ec:	0f 85 08 00 00 00                               	jne    0x5b2ff0a33fa
 5b2ff0a33f2:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a33f5:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a3407
 5b2ff0a33fa:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
 5b2ff0a33ff:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a3403:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a3407:	f6 c3 02                                        	test   bl,0x2
 5b2ff0a340a:	0f 85 08 00 00 00                               	jne    0x5b2ff0a3418
 5b2ff0a3410:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a3413:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a3426
 5b2ff0a3418:	c4 c3 79 16 f7 01                               	vpextrd r15d,xmm6,0x1
 5b2ff0a341e:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
 5b2ff0a3422:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
 5b2ff0a3426:	f6 c3 04                                        	test   bl,0x4
 5b2ff0a3429:	0f 85 07 00 00 00                               	jne    0x5b2ff0a3436
 5b2ff0a342f:	33 c0                                           	xor    eax,eax
 5b2ff0a3431:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a3443
 5b2ff0a3436:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
 5b2ff0a343c:	8d 04 87                                        	lea    eax,[rdi+rax*4]
 5b2ff0a343f:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
 5b2ff0a3443:	f6 c3 08                                        	test   bl,0x8
 5b2ff0a3446:	0f 85 2f 00 00 00                               	jne    0x5b2ff0a347b
 5b2ff0a344c:	33 ff                                           	xor    edi,edi
 5b2ff0a344e:	e9 35 00 00 00                                  	jmp    0x5b2ff0a3488
 5b2ff0a3453:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
 5b2ff0a3459:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a345d:	47 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+r8*1]
 5b2ff0a3461:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
 5b2ff0a3466:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a346a:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a346e:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
 5b2ff0a3474:	8d 04 87                                        	lea    eax,[rdi+rax*4]
 5b2ff0a3477:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
 5b2ff0a347b:	c4 e3 79 16 f2 03                               	vpextrd edx,xmm6,0x3
 5b2ff0a3481:	8d 3c 97                                        	lea    edi,[rdi+rdx*4]
 5b2ff0a3484:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a3488:	c4 c3 21 22 f3 03                               	vpinsrd xmm6,xmm11,r11d,0x3
 5b2ff0a348e:	c4 63 19 22 de 03                               	vpinsrd xmm11,xmm12,esi,0x3
 5b2ff0a3494:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
 5b2ff0a3499:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0a349e:	c4 43 19 22 e7 01                               	vpinsrd xmm12,xmm12,r15d,0x1
 5b2ff0a34a4:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
 5b2ff0a34aa:	c4 63 19 22 e7 03                               	vpinsrd xmm12,xmm12,edi,0x3
 5b2ff0a34b0:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
 5b2ff0a34b6:	c4 41 79 28 ec                                  	vmovapd xmm13,xmm12
 5b2ff0a34bb:	e9 a2 00 00 00                                  	jmp    0x5b2ff0a3562
 5b2ff0a34c0:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a34c4:	c4 81 7b 10 34 04                               	vmovsd xmm6,QWORD PTR [r12+r8*1]
 5b2ff0a34ca:	46 8d 04 bf                                     	lea    r8d,[rdi+r15*4]
 5b2ff0a34ce:	c4 01 7b 10 0c 04                               	vmovsd xmm9,QWORD PTR [r12+r8*1]
 5b2ff0a34d4:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
 5b2ff0a34d9:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
 5b2ff0a34e0:	46 8d 04 9f                                     	lea    r8d,[rdi+r11*4]
 5b2ff0a34e4:	c4 01 7b 10 0c 04                               	vmovsd xmm9,QWORD PTR [r12+r8*1]
 5b2ff0a34ea:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
 5b2ff0a34f0:	44 8d 04 87                                     	lea    r8d,[rdi+rax*4]
 5b2ff0a34f4:	c4 01 7b 10 1c 04                               	vmovsd xmm11,QWORD PTR [r12+r8*1]
 5b2ff0a34fa:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
 5b2ff0a34ff:	c4 41 48 c6 d9 dd                               	vshufps xmm11,xmm6,xmm9,0xdd
 5b2ff0a3505:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
 5b2ff0a350b:	c4 c1 31 72 f5 02                               	vpslld xmm9,xmm13,0x2
 5b2ff0a3511:	c4 41 79 7e c8                                  	vmovd  r8d,xmm9
 5b2ff0a3516:	44 03 c7                                        	add    r8d,edi
 5b2ff0a3519:	c4 01 7b 10 24 04                               	vmovsd xmm12,QWORD PTR [r12+r8*1]
 5b2ff0a351f:	c4 43 79 16 c8 01                               	vpextrd r8d,xmm9,0x1
 5b2ff0a3525:	44 03 c7                                        	add    r8d,edi
 5b2ff0a3528:	c4 01 7b 10 2c 04                               	vmovsd xmm13,QWORD PTR [r12+r8*1]
 5b2ff0a352e:	c4 41 19 6c e5                                  	vpunpcklqdq xmm12,xmm12,xmm13
 5b2ff0a3533:	c4 43 79 16 c8 02                               	vpextrd r8d,xmm9,0x2
 5b2ff0a3539:	44 03 c7                                        	add    r8d,edi
 5b2ff0a353c:	c4 01 7b 10 2c 04                               	vmovsd xmm13,QWORD PTR [r12+r8*1]
 5b2ff0a3542:	c4 43 79 16 c8 03                               	vpextrd r8d,xmm9,0x3
 5b2ff0a3548:	41 03 f8                                        	add    edi,r8d
 5b2ff0a354b:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
 5b2ff0a3551:	c4 41 11 6c c9                                  	vpunpcklqdq xmm9,xmm13,xmm9
 5b2ff0a3556:	c4 41 18 c6 e9 dd                               	vshufps xmm13,xmm12,xmm9,0xdd
 5b2ff0a355c:	c4 41 18 c6 c9 88                               	vshufps xmm9,xmm12,xmm9,0x88
 5b2ff0a3562:	c5 99 72 d6 18                                  	vpsrld xmm12,xmm6,0x18
 5b2ff0a3567:	c4 c1 71 72 d3 18                               	vpsrld xmm1,xmm11,0x18
 5b2ff0a356d:	c5 19 6b e1                                     	vpackssdw xmm12,xmm12,xmm1
 5b2ff0a3571:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
 5b2ff0a3575:	c4 c3 71 0f d4 08                               	vpalignr xmm2,xmm1,xmm12,0x8
 5b2ff0a357b:	c5 19 61 e2                                     	vpunpcklwd xmm12,xmm12,xmm2
 5b2ff0a357f:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
 5b2ff0a3589:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff0a358e:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff0a3592:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
 5b2ff0a3597:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
 5b2ff0a359f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
 5b2ff0a35a4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
 5b2ff0a35ae:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0a35b3:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff0a35b7:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
 5b2ff0a35bb:	4c 8b 15 27 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9c27]        # 0x5b2ff09d1e9
 5b2ff0a35c2:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
 5b2ff0a35c7:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
 5b2ff0a35cc:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
 5b2ff0a35d2:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
 5b2ff0a35d6:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
 5b2ff0a35db:	4c 8b 15 03 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe303]        # 0x5b2ff0a18e5
 5b2ff0a35e2:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0a35e7:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
 5b2ff0a35ed:	c5 79 df fb                                     	vpandn xmm15,xmm0,xmm3
 5b2ff0a35f1:	c5 d9 db c0                                     	vpand  xmm0,xmm4,xmm0
 5b2ff0a35f5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a35fa:	c5 e9 fa e0                                     	vpsubd xmm4,xmm2,xmm0
 5b2ff0a35fe:	c5 d9 6b c0                                     	vpackssdw xmm0,xmm4,xmm0
 5b2ff0a3602:	c4 e3 71 0f e0 08                               	vpalignr xmm4,xmm1,xmm0,0x8
 5b2ff0a3608:	c5 f9 61 c4                                     	vpunpcklwd xmm0,xmm0,xmm4
 5b2ff0a360c:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
 5b2ff0a3610:	c5 f8 10 a5 d0 fe ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x130]
 5b2ff0a3618:	c5 d8 5c ff                                     	vsubps xmm7,xmm4,xmm7
 5b2ff0a361c:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
 5b2ff0a3621:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
 5b2ff0a3625:	4c 8b 15 bd 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9bbd]        # 0x5b2ff09d1e9
 5b2ff0a362c:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
 5b2ff0a3631:	c4 c1 40 54 e7                                  	vandps xmm4,xmm7,xmm15
 5b2ff0a3636:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
 5b2ff0a363c:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
 5b2ff0a3640:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
 5b2ff0a3645:	4c 8b 15 99 e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe299]        # 0x5b2ff0a18e5
 5b2ff0a364c:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
 5b2ff0a3651:	c4 c1 40 c2 fe 01                               	vcmpltps xmm7,xmm7,xmm14
 5b2ff0a3657:	c5 41 df fb                                     	vpandn xmm15,xmm7,xmm3
 5b2ff0a365b:	c5 d9 db ff                                     	vpand  xmm7,xmm4,xmm7
 5b2ff0a365f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0a3664:	c5 69 fa f7                                     	vpsubd xmm14,xmm2,xmm7
 5b2ff0a3668:	c4 42 19 40 e6                                  	vpmulld xmm12,xmm12,xmm14
 5b2ff0a366d:	c4 c1 69 72 d1 18                               	vpsrld xmm2,xmm9,0x18
 5b2ff0a3673:	c4 c1 61 72 d5 18                               	vpsrld xmm3,xmm13,0x18
 5b2ff0a3679:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
 5b2ff0a367d:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
 5b2ff0a3683:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
 5b2ff0a3687:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
 5b2ff0a368b:	c4 e2 69 40 d7                                  	vpmulld xmm2,xmm2,xmm7
 5b2ff0a3690:	c5 19 fe e2                                     	vpaddd xmm12,xmm12,xmm2
 5b2ff0a3694:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
 5b2ff0a369e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff0a36a3:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff0a36a7:	c5 19 fe e2                                     	vpaddd xmm12,xmm12,xmm2
 5b2ff0a36ab:	c4 c1 19 72 d4 10                               	vpsrld xmm12,xmm12,0x10
 5b2ff0a36b1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a36b6:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
 5b2ff0a36bc:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
 5b2ff0a36c1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a36c6:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
 5b2ff0a36cc:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
 5b2ff0a36d1:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
 5b2ff0a36d6:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
 5b2ff0a36db:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x5b2ff0a2103
 5b2ff0a36e2:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0a36e7:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0a36eb:	c5 18 59 e3                                     	vmulps xmm12,xmm12,xmm3
 5b2ff0a36ef:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
 5b2ff0a36f2:	c4 41 7a 7f a4 14 c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1c0],xmm12
 5b2ff0a36fc:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
 5b2ff0a3701:	4c 8b 15 13 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe913]        # 0x5b2ff0a201b
 5b2ff0a3708:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
 5b2ff0a370d:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
 5b2ff0a3711:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
 5b2ff0a3715:	c4 c1 51 72 d3 10                               	vpsrld xmm5,xmm11,0x10
 5b2ff0a371b:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
 5b2ff0a371f:	c5 19 6b e5                                     	vpackssdw xmm12,xmm12,xmm5
 5b2ff0a3723:	c4 c3 71 0f ec 08                               	vpalignr xmm5,xmm1,xmm12,0x8
 5b2ff0a3729:	c5 19 61 e5                                     	vpunpcklwd xmm12,xmm12,xmm5
 5b2ff0a372d:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
 5b2ff0a3731:	c4 42 19 40 e6                                  	vpmulld xmm12,xmm12,xmm14
 5b2ff0a3736:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
 5b2ff0a373c:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
 5b2ff0a3740:	c4 c1 39 72 d5 10                               	vpsrld xmm8,xmm13,0x10
 5b2ff0a3746:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
 5b2ff0a374a:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
 5b2ff0a374f:	c4 c3 71 0f e8 08                               	vpalignr xmm5,xmm1,xmm8,0x8
 5b2ff0a3755:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
 5b2ff0a3759:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
 5b2ff0a375d:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
 5b2ff0a3762:	c4 41 19 fe c0                                  	vpaddd xmm8,xmm12,xmm8
 5b2ff0a3767:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
 5b2ff0a376b:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
 5b2ff0a3771:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a3776:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0a377c:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0a3781:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a3786:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0a378c:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0a3791:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0a3796:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0a379b:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
 5b2ff0a379f:	c4 41 7a 7f 84 14 b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1b0],xmm8
 5b2ff0a37a9:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
 5b2ff0a37ae:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
 5b2ff0a37b2:	c4 c1 19 72 d3 08                               	vpsrld xmm12,xmm11,0x8
 5b2ff0a37b8:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
 5b2ff0a37bc:	c4 41 39 6b c4                                  	vpackssdw xmm8,xmm8,xmm12
 5b2ff0a37c1:	c4 43 71 0f e0 08                               	vpalignr xmm12,xmm1,xmm8,0x8
 5b2ff0a37c7:	c4 41 39 61 c4                                  	vpunpcklwd xmm8,xmm8,xmm12
 5b2ff0a37cc:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
 5b2ff0a37d0:	c4 42 39 40 c6                                  	vpmulld xmm8,xmm8,xmm14
 5b2ff0a37d5:	c4 c1 19 72 d1 08                               	vpsrld xmm12,xmm9,0x8
 5b2ff0a37db:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
 5b2ff0a37df:	c4 c1 51 72 d5 08                               	vpsrld xmm5,xmm13,0x8
 5b2ff0a37e5:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
 5b2ff0a37e9:	c5 19 6b e5                                     	vpackssdw xmm12,xmm12,xmm5
 5b2ff0a37ed:	c4 c3 71 0f ec 08                               	vpalignr xmm5,xmm1,xmm12,0x8
 5b2ff0a37f3:	c5 19 61 e5                                     	vpunpcklwd xmm12,xmm12,xmm5
 5b2ff0a37f7:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
 5b2ff0a37fb:	c4 62 19 40 e7                                  	vpmulld xmm12,xmm12,xmm7
 5b2ff0a3800:	c4 41 39 fe c4                                  	vpaddd xmm8,xmm8,xmm12
 5b2ff0a3805:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
 5b2ff0a3809:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
 5b2ff0a380f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a3814:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0a381a:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0a381f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a3824:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0a382a:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0a382f:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0a3834:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0a3839:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
 5b2ff0a383d:	c4 41 7a 7f 84 14 a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1a0],xmm8
 5b2ff0a3847:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
 5b2ff0a384b:	c5 21 db c4                                     	vpand  xmm8,xmm11,xmm4
 5b2ff0a384f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
 5b2ff0a3854:	c4 63 71 0f c6 08                               	vpalignr xmm8,xmm1,xmm6,0x8
 5b2ff0a385a:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
 5b2ff0a385f:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
 5b2ff0a3863:	c4 c2 49 40 f6                                  	vpmulld xmm6,xmm6,xmm14
 5b2ff0a3868:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
 5b2ff0a386c:	c5 11 db cc                                     	vpand  xmm9,xmm13,xmm4
 5b2ff0a3870:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
 5b2ff0a3875:	c4 43 71 0f c8 08                               	vpalignr xmm9,xmm1,xmm8,0x8
 5b2ff0a387b:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
 5b2ff0a3880:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
 5b2ff0a3884:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
 5b2ff0a3889:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
 5b2ff0a388d:	c5 f9 fe c2                                     	vpaddd xmm0,xmm0,xmm2
 5b2ff0a3891:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
 5b2ff0a3896:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a389b:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0a38a1:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0a38a6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a38ab:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0a38b0:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0a38b4:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0a38b8:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0a38bd:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
 5b2ff0a38c1:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
 5b2ff0a38cb:	8b fa                                           	mov    edi,edx
 5b2ff0a38cd:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a38d4:	e9 62 05 00 00                                  	jmp    0x5b2ff0a3e3b
 5b2ff0a38d9:	83 fb 0f                                        	cmp    ebx,0xf
 5b2ff0a38dc:	0f 84 61 00 00 00                               	je     0x5b2ff0a3943
 5b2ff0a38e2:	f6 c3 01                                        	test   bl,0x1
 5b2ff0a38e5:	0f 85 08 00 00 00                               	jne    0x5b2ff0a38f3
 5b2ff0a38eb:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a38ee:	e9 08 00 00 00                                  	jmp    0x5b2ff0a38fb
 5b2ff0a38f3:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a38f7:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a38fb:	f6 c3 02                                        	test   bl,0x2
 5b2ff0a38fe:	0f 85 08 00 00 00                               	jne    0x5b2ff0a390c
 5b2ff0a3904:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a3907:	e9 08 00 00 00                                  	jmp    0x5b2ff0a3914
 5b2ff0a390c:	46 8d 1c bf                                     	lea    r11d,[rdi+r15*4]
 5b2ff0a3910:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a3914:	f6 c3 04                                        	test   bl,0x4
 5b2ff0a3917:	0f 85 08 00 00 00                               	jne    0x5b2ff0a3925
 5b2ff0a391d:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a3920:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a3933
 5b2ff0a3925:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
 5b2ff0a392b:	44 8d 3c 87                                     	lea    r15d,[rdi+rax*4]
 5b2ff0a392f:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
 5b2ff0a3933:	f6 c3 08                                        	test   bl,0x8
 5b2ff0a3936:	0f 85 2f 00 00 00                               	jne    0x5b2ff0a396b
 5b2ff0a393c:	33 ff                                           	xor    edi,edi
 5b2ff0a393e:	e9 35 00 00 00                                  	jmp    0x5b2ff0a3978
 5b2ff0a3943:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
 5b2ff0a394a:	46 8d 1c 9f                                     	lea    r11d,[rdi+r11*4]
 5b2ff0a394e:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a3952:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
 5b2ff0a3956:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
 5b2ff0a395a:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
 5b2ff0a395e:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a3962:	45 8b d7                                        	mov    r10d,r15d
 5b2ff0a3965:	45 8b fb                                        	mov    r15d,r11d
 5b2ff0a3968:	45 8b da                                        	mov    r11d,r10d
 5b2ff0a396b:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
 5b2ff0a3971:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
 5b2ff0a3974:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a3978:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
 5b2ff0a397d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0a3982:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
 5b2ff0a3988:	c4 c3 79 22 c7 02                               	vpinsrd xmm0,xmm0,r15d,0x2
 5b2ff0a398e:	c4 e3 79 22 c7 03                               	vpinsrd xmm0,xmm0,edi,0x3
 5b2ff0a3994:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
 5b2ff0a3999:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a399e:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
 5b2ff0a39a4:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
 5b2ff0a39a9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a39ae:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
 5b2ff0a39b3:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
 5b2ff0a39b7:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
 5b2ff0a39bb:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
 5b2ff0a39c0:	4c 8b 15 3c e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe73c]        # 0x5b2ff0a2103
 5b2ff0a39c7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a39cc:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a39d0:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
 5b2ff0a39d4:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a39d7:	c4 c1 7a 7f b4 3c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1c0],xmm6
 5b2ff0a39e1:	4c 8b 15 33 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe633]        # 0x5b2ff0a201b
 5b2ff0a39e8:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
 5b2ff0a39ed:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
 5b2ff0a39f1:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
 5b2ff0a39f5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a39fa:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0a3a00:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0a3a05:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a3a0a:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0a3a10:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0a3a15:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0a3a1a:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0a3a1f:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
 5b2ff0a3a23:	c4 41 7a 7f 84 3c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x190],xmm8
 5b2ff0a3a2d:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
 5b2ff0a3a32:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
 5b2ff0a3a36:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a3a3b:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0a3a41:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0a3a46:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a3a4b:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0a3a51:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0a3a56:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0a3a5b:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0a3a60:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
 5b2ff0a3a64:	c4 41 7a 7f 84 3c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1b0],xmm8
 5b2ff0a3a6e:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
 5b2ff0a3a73:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
 5b2ff0a3a77:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a3a7c:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0a3a82:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0a3a87:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a3a8c:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0a3a91:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0a3a95:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0a3a99:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0a3a9e:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0a3aa2:	c4 c1 7a 7f 84 3c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1a0],xmm0
 5b2ff0a3aac:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a3ab3:	e9 83 03 00 00                                  	jmp    0x5b2ff0a3e3b
 5b2ff0a3ab8:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a3abc:	49 8d 7c 24 58                                  	lea    rdi,[r12+0x58]
 5b2ff0a3ac1:	4d 8b f9                                        	mov    r15,r9
 5b2ff0a3ac4:	c4 22 79 18 04 3f                               	vbroadcastss xmm8,DWORD PTR [rdi+r15*1]
 5b2ff0a3aca:	c4 41 08 59 c0                                  	vmulps xmm8,xmm14,xmm8
 5b2ff0a3acf:	c4 62 79 18 34 17                               	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1]
 5b2ff0a3ad5:	c4 41 68 59 f6                                  	vmulps xmm14,xmm2,xmm14
 5b2ff0a3ada:	c4 41 38 58 c6                                  	vaddps xmm8,xmm8,xmm14
 5b2ff0a3adf:	c4 62 79 18 34 37                               	vbroadcastss xmm14,DWORD PTR [rdi+rsi*1]
 5b2ff0a3ae5:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
 5b2ff0a3aea:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
 5b2ff0a3aef:	c4 c1 78 59 d8                                  	vmulps xmm3,xmm0,xmm8
 5b2ff0a3af4:	83 f9 03                                        	cmp    ecx,0x3
 5b2ff0a3af7:	0f 84 b3 02 00 00                               	je     0x5b2ff0a3db0
 5b2ff0a3afd:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff0a3b01:	c4 81 7a 7f 84 1c c0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xc0],xmm0
 5b2ff0a3b0b:	c4 81 7a 7f 84 1c b0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xb0],xmm0
 5b2ff0a3b15:	c4 81 7a 7f 84 1c a0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xa0],xmm0
 5b2ff0a3b1f:	c4 81 7a 7f 8c 1c f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1f0],xmm1
 5b2ff0a3b29:	c4 81 7a 7f b4 1c e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1e0],xmm6
 5b2ff0a3b33:	c4 81 7a 7f 9c 1c d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1d0],xmm3
 5b2ff0a3b3d:	c4 81 7a 7f 84 1c 90 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x90],xmm0
 5b2ff0a3b47:	33 ff                                           	xor    edi,edi
 5b2ff0a3b49:	e9 48 00 00 00                                  	jmp    0x5b2ff0a3b96
 5b2ff0a3b4e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a3b57:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a3b60:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a3b69:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a3b72:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a3b7b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
 5b2ff0a3b80:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a3b87:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a3b8b:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a3b8f:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a3b96:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
 5b2ff0a3b9d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0a3ba2:	0f 85 46 2e 00 00                               	jne    0x5b2ff0a69ee
 5b2ff0a3ba8:	8b cf                                           	mov    ecx,edi
 5b2ff0a3baa:	4c 8b cb                                        	mov    r9,rbx
 5b2ff0a3bad:	41 d3 e9                                        	shr    r9d,cl
 5b2ff0a3bb0:	41 f6 c1 01                                     	test   r9b,0x1
 5b2ff0a3bb4:	0f 84 55 01 00 00                               	je     0x5b2ff0a3d0f
 5b2ff0a3bba:	43 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+r8*1+0x10]
 5b2ff0a3bbf:	47 8b 4c 04 0c                                  	mov    r9d,DWORD PTR [r12+r8*1+0xc]
 5b2ff0a3bc4:	48 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rcx
 5b2ff0a3bcb:	43 8b 4c 04 08                                  	mov    ecx,DWORD PTR [r12+r8*1+0x8]
 5b2ff0a3bd0:	43 8b 4c 04 04                                  	mov    ecx,DWORD PTR [r12+r8*1+0x4]
 5b2ff0a3bd5:	48 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rcx
 5b2ff0a3bdc:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
 5b2ff0a3be0:	83 f9 02                                        	cmp    ecx,0x2
 5b2ff0a3be3:	0f 84 b3 00 00 00                               	je     0x5b2ff0a3c9c
 5b2ff0a3be9:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
 5b2ff0a3bf0:	85 c9                                           	test   ecx,ecx
 5b2ff0a3bf2:	0f 85 41 00 00 00                               	jne    0x5b2ff0a3c39
 5b2ff0a3bf8:	41 8d 8c bb f0 01 00 00                         	lea    ecx,[r11+rdi*4+0x1f0]
 5b2ff0a3c00:	c4 c1 7a 10 0c 0c                               	vmovss xmm1,DWORD PTR [r12+rcx*1]
 5b2ff0a3c06:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
 5b2ff0a3c0d:	44 8b cf                                        	mov    r9d,edi
 5b2ff0a3c10:	41 c1 e1 04                                     	shl    r9d,0x4
 5b2ff0a3c14:	41 03 c9                                        	add    ecx,r9d
 5b2ff0a3c17:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a3c1b:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
 5b2ff0a3c21:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
 5b2ff0a3c27:	8b d9                                           	mov    ebx,ecx
 5b2ff0a3c29:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
 5b2ff0a3c2f:	e8 ec 75 f2 ff                                  	call   0x5b2fefcb220
 5b2ff0a3c34:	e9 d6 00 00 00                                  	jmp    0x5b2ff0a3d0f
 5b2ff0a3c39:	4d 8b d0                                        	mov    r10,r8
 5b2ff0a3c3c:	4d 8b c4                                        	mov    r8,r12
 5b2ff0a3c3f:	4d 8b e2                                        	mov    r12,r10
 5b2ff0a3c42:	43 8b 4c 20 14                                  	mov    ecx,DWORD PTR [r8+r12*1+0x14]
 5b2ff0a3c47:	44 8b d7                                        	mov    r10d,edi
 5b2ff0a3c4a:	41 8b fb                                        	mov    edi,r11d
 5b2ff0a3c4d:	45 8b da                                        	mov    r11d,r10d
 5b2ff0a3c50:	46 8d 8c 9f f0 01 00 00                         	lea    r9d,[rdi+r11*4+0x1f0]
 5b2ff0a3c58:	c4 81 7a 10 0c 08                               	vmovss xmm1,DWORD PTR [r8+r9*1]
 5b2ff0a3c5e:	46 8d 8c 9f e0 01 00 00                         	lea    r9d,[rdi+r11*4+0x1e0]
 5b2ff0a3c66:	c4 81 7a 10 14 08                               	vmovss xmm2,DWORD PTR [r8+r9*1]
 5b2ff0a3c6c:	44 8d 8f 90 00 00 00                            	lea    r9d,[rdi+0x90]
 5b2ff0a3c73:	41 c1 e3 04                                     	shl    r11d,0x4
 5b2ff0a3c77:	45 03 cb                                        	add    r9d,r11d
 5b2ff0a3c7a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a3c7e:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
 5b2ff0a3c84:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
 5b2ff0a3c8a:	8b d9                                           	mov    ebx,ecx
 5b2ff0a3c8c:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
 5b2ff0a3c92:	e8 a1 75 f2 ff                                  	call   0x5b2fefcb238
 5b2ff0a3c97:	e9 73 00 00 00                                  	jmp    0x5b2ff0a3d0f
 5b2ff0a3c9c:	4d 8b d0                                        	mov    r10,r8
 5b2ff0a3c9f:	4d 8b c4                                        	mov    r8,r12
 5b2ff0a3ca2:	4d 8b e2                                        	mov    r12,r10
 5b2ff0a3ca5:	47 8b 7c 20 14                                  	mov    r15d,DWORD PTR [r8+r12*1+0x14]
 5b2ff0a3caa:	43 8b 44 20 18                                  	mov    eax,DWORD PTR [r8+r12*1+0x18]
 5b2ff0a3caf:	44 8b d7                                        	mov    r10d,edi
 5b2ff0a3cb2:	41 8b fb                                        	mov    edi,r11d
 5b2ff0a3cb5:	45 8b da                                        	mov    r11d,r10d
 5b2ff0a3cb8:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
 5b2ff0a3cc0:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
 5b2ff0a3cc6:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
 5b2ff0a3cce:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
 5b2ff0a3cd4:	42 8d 94 9f d0 01 00 00                         	lea    edx,[rdi+r11*4+0x1d0]
 5b2ff0a3cdc:	c4 c1 7a 10 1c 10                               	vmovss xmm3,DWORD PTR [r8+rdx*1]
 5b2ff0a3ce2:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
 5b2ff0a3ce8:	41 8b cb                                        	mov    ecx,r11d
 5b2ff0a3ceb:	c1 e1 04                                        	shl    ecx,0x4
 5b2ff0a3cee:	03 d1                                           	add    edx,ecx
 5b2ff0a3cf0:	52                                              	push   rdx
 5b2ff0a3cf1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a3cf5:	41 8b d1                                        	mov    edx,r9d
 5b2ff0a3cf8:	44 8b c8                                        	mov    r9d,eax
 5b2ff0a3cfb:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
 5b2ff0a3d01:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
 5b2ff0a3d07:	41 8b df                                        	mov    ebx,r15d
 5b2ff0a3d0a:	e8 19 75 f2 ff                                  	call   0x5b2fefcb228
 5b2ff0a3d0f:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
 5b2ff0a3d15:	83 c7 01                                        	add    edi,0x1
 5b2ff0a3d18:	83 ff 04                                        	cmp    edi,0x4
 5b2ff0a3d1b:	0f 85 5f fe ff ff                               	jne    0x5b2ff0a3b80
 5b2ff0a3d21:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a3d24:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a3d28:	c4 c1 7a 6f 84 38 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0xb0]
 5b2ff0a3d32:	c4 c1 7a 6f b4 38 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0xc0]
 5b2ff0a3d3c:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
 5b2ff0a3d40:	c4 41 7a 6f 84 38 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x90]
 5b2ff0a3d4a:	c4 41 7a 6f 8c 38 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rdi*1+0xa0]
 5b2ff0a3d54:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
 5b2ff0a3d59:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
 5b2ff0a3d5d:	c4 41 7a 7f 9c 38 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1c0],xmm11
 5b2ff0a3d67:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
 5b2ff0a3d6b:	c4 c1 7a 7f bc 38 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1b0],xmm7
 5b2ff0a3d75:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
 5b2ff0a3d79:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
 5b2ff0a3d7e:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
 5b2ff0a3d82:	c4 c1 7a 7f bc 38 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1a0],xmm7
 5b2ff0a3d8c:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
 5b2ff0a3d90:	c4 c1 7a 7f 84 38 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x190],xmm0
 5b2ff0a3d9a:	4d 8b e0                                        	mov    r12,r8
 5b2ff0a3d9d:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a3da4:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a3dab:	e9 8b 00 00 00                                  	jmp    0x5b2ff0a3e3b
 5b2ff0a3db0:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
 5b2ff0a3db7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a3dbb:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0a3dbe:	48 8b d3                                        	mov    rdx,rbx
 5b2ff0a3dc1:	c5 f9 28 d6                                     	vmovapd xmm2,xmm6
 5b2ff0a3dc5:	e8 5e 77 f2 ff                                  	call   0x5b2fefcb528
 5b2ff0a3dca:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a3dcd:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a3dd1:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a3dd8:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a3ddf:	e9 57 00 00 00                                  	jmp    0x5b2ff0a3e3b
 5b2ff0a3de4:	49 8d 4c 24 3c                                  	lea    rcx,[r12+0x3c]
 5b2ff0a3de9:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
 5b2ff0a3def:	c4 81 7a 7f 84 1c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x190],xmm0
 5b2ff0a3df9:	49 8d 4c 24 40                                  	lea    rcx,[r12+0x40]
 5b2ff0a3dfe:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
 5b2ff0a3e04:	c4 81 7a 7f 84 1c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1a0],xmm0
 5b2ff0a3e0e:	49 8d 4c 24 44                                  	lea    rcx,[r12+0x44]
 5b2ff0a3e13:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
 5b2ff0a3e19:	c4 81 7a 7f 84 1c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1b0],xmm0
 5b2ff0a3e23:	49 8d 4c 24 48                                  	lea    rcx,[r12+0x48]
 5b2ff0a3e28:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
 5b2ff0a3e2e:	c4 81 7a 7f 84 1c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1c0],xmm0
 5b2ff0a3e38:	41 8b fb                                        	mov    edi,r11d
 5b2ff0a3e3b:	c4 c1 7a 6f 84 3c 90 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x190]
 5b2ff0a3e45:	47 8b 9c 04 34 01 00 00                         	mov    r11d,DWORD PTR [r12+r8*1+0x134]
 5b2ff0a3e4d:	43 83 bc 04 34 01 00 00 02                      	cmp    DWORD PTR [r12+r8*1+0x134],0x2
 5b2ff0a3e56:	0f 84 58 00 00 00                               	je     0x5b2ff0a3eb4
 5b2ff0a3e5c:	c4 c1 7a 6f b4 3c c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+rdi*1+0x1c0]
 5b2ff0a3e66:	c5 f8 10 bd 10 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0xf0]
 5b2ff0a3e6e:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
 5b2ff0a3e72:	c4 c1 7a 6f bc 3c b0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+rdi*1+0x1b0]
 5b2ff0a3e7c:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
 5b2ff0a3e84:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
 5b2ff0a3e88:	c4 41 7a 6f 84 3c a0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x1a0]
 5b2ff0a3e92:	c5 78 10 8d 40 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xc0]
 5b2ff0a3e9a:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
 5b2ff0a3e9f:	c5 78 10 8d e0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x120]
 5b2ff0a3ea7:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0a3eab:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a3eaf:	e9 22 00 00 00                                  	jmp    0x5b2ff0a3ed6
 5b2ff0a3eb4:	c4 c1 7a 6f b4 3c c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+rdi*1+0x1c0]
 5b2ff0a3ebe:	c4 c1 7a 6f bc 3c b0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+rdi*1+0x1b0]
 5b2ff0a3ec8:	c4 41 7a 6f 84 3c a0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x1a0]
 5b2ff0a3ed2:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a3ed6:	c5 41 6a ce                                     	vpunpckhdq xmm9,xmm7,xmm6
 5b2ff0a3eda:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
 5b2ff0a3edf:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
 5b2ff0a3ee4:	c4 41 7a 7f 5c 3c 30                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x30],xmm11
 5b2ff0a3eeb:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
 5b2ff0a3ef0:	c4 41 7a 7f 4c 3c 20                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x20],xmm9
 5b2ff0a3ef7:	c5 c1 62 f6                                     	vpunpckldq xmm6,xmm7,xmm6
 5b2ff0a3efb:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
 5b2ff0a3f00:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
 5b2ff0a3f04:	c4 c1 7a 7f 7c 3c 10                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x10],xmm7
 5b2ff0a3f0b:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
 5b2ff0a3f0f:	c4 c1 7a 7f 04 3c                               	vmovdqu XMMWORD PTR [r12+rdi*1],xmm0
 5b2ff0a3f15:	44 8b df                                        	mov    r11d,edi
 5b2ff0a3f18:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
 5b2ff0a3f1f:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
 5b2ff0a3f22:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0a3f26:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0a3f2b:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0a3f30:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a3f34:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
 5b2ff0a3f3b:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
 5b2ff0a3f42:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
 5b2ff0a3f49:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
 5b2ff0a3f51:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
 5b2ff0a3f59:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a3f61:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a3f69:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a3f71:	f6 c3 01                                        	test   bl,0x1
 5b2ff0a3f74:	0f 85 08 00 00 00                               	jne    0x5b2ff0a3f82
 5b2ff0a3f7a:	4d 8b c4                                        	mov    r8,r12
 5b2ff0a3f7d:	e9 77 02 00 00                                  	jmp    0x5b2ff0a41f9
 5b2ff0a3f82:	c4 81 7a 10 4c 1c 40                            	vmovss xmm1,DWORD PTR [r12+r11*1+0x40]
 5b2ff0a3f89:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
 5b2ff0a3f90:	0f 85 a1 00 00 00                               	jne    0x5b2ff0a4037
 5b2ff0a3f96:	c4 81 7a 10 14 1c                               	vmovss xmm2,DWORD PTR [r12+r11*1]
 5b2ff0a3f9c:	c4 81 7a 10 5c 1c 04                            	vmovss xmm3,DWORD PTR [r12+r11*1+0x4]
 5b2ff0a3fa3:	c4 81 7a 10 44 1c 08                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x8]
 5b2ff0a3faa:	c4 81 7a 10 6c 1c 0c                            	vmovss xmm5,DWORD PTR [r12+r11*1+0xc]
 5b2ff0a3fb1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a3fb5:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a3fb8:	8b d7                                           	mov    edx,edi
 5b2ff0a3fba:	41 8b cf                                        	mov    ecx,r15d
 5b2ff0a3fbd:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
 5b2ff0a3fc1:	e8 9a 72 f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a3fc6:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a3fca:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a3fce:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a3fd2:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
 5b2ff0a3fd9:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
 5b2ff0a3fdc:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0a3fe0:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0a3fe5:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0a3fea:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a3fee:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
 5b2ff0a3ff5:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
 5b2ff0a3ffc:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
 5b2ff0a4003:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
 5b2ff0a400b:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a4012:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
 5b2ff0a401a:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a4022:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a402a:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a4032:	e9 c2 01 00 00                                  	jmp    0x5b2ff0a41f9
 5b2ff0a4037:	4d 8b c4                                        	mov    r8,r12
 5b2ff0a403a:	4c 8b e0                                        	mov    r12,rax
 5b2ff0a403d:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
 5b2ff0a4041:	41 0f af c7                                     	imul   eax,r15d
 5b2ff0a4045:	03 c7                                           	add    eax,edi
 5b2ff0a4047:	43 8b 4c 20 68                                  	mov    ecx,DWORD PTR [r8+r12*1+0x68]
 5b2ff0a404c:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
 5b2ff0a4052:	0f 84 1f 00 00 00                               	je     0x5b2ff0a4077
 5b2ff0a4058:	43 8b 4c 20 70                                  	mov    ecx,DWORD PTR [r8+r12*1+0x70]
 5b2ff0a405d:	43 83 7c 20 70 00                               	cmp    DWORD PTR [r8+r12*1+0x70],0x0
 5b2ff0a4063:	0f 84 0e 00 00 00                               	je     0x5b2ff0a4077
 5b2ff0a4069:	43 8b 4c 20 0c                                  	mov    ecx,DWORD PTR [r8+r12*1+0xc]
 5b2ff0a406e:	8d 0c 81                                        	lea    ecx,[rcx+rax*4]
 5b2ff0a4071:	c4 c1 7a 11 0c 08                               	vmovss DWORD PTR [r8+rcx*1],xmm1
 5b2ff0a4077:	c4 81 7a 6f 04 18                               	vmovdqu xmm0,XMMWORD PTR [r8+r11*1]
 5b2ff0a407d:	43 8b 4c 20 08                                  	mov    ecx,DWORD PTR [r8+r12*1+0x8]
 5b2ff0a4082:	8d 04 81                                        	lea    eax,[rcx+rax*4]
 5b2ff0a4085:	43 8b 4c 20 74                                  	mov    ecx,DWORD PTR [r8+r12*1+0x74]
 5b2ff0a408a:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
 5b2ff0a4090:	0f 84 81 00 00 00                               	je     0x5b2ff0a4117
 5b2ff0a4096:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
 5b2ff0a409b:	43 8b 4c 20 78                                  	mov    ecx,DWORD PTR [r8+r12*1+0x78]
 5b2ff0a40a0:	43 81 7c 20 78 02 03 00 00                      	cmp    DWORD PTR [r8+r12*1+0x78],0x302
 5b2ff0a40a9:	0f 84 09 00 00 00                               	je     0x5b2ff0a40b8
 5b2ff0a40af:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0a40b3:	e9 04 00 00 00                                  	jmp    0x5b2ff0a40bc
 5b2ff0a40b8:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0a40bc:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
 5b2ff0a40c1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0a40c6:	c4 41 7a 10 0c 00                               	vmovss xmm9,DWORD PTR [r8+rax*1]
 5b2ff0a40cc:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
 5b2ff0a40d1:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
 5b2ff0a40d6:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
 5b2ff0a40db:	4c 8b 15 21 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe021]        # 0x5b2ff0a2103
 5b2ff0a40e2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a40e7:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a40ec:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
 5b2ff0a40f1:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
 5b2ff0a40f5:	43 8b 4c 20 7c                                  	mov    ecx,DWORD PTR [r8+r12*1+0x7c]
 5b2ff0a40fa:	43 83 7c 20 7c 01                               	cmp    DWORD PTR [r8+r12*1+0x7c],0x1
 5b2ff0a4100:	0f 85 04 00 00 00                               	jne    0x5b2ff0a410a
 5b2ff0a4106:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0a410a:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
 5b2ff0a410f:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
 5b2ff0a4113:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a4117:	4c 8b 15 ef a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ef]        # 0x5b2ff09ea0d
 5b2ff0a411e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a4123:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a4127:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a412c:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
 5b2ff0a4132:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
 5b2ff0a4136:	4c 8b 15 d0 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d0]        # 0x5b2ff09ea0d
 5b2ff0a413d:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a4142:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a4147:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
 5b2ff0a414c:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
 5b2ff0a4150:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
 5b2ff0a4155:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a415a:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
 5b2ff0a4164:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a4169:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a416d:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0a4171:	4c 8b 15 2e f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff42e]        # 0x5b2ff0a35a6
 5b2ff0a4178:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a417d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a4181:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a4185:	4c 8b 15 5d 90 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff905d]        # 0x5b2ff09d1e9
 5b2ff0a418c:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
 5b2ff0a4191:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
 5b2ff0a4196:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
 5b2ff0a419c:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
 5b2ff0a41a0:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
 5b2ff0a41a5:	4c 8b 15 0e d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd80e]        # 0x5b2ff0a19ba
 5b2ff0a41ac:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a41b1:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a41b6:	4c 8b 15 28 d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd728]        # 0x5b2ff0a18e5
 5b2ff0a41bd:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0a41c2:	4c 8b 15 2b d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd72b]        # 0x5b2ff0a18f4
 5b2ff0a41c9:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a41ce:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a41d3:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
 5b2ff0a41d9:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
 5b2ff0a41de:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
 5b2ff0a41e2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a41e7:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
 5b2ff0a41ec:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
 5b2ff0a41f0:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
 5b2ff0a41f6:	49 8b c4                                        	mov    rax,r12
 5b2ff0a41f9:	f6 c3 02                                        	test   bl,0x2
 5b2ff0a41fc:	0f 84 7f 02 00 00                               	je     0x5b2ff0a4481
 5b2ff0a4202:	c4 81 7a 10 4c 18 44                            	vmovss xmm1,DWORD PTR [r8+r11*1+0x44]
 5b2ff0a4209:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
 5b2ff0a4210:	0f 85 a3 00 00 00                               	jne    0x5b2ff0a42b9
 5b2ff0a4216:	c4 81 7a 10 54 18 10                            	vmovss xmm2,DWORD PTR [r8+r11*1+0x10]
 5b2ff0a421d:	c4 81 7a 10 5c 18 14                            	vmovss xmm3,DWORD PTR [r8+r11*1+0x14]
 5b2ff0a4224:	c4 81 7a 10 44 18 18                            	vmovss xmm0,DWORD PTR [r8+r11*1+0x18]
 5b2ff0a422b:	c4 81 7a 10 6c 18 1c                            	vmovss xmm5,DWORD PTR [r8+r11*1+0x1c]
 5b2ff0a4232:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a4236:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a4239:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
 5b2ff0a423f:	41 8b cf                                        	mov    ecx,r15d
 5b2ff0a4242:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
 5b2ff0a4246:	e8 15 70 f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a424b:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a424f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a4253:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a4257:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
 5b2ff0a425e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0a4262:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0a4267:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0a426c:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a4270:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
 5b2ff0a4277:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
 5b2ff0a427e:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
 5b2ff0a4285:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
 5b2ff0a428d:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a4294:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
 5b2ff0a429c:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a42a4:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a42ac:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a42b4:	e9 c8 01 00 00                                  	jmp    0x5b2ff0a4481
 5b2ff0a42b9:	4c 8b e0                                        	mov    r12,rax
 5b2ff0a42bc:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
 5b2ff0a42c0:	41 0f af c7                                     	imul   eax,r15d
 5b2ff0a42c4:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff0a42ca:	03 c1                                           	add    eax,ecx
 5b2ff0a42cc:	43 8b 7c 20 68                                  	mov    edi,DWORD PTR [r8+r12*1+0x68]
 5b2ff0a42d1:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
 5b2ff0a42d7:	0f 84 1f 00 00 00                               	je     0x5b2ff0a42fc
 5b2ff0a42dd:	43 8b 7c 20 70                                  	mov    edi,DWORD PTR [r8+r12*1+0x70]
 5b2ff0a42e2:	43 83 7c 20 70 00                               	cmp    DWORD PTR [r8+r12*1+0x70],0x0
 5b2ff0a42e8:	0f 84 0e 00 00 00                               	je     0x5b2ff0a42fc
 5b2ff0a42ee:	43 8b 7c 20 0c                                  	mov    edi,DWORD PTR [r8+r12*1+0xc]
 5b2ff0a42f3:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
 5b2ff0a42f6:	c4 c1 7a 11 0c 38                               	vmovss DWORD PTR [r8+rdi*1],xmm1
 5b2ff0a42fc:	8b bd f0 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x310]
 5b2ff0a4302:	c4 c1 7a 6f 04 38                               	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1]
 5b2ff0a4308:	43 8b 7c 20 08                                  	mov    edi,DWORD PTR [r8+r12*1+0x8]
 5b2ff0a430d:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
 5b2ff0a4310:	43 8b 44 20 74                                  	mov    eax,DWORD PTR [r8+r12*1+0x74]
 5b2ff0a4315:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
 5b2ff0a431b:	0f 84 81 00 00 00                               	je     0x5b2ff0a43a2
 5b2ff0a4321:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
 5b2ff0a4326:	43 8b 44 20 78                                  	mov    eax,DWORD PTR [r8+r12*1+0x78]
 5b2ff0a432b:	43 81 7c 20 78 02 03 00 00                      	cmp    DWORD PTR [r8+r12*1+0x78],0x302
 5b2ff0a4334:	0f 84 09 00 00 00                               	je     0x5b2ff0a4343
 5b2ff0a433a:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0a433e:	e9 04 00 00 00                                  	jmp    0x5b2ff0a4347
 5b2ff0a4343:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0a4347:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
 5b2ff0a434c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0a4351:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
 5b2ff0a4357:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
 5b2ff0a435c:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
 5b2ff0a4361:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
 5b2ff0a4366:	4c 8b 15 96 dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdd96]        # 0x5b2ff0a2103
 5b2ff0a436d:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a4372:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a4377:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
 5b2ff0a437c:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
 5b2ff0a4380:	43 8b 44 20 7c                                  	mov    eax,DWORD PTR [r8+r12*1+0x7c]
 5b2ff0a4385:	43 83 7c 20 7c 01                               	cmp    DWORD PTR [r8+r12*1+0x7c],0x1
 5b2ff0a438b:	0f 85 04 00 00 00                               	jne    0x5b2ff0a4395
 5b2ff0a4391:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0a4395:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
 5b2ff0a439a:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
 5b2ff0a439e:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a43a2:	4c 8b 15 64 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa664]        # 0x5b2ff09ea0d
 5b2ff0a43a9:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a43ae:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a43b2:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a43b7:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
 5b2ff0a43bd:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
 5b2ff0a43c1:	4c 8b 15 45 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa645]        # 0x5b2ff09ea0d
 5b2ff0a43c8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a43cd:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a43d2:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
 5b2ff0a43d7:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
 5b2ff0a43db:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
 5b2ff0a43e0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a43e5:	4c 8b 15 70 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffd70]        # 0x5b2ff0a415c
 5b2ff0a43ec:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a43f1:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a43f5:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0a43f9:	4c 8b 15 a6 f1 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff1a6]        # 0x5b2ff0a35a6
 5b2ff0a4400:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a4405:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a4409:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a440d:	4c 8b 15 d5 8d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8dd5]        # 0x5b2ff09d1e9
 5b2ff0a4414:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
 5b2ff0a4419:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
 5b2ff0a441e:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
 5b2ff0a4424:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
 5b2ff0a4428:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
 5b2ff0a442d:	4c 8b 15 86 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd586]        # 0x5b2ff0a19ba
 5b2ff0a4434:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a4439:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a443e:	4c 8b 15 a0 d4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd4a0]        # 0x5b2ff0a18e5
 5b2ff0a4445:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0a444a:	4c 8b 15 a3 d4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd4a3]        # 0x5b2ff0a18f4
 5b2ff0a4451:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a4456:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a445b:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
 5b2ff0a4461:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
 5b2ff0a4466:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
 5b2ff0a446a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a446f:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
 5b2ff0a4474:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
 5b2ff0a4478:	c4 c1 7a 11 04 38                               	vmovss DWORD PTR [r8+rdi*1],xmm0
 5b2ff0a447e:	49 8b c4                                        	mov    rax,r12
 5b2ff0a4481:	f6 c3 04                                        	test   bl,0x4
 5b2ff0a4484:	0f 85 08 00 00 00                               	jne    0x5b2ff0a4492
 5b2ff0a448a:	41 8b fb                                        	mov    edi,r11d
 5b2ff0a448d:	e9 7e 02 00 00                                  	jmp    0x5b2ff0a4710
 5b2ff0a4492:	41 8b fb                                        	mov    edi,r11d
 5b2ff0a4495:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
 5b2ff0a449c:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
 5b2ff0a44a3:	0f 85 9b 00 00 00                               	jne    0x5b2ff0a4544
 5b2ff0a44a9:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
 5b2ff0a44b0:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
 5b2ff0a44b7:	c4 c1 7a 10 44 38 28                            	vmovss xmm0,DWORD PTR [r8+rdi*1+0x28]
 5b2ff0a44be:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
 5b2ff0a44c5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a44c9:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a44cc:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
 5b2ff0a44cf:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
 5b2ff0a44d5:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
 5b2ff0a44d9:	e8 82 6d f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a44de:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a44e1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a44e5:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a44e9:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0a44ed:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0a44f2:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0a44f7:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a44fb:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
 5b2ff0a4502:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
 5b2ff0a4509:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
 5b2ff0a4510:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
 5b2ff0a4518:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a451f:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
 5b2ff0a4527:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a452f:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a4537:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a453f:	e9 cc 01 00 00                                  	jmp    0x5b2ff0a4710
 5b2ff0a4544:	4c 8b d8                                        	mov    r11,rax
 5b2ff0a4547:	47 8b 24 18                                     	mov    r12d,DWORD PTR [r8+r11*1]
 5b2ff0a454b:	44 0f af a5 50 ff ff ff                         	imul   r12d,DWORD PTR [rbp-0xb0]
 5b2ff0a4553:	8b 45 90                                        	mov    eax,DWORD PTR [rbp-0x70]
 5b2ff0a4556:	44 03 e0                                        	add    r12d,eax
 5b2ff0a4559:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
 5b2ff0a455e:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
 5b2ff0a4564:	0f 84 20 00 00 00                               	je     0x5b2ff0a458a
 5b2ff0a456a:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
 5b2ff0a456f:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
 5b2ff0a4575:	0f 84 0f 00 00 00                               	je     0x5b2ff0a458a
 5b2ff0a457b:	43 8b 4c 18 0c                                  	mov    ecx,DWORD PTR [r8+r11*1+0xc]
 5b2ff0a4580:	42 8d 0c a1                                     	lea    ecx,[rcx+r12*4]
 5b2ff0a4584:	c4 c1 7a 11 0c 08                               	vmovss DWORD PTR [r8+rcx*1],xmm1
 5b2ff0a458a:	8b 8d f8 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x308]
 5b2ff0a4590:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
 5b2ff0a4596:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
 5b2ff0a459b:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
 5b2ff0a459f:	47 8b 7c 18 74                                  	mov    r15d,DWORD PTR [r8+r11*1+0x74]
 5b2ff0a45a4:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
 5b2ff0a45aa:	0f 84 81 00 00 00                               	je     0x5b2ff0a4631
 5b2ff0a45b0:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
 5b2ff0a45b5:	47 8b 7c 18 78                                  	mov    r15d,DWORD PTR [r8+r11*1+0x78]
 5b2ff0a45ba:	43 81 7c 18 78 02 03 00 00                      	cmp    DWORD PTR [r8+r11*1+0x78],0x302
 5b2ff0a45c3:	0f 84 09 00 00 00                               	je     0x5b2ff0a45d2
 5b2ff0a45c9:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0a45cd:	e9 04 00 00 00                                  	jmp    0x5b2ff0a45d6
 5b2ff0a45d2:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0a45d6:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
 5b2ff0a45db:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0a45e0:	c4 01 7a 10 0c 20                               	vmovss xmm9,DWORD PTR [r8+r12*1]
 5b2ff0a45e6:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
 5b2ff0a45eb:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
 5b2ff0a45f0:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
 5b2ff0a45f5:	4c 8b 15 07 db ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdb07]        # 0x5b2ff0a2103
 5b2ff0a45fc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a4601:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a4606:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
 5b2ff0a460b:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
 5b2ff0a460f:	47 8b 7c 18 7c                                  	mov    r15d,DWORD PTR [r8+r11*1+0x7c]
 5b2ff0a4614:	43 83 7c 18 7c 01                               	cmp    DWORD PTR [r8+r11*1+0x7c],0x1
 5b2ff0a461a:	0f 85 04 00 00 00                               	jne    0x5b2ff0a4624
 5b2ff0a4620:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0a4624:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
 5b2ff0a4629:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
 5b2ff0a462d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a4631:	4c 8b 15 d5 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3d5]        # 0x5b2ff09ea0d
 5b2ff0a4638:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a463d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a4641:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a4646:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
 5b2ff0a464c:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
 5b2ff0a4650:	4c 8b 15 b6 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3b6]        # 0x5b2ff09ea0d
 5b2ff0a4657:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a465c:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a4661:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
 5b2ff0a4666:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
 5b2ff0a466a:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
 5b2ff0a466f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a4674:	4c 8b 15 e1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffae1]        # 0x5b2ff0a415c
 5b2ff0a467b:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a4680:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a4684:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0a4688:	4c 8b 15 17 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef17]        # 0x5b2ff0a35a6
 5b2ff0a468f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a4694:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a4698:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a469c:	4c 8b 15 46 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b46]        # 0x5b2ff09d1e9
 5b2ff0a46a3:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
 5b2ff0a46a8:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
 5b2ff0a46ad:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
 5b2ff0a46b3:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
 5b2ff0a46b7:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
 5b2ff0a46bc:	4c 8b 15 f7 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2f7]        # 0x5b2ff0a19ba
 5b2ff0a46c3:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a46c8:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a46cd:	4c 8b 15 11 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd211]        # 0x5b2ff0a18e5
 5b2ff0a46d4:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0a46d9:	4c 8b 15 14 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd214]        # 0x5b2ff0a18f4
 5b2ff0a46e0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a46e5:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a46ea:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
 5b2ff0a46f0:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
 5b2ff0a46f5:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
 5b2ff0a46f9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a46fe:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
 5b2ff0a4703:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
 5b2ff0a4707:	c4 81 7a 11 04 20                               	vmovss DWORD PTR [r8+r12*1],xmm0
 5b2ff0a470d:	49 8b c3                                        	mov    rax,r11
 5b2ff0a4710:	f6 c3 08                                        	test   bl,0x8
 5b2ff0a4713:	0f 85 23 00 00 00                               	jne    0x5b2ff0a473c
 5b2ff0a4719:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
 5b2ff0a471f:	4c 8b e6                                        	mov    r12,rsi
 5b2ff0a4722:	49 8b f0                                        	mov    rsi,r8
 5b2ff0a4725:	4c 8b d8                                        	mov    r11,rax
 5b2ff0a4728:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0a472d:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
 5b2ff0a4731:	4c 8b fa                                        	mov    r15,rdx
 5b2ff0a4734:	49 8b f9                                        	mov    rdi,r9
 5b2ff0a4737:	e9 fc 1e 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a473c:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
 5b2ff0a4743:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
 5b2ff0a474a:	0f 85 95 00 00 00                               	jne    0x5b2ff0a47e5
 5b2ff0a4750:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
 5b2ff0a4757:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
 5b2ff0a475e:	c4 c1 7a 10 44 38 38                            	vmovss xmm0,DWORD PTR [r8+rdi*1+0x38]
 5b2ff0a4765:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
 5b2ff0a476c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a4770:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a4773:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
 5b2ff0a4779:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
 5b2ff0a477f:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
 5b2ff0a4783:	e8 d8 6a f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a4788:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
 5b2ff0a478e:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
 5b2ff0a4792:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff0a4796:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a479b:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a47a1:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a47a7:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a47ab:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
 5b2ff0a47b2:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
 5b2ff0a47b9:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a47c0:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a47c8:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a47d0:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a47d8:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a47e0:	e9 53 1e 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a47e5:	4c 8b d8                                        	mov    r11,rax
 5b2ff0a47e8:	47 8b 24 18                                     	mov    r12d,DWORD PTR [r8+r11*1]
 5b2ff0a47ec:	44 0f af a5 50 ff ff ff                         	imul   r12d,DWORD PTR [rbp-0xb0]
 5b2ff0a47f4:	44 8b bd 58 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xa8]
 5b2ff0a47fb:	45 03 e7                                        	add    r12d,r15d
 5b2ff0a47fe:	47 8b 7c 18 68                                  	mov    r15d,DWORD PTR [r8+r11*1+0x68]
 5b2ff0a4803:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
 5b2ff0a4809:	0f 84 20 00 00 00                               	je     0x5b2ff0a482f
 5b2ff0a480f:	47 8b 7c 18 70                                  	mov    r15d,DWORD PTR [r8+r11*1+0x70]
 5b2ff0a4814:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
 5b2ff0a481a:	0f 84 0f 00 00 00                               	je     0x5b2ff0a482f
 5b2ff0a4820:	47 8b 7c 18 0c                                  	mov    r15d,DWORD PTR [r8+r11*1+0xc]
 5b2ff0a4825:	47 8d 3c a7                                     	lea    r15d,[r15+r12*4]
 5b2ff0a4829:	c4 81 7a 11 0c 38                               	vmovss DWORD PTR [r8+r15*1],xmm1
 5b2ff0a482f:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
 5b2ff0a4835:	c4 c1 7a 6f 04 18                               	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1]
 5b2ff0a483b:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
 5b2ff0a4840:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
 5b2ff0a4844:	47 8b 7c 18 74                                  	mov    r15d,DWORD PTR [r8+r11*1+0x74]
 5b2ff0a4849:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
 5b2ff0a484f:	0f 84 81 00 00 00                               	je     0x5b2ff0a48d6
 5b2ff0a4855:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
 5b2ff0a485a:	47 8b 7c 18 78                                  	mov    r15d,DWORD PTR [r8+r11*1+0x78]
 5b2ff0a485f:	43 81 7c 18 78 02 03 00 00                      	cmp    DWORD PTR [r8+r11*1+0x78],0x302
 5b2ff0a4868:	0f 84 09 00 00 00                               	je     0x5b2ff0a4877
 5b2ff0a486e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0a4872:	e9 04 00 00 00                                  	jmp    0x5b2ff0a487b
 5b2ff0a4877:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0a487b:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
 5b2ff0a4880:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0a4885:	c4 01 7a 10 0c 20                               	vmovss xmm9,DWORD PTR [r8+r12*1]
 5b2ff0a488b:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
 5b2ff0a4890:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
 5b2ff0a4895:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
 5b2ff0a489a:	4c 8b 15 62 d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd862]        # 0x5b2ff0a2103
 5b2ff0a48a1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a48a6:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a48ab:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
 5b2ff0a48b0:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
 5b2ff0a48b4:	47 8b 7c 18 7c                                  	mov    r15d,DWORD PTR [r8+r11*1+0x7c]
 5b2ff0a48b9:	43 83 7c 18 7c 01                               	cmp    DWORD PTR [r8+r11*1+0x7c],0x1
 5b2ff0a48bf:	0f 85 04 00 00 00                               	jne    0x5b2ff0a48c9
 5b2ff0a48c5:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0a48c9:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
 5b2ff0a48ce:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
 5b2ff0a48d2:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a48d6:	4c 8b 15 30 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa130]        # 0x5b2ff09ea0d
 5b2ff0a48dd:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a48e2:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a48e6:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a48eb:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
 5b2ff0a48f1:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
 5b2ff0a48f5:	4c 8b 15 11 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa111]        # 0x5b2ff09ea0d
 5b2ff0a48fc:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a4901:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a4906:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
 5b2ff0a490b:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
 5b2ff0a490f:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
 5b2ff0a4914:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a4919:	4c 8b 15 3c f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff83c]        # 0x5b2ff0a415c
 5b2ff0a4920:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a4925:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a4929:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0a492d:	4c 8b 15 72 ec ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffec72]        # 0x5b2ff0a35a6
 5b2ff0a4934:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a4939:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a493d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0a4941:	4c 8b 15 a1 88 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff88a1]        # 0x5b2ff09d1e9
 5b2ff0a4948:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
 5b2ff0a494d:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
 5b2ff0a4952:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
 5b2ff0a4958:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
 5b2ff0a495c:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
 5b2ff0a4961:	4c 8b 15 52 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd052]        # 0x5b2ff0a19ba
 5b2ff0a4968:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a496d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a4972:	4c 8b 15 6c cf ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcf6c]        # 0x5b2ff0a18e5
 5b2ff0a4979:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0a497e:	4c 8b 15 6f cf ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcf6f]        # 0x5b2ff0a18f4
 5b2ff0a4985:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a498a:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a498f:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
 5b2ff0a4995:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
 5b2ff0a499a:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
 5b2ff0a499e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a49a3:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
 5b2ff0a49a8:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
 5b2ff0a49ac:	c4 81 7a 11 04 20                               	vmovss DWORD PTR [r8+r12*1],xmm0
 5b2ff0a49b2:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
 5b2ff0a49b8:	4c 8b e6                                        	mov    r12,rsi
 5b2ff0a49bb:	49 8b f0                                        	mov    rsi,r8
 5b2ff0a49be:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0a49c3:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
 5b2ff0a49c7:	4c 8b fa                                        	mov    r15,rdx
 5b2ff0a49ca:	49 8b f9                                        	mov    rdi,r9
 5b2ff0a49cd:	e9 66 1c 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a49d2:	45 8b e7                                        	mov    r12d,r15d
 5b2ff0a49d5:	41 83 e4 01                                     	and    r12d,0x1
 5b2ff0a49d9:	41 f7 dc                                        	neg    r12d
 5b2ff0a49dc:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
 5b2ff0a49e1:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0a49e6:	45 8b e7                                        	mov    r12d,r15d
 5b2ff0a49e9:	41 c1 e4 1e                                     	shl    r12d,0x1e
 5b2ff0a49ed:	41 c1 fc 1f                                     	sar    r12d,0x1f
 5b2ff0a49f1:	c4 c3 41 22 fc 01                               	vpinsrd xmm7,xmm7,r12d,0x1
 5b2ff0a49f7:	45 8b e7                                        	mov    r12d,r15d
 5b2ff0a49fa:	41 c1 e4 1d                                     	shl    r12d,0x1d
 5b2ff0a49fe:	41 c1 fc 1f                                     	sar    r12d,0x1f
 5b2ff0a4a02:	c4 c3 41 22 fc 02                               	vpinsrd xmm7,xmm7,r12d,0x2
 5b2ff0a4a08:	45 8b e7                                        	mov    r12d,r15d
 5b2ff0a4a0b:	41 c1 e4 1c                                     	shl    r12d,0x1c
 5b2ff0a4a0f:	41 c1 fc 1f                                     	sar    r12d,0x1f
 5b2ff0a4a13:	c4 c3 41 22 fc 03                               	vpinsrd xmm7,xmm7,r12d,0x3
 5b2ff0a4a19:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
 5b2ff0a4a1e:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
 5b2ff0a4a23:	4d 8b e3                                        	mov    r12,r11
 5b2ff0a4a26:	4c 2b a5 18 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2e8]
 5b2ff0a4a2d:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
 5b2ff0a4a32:	c4 43 31 21 cb 10                               	vinsertps xmm9,xmm9,xmm11,0x10
 5b2ff0a4a38:	48 8b da                                        	mov    rbx,rdx
 5b2ff0a4a3b:	4a 8d 14 1b                                     	lea    rdx,[rbx+r11*1]
 5b2ff0a4a3f:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
 5b2ff0a4a44:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
 5b2ff0a4a4a:	4c 03 e3                                        	add    r12,rbx
 5b2ff0a4a4d:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
 5b2ff0a4a52:	c4 43 31 21 cb 30                               	vinsertps xmm9,xmm9,xmm11,0x30
 5b2ff0a4a58:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
 5b2ff0a4a60:	c4 41 20 59 c9                                  	vmulps xmm9,xmm11,xmm9
 5b2ff0a4a65:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
 5b2ff0a4a6d:	c4 c1 08 59 c9                                  	vmulps xmm1,xmm14,xmm9
 5b2ff0a4a72:	c4 c1 82 2a d1                                  	vcvtsi2ss xmm2,xmm15,r9
 5b2ff0a4a77:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
 5b2ff0a4a7c:	4d 8b e1                                        	mov    r12,r9
 5b2ff0a4a7f:	4c 2b a5 38 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2c8]
 5b2ff0a4a86:	c4 c1 82 2a dc                                  	vcvtsi2ss xmm3,xmm15,r12
 5b2ff0a4a8b:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
 5b2ff0a4a91:	4a 8d 14 0e                                     	lea    rdx,[rsi+r9*1]
 5b2ff0a4a95:	c4 e1 82 2a da                                  	vcvtsi2ss xmm3,xmm15,rdx
 5b2ff0a4a9a:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
 5b2ff0a4aa0:	4c 03 e6                                        	add    r12,rsi
 5b2ff0a4aa3:	c4 c1 82 2a dc                                  	vcvtsi2ss xmm3,xmm15,r12
 5b2ff0a4aa8:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
 5b2ff0a4aae:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0a4ab2:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
 5b2ff0a4aba:	c5 e0 59 ea                                     	vmulps xmm5,xmm3,xmm2
 5b2ff0a4abe:	c5 f0 58 c5                                     	vaddps xmm0,xmm1,xmm5
 5b2ff0a4ac2:	4c 8b 15 44 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f44]        # 0x5b2ff09ea0d
 5b2ff0a4ac9:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
 5b2ff0a4ace:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
 5b2ff0a4ad2:	c4 41 48 5c c1                                  	vsubps xmm8,xmm6,xmm9
 5b2ff0a4ad7:	c5 38 5c c2                                     	vsubps xmm8,xmm8,xmm2
 5b2ff0a4adb:	c5 78 10 95 60 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2a0]
 5b2ff0a4ae3:	c4 41 28 59 d8                                  	vmulps xmm11,xmm10,xmm8
 5b2ff0a4ae8:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0a4aed:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
 5b2ff0a4af2:	c5 28 c2 e0 01                                  	vcmpltps xmm12,xmm10,xmm0
 5b2ff0a4af7:	c5 99 db ff                                     	vpand  xmm7,xmm12,xmm7
 5b2ff0a4afb:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a4aff:	49 8d 54 24 18                                  	lea    rdx,[r12+0x18]
 5b2ff0a4b04:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a4b0b:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
 5b2ff0a4b11:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
 5b2ff0a4b16:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
 5b2ff0a4b1d:	c4 22 79 18 24 1a                               	vbroadcastss xmm12,DWORD PTR [rdx+r11*1]
 5b2ff0a4b23:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
 5b2ff0a4b28:	c4 41 30 58 cc                                  	vaddps xmm9,xmm9,xmm12
 5b2ff0a4b2d:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
 5b2ff0a4b34:	c4 62 79 18 24 1a                               	vbroadcastss xmm12,DWORD PTR [rdx+rbx*1]
 5b2ff0a4b3a:	c4 41 38 59 c4                                  	vmulps xmm8,xmm8,xmm12
 5b2ff0a4b3f:	c4 41 30 58 c0                                  	vaddps xmm8,xmm9,xmm8
 5b2ff0a4b44:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
 5b2ff0a4b4c:	c4 41 30 58 c0                                  	vaddps xmm8,xmm9,xmm8
 5b2ff0a4b51:	48 8b 55 c8                                     	mov    rdx,QWORD PTR [rbp-0x38]
 5b2ff0a4b55:	41 8b 34 14                                     	mov    esi,DWORD PTR [r12+rdx*1]
 5b2ff0a4b59:	44 8b ce                                        	mov    r9d,esi
 5b2ff0a4b5c:	44 0f af 8d 50 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xb0]
 5b2ff0a4b64:	45 03 c8                                        	add    r9d,r8d
 5b2ff0a4b67:	0f af b5 e0 fc ff ff                            	imul   esi,DWORD PTR [rbp-0x320]
 5b2ff0a4b6e:	41 03 f0                                        	add    esi,r8d
 5b2ff0a4b71:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
 5b2ff0a4b75:	45 8b 44 14 04                                  	mov    r8d,DWORD PTR [r12+rdx*1+0x4]
 5b2ff0a4b7a:	45 8b 7c 14 68                                  	mov    r15d,DWORD PTR [r12+rdx*1+0x68]
 5b2ff0a4b7f:	4c 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r15
 5b2ff0a4b86:	45 85 ff                                        	test   r15d,r15d
 5b2ff0a4b89:	0f 85 08 00 00 00                               	jne    0x5b2ff0a4b97
 5b2ff0a4b8f:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a4b92:	e9 1d 01 00 00                                  	jmp    0x5b2ff0a4cb4
 5b2ff0a4b97:	45 8b bc 14 80 00 00 00                         	mov    r15d,DWORD PTR [r12+rdx*1+0x80]
 5b2ff0a4b9f:	41 83 bc 14 80 00 00 00 00                      	cmp    DWORD PTR [r12+rdx*1+0x80],0x0
 5b2ff0a4ba8:	75 e5                                           	jne    0x5b2ff0a4b8f
 5b2ff0a4baa:	45 8b 7c 14 0c                                  	mov    r15d,DWORD PTR [r12+rdx*1+0xc]
 5b2ff0a4baf:	41 8d 04 b7                                     	lea    eax,[r15+rsi*4]
 5b2ff0a4bb3:	c4 41 7b 10 24 04                               	vmovsd xmm12,QWORD PTR [r12+rax*1]
 5b2ff0a4bb9:	8b 85 50 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb0]
 5b2ff0a4bbf:	41 3b c0                                        	cmp    eax,r8d
 5b2ff0a4bc2:	0f 8c 0d 00 00 00                               	jl     0x5b2ff0a4bd5
 5b2ff0a4bc8:	c5 f8 10 95 80 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x280]
 5b2ff0a4bd0:	e9 0a 00 00 00                                  	jmp    0x5b2ff0a4bdf
 5b2ff0a4bd5:	47 8d 3c 8f                                     	lea    r15d,[r15+r9*4]
 5b2ff0a4bd9:	c4 81 7b 10 14 3c                               	vmovsd xmm2,QWORD PTR [r12+r15*1]
 5b2ff0a4bdf:	c5 19 6c e2                                     	vpunpcklqdq xmm12,xmm12,xmm2
 5b2ff0a4be3:	45 8b 7c 14 6c                                  	mov    r15d,DWORD PTR [r12+rdx*1+0x6c]
 5b2ff0a4be8:	41 81 ef 00 02 00 00                            	sub    r15d,0x200
 5b2ff0a4bef:	41 83 ff 07                                     	cmp    r15d,0x7
 5b2ff0a4bf3:	0f 83 0b 00 00 00                               	jae    0x5b2ff0a4c04
 5b2ff0a4bf9:	4c 8d 15 48 1f 00 00                            	lea    r10,[rip+0x1f48]        # 0x5b2ff0a6b48
 5b2ff0a4c00:	43 ff 24 fa                                     	jmp    QWORD PTR [r10+r15*8]
 5b2ff0a4c04:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
 5b2ff0a4c09:	e9 4a 00 00 00                                  	jmp    0x5b2ff0a4c58
 5b2ff0a4c0e:	c4 41 18 c2 e0 02                               	vcmpleps xmm12,xmm12,xmm8
 5b2ff0a4c14:	e9 3f 00 00 00                                  	jmp    0x5b2ff0a4c58
 5b2ff0a4c19:	c4 41 38 c2 e4 04                               	vcmpneqps xmm12,xmm8,xmm12
 5b2ff0a4c1f:	e9 34 00 00 00                                  	jmp    0x5b2ff0a4c58
 5b2ff0a4c24:	c4 41 18 c2 e0 01                               	vcmpltps xmm12,xmm12,xmm8
 5b2ff0a4c2a:	e9 29 00 00 00                                  	jmp    0x5b2ff0a4c58
 5b2ff0a4c2f:	c4 41 38 c2 e4 02                               	vcmpleps xmm12,xmm8,xmm12
 5b2ff0a4c35:	e9 1e 00 00 00                                  	jmp    0x5b2ff0a4c58
 5b2ff0a4c3a:	c4 41 38 c2 e4 00                               	vcmpeqps xmm12,xmm8,xmm12
 5b2ff0a4c40:	e9 13 00 00 00                                  	jmp    0x5b2ff0a4c58
 5b2ff0a4c45:	c4 41 38 c2 e4 01                               	vcmpltps xmm12,xmm8,xmm12
 5b2ff0a4c4b:	e9 08 00 00 00                                  	jmp    0x5b2ff0a4c58
 5b2ff0a4c50:	c5 78 10 a5 80 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x280]
 5b2ff0a4c58:	c5 99 db ff                                     	vpand  xmm7,xmm12,xmm7
 5b2ff0a4c5c:	c5 78 50 ff                                     	vmovmskps r15d,xmm7
 5b2ff0a4c60:	45 85 ff                                        	test   r15d,r15d
 5b2ff0a4c63:	0f 85 3f 00 00 00                               	jne    0x5b2ff0a4ca8
 5b2ff0a4c69:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a4c6c:	4c 8b e3                                        	mov    r12,rbx
 5b2ff0a4c6f:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a4c74:	4d 8b fb                                        	mov    r15,r11
 5b2ff0a4c77:	4c 8b da                                        	mov    r11,rdx
 5b2ff0a4c7a:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a4c7f:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a4c85:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a4c8b:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a4c93:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a4c9b:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a4ca3:	e9 90 19 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a4ca8:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
 5b2ff0a4cae:	41 bf 01 00 00 00                               	mov    r15d,0x1
 5b2ff0a4cb4:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
 5b2ff0a4cbe:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0a4cc3:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0a4cc8:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x5b2ff0a4cb6
 5b2ff0a4ccf:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff0a4cd4:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff0a4cd8:	c5 e8 c2 d0 01                                  	vcmpltps xmm2,xmm2,xmm0
 5b2ff0a4cdd:	c4 41 69 df fc                                  	vpandn xmm15,xmm2,xmm12
 5b2ff0a4ce2:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
 5b2ff0a4ce6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a4ceb:	c5 c8 5e c0                                     	vdivps xmm0,xmm6,xmm0
 5b2ff0a4cef:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
 5b2ff0a4cf6:	4d 8d 44 24 2c                                  	lea    r8,[r12+0x2c]
 5b2ff0a4cfb:	c4 42 79 18 24 38                               	vbroadcastss xmm12,DWORD PTR [r8+rdi*1]
 5b2ff0a4d01:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
 5b2ff0a4d06:	c4 82 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+r11*1]
 5b2ff0a4d0c:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
 5b2ff0a4d10:	c5 18 58 e2                                     	vaddps xmm12,xmm12,xmm2
 5b2ff0a4d14:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
 5b2ff0a4d1a:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0a4d1e:	c5 18 58 e2                                     	vaddps xmm12,xmm12,xmm2
 5b2ff0a4d22:	c4 41 78 59 e4                                  	vmulps xmm12,xmm0,xmm12
 5b2ff0a4d27:	4d 8d 44 24 28                                  	lea    r8,[r12+0x28]
 5b2ff0a4d2c:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
 5b2ff0a4d32:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
 5b2ff0a4d36:	c5 f8 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm6
 5b2ff0a4d3e:	c4 82 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [r8+r11*1]
 5b2ff0a4d44:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
 5b2ff0a4d48:	c5 e8 58 f6                                     	vaddps xmm6,xmm2,xmm6
 5b2ff0a4d4c:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
 5b2ff0a4d52:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0a4d56:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
 5b2ff0a4d5a:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
 5b2ff0a4d5e:	4d 8d 44 24 24                                  	lea    r8,[r12+0x24]
 5b2ff0a4d63:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
 5b2ff0a4d69:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
 5b2ff0a4d6d:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
 5b2ff0a4d75:	c4 82 79 18 3c 18                               	vbroadcastss xmm7,DWORD PTR [r8+r11*1]
 5b2ff0a4d7b:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
 5b2ff0a4d7f:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
 5b2ff0a4d83:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
 5b2ff0a4d89:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0a4d8d:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
 5b2ff0a4d91:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
 5b2ff0a4d95:	4d 8d 44 24 20                                  	lea    r8,[r12+0x20]
 5b2ff0a4d9a:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
 5b2ff0a4da0:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
 5b2ff0a4da4:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
 5b2ff0a4dac:	c4 02 79 18 04 18                               	vbroadcastss xmm8,DWORD PTR [r8+r11*1]
 5b2ff0a4db2:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
 5b2ff0a4db7:	c4 41 68 58 c0                                  	vaddps xmm8,xmm2,xmm8
 5b2ff0a4dbc:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
 5b2ff0a4dc2:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0a4dc6:	c5 38 58 c2                                     	vaddps xmm8,xmm8,xmm2
 5b2ff0a4dca:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
 5b2ff0a4dcf:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a4dd6:	4c 89 bd 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r15
 5b2ff0a4ddd:	47 8b bc 04 34 01 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x134]
 5b2ff0a4de5:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
 5b2ff0a4dec:	41 8d 77 ff                                     	lea    esi,[r15-0x1]
 5b2ff0a4df0:	4c 89 8d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r9
 5b2ff0a4df7:	c5 78 11 95 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm10
 5b2ff0a4dff:	83 fe 01                                        	cmp    esi,0x1
 5b2ff0a4e02:	0f 87 14 07 00 00                               	ja     0x5b2ff0a551c
 5b2ff0a4e08:	43 8b 74 04 28                                  	mov    esi,DWORD PTR [r12+r8*1+0x28]
 5b2ff0a4e0d:	47 8b 4c 04 20                                  	mov    r9d,DWORD PTR [r12+r8*1+0x20]
 5b2ff0a4e12:	4c 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],r15
 5b2ff0a4e19:	4d 8d 7c 24 54                                  	lea    r15,[r12+0x54]
 5b2ff0a4e1e:	c4 c2 79 18 14 1f                               	vbroadcastss xmm2,DWORD PTR [r15+rbx*1]
 5b2ff0a4e24:	c4 42 79 18 0c 3f                               	vbroadcastss xmm9,DWORD PTR [r15+rdi*1]
 5b2ff0a4e2a:	c4 02 79 18 2c 1f                               	vbroadcastss xmm13,DWORD PTR [r15+r11*1]
 5b2ff0a4e30:	47 8b 7c 04 1c                                  	mov    r15d,DWORD PTR [r12+r8*1+0x1c]
 5b2ff0a4e35:	c4 41 02 2a f7                                  	vcvtsi2ss xmm14,xmm15,r15d
 5b2ff0a4e3a:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
 5b2ff0a4e3f:	48 89 b5 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rsi
 5b2ff0a4e46:	49 8d 74 24 50                                  	lea    rsi,[r12+0x50]
 5b2ff0a4e4b:	c4 e2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+rdi*1]
 5b2ff0a4e51:	c5 f0 59 db                                     	vmulps xmm3,xmm1,xmm3
 5b2ff0a4e55:	c4 a2 79 18 24 1e                               	vbroadcastss xmm4,DWORD PTR [rsi+r11*1]
 5b2ff0a4e5b:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
 5b2ff0a4e5f:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
 5b2ff0a4e63:	c4 e2 79 18 24 1e                               	vbroadcastss xmm4,DWORD PTR [rsi+rbx*1]
 5b2ff0a4e69:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
 5b2ff0a4e6d:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
 5b2ff0a4e71:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
 5b2ff0a4e75:	c4 e3 79 08 e3 09                               	vroundps xmm4,xmm3,0x9
 5b2ff0a4e7b:	c5 e0 5c dc                                     	vsubps xmm3,xmm3,xmm4
 5b2ff0a4e7f:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
 5b2ff0a4e83:	4c 8b 15 1e ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca1e]        # 0x5b2ff0a18a8
 5b2ff0a4e8a:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0a4e8f:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0a4e93:	c5 08 58 f3                                     	vaddps xmm14,xmm14,xmm3
 5b2ff0a4e97:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
 5b2ff0a4e9d:	4c 8b 15 45 83 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8345]        # 0x5b2ff09d1e9
 5b2ff0a4ea4:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
 5b2ff0a4ea9:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
 5b2ff0a4eae:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
 5b2ff0a4eb4:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
 5b2ff0a4eb9:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
 5b2ff0a4ebe:	c5 78 11 a5 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm12
 5b2ff0a4ec6:	4c 8b 15 ed ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcaed]        # 0x5b2ff0a19ba
 5b2ff0a4ecd:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0a4ed2:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0a4ed7:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
 5b2ff0a4edf:	4c 8b 15 ff c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc9ff]        # 0x5b2ff0a18e5
 5b2ff0a4ee6:	c4 c1 58 54 32                                  	vandps xmm6,xmm4,XMMWORD PTR [r10]
 5b2ff0a4eeb:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
 5b2ff0a4ef3:	4c 8b 15 fa c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc9fa]        # 0x5b2ff0a18f4
 5b2ff0a4efa:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a4eff:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a4f03:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
 5b2ff0a4f08:	c4 41 49 df fc                                  	vpandn xmm15,xmm6,xmm12
 5b2ff0a4f0d:	c5 a9 db f6                                     	vpand  xmm6,xmm10,xmm6
 5b2ff0a4f11:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0a4f16:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
 5b2ff0a4f19:	c4 c1 7a 7f b4 34 90 00 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x90],xmm6
 5b2ff0a4f23:	c4 c1 02 2a f1                                  	vcvtsi2ss xmm6,xmm15,r9d
 5b2ff0a4f28:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
 5b2ff0a4f2d:	c4 41 70 59 c9                                  	vmulps xmm9,xmm1,xmm9
 5b2ff0a4f32:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
 5b2ff0a4f37:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
 5b2ff0a4f3c:	c5 20 59 d2                                     	vmulps xmm10,xmm11,xmm2
 5b2ff0a4f40:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
 5b2ff0a4f45:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
 5b2ff0a4f4a:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
 5b2ff0a4f50:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
 5b2ff0a4f55:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
 5b2ff0a4f5a:	c5 c8 58 f3                                     	vaddps xmm6,xmm6,xmm3
 5b2ff0a4f5e:	c4 63 79 08 ce 09                               	vroundps xmm9,xmm6,0x9
 5b2ff0a4f64:	4c 8b 15 7e 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff827e]        # 0x5b2ff09d1e9
 5b2ff0a4f6b:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
 5b2ff0a4f71:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
 5b2ff0a4f76:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
 5b2ff0a4f7c:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
 5b2ff0a4f81:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
 5b2ff0a4f86:	4c 8b 15 58 c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc958]        # 0x5b2ff0a18e5
 5b2ff0a4f8d:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
 5b2ff0a4f92:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
 5b2ff0a4f97:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
 5b2ff0a4f9c:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
 5b2ff0a4fa1:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
 5b2ff0a4fa6:	c4 41 7a 7f 94 34 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x190],xmm10
 5b2ff0a4fb0:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
 5b2ff0a4fb4:	c5 78 10 ad 90 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x270]
 5b2ff0a4fbc:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
 5b2ff0a4fc1:	4c 8b 15 de e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5de]        # 0x5b2ff0a35a6
 5b2ff0a4fc8:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0a4fcd:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0a4fd2:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
 5b2ff0a4fd7:	4c 8b 15 0b 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff820b]        # 0x5b2ff09d1e9
 5b2ff0a4fde:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
 5b2ff0a4fe4:	c4 c1 28 54 d7                                  	vandps xmm2,xmm10,xmm15
 5b2ff0a4fe9:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
 5b2ff0a4fef:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
 5b2ff0a4ff3:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
 5b2ff0a4ff8:	4c 8b 15 e6 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc8e6]        # 0x5b2ff0a18e5
 5b2ff0a4fff:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
 5b2ff0a5004:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
 5b2ff0a5009:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
 5b2ff0a500e:	c4 41 69 db d2                                  	vpand  xmm10,xmm2,xmm10
 5b2ff0a5013:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
 5b2ff0a5018:	c4 41 7a 7f 14 34                               	vmovdqu XMMWORD PTR [r12+rsi*1],xmm10
 5b2ff0a501e:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
 5b2ff0a5023:	c4 c1 48 59 f5                                  	vmulps xmm6,xmm6,xmm13
 5b2ff0a5028:	c4 c1 48 58 f6                                  	vaddps xmm6,xmm6,xmm14
 5b2ff0a502d:	4c 8b 15 b5 81 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff81b5]        # 0x5b2ff09d1e9
 5b2ff0a5034:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
 5b2ff0a5039:	c4 41 48 54 cf                                  	vandps xmm9,xmm6,xmm15
 5b2ff0a503e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
 5b2ff0a5044:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
 5b2ff0a5049:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
 5b2ff0a504e:	4c 8b 15 90 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc890]        # 0x5b2ff0a18e5
 5b2ff0a5055:	c4 c1 48 54 32                                  	vandps xmm6,xmm6,XMMWORD PTR [r10]
 5b2ff0a505a:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
 5b2ff0a505f:	c4 41 49 df fc                                  	vpandn xmm15,xmm6,xmm12
 5b2ff0a5064:	c5 b1 db f6                                     	vpand  xmm6,xmm9,xmm6
 5b2ff0a5068:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0a506d:	c4 c1 7a 7f 74 34 70                            	vmovdqu XMMWORD PTR [r12+rsi*1+0x70],xmm6
 5b2ff0a5074:	c4 41 7a 7f 44 34 50                            	vmovdqu XMMWORD PTR [r12+rsi*1+0x50],xmm8
 5b2ff0a507b:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
 5b2ff0a5083:	c4 c1 7a 7f bc 34 f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1f0],xmm7
 5b2ff0a508d:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
 5b2ff0a5095:	c4 c1 7a 7f b4 34 e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1e0],xmm6
 5b2ff0a509f:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
 5b2ff0a50a7:	c4 41 7a 7f a4 34 d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1d0],xmm12
 5b2ff0a50b1:	43 8b 5c 04 34                                  	mov    ebx,DWORD PTR [r12+r8*1+0x34]
 5b2ff0a50b6:	47 8b 5c 04 30                                  	mov    r11d,DWORD PTR [r12+r8*1+0x30]
 5b2ff0a50bb:	43 8b 7c 04 2c                                  	mov    edi,DWORD PTR [r12+r8*1+0x2c]
 5b2ff0a50c0:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
 5b2ff0a50c7:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
 5b2ff0a50ce:	4c 89 9d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r11
 5b2ff0a50d5:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a50d8:	e9 37 00 00 00                                  	jmp    0x5b2ff0a5114
 5b2ff0a50dd:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a50e6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a50ef:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0a50f8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
 5b2ff0a5100:	41 8b f0                                        	mov    esi,r8d
 5b2ff0a5103:	45 8b c3                                        	mov    r8d,r11d
 5b2ff0a5106:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
 5b2ff0a510d:	44 8b 8d b8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x248]
 5b2ff0a5114:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0a5119:	0f 85 f5 18 00 00                               	jne    0x5b2ff0a6a14
 5b2ff0a511f:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a5122:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
 5b2ff0a5128:	d3 eb                                           	shr    ebx,cl
 5b2ff0a512a:	f6 c3 01                                        	test   bl,0x1
 5b2ff0a512d:	0f 85 11 00 00 00                               	jne    0x5b2ff0a5144
 5b2ff0a5133:	41 8b d8                                        	mov    ebx,r8d
 5b2ff0a5136:	44 8b c6                                        	mov    r8d,esi
 5b2ff0a5139:	8b 95 80 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x180]
 5b2ff0a513f:	e9 45 03 00 00                                  	jmp    0x5b2ff0a5489
 5b2ff0a5144:	42 8d 9c 86 90 01 00 00                         	lea    ebx,[rsi+r8*4+0x190]
 5b2ff0a514c:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
 5b2ff0a5150:	42 8d 8c 86 90 00 00 00                         	lea    ecx,[rsi+r8*4+0x90]
 5b2ff0a5158:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
 5b2ff0a515c:	8d 71 01                                        	lea    esi,[rcx+0x1]
 5b2ff0a515f:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
 5b2ff0a5166:	44 8d 43 01                                     	lea    r8d,[rbx+0x1]
 5b2ff0a516a:	85 ff                                           	test   edi,edi
 5b2ff0a516c:	0f 85 48 00 00 00                               	jne    0x5b2ff0a51ba
 5b2ff0a5172:	45 85 ff                                        	test   r15d,r15d
 5b2ff0a5175:	0f 84 50 19 00 00                               	je     0x5b2ff0a6acb
 5b2ff0a517b:	41 83 ff ff                                     	cmp    r15d,0xffffffff
 5b2ff0a517f:	0f 84 1f 19 00 00                               	je     0x5b2ff0a6aa4
 5b2ff0a5185:	8b c6                                           	mov    eax,esi
 5b2ff0a5187:	99                                              	cdq
 5b2ff0a5188:	41 f7 ff                                        	idiv   r15d
 5b2ff0a518b:	8b c2                                           	mov    eax,edx
 5b2ff0a518d:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff0a5190:	41 23 c7                                        	and    eax,r15d
 5b2ff0a5193:	03 c2                                           	add    eax,edx
 5b2ff0a5195:	41 83 ff ff                                     	cmp    r15d,0xffffffff
 5b2ff0a5199:	0f 84 0c 19 00 00                               	je     0x5b2ff0a6aab
 5b2ff0a519f:	44 8b d0                                        	mov    r10d,eax
 5b2ff0a51a2:	8b c1                                           	mov    eax,ecx
 5b2ff0a51a4:	41 8b ca                                        	mov    ecx,r10d
 5b2ff0a51a7:	99                                              	cdq
 5b2ff0a51a8:	41 f7 ff                                        	idiv   r15d
 5b2ff0a51ab:	8b c2                                           	mov    eax,edx
 5b2ff0a51ad:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff0a51b0:	41 23 c7                                        	and    eax,r15d
 5b2ff0a51b3:	03 c2                                           	add    eax,edx
 5b2ff0a51b5:	e9 08 00 00 00                                  	jmp    0x5b2ff0a51c2
 5b2ff0a51ba:	23 f7                                           	and    esi,edi
 5b2ff0a51bc:	23 cf                                           	and    ecx,edi
 5b2ff0a51be:	8b c1                                           	mov    eax,ecx
 5b2ff0a51c0:	8b ce                                           	mov    ecx,esi
 5b2ff0a51c2:	45 85 db                                        	test   r11d,r11d
 5b2ff0a51c5:	0f 85 51 00 00 00                               	jne    0x5b2ff0a521c
 5b2ff0a51cb:	45 85 c9                                        	test   r9d,r9d
 5b2ff0a51ce:	0f 84 f2 18 00 00                               	je     0x5b2ff0a6ac6
 5b2ff0a51d4:	41 83 f9 ff                                     	cmp    r9d,0xffffffff
 5b2ff0a51d8:	0f 84 d6 18 00 00                               	je     0x5b2ff0a6ab4
 5b2ff0a51de:	8b f0                                           	mov    esi,eax
 5b2ff0a51e0:	41 8b c0                                        	mov    eax,r8d
 5b2ff0a51e3:	99                                              	cdq
 5b2ff0a51e4:	41 f7 f9                                        	idiv   r9d
 5b2ff0a51e7:	8b c2                                           	mov    eax,edx
 5b2ff0a51e9:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff0a51ec:	41 23 c1                                        	and    eax,r9d
 5b2ff0a51ef:	03 c2                                           	add    eax,edx
 5b2ff0a51f1:	41 83 f9 ff                                     	cmp    r9d,0xffffffff
 5b2ff0a51f5:	0f 84 c2 18 00 00                               	je     0x5b2ff0a6abd
 5b2ff0a51fb:	44 8b d0                                        	mov    r10d,eax
 5b2ff0a51fe:	8b c3                                           	mov    eax,ebx
 5b2ff0a5200:	41 8b da                                        	mov    ebx,r10d
 5b2ff0a5203:	99                                              	cdq
 5b2ff0a5204:	41 f7 f9                                        	idiv   r9d
 5b2ff0a5207:	8b c2                                           	mov    eax,edx
 5b2ff0a5209:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff0a520c:	44 23 c8                                        	and    r9d,eax
 5b2ff0a520f:	42 8d 04 0a                                     	lea    eax,[rdx+r9*1]
 5b2ff0a5213:	8b d0                                           	mov    edx,eax
 5b2ff0a5215:	8b c3                                           	mov    eax,ebx
 5b2ff0a5217:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a5229
 5b2ff0a521c:	45 23 c3                                        	and    r8d,r11d
 5b2ff0a521f:	41 8b d3                                        	mov    edx,r11d
 5b2ff0a5222:	23 d3                                           	and    edx,ebx
 5b2ff0a5224:	8b f0                                           	mov    esi,eax
 5b2ff0a5226:	41 8b c0                                        	mov    eax,r8d
 5b2ff0a5229:	44 8b c9                                        	mov    r9d,ecx
 5b2ff0a522c:	8b 8d d0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x230]
 5b2ff0a5232:	8b da                                           	mov    ebx,edx
 5b2ff0a5234:	d3 e3                                           	shl    ebx,cl
 5b2ff0a5236:	41 0f af d7                                     	imul   edx,r15d
 5b2ff0a523a:	85 ff                                           	test   edi,edi
 5b2ff0a523c:	0f 45 d3                                        	cmovne edx,ebx
 5b2ff0a523f:	8d 1c 32                                        	lea    ebx,[rdx+rsi*1]
 5b2ff0a5242:	8b 8d 80 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x180]
 5b2ff0a5248:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
 5b2ff0a524b:	c4 c1 7a 10 34 1c                               	vmovss xmm6,DWORD PTR [r12+rbx*1]
 5b2ff0a5251:	c4 e2 79 30 f6                                  	vpmovzxbw xmm6,xmm6
 5b2ff0a5256:	41 8d 1c 11                                     	lea    ebx,[r9+rdx*1]
 5b2ff0a525a:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
 5b2ff0a525d:	c4 c1 7a 10 3c 1c                               	vmovss xmm7,DWORD PTR [r12+rbx*1]
 5b2ff0a5263:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
 5b2ff0a5268:	c5 c9 61 f7                                     	vpunpcklwd xmm6,xmm6,xmm7
 5b2ff0a526c:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
 5b2ff0a5272:	8b 95 c8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x238]
 5b2ff0a5278:	44 8d 84 9a 00 fe ff ff                         	lea    r8d,[rdx+rbx*4-0x200]
 5b2ff0a5280:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
 5b2ff0a5284:	ba 00 01 00 00                                  	mov    edx,0x100
 5b2ff0a5289:	45 8b d8                                        	mov    r11d,r8d
 5b2ff0a528c:	41 81 f8 00 01 00 00                            	cmp    r8d,0x100
 5b2ff0a5293:	44 0f 4d da                                     	cmovge r11d,edx
 5b2ff0a5297:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0a529a:	45 85 db                                        	test   r11d,r11d
 5b2ff0a529d:	45 0f 4f c3                                     	cmovg  r8d,r11d
 5b2ff0a52a1:	45 69 c0 ff ff 00 00                            	imul   r8d,r8d,0xffff
 5b2ff0a52a8:	41 81 c0 00 01 00 00                            	add    r8d,0x100
 5b2ff0a52af:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
 5b2ff0a52b4:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0a52b9:	c5 c9 f5 f7                                     	vpmaddwd xmm6,xmm6,xmm7
 5b2ff0a52bd:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
 5b2ff0a52c1:	45 8d 5c 98 70                                  	lea    r11d,[r8+rbx*4+0x70]
 5b2ff0a52c6:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a52ca:	45 8b c3                                        	mov    r8d,r11d
 5b2ff0a52cd:	41 81 fb 00 01 00 00                            	cmp    r11d,0x100
 5b2ff0a52d4:	44 0f 4d c2                                     	cmovge r8d,edx
 5b2ff0a52d8:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a52db:	45 85 c0                                        	test   r8d,r8d
 5b2ff0a52de:	45 0f 4f d8                                     	cmovg  r11d,r8d
 5b2ff0a52e2:	41 2b d3                                        	sub    edx,r11d
 5b2ff0a52e5:	c5 79 6e c2                                     	vmovd  xmm8,edx
 5b2ff0a52e9:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0a52ee:	c4 c2 49 40 f0                                  	vpmulld xmm6,xmm6,xmm8
 5b2ff0a52f3:	8b d1                                           	mov    edx,ecx
 5b2ff0a52f5:	8b 8d d0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x230]
 5b2ff0a52fb:	44 8b c0                                        	mov    r8d,eax
 5b2ff0a52fe:	41 d3 e0                                        	shl    r8d,cl
 5b2ff0a5301:	41 0f af c7                                     	imul   eax,r15d
 5b2ff0a5305:	85 ff                                           	test   edi,edi
 5b2ff0a5307:	41 0f 45 c0                                     	cmovne eax,r8d
 5b2ff0a530b:	44 8d 04 06                                     	lea    r8d,[rsi+rax*1]
 5b2ff0a530f:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
 5b2ff0a5313:	c4 01 7a 10 04 04                               	vmovss xmm8,DWORD PTR [r12+r8*1]
 5b2ff0a5319:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
 5b2ff0a531e:	46 8d 04 08                                     	lea    r8d,[rax+r9*1]
 5b2ff0a5322:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
 5b2ff0a5326:	c4 01 7a 10 0c 04                               	vmovss xmm9,DWORD PTR [r12+r8*1]
 5b2ff0a532c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
 5b2ff0a5331:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
 5b2ff0a5336:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
 5b2ff0a533a:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
 5b2ff0a533f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0a5344:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
 5b2ff0a5349:	c5 c9 fe f7                                     	vpaddd xmm6,xmm6,xmm7
 5b2ff0a534d:	4c 8b 15 42 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe342]        # 0x5b2ff0a3696
 5b2ff0a5354:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a5359:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a535d:	c5 c9 fe f7                                     	vpaddd xmm6,xmm6,xmm7
 5b2ff0a5361:	c5 c9 72 e6 10                                  	vpsrad xmm6,xmm6,0x10
 5b2ff0a5366:	c4 e2 49 2b f6                                  	vpackusdw xmm6,xmm6,xmm6
 5b2ff0a536b:	c5 c9 67 f6                                     	vpackuswb xmm6,xmm6,xmm6
 5b2ff0a536f:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
 5b2ff0a5374:	45 8b d8                                        	mov    r11d,r8d
 5b2ff0a5377:	41 c1 eb 18                                     	shr    r11d,0x18
 5b2ff0a537b:	41 8b c0                                        	mov    eax,r8d
 5b2ff0a537e:	c1 e8 10                                        	shr    eax,0x10
 5b2ff0a5381:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a5384:	c1 e9 08                                        	shr    ecx,0x8
 5b2ff0a5387:	45 0f b6 c0                                     	movzx  r8d,r8b
 5b2ff0a538b:	45 8b d0                                        	mov    r10d,r8d
 5b2ff0a538e:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff0a5393:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
 5b2ff0a5399:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
 5b2ff0a539e:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0a53a2:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
 5b2ff0a53a6:	41 8d 74 98 50                                  	lea    esi,[r8+rbx*4+0x50]
 5b2ff0a53ab:	83 bd a0 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x160],0x2
 5b2ff0a53b2:	0f 84 77 00 00 00                               	je     0x5b2ff0a542f
 5b2ff0a53b8:	c4 c1 4a 59 34 34                               	vmulss xmm6,xmm6,DWORD PTR [r12+rsi*1]
 5b2ff0a53be:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
 5b2ff0a53c4:	41 8d b4 98 f0 01 00 00                         	lea    esi,[r8+rbx*4+0x1f0]
 5b2ff0a53cc:	0f b6 c9                                        	movzx  ecx,cl
 5b2ff0a53cf:	44 8b d1                                        	mov    r10d,ecx
 5b2ff0a53d2:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff0a53d7:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0a53db:	c4 c1 4a 59 34 34                               	vmulss xmm6,xmm6,DWORD PTR [r12+rsi*1]
 5b2ff0a53e1:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
 5b2ff0a53e7:	41 8d 8c 98 e0 01 00 00                         	lea    ecx,[r8+rbx*4+0x1e0]
 5b2ff0a53ef:	0f b6 c0                                        	movzx  eax,al
 5b2ff0a53f2:	44 8b d0                                        	mov    r10d,eax
 5b2ff0a53f5:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff0a53fa:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0a53fe:	c4 c1 4a 59 34 0c                               	vmulss xmm6,xmm6,DWORD PTR [r12+rcx*1]
 5b2ff0a5404:	c4 c1 7a 11 34 0c                               	vmovss DWORD PTR [r12+rcx*1],xmm6
 5b2ff0a540a:	41 8d 84 98 d0 01 00 00                         	lea    eax,[r8+rbx*4+0x1d0]
 5b2ff0a5412:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a5415:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff0a541a:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0a541e:	c4 c1 4a 59 34 04                               	vmulss xmm6,xmm6,DWORD PTR [r12+rax*1]
 5b2ff0a5424:	c4 c1 7a 11 34 04                               	vmovss DWORD PTR [r12+rax*1],xmm6
 5b2ff0a542a:	e9 5a 00 00 00                                  	jmp    0x5b2ff0a5489
 5b2ff0a542f:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
 5b2ff0a5435:	41 8d b4 98 d0 01 00 00                         	lea    esi,[r8+rbx*4+0x1d0]
 5b2ff0a543d:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0a5440:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff0a5445:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0a5449:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
 5b2ff0a544f:	45 8d 9c 98 e0 01 00 00                         	lea    r11d,[r8+rbx*4+0x1e0]
 5b2ff0a5457:	0f b6 c0                                        	movzx  eax,al
 5b2ff0a545a:	44 8b d0                                        	mov    r10d,eax
 5b2ff0a545d:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff0a5462:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0a5466:	c4 81 7a 11 34 1c                               	vmovss DWORD PTR [r12+r11*1],xmm6
 5b2ff0a546c:	45 8d 9c 98 f0 01 00 00                         	lea    r11d,[r8+rbx*4+0x1f0]
 5b2ff0a5474:	0f b6 c1                                        	movzx  eax,cl
 5b2ff0a5477:	44 8b d0                                        	mov    r10d,eax
 5b2ff0a547a:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff0a547f:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0a5483:	c4 81 7a 11 34 1c                               	vmovss DWORD PTR [r12+r11*1],xmm6
 5b2ff0a5489:	44 8d 5b 01                                     	lea    r11d,[rbx+0x1]
 5b2ff0a548d:	41 83 fb 04                                     	cmp    r11d,0x4
 5b2ff0a5491:	0f 85 69 fc ff ff                               	jne    0x5b2ff0a5100
 5b2ff0a5497:	c4 01 7a 6f a4 04 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+r8*1+0x1d0]
 5b2ff0a54a1:	c4 81 7a 6f bc 04 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+r8*1+0x1f0]
 5b2ff0a54ab:	c4 01 7a 6f 44 04 50                            	vmovdqu xmm8,XMMWORD PTR [r12+r8*1+0x50]
 5b2ff0a54b2:	c4 81 7a 6f b4 04 e0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+r8*1+0x1e0]
 5b2ff0a54bc:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
 5b2ff0a54c3:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
 5b2ff0a54c9:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a54d1:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
 5b2ff0a54d9:	48 8b 55 c8                                     	mov    rdx,QWORD PTR [rbp-0x38]
 5b2ff0a54dd:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
 5b2ff0a54e4:	c5 78 10 95 10 ff ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0xf0]
 5b2ff0a54ec:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a54f0:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
 5b2ff0a54f7:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
 5b2ff0a54fe:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a5505:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a550c:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
 5b2ff0a5514:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
 5b2ff0a551c:	4c 8b fa                                        	mov    r15,rdx
 5b2ff0a551f:	43 8b 94 3c ec 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0xec]
 5b2ff0a5527:	c5 78 11 a5 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm12
 5b2ff0a552f:	43 83 bc 3c ec 00 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0xec],0x0
 5b2ff0a5538:	0f 84 02 04 00 00                               	je     0x5b2ff0a5940
 5b2ff0a553e:	49 8d 94 24 98 00 00 00                         	lea    rdx,[r12+0x98]
 5b2ff0a5546:	c4 e2 79 18 14 3a                               	vbroadcastss xmm2,DWORD PTR [rdx+rdi*1]
 5b2ff0a554c:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
 5b2ff0a5550:	c4 a2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+r11*1]
 5b2ff0a5556:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
 5b2ff0a555a:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
 5b2ff0a555e:	c4 e2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+rbx*1]
 5b2ff0a5564:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
 5b2ff0a5568:	c4 41 70 58 db                                  	vaddps xmm11,xmm1,xmm11
 5b2ff0a556d:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff0a5572:	c5 28 5c d8                                     	vsubps xmm11,xmm10,xmm0
 5b2ff0a5576:	c5 a0 c2 c8 01                                  	vcmpltps xmm1,xmm11,xmm0
 5b2ff0a557b:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
 5b2ff0a5580:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
 5b2ff0a5584:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a5589:	4c 8b 15 7d 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947d]        # 0x5b2ff09ea0d
 5b2ff0a5590:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
 5b2ff0a5595:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
 5b2ff0a559a:	43 8b 94 3c f0 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0xf0]
 5b2ff0a55a2:	81 fa 00 08 00 00                               	cmp    edx,0x800
 5b2ff0a55a8:	0f 84 8f 01 00 00                               	je     0x5b2ff0a573d
 5b2ff0a55ae:	81 fa 01 26 00 00                               	cmp    edx,0x2601
 5b2ff0a55b4:	0f 84 23 01 00 00                               	je     0x5b2ff0a56dd
 5b2ff0a55ba:	c4 81 7a 10 8c 3c f4 00 00 00                   	vmovss xmm1,DWORD PTR [r12+r15*1+0xf4]
 5b2ff0a55c4:	c5 f8 28 d0                                     	vmovaps xmm2,xmm0
 5b2ff0a55c8:	c5 f2 59 d2                                     	vmulss xmm2,xmm1,xmm2
 5b2ff0a55cc:	4c 8b 15 53 7f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7f53]        # 0x5b2ff09d526
 5b2ff0a55d3:	c4 c1 68 57 2a                                  	vxorps xmm5,xmm2,XMMWORD PTR [r10]
 5b2ff0a55d8:	c5 ea 59 d5                                     	vmulss xmm2,xmm2,xmm5
 5b2ff0a55dc:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
 5b2ff0a55e4:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
 5b2ff0a55ec:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
 5b2ff0a55f4:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
 5b2ff0a55fc:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
 5b2ff0a5604:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
 5b2ff0a560c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a5610:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
 5b2ff0a5614:	e8 9f 7f f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a5619:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff0a561e:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
 5b2ff0a5626:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
 5b2ff0a562a:	c5 7b 10 85 a8 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x158]
 5b2ff0a5632:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
 5b2ff0a5636:	4c 8b 15 e9 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7ee9]        # 0x5b2ff09d526
 5b2ff0a563d:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
 5b2ff0a5642:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
 5b2ff0a5647:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
 5b2ff0a564f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a5653:	e8 60 7f f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a5658:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
 5b2ff0a5660:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
 5b2ff0a5666:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
 5b2ff0a566e:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
 5b2ff0a5673:	c5 7b 10 85 a8 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x158]
 5b2ff0a567b:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
 5b2ff0a567f:	4c 8b 15 a0 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7ea0]        # 0x5b2ff09d526
 5b2ff0a5686:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
 5b2ff0a568b:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
 5b2ff0a5690:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
 5b2ff0a5698:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a569c:	e8 17 7f f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a56a1:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
 5b2ff0a56a9:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
 5b2ff0a56af:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
 5b2ff0a56b7:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
 5b2ff0a56bc:	c5 fb 10 bd a8 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x158]
 5b2ff0a56c4:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
 5b2ff0a56c8:	4c 8b 15 57 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7e57]        # 0x5b2ff09d526
 5b2ff0a56cf:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
 5b2ff0a56d4:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0a56d8:	e9 38 01 00 00                                  	jmp    0x5b2ff0a5815
 5b2ff0a56dd:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a56e0:	4d 8b e7                                        	mov    r12,r15
 5b2ff0a56e3:	c4 a1 7a 10 8c 26 fc 00 00 00                   	vmovss xmm1,DWORD PTR [rsi+r12*1+0xfc]
 5b2ff0a56ed:	c4 a1 72 5c 94 26 f8 00 00 00                   	vsubss xmm2,xmm1,DWORD PTR [rsi+r12*1+0xf8]
 5b2ff0a56f7:	c5 f8 2e e2                                     	vucomiss xmm4,xmm2
 5b2ff0a56fb:	7a 06                                           	jp     0x5b2ff0a5703
 5b2ff0a56fd:	0f 84 2d 00 00 00                               	je     0x5b2ff0a5730
 5b2ff0a5703:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
 5b2ff0a5708:	c5 f0 5c c0                                     	vsubps xmm0,xmm1,xmm0
 5b2ff0a570c:	c5 f1 76 c9                                     	vpcmpeqd xmm1,xmm1,xmm1
 5b2ff0a5710:	c5 f1 72 f1 19                                  	vpslld xmm1,xmm1,0x19
 5b2ff0a5715:	c5 f1 72 d1 02                                  	vpsrld xmm1,xmm1,0x2
 5b2ff0a571a:	c5 f2 5e d2                                     	vdivss xmm2,xmm1,xmm2
 5b2ff0a571e:	c5 f8 28 d2                                     	vmovaps xmm2,xmm2
 5b2ff0a5722:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
 5b2ff0a5727:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
 5b2ff0a572b:	e9 94 01 00 00                                  	jmp    0x5b2ff0a58c4
 5b2ff0a5730:	c5 f8 10 85 d0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x130]
 5b2ff0a5738:	e9 87 01 00 00                                  	jmp    0x5b2ff0a58c4
 5b2ff0a573d:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
 5b2ff0a5741:	c4 81 7a 10 94 3c f4 00 00 00                   	vmovss xmm2,DWORD PTR [r12+r15*1+0xf4]
 5b2ff0a574b:	4c 8b 15 d4 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7dd4]        # 0x5b2ff09d526
 5b2ff0a5752:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
 5b2ff0a5757:	c5 f2 59 ca                                     	vmulss xmm1,xmm1,xmm2
 5b2ff0a575b:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
 5b2ff0a5763:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
 5b2ff0a576b:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
 5b2ff0a5773:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
 5b2ff0a577b:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
 5b2ff0a5783:	c5 fb 11 95 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm2
 5b2ff0a578b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a578f:	e8 24 7e f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a5794:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff0a5799:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
 5b2ff0a57a1:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
 5b2ff0a57a5:	c5 c2 59 8d a8 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x158]
 5b2ff0a57ad:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
 5b2ff0a57b5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a57b9:	e8 fa 7d f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a57be:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
 5b2ff0a57c6:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
 5b2ff0a57cc:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
 5b2ff0a57d4:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
 5b2ff0a57d9:	c5 c2 59 8d a8 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x158]
 5b2ff0a57e1:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
 5b2ff0a57e9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a57ed:	e8 c6 7d f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a57f2:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
 5b2ff0a57fa:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
 5b2ff0a5800:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
 5b2ff0a5808:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
 5b2ff0a580d:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
 5b2ff0a5815:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
 5b2ff0a581d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a5821:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0a5825:	e8 8e 7d f2 ff                                  	call   0x5b2fefcd5b8
 5b2ff0a582a:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
 5b2ff0a5832:	c4 e3 79 21 c1 30                               	vinsertps xmm0,xmm0,xmm1,0x30
 5b2ff0a5838:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
 5b2ff0a583f:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
 5b2ff0a5843:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
 5b2ff0a5847:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
 5b2ff0a584f:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
 5b2ff0a5856:	c5 78 10 95 10 ff ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0xf0]
 5b2ff0a585e:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
 5b2ff0a5866:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
 5b2ff0a586e:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
 5b2ff0a5876:	c5 78 10 9d c0 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x140]
 5b2ff0a587e:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a5882:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
 5b2ff0a5889:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
 5b2ff0a5890:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a5897:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a589e:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
 5b2ff0a58a6:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
 5b2ff0a58ae:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
 5b2ff0a58b6:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a58be:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
 5b2ff0a58c4:	c5 f8 10 8d d0 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x130]
 5b2ff0a58cc:	c5 f0 c2 d0 01                                  	vcmpltps xmm2,xmm1,xmm0
 5b2ff0a58d1:	c5 69 df f8                                     	vpandn xmm15,xmm2,xmm0
 5b2ff0a58d5:	c5 a1 db c2                                     	vpand  xmm0,xmm11,xmm2
 5b2ff0a58d9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a58de:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
 5b2ff0a58e4:	c5 a0 55 c0                                     	vandnps xmm0,xmm11,xmm0
 5b2ff0a58e8:	c5 c8 59 f0                                     	vmulps xmm6,xmm6,xmm0
 5b2ff0a58ec:	4c 8d be 08 01 00 00                            	lea    r15,[rsi+0x108]
 5b2ff0a58f3:	c4 02 79 18 1c 27                               	vbroadcastss xmm11,DWORD PTR [r15+r12*1]
 5b2ff0a58f9:	c5 f0 5c c8                                     	vsubps xmm1,xmm1,xmm0
 5b2ff0a58fd:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
 5b2ff0a5901:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
 5b2ff0a5906:	c5 c0 59 f8                                     	vmulps xmm7,xmm7,xmm0
 5b2ff0a590a:	4c 8d be 04 01 00 00                            	lea    r15,[rsi+0x104]
 5b2ff0a5911:	c4 02 79 18 1c 27                               	vbroadcastss xmm11,DWORD PTR [r15+r12*1]
 5b2ff0a5917:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
 5b2ff0a591b:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
 5b2ff0a5920:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
 5b2ff0a5924:	4c 8d be 00 01 00 00                            	lea    r15,[rsi+0x100]
 5b2ff0a592b:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
 5b2ff0a5931:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
 5b2ff0a5935:	c4 41 78 58 c0                                  	vaddps xmm8,xmm0,xmm8
 5b2ff0a593a:	4d 8b fc                                        	mov    r15,r12
 5b2ff0a593d:	4c 8b e6                                        	mov    r12,rsi
 5b2ff0a5940:	43 8b 94 3c 80 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0x80]
 5b2ff0a5948:	43 83 bc 3c 80 00 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0x80],0x0
 5b2ff0a5951:	0f 85 0d 00 00 00                               	jne    0x5b2ff0a5964
 5b2ff0a5957:	c5 f8 10 85 f0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x110]
 5b2ff0a595f:	e9 84 00 00 00                                  	jmp    0x5b2ff0a59e8
 5b2ff0a5964:	49 8d 94 24 88 00 00 00                         	lea    rdx,[r12+0x88]
 5b2ff0a596c:	c4 a2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+r15*1]
 5b2ff0a5972:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0a5977:	43 8b 94 3c 84 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0x84]
 5b2ff0a597f:	81 ea 00 02 00 00                               	sub    edx,0x200
 5b2ff0a5985:	83 fa 07                                        	cmp    edx,0x7
 5b2ff0a5988:	0f 83 0b 00 00 00                               	jae    0x5b2ff0a5999
 5b2ff0a598e:	4c 8d 15 7b 11 00 00                            	lea    r10,[rip+0x117b]        # 0x5b2ff0a6b10
 5b2ff0a5995:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
 5b2ff0a5999:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
 5b2ff0a599e:	e9 39 00 00 00                                  	jmp    0x5b2ff0a59dc
 5b2ff0a59a3:	c4 41 78 c2 dc 02                               	vcmpleps xmm11,xmm0,xmm12
 5b2ff0a59a9:	e9 2e 00 00 00                                  	jmp    0x5b2ff0a59dc
 5b2ff0a59ae:	c5 18 c2 d8 04                                  	vcmpneqps xmm11,xmm12,xmm0
 5b2ff0a59b3:	e9 24 00 00 00                                  	jmp    0x5b2ff0a59dc
 5b2ff0a59b8:	c4 41 78 c2 dc 01                               	vcmpltps xmm11,xmm0,xmm12
 5b2ff0a59be:	e9 19 00 00 00                                  	jmp    0x5b2ff0a59dc
 5b2ff0a59c3:	c5 18 c2 d8 02                                  	vcmpleps xmm11,xmm12,xmm0
 5b2ff0a59c8:	e9 0f 00 00 00                                  	jmp    0x5b2ff0a59dc
 5b2ff0a59cd:	c5 18 c2 d8 00                                  	vcmpeqps xmm11,xmm12,xmm0
 5b2ff0a59d2:	e9 05 00 00 00                                  	jmp    0x5b2ff0a59dc
 5b2ff0a59d7:	c5 18 c2 d8 01                                  	vcmpltps xmm11,xmm12,xmm0
 5b2ff0a59dc:	c5 f8 10 85 f0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x110]
 5b2ff0a59e4:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
 5b2ff0a59e8:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
 5b2ff0a59ec:	85 d2                                           	test   edx,edx
 5b2ff0a59ee:	0f 85 42 00 00 00                               	jne    0x5b2ff0a5a36
 5b2ff0a59f4:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a59f7:	4c 8b e3                                        	mov    r12,rbx
 5b2ff0a59fa:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a59ff:	4d 8b d3                                        	mov    r10,r11
 5b2ff0a5a02:	4d 8b df                                        	mov    r11,r15
 5b2ff0a5a05:	4d 8b fa                                        	mov    r15,r10
 5b2ff0a5a08:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a5a0d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a5a13:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a5a19:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a5a21:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a5a29:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a5a31:	e9 02 0c 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a5a36:	43 8b 74 3c 58                                  	mov    esi,DWORD PTR [r12+r15*1+0x58]
 5b2ff0a5a3b:	43 83 7c 3c 58 00                               	cmp    DWORD PTR [r12+r15*1+0x58],0x0
 5b2ff0a5a41:	0f 85 18 00 00 00                               	jne    0x5b2ff0a5a5f
 5b2ff0a5a47:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
 5b2ff0a5a4e:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff0a5a54:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
 5b2ff0a5a5a:	e9 28 01 00 00                                  	jmp    0x5b2ff0a5b87
 5b2ff0a5a5f:	43 8b 54 3c 48                                  	mov    edx,DWORD PTR [r12+r15*1+0x48]
 5b2ff0a5a64:	8b 75 90                                        	mov    esi,DWORD PTR [rbp-0x70]
 5b2ff0a5a67:	33 ff                                           	xor    edi,edi
 5b2ff0a5a69:	3b f2                                           	cmp    esi,edx
 5b2ff0a5a6b:	40 0f 9c c7                                     	setl   dil
 5b2ff0a5a6f:	47 8b 44 3c 50                                  	mov    r8d,DWORD PTR [r12+r15*1+0x50]
 5b2ff0a5a74:	44 03 c2                                        	add    r8d,edx
 5b2ff0a5a77:	45 33 db                                        	xor    r11d,r11d
 5b2ff0a5a7a:	44 3b c6                                        	cmp    r8d,esi
 5b2ff0a5a7d:	41 0f 9e c3                                     	setle  r11b
 5b2ff0a5a81:	44 0b df                                        	or     r11d,edi
 5b2ff0a5a84:	43 8b 7c 3c 4c                                  	mov    edi,DWORD PTR [r12+r15*1+0x4c]
 5b2ff0a5a89:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
 5b2ff0a5a8f:	33 db                                           	xor    ebx,ebx
 5b2ff0a5a91:	3b c7                                           	cmp    eax,edi
 5b2ff0a5a93:	0f 9c c3                                        	setl   bl
 5b2ff0a5a96:	41 8b cb                                        	mov    ecx,r11d
 5b2ff0a5a99:	0b cb                                           	or     ecx,ebx
 5b2ff0a5a9b:	83 f1 ff                                        	xor    ecx,0xffffffff
 5b2ff0a5a9e:	43 8b 74 3c 54                                  	mov    esi,DWORD PTR [r12+r15*1+0x54]
 5b2ff0a5aa3:	03 f7                                           	add    esi,edi
 5b2ff0a5aa5:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0a5aa8:	3b c6                                           	cmp    eax,esi
 5b2ff0a5aaa:	41 0f 9c c1                                     	setl   r9b
 5b2ff0a5aae:	41 23 c9                                        	and    ecx,r9d
 5b2ff0a5ab1:	f7 d9                                           	neg    ecx
 5b2ff0a5ab3:	c5 79 6e d9                                     	vmovd  xmm11,ecx
 5b2ff0a5ab7:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
 5b2ff0a5abc:	44 3b 85 58 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xa8]
 5b2ff0a5ac3:	41 0f 9e c0                                     	setle  r8b
 5b2ff0a5ac7:	45 0f b6 c0                                     	movzx  r8d,r8b
 5b2ff0a5acb:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff0a5ad1:	3b ca                                           	cmp    ecx,edx
 5b2ff0a5ad3:	0f 9c c2                                        	setl   dl
 5b2ff0a5ad6:	0f b6 d2                                        	movzx  edx,dl
 5b2ff0a5ad9:	41 0b d0                                        	or     edx,r8d
 5b2ff0a5adc:	0b da                                           	or     ebx,edx
 5b2ff0a5ade:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0a5ae1:	44 23 cb                                        	and    r9d,ebx
 5b2ff0a5ae4:	41 f7 d9                                        	neg    r9d
 5b2ff0a5ae7:	c4 43 21 22 d9 01                               	vpinsrd xmm11,xmm11,r9d,0x1
 5b2ff0a5aed:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
 5b2ff0a5af4:	33 db                                           	xor    ebx,ebx
 5b2ff0a5af6:	44 3b c6                                        	cmp    r8d,esi
 5b2ff0a5af9:	0f 9c c3                                        	setl   bl
 5b2ff0a5afc:	44 3b c7                                        	cmp    r8d,edi
 5b2ff0a5aff:	40 0f 9c c7                                     	setl   dil
 5b2ff0a5b03:	40 0f b6 ff                                     	movzx  edi,dil
 5b2ff0a5b07:	44 0b df                                        	or     r11d,edi
 5b2ff0a5b0a:	41 83 f3 ff                                     	xor    r11d,0xffffffff
 5b2ff0a5b0e:	44 23 db                                        	and    r11d,ebx
 5b2ff0a5b11:	41 f7 db                                        	neg    r11d
 5b2ff0a5b14:	c4 43 21 22 db 02                               	vpinsrd xmm11,xmm11,r11d,0x2
 5b2ff0a5b1a:	0b fa                                           	or     edi,edx
 5b2ff0a5b1c:	83 f7 ff                                        	xor    edi,0xffffffff
 5b2ff0a5b1f:	23 df                                           	and    ebx,edi
 5b2ff0a5b21:	f7 db                                           	neg    ebx
 5b2ff0a5b23:	c4 63 21 22 db 03                               	vpinsrd xmm11,xmm11,ebx,0x3
 5b2ff0a5b29:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
 5b2ff0a5b2d:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
 5b2ff0a5b31:	85 d2                                           	test   edx,edx
 5b2ff0a5b33:	0f 85 4e 00 00 00                               	jne    0x5b2ff0a5b87
 5b2ff0a5b39:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a5b3e:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a5b41:	4d 8b df                                        	mov    r11,r15
 5b2ff0a5b44:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a5b49:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a5b4f:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a5b55:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
 5b2ff0a5b5c:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
 5b2ff0a5b63:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a5b6a:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a5b72:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a5b7a:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a5b82:	e9 b1 0a 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a5b87:	83 bd 00 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x100],0x0
 5b2ff0a5b8e:	0f 84 c6 01 00 00                               	je     0x5b2ff0a5d5a
 5b2ff0a5b94:	83 bd 38 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xc8],0x0
 5b2ff0a5b9b:	0f 85 00 01 00 00                               	jne    0x5b2ff0a5ca1
 5b2ff0a5ba1:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0a5ba6:	43 8b 7c 3c 0c                                  	mov    edi,DWORD PTR [r12+r15*1+0xc]
 5b2ff0a5bab:	44 8b 9d 20 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xe0]
 5b2ff0a5bb2:	42 8d 1c 9f                                     	lea    ebx,[rdi+r11*4]
 5b2ff0a5bb6:	c4 c1 7b 10 0c 1c                               	vmovsd xmm1,QWORD PTR [r12+rbx*1]
 5b2ff0a5bbc:	44 3b 85 28 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xd8]
 5b2ff0a5bc3:	0f 8c 10 00 00 00                               	jl     0x5b2ff0a5bd9
 5b2ff0a5bc9:	c4 c1 79 28 d3                                  	vmovapd xmm2,xmm11
 5b2ff0a5bce:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
 5b2ff0a5bd4:	e9 0f 00 00 00                                  	jmp    0x5b2ff0a5be8
 5b2ff0a5bd9:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
 5b2ff0a5bdf:	8d 3c 9f                                        	lea    edi,[rdi+rbx*4]
 5b2ff0a5be2:	c4 c1 7b 10 14 3c                               	vmovsd xmm2,QWORD PTR [r12+rdi*1]
 5b2ff0a5be8:	c5 f1 6c ca                                     	vpunpcklqdq xmm1,xmm1,xmm2
 5b2ff0a5bec:	43 8b 7c 3c 6c                                  	mov    edi,DWORD PTR [r12+r15*1+0x6c]
 5b2ff0a5bf1:	81 ef 00 02 00 00                               	sub    edi,0x200
 5b2ff0a5bf7:	83 ff 07                                        	cmp    edi,0x7
 5b2ff0a5bfa:	0f 83 0b 00 00 00                               	jae    0x5b2ff0a5c0b
 5b2ff0a5c00:	4c 8d 15 d1 0e 00 00                            	lea    r10,[rip+0xed1]        # 0x5b2ff0a6ad8
 5b2ff0a5c07:	41 ff 24 fa                                     	jmp    QWORD PTR [r10+rdi*8]
 5b2ff0a5c0b:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
 5b2ff0a5c10:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5c18:	e9 74 00 00 00                                  	jmp    0x5b2ff0a5c91
 5b2ff0a5c1d:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5c25:	c5 70 c2 da 02                                  	vcmpleps xmm11,xmm1,xmm2
 5b2ff0a5c2a:	e9 62 00 00 00                                  	jmp    0x5b2ff0a5c91
 5b2ff0a5c2f:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5c37:	c5 68 c2 d9 04                                  	vcmpneqps xmm11,xmm2,xmm1
 5b2ff0a5c3c:	e9 50 00 00 00                                  	jmp    0x5b2ff0a5c91
 5b2ff0a5c41:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5c49:	c5 70 c2 da 01                                  	vcmpltps xmm11,xmm1,xmm2
 5b2ff0a5c4e:	e9 3e 00 00 00                                  	jmp    0x5b2ff0a5c91
 5b2ff0a5c53:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5c5b:	c5 68 c2 d9 02                                  	vcmpleps xmm11,xmm2,xmm1
 5b2ff0a5c60:	e9 2c 00 00 00                                  	jmp    0x5b2ff0a5c91
 5b2ff0a5c65:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5c6d:	c5 68 c2 d9 00                                  	vcmpeqps xmm11,xmm2,xmm1
 5b2ff0a5c72:	e9 1a 00 00 00                                  	jmp    0x5b2ff0a5c91
 5b2ff0a5c77:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5c7f:	c5 68 c2 d9 01                                  	vcmpltps xmm11,xmm2,xmm1
 5b2ff0a5c84:	e9 08 00 00 00                                  	jmp    0x5b2ff0a5c91
 5b2ff0a5c89:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5c91:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
 5b2ff0a5c95:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
 5b2ff0a5c99:	85 d2                                           	test   edx,edx
 5b2ff0a5c9b:	0f 84 98 fe ff ff                               	je     0x5b2ff0a5b39
 5b2ff0a5ca1:	43 8b 7c 3c 70                                  	mov    edi,DWORD PTR [r12+r15*1+0x70]
 5b2ff0a5ca6:	43 83 7c 3c 70 00                               	cmp    DWORD PTR [r12+r15*1+0x70],0x0
 5b2ff0a5cac:	0f 84 a8 00 00 00                               	je     0x5b2ff0a5d5a
 5b2ff0a5cb2:	f6 c2 01                                        	test   dl,0x1
 5b2ff0a5cb5:	0f 85 13 00 00 00                               	jne    0x5b2ff0a5cce
 5b2ff0a5cbb:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5cc3:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
 5b2ff0a5cc9:	e9 21 00 00 00                                  	jmp    0x5b2ff0a5cef
 5b2ff0a5cce:	47 8b 5c 3c 0c                                  	mov    r11d,DWORD PTR [r12+r15*1+0xc]
 5b2ff0a5cd3:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
 5b2ff0a5cd9:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
 5b2ff0a5cdd:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff0a5ce5:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
 5b2ff0a5ce9:	c4 01 7a 11 1c 1c                               	vmovss DWORD PTR [r12+r11*1],xmm11
 5b2ff0a5cef:	f6 c2 02                                        	test   dl,0x2
 5b2ff0a5cf2:	0f 84 14 00 00 00                               	je     0x5b2ff0a5d0c
 5b2ff0a5cf8:	47 8b 5c 3c 0c                                  	mov    r11d,DWORD PTR [r12+r15*1+0xc]
 5b2ff0a5cfd:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
 5b2ff0a5d01:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
 5b2ff0a5d05:	c4 01 7a 11 5c 1c 04                            	vmovss DWORD PTR [r12+r11*1+0x4],xmm11
 5b2ff0a5d0c:	f6 c2 04                                        	test   dl,0x4
 5b2ff0a5d0f:	0f 85 0c 00 00 00                               	jne    0x5b2ff0a5d21
 5b2ff0a5d15:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
 5b2ff0a5d1c:	e9 1b 00 00 00                                  	jmp    0x5b2ff0a5d3c
 5b2ff0a5d21:	43 8b 5c 3c 0c                                  	mov    ebx,DWORD PTR [r12+r15*1+0xc]
 5b2ff0a5d26:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
 5b2ff0a5d2d:	42 8d 1c 9b                                     	lea    ebx,[rbx+r11*4]
 5b2ff0a5d31:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
 5b2ff0a5d36:	c4 41 7a 11 1c 1c                               	vmovss DWORD PTR [r12+rbx*1],xmm11
 5b2ff0a5d3c:	f6 c2 08                                        	test   dl,0x8
 5b2ff0a5d3f:	0f 84 15 00 00 00                               	je     0x5b2ff0a5d5a
 5b2ff0a5d45:	43 8b 5c 3c 0c                                  	mov    ebx,DWORD PTR [r12+r15*1+0xc]
 5b2ff0a5d4a:	42 8d 1c 9b                                     	lea    ebx,[rbx+r11*4]
 5b2ff0a5d4e:	c5 79 70 d8 03                                  	vpshufd xmm11,xmm0,0x3
 5b2ff0a5d53:	c4 41 7a 11 5c 1c 04                            	vmovss DWORD PTR [r12+rbx*1+0x4],xmm11
 5b2ff0a5d5a:	43 8b 7c 3c 74                                  	mov    edi,DWORD PTR [r12+r15*1+0x74]
 5b2ff0a5d5f:	43 83 7c 3c 74 00                               	cmp    DWORD PTR [r12+r15*1+0x74],0x0
 5b2ff0a5d65:	0f 85 14 00 00 00                               	jne    0x5b2ff0a5d7f
 5b2ff0a5d6b:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
 5b2ff0a5d71:	c1 e7 02                                        	shl    edi,0x2
 5b2ff0a5d74:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
 5b2ff0a5d7a:	e9 dd 02 00 00                                  	jmp    0x5b2ff0a605c
 5b2ff0a5d7f:	43 8b 7c 3c 78                                  	mov    edi,DWORD PTR [r12+r15*1+0x78]
 5b2ff0a5d84:	44 8d 9f fe fc ff ff                            	lea    r11d,[rdi-0x302]
 5b2ff0a5d8b:	33 db                                           	xor    ebx,ebx
 5b2ff0a5d8d:	41 83 fb 04                                     	cmp    r11d,0x4
 5b2ff0a5d91:	0f 93 c3                                        	setae  bl
 5b2ff0a5d94:	33 f6                                           	xor    esi,esi
 5b2ff0a5d96:	83 ff 01                                        	cmp    edi,0x1
 5b2ff0a5d99:	40 0f 97 c6                                     	seta   sil
 5b2ff0a5d9d:	85 f3                                           	test   ebx,esi
 5b2ff0a5d9f:	0f 85 dc 05 00 00                               	jne    0x5b2ff0a6381
 5b2ff0a5da5:	43 8b 5c 3c 7c                                  	mov    ebx,DWORD PTR [r12+r15*1+0x7c]
 5b2ff0a5daa:	8d b3 fe fc ff ff                               	lea    esi,[rbx-0x302]
 5b2ff0a5db0:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0a5db3:	83 fe 04                                        	cmp    esi,0x4
 5b2ff0a5db6:	41 0f 93 c1                                     	setae  r9b
 5b2ff0a5dba:	33 c0                                           	xor    eax,eax
 5b2ff0a5dbc:	83 fb 01                                        	cmp    ebx,0x1
 5b2ff0a5dbf:	0f 97 c0                                        	seta   al
 5b2ff0a5dc2:	41 85 c1                                        	test   r9d,eax
 5b2ff0a5dc5:	0f 85 b0 05 00 00                               	jne    0x5b2ff0a637b
 5b2ff0a5dcb:	8b 85 20 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe0]
 5b2ff0a5dd1:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
 5b2ff0a5dd8:	47 8b 4c 3c 08                                  	mov    r9d,DWORD PTR [r12+r15*1+0x8]
 5b2ff0a5ddd:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
 5b2ff0a5de1:	c4 c1 7b 10 04 04                               	vmovsd xmm0,QWORD PTR [r12+rax*1]
 5b2ff0a5de7:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
 5b2ff0a5ded:	41 3b c0                                        	cmp    eax,r8d
 5b2ff0a5df0:	0f 8e 22 00 00 00                               	jle    0x5b2ff0a5e18
 5b2ff0a5df6:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
 5b2ff0a5dfd:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0a5e03:	45 8d 0c 91                                     	lea    r9d,[r9+rdx*4]
 5b2ff0a5e07:	c4 01 7b 10 1c 0c                               	vmovsd xmm11,QWORD PTR [r12+r9*1]
 5b2ff0a5e0d:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
 5b2ff0a5e13:	e9 05 00 00 00                                  	jmp    0x5b2ff0a5e1d
 5b2ff0a5e18:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0a5e1d:	c4 c1 79 6c c3                                  	vpunpcklqdq xmm0,xmm0,xmm11
 5b2ff0a5e22:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
 5b2ff0a5e2c:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
 5b2ff0a5e31:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
 5b2ff0a5e3b:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
 5b2ff0a5e41:	c4 42 79 00 db                                  	vpshufb xmm11,xmm0,xmm11
 5b2ff0a5e46:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
 5b2ff0a5e4b:	4c 8b 15 b1 c2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc2b1]        # 0x5b2ff0a2103
 5b2ff0a5e52:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
 5b2ff0a5e57:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
 5b2ff0a5e5b:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
 5b2ff0a5e5f:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
 5b2ff0a5e69:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff0a5e6e:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
 5b2ff0a5e78:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
 5b2ff0a5e7e:	c4 e2 79 00 d2                                  	vpshufb xmm2,xmm0,xmm2
 5b2ff0a5e83:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff0a5e87:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
 5b2ff0a5e91:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0a5e96:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
 5b2ff0a5ea0:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
 5b2ff0a5ea6:	c4 e2 79 00 ed                                  	vpshufb xmm5,xmm0,xmm5
 5b2ff0a5eab:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
 5b2ff0a5eaf:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
 5b2ff0a5eb9:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a5ebe:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
 5b2ff0a5ec8:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
 5b2ff0a5ece:	c4 c2 79 00 c1                                  	vpshufb xmm0,xmm0,xmm9
 5b2ff0a5ed3:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0a5ed7:	41 83 fb 02                                     	cmp    r11d,0x2
 5b2ff0a5edb:	0f 8c 15 00 00 00                               	jl     0x5b2ff0a5ef6
 5b2ff0a5ee1:	0f 84 6b 00 00 00                               	je     0x5b2ff0a5f52
 5b2ff0a5ee7:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff0a5eeb:	0f 84 46 00 00 00                               	je     0x5b2ff0a5f37
 5b2ff0a5ef1:	e9 19 00 00 00                                  	jmp    0x5b2ff0a5f0f
 5b2ff0a5ef6:	41 83 fb 00                                     	cmp    r11d,0x0
 5b2ff0a5efa:	0f 84 77 00 00 00                               	je     0x5b2ff0a5f77
 5b2ff0a5f00:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0a5f04:	0f 84 52 00 00 00                               	je     0x5b2ff0a5f5c
 5b2ff0a5f0a:	e9 00 00 00 00                                  	jmp    0x5b2ff0a5f0f
 5b2ff0a5f0f:	85 ff                                           	test   edi,edi
 5b2ff0a5f11:	0f 85 0a 00 00 00                               	jne    0x5b2ff0a5f21
 5b2ff0a5f17:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a5f1c:	e9 5b 00 00 00                                  	jmp    0x5b2ff0a5f7c
 5b2ff0a5f21:	4c 8b 15 e5 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ae5]        # 0x5b2ff09ea0d
 5b2ff0a5f28:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a5f2d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a5f32:	e9 45 00 00 00                                  	jmp    0x5b2ff0a5f7c
 5b2ff0a5f37:	4c 8b 15 cf 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8acf]        # 0x5b2ff09ea0d
 5b2ff0a5f3e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a5f43:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a5f48:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
 5b2ff0a5f4d:	e9 2a 00 00 00                                  	jmp    0x5b2ff0a5f7c
 5b2ff0a5f52:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
 5b2ff0a5f57:	e9 20 00 00 00                                  	jmp    0x5b2ff0a5f7c
 5b2ff0a5f5c:	4c 8b 15 aa 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8aaa]        # 0x5b2ff09ea0d
 5b2ff0a5f63:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a5f68:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a5f6d:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
 5b2ff0a5f72:	e9 05 00 00 00                                  	jmp    0x5b2ff0a5f7c
 5b2ff0a5f77:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
 5b2ff0a5f7c:	c5 e8 59 d1                                     	vmulps xmm2,xmm2,xmm1
 5b2ff0a5f80:	c5 d0 59 e9                                     	vmulps xmm5,xmm5,xmm1
 5b2ff0a5f84:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
 5b2ff0a5f88:	83 fe 02                                        	cmp    esi,0x2
 5b2ff0a5f8b:	0f 8c 14 00 00 00                               	jl     0x5b2ff0a5fa5
 5b2ff0a5f91:	0f 84 5e 00 00 00                               	je     0x5b2ff0a5ff5
 5b2ff0a5f97:	83 fe 03                                        	cmp    esi,0x3
 5b2ff0a5f9a:	0f 84 3a 00 00 00                               	je     0x5b2ff0a5fda
 5b2ff0a5fa0:	e9 17 00 00 00                                  	jmp    0x5b2ff0a5fbc
 5b2ff0a5fa5:	83 fe 00                                        	cmp    esi,0x0
 5b2ff0a5fa8:	0f 84 6c 00 00 00                               	je     0x5b2ff0a601a
 5b2ff0a5fae:	83 fe 01                                        	cmp    esi,0x1
 5b2ff0a5fb1:	0f 84 48 00 00 00                               	je     0x5b2ff0a5fff
 5b2ff0a5fb7:	e9 00 00 00 00                                  	jmp    0x5b2ff0a5fbc
 5b2ff0a5fbc:	85 db                                           	test   ebx,ebx
 5b2ff0a5fbe:	0f 84 5b 00 00 00                               	je     0x5b2ff0a601f
 5b2ff0a5fc4:	4c 8b 15 42 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a42]        # 0x5b2ff09ea0d
 5b2ff0a5fcb:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0a5fd0:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0a5fd5:	e9 45 00 00 00                                  	jmp    0x5b2ff0a601f
 5b2ff0a5fda:	4c 8b 15 2c 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a2c]        # 0x5b2ff09ea0d
 5b2ff0a5fe1:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0a5fe6:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0a5feb:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
 5b2ff0a5ff0:	e9 2a 00 00 00                                  	jmp    0x5b2ff0a601f
 5b2ff0a5ff5:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
 5b2ff0a5ffa:	e9 20 00 00 00                                  	jmp    0x5b2ff0a601f
 5b2ff0a5fff:	4c 8b 15 07 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a07]        # 0x5b2ff09ea0d
 5b2ff0a6006:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0a600b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0a6010:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
 5b2ff0a6015:	e9 05 00 00 00                                  	jmp    0x5b2ff0a601f
 5b2ff0a601a:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
 5b2ff0a601f:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
 5b2ff0a6024:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
 5b2ff0a6029:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
 5b2ff0a602e:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
 5b2ff0a6033:	c4 41 68 59 da                                  	vmulps xmm11,xmm2,xmm10
 5b2ff0a6038:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
 5b2ff0a603d:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
 5b2ff0a6042:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
 5b2ff0a6047:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
 5b2ff0a604c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
 5b2ff0a6051:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
 5b2ff0a6056:	c5 38 58 c0                                     	vaddps xmm8,xmm8,xmm0
 5b2ff0a605a:	8b f9                                           	mov    edi,ecx
 5b2ff0a605c:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
 5b2ff0a6060:	4c 8b 15 a6 89 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff89a6]        # 0x5b2ff09ea0d
 5b2ff0a6067:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0a606c:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0a6071:	4c 8b 15 95 89 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8995]        # 0x5b2ff09ea0d
 5b2ff0a6078:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0a607d:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0a6082:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
 5b2ff0a6088:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
 5b2ff0a608d:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
 5b2ff0a6092:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
 5b2ff0a6097:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0a609c:	c4 c1 38 c2 cb 01                               	vcmpltps xmm1,xmm8,xmm11
 5b2ff0a60a2:	c4 41 70 55 c0                                  	vandnps xmm8,xmm1,xmm8
 5b2ff0a60a7:	4c 8b 15 ae e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe0ae]        # 0x5b2ff0a415c
 5b2ff0a60ae:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
 5b2ff0a60b3:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
 5b2ff0a60b7:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
 5b2ff0a60bb:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
 5b2ff0a60c1:	4c 8b 15 21 71 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7121]        # 0x5b2ff09d1e9
 5b2ff0a60c8:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0a60ce:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
 5b2ff0a60d3:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0a60d9:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
 5b2ff0a60de:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
 5b2ff0a60e3:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
 5b2ff0a60e8:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
 5b2ff0a60ed:	c4 63 39 0e c0 fc                               	vpblendw xmm8,xmm8,xmm0,0xfc
 5b2ff0a60f3:	c5 a8 c2 d7 01                                  	vcmpltps xmm2,xmm10,xmm7
 5b2ff0a60f8:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
 5b2ff0a60fc:	c5 b1 db fa                                     	vpand  xmm7,xmm9,xmm2
 5b2ff0a6100:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0a6105:	c4 c1 40 c2 d3 01                               	vcmpltps xmm2,xmm7,xmm11
 5b2ff0a610b:	c5 e8 55 ff                                     	vandnps xmm7,xmm2,xmm7
 5b2ff0a610f:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
 5b2ff0a6113:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
 5b2ff0a6119:	4c 8b 15 c9 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff70c9]        # 0x5b2ff09d1e9
 5b2ff0a6120:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
 5b2ff0a6125:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
 5b2ff0a612a:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
 5b2ff0a6130:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
 5b2ff0a6134:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
 5b2ff0a6139:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
 5b2ff0a613d:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
 5b2ff0a6141:	c4 e3 41 0e f8 fc                               	vpblendw xmm7,xmm7,xmm0,0xfc
 5b2ff0a6147:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
 5b2ff0a614b:	c5 28 c2 c6 01                                  	vcmpltps xmm8,xmm10,xmm6
 5b2ff0a6150:	c5 39 df fe                                     	vpandn xmm15,xmm8,xmm6
 5b2ff0a6154:	c4 c1 31 db f0                                  	vpand  xmm6,xmm9,xmm8
 5b2ff0a6159:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0a615e:	c4 41 48 c2 c3 01                               	vcmpltps xmm8,xmm6,xmm11
 5b2ff0a6164:	c5 b8 55 f6                                     	vandnps xmm6,xmm8,xmm6
 5b2ff0a6168:	c5 c8 59 f1                                     	vmulps xmm6,xmm6,xmm1
 5b2ff0a616c:	c4 e3 79 08 f6 08                               	vroundps xmm6,xmm6,0x8
 5b2ff0a6172:	4c 8b 15 70 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7070]        # 0x5b2ff09d1e9
 5b2ff0a6179:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
 5b2ff0a617e:	c4 c1 48 54 f7                                  	vandps xmm6,xmm6,xmm15
 5b2ff0a6183:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
 5b2ff0a6189:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
 5b2ff0a618d:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
 5b2ff0a6192:	c5 c9 6b f6                                     	vpackssdw xmm6,xmm6,xmm6
 5b2ff0a6196:	c5 c9 67 f6                                     	vpackuswb xmm6,xmm6,xmm6
 5b2ff0a619a:	c4 e3 49 0e f0 fc                               	vpblendw xmm6,xmm6,xmm0,0xfc
 5b2ff0a61a0:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
 5b2ff0a61a6:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
 5b2ff0a61ab:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
 5b2ff0a61b0:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
 5b2ff0a61b5:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
 5b2ff0a61bb:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
 5b2ff0a61c0:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
 5b2ff0a61c4:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
 5b2ff0a61ca:	4c 8b 15 18 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7018]        # 0x5b2ff09d1e9
 5b2ff0a61d1:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0a61d7:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
 5b2ff0a61dc:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0a61e2:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
 5b2ff0a61e7:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
 5b2ff0a61ec:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
 5b2ff0a61f1:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
 5b2ff0a61f6:	c4 63 39 0e c0 fc                               	vpblendw xmm8,xmm8,xmm0,0xfc
 5b2ff0a61fc:	c4 c1 49 60 f0                                  	vpunpcklbw xmm6,xmm6,xmm8
 5b2ff0a6201:	c5 c1 61 f6                                     	vpunpcklwd xmm6,xmm7,xmm6
 5b2ff0a6205:	c4 81 7a 6f bc 3c 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+r15*1+0x520]
 5b2ff0a620f:	c5 c1 76 f8                                     	vpcmpeqd xmm7,xmm7,xmm0
 5b2ff0a6213:	c4 c3 79 16 fb 01                               	vpextrd r11d,xmm7,0x1
 5b2ff0a6219:	bb 00 ff 00 00                                  	mov    ebx,0xff00
 5b2ff0a621e:	33 f6                                           	xor    esi,esi
 5b2ff0a6220:	41 f6 c3 01                                     	test   r11b,0x1
 5b2ff0a6224:	0f 45 de                                        	cmovne ebx,esi
 5b2ff0a6227:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
 5b2ff0a622c:	b9 ff 00 00 00                                  	mov    ecx,0xff
 5b2ff0a6231:	41 f6 c3 01                                     	test   r11b,0x1
 5b2ff0a6235:	0f 45 ce                                        	cmovne ecx,esi
 5b2ff0a6238:	0b cb                                           	or     ecx,ebx
 5b2ff0a623a:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
 5b2ff0a6240:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
 5b2ff0a6245:	41 f6 c3 01                                     	test   r11b,0x1
 5b2ff0a6249:	0f 45 de                                        	cmovne ebx,esi
 5b2ff0a624c:	0b d9                                           	or     ebx,ecx
 5b2ff0a624e:	c4 c3 79 16 fb 03                               	vpextrd r11d,xmm7,0x3
 5b2ff0a6254:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
 5b2ff0a6259:	41 f6 c3 01                                     	test   r11b,0x1
 5b2ff0a625d:	0f 45 ce                                        	cmovne ecx,esi
 5b2ff0a6260:	0b cb                                           	or     ecx,ebx
 5b2ff0a6262:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
 5b2ff0a6266:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0a626b:	44 8b da                                        	mov    r11d,edx
 5b2ff0a626e:	41 83 e3 01                                     	and    r11d,0x1
 5b2ff0a6272:	41 f7 db                                        	neg    r11d
 5b2ff0a6275:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
 5b2ff0a627a:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0a627f:	44 8b da                                        	mov    r11d,edx
 5b2ff0a6282:	41 c1 e3 1e                                     	shl    r11d,0x1e
 5b2ff0a6286:	41 c1 fb 1f                                     	sar    r11d,0x1f
 5b2ff0a628a:	c4 43 39 22 c3 01                               	vpinsrd xmm8,xmm8,r11d,0x1
 5b2ff0a6290:	44 8b da                                        	mov    r11d,edx
 5b2ff0a6293:	41 c1 e3 1d                                     	shl    r11d,0x1d
 5b2ff0a6297:	41 c1 fb 1f                                     	sar    r11d,0x1f
 5b2ff0a629b:	c4 43 39 22 c3 02                               	vpinsrd xmm8,xmm8,r11d,0x2
 5b2ff0a62a1:	44 8b da                                        	mov    r11d,edx
 5b2ff0a62a4:	41 c1 e3 1c                                     	shl    r11d,0x1c
 5b2ff0a62a8:	41 c1 fb 1f                                     	sar    r11d,0x1f
 5b2ff0a62ac:	c4 43 39 22 c3 03                               	vpinsrd xmm8,xmm8,r11d,0x3
 5b2ff0a62b2:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
 5b2ff0a62b7:	47 8b 5c 3c 08                                  	mov    r11d,DWORD PTR [r12+r15*1+0x8]
 5b2ff0a62bc:	41 03 fb                                        	add    edi,r11d
 5b2ff0a62bf:	c4 41 7b 10 04 3c                               	vmovsd xmm8,QWORD PTR [r12+rdi*1]
 5b2ff0a62c5:	41 3b c0                                        	cmp    eax,r8d
 5b2ff0a62c8:	0f 8e 15 00 00 00                               	jle    0x5b2ff0a62e3
 5b2ff0a62ce:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
 5b2ff0a62d4:	45 8d 1c 9b                                     	lea    r11d,[r11+rbx*4]
 5b2ff0a62d8:	c4 81 7b 10 04 1c                               	vmovsd xmm0,QWORD PTR [r12+r11*1]
 5b2ff0a62de:	e9 06 00 00 00                                  	jmp    0x5b2ff0a62e9
 5b2ff0a62e3:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
 5b2ff0a62e9:	c5 b9 6c c0                                     	vpunpcklqdq xmm0,xmm8,xmm0
 5b2ff0a62ed:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
 5b2ff0a62f1:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
 5b2ff0a62f5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a62fa:	f6 c2 03                                        	test   dl,0x3
 5b2ff0a62fd:	0f 84 06 00 00 00                               	je     0x5b2ff0a6309
 5b2ff0a6303:	c4 c1 78 13 04 3c                               	vmovlps QWORD PTR [r12+rdi*1],xmm0
 5b2ff0a6309:	41 3b c0                                        	cmp    eax,r8d
 5b2ff0a630c:	0f 8e 27 f8 ff ff                               	jle    0x5b2ff0a5b39
 5b2ff0a6312:	f6 c2 0c                                        	test   dl,0xc
 5b2ff0a6315:	0f 84 1e f8 ff ff                               	je     0x5b2ff0a5b39
 5b2ff0a631b:	43 8b 7c 3c 08                                  	mov    edi,DWORD PTR [r12+r15*1+0x8]
 5b2ff0a6320:	8d 3c 9f                                        	lea    edi,[rdi+rbx*4]
 5b2ff0a6323:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
 5b2ff0a6327:	c4 c1 78 13 04 3c                               	vmovlps QWORD PTR [r12+rdi*1],xmm0
 5b2ff0a632d:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a6332:	49 8b f4                                        	mov    rsi,r12
 5b2ff0a6335:	4d 8b df                                        	mov    r11,r15
 5b2ff0a6338:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a633d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a6343:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a6349:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
 5b2ff0a6350:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
 5b2ff0a6357:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a635e:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a6366:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a636e:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a6376:	e9 bd 02 00 00                                  	jmp    0x5b2ff0a6638
 5b2ff0a637b:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
 5b2ff0a6381:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
 5b2ff0a6389:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
 5b2ff0a6391:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
 5b2ff0a6399:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
 5b2ff0a63a0:	f6 c2 01                                        	test   dl,0x1
 5b2ff0a63a3:	0f 84 a0 00 00 00                               	je     0x5b2ff0a6449
 5b2ff0a63a9:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff0a63b1:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
 5b2ff0a63b5:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
 5b2ff0a63ba:	c5 78 28 d7                                     	vmovaps xmm10,xmm7
 5b2ff0a63be:	c5 78 28 de                                     	vmovaps xmm11,xmm6
 5b2ff0a63c2:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
 5b2ff0a63c7:	8b f8                                           	mov    edi,eax
 5b2ff0a63c9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a63cd:	8b c8                                           	mov    ecx,eax
 5b2ff0a63cf:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a63d2:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
 5b2ff0a63d5:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
 5b2ff0a63da:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0a63df:	e8 7c 4e f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a63e4:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a63e8:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
 5b2ff0a63ec:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
 5b2ff0a63f2:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff0a63f8:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
 5b2ff0a63ff:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
 5b2ff0a6407:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
 5b2ff0a640f:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
 5b2ff0a6417:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
 5b2ff0a641f:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
 5b2ff0a6425:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a6429:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
 5b2ff0a6431:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
 5b2ff0a6439:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
 5b2ff0a6441:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a6449:	f6 c2 02                                        	test   dl,0x2
 5b2ff0a644c:	0f 84 9d 00 00 00                               	je     0x5b2ff0a64ef
 5b2ff0a6452:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff0a645a:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
 5b2ff0a645e:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
 5b2ff0a6463:	c5 7a 16 d7                                     	vmovshdup xmm10,xmm7
 5b2ff0a6467:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
 5b2ff0a646b:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
 5b2ff0a6470:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a6474:	8b d1                                           	mov    edx,ecx
 5b2ff0a6476:	8b c8                                           	mov    ecx,eax
 5b2ff0a6478:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a647b:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0a6480:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
 5b2ff0a6485:	e8 d6 4d f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a648a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a648e:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
 5b2ff0a6492:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
 5b2ff0a6498:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff0a649e:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
 5b2ff0a64a5:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
 5b2ff0a64ad:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
 5b2ff0a64b5:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
 5b2ff0a64bd:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
 5b2ff0a64c5:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
 5b2ff0a64cb:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a64cf:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
 5b2ff0a64d7:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
 5b2ff0a64df:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
 5b2ff0a64e7:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a64ef:	f6 c2 04                                        	test   dl,0x4
 5b2ff0a64f2:	0f 84 a4 00 00 00                               	je     0x5b2ff0a659c
 5b2ff0a64f8:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff0a6500:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
 5b2ff0a6505:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
 5b2ff0a650b:	c5 79 70 d7 02                                  	vpshufd xmm10,xmm7,0x2
 5b2ff0a6510:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
 5b2ff0a6515:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
 5b2ff0a651b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a651f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a6522:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
 5b2ff0a6525:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a6528:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0a652d:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
 5b2ff0a6532:	e8 29 4d f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a6537:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a653b:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
 5b2ff0a653f:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
 5b2ff0a6545:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
 5b2ff0a654b:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
 5b2ff0a6552:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
 5b2ff0a655a:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
 5b2ff0a6562:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
 5b2ff0a656a:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
 5b2ff0a6572:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
 5b2ff0a6578:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a657c:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
 5b2ff0a6584:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
 5b2ff0a658c:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
 5b2ff0a6594:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a659c:	f6 c2 08                                        	test   dl,0x8
 5b2ff0a659f:	0f 84 94 f5 ff ff                               	je     0x5b2ff0a5b39
 5b2ff0a65a5:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
 5b2ff0a65ad:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
 5b2ff0a65b2:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
 5b2ff0a65b8:	c5 f9 70 c7 03                                  	vpshufd xmm0,xmm7,0x3
 5b2ff0a65bd:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
 5b2ff0a65c2:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
 5b2ff0a65c8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a65cc:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a65cf:	8b d1                                           	mov    edx,ecx
 5b2ff0a65d1:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0a65d4:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
 5b2ff0a65d8:	c5 f9 28 d8                                     	vmovapd xmm3,xmm0
 5b2ff0a65dc:	e8 7f 4c f2 ff                                  	call   0x5b2fefcb260
 5b2ff0a65e1:	bb 01 00 00 00                                  	mov    ebx,0x1
 5b2ff0a65e6:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
 5b2ff0a65ea:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
 5b2ff0a65ee:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a65f3:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a65f9:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a65ff:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a6603:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
 5b2ff0a660a:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
 5b2ff0a6611:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
 5b2ff0a6618:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a6620:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a6628:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a6630:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a6638:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
 5b2ff0a663f:	48 c7 85 38 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xc8],0x1
 5b2ff0a664a:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff0a664e:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
 5b2ff0a6652:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
 5b2ff0a6659:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
 5b2ff0a6660:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
 5b2ff0a6668:	48 8b 85 68 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x98]
 5b2ff0a666f:	48 2b 85 60 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa0]
 5b2ff0a6676:	4c 2b 8d 70 ff ff ff                            	sub    r9,QWORD PTR [rbp-0x90]
 5b2ff0a667d:	4c 2b 5d 80                                     	sub    r11,QWORD PTR [rbp-0x80]
 5b2ff0a6681:	41 83 c0 02                                     	add    r8d,0x2
 5b2ff0a6685:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
 5b2ff0a6689:	0f 8c f1 7a ff ff                               	jl     0x5b2ff09e180
 5b2ff0a668f:	48 8b 7d a0                                     	mov    rdi,QWORD PTR [rbp-0x60]
 5b2ff0a6693:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
 5b2ff0a669a:	4e 8d 1c 07                                     	lea    r11,[rdi+r8*1]
 5b2ff0a669e:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
 5b2ff0a66a2:	4c 8b 4d a8                                     	mov    r9,QWORD PTR [rbp-0x58]
 5b2ff0a66a6:	4d 03 c8                                        	add    r9,r8
 5b2ff0a66a9:	4c 8b 65 b8                                     	mov    r12,QWORD PTR [rbp-0x48]
 5b2ff0a66ad:	4c 8b bd 40 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x3c0]
 5b2ff0a66b4:	4d 03 fc                                        	add    r15,r12
 5b2ff0a66b7:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
 5b2ff0a66bd:	83 c0 02                                        	add    eax,0x2
 5b2ff0a66c0:	3b 45 c0                                        	cmp    eax,DWORD PTR [rbp-0x40]
 5b2ff0a66c3:	0f 8c f7 79 ff ff                               	jl     0x5b2ff09e0c0
 5b2ff0a66c9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0a66cd:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
 5b2ff0a66d1:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
 5b2ff0a66d6:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
 5b2ff0a66dc:	0f 85 56 00 00 00                               	jne    0x5b2ff0a6738
 5b2ff0a66e2:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
 5b2ff0a66e8:	85 c0                                           	test   eax,eax
 5b2ff0a66ea:	0f 85 1d 00 00 00                               	jne    0x5b2ff0a670d
 5b2ff0a66f0:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a66f3:	81 c7 00 02 00 00                               	add    edi,0x200
 5b2ff0a66f9:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
 5b2ff0a66fd:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
 5b2ff0a6701:	b8 01 00 00 00                                  	mov    eax,0x1
 5b2ff0a6706:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6709:	5d                                              	pop    rbp
 5b2ff0a670a:	c2 10 00                                        	ret    0x10
 5b2ff0a670d:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
 5b2ff0a6713:	33 ff                                           	xor    edi,edi
 5b2ff0a6715:	85 db                                           	test   ebx,ebx
 5b2ff0a6717:	40 0f 94 c7                                     	sete   dil
 5b2ff0a671b:	8d 04 3f                                        	lea    eax,[rdi+rdi*1]
 5b2ff0a671e:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
 5b2ff0a6722:	41 81 c0 00 02 00 00                            	add    r8d,0x200
 5b2ff0a6729:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
 5b2ff0a672d:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
 5b2ff0a6731:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6734:	5d                                              	pop    rbp
 5b2ff0a6735:	c2 10 00                                        	ret    0x10
 5b2ff0a6738:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a673b:	81 c7 00 02 00 00                               	add    edi,0x200
 5b2ff0a6741:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
 5b2ff0a6745:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
 5b2ff0a6749:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
 5b2ff0a674e:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6751:	5d                                              	pop    rbp
 5b2ff0a6752:	c2 10 00                                        	ret    0x10
 5b2ff0a6755:	8b f8                                           	mov    edi,eax
 5b2ff0a6757:	45 8b 64 38 58                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x58]
 5b2ff0a675c:	41 bc 01 00 00 00                               	mov    r12d,0x1
 5b2ff0a6762:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
 5b2ff0a6767:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
 5b2ff0a676d:	44 0f 45 e0                                     	cmovne r12d,eax
 5b2ff0a6771:	41 8d bf 00 02 00 00                            	lea    edi,[r15+0x200]
 5b2ff0a6778:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
 5b2ff0a677c:	41 8b c4                                        	mov    eax,r12d
 5b2ff0a677f:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6782:	5d                                              	pop    rbp
 5b2ff0a6783:	c2 10 00                                        	ret    0x10
 5b2ff0a6786:	41 b8 10 00 00 00                               	mov    r8d,0x10
 5b2ff0a678c:	41 d1 f8                                        	sar    r8d,1
 5b2ff0a678f:	4d 63 c0                                        	movsxd r8,r8d
 5b2ff0a6792:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
 5b2ff0a6796:	c5 f8 11 85 80 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x280],xmm0
 5b2ff0a679e:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
 5b2ff0a67a5:	4c 89 4d c8                                     	mov    QWORD PTR [rbp-0x38],r9
 5b2ff0a67a9:	49 8b c0                                        	mov    rax,r8
 5b2ff0a67ac:	e8 7f 77 f2 ff                                  	call   0x5b2fefcdf30
 5b2ff0a67b1:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
 5b2ff0a67b4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0a67b8:	c5 f8 10 85 80 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x280]
 5b2ff0a67c0:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
 5b2ff0a67c6:	8b bd e8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x218]
 5b2ff0a67cc:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
 5b2ff0a67d2:	44 8b 4d c8                                     	mov    r9d,DWORD PTR [rbp-0x38]
 5b2ff0a67d6:	e9 d1 69 ff ff                                  	jmp    0x5b2ff09d1ac
 5b2ff0a67db:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
 5b2ff0a67e2:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
 5b2ff0a67e9:	e8 52 77 f2 ff                                  	call   0x5b2fefcdf40
 5b2ff0a67ee:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
 5b2ff0a67f5:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a67fa:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a6800:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a6806:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a680a:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a6812:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
 5b2ff0a681a:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a6822:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a682a:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a6832:	48 8b 8d d8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x328]
 5b2ff0a6839:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
 5b2ff0a683f:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
 5b2ff0a6845:	e9 b0 78 ff ff                                  	jmp    0x5b2ff09e0fa
 5b2ff0a684a:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
 5b2ff0a684e:	4c 89 5d 88                                     	mov    QWORD PTR [rbp-0x78],r11
 5b2ff0a6852:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
 5b2ff0a6859:	e8 e2 76 f2 ff                                  	call   0x5b2fefcdf40
 5b2ff0a685e:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
 5b2ff0a6862:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
 5b2ff0a6866:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
 5b2ff0a686d:	48 8b 85 68 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x98]
 5b2ff0a6874:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
 5b2ff0a6879:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
 5b2ff0a687f:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
 5b2ff0a6885:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a6889:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
 5b2ff0a6890:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
 5b2ff0a6898:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
 5b2ff0a68a0:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a68a8:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a68b0:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a68b8:	48 8b 95 d8 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x328]
 5b2ff0a68bf:	41 bf 0f 00 00 00                               	mov    r15d,0xf
 5b2ff0a68c5:	e9 d5 78 ff ff                                  	jmp    0x5b2ff09e19f
 5b2ff0a68ca:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
 5b2ff0a68ce:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
 5b2ff0a68d6:	4c 89 85 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],r8
 5b2ff0a68dd:	e8 5e 76 f2 ff                                  	call   0x5b2fefcdf40
 5b2ff0a68e2:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a68e6:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a68ea:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
 5b2ff0a68ee:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
 5b2ff0a68f5:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
 5b2ff0a68f8:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0a68fc:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0a6901:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0a6906:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
 5b2ff0a690a:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
 5b2ff0a6911:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
 5b2ff0a6918:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
 5b2ff0a691f:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
 5b2ff0a6927:	44 8b 85 80 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x180]
 5b2ff0a692e:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
 5b2ff0a6936:	c5 fb 10 85 58 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x3a8]
 5b2ff0a693e:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
 5b2ff0a6946:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
 5b2ff0a694e:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
 5b2ff0a6956:	e9 70 a6 ff ff                                  	jmp    0x5b2ff0a0fcb
 5b2ff0a695b:	e8 e0 75 f2 ff                                  	call   0x5b2fefcdf40
 5b2ff0a6960:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a6964:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a6968:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a696f:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
 5b2ff0a6977:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0a697a:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
 5b2ff0a6982:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
 5b2ff0a698a:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
 5b2ff0a6992:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
 5b2ff0a699a:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
 5b2ff0a69a2:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
 5b2ff0a69aa:	c5 f8 10 9d 10 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1f0]
 5b2ff0a69b2:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
 5b2ff0a69b8:	8b 95 00 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x400]
 5b2ff0a69be:	8b 9d 08 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3f8]
 5b2ff0a69c4:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
 5b2ff0a69cb:	e9 07 ad ff ff                                  	jmp    0x5b2ff0a16d7
 5b2ff0a69d0:	e8 6b 75 f2 ff                                  	call   0x5b2fefcdf40
 5b2ff0a69d5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a69d8:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a69dc:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
 5b2ff0a69e2:	44 8b 85 00 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x100]
 5b2ff0a69e9:	e9 f1 bc ff ff                                  	jmp    0x5b2ff0a26df
 5b2ff0a69ee:	e8 4d 75 f2 ff                                  	call   0x5b2fefcdf40
 5b2ff0a69f3:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0a69f7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a69fb:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
 5b2ff0a6a02:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
 5b2ff0a6a09:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
 5b2ff0a6a0f:	e9 94 d1 ff ff                                  	jmp    0x5b2ff0a3ba8
 5b2ff0a6a14:	c5 f8 11 85 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm0
 5b2ff0a6a1c:	c5 78 11 9d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm11
 5b2ff0a6a24:	c5 f8 11 ad 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm5
 5b2ff0a6a2c:	c5 f8 11 8d 30 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1d0],xmm1
 5b2ff0a6a34:	48 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdi
 5b2ff0a6a3b:	4c 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r15
 5b2ff0a6a42:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
 5b2ff0a6a49:	e8 f2 74 f2 ff                                  	call   0x5b2fefcdf40
 5b2ff0a6a4e:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
 5b2ff0a6a51:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0a6a55:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
 5b2ff0a6a5d:	c5 78 10 9d b0 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x150]
 5b2ff0a6a65:	c5 f8 10 ad 90 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x170]
 5b2ff0a6a6d:	c5 f8 10 8d 30 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x1d0]
 5b2ff0a6a75:	44 8b 85 a8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x158]
 5b2ff0a6a7c:	8b bd f0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x210]
 5b2ff0a6a82:	44 8b bd d8 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x228]
 5b2ff0a6a89:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
 5b2ff0a6a90:	44 8b 8d b8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x248]
 5b2ff0a6a97:	c5 78 10 ad 90 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x270]
 5b2ff0a6a9f:	e9 7b e6 ff ff                                  	jmp    0x5b2ff0a511f
 5b2ff0a6aa4:	33 d2                                           	xor    edx,edx
 5b2ff0a6aa6:	e9 e0 e6 ff ff                                  	jmp    0x5b2ff0a518b
 5b2ff0a6aab:	33 d2                                           	xor    edx,edx
 5b2ff0a6aad:	8b c8                                           	mov    ecx,eax
 5b2ff0a6aaf:	e9 f7 e6 ff ff                                  	jmp    0x5b2ff0a51ab
 5b2ff0a6ab4:	8b f0                                           	mov    esi,eax
 5b2ff0a6ab6:	33 d2                                           	xor    edx,edx
 5b2ff0a6ab8:	e9 2a e7 ff ff                                  	jmp    0x5b2ff0a51e7
 5b2ff0a6abd:	33 d2                                           	xor    edx,edx
 5b2ff0a6abf:	8b d8                                           	mov    ebx,eax
 5b2ff0a6ac1:	e9 41 e7 ff ff                                  	jmp    0x5b2ff0a5207
 5b2ff0a6ac6:	e8 85 71 f2 ff                                  	call   0x5b2fefcdc50
 5b2ff0a6acb:	e8 80 71 f2 ff                                  	call   0x5b2fefcdc50
 5b2ff0a6ad0:	90                                              	nop
 5b2ff0a6ad1:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
 5b2ff0a6ad8:	89 5c 0a ff                                     	mov    DWORD PTR [rdx+rcx*1-0x1],ebx
 5b2ff0a6adc:	b2 05                                           	mov    dl,0x5
 5b2ff0a6ade:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6ae0:	77 5c                                           	ja     0x5b2ff0a6b3e
 5b2ff0a6ae2:	0a ff                                           	or     bh,bh
 5b2ff0a6ae4:	b2 05                                           	mov    dl,0x5
 5b2ff0a6ae6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6ae8:	65 5c                                           	gs pop rsp
 5b2ff0a6aea:	0a ff                                           	or     bh,bh
 5b2ff0a6aec:	b2 05                                           	mov    dl,0x5
 5b2ff0a6aee:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6af0:	53                                              	push   rbx
 5b2ff0a6af1:	5c                                              	pop    rsp
 5b2ff0a6af2:	0a ff                                           	or     bh,bh
 5b2ff0a6af4:	b2 05                                           	mov    dl,0x5
 5b2ff0a6af6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6af8:	41 5c                                           	pop    r12
 5b2ff0a6afa:	0a ff                                           	or     bh,bh
 5b2ff0a6afc:	b2 05                                           	mov    dl,0x5
 5b2ff0a6afe:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b00:	2f                                              	(bad)
 5b2ff0a6b01:	5c                                              	pop    rsp
 5b2ff0a6b02:	0a ff                                           	or     bh,bh
 5b2ff0a6b04:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b06:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b08:	1d 5c 0a ff b2                                  	sbb    eax,0xb2ff0a5c
 5b2ff0a6b0d:	05 00 00 dc 59                                  	add    eax,0x59dc0000
 5b2ff0a6b12:	0a ff                                           	or     bh,bh
 5b2ff0a6b14:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b16:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b18:	d7                                              	xlat   BYTE PTR ds:[rbx]
 5b2ff0a6b19:	59                                              	pop    rcx
 5b2ff0a6b1a:	0a ff                                           	or     bh,bh
 5b2ff0a6b1c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b1e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b20:	cd 59                                           	int    0x59
 5b2ff0a6b22:	0a ff                                           	or     bh,bh
 5b2ff0a6b24:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b26:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b28:	c3                                              	ret
 5b2ff0a6b29:	59                                              	pop    rcx
 5b2ff0a6b2a:	0a ff                                           	or     bh,bh
 5b2ff0a6b2c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b2e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b30:	b8 59 0a ff b2                                  	mov    eax,0xb2ff0a59
 5b2ff0a6b35:	05 00 00 ae 59                                  	add    eax,0x59ae0000
 5b2ff0a6b3a:	0a ff                                           	or     bh,bh
 5b2ff0a6b3c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b3e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b40:	a3 59 0a ff b2 05 00 00 50                      	movabs ds:0x50000005b2ff0a59,eax
 5b2ff0a6b49:	4c 0a ff                                        	rex.WR or r15b,dil
 5b2ff0a6b4c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b4e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b50:	45                                              	rex.RB
 5b2ff0a6b51:	4c 0a ff                                        	rex.WR or r15b,dil
 5b2ff0a6b54:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b56:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b58:	3a 4c 0a ff                                     	cmp    cl,BYTE PTR [rdx+rcx*1-0x1]
 5b2ff0a6b5c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b5e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b60:	2f                                              	(bad)
 5b2ff0a6b61:	4c 0a ff                                        	rex.WR or r15b,dil
 5b2ff0a6b64:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b66:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b68:	24 4c                                           	and    al,0x4c
 5b2ff0a6b6a:	0a ff                                           	or     bh,bh
 5b2ff0a6b6c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b6e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b70:	19 4c 0a ff                                     	sbb    DWORD PTR [rdx+rcx*1-0x1],ecx
 5b2ff0a6b74:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b76:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b78:	0e                                              	(bad)
 5b2ff0a6b79:	4c 0a ff                                        	rex.WR or r15b,dil
 5b2ff0a6b7c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b7e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b80:	19 13                                           	sbb    DWORD PTR [rbx],edx
 5b2ff0a6b82:	0a ff                                           	or     bh,bh
 5b2ff0a6b84:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b86:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b88:	bc 12 0a ff b2                                  	mov    esp,0xb2ff0a12
 5b2ff0a6b8d:	05 00 00 64 12                                  	add    eax,0x12640000
 5b2ff0a6b92:	0a ff                                           	or     bh,bh
 5b2ff0a6b94:	b2 05                                           	mov    dl,0x5
 5b2ff0a6b96:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6b98:	15 12 0a ff b2                                  	adc    eax,0xb2ff0a12
 5b2ff0a6b9d:	05 00 00 c6 11                                  	add    eax,0x11c60000
 5b2ff0a6ba2:	0a ff                                           	or     bh,bh
 5b2ff0a6ba4:	b2 05                                           	mov    dl,0x5
 5b2ff0a6ba6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6ba8:	67 11 0a                                        	adc    DWORD PTR [edx],ecx
 5b2ff0a6bab:	ff b2 05 00 00 18                               	push   QWORD PTR [rdx+0x18000005]
 5b2ff0a6bb1:	11 0a                                           	adc    DWORD PTR [rdx],ecx
 5b2ff0a6bb3:	ff b2 05 00 00 0d                               	push   QWORD PTR [rdx+0xd000005]
 5b2ff0a6bb9:	11 0a                                           	adc    DWORD PTR [rdx],ecx
 5b2ff0a6bbb:	ff b2 05 00 00 10                               	push   QWORD PTR [rdx+0x10000005]
 5b2ff0a6bc1:	06                                              	(bad)
 5b2ff0a6bc2:	0a ff                                           	or     bh,bh
 5b2ff0a6bc4:	b2 05                                           	mov    dl,0x5
 5b2ff0a6bc6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6bc8:	04 06                                           	add    al,0x6
 5b2ff0a6bca:	0a ff                                           	or     bh,bh
 5b2ff0a6bcc:	b2 05                                           	mov    dl,0x5
 5b2ff0a6bce:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6bd0:	f5                                              	cmc
 5b2ff0a6bd1:	05 0a ff b2 05                                  	add    eax,0x5b2ff0a
 5b2ff0a6bd6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6bd8:	e9 05 0a ff b2                                  	jmp    0x5b2b20975e2
 5b2ff0a6bdd:	05 00 00 dc 05                                  	add    eax,0x5dc0000
 5b2ff0a6be2:	0a ff                                           	or     bh,bh
 5b2ff0a6be4:	b2 05                                           	mov    dl,0x5
 5b2ff0a6be6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6be8:	ca 05 0a                                        	retf   0xa05
 5b2ff0a6beb:	ff b2 05 00 00 bd                               	push   QWORD PTR [rdx-0x42fffffb]
 5b2ff0a6bf1:	05 0a ff b2 05                                  	add    eax,0x5b2ff0a
 5b2ff0a6bf6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6bf8:	3f                                              	(bad)
 5b2ff0a6bf9:	06                                              	(bad)
 5b2ff0a6bfa:	0a ff                                           	or     bh,bh
 5b2ff0a6bfc:	b2 05                                           	mov    dl,0x5
 5b2ff0a6bfe:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c00:	13 04 0a                                        	adc    eax,DWORD PTR [rdx+rcx*1]
 5b2ff0a6c03:	ff b2 05 00 00 6b                               	push   QWORD PTR [rdx+0x6b000005]
 5b2ff0a6c09:	fb                                              	sti
 5b2ff0a6c0a:	09 ff                                           	or     edi,edi
 5b2ff0a6c0c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c0e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c10:	55                                              	push   rbp
 5b2ff0a6c11:	fb                                              	sti
 5b2ff0a6c12:	09 ff                                           	or     edi,edi
 5b2ff0a6c14:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c16:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c18:	46 fb                                           	rex.RX sti
 5b2ff0a6c1a:	09 ff                                           	or     edi,edi
 5b2ff0a6c1c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c1e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c20:	36 fb                                           	ss sti
 5b2ff0a6c22:	09 ff                                           	or     edi,edi
 5b2ff0a6c24:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c26:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c28:	20 fb                                           	and    bl,bh
 5b2ff0a6c2a:	09 ff                                           	or     edi,edi
 5b2ff0a6c2c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c2e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c30:	10 fb                                           	adc    bl,bh
 5b2ff0a6c32:	09 ff                                           	or     edi,edi
 5b2ff0a6c34:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c36:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c38:	75 fb                                           	jne    0x5b2ff0a6c35
 5b2ff0a6c3a:	09 ff                                           	or     edi,edi
 5b2ff0a6c3c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c3e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c40:	b6 f9                                           	mov    dh,0xf9
 5b2ff0a6c42:	09 ff                                           	or     edi,edi
 5b2ff0a6c44:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c46:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c48:	fc                                              	cld
 5b2ff0a6c49:	f0 09 ff                                        	lock or edi,edi
 5b2ff0a6c4c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c4e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c50:	e6 f0                                           	out    0xf0,al
 5b2ff0a6c52:	09 ff                                           	or     edi,edi
 5b2ff0a6c54:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c56:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c58:	d7                                              	xlat   BYTE PTR ds:[rbx]
 5b2ff0a6c59:	f0 09 ff                                        	lock or edi,edi
 5b2ff0a6c5c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c5e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c60:	c7                                              	(bad)
 5b2ff0a6c61:	f0 09 ff                                        	lock or edi,edi
 5b2ff0a6c64:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c66:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c68:	b1 f0                                           	mov    cl,0xf0
 5b2ff0a6c6a:	09 ff                                           	or     edi,edi
 5b2ff0a6c6c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c6e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c70:	a1 f0 09 ff b2 05 00 00 06                      	movabs eax,ds:0x6000005b2ff09f0
 5b2ff0a6c79:	f1                                              	int1
 5b2ff0a6c7a:	09 ff                                           	or     edi,edi
 5b2ff0a6c7c:	b2 05                                           	mov    dl,0x5
 5b2ff0a6c7e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6c80:	d5 ee 09                                        	{rex2 0xee} wbinvd
 5b2ff0a6c83:	ff b2 05 00 00 1c                               	push   QWORD PTR [rdx+0x1c000005]
 5b2ff0a6c89:	e6 09                                           	out    0x9,al
 5b2ff0a6c8b:	ff b2 05 00 00 07                               	push   QWORD PTR [rdx+0x7000005]
 5b2ff0a6c91:	e6 09                                           	out    0x9,al
 5b2ff0a6c93:	ff b2 05 00 00 f8                               	push   QWORD PTR [rdx-0x7fffffb]
 5b2ff0a6c99:	e5 09                                           	in     eax,0x9
 5b2ff0a6c9b:	ff b2 05 00 00 e9                               	push   QWORD PTR [rdx-0x16fffffb]
 5b2ff0a6ca1:	e5 09                                           	in     eax,0x9
 5b2ff0a6ca3:	ff b2 05 00 00 d4                               	push   QWORD PTR [rdx-0x2bfffffb]
 5b2ff0a6ca9:	e5 09                                           	in     eax,0x9
 5b2ff0a6cab:	ff b2 05 00 00 c5                               	push   QWORD PTR [rdx-0x3afffffb]
 5b2ff0a6cb1:	e5 09                                           	in     eax,0x9
 5b2ff0a6cb3:	ff b2 05 00 00 26                               	push   QWORD PTR [rdx+0x26000005]
 5b2ff0a6cb9:	e6 09                                           	out    0x9,al
 5b2ff0a6cbb:	ff b2 05 00 00 82                               	push   QWORD PTR [rdx-0x7dfffffb]
 5b2ff0a6cc1:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6cc3:	00 1c 00                                        	add    BYTE PTR [rax+rax*1],bl
 5b2ff0a6cc6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a6cc8:	f0 2b db                                        	lock sub ebx,ebx
 5b2ff0a6ccb:	03 05 c0 80 02 db                               	add    eax,DWORD PTR [rip+0xffffffffdb0280c0]        # 0x5b2da0ced91
 5b2ff0a6cd1:	03 05 3d db 03 05                               	add    eax,DWORD PTR [rip+0x503db3d]        # 0x5b3040e4814
 5b2ff0a6cd7:	dd 05 db 03 05 00                               	fld    QWORD PTR [rip+0x503db]        # 0x5b2ff0f70b8
	...
