
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms4/selected/sg_packet_sample_cube_coherent-turbofan.bin:     file format binary


Disassembly of section .data:

000010402e8cb140 <.data>:
    10402e8cb140:	55                                              	push   rbp
    10402e8cb141:	48 8b ec                                        	mov    rbp,rsp
    10402e8cb144:	6a 30                                           	push   0x30
    10402e8cb146:	56                                              	push   rsi
    10402e8cb147:	48 83 ec 18                                     	sub    rsp,0x18
    10402e8cb14b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    10402e8cb14f:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    10402e8cb153:	45 85 c9                                        	test   r9d,r9d
    10402e8cb156:	0f 85 09 00 00 00                               	jne    0x10402e8cb165
    10402e8cb15c:	33 c0                                           	xor    eax,eax
    10402e8cb15e:	48 8b e5                                        	mov    rsp,rbp
    10402e8cb161:	5d                                              	pop    rbp
    10402e8cb162:	c2 08 00                                        	ret    0x8
    10402e8cb165:	8b f8                                           	mov    edi,eax
    10402e8cb167:	44 8b 44 3e 04                                  	mov    r8d,DWORD PTR [rsi+rdi*1+0x4]
    10402e8cb16c:	45 85 c0                                        	test   r8d,r8d
    10402e8cb16f:	0f 85 04 00 00 00                               	jne    0x10402e8cb179
    10402e8cb175:	33 c0                                           	xor    eax,eax
    10402e8cb177:	eb e5                                           	jmp    0x10402e8cb15e
    10402e8cb179:	45 8b d9                                        	mov    r11d,r9d
    10402e8cb17c:	41 83 e3 0f                                     	and    r11d,0xf
    10402e8cb180:	8b c9                                           	mov    ecx,ecx
    10402e8cb182:	c5 fa 6f 0c 0e                                  	vmovdqu xmm1,XMMWORD PTR [rsi+rcx*1]
    10402e8cb187:	49 ba 50 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b850
    10402e8cb191:	c4 c1 70 54 12                                  	vandps xmm2,xmm1,XMMWORD PTR [r10]
    10402e8cb196:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    10402e8cb1a0:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8cb1a5:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e8cb1a9:	c5 e8 c2 e3 02                                  	vcmpleps xmm4,xmm2,xmm3
    10402e8cb1ae:	8b d2                                           	mov    edx,edx
    10402e8cb1b0:	c5 fa 6f 2c 16                                  	vmovdqu xmm5,XMMWORD PTR [rsi+rdx*1]
    10402e8cb1b5:	4c 8b 15 cd ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcd]        # 0x10402e8cb189
    10402e8cb1bc:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    10402e8cb1c1:	c5 c8 c2 fb 02                                  	vcmpleps xmm7,xmm6,xmm3
    10402e8cb1c6:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    10402e8cb1ca:	8b db                                           	mov    ebx,ebx
    10402e8cb1cc:	c5 fa 6f 3c 1e                                  	vmovdqu xmm7,XMMWORD PTR [rsi+rbx*1]
    10402e8cb1d1:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x10402e8cb189
    10402e8cb1d8:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    10402e8cb1dd:	c5 b8 c2 db 02                                  	vcmpleps xmm3,xmm8,xmm3
    10402e8cb1e2:	c5 d9 db db                                     	vpand  xmm3,xmm4,xmm3
    10402e8cb1e6:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    10402e8cb1ea:	41 23 db                                        	and    ebx,r11d
    10402e8cb1ed:	41 3b d9                                        	cmp    ebx,r9d
    10402e8cb1f0:	0f 84 09 00 00 00                               	je     0x10402e8cb1ff
    10402e8cb1f6:	33 c0                                           	xor    eax,eax
    10402e8cb1f8:	48 8b e5                                        	mov    rsp,rbp
    10402e8cb1fb:	5d                                              	pop    rbp
    10402e8cb1fc:	c2 08 00                                        	ret    0x8
    10402e8cb1ff:	c5 b8 c2 de 02                                  	vcmpleps xmm3,xmm8,xmm6
    10402e8cb204:	c5 e8 c2 e6 02                                  	vcmpleps xmm4,xmm2,xmm6
    10402e8cb209:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    10402e8cb20d:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    10402e8cb211:	8b d3                                           	mov    edx,ebx
    10402e8cb213:	41 23 d1                                        	and    edx,r9d
    10402e8cb216:	44 3b ca                                        	cmp    r9d,edx
    10402e8cb219:	0f 84 8c 00 00 00                               	je     0x10402e8cb2ab
    10402e8cb21f:	c5 b8 c2 da 02                                  	vcmpleps xmm3,xmm8,xmm2
    10402e8cb224:	c5 c8 c2 e2 02                                  	vcmpleps xmm4,xmm6,xmm2
    10402e8cb229:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    10402e8cb22d:	c5 f8 50 cb                                     	vmovmskps ecx,xmm3
    10402e8cb231:	44 8b e3                                        	mov    r12d,ebx
    10402e8cb234:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    10402e8cb238:	45 23 e1                                        	and    r12d,r9d
    10402e8cb23b:	44 23 e1                                        	and    r12d,ecx
    10402e8cb23e:	45 3b e1                                        	cmp    r12d,r9d
    10402e8cb241:	0f 84 42 00 00 00                               	je     0x10402e8cb289
    10402e8cb247:	0b d9                                           	or     ebx,ecx
    10402e8cb249:	41 85 d9                                        	test   r9d,ebx
    10402e8cb24c:	0f 85 2e 00 00 00                               	jne    0x10402e8cb280
    10402e8cb252:	49 ba 60 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b860
    10402e8cb25c:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    10402e8cb261:	bb 04 00 00 00                                  	mov    ebx,0x4
    10402e8cb266:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8cb26b:	33 c9                                           	xor    ecx,ecx
    10402e8cb26d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    10402e8cb273:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    10402e8cb277:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    10402e8cb27b:	e9 4a 00 00 00                                  	jmp    0x10402e8cb2ca
    10402e8cb280:	33 c0                                           	xor    eax,eax
    10402e8cb282:	48 8b e5                                        	mov    rsp,rbp
    10402e8cb285:	5d                                              	pop    rbp
    10402e8cb286:	c2 08 00                                        	ret    0x8
    10402e8cb289:	bb 02 00 00 00                                  	mov    ebx,0x2
    10402e8cb28e:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    10402e8cb292:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e8cb297:	45 33 e4                                        	xor    r12d,r12d
    10402e8cb29a:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    10402e8cb29e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    10402e8cb2a2:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    10402e8cb2a6:	e9 1f 00 00 00                                  	jmp    0x10402e8cb2ca
    10402e8cb2ab:	4c 8b 15 a2 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa2]        # 0x10402e8cb254
    10402e8cb2b2:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    10402e8cb2b7:	4c 8b 15 96 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff96]        # 0x10402e8cb254
    10402e8cb2be:	c4 c1 40 57 12                                  	vxorps xmm2,xmm7,XMMWORD PTR [r10]
    10402e8cb2c3:	33 c9                                           	xor    ecx,ecx
    10402e8cb2c5:	8b d9                                           	mov    ebx,ecx
    10402e8cb2c7:	44 8b e1                                        	mov    r12d,ecx
    10402e8cb2ca:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    10402e8cb2ce:	c5 e0 c2 e5 02                                  	vcmpleps xmm4,xmm3,xmm5
    10402e8cb2d3:	c5 78 50 fc                                     	vmovmskps r15d,xmm4
    10402e8cb2d7:	45 23 fb                                        	and    r15d,r11d
    10402e8cb2da:	0f 85 58 00 00 00                               	jne    0x10402e8cb338
    10402e8cb2e0:	4c 8b 15 6d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff6d]        # 0x10402e8cb254
    10402e8cb2e7:	c4 c1 70 57 22                                  	vxorps xmm4,xmm1,XMMWORD PTR [r10]
    10402e8cb2ec:	85 c9                                           	test   ecx,ecx
    10402e8cb2ee:	0f 85 04 00 00 00                               	jne    0x10402e8cb2f8
    10402e8cb2f4:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    10402e8cb2f8:	4c 8b 15 55 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff55]        # 0x10402e8cb254
    10402e8cb2ff:	c4 c1 68 57 0a                                  	vxorps xmm1,xmm2,XMMWORD PTR [r10]
    10402e8cb304:	45 85 e4                                        	test   r12d,r12d
    10402e8cb307:	0f 84 04 00 00 00                               	je     0x10402e8cb311
    10402e8cb30d:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    10402e8cb311:	41 3b d1                                        	cmp    edx,r9d
    10402e8cb314:	0f 84 04 00 00 00                               	je     0x10402e8cb31e
    10402e8cb31a:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    10402e8cb31e:	83 cb 01                                        	or     ebx,0x1
    10402e8cb321:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8cb326:	85 c9                                           	test   ecx,ecx
    10402e8cb328:	0f 45 da                                        	cmovne ebx,edx
    10402e8cb32b:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    10402e8cb32f:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    10402e8cb333:	e9 12 00 00 00                                  	jmp    0x10402e8cb34a
    10402e8cb338:	45 3b f9                                        	cmp    r15d,r9d
    10402e8cb33b:	0f 84 09 00 00 00                               	je     0x10402e8cb34a
    10402e8cb341:	33 c0                                           	xor    eax,eax
    10402e8cb343:	48 8b e5                                        	mov    rsp,rbp
    10402e8cb346:	5d                                              	pop    rbp
    10402e8cb347:	c2 08 00                                        	ret    0x8
    10402e8cb34a:	c1 e3 06                                        	shl    ebx,0x6
    10402e8cb34d:	41 03 d8                                        	add    ebx,r8d
    10402e8cb350:	8b 94 1e 24 01 00 00                            	mov    edx,DWORD PTR [rsi+rbx*1+0x124]
    10402e8cb357:	85 d2                                           	test   edx,edx
    10402e8cb359:	0f 85 09 00 00 00                               	jne    0x10402e8cb368
    10402e8cb35f:	33 c0                                           	xor    eax,eax
    10402e8cb361:	48 8b e5                                        	mov    rsp,rbp
    10402e8cb364:	5d                                              	pop    rbp
    10402e8cb365:	c2 08 00                                        	ret    0x8
    10402e8cb368:	8b 8c 1e a4 02 00 00                            	mov    ecx,DWORD PTR [rsi+rbx*1+0x2a4]
    10402e8cb36f:	85 c9                                           	test   ecx,ecx
    10402e8cb371:	0f 8e a2 0e 00 00                               	jle    0x10402e8cc219
    10402e8cb377:	81 c3 24 04 00 00                               	add    ebx,0x424
    10402e8cb37d:	8b 1c 1e                                        	mov    ebx,DWORD PTR [rsi+rbx*1]
    10402e8cb380:	85 db                                           	test   ebx,ebx
    10402e8cb382:	0f 8e 88 0e 00 00                               	jle    0x10402e8cc210
    10402e8cb388:	44 8d 41 ff                                     	lea    r8d,[rcx-0x1]
    10402e8cb38c:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    10402e8cb396:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e8cb39b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    10402e8cb39f:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x10402e8cb38e
    10402e8cb3a6:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8cb3ab:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8cb3af:	c5 c8 c2 ed 01                                  	vcmpltps xmm5,xmm6,xmm5
    10402e8cb3b4:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    10402e8cb3b8:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    10402e8cb3bc:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    10402e8cb3c1:	c5 f0 5e cc                                     	vdivps xmm1,xmm1,xmm4
    10402e8cb3c5:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    10402e8cb3cf:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8cb3d4:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8cb3d8:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    10402e8cb3dc:	c5 e8 5e d4                                     	vdivps xmm2,xmm2,xmm4
    10402e8cb3e0:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    10402e8cb3e4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    10402e8cb3ee:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e8cb3f3:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    10402e8cb3f7:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    10402e8cb3fb:	44 8b 5c 3e 14                                  	mov    r11d,DWORD PTR [rsi+rdi*1+0x14]
    10402e8cb400:	44 8b 64 3e 10                                  	mov    r12d,DWORD PTR [rsi+rdi*1+0x10]
    10402e8cb405:	45 33 ff                                        	xor    r15d,r15d
    10402e8cb408:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    10402e8cb40f:	41 0f 95 c7                                     	setne  r15b
    10402e8cb413:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    10402e8cb41a:	41 0f 95 c4                                     	setne  r12b
    10402e8cb41e:	45 0f b6 e4                                     	movzx  r12d,r12b
    10402e8cb422:	48 89 75 e8                                     	mov    QWORD PTR [rbp-0x18],rsi
    10402e8cb426:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    10402e8cb42a:	48 89 55 d8                                     	mov    QWORD PTR [rbp-0x28],rdx
    10402e8cb42e:	45 23 e7                                        	and    r12d,r15d
    10402e8cb431:	0f 85 0d 00 00 00                               	jne    0x10402e8cb444
    10402e8cb437:	c5 e0 5f d2                                     	vmaxps xmm2,xmm3,xmm2
    10402e8cb43b:	c5 d0 5d d2                                     	vminps xmm2,xmm5,xmm2
    10402e8cb43f:	e9 0a 00 00 00                                  	jmp    0x10402e8cb44e
    10402e8cb444:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    10402e8cb44a:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    10402e8cb44e:	c5 f0 59 cc                                     	vmulps xmm1,xmm1,xmm4
    10402e8cb452:	8b 7c 3e 0c                                     	mov    edi,DWORD PTR [rsi+rdi*1+0xc]
    10402e8cb456:	44 8b d1                                        	mov    r10d,ecx
    10402e8cb459:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    10402e8cb45e:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    10402e8cb463:	c5 d8 59 d2                                     	vmulps xmm2,xmm4,xmm2
    10402e8cb467:	44 8d 7b ff                                     	lea    r15d,[rbx-0x1]
    10402e8cb46b:	41 8b f7                                        	mov    esi,r15d
    10402e8cb46e:	23 f3                                           	and    esi,ebx
    10402e8cb470:	33 c0                                           	xor    eax,eax
    10402e8cb472:	41 8b d0                                        	mov    edx,r8d
    10402e8cb475:	41 85 c8                                        	test   r8d,ecx
    10402e8cb478:	0f 45 d0                                        	cmovne edx,eax
    10402e8cb47b:	44 8b d3                                        	mov    r10d,ebx
    10402e8cb47e:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    10402e8cb483:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    10402e8cb488:	45 33 c9                                        	xor    r9d,r9d
    10402e8cb48b:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    10402e8cb492:	41 0f 95 c1                                     	setne  r9b
    10402e8cb496:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    10402e8cb49d:	41 0f 95 c3                                     	setne  r11b
    10402e8cb4a1:	45 0f b6 db                                     	movzx  r11d,r11b
    10402e8cb4a5:	45 23 d9                                        	and    r11d,r9d
    10402e8cb4a8:	0f 85 0d 00 00 00                               	jne    0x10402e8cb4bb
    10402e8cb4ae:	c5 e0 5f c9                                     	vmaxps xmm1,xmm3,xmm1
    10402e8cb4b2:	c5 d0 5d c9                                     	vminps xmm1,xmm5,xmm1
    10402e8cb4b6:	e9 0a 00 00 00                                  	jmp    0x10402e8cb4c5
    10402e8cb4bb:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    10402e8cb4c1:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    10402e8cb4c5:	c5 d8 59 c9                                     	vmulps xmm1,xmm4,xmm1
    10402e8cb4c9:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    10402e8cb4d3:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8cb4d8:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e8cb4dc:	c5 f0 58 e3                                     	vaddps xmm4,xmm1,xmm3
    10402e8cb4e0:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    10402e8cb4e6:	0f 84 5f 00 00 00                               	je     0x10402e8cb54b
    10402e8cb4ec:	c4 e3 79 08 cc 09                               	vroundps xmm1,xmm4,0x9
    10402e8cb4f2:	4c 8b 15 90 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc90]        # 0x10402e8cb189
    10402e8cb4f9:	c4 c1 70 54 32                                  	vandps xmm6,xmm1,XMMWORD PTR [r10]
    10402e8cb4fe:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    10402e8cb508:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8cb50d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8cb511:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    10402e8cb516:	49 ba 40 b9 70 c9 23 63 00 00                   	movabs r10,0x6323c970b940
    10402e8cb520:	c5 70 c2 f9 00                                  	vcmpeqps xmm15,xmm1,xmm1
    10402e8cb525:	c4 41 70 54 c7                                  	vandps xmm8,xmm1,xmm15
    10402e8cb52a:	c4 41 70 c2 3a 0d                               	vcmpgeps xmm15,xmm1,XMMWORD PTR [r10]
    10402e8cb530:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    10402e8cb535:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    10402e8cb53a:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    10402e8cb53e:	c5 f9 28 d9                                     	vmovapd xmm3,xmm1
    10402e8cb542:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    10402e8cb546:	e9 48 00 00 00                                  	jmp    0x10402e8cb593
    10402e8cb54b:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    10402e8cb551:	4c 8b 15 31 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc31]        # 0x10402e8cb189
    10402e8cb558:	c4 c1 60 54 22                                  	vandps xmm4,xmm3,XMMWORD PTR [r10]
    10402e8cb55d:	4c 8b 15 9c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9c]        # 0x10402e8cb500
    10402e8cb564:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8cb569:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8cb56d:	c5 d8 c2 f7 01                                  	vcmpltps xmm6,xmm4,xmm7
    10402e8cb572:	4c 8b 15 9f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9f]        # 0x10402e8cb518
    10402e8cb579:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    10402e8cb57e:	c4 41 60 54 c7                                  	vandps xmm8,xmm3,xmm15
    10402e8cb583:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    10402e8cb589:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    10402e8cb58e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    10402e8cb593:	c4 e3 79 08 e2 09                               	vroundps xmm4,xmm2,0x9
    10402e8cb599:	4c 8b 15 78 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff78]        # 0x10402e8cb518
    10402e8cb5a0:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    10402e8cb5a5:	c4 41 58 54 cf                                  	vandps xmm9,xmm4,xmm15
    10402e8cb5aa:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    10402e8cb5b0:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    10402e8cb5b5:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    10402e8cb5ba:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    10402e8cb5c4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8cb5c9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8cb5ce:	4c 8b 15 b4 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb4]        # 0x10402e8cb189
    10402e8cb5d5:	c4 41 58 54 1a                                  	vandps xmm11,xmm4,XMMWORD PTR [r10]
    10402e8cb5da:	c5 a0 c2 ff 01                                  	vcmpltps xmm7,xmm11,xmm7
    10402e8cb5df:	c4 41 41 df fa                                  	vpandn xmm15,xmm7,xmm10
    10402e8cb5e4:	c5 b1 db ff                                     	vpand  xmm7,xmm9,xmm7
    10402e8cb5e8:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8cb5ed:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    10402e8cb5f2:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8cb5f7:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8cb5fc:	c4 42 41 3d db                                  	vpmaxsd xmm11,xmm7,xmm11
    10402e8cb601:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    10402e8cb606:	45 85 e4                                        	test   r12d,r12d
    10402e8cb609:	0f 84 4b 00 00 00                               	je     0x10402e8cb65a
    10402e8cb60f:	c5 79 6e da                                     	vmovd  xmm11,edx
    10402e8cb613:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8cb618:	c4 41 41 db db                                  	vpand  xmm11,xmm7,xmm11
    10402e8cb61d:	85 d2                                           	test   edx,edx
    10402e8cb61f:	0f 85 35 00 00 00                               	jne    0x10402e8cb65a
    10402e8cb625:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    10402e8cb629:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8cb62e:	c4 41 41 66 e1                                  	vpcmpgtd xmm12,xmm7,xmm9
    10402e8cb633:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    10402e8cb638:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8cb63d:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    10402e8cb642:	c5 79 66 ef                                     	vpcmpgtd xmm13,xmm0,xmm7
    10402e8cb646:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    10402e8cb64b:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    10402e8cb650:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8cb655:	c4 41 41 fe db                                  	vpaddd xmm11,xmm7,xmm11
    10402e8cb65a:	45 8b c7                                        	mov    r8d,r15d
    10402e8cb65d:	85 f6                                           	test   esi,esi
    10402e8cb65f:	44 0f 45 c0                                     	cmovne r8d,eax
    10402e8cb663:	c4 41 49 df fa                                  	vpandn xmm15,xmm6,xmm10
    10402e8cb668:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    10402e8cb66c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8cb671:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    10402e8cb676:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8cb67b:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    10402e8cb680:	c4 42 49 3d d2                                  	vpmaxsd xmm10,xmm6,xmm10
    10402e8cb685:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    10402e8cb68a:	45 85 db                                        	test   r11d,r11d
    10402e8cb68d:	0f 84 4b 00 00 00                               	je     0x10402e8cb6de
    10402e8cb693:	c4 41 79 6e d0                                  	vmovd  xmm10,r8d
    10402e8cb698:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8cb69d:	c4 41 49 db d2                                  	vpand  xmm10,xmm6,xmm10
    10402e8cb6a2:	45 85 c0                                        	test   r8d,r8d
    10402e8cb6a5:	0f 85 33 00 00 00                               	jne    0x10402e8cb6de
    10402e8cb6ab:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    10402e8cb6af:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    10402e8cb6b4:	c4 41 49 66 e0                                  	vpcmpgtd xmm12,xmm6,xmm8
    10402e8cb6b9:	c4 41 19 db e2                                  	vpand  xmm12,xmm12,xmm10
    10402e8cb6be:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8cb6c3:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    10402e8cb6c8:	c5 f9 66 c6                                     	vpcmpgtd xmm0,xmm0,xmm6
    10402e8cb6cc:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    10402e8cb6d1:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    10402e8cb6d5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8cb6da:	c5 49 fe d0                                     	vpaddd xmm10,xmm6,xmm0
    10402e8cb6de:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    10402e8cb6e2:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8cb6e7:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    10402e8cb6ec:	c4 41 29 fe e3                                  	vpaddd xmm12,xmm10,xmm11
    10402e8cb6f1:	c4 63 79 16 e1 03                               	vpextrd ecx,xmm12,0x3
    10402e8cb6f7:	c4 63 79 16 e6 02                               	vpextrd esi,xmm12,0x2
    10402e8cb6fd:	c4 43 79 16 e1 01                               	vpextrd r9d,xmm12,0x1
    10402e8cb703:	c4 41 79 7e e7                                  	vmovd  r15d,xmm12
    10402e8cb708:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    10402e8cb70e:	0f 84 d2 08 00 00                               	je     0x10402e8cbfe6
    10402e8cb714:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    10402e8cb71e:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8cb723:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8cb728:	c4 c1 41 fe fc                                  	vpaddd xmm7,xmm7,xmm12
    10402e8cb72d:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    10402e8cb732:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    10402e8cb737:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    10402e8cb73c:	45 85 e4                                        	test   r12d,r12d
    10402e8cb73f:	0f 84 46 00 00 00                               	je     0x10402e8cb78b
    10402e8cb745:	c5 79 6e ea                                     	vmovd  xmm13,edx
    10402e8cb749:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8cb74e:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    10402e8cb753:	85 d2                                           	test   edx,edx
    10402e8cb755:	0f 85 30 00 00 00                               	jne    0x10402e8cb78b
    10402e8cb75b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    10402e8cb760:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    10402e8cb765:	c5 31 db c8                                     	vpand  xmm9,xmm9,xmm0
    10402e8cb769:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8cb76e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    10402e8cb773:	c5 11 66 ef                                     	vpcmpgtd xmm13,xmm13,xmm7
    10402e8cb777:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    10402e8cb77c:	c4 41 79 db cd                                  	vpand  xmm9,xmm0,xmm13
    10402e8cb781:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8cb786:	c4 41 41 fe e9                                  	vpaddd xmm13,xmm7,xmm9
    10402e8cb78b:	c4 c1 49 fe f4                                  	vpaddd xmm6,xmm6,xmm12
    10402e8cb790:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    10402e8cb794:	c4 e2 49 3d ff                                  	vpmaxsd xmm7,xmm6,xmm7
    10402e8cb799:	c4 c2 41 39 f8                                  	vpminsd xmm7,xmm7,xmm8
    10402e8cb79e:	45 85 db                                        	test   r11d,r11d
    10402e8cb7a1:	0f 84 4f 00 00 00                               	je     0x10402e8cb7f6
    10402e8cb7a7:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
    10402e8cb7ac:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    10402e8cb7b1:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    10402e8cb7b5:	45 85 c0                                        	test   r8d,r8d
    10402e8cb7b8:	0f 85 38 00 00 00                               	jne    0x10402e8cb7f6
    10402e8cb7be:	c5 f9 6e fb                                     	vmovd  xmm7,ebx
    10402e8cb7c2:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    10402e8cb7c7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8cb7cc:	c4 41 49 66 c0                                  	vpcmpgtd xmm8,xmm6,xmm8
    10402e8cb7d1:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    10402e8cb7d5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8cb7da:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    10402e8cb7df:	c5 31 66 ce                                     	vpcmpgtd xmm9,xmm9,xmm6
    10402e8cb7e3:	c4 41 31 df f8                                  	vpandn xmm15,xmm9,xmm8
    10402e8cb7e8:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    10402e8cb7ed:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8cb7f2:	c5 c9 fe ff                                     	vpaddd xmm7,xmm6,xmm7
    10402e8cb7f6:	c4 e2 41 40 c0                                  	vpmulld xmm0,xmm7,xmm0
    10402e8cb7fb:	c4 c1 79 fe f3                                  	vpaddd xmm6,xmm0,xmm11
    10402e8cb800:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    10402e8cb804:	0f 85 16 00 00 00                               	jne    0x10402e8cb820
    10402e8cb80a:	c4 c1 21 fe fc                                  	vpaddd xmm7,xmm11,xmm12
    10402e8cb80f:	c5 91 76 ff                                     	vpcmpeqd xmm7,xmm13,xmm7
    10402e8cb813:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
    10402e8cb817:	83 fb 0f                                        	cmp    ebx,0xf
    10402e8cb81a:	0f 84 72 03 00 00                               	je     0x10402e8cbb92
    10402e8cb820:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    10402e8cb823:	83 e3 08                                        	and    ebx,0x8
    10402e8cb826:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    10402e8cb829:	83 e2 04                                        	and    edx,0x4
    10402e8cb82c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8cb82f:	83 e7 02                                        	and    edi,0x2
    10402e8cb832:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    10402e8cb836:	41 83 e0 01                                     	and    r8d,0x1
    10402e8cb83a:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    10402e8cb83e:	0f 84 7e 00 00 00                               	je     0x10402e8cb8c2
    10402e8cb844:	45 85 c0                                        	test   r8d,r8d
    10402e8cb847:	0f 85 10 00 00 00                               	jne    0x10402e8cb85d
    10402e8cb84d:	4c 8b d8                                        	mov    r11,rax
    10402e8cb850:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    10402e8cb854:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    10402e8cb858:	e9 10 00 00 00                                  	jmp    0x10402e8cb86d
    10402e8cb85d:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    10402e8cb861:	47 8d 1c b8                                     	lea    r11d,[r8+r15*4]
    10402e8cb865:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    10402e8cb869:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    10402e8cb86d:	85 ff                                           	test   edi,edi
    10402e8cb86f:	0f 85 08 00 00 00                               	jne    0x10402e8cb87d
    10402e8cb875:	48 8b f8                                        	mov    rdi,rax
    10402e8cb878:	e9 08 00 00 00                                  	jmp    0x10402e8cb885
    10402e8cb87d:	43 8d 3c 88                                     	lea    edi,[r8+r9*4]
    10402e8cb881:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    10402e8cb885:	85 d2                                           	test   edx,edx
    10402e8cb887:	0f 85 08 00 00 00                               	jne    0x10402e8cb895
    10402e8cb88d:	48 8b d0                                        	mov    rdx,rax
    10402e8cb890:	e9 08 00 00 00                                  	jmp    0x10402e8cb89d
    10402e8cb895:	41 8d 14 b0                                     	lea    edx,[r8+rsi*4]
    10402e8cb899:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    10402e8cb89d:	85 db                                           	test   ebx,ebx
    10402e8cb89f:	0f 85 10 00 00 00                               	jne    0x10402e8cb8b5
    10402e8cb8a5:	8b f2                                           	mov    esi,edx
    10402e8cb8a7:	48 8b c8                                        	mov    rcx,rax
    10402e8cb8aa:	41 8b d8                                        	mov    ebx,r8d
    10402e8cb8ad:	49 8b d4                                        	mov    rdx,r12
    10402e8cb8b0:	e9 2f 00 00 00                                  	jmp    0x10402e8cb8e4
    10402e8cb8b5:	8b f2                                           	mov    esi,edx
    10402e8cb8b7:	41 8b d8                                        	mov    ebx,r8d
    10402e8cb8ba:	49 8b d4                                        	mov    rdx,r12
    10402e8cb8bd:	e9 1c 00 00 00                                  	jmp    0x10402e8cb8de
    10402e8cb8c2:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    10402e8cb8c5:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    10402e8cb8c9:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    10402e8cb8cd:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8cb8d0:	46 8d 04 bb                                     	lea    r8d,[rbx+r15*4]
    10402e8cb8d4:	46 8b 1c 02                                     	mov    r11d,DWORD PTR [rdx+r8*1]
    10402e8cb8d8:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    10402e8cb8db:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    10402e8cb8de:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    10402e8cb8e1:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    10402e8cb8e4:	c4 c1 11 fe fa                                  	vpaddd xmm7,xmm13,xmm10
    10402e8cb8e9:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    10402e8cb8ee:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8cb8f3:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    10402e8cb8f7:	0f 84 74 00 00 00                               	je     0x10402e8cb971
    10402e8cb8fd:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    10402e8cb901:	0f 85 08 00 00 00                               	jne    0x10402e8cb90f
    10402e8cb907:	4c 8b c0                                        	mov    r8,rax
    10402e8cb90a:	e9 0d 00 00 00                                  	jmp    0x10402e8cb91c
    10402e8cb90f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    10402e8cb914:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    10402e8cb918:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    10402e8cb91c:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    10402e8cb920:	0f 85 08 00 00 00                               	jne    0x10402e8cb92e
    10402e8cb926:	4c 8b c8                                        	mov    r9,rax
    10402e8cb929:	e9 0e 00 00 00                                  	jmp    0x10402e8cb93c
    10402e8cb92e:	c4 c3 79 16 f9 01                               	vpextrd r9d,xmm7,0x1
    10402e8cb934:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    10402e8cb938:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    10402e8cb93c:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    10402e8cb940:	0f 85 08 00 00 00                               	jne    0x10402e8cb94e
    10402e8cb946:	4c 8b d8                                        	mov    r11,rax
    10402e8cb949:	e9 0e 00 00 00                                  	jmp    0x10402e8cb95c
    10402e8cb94e:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    10402e8cb954:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    10402e8cb958:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8cb95c:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    10402e8cb960:	0f 85 34 00 00 00                               	jne    0x10402e8cb99a
    10402e8cb966:	45 8b e0                                        	mov    r12d,r8d
    10402e8cb969:	4c 8b c0                                        	mov    r8,rax
    10402e8cb96c:	e9 40 00 00 00                                  	jmp    0x10402e8cb9b1
    10402e8cb971:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    10402e8cb977:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    10402e8cb97b:	46 8b 0c 02                                     	mov    r9d,DWORD PTR [rdx+r8*1]
    10402e8cb97f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    10402e8cb984:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    10402e8cb988:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    10402e8cb98c:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    10402e8cb992:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    10402e8cb996:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8cb99a:	c4 c3 79 16 fc 03                               	vpextrd r12d,xmm7,0x3
    10402e8cb9a0:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    10402e8cb9a4:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    10402e8cb9a8:	45 8b d0                                        	mov    r10d,r8d
    10402e8cb9ab:	45 8b c4                                        	mov    r8d,r12d
    10402e8cb9ae:	45 8b e2                                        	mov    r12d,r10d
    10402e8cb9b1:	c4 e3 39 22 ff 01                               	vpinsrd xmm7,xmm8,edi,0x1
    10402e8cb9b7:	c4 41 79 6e c4                                  	vmovd  xmm8,r12d
    10402e8cb9bc:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8cb9c1:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    10402e8cb9c7:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    10402e8cb9cb:	0f 84 71 00 00 00                               	je     0x10402e8cba42
    10402e8cb9d1:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    10402e8cb9d5:	0f 85 08 00 00 00                               	jne    0x10402e8cb9e3
    10402e8cb9db:	48 8b f8                                        	mov    rdi,rax
    10402e8cb9de:	e9 0a 00 00 00                                  	jmp    0x10402e8cb9ed
    10402e8cb9e3:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    10402e8cb9e7:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    10402e8cb9ea:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8cb9ed:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    10402e8cb9f1:	0f 85 08 00 00 00                               	jne    0x10402e8cb9ff
    10402e8cb9f7:	4c 8b c8                                        	mov    r9,rax
    10402e8cb9fa:	e9 0e 00 00 00                                  	jmp    0x10402e8cba0d
    10402e8cb9ff:	c4 c3 79 16 f1 01                               	vpextrd r9d,xmm6,0x1
    10402e8cba05:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    10402e8cba09:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    10402e8cba0d:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    10402e8cba11:	0f 85 08 00 00 00                               	jne    0x10402e8cba1f
    10402e8cba17:	4c 8b e0                                        	mov    r12,rax
    10402e8cba1a:	e9 0e 00 00 00                                  	jmp    0x10402e8cba2d
    10402e8cba1f:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    10402e8cba25:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    10402e8cba29:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    10402e8cba2d:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    10402e8cba31:	0f 85 30 00 00 00                               	jne    0x10402e8cba67
    10402e8cba37:	44 8b ff                                        	mov    r15d,edi
    10402e8cba3a:	48 8b f8                                        	mov    rdi,rax
    10402e8cba3d:	e9 3c 00 00 00                                  	jmp    0x10402e8cba7e
    10402e8cba42:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    10402e8cba48:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    10402e8cba4b:	44 8b 0c 3a                                     	mov    r9d,DWORD PTR [rdx+rdi*1]
    10402e8cba4f:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    10402e8cba53:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    10402e8cba56:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8cba59:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    10402e8cba5f:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    10402e8cba63:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    10402e8cba67:	c4 c3 79 16 f7 03                               	vpextrd r15d,xmm6,0x3
    10402e8cba6d:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    10402e8cba71:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    10402e8cba75:	45 8b d7                                        	mov    r10d,r15d
    10402e8cba78:	44 8b ff                                        	mov    r15d,edi
    10402e8cba7b:	41 8b fa                                        	mov    edi,r10d
    10402e8cba7e:	c4 e3 41 22 f6 02                               	vpinsrd xmm6,xmm7,esi,0x2
    10402e8cba84:	c4 c3 39 22 fb 02                               	vpinsrd xmm7,xmm8,r11d,0x2
    10402e8cba8a:	c4 c1 79 fe c5                                  	vpaddd xmm0,xmm0,xmm13
    10402e8cba8f:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    10402e8cba94:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8cba99:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    10402e8cba9f:	c4 43 39 22 c4 02                               	vpinsrd xmm8,xmm8,r12d,0x2
    10402e8cbaa5:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    10402e8cbaa9:	0f 84 6b 00 00 00                               	je     0x10402e8cbb1a
    10402e8cbaaf:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    10402e8cbab3:	0f 85 08 00 00 00                               	jne    0x10402e8cbac1
    10402e8cbab9:	48 8b f0                                        	mov    rsi,rax
    10402e8cbabc:	e9 0a 00 00 00                                  	jmp    0x10402e8cbacb
    10402e8cbac1:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    10402e8cbac5:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    10402e8cbac8:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    10402e8cbacb:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    10402e8cbacf:	0f 85 08 00 00 00                               	jne    0x10402e8cbadd
    10402e8cbad5:	4c 8b c8                                        	mov    r9,rax
    10402e8cbad8:	e9 0e 00 00 00                                  	jmp    0x10402e8cbaeb
    10402e8cbadd:	c4 c3 79 16 c1 01                               	vpextrd r9d,xmm0,0x1
    10402e8cbae3:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    10402e8cbae7:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    10402e8cbaeb:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    10402e8cbaef:	0f 85 08 00 00 00                               	jne    0x10402e8cbafd
    10402e8cbaf5:	4c 8b d8                                        	mov    r11,rax
    10402e8cbaf8:	e9 0e 00 00 00                                  	jmp    0x10402e8cbb0b
    10402e8cbafd:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    10402e8cbb03:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    10402e8cbb07:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8cbb0b:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    10402e8cbb0f:	0f 85 2a 00 00 00                               	jne    0x10402e8cbb3f
    10402e8cbb15:	e9 34 00 00 00                                  	jmp    0x10402e8cbb4e
    10402e8cbb1a:	c4 e3 79 16 c6 01                               	vpextrd esi,xmm0,0x1
    10402e8cbb20:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    10402e8cbb23:	44 8b 0c 32                                     	mov    r9d,DWORD PTR [rdx+rsi*1]
    10402e8cbb27:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    10402e8cbb2b:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    10402e8cbb2e:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    10402e8cbb31:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    10402e8cbb37:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    10402e8cbb3b:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8cbb3f:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    10402e8cbb45:	42 8d 1c a3                                     	lea    ebx,[rbx+r12*4]
    10402e8cbb49:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    10402e8cbb4c:	8b c3                                           	mov    eax,ebx
    10402e8cbb4e:	c4 e3 49 22 c1 03                               	vpinsrd xmm0,xmm6,ecx,0x3
    10402e8cbb54:	c4 c3 41 22 f0 03                               	vpinsrd xmm6,xmm7,r8d,0x3
    10402e8cbb5a:	c5 f9 6e fe                                     	vmovd  xmm7,esi
    10402e8cbb5e:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    10402e8cbb63:	c4 c3 41 22 f9 01                               	vpinsrd xmm7,xmm7,r9d,0x1
    10402e8cbb69:	c4 c3 41 22 fb 02                               	vpinsrd xmm7,xmm7,r11d,0x2
    10402e8cbb6f:	c4 e3 41 22 f8 03                               	vpinsrd xmm7,xmm7,eax,0x3
    10402e8cbb75:	c4 63 39 22 c7 03                               	vpinsrd xmm8,xmm8,edi,0x3
    10402e8cbb7b:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    10402e8cbb7f:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8cbb84:	c4 41 79 28 c7                                  	vmovapd xmm8,xmm15
    10402e8cbb89:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8cbb8d:	e9 86 00 00 00                                  	jmp    0x10402e8cbc18
    10402e8cbb92:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    10402e8cbb95:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    10402e8cbb99:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    10402e8cbb9d:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    10402e8cbba2:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    10402e8cbba6:	c5 fb 10 3c 3a                                  	vmovsd xmm7,QWORD PTR [rdx+rdi*1]
    10402e8cbbab:	c5 f9 6c c7                                     	vpunpcklqdq xmm0,xmm0,xmm7
    10402e8cbbaf:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    10402e8cbbb2:	c5 fb 10 3c 32                                  	vmovsd xmm7,QWORD PTR [rdx+rsi*1]
    10402e8cbbb7:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    10402e8cbbba:	c5 7b 10 04 0a                                  	vmovsd xmm8,QWORD PTR [rdx+rcx*1]
    10402e8cbbbf:	c4 c1 41 6c f8                                  	vpunpcklqdq xmm7,xmm7,xmm8
    10402e8cbbc4:	c5 78 c6 c7 dd                                  	vshufps xmm8,xmm0,xmm7,0xdd
    10402e8cbbc9:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    10402e8cbbce:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    10402e8cbbd3:	c5 f9 7e f1                                     	vmovd  ecx,xmm6
    10402e8cbbd7:	03 cb                                           	add    ecx,ebx
    10402e8cbbd9:	c5 fb 10 3c 0a                                  	vmovsd xmm7,QWORD PTR [rdx+rcx*1]
    10402e8cbbde:	c4 e3 79 16 f1 01                               	vpextrd ecx,xmm6,0x1
    10402e8cbbe4:	03 cb                                           	add    ecx,ebx
    10402e8cbbe6:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    10402e8cbbeb:	c4 c1 41 6c f9                                  	vpunpcklqdq xmm7,xmm7,xmm9
    10402e8cbbf0:	c4 e3 79 16 f1 02                               	vpextrd ecx,xmm6,0x2
    10402e8cbbf6:	03 cb                                           	add    ecx,ebx
    10402e8cbbf8:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    10402e8cbbfd:	c4 e3 79 16 f1 03                               	vpextrd ecx,xmm6,0x3
    10402e8cbc03:	03 d9                                           	add    ebx,ecx
    10402e8cbc05:	c5 fb 10 34 1a                                  	vmovsd xmm6,QWORD PTR [rdx+rbx*1]
    10402e8cbc0a:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    10402e8cbc0e:	c5 40 c6 ce dd                                  	vshufps xmm9,xmm7,xmm6,0xdd
    10402e8cbc13:	c5 c0 c6 f6 88                                  	vshufps xmm6,xmm7,xmm6,0x88
    10402e8cbc18:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    10402e8cbc1c:	c5 d0 5c d9                                     	vsubps xmm3,xmm5,xmm1
    10402e8cbc20:	c5 e8 5c d4                                     	vsubps xmm2,xmm2,xmm4
    10402e8cbc24:	c5 d0 5c e2                                     	vsubps xmm4,xmm5,xmm2
    10402e8cbc28:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    10402e8cbc2d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbc32:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e8cbc38:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e8cbc3d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbc42:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e8cbc47:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e8cbc4b:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e8cbc4f:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e8cbc54:	c5 d8 59 ed                                     	vmulps xmm5,xmm4,xmm5
    10402e8cbc58:	c4 c1 41 72 d0 18                               	vpsrld xmm7,xmm8,0x18
    10402e8cbc5e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbc63:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e8cbc69:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e8cbc6e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbc73:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e8cbc78:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e8cbc7c:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e8cbc80:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e8cbc85:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    10402e8cbc89:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    10402e8cbc8d:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    10402e8cbc91:	c5 c1 72 d6 18                                  	vpsrld xmm7,xmm6,0x18
    10402e8cbc96:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbc9b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e8cbca1:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e8cbca6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbcab:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e8cbcb0:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e8cbcb4:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e8cbcb8:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e8cbcbd:	c5 d8 59 ff                                     	vmulps xmm7,xmm4,xmm7
    10402e8cbcc1:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    10402e8cbcc7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbccc:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    10402e8cbcd2:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    10402e8cbcd7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbcdc:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    10402e8cbce2:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    10402e8cbce7:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    10402e8cbcec:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    10402e8cbcf1:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
    10402e8cbcf6:	c4 c1 40 58 fa                                  	vaddps xmm7,xmm7,xmm10
    10402e8cbcfb:	c5 f0 59 ff                                     	vmulps xmm7,xmm1,xmm7
    10402e8cbcff:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    10402e8cbd03:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    10402e8cbd0d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8cbd12:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8cbd16:	c5 79 db d7                                     	vpand  xmm10,xmm0,xmm7
    10402e8cbd1a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbd1f:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    10402e8cbd25:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    10402e8cbd2a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbd2f:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    10402e8cbd35:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    10402e8cbd3a:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    10402e8cbd3f:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    10402e8cbd44:	c4 41 58 59 d2                                  	vmulps xmm10,xmm4,xmm10
    10402e8cbd49:	c5 39 db df                                     	vpand  xmm11,xmm8,xmm7
    10402e8cbd4d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbd52:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    10402e8cbd58:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    10402e8cbd5d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbd62:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    10402e8cbd68:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    10402e8cbd6d:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    10402e8cbd72:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    10402e8cbd77:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    10402e8cbd7c:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    10402e8cbd81:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    10402e8cbd86:	c5 49 db df                                     	vpand  xmm11,xmm6,xmm7
    10402e8cbd8a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbd8f:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    10402e8cbd95:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    10402e8cbd9a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbd9f:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    10402e8cbda5:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    10402e8cbdaa:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    10402e8cbdaf:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    10402e8cbdb4:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    10402e8cbdb9:	c5 31 db e7                                     	vpand  xmm12,xmm9,xmm7
    10402e8cbdbd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbdc2:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    10402e8cbdc8:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    10402e8cbdcd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbdd2:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    10402e8cbdd8:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    10402e8cbddd:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    10402e8cbde2:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    10402e8cbde7:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    10402e8cbdec:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    10402e8cbdf1:	c4 41 70 59 db                                  	vmulps xmm11,xmm1,xmm11
    10402e8cbdf6:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    10402e8cbdfb:	c5 a1 72 d0 10                                  	vpsrld xmm11,xmm0,0x10
    10402e8cbe00:	c5 21 db df                                     	vpand  xmm11,xmm11,xmm7
    10402e8cbe04:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbe09:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    10402e8cbe0f:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    10402e8cbe14:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbe19:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    10402e8cbe1f:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    10402e8cbe24:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    10402e8cbe29:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    10402e8cbe2e:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    10402e8cbe33:	c4 c1 19 72 d0 10                               	vpsrld xmm12,xmm8,0x10
    10402e8cbe39:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    10402e8cbe3d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbe42:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    10402e8cbe48:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    10402e8cbe4d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbe52:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    10402e8cbe58:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    10402e8cbe5d:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    10402e8cbe62:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    10402e8cbe67:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    10402e8cbe6c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    10402e8cbe71:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    10402e8cbe76:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    10402e8cbe7b:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    10402e8cbe7f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbe84:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    10402e8cbe8a:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    10402e8cbe8f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbe94:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    10402e8cbe9a:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    10402e8cbe9f:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    10402e8cbea4:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    10402e8cbea9:	c4 41 58 59 e4                                  	vmulps xmm12,xmm4,xmm12
    10402e8cbeae:	c4 c1 11 72 d1 10                               	vpsrld xmm13,xmm9,0x10
    10402e8cbeb4:	c5 11 db ef                                     	vpand  xmm13,xmm13,xmm7
    10402e8cbeb8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbebd:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    10402e8cbec3:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    10402e8cbec8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbecd:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    10402e8cbed3:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    10402e8cbed8:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    10402e8cbedd:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    10402e8cbee2:	c4 41 68 59 ed                                  	vmulps xmm13,xmm2,xmm13
    10402e8cbee7:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    10402e8cbeec:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    10402e8cbef1:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    10402e8cbef6:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    10402e8cbefb:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8cbeff:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbf04:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8cbf0a:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8cbf0f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbf14:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8cbf19:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8cbf1d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8cbf21:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8cbf26:	c5 d8 59 c0                                     	vmulps xmm0,xmm4,xmm0
    10402e8cbf2a:	c4 c1 39 72 d0 08                               	vpsrld xmm8,xmm8,0x8
    10402e8cbf30:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    10402e8cbf34:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbf39:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8cbf3f:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8cbf44:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbf49:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8cbf4f:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8cbf54:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8cbf59:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8cbf5e:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
    10402e8cbf63:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    10402e8cbf68:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    10402e8cbf6c:	c5 e1 72 d6 08                                  	vpsrld xmm3,xmm6,0x8
    10402e8cbf71:	c5 e1 db df                                     	vpand  xmm3,xmm3,xmm7
    10402e8cbf75:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbf7a:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8cbf80:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8cbf85:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbf8a:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8cbf8f:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8cbf93:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8cbf97:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8cbf9c:	c5 d8 59 db                                     	vmulps xmm3,xmm4,xmm3
    10402e8cbfa0:	c4 c1 59 72 d1 08                               	vpsrld xmm4,xmm9,0x8
    10402e8cbfa6:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    10402e8cbfaa:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cbfaf:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e8cbfb5:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e8cbfba:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cbfbf:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e8cbfc4:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e8cbfc8:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e8cbfcc:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e8cbfd1:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    10402e8cbfd5:	c5 e0 58 d2                                     	vaddps xmm2,xmm3,xmm2
    10402e8cbfd9:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    10402e8cbfdd:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    10402e8cbfe1:	e9 84 01 00 00                                  	jmp    0x10402e8cc16a
    10402e8cbfe6:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    10402e8cbfea:	0f 84 68 00 00 00                               	je     0x10402e8cc058
    10402e8cbff0:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    10402e8cbff4:	0f 85 0f 00 00 00                               	jne    0x10402e8cc009
    10402e8cbffa:	48 8b f8                                        	mov    rdi,rax
    10402e8cbffd:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    10402e8cc001:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    10402e8cc004:	e9 0e 00 00 00                                  	jmp    0x10402e8cc017
    10402e8cc009:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    10402e8cc00c:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    10402e8cc010:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    10402e8cc014:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8cc017:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    10402e8cc01b:	0f 85 08 00 00 00                               	jne    0x10402e8cc029
    10402e8cc021:	4c 8b c0                                        	mov    r8,rax
    10402e8cc024:	e9 08 00 00 00                                  	jmp    0x10402e8cc031
    10402e8cc029:	46 8d 04 8b                                     	lea    r8d,[rbx+r9*4]
    10402e8cc02d:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    10402e8cc031:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    10402e8cc035:	0f 85 08 00 00 00                               	jne    0x10402e8cc043
    10402e8cc03b:	48 8b f0                                        	mov    rsi,rax
    10402e8cc03e:	e9 06 00 00 00                                  	jmp    0x10402e8cc049
    10402e8cc043:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    10402e8cc046:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    10402e8cc049:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    10402e8cc04d:	0f 85 21 00 00 00                               	jne    0x10402e8cc074
    10402e8cc053:	e9 24 00 00 00                                  	jmp    0x10402e8cc07c
    10402e8cc058:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    10402e8cc05b:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    10402e8cc05e:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    10402e8cc062:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    10402e8cc065:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    10402e8cc069:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    10402e8cc06d:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    10402e8cc071:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8cc074:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    10402e8cc077:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    10402e8cc07a:	8b c3                                           	mov    eax,ebx
    10402e8cc07c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    10402e8cc080:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8cc085:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    10402e8cc08b:	c4 e3 79 22 c6 02                               	vpinsrd xmm0,xmm0,esi,0x2
    10402e8cc091:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    10402e8cc097:	c5 f1 72 d0 18                                  	vpsrld xmm1,xmm0,0x18
    10402e8cc09c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cc0a1:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8cc0a7:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8cc0ac:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cc0b1:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8cc0b6:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8cc0ba:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8cc0be:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8cc0c3:	4c 8b 15 3b fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc3b]        # 0x10402e8cbd05
    10402e8cc0ca:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8cc0cf:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8cc0d3:	c5 f9 db da                                     	vpand  xmm3,xmm0,xmm2
    10402e8cc0d7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cc0dc:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8cc0e2:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8cc0e7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cc0ec:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8cc0f1:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8cc0f5:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8cc0f9:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8cc0fe:	c5 d9 72 d0 10                                  	vpsrld xmm4,xmm0,0x10
    10402e8cc103:	c5 d9 db e2                                     	vpand  xmm4,xmm4,xmm2
    10402e8cc107:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cc10c:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e8cc112:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e8cc117:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cc11c:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e8cc121:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e8cc125:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e8cc129:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e8cc12e:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    10402e8cc133:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    10402e8cc137:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8cc13c:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8cc142:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8cc147:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8cc14c:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8cc151:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8cc155:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8cc159:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8cc15e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    10402e8cc162:	c5 79 28 dc                                     	vmovapd xmm11,xmm4
    10402e8cc166:	c5 79 28 d3                                     	vmovapd xmm10,xmm3
    10402e8cc16a:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    10402e8cc174:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    10402e8cc179:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    10402e8cc17d:	c5 d0 59 d1                                     	vmulps xmm2,xmm5,xmm1
    10402e8cc181:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8cc185:	41 83 e1 01                                     	and    r9d,0x1
    10402e8cc189:	41 f7 d9                                        	neg    r9d
    10402e8cc18c:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    10402e8cc191:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8cc196:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8cc19a:	41 c1 e1 1e                                     	shl    r9d,0x1e
    10402e8cc19e:	41 c1 f9 1f                                     	sar    r9d,0x1f
    10402e8cc1a2:	c4 c3 61 22 d9 01                               	vpinsrd xmm3,xmm3,r9d,0x1
    10402e8cc1a8:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8cc1ac:	41 c1 e1 1d                                     	shl    r9d,0x1d
    10402e8cc1b0:	41 c1 f9 1f                                     	sar    r9d,0x1f
    10402e8cc1b4:	c4 c3 61 22 d9 02                               	vpinsrd xmm3,xmm3,r9d,0x2
    10402e8cc1ba:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8cc1be:	41 c1 e1 1c                                     	shl    r9d,0x1c
    10402e8cc1c2:	41 c1 f9 1f                                     	sar    r9d,0x1f
    10402e8cc1c6:	c4 c3 61 22 d9 03                               	vpinsrd xmm3,xmm3,r9d,0x3
    10402e8cc1cc:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    10402e8cc1d0:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    10402e8cc1d3:	8b db                                           	mov    ebx,ebx
    10402e8cc1d5:	c5 fa 7f 54 1a 30                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x30],xmm2
    10402e8cc1db:	c5 a0 59 d1                                     	vmulps xmm2,xmm11,xmm1
    10402e8cc1df:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    10402e8cc1e3:	c5 fa 7f 54 1a 20                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x20],xmm2
    10402e8cc1e9:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    10402e8cc1ed:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    10402e8cc1f1:	c5 fa 7f 44 1a 10                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x10],xmm0
    10402e8cc1f7:	c5 a8 59 c1                                     	vmulps xmm0,xmm10,xmm1
    10402e8cc1fb:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    10402e8cc1ff:	c5 fa 7f 04 1a                                  	vmovdqu XMMWORD PTR [rdx+rbx*1],xmm0
    10402e8cc204:	b8 01 00 00 00                                  	mov    eax,0x1
    10402e8cc209:	48 8b e5                                        	mov    rsp,rbp
    10402e8cc20c:	5d                                              	pop    rbp
    10402e8cc20d:	c2 08 00                                        	ret    0x8
    10402e8cc210:	33 c0                                           	xor    eax,eax
    10402e8cc212:	48 8b e5                                        	mov    rsp,rbp
    10402e8cc215:	5d                                              	pop    rbp
    10402e8cc216:	c2 08 00                                        	ret    0x8
    10402e8cc219:	33 c0                                           	xor    eax,eax
    10402e8cc21b:	48 8b e5                                        	mov    rsp,rbp
    10402e8cc21e:	5d                                              	pop    rbp
    10402e8cc21f:	c2 08 00                                        	ret    0x8
    10402e8cc222:	90                                              	nop
    10402e8cc223:	90                                              	nop
    10402e8cc224:	07                                              	(bad)
    10402e8cc225:	00 00                                           	add    BYTE PTR [rax],al
    10402e8cc227:	00 08                                           	add    BYTE PTR [rax],cl
	...
