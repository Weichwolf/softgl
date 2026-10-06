
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms2/selected/sg_packet_sample_cube_coherent-turbofan.bin:     file format binary


Disassembly of section .data:

000023a8d35471c0 <.data>:
    23a8d35471c0:	55                                              	push   rbp
    23a8d35471c1:	48 8b ec                                        	mov    rbp,rsp
    23a8d35471c4:	6a 30                                           	push   0x30
    23a8d35471c6:	56                                              	push   rsi
    23a8d35471c7:	48 83 ec 18                                     	sub    rsp,0x18
    23a8d35471cb:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    23a8d35471cf:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    23a8d35471d3:	45 85 c9                                        	test   r9d,r9d
    23a8d35471d6:	0f 85 09 00 00 00                               	jne    0x23a8d35471e5
    23a8d35471dc:	33 c0                                           	xor    eax,eax
    23a8d35471de:	48 8b e5                                        	mov    rsp,rbp
    23a8d35471e1:	5d                                              	pop    rbp
    23a8d35471e2:	c2 08 00                                        	ret    0x8
    23a8d35471e5:	8b f8                                           	mov    edi,eax
    23a8d35471e7:	44 8b 44 3e 04                                  	mov    r8d,DWORD PTR [rsi+rdi*1+0x4]
    23a8d35471ec:	45 85 c0                                        	test   r8d,r8d
    23a8d35471ef:	0f 85 04 00 00 00                               	jne    0x23a8d35471f9
    23a8d35471f5:	33 c0                                           	xor    eax,eax
    23a8d35471f7:	eb e5                                           	jmp    0x23a8d35471de
    23a8d35471f9:	45 8b d9                                        	mov    r11d,r9d
    23a8d35471fc:	41 83 e3 0f                                     	and    r11d,0xf
    23a8d3547200:	8b c9                                           	mov    ecx,ecx
    23a8d3547202:	c5 fa 6f 0c 0e                                  	vmovdqu xmm1,XMMWORD PTR [rsi+rcx*1]
    23a8d3547207:	49 ba 50 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32850
    23a8d3547211:	c4 c1 70 54 12                                  	vandps xmm2,xmm1,XMMWORD PTR [r10]
    23a8d3547216:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    23a8d3547220:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3547225:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d3547229:	c5 e8 c2 e3 02                                  	vcmpleps xmm4,xmm2,xmm3
    23a8d354722e:	8b d2                                           	mov    edx,edx
    23a8d3547230:	c5 fa 6f 2c 16                                  	vmovdqu xmm5,XMMWORD PTR [rsi+rdx*1]
    23a8d3547235:	4c 8b 15 cd ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcd]        # 0x23a8d3547209
    23a8d354723c:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    23a8d3547241:	c5 c8 c2 fb 02                                  	vcmpleps xmm7,xmm6,xmm3
    23a8d3547246:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    23a8d354724a:	8b db                                           	mov    ebx,ebx
    23a8d354724c:	c5 fa 6f 3c 1e                                  	vmovdqu xmm7,XMMWORD PTR [rsi+rbx*1]
    23a8d3547251:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x23a8d3547209
    23a8d3547258:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    23a8d354725d:	c5 b8 c2 db 02                                  	vcmpleps xmm3,xmm8,xmm3
    23a8d3547262:	c5 d9 db db                                     	vpand  xmm3,xmm4,xmm3
    23a8d3547266:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    23a8d354726a:	41 23 db                                        	and    ebx,r11d
    23a8d354726d:	41 3b d9                                        	cmp    ebx,r9d
    23a8d3547270:	0f 84 09 00 00 00                               	je     0x23a8d354727f
    23a8d3547276:	33 c0                                           	xor    eax,eax
    23a8d3547278:	48 8b e5                                        	mov    rsp,rbp
    23a8d354727b:	5d                                              	pop    rbp
    23a8d354727c:	c2 08 00                                        	ret    0x8
    23a8d354727f:	c5 b8 c2 de 02                                  	vcmpleps xmm3,xmm8,xmm6
    23a8d3547284:	c5 e8 c2 e6 02                                  	vcmpleps xmm4,xmm2,xmm6
    23a8d3547289:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    23a8d354728d:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    23a8d3547291:	8b d3                                           	mov    edx,ebx
    23a8d3547293:	41 23 d1                                        	and    edx,r9d
    23a8d3547296:	44 3b ca                                        	cmp    r9d,edx
    23a8d3547299:	0f 84 8c 00 00 00                               	je     0x23a8d354732b
    23a8d354729f:	c5 b8 c2 da 02                                  	vcmpleps xmm3,xmm8,xmm2
    23a8d35472a4:	c5 c8 c2 e2 02                                  	vcmpleps xmm4,xmm6,xmm2
    23a8d35472a9:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    23a8d35472ad:	c5 f8 50 cb                                     	vmovmskps ecx,xmm3
    23a8d35472b1:	44 8b e3                                        	mov    r12d,ebx
    23a8d35472b4:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    23a8d35472b8:	45 23 e1                                        	and    r12d,r9d
    23a8d35472bb:	44 23 e1                                        	and    r12d,ecx
    23a8d35472be:	45 3b e1                                        	cmp    r12d,r9d
    23a8d35472c1:	0f 84 42 00 00 00                               	je     0x23a8d3547309
    23a8d35472c7:	0b d9                                           	or     ebx,ecx
    23a8d35472c9:	41 85 d9                                        	test   r9d,ebx
    23a8d35472cc:	0f 85 2e 00 00 00                               	jne    0x23a8d3547300
    23a8d35472d2:	49 ba 60 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32860
    23a8d35472dc:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    23a8d35472e1:	bb 04 00 00 00                                  	mov    ebx,0x4
    23a8d35472e6:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d35472eb:	33 c9                                           	xor    ecx,ecx
    23a8d35472ed:	41 bc 01 00 00 00                               	mov    r12d,0x1
    23a8d35472f3:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    23a8d35472f7:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    23a8d35472fb:	e9 4a 00 00 00                                  	jmp    0x23a8d354734a
    23a8d3547300:	33 c0                                           	xor    eax,eax
    23a8d3547302:	48 8b e5                                        	mov    rsp,rbp
    23a8d3547305:	5d                                              	pop    rbp
    23a8d3547306:	c2 08 00                                        	ret    0x8
    23a8d3547309:	bb 02 00 00 00                                  	mov    ebx,0x2
    23a8d354730e:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    23a8d3547312:	b9 01 00 00 00                                  	mov    ecx,0x1
    23a8d3547317:	45 33 e4                                        	xor    r12d,r12d
    23a8d354731a:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    23a8d354731e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    23a8d3547322:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    23a8d3547326:	e9 1f 00 00 00                                  	jmp    0x23a8d354734a
    23a8d354732b:	4c 8b 15 a2 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa2]        # 0x23a8d35472d4
    23a8d3547332:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    23a8d3547337:	4c 8b 15 96 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff96]        # 0x23a8d35472d4
    23a8d354733e:	c4 c1 40 57 12                                  	vxorps xmm2,xmm7,XMMWORD PTR [r10]
    23a8d3547343:	33 c9                                           	xor    ecx,ecx
    23a8d3547345:	8b d9                                           	mov    ebx,ecx
    23a8d3547347:	44 8b e1                                        	mov    r12d,ecx
    23a8d354734a:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    23a8d354734e:	c5 e0 c2 e5 02                                  	vcmpleps xmm4,xmm3,xmm5
    23a8d3547353:	c5 78 50 fc                                     	vmovmskps r15d,xmm4
    23a8d3547357:	45 23 fb                                        	and    r15d,r11d
    23a8d354735a:	0f 85 58 00 00 00                               	jne    0x23a8d35473b8
    23a8d3547360:	4c 8b 15 6d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff6d]        # 0x23a8d35472d4
    23a8d3547367:	c4 c1 70 57 22                                  	vxorps xmm4,xmm1,XMMWORD PTR [r10]
    23a8d354736c:	85 c9                                           	test   ecx,ecx
    23a8d354736e:	0f 85 04 00 00 00                               	jne    0x23a8d3547378
    23a8d3547374:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    23a8d3547378:	4c 8b 15 55 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff55]        # 0x23a8d35472d4
    23a8d354737f:	c4 c1 68 57 0a                                  	vxorps xmm1,xmm2,XMMWORD PTR [r10]
    23a8d3547384:	45 85 e4                                        	test   r12d,r12d
    23a8d3547387:	0f 84 04 00 00 00                               	je     0x23a8d3547391
    23a8d354738d:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    23a8d3547391:	41 3b d1                                        	cmp    edx,r9d
    23a8d3547394:	0f 84 04 00 00 00                               	je     0x23a8d354739e
    23a8d354739a:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    23a8d354739e:	83 cb 01                                        	or     ebx,0x1
    23a8d35473a1:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d35473a6:	85 c9                                           	test   ecx,ecx
    23a8d35473a8:	0f 45 da                                        	cmovne ebx,edx
    23a8d35473ab:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    23a8d35473af:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    23a8d35473b3:	e9 12 00 00 00                                  	jmp    0x23a8d35473ca
    23a8d35473b8:	45 3b f9                                        	cmp    r15d,r9d
    23a8d35473bb:	0f 84 09 00 00 00                               	je     0x23a8d35473ca
    23a8d35473c1:	33 c0                                           	xor    eax,eax
    23a8d35473c3:	48 8b e5                                        	mov    rsp,rbp
    23a8d35473c6:	5d                                              	pop    rbp
    23a8d35473c7:	c2 08 00                                        	ret    0x8
    23a8d35473ca:	c1 e3 06                                        	shl    ebx,0x6
    23a8d35473cd:	41 03 d8                                        	add    ebx,r8d
    23a8d35473d0:	8b 94 1e 24 01 00 00                            	mov    edx,DWORD PTR [rsi+rbx*1+0x124]
    23a8d35473d7:	85 d2                                           	test   edx,edx
    23a8d35473d9:	0f 85 09 00 00 00                               	jne    0x23a8d35473e8
    23a8d35473df:	33 c0                                           	xor    eax,eax
    23a8d35473e1:	48 8b e5                                        	mov    rsp,rbp
    23a8d35473e4:	5d                                              	pop    rbp
    23a8d35473e5:	c2 08 00                                        	ret    0x8
    23a8d35473e8:	8b 8c 1e a4 02 00 00                            	mov    ecx,DWORD PTR [rsi+rbx*1+0x2a4]
    23a8d35473ef:	85 c9                                           	test   ecx,ecx
    23a8d35473f1:	0f 8e a2 0e 00 00                               	jle    0x23a8d3548299
    23a8d35473f7:	81 c3 24 04 00 00                               	add    ebx,0x424
    23a8d35473fd:	8b 1c 1e                                        	mov    ebx,DWORD PTR [rsi+rbx*1]
    23a8d3547400:	85 db                                           	test   ebx,ebx
    23a8d3547402:	0f 8e 88 0e 00 00                               	jle    0x23a8d3548290
    23a8d3547408:	44 8d 41 ff                                     	lea    r8d,[rcx-0x1]
    23a8d354740c:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    23a8d3547416:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d354741b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    23a8d354741f:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x23a8d354740e
    23a8d3547426:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d354742b:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d354742f:	c5 c8 c2 ed 01                                  	vcmpltps xmm5,xmm6,xmm5
    23a8d3547434:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    23a8d3547438:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    23a8d354743c:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    23a8d3547441:	c5 f0 5e cc                                     	vdivps xmm1,xmm1,xmm4
    23a8d3547445:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    23a8d354744f:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d3547454:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d3547458:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    23a8d354745c:	c5 e8 5e d4                                     	vdivps xmm2,xmm2,xmm4
    23a8d3547460:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    23a8d3547464:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    23a8d354746e:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d3547473:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    23a8d3547477:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    23a8d354747b:	44 8b 5c 3e 14                                  	mov    r11d,DWORD PTR [rsi+rdi*1+0x14]
    23a8d3547480:	44 8b 64 3e 10                                  	mov    r12d,DWORD PTR [rsi+rdi*1+0x10]
    23a8d3547485:	45 33 ff                                        	xor    r15d,r15d
    23a8d3547488:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    23a8d354748f:	41 0f 95 c7                                     	setne  r15b
    23a8d3547493:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    23a8d354749a:	41 0f 95 c4                                     	setne  r12b
    23a8d354749e:	45 0f b6 e4                                     	movzx  r12d,r12b
    23a8d35474a2:	48 89 75 e8                                     	mov    QWORD PTR [rbp-0x18],rsi
    23a8d35474a6:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    23a8d35474aa:	48 89 55 d8                                     	mov    QWORD PTR [rbp-0x28],rdx
    23a8d35474ae:	45 23 e7                                        	and    r12d,r15d
    23a8d35474b1:	0f 85 0d 00 00 00                               	jne    0x23a8d35474c4
    23a8d35474b7:	c5 e0 5f d2                                     	vmaxps xmm2,xmm3,xmm2
    23a8d35474bb:	c5 d0 5d d2                                     	vminps xmm2,xmm5,xmm2
    23a8d35474bf:	e9 0a 00 00 00                                  	jmp    0x23a8d35474ce
    23a8d35474c4:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    23a8d35474ca:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    23a8d35474ce:	c5 f0 59 cc                                     	vmulps xmm1,xmm1,xmm4
    23a8d35474d2:	8b 7c 3e 0c                                     	mov    edi,DWORD PTR [rsi+rdi*1+0xc]
    23a8d35474d6:	44 8b d1                                        	mov    r10d,ecx
    23a8d35474d9:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    23a8d35474de:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    23a8d35474e3:	c5 d8 59 d2                                     	vmulps xmm2,xmm4,xmm2
    23a8d35474e7:	44 8d 7b ff                                     	lea    r15d,[rbx-0x1]
    23a8d35474eb:	41 8b f7                                        	mov    esi,r15d
    23a8d35474ee:	23 f3                                           	and    esi,ebx
    23a8d35474f0:	33 c0                                           	xor    eax,eax
    23a8d35474f2:	41 8b d0                                        	mov    edx,r8d
    23a8d35474f5:	41 85 c8                                        	test   r8d,ecx
    23a8d35474f8:	0f 45 d0                                        	cmovne edx,eax
    23a8d35474fb:	44 8b d3                                        	mov    r10d,ebx
    23a8d35474fe:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    23a8d3547503:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    23a8d3547508:	45 33 c9                                        	xor    r9d,r9d
    23a8d354750b:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    23a8d3547512:	41 0f 95 c1                                     	setne  r9b
    23a8d3547516:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    23a8d354751d:	41 0f 95 c3                                     	setne  r11b
    23a8d3547521:	45 0f b6 db                                     	movzx  r11d,r11b
    23a8d3547525:	45 23 d9                                        	and    r11d,r9d
    23a8d3547528:	0f 85 0d 00 00 00                               	jne    0x23a8d354753b
    23a8d354752e:	c5 e0 5f c9                                     	vmaxps xmm1,xmm3,xmm1
    23a8d3547532:	c5 d0 5d c9                                     	vminps xmm1,xmm5,xmm1
    23a8d3547536:	e9 0a 00 00 00                                  	jmp    0x23a8d3547545
    23a8d354753b:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    23a8d3547541:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    23a8d3547545:	c5 d8 59 c9                                     	vmulps xmm1,xmm4,xmm1
    23a8d3547549:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    23a8d3547553:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3547558:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d354755c:	c5 f0 58 e3                                     	vaddps xmm4,xmm1,xmm3
    23a8d3547560:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    23a8d3547566:	0f 84 5f 00 00 00                               	je     0x23a8d35475cb
    23a8d354756c:	c4 e3 79 08 cc 09                               	vroundps xmm1,xmm4,0x9
    23a8d3547572:	4c 8b 15 90 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc90]        # 0x23a8d3547209
    23a8d3547579:	c4 c1 70 54 32                                  	vandps xmm6,xmm1,XMMWORD PTR [r10]
    23a8d354757e:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    23a8d3547588:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d354758d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d3547591:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    23a8d3547596:	49 ba 40 29 a3 be 86 62 00 00                   	movabs r10,0x6286bea32940
    23a8d35475a0:	c5 70 c2 f9 00                                  	vcmpeqps xmm15,xmm1,xmm1
    23a8d35475a5:	c4 41 70 54 c7                                  	vandps xmm8,xmm1,xmm15
    23a8d35475aa:	c4 41 70 c2 3a 0d                               	vcmpgeps xmm15,xmm1,XMMWORD PTR [r10]
    23a8d35475b0:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    23a8d35475b5:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    23a8d35475ba:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    23a8d35475be:	c5 f9 28 d9                                     	vmovapd xmm3,xmm1
    23a8d35475c2:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    23a8d35475c6:	e9 48 00 00 00                                  	jmp    0x23a8d3547613
    23a8d35475cb:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    23a8d35475d1:	4c 8b 15 31 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc31]        # 0x23a8d3547209
    23a8d35475d8:	c4 c1 60 54 22                                  	vandps xmm4,xmm3,XMMWORD PTR [r10]
    23a8d35475dd:	4c 8b 15 9c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9c]        # 0x23a8d3547580
    23a8d35475e4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d35475e9:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d35475ed:	c5 d8 c2 f7 01                                  	vcmpltps xmm6,xmm4,xmm7
    23a8d35475f2:	4c 8b 15 9f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9f]        # 0x23a8d3547598
    23a8d35475f9:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    23a8d35475fe:	c4 41 60 54 c7                                  	vandps xmm8,xmm3,xmm15
    23a8d3547603:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    23a8d3547609:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    23a8d354760e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    23a8d3547613:	c4 e3 79 08 e2 09                               	vroundps xmm4,xmm2,0x9
    23a8d3547619:	4c 8b 15 78 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff78]        # 0x23a8d3547598
    23a8d3547620:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    23a8d3547625:	c4 41 58 54 cf                                  	vandps xmm9,xmm4,xmm15
    23a8d354762a:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    23a8d3547630:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    23a8d3547635:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    23a8d354763a:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    23a8d3547644:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d3547649:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d354764e:	4c 8b 15 b4 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb4]        # 0x23a8d3547209
    23a8d3547655:	c4 41 58 54 1a                                  	vandps xmm11,xmm4,XMMWORD PTR [r10]
    23a8d354765a:	c5 a0 c2 ff 01                                  	vcmpltps xmm7,xmm11,xmm7
    23a8d354765f:	c4 41 41 df fa                                  	vpandn xmm15,xmm7,xmm10
    23a8d3547664:	c5 b1 db ff                                     	vpand  xmm7,xmm9,xmm7
    23a8d3547668:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d354766d:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    23a8d3547672:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d3547677:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d354767c:	c4 42 41 3d db                                  	vpmaxsd xmm11,xmm7,xmm11
    23a8d3547681:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    23a8d3547686:	45 85 e4                                        	test   r12d,r12d
    23a8d3547689:	0f 84 4b 00 00 00                               	je     0x23a8d35476da
    23a8d354768f:	c5 79 6e da                                     	vmovd  xmm11,edx
    23a8d3547693:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d3547698:	c4 41 41 db db                                  	vpand  xmm11,xmm7,xmm11
    23a8d354769d:	85 d2                                           	test   edx,edx
    23a8d354769f:	0f 85 35 00 00 00                               	jne    0x23a8d35476da
    23a8d35476a5:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    23a8d35476a9:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d35476ae:	c4 41 41 66 e1                                  	vpcmpgtd xmm12,xmm7,xmm9
    23a8d35476b3:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    23a8d35476b8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d35476bd:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    23a8d35476c2:	c5 79 66 ef                                     	vpcmpgtd xmm13,xmm0,xmm7
    23a8d35476c6:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    23a8d35476cb:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    23a8d35476d0:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    23a8d35476d5:	c4 41 41 fe db                                  	vpaddd xmm11,xmm7,xmm11
    23a8d35476da:	45 8b c7                                        	mov    r8d,r15d
    23a8d35476dd:	85 f6                                           	test   esi,esi
    23a8d35476df:	44 0f 45 c0                                     	cmovne r8d,eax
    23a8d35476e3:	c4 41 49 df fa                                  	vpandn xmm15,xmm6,xmm10
    23a8d35476e8:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    23a8d35476ec:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d35476f1:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    23a8d35476f6:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    23a8d35476fb:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d3547700:	c4 42 49 3d d2                                  	vpmaxsd xmm10,xmm6,xmm10
    23a8d3547705:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    23a8d354770a:	45 85 db                                        	test   r11d,r11d
    23a8d354770d:	0f 84 4b 00 00 00                               	je     0x23a8d354775e
    23a8d3547713:	c4 41 79 6e d0                                  	vmovd  xmm10,r8d
    23a8d3547718:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d354771d:	c4 41 49 db d2                                  	vpand  xmm10,xmm6,xmm10
    23a8d3547722:	45 85 c0                                        	test   r8d,r8d
    23a8d3547725:	0f 85 33 00 00 00                               	jne    0x23a8d354775e
    23a8d354772b:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    23a8d354772f:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    23a8d3547734:	c4 41 49 66 e0                                  	vpcmpgtd xmm12,xmm6,xmm8
    23a8d3547739:	c4 41 19 db e2                                  	vpand  xmm12,xmm12,xmm10
    23a8d354773e:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d3547743:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    23a8d3547748:	c5 f9 66 c6                                     	vpcmpgtd xmm0,xmm0,xmm6
    23a8d354774c:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    23a8d3547751:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    23a8d3547755:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d354775a:	c5 49 fe d0                                     	vpaddd xmm10,xmm6,xmm0
    23a8d354775e:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    23a8d3547762:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d3547767:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    23a8d354776c:	c4 41 29 fe e3                                  	vpaddd xmm12,xmm10,xmm11
    23a8d3547771:	c4 63 79 16 e1 03                               	vpextrd ecx,xmm12,0x3
    23a8d3547777:	c4 63 79 16 e6 02                               	vpextrd esi,xmm12,0x2
    23a8d354777d:	c4 43 79 16 e1 01                               	vpextrd r9d,xmm12,0x1
    23a8d3547783:	c4 41 79 7e e7                                  	vmovd  r15d,xmm12
    23a8d3547788:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    23a8d354778e:	0f 84 d2 08 00 00                               	je     0x23a8d3548066
    23a8d3547794:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    23a8d354779e:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d35477a3:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d35477a8:	c4 c1 41 fe fc                                  	vpaddd xmm7,xmm7,xmm12
    23a8d35477ad:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    23a8d35477b2:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    23a8d35477b7:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    23a8d35477bc:	45 85 e4                                        	test   r12d,r12d
    23a8d35477bf:	0f 84 46 00 00 00                               	je     0x23a8d354780b
    23a8d35477c5:	c5 79 6e ea                                     	vmovd  xmm13,edx
    23a8d35477c9:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d35477ce:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    23a8d35477d3:	85 d2                                           	test   edx,edx
    23a8d35477d5:	0f 85 30 00 00 00                               	jne    0x23a8d354780b
    23a8d35477db:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    23a8d35477e0:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    23a8d35477e5:	c5 31 db c8                                     	vpand  xmm9,xmm9,xmm0
    23a8d35477e9:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d35477ee:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    23a8d35477f3:	c5 11 66 ef                                     	vpcmpgtd xmm13,xmm13,xmm7
    23a8d35477f7:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    23a8d35477fc:	c4 41 79 db cd                                  	vpand  xmm9,xmm0,xmm13
    23a8d3547801:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d3547806:	c4 41 41 fe e9                                  	vpaddd xmm13,xmm7,xmm9
    23a8d354780b:	c4 c1 49 fe f4                                  	vpaddd xmm6,xmm6,xmm12
    23a8d3547810:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    23a8d3547814:	c4 e2 49 3d ff                                  	vpmaxsd xmm7,xmm6,xmm7
    23a8d3547819:	c4 c2 41 39 f8                                  	vpminsd xmm7,xmm7,xmm8
    23a8d354781e:	45 85 db                                        	test   r11d,r11d
    23a8d3547821:	0f 84 4f 00 00 00                               	je     0x23a8d3547876
    23a8d3547827:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
    23a8d354782c:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    23a8d3547831:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    23a8d3547835:	45 85 c0                                        	test   r8d,r8d
    23a8d3547838:	0f 85 38 00 00 00                               	jne    0x23a8d3547876
    23a8d354783e:	c5 f9 6e fb                                     	vmovd  xmm7,ebx
    23a8d3547842:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    23a8d3547847:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d354784c:	c4 41 49 66 c0                                  	vpcmpgtd xmm8,xmm6,xmm8
    23a8d3547851:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    23a8d3547855:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d354785a:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    23a8d354785f:	c5 31 66 ce                                     	vpcmpgtd xmm9,xmm9,xmm6
    23a8d3547863:	c4 41 31 df f8                                  	vpandn xmm15,xmm9,xmm8
    23a8d3547868:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    23a8d354786d:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d3547872:	c5 c9 fe ff                                     	vpaddd xmm7,xmm6,xmm7
    23a8d3547876:	c4 e2 41 40 c0                                  	vpmulld xmm0,xmm7,xmm0
    23a8d354787b:	c4 c1 79 fe f3                                  	vpaddd xmm6,xmm0,xmm11
    23a8d3547880:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    23a8d3547884:	0f 85 16 00 00 00                               	jne    0x23a8d35478a0
    23a8d354788a:	c4 c1 21 fe fc                                  	vpaddd xmm7,xmm11,xmm12
    23a8d354788f:	c5 91 76 ff                                     	vpcmpeqd xmm7,xmm13,xmm7
    23a8d3547893:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
    23a8d3547897:	83 fb 0f                                        	cmp    ebx,0xf
    23a8d354789a:	0f 84 72 03 00 00                               	je     0x23a8d3547c12
    23a8d35478a0:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    23a8d35478a3:	83 e3 08                                        	and    ebx,0x8
    23a8d35478a6:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    23a8d35478a9:	83 e2 04                                        	and    edx,0x4
    23a8d35478ac:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d35478af:	83 e7 02                                        	and    edi,0x2
    23a8d35478b2:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    23a8d35478b6:	41 83 e0 01                                     	and    r8d,0x1
    23a8d35478ba:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    23a8d35478be:	0f 84 7e 00 00 00                               	je     0x23a8d3547942
    23a8d35478c4:	45 85 c0                                        	test   r8d,r8d
    23a8d35478c7:	0f 85 10 00 00 00                               	jne    0x23a8d35478dd
    23a8d35478cd:	4c 8b d8                                        	mov    r11,rax
    23a8d35478d0:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    23a8d35478d4:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    23a8d35478d8:	e9 10 00 00 00                                  	jmp    0x23a8d35478ed
    23a8d35478dd:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    23a8d35478e1:	47 8d 1c b8                                     	lea    r11d,[r8+r15*4]
    23a8d35478e5:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    23a8d35478e9:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    23a8d35478ed:	85 ff                                           	test   edi,edi
    23a8d35478ef:	0f 85 08 00 00 00                               	jne    0x23a8d35478fd
    23a8d35478f5:	48 8b f8                                        	mov    rdi,rax
    23a8d35478f8:	e9 08 00 00 00                                  	jmp    0x23a8d3547905
    23a8d35478fd:	43 8d 3c 88                                     	lea    edi,[r8+r9*4]
    23a8d3547901:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    23a8d3547905:	85 d2                                           	test   edx,edx
    23a8d3547907:	0f 85 08 00 00 00                               	jne    0x23a8d3547915
    23a8d354790d:	48 8b d0                                        	mov    rdx,rax
    23a8d3547910:	e9 08 00 00 00                                  	jmp    0x23a8d354791d
    23a8d3547915:	41 8d 14 b0                                     	lea    edx,[r8+rsi*4]
    23a8d3547919:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    23a8d354791d:	85 db                                           	test   ebx,ebx
    23a8d354791f:	0f 85 10 00 00 00                               	jne    0x23a8d3547935
    23a8d3547925:	8b f2                                           	mov    esi,edx
    23a8d3547927:	48 8b c8                                        	mov    rcx,rax
    23a8d354792a:	41 8b d8                                        	mov    ebx,r8d
    23a8d354792d:	49 8b d4                                        	mov    rdx,r12
    23a8d3547930:	e9 2f 00 00 00                                  	jmp    0x23a8d3547964
    23a8d3547935:	8b f2                                           	mov    esi,edx
    23a8d3547937:	41 8b d8                                        	mov    ebx,r8d
    23a8d354793a:	49 8b d4                                        	mov    rdx,r12
    23a8d354793d:	e9 1c 00 00 00                                  	jmp    0x23a8d354795e
    23a8d3547942:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    23a8d3547945:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    23a8d3547949:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    23a8d354794d:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3547950:	46 8d 04 bb                                     	lea    r8d,[rbx+r15*4]
    23a8d3547954:	46 8b 1c 02                                     	mov    r11d,DWORD PTR [rdx+r8*1]
    23a8d3547958:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d354795b:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    23a8d354795e:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    23a8d3547961:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    23a8d3547964:	c4 c1 11 fe fa                                  	vpaddd xmm7,xmm13,xmm10
    23a8d3547969:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    23a8d354796e:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    23a8d3547973:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    23a8d3547977:	0f 84 74 00 00 00                               	je     0x23a8d35479f1
    23a8d354797d:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    23a8d3547981:	0f 85 08 00 00 00                               	jne    0x23a8d354798f
    23a8d3547987:	4c 8b c0                                        	mov    r8,rax
    23a8d354798a:	e9 0d 00 00 00                                  	jmp    0x23a8d354799c
    23a8d354798f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    23a8d3547994:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d3547998:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    23a8d354799c:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    23a8d35479a0:	0f 85 08 00 00 00                               	jne    0x23a8d35479ae
    23a8d35479a6:	4c 8b c8                                        	mov    r9,rax
    23a8d35479a9:	e9 0e 00 00 00                                  	jmp    0x23a8d35479bc
    23a8d35479ae:	c4 c3 79 16 f9 01                               	vpextrd r9d,xmm7,0x1
    23a8d35479b4:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    23a8d35479b8:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    23a8d35479bc:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    23a8d35479c0:	0f 85 08 00 00 00                               	jne    0x23a8d35479ce
    23a8d35479c6:	4c 8b d8                                        	mov    r11,rax
    23a8d35479c9:	e9 0e 00 00 00                                  	jmp    0x23a8d35479dc
    23a8d35479ce:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    23a8d35479d4:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d35479d8:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d35479dc:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    23a8d35479e0:	0f 85 34 00 00 00                               	jne    0x23a8d3547a1a
    23a8d35479e6:	45 8b e0                                        	mov    r12d,r8d
    23a8d35479e9:	4c 8b c0                                        	mov    r8,rax
    23a8d35479ec:	e9 40 00 00 00                                  	jmp    0x23a8d3547a31
    23a8d35479f1:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    23a8d35479f7:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d35479fb:	46 8b 0c 02                                     	mov    r9d,DWORD PTR [rdx+r8*1]
    23a8d35479ff:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    23a8d3547a04:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    23a8d3547a08:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    23a8d3547a0c:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    23a8d3547a12:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d3547a16:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3547a1a:	c4 c3 79 16 fc 03                               	vpextrd r12d,xmm7,0x3
    23a8d3547a20:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    23a8d3547a24:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    23a8d3547a28:	45 8b d0                                        	mov    r10d,r8d
    23a8d3547a2b:	45 8b c4                                        	mov    r8d,r12d
    23a8d3547a2e:	45 8b e2                                        	mov    r12d,r10d
    23a8d3547a31:	c4 e3 39 22 ff 01                               	vpinsrd xmm7,xmm8,edi,0x1
    23a8d3547a37:	c4 41 79 6e c4                                  	vmovd  xmm8,r12d
    23a8d3547a3c:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    23a8d3547a41:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    23a8d3547a47:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    23a8d3547a4b:	0f 84 71 00 00 00                               	je     0x23a8d3547ac2
    23a8d3547a51:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    23a8d3547a55:	0f 85 08 00 00 00                               	jne    0x23a8d3547a63
    23a8d3547a5b:	48 8b f8                                        	mov    rdi,rax
    23a8d3547a5e:	e9 0a 00 00 00                                  	jmp    0x23a8d3547a6d
    23a8d3547a63:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    23a8d3547a67:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d3547a6a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3547a6d:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    23a8d3547a71:	0f 85 08 00 00 00                               	jne    0x23a8d3547a7f
    23a8d3547a77:	4c 8b c8                                        	mov    r9,rax
    23a8d3547a7a:	e9 0e 00 00 00                                  	jmp    0x23a8d3547a8d
    23a8d3547a7f:	c4 c3 79 16 f1 01                               	vpextrd r9d,xmm6,0x1
    23a8d3547a85:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    23a8d3547a89:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    23a8d3547a8d:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    23a8d3547a91:	0f 85 08 00 00 00                               	jne    0x23a8d3547a9f
    23a8d3547a97:	4c 8b e0                                        	mov    r12,rax
    23a8d3547a9a:	e9 0e 00 00 00                                  	jmp    0x23a8d3547aad
    23a8d3547a9f:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    23a8d3547aa5:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    23a8d3547aa9:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    23a8d3547aad:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    23a8d3547ab1:	0f 85 30 00 00 00                               	jne    0x23a8d3547ae7
    23a8d3547ab7:	44 8b ff                                        	mov    r15d,edi
    23a8d3547aba:	48 8b f8                                        	mov    rdi,rax
    23a8d3547abd:	e9 3c 00 00 00                                  	jmp    0x23a8d3547afe
    23a8d3547ac2:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    23a8d3547ac8:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d3547acb:	44 8b 0c 3a                                     	mov    r9d,DWORD PTR [rdx+rdi*1]
    23a8d3547acf:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    23a8d3547ad3:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d3547ad6:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3547ad9:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    23a8d3547adf:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    23a8d3547ae3:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    23a8d3547ae7:	c4 c3 79 16 f7 03                               	vpextrd r15d,xmm6,0x3
    23a8d3547aed:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d3547af1:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    23a8d3547af5:	45 8b d7                                        	mov    r10d,r15d
    23a8d3547af8:	44 8b ff                                        	mov    r15d,edi
    23a8d3547afb:	41 8b fa                                        	mov    edi,r10d
    23a8d3547afe:	c4 e3 41 22 f6 02                               	vpinsrd xmm6,xmm7,esi,0x2
    23a8d3547b04:	c4 c3 39 22 fb 02                               	vpinsrd xmm7,xmm8,r11d,0x2
    23a8d3547b0a:	c4 c1 79 fe c5                                  	vpaddd xmm0,xmm0,xmm13
    23a8d3547b0f:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    23a8d3547b14:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    23a8d3547b19:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    23a8d3547b1f:	c4 43 39 22 c4 02                               	vpinsrd xmm8,xmm8,r12d,0x2
    23a8d3547b25:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    23a8d3547b29:	0f 84 6b 00 00 00                               	je     0x23a8d3547b9a
    23a8d3547b2f:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    23a8d3547b33:	0f 85 08 00 00 00                               	jne    0x23a8d3547b41
    23a8d3547b39:	48 8b f0                                        	mov    rsi,rax
    23a8d3547b3c:	e9 0a 00 00 00                                  	jmp    0x23a8d3547b4b
    23a8d3547b41:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    23a8d3547b45:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d3547b48:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    23a8d3547b4b:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    23a8d3547b4f:	0f 85 08 00 00 00                               	jne    0x23a8d3547b5d
    23a8d3547b55:	4c 8b c8                                        	mov    r9,rax
    23a8d3547b58:	e9 0e 00 00 00                                  	jmp    0x23a8d3547b6b
    23a8d3547b5d:	c4 c3 79 16 c1 01                               	vpextrd r9d,xmm0,0x1
    23a8d3547b63:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    23a8d3547b67:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    23a8d3547b6b:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    23a8d3547b6f:	0f 85 08 00 00 00                               	jne    0x23a8d3547b7d
    23a8d3547b75:	4c 8b d8                                        	mov    r11,rax
    23a8d3547b78:	e9 0e 00 00 00                                  	jmp    0x23a8d3547b8b
    23a8d3547b7d:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    23a8d3547b83:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d3547b87:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3547b8b:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    23a8d3547b8f:	0f 85 2a 00 00 00                               	jne    0x23a8d3547bbf
    23a8d3547b95:	e9 34 00 00 00                                  	jmp    0x23a8d3547bce
    23a8d3547b9a:	c4 e3 79 16 c6 01                               	vpextrd esi,xmm0,0x1
    23a8d3547ba0:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d3547ba3:	44 8b 0c 32                                     	mov    r9d,DWORD PTR [rdx+rsi*1]
    23a8d3547ba7:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    23a8d3547bab:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d3547bae:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    23a8d3547bb1:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    23a8d3547bb7:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    23a8d3547bbb:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3547bbf:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    23a8d3547bc5:	42 8d 1c a3                                     	lea    ebx,[rbx+r12*4]
    23a8d3547bc9:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    23a8d3547bcc:	8b c3                                           	mov    eax,ebx
    23a8d3547bce:	c4 e3 49 22 c1 03                               	vpinsrd xmm0,xmm6,ecx,0x3
    23a8d3547bd4:	c4 c3 41 22 f0 03                               	vpinsrd xmm6,xmm7,r8d,0x3
    23a8d3547bda:	c5 f9 6e fe                                     	vmovd  xmm7,esi
    23a8d3547bde:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    23a8d3547be3:	c4 c3 41 22 f9 01                               	vpinsrd xmm7,xmm7,r9d,0x1
    23a8d3547be9:	c4 c3 41 22 fb 02                               	vpinsrd xmm7,xmm7,r11d,0x2
    23a8d3547bef:	c4 e3 41 22 f8 03                               	vpinsrd xmm7,xmm7,eax,0x3
    23a8d3547bf5:	c4 63 39 22 c7 03                               	vpinsrd xmm8,xmm8,edi,0x3
    23a8d3547bfb:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    23a8d3547bff:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d3547c04:	c4 41 79 28 c7                                  	vmovapd xmm8,xmm15
    23a8d3547c09:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d3547c0d:	e9 86 00 00 00                                  	jmp    0x23a8d3547c98
    23a8d3547c12:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    23a8d3547c15:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    23a8d3547c19:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    23a8d3547c1d:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    23a8d3547c22:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    23a8d3547c26:	c5 fb 10 3c 3a                                  	vmovsd xmm7,QWORD PTR [rdx+rdi*1]
    23a8d3547c2b:	c5 f9 6c c7                                     	vpunpcklqdq xmm0,xmm0,xmm7
    23a8d3547c2f:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d3547c32:	c5 fb 10 3c 32                                  	vmovsd xmm7,QWORD PTR [rdx+rsi*1]
    23a8d3547c37:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    23a8d3547c3a:	c5 7b 10 04 0a                                  	vmovsd xmm8,QWORD PTR [rdx+rcx*1]
    23a8d3547c3f:	c4 c1 41 6c f8                                  	vpunpcklqdq xmm7,xmm7,xmm8
    23a8d3547c44:	c5 78 c6 c7 dd                                  	vshufps xmm8,xmm0,xmm7,0xdd
    23a8d3547c49:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    23a8d3547c4e:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    23a8d3547c53:	c5 f9 7e f1                                     	vmovd  ecx,xmm6
    23a8d3547c57:	03 cb                                           	add    ecx,ebx
    23a8d3547c59:	c5 fb 10 3c 0a                                  	vmovsd xmm7,QWORD PTR [rdx+rcx*1]
    23a8d3547c5e:	c4 e3 79 16 f1 01                               	vpextrd ecx,xmm6,0x1
    23a8d3547c64:	03 cb                                           	add    ecx,ebx
    23a8d3547c66:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    23a8d3547c6b:	c4 c1 41 6c f9                                  	vpunpcklqdq xmm7,xmm7,xmm9
    23a8d3547c70:	c4 e3 79 16 f1 02                               	vpextrd ecx,xmm6,0x2
    23a8d3547c76:	03 cb                                           	add    ecx,ebx
    23a8d3547c78:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    23a8d3547c7d:	c4 e3 79 16 f1 03                               	vpextrd ecx,xmm6,0x3
    23a8d3547c83:	03 d9                                           	add    ebx,ecx
    23a8d3547c85:	c5 fb 10 34 1a                                  	vmovsd xmm6,QWORD PTR [rdx+rbx*1]
    23a8d3547c8a:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    23a8d3547c8e:	c5 40 c6 ce dd                                  	vshufps xmm9,xmm7,xmm6,0xdd
    23a8d3547c93:	c5 c0 c6 f6 88                                  	vshufps xmm6,xmm7,xmm6,0x88
    23a8d3547c98:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    23a8d3547c9c:	c5 d0 5c d9                                     	vsubps xmm3,xmm5,xmm1
    23a8d3547ca0:	c5 e8 5c d4                                     	vsubps xmm2,xmm2,xmm4
    23a8d3547ca4:	c5 d0 5c e2                                     	vsubps xmm4,xmm5,xmm2
    23a8d3547ca8:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    23a8d3547cad:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547cb2:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d3547cb8:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d3547cbd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547cc2:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d3547cc7:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d3547ccb:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d3547ccf:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d3547cd4:	c5 d8 59 ed                                     	vmulps xmm5,xmm4,xmm5
    23a8d3547cd8:	c4 c1 41 72 d0 18                               	vpsrld xmm7,xmm8,0x18
    23a8d3547cde:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547ce3:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d3547ce9:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d3547cee:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547cf3:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d3547cf8:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d3547cfc:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d3547d00:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d3547d05:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    23a8d3547d09:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    23a8d3547d0d:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    23a8d3547d11:	c5 c1 72 d6 18                                  	vpsrld xmm7,xmm6,0x18
    23a8d3547d16:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547d1b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d3547d21:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d3547d26:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547d2b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d3547d30:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d3547d34:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d3547d38:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d3547d3d:	c5 d8 59 ff                                     	vmulps xmm7,xmm4,xmm7
    23a8d3547d41:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    23a8d3547d47:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547d4c:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    23a8d3547d52:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    23a8d3547d57:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547d5c:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    23a8d3547d62:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    23a8d3547d67:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    23a8d3547d6c:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    23a8d3547d71:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
    23a8d3547d76:	c4 c1 40 58 fa                                  	vaddps xmm7,xmm7,xmm10
    23a8d3547d7b:	c5 f0 59 ff                                     	vmulps xmm7,xmm1,xmm7
    23a8d3547d7f:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    23a8d3547d83:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    23a8d3547d8d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d3547d92:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d3547d96:	c5 79 db d7                                     	vpand  xmm10,xmm0,xmm7
    23a8d3547d9a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547d9f:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    23a8d3547da5:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    23a8d3547daa:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547daf:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    23a8d3547db5:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    23a8d3547dba:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    23a8d3547dbf:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    23a8d3547dc4:	c4 41 58 59 d2                                  	vmulps xmm10,xmm4,xmm10
    23a8d3547dc9:	c5 39 db df                                     	vpand  xmm11,xmm8,xmm7
    23a8d3547dcd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547dd2:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    23a8d3547dd8:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    23a8d3547ddd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547de2:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    23a8d3547de8:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    23a8d3547ded:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    23a8d3547df2:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    23a8d3547df7:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    23a8d3547dfc:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    23a8d3547e01:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    23a8d3547e06:	c5 49 db df                                     	vpand  xmm11,xmm6,xmm7
    23a8d3547e0a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547e0f:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    23a8d3547e15:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    23a8d3547e1a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547e1f:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    23a8d3547e25:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    23a8d3547e2a:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    23a8d3547e2f:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    23a8d3547e34:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    23a8d3547e39:	c5 31 db e7                                     	vpand  xmm12,xmm9,xmm7
    23a8d3547e3d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547e42:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    23a8d3547e48:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    23a8d3547e4d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547e52:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    23a8d3547e58:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    23a8d3547e5d:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    23a8d3547e62:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    23a8d3547e67:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    23a8d3547e6c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    23a8d3547e71:	c4 41 70 59 db                                  	vmulps xmm11,xmm1,xmm11
    23a8d3547e76:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    23a8d3547e7b:	c5 a1 72 d0 10                                  	vpsrld xmm11,xmm0,0x10
    23a8d3547e80:	c5 21 db df                                     	vpand  xmm11,xmm11,xmm7
    23a8d3547e84:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547e89:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    23a8d3547e8f:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    23a8d3547e94:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547e99:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    23a8d3547e9f:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    23a8d3547ea4:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    23a8d3547ea9:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    23a8d3547eae:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    23a8d3547eb3:	c4 c1 19 72 d0 10                               	vpsrld xmm12,xmm8,0x10
    23a8d3547eb9:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    23a8d3547ebd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547ec2:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    23a8d3547ec8:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    23a8d3547ecd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547ed2:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    23a8d3547ed8:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    23a8d3547edd:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    23a8d3547ee2:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    23a8d3547ee7:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    23a8d3547eec:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    23a8d3547ef1:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    23a8d3547ef6:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    23a8d3547efb:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    23a8d3547eff:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547f04:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    23a8d3547f0a:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    23a8d3547f0f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547f14:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    23a8d3547f1a:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    23a8d3547f1f:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    23a8d3547f24:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    23a8d3547f29:	c4 41 58 59 e4                                  	vmulps xmm12,xmm4,xmm12
    23a8d3547f2e:	c4 c1 11 72 d1 10                               	vpsrld xmm13,xmm9,0x10
    23a8d3547f34:	c5 11 db ef                                     	vpand  xmm13,xmm13,xmm7
    23a8d3547f38:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547f3d:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    23a8d3547f43:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    23a8d3547f48:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547f4d:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    23a8d3547f53:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    23a8d3547f58:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    23a8d3547f5d:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    23a8d3547f62:	c4 41 68 59 ed                                  	vmulps xmm13,xmm2,xmm13
    23a8d3547f67:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    23a8d3547f6c:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    23a8d3547f71:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    23a8d3547f76:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    23a8d3547f7b:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    23a8d3547f7f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547f84:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d3547f8a:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d3547f8f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547f94:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d3547f99:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d3547f9d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d3547fa1:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d3547fa6:	c5 d8 59 c0                                     	vmulps xmm0,xmm4,xmm0
    23a8d3547faa:	c4 c1 39 72 d0 08                               	vpsrld xmm8,xmm8,0x8
    23a8d3547fb0:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    23a8d3547fb4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547fb9:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d3547fbf:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d3547fc4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3547fc9:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d3547fcf:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d3547fd4:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d3547fd9:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d3547fde:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
    23a8d3547fe3:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    23a8d3547fe8:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    23a8d3547fec:	c5 e1 72 d6 08                                  	vpsrld xmm3,xmm6,0x8
    23a8d3547ff1:	c5 e1 db df                                     	vpand  xmm3,xmm3,xmm7
    23a8d3547ff5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3547ffa:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d3548000:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d3548005:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d354800a:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d354800f:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d3548013:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d3548017:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d354801c:	c5 d8 59 db                                     	vmulps xmm3,xmm4,xmm3
    23a8d3548020:	c4 c1 59 72 d1 08                               	vpsrld xmm4,xmm9,0x8
    23a8d3548026:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    23a8d354802a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d354802f:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d3548035:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d354803a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d354803f:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d3548044:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d3548048:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d354804c:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d3548051:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    23a8d3548055:	c5 e0 58 d2                                     	vaddps xmm2,xmm3,xmm2
    23a8d3548059:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    23a8d354805d:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    23a8d3548061:	e9 84 01 00 00                                  	jmp    0x23a8d35481ea
    23a8d3548066:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    23a8d354806a:	0f 84 68 00 00 00                               	je     0x23a8d35480d8
    23a8d3548070:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    23a8d3548074:	0f 85 0f 00 00 00                               	jne    0x23a8d3548089
    23a8d354807a:	48 8b f8                                        	mov    rdi,rax
    23a8d354807d:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    23a8d3548081:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    23a8d3548084:	e9 0e 00 00 00                                  	jmp    0x23a8d3548097
    23a8d3548089:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    23a8d354808c:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    23a8d3548090:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    23a8d3548094:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3548097:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    23a8d354809b:	0f 85 08 00 00 00                               	jne    0x23a8d35480a9
    23a8d35480a1:	4c 8b c0                                        	mov    r8,rax
    23a8d35480a4:	e9 08 00 00 00                                  	jmp    0x23a8d35480b1
    23a8d35480a9:	46 8d 04 8b                                     	lea    r8d,[rbx+r9*4]
    23a8d35480ad:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    23a8d35480b1:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    23a8d35480b5:	0f 85 08 00 00 00                               	jne    0x23a8d35480c3
    23a8d35480bb:	48 8b f0                                        	mov    rsi,rax
    23a8d35480be:	e9 06 00 00 00                                  	jmp    0x23a8d35480c9
    23a8d35480c3:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d35480c6:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    23a8d35480c9:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    23a8d35480cd:	0f 85 21 00 00 00                               	jne    0x23a8d35480f4
    23a8d35480d3:	e9 24 00 00 00                                  	jmp    0x23a8d35480fc
    23a8d35480d8:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    23a8d35480db:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    23a8d35480de:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    23a8d35480e2:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    23a8d35480e5:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    23a8d35480e9:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    23a8d35480ed:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    23a8d35480f1:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d35480f4:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    23a8d35480f7:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    23a8d35480fa:	8b c3                                           	mov    eax,ebx
    23a8d35480fc:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    23a8d3548100:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d3548105:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    23a8d354810b:	c4 e3 79 22 c6 02                               	vpinsrd xmm0,xmm0,esi,0x2
    23a8d3548111:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    23a8d3548117:	c5 f1 72 d0 18                                  	vpsrld xmm1,xmm0,0x18
    23a8d354811c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3548121:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d3548127:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d354812c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3548131:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d3548136:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d354813a:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d354813e:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d3548143:	4c 8b 15 3b fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc3b]        # 0x23a8d3547d85
    23a8d354814a:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d354814f:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d3548153:	c5 f9 db da                                     	vpand  xmm3,xmm0,xmm2
    23a8d3548157:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d354815c:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d3548162:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d3548167:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d354816c:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d3548171:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d3548175:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d3548179:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d354817e:	c5 d9 72 d0 10                                  	vpsrld xmm4,xmm0,0x10
    23a8d3548183:	c5 d9 db e2                                     	vpand  xmm4,xmm4,xmm2
    23a8d3548187:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d354818c:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d3548192:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d3548197:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d354819c:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d35481a1:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d35481a5:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d35481a9:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d35481ae:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    23a8d35481b3:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    23a8d35481b7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d35481bc:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d35481c2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d35481c7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d35481cc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d35481d1:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d35481d5:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d35481d9:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d35481de:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    23a8d35481e2:	c5 79 28 dc                                     	vmovapd xmm11,xmm4
    23a8d35481e6:	c5 79 28 d3                                     	vmovapd xmm10,xmm3
    23a8d35481ea:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    23a8d35481f4:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d35481f9:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    23a8d35481fd:	c5 d0 59 d1                                     	vmulps xmm2,xmm5,xmm1
    23a8d3548201:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3548205:	41 83 e1 01                                     	and    r9d,0x1
    23a8d3548209:	41 f7 d9                                        	neg    r9d
    23a8d354820c:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    23a8d3548211:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d3548216:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d354821a:	41 c1 e1 1e                                     	shl    r9d,0x1e
    23a8d354821e:	41 c1 f9 1f                                     	sar    r9d,0x1f
    23a8d3548222:	c4 c3 61 22 d9 01                               	vpinsrd xmm3,xmm3,r9d,0x1
    23a8d3548228:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d354822c:	41 c1 e1 1d                                     	shl    r9d,0x1d
    23a8d3548230:	41 c1 f9 1f                                     	sar    r9d,0x1f
    23a8d3548234:	c4 c3 61 22 d9 02                               	vpinsrd xmm3,xmm3,r9d,0x2
    23a8d354823a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d354823e:	41 c1 e1 1c                                     	shl    r9d,0x1c
    23a8d3548242:	41 c1 f9 1f                                     	sar    r9d,0x1f
    23a8d3548246:	c4 c3 61 22 d9 03                               	vpinsrd xmm3,xmm3,r9d,0x3
    23a8d354824c:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    23a8d3548250:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    23a8d3548253:	8b db                                           	mov    ebx,ebx
    23a8d3548255:	c5 fa 7f 54 1a 30                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x30],xmm2
    23a8d354825b:	c5 a0 59 d1                                     	vmulps xmm2,xmm11,xmm1
    23a8d354825f:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    23a8d3548263:	c5 fa 7f 54 1a 20                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x20],xmm2
    23a8d3548269:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    23a8d354826d:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    23a8d3548271:	c5 fa 7f 44 1a 10                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x10],xmm0
    23a8d3548277:	c5 a8 59 c1                                     	vmulps xmm0,xmm10,xmm1
    23a8d354827b:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    23a8d354827f:	c5 fa 7f 04 1a                                  	vmovdqu XMMWORD PTR [rdx+rbx*1],xmm0
    23a8d3548284:	b8 01 00 00 00                                  	mov    eax,0x1
    23a8d3548289:	48 8b e5                                        	mov    rsp,rbp
    23a8d354828c:	5d                                              	pop    rbp
    23a8d354828d:	c2 08 00                                        	ret    0x8
    23a8d3548290:	33 c0                                           	xor    eax,eax
    23a8d3548292:	48 8b e5                                        	mov    rsp,rbp
    23a8d3548295:	5d                                              	pop    rbp
    23a8d3548296:	c2 08 00                                        	ret    0x8
    23a8d3548299:	33 c0                                           	xor    eax,eax
    23a8d354829b:	48 8b e5                                        	mov    rsp,rbp
    23a8d354829e:	5d                                              	pop    rbp
    23a8d354829f:	c2 08 00                                        	ret    0x8
    23a8d35482a2:	90                                              	nop
    23a8d35482a3:	90                                              	nop
    23a8d35482a4:	07                                              	(bad)
    23a8d35482a5:	00 00                                           	add    BYTE PTR [rax],al
    23a8d35482a7:	00 08                                           	add    BYTE PTR [rax],cl
	...
