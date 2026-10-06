
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms4/selected/sg_raster_triangle_msaa4-turbofan.bin:     file format binary


Disassembly of section .data:

0000214fa495e240 <.data>:
    214fa495e240:	55                                              	push   rbp
    214fa495e241:	48 8b ec                                        	mov    rbp,rsp
    214fa495e244:	6a 30                                           	push   0x30
    214fa495e246:	56                                              	push   rsi
    214fa495e247:	48 81 ec 10 05 00 00                            	sub    rsp,0x510
    214fa495e24e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    214fa495e252:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    214fa495e256:	8b f9                                           	mov    edi,ecx
    214fa495e258:	4c 89 8d 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r9
    214fa495e25f:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    214fa495e263:	0f 86 15 a1 00 00                               	jbe    0x214fa496837e
    214fa495e269:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    214fa495e26d:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    214fa495e271:	4d 0b de                                        	or     r11,r14
    214fa495e274:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    214fa495e278:	41 81 ec a0 02 00 00                            	sub    r12d,0x2a0
    214fa495e27f:	45 89 63 07                                     	mov    DWORD PTR [r11+0x7],r12d
    214fa495e283:	44 8b f8                                        	mov    r15d,eax
    214fa495e286:	43 8b 4c 38 14                                  	mov    ecx,DWORD PTR [r8+r15*1+0x14]
    214fa495e28b:	4c 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],r15
    214fa495e28f:	48 89 8d 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],rcx
    214fa495e296:	83 f9 04                                        	cmp    ecx,0x4
    214fa495e299:	0f 84 26 00 00 00                               	je     0x214fa495e2c5
    214fa495e29f:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    214fa495e2a3:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    214fa495e2a7:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa495e2ab:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    214fa495e2b2:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    214fa495e2b9:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    214fa495e2c0:	e9 e0 03 00 00                                  	jmp    0x214fa495e6a5
    214fa495e2c5:	43 8b 74 38 18                                  	mov    esi,DWORD PTR [r8+r15*1+0x18]
    214fa495e2ca:	85 f6                                           	test   esi,esi
    214fa495e2cc:	74 d1                                           	je     0x214fa495e29f
    214fa495e2ce:	8d 46 c8                                        	lea    eax,[rsi-0x38]
    214fa495e2d1:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    214fa495e2d5:	41 83 3c 00 00                                  	cmp    DWORD PTR [r8+rax*1],0x0
    214fa495e2da:	74 c3                                           	je     0x214fa495e29f
    214fa495e2dc:	43 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+r15*1+0x68]
    214fa495e2e1:	43 83 7c 38 68 00                               	cmp    DWORD PTR [r8+r15*1+0x68],0x0
    214fa495e2e7:	74 b6                                           	je     0x214fa495e29f
    214fa495e2e9:	43 8b 84 38 a4 00 00 00                         	mov    eax,DWORD PTR [r8+r15*1+0xa4]
    214fa495e2f1:	43 83 bc 38 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0xa4],0x0
    214fa495e2fa:	75 a3                                           	jne    0x214fa495e29f
    214fa495e2fc:	43 8b 44 38 6c                                  	mov    eax,DWORD PTR [r8+r15*1+0x6c]
    214fa495e301:	44 8d 88 ff fd ff ff                            	lea    r9d,[rax-0x201]
    214fa495e308:	33 c9                                           	xor    ecx,ecx
    214fa495e30a:	45 85 c9                                        	test   r9d,r9d
    214fa495e30d:	0f 94 c1                                        	sete   cl
    214fa495e310:	41 83 f9 02                                     	cmp    r9d,0x2
    214fa495e314:	41 0f 94 c1                                     	sete   r9b
    214fa495e318:	45 0f b6 c9                                     	movzx  r9d,r9b
    214fa495e31c:	44 0b c9                                        	or     r9d,ecx
    214fa495e31f:	0f 84 7a ff ff ff                               	je     0x214fa495e29f
    214fa495e325:	c5 f9 7e c9                                     	vmovd  ecx,xmm1
    214fa495e329:	81 e1 ff ff ff 7f                               	and    ecx,0x7fffffff
    214fa495e32f:	81 f9 ff ff 7f 7f                               	cmp    ecx,0x7f7fffff
    214fa495e335:	0f 87 64 ff ff ff                               	ja     0x214fa495e29f
    214fa495e33b:	8b cb                                           	mov    ecx,ebx
    214fa495e33d:	c4 c1 7a 10 6c 08 18                            	vmovss xmm5,DWORD PTR [r8+rcx*1+0x18]
    214fa495e344:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa495e348:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa495e34d:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa495e352:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e356:	0f 82 43 ff ff ff                               	jb     0x214fa495e29f
    214fa495e35c:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa495e360:	c5 f8 2e ef                                     	vucomiss xmm5,xmm7
    214fa495e364:	0f 83 22 00 00 00                               	jae    0x214fa495e38c
    214fa495e36a:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    214fa495e36e:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    214fa495e372:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    214fa495e379:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    214fa495e380:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    214fa495e387:	e9 19 03 00 00                                  	jmp    0x214fa495e6a5
    214fa495e38c:	8b cf                                           	mov    ecx,edi
    214fa495e38e:	c4 41 7a 10 44 08 18                            	vmovss xmm8,DWORD PTR [r8+rcx*1+0x18]
    214fa495e395:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    214fa495e39a:	72 ce                                           	jb     0x214fa495e36a
    214fa495e39c:	8b ca                                           	mov    ecx,edx
    214fa495e39e:	c4 41 7a 10 4c 08 18                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x18]
    214fa495e3a5:	c5 78 2e cf                                     	vucomiss xmm9,xmm7
    214fa495e3a9:	72 bf                                           	jb     0x214fa495e36a
    214fa495e3ab:	c4 c1 78 2e f1                                  	vucomiss xmm6,xmm9
    214fa495e3b0:	72 b8                                           	jb     0x214fa495e36a
    214fa495e3b2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa495e3b6:	72 b2                                           	jb     0x214fa495e36a
    214fa495e3b8:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    214fa495e3bb:	c1 f9 02                                        	sar    ecx,0x2
    214fa495e3be:	44 8b 4d 20                                     	mov    r9d,DWORD PTR [rbp+0x20]
    214fa495e3c2:	45 8d 79 ff                                     	lea    r15d,[r9-0x1]
    214fa495e3c6:	41 c1 ff 02                                     	sar    r15d,0x2
    214fa495e3ca:	44 3b f9                                        	cmp    r15d,ecx
    214fa495e3cd:	0f 8c bf 02 00 00                               	jl     0x214fa495e692
    214fa495e3d3:	49 ba 50 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2850
    214fa495e3dd:	c4 41 70 54 12                                  	vandps xmm10,xmm1,XMMWORD PTR [r10]
    214fa495e3e2:	c5 2a 58 d6                                     	vaddss xmm10,xmm10,xmm6
    214fa495e3e6:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    214fa495e3ec:	c4 41 79 6e da                                  	vmovd  xmm11,r10d
    214fa495e3f1:	c4 41 2a 59 d3                                  	vmulss xmm10,xmm10,xmm11
    214fa495e3f6:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    214fa495e3fa:	4c 89 65 e0                                     	mov    QWORD PTR [rbp-0x20],r12
    214fa495e3fe:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    214fa495e405:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    214fa495e40c:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    214fa495e413:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    214fa495e418:	0f 87 05 00 00 00                               	ja     0x214fa495e423
    214fa495e41e:	c4 41 79 28 c8                                  	vmovapd xmm9,xmm8
    214fa495e423:	c5 78 2e cd                                     	vucomiss xmm9,xmm5
    214fa495e427:	0f 87 05 00 00 00                               	ja     0x214fa495e432
    214fa495e42d:	c4 c1 79 28 e9                                  	vmovapd xmm5,xmm9
    214fa495e432:	c5 d2 58 e9                                     	vaddss xmm5,xmm5,xmm1
    214fa495e436:	c5 aa 58 ed                                     	vaddss xmm5,xmm10,xmm5
    214fa495e43a:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa495e43e:	0f 87 04 00 00 00                               	ja     0x214fa495e448
    214fa495e444:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    214fa495e448:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    214fa495e44c:	0f 87 09 00 00 00                               	ja     0x214fa495e45b
    214fa495e452:	c5 f9 28 ee                                     	vmovapd xmm5,xmm6
    214fa495e456:	e9 04 00 00 00                                  	jmp    0x214fa495e45f
    214fa495e45b:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    214fa495e45f:	44 8b 4d 28                                     	mov    r9d,DWORD PTR [rbp+0x28]
    214fa495e463:	41 8d 51 ff                                     	lea    edx,[r9-0x1]
    214fa495e467:	c1 fa 02                                        	sar    edx,0x2
    214fa495e46a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa495e46e:	41 c1 f9 02                                     	sar    r9d,0x2
    214fa495e472:	41 8b f9                                        	mov    edi,r9d
    214fa495e475:	44 3b ca                                        	cmp    r9d,edx
    214fa495e478:	0f 4c fa                                        	cmovl  edi,edx
    214fa495e47b:	8d 5e c4                                        	lea    ebx,[rsi-0x3c]
    214fa495e47e:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa495e482:	83 ee 40                                        	sub    esi,0x40
    214fa495e485:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    214fa495e489:	45 33 db                                        	xor    r11d,r11d
    214fa495e48c:	3d 01 02 00 00                                  	cmp    eax,0x201
    214fa495e491:	41 0f 94 c3                                     	sete   r11b
    214fa495e495:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    214fa495e499:	48 89 9d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],rbx
    214fa495e4a0:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    214fa495e4a4:	e9 23 00 00 00                                  	jmp    0x214fa495e4cc
    214fa495e4a9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495e4b2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495e4bb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    214fa495e4c0:	41 8b cc                                        	mov    ecx,r12d
    214fa495e4c3:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    214fa495e4c6:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    214fa495e4cc:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa495e4d1:	0f 85 0f 9f 00 00                               	jne    0x214fa49683e6
    214fa495e4d7:	44 3b 4d c0                                     	cmp    r9d,DWORD PTR [rbp-0x40]
    214fa495e4db:	0f 8f 5c 01 00 00                               	jg     0x214fa495e63d
    214fa495e4e1:	44 8b e3                                        	mov    r12d,ebx
    214fa495e4e4:	44 0f af e1                                     	imul   r12d,ecx
    214fa495e4e8:	41 c1 e4 04                                     	shl    r12d,0x4
    214fa495e4ec:	44 03 e6                                        	add    r12d,esi
    214fa495e4ef:	41 8b d9                                        	mov    ebx,r9d
    214fa495e4f2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495e4fb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    214fa495e500:	8b d3                                           	mov    edx,ebx
    214fa495e502:	c1 e2 04                                        	shl    edx,0x4
    214fa495e505:	41 03 d4                                        	add    edx,r12d
    214fa495e508:	49 8b 34 10                                     	mov    rsi,QWORD PTR [r8+rdx*1]
    214fa495e50c:	49 83 3c 10 ff                                  	cmp    QWORD PTR [r8+rdx*1],0xffffffffffffffff
    214fa495e511:	0f 85 38 01 00 00                               	jne    0x214fa495e64f
    214fa495e517:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    214fa495e51e:	45 85 db                                        	test   r11d,r11d
    214fa495e521:	0f 85 0f 00 00 00                               	jne    0x214fa495e536
    214fa495e527:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e52b:	0f 83 1e 01 00 00                               	jae    0x214fa495e64f
    214fa495e531:	e9 0a 00 00 00                                  	jmp    0x214fa495e540
    214fa495e536:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e53a:	0f 87 0f 01 00 00                               	ja     0x214fa495e64f
    214fa495e540:	8d 53 01                                        	lea    edx,[rbx+0x1]
    214fa495e543:	3b df                                           	cmp    ebx,edi
    214fa495e545:	0f 84 f2 00 00 00                               	je     0x214fa495e63d
    214fa495e54b:	8b da                                           	mov    ebx,edx
    214fa495e54d:	c1 e3 04                                        	shl    ebx,0x4
    214fa495e550:	41 03 dc                                        	add    ebx,r12d
    214fa495e553:	49 8b 34 18                                     	mov    rsi,QWORD PTR [r8+rbx*1]
    214fa495e557:	49 83 3c 18 ff                                  	cmp    QWORD PTR [r8+rbx*1],0xffffffffffffffff
    214fa495e55c:	0f 85 ed 00 00 00                               	jne    0x214fa495e64f
    214fa495e562:	c4 c1 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+rbx*1+0x8]
    214fa495e569:	3d 01 02 00 00                                  	cmp    eax,0x201
    214fa495e56e:	0f 84 0f 00 00 00                               	je     0x214fa495e583
    214fa495e574:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e578:	0f 83 d1 00 00 00                               	jae    0x214fa495e64f
    214fa495e57e:	e9 0a 00 00 00                                  	jmp    0x214fa495e58d
    214fa495e583:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e587:	0f 87 c2 00 00 00                               	ja     0x214fa495e64f
    214fa495e58d:	8d 5a 01                                        	lea    ebx,[rdx+0x1]
    214fa495e590:	3b d7                                           	cmp    edx,edi
    214fa495e592:	0f 84 a5 00 00 00                               	je     0x214fa495e63d
    214fa495e598:	8b d3                                           	mov    edx,ebx
    214fa495e59a:	c1 e2 04                                        	shl    edx,0x4
    214fa495e59d:	41 03 d4                                        	add    edx,r12d
    214fa495e5a0:	49 8b 34 10                                     	mov    rsi,QWORD PTR [r8+rdx*1]
    214fa495e5a4:	49 83 3c 10 ff                                  	cmp    QWORD PTR [r8+rdx*1],0xffffffffffffffff
    214fa495e5a9:	0f 85 a0 00 00 00                               	jne    0x214fa495e64f
    214fa495e5af:	c4 c1 7a 10 74 10 08                            	vmovss xmm6,DWORD PTR [r8+rdx*1+0x8]
    214fa495e5b6:	3d 01 02 00 00                                  	cmp    eax,0x201
    214fa495e5bb:	0f 84 0f 00 00 00                               	je     0x214fa495e5d0
    214fa495e5c1:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e5c5:	0f 83 84 00 00 00                               	jae    0x214fa495e64f
    214fa495e5cb:	e9 0a 00 00 00                                  	jmp    0x214fa495e5da
    214fa495e5d0:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e5d4:	0f 87 75 00 00 00                               	ja     0x214fa495e64f
    214fa495e5da:	8d 53 01                                        	lea    edx,[rbx+0x1]
    214fa495e5dd:	3b df                                           	cmp    ebx,edi
    214fa495e5df:	0f 84 58 00 00 00                               	je     0x214fa495e63d
    214fa495e5e5:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa495e5ea:	0f 85 90 9e 00 00                               	jne    0x214fa4968480
    214fa495e5f0:	8b da                                           	mov    ebx,edx
    214fa495e5f2:	c1 e3 04                                        	shl    ebx,0x4
    214fa495e5f5:	41 03 dc                                        	add    ebx,r12d
    214fa495e5f8:	49 8b 34 18                                     	mov    rsi,QWORD PTR [r8+rbx*1]
    214fa495e5fc:	49 83 3c 18 ff                                  	cmp    QWORD PTR [r8+rbx*1],0xffffffffffffffff
    214fa495e601:	0f 85 48 00 00 00                               	jne    0x214fa495e64f
    214fa495e607:	c4 c1 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+rbx*1+0x8]
    214fa495e60e:	3d 01 02 00 00                                  	cmp    eax,0x201
    214fa495e613:	0f 84 0f 00 00 00                               	je     0x214fa495e628
    214fa495e619:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e61d:	0f 83 2c 00 00 00                               	jae    0x214fa495e64f
    214fa495e623:	e9 0a 00 00 00                                  	jmp    0x214fa495e632
    214fa495e628:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa495e62c:	0f 87 1d 00 00 00                               	ja     0x214fa495e64f
    214fa495e632:	8d 5a 01                                        	lea    ebx,[rdx+0x1]
    214fa495e635:	3b fa                                           	cmp    edi,edx
    214fa495e637:	0f 85 c3 fe ff ff                               	jne    0x214fa495e500
    214fa495e63d:	44 8d 61 01                                     	lea    r12d,[rcx+0x1]
    214fa495e641:	44 3b f9                                        	cmp    r15d,ecx
    214fa495e644:	0f 85 76 fe ff ff                               	jne    0x214fa495e4c0
    214fa495e64a:	e9 23 00 00 00                                  	jmp    0x214fa495e672
    214fa495e64f:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    214fa495e655:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    214fa495e659:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    214fa495e65d:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    214fa495e661:	8b 95 50 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b0]
    214fa495e667:	8b bd 70 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x190]
    214fa495e66d:	e9 33 00 00 00                                  	jmp    0x214fa495e6a5
    214fa495e672:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    214fa495e676:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    214fa495e67e:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    214fa495e682:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    214fa495e686:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    214fa495e68b:	48 8b e5                                        	mov    rsp,rbp
    214fa495e68e:	5d                                              	pop    rbp
    214fa495e68f:	c2 40 00                                        	ret    0x40
    214fa495e692:	41 8d bc 24 a0 02 00 00                         	lea    edi,[r12+0x2a0]
    214fa495e69a:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    214fa495e69e:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    214fa495e6a3:	eb e6                                           	jmp    0x214fa495e68b
    214fa495e6a5:	8b c3                                           	mov    eax,ebx
    214fa495e6a7:	c4 c1 7a 10 6c 00 10                            	vmovss xmm5,DWORD PTR [r8+rax*1+0x10]
    214fa495e6ae:	c4 c1 7a 10 74 00 14                            	vmovss xmm6,DWORD PTR [r8+rax*1+0x14]
    214fa495e6b5:	8b f7                                           	mov    esi,edi
    214fa495e6b7:	c4 41 7a 10 44 30 10                            	vmovss xmm8,DWORD PTR [r8+rsi*1+0x10]
    214fa495e6be:	44 8b ca                                        	mov    r9d,edx
    214fa495e6c1:	c4 01 7a 10 4c 08 10                            	vmovss xmm9,DWORD PTR [r8+r9*1+0x10]
    214fa495e6c8:	c4 41 7a 10 54 30 14                            	vmovss xmm10,DWORD PTR [r8+rsi*1+0x14]
    214fa495e6cf:	43 8b 8c 38 8c 00 00 00                         	mov    ecx,DWORD PTR [r8+r15*1+0x8c]
    214fa495e6d7:	c4 01 7a 10 5c 08 14                            	vmovss xmm11,DWORD PTR [r8+r9*1+0x14]
    214fa495e6de:	41 ba 00 00 80 43                               	mov    r10d,0x43800000
    214fa495e6e4:	c4 41 79 6e e2                                  	vmovd  xmm12,r10d
    214fa495e6e9:	c4 41 22 59 dc                                  	vmulss xmm11,xmm11,xmm12
    214fa495e6ee:	4c 8b 15 e0 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffce0]        # 0x214fa495e3d5
    214fa495e6f5:	c4 41 20 54 2a                                  	vandps xmm13,xmm11,XMMWORD PTR [r10]
    214fa495e6fa:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    214fa495e6fe:	48 89 85 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],rax
    214fa495e705:	48 89 b5 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rsi
    214fa495e70c:	4c 89 8d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r9
    214fa495e713:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    214fa495e71a:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    214fa495e720:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    214fa495e725:	c4 41 78 2e f5                                  	vucomiss xmm14,xmm13
    214fa495e72a:	0f 87 0b 00 00 00                               	ja     0x214fa495e73b
    214fa495e730:	41 bb 00 00 00 80                               	mov    r11d,0x80000000
    214fa495e736:	e9 21 00 00 00                                  	jmp    0x214fa495e75c
    214fa495e73b:	c4 43 21 0a db 0b                               	vroundss xmm11,xmm11,xmm11,0xb
    214fa495e741:	c4 41 7a 2c db                                  	vcvttss2si r11d,xmm11
    214fa495e746:	c4 41 02 2a eb                                  	vcvtsi2ss xmm13,xmm15,r11d
    214fa495e74b:	c4 41 78 2e dd                                  	vucomiss xmm11,xmm13
    214fa495e750:	0f 8a fe a0 00 00                               	jp     0x214fa4968854
    214fa495e756:	0f 85 f8 a0 00 00                               	jne    0x214fa4968854
    214fa495e75c:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    214fa495e763:	48 c7 c0 a0 ff ff ff                            	mov    rax,0xffffffffffffffa0
    214fa495e76a:	85 c9                                           	test   ecx,ecx
    214fa495e76c:	48 0f 45 f0                                     	cmovne rsi,rax
    214fa495e770:	c4 41 2a 59 d4                                  	vmulss xmm10,xmm10,xmm12
    214fa495e775:	4c 8b 15 59 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc59]        # 0x214fa495e3d5
    214fa495e77c:	c4 41 28 54 1a                                  	vandps xmm11,xmm10,XMMWORD PTR [r10]
    214fa495e781:	4c 89 9d 00 fb ff ff                            	mov    QWORD PTR [rbp-0x500],r11
    214fa495e788:	48 89 75 b8                                     	mov    QWORD PTR [rbp-0x48],rsi
    214fa495e78c:	c4 41 78 2e f3                                  	vucomiss xmm14,xmm11
    214fa495e791:	0f 87 0a 00 00 00                               	ja     0x214fa495e7a1
    214fa495e797:	b8 00 00 00 80                                  	mov    eax,0x80000000
    214fa495e79c:	e9 20 00 00 00                                  	jmp    0x214fa495e7c1
    214fa495e7a1:	c4 43 29 0a d2 0b                               	vroundss xmm10,xmm10,xmm10,0xb
    214fa495e7a7:	c4 c1 7a 2c c2                                  	vcvttss2si eax,xmm10
    214fa495e7ac:	c5 02 2a d8                                     	vcvtsi2ss xmm11,xmm15,eax
    214fa495e7b0:	c4 41 78 2e d3                                  	vucomiss xmm10,xmm11
    214fa495e7b5:	0f 8a 94 a0 00 00                               	jp     0x214fa496884f
    214fa495e7bb:	0f 85 8e a0 00 00                               	jne    0x214fa496884f
    214fa495e7c1:	44 8b c8                                        	mov    r9d,eax
    214fa495e7c4:	45 2b cb                                        	sub    r9d,r11d
    214fa495e7c7:	49 63 d1                                        	movsxd rdx,r9d
    214fa495e7ca:	c4 41 32 59 cc                                  	vmulss xmm9,xmm9,xmm12
    214fa495e7cf:	4c 8b 15 ff fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbff]        # 0x214fa495e3d5
    214fa495e7d6:	c4 41 30 54 12                                  	vandps xmm10,xmm9,XMMWORD PTR [r10]
    214fa495e7db:	48 89 85 50 fd ff ff                            	mov    QWORD PTR [rbp-0x2b0],rax
    214fa495e7e2:	4c 89 8d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r9
    214fa495e7e9:	48 89 95 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],rdx
    214fa495e7f0:	c4 41 78 2e f2                                  	vucomiss xmm14,xmm10
    214fa495e7f5:	0f 87 10 00 00 00                               	ja     0x214fa495e80b
    214fa495e7fb:	48 c7 85 10 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x1f0],0xffffffff80000000
    214fa495e806:	e9 28 00 00 00                                  	jmp    0x214fa495e833
    214fa495e80b:	c4 43 31 0a c9 0b                               	vroundss xmm9,xmm9,xmm9,0xb
    214fa495e811:	c4 41 7a 2c c9                                  	vcvttss2si r9d,xmm9
    214fa495e816:	c4 41 02 2a d1                                  	vcvtsi2ss xmm10,xmm15,r9d
    214fa495e81b:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    214fa495e820:	0f 8a 24 a0 00 00                               	jp     0x214fa496884a
    214fa495e826:	0f 85 1e a0 00 00                               	jne    0x214fa496884a
    214fa495e82c:	4c 89 8d 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r9
    214fa495e833:	41 b9 05 00 00 00                               	mov    r9d,0x5
    214fa495e839:	bf 07 00 00 00                                  	mov    edi,0x7
    214fa495e83e:	85 c9                                           	test   ecx,ecx
    214fa495e840:	49 0f 45 f9                                     	cmovne rdi,r9
    214fa495e844:	4c 8b ca                                        	mov    r9,rdx
    214fa495e847:	4c 0f af ce                                     	imul   r9,rsi
    214fa495e84b:	c4 41 3a 59 c4                                  	vmulss xmm8,xmm8,xmm12
    214fa495e850:	4c 8b 15 7e fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb7e]        # 0x214fa495e3d5
    214fa495e857:	c4 41 38 54 0a                                  	vandps xmm9,xmm8,XMMWORD PTR [r10]
    214fa495e85c:	c4 41 78 2e f1                                  	vucomiss xmm14,xmm9
    214fa495e861:	0f 87 10 00 00 00                               	ja     0x214fa495e877
    214fa495e867:	48 c7 85 60 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x1a0],0xffffffff80000000
    214fa495e872:	e9 27 00 00 00                                  	jmp    0x214fa495e89e
    214fa495e877:	c4 43 39 0a c0 0b                               	vroundss xmm8,xmm8,xmm8,0xb
    214fa495e87d:	c4 c1 7a 2c d8                                  	vcvttss2si ebx,xmm8
    214fa495e882:	c5 02 2a cb                                     	vcvtsi2ss xmm9,xmm15,ebx
    214fa495e886:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    214fa495e88b:	0f 8a b4 9f 00 00                               	jp     0x214fa4968845
    214fa495e891:	0f 85 ae 9f 00 00                               	jne    0x214fa4968845
    214fa495e897:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    214fa495e89e:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    214fa495e8a4:	2b 9d 10 fe ff ff                               	sub    ebx,DWORD PTR [rbp-0x1f0]
    214fa495e8aa:	48 63 db                                        	movsxd rbx,ebx
    214fa495e8ad:	8b ff                                           	mov    edi,edi
    214fa495e8af:	83 e7 3f                                        	and    edi,0x3f
    214fa495e8b2:	4c 8b fb                                        	mov    r15,rbx
    214fa495e8b5:	8b cf                                           	mov    ecx,edi
    214fa495e8b7:	49 d3 e7                                        	shl    r15,cl
    214fa495e8ba:	4d 03 f9                                        	add    r15,r9
    214fa495e8bd:	4f 89 bc 20 e0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe0],r15
    214fa495e8c5:	41 bb 80 00 00 00                               	mov    r11d,0x80
    214fa495e8cb:	41 b9 60 00 00 00                               	mov    r9d,0x60
    214fa495e8d1:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    214fa495e8d8:	4d 0f 45 d9                                     	cmovne r11,r9
    214fa495e8dc:	4d 8b cb                                        	mov    r9,r11
    214fa495e8df:	4c 0f af cb                                     	imul   r9,rbx
    214fa495e8e3:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    214fa495e8ea:	48 89 bd 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rdi
    214fa495e8f1:	48 c7 c7 20 ff ff ff                            	mov    rdi,0xffffffffffffff20
    214fa495e8f8:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    214fa495e8ff:	48 0f 45 f7                                     	cmovne rsi,rdi
    214fa495e903:	48 8b fe                                        	mov    rdi,rsi
    214fa495e906:	48 0f af fa                                     	imul   rdi,rdx
    214fa495e90a:	49 03 f9                                        	add    rdi,r9
    214fa495e90d:	4b 89 bc 20 f8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf8],rdi
    214fa495e915:	b8 80 00 00 00                                  	mov    eax,0x80
    214fa495e91a:	41 b9 a0 00 00 00                               	mov    r9d,0xa0
    214fa495e920:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    214fa495e927:	49 0f 45 c1                                     	cmovne rax,r9
    214fa495e92b:	4c 8b c8                                        	mov    r9,rax
    214fa495e92e:	4c 0f af cb                                     	imul   r9,rbx
    214fa495e932:	48 89 b5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rsi
    214fa495e939:	48 c7 c6 80 ff ff ff                            	mov    rsi,0xffffffffffffff80
    214fa495e940:	48 89 85 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rax
    214fa495e947:	48 c7 c0 e0 ff ff ff                            	mov    rax,0xffffffffffffffe0
    214fa495e94e:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    214fa495e955:	48 0f 45 f0                                     	cmovne rsi,rax
    214fa495e959:	48 8b c6                                        	mov    rax,rsi
    214fa495e95c:	48 0f af c2                                     	imul   rax,rdx
    214fa495e960:	49 03 c1                                        	add    rax,r9
    214fa495e963:	4b 89 84 20 10 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x110],rax
    214fa495e96b:	4d 8b cf                                        	mov    r9,r15
    214fa495e96e:	4c 3b ff                                        	cmp    r15,rdi
    214fa495e971:	4c 0f 4c cf                                     	cmovl  r9,rdi
    214fa495e975:	48 89 b5 d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rsi
    214fa495e97c:	be e0 00 00 00                                  	mov    esi,0xe0
    214fa495e981:	b9 80 00 00 00                                  	mov    ecx,0x80
    214fa495e986:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    214fa495e98d:	48 0f 45 ce                                     	cmovne rcx,rsi
    214fa495e991:	48 8b f1                                        	mov    rsi,rcx
    214fa495e994:	48 0f af f3                                     	imul   rsi,rbx
    214fa495e998:	48 89 5d c0                                     	mov    QWORD PTR [rbp-0x40],rbx
    214fa495e99c:	4c 89 9d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r11
    214fa495e9a3:	49 c7 c3 80 ff ff ff                            	mov    r11,0xffffffffffffff80
    214fa495e9aa:	48 c7 c3 60 ff ff ff                            	mov    rbx,0xffffffffffffff60
    214fa495e9b1:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    214fa495e9b8:	4c 0f 45 db                                     	cmovne r11,rbx
    214fa495e9bc:	49 8b db                                        	mov    rbx,r11
    214fa495e9bf:	48 0f af da                                     	imul   rbx,rdx
    214fa495e9c3:	48 03 de                                        	add    rbx,rsi
    214fa495e9c6:	4b 89 9c 20 28 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x128],rbx
    214fa495e9ce:	49 8b f7                                        	mov    rsi,r15
    214fa495e9d1:	49 3b ff                                        	cmp    rdi,r15
    214fa495e9d4:	48 0f 4c f7                                     	cmovl  rsi,rdi
    214fa495e9d8:	48 8b fe                                        	mov    rdi,rsi
    214fa495e9db:	48 3b c6                                        	cmp    rax,rsi
    214fa495e9de:	48 0f 4c f8                                     	cmovl  rdi,rax
    214fa495e9e2:	4d 8b f9                                        	mov    r15,r9
    214fa495e9e5:	4c 3b c8                                        	cmp    r9,rax
    214fa495e9e8:	4c 0f 4c f8                                     	cmovl  r15,rax
    214fa495e9ec:	33 c0                                           	xor    eax,eax
    214fa495e9ee:	4c 3b fb                                        	cmp    r15,rbx
    214fa495e9f1:	0f 9c c0                                        	setl   al
    214fa495e9f4:	33 f6                                           	xor    esi,esi
    214fa495e9f6:	48 3b df                                        	cmp    rbx,rdi
    214fa495e9f9:	40 0f 9c c6                                     	setl   sil
    214fa495e9fd:	c4 c1 4a 59 f4                                  	vmulss xmm6,xmm6,xmm12
    214fa495ea02:	4c 8b 15 cc f9 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff9cc]        # 0x214fa495e3d5
    214fa495ea09:	c4 41 48 54 02                                  	vandps xmm8,xmm6,XMMWORD PTR [r10]
    214fa495ea0e:	48 89 8d 58 fd ff ff                            	mov    QWORD PTR [rbp-0x2a8],rcx
    214fa495ea15:	48 89 9d 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],rbx
    214fa495ea1c:	48 89 bd a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rdi
    214fa495ea23:	4c 89 bd e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],r15
    214fa495ea2a:	48 89 85 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rax
    214fa495ea31:	48 89 b5 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rsi
    214fa495ea38:	c4 41 78 2e f0                                  	vucomiss xmm14,xmm8
    214fa495ea3d:	0f 87 0b 00 00 00                               	ja     0x214fa495ea4e
    214fa495ea43:	41 b9 00 00 00 80                               	mov    r9d,0x80000000
    214fa495ea49:	e9 20 00 00 00                                  	jmp    0x214fa495ea6e
    214fa495ea4e:	c4 e3 49 0a f6 0b                               	vroundss xmm6,xmm6,xmm6,0xb
    214fa495ea54:	c5 7a 2c ce                                     	vcvttss2si r9d,xmm6
    214fa495ea58:	c4 41 02 2a c1                                  	vcvtsi2ss xmm8,xmm15,r9d
    214fa495ea5d:	c4 c1 78 2e f0                                  	vucomiss xmm6,xmm8
    214fa495ea62:	0f 8a d8 9d 00 00                               	jp     0x214fa4968840
    214fa495ea68:	0f 85 d2 9d 00 00                               	jne    0x214fa4968840
    214fa495ea6e:	8b bd 00 fb ff ff                               	mov    edi,DWORD PTR [rbp-0x500]
    214fa495ea74:	41 2b f9                                        	sub    edi,r9d
    214fa495ea77:	48 63 f7                                        	movsxd rsi,edi
    214fa495ea7a:	48 89 bd 18 fe ff ff                            	mov    QWORD PTR [rbp-0x1e8],rdi
    214fa495ea81:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    214fa495ea85:	48 0f af fe                                     	imul   rdi,rsi
    214fa495ea89:	c4 c1 52 59 ec                                  	vmulss xmm5,xmm5,xmm12
    214fa495ea8e:	4c 8b 15 40 f9 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff940]        # 0x214fa495e3d5
    214fa495ea95:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    214fa495ea9a:	4c 89 8d 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],r9
    214fa495eaa1:	48 89 b5 f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rsi
    214fa495eaa8:	c5 78 2e f6                                     	vucomiss xmm14,xmm6
    214fa495eaac:	0f 87 10 00 00 00                               	ja     0x214fa495eac2
    214fa495eab2:	48 c7 85 00 fe ff ff 00 00 00 80                	mov    QWORD PTR [rbp-0x200],0xffffffff80000000
    214fa495eabd:	e9 26 00 00 00                                  	jmp    0x214fa495eae8
    214fa495eac2:	c4 e3 51 0a ed 0b                               	vroundss xmm5,xmm5,xmm5,0xb
    214fa495eac8:	c5 7a 2c fd                                     	vcvttss2si r15d,xmm5
    214fa495eacc:	c4 c1 02 2a f7                                  	vcvtsi2ss xmm6,xmm15,r15d
    214fa495ead1:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa495ead5:	0f 8a 60 9d 00 00                               	jp     0x214fa496883b
    214fa495eadb:	0f 85 5a 9d 00 00                               	jne    0x214fa496883b
    214fa495eae1:	4c 89 bd 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],r15
    214fa495eae8:	44 8b bd 10 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1f0]
    214fa495eaef:	44 2b bd 00 fe ff ff                            	sub    r15d,DWORD PTR [rbp-0x200]
    214fa495eaf6:	4d 63 ff                                        	movsxd r15,r15d
    214fa495eaf9:	49 8b c7                                        	mov    rax,r15
    214fa495eafc:	8b 8d 78 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x188]
    214fa495eb02:	48 d3 e0                                        	shl    rax,cl
    214fa495eb05:	48 03 f8                                        	add    rdi,rax
    214fa495eb08:	4b 89 bc 20 d8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd8],rdi
    214fa495eb10:	49 8b c7                                        	mov    rax,r15
    214fa495eb13:	48 0f af 85 48 fe ff ff                         	imul   rax,QWORD PTR [rbp-0x1b8]
    214fa495eb1b:	48 8b ce                                        	mov    rcx,rsi
    214fa495eb1e:	48 0f af 8d 68 fe ff ff                         	imul   rcx,QWORD PTR [rbp-0x198]
    214fa495eb26:	48 03 c1                                        	add    rax,rcx
    214fa495eb29:	4b 89 84 20 f0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xf0],rax
    214fa495eb31:	49 8b cf                                        	mov    rcx,r15
    214fa495eb34:	48 0f af 8d f8 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x208]
    214fa495eb3c:	48 8b de                                        	mov    rbx,rsi
    214fa495eb3f:	48 0f af 9d d0 fd ff ff                         	imul   rbx,QWORD PTR [rbp-0x230]
    214fa495eb47:	48 03 d9                                        	add    rbx,rcx
    214fa495eb4a:	4b 89 9c 20 08 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x108],rbx
    214fa495eb52:	49 8b cf                                        	mov    rcx,r15
    214fa495eb55:	48 0f af 8d 58 fd ff ff                         	imul   rcx,QWORD PTR [rbp-0x2a8]
    214fa495eb5d:	4c 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r15
    214fa495eb64:	4c 8b fe                                        	mov    r15,rsi
    214fa495eb67:	4d 0f af fb                                     	imul   r15,r11
    214fa495eb6b:	4c 03 f9                                        	add    r15,rcx
    214fa495eb6e:	4f 89 bc 20 20 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x120],r15
    214fa495eb76:	48 8b cf                                        	mov    rcx,rdi
    214fa495eb79:	48 3b f8                                        	cmp    rdi,rax
    214fa495eb7c:	48 0f 4c c8                                     	cmovl  rcx,rax
    214fa495eb80:	4c 8b c9                                        	mov    r9,rcx
    214fa495eb83:	48 3b cb                                        	cmp    rcx,rbx
    214fa495eb86:	4c 0f 4c cb                                     	cmovl  r9,rbx
    214fa495eb8a:	33 c9                                           	xor    ecx,ecx
    214fa495eb8c:	4d 3b cf                                        	cmp    r9,r15
    214fa495eb8f:	0f 9c c1                                        	setl   cl
    214fa495eb92:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    214fa495eb99:	4c 8b cf                                        	mov    r9,rdi
    214fa495eb9c:	48 3b c7                                        	cmp    rax,rdi
    214fa495eb9f:	4c 0f 4c c8                                     	cmovl  r9,rax
    214fa495eba3:	49 8b f9                                        	mov    rdi,r9
    214fa495eba6:	49 3b d9                                        	cmp    rbx,r9
    214fa495eba9:	48 0f 4c fb                                     	cmovl  rdi,rbx
    214fa495ebad:	33 c0                                           	xor    eax,eax
    214fa495ebaf:	4c 3b ff                                        	cmp    r15,rdi
    214fa495ebb2:	0f 9c c0                                        	setl   al
    214fa495ebb5:	44 8b 8d 28 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d8]
    214fa495ebbc:	44 2b 8d 50 fd ff ff                            	sub    r9d,DWORD PTR [rbp-0x2b0]
    214fa495ebc3:	49 63 d9                                        	movsxd rbx,r9d
    214fa495ebc6:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    214fa495ebcd:	4c 8b 4d b8                                     	mov    r9,QWORD PTR [rbp-0x48]
    214fa495ebd1:	4c 0f af cb                                     	imul   r9,rbx
    214fa495ebd5:	48 89 bd 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rdi
    214fa495ebdc:	8b bd 00 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x200]
    214fa495ebe2:	2b bd 60 fe ff ff                               	sub    edi,DWORD PTR [rbp-0x1a0]
    214fa495ebe8:	48 63 ff                                        	movsxd rdi,edi
    214fa495ebeb:	48 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rax
    214fa495ebf2:	48 8b c7                                        	mov    rax,rdi
    214fa495ebf5:	48 89 8d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rcx
    214fa495ebfc:	8b 8d 78 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x188]
    214fa495ec02:	48 d3 e0                                        	shl    rax,cl
    214fa495ec05:	49 03 c1                                        	add    rax,r9
    214fa495ec08:	4b 89 84 20 d0 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xd0],rax
    214fa495ec10:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    214fa495ec17:	48 0f af cf                                     	imul   rcx,rdi
    214fa495ec1b:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    214fa495ec22:	4c 0f af cb                                     	imul   r9,rbx
    214fa495ec26:	49 03 c9                                        	add    rcx,r9
    214fa495ec29:	4b 89 8c 20 e8 00 00 00                         	mov    QWORD PTR [r8+r12*1+0xe8],rcx
    214fa495ec31:	4c 8b 8d f8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x208]
    214fa495ec38:	4c 0f af cf                                     	imul   r9,rdi
    214fa495ec3c:	4c 89 bd a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r15
    214fa495ec43:	4c 8b bd d0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x230]
    214fa495ec4a:	4c 0f af fb                                     	imul   r15,rbx
    214fa495ec4e:	4d 03 f9                                        	add    r15,r9
    214fa495ec51:	4f 89 bc 20 00 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x100],r15
    214fa495ec59:	4c 8b 8d 58 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2a8]
    214fa495ec60:	4c 0f af cf                                     	imul   r9,rdi
    214fa495ec64:	4c 0f af db                                     	imul   r11,rbx
    214fa495ec68:	4d 03 d9                                        	add    r11,r9
    214fa495ec6b:	4f 89 9c 20 18 01 00 00                         	mov    QWORD PTR [r8+r12*1+0x118],r11
    214fa495ec73:	4c 8b c8                                        	mov    r9,rax
    214fa495ec76:	48 3b c1                                        	cmp    rax,rcx
    214fa495ec79:	4c 0f 4c c9                                     	cmovl  r9,rcx
    214fa495ec7d:	4d 8b c1                                        	mov    r8,r9
    214fa495ec80:	4d 3b cf                                        	cmp    r9,r15
    214fa495ec83:	4d 0f 4c c7                                     	cmovl  r8,r15
    214fa495ec87:	45 33 c9                                        	xor    r9d,r9d
    214fa495ec8a:	4d 3b c3                                        	cmp    r8,r11
    214fa495ec8d:	41 0f 9c c1                                     	setl   r9b
    214fa495ec91:	4c 8b e0                                        	mov    r12,rax
    214fa495ec94:	48 3b c8                                        	cmp    rcx,rax
    214fa495ec97:	4c 0f 4c e1                                     	cmovl  r12,rcx
    214fa495ec9b:	49 8b c4                                        	mov    rax,r12
    214fa495ec9e:	4d 3b fc                                        	cmp    r15,r12
    214fa495eca1:	49 0f 4c c7                                     	cmovl  rax,r15
    214fa495eca5:	45 33 e4                                        	xor    r12d,r12d
    214fa495eca8:	4c 3b d8                                        	cmp    r11,rax
    214fa495ecab:	41 0f 9c c4                                     	setl   r12b
    214fa495ecaf:	4c 63 bd 10 fe ff ff                            	movsxd r15,DWORD PTR [rbp-0x1f0]
    214fa495ecb6:	8b 4d 10                                        	mov    ecx,DWORD PTR [rbp+0x10]
    214fa495ecb9:	4c 89 a5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r12
    214fa495ecc0:	4c 63 e1                                        	movsxd r12,ecx
    214fa495ecc3:	49 c1 e4 08                                     	shl    r12,0x8
    214fa495ecc7:	4d 2b fc                                        	sub    r15,r12
    214fa495ecca:	4c 0f af fa                                     	imul   r15,rdx
    214fa495ecce:	48 63 4d 18                                     	movsxd rcx,DWORD PTR [rbp+0x18]
    214fa495ecd2:	48 c1 e1 08                                     	shl    rcx,0x8
    214fa495ecd6:	48 63 95 00 fb ff ff                            	movsxd rdx,DWORD PTR [rbp-0x500]
    214fa495ecdd:	48 89 85 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rax
    214fa495ece4:	48 8b c1                                        	mov    rax,rcx
    214fa495ece7:	48 2b c2                                        	sub    rax,rdx
    214fa495ecea:	48 0f af 45 c0                                  	imul   rax,QWORD PTR [rbp-0x40]
    214fa495ecef:	48 63 95 00 fe ff ff                            	movsxd rdx,DWORD PTR [rbp-0x200]
    214fa495ecf6:	49 2b d4                                        	sub    rdx,r12
    214fa495ecf9:	48 0f af d6                                     	imul   rdx,rsi
    214fa495ecfd:	48 63 b5 28 fe ff ff                            	movsxd rsi,DWORD PTR [rbp-0x1d8]
    214fa495ed04:	4c 89 85 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r8
    214fa495ed0b:	4c 8b c1                                        	mov    r8,rcx
    214fa495ed0e:	4c 2b c6                                        	sub    r8,rsi
    214fa495ed11:	4c 0f af 85 b0 fd ff ff                         	imul   r8,QWORD PTR [rbp-0x250]
    214fa495ed19:	48 63 b5 60 fe ff ff                            	movsxd rsi,DWORD PTR [rbp-0x1a0]
    214fa495ed20:	49 2b f4                                        	sub    rsi,r12
    214fa495ed23:	48 0f af f3                                     	imul   rsi,rbx
    214fa495ed27:	4c 63 a5 50 fd ff ff                            	movsxd r12,DWORD PTR [rbp-0x2b0]
    214fa495ed2e:	49 2b cc                                        	sub    rcx,r12
    214fa495ed31:	48 0f af cf                                     	imul   rcx,rdi
    214fa495ed35:	4c 8b e7                                        	mov    r12,rdi
    214fa495ed38:	49 c1 fc 3f                                     	sar    r12,0x3f
    214fa495ed3c:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    214fa495ed40:	49 33 fc                                        	xor    rdi,r12
    214fa495ed43:	49 2b fc                                        	sub    rdi,r12
    214fa495ed46:	4c 8b e3                                        	mov    r12,rbx
    214fa495ed49:	49 c1 fc 3f                                     	sar    r12,0x3f
    214fa495ed4d:	48 89 9d 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],rbx
    214fa495ed54:	49 33 dc                                        	xor    rbx,r12
    214fa495ed57:	49 2b dc                                        	sub    rbx,r12
    214fa495ed5a:	48 03 fb                                        	add    rdi,rbx
    214fa495ed5d:	48 81 ff ff ff 7f 00                            	cmp    rdi,0x7fffff
    214fa495ed64:	0f 86 09 00 00 00                               	jbe    0x214fa495ed73
    214fa495ed6a:	48 8b 7d 30                                     	mov    rdi,QWORD PTR [rbp+0x30]
    214fa495ed6e:	e9 1a 00 00 00                                  	jmp    0x214fa495ed8d
    214fa495ed73:	48 c1 e7 08                                     	shl    rdi,0x8
    214fa495ed77:	41 bc ff ff ff 7f                               	mov    r12d,0x7fffffff
    214fa495ed7d:	4c 2b e7                                        	sub    r12,rdi
    214fa495ed80:	48 8b 7d 30                                     	mov    rdi,QWORD PTR [rbp+0x30]
    214fa495ed84:	49 3b fc                                        	cmp    rdi,r12
    214fa495ed87:	0f 8e 0e 00 00 00                               	jle    0x214fa495ed9b
    214fa495ed8d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    214fa495ed93:	49 8b dc                                        	mov    rbx,r12
    214fa495ed96:	e9 06 00 00 00                                  	jmp    0x214fa495eda1
    214fa495ed9b:	45 33 e4                                        	xor    r12d,r12d
    214fa495ed9e:	49 8b dc                                        	mov    rbx,r12
    214fa495eda1:	4c 03 c2                                        	add    r8,rdx
    214fa495eda4:	4c 03 f8                                        	add    r15,rax
    214fa495eda7:	48 8b 85 e0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x220]
    214fa495edae:	83 bd b8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x248],0x0
    214fa495edb5:	48 0f 45 85 48 fd ff ff                         	cmovne rax,QWORD PTR [rbp-0x2b8]
    214fa495edbd:	48 8b 95 a0 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x260]
    214fa495edc4:	83 bd 20 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1e0],0x0
    214fa495edcb:	48 0f 45 95 48 fd ff ff                         	cmovne rdx,QWORD PTR [rbp-0x2b8]
    214fa495edd3:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    214fa495edda:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    214fa495ede1:	4c 0f 45 a5 a8 fd ff ff                         	cmovne r12,QWORD PTR [rbp-0x258]
    214fa495ede9:	48 89 85 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rax
    214fa495edf0:	48 8b 85 40 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x2c0]
    214fa495edf7:	83 bd 08 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1f8],0x0
    214fa495edfe:	48 0f 45 85 a8 fd ff ff                         	cmovne rax,QWORD PTR [rbp-0x258]
    214fa495ee06:	48 89 95 08 fb ff ff                            	mov    QWORD PTR [rbp-0x4f8],rdx
    214fa495ee0d:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    214fa495ee14:	45 85 c9                                        	test   r9d,r9d
    214fa495ee17:	49 0f 45 d3                                     	cmovne rdx,r11
    214fa495ee1b:	4c 8b 8d 78 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x188]
    214fa495ee22:	83 bd 68 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x198],0x0
    214fa495ee29:	4d 0f 45 cb                                     	cmovne r9,r11
    214fa495ee2d:	4c 8d 1c 31                                     	lea    r11,[rcx+rsi*1]
    214fa495ee31:	48 8b b5 80 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x280]
    214fa495ee38:	48 f7 de                                        	neg    rsi
    214fa495ee3b:	48 8b 8d f0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x210]
    214fa495ee42:	48 f7 d9                                        	neg    rcx
    214fa495ee45:	48 89 b5 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],rsi
    214fa495ee4c:	48 8b b5 38 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1c8]
    214fa495ee53:	48 f7 de                                        	neg    rsi
    214fa495ee56:	c4 e1 82 2a ef                                  	vcvtsi2ss xmm5,xmm15,rdi
    214fa495ee5b:	48 89 b5 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],rsi
    214fa495ee62:	48 8b b5 b0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x250]
    214fa495ee69:	48 c1 fe 3f                                     	sar    rsi,0x3f
    214fa495ee6d:	4c 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],r15
    214fa495ee74:	4c 8b bd b0 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x250]
    214fa495ee7b:	4c 33 fe                                        	xor    r15,rsi
    214fa495ee7e:	4c 2b fe                                        	sub    r15,rsi
    214fa495ee81:	48 8b b5 f0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x210]
    214fa495ee88:	48 c1 fe 3f                                     	sar    rsi,0x3f
    214fa495ee8c:	4c 89 a5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r12
    214fa495ee93:	4c 8b a5 f0 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x210]
    214fa495ee9a:	4c 33 e6                                        	xor    r12,rsi
    214fa495ee9d:	4c 2b e6                                        	sub    r12,rsi
    214fa495eea0:	4d 03 e7                                        	add    r12,r15
    214fa495eea3:	48 89 85 90 fb ff ff                            	mov    QWORD PTR [rbp-0x470],rax
    214fa495eeaa:	4c 89 8d f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r9
    214fa495eeb1:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    214fa495eeb8:	48 89 8d d8 fb ff ff                            	mov    QWORD PTR [rbp-0x428],rcx
    214fa495eebf:	49 81 fc ff ff 7f 00                            	cmp    r12,0x7fffff
    214fa495eec6:	0f 87 16 00 00 00                               	ja     0x214fa495eee2
    214fa495eecc:	49 c1 e4 08                                     	shl    r12,0x8
    214fa495eed0:	41 bf ff ff ff 7f                               	mov    r15d,0x7fffffff
    214fa495eed6:	4d 2b fc                                        	sub    r15,r12
    214fa495eed9:	49 3b ff                                        	cmp    rdi,r15
    214fa495eedc:	0f 8e 1b 00 00 00                               	jle    0x214fa495eefd
    214fa495eee2:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa495eee6:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa495eeeb:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa495eef0:	c5 ca 5e ed                                     	vdivss xmm5,xmm6,xmm5
    214fa495eef4:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    214fa495eef8:	e9 60 04 00 00                                  	jmp    0x214fa495f35d
    214fa495eefd:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa495ef01:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa495ef06:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa495ef0b:	c5 ca 5e ed                                     	vdivss xmm5,xmm6,xmm5
    214fa495ef0f:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    214fa495ef13:	85 db                                           	test   ebx,ebx
    214fa495ef15:	0f 85 42 04 00 00                               	jne    0x214fa495f35d
    214fa495ef1b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa495ef1e:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa495ef22:	45 8b bc 3c d8 00 00 00                         	mov    r15d,DWORD PTR [r12+rdi*1+0xd8]
    214fa495ef2a:	c4 c1 79 6e f7                                  	vmovd  xmm6,r15d
    214fa495ef2f:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa495ef34:	41 8b 9c 3c f0 00 00 00                         	mov    ebx,DWORD PTR [r12+rdi*1+0xf0]
    214fa495ef3c:	c4 e3 49 22 f3 01                               	vpinsrd xmm6,xmm6,ebx,0x1
    214fa495ef42:	41 8b b4 3c 08 01 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0x108]
    214fa495ef4a:	c4 e3 49 22 f6 02                               	vpinsrd xmm6,xmm6,esi,0x2
    214fa495ef50:	48 89 b5 e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rsi
    214fa495ef57:	41 8b b4 3c 20 01 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0x120]
    214fa495ef5f:	c4 e3 49 22 f6 03                               	vpinsrd xmm6,xmm6,esi,0x3
    214fa495ef65:	48 89 b5 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rsi
    214fa495ef6c:	41 8b b4 3c d0 00 00 00                         	mov    esi,DWORD PTR [r12+rdi*1+0xd0]
    214fa495ef74:	c5 79 6e c6                                     	vmovd  xmm8,esi
    214fa495ef78:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa495ef7d:	48 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rbx
    214fa495ef84:	41 8b 9c 3c e8 00 00 00                         	mov    ebx,DWORD PTR [r12+rdi*1+0xe8]
    214fa495ef8c:	c4 63 39 22 c3 01                               	vpinsrd xmm8,xmm8,ebx,0x1
    214fa495ef92:	4c 89 bd 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r15
    214fa495ef99:	45 8b bc 3c 00 01 00 00                         	mov    r15d,DWORD PTR [r12+rdi*1+0x100]
    214fa495efa1:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    214fa495efa7:	41 8b 8c 3c 18 01 00 00                         	mov    ecx,DWORD PTR [r12+rdi*1+0x118]
    214fa495efaf:	c4 63 39 22 c1 03                               	vpinsrd xmm8,xmm8,ecx,0x3
    214fa495efb5:	8b 7d 20                                        	mov    edi,DWORD PTR [rbp+0x20]
    214fa495efb8:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    214fa495efbb:	81 ff 01 00 01 00                               	cmp    edi,0x10001
    214fa495efc1:	0f 8d 87 03 00 00                               	jge    0x214fa495f34e
    214fa495efc7:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    214fa495efce:	8b 7d 40                                        	mov    edi,DWORD PTR [rbp+0x40]
    214fa495efd1:	c5 79 6e cf                                     	vmovd  xmm9,edi
    214fa495efd5:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa495efda:	44 8b 65 38                                     	mov    r12d,DWORD PTR [rbp+0x38]
    214fa495efde:	c4 41 79 6e d4                                  	vmovd  xmm10,r12d
    214fa495efe3:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa495efe8:	8b 7d 28                                        	mov    edi,DWORD PTR [rbp+0x28]
    214fa495efeb:	2b 7d 18                                        	sub    edi,DWORD PTR [rbp+0x18]
    214fa495efee:	4c 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r8
    214fa495eff5:	81 ff 00 00 01 00                               	cmp    edi,0x10000
    214fa495effb:	0f 8f 22 03 00 00                               	jg     0x214fa495f323
    214fa495f001:	48 c7 c7 00 00 00 80                            	mov    rdi,0xffffffff80000000
    214fa495f008:	4d 8b c3                                        	mov    r8,r11
    214fa495f00b:	4c 03 c7                                        	add    r8,rdi
    214fa495f00e:	48 b8 00 00 00 00 ff ff ff ff                   	movabs rax,0xffffffff00000000
    214fa495f018:	4c 3b c0                                        	cmp    r8,rax
    214fa495f01b:	0f 82 02 03 00 00                               	jb     0x214fa495f323
    214fa495f021:	4f 8d 04 19                                     	lea    r8,[r9+r11*1]
    214fa495f025:	44 8b 4d 10                                     	mov    r9d,DWORD PTR [rbp+0x10]
    214fa495f029:	41 83 f1 ff                                     	xor    r9d,0xffffffff
    214fa495f02d:	8b 45 20                                        	mov    eax,DWORD PTR [rbp+0x20]
    214fa495f030:	44 03 c8                                        	add    r9d,eax
    214fa495f033:	4d 63 c9                                        	movsxd r9,r9d
    214fa495f036:	48 8b 85 20 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1e0]
    214fa495f03d:	49 0f af c1                                     	imul   rax,r9
    214fa495f041:	48 c1 e0 08                                     	shl    rax,0x8
    214fa495f045:	4c 89 8d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r9
    214fa495f04c:	4c 8b c8                                        	mov    r9,rax
    214fa495f04f:	49 c1 f9 3f                                     	sar    r9,0x3f
    214fa495f053:	4c 23 c8                                        	and    r9,rax
    214fa495f056:	4d 03 c1                                        	add    r8,r9
    214fa495f059:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa495f05d:	41 83 f1 ff                                     	xor    r9d,0xffffffff
    214fa495f061:	8b 7d 28                                        	mov    edi,DWORD PTR [rbp+0x28]
    214fa495f064:	44 03 cf                                        	add    r9d,edi
    214fa495f067:	4d 63 c9                                        	movsxd r9,r9d
    214fa495f06a:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    214fa495f06e:	49 0f af f9                                     	imul   rdi,r9
    214fa495f072:	48 c1 e7 08                                     	shl    rdi,0x8
    214fa495f076:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    214fa495f07d:	4c 8b cf                                        	mov    r9,rdi
    214fa495f080:	49 c1 f9 3f                                     	sar    r9,0x3f
    214fa495f084:	4c 23 cf                                        	and    r9,rdi
    214fa495f087:	4d 03 c1                                        	add    r8,r9
    214fa495f08a:	49 81 f8 01 00 00 80                            	cmp    r8,0xffffffff80000001
    214fa495f091:	0f 8c 8c 02 00 00                               	jl     0x214fa495f323
    214fa495f097:	4e 8d 04 1a                                     	lea    r8,[rdx+r11*1]
    214fa495f09b:	45 33 db                                        	xor    r11d,r11d
    214fa495f09e:	48 85 c0                                        	test   rax,rax
    214fa495f0a1:	4c 0f 4f d8                                     	cmovg  r11,rax
    214fa495f0a5:	4d 03 c3                                        	add    r8,r11
    214fa495f0a8:	45 33 db                                        	xor    r11d,r11d
    214fa495f0ab:	48 85 ff                                        	test   rdi,rdi
    214fa495f0ae:	4c 0f 4f df                                     	cmovg  r11,rdi
    214fa495f0b2:	4b 8d 3c 03                                     	lea    rdi,[r11+r8*1]
    214fa495f0b6:	45 33 c9                                        	xor    r9d,r9d
    214fa495f0b9:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    214fa495f0c0:	0f 8f 56 02 00 00                               	jg     0x214fa495f31c
    214fa495f0c6:	42 8d 3c 26                                     	lea    edi,[rsi+r12*1]
    214fa495f0ca:	c5 79 6e df                                     	vmovd  xmm11,edi
    214fa495f0ce:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa495f0d3:	42 8d 3c 23                                     	lea    edi,[rbx+r12*1]
    214fa495f0d7:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    214fa495f0dd:	43 8d 3c 27                                     	lea    edi,[r15+r12*1]
    214fa495f0e1:	c4 63 21 22 df 02                               	vpinsrd xmm11,xmm11,edi,0x2
    214fa495f0e7:	42 8d 3c 21                                     	lea    edi,[rcx+r12*1]
    214fa495f0eb:	c4 63 21 22 df 03                               	vpinsrd xmm11,xmm11,edi,0x3
    214fa495f0f1:	4c 8b 85 60 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1a0]
    214fa495f0f8:	48 c7 c7 00 00 00 80                            	mov    rdi,0xffffffff80000000
    214fa495f0ff:	4c 03 c7                                        	add    r8,rdi
    214fa495f102:	4c 8b 1d 07 ff ff ff                            	mov    r11,QWORD PTR [rip+0xffffffffffffff07]        # 0x214fa495f010
    214fa495f109:	4d 3b c3                                        	cmp    r8,r11
    214fa495f10c:	0f 82 e3 01 00 00                               	jb     0x214fa495f2f5
    214fa495f112:	4c 8b 85 90 fb ff ff                            	mov    r8,QWORD PTR [rbp-0x470]
    214fa495f119:	4c 8b bd 60 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a0]
    214fa495f120:	4b 8d 04 38                                     	lea    rax,[r8+r15*1]
    214fa495f124:	48 8b 9d 68 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x198]
    214fa495f12b:	48 0f af 9d d8 fb ff ff                         	imul   rbx,QWORD PTR [rbp-0x428]
    214fa495f133:	48 c1 e3 08                                     	shl    rbx,0x8
    214fa495f137:	48 8b cb                                        	mov    rcx,rbx
    214fa495f13a:	48 c1 f9 3f                                     	sar    rcx,0x3f
    214fa495f13e:	48 23 cb                                        	and    rcx,rbx
    214fa495f141:	48 03 c1                                        	add    rax,rcx
    214fa495f144:	48 8b 8d b0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x250]
    214fa495f14b:	48 0f af 8d 58 fe ff ff                         	imul   rcx,QWORD PTR [rbp-0x1a8]
    214fa495f153:	48 c1 e1 08                                     	shl    rcx,0x8
    214fa495f157:	48 8b f1                                        	mov    rsi,rcx
    214fa495f15a:	48 c1 fe 3f                                     	sar    rsi,0x3f
    214fa495f15e:	48 23 f1                                        	and    rsi,rcx
    214fa495f161:	48 03 c6                                        	add    rax,rsi
    214fa495f164:	48 3d 01 00 00 80                               	cmp    rax,0xffffffff80000001
    214fa495f16a:	0f 8c 8c 01 00 00                               	jl     0x214fa495f2fc
    214fa495f170:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    214fa495f177:	4a 8d 34 38                                     	lea    rsi,[rax+r15*1]
    214fa495f17b:	4d 8b c1                                        	mov    r8,r9
    214fa495f17e:	48 85 db                                        	test   rbx,rbx
    214fa495f181:	4c 0f 4f c3                                     	cmovg  r8,rbx
    214fa495f185:	4c 03 c6                                        	add    r8,rsi
    214fa495f188:	49 8b d9                                        	mov    rbx,r9
    214fa495f18b:	48 85 c9                                        	test   rcx,rcx
    214fa495f18e:	48 0f 4f d9                                     	cmovg  rbx,rcx
    214fa495f192:	4c 03 c3                                        	add    r8,rbx
    214fa495f195:	49 81 f8 fe ff ff 7f                            	cmp    r8,0x7ffffffe
    214fa495f19c:	0f 8f 5a 01 00 00                               	jg     0x214fa495f2fc
    214fa495f1a2:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    214fa495f1a6:	8b 9d 48 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1b8]
    214fa495f1ac:	41 03 d8                                        	add    ebx,r8d
    214fa495f1af:	c5 79 6e e3                                     	vmovd  xmm12,ebx
    214fa495f1b3:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa495f1b8:	8b 9d 08 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1f8]
    214fa495f1be:	41 03 d8                                        	add    ebx,r8d
    214fa495f1c1:	c4 63 19 22 e3 01                               	vpinsrd xmm12,xmm12,ebx,0x1
    214fa495f1c7:	8b 9d e0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x220]
    214fa495f1cd:	41 03 d8                                        	add    ebx,r8d
    214fa495f1d0:	c4 63 19 22 e3 02                               	vpinsrd xmm12,xmm12,ebx,0x2
    214fa495f1d6:	8b 9d 78 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x188]
    214fa495f1dc:	41 03 d8                                        	add    ebx,r8d
    214fa495f1df:	c4 63 19 22 e3 03                               	vpinsrd xmm12,xmm12,ebx,0x3
    214fa495f1e5:	48 03 bd d0 fd ff ff                            	add    rdi,QWORD PTR [rbp-0x230]
    214fa495f1ec:	49 3b fb                                        	cmp    rdi,r11
    214fa495f1ef:	0f 82 ef 00 00 00                               	jb     0x214fa495f2e4
    214fa495f1f5:	48 8b bd 08 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x4f8]
    214fa495f1fc:	4c 8b 9d d0 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x230]
    214fa495f203:	49 8d 1c 3b                                     	lea    rbx,[r11+rdi*1]
    214fa495f207:	48 8b 8d 68 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x198]
    214fa495f20e:	48 0f af 8d 10 fe ff ff                         	imul   rcx,QWORD PTR [rbp-0x1f0]
    214fa495f216:	48 c1 e1 08                                     	shl    rcx,0x8
    214fa495f21a:	48 8b f1                                        	mov    rsi,rcx
    214fa495f21d:	48 c1 fe 3f                                     	sar    rsi,0x3f
    214fa495f221:	48 23 f1                                        	and    rsi,rcx
    214fa495f224:	48 03 de                                        	add    rbx,rsi
    214fa495f227:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    214fa495f22e:	48 0f af 75 c0                                  	imul   rsi,QWORD PTR [rbp-0x40]
    214fa495f233:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa495f237:	48 8b fe                                        	mov    rdi,rsi
    214fa495f23a:	48 c1 ff 3f                                     	sar    rdi,0x3f
    214fa495f23e:	48 23 fe                                        	and    rdi,rsi
    214fa495f241:	48 03 fb                                        	add    rdi,rbx
    214fa495f244:	48 81 ff 01 00 00 80                            	cmp    rdi,0xffffffff80000001
    214fa495f24b:	0f 8c 93 00 00 00                               	jl     0x214fa495f2e4
    214fa495f251:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    214fa495f258:	49 8d 1c 3b                                     	lea    rbx,[r11+rdi*1]
    214fa495f25c:	49 8b f9                                        	mov    rdi,r9
    214fa495f25f:	48 85 c9                                        	test   rcx,rcx
    214fa495f262:	48 0f 4f f9                                     	cmovg  rdi,rcx
    214fa495f266:	48 03 fb                                        	add    rdi,rbx
    214fa495f269:	48 85 f6                                        	test   rsi,rsi
    214fa495f26c:	4c 0f 4f ce                                     	cmovg  r9,rsi
    214fa495f270:	49 03 f9                                        	add    rdi,r9
    214fa495f273:	48 81 ff fe ff ff 7f                            	cmp    rdi,0x7ffffffe
    214fa495f27a:	0f 8f 53 00 00 00                               	jg     0x214fa495f2d3
    214fa495f280:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa495f283:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f287:	8b 8c 3b e0 00 00 00                            	mov    ecx,DWORD PTR [rbx+rdi*1+0xe0]
    214fa495f28e:	8b 75 48                                        	mov    esi,DWORD PTR [rbp+0x48]
    214fa495f291:	03 ce                                           	add    ecx,esi
    214fa495f293:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    214fa495f297:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa495f29c:	8b 8c 3b f8 00 00 00                            	mov    ecx,DWORD PTR [rbx+rdi*1+0xf8]
    214fa495f2a3:	03 ce                                           	add    ecx,esi
    214fa495f2a5:	c4 e3 79 22 c1 01                               	vpinsrd xmm0,xmm0,ecx,0x1
    214fa495f2ab:	8b 8c 3b 10 01 00 00                            	mov    ecx,DWORD PTR [rbx+rdi*1+0x110]
    214fa495f2b2:	03 ce                                           	add    ecx,esi
    214fa495f2b4:	c4 e3 79 22 c1 02                               	vpinsrd xmm0,xmm0,ecx,0x2
    214fa495f2ba:	8b 8c 3b 28 01 00 00                            	mov    ecx,DWORD PTR [rbx+rdi*1+0x128]
    214fa495f2c1:	03 ce                                           	add    ecx,esi
    214fa495f2c3:	c4 e3 79 22 c1 03                               	vpinsrd xmm0,xmm0,ecx,0x3
    214fa495f2c9:	33 ff                                           	xor    edi,edi
    214fa495f2cb:	44 8b df                                        	mov    r11d,edi
    214fa495f2ce:	e9 e0 00 00 00                                  	jmp    0x214fa495f3b3
    214fa495f2d3:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f2d7:	33 ff                                           	xor    edi,edi
    214fa495f2d9:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa495f2df:	e9 cf 00 00 00                                  	jmp    0x214fa495f3b3
    214fa495f2e4:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f2e8:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa495f2ee:	33 ff                                           	xor    edi,edi
    214fa495f2f0:	e9 be 00 00 00                                  	jmp    0x214fa495f3b3
    214fa495f2f5:	4c 8b bd 60 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a0]
    214fa495f2fc:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    214fa495f300:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    214fa495f307:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f30b:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa495f311:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    214fa495f315:	33 ff                                           	xor    edi,edi
    214fa495f317:	e9 97 00 00 00                                  	jmp    0x214fa495f3b3
    214fa495f31c:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    214fa495f323:	4c 8b bd 60 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a0]
    214fa495f32a:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    214fa495f32e:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    214fa495f335:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f339:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    214fa495f33d:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    214fa495f341:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa495f347:	33 ff                                           	xor    edi,edi
    214fa495f349:	e9 65 00 00 00                                  	jmp    0x214fa495f3b3
    214fa495f34e:	45 33 e4                                        	xor    r12d,r12d
    214fa495f351:	48 8b 8d d8 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x428]
    214fa495f358:	e9 14 00 00 00                                  	jmp    0x214fa495f371
    214fa495f35d:	8b 7d 20                                        	mov    edi,DWORD PTR [rbp+0x20]
    214fa495f360:	2b 7d 10                                        	sub    edi,DWORD PTR [rbp+0x10]
    214fa495f363:	41 bc 01 00 00 00                               	mov    r12d,0x1
    214fa495f369:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    214fa495f36d:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa495f371:	c5 79 6e 4d 40                                  	vmovd  xmm9,DWORD PTR [rbp+0x40]
    214fa495f376:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa495f37b:	c5 79 6e 55 38                                  	vmovd  xmm10,DWORD PTR [rbp+0x38]
    214fa495f380:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa495f385:	4d 8b f8                                        	mov    r15,r8
    214fa495f388:	c5 79 28 e0                                     	vmovapd xmm12,xmm0
    214fa495f38c:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    214fa495f390:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    214fa495f397:	41 8b fc                                        	mov    edi,r12d
    214fa495f39a:	41 bb 01 00 00 00                               	mov    r11d,0x1
    214fa495f3a0:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f3a4:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    214fa495f3ab:	44 8b 65 38                                     	mov    r12d,DWORD PTR [rbp+0x38]
    214fa495f3af:	44 8b 45 40                                     	mov    r8d,DWORD PTR [rbp+0x40]
    214fa495f3b3:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    214fa495f3b7:	8b 8c 33 c8 3c 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x3cc8]
    214fa495f3be:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    214fa495f3c6:	c5 78 11 85 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm8
    214fa495f3ce:	48 89 bd 20 fb ff ff                            	mov    QWORD PTR [rbp-0x4e0],rdi
    214fa495f3d5:	c5 78 11 8d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm9
    214fa495f3dd:	c5 78 11 95 20 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3e0],xmm10
    214fa495f3e5:	4c 89 9d a0 fb ff ff                            	mov    QWORD PTR [rbp-0x460],r11
    214fa495f3ec:	83 bc 33 c8 3c 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x3cc8],0x0
    214fa495f3f4:	0f 85 7c 00 00 00                               	jne    0x214fa495f476
    214fa495f3fa:	8b 8c 33 ec 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0xec]
    214fa495f401:	83 bc 33 ec 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0xec],0x0
    214fa495f409:	0f 85 67 00 00 00                               	jne    0x214fa495f476
    214fa495f40f:	8b 8d 78 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x288]
    214fa495f415:	44 8b 8c 0b 30 01 00 00                         	mov    r9d,DWORD PTR [rbx+rcx*1+0x130]
    214fa495f41d:	83 bc 0b 30 01 00 00 00                         	cmp    DWORD PTR [rbx+rcx*1+0x130],0x0
    214fa495f425:	0f 85 0b 00 00 00                               	jne    0x214fa495f436
    214fa495f42b:	41 b9 01 00 00 00                               	mov    r9d,0x1
    214fa495f431:	e9 43 00 00 00                                  	jmp    0x214fa495f479
    214fa495f436:	44 8b 8c 0b 38 01 00 00                         	mov    r9d,DWORD PTR [rbx+rcx*1+0x138]
    214fa495f43e:	83 bc 0b 38 01 00 00 00                         	cmp    DWORD PTR [rbx+rcx*1+0x138],0x0
    214fa495f446:	0f 85 1f 00 00 00                               	jne    0x214fa495f46b
    214fa495f44c:	8b 8c 0b 34 01 00 00                            	mov    ecx,DWORD PTR [rbx+rcx*1+0x134]
    214fa495f453:	83 f9 01                                        	cmp    ecx,0x1
    214fa495f456:	0f 84 0f 00 00 00                               	je     0x214fa495f46b
    214fa495f45c:	45 33 c9                                        	xor    r9d,r9d
    214fa495f45f:	83 f9 02                                        	cmp    ecx,0x2
    214fa495f462:	41 0f 94 c1                                     	sete   r9b
    214fa495f466:	e9 0e 00 00 00                                  	jmp    0x214fa495f479
    214fa495f46b:	41 b9 01 00 00 00                               	mov    r9d,0x1
    214fa495f471:	e9 03 00 00 00                                  	jmp    0x214fa495f479
    214fa495f476:	45 33 c9                                        	xor    r9d,r9d
    214fa495f479:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    214fa495f480:	83 bd 88 fd ff ff 04                            	cmp    DWORD PTR [rbp-0x278],0x4
    214fa495f487:	0f 84 0a 00 00 00                               	je     0x214fa495f497
    214fa495f48d:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa495f492:	e9 50 01 00 00                                  	jmp    0x214fa495f5e7
    214fa495f497:	8b 8c 33 80 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x80]
    214fa495f49e:	83 bc 33 80 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x80],0x0
    214fa495f4a6:	0f 85 69 00 00 00                               	jne    0x214fa495f515
    214fa495f4ac:	8b 8c 33 a4 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0xa4]
    214fa495f4b3:	83 bc 33 a4 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0xa4],0x0
    214fa495f4bb:	0f 85 54 00 00 00                               	jne    0x214fa495f515
    214fa495f4c1:	8b 8c 33 30 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x530]
    214fa495f4c8:	83 bc 33 30 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x530],0x0
    214fa495f4d0:	0f 85 3f 00 00 00                               	jne    0x214fa495f515
    214fa495f4d6:	8b 8c 33 70 37 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x3770]
    214fa495f4dd:	83 bc 33 70 37 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x3770],0x0
    214fa495f4e5:	0f 85 2a 00 00 00                               	jne    0x214fa495f515
    214fa495f4eb:	8b 8c 33 74 37 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x3774]
    214fa495f4f2:	83 bc 33 74 37 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x3774],0x0
    214fa495f4fa:	0f 85 15 00 00 00                               	jne    0x214fa495f515
    214fa495f500:	8b 8c 33 20 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x520]
    214fa495f507:	83 bc 33 20 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x520],0x0
    214fa495f50f:	0f 85 0a 00 00 00                               	jne    0x214fa495f51f
    214fa495f515:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa495f51a:	e9 c8 00 00 00                                  	jmp    0x214fa495f5e7
    214fa495f51f:	8b 8c 33 24 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x524]
    214fa495f526:	83 bc 33 24 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x524],0x0
    214fa495f52e:	74 e5                                           	je     0x214fa495f515
    214fa495f530:	8b 8c 33 28 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x528]
    214fa495f537:	83 bc 33 28 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x528],0x0
    214fa495f53f:	74 d4                                           	je     0x214fa495f515
    214fa495f541:	8b 8c 33 2c 05 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x52c]
    214fa495f548:	83 bc 33 2c 05 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x52c],0x0
    214fa495f550:	74 c3                                           	je     0x214fa495f515
    214fa495f552:	8b 4c 33 74                                     	mov    ecx,DWORD PTR [rbx+rsi*1+0x74]
    214fa495f556:	83 7c 33 74 00                                  	cmp    DWORD PTR [rbx+rsi*1+0x74],0x0
    214fa495f55b:	0f 84 34 00 00 00                               	je     0x214fa495f595
    214fa495f561:	8b 4c 33 78                                     	mov    ecx,DWORD PTR [rbx+rsi*1+0x78]
    214fa495f565:	45 33 c9                                        	xor    r9d,r9d
    214fa495f568:	81 f9 02 03 00 00                               	cmp    ecx,0x302
    214fa495f56e:	41 0f 95 c1                                     	setne  r9b
    214fa495f572:	83 f9 01                                        	cmp    ecx,0x1
    214fa495f575:	0f 95 c1                                        	setne  cl
    214fa495f578:	0f b6 c9                                        	movzx  ecx,cl
    214fa495f57b:	41 85 c9                                        	test   r9d,ecx
    214fa495f57e:	75 95                                           	jne    0x214fa495f515
    214fa495f580:	8b 4c 33 7c                                     	mov    ecx,DWORD PTR [rbx+rsi*1+0x7c]
    214fa495f584:	81 f9 03 03 00 00                               	cmp    ecx,0x303
    214fa495f58a:	0f 84 05 00 00 00                               	je     0x214fa495f595
    214fa495f590:	83 f9 01                                        	cmp    ecx,0x1
    214fa495f593:	75 80                                           	jne    0x214fa495f515
    214fa495f595:	83 bd 40 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1c0],0x0
    214fa495f59c:	0f 85 07 00 00 00                               	jne    0x214fa495f5a9
    214fa495f5a2:	33 c9                                           	xor    ecx,ecx
    214fa495f5a4:	e9 3e 00 00 00                                  	jmp    0x214fa495f5e7
    214fa495f5a9:	8b 8c 33 90 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x90]
    214fa495f5b0:	83 bc 33 90 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x90],0x0
    214fa495f5b8:	0f 85 57 ff ff ff                               	jne    0x214fa495f515
    214fa495f5be:	8b 8c 33 94 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x94]
    214fa495f5c5:	83 bc 33 94 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x94],0x0
    214fa495f5cd:	0f 85 42 ff ff ff                               	jne    0x214fa495f515
    214fa495f5d3:	8b 8c 33 98 00 00 00                            	mov    ecx,DWORD PTR [rbx+rsi*1+0x98]
    214fa495f5da:	33 c9                                           	xor    ecx,ecx
    214fa495f5dc:	83 bc 33 98 00 00 00 00                         	cmp    DWORD PTR [rbx+rsi*1+0x98],0x0
    214fa495f5e4:	0f 95 c1                                        	setne  cl
    214fa495f5e7:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa495f5eb:	42 c7 44 0b 18 00 00 00 00                      	mov    DWORD PTR [rbx+r9*1+0x18],0x0
    214fa495f5f4:	48 89 8d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rcx
    214fa495f5fb:	8b 8d d8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x228]
    214fa495f601:	83 f9 08                                        	cmp    ecx,0x8
    214fa495f604:	0f 8c 33 02 00 00                               	jl     0x214fa495f83d
    214fa495f60a:	8b 75 28                                        	mov    esi,DWORD PTR [rbp+0x28]
    214fa495f60d:	2b 75 18                                        	sub    esi,DWORD PTR [rbp+0x18]
    214fa495f610:	48 63 f6                                        	movsxd rsi,esi
    214fa495f613:	48 8b f9                                        	mov    rdi,rcx
    214fa495f616:	48 0f af fe                                     	imul   rdi,rsi
    214fa495f61a:	48 83 ff 40                                     	cmp    rdi,0x40
    214fa495f61e:	0f 8c 19 02 00 00                               	jl     0x214fa495f83d
    214fa495f624:	8b bd 50 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x2b0]
    214fa495f62a:	3b bd 28 fe ff ff                               	cmp    edi,DWORD PTR [rbp-0x1d8]
    214fa495f630:	0f 84 80 00 00 00                               	je     0x214fa495f6b6
    214fa495f636:	48 8b b5 20 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1e0]
    214fa495f63d:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa495f641:	c4 61 82 2a ee                                  	vcvtsi2ss xmm13,xmm15,rsi
    214fa495f646:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    214fa495f64a:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    214fa495f64f:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    214fa495f654:	c4 41 6a 5e ed                                  	vdivss xmm13,xmm2,xmm13
    214fa495f659:	c4 41 78 28 ed                                  	vmovaps xmm13,xmm13
    214fa495f65e:	48 8b 75 b8                                     	mov    rsi,QWORD PTR [rbp-0x48]
    214fa495f662:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa495f666:	c4 e1 82 2a d6                                  	vcvtsi2ss xmm2,xmm15,rsi
    214fa495f66b:	c5 92 59 d2                                     	vmulss xmm2,xmm13,xmm2
    214fa495f66f:	49 63 f4                                        	movsxd rsi,r12d
    214fa495f672:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    214fa495f679:	4c 8d 1c 1a                                     	lea    r11,[rdx+rbx*1]
    214fa495f67d:	4c 03 de                                        	add    r11,rsi
    214fa495f680:	c4 c1 82 2a db                                  	vcvtsi2ss xmm3,xmm15,r11
    214fa495f685:	49 ba 60 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2860
    214fa495f68f:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    214fa495f694:	c5 12 59 eb                                     	vmulss xmm13,xmm13,xmm3
    214fa495f698:	c4 41 79 28 fd                                  	vmovapd xmm15,xmm13
    214fa495f69d:	c5 79 28 ea                                     	vmovapd xmm13,xmm2
    214fa495f6a1:	c4 c1 79 28 d7                                  	vmovapd xmm2,xmm15
    214fa495f6a6:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f6aa:	44 8b 9d a0 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x460]
    214fa495f6b1:	e9 08 00 00 00                                  	jmp    0x214fa495f6be
    214fa495f6b6:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    214fa495f6ba:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    214fa495f6be:	8b b5 00 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x500]
    214fa495f6c4:	3b b5 28 fe ff ff                               	cmp    esi,DWORD PTR [rbp-0x1d8]
    214fa495f6ca:	0f 84 79 00 00 00                               	je     0x214fa495f749
    214fa495f6d0:	4c 8b 9d d8 fb ff ff                            	mov    r11,QWORD PTR [rbp-0x428]
    214fa495f6d7:	49 c1 e3 08                                     	shl    r11,0x8
    214fa495f6db:	c4 c1 82 2a db                                  	vcvtsi2ss xmm3,xmm15,r11
    214fa495f6e0:	c5 d9 76 e4                                     	vpcmpeqd xmm4,xmm4,xmm4
    214fa495f6e4:	c5 d9 72 f4 19                                  	vpslld xmm4,xmm4,0x19
    214fa495f6e9:	c5 d9 72 d4 02                                  	vpsrld xmm4,xmm4,0x2
    214fa495f6ee:	c5 da 5e db                                     	vdivss xmm3,xmm4,xmm3
    214fa495f6f2:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    214fa495f6f6:	4c 8b 9d b0 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x250]
    214fa495f6fd:	49 c1 e3 08                                     	shl    r11,0x8
    214fa495f701:	c4 c1 82 2a e3                                  	vcvtsi2ss xmm4,xmm15,r11
    214fa495f706:	c5 e2 59 e4                                     	vmulss xmm4,xmm3,xmm4
    214fa495f70a:	4d 63 d8                                        	movsxd r11,r8d
    214fa495f70d:	4a 8d 1c 38                                     	lea    rbx,[rax+r15*1]
    214fa495f711:	4c 03 db                                        	add    r11,rbx
    214fa495f714:	c4 c1 82 2a f3                                  	vcvtsi2ss xmm6,xmm15,r11
    214fa495f719:	4c 8b 15 67 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff67]        # 0x214fa495f687
    214fa495f720:	c4 c1 48 57 32                                  	vxorps xmm6,xmm6,XMMWORD PTR [r10]
    214fa495f725:	c5 e2 59 f6                                     	vmulss xmm6,xmm3,xmm6
    214fa495f729:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    214fa495f72d:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    214fa495f731:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f735:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    214fa495f73d:	44 8b 9d a0 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x460]
    214fa495f744:	e9 08 00 00 00                                  	jmp    0x214fa495f751
    214fa495f749:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    214fa495f74d:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    214fa495f751:	3b f7                                           	cmp    esi,edi
    214fa495f753:	0f 84 be 00 00 00                               	je     0x214fa495f817
    214fa495f759:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    214fa495f760:	49 c1 e3 08                                     	shl    r11,0x8
    214fa495f764:	c4 41 82 2a c3                                  	vcvtsi2ss xmm8,xmm15,r11
    214fa495f769:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa495f76e:	c4 c1 31 72 f1 19                               	vpslld xmm9,xmm9,0x19
    214fa495f774:	c4 c1 31 72 d1 02                               	vpsrld xmm9,xmm9,0x2
    214fa495f77a:	c4 41 32 5e c0                                  	vdivss xmm8,xmm9,xmm8
    214fa495f77f:	c4 41 78 28 c0                                  	vmovaps xmm8,xmm8
    214fa495f784:	4c 8b 5d c0                                     	mov    r11,QWORD PTR [rbp-0x40]
    214fa495f788:	49 c1 e3 08                                     	shl    r11,0x8
    214fa495f78c:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    214fa495f791:	c4 41 3a 59 c9                                  	vmulss xmm9,xmm8,xmm9
    214fa495f796:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    214fa495f79a:	4c 8b 9d d0 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x230]
    214fa495f7a1:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    214fa495f7a8:	49 8d 1c 03                                     	lea    rbx,[r11+rax*1]
    214fa495f7ac:	48 03 fb                                        	add    rdi,rbx
    214fa495f7af:	c4 61 82 2a d7                                  	vcvtsi2ss xmm10,xmm15,rdi
    214fa495f7b4:	4c 8b 15 cc fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffecc]        # 0x214fa495f687
    214fa495f7bb:	c4 41 28 57 12                                  	vxorps xmm10,xmm10,XMMWORD PTR [r10]
    214fa495f7c0:	c4 41 3a 59 c2                                  	vmulss xmm8,xmm8,xmm10
    214fa495f7c5:	c5 fb 11 95 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm2
    214fa495f7cd:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    214fa495f7d1:	c4 c1 79 28 d9                                  	vmovapd xmm3,xmm9
    214fa495f7d6:	44 8b 9d a0 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x460]
    214fa495f7dd:	c5 fb 11 a5 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm4
    214fa495f7e5:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    214fa495f7ea:	bf 01 00 00 00                                  	mov    edi,0x1
    214fa495f7ef:	48 8b 5d d8                                     	mov    rbx,QWORD PTR [rbp-0x28]
    214fa495f7f3:	c5 78 10 85 c0 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x240]
    214fa495f7fb:	48 8b 85 a0 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x260]
    214fa495f802:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    214fa495f80a:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    214fa495f812:	e9 48 00 00 00                                  	jmp    0x214fa495f85f
    214fa495f817:	c5 fb 11 95 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm2
    214fa495f81f:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    214fa495f823:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    214fa495f827:	bf 01 00 00 00                                  	mov    edi,0x1
    214fa495f82c:	c5 fb 11 a5 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm4
    214fa495f834:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    214fa495f838:	e9 22 00 00 00                                  	jmp    0x214fa495f85f
    214fa495f83d:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    214fa495f841:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    214fa495f845:	c5 79 28 ef                                     	vmovapd xmm13,xmm7
    214fa495f849:	c5 f9 28 e7                                     	vmovapd xmm4,xmm7
    214fa495f84d:	c5 fb 11 bd 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm7
    214fa495f855:	c5 fb 11 bd 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm7
    214fa495f85d:	33 ff                                           	xor    edi,edi
    214fa495f85f:	8b 75 28                                        	mov    esi,DWORD PTR [rbp+0x28]
    214fa495f862:	3b 75 18                                        	cmp    esi,DWORD PTR [rbp+0x18]
    214fa495f865:	0f 8e f0 8a 00 00                               	jle    0x214fa496835b
    214fa495f86b:	c5 7b 11 ad a0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x360],xmm13
    214fa495f873:	c4 41 f9 6e ef                                  	vmovq  xmm13,r15
    214fa495f878:	c4 41 7b 12 ed                                  	vmovddup xmm13,xmm13
    214fa495f87d:	c4 63 91 22 ad d0 fd ff ff 01                   	vpinsrq xmm13,xmm13,QWORD PTR [rbp-0x230],0x1
    214fa495f887:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    214fa495f88e:	49 c1 e7 08                                     	shl    r15,0x8
    214fa495f892:	44 8d 59 ff                                     	lea    r11d,[rcx-0x1]
    214fa495f896:	4d 63 db                                        	movsxd r11,r11d
    214fa495f899:	4c 89 bd 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],r15
    214fa495f8a0:	4d 0f af fb                                     	imul   r15,r11
    214fa495f8a4:	48 89 bd 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdi
    214fa495f8ab:	49 8b ff                                        	mov    rdi,r15
    214fa495f8ae:	48 f7 d7                                        	not    rdi
    214fa495f8b1:	48 89 bd 78 fb ff ff                            	mov    QWORD PTR [rbp-0x488],rdi
    214fa495f8b8:	48 8b bd d8 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x428]
    214fa495f8bf:	48 c1 e7 08                                     	shl    rdi,0x8
    214fa495f8c3:	48 89 bd 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],rdi
    214fa495f8ca:	49 0f af fb                                     	imul   rdi,r11
    214fa495f8ce:	48 89 bd 30 fb ff ff                            	mov    QWORD PTR [rbp-0x4d0],rdi
    214fa495f8d5:	48 f7 d7                                        	not    rdi
    214fa495f8d8:	48 8b b5 20 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1e0]
    214fa495f8df:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa495f8e3:	4c 0f af de                                     	imul   r11,rsi
    214fa495f8e7:	4c 89 9d 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r11
    214fa495f8ee:	49 f7 d3                                        	not    r11
    214fa495f8f1:	c5 fb 11 95 98 fc ff ff                         	vmovsd QWORD PTR [rbp-0x368],xmm2
    214fa495f8f9:	c5 fb 12 95 b0 fd ff ff                         	vmovddup xmm2,QWORD PTR [rbp-0x250]
    214fa495f901:	c4 e3 e9 22 55 c0 01                            	vpinsrq xmm2,xmm2,QWORD PTR [rbp-0x40],0x1
    214fa495f908:	c5 e9 73 f2 08                                  	vpsllq xmm2,xmm2,0x8
    214fa495f90d:	48 89 bd b8 fb ff ff                            	mov    QWORD PTR [rbp-0x448],rdi
    214fa495f914:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    214fa495f918:	48 c1 e7 08                                     	shl    rdi,0x8
    214fa495f91c:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa495f91f:	48 89 7d c0                                     	mov    QWORD PTR [rbp-0x40],rdi
    214fa495f923:	8d b8 dc 36 00 00                               	lea    edi,[rax+0x36dc]
    214fa495f929:	48 89 bd 58 fd ff ff                            	mov    QWORD PTR [rbp-0x2a8],rdi
    214fa495f930:	8d b8 68 36 00 00                               	lea    edi,[rax+0x3668]
    214fa495f936:	48 89 bd 48 fd ff ff                            	mov    QWORD PTR [rbp-0x2b8],rdi
    214fa495f93d:	8d b8 f4 35 00 00                               	lea    edi,[rax+0x35f4]
    214fa495f943:	48 89 bd 40 fd ff ff                            	mov    QWORD PTR [rbp-0x2c0],rdi
    214fa495f94a:	8d b8 80 35 00 00                               	lea    edi,[rax+0x3580]
    214fa495f950:	48 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],rdi
    214fa495f957:	8d b8 cc 3c 00 00                               	lea    edi,[rax+0x3ccc]
    214fa495f95d:	8b 85 e8 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x218]
    214fa495f963:	48 89 bd e8 fc ff ff                            	mov    QWORD PTR [rbp-0x318],rdi
    214fa495f96a:	8d 78 50                                        	lea    edi,[rax+0x50]
    214fa495f96d:	8b 85 70 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x190]
    214fa495f973:	48 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],rdi
    214fa495f97a:	8d 78 50                                        	lea    edi,[rax+0x50]
    214fa495f97d:	8b 85 50 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b0]
    214fa495f983:	48 89 bd 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rdi
    214fa495f98a:	8d 78 50                                        	lea    edi,[rax+0x50]
    214fa495f98d:	8b 45 10                                        	mov    eax,DWORD PTR [rbp+0x10]
    214fa495f990:	83 f0 ff                                        	xor    eax,0xffffffff
    214fa495f993:	48 89 bd 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rdi
    214fa495f99a:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    214fa495f99d:	4c 89 9d d0 fb ff ff                            	mov    QWORD PTR [rbp-0x430],r11
    214fa495f9a4:	44 8d 5f 02                                     	lea    r11d,[rdi+0x2]
    214fa495f9a8:	48 8b bd b0 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x250]
    214fa495f9af:	48 2b bd f0 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x210]
    214fa495f9b6:	48 c1 e7 07                                     	shl    rdi,0x7
    214fa495f9ba:	48 89 bd 70 fb ff ff                            	mov    QWORD PTR [rbp-0x490],rdi
    214fa495f9c1:	48 8b 7d b8                                     	mov    rdi,QWORD PTR [rbp-0x48]
    214fa495f9c5:	48 2b bd 38 fe ff ff                            	sub    rdi,QWORD PTR [rbp-0x1c8]
    214fa495f9cc:	48 c1 e7 07                                     	shl    rdi,0x7
    214fa495f9d0:	48 89 bd f8 fa ff ff                            	mov    QWORD PTR [rbp-0x508],rdi
    214fa495f9d7:	8d 79 fe                                        	lea    edi,[rcx-0x2]
    214fa495f9da:	c5 f8 11 55 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm2
    214fa495f9df:	c5 82 2a d7                                     	vcvtsi2ss xmm2,xmm15,edi
    214fa495f9e3:	48 63 7d 48                                     	movsxd rdi,DWORD PTR [rbp+0x48]
    214fa495f9e7:	4d 63 c0                                        	movsxd r8,r8d
    214fa495f9ea:	4d 63 e4                                        	movsxd r12,r12d
    214fa495f9ed:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    214fa495f9f4:	41 8d b9 90 00 00 00                            	lea    edi,[r9+0x90]
    214fa495f9fb:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    214fa495fa02:	45 8d 41 18                                     	lea    r8d,[r9+0x18]
    214fa495fa06:	41 83 c8 04                                     	or     r8d,0x4
    214fa495fa0a:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    214fa495fa0f:	c5 fb 11 9d 88 fc ff ff                         	vmovsd QWORD PTR [rbp-0x378],xmm3
    214fa495fa17:	c4 e2 79 18 dd                                  	vbroadcastss xmm3,xmm5
    214fa495fa1c:	c5 fb 11 ad f8 fc ff ff                         	vmovsd QWORD PTR [rbp-0x308],xmm5
    214fa495fa24:	c5 82 2a e9                                     	vcvtsi2ss xmm5,xmm15,ecx
    214fa495fa28:	41 8d 89 60 01 00 00                            	lea    ecx,[r9+0x160]
    214fa495fa2f:	4c 89 85 e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r8
    214fa495fa36:	45 8d 81 50 01 00 00                            	lea    r8d,[r9+0x150]
    214fa495fa3d:	48 89 95 f0 fa ff ff                            	mov    QWORD PTR [rbp-0x510],rdx
    214fa495fa44:	c5 78 11 a5 f0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x410],xmm12
    214fa495fa4c:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    214fa495fa54:	c5 78 11 9d e0 fa ff ff                         	vmovups XMMWORD PTR [rbp-0x520],xmm11
    214fa495fa5c:	4c 89 bd 38 fb ff ff                            	mov    QWORD PTR [rbp-0x4c8],r15
    214fa495fa63:	48 89 b5 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rsi
    214fa495fa6a:	48 89 85 b0 fb ff ff                            	mov    QWORD PTR [rbp-0x450],rax
    214fa495fa71:	4c 89 9d a8 fb ff ff                            	mov    QWORD PTR [rbp-0x458],r11
    214fa495fa78:	c5 fb 11 95 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm2
    214fa495fa80:	4c 89 a5 98 fb ff ff                            	mov    QWORD PTR [rbp-0x468],r12
    214fa495fa87:	48 89 bd d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rdi
    214fa495fa8e:	c5 f8 11 8d 80 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x480],xmm1
    214fa495fa96:	c5 f8 11 9d 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm3
    214fa495fa9e:	c5 fb 11 ad 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm5
    214fa495faa6:	48 89 8d 18 fb ff ff                            	mov    QWORD PTR [rbp-0x4e8],rcx
    214fa495faad:	4c 89 85 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],r8
    214fa495fab4:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa495fab8:	c5 fb 10 b5 48 fb ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x4b8]
    214fa495fac0:	c5 fb 10 ad 30 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x2d0]
    214fa495fac8:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    214fa495facf:	48 c7 85 d8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x228],0x0
    214fa495fada:	8b 7d 18                                        	mov    edi,DWORD PTR [rbp+0x18]
    214fa495fadd:	c4 c1 79 28 d8                                  	vmovapd xmm3,xmm8
    214fa495fae2:	48 8b c2                                        	mov    rax,rdx
    214fa495fae5:	c4 c1 79 28 d1                                  	vmovapd xmm2,xmm9
    214fa495faea:	45 8b cb                                        	mov    r9d,r11d
    214fa495faed:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    214fa495faf1:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    214fa495faf5:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    214fa495fafb:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    214fa495fb01:	e9 4c 00 00 00                                  	jmp    0x214fa495fb52
    214fa495fb06:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495fb0f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495fb18:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495fb21:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495fb2a:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495fb33:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa495fb3c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    214fa495fb40:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    214fa495fb44:	4c 8b a5 98 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x468]
    214fa495fb4b:	48 8b 85 f0 fa ff ff                            	mov    rax,QWORD PTR [rbp-0x510]
    214fa495fb52:	48 8b 8d d0 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x430]
    214fa495fb59:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa495fb5e:	0f 85 c8 89 00 00                               	jne    0x214fa496852c
    214fa495fb64:	83 bd 90 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x370],0x0
    214fa495fb6b:	0f 85 19 00 00 00                               	jne    0x214fa495fb8a
    214fa495fb71:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    214fa495fb78:	45 8b c7                                        	mov    r8d,r15d
    214fa495fb7b:	45 8b e3                                        	mov    r12d,r11d
    214fa495fb7e:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa495fb85:	e9 6f 05 00 00                                  	jmp    0x214fa49600f9
    214fa495fb8a:	4c 8d 04 18                                     	lea    r8,[rax+rbx*1]
    214fa495fb8e:	4d 03 c4                                        	add    r8,r12
    214fa495fb91:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    214fa495fb98:	0f 8c f1 00 00 00                               	jl     0x214fa495fc8f
    214fa495fb9e:	3b d6                                           	cmp    edx,esi
    214fa495fba0:	0f 84 e2 00 00 00                               	je     0x214fa495fc88
    214fa495fba6:	4d 85 c0                                        	test   r8,r8
    214fa495fba9:	0f 8c cd 00 00 00                               	jl     0x214fa495fc7c
    214fa495fbaf:	49 3b c8                                        	cmp    rcx,r8
    214fa495fbb2:	0f 8c 78 00 00 00                               	jl     0x214fa495fc30
    214fa495fbb8:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    214fa495fbbc:	0f 87 79 00 00 00                               	ja     0x214fa495fc3b
    214fa495fbc2:	c5 f8 2e ad 38 fe ff ff                         	vucomiss xmm5,DWORD PTR [rbp-0x1c8]
    214fa495fbca:	0f 83 60 00 00 00                               	jae    0x214fa495fc30
    214fa495fbd0:	4c 8b 15 fe e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7fe]        # 0x214fa495e3d5
    214fa495fbd7:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    214fa495fbdc:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa495fbe0:	0f 87 0b 00 00 00                               	ja     0x214fa495fbf1
    214fa495fbe6:	41 bc 00 00 00 80                               	mov    r12d,0x80000000
    214fa495fbec:	e9 29 00 00 00                                  	jmp    0x214fa495fc1a
    214fa495fbf1:	c4 e3 79 0a c5 0b                               	vroundss xmm0,xmm0,xmm5,0xb
    214fa495fbf7:	c5 fa 2c c0                                     	vcvttss2si eax,xmm0
    214fa495fbfb:	c5 02 2a d0                                     	vcvtsi2ss xmm10,xmm15,eax
    214fa495fbff:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa495fc04:	0f 8a 2c 8c 00 00                               	jp     0x214fa4968836
    214fa495fc0a:	0f 85 26 8c 00 00                               	jne    0x214fa4968836
    214fa495fc10:	44 8b e0                                        	mov    r12d,eax
    214fa495fc13:	48 8b 85 f0 fa ff ff                            	mov    rax,QWORD PTR [rbp-0x510]
    214fa495fc1a:	45 03 e1                                        	add    r12d,r9d
    214fa495fc1d:	4c 89 a5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r12
    214fa495fc24:	4c 8b a5 98 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x468]
    214fa495fc2b:	e9 12 00 00 00                                  	jmp    0x214fa495fc42
    214fa495fc30:	45 8b c7                                        	mov    r8d,r15d
    214fa495fc33:	45 8b e3                                        	mov    r12d,r11d
    214fa495fc36:	e9 ee 00 00 00                                  	jmp    0x214fa495fd29
    214fa495fc3b:	4c 89 9d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r11
    214fa495fc42:	44 3b bd 68 fe ff ff                            	cmp    r15d,DWORD PTR [rbp-0x198]
    214fa495fc49:	7e e5                                           	jle    0x214fa495fc30
    214fa495fc4b:	44 8b a5 68 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x198]
    214fa495fc52:	45 2b e3                                        	sub    r12d,r11d
    214fa495fc55:	4d 63 e4                                        	movsxd r12,r12d
    214fa495fc58:	4c 0f af a5 68 fc ff ff                         	imul   r12,QWORD PTR [rbp-0x398]
    214fa495fc60:	4d 03 c4                                        	add    r8,r12
    214fa495fc63:	45 8b e7                                        	mov    r12d,r15d
    214fa495fc66:	4d 85 c0                                        	test   r8,r8
    214fa495fc69:	44 0f 4c a5 68 fe ff ff                         	cmovl  r12d,DWORD PTR [rbp-0x198]
    214fa495fc71:	45 8b c4                                        	mov    r8d,r12d
    214fa495fc74:	45 8b e3                                        	mov    r12d,r11d
    214fa495fc77:	e9 ad 00 00 00                                  	jmp    0x214fa495fd29
    214fa495fc7c:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa495fc83:	e9 ad 68 00 00                                  	jmp    0x214fa4966535
    214fa495fc88:	4d 85 c0                                        	test   r8,r8
    214fa495fc8b:	7c ef                                           	jl     0x214fa495fc7c
    214fa495fc8d:	eb a1                                           	jmp    0x214fa495fc30
    214fa495fc8f:	4c 8b a5 18 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2e8]
    214fa495fc96:	4b 8d 04 04                                     	lea    rax,[r12+r8*1]
    214fa495fc9a:	48 85 c0                                        	test   rax,rax
    214fa495fc9d:	7c dd                                           	jl     0x214fa495fc7c
    214fa495fc9f:	4d 85 c0                                        	test   r8,r8
    214fa495fca2:	7d 8c                                           	jge    0x214fa495fc30
    214fa495fca4:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    214fa495fca8:	73 86                                           	jae    0x214fa495fc30
    214fa495fcaa:	4c 8b 15 24 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe724]        # 0x214fa495e3d5
    214fa495fcb1:	c4 c1 50 54 02                                  	vandps xmm0,xmm5,XMMWORD PTR [r10]
    214fa495fcb6:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa495fcba:	0f 87 0a 00 00 00                               	ja     0x214fa495fcca
    214fa495fcc0:	b8 00 00 00 80                                  	mov    eax,0x80000000
    214fa495fcc5:	e9 1f 00 00 00                                  	jmp    0x214fa495fce9
    214fa495fcca:	c4 e3 79 0a c5 0b                               	vroundss xmm0,xmm0,xmm5,0xb
    214fa495fcd0:	c5 fa 2c c0                                     	vcvttss2si eax,xmm0
    214fa495fcd4:	c5 02 2a d0                                     	vcvtsi2ss xmm10,xmm15,eax
    214fa495fcd8:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa495fcdd:	0f 8a 4e 8b 00 00                               	jp     0x214fa4968831
    214fa495fce3:	0f 85 48 8b 00 00                               	jne    0x214fa4968831
    214fa495fce9:	41 03 c3                                        	add    eax,r11d
    214fa495fcec:	c5 f8 2e ad 78 fe ff ff                         	vucomiss xmm5,DWORD PTR [rbp-0x188]
    214fa495fcf4:	41 0f 43 c7                                     	cmovae eax,r15d
    214fa495fcf8:	41 3b c3                                        	cmp    eax,r11d
    214fa495fcfb:	0f 8e 2f ff ff ff                               	jle    0x214fa495fc30
    214fa495fd01:	44 8b a5 b0 fb ff ff                            	mov    r12d,DWORD PTR [rbp-0x450]
    214fa495fd08:	41 8d 0c 04                                     	lea    ecx,[r12+rax*1]
    214fa495fd0c:	48 63 c9                                        	movsxd rcx,ecx
    214fa495fd0f:	48 0f af 8d 68 fc ff ff                         	imul   rcx,QWORD PTR [rbp-0x398]
    214fa495fd17:	4c 03 c1                                        	add    r8,rcx
    214fa495fd1a:	41 8b cb                                        	mov    ecx,r11d
    214fa495fd1d:	4d 85 c0                                        	test   r8,r8
    214fa495fd20:	0f 4c c8                                        	cmovl  ecx,eax
    214fa495fd23:	45 8b c7                                        	mov    r8d,r15d
    214fa495fd26:	44 8b e1                                        	mov    r12d,ecx
    214fa495fd29:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    214fa495fd2f:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    214fa495fd36:	48 03 c1                                        	add    rax,rcx
    214fa495fd39:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa495fd40:	48 03 c1                                        	add    rax,rcx
    214fa495fd43:	83 bd 18 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1e8],0x0
    214fa495fd4a:	0f 8d de 00 00 00                               	jge    0x214fa495fe2e
    214fa495fd50:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    214fa495fd57:	48 8b 8d 30 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x4d0]
    214fa495fd5e:	48 8d 1c 01                                     	lea    rbx,[rcx+rax*1]
    214fa495fd62:	48 85 db                                        	test   rbx,rbx
    214fa495fd65:	0f 8c b0 00 00 00                               	jl     0x214fa495fe1b
    214fa495fd6b:	48 85 c0                                        	test   rax,rax
    214fa495fd6e:	0f 8d 94 00 00 00                               	jge    0x214fa495fe08
    214fa495fd74:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa495fd78:	0f 83 8a 00 00 00                               	jae    0x214fa495fe08
    214fa495fd7e:	4c 8b 15 50 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe650]        # 0x214fa495e3d5
    214fa495fd85:	c4 c1 48 54 02                                  	vandps xmm0,xmm6,XMMWORD PTR [r10]
    214fa495fd8a:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa495fd8e:	0f 87 0a 00 00 00                               	ja     0x214fa495fd9e
    214fa495fd94:	bb 00 00 00 80                                  	mov    ebx,0x80000000
    214fa495fd99:	e9 1f 00 00 00                                  	jmp    0x214fa495fdbd
    214fa495fd9e:	c4 e3 79 0a c6 0b                               	vroundss xmm0,xmm0,xmm6,0xb
    214fa495fda4:	c5 fa 2c d8                                     	vcvttss2si ebx,xmm0
    214fa495fda8:	c5 02 2a d3                                     	vcvtsi2ss xmm10,xmm15,ebx
    214fa495fdac:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa495fdb1:	0f 8a 75 8a 00 00                               	jp     0x214fa496882c
    214fa495fdb7:	0f 85 6f 8a 00 00                               	jne    0x214fa496882c
    214fa495fdbd:	41 03 db                                        	add    ebx,r11d
    214fa495fdc0:	c5 f8 2e b5 78 fe ff ff                         	vucomiss xmm6,DWORD PTR [rbp-0x188]
    214fa495fdc8:	41 0f 43 df                                     	cmovae ebx,r15d
    214fa495fdcc:	41 3b dc                                        	cmp    ebx,r12d
    214fa495fdcf:	0f 8e 33 00 00 00                               	jle    0x214fa495fe08
    214fa495fdd5:	44 8b bd b0 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x450]
    214fa495fddc:	41 8d 0c 1f                                     	lea    ecx,[r15+rbx*1]
    214fa495fde0:	48 63 c9                                        	movsxd rcx,ecx
    214fa495fde3:	48 0f af 8d 58 fc ff ff                         	imul   rcx,QWORD PTR [rbp-0x3a8]
    214fa495fdeb:	48 03 c1                                        	add    rax,rcx
    214fa495fdee:	48 85 c0                                        	test   rax,rax
    214fa495fdf1:	44 0f 4c e3                                     	cmovl  r12d,ebx
    214fa495fdf5:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa495fdfc:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    214fa495fe03:	e9 09 01 00 00                                  	jmp    0x214fa495ff11
    214fa495fe08:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa495fe0f:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    214fa495fe16:	e9 f6 00 00 00                                  	jmp    0x214fa495ff11
    214fa495fe1b:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa495fe22:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    214fa495fe29:	e9 07 67 00 00                                  	jmp    0x214fa4966535
    214fa495fe2e:	3b b5 00 fb ff ff                               	cmp    esi,DWORD PTR [rbp-0x500]
    214fa495fe34:	0f 84 c7 00 00 00                               	je     0x214fa495ff01
    214fa495fe3a:	48 85 c0                                        	test   rax,rax
    214fa495fe3d:	0f 8c f2 66 00 00                               	jl     0x214fa4966535
    214fa495fe43:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    214fa495fe4a:	4c 8b bd b8 fb ff ff                            	mov    r15,QWORD PTR [rbp-0x448]
    214fa495fe51:	4c 3b f8                                        	cmp    r15,rax
    214fa495fe54:	0f 8c b7 00 00 00                               	jl     0x214fa495ff11
    214fa495fe5a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa495fe5e:	0f 87 62 00 00 00                               	ja     0x214fa495fec6
    214fa495fe64:	c5 f8 2e b5 38 fe ff ff                         	vucomiss xmm6,DWORD PTR [rbp-0x1c8]
    214fa495fe6c:	0f 83 9f 00 00 00                               	jae    0x214fa495ff11
    214fa495fe72:	4c 8b 15 5c e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe55c]        # 0x214fa495e3d5
    214fa495fe79:	c4 c1 48 54 02                                  	vandps xmm0,xmm6,XMMWORD PTR [r10]
    214fa495fe7e:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa495fe82:	0f 87 0a 00 00 00                               	ja     0x214fa495fe92
    214fa495fe88:	be 00 00 00 80                                  	mov    esi,0x80000000
    214fa495fe8d:	e9 1f 00 00 00                                  	jmp    0x214fa495feb1
    214fa495fe92:	c4 e3 79 0a c6 0b                               	vroundss xmm0,xmm0,xmm6,0xb
    214fa495fe98:	c5 fa 2c f0                                     	vcvttss2si esi,xmm0
    214fa495fe9c:	c5 02 2a d6                                     	vcvtsi2ss xmm10,xmm15,esi
    214fa495fea0:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa495fea5:	0f 8a 7c 89 00 00                               	jp     0x214fa4968827
    214fa495feab:	0f 85 76 89 00 00                               	jne    0x214fa4968827
    214fa495feb1:	41 03 f1                                        	add    esi,r9d
    214fa495feb4:	48 89 b5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rsi
    214fa495febb:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    214fa495fec1:	e9 07 00 00 00                                  	jmp    0x214fa495fecd
    214fa495fec6:	4c 89 9d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r11
    214fa495fecd:	44 3b 85 68 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x198]
    214fa495fed4:	0f 8e 37 00 00 00                               	jle    0x214fa495ff11
    214fa495feda:	8b b5 68 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x198]
    214fa495fee0:	41 2b f3                                        	sub    esi,r11d
    214fa495fee3:	48 63 f6                                        	movsxd rsi,esi
    214fa495fee6:	48 0f af b5 58 fc ff ff                         	imul   rsi,QWORD PTR [rbp-0x3a8]
    214fa495feee:	48 03 c6                                        	add    rax,rsi
    214fa495fef1:	48 85 c0                                        	test   rax,rax
    214fa495fef4:	44 0f 4c 85 68 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x198]
    214fa495fefc:	e9 10 00 00 00                                  	jmp    0x214fa495ff11
    214fa495ff01:	48 85 c0                                        	test   rax,rax
    214fa495ff04:	0f 8c 2b 66 00 00                               	jl     0x214fa4966535
    214fa495ff0a:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    214fa495ff11:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    214fa495ff17:	4c 8b bd 00 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x200]
    214fa495ff1e:	49 03 c7                                        	add    rax,r15
    214fa495ff21:	48 8b b5 08 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1f8]
    214fa495ff28:	48 03 c6                                        	add    rax,rsi
    214fa495ff2b:	83 bd d0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x330],0x0
    214fa495ff32:	0f 8d cb 00 00 00                               	jge    0x214fa4960003
    214fa495ff38:	4c 8b bd 38 fb ff ff                            	mov    r15,QWORD PTR [rbp-0x4c8]
    214fa495ff3f:	49 8d 34 07                                     	lea    rsi,[r15+rax*1]
    214fa495ff43:	48 85 f6                                        	test   rsi,rsi
    214fa495ff46:	0f 8c a8 00 00 00                               	jl     0x214fa495fff4
    214fa495ff4c:	48 85 c0                                        	test   rax,rax
    214fa495ff4f:	0f 8d a4 01 00 00                               	jge    0x214fa49600f9
    214fa495ff55:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    214fa495ff59:	0f 83 5d 00 00 00                               	jae    0x214fa495ffbc
    214fa495ff5f:	c5 f8 2e a5 78 fe ff ff                         	vucomiss xmm4,DWORD PTR [rbp-0x188]
    214fa495ff67:	0f 83 47 00 00 00                               	jae    0x214fa495ffb4
    214fa495ff6d:	4c 8b 15 61 e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe461]        # 0x214fa495e3d5
    214fa495ff74:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    214fa495ff79:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa495ff7d:	0f 87 0a 00 00 00                               	ja     0x214fa495ff8d
    214fa495ff83:	be 00 00 00 80                                  	mov    esi,0x80000000
    214fa495ff88:	e9 1f 00 00 00                                  	jmp    0x214fa495ffac
    214fa495ff8d:	c4 e3 79 0a c4 0b                               	vroundss xmm0,xmm0,xmm4,0xb
    214fa495ff93:	c5 fa 2c f0                                     	vcvttss2si esi,xmm0
    214fa495ff97:	c5 02 2a d6                                     	vcvtsi2ss xmm10,xmm15,esi
    214fa495ff9b:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa495ffa0:	0f 8a 7c 88 00 00                               	jp     0x214fa4968822
    214fa495ffa6:	0f 85 76 88 00 00                               	jne    0x214fa4968822
    214fa495ffac:	41 03 f3                                        	add    esi,r11d
    214fa495ffaf:	e9 0b 00 00 00                                  	jmp    0x214fa495ffbf
    214fa495ffb4:	8b 75 20                                        	mov    esi,DWORD PTR [rbp+0x20]
    214fa495ffb7:	e9 03 00 00 00                                  	jmp    0x214fa495ffbf
    214fa495ffbc:	41 8b f3                                        	mov    esi,r11d
    214fa495ffbf:	41 3b f4                                        	cmp    esi,r12d
    214fa495ffc2:	0f 8e 31 01 00 00                               	jle    0x214fa49600f9
    214fa495ffc8:	44 8b bd b0 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x450]
    214fa495ffcf:	41 8d 0c 37                                     	lea    ecx,[r15+rsi*1]
    214fa495ffd3:	48 63 c9                                        	movsxd rcx,ecx
    214fa495ffd6:	48 0f af 8d 48 fc ff ff                         	imul   rcx,QWORD PTR [rbp-0x3b8]
    214fa495ffde:	48 03 c1                                        	add    rax,rcx
    214fa495ffe1:	48 85 c0                                        	test   rax,rax
    214fa495ffe4:	44 0f 4c e6                                     	cmovl  r12d,esi
    214fa495ffe8:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa495ffef:	e9 05 01 00 00                                  	jmp    0x214fa49600f9
    214fa495fff4:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    214fa495fffa:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    214fa495fffe:	e9 32 65 00 00                                  	jmp    0x214fa4966535
    214fa4960003:	3b 95 00 fb ff ff                               	cmp    edx,DWORD PTR [rbp-0x500]
    214fa4960009:	0f 84 e1 00 00 00                               	je     0x214fa49600f0
    214fa496000f:	48 85 c0                                        	test   rax,rax
    214fa4960012:	7c e0                                           	jl     0x214fa495fff4
    214fa4960014:	48 8b 95 78 fb ff ff                            	mov    rdx,QWORD PTR [rbp-0x488]
    214fa496001b:	48 3b d0                                        	cmp    rdx,rax
    214fa496001e:	0f 8c c1 00 00 00                               	jl     0x214fa49600e5
    214fa4960024:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    214fa4960028:	0f 87 75 00 00 00                               	ja     0x214fa49600a3
    214fa496002e:	c5 f8 2e a5 38 fe ff ff                         	vucomiss xmm4,DWORD PTR [rbp-0x1c8]
    214fa4960036:	0f 83 57 00 00 00                               	jae    0x214fa4960093
    214fa496003c:	4c 8b 15 92 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe392]        # 0x214fa495e3d5
    214fa4960043:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    214fa4960048:	c5 78 2e f0                                     	vucomiss xmm14,xmm0
    214fa496004c:	0f 87 0b 00 00 00                               	ja     0x214fa496005d
    214fa4960052:	41 bf 00 00 00 80                               	mov    r15d,0x80000000
    214fa4960058:	e9 20 00 00 00                                  	jmp    0x214fa496007d
    214fa496005d:	c4 e3 79 0a c4 0b                               	vroundss xmm0,xmm0,xmm4,0xb
    214fa4960063:	c5 7a 2c f8                                     	vcvttss2si r15d,xmm0
    214fa4960067:	c4 41 02 2a d7                                  	vcvtsi2ss xmm10,xmm15,r15d
    214fa496006c:	c4 c1 78 2e c2                                  	vucomiss xmm0,xmm10
    214fa4960071:	0f 8a a6 87 00 00                               	jp     0x214fa496881d
    214fa4960077:	0f 85 a0 87 00 00                               	jne    0x214fa496881d
    214fa496007d:	45 03 f9                                        	add    r15d,r9d
    214fa4960080:	4c 89 bd 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r15
    214fa4960087:	4c 8b bd 00 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x200]
    214fa496008e:	e9 17 00 00 00                                  	jmp    0x214fa49600aa
    214fa4960093:	44 8b 55 20                                     	mov    r10d,DWORD PTR [rbp+0x20]
    214fa4960097:	4c 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r10
    214fa496009e:	e9 07 00 00 00                                  	jmp    0x214fa49600aa
    214fa49600a3:	4c 89 9d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r11
    214fa49600aa:	44 3b 85 68 fe ff ff                            	cmp    r8d,DWORD PTR [rbp-0x198]
    214fa49600b1:	0f 8e 2e 00 00 00                               	jle    0x214fa49600e5
    214fa49600b7:	44 8b bd 68 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x198]
    214fa49600be:	45 2b fb                                        	sub    r15d,r11d
    214fa49600c1:	4d 63 ff                                        	movsxd r15,r15d
    214fa49600c4:	4c 0f af bd 48 fc ff ff                         	imul   r15,QWORD PTR [rbp-0x3b8]
    214fa49600cc:	4c 03 f8                                        	add    r15,rax
    214fa49600cf:	4d 85 ff                                        	test   r15,r15
    214fa49600d2:	44 0f 4c 85 68 fe ff ff                         	cmovl  r8d,DWORD PTR [rbp-0x198]
    214fa49600da:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    214fa49600e0:	e9 14 00 00 00                                  	jmp    0x214fa49600f9
    214fa49600e5:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    214fa49600eb:	e9 09 00 00 00                                  	jmp    0x214fa49600f9
    214fa49600f0:	48 85 c0                                        	test   rax,rax
    214fa49600f3:	0f 8c fb fe ff ff                               	jl     0x214fa495fff4
    214fa49600f9:	45 3b c4                                        	cmp    r8d,r12d
    214fa49600fc:	0f 8e f2 fe ff ff                               	jle    0x214fa495fff4
    214fa4960102:	44 8b ff                                        	mov    r15d,edi
    214fa4960105:	41 83 cf 03                                     	or     r15d,0x3
    214fa4960109:	8b c7                                           	mov    eax,edi
    214fa496010b:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa4960110:	8b f0                                           	mov    esi,eax
    214fa4960112:	83 ce 02                                        	or     esi,0x2
    214fa4960115:	48 89 85 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],rax
    214fa496011c:	83 c8 01                                        	or     eax,0x1
    214fa496011f:	4c 89 85 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],r8
    214fa4960126:	44 8d 04 bd 00 00 00 00                         	lea    r8d,[rdi*4+0x0]
    214fa496012e:	4c 89 bd 28 fb ff ff                            	mov    QWORD PTR [rbp-0x4d8],r15
    214fa4960135:	45 8b f8                                        	mov    r15d,r8d
    214fa4960138:	41 83 e7 0c                                     	and    r15d,0xc
    214fa496013c:	41 83 e0 7c                                     	and    r8d,0x7c
    214fa4960140:	4c 89 85 f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],r8
    214fa4960147:	45 8b c4                                        	mov    r8d,r12d
    214fa496014a:	45 2b c3                                        	sub    r8d,r11d
    214fa496014d:	4d 63 c0                                        	movsxd r8,r8d
    214fa4960150:	49 c1 e0 08                                     	shl    r8,0x8
    214fa4960154:	48 8b 95 20 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1e0]
    214fa496015b:	49 0f af d0                                     	imul   rdx,r8
    214fa496015f:	48 03 d3                                        	add    rdx,rbx
    214fa4960162:	48 8b 9d d8 fb ff ff                            	mov    rbx,QWORD PTR [rbp-0x428]
    214fa4960169:	49 0f af d8                                     	imul   rbx,r8
    214fa496016d:	48 89 b5 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],rsi
    214fa4960174:	c4 63 f9 16 ee 00                               	vpextrq rsi,xmm13,0x0
    214fa496017a:	48 03 de                                        	add    rbx,rsi
    214fa496017d:	48 8b b5 10 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1f0]
    214fa4960184:	49 0f af f0                                     	imul   rsi,r8
    214fa4960188:	c4 43 f9 16 e8 01                               	vpextrq r8,xmm13,0x1
    214fa496018e:	4c 03 c6                                        	add    r8,rsi
    214fa4960191:	8b f7                                           	mov    esi,edi
    214fa4960193:	c1 fe 02                                        	sar    esi,0x2
    214fa4960196:	c1 e6 04                                        	shl    esi,0x4
    214fa4960199:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    214fa496019d:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    214fa49601a2:	c5 fb 11 ad 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm5
    214fa49601aa:	c5 fb 11 65 b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm4
    214fa49601af:	c5 fb 11 b5 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm6
    214fa49601b7:	48 89 85 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rax
    214fa49601be:	4c 89 bd e0 fb ff ff                            	mov    QWORD PTR [rbp-0x420],r15
    214fa49601c5:	48 89 b5 e8 fb ff ff                            	mov    QWORD PTR [rbp-0x418],rsi
    214fa49601cc:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    214fa49601d4:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    214fa49601dc:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    214fa49601e4:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    214fa49601ec:	e9 17 00 00 00                                  	jmp    0x214fa4960208
    214fa49601f1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa49601fa:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    214fa4960200:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    214fa4960208:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    214fa496020f:	4c 8b 9d 08 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f8]
    214fa4960216:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    214fa496021d:	4c 8b 8d f0 fa ff ff                            	mov    r9,QWORD PTR [rbp-0x510]
    214fa4960224:	48 8b 85 98 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x468]
    214fa496022b:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    214fa4960233:	4c 89 85 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r8
    214fa496023a:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa496023f:	0f 85 a1 83 00 00                               	jne    0x214fa49685e6
    214fa4960245:	83 bd a0 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x460],0x0
    214fa496024c:	0f 85 7d 00 00 00                               	jne    0x214fa49602cf
    214fa4960252:	44 8b fa                                        	mov    r15d,edx
    214fa4960255:	c4 41 79 6e cf                                  	vmovd  xmm9,r15d
    214fa496025a:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa496025f:	c4 41 31 fe cb                                  	vpaddd xmm9,xmm9,xmm11
    214fa4960264:	45 8b f8                                        	mov    r15d,r8d
    214fa4960267:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    214fa496026c:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa4960271:	c5 21 fe d8                                     	vpaddd xmm11,xmm11,xmm0
    214fa4960275:	c4 41 31 eb db                                  	vpor   xmm11,xmm9,xmm11
    214fa496027a:	44 8b fb                                        	mov    r15d,ebx
    214fa496027d:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    214fa4960282:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4960287:	c4 c1 79 fe c4                                  	vpaddd xmm0,xmm0,xmm12
    214fa496028c:	c5 21 eb d8                                     	vpor   xmm11,xmm11,xmm0
    214fa4960290:	c4 41 78 50 fb                                  	vmovmskps r15d,xmm11
    214fa4960295:	41 83 ff 0f                                     	cmp    r15d,0xf
    214fa4960299:	0f 84 0c 62 00 00                               	je     0x214fa49664ab
    214fa496029f:	41 83 f7 0f                                     	xor    r15d,0xf
    214fa49602a3:	c4 41 31 fa ca                                  	vpsubd xmm9,xmm9,xmm10
    214fa49602a8:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa49602ad:	c5 f9 fa c2                                     	vpsubd xmm0,xmm0,xmm2
    214fa49602b1:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa49602b5:	48 89 95 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rdx
    214fa49602bc:	48 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rbx
    214fa49602c3:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49602c6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49602ca:	e9 af 02 00 00                                  	jmp    0x214fa496057e
    214fa49602cf:	4c 8d 3c 10                                     	lea    r15,[rax+rdx*1]
    214fa49602d3:	4b 8d 04 39                                     	lea    rax,[r9+r15*1]
    214fa49602d7:	48 85 c0                                        	test   rax,rax
    214fa49602da:	0f 8c cb 61 00 00                               	jl     0x214fa49664ab
    214fa49602e0:	48 8d 04 19                                     	lea    rax,[rcx+rbx*1]
    214fa49602e4:	4c 8d 0c 06                                     	lea    r9,[rsi+rax*1]
    214fa49602e8:	4d 85 c9                                        	test   r9,r9
    214fa49602eb:	0f 8c ba 61 00 00                               	jl     0x214fa49664ab
    214fa49602f1:	4f 8d 0c 03                                     	lea    r9,[r11+r8*1]
    214fa49602f5:	4e 8d 04 0f                                     	lea    r8,[rdi+r9*1]
    214fa49602f9:	4d 85 c0                                        	test   r8,r8
    214fa49602fc:	0f 8c a9 61 00 00                               	jl     0x214fa49664ab
    214fa4960302:	4c 8b 85 f8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x208]
    214fa4960309:	4b 8d 3c 38                                     	lea    rdi,[r8+r15*1]
    214fa496030d:	48 85 ff                                        	test   rdi,rdi
    214fa4960310:	0f 8c 3a 00 00 00                               	jl     0x214fa4960350
    214fa4960316:	48 8b bd 90 fb ff ff                            	mov    rdi,QWORD PTR [rbp-0x470]
    214fa496031d:	4c 8d 04 07                                     	lea    r8,[rdi+rax*1]
    214fa4960321:	4d 85 c0                                        	test   r8,r8
    214fa4960324:	0f 8c 26 00 00 00                               	jl     0x214fa4960350
    214fa496032a:	4c 8b 85 08 fb ff ff                            	mov    r8,QWORD PTR [rbp-0x4f8]
    214fa4960331:	4b 8d 3c 08                                     	lea    rdi,[r8+r9*1]
    214fa4960335:	48 85 ff                                        	test   rdi,rdi
    214fa4960338:	0f 8c 12 00 00 00                               	jl     0x214fa4960350
    214fa496033e:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    214fa4960344:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4960348:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa496034b:	e9 35 01 00 00                                  	jmp    0x214fa4960485
    214fa4960350:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4960353:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4960357:	4d 8b 9c 38 d0 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xd0]
    214fa496035f:	4d 03 df                                        	add    r11,r15
    214fa4960362:	4d 85 db                                        	test   r11,r11
    214fa4960365:	0f 8c 2f 00 00 00                               	jl     0x214fa496039a
    214fa496036b:	4d 8b 9c 38 d8 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xd8]
    214fa4960373:	4c 03 d8                                        	add    r11,rax
    214fa4960376:	4d 85 db                                        	test   r11,r11
    214fa4960379:	0f 8c 1b 00 00 00                               	jl     0x214fa496039a
    214fa496037f:	4d 8b 9c 38 e0 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xe0]
    214fa4960387:	4d 03 d9                                        	add    r11,r9
    214fa496038a:	4d 85 db                                        	test   r11,r11
    214fa496038d:	41 0f 9d c3                                     	setge  r11b
    214fa4960391:	45 0f b6 db                                     	movzx  r11d,r11b
    214fa4960395:	e9 03 00 00 00                                  	jmp    0x214fa496039d
    214fa496039a:	45 33 db                                        	xor    r11d,r11d
    214fa496039d:	49 8b b4 38 e8 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xe8]
    214fa49603a5:	49 03 f7                                        	add    rsi,r15
    214fa49603a8:	48 85 f6                                        	test   rsi,rsi
    214fa49603ab:	0f 8c 36 00 00 00                               	jl     0x214fa49603e7
    214fa49603b1:	49 8b b4 38 f0 00 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0xf0]
    214fa49603b9:	48 03 f0                                        	add    rsi,rax
    214fa49603bc:	48 85 f6                                        	test   rsi,rsi
    214fa49603bf:	0f 8c 22 00 00 00                               	jl     0x214fa49603e7
    214fa49603c5:	41 8b f3                                        	mov    esi,r11d
    214fa49603c8:	83 ce 02                                        	or     esi,0x2
    214fa49603cb:	49 8b 8c 38 f8 00 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0xf8]
    214fa49603d3:	49 03 c9                                        	add    rcx,r9
    214fa49603d6:	48 85 c9                                        	test   rcx,rcx
    214fa49603d9:	41 0f 4c f3                                     	cmovl  esi,r11d
    214fa49603dd:	44 8b de                                        	mov    r11d,esi
    214fa49603e0:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa49603e7:	49 8b b4 38 00 01 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0x100]
    214fa49603ef:	49 03 f7                                        	add    rsi,r15
    214fa49603f2:	48 85 f6                                        	test   rsi,rsi
    214fa49603f5:	0f 8c 36 00 00 00                               	jl     0x214fa4960431
    214fa49603fb:	49 8b b4 38 08 01 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0x108]
    214fa4960403:	48 03 f0                                        	add    rsi,rax
    214fa4960406:	48 85 f6                                        	test   rsi,rsi
    214fa4960409:	0f 8c 22 00 00 00                               	jl     0x214fa4960431
    214fa496040f:	41 8b f3                                        	mov    esi,r11d
    214fa4960412:	83 ce 04                                        	or     esi,0x4
    214fa4960415:	49 8b 8c 38 10 01 00 00                         	mov    rcx,QWORD PTR [r8+rdi*1+0x110]
    214fa496041d:	49 03 c9                                        	add    rcx,r9
    214fa4960420:	48 85 c9                                        	test   rcx,rcx
    214fa4960423:	41 0f 4c f3                                     	cmovl  esi,r11d
    214fa4960427:	44 8b de                                        	mov    r11d,esi
    214fa496042a:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa4960431:	49 8b b4 38 18 01 00 00                         	mov    rsi,QWORD PTR [r8+rdi*1+0x118]
    214fa4960439:	4c 03 fe                                        	add    r15,rsi
    214fa496043c:	4d 85 ff                                        	test   r15,r15
    214fa496043f:	0f 8c 34 00 00 00                               	jl     0x214fa4960479
    214fa4960445:	4d 8b bc 38 20 01 00 00                         	mov    r15,QWORD PTR [r8+rdi*1+0x120]
    214fa496044d:	4c 03 f8                                        	add    r15,rax
    214fa4960450:	4d 85 ff                                        	test   r15,r15
    214fa4960453:	0f 8c 20 00 00 00                               	jl     0x214fa4960479
    214fa4960459:	4d 8b bc 38 28 01 00 00                         	mov    r15,QWORD PTR [r8+rdi*1+0x128]
    214fa4960461:	4d 03 f9                                        	add    r15,r9
    214fa4960464:	4d 85 ff                                        	test   r15,r15
    214fa4960467:	0f 8c 0c 00 00 00                               	jl     0x214fa4960479
    214fa496046d:	41 83 cb 08                                     	or     r11d,0x8
    214fa4960471:	45 8b fb                                        	mov    r15d,r11d
    214fa4960474:	e9 0c 00 00 00                                  	jmp    0x214fa4960485
    214fa4960479:	45 85 db                                        	test   r11d,r11d
    214fa496047c:	0f 84 29 60 00 00                               	je     0x214fa49664ab
    214fa4960482:	45 8b fb                                        	mov    r15d,r11d
    214fa4960485:	48 89 95 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rdx
    214fa496048c:	48 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rbx
    214fa4960493:	83 bd 20 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4e0],0x0
    214fa496049a:	0f 85 30 00 00 00                               	jne    0x214fa49604d0
    214fa49604a0:	44 8b da                                        	mov    r11d,edx
    214fa49604a3:	c4 41 79 6e cb                                  	vmovd  xmm9,r11d
    214fa49604a8:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa49604ad:	c5 31 fe cb                                     	vpaddd xmm9,xmm9,xmm3
    214fa49604b1:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa49604b6:	44 8b db                                        	mov    r11d,ebx
    214fa49604b9:	c4 c1 79 6e c3                                  	vmovd  xmm0,r11d
    214fa49604be:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa49604c3:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    214fa49604c7:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa49604cb:	e9 ae 00 00 00                                  	jmp    0x214fa496057e
    214fa49604d0:	4d 8b 9c 38 d0 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xd0]
    214fa49604d8:	4c 03 da                                        	add    r11,rdx
    214fa49604db:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    214fa49604e0:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa49604e5:	4d 8b 9c 38 e8 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xe8]
    214fa49604ed:	4c 03 da                                        	add    r11,rdx
    214fa49604f0:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    214fa49604f5:	c4 63 31 21 c8 10                               	vinsertps xmm9,xmm9,xmm0,0x10
    214fa49604fb:	4d 8b 9c 38 00 01 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0x100]
    214fa4960503:	4c 03 da                                        	add    r11,rdx
    214fa4960506:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    214fa496050b:	c4 63 31 21 c8 20                               	vinsertps xmm9,xmm9,xmm0,0x20
    214fa4960511:	4d 8b 9c 38 18 01 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0x118]
    214fa4960519:	4c 03 da                                        	add    r11,rdx
    214fa496051c:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    214fa4960521:	c4 63 31 21 c8 30                               	vinsertps xmm9,xmm9,xmm0,0x30
    214fa4960527:	4d 8b 9c 38 d8 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xd8]
    214fa496052f:	4c 03 db                                        	add    r11,rbx
    214fa4960532:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    214fa4960537:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa496053c:	4d 8b 9c 38 f0 00 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0xf0]
    214fa4960544:	4c 03 db                                        	add    r11,rbx
    214fa4960547:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    214fa496054c:	c4 c3 79 21 c2 10                               	vinsertps xmm0,xmm0,xmm10,0x10
    214fa4960552:	4d 8b 9c 38 08 01 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0x108]
    214fa496055a:	4c 03 db                                        	add    r11,rbx
    214fa496055d:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    214fa4960562:	c4 c3 79 21 c2 20                               	vinsertps xmm0,xmm0,xmm10,0x20
    214fa4960568:	4d 8b 9c 38 20 01 00 00                         	mov    r11,QWORD PTR [r8+rdi*1+0x120]
    214fa4960570:	4c 03 db                                        	add    r11,rbx
    214fa4960573:	c4 41 82 2a d3                                  	vcvtsi2ss xmm10,xmm15,r11
    214fa4960578:	c4 c3 79 21 c2 30                               	vinsertps xmm0,xmm0,xmm10,0x30
    214fa496057e:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    214fa4960588:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa496058d:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa4960592:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa4960597:	c4 41 50 59 c9                                  	vmulps xmm9,xmm5,xmm9
    214fa496059c:	4d 8d 58 18                                     	lea    r11,[r8+0x18]
    214fa49605a0:	48 8b 85 68 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x298]
    214fa49605a7:	c4 42 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [r11+rax*1]
    214fa49605ad:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    214fa49605b2:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    214fa49605b6:	48 8b b5 70 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x290]
    214fa49605bd:	c4 c2 79 18 2c 33                               	vbroadcastss xmm5,DWORD PTR [r11+rsi*1]
    214fa49605c3:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    214fa49605c7:	c5 98 58 ed                                     	vaddps xmm5,xmm12,xmm5
    214fa49605cb:	4c 8b 15 ae ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffae]        # 0x214fa4960580
    214fa49605d2:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa49605d7:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa49605dc:	c4 41 18 5c c9                                  	vsubps xmm9,xmm12,xmm9
    214fa49605e1:	c5 b0 5c c0                                     	vsubps xmm0,xmm9,xmm0
    214fa49605e5:	4c 8b 8d 60 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x2a0]
    214fa49605ec:	c4 02 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+r9*1]
    214fa49605f2:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    214fa49605f7:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    214fa49605fb:	c5 c8 58 c0                                     	vaddps xmm0,xmm6,xmm0
    214fa49605ff:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    214fa4960603:	c5 78 c2 cd 01                                  	vcmpltps xmm9,xmm0,xmm5
    214fa4960608:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    214fa496060c:	c5 18 c2 c8 01                                  	vcmpltps xmm9,xmm12,xmm0
    214fa4960611:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    214fa4960615:	c4 c1 29 db c1                                  	vpand  xmm0,xmm10,xmm9
    214fa496061a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496061f:	c4 c1 7a 7f 04 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm0
    214fa4960625:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4960629:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    214fa496062e:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    214fa4960634:	0f 84 bc 00 00 00                               	je     0x214fa49606f6
    214fa496063a:	43 8b 8c 18 a4 00 00 00                         	mov    ecx,DWORD PTR [r8+r11*1+0xa4]
    214fa4960642:	43 83 bc 18 a4 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xa4],0x0
    214fa496064b:	0f 85 a5 00 00 00                               	jne    0x214fa49606f6
    214fa4960651:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    214fa4960656:	43 8b 04 18                                     	mov    eax,DWORD PTR [r8+r11*1]
    214fa496065a:	0f af 45 d0                                     	imul   eax,DWORD PTR [rbp-0x30]
    214fa496065e:	41 03 c4                                        	add    eax,r12d
    214fa4960661:	c1 e0 04                                        	shl    eax,0x4
    214fa4960664:	03 c1                                           	add    eax,ecx
    214fa4960666:	c4 41 7a 6f 0c 00                               	vmovdqu xmm9,XMMWORD PTR [r8+rax*1]
    214fa496066c:	43 8b 44 18 6c                                  	mov    eax,DWORD PTR [r8+r11*1+0x6c]
    214fa4960671:	2d 00 02 00 00                                  	sub    eax,0x200
    214fa4960676:	83 f8 07                                        	cmp    eax,0x7
    214fa4960679:	0f 83 0b 00 00 00                               	jae    0x214fa496068a
    214fa496067f:	4c 8d 15 da 81 00 00                            	lea    r10,[rip+0x81da]        # 0x214fa4968860
    214fa4960686:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    214fa496068a:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    214fa496068f:	e9 39 00 00 00                                  	jmp    0x214fa49606cd
    214fa4960694:	c5 30 c2 d8 02                                  	vcmpleps xmm11,xmm9,xmm0
    214fa4960699:	e9 2f 00 00 00                                  	jmp    0x214fa49606cd
    214fa496069e:	c5 30 c2 d8 04                                  	vcmpneqps xmm11,xmm9,xmm0
    214fa49606a3:	e9 25 00 00 00                                  	jmp    0x214fa49606cd
    214fa49606a8:	c5 30 c2 d8 01                                  	vcmpltps xmm11,xmm9,xmm0
    214fa49606ad:	e9 1b 00 00 00                                  	jmp    0x214fa49606cd
    214fa49606b2:	c4 41 78 c2 d9 02                               	vcmpleps xmm11,xmm0,xmm9
    214fa49606b8:	e9 10 00 00 00                                  	jmp    0x214fa49606cd
    214fa49606bd:	c5 30 c2 d8 00                                  	vcmpeqps xmm11,xmm9,xmm0
    214fa49606c2:	e9 06 00 00 00                                  	jmp    0x214fa49606cd
    214fa49606c7:	c4 41 78 c2 d9 01                               	vcmpltps xmm11,xmm0,xmm9
    214fa49606cd:	c4 c1 78 50 c3                                  	vmovmskps eax,xmm11
    214fa49606d2:	41 23 c7                                        	and    eax,r15d
    214fa49606d5:	0f 85 11 00 00 00                               	jne    0x214fa49606ec
    214fa49606db:	44 8b cf                                        	mov    r9d,edi
    214fa49606de:	49 8b f8                                        	mov    rdi,r8
    214fa49606e1:	4d 8b c3                                        	mov    r8,r11
    214fa49606e4:	41 8b d4                                        	mov    edx,r12d
    214fa49606e7:	e9 99 1b 00 00                                  	jmp    0x214fa4962285
    214fa49606ec:	4c 8b f8                                        	mov    r15,rax
    214fa49606ef:	48 8b 85 68 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x298]
    214fa49606f6:	4c 89 a5 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r12
    214fa49606fd:	41 83 ff 0f                                     	cmp    r15d,0xf
    214fa4960701:	0f 84 29 00 00 00                               	je     0x214fa4960730
    214fa4960707:	8d 8f d0 00 00 00                               	lea    ecx,[rdi+0xd0]
    214fa496070d:	f3 45 0f bc e7                                  	tzcnt  r12d,r15d
    214fa4960712:	45 6b e4 18                                     	imul   r12d,r12d,0x18
    214fa4960716:	44 03 e1                                        	add    r12d,ecx
    214fa4960719:	4b 8b 4c 20 08                                  	mov    rcx,QWORD PTR [r8+r12*1+0x8]
    214fa496071e:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    214fa4960722:	4d 8b d4                                        	mov    r10,r12
    214fa4960725:	4c 8b e1                                        	mov    r12,rcx
    214fa4960728:	49 8b ca                                        	mov    rcx,r10
    214fa496072b:	e9 0e 00 00 00                                  	jmp    0x214fa496073e
    214fa4960730:	4c 8b a5 70 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x490]
    214fa4960737:	48 8b 8d f8 fa ff ff                            	mov    rcx,QWORD PTR [rbp-0x508]
    214fa496073e:	4c 03 e3                                        	add    r12,rbx
    214fa4960741:	48 03 ca                                        	add    rcx,rdx
    214fa4960744:	83 bd 58 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1a8],0x0
    214fa496074b:	0f 85 a0 1b 00 00                               	jne    0x214fa49622f1
    214fa4960751:	c4 81 7a 10 44 08 1c                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x1c]
    214fa4960758:	c4 41 7a 10 4c 30 1c                            	vmovss xmm9,DWORD PTR [r8+rsi*1+0x1c]
    214fa496075f:	c4 41 7a 10 5c 00 1c                            	vmovss xmm11,DWORD PTR [r8+rax*1+0x1c]
    214fa4960766:	4c 89 bd 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r15
    214fa496076d:	47 8b bc 18 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r11*1+0x3cc8]
    214fa4960775:	43 83 bc 18 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0x3cc8],0x0
    214fa496077e:	0f 84 65 00 00 00                               	je     0x214fa49607e9
    214fa4960784:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    214fa496078b:	41 c1 ef 03                                     	shr    r15d,0x3
    214fa496078f:	41 83 e7 03                                     	and    r15d,0x3
    214fa4960793:	44 8b 9d f0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x210]
    214fa496079a:	45 0b df                                        	or     r11d,r15d
    214fa496079d:	44 8b bd e8 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x318]
    214fa49607a4:	45 03 df                                        	add    r11d,r15d
    214fa49607a7:	47 0f b6 1c 18                                  	movzx  r11d,BYTE PTR [r8+r11*1]
    214fa49607ac:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    214fa49607b3:	41 83 e7 07                                     	and    r15d,0x7
    214fa49607b7:	4c 8b d1                                        	mov    r10,rcx
    214fa49607ba:	41 8b cf                                        	mov    ecx,r15d
    214fa49607bd:	4d 8b fa                                        	mov    r15,r10
    214fa49607c0:	41 d3 e3                                        	shl    r11d,cl
    214fa49607c3:	41 f6 c3 80                                     	test   r11b,0x80
    214fa49607c7:	0f 85 15 00 00 00                               	jne    0x214fa49607e2
    214fa49607cd:	44 8b cf                                        	mov    r9d,edi
    214fa49607d0:	49 8b f8                                        	mov    rdi,r8
    214fa49607d3:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa49607d7:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    214fa49607dd:	e9 a3 1a 00 00                                  	jmp    0x214fa4962285
    214fa49607e2:	49 8b cf                                        	mov    rcx,r15
    214fa49607e5:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa49607e9:	c5 f8 11 ad c0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x440],xmm5
    214fa49607f1:	c4 e1 82 2a e9                                  	vcvtsi2ss xmm5,xmm15,rcx
    214fa49607f6:	c5 ba 59 ed                                     	vmulss xmm5,xmm8,xmm5
    214fa49607fa:	c4 41 52 59 db                                  	vmulss xmm11,xmm5,xmm11
    214fa49607ff:	c4 c1 82 2a f4                                  	vcvtsi2ss xmm6,xmm15,r12
    214fa4960804:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    214fa4960808:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    214fa496080d:	c4 41 22 58 c1                                  	vaddss xmm8,xmm11,xmm9
    214fa4960812:	c5 78 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm10
    214fa496081a:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa496081f:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa4960825:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa496082b:	c5 aa 5c ed                                     	vsubss xmm5,xmm10,xmm5
    214fa496082f:	c5 d2 5c ee                                     	vsubss xmm5,xmm5,xmm6
    214fa4960833:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    214fa4960837:	c5 ba 58 e8                                     	vaddss xmm5,xmm8,xmm0
    214fa496083b:	c5 f8 2e fd                                     	vucomiss xmm7,xmm5
    214fa496083f:	0f 83 31 1a 00 00                               	jae    0x214fa4962276
    214fa4960845:	c5 aa 5e ed                                     	vdivss xmm5,xmm10,xmm5
    214fa4960849:	c5 f8 28 ed                                     	vmovaps xmm5,xmm5
    214fa496084d:	c4 e2 79 18 f5                                  	vbroadcastss xmm6,xmm5
    214fa4960852:	c4 01 7a 6f 44 08 20                            	vmovdqu xmm8,XMMWORD PTR [r8+r9*1+0x20]
    214fa4960859:	c5 fb 11 ad 38 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3c8],xmm5
    214fa4960861:	c4 e2 79 18 e8                                  	vbroadcastss xmm5,xmm0
    214fa4960866:	c5 b8 59 ed                                     	vmulps xmm5,xmm8,xmm5
    214fa496086a:	c4 41 7a 6f 44 00 20                            	vmovdqu xmm8,XMMWORD PTR [r8+rax*1+0x20]
    214fa4960871:	c5 fb 11 85 f0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x310],xmm0
    214fa4960879:	c4 c2 79 18 c3                                  	vbroadcastss xmm0,xmm11
    214fa496087e:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa4960882:	c4 42 79 18 c1                                  	vbroadcastss xmm8,xmm9
    214fa4960887:	c4 c1 7a 6f 7c 30 20                            	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1+0x20]
    214fa496088e:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    214fa4960892:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    214fa4960896:	c5 d0 58 c0                                     	vaddps xmm0,xmm5,xmm0
    214fa496089a:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    214fa496089e:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa49608a8:	c4 81 7a 10 ac 08 98 00 00 00                   	vmovss xmm5,DWORD PTR [r8+r9*1+0x98]
    214fa49608b2:	c4 c1 7a 10 b4 00 98 00 00 00                   	vmovss xmm6,DWORD PTR [r8+rax*1+0x98]
    214fa49608bc:	c4 c1 7a 10 bc 30 98 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rsi*1+0x98]
    214fa49608c6:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    214fa49608d0:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    214fa49608d7:	47 8b bc 20 34 01 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x134]
    214fa49608df:	41 8d 4f ff                                     	lea    ecx,[r15-0x1]
    214fa49608e3:	c5 78 11 a5 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm12
    214fa49608eb:	c5 7b 11 8d a8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x258],xmm9
    214fa49608f3:	c5 7b 11 9d 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm11
    214fa49608fb:	c5 fb 11 ad b0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x250],xmm5
    214fa4960903:	c5 fb 11 b5 d8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x228],xmm6
    214fa496090b:	c5 fb 11 bd b8 fd ff ff                         	vmovsd QWORD PTR [rbp-0x248],xmm7
    214fa4960913:	83 f9 01                                        	cmp    ecx,0x1
    214fa4960916:	0f 86 96 04 00 00                               	jbe    0x214fa4960db2
    214fa496091c:	47 8b bc 20 30 01 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x130]
    214fa4960924:	43 83 bc 20 30 01 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x130],0x0
    214fa496092d:	0f 85 0b 00 00 00                               	jne    0x214fa496093e
    214fa4960933:	44 8b cf                                        	mov    r9d,edi
    214fa4960936:	49 8b f8                                        	mov    rdi,r8
    214fa4960939:	e9 34 05 00 00                                  	jmp    0x214fa4960e72
    214fa496093e:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    214fa4960945:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    214fa496094b:	51                                              	push   rcx
    214fa496094c:	4c 89 a5 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r12
    214fa4960953:	4c 89 bd 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r15
    214fa496095a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa496095e:	8b 85 78 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x288]
    214fa4960964:	8b 95 50 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b0]
    214fa496096a:	8b 8d 70 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x190]
    214fa4960970:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    214fa4960976:	c4 c1 79 28 cb                                  	vmovapd xmm1,xmm11
    214fa496097b:	c4 c1 79 28 d1                                  	vmovapd xmm2,xmm9
    214fa4960980:	c5 fb 10 9d f0 fc ff ff                         	vmovsd xmm3,QWORD PTR [rbp-0x310]
    214fa4960988:	c5 fb 10 a5 38 fc ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0x3c8]
    214fa4960990:	45 8b cf                                        	mov    r9d,r15d
    214fa4960993:	e8 80 78 ec ff                                  	call   0x214fa4828218
    214fa4960998:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa496099c:	4c 8b 85 68 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x198]
    214fa49609a3:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    214fa49609ab:	45 85 c0                                        	test   r8d,r8d
    214fa49609ae:	0f 85 9a 01 00 00                               	jne    0x214fa4960b4e
    214fa49609b4:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa49609b8:	46 8b 84 0f 80 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x280]
    214fa49609c0:	42 83 bc 0f 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x280],0x0
    214fa49609c9:	0f 84 4b 00 00 00                               	je     0x214fa4960a1a
    214fa49609cf:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    214fa49609d6:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    214fa49609dd:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    214fa49609e4:	41 50                                           	push   r8
    214fa49609e6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49609ea:	8b 85 38 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c8]
    214fa49609f0:	33 d2                                           	xor    edx,edx
    214fa49609f2:	44 8b 8d 48 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1b8]
    214fa49609f9:	e8 42 78 ec ff                                  	call   0x214fa4828240
    214fa49609fe:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4960a02:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4960a06:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    214fa4960a10:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa4960a1a:	46 8b 84 0f 84 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x284]
    214fa4960a22:	42 83 bc 0f 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x284],0x0
    214fa4960a2b:	0f 84 4e 00 00 00                               	je     0x214fa4960a7f
    214fa4960a31:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    214fa4960a38:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    214fa4960a3f:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    214fa4960a46:	41 50                                           	push   r8
    214fa4960a48:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4960a4c:	8b 85 40 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c0]
    214fa4960a52:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa4960a57:	44 8b 8d 48 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1b8]
    214fa4960a5e:	e8 dd 77 ec ff                                  	call   0x214fa4828240
    214fa4960a63:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4960a67:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4960a6b:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    214fa4960a75:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa4960a7f:	46 8b 84 0f 88 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x288]
    214fa4960a87:	42 83 bc 0f 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x288],0x0
    214fa4960a90:	0f 84 4e 00 00 00                               	je     0x214fa4960ae4
    214fa4960a96:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    214fa4960a9d:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    214fa4960aa4:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    214fa4960aab:	41 50                                           	push   r8
    214fa4960aad:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4960ab1:	8b 85 48 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2b8]
    214fa4960ab7:	ba 02 00 00 00                                  	mov    edx,0x2
    214fa4960abc:	44 8b 8d 48 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1b8]
    214fa4960ac3:	e8 78 77 ec ff                                  	call   0x214fa4828240
    214fa4960ac8:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4960acc:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4960ad0:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    214fa4960ada:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa4960ae4:	46 8b 84 0f 8c 02 00 00                         	mov    r8d,DWORD PTR [rdi+r9*1+0x28c]
    214fa4960aec:	42 83 bc 0f 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r9*1+0x28c],0x0
    214fa4960af5:	0f 84 77 03 00 00                               	je     0x214fa4960e72
    214fa4960afb:	41 8d 89 90 02 00 00                            	lea    ecx,[r9+0x290]
    214fa4960b02:	41 8d 99 30 02 00 00                            	lea    ebx,[r9+0x230]
    214fa4960b09:	45 8d 81 70 02 00 00                            	lea    r8d,[r9+0x270]
    214fa4960b10:	41 50                                           	push   r8
    214fa4960b12:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4960b16:	8b 85 58 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2a8]
    214fa4960b1c:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa4960b21:	44 8b 8d 48 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1b8]
    214fa4960b28:	e8 13 77 ec ff                                  	call   0x214fa4828240
    214fa4960b2d:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4960b31:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4960b35:	c4 a1 7a 6f 84 0f 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x270]
    214fa4960b3f:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa4960b49:	e9 24 03 00 00                                  	jmp    0x214fa4960e72
    214fa4960b4e:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa4960b52:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    214fa4960b5c:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    214fa4960b62:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    214fa4960b67:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4960b6b:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    214fa4960b75:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    214fa4960b79:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    214fa4960b7d:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    214fa4960b87:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    214fa4960b8b:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    214fa4960b95:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    214fa4960b99:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    214fa4960b9d:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    214fa4960ba7:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    214fa4960bab:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    214fa4960bb5:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    214fa4960bb9:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    214fa4960bbd:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    214fa4960bc1:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4960bc5:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    214fa4960bcb:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    214fa4960bd0:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    214fa4960bd4:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    214fa4960bd8:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    214fa4960bdd:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    214fa4960be2:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa4960be6:	0f 87 09 00 00 00                               	ja     0x214fa4960bf5
    214fa4960bec:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa4960bf0:	e9 04 00 00 00                                  	jmp    0x214fa4960bf9
    214fa4960bf5:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    214fa4960bf9:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4960bfd:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa4960c01:	0f 87 09 00 00 00                               	ja     0x214fa4960c10
    214fa4960c07:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa4960c0b:	e9 04 00 00 00                                  	jmp    0x214fa4960c14
    214fa4960c10:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa4960c14:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa4960c19:	41 83 f8 01                                     	cmp    r8d,0x1
    214fa4960c1d:	0f 84 a4 00 00 00                               	je     0x214fa4960cc7
    214fa4960c23:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa4960c27:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    214fa4960c31:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4960c35:	0f 87 09 00 00 00                               	ja     0x214fa4960c44
    214fa4960c3b:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa4960c3f:	e9 04 00 00 00                                  	jmp    0x214fa4960c48
    214fa4960c44:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa4960c48:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4960c4c:	0f 87 0a 00 00 00                               	ja     0x214fa4960c5c
    214fa4960c52:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa4960c57:	e9 04 00 00 00                                  	jmp    0x214fa4960c60
    214fa4960c5c:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa4960c60:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    214fa4960c64:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4960c69:	c5 78 10 85 c0 fb ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x440]
    214fa4960c71:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa4960c75:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa4960c7d:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4960c81:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    214fa4960c8b:	41 83 f8 03                                     	cmp    r8d,0x3
    214fa4960c8f:	0f 85 04 00 00 00                               	jne    0x214fa4960c99
    214fa4960c95:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    214fa4960c99:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    214fa4960c9e:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa4960ca2:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4960ca6:	c4 21 7a 6f 94 27 18 37 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r12*1+0x3718]
    214fa4960cb0:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    214fa4960cb5:	c4 41 79 28 d8                                  	vmovapd xmm11,xmm8
    214fa4960cba:	c4 41 79 28 d1                                  	vmovapd xmm10,xmm9
    214fa4960cbf:	4d 8b c4                                        	mov    r8,r12
    214fa4960cc2:	e9 c7 00 00 00                                  	jmp    0x214fa4960d8e
    214fa4960cc7:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    214fa4960cd1:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4960cd5:	0f 87 09 00 00 00                               	ja     0x214fa4960ce4
    214fa4960cdb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa4960cdf:	e9 04 00 00 00                                  	jmp    0x214fa4960ce8
    214fa4960ce4:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa4960ce8:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4960cec:	0f 87 0a 00 00 00                               	ja     0x214fa4960cfc
    214fa4960cf2:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa4960cf7:	e9 04 00 00 00                                  	jmp    0x214fa4960d00
    214fa4960cfc:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa4960d00:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    214fa4960d0a:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    214fa4960d10:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    214fa4960d15:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4960d19:	0f 87 09 00 00 00                               	ja     0x214fa4960d28
    214fa4960d1f:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa4960d23:	e9 04 00 00 00                                  	jmp    0x214fa4960d2c
    214fa4960d28:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    214fa4960d2c:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4960d30:	0f 87 0a 00 00 00                               	ja     0x214fa4960d40
    214fa4960d36:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa4960d3b:	e9 04 00 00 00                                  	jmp    0x214fa4960d44
    214fa4960d40:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa4960d44:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    214fa4960d4e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4960d53:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa4960d57:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    214fa4960d61:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    214fa4960d66:	c5 78 10 9d c0 fb ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x440]
    214fa4960d6e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa4960d72:	c5 78 10 95 60 fb ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x4a0]
    214fa4960d7a:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa4960d7e:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa4960d82:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa4960d86:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa4960d8a:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    214fa4960d8e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa4960d92:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa4960d96:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    214fa4960da0:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    214fa4960daa:	45 8b cb                                        	mov    r9d,r11d
    214fa4960dad:	e9 c0 00 00 00                                  	jmp    0x214fa4960e72
    214fa4960db2:	4d 8b e1                                        	mov    r12,r9
    214fa4960db5:	c4 81 7a 10 44 20 50                            	vmovss xmm0,DWORD PTR [r8+r12*1+0x50]
    214fa4960dbc:	c5 fa 59 85 f0 fc ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x310]
    214fa4960dc4:	c4 41 7a 10 44 00 50                            	vmovss xmm8,DWORD PTR [r8+rax*1+0x50]
    214fa4960dcb:	c4 41 3a 59 c3                                  	vmulss xmm8,xmm8,xmm11
    214fa4960dd0:	48 8b ce                                        	mov    rcx,rsi
    214fa4960dd3:	c4 41 32 59 74 08 50                            	vmulss xmm14,xmm9,DWORD PTR [r8+rcx*1+0x50]
    214fa4960dda:	c4 41 3a 58 c6                                  	vaddss xmm8,xmm8,xmm14
    214fa4960ddf:	c4 c1 7a 58 c0                                  	vaddss xmm0,xmm0,xmm8
    214fa4960de4:	c5 7b 10 85 38 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x3c8]
    214fa4960dec:	c5 ba 59 c0                                     	vmulss xmm0,xmm8,xmm0
    214fa4960df0:	c4 01 7a 10 74 20 54                            	vmovss xmm14,DWORD PTR [r8+r12*1+0x54]
    214fa4960df7:	c5 0a 59 b5 f0 fc ff ff                         	vmulss xmm14,xmm14,DWORD PTR [rbp-0x310]
    214fa4960dff:	c5 fb 11 85 68 fe ff ff                         	vmovsd QWORD PTR [rbp-0x198],xmm0
    214fa4960e07:	c4 c1 7a 10 44 00 54                            	vmovss xmm0,DWORD PTR [r8+rax*1+0x54]
    214fa4960e0e:	c4 c1 7a 59 c3                                  	vmulss xmm0,xmm0,xmm11
    214fa4960e13:	c4 c1 32 59 6c 08 54                            	vmulss xmm5,xmm9,DWORD PTR [r8+rcx*1+0x54]
    214fa4960e1a:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4960e1e:	c5 8a 58 c0                                     	vaddss xmm0,xmm14,xmm0
    214fa4960e22:	c5 ba 59 c0                                     	vmulss xmm0,xmm8,xmm0
    214fa4960e26:	8d b7 90 02 00 00                               	lea    esi,[rdi+0x290]
    214fa4960e2c:	44 8d 8f 30 01 00 00                            	lea    r9d,[rdi+0x130]
    214fa4960e33:	8b ce                                           	mov    ecx,esi
    214fa4960e35:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4960e39:	8b 85 78 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x288]
    214fa4960e3f:	41 8b d7                                        	mov    edx,r15d
    214fa4960e42:	c5 fb 10 8d 68 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x198]
    214fa4960e4a:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa4960e4e:	41 8b d9                                        	mov    ebx,r9d
    214fa4960e51:	e8 da 76 ec ff                                  	call   0x214fa4828530
    214fa4960e56:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4960e5a:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4960e5e:	c4 a1 7a 6f 84 0f 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x130]
    214fa4960e68:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa4960e72:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa4960e76:	46 8b 9c 07 ec 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xec]
    214fa4960e7e:	42 83 bc 07 ec 00 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0xec],0x0
    214fa4960e87:	0f 84 c3 01 00 00                               	je     0x214fa4961050
    214fa4960e8d:	c5 fb 10 85 b0 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x250]
    214fa4960e95:	c5 fa 59 85 f0 fc ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x310]
    214fa4960e9d:	c5 fb 10 ad d8 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x228]
    214fa4960ea5:	c5 d2 59 ad 60 fe ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x1a0]
    214fa4960ead:	c5 fb 10 b5 a8 fd ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x258]
    214fa4960eb5:	c5 ca 59 b5 b8 fd ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x248]
    214fa4960ebd:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    214fa4960ec1:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4960ec5:	c5 fb 10 ad 38 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x3c8]
    214fa4960ecd:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    214fa4960ed1:	4c 8b 15 af e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7af]        # 0x214fa495f687
    214fa4960ed8:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    214fa4960edd:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    214fa4960ee1:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    214fa4960ee5:	0f 87 04 00 00 00                               	ja     0x214fa4960eef
    214fa4960eeb:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    214fa4960eef:	46 8b 9c 07 f0 00 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0xf0]
    214fa4960ef7:	41 81 c3 00 f8 ff ff                            	add    r11d,0xfffff800
    214fa4960efe:	0f 85 28 00 00 00                               	jne    0x214fa4960f2c
    214fa4960f04:	c4 a1 7a 10 84 07 f4 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xf4]
    214fa4960f0e:	4c 8b 15 72 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe772]        # 0x214fa495f687
    214fa4960f15:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa4960f1a:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    214fa4960f1e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4960f22:	e8 91 96 ec ff                                  	call   0x214fa482a5b8
    214fa4960f27:	e9 89 00 00 00                                  	jmp    0x214fa4960fb5
    214fa4960f2c:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa4960f30:	0f 84 5c 00 00 00                               	je     0x214fa4960f92
    214fa4960f36:	c4 a1 7a 10 84 07 fc 00 00 00                   	vmovss xmm0,DWORD PTR [rdi+r8*1+0xfc]
    214fa4960f40:	c4 a1 7a 5c bc 07 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [rdi+r8*1+0xf8]
    214fa4960f4a:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    214fa4960f4e:	7a 06                                           	jp     0x214fa4960f56
    214fa4960f50:	0f 84 29 00 00 00                               	je     0x214fa4960f7f
    214fa4960f56:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    214fa4960f5a:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    214fa4960f5e:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    214fa4960f62:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    214fa4960f66:	0f 86 49 00 00 00                               	jbe    0x214fa4960fb5
    214fa4960f6c:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4960f70:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4960f75:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4960f7a:	e9 5b 00 00 00                                  	jmp    0x214fa4960fda
    214fa4960f7f:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4960f83:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4960f88:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4960f8d:	e9 44 00 00 00                                  	jmp    0x214fa4960fd6
    214fa4960f92:	c4 a1 52 59 84 07 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [rdi+r8*1+0xf4]
    214fa4960f9c:	4c 8b 15 e4 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe6e4]        # 0x214fa495f687
    214fa4960fa3:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    214fa4960fa8:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    214fa4960fac:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4960fb0:	e8 03 96 ec ff                                  	call   0x214fa482a5b8
    214fa4960fb5:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4960fb9:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4960fbe:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4960fc3:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    214fa4960fc7:	0f 87 09 00 00 00                               	ja     0x214fa4960fd6
    214fa4960fcd:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    214fa4960fd1:	e9 04 00 00 00                                  	jmp    0x214fa4960fda
    214fa4960fd6:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa4960fda:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4960fde:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4960fe2:	c4 a1 4a 59 ac 0f 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x230]
    214fa4960fec:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa4960ff0:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa4960ff4:	c4 a1 7a 59 bc 07 00 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [rdi+r8*1+0x100]
    214fa4960ffe:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    214fa4961002:	c4 a1 7a 11 ac 0f 30 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x230],xmm5
    214fa496100c:	c4 a1 4a 59 ac 0f 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x234]
    214fa4961016:	c4 a1 7a 59 bc 07 04 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [rdi+r8*1+0x104]
    214fa4961020:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    214fa4961024:	c4 a1 7a 11 ac 0f 34 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x234],xmm5
    214fa496102e:	c4 a1 4a 59 ac 0f 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [rdi+r9*1+0x238]
    214fa4961038:	c4 a1 7a 59 84 07 08 01 00 00                   	vmulss xmm0,xmm0,DWORD PTR [rdi+r8*1+0x108]
    214fa4961042:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    214fa4961046:	c4 a1 7a 11 84 0f 38 02 00 00                   	vmovss DWORD PTR [rdi+r9*1+0x238],xmm0
    214fa4961050:	c4 a1 7a 6f 84 0f 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x230]
    214fa496105a:	c4 a1 7a 7f 84 0f 80 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x280],xmm0
    214fa4961064:	83 bd e0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x220],0x0
    214fa496106b:	0f 85 ca 11 00 00                               	jne    0x214fa496223b
    214fa4961071:	46 8b 5c 07 74                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x74]
    214fa4961076:	42 83 7c 07 74 00                               	cmp    DWORD PTR [rdi+r8*1+0x74],0x0
    214fa496107c:	0f 85 7e 11 00 00                               	jne    0x214fa4962200
    214fa4961082:	c4 a1 7a 6f 84 0f 80 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [rdi+r9*1+0x280]
    214fa496108c:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa4961094:	c5 f8 c2 ed 01                                  	vcmpltps xmm5,xmm0,xmm5
    214fa4961099:	c5 d0 55 c0                                     	vandnps xmm0,xmm5,xmm0
    214fa496109d:	c5 f8 10 b5 60 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x4a0]
    214fa49610a5:	c5 c8 c2 e8 01                                  	vcmpltps xmm5,xmm6,xmm0
    214fa49610aa:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    214fa49610b2:	c5 51 df f8                                     	vpandn xmm15,xmm5,xmm0
    214fa49610b6:	c5 c1 db c5                                     	vpand  xmm0,xmm7,xmm5
    214fa49610ba:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49610bf:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    214fa49610c9:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa49610ce:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa49610d2:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa49610d6:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    214fa49610e0:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa49610e5:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa49610e9:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa49610ed:	49 ba 40 29 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2940
    214fa49610f7:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa49610fc:	c4 c1 78 54 ef                                  	vandps xmm5,xmm0,xmm15
    214fa4961101:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa4961107:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    214fa496110b:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    214fa4961110:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    214fa496111a:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa496111f:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa4961123:	4c 8b 15 ab d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2ab]        # 0x214fa495e3d5
    214fa496112a:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    214fa496112f:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    214fa4961139:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa496113e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa4961142:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    214fa4961147:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    214fa496114b:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa496114f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961154:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    214fa4961159:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    214fa496115d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4961162:	46 8b 1c 07                                     	mov    r11d,DWORD PTR [rdi+r8*1]
    214fa4961166:	44 0f af 5d d0                                  	imul   r11d,DWORD PTR [rbp-0x30]
    214fa496116b:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    214fa4961171:	44 03 da                                        	add    r11d,edx
    214fa4961174:	46 8d 24 9d 00 00 00 00                         	lea    r12d,[r11*4+0x0]
    214fa496117c:	46 8b 7c 07 18                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x18]
    214fa4961181:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa4961185:	45 03 df                                        	add    r11d,r15d
    214fa4961188:	83 bd 80 fc ff ff 0f                            	cmp    DWORD PTR [rbp-0x380],0xf
    214fa496118f:	0f 84 b9 00 00 00                               	je     0x214fa496124e
    214fa4961195:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    214fa496119c:	41 83 e7 01                                     	and    r15d,0x1
    214fa49611a0:	41 f7 df                                        	neg    r15d
    214fa49611a3:	c4 c1 79 6e ef                                  	vmovd  xmm5,r15d
    214fa49611a8:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    214fa49611ad:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    214fa49611b4:	41 c1 e7 1e                                     	shl    r15d,0x1e
    214fa49611b8:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa49611bc:	c4 c3 51 22 ef 01                               	vpinsrd xmm5,xmm5,r15d,0x1
    214fa49611c2:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    214fa49611c9:	41 c1 e7 1d                                     	shl    r15d,0x1d
    214fa49611cd:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa49611d1:	c4 c3 51 22 ef 02                               	vpinsrd xmm5,xmm5,r15d,0x2
    214fa49611d7:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    214fa49611de:	41 c1 e7 1c                                     	shl    r15d,0x1c
    214fa49611e2:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa49611e6:	c4 c3 51 22 ef 03                               	vpinsrd xmm5,xmm5,r15d,0x3
    214fa49611ec:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    214fa49611f1:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    214fa49611f7:	0f 84 39 00 00 00                               	je     0x214fa4961236
    214fa49611fd:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    214fa4961202:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    214fa4961208:	0f 84 28 00 00 00                               	je     0x214fa4961236
    214fa496120e:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    214fa4961213:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    214fa4961217:	c4 a1 7a 6f 34 0f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r9*1]
    214fa496121d:	c4 a1 7a 6f 3c 27                               	vmovdqu xmm7,XMMWORD PTR [rdi+r12*1]
    214fa4961223:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    214fa4961227:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    214fa496122b:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4961230:	c4 a1 7a 7f 34 27                               	vmovdqu XMMWORD PTR [rdi+r12*1],xmm6
    214fa4961236:	c4 a1 7a 6f 34 1f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r11*1]
    214fa496123c:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    214fa4961240:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    214fa4961244:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961249:	e9 37 00 00 00                                  	jmp    0x214fa4961285
    214fa496124e:	46 8b 7c 07 68                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x68]
    214fa4961253:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    214fa4961259:	0f 84 26 00 00 00                               	je     0x214fa4961285
    214fa496125f:	46 8b 7c 07 70                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x70]
    214fa4961264:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    214fa496126a:	0f 84 15 00 00 00                               	je     0x214fa4961285
    214fa4961270:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    214fa4961275:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    214fa4961279:	c4 a1 7a 6f 2c 0f                               	vmovdqu xmm5,XMMWORD PTR [rdi+r9*1]
    214fa496127f:	c4 a1 7a 7f 2c 27                               	vmovdqu XMMWORD PTR [rdi+r12*1],xmm5
    214fa4961285:	c4 a1 7a 7f 04 1f                               	vmovdqu XMMWORD PTR [rdi+r11*1],xmm0
    214fa496128b:	46 8b 5c 07 68                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x68]
    214fa4961290:	42 83 7c 07 68 00                               	cmp    DWORD PTR [rdi+r8*1+0x68],0x0
    214fa4961296:	0f 84 e9 0f 00 00                               	je     0x214fa4962285
    214fa496129c:	46 8b 5c 07 70                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x70]
    214fa49612a1:	42 83 7c 07 70 00                               	cmp    DWORD PTR [rdi+r8*1+0x70],0x0
    214fa49612a7:	0f 84 d8 0f 00 00                               	je     0x214fa4962285
    214fa49612ad:	46 8b 5c 07 14                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x14]
    214fa49612b2:	42 83 7c 07 14 04                               	cmp    DWORD PTR [rdi+r8*1+0x14],0x4
    214fa49612b8:	0f 85 c7 0f 00 00                               	jne    0x214fa4962285
    214fa49612be:	46 8b 5c 07 18                                  	mov    r11d,DWORD PTR [rdi+r8*1+0x18]
    214fa49612c3:	45 85 db                                        	test   r11d,r11d
    214fa49612c6:	0f 84 b9 0f 00 00                               	je     0x214fa4962285
    214fa49612cc:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    214fa49612d0:	46 8b 3c 27                                     	mov    r15d,DWORD PTR [rdi+r12*1]
    214fa49612d4:	42 83 3c 27 00                                  	cmp    DWORD PTR [rdi+r12*1],0x0
    214fa49612d9:	0f 84 a6 0f 00 00                               	je     0x214fa4962285
    214fa49612df:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    214fa49612e3:	46 8b 24 27                                     	mov    r12d,DWORD PTR [rdi+r12*1]
    214fa49612e7:	41 83 eb 3c                                     	sub    r11d,0x3c
    214fa49612eb:	46 8b 1c 1f                                     	mov    r11d,DWORD PTR [rdi+r11*1]
    214fa49612ef:	44 8b fa                                        	mov    r15d,edx
    214fa49612f2:	41 c1 ef 02                                     	shr    r15d,0x2
    214fa49612f6:	45 0f af fb                                     	imul   r15d,r11d
    214fa49612fa:	41 c1 e7 04                                     	shl    r15d,0x4
    214fa49612fe:	47 8d 1c 27                                     	lea    r11d,[r15+r12*1]
    214fa4961302:	44 8b a5 e8 fb ff ff                            	mov    r12d,DWORD PTR [rbp-0x418]
    214fa4961309:	45 03 dc                                        	add    r11d,r12d
    214fa496130c:	46 8b 7c 07 6c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x6c]
    214fa4961311:	41 81 ef 01 02 00 00                            	sub    r15d,0x201
    214fa4961318:	33 c0                                           	xor    eax,eax
    214fa496131a:	45 85 ff                                        	test   r15d,r15d
    214fa496131d:	0f 94 c0                                        	sete   al
    214fa4961320:	41 83 ff 02                                     	cmp    r15d,0x2
    214fa4961324:	41 0f 94 c7                                     	sete   r15b
    214fa4961328:	45 0f b6 ff                                     	movzx  r15d,r15b
    214fa496132c:	44 0b f8                                        	or     r15d,eax
    214fa496132f:	0f 85 0d 00 00 00                               	jne    0x214fa4961342
    214fa4961335:	4a c7 04 1f 00 00 00 00                         	mov    QWORD PTR [rdi+r11*1],0x0
    214fa496133d:	e9 43 0f 00 00                                  	jmp    0x214fa4962285
    214fa4961342:	44 8b bd 80 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x380]
    214fa4961349:	8b c2                                           	mov    eax,edx
    214fa496134b:	83 e0 03                                        	and    eax,0x3
    214fa496134e:	8b 9d e0 fb ff ff                               	mov    ebx,DWORD PTR [rbp-0x420]
    214fa4961354:	0b d8                                           	or     ebx,eax
    214fa4961356:	8d 04 9d 00 00 00 00                            	lea    eax,[rbx*4+0x0]
    214fa496135d:	83 e0 3f                                        	and    eax,0x3f
    214fa4961360:	8b c8                                           	mov    ecx,eax
    214fa4961362:	49 d3 e7                                        	shl    r15,cl
    214fa4961365:	4a 8b 04 1f                                     	mov    rax,QWORD PTR [rdi+r11*1]
    214fa4961369:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa496136d:	0f 84 5f 07 00 00                               	je     0x214fa4961ad2
    214fa4961373:	49 0b c7                                        	or     rax,r15
    214fa4961376:	4a 89 04 1f                                     	mov    QWORD PTR [rdi+r11*1],rax
    214fa496137a:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa496137e:	0f 85 01 0f 00 00                               	jne    0x214fa4962285
    214fa4961384:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    214fa4961389:	8b c2                                           	mov    eax,edx
    214fa496138b:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa4961390:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    214fa4961394:	8b cb                                           	mov    ecx,ebx
    214fa4961396:	0f af 8d 28 fb ff ff                            	imul   ecx,DWORD PTR [rbp-0x4d8]
    214fa496139d:	03 c8                                           	add    ecx,eax
    214fa496139f:	c1 e1 04                                        	shl    ecx,0x4
    214fa49613a2:	41 03 cf                                        	add    ecx,r15d
    214fa49613a5:	c5 fa 6f 44 0f 30                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa49613ab:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    214fa49613b0:	c5 fa 6f 74 0f 20                               	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa49613b6:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa49613bb:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa49613bf:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa49613c5:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa49613ca:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa49613cf:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    214fa49613d4:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa49613da:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa49613df:	8b cb                                           	mov    ecx,ebx
    214fa49613e1:	0f af 8d 88 fd ff ff                            	imul   ecx,DWORD PTR [rbp-0x278]
    214fa49613e8:	03 c8                                           	add    ecx,eax
    214fa49613ea:	c1 e1 04                                        	shl    ecx,0x4
    214fa49613ed:	41 03 cf                                        	add    ecx,r15d
    214fa49613f0:	c5 7a 6f 4c 0f 30                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa49613f6:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa49613fc:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa4961401:	c5 7a 6f 54 0f 20                               	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa4961407:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    214fa496140d:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    214fa4961412:	c5 7a 6f 5c 0f 10                               	vmovdqu xmm11,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa4961418:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa496141e:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    214fa4961423:	c5 7a 6f 24 0f                                  	vmovdqu xmm12,XMMWORD PTR [rdi+rcx*1]
    214fa4961428:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa496142e:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    214fa4961433:	8b cb                                           	mov    ecx,ebx
    214fa4961435:	0f af 8d 40 fe ff ff                            	imul   ecx,DWORD PTR [rbp-0x1c0]
    214fa496143c:	03 c8                                           	add    ecx,eax
    214fa496143e:	c1 e1 04                                        	shl    ecx,0x4
    214fa4961441:	41 03 cf                                        	add    ecx,r15d
    214fa4961444:	c5 7a 6f 6c 0f 30                               	vmovdqu xmm13,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa496144a:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa4961450:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa4961455:	c5 7a 6f 74 0f 20                               	vmovdqu xmm14,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa496145b:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa4961461:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    214fa4961465:	c5 fa 6f 4c 0f 10                               	vmovdqu xmm1,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa496146b:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa4961470:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    214fa4961474:	c5 fa 6f 14 0f                                  	vmovdqu xmm2,XMMWORD PTR [rdi+rcx*1]
    214fa4961479:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa496147e:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    214fa4961482:	0f af 9d 80 fd ff ff                            	imul   ebx,DWORD PTR [rbp-0x280]
    214fa4961489:	03 c3                                           	add    eax,ebx
    214fa496148b:	c1 e0 04                                        	shl    eax,0x4
    214fa496148e:	44 03 f8                                        	add    r15d,eax
    214fa4961491:	c4 a1 7a 6f 5c 3f 30                            	vmovdqu xmm3,XMMWORD PTR [rdi+r15*1+0x30]
    214fa4961498:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa496149d:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa49614a1:	c4 a1 7a 6f 64 3f 20                            	vmovdqu xmm4,XMMWORD PTR [rdi+r15*1+0x20]
    214fa49614a8:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa49614ad:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa49614b2:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa49614b6:	c4 a1 7a 6f 6c 3f 10                            	vmovdqu xmm5,XMMWORD PTR [rdi+r15*1+0x10]
    214fa49614bd:	c5 f8 11 b5 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm6
    214fa49614c5:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa49614ca:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa49614ce:	c4 a1 7a 6f 34 3f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r15*1]
    214fa49614d4:	c5 f8 11 bd 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm7
    214fa49614dc:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa49614e1:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa49614e5:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa49614ea:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa49614ef:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    214fa49614f3:	41 83 ff 0f                                     	cmp    r15d,0xf
    214fa49614f7:	0f 84 0e 00 00 00                               	je     0x214fa496150b
    214fa49614fd:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    214fa4961506:	e9 7a 0d 00 00                                  	jmp    0x214fa4962285
    214fa496150b:	49 ba 3c 00 00 00 3d 00 00 00                   	movabs r10,0x3d0000003c
    214fa4961515:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa496151a:	49 ba 3e 00 00 00 3f 00 00 00                   	movabs r10,0x3f0000003e
    214fa4961524:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa496152a:	49 ba 38 00 00 00 39 00 00 00                   	movabs r10,0x3900000038
    214fa4961534:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4961539:	49 ba 3a 00 00 00 3b 00 00 00                   	movabs r10,0x3b0000003a
    214fa4961543:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4961549:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa4961551:	49 ba 34 00 00 00 35 00 00 00                   	movabs r10,0x3500000034
    214fa496155b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4961560:	49 ba 36 00 00 00 37 00 00 00                   	movabs r10,0x3700000036
    214fa496156a:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4961570:	c5 f8 11 bd 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm7
    214fa4961578:	49 ba 30 00 00 00 31 00 00 00                   	movabs r10,0x3100000030
    214fa4961582:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4961587:	49 ba 32 00 00 00 33 00 00 00                   	movabs r10,0x3300000032
    214fa4961591:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4961597:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    214fa496159f:	49 ba 2c 00 00 00 2d 00 00 00                   	movabs r10,0x2d0000002c
    214fa49615a9:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49615ae:	49 ba 2e 00 00 00 2f 00 00 00                   	movabs r10,0x2f0000002e
    214fa49615b8:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa49615be:	c5 f8 11 bd 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm7
    214fa49615c6:	49 ba 28 00 00 00 29 00 00 00                   	movabs r10,0x2900000028
    214fa49615d0:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49615d5:	49 ba 2a 00 00 00 2b 00 00 00                   	movabs r10,0x2b0000002a
    214fa49615df:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa49615e5:	c5 78 11 85 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm8
    214fa49615ed:	49 ba 24 00 00 00 25 00 00 00                   	movabs r10,0x2500000024
    214fa49615f7:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa49615fc:	49 ba 26 00 00 00 27 00 00 00                   	movabs r10,0x2700000026
    214fa4961606:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa496160c:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    214fa4961614:	49 ba 20 00 00 00 21 00 00 00                   	movabs r10,0x2100000020
    214fa496161e:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4961623:	49 ba 22 00 00 00 23 00 00 00                   	movabs r10,0x2300000022
    214fa496162d:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4961633:	c5 78 11 8d 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm9
    214fa496163b:	49 ba 1c 00 00 00 1d 00 00 00                   	movabs r10,0x1d0000001c
    214fa4961645:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa496164a:	49 ba 1e 00 00 00 1f 00 00 00                   	movabs r10,0x1f0000001e
    214fa4961654:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa496165a:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    214fa4961662:	49 ba 18 00 00 00 19 00 00 00                   	movabs r10,0x1900000018
    214fa496166c:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4961671:	49 ba 1a 00 00 00 1b 00 00 00                   	movabs r10,0x1b0000001a
    214fa496167b:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4961681:	c5 78 11 95 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm10
    214fa4961689:	49 ba 14 00 00 00 15 00 00 00                   	movabs r10,0x1500000014
    214fa4961693:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4961698:	49 ba 16 00 00 00 17 00 00 00                   	movabs r10,0x1700000016
    214fa49616a2:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    214fa49616a8:	c5 78 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm8
    214fa49616b0:	49 ba 10 00 00 00 11 00 00 00                   	movabs r10,0x1100000010
    214fa49616ba:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa49616bf:	49 ba 12 00 00 00 13 00 00 00                   	movabs r10,0x1300000012
    214fa49616c9:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa49616cf:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    214fa49616d7:	49 ba 0c 00 00 00 0d 00 00 00                   	movabs r10,0xd0000000c
    214fa49616e1:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa49616e6:	49 ba 0e 00 00 00 0f 00 00 00                   	movabs r10,0xf0000000e
    214fa49616f0:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa49616f6:	c5 f8 11 85 c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm0
    214fa49616fe:	49 ba 08 00 00 00 09 00 00 00                   	movabs r10,0x900000008
    214fa4961708:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa496170d:	49 ba 0a 00 00 00 0b 00 00 00                   	movabs r10,0xb0000000a
    214fa4961717:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa496171d:	c5 78 11 a5 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm12
    214fa4961725:	49 ba 04 00 00 00 05 00 00 00                   	movabs r10,0x500000004
    214fa496172f:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4961734:	49 ba 06 00 00 00 07 00 00 00                   	movabs r10,0x700000006
    214fa496173e:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4961744:	c5 78 11 8d 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm9
    214fa496174c:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa4961751:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    214fa4961757:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    214fa496175d:	49 ba 02 00 00 00 03 00 00 00                   	movabs r10,0x300000002
    214fa4961767:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa496176d:	c5 78 11 ad 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm13
    214fa4961775:	49 ba 00 00 80 ff 00 00 80 ff                   	movabs r10,0xff800000ff800000
    214fa496177f:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4961784:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4961789:	c5 f8 11 bd b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm7
    214fa4961791:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    214fa4961796:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    214fa496179c:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    214fa49617a1:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa49617a6:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    214fa49617aa:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa49617af:	4c 8b 15 c1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc1]        # 0x214fa4961777
    214fa49617b6:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa49617bb:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa49617c0:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    214fa49617c5:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa49617c9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa49617ce:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    214fa49617d3:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa49617d8:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    214fa49617dc:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa49617e1:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa49617e5:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa49617e9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49617ee:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa49617f3:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    214fa49617f8:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa49617fc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961801:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961805:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa4961809:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496180e:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa4961813:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4961817:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    214fa496181b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961820:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961824:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa4961828:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496182d:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    214fa4961832:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4961836:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    214fa496183a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496183f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961843:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    214fa4961847:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496184c:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    214fa4961851:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4961855:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    214fa4961859:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496185e:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961862:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    214fa4961866:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496186b:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    214fa4961871:	c5 f8 10 bd b0 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x350]
    214fa4961879:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa496187d:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa4961881:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961886:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa496188a:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    214fa496188e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961893:	c5 f8 10 b5 00 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x400]
    214fa496189b:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49618a0:	c5 78 10 85 10 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x3f0]
    214fa49618a8:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49618ac:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49618b0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49618b5:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49618b9:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49618bd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49618c2:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    214fa49618ca:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49618cf:	c5 78 10 85 c0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x340]
    214fa49618d7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49618db:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49618df:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49618e4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49618e8:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49618ec:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49618f1:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa49618f9:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49618fe:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa4961906:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496190a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496190e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961913:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4961917:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa496191b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961920:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa4961928:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496192d:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa4961935:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4961939:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496193d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961942:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4961946:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa496194a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496194f:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa4961957:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496195c:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa4961964:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4961968:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496196c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961971:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4961975:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4961979:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496197e:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa4961986:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496198b:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa4961993:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4961997:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496199b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49619a0:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49619a4:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49619a8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49619ad:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa49619b5:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49619ba:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa49619c2:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49619c6:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49619ca:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49619cf:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49619d3:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49619d7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49619dc:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa49619e4:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49619e9:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa49619f1:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49619f5:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49619f9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49619fe:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4961a02:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4961a06:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961a0b:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa4961a10:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4961a15:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa4961a1d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4961a21:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4961a25:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961a2a:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa4961a34:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4961a38:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa4961a3c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961a41:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    214fa4961a4b:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa4961a4f:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa4961a53:	45 33 ff                                        	xor    r15d,r15d
    214fa4961a56:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa4961a5a:	41 0f 97 c7                                     	seta   r15b
    214fa4961a5e:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    214fa4961a65:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    214fa4961a6d:	0b d8                                           	or     ebx,eax
    214fa4961a6f:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    214fa4961a74:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa4961a79:	bb 02 00 00 00                                  	mov    ebx,0x2
    214fa4961a7e:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4961a82:	44 0f 47 fb                                     	cmova  r15d,ebx
    214fa4961a86:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    214fa4961a8e:	0b c8                                           	or     ecx,eax
    214fa4961a90:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    214fa4961a95:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa4961a9a:	be 03 00 00 00                                  	mov    esi,0x3
    214fa4961a9f:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa4961aa3:	44 0f 47 fe                                     	cmova  r15d,esi
    214fa4961aa7:	41 c1 e7 02                                     	shl    r15d,0x2
    214fa4961aab:	41 0b c7                                        	or     eax,r15d
    214fa4961aae:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    214fa4961ab3:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    214fa4961aba:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    214fa4961ac1:	44 0b f8                                        	or     r15d,eax
    214fa4961ac4:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    214fa4961ac8:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    214fa4961acd:	e9 b3 07 00 00                                  	jmp    0x214fa4962285
    214fa4961ad2:	42 8b 44 1f 0c                                  	mov    eax,DWORD PTR [rdi+r11*1+0xc]
    214fa4961ad7:	8b d8                                           	mov    ebx,eax
    214fa4961ad9:	83 e3 3f                                        	and    ebx,0x3f
    214fa4961adc:	8b cb                                           	mov    ecx,ebx
    214fa4961ade:	49 d3 ef                                        	shr    r15,cl
    214fa4961ae1:	41 f6 c7 01                                     	test   r15b,0x1
    214fa4961ae5:	0f 84 9a 07 00 00                               	je     0x214fa4962285
    214fa4961aeb:	83 e0 03                                        	and    eax,0x3
    214fa4961aee:	44 8d 3c 85 00 00 00 00                         	lea    r15d,[rax*4+0x0]
    214fa4961af6:	45 0b f9                                        	or     r15d,r9d
    214fa4961af9:	c4 a1 7a 10 04 3f                               	vmovss xmm0,DWORD PTR [rdi+r15*1]
    214fa4961aff:	c4 a1 7a 10 6c 1f 08                            	vmovss xmm5,DWORD PTR [rdi+r11*1+0x8]
    214fa4961b06:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    214fa4961b0a:	0f 86 75 07 00 00                               	jbe    0x214fa4962285
    214fa4961b10:	46 8b 7c 07 1c                                  	mov    r15d,DWORD PTR [rdi+r8*1+0x1c]
    214fa4961b15:	8b c2                                           	mov    eax,edx
    214fa4961b17:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa4961b1c:	42 8b 1c 07                                     	mov    ebx,DWORD PTR [rdi+r8*1]
    214fa4961b20:	8b 8d 28 fb ff ff                               	mov    ecx,DWORD PTR [rbp-0x4d8]
    214fa4961b26:	0f af cb                                        	imul   ecx,ebx
    214fa4961b29:	03 c8                                           	add    ecx,eax
    214fa4961b2b:	c1 e1 04                                        	shl    ecx,0x4
    214fa4961b2e:	41 03 cf                                        	add    ecx,r15d
    214fa4961b31:	c5 fa 6f 44 0f 30                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa4961b37:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    214fa4961b3c:	c5 fa 6f 74 0f 20                               	vmovdqu xmm6,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa4961b42:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa4961b47:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa4961b4b:	c5 fa 6f 7c 0f 10                               	vmovdqu xmm7,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa4961b51:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa4961b56:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa4961b5b:	c5 7a 6f 04 0f                                  	vmovdqu xmm8,XMMWORD PTR [rdi+rcx*1]
    214fa4961b60:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa4961b66:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa4961b6b:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    214fa4961b71:	0f af cb                                        	imul   ecx,ebx
    214fa4961b74:	03 c8                                           	add    ecx,eax
    214fa4961b76:	c1 e1 04                                        	shl    ecx,0x4
    214fa4961b79:	41 03 cf                                        	add    ecx,r15d
    214fa4961b7c:	c5 7a 6f 4c 0f 30                               	vmovdqu xmm9,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa4961b82:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa4961b88:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa4961b8d:	c5 7a 6f 54 0f 20                               	vmovdqu xmm10,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa4961b93:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    214fa4961b99:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    214fa4961b9e:	c5 7a 6f 5c 0f 10                               	vmovdqu xmm11,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa4961ba4:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa4961baa:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    214fa4961baf:	c5 7a 6f 24 0f                                  	vmovdqu xmm12,XMMWORD PTR [rdi+rcx*1]
    214fa4961bb4:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa4961bba:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    214fa4961bbf:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa4961bc5:	0f af cb                                        	imul   ecx,ebx
    214fa4961bc8:	03 c8                                           	add    ecx,eax
    214fa4961bca:	c1 e1 04                                        	shl    ecx,0x4
    214fa4961bcd:	41 03 cf                                        	add    ecx,r15d
    214fa4961bd0:	c5 7a 6f 6c 0f 30                               	vmovdqu xmm13,XMMWORD PTR [rdi+rcx*1+0x30]
    214fa4961bd6:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa4961bdc:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa4961be1:	c5 7a 6f 74 0f 20                               	vmovdqu xmm14,XMMWORD PTR [rdi+rcx*1+0x20]
    214fa4961be7:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa4961bed:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    214fa4961bf1:	c5 fa 6f 4c 0f 10                               	vmovdqu xmm1,XMMWORD PTR [rdi+rcx*1+0x10]
    214fa4961bf7:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa4961bfc:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    214fa4961c00:	c5 fa 6f 14 0f                                  	vmovdqu xmm2,XMMWORD PTR [rdi+rcx*1]
    214fa4961c05:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa4961c0a:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    214fa4961c0e:	8b 8d 80 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x280]
    214fa4961c14:	0f af cb                                        	imul   ecx,ebx
    214fa4961c17:	03 c1                                           	add    eax,ecx
    214fa4961c19:	c1 e0 04                                        	shl    eax,0x4
    214fa4961c1c:	44 03 f8                                        	add    r15d,eax
    214fa4961c1f:	c4 a1 7a 6f 5c 3f 30                            	vmovdqu xmm3,XMMWORD PTR [rdi+r15*1+0x30]
    214fa4961c26:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa4961c2b:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa4961c2f:	c4 a1 7a 6f 64 3f 20                            	vmovdqu xmm4,XMMWORD PTR [rdi+r15*1+0x20]
    214fa4961c36:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa4961c3b:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa4961c40:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa4961c44:	c4 a1 7a 6f 6c 3f 10                            	vmovdqu xmm5,XMMWORD PTR [rdi+r15*1+0x10]
    214fa4961c4b:	c5 f8 11 b5 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm6
    214fa4961c53:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa4961c58:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4961c5c:	c4 a1 7a 6f 34 3f                               	vmovdqu xmm6,XMMWORD PTR [rdi+r15*1]
    214fa4961c62:	c5 f8 11 bd 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm7
    214fa4961c6a:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa4961c6f:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa4961c73:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa4961c78:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa4961c7d:	c5 78 50 f8                                     	vmovmskps r15d,xmm0
    214fa4961c81:	41 83 ff 0f                                     	cmp    r15d,0xf
    214fa4961c85:	0f 84 0e 00 00 00                               	je     0x214fa4961c99
    214fa4961c8b:	4a c7 44 1f 08 00 00 80 7f                      	mov    QWORD PTR [rdi+r11*1+0x8],0x7f800000
    214fa4961c94:	e9 ec 05 00 00                                  	jmp    0x214fa4962285
    214fa4961c99:	4c 8b 15 6d f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff86d]        # 0x214fa496150d
    214fa4961ca0:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4961ca5:	4c 8b 15 70 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff870]        # 0x214fa496151c
    214fa4961cac:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4961cb2:	4c 8b 15 73 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff873]        # 0x214fa496152c
    214fa4961cb9:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4961cbe:	4c 8b 15 76 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff876]        # 0x214fa496153b
    214fa4961cc5:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4961ccb:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa4961cd3:	4c 8b 15 79 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff879]        # 0x214fa4961553
    214fa4961cda:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4961cdf:	4c 8b 15 7c f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff87c]        # 0x214fa4961562
    214fa4961ce6:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4961cec:	c5 f8 11 bd 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm7
    214fa4961cf4:	4c 8b 15 7f f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff87f]        # 0x214fa496157a
    214fa4961cfb:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4961d00:	4c 8b 15 82 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff882]        # 0x214fa4961589
    214fa4961d07:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4961d0d:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    214fa4961d15:	4c 8b 15 85 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff885]        # 0x214fa49615a1
    214fa4961d1c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4961d21:	4c 8b 15 88 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff888]        # 0x214fa49615b0
    214fa4961d28:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4961d2e:	c5 f8 11 bd 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm7
    214fa4961d36:	4c 8b 15 8b f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff88b]        # 0x214fa49615c8
    214fa4961d3d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4961d42:	4c 8b 15 8e f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff88e]        # 0x214fa49615d7
    214fa4961d49:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4961d4f:	c5 78 11 85 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm8
    214fa4961d57:	4c 8b 15 91 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff891]        # 0x214fa49615ef
    214fa4961d5e:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4961d63:	4c 8b 15 94 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff894]        # 0x214fa49615fe
    214fa4961d6a:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4961d70:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    214fa4961d78:	4c 8b 15 97 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff897]        # 0x214fa4961616
    214fa4961d7f:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4961d84:	4c 8b 15 9a f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff89a]        # 0x214fa4961625
    214fa4961d8b:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4961d91:	c5 78 11 8d 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm9
    214fa4961d99:	4c 8b 15 9d f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff89d]        # 0x214fa496163d
    214fa4961da0:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa4961da5:	4c 8b 15 a0 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a0]        # 0x214fa496164c
    214fa4961dac:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa4961db2:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    214fa4961dba:	4c 8b 15 a3 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a3]        # 0x214fa4961664
    214fa4961dc1:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4961dc6:	4c 8b 15 a6 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a6]        # 0x214fa4961673
    214fa4961dcd:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4961dd3:	c5 78 11 95 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm10
    214fa4961ddb:	4c 8b 15 a9 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8a9]        # 0x214fa496168b
    214fa4961de2:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4961de7:	4c 8b 15 ac f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8ac]        # 0x214fa496169a
    214fa4961dee:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    214fa4961df4:	c5 78 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm8
    214fa4961dfc:	4c 8b 15 af f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8af]        # 0x214fa49616b2
    214fa4961e03:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4961e08:	4c 8b 15 b2 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b2]        # 0x214fa49616c1
    214fa4961e0f:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4961e15:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    214fa4961e1d:	4c 8b 15 b5 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b5]        # 0x214fa49616d9
    214fa4961e24:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa4961e29:	4c 8b 15 b8 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8b8]        # 0x214fa49616e8
    214fa4961e30:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa4961e36:	c5 f8 11 85 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm0
    214fa4961e3e:	4c 8b 15 bb f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8bb]        # 0x214fa4961700
    214fa4961e45:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4961e4a:	4c 8b 15 be f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8be]        # 0x214fa496170f
    214fa4961e51:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4961e57:	c5 78 11 a5 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm12
    214fa4961e5f:	4c 8b 15 c1 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c1]        # 0x214fa4961727
    214fa4961e66:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4961e6b:	4c 8b 15 c4 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c4]        # 0x214fa4961736
    214fa4961e72:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4961e78:	c5 78 11 8d b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm9
    214fa4961e80:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa4961e85:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    214fa4961e8b:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    214fa4961e91:	4c 8b 15 c7 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8c7]        # 0x214fa496175f
    214fa4961e98:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa4961e9e:	c5 78 11 ad 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm13
    214fa4961ea6:	4c 8b 15 ca f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff8ca]        # 0x214fa4961777
    214fa4961ead:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4961eb2:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4961eb7:	c5 f8 11 bd c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm7
    214fa4961ebf:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    214fa4961ec4:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    214fa4961eca:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    214fa4961ecf:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa4961ed4:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    214fa4961ed8:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4961edd:	4c 8b 15 93 f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff893]        # 0x214fa4961777
    214fa4961ee4:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4961ee9:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4961eee:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    214fa4961ef3:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa4961ef7:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4961efc:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    214fa4961f01:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa4961f06:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    214fa4961f0a:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4961f0f:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa4961f13:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa4961f17:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961f1c:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa4961f21:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    214fa4961f26:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4961f2a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961f2f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961f33:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa4961f37:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961f3c:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa4961f41:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4961f45:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    214fa4961f49:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961f4e:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961f52:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa4961f56:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961f5b:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    214fa4961f60:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4961f64:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    214fa4961f68:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961f6d:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961f71:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    214fa4961f75:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961f7a:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    214fa4961f7f:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4961f83:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    214fa4961f87:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961f8c:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961f90:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    214fa4961f94:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961f99:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    214fa4961f9f:	c5 f8 10 bd c0 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x340]
    214fa4961fa7:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4961fab:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa4961faf:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961fb4:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4961fb8:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    214fa4961fbc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961fc1:	c5 f8 10 b5 10 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3f0]
    214fa4961fc9:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4961fce:	c5 78 10 85 b0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x350]
    214fa4961fd6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4961fda:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4961fde:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4961fe3:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4961fe7:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4961feb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4961ff0:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    214fa4961ff8:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4961ffd:	c5 78 10 85 00 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x400]
    214fa4962005:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4962009:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496200d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4962012:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4962016:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa496201a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496201f:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa4962027:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496202c:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa4962034:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4962038:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496203c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4962041:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4962045:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4962049:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496204e:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa4962056:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496205b:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa4962063:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4962067:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496206b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4962070:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4962074:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4962078:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496207d:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa4962085:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496208a:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa4962092:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4962096:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496209a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496209f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49620a3:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49620a7:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49620ac:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa49620b4:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49620b9:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa49620c1:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49620c5:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49620c9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49620ce:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49620d2:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49620d6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49620db:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa49620e3:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49620e8:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa49620f0:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49620f4:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49620f8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49620fd:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4962101:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4962105:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496210a:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa4962112:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4962117:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa496211f:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4962123:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4962127:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496212c:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4962130:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4962134:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4962139:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa496213e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4962143:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa496214b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496214f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4962153:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4962158:	c4 a1 7a 7f 84 0f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x230],xmm0
    214fa4962162:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4962166:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa496216a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496216f:	c4 a1 7a 7f 84 0f 30 01 00 00                   	vmovdqu XMMWORD PTR [rdi+r9*1+0x130],xmm0
    214fa4962179:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa496217d:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa4962181:	45 33 ff                                        	xor    r15d,r15d
    214fa4962184:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa4962188:	41 0f 97 c7                                     	seta   r15b
    214fa496218c:	41 8d 81 30 01 00 00                            	lea    eax,[r9+0x130]
    214fa4962193:	42 8d 1c bd 00 00 00 00                         	lea    ebx,[r15*4+0x0]
    214fa496219b:	0b d8                                           	or     ebx,eax
    214fa496219d:	c5 fa 10 2c 1f                                  	vmovss xmm5,DWORD PTR [rdi+rbx*1]
    214fa49621a2:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa49621a7:	bb 02 00 00 00                                  	mov    ebx,0x2
    214fa49621ac:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa49621b0:	44 0f 47 fb                                     	cmova  r15d,ebx
    214fa49621b4:	42 8d 0c bd 00 00 00 00                         	lea    ecx,[r15*4+0x0]
    214fa49621bc:	0b c8                                           	or     ecx,eax
    214fa49621be:	c5 fa 10 2c 0f                                  	vmovss xmm5,DWORD PTR [rdi+rcx*1]
    214fa49621c3:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa49621c8:	b9 03 00 00 00                                  	mov    ecx,0x3
    214fa49621cd:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa49621d1:	44 0f 47 f9                                     	cmova  r15d,ecx
    214fa49621d5:	41 c1 e7 02                                     	shl    r15d,0x2
    214fa49621d9:	41 0b c7                                        	or     eax,r15d
    214fa49621dc:	c5 fa 10 04 07                                  	vmovss xmm0,DWORD PTR [rdi+rax*1]
    214fa49621e1:	c4 a1 7a 11 44 1f 08                            	vmovss DWORD PTR [rdi+r11*1+0x8],xmm0
    214fa49621e8:	41 8d 81 30 02 00 00                            	lea    eax,[r9+0x230]
    214fa49621ef:	44 0b f8                                        	or     r15d,eax
    214fa49621f2:	46 8b 3c 3f                                     	mov    r15d,DWORD PTR [rdi+r15*1]
    214fa49621f6:	46 89 7c 1f 0c                                  	mov    DWORD PTR [rdi+r11*1+0xc],r15d
    214fa49621fb:	e9 85 00 00 00                                  	jmp    0x214fa4962285
    214fa4962200:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    214fa4962207:	41 53                                           	push   r11
    214fa4962209:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa496220d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa4962210:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    214fa4962216:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    214fa4962219:	8b 9d 80 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x380]
    214fa496221f:	e8 4c 60 ec ff                                  	call   0x214fa4828270
    214fa4962224:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4962228:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa496222c:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa4962230:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    214fa4962236:	e9 4a 00 00 00                                  	jmp    0x214fa4962285
    214fa496223b:	45 8d 99 80 02 00 00                            	lea    r11d,[r9+0x280]
    214fa4962242:	41 53                                           	push   r11
    214fa4962244:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4962248:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa496224b:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    214fa4962251:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    214fa4962254:	8b 9d 80 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x380]
    214fa496225a:	e8 f9 5f ec ff                                  	call   0x214fa4828258
    214fa496225f:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4962263:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4962267:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa496226b:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    214fa4962271:	e9 0f 00 00 00                                  	jmp    0x214fa4962285
    214fa4962276:	44 8b cf                                        	mov    r9d,edi
    214fa4962279:	49 8b f8                                        	mov    rdi,r8
    214fa496227c:	4d 8b c3                                        	mov    r8,r11
    214fa496227f:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    214fa4962285:	48 c7 85 d8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x228],0x1
    214fa4962290:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4962294:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    214fa496229c:	44 8b e2                                        	mov    r12d,edx
    214fa496229f:	48 8b 95 60 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3a0]
    214fa49622a6:	48 8b 9d 50 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b0]
    214fa49622ad:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    214fa49622b5:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    214fa49622bd:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa49622c5:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    214fa49622cd:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa49622d4:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa49622dc:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    214fa49622e4:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    214fa49622ec:	e9 ba 41 00 00                                  	jmp    0x214fa49664ab
    214fa49622f1:	45 8b 5c 38 18                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x18]
    214fa49622f6:	41 8d 5b 01                                     	lea    ebx,[r11+0x1]
    214fa49622fa:	41 89 5c 38 18                                  	mov    DWORD PTR [r8+rdi*1+0x18],ebx
    214fa49622ff:	8b 9d e0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x320]
    214fa4962305:	42 8d 14 9b                                     	lea    edx,[rbx+r11*4]
    214fa4962309:	8b 9d 70 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x390]
    214fa496230f:	41 89 1c 10                                     	mov    DWORD PTR [r8+rdx*1],ebx
    214fa4962313:	42 8d 54 9f 2c                                  	lea    edx,[rdi+r11*4+0x2c]
    214fa4962318:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    214fa496231b:	41 89 1c 10                                     	mov    DWORD PTR [r8+rdx*1],ebx
    214fa496231f:	42 8d 54 9f 3c                                  	lea    edx,[rdi+r11*4+0x3c]
    214fa4962324:	45 89 3c 10                                     	mov    DWORD PTR [r8+rdx*1],r15d
    214fa4962328:	46 8d 7c df 50                                  	lea    r15d,[rdi+r11*8+0x50]
    214fa496232d:	4b 89 0c 38                                     	mov    QWORD PTR [r8+r15*1],rcx
    214fa4962331:	46 8d 7c df 70                                  	lea    r15d,[rdi+r11*8+0x70]
    214fa4962336:	4f 89 24 38                                     	mov    QWORD PTR [r8+r15*1],r12
    214fa496233a:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa496233e:	44 8b a5 d0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x230]
    214fa4962345:	45 03 dc                                        	add    r11d,r12d
    214fa4962348:	c4 c1 7a 6f 04 38                               	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1]
    214fa496234e:	c4 81 7a 7f 04 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm0
    214fa4962354:	45 8b 5c 38 18                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x18]
    214fa4962359:	41 83 7c 38 18 04                               	cmp    DWORD PTR [r8+rdi*1+0x18],0x4
    214fa496235f:	0f 84 44 00 00 00                               	je     0x214fa49623a9
    214fa4962365:	48 c7 85 d8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x228],0x1
    214fa4962370:	44 8b a5 70 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x390]
    214fa4962377:	48 8b 95 60 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3a0]
    214fa496237e:	48 8b 9d 50 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b0]
    214fa4962385:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    214fa496238d:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa4962394:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    214fa496239c:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    214fa49623a4:	e9 02 41 00 00                                  	jmp    0x214fa49664ab
    214fa49623a9:	c4 c1 7a 6f 44 38 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x50]
    214fa49623b0:	c4 c3 f9 16 c3 00                               	vpextrq r11,xmm0,0x0
    214fa49623b6:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    214fa49623bb:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa49623c0:	c4 c3 f9 16 c3 01                               	vpextrq r11,xmm0,0x1
    214fa49623c6:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    214fa49623cb:	c4 63 31 21 c8 10                               	vinsertps xmm9,xmm9,xmm0,0x10
    214fa49623d1:	c4 c1 7a 6f 44 38 60                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x60]
    214fa49623d8:	c4 c3 f9 16 c3 00                               	vpextrq r11,xmm0,0x0
    214fa49623de:	c4 41 82 2a db                                  	vcvtsi2ss xmm11,xmm15,r11
    214fa49623e3:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    214fa49623e9:	c4 c3 f9 16 c3 01                               	vpextrq r11,xmm0,0x1
    214fa49623ef:	c4 c1 82 2a c3                                  	vcvtsi2ss xmm0,xmm15,r11
    214fa49623f4:	c4 63 31 21 c8 30                               	vinsertps xmm9,xmm9,xmm0,0x30
    214fa49623fa:	c5 f8 10 85 90 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x270]
    214fa4962402:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    214fa4962407:	4d 8d 58 1c                                     	lea    r11,[r8+0x1c]
    214fa496240b:	4c 8b f8                                        	mov    r15,rax
    214fa496240e:	c4 02 79 18 1c 3b                               	vbroadcastss xmm11,DWORD PTR [r11+r15*1]
    214fa4962414:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    214fa4962419:	c4 41 7a 6f 6c 38 70                            	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x70]
    214fa4962420:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    214fa4962426:	c4 61 82 2a f0                                  	vcvtsi2ss xmm14,xmm15,rax
    214fa496242b:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    214fa4962430:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    214fa4962436:	c4 61 82 2a e8                                  	vcvtsi2ss xmm13,xmm15,rax
    214fa496243b:	c4 43 09 21 f5 10                               	vinsertps xmm14,xmm14,xmm13,0x10
    214fa4962441:	c4 41 7a 6f ac 38 80 00 00 00                   	vmovdqu xmm13,XMMWORD PTR [r8+rdi*1+0x80]
    214fa496244b:	c4 63 f9 16 e8 00                               	vpextrq rax,xmm13,0x0
    214fa4962451:	c4 e1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,rax
    214fa4962456:	c4 63 09 21 f4 20                               	vinsertps xmm14,xmm14,xmm4,0x20
    214fa496245c:	c4 63 f9 16 e8 01                               	vpextrq rax,xmm13,0x1
    214fa4962462:	c4 61 82 2a e8                                  	vcvtsi2ss xmm13,xmm15,rax
    214fa4962467:	c4 43 09 21 f5 30                               	vinsertps xmm14,xmm14,xmm13,0x30
    214fa496246d:	c4 41 78 59 ee                                  	vmulps xmm13,xmm0,xmm14
    214fa4962472:	48 8b c6                                        	mov    rax,rsi
    214fa4962475:	c4 42 79 18 34 03                               	vbroadcastss xmm14,DWORD PTR [r11+rax*1]
    214fa496247b:	c4 41 10 59 f6                                  	vmulps xmm14,xmm13,xmm14
    214fa4962480:	c4 c1 20 58 e6                                  	vaddps xmm4,xmm11,xmm14
    214fa4962485:	c4 41 18 5c c9                                  	vsubps xmm9,xmm12,xmm9
    214fa496248a:	c4 41 30 5c cd                                  	vsubps xmm9,xmm9,xmm13
    214fa496248f:	49 8b d1                                        	mov    rdx,r9
    214fa4962492:	c4 42 79 18 2c 13                               	vbroadcastss xmm13,DWORD PTR [r11+rdx*1]
    214fa4962498:	c4 41 30 59 cd                                  	vmulps xmm9,xmm9,xmm13
    214fa496249d:	c4 41 58 58 e9                                  	vaddps xmm13,xmm4,xmm9
    214fa49624a2:	c5 90 c2 e5 02                                  	vcmpleps xmm4,xmm13,xmm5
    214fa49624a7:	c5 78 50 dc                                     	vmovmskps r11d,xmm4
    214fa49624ab:	41 8b f3                                        	mov    esi,r11d
    214fa49624ae:	83 f6 0f                                        	xor    esi,0xf
    214fa49624b1:	c5 78 11 a5 60 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4a0],xmm12
    214fa49624b9:	c5 78 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm10
    214fa49624c1:	c5 f8 11 ad c0 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x440],xmm5
    214fa49624c9:	48 89 b5 10 fb ff ff                            	mov    QWORD PTR [rbp-0x4f0],rsi
    214fa49624d0:	41 83 fb 0f                                     	cmp    r11d,0xf
    214fa49624d4:	0f 84 54 2c 00 00                               	je     0x214fa496512e
    214fa49624da:	c4 41 18 5e ed                                  	vdivps xmm13,xmm12,xmm13
    214fa49624df:	49 8d 48 2c                                     	lea    rcx,[r8+0x2c]
    214fa49624e3:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa49624e9:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa49624ed:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa49624f3:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa49624f7:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa49624fb:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa4962501:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa4962505:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa4962509:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa496250d:	49 8d 48 28                                     	lea    rcx,[r8+0x28]
    214fa4962511:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa4962517:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa496251b:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa4962520:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa4962526:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa496252a:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa496252e:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa4962534:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa4962538:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa496253c:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa4962540:	49 8d 48 24                                     	lea    rcx,[r8+0x24]
    214fa4962544:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa496254a:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa496254e:	c5 f8 11 85 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm0
    214fa4962556:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa496255c:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa4962560:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa4962564:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa496256a:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa496256e:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa4962572:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa4962576:	49 8d 48 20                                     	lea    rcx,[r8+0x20]
    214fa496257a:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa4962580:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa4962584:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa496258c:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa4962592:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa4962596:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa496259a:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa49625a0:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa49625a4:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa49625a8:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa49625ac:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    214fa49625b3:	43 8b 8c 08 34 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x134]
    214fa49625bb:	83 e9 01                                        	sub    ecx,0x1
    214fa49625be:	83 f9 01                                        	cmp    ecx,0x1
    214fa49625c1:	0f 86 1d 17 00 00                               	jbe    0x214fa4963ce4
    214fa49625c7:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    214fa49625cf:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    214fa49625d8:	0f 85 1f 00 00 00                               	jne    0x214fa49625fd
    214fa49625de:	c5 78 10 45 80                                  	vmovups xmm8,XMMWORD PTR [rbp-0x80]
    214fa49625e3:	c5 f8 10 bd 70 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x90]
    214fa49625eb:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa49625f3:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    214fa49625f8:	e9 7f 2a 00 00                                  	jmp    0x214fa496507c
    214fa49625fd:	8b ce                                           	mov    ecx,esi
    214fa49625ff:	83 e1 04                                        	and    ecx,0x4
    214fa4962602:	44 8b e6                                        	mov    r12d,esi
    214fa4962605:	41 83 e4 02                                     	and    r12d,0x2
    214fa4962609:	44 8b fe                                        	mov    r15d,esi
    214fa496260c:	41 83 e7 01                                     	and    r15d,0x1
    214fa4962610:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    214fa4962618:	4c 89 8d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r9
    214fa496261f:	c5 78 11 ad 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm13
    214fa4962627:	c5 78 11 8d 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm9
    214fa496262f:	c5 78 11 b5 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm14
    214fa4962637:	c5 78 11 9d 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm11
    214fa496263f:	4c 89 9d 40 fb ff ff                            	mov    QWORD PTR [rbp-0x4c0],r11
    214fa4962646:	48 89 8d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],rcx
    214fa496264d:	4c 89 a5 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],r12
    214fa4962654:	4c 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r15
    214fa496265b:	45 33 e4                                        	xor    r12d,r12d
    214fa496265e:	e9 3c 00 00 00                                  	jmp    0x214fa496269f
    214fa4962663:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa496266c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4962675:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa496267e:	66 90                                           	xchg   ax,ax
    214fa4962680:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    214fa4962688:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    214fa4962690:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    214fa4962697:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa496269f:	44 8b bd 78 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x288]
    214fa49626a6:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    214fa49626ac:	8b 9d 08 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f8]
    214fa49626b2:	8b 95 00 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x300]
    214fa49626b8:	4c 89 a5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r12
    214fa49626bf:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa49626c4:	0f 85 d5 5f 00 00                               	jne    0x214fa496869f
    214fa49626ca:	43 8b b4 08 3c 01 00 00                         	mov    esi,DWORD PTR [r8+r9*1+0x13c]
    214fa49626d2:	41 8b cc                                        	mov    ecx,r12d
    214fa49626d5:	d3 ee                                           	shr    esi,cl
    214fa49626d7:	40 f6 c6 01                                     	test   sil,0x1
    214fa49626db:	0f 85 2e 00 00 00                               	jne    0x214fa496270f
    214fa49626e1:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    214fa49626e7:	41 8b f4                                        	mov    esi,r12d
    214fa49626ea:	c1 e6 06                                        	shl    esi,0x6
    214fa49626ed:	03 ce                                           	add    ecx,esi
    214fa49626ef:	c4 41 7a 7f 64 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm12
    214fa49626f6:	c4 41 7a 7f 64 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm12
    214fa49626fd:	c4 41 7a 7f 64 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm12
    214fa4962704:	c4 41 7a 7f 24 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm12
    214fa496270a:	e9 6e 12 00 00                                  	jmp    0x214fa496397d
    214fa496270f:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    214fa4962715:	41 8b f4                                        	mov    esi,r12d
    214fa4962718:	c1 e6 06                                        	shl    esi,0x6
    214fa496271b:	03 f1                                           	add    esi,ecx
    214fa496271d:	41 6b cc 4c                                     	imul   ecx,r12d,0x4c
    214fa4962721:	41 03 cf                                        	add    ecx,r15d
    214fa4962724:	45 8b 64 08 38                                  	mov    r12d,DWORD PTR [r8+rcx*1+0x38]
    214fa4962729:	41 83 7c 08 38 00                               	cmp    DWORD PTR [r8+rcx*1+0x38],0x0
    214fa496272f:	0f 85 02 12 00 00                               	jne    0x214fa4963937
    214fa4962735:	44 8b a5 60 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a0]
    214fa496273c:	41 c1 e4 04                                     	shl    r12d,0x4
    214fa4962740:	45 8d 3c 1c                                     	lea    r15d,[r12+rbx*1]
    214fa4962744:	49 8d 58 04                                     	lea    rbx,[r8+0x4]
    214fa4962748:	c4 a2 79 18 24 3b                               	vbroadcastss xmm4,DWORD PTR [rbx+r15*1]
    214fa496274e:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa4962752:	46 8d 0c 20                                     	lea    r9d,[rax+r12*1]
    214fa4962756:	c4 a2 79 18 04 0b                               	vbroadcastss xmm0,DWORD PTR [rbx+r9*1]
    214fa496275c:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa4962760:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa4962764:	44 03 e2                                        	add    r12d,edx
    214fa4962767:	c4 a2 79 18 24 23                               	vbroadcastss xmm4,DWORD PTR [rbx+r12*1]
    214fa496276d:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa4962771:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa4962775:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa4962779:	c4 82 79 18 24 38                               	vbroadcastss xmm4,DWORD PTR [r8+r15*1]
    214fa496277f:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa4962783:	c4 82 79 18 34 08                               	vbroadcastss xmm6,DWORD PTR [r8+r9*1]
    214fa4962789:	c5 88 59 f6                                     	vmulps xmm6,xmm14,xmm6
    214fa496278d:	c5 d8 58 f6                                     	vaddps xmm6,xmm4,xmm6
    214fa4962791:	c4 82 79 18 24 20                               	vbroadcastss xmm4,DWORD PTR [r8+r12*1]
    214fa4962797:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa496279b:	c5 c8 58 f4                                     	vaddps xmm6,xmm6,xmm4
    214fa496279f:	c5 90 59 f6                                     	vmulps xmm6,xmm13,xmm6
    214fa49627a3:	41 8b 1c 08                                     	mov    ebx,DWORD PTR [r8+rcx*1]
    214fa49627a7:	83 fb 01                                        	cmp    ebx,0x1
    214fa49627aa:	0f 85 8c 0e 00 00                               	jne    0x214fa496363c
    214fa49627b0:	41 8b 44 08 28                                  	mov    eax,DWORD PTR [r8+rcx*1+0x28]
    214fa49627b5:	85 c0                                           	test   eax,eax
    214fa49627b7:	0f 84 7f 0e 00 00                               	je     0x214fa496363c
    214fa49627bd:	41 8b 54 08 1c                                  	mov    edx,DWORD PTR [r8+rcx*1+0x1c]
    214fa49627c2:	85 d2                                           	test   edx,edx
    214fa49627c4:	0f 8e 72 0e 00 00                               	jle    0x214fa496363c
    214fa49627ca:	41 8b 7c 08 20                                  	mov    edi,DWORD PTR [r8+rcx*1+0x20]
    214fa49627cf:	85 ff                                           	test   edi,edi
    214fa49627d1:	0f 8e 62 0e 00 00                               	jle    0x214fa4963639
    214fa49627d7:	44 8b d2                                        	mov    r10d,edx
    214fa49627da:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    214fa49627df:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    214fa49627e4:	45 8b 64 08 10                                  	mov    r12d,DWORD PTR [r8+rcx*1+0x10]
    214fa49627e9:	45 33 ff                                        	xor    r15d,r15d
    214fa49627ec:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    214fa49627f3:	41 0f 95 c7                                     	setne  r15b
    214fa49627f7:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    214fa49627fe:	41 0f 95 c4                                     	setne  r12b
    214fa4962802:	45 0f b6 e4                                     	movzx  r12d,r12b
    214fa4962806:	48 89 b5 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rsi
    214fa496280d:	45 23 e7                                        	and    r12d,r15d
    214fa4962810:	0f 85 0d 00 00 00                               	jne    0x214fa4962823
    214fa4962816:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa496281a:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    214fa496281e:	e9 0a 00 00 00                                  	jmp    0x214fa496282d
    214fa4962823:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    214fa4962829:	c5 c8 5c f7                                     	vsubps xmm6,xmm6,xmm7
    214fa496282d:	c5 d8 59 f6                                     	vmulps xmm6,xmm4,xmm6
    214fa4962831:	44 8b d7                                        	mov    r10d,edi
    214fa4962834:	c4 c1 82 2a fa                                  	vcvtsi2ss xmm7,xmm15,r10
    214fa4962839:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    214fa496283e:	45 8b 7c 08 14                                  	mov    r15d,DWORD PTR [r8+rcx*1+0x14]
    214fa4962843:	33 db                                           	xor    ebx,ebx
    214fa4962845:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    214fa496284c:	0f 95 c3                                        	setne  bl
    214fa496284f:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    214fa4962856:	41 0f 95 c7                                     	setne  r15b
    214fa496285a:	45 0f b6 ff                                     	movzx  r15d,r15b
    214fa496285e:	44 23 fb                                        	and    r15d,ebx
    214fa4962861:	0f 85 0d 00 00 00                               	jne    0x214fa4962874
    214fa4962867:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa496286b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa496286f:	e9 0a 00 00 00                                  	jmp    0x214fa496287e
    214fa4962874:	c4 e3 79 08 e0 09                               	vroundps xmm4,xmm0,0x9
    214fa496287a:	c5 f8 5c c4                                     	vsubps xmm0,xmm0,xmm4
    214fa496287e:	c5 c0 59 c0                                     	vmulps xmm0,xmm7,xmm0
    214fa4962882:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    214fa496288c:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4962891:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa4962895:	c5 f8 58 e7                                     	vaddps xmm4,xmm0,xmm7
    214fa4962899:	41 8b 5c 08 0c                                  	mov    ebx,DWORD PTR [r8+rcx*1+0xc]
    214fa496289e:	33 db                                           	xor    ebx,ebx
    214fa49628a0:	41 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [r8+rcx*1+0xc],0x2600
    214fa49628a9:	0f 94 c3                                        	sete   bl
    214fa49628ac:	85 db                                           	test   ebx,ebx
    214fa49628ae:	0f 85 69 00 00 00                               	jne    0x214fa496291d
    214fa49628b4:	c4 e3 79 08 c4 09                               	vroundps xmm0,xmm4,0x9
    214fa49628ba:	4c 8b 15 14 bb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbb14]        # 0x214fa495e3d5
    214fa49628c1:	c4 c1 78 54 2a                                  	vandps xmm5,xmm0,XMMWORD PTR [r10]
    214fa49628c6:	4c 8b 15 64 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe864]        # 0x214fa4961131
    214fa49628cd:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa49628d2:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    214fa49628d7:	c4 c1 50 c2 e8 01                               	vcmpltps xmm5,xmm5,xmm8
    214fa49628dd:	4c 8b 15 0b e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe80b]        # 0x214fa49610ef
    214fa49628e4:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa49628e9:	c4 41 78 54 d7                                  	vandps xmm10,xmm0,xmm15
    214fa49628ee:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa49628f4:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    214fa49628f9:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    214fa49628fe:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    214fa4962902:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa4962906:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    214fa496290a:	c4 c1 79 28 e2                                  	vmovapd xmm4,xmm10
    214fa496290f:	c4 41 79 28 d0                                  	vmovapd xmm10,xmm8
    214fa4962914:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa4962918:	e9 49 00 00 00                                  	jmp    0x214fa4962966
    214fa496291d:	c4 e3 79 08 f8 09                               	vroundps xmm7,xmm0,0x9
    214fa4962923:	4c 8b 15 ab ba ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbaab]        # 0x214fa495e3d5
    214fa496292a:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    214fa496292f:	4c 8b 15 fb e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7fb]        # 0x214fa4961131
    214fa4962936:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa496293b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa4962940:	c4 41 38 c2 c2 01                               	vcmpltps xmm8,xmm8,xmm10
    214fa4962946:	4c 8b 15 a2 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a2]        # 0x214fa49610ef
    214fa496294d:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    214fa4962952:	c4 c1 40 54 e7                                  	vandps xmm4,xmm7,xmm15
    214fa4962957:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    214fa496295d:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa4962961:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa4962966:	c4 e3 79 08 ee 09                               	vroundps xmm5,xmm6,0x9
    214fa496296c:	4c 8b 15 7c e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe77c]        # 0x214fa49610ef
    214fa4962973:	c5 50 c2 fd 00                                  	vcmpeqps xmm15,xmm5,xmm5
    214fa4962978:	c4 c1 50 54 cf                                  	vandps xmm1,xmm5,xmm15
    214fa496297d:	c4 41 50 c2 3a 0d                               	vcmpgeps xmm15,xmm5,XMMWORD PTR [r10]
    214fa4962983:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    214fa4962987:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    214fa496298c:	4c 8b 15 7f e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe77f]        # 0x214fa4961112
    214fa4962993:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa4962998:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa496299c:	4c 8b 15 32 ba ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffba32]        # 0x214fa495e3d5
    214fa49629a3:	c4 c1 50 54 1a                                  	vandps xmm3,xmm5,XMMWORD PTR [r10]
    214fa49629a8:	c4 41 60 c2 d2 01                               	vcmpltps xmm10,xmm3,xmm10
    214fa49629ae:	c5 29 df fa                                     	vpandn xmm15,xmm10,xmm2
    214fa49629b2:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    214fa49629b7:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    214fa49629bc:	44 8d 4a ff                                     	lea    r9d,[rdx-0x1]
    214fa49629c0:	c4 c1 79 6e c9                                  	vmovd  xmm1,r9d
    214fa49629c5:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    214fa49629ca:	45 8b 4c 08 2c                                  	mov    r9d,DWORD PTR [r8+rcx*1+0x2c]
    214fa49629cf:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    214fa49629d3:	c4 e2 29 3d db                                  	vpmaxsd xmm3,xmm10,xmm3
    214fa49629d8:	c4 e2 61 39 d9                                  	vpminsd xmm3,xmm3,xmm1
    214fa49629dd:	45 85 e4                                        	test   r12d,r12d
    214fa49629e0:	0f 84 60 00 00 00                               	je     0x214fa4962a46
    214fa49629e6:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    214fa49629eb:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa49629f0:	c5 a9 db db                                     	vpand  xmm3,xmm10,xmm3
    214fa49629f4:	45 85 c9                                        	test   r9d,r9d
    214fa49629f7:	0f 85 49 00 00 00                               	jne    0x214fa4962a46
    214fa49629fd:	c5 f9 6e da                                     	vmovd  xmm3,edx
    214fa4962a01:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa4962a06:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    214fa4962a0b:	c5 29 66 c9                                     	vpcmpgtd xmm9,xmm10,xmm1
    214fa4962a0f:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    214fa4962a13:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4962a18:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    214fa4962a1d:	c4 41 11 66 ea                                  	vpcmpgtd xmm13,xmm13,xmm10
    214fa4962a22:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    214fa4962a27:	c4 41 61 db cd                                  	vpand  xmm9,xmm3,xmm13
    214fa4962a2c:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4962a31:	c4 c1 29 fe d9                                  	vpaddd xmm3,xmm10,xmm9
    214fa4962a36:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    214fa4962a3e:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    214fa4962a46:	c5 39 df fa                                     	vpandn xmm15,xmm8,xmm2
    214fa4962a4a:	c4 41 59 db c0                                  	vpand  xmm8,xmm4,xmm8
    214fa4962a4f:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa4962a54:	8d 77 ff                                        	lea    esi,[rdi-0x1]
    214fa4962a57:	c5 f9 6e d6                                     	vmovd  xmm2,esi
    214fa4962a5b:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    214fa4962a60:	41 8b 4c 08 30                                  	mov    ecx,DWORD PTR [r8+rcx*1+0x30]
    214fa4962a65:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    214fa4962a69:	c4 e2 39 3d e4                                  	vpmaxsd xmm4,xmm8,xmm4
    214fa4962a6e:	c4 e2 59 39 e2                                  	vpminsd xmm4,xmm4,xmm2
    214fa4962a73:	45 85 ff                                        	test   r15d,r15d
    214fa4962a76:	0f 84 4f 00 00 00                               	je     0x214fa4962acb
    214fa4962a7c:	c5 f9 6e e1                                     	vmovd  xmm4,ecx
    214fa4962a80:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    214fa4962a85:	c4 c1 59 db e0                                  	vpand  xmm4,xmm4,xmm8
    214fa4962a8a:	85 c9                                           	test   ecx,ecx
    214fa4962a8c:	0f 85 39 00 00 00                               	jne    0x214fa4962acb
    214fa4962a92:	c5 f9 6e e7                                     	vmovd  xmm4,edi
    214fa4962a96:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    214fa4962a9b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    214fa4962aa0:	c5 39 66 ca                                     	vpcmpgtd xmm9,xmm8,xmm2
    214fa4962aa4:	c5 31 db cc                                     	vpand  xmm9,xmm9,xmm4
    214fa4962aa8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4962aad:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    214fa4962ab2:	c4 41 11 66 e8                                  	vpcmpgtd xmm13,xmm13,xmm8
    214fa4962ab7:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    214fa4962abc:	c4 41 59 db cd                                  	vpand  xmm9,xmm4,xmm13
    214fa4962ac1:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4962ac6:	c4 c1 39 fe e1                                  	vpaddd xmm4,xmm8,xmm9
    214fa4962acb:	c5 79 6e ea                                     	vmovd  xmm13,edx
    214fa4962acf:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa4962ad4:	c4 c2 59 40 e5                                  	vpmulld xmm4,xmm4,xmm13
    214fa4962ad9:	c5 59 fe cb                                     	vpaddd xmm9,xmm4,xmm3
    214fa4962add:	c4 63 79 16 ca 03                               	vpextrd edx,xmm9,0x3
    214fa4962ae3:	c4 63 79 16 ce 02                               	vpextrd esi,xmm9,0x2
    214fa4962ae9:	48 89 95 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rdx
    214fa4962af0:	c4 63 79 16 ca 01                               	vpextrd edx,xmm9,0x1
    214fa4962af6:	48 89 95 a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rdx
    214fa4962afd:	c5 79 7e ca                                     	vmovd  edx,xmm9
    214fa4962b01:	85 db                                           	test   ebx,ebx
    214fa4962b03:	0f 85 4a 09 00 00                               	jne    0x214fa4963453
    214fa4962b09:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    214fa4962b13:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa4962b18:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa4962b1d:	c4 41 29 fe d1                                  	vpaddd xmm10,xmm10,xmm9
    214fa4962b22:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    214fa4962b27:	c4 42 29 3d f6                                  	vpmaxsd xmm14,xmm10,xmm14
    214fa4962b2c:	c4 62 09 39 f1                                  	vpminsd xmm14,xmm14,xmm1
    214fa4962b31:	45 85 e4                                        	test   r12d,r12d
    214fa4962b34:	0f 84 48 00 00 00                               	je     0x214fa4962b82
    214fa4962b3a:	c4 41 79 6e f1                                  	vmovd  xmm14,r9d
    214fa4962b3f:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    214fa4962b44:	c4 41 29 db f6                                  	vpand  xmm14,xmm10,xmm14
    214fa4962b49:	45 85 c9                                        	test   r9d,r9d
    214fa4962b4c:	0f 85 30 00 00 00                               	jne    0x214fa4962b82
    214fa4962b52:	c4 41 09 ef f6                                  	vpxor  xmm14,xmm14,xmm14
    214fa4962b57:	c5 a9 66 c9                                     	vpcmpgtd xmm1,xmm10,xmm1
    214fa4962b5b:	c4 c1 71 db cd                                  	vpand  xmm1,xmm1,xmm13
    214fa4962b60:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4962b65:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    214fa4962b6a:	c4 41 09 66 f2                                  	vpcmpgtd xmm14,xmm14,xmm10
    214fa4962b6f:	c5 09 df f9                                     	vpandn xmm15,xmm14,xmm1
    214fa4962b73:	c4 41 11 db f6                                  	vpand  xmm14,xmm13,xmm14
    214fa4962b78:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    214fa4962b7d:	c4 41 29 fe f6                                  	vpaddd xmm14,xmm10,xmm14
    214fa4962b82:	c4 41 39 fe c1                                  	vpaddd xmm8,xmm8,xmm9
    214fa4962b87:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    214fa4962b8c:	c4 42 39 3d d2                                  	vpmaxsd xmm10,xmm8,xmm10
    214fa4962b91:	c4 62 29 39 d2                                  	vpminsd xmm10,xmm10,xmm2
    214fa4962b96:	45 85 ff                                        	test   r15d,r15d
    214fa4962b99:	0f 84 4d 00 00 00                               	je     0x214fa4962bec
    214fa4962b9f:	c5 79 6e d1                                     	vmovd  xmm10,ecx
    214fa4962ba3:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4962ba8:	c4 41 29 db d0                                  	vpand  xmm10,xmm10,xmm8
    214fa4962bad:	85 c9                                           	test   ecx,ecx
    214fa4962baf:	0f 85 37 00 00 00                               	jne    0x214fa4962bec
    214fa4962bb5:	c5 79 6e d7                                     	vmovd  xmm10,edi
    214fa4962bb9:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4962bbe:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    214fa4962bc2:	c5 b9 66 d2                                     	vpcmpgtd xmm2,xmm8,xmm2
    214fa4962bc6:	c4 c1 69 db d2                                  	vpand  xmm2,xmm2,xmm10
    214fa4962bcb:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4962bd0:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    214fa4962bd5:	c4 c1 71 66 c8                                  	vpcmpgtd xmm1,xmm1,xmm8
    214fa4962bda:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    214fa4962bde:	c5 29 db d1                                     	vpand  xmm10,xmm10,xmm1
    214fa4962be2:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    214fa4962be7:	c4 41 39 fe d2                                  	vpaddd xmm10,xmm8,xmm10
    214fa4962bec:	c4 42 29 40 c5                                  	vpmulld xmm8,xmm10,xmm13
    214fa4962bf1:	c5 39 fe d3                                     	vpaddd xmm10,xmm8,xmm3
    214fa4962bf5:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    214fa4962bfc:	0f 85 da 00 00 00                               	jne    0x214fa4962cdc
    214fa4962c02:	c4 41 61 fe c9                                  	vpaddd xmm9,xmm3,xmm9
    214fa4962c07:	c4 41 09 76 c9                                  	vpcmpeqd xmm9,xmm14,xmm9
    214fa4962c0c:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    214fa4962c11:	83 ff 0f                                        	cmp    edi,0xf
    214fa4962c14:	0f 84 23 00 00 00                               	je     0x214fa4962c3d
    214fa4962c1a:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa4962c1d:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4962c21:	44 8b a5 a8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x258]
    214fa4962c28:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa4962c2c:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa4962c30:	44 8d 3c 90                                     	lea    r15d,[rax+rdx*4]
    214fa4962c34:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4962c38:	e9 05 01 00 00                                  	jmp    0x214fa4962d42
    214fa4962c3d:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    214fa4962c40:	c4 41 7b 10 04 38                               	vmovsd xmm8,QWORD PTR [r8+rdi*1]
    214fa4962c46:	44 8b a5 a8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x258]
    214fa4962c4d:	42 8d 3c a0                                     	lea    edi,[rax+r12*4]
    214fa4962c51:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    214fa4962c57:	c4 41 39 6c c1                                  	vpunpcklqdq xmm8,xmm8,xmm9
    214fa4962c5c:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa4962c5f:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    214fa4962c65:	8b bd b8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x248]
    214fa4962c6b:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa4962c6e:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    214fa4962c74:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    214fa4962c79:	c4 41 38 c6 e9 dd                               	vshufps xmm13,xmm8,xmm9,0xdd
    214fa4962c7f:	c4 41 38 c6 c1 88                               	vshufps xmm8,xmm8,xmm9,0x88
    214fa4962c85:	c4 c1 31 72 f2 02                               	vpslld xmm9,xmm10,0x2
    214fa4962c8b:	c5 79 7e cf                                     	vmovd  edi,xmm9
    214fa4962c8f:	03 f8                                           	add    edi,eax
    214fa4962c91:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    214fa4962c97:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    214fa4962c9d:	03 f8                                           	add    edi,eax
    214fa4962c9f:	c4 41 7b 10 34 38                               	vmovsd xmm14,QWORD PTR [r8+rdi*1]
    214fa4962ca5:	c4 41 29 6c d6                                  	vpunpcklqdq xmm10,xmm10,xmm14
    214fa4962caa:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    214fa4962cb0:	03 f8                                           	add    edi,eax
    214fa4962cb2:	c4 41 7b 10 34 38                               	vmovsd xmm14,QWORD PTR [r8+rdi*1]
    214fa4962cb8:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    214fa4962cbe:	03 f8                                           	add    edi,eax
    214fa4962cc0:	c4 41 7b 10 0c 38                               	vmovsd xmm9,QWORD PTR [r8+rdi*1]
    214fa4962cc6:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    214fa4962ccb:	c4 41 28 c6 f1 dd                               	vshufps xmm14,xmm10,xmm9,0xdd
    214fa4962cd1:	c4 41 28 c6 c9 88                               	vshufps xmm9,xmm10,xmm9,0x88
    214fa4962cd7:	e9 6c 03 00 00                                  	jmp    0x214fa4963048
    214fa4962cdc:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    214fa4962ce3:	0f 85 08 00 00 00                               	jne    0x214fa4962cf1
    214fa4962ce9:	45 33 ff                                        	xor    r15d,r15d
    214fa4962cec:	e9 07 00 00 00                                  	jmp    0x214fa4962cf8
    214fa4962cf1:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    214fa4962cf4:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    214fa4962cf8:	83 bd 80 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x380],0x0
    214fa4962cff:	0f 85 08 00 00 00                               	jne    0x214fa4962d0d
    214fa4962d05:	45 33 e4                                        	xor    r12d,r12d
    214fa4962d08:	e9 0d 00 00 00                                  	jmp    0x214fa4962d1a
    214fa4962d0d:	8b bd a8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x258]
    214fa4962d13:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa4962d16:	45 8b 24 38                                     	mov    r12d,DWORD PTR [r8+rdi*1]
    214fa4962d1a:	83 bd b0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x250],0x0
    214fa4962d21:	0f 85 07 00 00 00                               	jne    0x214fa4962d2e
    214fa4962d27:	33 ff                                           	xor    edi,edi
    214fa4962d29:	e9 07 00 00 00                                  	jmp    0x214fa4962d35
    214fa4962d2e:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa4962d31:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4962d35:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa4962d3c:	0f 82 53 00 00 00                               	jb     0x214fa4962d95
    214fa4962d42:	8b 9d b8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x248]
    214fa4962d48:	8d 1c 98                                        	lea    ebx,[rax+rbx*4]
    214fa4962d4b:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa4962d4f:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    214fa4962d53:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    214fa4962d58:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa4962d5d:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    214fa4962d64:	0f 85 3b 00 00 00                               	jne    0x214fa4962da5
    214fa4962d6a:	c4 43 79 16 cf 01                               	vpextrd r15d,xmm9,0x1
    214fa4962d70:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa4962d74:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4962d78:	c5 79 7e ca                                     	vmovd  edx,xmm9
    214fa4962d7c:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    214fa4962d7f:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa4962d83:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    214fa4962d89:	8d 0c 88                                        	lea    ecx,[rax+rcx*4]
    214fa4962d8c:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa4962d90:	e9 89 00 00 00                                  	jmp    0x214fa4962e1e
    214fa4962d95:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    214fa4962d99:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    214fa4962d9e:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa4962da3:	33 db                                           	xor    ebx,ebx
    214fa4962da5:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    214fa4962dac:	0f 85 07 00 00 00                               	jne    0x214fa4962db9
    214fa4962db2:	33 d2                                           	xor    edx,edx
    214fa4962db4:	e9 0d 00 00 00                                  	jmp    0x214fa4962dc6
    214fa4962db9:	c4 41 79 7e cf                                  	vmovd  r15d,xmm9
    214fa4962dbe:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa4962dc2:	43 8b 14 38                                     	mov    edx,DWORD PTR [r8+r15*1]
    214fa4962dc6:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    214fa4962dcd:	0f 85 08 00 00 00                               	jne    0x214fa4962ddb
    214fa4962dd3:	45 33 ff                                        	xor    r15d,r15d
    214fa4962dd6:	e9 0e 00 00 00                                  	jmp    0x214fa4962de9
    214fa4962ddb:	c4 43 79 16 cf 01                               	vpextrd r15d,xmm9,0x1
    214fa4962de1:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa4962de5:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4962de9:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    214fa4962df0:	0f 85 07 00 00 00                               	jne    0x214fa4962dfd
    214fa4962df6:	33 c9                                           	xor    ecx,ecx
    214fa4962df8:	e9 0d 00 00 00                                  	jmp    0x214fa4962e0a
    214fa4962dfd:	c4 63 79 16 c9 02                               	vpextrd ecx,xmm9,0x2
    214fa4962e03:	8d 0c 88                                        	lea    ecx,[rax+rcx*4]
    214fa4962e06:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa4962e0a:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa4962e11:	0f 83 07 00 00 00                               	jae    0x214fa4962e1e
    214fa4962e17:	33 f6                                           	xor    esi,esi
    214fa4962e19:	e9 0d 00 00 00                                  	jmp    0x214fa4962e2b
    214fa4962e1e:	c4 63 79 16 ce 03                               	vpextrd esi,xmm9,0x3
    214fa4962e24:	8d 34 b0                                        	lea    esi,[rax+rsi*4]
    214fa4962e27:	41 8b 34 30                                     	mov    esi,DWORD PTR [r8+rsi*1]
    214fa4962e2b:	c4 43 11 22 cc 01                               	vpinsrd xmm9,xmm13,r12d,0x1
    214fa4962e31:	c5 79 6e ea                                     	vmovd  xmm13,edx
    214fa4962e35:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa4962e3a:	c4 43 11 22 ef 01                               	vpinsrd xmm13,xmm13,r15d,0x1
    214fa4962e40:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    214fa4962e47:	0f 85 2d 00 00 00                               	jne    0x214fa4962e7a
    214fa4962e4d:	c4 43 79 16 d4 01                               	vpextrd r12d,xmm10,0x1
    214fa4962e53:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa4962e57:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa4962e5b:	c4 41 79 7e d7                                  	vmovd  r15d,xmm10
    214fa4962e60:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa4962e64:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4962e68:	c4 63 79 16 d2 02                               	vpextrd edx,xmm10,0x2
    214fa4962e6e:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    214fa4962e71:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa4962e75:	e9 a2 00 00 00                                  	jmp    0x214fa4962f1c
    214fa4962e7a:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    214fa4962e81:	0f 85 08 00 00 00                               	jne    0x214fa4962e8f
    214fa4962e87:	45 33 ff                                        	xor    r15d,r15d
    214fa4962e8a:	e9 0d 00 00 00                                  	jmp    0x214fa4962e9c
    214fa4962e8f:	c4 41 79 7e d4                                  	vmovd  r12d,xmm10
    214fa4962e94:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa4962e98:	47 8b 3c 20                                     	mov    r15d,DWORD PTR [r8+r12*1]
    214fa4962e9c:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    214fa4962ea3:	0f 85 08 00 00 00                               	jne    0x214fa4962eb1
    214fa4962ea9:	45 33 e4                                        	xor    r12d,r12d
    214fa4962eac:	e9 0e 00 00 00                                  	jmp    0x214fa4962ebf
    214fa4962eb1:	c4 43 79 16 d4 01                               	vpextrd r12d,xmm10,0x1
    214fa4962eb7:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa4962ebb:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa4962ebf:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    214fa4962ec6:	0f 85 07 00 00 00                               	jne    0x214fa4962ed3
    214fa4962ecc:	33 d2                                           	xor    edx,edx
    214fa4962ece:	e9 0d 00 00 00                                  	jmp    0x214fa4962ee0
    214fa4962ed3:	c4 63 79 16 d2 02                               	vpextrd edx,xmm10,0x2
    214fa4962ed9:	8d 14 90                                        	lea    edx,[rax+rdx*4]
    214fa4962edc:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa4962ee0:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa4962ee7:	0f 83 2f 00 00 00                               	jae    0x214fa4962f1c
    214fa4962eed:	c4 63 31 22 cf 02                               	vpinsrd xmm9,xmm9,edi,0x2
    214fa4962ef3:	c4 63 11 22 d1 02                               	vpinsrd xmm10,xmm13,ecx,0x2
    214fa4962ef9:	c4 41 39 fe c6                                  	vpaddd xmm8,xmm8,xmm14
    214fa4962efe:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    214fa4962f03:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa4962f08:	c4 43 11 22 ec 01                               	vpinsrd xmm13,xmm13,r12d,0x1
    214fa4962f0e:	c4 63 11 22 ea 02                               	vpinsrd xmm13,xmm13,edx,0x2
    214fa4962f14:	45 33 c9                                        	xor    r9d,r9d
    214fa4962f17:	e9 6f 00 00 00                                  	jmp    0x214fa4962f8b
    214fa4962f1c:	c4 43 79 16 d1 03                               	vpextrd r9d,xmm10,0x3
    214fa4962f22:	46 8d 0c 88                                     	lea    r9d,[rax+r9*4]
    214fa4962f26:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    214fa4962f2a:	c4 63 31 22 cf 02                               	vpinsrd xmm9,xmm9,edi,0x2
    214fa4962f30:	c4 63 11 22 d1 02                               	vpinsrd xmm10,xmm13,ecx,0x2
    214fa4962f36:	c4 41 39 fe c6                                  	vpaddd xmm8,xmm8,xmm14
    214fa4962f3b:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    214fa4962f40:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa4962f45:	c4 43 11 22 ec 01                               	vpinsrd xmm13,xmm13,r12d,0x1
    214fa4962f4b:	c4 63 11 22 ea 02                               	vpinsrd xmm13,xmm13,edx,0x2
    214fa4962f51:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    214fa4962f58:	0f 85 2d 00 00 00                               	jne    0x214fa4962f8b
    214fa4962f5e:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    214fa4962f64:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa4962f67:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4962f6b:	c4 41 79 7e c4                                  	vmovd  r12d,xmm8
    214fa4962f70:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa4962f74:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa4962f78:	c4 43 79 16 c7 02                               	vpextrd r15d,xmm8,0x2
    214fa4962f7e:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa4962f82:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4962f86:	e9 78 00 00 00                                  	jmp    0x214fa4963003
    214fa4962f8b:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    214fa4962f92:	0f 85 08 00 00 00                               	jne    0x214fa4962fa0
    214fa4962f98:	45 33 e4                                        	xor    r12d,r12d
    214fa4962f9b:	e9 0b 00 00 00                                  	jmp    0x214fa4962fab
    214fa4962fa0:	c5 79 7e c7                                     	vmovd  edi,xmm8
    214fa4962fa4:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa4962fa7:	45 8b 24 38                                     	mov    r12d,DWORD PTR [r8+rdi*1]
    214fa4962fab:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    214fa4962fb2:	0f 85 07 00 00 00                               	jne    0x214fa4962fbf
    214fa4962fb8:	33 ff                                           	xor    edi,edi
    214fa4962fba:	e9 0d 00 00 00                                  	jmp    0x214fa4962fcc
    214fa4962fbf:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    214fa4962fc5:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa4962fc8:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4962fcc:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    214fa4962fd3:	0f 85 08 00 00 00                               	jne    0x214fa4962fe1
    214fa4962fd9:	45 33 ff                                        	xor    r15d,r15d
    214fa4962fdc:	e9 0e 00 00 00                                  	jmp    0x214fa4962fef
    214fa4962fe1:	c4 43 79 16 c7 02                               	vpextrd r15d,xmm8,0x2
    214fa4962fe7:	46 8d 3c b8                                     	lea    r15d,[rax+r15*4]
    214fa4962feb:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4962fef:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa4962ff6:	0f 83 07 00 00 00                               	jae    0x214fa4963003
    214fa4962ffc:	33 c0                                           	xor    eax,eax
    214fa4962ffe:	e9 0d 00 00 00                                  	jmp    0x214fa4963010
    214fa4963003:	c4 63 79 16 c2 03                               	vpextrd edx,xmm8,0x3
    214fa4963009:	8d 04 90                                        	lea    eax,[rax+rdx*4]
    214fa496300c:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa4963010:	c4 63 31 22 c3 03                               	vpinsrd xmm8,xmm9,ebx,0x3
    214fa4963016:	c4 63 29 22 ce 03                               	vpinsrd xmm9,xmm10,esi,0x3
    214fa496301c:	c4 41 79 6e d4                                  	vmovd  xmm10,r12d
    214fa4963021:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4963026:	c4 63 29 22 d7 01                               	vpinsrd xmm10,xmm10,edi,0x1
    214fa496302c:	c4 43 29 22 d7 02                               	vpinsrd xmm10,xmm10,r15d,0x2
    214fa4963032:	c4 63 29 22 f0 03                               	vpinsrd xmm14,xmm10,eax,0x3
    214fa4963038:	c4 43 11 22 d1 03                               	vpinsrd xmm10,xmm13,r9d,0x3
    214fa496303e:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    214fa4963043:	c4 41 79 28 ca                                  	vmovapd xmm9,xmm10
    214fa4963048:	c5 f8 5c c7                                     	vsubps xmm0,xmm0,xmm7
    214fa496304c:	c5 98 5c f8                                     	vsubps xmm7,xmm12,xmm0
    214fa4963050:	c5 c8 5c ed                                     	vsubps xmm5,xmm6,xmm5
    214fa4963054:	c5 98 5c f5                                     	vsubps xmm6,xmm12,xmm5
    214fa4963058:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    214fa4963062:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4963067:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa496306c:	c4 c1 39 db ca                                  	vpand  xmm1,xmm8,xmm10
    214fa4963071:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4963076:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa496307c:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa4963081:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4963086:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa496308b:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa496308f:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa4963093:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa4963098:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    214fa496309c:	c4 c1 11 db d2                                  	vpand  xmm2,xmm13,xmm10
    214fa49630a1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49630a6:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    214fa49630ac:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    214fa49630b1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49630b6:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    214fa49630bb:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    214fa49630bf:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    214fa49630c3:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    214fa49630c8:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    214fa49630cc:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    214fa49630d0:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    214fa49630d4:	c4 c1 31 db d2                                  	vpand  xmm2,xmm9,xmm10
    214fa49630d9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49630de:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    214fa49630e4:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    214fa49630e9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49630ee:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    214fa49630f3:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    214fa49630f7:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    214fa49630fb:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    214fa4963100:	c5 c8 59 d2                                     	vmulps xmm2,xmm6,xmm2
    214fa4963104:	c4 c1 09 db da                                  	vpand  xmm3,xmm14,xmm10
    214fa4963109:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa496310e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa4963114:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa4963119:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa496311e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa4963123:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa4963127:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa496312b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa4963130:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    214fa4963134:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    214fa4963138:	c5 f8 59 d2                                     	vmulps xmm2,xmm0,xmm2
    214fa496313c:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    214fa4963140:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    214fa496314a:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa496314f:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa4963153:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    214fa4963157:	44 8b a5 48 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1b8]
    214fa496315e:	c4 81 7a 7f 0c 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm1
    214fa4963164:	c4 c1 71 72 d0 10                               	vpsrld xmm1,xmm8,0x10
    214fa496316a:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    214fa496316f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4963174:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa496317a:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa496317f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4963184:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa4963189:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa496318d:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa4963191:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa4963196:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    214fa496319a:	c4 c1 61 72 d5 10                               	vpsrld xmm3,xmm13,0x10
    214fa49631a0:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    214fa49631a5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49631aa:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa49631b0:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa49631b5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49631ba:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa49631bf:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa49631c3:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa49631c7:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa49631cc:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    214fa49631d0:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    214fa49631d4:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    214fa49631d8:	c4 c1 61 72 d1 10                               	vpsrld xmm3,xmm9,0x10
    214fa49631de:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    214fa49631e3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49631e8:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa49631ee:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa49631f3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49631f8:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa49631fd:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa4963201:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa4963205:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa496320a:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    214fa496320e:	c4 c1 59 72 d6 10                               	vpsrld xmm4,xmm14,0x10
    214fa4963214:	c4 c1 59 db e2                                  	vpand  xmm4,xmm4,xmm10
    214fa4963219:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa496321e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa4963224:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa4963229:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa496322e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa4963233:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa4963237:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa496323b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa4963240:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    214fa4963244:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    214fa4963248:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    214fa496324c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    214fa4963250:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    214fa4963254:	c4 81 7a 7f 4c 20 20                            	vmovdqu XMMWORD PTR [r8+r12*1+0x20],xmm1
    214fa496325b:	c4 c1 71 72 d0 08                               	vpsrld xmm1,xmm8,0x8
    214fa4963261:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    214fa4963266:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa496326b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa4963271:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa4963276:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa496327b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa4963280:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa4963284:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa4963288:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa496328d:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    214fa4963291:	c4 c1 61 72 d5 08                               	vpsrld xmm3,xmm13,0x8
    214fa4963297:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    214fa496329c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49632a1:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa49632a7:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa49632ac:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49632b1:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa49632b6:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa49632ba:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa49632be:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa49632c3:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    214fa49632c7:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    214fa49632cb:	c5 c0 59 c9                                     	vmulps xmm1,xmm7,xmm1
    214fa49632cf:	c4 c1 61 72 d1 08                               	vpsrld xmm3,xmm9,0x8
    214fa49632d5:	c4 c1 61 db da                                  	vpand  xmm3,xmm3,xmm10
    214fa49632da:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49632df:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa49632e5:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa49632ea:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49632ef:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa49632f4:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa49632f8:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa49632fc:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa4963301:	c5 c8 59 db                                     	vmulps xmm3,xmm6,xmm3
    214fa4963305:	c4 c1 59 72 d6 08                               	vpsrld xmm4,xmm14,0x8
    214fa496330b:	c4 41 59 db d2                                  	vpand  xmm10,xmm4,xmm10
    214fa4963310:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4963315:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    214fa496331b:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    214fa4963320:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4963325:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    214fa496332b:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    214fa4963330:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    214fa4963335:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    214fa496333a:	c4 41 50 59 d2                                  	vmulps xmm10,xmm5,xmm10
    214fa496333f:	c4 41 60 58 d2                                  	vaddps xmm10,xmm3,xmm10
    214fa4963344:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    214fa4963349:	c4 41 70 58 d2                                  	vaddps xmm10,xmm1,xmm10
    214fa496334e:	c5 28 59 d2                                     	vmulps xmm10,xmm10,xmm2
    214fa4963352:	c4 01 7a 7f 54 20 10                            	vmovdqu XMMWORD PTR [r8+r12*1+0x10],xmm10
    214fa4963359:	c4 c1 39 72 d0 18                               	vpsrld xmm8,xmm8,0x18
    214fa496335f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4963364:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa496336a:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa496336f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4963374:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa496337a:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa496337f:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa4963384:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa4963389:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    214fa496338e:	c4 c1 29 72 d5 18                               	vpsrld xmm10,xmm13,0x18
    214fa4963394:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4963399:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    214fa496339f:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    214fa49633a4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49633a9:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    214fa49633af:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    214fa49633b4:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    214fa49633b9:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    214fa49633be:	c4 41 50 59 d2                                  	vmulps xmm10,xmm5,xmm10
    214fa49633c3:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    214fa49633c8:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    214fa49633cd:	c4 c1 39 72 d1 18                               	vpsrld xmm8,xmm9,0x18
    214fa49633d3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49633d8:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa49633de:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa49633e3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49633e8:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa49633ee:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa49633f3:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa49633f8:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa49633fd:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    214fa4963402:	c4 c1 39 72 d6 18                               	vpsrld xmm8,xmm14,0x18
    214fa4963408:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa496340d:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa4963413:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa4963418:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa496341d:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa4963423:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa4963428:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa496342d:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa4963432:	c4 c1 50 59 e8                                  	vmulps xmm5,xmm5,xmm8
    214fa4963437:	c5 c8 58 ed                                     	vaddps xmm5,xmm6,xmm5
    214fa496343b:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa496343f:	c5 c0 58 c0                                     	vaddps xmm0,xmm7,xmm0
    214fa4963443:	41 8b fc                                        	mov    edi,r12d
    214fa4963446:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    214fa496344e:	e9 c3 01 00 00                                  	jmp    0x214fa4963616
    214fa4963453:	83 bd 40 fb ff ff 00                            	cmp    DWORD PTR [rbp-0x4c0],0x0
    214fa496345a:	0f 85 23 00 00 00                               	jne    0x214fa4963483
    214fa4963460:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa4963463:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4963467:	44 8b a5 a8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x258]
    214fa496346e:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa4963472:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa4963476:	44 8d 3c 90                                     	lea    r15d,[rax+rdx*4]
    214fa496347a:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa496347e:	e9 66 00 00 00                                  	jmp    0x214fa49634e9
    214fa4963483:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    214fa496348a:	0f 85 08 00 00 00                               	jne    0x214fa4963498
    214fa4963490:	45 33 ff                                        	xor    r15d,r15d
    214fa4963493:	e9 07 00 00 00                                  	jmp    0x214fa496349f
    214fa4963498:	8d 3c 90                                        	lea    edi,[rax+rdx*4]
    214fa496349b:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    214fa496349f:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    214fa49634a6:	0f 85 08 00 00 00                               	jne    0x214fa49634b4
    214fa49634ac:	45 33 e4                                        	xor    r12d,r12d
    214fa49634af:	e9 0d 00 00 00                                  	jmp    0x214fa49634c1
    214fa49634b4:	8b bd a8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x258]
    214fa49634ba:	8d 3c b8                                        	lea    edi,[rax+rdi*4]
    214fa49634bd:	45 8b 24 38                                     	mov    r12d,DWORD PTR [r8+rdi*1]
    214fa49634c1:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    214fa49634c8:	0f 85 07 00 00 00                               	jne    0x214fa49634d5
    214fa49634ce:	33 ff                                           	xor    edi,edi
    214fa49634d0:	e9 07 00 00 00                                  	jmp    0x214fa49634dc
    214fa49634d5:	8d 3c b0                                        	lea    edi,[rax+rsi*4]
    214fa49634d8:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa49634dc:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa49634e3:	0f 82 12 00 00 00                               	jb     0x214fa49634fb
    214fa49634e9:	8b 9d b8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x248]
    214fa49634ef:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    214fa49634f2:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa49634f6:	e9 02 00 00 00                                  	jmp    0x214fa49634fd
    214fa49634fb:	33 c0                                           	xor    eax,eax
    214fa49634fd:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    214fa4963502:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4963507:	c4 c3 79 22 c4 01                               	vpinsrd xmm0,xmm0,r12d,0x1
    214fa496350d:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    214fa4963513:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    214fa4963519:	4c 8b 15 3a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb3a]        # 0x214fa496305a
    214fa4963520:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa4963525:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa4963529:	c5 f9 db f5                                     	vpand  xmm6,xmm0,xmm5
    214fa496352d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4963532:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa4963538:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa496353d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4963542:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa4963547:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa496354b:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa496354f:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa4963554:	4c 8b 15 e7 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbe7]        # 0x214fa4963142
    214fa496355b:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4963560:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa4963564:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa4963568:	8b bd 48 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1b8]
    214fa496356e:	c4 c1 7a 7f 34 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm6
    214fa4963574:	c5 c9 72 d0 10                                  	vpsrld xmm6,xmm0,0x10
    214fa4963579:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    214fa496357d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4963582:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa4963588:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa496358d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4963592:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa4963597:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa496359b:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa496359f:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa49635a4:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa49635a8:	c4 c1 7a 7f 74 38 20                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x20],xmm6
    214fa49635af:	c5 c9 72 d0 08                                  	vpsrld xmm6,xmm0,0x8
    214fa49635b4:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    214fa49635b8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49635bd:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa49635c3:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa49635c8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49635cd:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa49635d2:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa49635d6:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa49635da:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa49635df:	c5 d0 59 ef                                     	vmulps xmm5,xmm5,xmm7
    214fa49635e3:	c4 c1 7a 7f 6c 38 10                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x10],xmm5
    214fa49635ea:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    214fa49635ef:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49635f4:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa49635fa:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa49635ff:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4963604:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa4963609:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa496360d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa4963611:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa4963616:	4c 8b 15 25 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb25]        # 0x214fa4963142
    214fa496361d:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa4963622:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa4963626:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa496362a:	c4 c1 7a 7f 44 38 30                            	vmovdqu XMMWORD PTR [r8+rdi*1+0x30],xmm0
    214fa4963631:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4963634:	e9 44 03 00 00                                  	jmp    0x214fa496397d
    214fa4963639:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa496363c:	49 8d 40 08                                     	lea    rax,[r8+0x8]
    214fa4963640:	c4 a2 79 18 3c 38                               	vbroadcastss xmm7,DWORD PTR [rax+r15*1]
    214fa4963646:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    214fa496364a:	c4 22 79 18 04 08                               	vbroadcastss xmm8,DWORD PTR [rax+r9*1]
    214fa4963650:	c4 41 79 28 d6                                  	vmovapd xmm10,xmm14
    214fa4963655:	c4 41 28 59 c0                                  	vmulps xmm8,xmm10,xmm8
    214fa496365a:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    214fa496365f:	c4 22 79 18 04 20                               	vbroadcastss xmm8,DWORD PTR [rax+r12*1]
    214fa4963665:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    214fa496366a:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    214fa496366f:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    214fa4963674:	c5 b8 59 df                                     	vmulps xmm3,xmm8,xmm7
    214fa4963678:	83 fb 03                                        	cmp    ebx,0x3
    214fa496367b:	0f 84 77 02 00 00                               	je     0x214fa49638f8
    214fa4963681:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    214fa4963685:	c4 c1 7a 7f bc 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm7
    214fa496368f:	c4 c1 7a 7f bc 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm7
    214fa4963699:	c4 c1 7a 7f bc 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm7
    214fa49636a3:	c4 c1 7a 7f b4 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm6
    214fa49636ad:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    214fa49636b7:	c4 c1 7a 7f 9c 38 70 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x270],xmm3
    214fa49636c1:	c4 c1 7a 7f bc 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm7
    214fa49636cb:	48 89 b5 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rsi
    214fa49636d2:	48 89 8d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],rcx
    214fa49636d9:	45 33 e4                                        	xor    r12d,r12d
    214fa49636dc:	e9 2c 00 00 00                                  	jmp    0x214fa496370d
    214fa49636e1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa49636ea:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa49636f3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa49636fc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    214fa4963700:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    214fa4963706:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4963709:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa496370d:	4c 89 a5 b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r12
    214fa4963714:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa4963719:	0f 85 e8 4f 00 00                               	jne    0x214fa4968707
    214fa496371f:	8b d1                                           	mov    edx,ecx
    214fa4963721:	41 8b cc                                        	mov    ecx,r12d
    214fa4963724:	8b 9d 10 fb ff ff                               	mov    ebx,DWORD PTR [rbp-0x4f0]
    214fa496372a:	d3 eb                                           	shr    ebx,cl
    214fa496372c:	f6 c3 01                                        	test   bl,0x1
    214fa496372f:	0f 84 1f 01 00 00                               	je     0x214fa4963854
    214fa4963735:	41 8b 4c 10 10                                  	mov    ecx,DWORD PTR [r8+rdx*1+0x10]
    214fa496373a:	41 8b 5c 10 0c                                  	mov    ebx,DWORD PTR [r8+rdx*1+0xc]
    214fa496373f:	45 8b 4c 10 08                                  	mov    r9d,DWORD PTR [r8+rdx*1+0x8]
    214fa4963744:	45 8b 4c 10 04                                  	mov    r9d,DWORD PTR [r8+rdx*1+0x4]
    214fa4963749:	48 89 9d 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rbx
    214fa4963750:	41 8b 1c 10                                     	mov    ebx,DWORD PTR [r8+rdx*1]
    214fa4963754:	83 fb 02                                        	cmp    ebx,0x2
    214fa4963757:	0f 84 9a 00 00 00                               	je     0x214fa49637f7
    214fa496375d:	48 89 8d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],rcx
    214fa4963764:	85 db                                           	test   ebx,ebx
    214fa4963766:	0f 85 39 00 00 00                               	jne    0x214fa49637a5
    214fa496376c:	42 8d 9c a7 90 02 00 00                         	lea    ebx,[rdi+r12*4+0x290]
    214fa4963774:	c4 c1 7a 10 0c 18                               	vmovss xmm1,DWORD PTR [r8+rbx*1]
    214fa496377a:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    214fa4963780:	41 8b cc                                        	mov    ecx,r12d
    214fa4963783:	c1 e1 04                                        	shl    ecx,0x4
    214fa4963786:	03 d9                                           	add    ebx,ecx
    214fa4963788:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa496378c:	41 8b c1                                        	mov    eax,r9d
    214fa496378f:	8b 95 38 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c8]
    214fa4963795:	8b 8d f0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x310]
    214fa496379b:	e8 80 4a ec ff                                  	call   0x214fa4828220
    214fa49637a0:	e9 af 00 00 00                                  	jmp    0x214fa4963854
    214fa49637a5:	44 8b da                                        	mov    r11d,edx
    214fa49637a8:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    214fa49637ad:	42 8d 94 a7 90 02 00 00                         	lea    edx,[rdi+r12*4+0x290]
    214fa49637b5:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    214fa49637bb:	42 8d 94 a7 80 02 00 00                         	lea    edx,[rdi+r12*4+0x280]
    214fa49637c3:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    214fa49637c9:	8d 97 30 02 00 00                               	lea    edx,[rdi+0x230]
    214fa49637cf:	41 8b cc                                        	mov    ecx,r12d
    214fa49637d2:	c1 e1 04                                        	shl    ecx,0x4
    214fa49637d5:	03 d1                                           	add    edx,ecx
    214fa49637d7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49637db:	41 8b c1                                        	mov    eax,r9d
    214fa49637de:	44 8b ca                                        	mov    r9d,edx
    214fa49637e1:	8b 95 38 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c8]
    214fa49637e7:	8b 8d f0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x310]
    214fa49637ed:	e8 46 4a ec ff                                  	call   0x214fa4828238
    214fa49637f2:	e9 5d 00 00 00                                  	jmp    0x214fa4963854
    214fa49637f7:	8b c2                                           	mov    eax,edx
    214fa49637f9:	41 8b 5c 00 14                                  	mov    ebx,DWORD PTR [r8+rax*1+0x14]
    214fa49637fe:	45 8b 5c 00 18                                  	mov    r11d,DWORD PTR [r8+rax*1+0x18]
    214fa4963803:	46 8d bc a7 90 02 00 00                         	lea    r15d,[rdi+r12*4+0x290]
    214fa496380b:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    214fa4963811:	46 8d bc a7 80 02 00 00                         	lea    r15d,[rdi+r12*4+0x280]
    214fa4963819:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    214fa496381f:	46 8d bc a7 70 02 00 00                         	lea    r15d,[rdi+r12*4+0x270]
    214fa4963827:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    214fa496382d:	44 8d bf 30 02 00 00                            	lea    r15d,[rdi+0x230]
    214fa4963834:	41 8b d4                                        	mov    edx,r12d
    214fa4963837:	c1 e2 04                                        	shl    edx,0x4
    214fa496383a:	44 03 fa                                        	add    r15d,edx
    214fa496383d:	41 57                                           	push   r15
    214fa496383f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4963843:	41 8b c1                                        	mov    eax,r9d
    214fa4963846:	8b 95 38 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x3c8]
    214fa496384c:	45 8b cb                                        	mov    r9d,r11d
    214fa496384f:	e8 d4 49 ec ff                                  	call   0x214fa4828228
    214fa4963854:	44 8b a5 b8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x248]
    214fa496385b:	41 83 c4 01                                     	add    r12d,0x1
    214fa496385f:	41 83 fc 04                                     	cmp    r12d,0x4
    214fa4963863:	0f 85 97 fe ff ff                               	jne    0x214fa4963700
    214fa4963869:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa496386c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4963870:	c4 c1 7a 6f 84 38 50 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x250]
    214fa496387a:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    214fa4963884:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    214fa4963888:	c4 c1 7a 6f bc 38 30 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x230]
    214fa4963892:	c4 41 7a 6f 84 38 40 02 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x240]
    214fa496389c:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    214fa49638a1:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    214fa49638a5:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    214fa49638ab:	c4 41 7a 7f 54 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm10
    214fa49638b2:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    214fa49638b6:	c4 c1 7a 7f 74 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm6
    214fa49638bd:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    214fa49638c1:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    214fa49638c6:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    214fa49638ca:	c4 c1 7a 7f 74 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm6
    214fa49638d1:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    214fa49638d5:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    214fa49638db:	c5 78 10 a5 60 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x4a0]
    214fa49638e3:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    214fa49638eb:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    214fa49638f3:	e9 85 00 00 00                                  	jmp    0x214fa496397d
    214fa49638f8:	8b c1                                           	mov    eax,ecx
    214fa49638fa:	8b ce                                           	mov    ecx,esi
    214fa49638fc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4963900:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa4963904:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa4963908:	8b 95 10 fb ff ff                               	mov    edx,DWORD PTR [rbp-0x4f0]
    214fa496390e:	e8 15 4c ec ff                                  	call   0x214fa4828528
    214fa4963913:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4963916:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa496391a:	c5 78 10 a5 60 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x4a0]
    214fa4963922:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    214fa496392a:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    214fa4963932:	e9 46 00 00 00                                  	jmp    0x214fa496397d
    214fa4963937:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    214fa496393b:	44 8b e1                                        	mov    r12d,ecx
    214fa496393e:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    214fa4963944:	c4 c1 7a 7f 04 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm0
    214fa496394a:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    214fa496394e:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    214fa4963954:	c4 c1 7a 7f 44 30 10                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x10],xmm0
    214fa496395b:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    214fa496395f:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    214fa4963965:	c4 c1 7a 7f 44 30 20                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x20],xmm0
    214fa496396c:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    214fa4963970:	c4 82 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [r11+r12*1]
    214fa4963976:	c4 c1 7a 7f 44 30 30                            	vmovdqu XMMWORD PTR [r8+rsi*1+0x30],xmm0
    214fa496397d:	44 8b a5 60 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a0]
    214fa4963984:	41 83 c4 01                                     	add    r12d,0x1
    214fa4963988:	41 83 fc 04                                     	cmp    r12d,0x4
    214fa496398c:	0f 85 ee ec ff ff                               	jne    0x214fa4962680
    214fa4963992:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    214fa496399c:	4c 8b 15 e1 ee ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeee1]        # 0x214fa4962884
    214fa49639a3:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa49639a8:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa49639ac:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa49639b0:	c5 f8 10 b5 50 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xb0]
    214fa49639b8:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    214fa49639bc:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa49639c0:	c4 c1 7a 6f b4 38 40 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x140]
    214fa49639ca:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    214fa49639ce:	c5 f8 10 bd 70 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x90]
    214fa49639d6:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    214fa49639da:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa49639de:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa49639e2:	c4 c1 7a 6f b4 38 50 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x150]
    214fa49639ec:	c5 c8 58 f5                                     	vaddps xmm6,xmm6,xmm5
    214fa49639f0:	c5 78 10 85 60 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xa0]
    214fa49639f8:	c5 b8 58 ed                                     	vaddps xmm5,xmm8,xmm5
    214fa49639fc:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    214fa4963a00:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa4963a04:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    214fa4963a0e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa4963a13:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa4963a17:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa4963a1b:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa4963a23:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa4963a27:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    214fa4963a2c:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4963a30:	c5 f8 59 f0                                     	vmulps xmm6,xmm0,xmm0
    214fa4963a34:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa4963a38:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa4963a3c:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    214fa4963a43:	47 8b 9c 18 38 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x138]
    214fa4963a4b:	4d 8b e3                                        	mov    r12,r11
    214fa4963a4e:	41 83 c4 ff                                     	add    r12d,0xffffffff
    214fa4963a52:	0f 85 f1 00 00 00                               	jne    0x214fa4963b49
    214fa4963a58:	c4 c1 7a 6f b4 38 10 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x210]
    214fa4963a62:	c4 c1 7a 6f bc 38 d0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x1d0]
    214fa4963a6c:	4d 8d 98 38 36 00 00                            	lea    r11,[r8+0x3638]
    214fa4963a73:	4c 8b 7d b0                                     	mov    r15,QWORD PTR [rbp-0x50]
    214fa4963a77:	c4 02 79 18 04 3b                               	vbroadcastss xmm8,DWORD PTR [r11+r15*1]
    214fa4963a7d:	c4 41 78 58 c0                                  	vaddps xmm8,xmm0,xmm8
    214fa4963a82:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    214fa4963a87:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    214fa4963a8c:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    214fa4963a91:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa4963a95:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa4963a99:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    214fa4963a9d:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa4963aa1:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa4963aa5:	c4 c1 7a 6f bc 38 00 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x200]
    214fa4963aaf:	c4 41 7a 6f 84 38 c0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1c0]
    214fa4963ab9:	4d 8d 98 34 36 00 00                            	lea    r11,[r8+0x3634]
    214fa4963ac0:	c4 02 79 18 14 3b                               	vbroadcastss xmm10,DWORD PTR [r11+r15*1]
    214fa4963ac6:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    214fa4963acb:	c4 41 50 5f d2                                  	vmaxps xmm10,xmm5,xmm10
    214fa4963ad0:	c4 41 30 5d d2                                  	vminps xmm10,xmm9,xmm10
    214fa4963ad5:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    214fa4963ada:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    214fa4963adf:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    214fa4963ae4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    214fa4963ae9:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa4963aed:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa4963af1:	c4 41 7a 6f 84 38 f0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1f0]
    214fa4963afb:	c4 41 7a 6f 94 38 b0 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rdi*1+0x1b0]
    214fa4963b05:	4d 8d 98 30 36 00 00                            	lea    r11,[r8+0x3630]
    214fa4963b0c:	c4 02 79 18 1c 3b                               	vbroadcastss xmm11,DWORD PTR [r11+r15*1]
    214fa4963b12:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa4963b17:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa4963b1b:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4963b1f:	c5 a8 59 c0                                     	vmulps xmm0,xmm10,xmm0
    214fa4963b23:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa4963b27:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4963b2b:	c5 b8 58 c0                                     	vaddps xmm0,xmm8,xmm0
    214fa4963b2f:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa4963b33:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4963b37:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    214fa4963b3b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa4963b3f:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    214fa4963b44:	e9 61 01 00 00                                  	jmp    0x214fa4963caa
    214fa4963b49:	41 83 fc 02                                     	cmp    r12d,0x2
    214fa4963b4d:	0f 84 80 00 00 00                               	je     0x214fa4963bd3
    214fa4963b53:	c4 c1 7a 6f 84 38 d0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1d0]
    214fa4963b5d:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    214fa4963b61:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa4963b65:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4963b69:	c4 c1 7a 6f bc 38 c0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x1c0]
    214fa4963b73:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    214fa4963b77:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa4963b7b:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa4963b7f:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    214fa4963b86:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa4963b8a:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    214fa4963b90:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    214fa4963b95:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa4963b99:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa4963b9d:	c4 41 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x1b0]
    214fa4963ba7:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    214fa4963bac:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa4963bb0:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa4963bb4:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    214fa4963bbb:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    214fa4963bc1:	c4 c1 48 59 f0                                  	vmulps xmm6,xmm6,xmm8
    214fa4963bc6:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa4963bca:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa4963bce:	e9 4f 00 00 00                                  	jmp    0x214fa4963c22
    214fa4963bd3:	c5 c8 59 c6                                     	vmulps xmm0,xmm6,xmm6
    214fa4963bd7:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa4963bdb:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4963bdf:	4d 8d b8 1c 37 00 00                            	lea    r15,[r8+0x371c]
    214fa4963be6:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa4963bea:	c4 82 79 18 34 27                               	vbroadcastss xmm6,DWORD PTR [r15+r12*1]
    214fa4963bf0:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    214fa4963bf4:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa4963bf8:	c5 b0 5d f6                                     	vminps xmm6,xmm9,xmm6
    214fa4963bfc:	4d 8d b8 18 37 00 00                            	lea    r15,[r8+0x3718]
    214fa4963c03:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    214fa4963c09:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    214fa4963c0d:	c5 d0 5f ff                                     	vmaxps xmm7,xmm5,xmm7
    214fa4963c11:	c5 b0 5d ff                                     	vminps xmm7,xmm9,xmm7
    214fa4963c15:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    214fa4963c19:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa4963c1d:	c4 c1 79 28 ff                                  	vmovapd xmm7,xmm15
    214fa4963c22:	4d 8d b8 20 37 00 00                            	lea    r15,[r8+0x3720]
    214fa4963c29:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    214fa4963c2f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    214fa4963c34:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa4963c38:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4963c3c:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa4963c40:	0f 84 61 00 00 00                               	je     0x214fa4963ca7
    214fa4963c46:	c4 01 7a 10 84 20 24 37 00 00                   	vmovss xmm8,DWORD PTR [r8+r12*1+0x3724]
    214fa4963c50:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa4963c55:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa4963c5b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa4963c61:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    214fa4963c66:	0f 87 05 00 00 00                               	ja     0x214fa4963c71
    214fa4963c6c:	c4 41 79 28 d0                                  	vmovapd xmm10,xmm8
    214fa4963c71:	c4 41 18 57 e4                                  	vxorps xmm12,xmm12,xmm12
    214fa4963c76:	c4 41 78 2e e0                                  	vucomiss xmm12,xmm8
    214fa4963c7b:	0f 87 0a 00 00 00                               	ja     0x214fa4963c8b
    214fa4963c81:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    214fa4963c86:	e9 05 00 00 00                                  	jmp    0x214fa4963c90
    214fa4963c8b:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    214fa4963c90:	c4 42 79 18 c0                                  	vbroadcastss xmm8,xmm8
    214fa4963c95:	c5 79 28 f8                                     	vmovapd xmm15,xmm0
    214fa4963c99:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa4963c9d:	c4 c1 79 28 f7                                  	vmovapd xmm6,xmm15
    214fa4963ca2:	e9 d5 13 00 00                                  	jmp    0x214fa496507c
    214fa4963ca7:	4d 8b fc                                        	mov    r15,r12
    214fa4963caa:	c5 78 10 55 80                                  	vmovups xmm10,XMMWORD PTR [rbp-0x80]
    214fa4963caf:	c4 41 50 5f c2                                  	vmaxps xmm8,xmm5,xmm10
    214fa4963cb4:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    214fa4963cb9:	c4 41 7a 6f 94 38 e0 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rdi*1+0x1e0]
    214fa4963cc3:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    214fa4963cc8:	c4 41 50 5f c0                                  	vmaxps xmm8,xmm5,xmm8
    214fa4963ccd:	c4 41 30 5d c0                                  	vminps xmm8,xmm9,xmm8
    214fa4963cd2:	c5 79 28 f8                                     	vmovapd xmm15,xmm0
    214fa4963cd6:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa4963cda:	c4 c1 79 28 f7                                  	vmovapd xmm6,xmm15
    214fa4963cdf:	e9 98 13 00 00                                  	jmp    0x214fa496507c
    214fa4963ce4:	43 8b 4c 08 38                                  	mov    ecx,DWORD PTR [r8+r9*1+0x38]
    214fa4963ce9:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    214fa4963cf1:	43 83 7c 08 38 00                               	cmp    DWORD PTR [r8+r9*1+0x38],0x0
    214fa4963cf7:	0f 85 72 12 00 00                               	jne    0x214fa4964f6f
    214fa4963cfd:	49 8d 48 54                                     	lea    rcx,[r8+0x54]
    214fa4963d01:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa4963d07:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa4963d0b:	c4 e2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+rax*1]
    214fa4963d11:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa4963d15:	c5 d8 58 c0                                     	vaddps xmm0,xmm4,xmm0
    214fa4963d19:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa4963d1f:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa4963d23:	c5 f8 58 c4                                     	vaddps xmm0,xmm0,xmm4
    214fa4963d27:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    214fa4963d2b:	49 8d 48 50                                     	lea    rcx,[r8+0x50]
    214fa4963d2f:	c4 a2 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [rcx+r15*1]
    214fa4963d35:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa4963d39:	c4 e2 79 18 34 01                               	vbroadcastss xmm6,DWORD PTR [rcx+rax*1]
    214fa4963d3f:	c5 88 59 f6                                     	vmulps xmm6,xmm14,xmm6
    214fa4963d43:	c5 d8 58 f6                                     	vaddps xmm6,xmm4,xmm6
    214fa4963d47:	c4 e2 79 18 24 11                               	vbroadcastss xmm4,DWORD PTR [rcx+rdx*1]
    214fa4963d4d:	c5 b0 59 e4                                     	vmulps xmm4,xmm9,xmm4
    214fa4963d51:	c5 c8 58 f4                                     	vaddps xmm6,xmm6,xmm4
    214fa4963d55:	c5 90 59 f6                                     	vmulps xmm6,xmm13,xmm6
    214fa4963d59:	43 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+r9*1]
    214fa4963d5d:	4c 89 8d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r9
    214fa4963d64:	83 f9 01                                        	cmp    ecx,0x1
    214fa4963d67:	0f 85 11 0f 00 00                               	jne    0x214fa4964c7e
    214fa4963d6d:	47 8b 64 08 28                                  	mov    r12d,DWORD PTR [r8+r9*1+0x28]
    214fa4963d72:	45 85 e4                                        	test   r12d,r12d
    214fa4963d75:	0f 84 03 0f 00 00                               	je     0x214fa4964c7e
    214fa4963d7b:	43 8b 5c 08 1c                                  	mov    ebx,DWORD PTR [r8+r9*1+0x1c]
    214fa4963d80:	85 db                                           	test   ebx,ebx
    214fa4963d82:	0f 8e f6 0e 00 00                               	jle    0x214fa4964c7e
    214fa4963d88:	48 89 8d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rcx
    214fa4963d8f:	43 8b 4c 08 20                                  	mov    ecx,DWORD PTR [r8+r9*1+0x20]
    214fa4963d94:	85 c9                                           	test   ecx,ecx
    214fa4963d96:	0f 8e dc 0e 00 00                               	jle    0x214fa4964c78
    214fa4963d9c:	44 8b d3                                        	mov    r10d,ebx
    214fa4963d9f:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    214fa4963da4:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa4963da9:	43 8b 54 08 10                                  	mov    edx,DWORD PTR [r8+r9*1+0x10]
    214fa4963dae:	33 c0                                           	xor    eax,eax
    214fa4963db0:	81 fa 2f 81 00 00                               	cmp    edx,0x812f
    214fa4963db6:	0f 95 c0                                        	setne  al
    214fa4963db9:	81 fa 00 29 00 00                               	cmp    edx,0x2900
    214fa4963dbf:	0f 95 c2                                        	setne  dl
    214fa4963dc2:	0f b6 d2                                        	movzx  edx,dl
    214fa4963dc5:	23 d0                                           	and    edx,eax
    214fa4963dc7:	0f 85 0d 00 00 00                               	jne    0x214fa4963dda
    214fa4963dcd:	c5 d0 5f f6                                     	vmaxps xmm6,xmm5,xmm6
    214fa4963dd1:	c5 98 5d f6                                     	vminps xmm6,xmm12,xmm6
    214fa4963dd5:	e9 0b 00 00 00                                  	jmp    0x214fa4963de5
    214fa4963dda:	c4 63 79 08 de 09                               	vroundps xmm11,xmm6,0x9
    214fa4963de0:	c4 c1 48 5c f3                                  	vsubps xmm6,xmm6,xmm11
    214fa4963de5:	c5 b0 59 f6                                     	vmulps xmm6,xmm9,xmm6
    214fa4963de9:	44 8b d1                                        	mov    r10d,ecx
    214fa4963dec:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    214fa4963df1:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa4963df6:	43 8b 44 08 14                                  	mov    eax,DWORD PTR [r8+r9*1+0x14]
    214fa4963dfb:	45 33 ff                                        	xor    r15d,r15d
    214fa4963dfe:	3d 2f 81 00 00                                  	cmp    eax,0x812f
    214fa4963e03:	41 0f 95 c7                                     	setne  r15b
    214fa4963e07:	3d 00 29 00 00                                  	cmp    eax,0x2900
    214fa4963e0c:	0f 95 c0                                        	setne  al
    214fa4963e0f:	0f b6 c0                                        	movzx  eax,al
    214fa4963e12:	41 23 c7                                        	and    eax,r15d
    214fa4963e15:	0f 85 0d 00 00 00                               	jne    0x214fa4963e28
    214fa4963e1b:	c5 d0 5f c0                                     	vmaxps xmm0,xmm5,xmm0
    214fa4963e1f:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa4963e23:	e9 0b 00 00 00                                  	jmp    0x214fa4963e33
    214fa4963e28:	c4 63 79 08 d8 09                               	vroundps xmm11,xmm0,0x9
    214fa4963e2e:	c4 c1 78 5c c3                                  	vsubps xmm0,xmm0,xmm11
    214fa4963e33:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa4963e37:	4c 8b 15 46 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea46]        # 0x214fa4962884
    214fa4963e3e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa4963e43:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa4963e48:	c4 41 78 58 d9                                  	vaddps xmm11,xmm0,xmm9
    214fa4963e4d:	47 8b 7c 08 0c                                  	mov    r15d,DWORD PTR [r8+r9*1+0xc]
    214fa4963e52:	45 33 ff                                        	xor    r15d,r15d
    214fa4963e55:	43 81 7c 08 0c 00 26 00 00                      	cmp    DWORD PTR [r8+r9*1+0xc],0x2600
    214fa4963e5e:	41 0f 94 c7                                     	sete   r15b
    214fa4963e62:	45 85 ff                                        	test   r15d,r15d
    214fa4963e65:	0f 85 5c 00 00 00                               	jne    0x214fa4963ec7
    214fa4963e6b:	c4 c3 79 08 c3 09                               	vroundps xmm0,xmm11,0x9
    214fa4963e71:	4c 8b 15 5d a5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa55d]        # 0x214fa495e3d5
    214fa4963e78:	c4 41 78 54 2a                                  	vandps xmm13,xmm0,XMMWORD PTR [r10]
    214fa4963e7d:	4c 8b 15 ad d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2ad]        # 0x214fa4961131
    214fa4963e84:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa4963e89:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa4963e8e:	c4 41 10 c2 ee 01                               	vcmpltps xmm13,xmm13,xmm14
    214fa4963e94:	4c 8b 15 54 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd254]        # 0x214fa49610ef
    214fa4963e9b:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa4963ea0:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    214fa4963ea5:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa4963eab:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa4963eaf:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa4963eb4:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    214fa4963eb9:	c5 79 28 c8                                     	vmovapd xmm9,xmm0
    214fa4963ebd:	c4 c1 79 28 c3                                  	vmovapd xmm0,xmm11
    214fa4963ec2:	e9 4a 00 00 00                                  	jmp    0x214fa4963f11
    214fa4963ec7:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    214fa4963ecd:	4c 8b 15 01 a5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa501]        # 0x214fa495e3d5
    214fa4963ed4:	c4 41 30 54 1a                                  	vandps xmm11,xmm9,XMMWORD PTR [r10]
    214fa4963ed9:	4c 8b 15 51 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd251]        # 0x214fa4961131
    214fa4963ee0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa4963ee5:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa4963eea:	c4 41 20 c2 ee 01                               	vcmpltps xmm13,xmm11,xmm14
    214fa4963ef0:	4c 8b 15 f8 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f8]        # 0x214fa49610ef
    214fa4963ef7:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    214fa4963efd:	c4 c1 30 54 e7                                  	vandps xmm4,xmm9,xmm15
    214fa4963f02:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    214fa4963f08:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa4963f0c:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa4963f11:	c4 63 79 08 de 09                               	vroundps xmm11,xmm6,0x9
    214fa4963f17:	4c 8b 15 d1 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1d1]        # 0x214fa49610ef
    214fa4963f1e:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    214fa4963f24:	c4 c1 20 54 ef                                  	vandps xmm5,xmm11,xmm15
    214fa4963f29:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    214fa4963f2f:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    214fa4963f33:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    214fa4963f38:	4c 8b 15 d3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1d3]        # 0x214fa4961112
    214fa4963f3f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4963f44:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa4963f48:	4c 8b 15 86 a4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa486]        # 0x214fa495e3d5
    214fa4963f4f:	c4 41 20 54 02                                  	vandps xmm8,xmm11,XMMWORD PTR [r10]
    214fa4963f54:	c4 41 38 c2 c6 01                               	vcmpltps xmm8,xmm8,xmm14
    214fa4963f5a:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    214fa4963f5e:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa4963f63:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4963f68:	8d 7b ff                                        	lea    edi,[rbx-0x1]
    214fa4963f6b:	c5 79 6e c7                                     	vmovd  xmm8,edi
    214fa4963f6f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa4963f74:	43 8b 7c 08 2c                                  	mov    edi,DWORD PTR [r8+r9*1+0x2c]
    214fa4963f79:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    214fa4963f7e:	c4 42 51 3d d2                                  	vpmaxsd xmm10,xmm5,xmm10
    214fa4963f83:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    214fa4963f88:	85 d2                                           	test   edx,edx
    214fa4963f8a:	0f 84 57 00 00 00                               	je     0x214fa4963fe7
    214fa4963f90:	c5 79 6e d7                                     	vmovd  xmm10,edi
    214fa4963f94:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4963f99:	c4 41 51 db d2                                  	vpand  xmm10,xmm5,xmm10
    214fa4963f9e:	85 ff                                           	test   edi,edi
    214fa4963fa0:	0f 85 41 00 00 00                               	jne    0x214fa4963fe7
    214fa4963fa6:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    214fa4963faa:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4963faf:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    214fa4963fb4:	c4 c1 51 66 c8                                  	vpcmpgtd xmm1,xmm5,xmm8
    214fa4963fb9:	c4 c1 71 db ca                                  	vpand  xmm1,xmm1,xmm10
    214fa4963fbe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4963fc3:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    214fa4963fc8:	c5 19 66 e5                                     	vpcmpgtd xmm12,xmm12,xmm5
    214fa4963fcc:	c5 19 df f9                                     	vpandn xmm15,xmm12,xmm1
    214fa4963fd0:	c4 41 29 db d4                                  	vpand  xmm10,xmm10,xmm12
    214fa4963fd5:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    214fa4963fda:	c4 41 51 fe d2                                  	vpaddd xmm10,xmm5,xmm10
    214fa4963fdf:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa4963fe7:	c5 11 df ff                                     	vpandn xmm15,xmm13,xmm7
    214fa4963feb:	c4 41 59 db ed                                  	vpand  xmm13,xmm4,xmm13
    214fa4963ff0:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    214fa4963ff5:	8d 71 ff                                        	lea    esi,[rcx-0x1]
    214fa4963ff8:	c5 f9 6e e6                                     	vmovd  xmm4,esi
    214fa4963ffc:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    214fa4964001:	43 8b 74 08 30                                  	mov    esi,DWORD PTR [r8+r9*1+0x30]
    214fa4964006:	c4 41 19 ef e4                                  	vpxor  xmm12,xmm12,xmm12
    214fa496400b:	c4 42 11 3d e4                                  	vpmaxsd xmm12,xmm13,xmm12
    214fa4964010:	c4 62 19 39 e4                                  	vpminsd xmm12,xmm12,xmm4
    214fa4964015:	85 c0                                           	test   eax,eax
    214fa4964017:	0f 84 4d 00 00 00                               	je     0x214fa496406a
    214fa496401d:	c5 79 6e e6                                     	vmovd  xmm12,esi
    214fa4964021:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa4964026:	c4 41 19 db e5                                  	vpand  xmm12,xmm12,xmm13
    214fa496402b:	85 f6                                           	test   esi,esi
    214fa496402d:	0f 85 37 00 00 00                               	jne    0x214fa496406a
    214fa4964033:	c5 79 6e e1                                     	vmovd  xmm12,ecx
    214fa4964037:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa496403c:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    214fa4964040:	c5 91 66 d4                                     	vpcmpgtd xmm2,xmm13,xmm4
    214fa4964044:	c4 c1 69 db d4                                  	vpand  xmm2,xmm2,xmm12
    214fa4964049:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa496404e:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    214fa4964053:	c4 c1 71 66 cd                                  	vpcmpgtd xmm1,xmm1,xmm13
    214fa4964058:	c5 71 df fa                                     	vpandn xmm15,xmm1,xmm2
    214fa496405c:	c5 19 db e1                                     	vpand  xmm12,xmm12,xmm1
    214fa4964060:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa4964065:	c4 41 11 fe e4                                  	vpaddd xmm12,xmm13,xmm12
    214fa496406a:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    214fa496406e:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    214fa4964073:	c4 62 19 40 e1                                  	vpmulld xmm12,xmm12,xmm1
    214fa4964078:	c4 c1 19 fe d2                                  	vpaddd xmm2,xmm12,xmm10
    214fa496407d:	c4 e3 79 16 d3 03                               	vpextrd ebx,xmm2,0x3
    214fa4964083:	c4 c3 79 16 d1 02                               	vpextrd r9d,xmm2,0x2
    214fa4964089:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    214fa4964090:	c4 e3 79 16 d3 01                               	vpextrd ebx,xmm2,0x1
    214fa4964096:	4c 89 8d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r9
    214fa496409d:	c4 c1 79 7e d1                                  	vmovd  r9d,xmm2
    214fa49640a2:	45 85 ff                                        	test   r15d,r15d
    214fa49640a5:	0f 85 e8 09 00 00                               	jne    0x214fa4964a93
    214fa49640ab:	4c 8b 15 59 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea59]        # 0x214fa4962b0b
    214fa49640b2:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa49640b7:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa49640bb:	c5 d1 fe ea                                     	vpaddd xmm5,xmm5,xmm2
    214fa49640bf:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    214fa49640c3:	c4 e2 51 3d db                                  	vpmaxsd xmm3,xmm5,xmm3
    214fa49640c8:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    214fa49640cd:	85 d2                                           	test   edx,edx
    214fa49640cf:	0f 84 43 00 00 00                               	je     0x214fa4964118
    214fa49640d5:	c5 f9 6e df                                     	vmovd  xmm3,edi
    214fa49640d9:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa49640de:	c5 d1 db db                                     	vpand  xmm3,xmm5,xmm3
    214fa49640e2:	85 ff                                           	test   edi,edi
    214fa49640e4:	0f 85 2e 00 00 00                               	jne    0x214fa4964118
    214fa49640ea:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    214fa49640ee:	c4 41 51 66 c0                                  	vpcmpgtd xmm8,xmm5,xmm8
    214fa49640f3:	c5 39 db c1                                     	vpand  xmm8,xmm8,xmm1
    214fa49640f7:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa49640fc:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    214fa4964101:	c5 e1 66 dd                                     	vpcmpgtd xmm3,xmm3,xmm5
    214fa4964105:	c4 41 61 df f8                                  	vpandn xmm15,xmm3,xmm8
    214fa496410a:	c5 71 db c3                                     	vpand  xmm8,xmm1,xmm3
    214fa496410e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa4964113:	c4 c1 51 fe d8                                  	vpaddd xmm3,xmm5,xmm8
    214fa4964118:	c5 91 fe ea                                     	vpaddd xmm5,xmm13,xmm2
    214fa496411c:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    214fa4964121:	c4 42 51 3d c0                                  	vpmaxsd xmm8,xmm5,xmm8
    214fa4964126:	c4 62 39 39 c4                                  	vpminsd xmm8,xmm8,xmm4
    214fa496412b:	85 c0                                           	test   eax,eax
    214fa496412d:	0f 84 4d 00 00 00                               	je     0x214fa4964180
    214fa4964133:	c5 79 6e c6                                     	vmovd  xmm8,esi
    214fa4964137:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa496413c:	c5 39 db c5                                     	vpand  xmm8,xmm8,xmm5
    214fa4964140:	85 f6                                           	test   esi,esi
    214fa4964142:	0f 85 38 00 00 00                               	jne    0x214fa4964180
    214fa4964148:	c5 79 6e c1                                     	vmovd  xmm8,ecx
    214fa496414c:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa4964151:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    214fa4964156:	c5 d1 66 e4                                     	vpcmpgtd xmm4,xmm5,xmm4
    214fa496415a:	c4 c1 59 db e0                                  	vpand  xmm4,xmm4,xmm8
    214fa496415f:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4964164:	c4 c2 59 0a e7                                  	vpsignd xmm4,xmm4,xmm15
    214fa4964169:	c5 11 66 ed                                     	vpcmpgtd xmm13,xmm13,xmm5
    214fa496416d:	c5 11 df fc                                     	vpandn xmm15,xmm13,xmm4
    214fa4964171:	c4 41 39 db c5                                  	vpand  xmm8,xmm8,xmm13
    214fa4964176:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa496417b:	c4 41 51 fe c0                                  	vpaddd xmm8,xmm5,xmm8
    214fa4964180:	c4 e2 39 40 e9                                  	vpmulld xmm5,xmm8,xmm1
    214fa4964185:	c4 41 51 fe c2                                  	vpaddd xmm8,xmm5,xmm10
    214fa496418a:	45 85 db                                        	test   r11d,r11d
    214fa496418d:	0f 85 0c 01 00 00                               	jne    0x214fa496429f
    214fa4964193:	c5 29 fe d2                                     	vpaddd xmm10,xmm10,xmm2
    214fa4964197:	c4 41 61 76 d2                                  	vpcmpeqd xmm10,xmm3,xmm10
    214fa496419c:	c4 c1 78 50 fa                                  	vmovmskps edi,xmm10
    214fa49641a1:	83 ff 0f                                        	cmp    edi,0xf
    214fa49641a4:	0f 84 4f 00 00 00                               	je     0x214fa49641f9
    214fa49641aa:	4c 89 9d 40 fb ff ff                            	mov    QWORD PTR [rbp-0x4c0],r11
    214fa49641b1:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    214fa49641b7:	83 e6 04                                        	and    esi,0x4
    214fa49641ba:	8b bd 10 fb ff ff                               	mov    edi,DWORD PTR [rbp-0x4f0]
    214fa49641c0:	83 e7 02                                        	and    edi,0x2
    214fa49641c3:	44 8b bd 10 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x4f0]
    214fa49641ca:	41 83 e7 01                                     	and    r15d,0x1
    214fa49641ce:	41 8d 04 9c                                     	lea    eax,[r12+rbx*4]
    214fa49641d2:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa49641d6:	43 8d 1c 8c                                     	lea    ebx,[r12+r9*4]
    214fa49641da:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa49641de:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    214fa49641e4:	41 8d 14 94                                     	lea    edx,[r12+rdx*4]
    214fa49641e8:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa49641ec:	44 8b d0                                        	mov    r10d,eax
    214fa49641ef:	8b c3                                           	mov    eax,ebx
    214fa49641f1:	41 8b da                                        	mov    ebx,r10d
    214fa49641f4:	e9 38 01 00 00                                  	jmp    0x214fa4964331
    214fa49641f9:	43 8d 3c 8c                                     	lea    edi,[r12+r9*4]
    214fa49641fd:	c4 c1 7b 10 2c 38                               	vmovsd xmm5,QWORD PTR [r8+rdi*1]
    214fa4964203:	41 8d 3c 9c                                     	lea    edi,[r12+rbx*4]
    214fa4964207:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    214fa496420d:	c4 c1 51 6c ea                                  	vpunpcklqdq xmm5,xmm5,xmm10
    214fa4964212:	8b bd 48 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1b8]
    214fa4964218:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    214fa496421c:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    214fa4964222:	44 8b bd 60 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1a0]
    214fa4964229:	43 8d 3c bc                                     	lea    edi,[r12+r15*4]
    214fa496422d:	c4 41 7b 10 24 38                               	vmovsd xmm12,QWORD PTR [r8+rdi*1]
    214fa4964233:	c4 41 29 6c d4                                  	vpunpcklqdq xmm10,xmm10,xmm12
    214fa4964238:	c4 41 50 c6 e2 dd                               	vshufps xmm12,xmm5,xmm10,0xdd
    214fa496423e:	c4 c1 50 c6 ea 88                               	vshufps xmm5,xmm5,xmm10,0x88
    214fa4964244:	c4 c1 39 72 f0 02                               	vpslld xmm8,xmm8,0x2
    214fa496424a:	c5 79 7e c7                                     	vmovd  edi,xmm8
    214fa496424e:	41 03 fc                                        	add    edi,r12d
    214fa4964251:	c4 41 7b 10 14 38                               	vmovsd xmm10,QWORD PTR [r8+rdi*1]
    214fa4964257:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    214fa496425d:	41 03 fc                                        	add    edi,r12d
    214fa4964260:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    214fa4964266:	c4 41 29 6c d5                                  	vpunpcklqdq xmm10,xmm10,xmm13
    214fa496426b:	c4 63 79 16 c7 02                               	vpextrd edi,xmm8,0x2
    214fa4964271:	41 03 fc                                        	add    edi,r12d
    214fa4964274:	c4 41 7b 10 2c 38                               	vmovsd xmm13,QWORD PTR [r8+rdi*1]
    214fa496427a:	c4 63 79 16 c7 03                               	vpextrd edi,xmm8,0x3
    214fa4964280:	41 03 fc                                        	add    edi,r12d
    214fa4964283:	c4 41 7b 10 04 38                               	vmovsd xmm8,QWORD PTR [r8+rdi*1]
    214fa4964289:	c4 41 11 6c c0                                  	vpunpcklqdq xmm8,xmm13,xmm8
    214fa496428e:	c4 41 28 c6 e8 dd                               	vshufps xmm13,xmm10,xmm8,0xdd
    214fa4964294:	c4 41 28 c6 c0 88                               	vshufps xmm8,xmm10,xmm8,0x88
    214fa496429a:	e9 67 04 00 00                                  	jmp    0x214fa4964706
    214fa496429f:	4c 89 9d 40 fb ff ff                            	mov    QWORD PTR [rbp-0x4c0],r11
    214fa49642a6:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    214fa49642ac:	83 e6 04                                        	and    esi,0x4
    214fa49642af:	8b bd 10 fb ff ff                               	mov    edi,DWORD PTR [rbp-0x4f0]
    214fa49642b5:	83 e7 02                                        	and    edi,0x2
    214fa49642b8:	44 8b bd 10 fb ff ff                            	mov    r15d,DWORD PTR [rbp-0x4f0]
    214fa49642bf:	41 83 e7 01                                     	and    r15d,0x1
    214fa49642c3:	45 85 ff                                        	test   r15d,r15d
    214fa49642c6:	0f 85 07 00 00 00                               	jne    0x214fa49642d3
    214fa49642cc:	33 c0                                           	xor    eax,eax
    214fa49642ce:	e9 08 00 00 00                                  	jmp    0x214fa49642db
    214fa49642d3:	43 8d 04 8c                                     	lea    eax,[r12+r9*4]
    214fa49642d7:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa49642db:	85 ff                                           	test   edi,edi
    214fa49642dd:	0f 85 07 00 00 00                               	jne    0x214fa49642ea
    214fa49642e3:	33 db                                           	xor    ebx,ebx
    214fa49642e5:	e9 08 00 00 00                                  	jmp    0x214fa49642f2
    214fa49642ea:	41 8d 1c 9c                                     	lea    ebx,[r12+rbx*4]
    214fa49642ee:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa49642f2:	85 f6                                           	test   esi,esi
    214fa49642f4:	0f 85 07 00 00 00                               	jne    0x214fa4964301
    214fa49642fa:	33 d2                                           	xor    edx,edx
    214fa49642fc:	e9 0e 00 00 00                                  	jmp    0x214fa496430f
    214fa4964301:	8b 95 48 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b8]
    214fa4964307:	41 8d 14 94                                     	lea    edx,[r12+rdx*4]
    214fa496430b:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa496430f:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa4964316:	0f 83 15 00 00 00                               	jae    0x214fa4964331
    214fa496431c:	c4 41 61 fe d4                                  	vpaddd xmm10,xmm3,xmm12
    214fa4964321:	c5 79 6e e0                                     	vmovd  xmm12,eax
    214fa4964325:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa496432a:	33 c9                                           	xor    ecx,ecx
    214fa496432c:	e9 5f 00 00 00                                  	jmp    0x214fa4964390
    214fa4964331:	8b 8d 60 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1a0]
    214fa4964337:	41 8d 0c 8c                                     	lea    ecx,[r12+rcx*4]
    214fa496433b:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa496433f:	c4 41 61 fe d4                                  	vpaddd xmm10,xmm3,xmm12
    214fa4964344:	c5 79 6e e0                                     	vmovd  xmm12,eax
    214fa4964348:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa496434d:	45 85 db                                        	test   r11d,r11d
    214fa4964350:	0f 85 3a 00 00 00                               	jne    0x214fa4964390
    214fa4964356:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    214fa496435c:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    214fa4964360:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa4964364:	c4 41 79 7e d1                                  	vmovd  r9d,xmm10
    214fa4964369:	47 8d 0c 8c                                     	lea    r9d,[r12+r9*4]
    214fa496436d:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    214fa4964371:	c4 43 79 16 d3 02                               	vpextrd r11d,xmm10,0x2
    214fa4964377:	47 8d 1c 9c                                     	lea    r11d,[r12+r11*4]
    214fa496437b:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa496437f:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    214fa4964386:	8b f7                                           	mov    esi,edi
    214fa4964388:	41 8b fb                                        	mov    edi,r11d
    214fa496438b:	e9 b2 00 00 00                                  	jmp    0x214fa4964442
    214fa4964390:	45 85 ff                                        	test   r15d,r15d
    214fa4964393:	0f 85 08 00 00 00                               	jne    0x214fa49643a1
    214fa4964399:	45 33 c9                                        	xor    r9d,r9d
    214fa496439c:	e9 0c 00 00 00                                  	jmp    0x214fa49643ad
    214fa49643a1:	c5 79 7e d0                                     	vmovd  eax,xmm10
    214fa49643a5:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    214fa49643a9:	45 8b 0c 00                                     	mov    r9d,DWORD PTR [r8+rax*1]
    214fa49643ad:	85 ff                                           	test   edi,edi
    214fa49643af:	0f 85 07 00 00 00                               	jne    0x214fa49643bc
    214fa49643b5:	33 c0                                           	xor    eax,eax
    214fa49643b7:	e9 0e 00 00 00                                  	jmp    0x214fa49643ca
    214fa49643bc:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    214fa49643c2:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    214fa49643c6:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa49643ca:	85 f6                                           	test   esi,esi
    214fa49643cc:	0f 85 10 00 00 00                               	jne    0x214fa49643e2
    214fa49643d2:	48 c7 85 60 fe ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x1a0],0x0
    214fa49643dd:	e9 1c 00 00 00                                  	jmp    0x214fa49643fe
    214fa49643e2:	c4 43 79 16 d3 02                               	vpextrd r11d,xmm10,0x2
    214fa49643e8:	47 8d 1c 9c                                     	lea    r11d,[r12+r11*4]
    214fa49643ec:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa49643f0:	4c 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],r11
    214fa49643f7:	44 8b 9d 40 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4c0]
    214fa49643fe:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa4964405:	0f 83 24 00 00 00                               	jae    0x214fa496442f
    214fa496440b:	48 89 9d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rbx
    214fa4964412:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    214fa4964418:	4c 89 8d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r9
    214fa496441f:	44 8b c8                                        	mov    r9d,eax
    214fa4964422:	41 8b c7                                        	mov    eax,r15d
    214fa4964425:	44 8b ff                                        	mov    r15d,edi
    214fa4964428:	33 ff                                           	xor    edi,edi
    214fa496442a:	e9 4a 00 00 00                                  	jmp    0x214fa4964479
    214fa496442f:	44 8b d7                                        	mov    r10d,edi
    214fa4964432:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa4964438:	48 89 b5 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rsi
    214fa496443f:	41 8b f2                                        	mov    esi,r10d
    214fa4964442:	c4 43 79 16 d3 03                               	vpextrd r11d,xmm10,0x3
    214fa4964448:	47 8d 1c 9c                                     	lea    r11d,[r12+r11*4]
    214fa496444c:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa4964450:	48 89 9d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rbx
    214fa4964457:	8b df                                           	mov    ebx,edi
    214fa4964459:	41 8b fb                                        	mov    edi,r11d
    214fa496445c:	4c 89 8d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r9
    214fa4964463:	44 8b c8                                        	mov    r9d,eax
    214fa4964466:	44 8b 9d 40 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4c0]
    214fa496446d:	41 8b c7                                        	mov    eax,r15d
    214fa4964470:	44 8b fe                                        	mov    r15d,esi
    214fa4964473:	8b b5 60 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1a0]
    214fa4964479:	c4 63 19 22 95 b8 fd ff ff 01                   	vpinsrd xmm10,xmm12,DWORD PTR [rbp-0x248],0x1
    214fa4964483:	c5 79 6e a5 d8 fd ff ff                         	vmovd  xmm12,DWORD PTR [rbp-0x228]
    214fa496448b:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa4964490:	c4 43 19 22 e1 01                               	vpinsrd xmm12,xmm12,r9d,0x1
    214fa4964496:	48 89 bd 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rdi
    214fa496449d:	45 85 db                                        	test   r11d,r11d
    214fa49644a0:	0f 85 4b 00 00 00                               	jne    0x214fa49644f1
    214fa49644a6:	c4 43 79 16 c1 01                               	vpextrd r9d,xmm8,0x1
    214fa49644ac:	47 8d 0c 8c                                     	lea    r9d,[r12+r9*4]
    214fa49644b0:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    214fa49644b4:	c5 79 7e c7                                     	vmovd  edi,xmm8
    214fa49644b8:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    214fa49644bc:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa49644c0:	48 89 8d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rcx
    214fa49644c7:	c4 63 79 16 c1 02                               	vpextrd ecx,xmm8,0x2
    214fa49644cd:	41 8d 0c 8c                                     	lea    ecx,[r12+rcx*4]
    214fa49644d1:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa49644d5:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    214fa49644dc:	44 8b c9                                        	mov    r9d,ecx
    214fa49644df:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    214fa49644e6:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    214fa49644ec:	e9 d8 00 00 00                                  	jmp    0x214fa49645c9
    214fa49644f1:	85 c0                                           	test   eax,eax
    214fa49644f3:	0f 85 08 00 00 00                               	jne    0x214fa4964501
    214fa49644f9:	45 33 c9                                        	xor    r9d,r9d
    214fa49644fc:	e9 0d 00 00 00                                  	jmp    0x214fa496450e
    214fa4964501:	c4 41 79 7e c1                                  	vmovd  r9d,xmm8
    214fa4964506:	47 8d 0c 8c                                     	lea    r9d,[r12+r9*4]
    214fa496450a:	47 8b 0c 08                                     	mov    r9d,DWORD PTR [r8+r9*1]
    214fa496450e:	45 85 ff                                        	test   r15d,r15d
    214fa4964511:	0f 85 10 00 00 00                               	jne    0x214fa4964527
    214fa4964517:	48 c7 85 b8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x248],0x0
    214fa4964522:	e9 1b 00 00 00                                  	jmp    0x214fa4964542
    214fa4964527:	c4 63 79 16 c7 01                               	vpextrd edi,xmm8,0x1
    214fa496452d:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    214fa4964531:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4964535:	48 89 bd b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rdi
    214fa496453c:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa4964542:	85 f6                                           	test   esi,esi
    214fa4964544:	0f 85 10 00 00 00                               	jne    0x214fa496455a
    214fa496454a:	48 c7 85 d8 fd ff ff 00 00 00 00                	mov    QWORD PTR [rbp-0x228],0x0
    214fa4964555:	e9 1b 00 00 00                                  	jmp    0x214fa4964575
    214fa496455a:	c4 63 79 16 c7 02                               	vpextrd edi,xmm8,0x2
    214fa4964560:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    214fa4964564:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4964568:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    214fa496456f:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa4964575:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa496457c:	0f 83 36 00 00 00                               	jae    0x214fa49645b8
    214fa4964582:	c4 63 29 22 c2 02                               	vpinsrd xmm8,xmm10,edx,0x2
    214fa4964588:	c4 63 19 22 d3 02                               	vpinsrd xmm10,xmm12,ebx,0x2
    214fa496458e:	c5 d1 fe eb                                     	vpaddd xmm5,xmm5,xmm3
    214fa4964592:	c4 41 79 6e e1                                  	vmovd  xmm12,r9d
    214fa4964597:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa496459c:	c4 63 19 22 a5 b8 fd ff ff 01                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x248],0x1
    214fa49645a6:	c4 63 19 22 a5 d8 fd ff ff 02                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x228],0x2
    214fa49645b0:	45 33 db                                        	xor    r11d,r11d
    214fa49645b3:	e9 9d 00 00 00                                  	jmp    0x214fa4964655
    214fa49645b8:	4d 8b d1                                        	mov    r10,r9
    214fa49645bb:	4c 8b 8d d8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x228]
    214fa49645c2:	4c 89 95 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r10
    214fa49645c9:	c4 63 79 16 c7 03                               	vpextrd edi,xmm8,0x3
    214fa49645cf:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    214fa49645d3:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa49645d7:	c4 63 29 22 c2 02                               	vpinsrd xmm8,xmm10,edx,0x2
    214fa49645dd:	c4 63 19 22 d3 02                               	vpinsrd xmm10,xmm12,ebx,0x2
    214fa49645e3:	c5 d1 fe eb                                     	vpaddd xmm5,xmm5,xmm3
    214fa49645e7:	c5 79 6e a5 d8 fd ff ff                         	vmovd  xmm12,DWORD PTR [rbp-0x228]
    214fa49645ef:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa49645f4:	c4 63 19 22 a5 b8 fd ff ff 01                   	vpinsrd xmm12,xmm12,DWORD PTR [rbp-0x248],0x1
    214fa49645fe:	c4 43 19 22 e1 02                               	vpinsrd xmm12,xmm12,r9d,0x2
    214fa4964604:	45 85 db                                        	test   r11d,r11d
    214fa4964607:	0f 85 3f 00 00 00                               	jne    0x214fa496464c
    214fa496460d:	c4 c3 79 16 eb 01                               	vpextrd r11d,xmm5,0x1
    214fa4964613:	47 8d 1c 9c                                     	lea    r11d,[r12+r11*4]
    214fa4964617:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa496461b:	c4 c1 79 7e ef                                  	vmovd  r15d,xmm5
    214fa4964620:	47 8d 3c bc                                     	lea    r15d,[r12+r15*4]
    214fa4964624:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4964628:	c4 e3 79 16 e8 02                               	vpextrd eax,xmm5,0x2
    214fa496462e:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    214fa4964632:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa4964636:	8b d8                                           	mov    ebx,eax
    214fa4964638:	41 8b c7                                        	mov    eax,r15d
    214fa496463b:	45 8b fb                                        	mov    r15d,r11d
    214fa496463e:	44 8b df                                        	mov    r11d,edi
    214fa4964641:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa4964647:	e9 75 00 00 00                                  	jmp    0x214fa49646c1
    214fa496464c:	44 8b df                                        	mov    r11d,edi
    214fa496464f:	8b bd 60 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1a0]
    214fa4964655:	85 c0                                           	test   eax,eax
    214fa4964657:	0f 85 07 00 00 00                               	jne    0x214fa4964664
    214fa496465d:	33 c0                                           	xor    eax,eax
    214fa496465f:	e9 0c 00 00 00                                  	jmp    0x214fa4964670
    214fa4964664:	c5 f9 7e e8                                     	vmovd  eax,xmm5
    214fa4964668:	41 8d 04 84                                     	lea    eax,[r12+rax*4]
    214fa496466c:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa4964670:	45 85 ff                                        	test   r15d,r15d
    214fa4964673:	0f 85 08 00 00 00                               	jne    0x214fa4964681
    214fa4964679:	45 33 ff                                        	xor    r15d,r15d
    214fa496467c:	e9 0e 00 00 00                                  	jmp    0x214fa496468f
    214fa4964681:	c4 c3 79 16 ef 01                               	vpextrd r15d,xmm5,0x1
    214fa4964687:	47 8d 3c bc                                     	lea    r15d,[r12+r15*4]
    214fa496468b:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa496468f:	85 f6                                           	test   esi,esi
    214fa4964691:	0f 85 07 00 00 00                               	jne    0x214fa496469e
    214fa4964697:	33 db                                           	xor    ebx,ebx
    214fa4964699:	e9 0e 00 00 00                                  	jmp    0x214fa49646ac
    214fa496469e:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    214fa49646a4:	41 8d 1c 9c                                     	lea    ebx,[r12+rbx*4]
    214fa49646a8:	41 8b 1c 18                                     	mov    ebx,DWORD PTR [r8+rbx*1]
    214fa49646ac:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa49646b3:	0f 83 08 00 00 00                               	jae    0x214fa49646c1
    214fa49646b9:	45 33 e4                                        	xor    r12d,r12d
    214fa49646bc:	e9 0e 00 00 00                                  	jmp    0x214fa49646cf
    214fa49646c1:	c4 e3 79 16 ea 03                               	vpextrd edx,xmm5,0x3
    214fa49646c7:	45 8d 24 94                                     	lea    r12d,[r12+rdx*4]
    214fa49646cb:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa49646cf:	c4 e3 39 22 e9 03                               	vpinsrd xmm5,xmm8,ecx,0x3
    214fa49646d5:	c4 63 29 22 c7 03                               	vpinsrd xmm8,xmm10,edi,0x3
    214fa49646db:	c5 79 6e d0                                     	vmovd  xmm10,eax
    214fa49646df:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa49646e4:	c4 43 29 22 d7 01                               	vpinsrd xmm10,xmm10,r15d,0x1
    214fa49646ea:	c4 63 29 22 d3 02                               	vpinsrd xmm10,xmm10,ebx,0x2
    214fa49646f0:	c4 43 29 22 ec 03                               	vpinsrd xmm13,xmm10,r12d,0x3
    214fa49646f6:	c4 43 19 22 d3 03                               	vpinsrd xmm10,xmm12,r11d,0x3
    214fa49646fc:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    214fa4964701:	c4 41 79 28 c2                                  	vmovapd xmm8,xmm10
    214fa4964706:	c5 a9 72 d5 18                                  	vpsrld xmm10,xmm5,0x18
    214fa496470b:	c4 c1 71 72 d4 18                               	vpsrld xmm1,xmm12,0x18
    214fa4964711:	c5 29 6b d1                                     	vpackssdw xmm10,xmm10,xmm1
    214fa4964715:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    214fa4964719:	c4 c3 71 0f d2 08                               	vpalignr xmm2,xmm1,xmm10,0x8
    214fa496471f:	c5 29 61 d2                                     	vpunpcklwd xmm10,xmm10,xmm2
    214fa4964723:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    214fa496472d:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa4964732:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa4964736:	c4 c1 48 5c f3                                  	vsubps xmm6,xmm6,xmm11
    214fa496473b:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    214fa4964745:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa496474a:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa496474f:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    214fa4964754:	4c 8b 15 7d c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc97d]        # 0x214fa49610d8
    214fa496475b:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa4964760:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa4964764:	c5 c8 58 f3                                     	vaddps xmm6,xmm6,xmm3
    214fa4964768:	4c 8b 15 80 c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc980]        # 0x214fa49610ef
    214fa496476f:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    214fa4964774:	c4 c1 48 54 e7                                  	vandps xmm4,xmm6,xmm15
    214fa4964779:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    214fa496477f:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa4964783:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa4964788:	4c 8b 15 46 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9c46]        # 0x214fa495e3d5
    214fa496478f:	c4 c1 48 54 32                                  	vandps xmm6,xmm6,XMMWORD PTR [r10]
    214fa4964794:	c4 c1 48 c2 f6 01                               	vcmpltps xmm6,xmm6,xmm14
    214fa496479a:	c5 49 df ff                                     	vpandn xmm15,xmm6,xmm7
    214fa496479e:	c5 d9 db f6                                     	vpand  xmm6,xmm4,xmm6
    214fa49647a2:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa49647a7:	c5 e9 fa e6                                     	vpsubd xmm4,xmm2,xmm6
    214fa49647ab:	c5 d9 6b f6                                     	vpackssdw xmm6,xmm4,xmm6
    214fa49647af:	c4 e3 71 0f e6 08                               	vpalignr xmm4,xmm1,xmm6,0x8
    214fa49647b5:	c5 c9 61 f4                                     	vpunpcklwd xmm6,xmm6,xmm4
    214fa49647b9:	c5 29 f5 d6                                     	vpmaddwd xmm10,xmm10,xmm6
    214fa49647bd:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    214fa49647c2:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    214fa49647c7:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    214fa49647cb:	4c 8b 15 1d c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc91d]        # 0x214fa49610ef
    214fa49647d2:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa49647d7:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    214fa49647dc:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa49647e2:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    214fa49647e7:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    214fa49647ec:	4c 8b 15 e2 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9be2]        # 0x214fa495e3d5
    214fa49647f3:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    214fa49647f8:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    214fa49647fe:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    214fa4964802:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    214fa4964806:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496480b:	c5 e9 fa f8                                     	vpsubd xmm7,xmm2,xmm0
    214fa496480f:	c4 62 29 40 cf                                  	vpmulld xmm9,xmm10,xmm7
    214fa4964814:	c4 c1 29 72 d0 18                               	vpsrld xmm10,xmm8,0x18
    214fa496481a:	c4 c1 21 72 d5 18                               	vpsrld xmm11,xmm13,0x18
    214fa4964820:	c4 41 29 6b d3                                  	vpackssdw xmm10,xmm10,xmm11
    214fa4964825:	c4 43 71 0f da 08                               	vpalignr xmm11,xmm1,xmm10,0x8
    214fa496482b:	c4 41 29 61 d3                                  	vpunpcklwd xmm10,xmm10,xmm11
    214fa4964830:	c5 29 f5 d6                                     	vpmaddwd xmm10,xmm10,xmm6
    214fa4964834:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    214fa4964839:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    214fa496483e:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    214fa4964848:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa496484d:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa4964852:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    214fa4964857:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    214fa496485d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4964862:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    214fa4964868:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    214fa496486d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4964872:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    214fa4964878:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa496487d:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    214fa4964882:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    214fa4964887:	4c 8b 15 b4 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe8b4]        # 0x214fa4963142
    214fa496488e:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa4964893:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa4964898:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    214fa496489d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49648a0:	c4 41 7a 7f 8c 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm9
    214fa49648aa:	c5 b1 72 d5 10                                  	vpsrld xmm9,xmm5,0x10
    214fa49648af:	4c 8b 15 a4 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a4]        # 0x214fa496305a
    214fa49648b6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa49648bb:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa49648c0:	c4 41 31 db ce                                  	vpand  xmm9,xmm9,xmm14
    214fa49648c5:	c4 c1 69 72 d4 10                               	vpsrld xmm2,xmm12,0x10
    214fa49648cb:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa49648d0:	c5 31 6b ca                                     	vpackssdw xmm9,xmm9,xmm2
    214fa49648d4:	c4 c3 71 0f d1 08                               	vpalignr xmm2,xmm1,xmm9,0x8
    214fa49648da:	c5 31 61 ca                                     	vpunpcklwd xmm9,xmm9,xmm2
    214fa49648de:	c5 31 f5 ce                                     	vpmaddwd xmm9,xmm9,xmm6
    214fa49648e2:	c4 62 31 40 cf                                  	vpmulld xmm9,xmm9,xmm7
    214fa49648e7:	c4 c1 69 72 d0 10                               	vpsrld xmm2,xmm8,0x10
    214fa49648ed:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa49648f2:	c4 c1 61 72 d5 10                               	vpsrld xmm3,xmm13,0x10
    214fa49648f8:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    214fa49648fd:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    214fa4964901:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    214fa4964907:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    214fa496490b:	c5 e9 f5 d6                                     	vpmaddwd xmm2,xmm2,xmm6
    214fa496490f:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    214fa4964914:	c5 31 fe ca                                     	vpaddd xmm9,xmm9,xmm2
    214fa4964918:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    214fa496491d:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    214fa4964923:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4964928:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    214fa496492e:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    214fa4964933:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4964938:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    214fa496493e:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa4964943:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    214fa4964948:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    214fa496494d:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    214fa4964952:	c4 41 7a 7f 8c 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm9
    214fa496495c:	c5 b1 72 d5 08                                  	vpsrld xmm9,xmm5,0x8
    214fa4964961:	c4 41 31 db ce                                  	vpand  xmm9,xmm9,xmm14
    214fa4964966:	c4 c1 69 72 d4 08                               	vpsrld xmm2,xmm12,0x8
    214fa496496c:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa4964971:	c5 31 6b ca                                     	vpackssdw xmm9,xmm9,xmm2
    214fa4964975:	c4 c3 71 0f d1 08                               	vpalignr xmm2,xmm1,xmm9,0x8
    214fa496497b:	c5 31 61 ca                                     	vpunpcklwd xmm9,xmm9,xmm2
    214fa496497f:	c5 31 f5 ce                                     	vpmaddwd xmm9,xmm9,xmm6
    214fa4964983:	c4 62 31 40 cf                                  	vpmulld xmm9,xmm9,xmm7
    214fa4964988:	c4 c1 69 72 d0 08                               	vpsrld xmm2,xmm8,0x8
    214fa496498e:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa4964993:	c4 c1 61 72 d5 08                               	vpsrld xmm3,xmm13,0x8
    214fa4964999:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    214fa496499e:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    214fa49649a2:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    214fa49649a8:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    214fa49649ac:	c5 e9 f5 d6                                     	vpmaddwd xmm2,xmm2,xmm6
    214fa49649b0:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    214fa49649b5:	c5 31 fe ca                                     	vpaddd xmm9,xmm9,xmm2
    214fa49649b9:	c4 41 31 fe ca                                  	vpaddd xmm9,xmm9,xmm10
    214fa49649be:	c4 c1 31 72 d1 10                               	vpsrld xmm9,xmm9,0x10
    214fa49649c4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49649c9:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    214fa49649cf:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    214fa49649d4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49649d9:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    214fa49649df:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa49649e4:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    214fa49649e9:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    214fa49649ee:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    214fa49649f3:	c4 41 7a 7f 8c 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm9
    214fa49649fd:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa4964a02:	c4 41 19 db ce                                  	vpand  xmm9,xmm12,xmm14
    214fa4964a07:	c4 c1 51 6b e9                                  	vpackssdw xmm5,xmm5,xmm9
    214fa4964a0c:	c4 63 71 0f cd 08                               	vpalignr xmm9,xmm1,xmm5,0x8
    214fa4964a12:	c4 c1 51 61 e9                                  	vpunpcklwd xmm5,xmm5,xmm9
    214fa4964a17:	c5 d1 f5 ee                                     	vpmaddwd xmm5,xmm5,xmm6
    214fa4964a1b:	c4 e2 51 40 ef                                  	vpmulld xmm5,xmm5,xmm7
    214fa4964a20:	c4 c1 39 db fe                                  	vpand  xmm7,xmm8,xmm14
    214fa4964a25:	c4 41 11 db c6                                  	vpand  xmm8,xmm13,xmm14
    214fa4964a2a:	c4 c1 41 6b f8                                  	vpackssdw xmm7,xmm7,xmm8
    214fa4964a2f:	c4 63 71 0f c7 08                               	vpalignr xmm8,xmm1,xmm7,0x8
    214fa4964a35:	c4 c1 41 61 f8                                  	vpunpcklwd xmm7,xmm7,xmm8
    214fa4964a3a:	c5 c1 f5 f6                                     	vpmaddwd xmm6,xmm7,xmm6
    214fa4964a3e:	c4 e2 49 40 c0                                  	vpmulld xmm0,xmm6,xmm0
    214fa4964a43:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    214fa4964a47:	c4 c1 79 fe c2                                  	vpaddd xmm0,xmm0,xmm10
    214fa4964a4c:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    214fa4964a51:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4964a56:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa4964a5c:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa4964a61:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4964a66:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa4964a6b:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa4964a6f:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa4964a73:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa4964a78:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    214fa4964a7d:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4964a87:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    214fa4964a8e:	e9 32 05 00 00                                  	jmp    0x214fa4964fc5
    214fa4964a93:	45 85 db                                        	test   r11d,r11d
    214fa4964a96:	0f 85 23 00 00 00                               	jne    0x214fa4964abf
    214fa4964a9c:	8b bd 48 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1b8]
    214fa4964aa2:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    214fa4964aa6:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4964aaa:	45 8d 1c 9c                                     	lea    r11d,[r12+rbx*4]
    214fa4964aae:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa4964ab2:	47 8d 3c 8c                                     	lea    r15d,[r12+r9*4]
    214fa4964ab6:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4964aba:	e9 69 00 00 00                                  	jmp    0x214fa4964b28
    214fa4964abf:	f6 85 10 fb ff ff 01                            	test   BYTE PTR [rbp-0x4f0],0x1
    214fa4964ac6:	0f 85 08 00 00 00                               	jne    0x214fa4964ad4
    214fa4964acc:	45 33 ff                                        	xor    r15d,r15d
    214fa4964acf:	e9 08 00 00 00                                  	jmp    0x214fa4964adc
    214fa4964ad4:	43 8d 3c 8c                                     	lea    edi,[r12+r9*4]
    214fa4964ad8:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    214fa4964adc:	f6 85 10 fb ff ff 02                            	test   BYTE PTR [rbp-0x4f0],0x2
    214fa4964ae3:	0f 85 08 00 00 00                               	jne    0x214fa4964af1
    214fa4964ae9:	45 33 db                                        	xor    r11d,r11d
    214fa4964aec:	e9 08 00 00 00                                  	jmp    0x214fa4964af9
    214fa4964af1:	41 8d 3c 9c                                     	lea    edi,[r12+rbx*4]
    214fa4964af5:	45 8b 1c 38                                     	mov    r11d,DWORD PTR [r8+rdi*1]
    214fa4964af9:	f6 85 10 fb ff ff 04                            	test   BYTE PTR [rbp-0x4f0],0x4
    214fa4964b00:	0f 85 07 00 00 00                               	jne    0x214fa4964b0d
    214fa4964b06:	33 ff                                           	xor    edi,edi
    214fa4964b08:	e9 0e 00 00 00                                  	jmp    0x214fa4964b1b
    214fa4964b0d:	8b bd 48 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1b8]
    214fa4964b13:	41 8d 3c bc                                     	lea    edi,[r12+rdi*4]
    214fa4964b17:	41 8b 3c 38                                     	mov    edi,DWORD PTR [r8+rdi*1]
    214fa4964b1b:	83 bd 10 fb ff ff 08                            	cmp    DWORD PTR [rbp-0x4f0],0x8
    214fa4964b22:	0f 82 13 00 00 00                               	jb     0x214fa4964b3b
    214fa4964b28:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa4964b2e:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    214fa4964b32:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa4964b36:	e9 03 00 00 00                                  	jmp    0x214fa4964b3e
    214fa4964b3b:	45 33 e4                                        	xor    r12d,r12d
    214fa4964b3e:	c4 c1 79 6e c7                                  	vmovd  xmm0,r15d
    214fa4964b43:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4964b48:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    214fa4964b4e:	c4 e3 79 22 c7 02                               	vpinsrd xmm0,xmm0,edi,0x2
    214fa4964b54:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    214fa4964b5a:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    214fa4964b5f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4964b64:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa4964b6a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa4964b6f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4964b74:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa4964b79:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa4964b7d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa4964b81:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa4964b86:	4c 8b 15 b5 e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5b5]        # 0x214fa4963142
    214fa4964b8d:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa4964b92:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa4964b96:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    214fa4964b9a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4964b9d:	c4 c1 7a 7f ac 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm5
    214fa4964ba7:	4c 8b 15 ac e4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe4ac]        # 0x214fa496305a
    214fa4964bae:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa4964bb3:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa4964bb7:	c5 f9 db fd                                     	vpand  xmm7,xmm0,xmm5
    214fa4964bbb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4964bc0:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa4964bc6:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa4964bcb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4964bd0:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa4964bd5:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa4964bd9:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa4964bdd:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa4964be2:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    214fa4964be6:	c4 c1 7a 7f bc 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm7
    214fa4964bf0:	c5 c1 72 d0 10                                  	vpsrld xmm7,xmm0,0x10
    214fa4964bf5:	c5 c1 db fd                                     	vpand  xmm7,xmm7,xmm5
    214fa4964bf9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4964bfe:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa4964c04:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa4964c09:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4964c0e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa4964c13:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa4964c17:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa4964c1b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa4964c20:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    214fa4964c24:	c4 c1 7a 7f bc 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm7
    214fa4964c2e:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    214fa4964c33:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    214fa4964c37:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4964c3c:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa4964c42:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa4964c47:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4964c4c:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa4964c51:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa4964c55:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa4964c59:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa4964c5e:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa4964c62:	c4 c1 7a 7f 84 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm0
    214fa4964c6c:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    214fa4964c73:	e9 4d 03 00 00                                  	jmp    0x214fa4964fc5
    214fa4964c78:	8b 8d 60 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1a0]
    214fa4964c7e:	4d 8d 58 58                                     	lea    r11,[r8+0x58]
    214fa4964c82:	4d 8b e7                                        	mov    r12,r15
    214fa4964c85:	c4 82 79 18 24 23                               	vbroadcastss xmm4,DWORD PTR [r11+r12*1]
    214fa4964c8b:	c5 20 59 dc                                     	vmulps xmm11,xmm11,xmm4
    214fa4964c8f:	4c 8b f8                                        	mov    r15,rax
    214fa4964c92:	c4 82 79 18 24 3b                               	vbroadcastss xmm4,DWORD PTR [r11+r15*1]
    214fa4964c98:	c5 08 59 f4                                     	vmulps xmm14,xmm14,xmm4
    214fa4964c9c:	c4 41 20 58 de                                  	vaddps xmm11,xmm11,xmm14
    214fa4964ca1:	48 8b c2                                        	mov    rax,rdx
    214fa4964ca4:	c4 42 79 18 34 03                               	vbroadcastss xmm14,DWORD PTR [r11+rax*1]
    214fa4964caa:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    214fa4964caf:	c4 41 20 58 c9                                  	vaddps xmm9,xmm11,xmm9
    214fa4964cb4:	c4 41 10 59 c9                                  	vmulps xmm9,xmm13,xmm9
    214fa4964cb9:	83 f9 03                                        	cmp    ecx,0x3
    214fa4964cbc:	0f 84 76 02 00 00                               	je     0x214fa4964f38
    214fa4964cc2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa4964cc7:	44 8b 9d 18 fb ff ff                            	mov    r11d,DWORD PTR [rbp-0x4e8]
    214fa4964cce:	c4 01 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm11
    214fa4964cd4:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    214fa4964cda:	c4 41 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+rbx*1],xmm11
    214fa4964ce0:	c4 41 7a 7f 9c 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm11
    214fa4964cea:	c4 c1 7a 7f b4 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm6
    214fa4964cf4:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    214fa4964cfe:	c4 41 7a 7f 8c 38 70 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x270],xmm9
    214fa4964d08:	c4 41 7a 7f 9c 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm11
    214fa4964d12:	33 d2                                           	xor    edx,edx
    214fa4964d14:	e9 3b 00 00 00                                  	jmp    0x214fa4964d54
    214fa4964d19:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4964d22:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4964d2b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4964d34:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4964d3d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    214fa4964d40:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    214fa4964d47:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4964d4a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4964d4e:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    214fa4964d54:	48 89 95 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rdx
    214fa4964d5b:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa4964d60:	0f 85 bf 39 00 00                               	jne    0x214fa4968725
    214fa4964d66:	8b ca                                           	mov    ecx,edx
    214fa4964d68:	d3 ee                                           	shr    esi,cl
    214fa4964d6a:	40 f6 c6 01                                     	test   sil,0x1
    214fa4964d6e:	0f 84 2d 01 00 00                               	je     0x214fa4964ea1
    214fa4964d74:	43 8b 4c 08 10                                  	mov    ecx,DWORD PTR [r8+r9*1+0x10]
    214fa4964d79:	43 8b 74 08 0c                                  	mov    esi,DWORD PTR [r8+r9*1+0xc]
    214fa4964d7e:	48 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],rcx
    214fa4964d85:	43 8b 4c 08 08                                  	mov    ecx,DWORD PTR [r8+r9*1+0x8]
    214fa4964d8a:	43 8b 4c 08 04                                  	mov    ecx,DWORD PTR [r8+r9*1+0x4]
    214fa4964d8f:	48 89 8d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rcx
    214fa4964d96:	43 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+r9*1]
    214fa4964d9a:	83 f9 02                                        	cmp    ecx,0x2
    214fa4964d9d:	0f 84 9d 00 00 00                               	je     0x214fa4964e40
    214fa4964da3:	85 c9                                           	test   ecx,ecx
    214fa4964da5:	0f 85 47 00 00 00                               	jne    0x214fa4964df2
    214fa4964dab:	8d 8c 97 90 02 00 00                            	lea    ecx,[rdi+rdx*4+0x290]
    214fa4964db2:	c4 c1 7a 10 04 08                               	vmovss xmm0,DWORD PTR [r8+rcx*1]
    214fa4964db8:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    214fa4964dbe:	48 89 b5 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rsi
    214fa4964dc5:	8b f2                                           	mov    esi,edx
    214fa4964dc7:	c1 e6 04                                        	shl    esi,0x4
    214fa4964dca:	03 ce                                           	add    ecx,esi
    214fa4964dcc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4964dd0:	8b 85 48 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b8]
    214fa4964dd6:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
    214fa4964ddc:	8b d9                                           	mov    ebx,ecx
    214fa4964dde:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    214fa4964de4:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    214fa4964de8:	e8 33 34 ec ff                                  	call   0x214fa4828220
    214fa4964ded:	e9 af 00 00 00                                  	jmp    0x214fa4964ea1
    214fa4964df2:	4d 8b d9                                        	mov    r11,r9
    214fa4964df5:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    214fa4964dfa:	8d 8c 97 90 02 00 00                            	lea    ecx,[rdi+rdx*4+0x290]
    214fa4964e01:	c4 c1 7a 10 0c 08                               	vmovss xmm1,DWORD PTR [r8+rcx*1]
    214fa4964e07:	8d 8c 97 80 02 00 00                            	lea    ecx,[rdi+rdx*4+0x280]
    214fa4964e0e:	c4 c1 7a 10 14 08                               	vmovss xmm2,DWORD PTR [r8+rcx*1]
    214fa4964e14:	8d 8f 30 01 00 00                               	lea    ecx,[rdi+0x130]
    214fa4964e1a:	44 8b ca                                        	mov    r9d,edx
    214fa4964e1d:	41 c1 e1 04                                     	shl    r9d,0x4
    214fa4964e21:	44 03 c9                                        	add    r9d,ecx
    214fa4964e24:	8b d6                                           	mov    edx,esi
    214fa4964e26:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4964e2a:	8b 85 48 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b8]
    214fa4964e30:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    214fa4964e36:	e8 fd 33 ec ff                                  	call   0x214fa4828238
    214fa4964e3b:	e9 61 00 00 00                                  	jmp    0x214fa4964ea1
    214fa4964e40:	4d 8b d9                                        	mov    r11,r9
    214fa4964e43:	43 8b 5c 18 14                                  	mov    ebx,DWORD PTR [r8+r11*1+0x14]
    214fa4964e48:	47 8b 4c 18 18                                  	mov    r9d,DWORD PTR [r8+r11*1+0x18]
    214fa4964e4d:	44 8d a4 97 90 02 00 00                         	lea    r12d,[rdi+rdx*4+0x290]
    214fa4964e55:	c4 81 7a 10 0c 20                               	vmovss xmm1,DWORD PTR [r8+r12*1]
    214fa4964e5b:	44 8d a4 97 80 02 00 00                         	lea    r12d,[rdi+rdx*4+0x280]
    214fa4964e63:	c4 81 7a 10 14 20                               	vmovss xmm2,DWORD PTR [r8+r12*1]
    214fa4964e69:	44 8d a4 97 70 02 00 00                         	lea    r12d,[rdi+rdx*4+0x270]
    214fa4964e71:	c4 81 7a 10 1c 20                               	vmovss xmm3,DWORD PTR [r8+r12*1]
    214fa4964e77:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    214fa4964e7e:	44 8b fa                                        	mov    r15d,edx
    214fa4964e81:	41 c1 e7 04                                     	shl    r15d,0x4
    214fa4964e85:	45 03 e7                                        	add    r12d,r15d
    214fa4964e88:	41 54                                           	push   r12
    214fa4964e8a:	8b d6                                           	mov    edx,esi
    214fa4964e8c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4964e90:	8b 85 48 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1b8]
    214fa4964e96:	8b 8d b8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x248]
    214fa4964e9c:	e8 87 33 ec ff                                  	call   0x214fa4828228
    214fa4964ea1:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    214fa4964ea7:	83 c2 01                                        	add    edx,0x1
    214fa4964eaa:	83 fa 04                                        	cmp    edx,0x4
    214fa4964ead:	0f 85 8d fe ff ff                               	jne    0x214fa4964d40
    214fa4964eb3:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4964eb6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4964eba:	c4 c1 7a 6f 84 38 50 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x150]
    214fa4964ec4:	c4 c1 7a 6f ac 38 60 01 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x160]
    214fa4964ece:	c5 f9 6a f5                                     	vpunpckhdq xmm6,xmm0,xmm5
    214fa4964ed2:	c4 c1 7a 6f bc 38 30 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x130]
    214fa4964edc:	c4 41 7a 6f 84 38 40 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x140]
    214fa4964ee6:	c4 41 41 6a c8                                  	vpunpckhdq xmm9,xmm7,xmm8
    214fa4964eeb:	c5 31 6d d6                                     	vpunpckhqdq xmm10,xmm9,xmm6
    214fa4964eef:	c4 41 7a 7f 94 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm10
    214fa4964ef9:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    214fa4964efd:	c4 c1 7a 7f b4 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm6
    214fa4964f07:	c5 f9 62 c5                                     	vpunpckldq xmm0,xmm0,xmm5
    214fa4964f0b:	c4 c1 41 62 e8                                  	vpunpckldq xmm5,xmm7,xmm8
    214fa4964f10:	c5 d1 6d f0                                     	vpunpckhqdq xmm6,xmm5,xmm0
    214fa4964f14:	c4 c1 7a 7f b4 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm6
    214fa4964f1e:	c5 d1 6c c0                                     	vpunpcklqdq xmm0,xmm5,xmm0
    214fa4964f22:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4964f2c:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    214fa4964f33:	e9 8d 00 00 00                                  	jmp    0x214fa4964fc5
    214fa4964f38:	8d 8f 30 02 00 00                               	lea    ecx,[rdi+0x230]
    214fa4964f3e:	8b d6                                           	mov    edx,esi
    214fa4964f40:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4964f44:	8b 85 78 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x288]
    214fa4964f4a:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa4964f4e:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa4964f52:	c4 c1 79 28 d9                                  	vmovapd xmm3,xmm9
    214fa4964f57:	e8 cc 35 ec ff                                  	call   0x214fa4828528
    214fa4964f5c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4964f5f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4964f63:	4c 8b 9d 68 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x198]
    214fa4964f6a:	e9 56 00 00 00                                  	jmp    0x214fa4964fc5
    214fa4964f6f:	4d 8d 58 3c                                     	lea    r11,[r8+0x3c]
    214fa4964f73:	49 8b c9                                        	mov    rcx,r9
    214fa4964f76:	c4 42 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+rcx*1]
    214fa4964f7c:	c4 41 7a 7f 8c 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm9
    214fa4964f86:	4d 8d 58 40                                     	lea    r11,[r8+0x40]
    214fa4964f8a:	c4 42 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+rcx*1]
    214fa4964f90:	c4 41 7a 7f 8c 38 40 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x240],xmm9
    214fa4964f9a:	4d 8d 58 44                                     	lea    r11,[r8+0x44]
    214fa4964f9e:	c4 42 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+rcx*1]
    214fa4964fa4:	c4 41 7a 7f 8c 38 50 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x250],xmm9
    214fa4964fae:	4d 8d 58 48                                     	lea    r11,[r8+0x48]
    214fa4964fb2:	c4 42 79 18 0c 0b                               	vbroadcastss xmm9,DWORD PTR [r11+rcx*1]
    214fa4964fb8:	c4 41 7a 7f 8c 38 60 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x260],xmm9
    214fa4964fc2:	4c 8b d9                                        	mov    r11,rcx
    214fa4964fc5:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    214fa4964fcf:	47 8b a4 18 34 01 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0x134]
    214fa4964fd7:	43 83 bc 18 34 01 00 00 02                      	cmp    DWORD PTR [r8+r11*1+0x134],0x2
    214fa4964fe0:	0f 84 64 00 00 00                               	je     0x214fa496504a
    214fa4964fe6:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    214fa4964ff0:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa4964ff5:	c5 c8 59 ed                                     	vmulps xmm5,xmm6,xmm5
    214fa4964ff9:	c4 c1 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x250]
    214fa4965003:	c5 f8 10 bd 60 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0xa0]
    214fa496500b:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    214fa496500f:	c4 c1 7a 6f bc 38 40 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x240]
    214fa4965019:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa4965021:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    214fa4965025:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa496502d:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa4965031:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa4965035:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa496503d:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa4965045:	e9 32 00 00 00                                  	jmp    0x214fa496507c
    214fa496504a:	c4 c1 7a 6f ac 38 60 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x260]
    214fa4965054:	c4 c1 7a 6f b4 38 50 02 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x250]
    214fa496505e:	c4 c1 7a 6f bc 38 40 02 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+rdi*1+0x240]
    214fa4965068:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa496506c:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa4965074:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa496507c:	c4 41 49 6a d0                                  	vpunpckhdq xmm10,xmm6,xmm8
    214fa4965081:	c5 79 6a df                                     	vpunpckhdq xmm11,xmm0,xmm7
    214fa4965085:	c4 41 21 6d e2                                  	vpunpckhqdq xmm12,xmm11,xmm10
    214fa496508a:	c4 41 7a 7f a4 38 60 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x160],xmm12
    214fa4965094:	c4 41 21 6c d2                                  	vpunpcklqdq xmm10,xmm11,xmm10
    214fa4965099:	c4 41 7a 7f 94 38 50 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x150],xmm10
    214fa49650a3:	c4 c1 49 62 f0                                  	vpunpckldq xmm6,xmm6,xmm8
    214fa49650a8:	c5 f9 62 c7                                     	vpunpckldq xmm0,xmm0,xmm7
    214fa49650ac:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    214fa49650b0:	c4 c1 7a 7f bc 38 40 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x140],xmm7
    214fa49650ba:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    214fa49650be:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    214fa49650c8:	44 8b a5 d0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x230]
    214fa49650cf:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa49650d3:	48 8b 85 70 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x290]
    214fa49650da:	4c 8b bd 68 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x298]
    214fa49650e1:	48 8b 95 60 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2a0]
    214fa49650e8:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    214fa49650f0:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    214fa49650f3:	c4 41 79 28 e1                                  	vmovapd xmm12,xmm9
    214fa49650f8:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    214fa4965100:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    214fa4965106:	c5 f8 10 85 90 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x270]
    214fa496510e:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    214fa4965116:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa496511e:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    214fa4965126:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa496512e:	45 33 db                                        	xor    r11d,r11d
    214fa4965131:	41 bf 02 00 00 00                               	mov    r15d,0x2
    214fa4965137:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    214fa496513b:	44 8b 8d e0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x320]
    214fa4965142:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    214fa4965147:	e9 44 00 00 00                                  	jmp    0x214fa4965190
    214fa496514c:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4965155:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa496515e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4965167:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4965170:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4965179:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    214fa4965180:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    214fa4965186:	48 8b cb                                        	mov    rcx,rbx
    214fa4965189:	44 8b a5 d0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x230]
    214fa4965190:	4c 89 9d 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],r11
    214fa4965197:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa496519c:	0f 85 a7 35 00 00                               	jne    0x214fa4968749
    214fa49651a2:	48 8b d9                                        	mov    rbx,rcx
    214fa49651a5:	41 8b cb                                        	mov    ecx,r11d
    214fa49651a8:	d3 ee                                           	shr    esi,cl
    214fa49651aa:	40 f6 c6 01                                     	test   sil,0x1
    214fa49651ae:	0f 84 6e 12 00 00                               	je     0x214fa4966422
    214fa49651b4:	41 8b cb                                        	mov    ecx,r11d
    214fa49651b7:	c1 e1 04                                        	shl    ecx,0x4
    214fa49651ba:	42 8d 34 21                                     	lea    esi,[rcx+r12*1]
    214fa49651be:	44 8d a7 30 01 00 00                            	lea    r12d,[rdi+0x130]
    214fa49651c5:	44 03 e1                                        	add    r12d,ecx
    214fa49651c8:	42 8d 4c 9f 3c                                  	lea    ecx,[rdi+r11*4+0x3c]
    214fa49651cd:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa49651d1:	42 8d 54 9f 2c                                  	lea    edx,[rdi+r11*4+0x2c]
    214fa49651d6:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa49651da:	43 8d 04 99                                     	lea    eax,[r9+r11*4]
    214fa49651de:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa49651e2:	83 bd e0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x220],0x0
    214fa49651e9:	0f 85 ec 11 00 00                               	jne    0x214fa49663db
    214fa49651ef:	45 8b 5c 18 74                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x74]
    214fa49651f4:	41 83 7c 18 74 00                               	cmp    DWORD PTR [r8+rbx*1+0x74],0x0
    214fa49651fa:	0f 85 86 11 00 00                               	jne    0x214fa4966386
    214fa4965200:	c4 01 7a 6f 1c 20                               	vmovdqu xmm11,XMMWORD PTR [r8+r12*1]
    214fa4965206:	c5 20 c2 e5 01                                  	vcmpltps xmm12,xmm11,xmm5
    214fa496520b:	c4 41 18 55 db                                  	vandnps xmm11,xmm12,xmm11
    214fa4965210:	c4 41 30 c2 e3 01                               	vcmpltps xmm12,xmm9,xmm11
    214fa4965216:	c4 41 19 df fb                                  	vpandn xmm15,xmm12,xmm11
    214fa496521b:	c4 41 29 db dc                                  	vpand  xmm11,xmm10,xmm12
    214fa4965220:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa4965225:	4c 8b 15 95 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe95]        # 0x214fa49610c1
    214fa496522c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4965231:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa4965236:	c4 41 20 59 dc                                  	vmulps xmm11,xmm11,xmm12
    214fa496523b:	4c 8b 15 96 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe96]        # 0x214fa49610d8
    214fa4965242:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4965247:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa496524c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    214fa4965251:	4c 8b 15 97 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe97]        # 0x214fa49610ef
    214fa4965258:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    214fa496525e:	c4 41 20 54 e7                                  	vandps xmm12,xmm11,xmm15
    214fa4965263:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    214fa4965269:	c4 41 7a 5b e4                                  	vcvttps2dq xmm12,xmm12
    214fa496526e:	c4 41 19 ef e7                                  	vpxor  xmm12,xmm12,xmm15
    214fa4965273:	4c 8b 15 98 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe98]        # 0x214fa4961112
    214fa496527a:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa496527f:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4965284:	4c 8b 15 4a 91 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff914a]        # 0x214fa495e3d5
    214fa496528b:	c4 41 20 54 1a                                  	vandps xmm11,xmm11,XMMWORD PTR [r10]
    214fa4965290:	4c 8b 15 9a be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9a]        # 0x214fa4961131
    214fa4965297:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa496529c:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa49652a1:	c4 41 20 c2 de 01                               	vcmpltps xmm11,xmm11,xmm14
    214fa49652a7:	c4 41 21 df fd                                  	vpandn xmm15,xmm11,xmm13
    214fa49652ac:	c4 41 19 db db                                  	vpand  xmm11,xmm12,xmm11
    214fa49652b1:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa49652b6:	c4 42 21 2b db                                  	vpackusdw xmm11,xmm11,xmm11
    214fa49652bb:	c4 41 21 67 db                                  	vpackuswb xmm11,xmm11,xmm11
    214fa49652c0:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa49652c5:	45 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+rbx*1]
    214fa49652c9:	44 0f af da                                     	imul   r11d,edx
    214fa49652cd:	44 03 d8                                        	add    r11d,eax
    214fa49652d0:	46 8d 24 9d 00 00 00 00                         	lea    r12d,[r11*4+0x0]
    214fa49652d8:	48 89 85 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rax
    214fa49652df:	41 8b 44 18 18                                  	mov    eax,DWORD PTR [r8+rbx*1+0x18]
    214fa49652e4:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa49652e8:	44 03 d8                                        	add    r11d,eax
    214fa49652eb:	83 f9 0f                                        	cmp    ecx,0xf
    214fa49652ee:	0f 84 a0 00 00 00                               	je     0x214fa4965394
    214fa49652f4:	8b c1                                           	mov    eax,ecx
    214fa49652f6:	83 e0 01                                        	and    eax,0x1
    214fa49652f9:	f7 d8                                           	neg    eax
    214fa49652fb:	c5 79 6e e0                                     	vmovd  xmm12,eax
    214fa49652ff:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa4965304:	8b c1                                           	mov    eax,ecx
    214fa4965306:	c1 e0 1e                                        	shl    eax,0x1e
    214fa4965309:	c1 f8 1f                                        	sar    eax,0x1f
    214fa496530c:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    214fa4965312:	8b c1                                           	mov    eax,ecx
    214fa4965314:	c1 e0 1d                                        	shl    eax,0x1d
    214fa4965317:	c1 f8 1f                                        	sar    eax,0x1f
    214fa496531a:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    214fa4965320:	8b c1                                           	mov    eax,ecx
    214fa4965322:	c1 e0 1c                                        	shl    eax,0x1c
    214fa4965325:	c1 f8 1f                                        	sar    eax,0x1f
    214fa4965328:	c4 63 19 22 e0 03                               	vpinsrd xmm12,xmm12,eax,0x3
    214fa496532e:	41 8b 44 18 68                                  	mov    eax,DWORD PTR [r8+rbx*1+0x68]
    214fa4965333:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    214fa4965339:	0f 84 3b 00 00 00                               	je     0x214fa496537a
    214fa496533f:	41 8b 44 18 70                                  	mov    eax,DWORD PTR [r8+rbx*1+0x70]
    214fa4965344:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    214fa496534a:	0f 84 2a 00 00 00                               	je     0x214fa496537a
    214fa4965350:	41 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x1c]
    214fa4965355:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa4965359:	c4 41 7a 6f 2c 30                               	vmovdqu xmm13,XMMWORD PTR [r8+rsi*1]
    214fa496535f:	c4 01 7a 6f 34 20                               	vmovdqu xmm14,XMMWORD PTR [r8+r12*1]
    214fa4965365:	c4 41 19 df fe                                  	vpandn xmm15,xmm12,xmm14
    214fa496536a:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    214fa496536f:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    214fa4965374:	c4 01 7a 7f 2c 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm13
    214fa496537a:	c4 01 7a 6f 2c 18                               	vmovdqu xmm13,XMMWORD PTR [r8+r11*1]
    214fa4965380:	c4 41 19 df fd                                  	vpandn xmm15,xmm12,xmm13
    214fa4965385:	c4 41 21 db dc                                  	vpand  xmm11,xmm11,xmm12
    214fa496538a:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa496538f:	e9 37 00 00 00                                  	jmp    0x214fa49653cb
    214fa4965394:	41 8b 44 18 68                                  	mov    eax,DWORD PTR [r8+rbx*1+0x68]
    214fa4965399:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    214fa496539f:	0f 84 26 00 00 00                               	je     0x214fa49653cb
    214fa49653a5:	41 8b 44 18 70                                  	mov    eax,DWORD PTR [r8+rbx*1+0x70]
    214fa49653aa:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    214fa49653b0:	0f 84 15 00 00 00                               	je     0x214fa49653cb
    214fa49653b6:	41 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x1c]
    214fa49653bb:	46 8d 24 a0                                     	lea    r12d,[rax+r12*4]
    214fa49653bf:	c4 41 7a 6f 24 30                               	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1]
    214fa49653c5:	c4 01 7a 7f 24 20                               	vmovdqu XMMWORD PTR [r8+r12*1],xmm12
    214fa49653cb:	c4 01 7a 7f 1c 18                               	vmovdqu XMMWORD PTR [r8+r11*1],xmm11
    214fa49653d1:	45 8b 5c 18 68                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x68]
    214fa49653d6:	41 83 7c 18 68 00                               	cmp    DWORD PTR [r8+rbx*1+0x68],0x0
    214fa49653dc:	0f 84 40 10 00 00                               	je     0x214fa4966422
    214fa49653e2:	45 8b 5c 18 70                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x70]
    214fa49653e7:	41 83 7c 18 70 00                               	cmp    DWORD PTR [r8+rbx*1+0x70],0x0
    214fa49653ed:	0f 84 2f 10 00 00                               	je     0x214fa4966422
    214fa49653f3:	45 8b 5c 18 14                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x14]
    214fa49653f8:	41 83 7c 18 14 04                               	cmp    DWORD PTR [r8+rbx*1+0x14],0x4
    214fa49653fe:	0f 85 1e 10 00 00                               	jne    0x214fa4966422
    214fa4965404:	45 8b 5c 18 18                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x18]
    214fa4965409:	45 85 db                                        	test   r11d,r11d
    214fa496540c:	0f 84 10 10 00 00                               	je     0x214fa4966422
    214fa4965412:	45 8d 63 c8                                     	lea    r12d,[r11-0x38]
    214fa4965416:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    214fa496541a:	43 83 3c 20 00                                  	cmp    DWORD PTR [r8+r12*1],0x0
    214fa496541f:	0f 84 fd 0f 00 00                               	je     0x214fa4966422
    214fa4965425:	45 8d 63 c0                                     	lea    r12d,[r11-0x40]
    214fa4965429:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa496542d:	41 83 eb 3c                                     	sub    r11d,0x3c
    214fa4965431:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa4965435:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa496543b:	c1 e8 02                                        	shr    eax,0x2
    214fa496543e:	41 0f af c3                                     	imul   eax,r11d
    214fa4965442:	c1 e0 04                                        	shl    eax,0x4
    214fa4965445:	46 8d 1c 20                                     	lea    r11d,[rax+r12*1]
    214fa4965449:	44 8d 24 95 00 00 00 00                         	lea    r12d,[rdx*4+0x0]
    214fa4965451:	41 8b c4                                        	mov    eax,r12d
    214fa4965454:	83 e0 f0                                        	and    eax,0xfffffff0
    214fa4965457:	44 03 d8                                        	add    r11d,eax
    214fa496545a:	41 8b 44 18 6c                                  	mov    eax,DWORD PTR [r8+rbx*1+0x6c]
    214fa496545f:	2d 01 02 00 00                                  	sub    eax,0x201
    214fa4965464:	48 89 95 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rdx
    214fa496546b:	33 d2                                           	xor    edx,edx
    214fa496546d:	85 c0                                           	test   eax,eax
    214fa496546f:	0f 94 c2                                        	sete   dl
    214fa4965472:	83 f8 02                                        	cmp    eax,0x2
    214fa4965475:	0f 94 c0                                        	sete   al
    214fa4965478:	0f b6 c0                                        	movzx  eax,al
    214fa496547b:	0b c2                                           	or     eax,edx
    214fa496547d:	0f 85 0d 00 00 00                               	jne    0x214fa4965490
    214fa4965483:	4b c7 04 18 00 00 00 00                         	mov    QWORD PTR [r8+r11*1],0x0
    214fa496548b:	e9 92 0f 00 00                                  	jmp    0x214fa4966422
    214fa4965490:	83 e1 0f                                        	and    ecx,0xf
    214fa4965493:	41 83 e4 0c                                     	and    r12d,0xc
    214fa4965497:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa496549d:	83 e0 03                                        	and    eax,0x3
    214fa49654a0:	41 0b c4                                        	or     eax,r12d
    214fa49654a3:	44 8d 24 85 00 00 00 00                         	lea    r12d,[rax*4+0x0]
    214fa49654ab:	41 83 e4 3f                                     	and    r12d,0x3f
    214fa49654af:	4c 8b d1                                        	mov    r10,rcx
    214fa49654b2:	41 8b cc                                        	mov    ecx,r12d
    214fa49654b5:	4d 8b e2                                        	mov    r12,r10
    214fa49654b8:	49 d3 e4                                        	shl    r12,cl
    214fa49654bb:	4b 8b 04 18                                     	mov    rax,QWORD PTR [r8+r11*1]
    214fa49654bf:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa49654c3:	0f 84 52 07 00 00                               	je     0x214fa4965c1b
    214fa49654c9:	49 0b c4                                        	or     rax,r12
    214fa49654cc:	4b 89 04 18                                     	mov    QWORD PTR [r8+r11*1],rax
    214fa49654d0:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa49654d4:	0f 85 48 0f 00 00                               	jne    0x214fa4966422
    214fa49654da:	45 8b 64 18 1c                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x1c]
    214fa49654df:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa49654e5:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa49654ea:	41 8b 14 18                                     	mov    edx,DWORD PTR [r8+rbx*1]
    214fa49654ee:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    214fa49654f4:	83 c9 03                                        	or     ecx,0x3
    214fa49654f7:	0f af ca                                        	imul   ecx,edx
    214fa49654fa:	03 c8                                           	add    ecx,eax
    214fa49654fc:	c1 e1 04                                        	shl    ecx,0x4
    214fa49654ff:	41 03 cc                                        	add    ecx,r12d
    214fa4965502:	c4 41 7a 6f 5c 08 30                            	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0x30]
    214fa4965509:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa496550f:	c4 41 7a 6f 6c 08 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rcx*1+0x20]
    214fa4965516:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa496551c:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    214fa4965521:	c4 41 7a 6f 74 08 10                            	vmovdqu xmm14,XMMWORD PTR [r8+rcx*1+0x10]
    214fa4965528:	c4 c1 08 c2 e6 00                               	vcmpeqps xmm4,xmm14,xmm14
    214fa496552e:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    214fa4965532:	c4 c1 7a 6f 24 08                               	vmovdqu xmm4,XMMWORD PTR [r8+rcx*1]
    214fa4965538:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa496553d:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    214fa4965541:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    214fa4965547:	81 e1 fc ff ff 0f                               	and    ecx,0xffffffc
    214fa496554d:	8b f1                                           	mov    esi,ecx
    214fa496554f:	83 ce 02                                        	or     esi,0x2
    214fa4965552:	0f af f2                                        	imul   esi,edx
    214fa4965555:	03 f0                                           	add    esi,eax
    214fa4965557:	c1 e6 04                                        	shl    esi,0x4
    214fa496555a:	41 03 f4                                        	add    esi,r12d
    214fa496555d:	c4 41 7a 6f 64 30 30                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x30]
    214fa4965564:	c4 c1 18 c2 ec 00                               	vcmpeqps xmm5,xmm12,xmm12
    214fa496556a:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    214fa496556e:	c4 c1 7a 6f 6c 30 20                            	vmovdqu xmm5,XMMWORD PTR [r8+rsi*1+0x20]
    214fa4965575:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa496557a:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa496557e:	c4 c1 7a 6f 74 30 10                            	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1+0x10]
    214fa4965585:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa496558a:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa496558e:	c4 c1 7a 6f 3c 30                               	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1]
    214fa4965594:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa4965599:	c4 c1 79 db c0                                  	vpand  xmm0,xmm0,xmm8
    214fa496559e:	8b f1                                           	mov    esi,ecx
    214fa49655a0:	83 ce 01                                        	or     esi,0x1
    214fa49655a3:	0f af f2                                        	imul   esi,edx
    214fa49655a6:	03 f0                                           	add    esi,eax
    214fa49655a8:	c1 e6 04                                        	shl    esi,0x4
    214fa49655ab:	41 03 f4                                        	add    esi,r12d
    214fa49655ae:	c4 41 7a 6f 44 30 30                            	vmovdqu xmm8,XMMWORD PTR [r8+rsi*1+0x30]
    214fa49655b5:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa49655bb:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    214fa49655c0:	c4 41 7a 6f 4c 30 20                            	vmovdqu xmm9,XMMWORD PTR [r8+rsi*1+0x20]
    214fa49655c7:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa49655cd:	c4 c1 79 db c2                                  	vpand  xmm0,xmm0,xmm10
    214fa49655d2:	c4 41 7a 6f 54 30 10                            	vmovdqu xmm10,XMMWORD PTR [r8+rsi*1+0x10]
    214fa49655d9:	c4 c1 28 c2 ca 00                               	vcmpeqps xmm1,xmm10,xmm10
    214fa49655df:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    214fa49655e3:	c4 c1 7a 6f 0c 30                               	vmovdqu xmm1,XMMWORD PTR [r8+rsi*1]
    214fa49655e9:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa49655ee:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    214fa49655f2:	0f af d1                                        	imul   edx,ecx
    214fa49655f5:	03 c2                                           	add    eax,edx
    214fa49655f7:	c1 e0 04                                        	shl    eax,0x4
    214fa49655fa:	44 03 e0                                        	add    r12d,eax
    214fa49655fd:	c4 81 7a 6f 54 20 30                            	vmovdqu xmm2,XMMWORD PTR [r8+r12*1+0x30]
    214fa4965604:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa4965609:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    214fa496560d:	c4 81 7a 6f 5c 20 20                            	vmovdqu xmm3,XMMWORD PTR [r8+r12*1+0x20]
    214fa4965614:	c5 78 11 5d 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm11
    214fa4965619:	c5 60 c2 db 00                                  	vcmpeqps xmm11,xmm3,xmm3
    214fa496561e:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    214fa4965623:	c4 01 7a 6f 5c 20 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r12*1+0x10]
    214fa496562a:	c5 78 11 ad 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm13
    214fa4965632:	c4 41 20 c2 eb 00                               	vcmpeqps xmm13,xmm11,xmm11
    214fa4965638:	c4 c1 79 db c5                                  	vpand  xmm0,xmm0,xmm13
    214fa496563d:	c4 01 7a 6f 2c 20                               	vmovdqu xmm13,XMMWORD PTR [r8+r12*1]
    214fa4965643:	c5 78 11 b5 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm14
    214fa496564b:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa4965651:	c4 c1 79 db c6                                  	vpand  xmm0,xmm0,xmm14
    214fa4965656:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa496565b:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa4965660:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    214fa4965664:	41 83 fc 0f                                     	cmp    r12d,0xf
    214fa4965668:	0f 84 26 00 00 00                               	je     0x214fa4965694
    214fa496566e:	4b c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [r8+r11*1+0x8],0x7f800000
    214fa4965677:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa496567f:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    214fa4965687:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa496568f:	e9 8e 0d 00 00                                  	jmp    0x214fa4966422
    214fa4965694:	4c 8b 15 72 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe72]        # 0x214fa496150d
    214fa496569b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49656a0:	4c 8b 15 75 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe75]        # 0x214fa496151c
    214fa49656a7:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa49656ad:	4c 8b 15 78 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe78]        # 0x214fa496152c
    214fa49656b4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa49656b9:	4c 8b 15 7b be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe7b]        # 0x214fa496153b
    214fa49656c0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa49656c6:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa49656ce:	4c 8b 15 7e be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe7e]        # 0x214fa4961553
    214fa49656d5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49656da:	4c 8b 15 81 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe81]        # 0x214fa4961562
    214fa49656e1:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa49656e7:	c5 78 11 b5 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm14
    214fa49656ef:	4c 8b 15 84 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe84]        # 0x214fa496157a
    214fa49656f6:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa49656fb:	4c 8b 15 87 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe87]        # 0x214fa4961589
    214fa4965702:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa4965708:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    214fa4965710:	4c 8b 15 8a be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe8a]        # 0x214fa49615a1
    214fa4965717:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa496571c:	4c 8b 15 8d be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe8d]        # 0x214fa49615b0
    214fa4965723:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4965729:	c5 78 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm14
    214fa4965731:	4c 8b 15 90 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe90]        # 0x214fa49615c8
    214fa4965738:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa496573d:	4c 8b 15 93 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe93]        # 0x214fa49615d7
    214fa4965744:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa496574a:	c5 f8 11 a5 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm4
    214fa4965752:	4c 8b 15 96 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe96]        # 0x214fa49615ef
    214fa4965759:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa496575e:	4c 8b 15 99 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe99]        # 0x214fa49615fe
    214fa4965765:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    214fa496576b:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    214fa4965773:	4c 8b 15 9c be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9c]        # 0x214fa4961616
    214fa496577a:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa496577f:	4c 8b 15 9f be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe9f]        # 0x214fa4961625
    214fa4965786:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa496578c:	c5 78 11 a5 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm12
    214fa4965794:	4c 8b 15 a2 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea2]        # 0x214fa496163d
    214fa496579b:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa49657a0:	4c 8b 15 a5 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea5]        # 0x214fa496164c
    214fa49657a7:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa49657ad:	c5 78 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm14
    214fa49657b5:	4c 8b 15 a8 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbea8]        # 0x214fa4961664
    214fa49657bc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa49657c1:	4c 8b 15 ab be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeab]        # 0x214fa4961673
    214fa49657c8:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa49657ce:	c5 f8 11 ad e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm5
    214fa49657d6:	4c 8b 15 ae be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeae]        # 0x214fa496168b
    214fa49657dd:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa49657e2:	4c 8b 15 b1 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb1]        # 0x214fa496169a
    214fa49657e9:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    214fa49657ef:	c5 f8 11 a5 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm4
    214fa49657f7:	4c 8b 15 b4 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb4]        # 0x214fa49616b2
    214fa49657fe:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa4965803:	4c 8b 15 b7 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeb7]        # 0x214fa49616c1
    214fa496580a:	c4 c3 d9 22 e2 01                               	vpinsrq xmm4,xmm4,r10,0x1
    214fa4965810:	c5 f8 11 b5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm6
    214fa4965818:	4c 8b 15 ba be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbeba]        # 0x214fa49616d9
    214fa496581f:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa4965824:	4c 8b 15 bd be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbebd]        # 0x214fa49616e8
    214fa496582b:	c4 c3 c9 22 f2 01                               	vpinsrq xmm6,xmm6,r10,0x1
    214fa4965831:	c5 f8 11 85 c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm0
    214fa4965839:	4c 8b 15 c0 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec0]        # 0x214fa4961700
    214fa4965840:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4965845:	4c 8b 15 c3 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec3]        # 0x214fa496170f
    214fa496584c:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4965852:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    214fa496585a:	4c 8b 15 c6 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec6]        # 0x214fa4961727
    214fa4965861:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4965866:	4c 8b 15 c9 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbec9]        # 0x214fa4961736
    214fa496586d:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4965873:	c5 78 11 a5 50 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4b0],xmm12
    214fa496587b:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    214fa4965880:	c4 c1 19 73 f4 3f                               	vpsllq xmm12,xmm12,0x3f
    214fa4965886:	c4 c1 19 73 d4 1f                               	vpsrlq xmm12,xmm12,0x1f
    214fa496588c:	4c 8b 15 cc be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbecc]        # 0x214fa496175f
    214fa4965893:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4965899:	c5 78 11 85 b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm8
    214fa49658a1:	4c 8b 15 cf be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbecf]        # 0x214fa4961777
    214fa49658a8:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa49658ad:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    214fa49658b2:	c5 78 11 b5 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm14
    214fa49658ba:	c4 41 38 c2 f5 01                               	vcmpltps xmm14,xmm8,xmm13
    214fa49658c0:	c4 41 10 c2 c0 01                               	vcmpltps xmm8,xmm13,xmm8
    214fa49658c6:	c4 41 09 eb c0                                  	vpor   xmm8,xmm14,xmm8
    214fa49658cb:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    214fa49658d0:	c4 41 19 db e0                                  	vpand  xmm12,xmm12,xmm8
    214fa49658d5:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa49658da:	4c 8b 15 96 be ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbe96]        # 0x214fa4961777
    214fa49658e1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa49658e6:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa49658eb:	c4 41 39 df fe                                  	vpandn xmm15,xmm8,xmm14
    214fa49658f0:	c4 41 11 db c0                                  	vpand  xmm8,xmm13,xmm8
    214fa49658f5:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa49658fa:	c4 41 38 c2 eb 01                               	vcmpltps xmm13,xmm8,xmm11
    214fa4965900:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    214fa4965905:	c4 c1 41 db fd                                  	vpand  xmm7,xmm7,xmm13
    214fa496590a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa496590f:	c4 41 11 df f8                                  	vpandn xmm15,xmm13,xmm8
    214fa4965914:	c4 41 21 db c5                                  	vpand  xmm8,xmm11,xmm13
    214fa4965919:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa496591e:	c5 38 c2 db 01                                  	vcmpltps xmm11,xmm8,xmm3
    214fa4965923:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    214fa4965927:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    214fa496592c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965931:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    214fa4965936:	c4 c1 61 db fb                                  	vpand  xmm7,xmm3,xmm11
    214fa496593b:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa4965940:	c5 40 c2 c2 01                                  	vcmpltps xmm8,xmm7,xmm2
    214fa4965945:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    214fa4965949:	c4 c1 49 db c0                                  	vpand  xmm0,xmm6,xmm8
    214fa496594e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965953:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    214fa4965957:	c4 c1 69 db f0                                  	vpand  xmm6,xmm2,xmm8
    214fa496595c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4965961:	c5 c8 c2 f9 01                                  	vcmpltps xmm7,xmm6,xmm1
    214fa4965966:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496596a:	c5 d9 db c7                                     	vpand  xmm0,xmm4,xmm7
    214fa496596e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965973:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa4965977:	c5 f1 db f7                                     	vpand  xmm6,xmm1,xmm7
    214fa496597b:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4965980:	c4 c1 48 c2 fa 01                               	vcmpltps xmm7,xmm6,xmm10
    214fa4965986:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496598a:	c5 d1 db c7                                     	vpand  xmm0,xmm5,xmm7
    214fa496598e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965993:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa4965997:	c5 a9 db ef                                     	vpand  xmm5,xmm10,xmm7
    214fa496599b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49659a0:	c4 c1 50 c2 f1 01                               	vcmpltps xmm6,xmm5,xmm9
    214fa49659a6:	c5 f8 10 bd 00 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x400]
    214fa49659ae:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa49659b2:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa49659b6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49659bb:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa49659bf:	c5 b1 db ee                                     	vpand  xmm5,xmm9,xmm6
    214fa49659c3:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49659c8:	c5 f8 10 b5 b0 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x350]
    214fa49659d0:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49659d5:	c5 78 10 85 50 fb ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x4b0]
    214fa49659dd:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49659e1:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49659e5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49659ea:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49659ee:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49659f2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49659f7:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    214fa49659ff:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4965a04:	c5 78 10 85 c0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x340]
    214fa4965a0c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4965a10:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4965a14:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965a19:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4965a1d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4965a21:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4965a26:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa4965a2e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4965a33:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa4965a3b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4965a3f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4965a43:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965a48:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4965a4c:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4965a50:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4965a55:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa4965a5d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4965a62:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa4965a6a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4965a6e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4965a72:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965a77:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4965a7b:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4965a7f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4965a84:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa4965a8c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4965a91:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa4965a99:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4965a9d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4965aa1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965aa6:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4965aaa:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4965aae:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4965ab3:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa4965abb:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4965ac0:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa4965ac8:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4965acc:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4965ad0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965ad5:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4965ad9:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4965add:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4965ae2:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa4965aea:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4965aef:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa4965af7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4965afb:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4965aff:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965b04:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4965b08:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4965b0c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4965b11:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa4965b19:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4965b1e:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa4965b26:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4965b2a:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4965b2e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965b33:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4965b37:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4965b3b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4965b40:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa4965b45:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4965b4a:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa4965b52:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4965b56:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4965b5a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965b5f:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    214fa4965b69:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4965b6d:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa4965b71:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4965b76:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4965b80:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa4965b84:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa4965b88:	45 33 e4                                        	xor    r12d,r12d
    214fa4965b8b:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa4965b8f:	41 0f 97 c4                                     	seta   r12b
    214fa4965b93:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    214fa4965b99:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    214fa4965ba1:	0b d0                                           	or     edx,eax
    214fa4965ba3:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    214fa4965ba9:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa4965bae:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4965bb2:	45 0f 47 e7                                     	cmova  r12d,r15d
    214fa4965bb6:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    214fa4965bbe:	0b d0                                           	or     edx,eax
    214fa4965bc0:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    214fa4965bc6:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa4965bcb:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa4965bd0:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa4965bd4:	44 0f 47 e2                                     	cmova  r12d,edx
    214fa4965bd8:	41 c1 e4 02                                     	shl    r12d,0x2
    214fa4965bdc:	41 0b c4                                        	or     eax,r12d
    214fa4965bdf:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    214fa4965be5:	c4 81 7a 11 44 18 08                            	vmovss DWORD PTR [r8+r11*1+0x8],xmm0
    214fa4965bec:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    214fa4965bf2:	44 0b e0                                        	or     r12d,eax
    214fa4965bf5:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa4965bf9:	47 89 64 18 0c                                  	mov    DWORD PTR [r8+r11*1+0xc],r12d
    214fa4965bfe:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa4965c06:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    214fa4965c0e:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa4965c16:	e9 07 08 00 00                                  	jmp    0x214fa4966422
    214fa4965c1b:	43 8b 44 18 0c                                  	mov    eax,DWORD PTR [r8+r11*1+0xc]
    214fa4965c20:	8b d0                                           	mov    edx,eax
    214fa4965c22:	83 e2 3f                                        	and    edx,0x3f
    214fa4965c25:	8b ca                                           	mov    ecx,edx
    214fa4965c27:	49 d3 ec                                        	shr    r12,cl
    214fa4965c2a:	41 f6 c4 01                                     	test   r12b,0x1
    214fa4965c2e:	0f 84 ee 07 00 00                               	je     0x214fa4966422
    214fa4965c34:	83 e0 03                                        	and    eax,0x3
    214fa4965c37:	44 8d 24 86                                     	lea    r12d,[rsi+rax*4]
    214fa4965c3b:	c4 81 7a 10 04 20                               	vmovss xmm0,DWORD PTR [r8+r12*1]
    214fa4965c41:	c4 81 7a 10 74 18 08                            	vmovss xmm6,DWORD PTR [r8+r11*1+0x8]
    214fa4965c48:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    214fa4965c4c:	0f 86 d0 07 00 00                               	jbe    0x214fa4966422
    214fa4965c52:	45 8b 64 18 1c                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x1c]
    214fa4965c57:	8b 85 60 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x1a0]
    214fa4965c5d:	25 fc ff ff 0f                                  	and    eax,0xffffffc
    214fa4965c62:	41 8b 14 18                                     	mov    edx,DWORD PTR [r8+rbx*1]
    214fa4965c66:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    214fa4965c6c:	83 c9 03                                        	or     ecx,0x3
    214fa4965c6f:	0f af ca                                        	imul   ecx,edx
    214fa4965c72:	03 c8                                           	add    ecx,eax
    214fa4965c74:	c1 e1 04                                        	shl    ecx,0x4
    214fa4965c77:	41 03 cc                                        	add    ecx,r12d
    214fa4965c7a:	c4 c1 7a 6f 44 08 30                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x30]
    214fa4965c81:	c5 f8 c2 f0 00                                  	vcmpeqps xmm6,xmm0,xmm0
    214fa4965c86:	c4 c1 7a 6f 7c 08 20                            	vmovdqu xmm7,XMMWORD PTR [r8+rcx*1+0x20]
    214fa4965c8d:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa4965c92:	c4 c1 49 db f0                                  	vpand  xmm6,xmm6,xmm8
    214fa4965c97:	c4 41 7a 6f 44 08 10                            	vmovdqu xmm8,XMMWORD PTR [r8+rcx*1+0x10]
    214fa4965c9e:	c4 41 38 c2 d8 00                               	vcmpeqps xmm11,xmm8,xmm8
    214fa4965ca4:	c4 c1 49 db f3                                  	vpand  xmm6,xmm6,xmm11
    214fa4965ca9:	c4 41 7a 6f 1c 08                               	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1]
    214fa4965caf:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa4965cb5:	c4 c1 49 db f4                                  	vpand  xmm6,xmm6,xmm12
    214fa4965cba:	8b 8d 48 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1b8]
    214fa4965cc0:	81 e1 fc ff ff 0f                               	and    ecx,0xffffffc
    214fa4965cc6:	8b f1                                           	mov    esi,ecx
    214fa4965cc8:	83 ce 02                                        	or     esi,0x2
    214fa4965ccb:	0f af f2                                        	imul   esi,edx
    214fa4965cce:	03 f0                                           	add    esi,eax
    214fa4965cd0:	c1 e6 04                                        	shl    esi,0x4
    214fa4965cd3:	41 03 f4                                        	add    esi,r12d
    214fa4965cd6:	c4 41 7a 6f 64 30 30                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x30]
    214fa4965cdd:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa4965ce3:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    214fa4965ce8:	c4 41 7a 6f 6c 30 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rsi*1+0x20]
    214fa4965cef:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa4965cf5:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    214fa4965cfa:	c4 41 7a 6f 74 30 10                            	vmovdqu xmm14,XMMWORD PTR [r8+rsi*1+0x10]
    214fa4965d01:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa4965d07:	c5 c9 db f1                                     	vpand  xmm6,xmm6,xmm1
    214fa4965d0b:	c4 c1 7a 6f 0c 30                               	vmovdqu xmm1,XMMWORD PTR [r8+rsi*1]
    214fa4965d11:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa4965d16:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    214fa4965d1a:	8b f1                                           	mov    esi,ecx
    214fa4965d1c:	83 ce 01                                        	or     esi,0x1
    214fa4965d1f:	0f af f2                                        	imul   esi,edx
    214fa4965d22:	03 f0                                           	add    esi,eax
    214fa4965d24:	c1 e6 04                                        	shl    esi,0x4
    214fa4965d27:	41 03 f4                                        	add    esi,r12d
    214fa4965d2a:	c4 c1 7a 6f 54 30 30                            	vmovdqu xmm2,XMMWORD PTR [r8+rsi*1+0x30]
    214fa4965d31:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa4965d36:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    214fa4965d3a:	c4 c1 7a 6f 5c 30 20                            	vmovdqu xmm3,XMMWORD PTR [r8+rsi*1+0x20]
    214fa4965d41:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa4965d46:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    214fa4965d4a:	c4 c1 7a 6f 64 30 10                            	vmovdqu xmm4,XMMWORD PTR [r8+rsi*1+0x10]
    214fa4965d51:	c5 d8 c2 ec 00                                  	vcmpeqps xmm5,xmm4,xmm4
    214fa4965d56:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    214fa4965d5a:	c4 c1 7a 6f 34 30                               	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1]
    214fa4965d60:	c5 48 c2 ce 00                                  	vcmpeqps xmm9,xmm6,xmm6
    214fa4965d65:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa4965d6a:	0f af d1                                        	imul   edx,ecx
    214fa4965d6d:	03 c2                                           	add    eax,edx
    214fa4965d6f:	c1 e0 04                                        	shl    eax,0x4
    214fa4965d72:	44 03 e0                                        	add    r12d,eax
    214fa4965d75:	c4 01 7a 6f 4c 20 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x30]
    214fa4965d7c:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa4965d82:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa4965d87:	c4 01 7a 6f 54 20 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r12*1+0x20]
    214fa4965d8e:	c5 f8 11 45 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm0
    214fa4965d93:	c4 c1 28 c2 c2 00                               	vcmpeqps xmm0,xmm10,xmm10
    214fa4965d99:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa4965d9d:	c4 81 7a 6f 6c 20 10                            	vmovdqu xmm5,XMMWORD PTR [r8+r12*1+0x10]
    214fa4965da4:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    214fa4965dac:	c5 d0 c2 fd 00                                  	vcmpeqps xmm7,xmm5,xmm5
    214fa4965db1:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa4965db5:	c4 81 7a 6f 3c 20                               	vmovdqu xmm7,XMMWORD PTR [r8+r12*1]
    214fa4965dbb:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    214fa4965dc3:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa4965dc8:	c4 c1 79 db c0                                  	vpand  xmm0,xmm0,xmm8
    214fa4965dcd:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa4965dd2:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa4965dd7:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    214fa4965ddb:	41 83 fc 0f                                     	cmp    r12d,0xf
    214fa4965ddf:	0f 84 26 00 00 00                               	je     0x214fa4965e0b
    214fa4965de5:	4b c7 44 18 08 00 00 80 7f                      	mov    QWORD PTR [r8+r11*1+0x8],0x7f800000
    214fa4965dee:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa4965df6:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    214fa4965dfe:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa4965e06:	e9 17 06 00 00                                  	jmp    0x214fa4966422
    214fa4965e0b:	4c 8b 15 fb b6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb6fb]        # 0x214fa496150d
    214fa4965e12:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4965e17:	4c 8b 15 fe b6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb6fe]        # 0x214fa496151c
    214fa4965e1e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4965e24:	4c 8b 15 01 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb701]        # 0x214fa496152c
    214fa4965e2b:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4965e30:	4c 8b 15 04 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb704]        # 0x214fa496153b
    214fa4965e37:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4965e3d:	c5 f8 11 85 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm0
    214fa4965e45:	4c 8b 15 07 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb707]        # 0x214fa4961553
    214fa4965e4c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4965e51:	4c 8b 15 0a b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb70a]        # 0x214fa4961562
    214fa4965e58:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4965e5e:	c5 78 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm8
    214fa4965e66:	4c 8b 15 0d b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb70d]        # 0x214fa496157a
    214fa4965e6d:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4965e72:	4c 8b 15 10 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb710]        # 0x214fa4961589
    214fa4965e79:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4965e7f:	c5 f8 11 85 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm0
    214fa4965e87:	4c 8b 15 13 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb713]        # 0x214fa49615a1
    214fa4965e8e:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4965e93:	4c 8b 15 16 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb716]        # 0x214fa49615b0
    214fa4965e9a:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4965ea0:	c5 78 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm8
    214fa4965ea8:	4c 8b 15 19 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb719]        # 0x214fa49615c8
    214fa4965eaf:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4965eb4:	4c 8b 15 1c b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb71c]        # 0x214fa49615d7
    214fa4965ebb:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4965ec1:	c5 78 11 9d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm11
    214fa4965ec9:	4c 8b 15 1f b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb71f]        # 0x214fa49615ef
    214fa4965ed0:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa4965ed5:	4c 8b 15 22 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb722]        # 0x214fa49615fe
    214fa4965edc:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa4965ee2:	c5 f8 11 85 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm0
    214fa4965eea:	4c 8b 15 25 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb725]        # 0x214fa4961616
    214fa4965ef1:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4965ef6:	4c 8b 15 28 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb728]        # 0x214fa4961625
    214fa4965efd:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4965f03:	c5 78 11 a5 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm12
    214fa4965f0b:	4c 8b 15 2b b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb72b]        # 0x214fa496163d
    214fa4965f12:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4965f17:	4c 8b 15 2e b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb72e]        # 0x214fa496164c
    214fa4965f1e:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4965f24:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    214fa4965f2c:	4c 8b 15 31 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb731]        # 0x214fa4961664
    214fa4965f33:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4965f38:	4c 8b 15 34 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb734]        # 0x214fa4961673
    214fa4965f3f:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4965f45:	c5 78 11 ad e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm13
    214fa4965f4d:	4c 8b 15 37 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb737]        # 0x214fa496168b
    214fa4965f54:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4965f59:	4c 8b 15 3a b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb73a]        # 0x214fa496169a
    214fa4965f60:	c4 43 91 22 ea 01                               	vpinsrq xmm13,xmm13,r10,0x1
    214fa4965f66:	c5 78 11 9d a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm11
    214fa4965f6e:	4c 8b 15 3d b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb73d]        # 0x214fa49616b2
    214fa4965f75:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa4965f7a:	4c 8b 15 40 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb740]        # 0x214fa49616c1
    214fa4965f81:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa4965f87:	c5 78 11 b5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm14
    214fa4965f8f:	4c 8b 15 43 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb743]        # 0x214fa49616d9
    214fa4965f96:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa4965f9b:	4c 8b 15 46 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb746]        # 0x214fa49616e8
    214fa4965fa2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    214fa4965fa8:	c5 f8 11 85 c0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x340],xmm0
    214fa4965fb0:	4c 8b 15 49 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb749]        # 0x214fa4961700
    214fa4965fb7:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4965fbc:	4c 8b 15 4c b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb74c]        # 0x214fa496170f
    214fa4965fc3:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4965fc9:	c5 f8 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm1
    214fa4965fd1:	4c 8b 15 4f b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb74f]        # 0x214fa4961727
    214fa4965fd8:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    214fa4965fdd:	4c 8b 15 52 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb752]        # 0x214fa4961736
    214fa4965fe4:	c4 c3 f1 22 ca 01                               	vpinsrq xmm1,xmm1,r10,0x1
    214fa4965fea:	c5 78 11 a5 00 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x400],xmm12
    214fa4965ff2:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    214fa4965ff7:	c4 c1 19 73 f4 3f                               	vpsllq xmm12,xmm12,0x3f
    214fa4965ffd:	c4 c1 19 73 d4 1f                               	vpsrlq xmm12,xmm12,0x1f
    214fa4966003:	4c 8b 15 55 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb755]        # 0x214fa496175f
    214fa496600a:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4966010:	c5 f8 11 95 b0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x350],xmm2
    214fa4966018:	4c 8b 15 58 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb758]        # 0x214fa4961777
    214fa496601f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa4966024:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa4966028:	c5 78 11 85 50 fb ff ff                         	vmovups XMMWORD PTR [rbp-0x4b0],xmm8
    214fa4966030:	c5 68 c2 c7 01                                  	vcmpltps xmm8,xmm2,xmm7
    214fa4966035:	c5 c0 c2 d2 01                                  	vcmpltps xmm2,xmm7,xmm2
    214fa496603a:	c5 39 eb c2                                     	vpor   xmm8,xmm8,xmm2
    214fa496603e:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    214fa4966043:	c4 41 19 db e0                                  	vpand  xmm12,xmm12,xmm8
    214fa4966048:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa496604d:	4c 8b 15 23 b7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb723]        # 0x214fa4961777
    214fa4966054:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa4966059:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa496605d:	c5 39 df fa                                     	vpandn xmm15,xmm8,xmm2
    214fa4966061:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    214fa4966066:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa496606b:	c5 40 c2 c5 01                                  	vcmpltps xmm8,xmm7,xmm5
    214fa4966070:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    214fa4966075:	c4 41 71 db e0                                  	vpand  xmm12,xmm1,xmm8
    214fa496607a:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa496607f:	c5 39 df ff                                     	vpandn xmm15,xmm8,xmm7
    214fa4966083:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa4966088:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496608d:	c4 c1 50 c2 fa 01                               	vcmpltps xmm7,xmm5,xmm10
    214fa4966093:	c4 41 41 df fc                                  	vpandn xmm15,xmm7,xmm12
    214fa4966098:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa496609c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49660a1:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49660a5:	c5 a9 db ef                                     	vpand  xmm5,xmm10,xmm7
    214fa49660a9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49660ae:	c4 c1 50 c2 f9 01                               	vcmpltps xmm7,xmm5,xmm9
    214fa49660b4:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49660b8:	c5 89 db c7                                     	vpand  xmm0,xmm14,xmm7
    214fa49660bc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49660c1:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49660c5:	c5 b1 db ef                                     	vpand  xmm5,xmm9,xmm7
    214fa49660c9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49660ce:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49660d3:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49660d7:	c5 a1 db c7                                     	vpand  xmm0,xmm11,xmm7
    214fa49660db:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49660e0:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49660e4:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49660e8:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49660ed:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa49660f2:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa49660f6:	c5 91 db c6                                     	vpand  xmm0,xmm13,xmm6
    214fa49660fa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49660ff:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4966103:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa4966107:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496610c:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa4966111:	c5 f8 10 bd 50 fb ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x4b0]
    214fa4966119:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa496611d:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa4966121:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4966126:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa496612a:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa496612e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4966133:	c5 f8 10 b5 b0 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x350]
    214fa496613b:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4966140:	c5 78 10 85 00 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x400]
    214fa4966148:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496614c:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4966150:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4966155:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4966159:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa496615d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4966162:	c5 f8 10 b5 90 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x170]
    214fa496616a:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496616f:	c5 78 10 85 c0 fc ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x340]
    214fa4966177:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496617b:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496617f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4966184:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4966188:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa496618c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4966191:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa4966199:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496619e:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa49661a6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49661aa:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49661ae:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49661b3:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49661b7:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49661bb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49661c0:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa49661c8:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49661cd:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa49661d5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49661d9:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49661dd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49661e2:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49661e6:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49661ea:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49661ef:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa49661f7:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49661fc:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa4966204:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4966208:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496620c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4966211:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4966215:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4966219:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496621e:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa4966226:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496622b:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa4966233:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4966237:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496623b:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4966240:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4966244:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4966248:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496624d:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa4966255:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496625a:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa4966262:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4966266:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496626a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496626f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4966273:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4966277:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496627c:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa4966284:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4966289:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa4966291:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4966295:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4966299:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496629e:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49662a2:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49662a6:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49662ab:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa49662b0:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49662b5:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa49662bd:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49662c1:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49662c5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49662ca:	c4 c1 7a 7f 84 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm0
    214fa49662d4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49662d8:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa49662dc:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49662e1:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa49662eb:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa49662ef:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa49662f3:	45 33 e4                                        	xor    r12d,r12d
    214fa49662f6:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa49662fa:	41 0f 97 c4                                     	seta   r12b
    214fa49662fe:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    214fa4966304:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    214fa496630c:	0b d0                                           	or     edx,eax
    214fa496630e:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    214fa4966314:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa4966319:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa496631d:	45 0f 47 e7                                     	cmova  r12d,r15d
    214fa4966321:	42 8d 14 a5 00 00 00 00                         	lea    edx,[r12*4+0x0]
    214fa4966329:	0b d0                                           	or     edx,eax
    214fa496632b:	c4 c1 7a 10 2c 10                               	vmovss xmm5,DWORD PTR [r8+rdx*1]
    214fa4966331:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa4966336:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa496633b:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa496633f:	44 0f 47 e2                                     	cmova  r12d,edx
    214fa4966343:	41 c1 e4 02                                     	shl    r12d,0x2
    214fa4966347:	41 0b c4                                        	or     eax,r12d
    214fa496634a:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    214fa4966350:	c4 81 7a 11 44 18 08                            	vmovss DWORD PTR [r8+r11*1+0x8],xmm0
    214fa4966357:	8d 87 90 02 00 00                               	lea    eax,[rdi+0x290]
    214fa496635d:	44 0b e0                                        	or     r12d,eax
    214fa4966360:	47 8b 24 20                                     	mov    r12d,DWORD PTR [r8+r12*1]
    214fa4966364:	47 89 64 18 0c                                  	mov    DWORD PTR [r8+r11*1+0xc],r12d
    214fa4966369:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa4966371:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    214fa4966379:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa4966381:	e9 9c 00 00 00                                  	jmp    0x214fa4966422
    214fa4966386:	41 54                                           	push   r12
    214fa4966388:	4c 8b db                                        	mov    r11,rbx
    214fa496638b:	41 bc 03 00 00 00                               	mov    r12d,0x3
    214fa4966391:	44 8b ce                                        	mov    r9d,esi
    214fa4966394:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966398:	8b d9                                           	mov    ebx,ecx
    214fa496639a:	8b ca                                           	mov    ecx,edx
    214fa496639c:	8b d0                                           	mov    edx,eax
    214fa496639e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa49663a1:	e8 ca 1e ec ff                                  	call   0x214fa4828270
    214fa49663a6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49663a9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49663ad:	41 bf 02 00 00 00                               	mov    r15d,0x2
    214fa49663b3:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    214fa49663b7:	44 8b 8d e0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x320]
    214fa49663be:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa49663c6:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    214fa49663ce:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa49663d6:	e9 47 00 00 00                                  	jmp    0x214fa4966422
    214fa49663db:	41 54                                           	push   r12
    214fa49663dd:	44 8b ce                                        	mov    r9d,esi
    214fa49663e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49663e4:	8b d9                                           	mov    ebx,ecx
    214fa49663e6:	8b ca                                           	mov    ecx,edx
    214fa49663e8:	8b d0                                           	mov    edx,eax
    214fa49663ea:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa49663ed:	e8 66 1e ec ff                                  	call   0x214fa4828258
    214fa49663f2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49663f5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49663f9:	41 bf 02 00 00 00                               	mov    r15d,0x2
    214fa49663ff:	48 8b 5d b0                                     	mov    rbx,QWORD PTR [rbp-0x50]
    214fa4966403:	44 8b 8d e0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x320]
    214fa496640a:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa4966412:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    214fa496641a:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa4966422:	44 8b 9d 68 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x198]
    214fa4966429:	41 83 c3 01                                     	add    r11d,0x1
    214fa496642d:	41 83 fb 04                                     	cmp    r11d,0x4
    214fa4966431:	0f 85 49 ed ff ff                               	jne    0x214fa4965180
    214fa4966437:	41 c7 44 38 18 00 00 00 00                      	mov    DWORD PTR [r8+rdi*1+0x18],0x0
    214fa4966440:	48 c7 85 d8 fd ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x228],0x1
    214fa496644b:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa496644f:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    214fa4966457:	44 8b a5 70 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x390]
    214fa496645e:	48 8b 95 60 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3a0]
    214fa4966465:	48 8b 9d 50 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b0]
    214fa496646c:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    214fa4966474:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    214fa496647c:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa4966484:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    214fa496648c:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa4966493:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa496649b:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    214fa49664a3:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    214fa49664ab:	48 8b bd 48 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x3b8]
    214fa49664b2:	4c 8b 85 40 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x3c0]
    214fa49664b9:	4c 03 c7                                        	add    r8,rdi
    214fa49664bc:	4c 8b 9d 58 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x3a8]
    214fa49664c3:	49 03 db                                        	add    rbx,r11
    214fa49664c6:	4c 8b bd 68 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x398]
    214fa49664cd:	49 03 d7                                        	add    rdx,r15
    214fa49664d0:	41 83 c4 01                                     	add    r12d,0x1
    214fa49664d4:	8b 85 78 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x388]
    214fa49664da:	41 3b c4                                        	cmp    eax,r12d
    214fa49664dd:	0f 85 1d 9d ff ff                               	jne    0x214fa4960200
    214fa49664e3:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    214fa49664e9:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    214fa49664ec:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    214fa49664f3:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    214fa49664f8:	c5 fb 10 ad 30 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x2d0]
    214fa4966500:	c5 fb 10 65 b8                                  	vmovsd xmm4,QWORD PTR [rbp-0x48]
    214fa4966505:	c5 fb 10 b5 48 fb ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x4b8]
    214fa496650d:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    214fa4966515:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    214fa4966519:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    214fa496651d:	44 8b 8d a8 fb ff ff                            	mov    r9d,DWORD PTR [rbp-0x458]
    214fa4966524:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    214fa496652a:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    214fa496652f:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    214fa4966535:	c5 79 28 c4                                     	vmovapd xmm8,xmm4
    214fa4966539:	c5 ba 5c 85 88 fc ff ff                         	vsubss xmm0,xmm8,DWORD PTR [rbp-0x378]
    214fa4966541:	83 bd 90 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x370],0x0
    214fa4966548:	0f 85 0a 00 00 00                               	jne    0x214fa4966558
    214fa496654e:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    214fa4966553:	e9 10 00 00 00                                  	jmp    0x214fa4966568
    214fa4966558:	c5 ca 5c b5 98 fc ff ff                         	vsubss xmm6,xmm6,DWORD PTR [rbp-0x368]
    214fa4966560:	c5 d2 5c ad a0 fc ff ff                         	vsubss xmm5,xmm5,DWORD PTR [rbp-0x360]
    214fa4966568:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    214fa496656d:	c4 41 11 d4 e8                                  	vpaddq xmm13,xmm13,xmm8
    214fa4966572:	4c 8b 45 c0                                     	mov    r8,QWORD PTR [rbp-0x40]
    214fa4966576:	4c 8b e3                                        	mov    r12,rbx
    214fa4966579:	4b 8d 1c 20                                     	lea    rbx,[r8+r12*1]
    214fa496657d:	83 c7 01                                        	add    edi,0x1
    214fa4966580:	44 8b 65 28                                     	mov    r12d,DWORD PTR [rbp+0x28]
    214fa4966584:	44 3b e7                                        	cmp    r12d,edi
    214fa4966587:	0f 85 b3 95 ff ff                               	jne    0x214fa495fb40
    214fa496658d:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4966590:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4966594:	45 8b 5c 38 18                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x18]
    214fa4966599:	41 83 7c 38 18 00                               	cmp    DWORD PTR [r8+rdi*1+0x18],0x0
    214fa496659f:	0f 8e aa 1d 00 00                               	jle    0x214fa496834f
    214fa49665a5:	45 33 db                                        	xor    r11d,r11d
    214fa49665a8:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    214fa49665ac:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa49665b0:	e9 15 00 00 00                                  	jmp    0x214fa49665ca
    214fa49665b5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa49665be:	66 90                                           	xchg   ax,ax
    214fa49665c0:	49 8b d3                                        	mov    rdx,r11
    214fa49665c3:	45 8b dc                                        	mov    r11d,r12d
    214fa49665c6:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    214fa49665ca:	48 8b 85 70 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x290]
    214fa49665d1:	48 8b 9d 68 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x298]
    214fa49665d8:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    214fa49665df:	c5 fb 10 ad f8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x308]
    214fa49665e7:	8b b5 e8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x318]
    214fa49665ed:	44 8b a5 e0 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x320]
    214fa49665f4:	4c 89 5d d0                                     	mov    QWORD PTR [rbp-0x30],r11
    214fa49665f8:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa49665fd:	0f 85 94 21 00 00                               	jne    0x214fa4968797
    214fa4966603:	46 8d 4c 9f 2c                                  	lea    r9d,[rdi+r11*4+0x2c]
    214fa4966608:	43 8d 0c 9c                                     	lea    ecx,[r12+r11*4]
    214fa496660c:	46 8d 64 df 70                                  	lea    r12d,[rdi+r11*8+0x70]
    214fa4966611:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    214fa4966615:	4c 89 a5 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r12
    214fa496661c:	46 8d 64 df 50                                  	lea    r12d,[rdi+r11*8+0x50]
    214fa4966621:	4f 8b 24 20                                     	mov    r12,QWORD PTR [r8+r12*1]
    214fa4966625:	c4 81 7a 10 74 38 1c                            	vmovss xmm6,DWORD PTR [r8+r15*1+0x1c]
    214fa496662c:	c4 c1 7a 10 7c 00 1c                            	vmovss xmm7,DWORD PTR [r8+rax*1+0x1c]
    214fa4966633:	c4 41 7a 10 44 18 1c                            	vmovss xmm8,DWORD PTR [r8+rbx*1+0x1c]
    214fa496663a:	45 8b 9c 10 c8 3c 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x3cc8]
    214fa4966642:	41 83 bc 10 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x3cc8],0x0
    214fa496664b:	0f 85 0e 00 00 00                               	jne    0x214fa496665f
    214fa4966651:	8b d1                                           	mov    edx,ecx
    214fa4966653:	44 8b 9d 00 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x300]
    214fa496665a:	e9 53 00 00 00                                  	jmp    0x214fa49666b2
    214fa496665f:	45 8b 1c 08                                     	mov    r11d,DWORD PTR [r8+rcx*1]
    214fa4966663:	41 8b d3                                        	mov    edx,r11d
    214fa4966666:	c1 ea 03                                        	shr    edx,0x3
    214fa4966669:	83 e2 03                                        	and    edx,0x3
    214fa496666c:	43 8b 3c 08                                     	mov    edi,DWORD PTR [r8+r9*1]
    214fa4966670:	c1 e7 02                                        	shl    edi,0x2
    214fa4966673:	83 e7 7c                                        	and    edi,0x7c
    214fa4966676:	0b fa                                           	or     edi,edx
    214fa4966678:	03 fe                                           	add    edi,esi
    214fa496667a:	41 0f b6 3c 38                                  	movzx  edi,BYTE PTR [r8+rdi*1]
    214fa496667f:	41 83 e3 07                                     	and    r11d,0x7
    214fa4966683:	8b d1                                           	mov    edx,ecx
    214fa4966685:	41 8b cb                                        	mov    ecx,r11d
    214fa4966688:	d3 e7                                           	shl    edi,cl
    214fa496668a:	44 8b 9d 00 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x300]
    214fa4966691:	40 f6 c7 80                                     	test   dil,0x80
    214fa4966695:	0f 85 17 00 00 00                               	jne    0x214fa49666b2
    214fa496669b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa496669e:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa49666a2:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa49666a6:	44 8b bd d0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x230]
    214fa49666ad:	e9 89 1c 00 00                                  	jmp    0x214fa496833b
    214fa49666b2:	c4 41 82 2a cc                                  	vcvtsi2ss xmm9,xmm15,r12
    214fa49666b7:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    214fa49666bc:	c4 41 32 59 c0                                  	vmulss xmm8,xmm9,xmm8
    214fa49666c1:	c4 61 82 2a 95 78 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x188]
    214fa49666ca:	c4 41 52 59 d2                                  	vmulss xmm10,xmm5,xmm10
    214fa49666cf:	c5 aa 59 ff                                     	vmulss xmm7,xmm10,xmm7
    214fa49666d3:	c5 3a 58 df                                     	vaddss xmm11,xmm8,xmm7
    214fa49666d7:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    214fa49666dc:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    214fa49666e2:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    214fa49666e8:	c4 41 1a 5c c9                                  	vsubss xmm9,xmm12,xmm9
    214fa49666ed:	c4 41 32 5c ca                                  	vsubss xmm9,xmm9,xmm10
    214fa49666f2:	c5 b2 59 f6                                     	vmulss xmm6,xmm9,xmm6
    214fa49666f6:	c5 22 58 ce                                     	vaddss xmm9,xmm11,xmm6
    214fa49666fa:	c4 c1 78 2e c1                                  	vucomiss xmm0,xmm9
    214fa49666ff:	73 9a                                           	jae    0x214fa496669b
    214fa4966701:	c4 41 1a 5e c9                                  	vdivss xmm9,xmm12,xmm9
    214fa4966706:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    214fa496670b:	c4 42 79 18 d1                                  	vbroadcastss xmm10,xmm9
    214fa4966710:	c4 01 7a 6f 5c 38 20                            	vmovdqu xmm11,XMMWORD PTR [r8+r15*1+0x20]
    214fa4966717:	c4 62 79 18 ee                                  	vbroadcastss xmm13,xmm6
    214fa496671c:	c4 41 20 59 dd                                  	vmulps xmm11,xmm11,xmm13
    214fa4966721:	c4 41 7a 6f 6c 18 20                            	vmovdqu xmm13,XMMWORD PTR [r8+rbx*1+0x20]
    214fa4966728:	c4 42 79 18 f0                                  	vbroadcastss xmm14,xmm8
    214fa496672d:	c4 41 10 59 ee                                  	vmulps xmm13,xmm13,xmm14
    214fa4966732:	c4 62 79 18 f7                                  	vbroadcastss xmm14,xmm7
    214fa4966737:	c4 c1 7a 6f 4c 00 20                            	vmovdqu xmm1,XMMWORD PTR [r8+rax*1+0x20]
    214fa496673e:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    214fa4966742:	c4 41 10 58 ee                                  	vaddps xmm13,xmm13,xmm14
    214fa4966747:	c4 41 20 58 dd                                  	vaddps xmm11,xmm11,xmm13
    214fa496674c:	c4 41 28 59 d3                                  	vmulps xmm10,xmm10,xmm11
    214fa4966751:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4966754:	c4 41 7a 7f 94 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm10
    214fa496675e:	c4 01 7a 10 9c 38 98 00 00 00                   	vmovss xmm11,DWORD PTR [r8+r15*1+0x98]
    214fa4966768:	c4 41 7a 10 ac 18 98 00 00 00                   	vmovss xmm13,DWORD PTR [r8+rbx*1+0x98]
    214fa4966772:	c4 41 7a 10 b4 00 98 00 00 00                   	vmovss xmm14,DWORD PTR [r8+rax*1+0x98]
    214fa496677c:	c4 41 7a 7f 94 38 90 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x290],xmm10
    214fa4966786:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    214fa496678d:	43 8b 8c 20 34 01 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x134]
    214fa4966795:	44 8d 79 ff                                     	lea    r15d,[rcx-0x1]
    214fa4966799:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    214fa496679d:	4c 89 4d b8                                     	mov    QWORD PTR [rbp-0x48],r9
    214fa49667a1:	c5 fb 11 bd 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm7
    214fa49667a9:	c5 7b 11 85 58 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a8],xmm8
    214fa49667b1:	c5 fb 11 b5 48 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b8],xmm6
    214fa49667b9:	c5 7b 11 8d 78 fe ff ff                         	vmovsd QWORD PTR [rbp-0x188],xmm9
    214fa49667c1:	c5 7b 11 9d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm11
    214fa49667c9:	c5 7b 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm13
    214fa49667d1:	c5 7b 11 b5 68 fe ff ff                         	vmovsd QWORD PTR [rbp-0x198],xmm14
    214fa49667d9:	41 83 ff 01                                     	cmp    r15d,0x1
    214fa49667dd:	0f 86 25 07 00 00                               	jbe    0x214fa4966f08
    214fa49667e3:	47 8b bc 20 30 01 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x130]
    214fa49667eb:	43 83 bc 20 30 01 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x130],0x0
    214fa49667f4:	0f 84 ac 07 00 00                               	je     0x214fa4966fa6
    214fa49667fa:	44 8d bf 30 01 00 00                            	lea    r15d,[rdi+0x130]
    214fa4966801:	4c 89 a5 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],r12
    214fa4966808:	4c 89 bd 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],r15
    214fa496680f:	33 c9                                           	xor    ecx,ecx
    214fa4966811:	e9 46 00 00 00                                  	jmp    0x214fa496685c
    214fa4966816:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa496681f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4966828:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4966831:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa496683a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    214fa4966840:	44 8b 9d 00 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x300]
    214fa4966847:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa496684a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa496684e:	4c 8b a5 38 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1c8]
    214fa4966855:	44 8b bd 40 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c0]
    214fa496685c:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    214fa4966863:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    214fa4966869:	8b 85 08 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f8]
    214fa496686f:	48 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rcx
    214fa4966876:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa496687b:	0f 85 5d 1f 00 00                               	jne    0x214fa49687de
    214fa4966881:	8b d1                                           	mov    edx,ecx
    214fa4966883:	c1 e2 04                                        	shl    edx,0x4
    214fa4966886:	42 8d 34 3a                                     	lea    esi,[rdx+r15*1]
    214fa496688a:	4c 8b 15 ef 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9cef]        # 0x214fa4960580
    214fa4966891:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4966896:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa496689b:	c4 41 7a 7f 14 30                               	vmovdqu XMMWORD PTR [r8+rsi*1],xmm10
    214fa49668a1:	48 89 b5 28 fe ff ff                            	mov    QWORD PTR [rbp-0x1d8],rsi
    214fa49668a8:	8d b4 8f 80 02 00 00                            	lea    esi,[rdi+rcx*4+0x280]
    214fa49668af:	41 c7 04 30 00 00 00 00                         	mov    DWORD PTR [r8+rsi*1],0x0
    214fa49668b7:	6b f9 4c                                        	imul   edi,ecx,0x4c
    214fa49668ba:	41 03 f9                                        	add    edi,r9d
    214fa49668bd:	45 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+rdi*1]
    214fa49668c1:	41 83 3c 38 00                                  	cmp    DWORD PTR [r8+rdi*1],0x0
    214fa49668c6:	0f 8c cd 01 00 00                               	jl     0x214fa4966a99
    214fa49668cc:	45 8b 7c 38 04                                  	mov    r15d,DWORD PTR [r8+rdi*1+0x4]
    214fa49668d1:	45 85 ff                                        	test   r15d,r15d
    214fa49668d4:	0f 84 bf 01 00 00                               	je     0x214fa4966a99
    214fa49668da:	41 c7 04 30 01 00 00 00                         	mov    DWORD PTR [r8+rsi*1],0x1
    214fa49668e2:	43 8b b4 20 3c 01 00 00                         	mov    esi,DWORD PTR [r8+r12*1+0x13c]
    214fa49668ea:	d3 ee                                           	shr    esi,cl
    214fa49668ec:	40 f6 c6 01                                     	test   sil,0x1
    214fa49668f0:	0f 84 a3 01 00 00                               	je     0x214fa4966a99
    214fa49668f6:	41 8b 4c 38 38                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x38]
    214fa49668fb:	41 83 7c 38 38 00                               	cmp    DWORD PTR [r8+rdi*1+0x38],0x0
    214fa4966901:	0f 85 7f 01 00 00                               	jne    0x214fa4966a86
    214fa4966907:	41 8d 0c 13                                     	lea    ecx,[r11+rdx*1]
    214fa496690b:	c4 41 7a 10 54 08 08                            	vmovss xmm10,DWORD PTR [r8+rcx*1+0x8]
    214fa4966912:	c5 2a 59 95 48 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1b8]
    214fa496691a:	8d 34 10                                        	lea    esi,[rax+rdx*1]
    214fa496691d:	c4 c1 7a 10 4c 30 08                            	vmovss xmm1,DWORD PTR [r8+rsi*1+0x8]
    214fa4966924:	c5 f2 59 8d 58 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1a8]
    214fa496692c:	03 d3                                           	add    edx,ebx
    214fa496692e:	c4 c1 7a 10 54 10 08                            	vmovss xmm2,DWORD PTR [r8+rdx*1+0x8]
    214fa4966935:	c5 ea 59 95 70 fe ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0x190]
    214fa496693d:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    214fa4966941:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    214fa4966945:	c5 aa 59 9d 78 fe ff ff                         	vmulss xmm3,xmm10,DWORD PTR [rbp-0x188]
    214fa496694d:	c4 41 7a 10 54 08 04                            	vmovss xmm10,DWORD PTR [r8+rcx*1+0x4]
    214fa4966954:	c5 2a 59 95 48 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1b8]
    214fa496695c:	c4 c1 7a 10 4c 30 04                            	vmovss xmm1,DWORD PTR [r8+rsi*1+0x4]
    214fa4966963:	c5 f2 59 8d 58 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1a8]
    214fa496696b:	c4 c1 7a 10 54 10 04                            	vmovss xmm2,DWORD PTR [r8+rdx*1+0x4]
    214fa4966972:	c5 ea 59 95 70 fe ff ff                         	vmulss xmm2,xmm2,DWORD PTR [rbp-0x190]
    214fa496697a:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    214fa496697e:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    214fa4966982:	c5 aa 59 95 78 fe ff ff                         	vmulss xmm2,xmm10,DWORD PTR [rbp-0x188]
    214fa496698a:	c4 41 7a 10 14 08                               	vmovss xmm10,DWORD PTR [r8+rcx*1]
    214fa4966990:	c5 2a 59 95 48 fe ff ff                         	vmulss xmm10,xmm10,DWORD PTR [rbp-0x1b8]
    214fa4966998:	c4 c1 7a 10 0c 30                               	vmovss xmm1,DWORD PTR [r8+rsi*1]
    214fa496699e:	c5 f2 59 8d 58 fe ff ff                         	vmulss xmm1,xmm1,DWORD PTR [rbp-0x1a8]
    214fa49669a6:	c4 c1 7a 10 24 10                               	vmovss xmm4,DWORD PTR [r8+rdx*1]
    214fa49669ac:	c5 da 59 a5 70 fe ff ff                         	vmulss xmm4,xmm4,DWORD PTR [rbp-0x190]
    214fa49669b4:	c5 f2 58 cc                                     	vaddss xmm1,xmm1,xmm4
    214fa49669b8:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    214fa49669bc:	c5 aa 59 8d 78 fe ff ff                         	vmulss xmm1,xmm10,DWORD PTR [rbp-0x188]
    214fa49669c4:	41 8b 4c 38 10                                  	mov    ecx,DWORD PTR [r8+rdi*1+0x10]
    214fa49669c9:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    214fa49669ce:	41 8b 74 38 08                                  	mov    esi,DWORD PTR [r8+rdi*1+0x8]
    214fa49669d3:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    214fa49669d7:	83 fe 02                                        	cmp    esi,0x2
    214fa49669da:	0f 8c 14 00 00 00                               	jl     0x214fa49669f4
    214fa49669e0:	0f 84 44 00 00 00                               	je     0x214fa4966a2a
    214fa49669e6:	83 fe 03                                        	cmp    esi,0x3
    214fa49669e9:	0f 84 1c 00 00 00                               	je     0x214fa4966a0b
    214fa49669ef:	e9 5c 00 00 00                                  	jmp    0x214fa4966a50
    214fa49669f4:	83 fe 00                                        	cmp    esi,0x0
    214fa49669f7:	0f 84 72 00 00 00                               	je     0x214fa4966a6f
    214fa49669fd:	83 fe 01                                        	cmp    esi,0x1
    214fa4966a00:	0f 84 4a 00 00 00                               	je     0x214fa4966a50
    214fa4966a06:	e9 45 00 00 00                                  	jmp    0x214fa4966a50
    214fa4966a0b:	41 8b 7c 38 14                                  	mov    edi,DWORD PTR [r8+rdi*1+0x14]
    214fa4966a10:	44 8b 8d 28 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d8]
    214fa4966a17:	8b df                                           	mov    ebx,edi
    214fa4966a19:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966a1d:	41 8b c7                                        	mov    eax,r15d
    214fa4966a20:	e8 0b 18 ec ff                                  	call   0x214fa4828230
    214fa4966a25:	e9 6f 00 00 00                                  	jmp    0x214fa4966a99
    214fa4966a2a:	41 8b 74 38 14                                  	mov    esi,DWORD PTR [r8+rdi*1+0x14]
    214fa4966a2f:	41 8b 7c 38 18                                  	mov    edi,DWORD PTR [r8+rdi*1+0x18]
    214fa4966a34:	ff b5 28 fe ff ff                               	push   QWORD PTR [rbp-0x1d8]
    214fa4966a3a:	8b de                                           	mov    ebx,esi
    214fa4966a3c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966a40:	41 8b c7                                        	mov    eax,r15d
    214fa4966a43:	44 8b cf                                        	mov    r9d,edi
    214fa4966a46:	e8 dd 17 ec ff                                  	call   0x214fa4828228
    214fa4966a4b:	e9 49 00 00 00                                  	jmp    0x214fa4966a99
    214fa4966a50:	41 8b 7c 38 14                                  	mov    edi,DWORD PTR [r8+rdi*1+0x14]
    214fa4966a55:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966a59:	41 8b c7                                        	mov    eax,r15d
    214fa4966a5c:	44 8b 8d 28 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d8]
    214fa4966a63:	8b df                                           	mov    ebx,edi
    214fa4966a65:	e8 ce 17 ec ff                                  	call   0x214fa4828238
    214fa4966a6a:	e9 2a 00 00 00                                  	jmp    0x214fa4966a99
    214fa4966a6f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966a73:	41 8b c7                                        	mov    eax,r15d
    214fa4966a76:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    214fa4966a7c:	e8 9f 17 ec ff                                  	call   0x214fa4828220
    214fa4966a81:	e9 13 00 00 00                                  	jmp    0x214fa4966a99
    214fa4966a86:	c4 c1 7a 6f 44 38 3c                            	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x3c]
    214fa4966a8d:	8b bd 28 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1d8]
    214fa4966a93:	c4 c1 7a 7f 04 38                               	vmovdqu XMMWORD PTR [r8+rdi*1],xmm0
    214fa4966a99:	8b 8d 30 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1d0]
    214fa4966a9f:	83 c1 01                                        	add    ecx,0x1
    214fa4966aa2:	83 f9 04                                        	cmp    ecx,0x4
    214fa4966aa5:	0f 85 95 fd ff ff                               	jne    0x214fa4966840
    214fa4966aab:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4966aaf:	4c 8b 85 38 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1c8]
    214fa4966ab6:	46 8b 84 07 38 01 00 00                         	mov    r8d,DWORD PTR [rdi+r8*1+0x138]
    214fa4966abe:	45 85 c0                                        	test   r8d,r8d
    214fa4966ac1:	0f 85 c2 01 00 00                               	jne    0x214fa4966c89
    214fa4966ac7:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    214fa4966acb:	46 8b 9c 07 80 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x280]
    214fa4966ad3:	42 83 bc 07 80 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x280],0x0
    214fa4966adc:	0f 84 53 00 00 00                               	je     0x214fa4966b35
    214fa4966ae2:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    214fa4966ae9:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    214fa4966af0:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    214fa4966af7:	41 53                                           	push   r11
    214fa4966af9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966afd:	8b 85 38 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c8]
    214fa4966b03:	33 d2                                           	xor    edx,edx
    214fa4966b05:	44 8b 8d 40 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c0]
    214fa4966b0c:	e8 2f 17 ec ff                                  	call   0x214fa4828240
    214fa4966b11:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4966b14:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4966b18:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    214fa4966b22:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4966b2c:	4d 8b d0                                        	mov    r10,r8
    214fa4966b2f:	44 8b c7                                        	mov    r8d,edi
    214fa4966b32:	49 8b fa                                        	mov    rdi,r10
    214fa4966b35:	46 8b 9c 07 84 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x284]
    214fa4966b3d:	42 83 bc 07 84 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x284],0x0
    214fa4966b46:	0f 84 56 00 00 00                               	je     0x214fa4966ba2
    214fa4966b4c:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    214fa4966b53:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    214fa4966b5a:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    214fa4966b61:	41 53                                           	push   r11
    214fa4966b63:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966b67:	8b 85 40 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2c0]
    214fa4966b6d:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa4966b72:	44 8b 8d 40 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c0]
    214fa4966b79:	e8 c2 16 ec ff                                  	call   0x214fa4828240
    214fa4966b7e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4966b81:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4966b85:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    214fa4966b8f:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4966b99:	4d 8b d0                                        	mov    r10,r8
    214fa4966b9c:	44 8b c7                                        	mov    r8d,edi
    214fa4966b9f:	49 8b fa                                        	mov    rdi,r10
    214fa4966ba2:	46 8b 9c 07 88 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x288]
    214fa4966baa:	42 83 bc 07 88 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x288],0x0
    214fa4966bb3:	0f 84 56 00 00 00                               	je     0x214fa4966c0f
    214fa4966bb9:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    214fa4966bc0:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    214fa4966bc7:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    214fa4966bce:	41 53                                           	push   r11
    214fa4966bd0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966bd4:	8b 85 48 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2b8]
    214fa4966bda:	ba 02 00 00 00                                  	mov    edx,0x2
    214fa4966bdf:	44 8b 8d 40 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c0]
    214fa4966be6:	e8 55 16 ec ff                                  	call   0x214fa4828240
    214fa4966beb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4966bee:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4966bf2:	c4 c1 7a 6f 84 38 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x270]
    214fa4966bfc:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4966c06:	4d 8b d0                                        	mov    r10,r8
    214fa4966c09:	44 8b c7                                        	mov    r8d,edi
    214fa4966c0c:	49 8b fa                                        	mov    rdi,r10
    214fa4966c0f:	46 8b 9c 07 8c 02 00 00                         	mov    r11d,DWORD PTR [rdi+r8*1+0x28c]
    214fa4966c17:	42 83 bc 07 8c 02 00 00 00                      	cmp    DWORD PTR [rdi+r8*1+0x28c],0x0
    214fa4966c20:	0f 85 0e 00 00 00                               	jne    0x214fa4966c34
    214fa4966c26:	4c 8b d7                                        	mov    r10,rdi
    214fa4966c29:	41 8b f8                                        	mov    edi,r8d
    214fa4966c2c:	4d 8b c2                                        	mov    r8,r10
    214fa4966c2f:	e9 72 03 00 00                                  	jmp    0x214fa4966fa6
    214fa4966c34:	41 8d 88 90 02 00 00                            	lea    ecx,[r8+0x290]
    214fa4966c3b:	41 8d 98 30 02 00 00                            	lea    ebx,[r8+0x230]
    214fa4966c42:	45 8d 98 70 02 00 00                            	lea    r11d,[r8+0x270]
    214fa4966c49:	41 53                                           	push   r11
    214fa4966c4b:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa4966c50:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966c54:	8b 85 58 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2a8]
    214fa4966c5a:	44 8b 8d 40 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1c0]
    214fa4966c61:	e8 da 15 ec ff                                  	call   0x214fa4828240
    214fa4966c66:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4966c69:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    214fa4966c6d:	c4 c1 7a 6f 84 3b 70 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r11+rdi*1+0x270]
    214fa4966c77:	c4 c1 7a 7f 84 3b 30 02 00 00                   	vmovdqu XMMWORD PTR [r11+rdi*1+0x230],xmm0
    214fa4966c81:	4d 8b c3                                        	mov    r8,r11
    214fa4966c84:	e9 1d 03 00 00                                  	jmp    0x214fa4966fa6
    214fa4966c89:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa4966c8d:	c4 a1 7a 10 84 1f 38 01 00 00                   	vmovss xmm0,DWORD PTR [rdi+r11*1+0x138]
    214fa4966c97:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    214fa4966c9d:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    214fa4966ca2:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4966ca6:	c4 a1 7a 10 b4 1f 98 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x298]
    214fa4966cb0:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    214fa4966cb4:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    214fa4966cb8:	c4 a1 7a 10 b4 1f 30 01 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x130]
    214fa4966cc2:	c5 ca 58 f5                                     	vaddss xmm6,xmm6,xmm5
    214fa4966cc6:	c4 a1 7a 10 bc 1f 90 02 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x290]
    214fa4966cd0:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    214fa4966cd4:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    214fa4966cd8:	c4 a1 7a 10 bc 1f 34 01 00 00                   	vmovss xmm7,DWORD PTR [rdi+r11*1+0x134]
    214fa4966ce2:	c5 c2 58 fd                                     	vaddss xmm7,xmm7,xmm5
    214fa4966ce6:	c4 21 7a 10 84 1f 94 02 00 00                   	vmovss xmm8,DWORD PTR [rdi+r11*1+0x294]
    214fa4966cf0:	c5 ba 58 ed                                     	vaddss xmm5,xmm8,xmm5
    214fa4966cf4:	c5 c2 59 ed                                     	vmulss xmm5,xmm7,xmm5
    214fa4966cf8:	c5 ca 58 ed                                     	vaddss xmm5,xmm6,xmm5
    214fa4966cfc:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4966d00:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    214fa4966d06:	c4 c1 79 6e ea                                  	vmovd  xmm5,r10d
    214fa4966d0b:	c5 fa 59 c5                                     	vmulss xmm0,xmm0,xmm5
    214fa4966d0f:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    214fa4966d13:	c5 d1 72 f5 19                                  	vpslld xmm5,xmm5,0x19
    214fa4966d18:	c5 d1 72 d5 02                                  	vpsrld xmm5,xmm5,0x2
    214fa4966d1d:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa4966d21:	0f 87 09 00 00 00                               	ja     0x214fa4966d30
    214fa4966d27:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa4966d2b:	e9 04 00 00 00                                  	jmp    0x214fa4966d34
    214fa4966d30:	c5 f9 28 f5                                     	vmovapd xmm6,xmm5
    214fa4966d34:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4966d38:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa4966d3c:	0f 87 09 00 00 00                               	ja     0x214fa4966d4b
    214fa4966d42:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    214fa4966d46:	e9 04 00 00 00                                  	jmp    0x214fa4966d4f
    214fa4966d4b:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa4966d4f:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa4966d54:	41 83 f8 01                                     	cmp    r8d,0x1
    214fa4966d58:	0f 84 a0 00 00 00                               	je     0x214fa4966dfe
    214fa4966d5e:	4c 8b 65 b0                                     	mov    r12,QWORD PTR [rbp-0x50]
    214fa4966d62:	c4 a1 7a 10 b4 27 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdi+r12*1+0x3724]
    214fa4966d6c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4966d70:	0f 87 09 00 00 00                               	ja     0x214fa4966d7f
    214fa4966d76:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa4966d7a:	e9 04 00 00 00                                  	jmp    0x214fa4966d83
    214fa4966d7f:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa4966d83:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4966d87:	0f 87 0a 00 00 00                               	ja     0x214fa4966d97
    214fa4966d8d:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa4966d92:	e9 04 00 00 00                                  	jmp    0x214fa4966d9b
    214fa4966d97:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa4966d9b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    214fa4966d9f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4966da4:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    214fa4966da9:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa4966dad:	4c 8b 15 cc 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cc]        # 0x214fa4960580
    214fa4966db4:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa4966db9:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa4966dbe:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4966dc2:	c4 21 7a 6f 94 1f 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r11*1+0x150]
    214fa4966dcc:	41 83 f8 03                                     	cmp    r8d,0x3
    214fa4966dd0:	0f 85 04 00 00 00                               	jne    0x214fa4966dda
    214fa4966dd6:	c5 79 28 d0                                     	vmovapd xmm10,xmm0
    214fa4966dda:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    214fa4966ddf:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa4966de3:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4966de7:	c4 21 7a 6f 84 27 18 37 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r12*1+0x3718]
    214fa4966df1:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    214fa4966df6:	4d 8b c4                                        	mov    r8,r12
    214fa4966df9:	e9 cd 00 00 00                                  	jmp    0x214fa4966ecb
    214fa4966dfe:	c4 a1 7a 10 b4 1f 9c 02 00 00                   	vmovss xmm6,DWORD PTR [rdi+r11*1+0x29c]
    214fa4966e08:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4966e0c:	0f 87 09 00 00 00                               	ja     0x214fa4966e1b
    214fa4966e12:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa4966e16:	e9 04 00 00 00                                  	jmp    0x214fa4966e1f
    214fa4966e1b:	c5 79 28 c5                                     	vmovapd xmm8,xmm5
    214fa4966e1f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4966e23:	0f 87 0a 00 00 00                               	ja     0x214fa4966e33
    214fa4966e29:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa4966e2e:	e9 04 00 00 00                                  	jmp    0x214fa4966e37
    214fa4966e33:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa4966e37:	c4 21 7a 6f 84 1f 50 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [rdi+r11*1+0x150]
    214fa4966e41:	c4 41 79 70 c8 03                               	vpshufd xmm9,xmm8,0x3
    214fa4966e47:	c4 c1 4a 59 f1                                  	vmulss xmm6,xmm6,xmm9
    214fa4966e4c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4966e50:	0f 87 09 00 00 00                               	ja     0x214fa4966e5f
    214fa4966e56:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa4966e5a:	e9 04 00 00 00                                  	jmp    0x214fa4966e63
    214fa4966e5f:	c5 79 28 cd                                     	vmovapd xmm9,xmm5
    214fa4966e63:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4966e67:	0f 87 0a 00 00 00                               	ja     0x214fa4966e77
    214fa4966e6d:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa4966e72:	e9 04 00 00 00                                  	jmp    0x214fa4966e7b
    214fa4966e77:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    214fa4966e7b:	c4 21 7a 6f 8c 1f 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [rdi+r11*1+0x160]
    214fa4966e85:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4966e8a:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    214fa4966e8e:	c4 21 7a 6f 94 07 30 36 00 00                   	vmovdqu xmm10,XMMWORD PTR [rdi+r8*1+0x3630]
    214fa4966e98:	c4 c1 78 58 c2                                  	vaddps xmm0,xmm0,xmm10
    214fa4966e9d:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    214fa4966ea2:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    214fa4966ea6:	4c 8b 15 d3 96 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff96d3]        # 0x214fa4960580
    214fa4966ead:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa4966eb2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa4966eb7:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa4966ebb:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa4966ebf:	c5 a8 5f c0                                     	vmaxps xmm0,xmm10,xmm0
    214fa4966ec3:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa4966ec7:	c5 b0 58 c0                                     	vaddps xmm0,xmm9,xmm0
    214fa4966ecb:	c4 41 39 ef c0                                  	vpxor  xmm8,xmm8,xmm8
    214fa4966ed0:	c5 b8 5f c0                                     	vmaxps xmm0,xmm8,xmm0
    214fa4966ed4:	4c 8b 15 a5 96 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff96a5]        # 0x214fa4960580
    214fa4966edb:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4966ee0:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    214fa4966ee5:	c5 b8 5d c0                                     	vminps xmm0,xmm8,xmm0
    214fa4966ee9:	c4 a1 7a 7f 84 1f 30 02 00 00                   	vmovdqu XMMWORD PTR [rdi+r11*1+0x230],xmm0
    214fa4966ef3:	c4 a1 7a 11 b4 1f 3c 02 00 00                   	vmovss DWORD PTR [rdi+r11*1+0x23c],xmm6
    214fa4966efd:	4c 8b c7                                        	mov    r8,rdi
    214fa4966f00:	41 8b fb                                        	mov    edi,r11d
    214fa4966f03:	e9 9e 00 00 00                                  	jmp    0x214fa4966fa6
    214fa4966f08:	4c 8b a5 60 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x2a0]
    214fa4966f0f:	c4 01 7a 10 54 20 50                            	vmovss xmm10,DWORD PTR [r8+r12*1+0x50]
    214fa4966f16:	c5 2a 59 d6                                     	vmulss xmm10,xmm10,xmm6
    214fa4966f1a:	4c 8b fb                                        	mov    r15,rbx
    214fa4966f1d:	c4 81 7a 10 4c 38 50                            	vmovss xmm1,DWORD PTR [r8+r15*1+0x50]
    214fa4966f24:	c4 c1 72 59 c8                                  	vmulss xmm1,xmm1,xmm8
    214fa4966f29:	c4 c1 42 59 54 00 50                            	vmulss xmm2,xmm7,DWORD PTR [r8+rax*1+0x50]
    214fa4966f30:	c5 f2 58 ca                                     	vaddss xmm1,xmm1,xmm2
    214fa4966f34:	c5 2a 58 d1                                     	vaddss xmm10,xmm10,xmm1
    214fa4966f38:	c4 c1 32 59 ca                                  	vmulss xmm1,xmm9,xmm10
    214fa4966f3d:	c4 01 7a 10 54 20 54                            	vmovss xmm10,DWORD PTR [r8+r12*1+0x54]
    214fa4966f44:	c5 2a 59 d6                                     	vmulss xmm10,xmm10,xmm6
    214fa4966f48:	c4 81 7a 10 54 38 54                            	vmovss xmm2,DWORD PTR [r8+r15*1+0x54]
    214fa4966f4f:	c4 c1 6a 59 d0                                  	vmulss xmm2,xmm2,xmm8
    214fa4966f54:	c4 c1 42 59 5c 00 54                            	vmulss xmm3,xmm7,DWORD PTR [r8+rax*1+0x54]
    214fa4966f5b:	c5 ea 58 d3                                     	vaddss xmm2,xmm2,xmm3
    214fa4966f5f:	c5 2a 58 d2                                     	vaddss xmm10,xmm10,xmm2
    214fa4966f63:	c4 c1 32 59 d2                                  	vmulss xmm2,xmm9,xmm10
    214fa4966f68:	8d 9f 90 02 00 00                               	lea    ebx,[rdi+0x290]
    214fa4966f6e:	44 8d 87 30 01 00 00                            	lea    r8d,[rdi+0x130]
    214fa4966f75:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4966f79:	8b 85 78 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x288]
    214fa4966f7f:	8b d1                                           	mov    edx,ecx
    214fa4966f81:	8b cb                                           	mov    ecx,ebx
    214fa4966f83:	41 8b d8                                        	mov    ebx,r8d
    214fa4966f86:	e8 a5 15 ec ff                                  	call   0x214fa4828530
    214fa4966f8b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4966f8e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4966f92:	c4 c1 7a 6f 84 38 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x130]
    214fa4966f9c:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4966fa6:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4966faa:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    214fa4966fb2:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    214fa4966fbb:	0f 84 c2 01 00 00                               	je     0x214fa4967183
    214fa4966fc1:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    214fa4966fc9:	c5 fa 59 85 48 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1b8]
    214fa4966fd1:	c5 fb 10 ad 60 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1a0]
    214fa4966fd9:	c5 d2 59 ad 58 fe ff ff                         	vmulss xmm5,xmm5,DWORD PTR [rbp-0x1a8]
    214fa4966fe1:	c5 fb 10 b5 70 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x190]
    214fa4966fe9:	c5 ca 59 b5 68 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x198]
    214fa4966ff1:	c5 d2 58 ee                                     	vaddss xmm5,xmm5,xmm6
    214fa4966ff5:	c5 fa 58 c5                                     	vaddss xmm0,xmm0,xmm5
    214fa4966ff9:	c5 fb 10 ad 78 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x188]
    214fa4967001:	c5 d2 59 c0                                     	vmulss xmm0,xmm5,xmm0
    214fa4967005:	4c 8b 15 7b 86 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff867b]        # 0x214fa495f687
    214fa496700c:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    214fa4967011:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    214fa4967015:	c5 f8 2e f0                                     	vucomiss xmm6,xmm0
    214fa4967019:	0f 87 04 00 00 00                               	ja     0x214fa4967023
    214fa496701f:	c5 f9 28 e8                                     	vmovapd xmm5,xmm0
    214fa4967023:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    214fa496702b:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    214fa4967032:	0f 85 28 00 00 00                               	jne    0x214fa4967060
    214fa4967038:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    214fa4967042:	4c 8b 15 3e 86 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff863e]        # 0x214fa495f687
    214fa4967049:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa496704e:	c5 d2 59 c8                                     	vmulss xmm1,xmm5,xmm0
    214fa4967052:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4967056:	e8 5d 35 ec ff                                  	call   0x214fa482a5b8
    214fa496705b:	e9 89 00 00 00                                  	jmp    0x214fa49670e9
    214fa4967060:	41 83 fc 01                                     	cmp    r12d,0x1
    214fa4967064:	0f 84 5c 00 00 00                               	je     0x214fa49670c6
    214fa496706a:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    214fa4967074:	c4 81 7a 5c bc 18 f8 00 00 00                   	vsubss xmm7,xmm0,DWORD PTR [r8+r11*1+0xf8]
    214fa496707e:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    214fa4967082:	7a 06                                           	jp     0x214fa496708a
    214fa4967084:	0f 84 29 00 00 00                               	je     0x214fa49670b3
    214fa496708a:	c5 fa 5c c5                                     	vsubss xmm0,xmm0,xmm5
    214fa496708e:	c5 fa 5e cf                                     	vdivss xmm1,xmm0,xmm7
    214fa4967092:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    214fa4967096:	c5 f8 2e f1                                     	vucomiss xmm6,xmm1
    214fa496709a:	0f 86 49 00 00 00                               	jbe    0x214fa49670e9
    214fa49670a0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa49670a4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa49670a9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa49670ae:	e9 5b 00 00 00                                  	jmp    0x214fa496710e
    214fa49670b3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa49670b7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa49670bc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa49670c1:	e9 44 00 00 00                                  	jmp    0x214fa496710a
    214fa49670c6:	c4 81 52 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm5,DWORD PTR [r8+r11*1+0xf4]
    214fa49670d0:	4c 8b 15 b0 85 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff85b0]        # 0x214fa495f687
    214fa49670d7:	c4 c1 78 57 2a                                  	vxorps xmm5,xmm0,XMMWORD PTR [r10]
    214fa49670dc:	c5 fa 59 cd                                     	vmulss xmm1,xmm0,xmm5
    214fa49670e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49670e4:	e8 cf 34 ec ff                                  	call   0x214fa482a5b8
    214fa49670e9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa49670ed:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa49670f2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa49670f7:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    214fa49670fb:	0f 87 09 00 00 00                               	ja     0x214fa496710a
    214fa4967101:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    214fa4967105:	e9 04 00 00 00                                  	jmp    0x214fa496710e
    214fa496710a:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa496710e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4967111:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4967115:	c4 c1 4a 59 ac 38 30 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x230]
    214fa496711f:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa4967123:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4967127:	c4 81 7a 59 bc 18 00 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [r8+r11*1+0x100]
    214fa4967131:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    214fa4967135:	c4 c1 7a 11 ac 38 30 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x230],xmm5
    214fa496713f:	c4 c1 4a 59 ac 38 34 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x234]
    214fa4967149:	c4 81 7a 59 bc 18 04 01 00 00                   	vmulss xmm7,xmm0,DWORD PTR [r8+r11*1+0x104]
    214fa4967153:	c5 d2 58 ef                                     	vaddss xmm5,xmm5,xmm7
    214fa4967157:	c4 c1 7a 11 ac 38 34 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x234],xmm5
    214fa4967161:	c4 c1 4a 59 ac 38 38 02 00 00                   	vmulss xmm5,xmm6,DWORD PTR [r8+rdi*1+0x238]
    214fa496716b:	c4 81 7a 59 84 18 08 01 00 00                   	vmulss xmm0,xmm0,DWORD PTR [r8+r11*1+0x108]
    214fa4967175:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    214fa4967179:	c4 c1 7a 11 84 38 38 02 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x238],xmm0
    214fa4967183:	c4 c1 7a 6f 84 38 30 02 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x230]
    214fa496718d:	c4 c1 7a 7f 84 38 80 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x280],xmm0
    214fa4967197:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa496719b:	41 c1 e4 04                                     	shl    r12d,0x4
    214fa496719f:	44 8b bd d0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x230]
    214fa49671a6:	47 8d 0c 3c                                     	lea    r9d,[r12+r15*1]
    214fa49671aa:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa49671ae:	42 8d 44 a7 3c                                  	lea    eax,[rdi+r12*4+0x3c]
    214fa49671b3:	41 8b 1c 00                                     	mov    ebx,DWORD PTR [r8+rax*1]
    214fa49671b7:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
    214fa49671ba:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa49671be:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa49671c1:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa49671c5:	83 bd e0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x220],0x0
    214fa49671cc:	0f 85 3e 11 00 00                               	jne    0x214fa4968310
    214fa49671d2:	43 8b 4c 18 74                                  	mov    ecx,DWORD PTR [r8+r11*1+0x74]
    214fa49671d7:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    214fa49671dd:	0f 85 fd 10 00 00                               	jne    0x214fa49682e0
    214fa49671e3:	4c 8b 15 96 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9396]        # 0x214fa4960580
    214fa49671ea:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49671ef:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    214fa49671f3:	c4 c1 7a 6f ac 38 80 02 00 00                   	vmovdqu xmm5,XMMWORD PTR [r8+rdi*1+0x280]
    214fa49671fd:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    214fa4967201:	c5 d0 c2 f6 01                                  	vcmpltps xmm6,xmm5,xmm6
    214fa4967206:	c5 c8 55 ed                                     	vandnps xmm5,xmm6,xmm5
    214fa496720a:	4c 8b 15 6f 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff936f]        # 0x214fa4960580
    214fa4967211:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa4967216:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa496721a:	c5 c8 c2 f5 01                                  	vcmpltps xmm6,xmm6,xmm5
    214fa496721f:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4967223:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4967227:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496722c:	4c 8b 15 8e 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e8e]        # 0x214fa49610c1
    214fa4967233:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa4967238:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa496723c:	c5 f8 59 c5                                     	vmulps xmm0,xmm0,xmm5
    214fa4967240:	4c 8b 15 91 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e91]        # 0x214fa49610d8
    214fa4967247:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa496724c:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa4967250:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa4967254:	4c 8b 15 94 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e94]        # 0x214fa49610ef
    214fa496725b:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa4967260:	c4 c1 78 54 ef                                  	vandps xmm5,xmm0,xmm15
    214fa4967265:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa496726b:	c5 fa 5b ed                                     	vcvttps2dq xmm5,xmm5
    214fa496726f:	c4 c1 51 ef ef                                  	vpxor  xmm5,xmm5,xmm15
    214fa4967274:	4c 8b 15 97 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e97]        # 0x214fa4961112
    214fa496727b:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa4967280:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa4967284:	4c 8b 15 4a 71 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff714a]        # 0x214fa495e3d5
    214fa496728b:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    214fa4967290:	4c 8b 15 9a 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9e9a]        # 0x214fa4961131
    214fa4967297:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa496729c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa49672a0:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    214fa49672a5:	c5 79 df fe                                     	vpandn xmm15,xmm0,xmm6
    214fa49672a9:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa49672ad:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49672b2:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    214fa49672b7:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    214fa49672bb:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa49672c0:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    214fa49672c4:	0f af c8                                        	imul   ecx,eax
    214fa49672c7:	03 ca                                           	add    ecx,edx
    214fa49672c9:	8d 34 8d 00 00 00 00                            	lea    esi,[rcx*4+0x0]
    214fa49672d0:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    214fa49672d4:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    214fa49672d9:	c1 e1 04                                        	shl    ecx,0x4
    214fa49672dc:	03 d1                                           	add    edx,ecx
    214fa49672de:	83 fb 0f                                        	cmp    ebx,0xf
    214fa49672e1:	0f 84 9b 00 00 00                               	je     0x214fa4967382
    214fa49672e7:	8b cb                                           	mov    ecx,ebx
    214fa49672e9:	83 e1 01                                        	and    ecx,0x1
    214fa49672ec:	f7 d9                                           	neg    ecx
    214fa49672ee:	c5 f9 6e e9                                     	vmovd  xmm5,ecx
    214fa49672f2:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    214fa49672f7:	8b cb                                           	mov    ecx,ebx
    214fa49672f9:	c1 e1 1e                                        	shl    ecx,0x1e
    214fa49672fc:	c1 f9 1f                                        	sar    ecx,0x1f
    214fa49672ff:	c4 e3 51 22 e9 01                               	vpinsrd xmm5,xmm5,ecx,0x1
    214fa4967305:	8b cb                                           	mov    ecx,ebx
    214fa4967307:	c1 e1 1d                                        	shl    ecx,0x1d
    214fa496730a:	c1 f9 1f                                        	sar    ecx,0x1f
    214fa496730d:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    214fa4967313:	8b cb                                           	mov    ecx,ebx
    214fa4967315:	c1 e1 1c                                        	shl    ecx,0x1c
    214fa4967318:	c1 f9 1f                                        	sar    ecx,0x1f
    214fa496731b:	c4 e3 51 22 e9 03                               	vpinsrd xmm5,xmm5,ecx,0x3
    214fa4967321:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    214fa4967326:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    214fa496732c:	0f 84 38 00 00 00                               	je     0x214fa496736a
    214fa4967332:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    214fa4967337:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    214fa496733d:	0f 84 27 00 00 00                               	je     0x214fa496736a
    214fa4967343:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    214fa4967348:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    214fa496734b:	c4 81 7a 6f 34 08                               	vmovdqu xmm6,XMMWORD PTR [r8+r9*1]
    214fa4967351:	c4 c1 7a 6f 3c 08                               	vmovdqu xmm7,XMMWORD PTR [r8+rcx*1]
    214fa4967357:	c5 51 df ff                                     	vpandn xmm15,xmm5,xmm7
    214fa496735b:	c5 c9 db f5                                     	vpand  xmm6,xmm6,xmm5
    214fa496735f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4967364:	c4 c1 7a 7f 34 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm6
    214fa496736a:	c4 c1 7a 6f 34 10                               	vmovdqu xmm6,XMMWORD PTR [r8+rdx*1]
    214fa4967370:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    214fa4967374:	c5 f9 db c5                                     	vpand  xmm0,xmm0,xmm5
    214fa4967378:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496737d:	e9 36 00 00 00                                  	jmp    0x214fa49673b8
    214fa4967382:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    214fa4967387:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    214fa496738d:	0f 84 25 00 00 00                               	je     0x214fa49673b8
    214fa4967393:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    214fa4967398:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    214fa496739e:	0f 84 14 00 00 00                               	je     0x214fa49673b8
    214fa49673a4:	43 8b 4c 18 1c                                  	mov    ecx,DWORD PTR [r8+r11*1+0x1c]
    214fa49673a9:	8d 0c b1                                        	lea    ecx,[rcx+rsi*4]
    214fa49673ac:	c4 81 7a 6f 2c 08                               	vmovdqu xmm5,XMMWORD PTR [r8+r9*1]
    214fa49673b2:	c4 c1 7a 7f 2c 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm5
    214fa49673b8:	c4 c1 7a 7f 04 10                               	vmovdqu XMMWORD PTR [r8+rdx*1],xmm0
    214fa49673be:	43 8b 54 18 68                                  	mov    edx,DWORD PTR [r8+r11*1+0x68]
    214fa49673c3:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    214fa49673c9:	0f 84 6c 0f 00 00                               	je     0x214fa496833b
    214fa49673cf:	43 8b 54 18 70                                  	mov    edx,DWORD PTR [r8+r11*1+0x70]
    214fa49673d4:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    214fa49673da:	0f 84 5b 0f 00 00                               	je     0x214fa496833b
    214fa49673e0:	43 8b 54 18 14                                  	mov    edx,DWORD PTR [r8+r11*1+0x14]
    214fa49673e5:	43 83 7c 18 14 04                               	cmp    DWORD PTR [r8+r11*1+0x14],0x4
    214fa49673eb:	0f 85 4a 0f 00 00                               	jne    0x214fa496833b
    214fa49673f1:	43 8b 54 18 18                                  	mov    edx,DWORD PTR [r8+r11*1+0x18]
    214fa49673f6:	85 d2                                           	test   edx,edx
    214fa49673f8:	0f 84 3d 0f 00 00                               	je     0x214fa496833b
    214fa49673fe:	8d 4a c8                                        	lea    ecx,[rdx-0x38]
    214fa4967401:	41 8b 34 08                                     	mov    esi,DWORD PTR [r8+rcx*1]
    214fa4967405:	41 83 3c 08 00                                  	cmp    DWORD PTR [r8+rcx*1],0x0
    214fa496740a:	0f 84 2b 0f 00 00                               	je     0x214fa496833b
    214fa4967410:	8d 4a c0                                        	lea    ecx,[rdx-0x40]
    214fa4967413:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa4967417:	83 ea 3c                                        	sub    edx,0x3c
    214fa496741a:	41 8b 14 10                                     	mov    edx,DWORD PTR [r8+rdx*1]
    214fa496741e:	8b 75 c0                                        	mov    esi,DWORD PTR [rbp-0x40]
    214fa4967421:	c1 ee 02                                        	shr    esi,0x2
    214fa4967424:	0f af f2                                        	imul   esi,edx
    214fa4967427:	c1 e6 04                                        	shl    esi,0x4
    214fa496742a:	8d 14 0e                                        	lea    edx,[rsi+rcx*1]
    214fa496742d:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    214fa4967434:	8b f1                                           	mov    esi,ecx
    214fa4967436:	83 e6 f0                                        	and    esi,0xfffffff0
    214fa4967439:	03 d6                                           	add    edx,esi
    214fa496743b:	43 8b 74 18 6c                                  	mov    esi,DWORD PTR [r8+r11*1+0x6c]
    214fa4967440:	81 ee 01 02 00 00                               	sub    esi,0x201
    214fa4967446:	48 89 45 b8                                     	mov    QWORD PTR [rbp-0x48],rax
    214fa496744a:	33 c0                                           	xor    eax,eax
    214fa496744c:	85 f6                                           	test   esi,esi
    214fa496744e:	0f 94 c0                                        	sete   al
    214fa4967451:	83 fe 02                                        	cmp    esi,0x2
    214fa4967454:	40 0f 94 c6                                     	sete   sil
    214fa4967458:	40 0f b6 f6                                     	movzx  esi,sil
    214fa496745c:	0b f0                                           	or     esi,eax
    214fa496745e:	0f 85 0d 00 00 00                               	jne    0x214fa4967471
    214fa4967464:	49 c7 04 10 00 00 00 00                         	mov    QWORD PTR [r8+rdx*1],0x0
    214fa496746c:	e9 ca 0e 00 00                                  	jmp    0x214fa496833b
    214fa4967471:	83 e3 0f                                        	and    ebx,0xf
    214fa4967474:	83 e1 0c                                        	and    ecx,0xc
    214fa4967477:	8b 45 c0                                        	mov    eax,DWORD PTR [rbp-0x40]
    214fa496747a:	83 e0 03                                        	and    eax,0x3
    214fa496747d:	0b c1                                           	or     eax,ecx
    214fa496747f:	c1 e0 02                                        	shl    eax,0x2
    214fa4967482:	83 e0 3f                                        	and    eax,0x3f
    214fa4967485:	8b c8                                           	mov    ecx,eax
    214fa4967487:	48 d3 e3                                        	shl    rbx,cl
    214fa496748a:	49 8b 04 10                                     	mov    rax,QWORD PTR [r8+rdx*1]
    214fa496748e:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa4967492:	0f 84 03 07 00 00                               	je     0x214fa4967b9b
    214fa4967498:	48 0b c3                                        	or     rax,rbx
    214fa496749b:	49 89 04 10                                     	mov    QWORD PTR [r8+rdx*1],rax
    214fa496749f:	48 83 f8 ff                                     	cmp    rax,0xffffffffffffffff
    214fa49674a3:	0f 85 92 0e 00 00                               	jne    0x214fa496833b
    214fa49674a9:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    214fa49674ae:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    214fa49674b1:	81 e3 fc ff ff 0f                               	and    ebx,0xffffffc
    214fa49674b7:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    214fa49674bb:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    214fa49674be:	83 ce 03                                        	or     esi,0x3
    214fa49674c1:	0f af f1                                        	imul   esi,ecx
    214fa49674c4:	03 f3                                           	add    esi,ebx
    214fa49674c6:	c1 e6 04                                        	shl    esi,0x4
    214fa49674c9:	03 f0                                           	add    esi,eax
    214fa49674cb:	c4 c1 7a 6f 44 30 30                            	vmovdqu xmm0,XMMWORD PTR [r8+rsi*1+0x30]
    214fa49674d2:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    214fa49674d7:	c4 c1 7a 6f 74 30 20                            	vmovdqu xmm6,XMMWORD PTR [r8+rsi*1+0x20]
    214fa49674de:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa49674e3:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa49674e7:	c4 c1 7a 6f 7c 30 10                            	vmovdqu xmm7,XMMWORD PTR [r8+rsi*1+0x10]
    214fa49674ee:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa49674f3:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa49674f8:	c4 41 7a 6f 04 30                               	vmovdqu xmm8,XMMWORD PTR [r8+rsi*1]
    214fa49674fe:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa4967504:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa4967509:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    214fa496750c:	81 e6 fc ff ff 0f                               	and    esi,0xffffffc
    214fa4967512:	44 8b ce                                        	mov    r9d,esi
    214fa4967515:	41 83 c9 02                                     	or     r9d,0x2
    214fa4967519:	44 0f af c9                                     	imul   r9d,ecx
    214fa496751d:	44 03 cb                                        	add    r9d,ebx
    214fa4967520:	41 c1 e1 04                                     	shl    r9d,0x4
    214fa4967524:	44 03 c8                                        	add    r9d,eax
    214fa4967527:	c4 01 7a 6f 4c 08 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r9*1+0x30]
    214fa496752e:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa4967534:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa4967539:	c4 01 7a 6f 54 08 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r9*1+0x20]
    214fa4967540:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    214fa4967546:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    214fa496754b:	c4 01 7a 6f 5c 08 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r9*1+0x10]
    214fa4967552:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa4967558:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    214fa496755d:	c4 01 7a 6f 24 08                               	vmovdqu xmm12,XMMWORD PTR [r8+r9*1]
    214fa4967563:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa4967569:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    214fa496756e:	44 8b ce                                        	mov    r9d,esi
    214fa4967571:	41 83 c9 01                                     	or     r9d,0x1
    214fa4967575:	44 0f af c9                                     	imul   r9d,ecx
    214fa4967579:	44 03 cb                                        	add    r9d,ebx
    214fa496757c:	41 c1 e1 04                                     	shl    r9d,0x4
    214fa4967580:	44 03 c8                                        	add    r9d,eax
    214fa4967583:	c4 01 7a 6f 6c 08 30                            	vmovdqu xmm13,XMMWORD PTR [r8+r9*1+0x30]
    214fa496758a:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa4967590:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa4967595:	c4 01 7a 6f 74 08 20                            	vmovdqu xmm14,XMMWORD PTR [r8+r9*1+0x20]
    214fa496759c:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa49675a2:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    214fa49675a6:	c4 81 7a 6f 4c 08 10                            	vmovdqu xmm1,XMMWORD PTR [r8+r9*1+0x10]
    214fa49675ad:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa49675b2:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    214fa49675b6:	c4 81 7a 6f 14 08                               	vmovdqu xmm2,XMMWORD PTR [r8+r9*1]
    214fa49675bc:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa49675c1:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    214fa49675c5:	0f af ce                                        	imul   ecx,esi
    214fa49675c8:	03 d9                                           	add    ebx,ecx
    214fa49675ca:	c1 e3 04                                        	shl    ebx,0x4
    214fa49675cd:	03 c3                                           	add    eax,ebx
    214fa49675cf:	c4 c1 7a 6f 5c 00 30                            	vmovdqu xmm3,XMMWORD PTR [r8+rax*1+0x30]
    214fa49675d6:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa49675db:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa49675df:	c4 c1 7a 6f 64 00 20                            	vmovdqu xmm4,XMMWORD PTR [r8+rax*1+0x20]
    214fa49675e6:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    214fa49675eb:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa49675f0:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa49675f4:	c4 c1 7a 6f 6c 00 10                            	vmovdqu xmm5,XMMWORD PTR [r8+rax*1+0x10]
    214fa49675fb:	c5 f8 11 75 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm6
    214fa4967600:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa4967605:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4967609:	c4 c1 7a 6f 34 00                               	vmovdqu xmm6,XMMWORD PTR [r8+rax*1]
    214fa496760f:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    214fa4967617:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa496761c:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa4967620:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa4967625:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa496762a:	c5 f8 50 c0                                     	vmovmskps eax,xmm0
    214fa496762e:	83 f8 0f                                        	cmp    eax,0xf
    214fa4967631:	0f 84 0e 00 00 00                               	je     0x214fa4967645
    214fa4967637:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    214fa4967640:	e9 f6 0c 00 00                                  	jmp    0x214fa496833b
    214fa4967645:	4c 8b 15 c1 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ec1]        # 0x214fa496150d
    214fa496764c:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4967651:	4c 8b 15 c4 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ec4]        # 0x214fa496151c
    214fa4967658:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa496765e:	4c 8b 15 c7 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ec7]        # 0x214fa496152c
    214fa4967665:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa496766a:	4c 8b 15 ca 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eca]        # 0x214fa496153b
    214fa4967671:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4967677:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    214fa496767c:	4c 8b 15 d0 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed0]        # 0x214fa4961553
    214fa4967683:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4967688:	4c 8b 15 d3 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed3]        # 0x214fa4961562
    214fa496768f:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4967695:	c5 f8 11 bd 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm7
    214fa496769d:	4c 8b 15 d6 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed6]        # 0x214fa496157a
    214fa49676a4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49676a9:	4c 8b 15 d9 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed9]        # 0x214fa4961589
    214fa49676b0:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa49676b6:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    214fa49676be:	4c 8b 15 dc 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9edc]        # 0x214fa49615a1
    214fa49676c5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49676ca:	4c 8b 15 df 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9edf]        # 0x214fa49615b0
    214fa49676d1:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa49676d7:	c5 f8 11 bd 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm7
    214fa49676df:	4c 8b 15 e2 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee2]        # 0x214fa49615c8
    214fa49676e6:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49676eb:	4c 8b 15 e5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee5]        # 0x214fa49615d7
    214fa49676f2:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa49676f8:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    214fa4967700:	4c 8b 15 e8 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ee8]        # 0x214fa49615ef
    214fa4967707:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa496770c:	4c 8b 15 eb 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eeb]        # 0x214fa49615fe
    214fa4967713:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4967719:	c5 f8 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm0
    214fa4967721:	4c 8b 15 ee 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eee]        # 0x214fa4961616
    214fa4967728:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa496772d:	4c 8b 15 f1 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef1]        # 0x214fa4961625
    214fa4967734:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa496773a:	c5 78 11 8d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm9
    214fa4967742:	4c 8b 15 f4 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef4]        # 0x214fa496163d
    214fa4967749:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa496774e:	4c 8b 15 f7 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ef7]        # 0x214fa496164c
    214fa4967755:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa496775b:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    214fa4967763:	4c 8b 15 fa 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9efa]        # 0x214fa4961664
    214fa496776a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa496776f:	4c 8b 15 fd 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9efd]        # 0x214fa4961673
    214fa4967776:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa496777c:	c5 78 11 95 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm10
    214fa4967784:	4c 8b 15 00 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f00]        # 0x214fa496168b
    214fa496778b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4967790:	4c 8b 15 03 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f03]        # 0x214fa496169a
    214fa4967797:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    214fa496779d:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    214fa49677a5:	4c 8b 15 06 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f06]        # 0x214fa49616b2
    214fa49677ac:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa49677b1:	4c 8b 15 09 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f09]        # 0x214fa49616c1
    214fa49677b8:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa49677be:	c5 78 11 9d e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm11
    214fa49677c6:	4c 8b 15 0c 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f0c]        # 0x214fa49616d9
    214fa49677cd:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa49677d2:	4c 8b 15 0f 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f0f]        # 0x214fa49616e8
    214fa49677d9:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa49677df:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    214fa49677e7:	4c 8b 15 12 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f12]        # 0x214fa4961700
    214fa49677ee:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa49677f3:	4c 8b 15 15 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f15]        # 0x214fa496170f
    214fa49677fa:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4967800:	c5 78 11 a5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm12
    214fa4967808:	4c 8b 15 18 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f18]        # 0x214fa4961727
    214fa496780f:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4967814:	4c 8b 15 1b 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f1b]        # 0x214fa4961736
    214fa496781b:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4967821:	c5 78 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm9
    214fa4967829:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa496782e:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    214fa4967834:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    214fa496783a:	4c 8b 15 1e 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f1e]        # 0x214fa496175f
    214fa4967841:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa4967847:	c5 78 11 ad a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm13
    214fa496784f:	4c 8b 15 21 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f21]        # 0x214fa4961777
    214fa4967856:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa496785b:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4967860:	c5 f8 11 bd 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm7
    214fa4967868:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    214fa496786d:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    214fa4967873:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    214fa4967878:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa496787d:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    214fa4967881:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4967886:	4c 8b 15 ea 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9eea]        # 0x214fa4961777
    214fa496788d:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4967892:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4967897:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    214fa496789c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa49678a0:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa49678a5:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    214fa49678aa:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa49678af:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    214fa49678b3:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa49678b8:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa49678bc:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa49678c0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49678c5:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa49678ca:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    214fa49678cf:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa49678d3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49678d8:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa49678dc:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa49678e0:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49678e5:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa49678ea:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa49678ee:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    214fa49678f2:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49678f7:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa49678fb:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa49678ff:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967904:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    214fa4967909:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa496790d:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    214fa4967911:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967916:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa496791a:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    214fa496791e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967923:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    214fa4967928:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa496792c:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    214fa4967930:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967935:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4967939:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    214fa496793d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967942:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    214fa4967948:	c5 f8 10 bd 80 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x180]
    214fa4967950:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4967954:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa4967958:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496795d:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4967961:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    214fa4967965:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496796a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    214fa4967972:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4967977:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa496797f:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4967983:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4967987:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496798c:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4967990:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4967994:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967999:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa49679a1:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49679a6:	c5 78 10 85 b0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x150]
    214fa49679ae:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49679b2:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49679b6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49679bb:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49679bf:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49679c3:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49679c8:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa49679d0:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49679d5:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa49679dd:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49679e1:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49679e5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49679ea:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49679ee:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49679f2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49679f7:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa49679ff:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4967a04:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa4967a0c:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4967a10:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4967a14:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967a19:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4967a1d:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4967a21:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967a26:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa4967a2e:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4967a33:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa4967a3b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4967a3f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4967a43:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967a48:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4967a4c:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4967a50:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967a55:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa4967a5d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4967a62:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa4967a6a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4967a6e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4967a72:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967a77:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4967a7b:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4967a7f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967a84:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa4967a8c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4967a91:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa4967a99:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4967a9d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4967aa1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967aa6:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4967aaa:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4967aae:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967ab3:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa4967ab8:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4967abd:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa4967ac5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4967ac9:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4967acd:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967ad2:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4967ad6:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4967ada:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4967adf:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    214fa4967ae4:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4967ae9:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    214fa4967aee:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4967af2:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4967af6:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967afb:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4967b05:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4967b09:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa4967b0d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4967b12:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    214fa4967b1c:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa4967b20:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa4967b24:	33 c0                                           	xor    eax,eax
    214fa4967b26:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa4967b2a:	0f 97 c0                                        	seta   al
    214fa4967b2d:	8d 9f 30 01 00 00                               	lea    ebx,[rdi+0x130]
    214fa4967b33:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    214fa4967b3a:	0b cb                                           	or     ecx,ebx
    214fa4967b3c:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    214fa4967b42:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa4967b47:	be 02 00 00 00                                  	mov    esi,0x2
    214fa4967b4c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4967b50:	0f 47 c6                                        	cmova  eax,esi
    214fa4967b53:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    214fa4967b5a:	0b cb                                           	or     ecx,ebx
    214fa4967b5c:	c4 c1 7a 10 2c 08                               	vmovss xmm5,DWORD PTR [r8+rcx*1]
    214fa4967b62:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa4967b67:	b9 03 00 00 00                                  	mov    ecx,0x3
    214fa4967b6c:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa4967b70:	0f 47 c1                                        	cmova  eax,ecx
    214fa4967b73:	c1 e0 02                                        	shl    eax,0x2
    214fa4967b76:	0b d8                                           	or     ebx,eax
    214fa4967b78:	c4 c1 7a 10 04 18                               	vmovss xmm0,DWORD PTR [r8+rbx*1]
    214fa4967b7e:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    214fa4967b85:	8d 9f 30 02 00 00                               	lea    ebx,[rdi+0x230]
    214fa4967b8b:	0b c3                                           	or     eax,ebx
    214fa4967b8d:	41 8b 04 00                                     	mov    eax,DWORD PTR [r8+rax*1]
    214fa4967b91:	41 89 44 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],eax
    214fa4967b96:	e9 a0 07 00 00                                  	jmp    0x214fa496833b
    214fa4967b9b:	41 8b 44 10 0c                                  	mov    eax,DWORD PTR [r8+rdx*1+0xc]
    214fa4967ba0:	8b c8                                           	mov    ecx,eax
    214fa4967ba2:	83 e1 3f                                        	and    ecx,0x3f
    214fa4967ba5:	48 d3 eb                                        	shr    rbx,cl
    214fa4967ba8:	be 03 00 00 00                                  	mov    esi,0x3
    214fa4967bad:	f6 c3 01                                        	test   bl,0x1
    214fa4967bb0:	0f 84 85 07 00 00                               	je     0x214fa496833b
    214fa4967bb6:	83 e0 03                                        	and    eax,0x3
    214fa4967bb9:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    214fa4967bbd:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    214fa4967bc3:	c4 c1 7a 10 6c 10 08                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x8]
    214fa4967bca:	c5 f8 2e e8                                     	vucomiss xmm5,xmm0
    214fa4967bce:	0f 86 67 07 00 00                               	jbe    0x214fa496833b
    214fa4967bd4:	43 8b 44 18 1c                                  	mov    eax,DWORD PTR [r8+r11*1+0x1c]
    214fa4967bd9:	8b 5d c0                                        	mov    ebx,DWORD PTR [rbp-0x40]
    214fa4967bdc:	81 e3 fc ff ff 0f                               	and    ebx,0xffffffc
    214fa4967be2:	43 8b 0c 18                                     	mov    ecx,DWORD PTR [r8+r11*1]
    214fa4967be6:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    214fa4967bea:	41 83 c9 03                                     	or     r9d,0x3
    214fa4967bee:	44 0f af c9                                     	imul   r9d,ecx
    214fa4967bf2:	44 03 cb                                        	add    r9d,ebx
    214fa4967bf5:	41 c1 e1 04                                     	shl    r9d,0x4
    214fa4967bf9:	44 03 c8                                        	add    r9d,eax
    214fa4967bfc:	c4 81 7a 6f 44 08 30                            	vmovdqu xmm0,XMMWORD PTR [r8+r9*1+0x30]
    214fa4967c03:	c5 f8 c2 e8 00                                  	vcmpeqps xmm5,xmm0,xmm0
    214fa4967c08:	c4 81 7a 6f 74 08 20                            	vmovdqu xmm6,XMMWORD PTR [r8+r9*1+0x20]
    214fa4967c0f:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa4967c14:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa4967c18:	c4 81 7a 6f 7c 08 10                            	vmovdqu xmm7,XMMWORD PTR [r8+r9*1+0x10]
    214fa4967c1f:	c5 40 c2 c7 00                                  	vcmpeqps xmm8,xmm7,xmm7
    214fa4967c24:	c4 c1 51 db e8                                  	vpand  xmm5,xmm5,xmm8
    214fa4967c29:	c4 01 7a 6f 04 08                               	vmovdqu xmm8,XMMWORD PTR [r8+r9*1]
    214fa4967c2f:	c4 41 38 c2 c8 00                               	vcmpeqps xmm9,xmm8,xmm8
    214fa4967c35:	c4 c1 51 db e9                                  	vpand  xmm5,xmm5,xmm9
    214fa4967c3a:	44 8b 4d b8                                     	mov    r9d,DWORD PTR [rbp-0x48]
    214fa4967c3e:	41 81 e1 fc ff ff 0f                            	and    r9d,0xffffffc
    214fa4967c45:	45 8b d9                                        	mov    r11d,r9d
    214fa4967c48:	41 83 cb 02                                     	or     r11d,0x2
    214fa4967c4c:	44 0f af d9                                     	imul   r11d,ecx
    214fa4967c50:	44 03 db                                        	add    r11d,ebx
    214fa4967c53:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa4967c57:	44 03 d8                                        	add    r11d,eax
    214fa4967c5a:	c4 01 7a 6f 4c 18 30                            	vmovdqu xmm9,XMMWORD PTR [r8+r11*1+0x30]
    214fa4967c61:	c4 41 30 c2 d1 00                               	vcmpeqps xmm10,xmm9,xmm9
    214fa4967c67:	c4 c1 51 db ea                                  	vpand  xmm5,xmm5,xmm10
    214fa4967c6c:	c4 01 7a 6f 54 18 20                            	vmovdqu xmm10,XMMWORD PTR [r8+r11*1+0x20]
    214fa4967c73:	c4 41 28 c2 da 00                               	vcmpeqps xmm11,xmm10,xmm10
    214fa4967c79:	c4 c1 51 db eb                                  	vpand  xmm5,xmm5,xmm11
    214fa4967c7e:	c4 01 7a 6f 5c 18 10                            	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x10]
    214fa4967c85:	c4 41 20 c2 e3 00                               	vcmpeqps xmm12,xmm11,xmm11
    214fa4967c8b:	c4 c1 51 db ec                                  	vpand  xmm5,xmm5,xmm12
    214fa4967c90:	c4 01 7a 6f 24 18                               	vmovdqu xmm12,XMMWORD PTR [r8+r11*1]
    214fa4967c96:	c4 41 18 c2 ec 00                               	vcmpeqps xmm13,xmm12,xmm12
    214fa4967c9c:	c4 c1 51 db ed                                  	vpand  xmm5,xmm5,xmm13
    214fa4967ca1:	45 8b d9                                        	mov    r11d,r9d
    214fa4967ca4:	41 83 cb 01                                     	or     r11d,0x1
    214fa4967ca8:	44 0f af d9                                     	imul   r11d,ecx
    214fa4967cac:	44 03 db                                        	add    r11d,ebx
    214fa4967caf:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa4967cb3:	44 03 d8                                        	add    r11d,eax
    214fa4967cb6:	c4 01 7a 6f 6c 18 30                            	vmovdqu xmm13,XMMWORD PTR [r8+r11*1+0x30]
    214fa4967cbd:	c4 41 10 c2 f5 00                               	vcmpeqps xmm14,xmm13,xmm13
    214fa4967cc3:	c4 c1 51 db ee                                  	vpand  xmm5,xmm5,xmm14
    214fa4967cc8:	c4 01 7a 6f 74 18 20                            	vmovdqu xmm14,XMMWORD PTR [r8+r11*1+0x20]
    214fa4967ccf:	c4 c1 08 c2 ce 00                               	vcmpeqps xmm1,xmm14,xmm14
    214fa4967cd5:	c5 d1 db e9                                     	vpand  xmm5,xmm5,xmm1
    214fa4967cd9:	c4 81 7a 6f 4c 18 10                            	vmovdqu xmm1,XMMWORD PTR [r8+r11*1+0x10]
    214fa4967ce0:	c5 f0 c2 d1 00                                  	vcmpeqps xmm2,xmm1,xmm1
    214fa4967ce5:	c5 d1 db ea                                     	vpand  xmm5,xmm5,xmm2
    214fa4967ce9:	c4 81 7a 6f 14 18                               	vmovdqu xmm2,XMMWORD PTR [r8+r11*1]
    214fa4967cef:	c5 e8 c2 da 00                                  	vcmpeqps xmm3,xmm2,xmm2
    214fa4967cf4:	c5 d1 db eb                                     	vpand  xmm5,xmm5,xmm3
    214fa4967cf8:	41 0f af c9                                     	imul   ecx,r9d
    214fa4967cfc:	44 8d 1c 0b                                     	lea    r11d,[rbx+rcx*1]
    214fa4967d00:	41 c1 e3 04                                     	shl    r11d,0x4
    214fa4967d04:	44 03 d8                                        	add    r11d,eax
    214fa4967d07:	c4 81 7a 6f 5c 18 30                            	vmovdqu xmm3,XMMWORD PTR [r8+r11*1+0x30]
    214fa4967d0e:	c5 e0 c2 e3 00                                  	vcmpeqps xmm4,xmm3,xmm3
    214fa4967d13:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa4967d17:	c4 81 7a 6f 64 18 20                            	vmovdqu xmm4,XMMWORD PTR [r8+r11*1+0x20]
    214fa4967d1e:	c5 f8 11 45 a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm0
    214fa4967d23:	c5 d8 c2 c4 00                                  	vcmpeqps xmm0,xmm4,xmm4
    214fa4967d28:	c5 d1 db c0                                     	vpand  xmm0,xmm5,xmm0
    214fa4967d2c:	c4 81 7a 6f 6c 18 10                            	vmovdqu xmm5,XMMWORD PTR [r8+r11*1+0x10]
    214fa4967d33:	c5 f8 11 75 80                                  	vmovups XMMWORD PTR [rbp-0x80],xmm6
    214fa4967d38:	c5 d0 c2 f5 00                                  	vcmpeqps xmm6,xmm5,xmm5
    214fa4967d3d:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4967d41:	c4 81 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+r11*1]
    214fa4967d47:	c5 f8 11 bd 60 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xa0],xmm7
    214fa4967d4f:	c5 c8 c2 fe 00                                  	vcmpeqps xmm7,xmm6,xmm6
    214fa4967d54:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa4967d58:	c5 f9 72 f0 1f                                  	vpslld xmm0,xmm0,0x1f
    214fa4967d5d:	c5 f9 72 e0 1f                                  	vpsrad xmm0,xmm0,0x1f
    214fa4967d62:	c5 78 50 d8                                     	vmovmskps r11d,xmm0
    214fa4967d66:	41 83 fb 0f                                     	cmp    r11d,0xf
    214fa4967d6a:	0f 84 12 00 00 00                               	je     0x214fa4967d82
    214fa4967d70:	49 c7 44 10 08 00 00 80 7f                      	mov    QWORD PTR [r8+rdx*1+0x8],0x7f800000
    214fa4967d79:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4967d7d:	e9 b9 05 00 00                                  	jmp    0x214fa496833b
    214fa4967d82:	4c 8b 15 84 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9784]        # 0x214fa496150d
    214fa4967d89:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4967d8e:	4c 8b 15 87 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9787]        # 0x214fa496151c
    214fa4967d95:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4967d9b:	4c 8b 15 8a 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff978a]        # 0x214fa496152c
    214fa4967da2:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4967da7:	4c 8b 15 8d 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff978d]        # 0x214fa496153b
    214fa4967dae:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4967db4:	c5 f8 11 45 90                                  	vmovups XMMWORD PTR [rbp-0x70],xmm0
    214fa4967db9:	4c 8b 15 93 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9793]        # 0x214fa4961553
    214fa4967dc0:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4967dc5:	4c 8b 15 96 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9796]        # 0x214fa4961562
    214fa4967dcc:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4967dd2:	c5 f8 11 bd 70 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x90],xmm7
    214fa4967dda:	4c 8b 15 99 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9799]        # 0x214fa496157a
    214fa4967de1:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4967de6:	4c 8b 15 9c 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff979c]        # 0x214fa4961589
    214fa4967ded:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4967df3:	c5 f8 11 85 50 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xb0],xmm0
    214fa4967dfb:	4c 8b 15 9f 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff979f]        # 0x214fa49615a1
    214fa4967e02:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4967e07:	4c 8b 15 a2 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a2]        # 0x214fa49615b0
    214fa4967e0e:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4967e14:	c5 f8 11 bd 30 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xd0],xmm7
    214fa4967e1c:	4c 8b 15 a5 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a5]        # 0x214fa49615c8
    214fa4967e23:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4967e28:	4c 8b 15 a8 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97a8]        # 0x214fa49615d7
    214fa4967e2f:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4967e35:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    214fa4967e3d:	4c 8b 15 ab 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ab]        # 0x214fa49615ef
    214fa4967e44:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4967e49:	4c 8b 15 ae 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ae]        # 0x214fa49615fe
    214fa4967e50:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4967e56:	c5 f8 11 85 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm0
    214fa4967e5e:	4c 8b 15 b1 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b1]        # 0x214fa4961616
    214fa4967e65:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4967e6a:	4c 8b 15 b4 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b4]        # 0x214fa4961625
    214fa4967e71:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4967e77:	c5 78 11 8d 20 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xe0],xmm9
    214fa4967e7f:	4c 8b 15 b7 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97b7]        # 0x214fa496163d
    214fa4967e86:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa4967e8b:	4c 8b 15 ba 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ba]        # 0x214fa496164c
    214fa4967e92:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa4967e98:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    214fa4967ea0:	4c 8b 15 bd 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97bd]        # 0x214fa4961664
    214fa4967ea7:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4967eac:	4c 8b 15 c0 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c0]        # 0x214fa4961673
    214fa4967eb3:	c4 c3 c1 22 fa 01                               	vpinsrq xmm7,xmm7,r10,0x1
    214fa4967eb9:	c5 78 11 95 00 ff ff ff                         	vmovups XMMWORD PTR [rbp-0x100],xmm10
    214fa4967ec1:	4c 8b 15 c3 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c3]        # 0x214fa496168b
    214fa4967ec8:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4967ecd:	4c 8b 15 c6 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c6]        # 0x214fa496169a
    214fa4967ed4:	c4 43 a9 22 d2 01                               	vpinsrq xmm10,xmm10,r10,0x1
    214fa4967eda:	c5 78 11 85 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm8
    214fa4967ee2:	4c 8b 15 c9 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97c9]        # 0x214fa49616b2
    214fa4967ee9:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa4967eee:	4c 8b 15 cc 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cc]        # 0x214fa49616c1
    214fa4967ef5:	c4 43 b9 22 c2 01                               	vpinsrq xmm8,xmm8,r10,0x1
    214fa4967efb:	c5 78 11 9d e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm11
    214fa4967f03:	4c 8b 15 cf 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97cf]        # 0x214fa49616d9
    214fa4967f0a:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa4967f0f:	4c 8b 15 d2 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d2]        # 0x214fa49616e8
    214fa4967f16:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa4967f1c:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    214fa4967f24:	4c 8b 15 d5 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d5]        # 0x214fa4961700
    214fa4967f2b:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    214fa4967f30:	4c 8b 15 d8 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97d8]        # 0x214fa496170f
    214fa4967f37:	c4 c3 f9 22 c2 01                               	vpinsrq xmm0,xmm0,r10,0x1
    214fa4967f3d:	c5 78 11 a5 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm12
    214fa4967f45:	4c 8b 15 db 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97db]        # 0x214fa4961727
    214fa4967f4c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4967f51:	4c 8b 15 de 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97de]        # 0x214fa4961736
    214fa4967f58:	c4 43 99 22 e2 01                               	vpinsrq xmm12,xmm12,r10,0x1
    214fa4967f5e:	c5 78 11 8d 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm9
    214fa4967f66:	c4 41 31 76 c9                                  	vpcmpeqd xmm9,xmm9,xmm9
    214fa4967f6b:	c4 c1 31 73 f1 3f                               	vpsllq xmm9,xmm9,0x3f
    214fa4967f71:	c4 c1 31 73 d1 1f                               	vpsrlq xmm9,xmm9,0x1f
    214fa4967f77:	4c 8b 15 e1 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e1]        # 0x214fa496175f
    214fa4967f7e:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa4967f84:	c5 78 11 ad a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm13
    214fa4967f8c:	4c 8b 15 e4 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97e4]        # 0x214fa4961777
    214fa4967f93:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4967f98:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4967f9d:	c5 f8 11 bd 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm7
    214fa4967fa5:	c5 90 c2 fe 01                                  	vcmpltps xmm7,xmm13,xmm6
    214fa4967faa:	c4 41 48 c2 ed 01                               	vcmpltps xmm13,xmm6,xmm13
    214fa4967fb0:	c4 c1 41 eb fd                                  	vpor   xmm7,xmm7,xmm13
    214fa4967fb5:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa4967fba:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    214fa4967fbe:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4967fc3:	4c 8b 15 ad 97 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff97ad]        # 0x214fa4961777
    214fa4967fca:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    214fa4967fcf:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    214fa4967fd4:	c4 41 41 df fd                                  	vpandn xmm15,xmm7,xmm13
    214fa4967fd9:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    214fa4967fdd:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4967fe2:	c5 c8 c2 fd 01                                  	vcmpltps xmm7,xmm6,xmm5
    214fa4967fe7:	c4 41 41 df f9                                  	vpandn xmm15,xmm7,xmm9
    214fa4967fec:	c5 19 db cf                                     	vpand  xmm9,xmm12,xmm7
    214fa4967ff0:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4967ff5:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa4967ff9:	c5 d1 db ef                                     	vpand  xmm5,xmm5,xmm7
    214fa4967ffd:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4968002:	c5 d0 c2 f4 01                                  	vcmpltps xmm6,xmm5,xmm4
    214fa4968007:	c4 41 49 df f9                                  	vpandn xmm15,xmm6,xmm9
    214fa496800c:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa4968010:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4968015:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4968019:	c5 d9 db ee                                     	vpand  xmm5,xmm4,xmm6
    214fa496801d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4968022:	c5 d0 c2 f3 01                                  	vcmpltps xmm6,xmm5,xmm3
    214fa4968027:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa496802b:	c5 a1 db c6                                     	vpand  xmm0,xmm11,xmm6
    214fa496802f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4968034:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4968038:	c5 e1 db ee                                     	vpand  xmm5,xmm3,xmm6
    214fa496803c:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4968041:	c5 d0 c2 f2 01                                  	vcmpltps xmm6,xmm5,xmm2
    214fa4968046:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa496804a:	c5 b9 db c6                                     	vpand  xmm0,xmm8,xmm6
    214fa496804e:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4968053:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4968057:	c5 e9 db ee                                     	vpand  xmm5,xmm2,xmm6
    214fa496805b:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4968060:	c5 d0 c2 f1 01                                  	vcmpltps xmm6,xmm5,xmm1
    214fa4968065:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4968069:	c5 a9 db c6                                     	vpand  xmm0,xmm10,xmm6
    214fa496806d:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4968072:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa4968076:	c5 f1 db ee                                     	vpand  xmm5,xmm1,xmm6
    214fa496807a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496807f:	c4 c1 50 c2 f6 01                               	vcmpltps xmm6,xmm5,xmm14
    214fa4968085:	c5 f8 10 bd 80 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x180]
    214fa496808d:	c5 49 df f8                                     	vpandn xmm15,xmm6,xmm0
    214fa4968091:	c5 c1 db c6                                     	vpand  xmm0,xmm7,xmm6
    214fa4968095:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496809a:	c5 49 df fd                                     	vpandn xmm15,xmm6,xmm5
    214fa496809e:	c5 89 db ee                                     	vpand  xmm5,xmm14,xmm6
    214fa49680a2:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49680a7:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    214fa49680af:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49680b4:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa49680bc:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49680c0:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49680c4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49680c9:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49680cd:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49680d1:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49680d6:	c5 f8 10 b5 c0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x140]
    214fa49680de:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49680e3:	c5 78 10 85 b0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x150]
    214fa49680eb:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49680ef:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49680f3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49680f8:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49680fc:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4968100:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4968105:	c5 f8 10 b5 e0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x120]
    214fa496810d:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4968112:	c5 78 10 85 d0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x130]
    214fa496811a:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496811e:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4968122:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4968127:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa496812b:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa496812f:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4968134:	c5 f8 10 b5 00 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x100]
    214fa496813c:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4968141:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa4968149:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496814d:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4968151:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4968156:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa496815a:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa496815e:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4968163:	c5 f8 10 b5 20 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xe0]
    214fa496816b:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4968170:	c5 78 10 85 10 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xf0]
    214fa4968178:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496817c:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4968180:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4968185:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4968189:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa496818d:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa4968192:	c5 f8 10 b5 40 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xc0]
    214fa496819a:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa496819f:	c5 78 10 85 30 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xd0]
    214fa49681a7:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49681ab:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49681af:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49681b4:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49681b8:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49681bc:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49681c1:	c5 f8 10 b5 60 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xa0]
    214fa49681c9:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49681ce:	c5 78 10 85 50 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xb0]
    214fa49681d6:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa49681da:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa49681de:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa49681e3:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa49681e7:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa49681eb:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa49681f0:	c5 f8 10 75 80                                  	vmovups xmm6,XMMWORD PTR [rbp-0x80]
    214fa49681f5:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa49681fa:	c5 78 10 85 70 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x90]
    214fa4968202:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa4968206:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa496820a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496820f:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4968213:	c5 c9 db ef                                     	vpand  xmm5,xmm6,xmm7
    214fa4968217:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    214fa496821c:	c5 f8 10 75 a0                                  	vmovups xmm6,XMMWORD PTR [rbp-0x60]
    214fa4968221:	c5 d0 c2 fe 01                                  	vcmpltps xmm7,xmm5,xmm6
    214fa4968226:	c5 78 10 45 90                                  	vmovups xmm8,XMMWORD PTR [rbp-0x70]
    214fa496822b:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    214fa496822f:	c5 b9 db c7                                     	vpand  xmm0,xmm8,xmm7
    214fa4968233:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4968238:	c4 c1 7a 7f 84 38 30 02 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x230],xmm0
    214fa4968242:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    214fa4968246:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    214fa496824a:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa496824f:	c4 c1 7a 7f 84 38 30 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x130],xmm0
    214fa4968259:	c5 fa 16 e8                                     	vmovshdup xmm5,xmm0
    214fa496825d:	c5 f8 28 f0                                     	vmovaps xmm6,xmm0
    214fa4968261:	45 33 db                                        	xor    r11d,r11d
    214fa4968264:	c5 f8 2e ee                                     	vucomiss xmm5,xmm6
    214fa4968268:	41 0f 97 c3                                     	seta   r11b
    214fa496826c:	8d 87 30 01 00 00                               	lea    eax,[rdi+0x130]
    214fa4968272:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    214fa496827a:	0b d8                                           	or     ebx,eax
    214fa496827c:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    214fa4968282:	c5 f9 70 f0 02                                  	vpshufd xmm6,xmm0,0x2
    214fa4968287:	b9 02 00 00 00                                  	mov    ecx,0x2
    214fa496828c:	c5 f8 2e f5                                     	vucomiss xmm6,xmm5
    214fa4968290:	44 0f 47 d9                                     	cmova  r11d,ecx
    214fa4968294:	42 8d 1c 9d 00 00 00 00                         	lea    ebx,[r11*4+0x0]
    214fa496829c:	0b d8                                           	or     ebx,eax
    214fa496829e:	c4 c1 7a 10 2c 18                               	vmovss xmm5,DWORD PTR [r8+rbx*1]
    214fa49682a4:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa49682a9:	c5 f8 2e c5                                     	vucomiss xmm0,xmm5
    214fa49682ad:	44 0f 47 de                                     	cmova  r11d,esi
    214fa49682b1:	41 c1 e3 02                                     	shl    r11d,0x2
    214fa49682b5:	41 0b c3                                        	or     eax,r11d
    214fa49682b8:	c4 c1 7a 10 04 00                               	vmovss xmm0,DWORD PTR [r8+rax*1]
    214fa49682be:	c4 c1 7a 11 44 10 08                            	vmovss DWORD PTR [r8+rdx*1+0x8],xmm0
    214fa49682c5:	8d 87 30 02 00 00                               	lea    eax,[rdi+0x230]
    214fa49682cb:	44 0b d8                                        	or     r11d,eax
    214fa49682ce:	47 8b 1c 18                                     	mov    r11d,DWORD PTR [r8+r11*1]
    214fa49682d2:	45 89 5c 10 0c                                  	mov    DWORD PTR [r8+rdx*1+0xc],r11d
    214fa49682d7:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa49682db:	e9 5b 00 00 00                                  	jmp    0x214fa496833b
    214fa49682e0:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    214fa49682e6:	51                                              	push   rcx
    214fa49682e7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49682eb:	8b c8                                           	mov    ecx,eax
    214fa49682ed:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa49682f0:	e8 7b ff eb ff                                  	call   0x214fa4828270
    214fa49682f5:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49682f8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49682fc:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa4968300:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4968304:	44 8b bd d0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x230]
    214fa496830b:	e9 2b 00 00 00                                  	jmp    0x214fa496833b
    214fa4968310:	8d 8f 80 02 00 00                               	lea    ecx,[rdi+0x280]
    214fa4968316:	51                                              	push   rcx
    214fa4968317:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa496831b:	8b c8                                           	mov    ecx,eax
    214fa496831d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa4968320:	e8 33 ff eb ff                                  	call   0x214fa4828258
    214fa4968325:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4968328:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa496832c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    214fa4968330:	4c 8b 5d b0                                     	mov    r11,QWORD PTR [rbp-0x50]
    214fa4968334:	44 8b bd d0 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x230]
    214fa496833b:	41 83 c4 01                                     	add    r12d,0x1
    214fa496833f:	41 8b 44 38 18                                  	mov    eax,DWORD PTR [r8+rdi*1+0x18]
    214fa4968344:	45 39 64 38 18                                  	cmp    DWORD PTR [r8+rdi*1+0x18],r12d
    214fa4968349:	0f 8f 71 e2 ff ff                               	jg     0x214fa49665c0
    214fa496834f:	44 8b 85 d8 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x228]
    214fa4968356:	e9 06 00 00 00                                  	jmp    0x214fa4968361
    214fa496835b:	45 33 c0                                        	xor    r8d,r8d
    214fa496835e:	41 8b f9                                        	mov    edi,r9d
    214fa4968361:	33 c0                                           	xor    eax,eax
    214fa4968363:	45 85 c0                                        	test   r8d,r8d
    214fa4968366:	0f 94 c0                                        	sete   al
    214fa4968369:	81 c7 a0 02 00 00                               	add    edi,0x2a0
    214fa496836f:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    214fa4968373:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    214fa4968377:	48 8b e5                                        	mov    rsp,rbp
    214fa496837a:	5d                                              	pop    rbp
    214fa496837b:	c2 40 00                                        	ret    0x40
    214fa496837e:	41 b8 10 00 00 00                               	mov    r8d,0x10
    214fa4968384:	41 d1 f8                                        	sar    r8d,1
    214fa4968387:	4d 63 c0                                        	movsxd r8,r8d
    214fa496838a:	48 89 95 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rdx
    214fa4968391:	48 89 bd 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdi
    214fa4968398:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    214fa496839f:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    214fa49683a4:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    214fa49683ac:	49 8b c0                                        	mov    rax,r8
    214fa49683af:	e8 7c 2b ec ff                                  	call   0x214fa482af30
    214fa49683b4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49683b8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa49683bb:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    214fa49683c2:	8b 95 50 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1b0]
    214fa49683c8:	8b bd 70 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x190]
    214fa49683ce:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    214fa49683d4:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    214fa49683d9:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    214fa49683e1:	e9 83 5e ff ff                                  	jmp    0x214fa495e269
    214fa49683e6:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    214fa49683ea:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    214fa49683ef:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    214fa49683f7:	4c 89 bd 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r15
    214fa49683fe:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    214fa4968405:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    214fa496840c:	c5 fb 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm5
    214fa4968414:	48 89 85 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rax
    214fa496841b:	4c 89 9d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r11
    214fa4968422:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    214fa4968429:	e8 12 2b ec ff                                  	call   0x214fa482af40
    214fa496842e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4968432:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4968436:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    214fa496843b:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    214fa4968443:	44 8b bd 78 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x188]
    214fa496844a:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa4968450:	8b bd 30 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1d0]
    214fa4968456:	c5 fb 10 ad 60 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1a0]
    214fa496845e:	8b 85 68 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x198]
    214fa4968464:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    214fa496846b:	44 8b 8d 58 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1a8]
    214fa4968472:	8b 75 b8                                        	mov    esi,DWORD PTR [rbp-0x48]
    214fa4968475:	8b 9d 28 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d8]
    214fa496847b:	e9 57 60 ff ff                                  	jmp    0x214fa495e4d7
    214fa4968480:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    214fa4968484:	c5 fb 11 4d d0                                  	vmovsd QWORD PTR [rbp-0x30],xmm1
    214fa4968489:	c5 f8 11 85 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm0
    214fa4968491:	4c 89 bd 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],r15
    214fa4968498:	48 89 8d 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],rcx
    214fa496849f:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    214fa49684a6:	48 89 95 38 fe ff ff                            	mov    QWORD PTR [rbp-0x1c8],rdx
    214fa49684ad:	c5 fb 11 ad 60 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1a0],xmm5
    214fa49684b5:	48 89 85 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rax
    214fa49684bc:	4c 89 a5 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r12
    214fa49684c3:	4c 89 9d 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],r11
    214fa49684ca:	4c 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r9
    214fa49684d1:	e8 6a 2a ec ff                                  	call   0x214fa482af40
    214fa49684d6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49684da:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa49684de:	c5 fb 10 4d d0                                  	vmovsd xmm1,QWORD PTR [rbp-0x30]
    214fa49684e3:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    214fa49684eb:	44 8b bd 78 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x188]
    214fa49684f2:	8b 8d 40 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1c0]
    214fa49684f8:	8b bd 30 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1d0]
    214fa49684fe:	8b 95 38 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1c8]
    214fa4968504:	c5 fb 10 ad 60 fe ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x1a0]
    214fa496850c:	8b 85 68 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x198]
    214fa4968512:	44 8b a5 20 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1e0]
    214fa4968519:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    214fa4968520:	44 8b 8d 58 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1a8]
    214fa4968527:	e9 c4 60 ff ff                                  	jmp    0x214fa495e5f0
    214fa496852c:	48 89 7d d0                                     	mov    QWORD PTR [rbp-0x30],rdi
    214fa4968530:	48 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rbx
    214fa4968537:	c5 78 11 6d a0                                  	vmovups XMMWORD PTR [rbp-0x60],xmm13
    214fa496853c:	c5 fb 11 ad 30 fd ff ff                         	vmovsd QWORD PTR [rbp-0x2d0],xmm5
    214fa4968544:	c5 fb 11 65 b8                                  	vmovsd QWORD PTR [rbp-0x48],xmm4
    214fa4968549:	c5 fb 11 b5 48 fb ff ff                         	vmovsd QWORD PTR [rbp-0x4b8],xmm6
    214fa4968551:	e8 ea 29 ec ff                                  	call   0x214fa482af40
    214fa4968556:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa496855a:	8b 7d d0                                        	mov    edi,DWORD PTR [rbp-0x30]
    214fa496855d:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    214fa4968564:	c5 78 10 6d a0                                  	vmovups xmm13,XMMWORD PTR [rbp-0x60]
    214fa4968569:	c5 fb 10 ad 30 fd ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x2d0]
    214fa4968571:	c5 fb 10 65 b8                                  	vmovsd xmm4,QWORD PTR [rbp-0x48]
    214fa4968576:	c5 fb 10 b5 48 fb ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x4b8]
    214fa496857e:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa4968586:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    214fa496858e:	48 8b 85 f0 fa ff ff                            	mov    rax,QWORD PTR [rbp-0x510]
    214fa4968595:	4c 8b a5 98 fb ff ff                            	mov    r12,QWORD PTR [rbp-0x468]
    214fa496859c:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa49685a4:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    214fa49685ac:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    214fa49685b4:	44 8b 5d 10                                     	mov    r11d,DWORD PTR [rbp+0x10]
    214fa49685b8:	44 8b 7d 20                                     	mov    r15d,DWORD PTR [rbp+0x20]
    214fa49685bc:	44 8b 8d a8 fb ff ff                            	mov    r9d,DWORD PTR [rbp-0x458]
    214fa49685c3:	41 ba 00 00 00 4f                               	mov    r10d,0x4f000000
    214fa49685c9:	c4 41 79 6e f2                                  	vmovd  xmm14,r10d
    214fa49685ce:	8b 95 50 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x2b0]
    214fa49685d4:	8b b5 28 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x1d8]
    214fa49685da:	48 8b 8d d0 fb ff ff                            	mov    rcx,QWORD PTR [rbp-0x430]
    214fa49685e1:	e9 7e 75 ff ff                                  	jmp    0x214fa495fb64
    214fa49685e6:	4c 89 a5 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r12
    214fa49685ed:	48 89 95 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rdx
    214fa49685f4:	48 89 9d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rbx
    214fa49685fb:	e8 40 29 ec ff                                  	call   0x214fa482af40
    214fa4968600:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4968604:	c5 7b 10 85 f8 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x308]
    214fa496860c:	44 8b a5 70 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x390]
    214fa4968613:	48 8b 95 60 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x3a0]
    214fa496861a:	48 8b 9d 50 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x3b0]
    214fa4968621:	4c 8b 85 40 fc ff ff                            	mov    r8,QWORD PTR [rbp-0x3c0]
    214fa4968628:	c5 f8 10 ad 90 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x270]
    214fa4968630:	c5 f8 10 b5 80 fb ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x480]
    214fa4968638:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa4968640:	c5 f8 10 9d c0 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x240]
    214fa4968648:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    214fa496864f:	4c 8b 9d 08 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f8]
    214fa4968656:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    214fa496865d:	48 8b 8d a8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x358]
    214fa4968664:	4c 8b 8d f0 fa ff ff                            	mov    r9,QWORD PTR [rbp-0x510]
    214fa496866b:	48 8b 85 98 fb ff ff                            	mov    rax,QWORD PTR [rbp-0x468]
    214fa4968672:	c5 f8 10 95 b0 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x150]
    214fa496867a:	c5 78 10 95 20 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3e0]
    214fa4968682:	c5 78 10 a5 f0 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x410]
    214fa496868a:	c5 f8 10 85 20 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2e0]
    214fa4968692:	c5 78 10 9d e0 fa ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x520]
    214fa496869a:	e9 a6 7b ff ff                                  	jmp    0x214fa4960245
    214fa496869f:	e8 9c 28 ec ff                                  	call   0x214fa482af40
    214fa49686a4:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49686a7:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49686ab:	44 8b bd 78 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x288]
    214fa49686b2:	8b 85 10 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f0]
    214fa49686b8:	8b 9d 08 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f8]
    214fa49686be:	8b 95 00 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x300]
    214fa49686c4:	c5 78 10 a5 60 fb ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x4a0]
    214fa49686cc:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa49686d4:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    214fa49686db:	c5 78 10 ad 40 ff ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0xc0]
    214fa49686e3:	c5 78 10 8d 30 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xd0]
    214fa49686eb:	c5 78 10 b5 20 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xe0]
    214fa49686f3:	c5 78 10 9d 10 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xf0]
    214fa49686fb:	44 8b a5 60 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x1a0]
    214fa4968702:	e9 c3 9f ff ff                                  	jmp    0x214fa49626ca
    214fa4968707:	e8 34 28 ec ff                                  	call   0x214fa482af40
    214fa496870c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa496870f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4968713:	8b 8d a8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x258]
    214fa4968719:	44 8b a5 b8 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x248]
    214fa4968720:	e9 fa af ff ff                                  	jmp    0x214fa496371f
    214fa4968725:	e8 16 28 ec ff                                  	call   0x214fa482af40
    214fa496872a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa496872d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4968731:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    214fa4968737:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    214fa496873e:	8b 95 60 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1a0]
    214fa4968744:	e9 1d c6 ff ff                                  	jmp    0x214fa4964d66
    214fa4968749:	e8 f2 27 ec ff                                  	call   0x214fa482af40
    214fa496874e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4968751:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4968755:	41 bf 02 00 00 00                               	mov    r15d,0x2
    214fa496875b:	48 8b 4d b0                                     	mov    rcx,QWORD PTR [rbp-0x50]
    214fa496875f:	44 8b a5 d0 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x230]
    214fa4968766:	44 8b 8d e0 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x320]
    214fa496876d:	44 8b 9d 68 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x198]
    214fa4968774:	c5 78 10 8d 60 fb ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x4a0]
    214fa496877c:	c5 78 10 95 10 fc ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x3f0]
    214fa4968784:	c5 f8 10 ad c0 fb ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x440]
    214fa496878c:	8b b5 10 fb ff ff                               	mov    esi,DWORD PTR [rbp-0x4f0]
    214fa4968792:	e9 0b ca ff ff                                  	jmp    0x214fa49651a2
    214fa4968797:	e8 a4 27 ec ff                                  	call   0x214fa482af40
    214fa496879c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa496879f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49687a3:	44 8b 5d d0                                     	mov    r11d,DWORD PTR [rbp-0x30]
    214fa49687a7:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    214fa49687ab:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    214fa49687af:	48 8b 85 70 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x290]
    214fa49687b6:	48 8b 9d 68 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x298]
    214fa49687bd:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    214fa49687c4:	c5 fb 10 ad f8 fc ff ff                         	vmovsd xmm5,QWORD PTR [rbp-0x308]
    214fa49687cc:	8b b5 e8 fc ff ff                               	mov    esi,DWORD PTR [rbp-0x318]
    214fa49687d2:	44 8b a5 e0 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x320]
    214fa49687d9:	e9 25 de ff ff                                  	jmp    0x214fa4966603
    214fa49687de:	e8 5d 27 ec ff                                  	call   0x214fa482af40
    214fa49687e3:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa49687e6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49687ea:	44 8b 8d 78 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x288]
    214fa49687f1:	44 8b bd 40 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1c0]
    214fa49687f8:	4c 8b a5 38 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1c8]
    214fa49687ff:	8b 8d 30 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x1d0]
    214fa4968805:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    214fa496880b:	8b 85 08 fd ff ff                               	mov    eax,DWORD PTR [rbp-0x2f8]
    214fa4968811:	44 8b 9d 00 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x300]
    214fa4968818:	e9 64 e0 ff ff                                  	jmp    0x214fa4966881
    214fa496881d:	e8 3e 24 ec ff                                  	call   0x214fa482ac60
    214fa4968822:	e8 39 24 ec ff                                  	call   0x214fa482ac60
    214fa4968827:	e8 34 24 ec ff                                  	call   0x214fa482ac60
    214fa496882c:	e8 2f 24 ec ff                                  	call   0x214fa482ac60
    214fa4968831:	e8 2a 24 ec ff                                  	call   0x214fa482ac60
    214fa4968836:	e8 25 24 ec ff                                  	call   0x214fa482ac60
    214fa496883b:	e8 20 24 ec ff                                  	call   0x214fa482ac60
    214fa4968840:	e8 1b 24 ec ff                                  	call   0x214fa482ac60
    214fa4968845:	e8 16 24 ec ff                                  	call   0x214fa482ac60
    214fa496884a:	e8 11 24 ec ff                                  	call   0x214fa482ac60
    214fa496884f:	e8 0c 24 ec ff                                  	call   0x214fa482ac60
    214fa4968854:	e8 07 24 ec ff                                  	call   0x214fa482ac60
    214fa4968859:	90                                              	nop
    214fa496885a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    214fa4968860:	cd 06                                           	int    0x6
    214fa4968862:	96                                              	xchg   esi,eax
    214fa4968863:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa4968864:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa4968867:	00 c7                                           	add    bh,al
    214fa4968869:	06                                              	(bad)
    214fa496886a:	96                                              	xchg   esi,eax
    214fa496886b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa496886c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa496886f:	00 bd 06 96 a4 4f                               	add    BYTE PTR [rbp+0x4fa49606],bh
    214fa4968875:	21 00                                           	and    DWORD PTR [rax],eax
    214fa4968877:	00 b2 06 96 a4 4f                               	add    BYTE PTR [rdx+0x4fa49606],dh
    214fa496887d:	21 00                                           	and    DWORD PTR [rax],eax
    214fa496887f:	00 a8 06 96 a4 4f                               	add    BYTE PTR [rax+0x4fa49606],ch
    214fa4968885:	21 00                                           	and    DWORD PTR [rax],eax
    214fa4968887:	00 9e 06 96 a4 4f                               	add    BYTE PTR [rsi+0x4fa49606],bl
    214fa496888d:	21 00                                           	and    DWORD PTR [rax],eax
    214fa496888f:	00 94 06 96 a4 4f 21                            	add    BYTE PTR [rsi+rax*1+0x214fa496],dl
    214fa4968896:	00 00                                           	add    BYTE PTR [rax],al
    214fa4968898:	a6                                              	cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
    214fa4968899:	00 00                                           	add    BYTE PTR [rax],al
    214fa496889b:	00 1c 00                                        	add    BYTE PTR [rax+rax*1],bl
    214fa496889e:	00 00                                           	add    BYTE PTR [rax],al
    214fa49688a0:	d7                                              	xlat   BYTE PTR ds:[rbx]
    214fa49688a1:	4e eb 04                                        	rex.WRX jmp 0x214fa49688a8
    214fa49688a4:	05 9c f4 01 eb                                  	add    eax,0xeb01f49c
    214fa49688a9:	04 05                                           	add    al,0x5
    214fa49688ab:	7a eb                                           	jp     0x214fa4968898
    214fa49688ad:	04 05                                           	add    al,0x5
    214fa49688af:	f4                                              	hlt
    214fa49688b0:	07                                              	(bad)
    214fa49688b1:	eb 04                                           	jmp    0x214fa49688b7
    214fa49688b3:	05 00 00 00 00                                  	add    eax,0x0
	...
