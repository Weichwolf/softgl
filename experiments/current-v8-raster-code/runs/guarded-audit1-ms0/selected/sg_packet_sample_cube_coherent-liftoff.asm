
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms0/selected/sg_packet_sample_cube_coherent-liftoff.bin:     file format binary


Disassembly of section .data:

00001d2b7c462300 <.data>:
    1d2b7c462300:	41 bc af 00 00 00                               	mov    r12d,0xaf
    1d2b7c462306:	e8 65 ca f5 ff                                  	call   0x1d2b7c3bed70
    1d2b7c46230b:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
    1d2b7c462312:	8b c0                                           	mov    eax,eax
    1d2b7c462314:	8b d2                                           	mov    edx,edx
    1d2b7c462316:	8b c9                                           	mov    ecx,ecx
    1d2b7c462318:	8b db                                           	mov    ebx,ebx
    1d2b7c46231a:	45 8b c9                                        	mov    r9d,r9d
    1d2b7c46231d:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    1d2b7c462320:	50                                              	push   rax
    1d2b7c462321:	51                                              	push   rcx
    1d2b7c462322:	57                                              	push   rdi
    1d2b7c462323:	48 8d bd c4 fe ff ff                            	lea    rdi,[rbp-0x13c]
    1d2b7c46232a:	33 c0                                           	xor    eax,eax
    1d2b7c46232c:	b9 41 00 00 00                                  	mov    ecx,0x41
    1d2b7c462331:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    1d2b7c462333:	5f                                              	pop    rdi
    1d2b7c462334:	59                                              	pop    rcx
    1d2b7c462335:	58                                              	pop    rax
    1d2b7c462336:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    1d2b7c46233a:	0f 86 05 1c 00 00                               	jbe    0x1d2b7c463f45
    1d2b7c462340:	45 85 c9                                        	test   r9d,r9d
    1d2b7c462343:	0f 85 07 00 00 00                               	jne    0x1d2b7c462350
    1d2b7c462349:	33 c0                                           	xor    eax,eax
    1d2b7c46234b:	e9 d5 1b 00 00                                  	jmp    0x1d2b7c463f25
    1d2b7c462350:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    1d2b7c462354:	45 8b 64 00 04                                  	mov    r12d,DWORD PTR [r8+rax*1+0x4]
    1d2b7c462359:	45 85 e4                                        	test   r12d,r12d
    1d2b7c46235c:	0f 85 07 00 00 00                               	jne    0x1d2b7c462369
    1d2b7c462362:	33 c0                                           	xor    eax,eax
    1d2b7c462364:	e9 bc 1b 00 00                                  	jmp    0x1d2b7c463f25
    1d2b7c462369:	45 8b f9                                        	mov    r15d,r9d
    1d2b7c46236c:	41 83 e7 0f                                     	and    r15d,0xf
    1d2b7c462370:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
    1d2b7c462376:	49 ba 50 78 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7850
    1d2b7c462380:	c4 c1 78 54 0a                                  	vandps xmm1,xmm0,XMMWORD PTR [r10]
    1d2b7c462385:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    1d2b7c46238f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c462394:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c462398:	c5 f0 c2 da 02                                  	vcmpleps xmm3,xmm1,xmm2
    1d2b7c46239d:	c4 c1 7a 6f 24 10                               	vmovdqu xmm4,XMMWORD PTR [r8+rdx*1]
    1d2b7c4623a3:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x1d2b7c462378
    1d2b7c4623aa:	c4 c1 58 54 2a                                  	vandps xmm5,xmm4,XMMWORD PTR [r10]
    1d2b7c4623af:	c5 d0 c2 f2 02                                  	vcmpleps xmm6,xmm5,xmm2
    1d2b7c4623b4:	c5 e1 db de                                     	vpand  xmm3,xmm3,xmm6
    1d2b7c4623b8:	c4 c1 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1]
    1d2b7c4623be:	4c 8b 15 b3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb3]        # 0x1d2b7c462378
    1d2b7c4623c5:	c4 c1 48 54 3a                                  	vandps xmm7,xmm6,XMMWORD PTR [r10]
    1d2b7c4623ca:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    1d2b7c4623cf:	c5 c0 c2 c2 02                                  	vcmpleps xmm0,xmm7,xmm2
    1d2b7c4623d4:	c5 e1 db d8                                     	vpand  xmm3,xmm3,xmm0
    1d2b7c4623d8:	c5 f8 50 f3                                     	vmovmskps esi,xmm3
    1d2b7c4623dc:	41 23 f7                                        	and    esi,r15d
    1d2b7c4623df:	44 3b ce                                        	cmp    r9d,esi
    1d2b7c4623e2:	0f 84 07 00 00 00                               	je     0x1d2b7c4623ef
    1d2b7c4623e8:	33 c0                                           	xor    eax,eax
    1d2b7c4623ea:	e9 36 1b 00 00                                  	jmp    0x1d2b7c463f25
    1d2b7c4623ef:	c5 c0 c2 c5 02                                  	vcmpleps xmm0,xmm7,xmm5
    1d2b7c4623f4:	c5 f0 c2 dd 02                                  	vcmpleps xmm3,xmm1,xmm5
    1d2b7c4623f9:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    1d2b7c4623fd:	c5 f8 50 f0                                     	vmovmskps esi,xmm0
    1d2b7c462401:	8b de                                           	mov    ebx,esi
    1d2b7c462403:	41 23 d9                                        	and    ebx,r9d
    1d2b7c462406:	44 3b cb                                        	cmp    r9d,ebx
    1d2b7c462409:	0f 85 32 00 00 00                               	jne    0x1d2b7c462441
    1d2b7c46240f:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    1d2b7c462414:	49 ba 60 78 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7860
    1d2b7c46241e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c462423:	4c 8b 15 ec ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffec]        # 0x1d2b7c462416
    1d2b7c46242a:	c4 c1 48 57 12                                  	vxorps xmm2,xmm6,XMMWORD PTR [r10]
    1d2b7c46242f:	c7 45 d0 00 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x0
    1d2b7c462436:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    1d2b7c46243a:	33 f6                                           	xor    esi,esi
    1d2b7c46243c:	e9 9d 00 00 00                                  	jmp    0x1d2b7c4624de
    1d2b7c462441:	c5 c0 c2 c1 02                                  	vcmpleps xmm0,xmm7,xmm1
    1d2b7c462446:	c5 d0 c2 d9 02                                  	vcmpleps xmm3,xmm5,xmm1
    1d2b7c46244b:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    1d2b7c46244f:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    1d2b7c462453:	8b ce                                           	mov    ecx,esi
    1d2b7c462455:	83 f1 ff                                        	xor    ecx,0xffffffff
    1d2b7c462458:	41 23 c9                                        	and    ecx,r9d
    1d2b7c46245b:	41 23 c8                                        	and    ecx,r8d
    1d2b7c46245e:	44 3b c9                                        	cmp    r9d,ecx
    1d2b7c462461:	0f 85 29 00 00 00                               	jne    0x1d2b7c462490
    1d2b7c462467:	c7 45 d0 02 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x2
    1d2b7c46246e:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c462471:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    1d2b7c462475:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    1d2b7c462479:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    1d2b7c46247d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    1d2b7c462481:	be 01 00 00 00                                  	mov    esi,0x1
    1d2b7c462486:	c5 fa 6f 65 98                                  	vmovdqu xmm4,XMMWORD PTR [rbp-0x68]
    1d2b7c46248b:	e9 4e 00 00 00                                  	jmp    0x1d2b7c4624de
    1d2b7c462490:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c462493:	0b ce                                           	or     ecx,esi
    1d2b7c462495:	41 23 c9                                        	and    ecx,r9d
    1d2b7c462498:	85 c9                                           	test   ecx,ecx
    1d2b7c46249a:	0f 84 07 00 00 00                               	je     0x1d2b7c4624a7
    1d2b7c4624a0:	33 c9                                           	xor    ecx,ecx
    1d2b7c4624a2:	e9 7c 1a 00 00                                  	jmp    0x1d2b7c463f23
    1d2b7c4624a7:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    1d2b7c4624ac:	4c 8b 15 63 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff63]        # 0x1d2b7c462416
    1d2b7c4624b3:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4624b8:	c7 45 d0 04 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x4
    1d2b7c4624bf:	c7 85 d8 fe ff ff 01 00 00 00                   	mov    DWORD PTR [rbp-0x128],0x1
    1d2b7c4624c9:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4624cc:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    1d2b7c4624d0:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    1d2b7c4624d4:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    1d2b7c4624d8:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    1d2b7c4624dc:	33 f6                                           	xor    esi,esi
    1d2b7c4624de:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    1d2b7c4624e2:	c5 c8 c2 cc 02                                  	vcmpleps xmm1,xmm6,xmm4
    1d2b7c4624e7:	c5 f8 50 c9                                     	vmovmskps ecx,xmm1
    1d2b7c4624eb:	41 23 cf                                        	and    ecx,r15d
    1d2b7c4624ee:	85 c9                                           	test   ecx,ecx
    1d2b7c4624f0:	0f 85 75 00 00 00                               	jne    0x1d2b7c46256b
    1d2b7c4624f6:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x1d2b7c462416
    1d2b7c4624fd:	c4 c1 78 57 0a                                  	vxorps xmm1,xmm0,XMMWORD PTR [r10]
    1d2b7c462502:	85 f6                                           	test   esi,esi
    1d2b7c462504:	0f 84 05 00 00 00                               	je     0x1d2b7c46250f
    1d2b7c46250a:	e9 04 00 00 00                                  	jmp    0x1d2b7c462513
    1d2b7c46250f:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    1d2b7c462513:	4c 8b 15 fc fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffefc]        # 0x1d2b7c462416
    1d2b7c46251a:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    1d2b7c46251f:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    1d2b7c462525:	85 d2                                           	test   edx,edx
    1d2b7c462527:	0f 84 09 00 00 00                               	je     0x1d2b7c462536
    1d2b7c46252d:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    1d2b7c462531:	e9 04 00 00 00                                  	jmp    0x1d2b7c46253a
    1d2b7c462536:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    1d2b7c46253a:	44 3b cb                                        	cmp    r9d,ebx
    1d2b7c46253d:	0f 94 c2                                        	sete   dl
    1d2b7c462540:	0f b6 d2                                        	movzx  edx,dl
    1d2b7c462543:	85 d2                                           	test   edx,edx
    1d2b7c462545:	0f 84 09 00 00 00                               	je     0x1d2b7c462554
    1d2b7c46254b:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    1d2b7c46254f:	e9 00 00 00 00                                  	jmp    0x1d2b7c462554
    1d2b7c462554:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c462557:	83 ca 01                                        	or     edx,0x1
    1d2b7c46255a:	41 b8 03 00 00 00                               	mov    r8d,0x3
    1d2b7c462560:	85 f6                                           	test   esi,esi
    1d2b7c462562:	44 0f 44 c2                                     	cmove  r8d,edx
    1d2b7c462566:	e9 25 00 00 00                                  	jmp    0x1d2b7c462590
    1d2b7c46256b:	41 3b c9                                        	cmp    ecx,r9d
    1d2b7c46256e:	0f 85 15 00 00 00                               	jne    0x1d2b7c462589
    1d2b7c462574:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    1d2b7c462578:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    1d2b7c46257c:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    1d2b7c462580:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    1d2b7c462584:	e9 07 00 00 00                                  	jmp    0x1d2b7c462590
    1d2b7c462589:	33 c0                                           	xor    eax,eax
    1d2b7c46258b:	e9 95 19 00 00                                  	jmp    0x1d2b7c463f25
    1d2b7c462590:	41 8b d0                                        	mov    edx,r8d
    1d2b7c462593:	c1 e2 06                                        	shl    edx,0x6
    1d2b7c462596:	41 8d 14 14                                     	lea    edx,[r12+rdx*1]
    1d2b7c46259a:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    1d2b7c46259e:	4d 8b 64 24 17                                  	mov    r12,QWORD PTR [r12+0x17]
    1d2b7c4625a3:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    1d2b7c4625a6:	41 8b 84 14 24 01 00 00                         	mov    eax,DWORD PTR [r12+rdx*1+0x124]
    1d2b7c4625ae:	85 c0                                           	test   eax,eax
    1d2b7c4625b0:	0f 85 07 00 00 00                               	jne    0x1d2b7c4625bd
    1d2b7c4625b6:	33 c0                                           	xor    eax,eax
    1d2b7c4625b8:	e9 68 19 00 00                                  	jmp    0x1d2b7c463f25
    1d2b7c4625bd:	45 8b 84 14 a4 02 00 00                         	mov    r8d,DWORD PTR [r12+rdx*1+0x2a4]
    1d2b7c4625c5:	41 83 f8 00                                     	cmp    r8d,0x0
    1d2b7c4625c9:	0f 8f 07 00 00 00                               	jg     0x1d2b7c4625d6
    1d2b7c4625cf:	33 c0                                           	xor    eax,eax
    1d2b7c4625d1:	e9 4f 19 00 00                                  	jmp    0x1d2b7c463f25
    1d2b7c4625d6:	8d b2 24 04 00 00                               	lea    esi,[rdx+0x424]
    1d2b7c4625dc:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    1d2b7c4625df:	41 8b 0c 34                                     	mov    ecx,DWORD PTR [r12+rsi*1]
    1d2b7c4625e3:	33 d2                                           	xor    edx,edx
    1d2b7c4625e5:	3b ca                                           	cmp    ecx,edx
    1d2b7c4625e7:	0f 8f 27 00 00 00                               	jg     0x1d2b7c462614
    1d2b7c4625ed:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    1d2b7c4625f2:	8b f0                                           	mov    esi,eax
    1d2b7c4625f4:	44 8b e1                                        	mov    r12d,ecx
    1d2b7c4625f7:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    1d2b7c4625fb:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c4625ff:	c5 f9 28 f4                                     	vmovapd xmm6,xmm4
    1d2b7c462603:	c5 f9 28 e3                                     	vmovapd xmm4,xmm3
    1d2b7c462607:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    1d2b7c46260a:	33 c9                                           	xor    ecx,ecx
    1d2b7c46260c:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    1d2b7c46260f:	e9 0f 19 00 00                                  	jmp    0x1d2b7c463f23
    1d2b7c462614:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c462619:	f7 da                                           	neg    edx
    1d2b7c46261b:	41 03 d0                                        	add    edx,r8d
    1d2b7c46261e:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    1d2b7c462628:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c46262d:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c462631:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    1d2b7c462636:	4c 8b 15 e3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe3]        # 0x1d2b7c462620
    1d2b7c46263d:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    1d2b7c462642:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    1d2b7c462646:	c5 d0 c2 c0 01                                  	vcmpltps xmm0,xmm5,xmm0
    1d2b7c46264b:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    1d2b7c46264f:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    1d2b7c462653:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c462658:	c5 f0 5e d0                                     	vdivps xmm2,xmm1,xmm0
    1d2b7c46265c:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    1d2b7c462666:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c46266b:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c46266f:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    1d2b7c462673:	c5 d8 5e c8                                     	vdivps xmm1,xmm4,xmm0
    1d2b7c462677:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    1d2b7c46267b:	c5 fa 7f 8d b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm1
    1d2b7c462683:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    1d2b7c46268d:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    1d2b7c462692:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    1d2b7c462696:	c5 fa 6f bd b4 fe ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x14c]
    1d2b7c46269e:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    1d2b7c4626a2:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    1d2b7c4626a5:	41 8b 74 1c 14                                  	mov    esi,DWORD PTR [r12+rbx*1+0x14]
    1d2b7c4626aa:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    1d2b7c4626ad:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    1d2b7c4626b3:	41 8b 54 1c 10                                  	mov    edx,DWORD PTR [r12+rbx*1+0x10]
    1d2b7c4626b8:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    1d2b7c4626bd:	3b d3                                           	cmp    edx,ebx
    1d2b7c4626bf:	0f 95 c3                                        	setne  bl
    1d2b7c4626c2:	0f b6 db                                        	movzx  ebx,bl
    1d2b7c4626c5:	41 bf 00 29 00 00                               	mov    r15d,0x2900
    1d2b7c4626cb:	41 3b d7                                        	cmp    edx,r15d
    1d2b7c4626ce:	41 0f 95 c7                                     	setne  r15b
    1d2b7c4626d2:	45 0f b6 ff                                     	movzx  r15d,r15b
    1d2b7c4626d6:	41 23 df                                        	and    ebx,r15d
    1d2b7c4626d9:	85 db                                           	test   ebx,ebx
    1d2b7c4626db:	0f 84 0f 00 00 00                               	je     0x1d2b7c4626f0
    1d2b7c4626e1:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    1d2b7c4626e7:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    1d2b7c4626eb:	e9 08 00 00 00                                  	jmp    0x1d2b7c4626f8
    1d2b7c4626f0:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    1d2b7c4626f4:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    1d2b7c4626f8:	c5 e8 59 f9                                     	vmulps xmm7,xmm2,xmm1
    1d2b7c4626fc:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    1d2b7c4626ff:	45 8b 7c 1c 0c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0xc]
    1d2b7c462704:	45 8b d0                                        	mov    r10d,r8d
    1d2b7c462707:	c4 c1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,r10
    1d2b7c46270c:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    1d2b7c462711:	c5 e8 59 d0                                     	vmulps xmm2,xmm2,xmm0
    1d2b7c462715:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c46271a:	f7 db                                           	neg    ebx
    1d2b7c46271c:	03 d9                                           	add    ebx,ecx
    1d2b7c46271e:	44 8b e3                                        	mov    r12d,ebx
    1d2b7c462721:	44 23 e1                                        	and    r12d,ecx
    1d2b7c462724:	89 45 d0                                        	mov    DWORD PTR [rbp-0x30],eax
    1d2b7c462727:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    1d2b7c46272d:	89 8d dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],ecx
    1d2b7c462733:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    1d2b7c462739:	41 23 c8                                        	and    ecx,r8d
    1d2b7c46273c:	89 95 e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],edx
    1d2b7c462742:	33 d2                                           	xor    edx,edx
    1d2b7c462744:	85 c9                                           	test   ecx,ecx
    1d2b7c462746:	0f 44 d0                                        	cmove  edx,eax
    1d2b7c462749:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    1d2b7c46274f:	44 8b d0                                        	mov    r10d,eax
    1d2b7c462752:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c462757:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c46275c:	b8 2f 81 00 00                                  	mov    eax,0x812f
    1d2b7c462761:	3b f0                                           	cmp    esi,eax
    1d2b7c462763:	0f 95 c0                                        	setne  al
    1d2b7c462766:	0f b6 c0                                        	movzx  eax,al
    1d2b7c462769:	b9 00 29 00 00                                  	mov    ecx,0x2900
    1d2b7c46276e:	3b f1                                           	cmp    esi,ecx
    1d2b7c462770:	0f 95 c1                                        	setne  cl
    1d2b7c462773:	0f b6 c9                                        	movzx  ecx,cl
    1d2b7c462776:	23 c1                                           	and    eax,ecx
    1d2b7c462778:	85 c0                                           	test   eax,eax
    1d2b7c46277a:	0f 84 17 00 00 00                               	je     0x1d2b7c462797
    1d2b7c462780:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    1d2b7c462788:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    1d2b7c46278e:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    1d2b7c462792:	e9 10 00 00 00                                  	jmp    0x1d2b7c4627a7
    1d2b7c462797:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    1d2b7c46279f:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    1d2b7c4627a3:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    1d2b7c4627a7:	c5 fa 7f 8d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm1
    1d2b7c4627af:	c5 fa 6f 8d b4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x14c]
    1d2b7c4627b7:	c5 f0 59 c8                                     	vmulps xmm1,xmm1,xmm0
    1d2b7c4627bb:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    1d2b7c4627c5:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    1d2b7c4627ca:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    1d2b7c4627ce:	c5 f0 58 f0                                     	vaddps xmm6,xmm1,xmm0
    1d2b7c4627d2:	b8 00 26 00 00                                  	mov    eax,0x2600
    1d2b7c4627d7:	44 3b f8                                        	cmp    r15d,eax
    1d2b7c4627da:	0f 94 c0                                        	sete   al
    1d2b7c4627dd:	0f b6 c0                                        	movzx  eax,al
    1d2b7c4627e0:	85 c0                                           	test   eax,eax
    1d2b7c4627e2:	0f 84 09 00 00 00                               	je     0x1d2b7c4627f1
    1d2b7c4627e8:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    1d2b7c4627ec:	e9 00 00 00 00                                  	jmp    0x1d2b7c4627f1
    1d2b7c4627f1:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    1d2b7c4627f7:	4c 8b 15 7a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb7a]        # 0x1d2b7c462378
    1d2b7c4627fe:	c4 c1 40 54 1a                                  	vandps xmm3,xmm7,XMMWORD PTR [r10]
    1d2b7c462803:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    1d2b7c462808:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    1d2b7c462812:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    1d2b7c462817:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    1d2b7c46281b:	c5 e0 c2 d8 01                                  	vcmpltps xmm3,xmm3,xmm0
    1d2b7c462820:	49 ba 40 79 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7940
    1d2b7c46282a:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    1d2b7c46282f:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    1d2b7c462834:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    1d2b7c46283a:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    1d2b7c46283e:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    1d2b7c462843:	c5 fa 7f 95 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm2
    1d2b7c46284b:	c5 fa 7f 95 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm2
    1d2b7c462853:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    1d2b7c462858:	c5 fa 6f 55 98                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x68]
    1d2b7c46285d:	c5 fa 7f 9d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm3
    1d2b7c462865:	c5 fa 6f 9d a4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x15c]
    1d2b7c46286d:	c5 e0 58 da                                     	vaddps xmm3,xmm3,xmm2
    1d2b7c462871:	c5 fa 6f 95 b4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x14c]
    1d2b7c462879:	85 c0                                           	test   eax,eax
    1d2b7c46287b:	0f 84 05 00 00 00                               	je     0x1d2b7c462886
    1d2b7c462881:	e9 04 00 00 00                                  	jmp    0x1d2b7c46288a
    1d2b7c462886:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    1d2b7c46288a:	c4 e3 79 08 da 09                               	vroundps xmm3,xmm2,0x9
    1d2b7c462890:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x1d2b7c462822
    1d2b7c462897:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    1d2b7c46289c:	c4 c1 60 54 e7                                  	vandps xmm4,xmm3,xmm15
    1d2b7c4628a1:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    1d2b7c4628a7:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    1d2b7c4628ab:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    1d2b7c4628b0:	c5 fa 7f a5 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm4
    1d2b7c4628b8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    1d2b7c4628c2:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    1d2b7c4628c7:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    1d2b7c4628cb:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    1d2b7c4628d0:	4c 8b 15 a1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaa1]        # 0x1d2b7c462378
    1d2b7c4628d7:	c4 c1 60 54 2a                                  	vandps xmm5,xmm3,XMMWORD PTR [r10]
    1d2b7c4628dc:	c5 d0 c2 e8 01                                  	vcmpltps xmm5,xmm5,xmm0
    1d2b7c4628e1:	c5 fa 7f b5 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm6
    1d2b7c4628e9:	c5 fa 6f b5 b4 fe ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x14c]
    1d2b7c4628f1:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    1d2b7c4628f5:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    1d2b7c4628f9:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    1d2b7c4628fe:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    1d2b7c462904:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    1d2b7c462908:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c46290d:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    1d2b7c462911:	c4 e2 51 3d f6                                  	vpmaxsd xmm6,xmm5,xmm6
    1d2b7c462916:	c4 e2 49 39 f0                                  	vpminsd xmm6,xmm6,xmm0
    1d2b7c46291b:	8b 8d e0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x120]
    1d2b7c462921:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    1d2b7c462927:	b8 2f 81 00 00                                  	mov    eax,0x812f
    1d2b7c46292c:	3b c8                                           	cmp    ecx,eax
    1d2b7c46292e:	0f 95 c1                                        	setne  cl
    1d2b7c462931:	0f b6 c9                                        	movzx  ecx,cl
    1d2b7c462934:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    1d2b7c46293a:	89 8d b0 fe ff ff                               	mov    DWORD PTR [rbp-0x150],ecx
    1d2b7c462940:	b9 00 29 00 00                                  	mov    ecx,0x2900
    1d2b7c462945:	3b c1                                           	cmp    eax,ecx
    1d2b7c462947:	0f 95 c0                                        	setne  al
    1d2b7c46294a:	0f b6 c0                                        	movzx  eax,al
    1d2b7c46294d:	8b 8d b0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x150]
    1d2b7c462953:	23 c8                                           	and    ecx,eax
    1d2b7c462955:	85 c9                                           	test   ecx,ecx
    1d2b7c462957:	0f 85 05 00 00 00                               	jne    0x1d2b7c462962
    1d2b7c46295d:	e9 8f 00 00 00                                  	jmp    0x1d2b7c4629f1
    1d2b7c462962:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    1d2b7c462966:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c46296b:	c5 d1 db f6                                     	vpand  xmm6,xmm5,xmm6
    1d2b7c46296f:	8b c2                                           	mov    eax,edx
    1d2b7c462971:	85 d2                                           	test   edx,edx
    1d2b7c462973:	0f 84 07 00 00 00                               	je     0x1d2b7c462980
    1d2b7c462979:	8b d0                                           	mov    edx,eax
    1d2b7c46297b:	e9 71 00 00 00                                  	jmp    0x1d2b7c4629f1
    1d2b7c462980:	c4 c1 79 6e f0                                  	vmovd  xmm6,r8d
    1d2b7c462985:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c46298a:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    1d2b7c462992:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    1d2b7c462996:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    1d2b7c46299e:	c5 d1 66 c0                                     	vpcmpgtd xmm0,xmm5,xmm0
    1d2b7c4629a2:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    1d2b7c4629a6:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    1d2b7c4629aa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4629af:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4629b4:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    1d2b7c4629b9:	c5 fa 6f bd 28 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xd8]
    1d2b7c4629c1:	c5 c1 66 fd                                     	vpcmpgtd xmm7,xmm7,xmm5
    1d2b7c4629c5:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    1d2b7c4629c9:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    1d2b7c4629cd:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4629d2:	c5 d1 fe ff                                     	vpaddd xmm7,xmm5,xmm7
    1d2b7c4629d6:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    1d2b7c4629db:	8b d0                                           	mov    edx,eax
    1d2b7c4629dd:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    1d2b7c4629e1:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    1d2b7c4629e9:	c5 fa 6f bd 48 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xb8]
    1d2b7c4629f1:	33 c0                                           	xor    eax,eax
    1d2b7c4629f3:	45 85 e4                                        	test   r12d,r12d
    1d2b7c4629f6:	0f 44 c3                                        	cmove  eax,ebx
    1d2b7c4629f9:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    1d2b7c462a01:	c5 fa 6f 85 78 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x88]
    1d2b7c462a09:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    1d2b7c462a0d:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    1d2b7c462a11:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c462a16:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    1d2b7c462a1e:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    1d2b7c462a22:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    1d2b7c462a27:	c5 fa 7f 95 e8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x118],xmm2
    1d2b7c462a2f:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    1d2b7c462a33:	c4 e2 79 3d d2                                  	vpmaxsd xmm2,xmm0,xmm2
    1d2b7c462a38:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
    1d2b7c462a3d:	b9 2f 81 00 00                                  	mov    ecx,0x812f
    1d2b7c462a42:	3b f1                                           	cmp    esi,ecx
    1d2b7c462a44:	0f 95 c1                                        	setne  cl
    1d2b7c462a47:	0f b6 c9                                        	movzx  ecx,cl
    1d2b7c462a4a:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    1d2b7c462a50:	b8 00 29 00 00                                  	mov    eax,0x2900
    1d2b7c462a55:	3b f0                                           	cmp    esi,eax
    1d2b7c462a57:	0f 95 c0                                        	setne  al
    1d2b7c462a5a:	0f b6 c0                                        	movzx  eax,al
    1d2b7c462a5d:	23 c8                                           	and    ecx,eax
    1d2b7c462a5f:	85 c9                                           	test   ecx,ecx
    1d2b7c462a61:	0f 85 05 00 00 00                               	jne    0x1d2b7c462a6c
    1d2b7c462a67:	e9 95 00 00 00                                  	jmp    0x1d2b7c462b01
    1d2b7c462a6c:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    1d2b7c462a72:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    1d2b7c462a76:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    1d2b7c462a7b:	c5 f9 db d2                                     	vpand  xmm2,xmm0,xmm2
    1d2b7c462a7f:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    1d2b7c462a85:	85 c0                                           	test   eax,eax
    1d2b7c462a87:	0f 84 05 00 00 00                               	je     0x1d2b7c462a92
    1d2b7c462a8d:	e9 6f 00 00 00                                  	jmp    0x1d2b7c462b01
    1d2b7c462a92:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    1d2b7c462a98:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    1d2b7c462a9c:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    1d2b7c462aa1:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    1d2b7c462aa5:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    1d2b7c462aad:	c5 f9 66 d9                                     	vpcmpgtd xmm3,xmm0,xmm1
    1d2b7c462ab1:	c5 61 df fc                                     	vpandn xmm15,xmm3,xmm4
    1d2b7c462ab5:	c5 e9 db db                                     	vpand  xmm3,xmm2,xmm3
    1d2b7c462ab9:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    1d2b7c462abe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c462ac3:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    1d2b7c462ac8:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    1d2b7c462ad0:	c5 d9 66 e0                                     	vpcmpgtd xmm4,xmm4,xmm0
    1d2b7c462ad4:	c5 59 df fb                                     	vpandn xmm15,xmm4,xmm3
    1d2b7c462ad8:	c5 e9 db e4                                     	vpand  xmm4,xmm2,xmm4
    1d2b7c462adc:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    1d2b7c462ae1:	c5 f9 fe e4                                     	vpaddd xmm4,xmm0,xmm4
    1d2b7c462ae5:	c5 fa 7f a5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm4
    1d2b7c462aed:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    1d2b7c462af1:	c5 fa 6f 95 a4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x15c]
    1d2b7c462af9:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    1d2b7c462b01:	c5 fa 7f 85 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm0
    1d2b7c462b09:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    1d2b7c462b0e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c462b13:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    1d2b7c462b18:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    1d2b7c462b20:	c5 e9 fe ce                                     	vpaddd xmm1,xmm2,xmm6
    1d2b7c462b24:	c4 e3 79 16 c8 03                               	vpextrd eax,xmm1,0x3
    1d2b7c462b2a:	c4 e3 79 16 c9 02                               	vpextrd ecx,xmm1,0x2
    1d2b7c462b30:	c4 e3 79 16 cb 01                               	vpextrd ebx,xmm1,0x1
    1d2b7c462b36:	c4 c1 79 7e c8                                  	vmovd  r8d,xmm1
    1d2b7c462b3b:	41 81 ff 00 26 00 00                            	cmp    r15d,0x2600
    1d2b7c462b42:	0f 84 ee 02 00 00                               	je     0x1d2b7c462e36
    1d2b7c462b48:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    1d2b7c462b52:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    1d2b7c462b57:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    1d2b7c462b5b:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    1d2b7c462b63:	c5 d1 fe d4                                     	vpaddd xmm2,xmm5,xmm4
    1d2b7c462b67:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    1d2b7c462b6b:	c4 e2 69 3d c9                                  	vpmaxsd xmm1,xmm2,xmm1
    1d2b7c462b70:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    1d2b7c462b78:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    1d2b7c462b80:	c4 e2 71 39 cb                                  	vpminsd xmm1,xmm1,xmm3
    1d2b7c462b85:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    1d2b7c462b8c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    1d2b7c462b8f:	b8 2f 81 00 00                                  	mov    eax,0x812f
    1d2b7c462b94:	44 3b e0                                        	cmp    r12d,eax
    1d2b7c462b97:	41 0f 95 c4                                     	setne  r12b
    1d2b7c462b9b:	45 0f b6 e4                                     	movzx  r12d,r12b
    1d2b7c462b9f:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    1d2b7c462ba5:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    1d2b7c462bab:	b9 00 29 00 00                                  	mov    ecx,0x2900
    1d2b7c462bb0:	3b c1                                           	cmp    eax,ecx
    1d2b7c462bb2:	0f 95 c0                                        	setne  al
    1d2b7c462bb5:	0f b6 c0                                        	movzx  eax,al
    1d2b7c462bb8:	44 23 e0                                        	and    r12d,eax
    1d2b7c462bbb:	45 85 e4                                        	test   r12d,r12d
    1d2b7c462bbe:	0f 85 05 00 00 00                               	jne    0x1d2b7c462bc9
    1d2b7c462bc4:	e9 70 00 00 00                                  	jmp    0x1d2b7c462c39
    1d2b7c462bc9:	c5 f9 6e ca                                     	vmovd  xmm1,edx
    1d2b7c462bcd:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    1d2b7c462bd2:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    1d2b7c462bd6:	8b c2                                           	mov    eax,edx
    1d2b7c462bd8:	85 d2                                           	test   edx,edx
    1d2b7c462bda:	0f 84 07 00 00 00                               	je     0x1d2b7c462be7
    1d2b7c462be0:	8b d0                                           	mov    edx,eax
    1d2b7c462be2:	e9 52 00 00 00                                  	jmp    0x1d2b7c462c39
    1d2b7c462be7:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    1d2b7c462beb:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    1d2b7c462bf3:	c5 e9 66 db                                     	vpcmpgtd xmm3,xmm2,xmm3
    1d2b7c462bf7:	c5 61 df f9                                     	vpandn xmm15,xmm3,xmm1
    1d2b7c462bfb:	c5 f9 db db                                     	vpand  xmm3,xmm0,xmm3
    1d2b7c462bff:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    1d2b7c462c04:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c462c09:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    1d2b7c462c0e:	c5 f1 66 ea                                     	vpcmpgtd xmm5,xmm1,xmm2
    1d2b7c462c12:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    1d2b7c462c16:	c5 f9 db ed                                     	vpand  xmm5,xmm0,xmm5
    1d2b7c462c1a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    1d2b7c462c1f:	c5 e9 fe ed                                     	vpaddd xmm5,xmm2,xmm5
    1d2b7c462c23:	8b d0                                           	mov    edx,eax
    1d2b7c462c25:	c5 fa 7f ad a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm5
    1d2b7c462c2d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    1d2b7c462c31:	c5 fa 6f 8d a4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x15c]
    1d2b7c462c39:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    1d2b7c462c41:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    1d2b7c462c45:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    1d2b7c462c49:	c4 e2 61 3d d2                                  	vpmaxsd xmm2,xmm3,xmm2
    1d2b7c462c4e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    1d2b7c462c56:	c4 e2 69 39 d5                                  	vpminsd xmm2,xmm2,xmm5
    1d2b7c462c5b:	b8 2f 81 00 00                                  	mov    eax,0x812f
    1d2b7c462c60:	3b f0                                           	cmp    esi,eax
    1d2b7c462c62:	0f 95 c0                                        	setne  al
    1d2b7c462c65:	0f b6 c0                                        	movzx  eax,al
    1d2b7c462c68:	b9 00 29 00 00                                  	mov    ecx,0x2900
    1d2b7c462c6d:	3b f1                                           	cmp    esi,ecx
    1d2b7c462c6f:	0f 95 c1                                        	setne  cl
    1d2b7c462c72:	0f b6 c9                                        	movzx  ecx,cl
    1d2b7c462c75:	23 c1                                           	and    eax,ecx
    1d2b7c462c77:	85 c0                                           	test   eax,eax
    1d2b7c462c79:	0f 85 05 00 00 00                               	jne    0x1d2b7c462c84
    1d2b7c462c7f:	e9 9f 00 00 00                                  	jmp    0x1d2b7c462d23
    1d2b7c462c84:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    1d2b7c462c8a:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    1d2b7c462c8e:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    1d2b7c462c93:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    1d2b7c462c97:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    1d2b7c462c9d:	85 c0                                           	test   eax,eax
    1d2b7c462c9f:	0f 84 05 00 00 00                               	je     0x1d2b7c462caa
    1d2b7c462ca5:	e9 79 00 00 00                                  	jmp    0x1d2b7c462d23
    1d2b7c462caa:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    1d2b7c462cb0:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    1d2b7c462cb4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    1d2b7c462cb9:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    1d2b7c462cbd:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    1d2b7c462cc5:	c5 fa 6f 85 38 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc8]
    1d2b7c462ccd:	c5 e1 66 c0                                     	vpcmpgtd xmm0,xmm3,xmm0
    1d2b7c462cd1:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    1d2b7c462cd5:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    1d2b7c462cd9:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c462cde:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c462ce3:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    1d2b7c462ce8:	c5 fa 7f 4d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm1
    1d2b7c462ced:	c5 d1 66 cb                                     	vpcmpgtd xmm1,xmm5,xmm3
    1d2b7c462cf1:	c5 71 df f8                                     	vpandn xmm15,xmm1,xmm0
    1d2b7c462cf5:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    1d2b7c462cf9:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c462cfe:	c5 e1 fe c9                                     	vpaddd xmm1,xmm3,xmm1
    1d2b7c462d02:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    1d2b7c462d0a:	c5 fa 7f ad 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm5
    1d2b7c462d12:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    1d2b7c462d16:	c5 fa 6f 85 28 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xd8]
    1d2b7c462d1e:	c5 fa 6f 4d a8                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x58]
    1d2b7c462d23:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    1d2b7c462d28:	c5 e9 fe ee                                     	vpaddd xmm5,xmm2,xmm6
    1d2b7c462d2c:	41 83 f9 0f                                     	cmp    r9d,0xf
    1d2b7c462d30:	0f 85 1f 00 00 00                               	jne    0x1d2b7c462d55
    1d2b7c462d36:	c5 c9 fe dc                                     	vpaddd xmm3,xmm6,xmm4
    1d2b7c462d3a:	c5 f1 76 db                                     	vpcmpeqd xmm3,xmm1,xmm3
    1d2b7c462d3e:	c5 f8 50 c3                                     	vmovmskps eax,xmm3
    1d2b7c462d42:	83 f8 0f                                        	cmp    eax,0xf
    1d2b7c462d45:	0f 85 05 00 00 00                               	jne    0x1d2b7c462d50
    1d2b7c462d4b:	e9 b6 01 00 00                                  	jmp    0x1d2b7c462f06
    1d2b7c462d50:	e9 00 00 00 00                                  	jmp    0x1d2b7c462d55
    1d2b7c462d55:	41 8b c1                                        	mov    eax,r9d
    1d2b7c462d58:	83 e0 08                                        	and    eax,0x8
    1d2b7c462d5b:	41 8b c9                                        	mov    ecx,r9d
    1d2b7c462d5e:	83 e1 04                                        	and    ecx,0x4
    1d2b7c462d61:	41 8b f1                                        	mov    esi,r9d
    1d2b7c462d64:	83 e6 02                                        	and    esi,0x2
    1d2b7c462d67:	45 8b e1                                        	mov    r12d,r9d
    1d2b7c462d6a:	41 83 e4 01                                     	and    r12d,0x1
    1d2b7c462d6e:	41 83 f9 0f                                     	cmp    r9d,0xf
    1d2b7c462d72:	0f 85 05 00 00 00                               	jne    0x1d2b7c462d7d
    1d2b7c462d78:	e9 46 04 00 00                                  	jmp    0x1d2b7c4631c3
    1d2b7c462d7d:	45 85 e4                                        	test   r12d,r12d
    1d2b7c462d80:	0f 84 23 00 00 00                               	je     0x1d2b7c462da9
    1d2b7c462d86:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c462d89:	45 8b f8                                        	mov    r15d,r8d
    1d2b7c462d8c:	41 c1 e7 02                                     	shl    r15d,0x2
    1d2b7c462d90:	41 03 d7                                        	add    edx,r15d
    1d2b7c462d93:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    1d2b7c462d97:	4d 8b 7f 17                                     	mov    r15,QWORD PTR [r15+0x17]
    1d2b7c462d9b:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    1d2b7c462d9e:	41 8b 04 17                                     	mov    eax,DWORD PTR [r15+rdx*1]
    1d2b7c462da2:	33 d2                                           	xor    edx,edx
    1d2b7c462da4:	e9 07 00 00 00                                  	jmp    0x1d2b7c462db0
    1d2b7c462da9:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    1d2b7c462dac:	33 c0                                           	xor    eax,eax
    1d2b7c462dae:	33 d2                                           	xor    edx,edx
    1d2b7c462db0:	85 f6                                           	test   esi,esi
    1d2b7c462db2:	0f 84 26 00 00 00                               	je     0x1d2b7c462dde
    1d2b7c462db8:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    1d2b7c462dbc:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    1d2b7c462dc2:	8b c3                                           	mov    eax,ebx
    1d2b7c462dc4:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c462dc7:	44 03 f8                                        	add    r15d,eax
    1d2b7c462dca:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c462dce:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c462dd2:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    1d2b7c462dd5:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    1d2b7c462dd9:	e9 0b 00 00 00                                  	jmp    0x1d2b7c462de9
    1d2b7c462dde:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    1d2b7c462de1:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    1d2b7c462de7:	8b ca                                           	mov    ecx,edx
    1d2b7c462de9:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    1d2b7c462dec:	85 c0                                           	test   eax,eax
    1d2b7c462dee:	0f 84 21 00 00 00                               	je     0x1d2b7c462e15
    1d2b7c462df4:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c462df7:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    1d2b7c462dfd:	c1 e2 02                                        	shl    edx,0x2
    1d2b7c462e00:	03 c2                                           	add    eax,edx
    1d2b7c462e02:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c462e06:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    1d2b7c462e0a:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    1d2b7c462e0e:	33 c0                                           	xor    eax,eax
    1d2b7c462e10:	e9 09 00 00 00                                  	jmp    0x1d2b7c462e1e
    1d2b7c462e15:	33 c0                                           	xor    eax,eax
    1d2b7c462e17:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    1d2b7c462e1e:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    1d2b7c462e21:	85 d2                                           	test   edx,edx
    1d2b7c462e23:	0f 84 08 00 00 00                               	je     0x1d2b7c462e31
    1d2b7c462e29:	41 8b d7                                        	mov    edx,r15d
    1d2b7c462e2c:	e9 06 04 00 00                                  	jmp    0x1d2b7c463237
    1d2b7c462e31:	e9 1d 04 00 00                                  	jmp    0x1d2b7c463253
    1d2b7c462e36:	41 83 f9 0f                                     	cmp    r9d,0xf
    1d2b7c462e3a:	0f 85 05 00 00 00                               	jne    0x1d2b7c462e45
    1d2b7c462e40:	e9 e7 0d 00 00                                  	jmp    0x1d2b7c463c2c
    1d2b7c462e45:	41 8b f1                                        	mov    esi,r9d
    1d2b7c462e48:	83 e6 01                                        	and    esi,0x1
    1d2b7c462e4b:	85 f6                                           	test   esi,esi
    1d2b7c462e4d:	0f 84 20 00 00 00                               	je     0x1d2b7c462e73
    1d2b7c462e53:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    1d2b7c462e56:	45 8b e0                                        	mov    r12d,r8d
    1d2b7c462e59:	41 c1 e4 02                                     	shl    r12d,0x2
    1d2b7c462e5d:	41 03 f4                                        	add    esi,r12d
    1d2b7c462e60:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    1d2b7c462e64:	4d 8b 67 17                                     	mov    r12,QWORD PTR [r15+0x17]
    1d2b7c462e68:	45 8b 3c 34                                     	mov    r15d,DWORD PTR [r12+rsi*1]
    1d2b7c462e6c:	33 f6                                           	xor    esi,esi
    1d2b7c462e6e:	e9 05 00 00 00                                  	jmp    0x1d2b7c462e78
    1d2b7c462e73:	33 f6                                           	xor    esi,esi
    1d2b7c462e75:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c462e78:	45 8b e1                                        	mov    r12d,r9d
    1d2b7c462e7b:	41 83 e4 02                                     	and    r12d,0x2
    1d2b7c462e7f:	45 85 e4                                        	test   r12d,r12d
    1d2b7c462e82:	0f 84 26 00 00 00                               	je     0x1d2b7c462eae
    1d2b7c462e88:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    1d2b7c462e8c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    1d2b7c462e8f:	8b c3                                           	mov    eax,ebx
    1d2b7c462e91:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c462e94:	44 03 e0                                        	add    r12d,eax
    1d2b7c462e97:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c462e9b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c462e9f:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    1d2b7c462ea5:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    1d2b7c462ea9:	e9 0b 00 00 00                                  	jmp    0x1d2b7c462eb9
    1d2b7c462eae:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    1d2b7c462eb1:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    1d2b7c462eb7:	8b ce                                           	mov    ecx,esi
    1d2b7c462eb9:	41 8b c1                                        	mov    eax,r9d
    1d2b7c462ebc:	83 e0 04                                        	and    eax,0x4
    1d2b7c462ebf:	85 c0                                           	test   eax,eax
    1d2b7c462ec1:	0f 84 22 00 00 00                               	je     0x1d2b7c462ee9
    1d2b7c462ec7:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c462eca:	8b b5 d8 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x128]
    1d2b7c462ed0:	c1 e6 02                                        	shl    esi,0x2
    1d2b7c462ed3:	03 c6                                           	add    eax,esi
    1d2b7c462ed5:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    1d2b7c462ed9:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    1d2b7c462ede:	44 8b 24 06                                     	mov    r12d,DWORD PTR [rsi+rax*1]
    1d2b7c462ee2:	33 c0                                           	xor    eax,eax
    1d2b7c462ee4:	e9 05 00 00 00                                  	jmp    0x1d2b7c462eee
    1d2b7c462ee9:	33 c0                                           	xor    eax,eax
    1d2b7c462eeb:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c462eee:	41 8b f1                                        	mov    esi,r9d
    1d2b7c462ef1:	83 e6 08                                        	and    esi,0x8
    1d2b7c462ef4:	85 f6                                           	test   esi,esi
    1d2b7c462ef6:	0f 85 05 00 00 00                               	jne    0x1d2b7c462f01
    1d2b7c462efc:	e9 b1 0d 00 00                                  	jmp    0x1d2b7c463cb2
    1d2b7c462f01:	e9 88 0d 00 00                                  	jmp    0x1d2b7c463c8e
    1d2b7c462f06:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c462f09:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c462f0c:	c1 e1 02                                        	shl    ecx,0x2
    1d2b7c462f0f:	03 c1                                           	add    eax,ecx
    1d2b7c462f11:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    1d2b7c462f15:	49 8b 4c 24 17                                  	mov    rcx,QWORD PTR [r12+0x17]
    1d2b7c462f1a:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    1d2b7c462f1f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c462f22:	44 8b e3                                        	mov    r12d,ebx
    1d2b7c462f25:	41 c1 e4 02                                     	shl    r12d,0x2
    1d2b7c462f29:	41 03 c4                                        	add    eax,r12d
    1d2b7c462f2c:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    1d2b7c462f34:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    1d2b7c462f39:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    1d2b7c462f43:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462f48:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    1d2b7c462f52:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462f58:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    1d2b7c462f5d:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x1d2b7c462f4a
    1d2b7c462f64:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462f69:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x1d2b7c462f3b
    1d2b7c462f70:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462f76:	c4 c2 79 00 de                                  	vpshufb xmm3,xmm0,xmm14
    1d2b7c462f7b:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    1d2b7c462f80:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c462f83:	44 8b a5 d8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x128]
    1d2b7c462f8a:	41 c1 e4 02                                     	shl    r12d,0x2
    1d2b7c462f8e:	41 03 c4                                        	add    eax,r12d
    1d2b7c462f91:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    1d2b7c462f96:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c462f99:	44 8b 65 d4                                     	mov    r12d,DWORD PTR [rbp-0x2c]
    1d2b7c462f9d:	41 c1 e4 02                                     	shl    r12d,0x2
    1d2b7c462fa1:	41 03 c4                                        	add    eax,r12d
    1d2b7c462fa4:	c5 fb 10 0c 01                                  	vmovsd xmm1,QWORD PTR [rcx+rax*1]
    1d2b7c462fa9:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x1d2b7c462f3b
    1d2b7c462fb0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462fb5:	4c 8b 15 8e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8e]        # 0x1d2b7c462f4a
    1d2b7c462fbc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462fc2:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    1d2b7c462fc7:	4c 8b 15 7c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff7c]        # 0x1d2b7c462f4a
    1d2b7c462fce:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462fd3:	4c 8b 15 61 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff61]        # 0x1d2b7c462f3b
    1d2b7c462fda:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c462fe0:	c4 c2 71 00 c6                                  	vpshufb xmm0,xmm1,xmm14
    1d2b7c462fe5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c462fea:	49 ba 04 05 06 07 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c07060504
    1d2b7c462ff4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c462ff9:	4c 8b 15 4a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff4a]        # 0x1d2b7c462f4a
    1d2b7c463000:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c463006:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    1d2b7c46300b:	4c 8b 15 38 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff38]        # 0x1d2b7c462f4a
    1d2b7c463012:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c463017:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x1d2b7c462fec
    1d2b7c46301e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c463024:	c4 c2 79 00 ce                                  	vpshufb xmm1,xmm0,xmm14
    1d2b7c463029:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c46302e:	49 ba 00 01 02 03 08 09 0a 0b                   	movabs r10,0xb0a090803020100
    1d2b7c463038:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c46303d:	4c 8b 15 06 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff06]        # 0x1d2b7c462f4a
    1d2b7c463044:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c46304a:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    1d2b7c46304f:	4c 8b 15 f4 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffef4]        # 0x1d2b7c462f4a
    1d2b7c463056:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c46305b:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x1d2b7c463030
    1d2b7c463062:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c463068:	c4 c2 79 00 d6                                  	vpshufb xmm2,xmm0,xmm14
    1d2b7c46306d:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    1d2b7c463072:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c463075:	c5 f9 72 f5 02                                  	vpslld xmm0,xmm5,0x2
    1d2b7c46307a:	c4 c1 79 7e c4                                  	vmovd  r12d,xmm0
    1d2b7c46307f:	41 03 c4                                        	add    eax,r12d
    1d2b7c463082:	c5 fb 10 2c 01                                  	vmovsd xmm5,QWORD PTR [rcx+rax*1]
    1d2b7c463087:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c46308a:	c4 c3 79 16 c4 01                               	vpextrd r12d,xmm0,0x1
    1d2b7c463090:	41 03 c4                                        	add    eax,r12d
    1d2b7c463093:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    1d2b7c463098:	4c 8b 15 9c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9c]        # 0x1d2b7c462f3b
    1d2b7c46309f:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4630a4:	4c 8b 15 9f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9f]        # 0x1d2b7c462f4a
    1d2b7c4630ab:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c4630b1:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    1d2b7c4630b6:	4c 8b 15 8d fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe8d]        # 0x1d2b7c462f4a
    1d2b7c4630bd:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4630c2:	4c 8b 15 72 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe72]        # 0x1d2b7c462f3b
    1d2b7c4630c9:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c4630cf:	c4 c2 49 00 ee                                  	vpshufb xmm5,xmm6,xmm14
    1d2b7c4630d4:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    1d2b7c4630d9:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4630dc:	c4 c3 79 16 c4 02                               	vpextrd r12d,xmm0,0x2
    1d2b7c4630e2:	41 03 c4                                        	add    eax,r12d
    1d2b7c4630e5:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    1d2b7c4630ea:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4630ed:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    1d2b7c4630f3:	41 03 c4                                        	add    eax,r12d
    1d2b7c4630f6:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    1d2b7c4630fb:	4c 8b 15 39 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe39]        # 0x1d2b7c462f3b
    1d2b7c463102:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c463107:	4c 8b 15 3c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe3c]        # 0x1d2b7c462f4a
    1d2b7c46310e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c463114:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    1d2b7c463119:	4c 8b 15 2a fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe2a]        # 0x1d2b7c462f4a
    1d2b7c463120:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c463125:	4c 8b 15 0f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe0f]        # 0x1d2b7c462f3b
    1d2b7c46312c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c463132:	c4 c2 49 00 de                                  	vpshufb xmm3,xmm6,xmm14
    1d2b7c463137:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    1d2b7c46313c:	4c 8b 15 a9 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea9]        # 0x1d2b7c462fec
    1d2b7c463143:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c463148:	4c 8b 15 fb fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdfb]        # 0x1d2b7c462f4a
    1d2b7c46314f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c463155:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    1d2b7c46315a:	4c 8b 15 e9 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffde9]        # 0x1d2b7c462f4a
    1d2b7c463161:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c463166:	4c 8b 15 7f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe7f]        # 0x1d2b7c462fec
    1d2b7c46316d:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c463173:	c4 c2 61 00 c6                                  	vpshufb xmm0,xmm3,xmm14
    1d2b7c463178:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c46317d:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x1d2b7c463030
    1d2b7c463184:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c463189:	4c 8b 15 ba fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdba]        # 0x1d2b7c462f4a
    1d2b7c463190:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c463196:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    1d2b7c46319b:	4c 8b 15 a8 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffda8]        # 0x1d2b7c462f4a
    1d2b7c4631a2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4631a7:	4c 8b 15 82 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe82]        # 0x1d2b7c463030
    1d2b7c4631ae:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    1d2b7c4631b4:	c4 c2 61 00 f6                                  	vpshufb xmm6,xmm3,xmm14
    1d2b7c4631b9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c4631be:	e9 96 05 00 00                                  	jmp    0x1d2b7c463759
    1d2b7c4631c3:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    1d2b7c4631c7:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    1d2b7c4631ca:	8b c3                                           	mov    eax,ebx
    1d2b7c4631cc:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c4631cf:	44 03 f8                                        	add    r15d,eax
    1d2b7c4631d2:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c4631d6:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c4631da:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    1d2b7c4631dd:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    1d2b7c4631e1:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    1d2b7c4631e5:	41 8b c0                                        	mov    eax,r8d
    1d2b7c4631e8:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c4631eb:	44 03 f8                                        	add    r15d,eax
    1d2b7c4631ee:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c4631f2:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c4631f6:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    1d2b7c4631fc:	42 8b 14 38                                     	mov    edx,DWORD PTR [rax+r15*1]
    1d2b7c463200:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    1d2b7c463204:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    1d2b7c46320a:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c46320d:	44 03 f8                                        	add    r15d,eax
    1d2b7c463210:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c463214:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c463218:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    1d2b7c46321e:	42 8b 1c 38                                     	mov    ebx,DWORD PTR [rax+r15*1]
    1d2b7c463222:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    1d2b7c463228:	44 8b fb                                        	mov    r15d,ebx
    1d2b7c46322b:	8b 85 cc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x134]
    1d2b7c463231:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    1d2b7c463237:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c46323a:	8b 5d d4                                        	mov    ebx,DWORD PTR [rbp-0x2c]
    1d2b7c46323d:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c463240:	03 d3                                           	add    edx,ebx
    1d2b7c463242:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c463246:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c46324a:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    1d2b7c463250:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    1d2b7c463253:	c5 fa 6f 9d 18 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xe8]
    1d2b7c46325b:	c5 f1 fe db                                     	vpaddd xmm3,xmm1,xmm3
    1d2b7c46325f:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    1d2b7c463265:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    1d2b7c463269:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c46326e:	41 83 f9 0f                                     	cmp    r9d,0xf
    1d2b7c463272:	0f 84 c0 00 00 00                               	je     0x1d2b7c463338
    1d2b7c463278:	45 85 e4                                        	test   r12d,r12d
    1d2b7c46327b:	0f 84 24 00 00 00                               	je     0x1d2b7c4632a5
    1d2b7c463281:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c463284:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    1d2b7c463288:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c46328b:	03 d3                                           	add    edx,ebx
    1d2b7c46328d:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c463291:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c463295:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    1d2b7c46329b:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    1d2b7c46329e:	33 d2                                           	xor    edx,edx
    1d2b7c4632a0:	e9 0a 00 00 00                                  	jmp    0x1d2b7c4632af
    1d2b7c4632a5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    1d2b7c4632ab:	33 c0                                           	xor    eax,eax
    1d2b7c4632ad:	33 d2                                           	xor    edx,edx
    1d2b7c4632af:	85 f6                                           	test   esi,esi
    1d2b7c4632b1:	0f 84 2a 00 00 00                               	je     0x1d2b7c4632e1
    1d2b7c4632b7:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    1d2b7c4632ba:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    1d2b7c4632c0:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    1d2b7c4632c6:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c4632c9:	03 d8                                           	add    ebx,eax
    1d2b7c4632cb:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c4632cf:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c4632d3:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    1d2b7c4632d9:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    1d2b7c4632dc:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4632ef
    1d2b7c4632e1:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    1d2b7c4632e7:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    1d2b7c4632ed:	8b ca                                           	mov    ecx,edx
    1d2b7c4632ef:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    1d2b7c4632f2:	85 c0                                           	test   eax,eax
    1d2b7c4632f4:	0f 84 21 00 00 00                               	je     0x1d2b7c46331b
    1d2b7c4632fa:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4632fd:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    1d2b7c463303:	c1 e2 02                                        	shl    edx,0x2
    1d2b7c463306:	03 c2                                           	add    eax,edx
    1d2b7c463308:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c46330c:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    1d2b7c463310:	44 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+rax*1]
    1d2b7c463314:	33 c0                                           	xor    eax,eax
    1d2b7c463316:	e9 05 00 00 00                                  	jmp    0x1d2b7c463320
    1d2b7c46331b:	33 c0                                           	xor    eax,eax
    1d2b7c46331d:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c463320:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    1d2b7c463323:	85 d2                                           	test   edx,edx
    1d2b7c463325:	0f 84 08 00 00 00                               	je     0x1d2b7c463333
    1d2b7c46332b:	41 8b d0                                        	mov    edx,r8d
    1d2b7c46332e:	e9 7a 00 00 00                                  	jmp    0x1d2b7c4633ad
    1d2b7c463333:	e9 94 00 00 00                                  	jmp    0x1d2b7c4633cc
    1d2b7c463338:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c46333b:	c4 e3 79 16 db 01                               	vpextrd ebx,xmm3,0x1
    1d2b7c463341:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c463344:	03 d3                                           	add    edx,ebx
    1d2b7c463346:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c46334a:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c46334e:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    1d2b7c463354:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    1d2b7c463357:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c46335a:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    1d2b7c46335e:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c463361:	03 d3                                           	add    edx,ebx
    1d2b7c463363:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c463367:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c46336b:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    1d2b7c463371:	8b 0c 13                                        	mov    ecx,DWORD PTR [rbx+rdx*1]
    1d2b7c463374:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c463377:	c4 e3 79 16 db 02                               	vpextrd ebx,xmm3,0x2
    1d2b7c46337d:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c463380:	03 d3                                           	add    edx,ebx
    1d2b7c463382:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c463386:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c46338a:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    1d2b7c463390:	8b 34 13                                        	mov    esi,DWORD PTR [rbx+rdx*1]
    1d2b7c463393:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    1d2b7c463399:	8b c8                                           	mov    ecx,eax
    1d2b7c46339b:	41 8b c0                                        	mov    eax,r8d
    1d2b7c46339e:	44 8b c6                                        	mov    r8d,esi
    1d2b7c4633a1:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    1d2b7c4633a7:	8b b5 dc fe ff ff                               	mov    esi,DWORD PTR [rbp-0x124]
    1d2b7c4633ad:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c4633b0:	c4 e3 79 16 db 03                               	vpextrd ebx,xmm3,0x3
    1d2b7c4633b6:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c4633b9:	03 d3                                           	add    edx,ebx
    1d2b7c4633bb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c4633bf:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c4633c3:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    1d2b7c4633c9:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    1d2b7c4633cc:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    1d2b7c4633d2:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    1d2b7c4633da:	c4 e3 49 22 c2 01                               	vpinsrd xmm0,xmm6,edx,0x1
    1d2b7c4633e0:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    1d2b7c4633e6:	c5 f9 6e da                                     	vmovd  xmm3,edx
    1d2b7c4633ea:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    1d2b7c4633ef:	c4 e3 61 22 d9 01                               	vpinsrd xmm3,xmm3,ecx,0x1
    1d2b7c4633f5:	41 83 f9 0f                                     	cmp    r9d,0xf
    1d2b7c4633f9:	0f 84 b0 00 00 00                               	je     0x1d2b7c4634af
    1d2b7c4633ff:	45 85 e4                                        	test   r12d,r12d
    1d2b7c463402:	0f 84 1e 00 00 00                               	je     0x1d2b7c463426
    1d2b7c463408:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    1d2b7c46340b:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    1d2b7c46340f:	c1 e2 02                                        	shl    edx,0x2
    1d2b7c463412:	03 ca                                           	add    ecx,edx
    1d2b7c463414:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c463418:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    1d2b7c46341c:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    1d2b7c46341f:	33 c9                                           	xor    ecx,ecx
    1d2b7c463421:	e9 04 00 00 00                                  	jmp    0x1d2b7c46342a
    1d2b7c463426:	33 c9                                           	xor    ecx,ecx
    1d2b7c463428:	33 db                                           	xor    ebx,ebx
    1d2b7c46342a:	85 f6                                           	test   esi,esi
    1d2b7c46342c:	0f 84 27 00 00 00                               	je     0x1d2b7c463459
    1d2b7c463432:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c463435:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    1d2b7c46343b:	c4 e3 79 16 e8 01                               	vpextrd eax,xmm5,0x1
    1d2b7c463441:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c463444:	03 d0                                           	add    edx,eax
    1d2b7c463446:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c46344a:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c46344e:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    1d2b7c463451:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    1d2b7c463454:	e9 06 00 00 00                                  	jmp    0x1d2b7c46345f
    1d2b7c463459:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    1d2b7c46345f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    1d2b7c463462:	85 c0                                           	test   eax,eax
    1d2b7c463464:	0f 84 23 00 00 00                               	je     0x1d2b7c46348d
    1d2b7c46346a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c46346d:	c4 e3 79 16 ea 02                               	vpextrd edx,xmm5,0x2
    1d2b7c463473:	c1 e2 02                                        	shl    edx,0x2
    1d2b7c463476:	03 c2                                           	add    eax,edx
    1d2b7c463478:	48 8b 55 f0                                     	mov    rdx,QWORD PTR [rbp-0x10]
    1d2b7c46347c:	48 8b 52 17                                     	mov    rdx,QWORD PTR [rdx+0x17]
    1d2b7c463480:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    1d2b7c463483:	8b 0c 02                                        	mov    ecx,DWORD PTR [rdx+rax*1]
    1d2b7c463486:	33 c0                                           	xor    eax,eax
    1d2b7c463488:	e9 0b 00 00 00                                  	jmp    0x1d2b7c463498
    1d2b7c46348d:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    1d2b7c463490:	33 c0                                           	xor    eax,eax
    1d2b7c463492:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    1d2b7c463498:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    1d2b7c46349b:	85 d2                                           	test   edx,edx
    1d2b7c46349d:	0f 84 07 00 00 00                               	je     0x1d2b7c4634aa
    1d2b7c4634a3:	8b d1                                           	mov    edx,ecx
    1d2b7c4634a5:	e9 69 00 00 00                                  	jmp    0x1d2b7c463513
    1d2b7c4634aa:	e9 91 00 00 00                                  	jmp    0x1d2b7c463540
    1d2b7c4634af:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c4634b2:	c4 e3 79 16 eb 01                               	vpextrd ebx,xmm5,0x1
    1d2b7c4634b8:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c4634bb:	03 d3                                           	add    edx,ebx
    1d2b7c4634bd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c4634c1:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c4634c5:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    1d2b7c4634cb:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    1d2b7c4634ce:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    1d2b7c4634d1:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    1d2b7c4634d5:	c1 e2 02                                        	shl    edx,0x2
    1d2b7c4634d8:	03 ca                                           	add    ecx,edx
    1d2b7c4634da:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    1d2b7c4634dd:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    1d2b7c4634e0:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    1d2b7c4634e6:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c4634e9:	03 cb                                           	add    ecx,ebx
    1d2b7c4634eb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c4634ef:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c4634f3:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    1d2b7c4634f9:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    1d2b7c4634fc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    1d2b7c4634ff:	8b ca                                           	mov    ecx,edx
    1d2b7c463501:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    1d2b7c463507:	8b 95 c4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x13c]
    1d2b7c46350d:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    1d2b7c463513:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c463516:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    1d2b7c46351c:	c4 e3 79 16 e8 03                               	vpextrd eax,xmm5,0x3
    1d2b7c463522:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c463525:	03 d0                                           	add    edx,eax
    1d2b7c463527:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c46352b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c46352f:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    1d2b7c463535:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    1d2b7c463538:	8b c1                                           	mov    eax,ecx
    1d2b7c46353a:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    1d2b7c463540:	c4 c3 79 22 f7 02                               	vpinsrd xmm6,xmm0,r15d,0x2
    1d2b7c463546:	c4 c3 61 22 c0 02                               	vpinsrd xmm0,xmm3,r8d,0x2
    1d2b7c46354c:	c5 e9 fe d9                                     	vpaddd xmm3,xmm2,xmm1
    1d2b7c463550:	c5 f9 6e eb                                     	vmovd  xmm5,ebx
    1d2b7c463554:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    1d2b7c463559:	8b 55 d4                                        	mov    edx,DWORD PTR [rbp-0x2c]
    1d2b7c46355c:	c4 e3 51 22 ea 01                               	vpinsrd xmm5,xmm5,edx,0x1
    1d2b7c463562:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    1d2b7c463568:	41 83 f9 0f                                     	cmp    r9d,0xf
    1d2b7c46356c:	0f 84 bd 00 00 00                               	je     0x1d2b7c46362f
    1d2b7c463572:	45 85 e4                                        	test   r12d,r12d
    1d2b7c463575:	0f 84 24 00 00 00                               	je     0x1d2b7c46359f
    1d2b7c46357b:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c46357e:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    1d2b7c463582:	c1 e3 02                                        	shl    ebx,0x2
    1d2b7c463585:	03 d3                                           	add    edx,ebx
    1d2b7c463587:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    1d2b7c46358b:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    1d2b7c46358f:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    1d2b7c463595:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    1d2b7c463598:	33 d2                                           	xor    edx,edx
    1d2b7c46359a:	e9 0a 00 00 00                                  	jmp    0x1d2b7c4635a9
    1d2b7c46359f:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    1d2b7c4635a5:	33 c0                                           	xor    eax,eax
    1d2b7c4635a7:	33 d2                                           	xor    edx,edx
    1d2b7c4635a9:	85 f6                                           	test   esi,esi
    1d2b7c4635ab:	0f 84 2a 00 00 00                               	je     0x1d2b7c4635db
    1d2b7c4635b1:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    1d2b7c4635b4:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    1d2b7c4635ba:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    1d2b7c4635c0:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c4635c3:	03 d8                                           	add    ebx,eax
    1d2b7c4635c5:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c4635c9:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c4635cd:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    1d2b7c4635d3:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    1d2b7c4635d6:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4635e9
    1d2b7c4635db:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    1d2b7c4635e1:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    1d2b7c4635e7:	8b ca                                           	mov    ecx,edx
    1d2b7c4635e9:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    1d2b7c4635ec:	85 c0                                           	test   eax,eax
    1d2b7c4635ee:	0f 84 20 00 00 00                               	je     0x1d2b7c463614
    1d2b7c4635f4:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4635f7:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    1d2b7c4635fd:	c1 e2 02                                        	shl    edx,0x2
    1d2b7c463600:	03 c2                                           	add    eax,edx
    1d2b7c463602:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c463606:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    1d2b7c46360a:	8b 1c 02                                        	mov    ebx,DWORD PTR [rdx+rax*1]
    1d2b7c46360d:	33 c0                                           	xor    eax,eax
    1d2b7c46360f:	e9 04 00 00 00                                  	jmp    0x1d2b7c463618
    1d2b7c463614:	33 c0                                           	xor    eax,eax
    1d2b7c463616:	33 db                                           	xor    ebx,ebx
    1d2b7c463618:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    1d2b7c46361b:	85 d2                                           	test   edx,edx
    1d2b7c46361d:	0f 84 07 00 00 00                               	je     0x1d2b7c46362a
    1d2b7c463623:	8b d3                                           	mov    edx,ebx
    1d2b7c463625:	e9 77 00 00 00                                  	jmp    0x1d2b7c4636a1
    1d2b7c46362a:	e9 90 00 00 00                                  	jmp    0x1d2b7c4636bf
    1d2b7c46362f:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c463632:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    1d2b7c463638:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    1d2b7c46363e:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c463641:	03 d0                                           	add    edx,eax
    1d2b7c463643:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c463647:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c46364b:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    1d2b7c463651:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    1d2b7c463654:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c463657:	c5 f9 7e d8                                     	vmovd  eax,xmm3
    1d2b7c46365b:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c46365e:	03 d0                                           	add    edx,eax
    1d2b7c463660:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c463664:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c463668:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    1d2b7c46366e:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    1d2b7c463671:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c463674:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    1d2b7c46367a:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c46367d:	03 d0                                           	add    edx,eax
    1d2b7c46367f:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c463683:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c463687:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    1d2b7c46368d:	8b 34 10                                        	mov    esi,DWORD PTR [rax+rdx*1]
    1d2b7c463690:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    1d2b7c463696:	41 8b d4                                        	mov    edx,r12d
    1d2b7c463699:	8b de                                           	mov    ebx,esi
    1d2b7c46369b:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    1d2b7c4636a1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    1d2b7c4636a4:	c4 e3 79 16 de 03                               	vpextrd esi,xmm3,0x3
    1d2b7c4636aa:	c1 e6 02                                        	shl    esi,0x2
    1d2b7c4636ad:	03 d6                                           	add    edx,esi
    1d2b7c4636af:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    1d2b7c4636b3:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    1d2b7c4636b8:	44 8b 24 16                                     	mov    r12d,DWORD PTR [rsi+rdx*1]
    1d2b7c4636bc:	41 8b c4                                        	mov    eax,r12d
    1d2b7c4636bf:	8b 95 cc fe ff ff                               	mov    edx,DWORD PTR [rbp-0x134]
    1d2b7c4636c5:	c4 e3 49 22 ca 03                               	vpinsrd xmm1,xmm6,edx,0x3
    1d2b7c4636cb:	8b 95 d0 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x130]
    1d2b7c4636d1:	c4 e3 79 22 d2 03                               	vpinsrd xmm2,xmm0,edx,0x3
    1d2b7c4636d7:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    1d2b7c4636dd:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    1d2b7c4636e1:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c4636e6:	c4 e3 49 22 f1 01                               	vpinsrd xmm6,xmm6,ecx,0x1
    1d2b7c4636ec:	c4 e3 49 22 f3 02                               	vpinsrd xmm6,xmm6,ebx,0x2
    1d2b7c4636f2:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    1d2b7c4636f8:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    1d2b7c4636fe:	c4 e3 51 22 c2 03                               	vpinsrd xmm0,xmm5,edx,0x3
    1d2b7c463704:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    1d2b7c463707:	89 9d e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],ebx
    1d2b7c46370d:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    1d2b7c463713:	44 89 bd c8 fe ff ff                            	mov    DWORD PTR [rbp-0x138],r15d
    1d2b7c46371a:	41 8b d0                                        	mov    edx,r8d
    1d2b7c46371d:	c5 fa 7f b5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm6
    1d2b7c463725:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c463729:	c5 fa 7f 95 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm2
    1d2b7c463731:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    1d2b7c463735:	8b 9d cc fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x134]
    1d2b7c46373b:	8b 75 d8                                        	mov    esi,DWORD PTR [rbp-0x28]
    1d2b7c46373e:	44 8b 85 d0 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x130]
    1d2b7c463745:	44 8b 7d dc                                     	mov    r15d,DWORD PTR [rbp-0x24]
    1d2b7c463749:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    1d2b7c463751:	c5 fa 6f 8d 94 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x16c]
    1d2b7c463759:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    1d2b7c463761:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    1d2b7c463766:	c5 fa 7f 4d 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm1
    1d2b7c46376b:	c5 fa 6f 8d 08 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xf8]
    1d2b7c463773:	c5 f0 5c cf                                     	vsubps xmm1,xmm1,xmm7
    1d2b7c463777:	c5 f8 5c c1                                     	vsubps xmm0,xmm0,xmm1
    1d2b7c46377b:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    1d2b7c463780:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    1d2b7c463788:	c5 fa 6f 95 e8 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x118]
    1d2b7c463790:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    1d2b7c463795:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    1d2b7c46379d:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    1d2b7c4637a1:	c5 c0 5c fa                                     	vsubps xmm7,xmm7,xmm2
    1d2b7c4637a5:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    1d2b7c4637ad:	c5 e1 72 d3 18                                  	vpsrld xmm3,xmm3,0x18
    1d2b7c4637b2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4637b7:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    1d2b7c4637bd:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    1d2b7c4637c2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4637c7:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    1d2b7c4637cc:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    1d2b7c4637d0:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    1d2b7c4637d4:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    1d2b7c4637d9:	c5 c0 59 db                                     	vmulps xmm3,xmm7,xmm3
    1d2b7c4637dd:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    1d2b7c4637e2:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    1d2b7c4637e7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4637ec:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    1d2b7c4637f2:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    1d2b7c4637f7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4637fc:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    1d2b7c463801:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    1d2b7c463805:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    1d2b7c463809:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    1d2b7c46380e:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    1d2b7c463812:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    1d2b7c463816:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    1d2b7c46381a:	c5 d1 72 d6 18                                  	vpsrld xmm5,xmm6,0x18
    1d2b7c46381f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463824:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    1d2b7c46382a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    1d2b7c46382f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463834:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    1d2b7c463839:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    1d2b7c46383d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    1d2b7c463841:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    1d2b7c463846:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    1d2b7c46384a:	c5 fa 7f a5 f8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x108],xmm4
    1d2b7c463852:	c5 fa 6f a5 68 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x98]
    1d2b7c46385a:	c5 d9 72 d4 18                                  	vpsrld xmm4,xmm4,0x18
    1d2b7c46385f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463864:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c46386a:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c46386f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463874:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c463879:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c46387d:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c463881:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c463886:	c5 e8 59 e4                                     	vmulps xmm4,xmm2,xmm4
    1d2b7c46388a:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    1d2b7c46388e:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    1d2b7c463892:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    1d2b7c463896:	c5 fa 6f a5 78 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x88]
    1d2b7c46389e:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    1d2b7c4638a8:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c4638ad:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c4638b1:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    1d2b7c4638b5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4638ba:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c4638c0:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c4638c5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4638ca:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c4638cf:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c4638d3:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c4638d7:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c4638dc:	c5 c0 59 e4                                     	vmulps xmm4,xmm7,xmm4
    1d2b7c4638e0:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    1d2b7c4638e5:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    1d2b7c4638ea:	c5 fa 7f b5 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm6
    1d2b7c4638f2:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    1d2b7c4638f7:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    1d2b7c4638fb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463900:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    1d2b7c463906:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    1d2b7c46390b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463910:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    1d2b7c463915:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    1d2b7c463919:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    1d2b7c46391d:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    1d2b7c463922:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    1d2b7c463926:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    1d2b7c46392a:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    1d2b7c46392e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    1d2b7c463936:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    1d2b7c46393b:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    1d2b7c46393f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463944:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    1d2b7c46394a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    1d2b7c46394f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463954:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    1d2b7c463959:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    1d2b7c46395d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    1d2b7c463961:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    1d2b7c463966:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    1d2b7c46396a:	c5 fa 6f b5 68 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x98]
    1d2b7c463972:	c5 fa 7f 7d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm7
    1d2b7c463977:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    1d2b7c46397c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    1d2b7c463980:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463985:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    1d2b7c46398b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    1d2b7c463990:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463995:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    1d2b7c46399a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    1d2b7c46399e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    1d2b7c4639a2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    1d2b7c4639a7:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    1d2b7c4639ab:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    1d2b7c4639af:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    1d2b7c4639b3:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    1d2b7c4639b7:	c5 fa 6f 6d a8                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x58]
    1d2b7c4639bc:	c5 fa 6f b5 78 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x88]
    1d2b7c4639c4:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    1d2b7c4639c9:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    1d2b7c4639ce:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    1d2b7c4639d2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4639d7:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    1d2b7c4639dd:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    1d2b7c4639e2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4639e7:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    1d2b7c4639ec:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    1d2b7c4639f0:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    1d2b7c4639f4:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    1d2b7c4639f9:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    1d2b7c4639fd:	c5 fa 6f 75 98                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x68]
    1d2b7c463a02:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    1d2b7c463a07:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    1d2b7c463a0c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    1d2b7c463a10:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463a15:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    1d2b7c463a1b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    1d2b7c463a20:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463a25:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    1d2b7c463a2a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    1d2b7c463a2e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    1d2b7c463a32:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    1d2b7c463a37:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    1d2b7c463a3b:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    1d2b7c463a3f:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    1d2b7c463a43:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    1d2b7c463a48:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    1d2b7c463a50:	c5 c1 72 d7 10                                  	vpsrld xmm7,xmm7,0x10
    1d2b7c463a55:	c5 fa 7f 85 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm0
    1d2b7c463a5d:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    1d2b7c463a62:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
    1d2b7c463a66:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463a6b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    1d2b7c463a71:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    1d2b7c463a76:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463a7b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    1d2b7c463a80:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    1d2b7c463a84:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    1d2b7c463a88:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    1d2b7c463a8d:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    1d2b7c463a91:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    1d2b7c463a99:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    1d2b7c463a9e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    1d2b7c463aa3:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    1d2b7c463aa7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463aac:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c463ab2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c463ab7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463abc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c463ac1:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c463ac5:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c463ac9:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c463ace:	c5 e8 59 c0                                     	vmulps xmm0,xmm2,xmm0
    1d2b7c463ad2:	c5 c8 58 f0                                     	vaddps xmm6,xmm6,xmm0
    1d2b7c463ad6:	c5 f0 59 f6                                     	vmulps xmm6,xmm1,xmm6
    1d2b7c463ada:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    1d2b7c463ade:	c5 fa 6f 85 18 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xe8]
    1d2b7c463ae6:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    1d2b7c463aeb:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    1d2b7c463af3:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    1d2b7c463af8:	c5 fa 7f 8d 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm1
    1d2b7c463b00:	c5 fa 6f 4d 88                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x78]
    1d2b7c463b05:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    1d2b7c463b09:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463b0e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    1d2b7c463b14:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    1d2b7c463b19:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463b1e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    1d2b7c463b23:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    1d2b7c463b27:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    1d2b7c463b2b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    1d2b7c463b30:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    1d2b7c463b34:	c5 fa 6f 4d 98                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x68]
    1d2b7c463b39:	c5 f1 72 d1 08                                  	vpsrld xmm1,xmm1,0x8
    1d2b7c463b3e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    1d2b7c463b43:	c5 f1 db cf                                     	vpand  xmm1,xmm1,xmm7
    1d2b7c463b47:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463b4c:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c463b52:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c463b57:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463b5c:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c463b61:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c463b65:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c463b69:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c463b6e:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    1d2b7c463b72:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    1d2b7c463b76:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    1d2b7c463b7a:	c5 fa 6f 8d 48 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xb8]
    1d2b7c463b82:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    1d2b7c463b87:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    1d2b7c463b8f:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    1d2b7c463b94:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    1d2b7c463b99:	c5 fa 6f 55 88                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x78]
    1d2b7c463b9e:	c5 c1 db fa                                     	vpand  xmm7,xmm7,xmm2
    1d2b7c463ba2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463ba7:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    1d2b7c463bad:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    1d2b7c463bb2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463bb7:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    1d2b7c463bbc:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    1d2b7c463bc0:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    1d2b7c463bc4:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    1d2b7c463bc9:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    1d2b7c463bcd:	c5 fa 6f 55 b8                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x48]
    1d2b7c463bd2:	c5 fa 6f bd 68 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x98]
    1d2b7c463bda:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    1d2b7c463bdf:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    1d2b7c463be7:	c5 fa 6f 5d 88                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x78]
    1d2b7c463bec:	c5 c1 db fb                                     	vpand  xmm7,xmm7,xmm3
    1d2b7c463bf0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463bf5:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    1d2b7c463bfb:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    1d2b7c463c00:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463c05:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    1d2b7c463c0a:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    1d2b7c463c0e:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    1d2b7c463c12:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    1d2b7c463c17:	c5 e8 59 d7                                     	vmulps xmm2,xmm2,xmm7
    1d2b7c463c1b:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
    1d2b7c463c1f:	c5 f0 59 ce                                     	vmulps xmm1,xmm1,xmm6
    1d2b7c463c23:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    1d2b7c463c27:	e9 c8 01 00 00                                  	jmp    0x1d2b7c463df4
    1d2b7c463c2c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    1d2b7c463c30:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    1d2b7c463c33:	8b c1                                           	mov    eax,ecx
    1d2b7c463c35:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c463c38:	44 03 e0                                        	add    r12d,eax
    1d2b7c463c3b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c463c3f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c463c43:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    1d2b7c463c49:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    1d2b7c463c4d:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    1d2b7c463c51:	8b c3                                           	mov    eax,ebx
    1d2b7c463c53:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c463c56:	44 03 e0                                        	add    r12d,eax
    1d2b7c463c59:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c463c5d:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c463c61:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    1d2b7c463c67:	42 8b 14 20                                     	mov    edx,DWORD PTR [rax+r12*1]
    1d2b7c463c6b:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    1d2b7c463c6f:	45 8b f8                                        	mov    r15d,r8d
    1d2b7c463c72:	41 c1 e7 02                                     	shl    r15d,0x2
    1d2b7c463c76:	45 03 e7                                        	add    r12d,r15d
    1d2b7c463c79:	46 8b 3c 20                                     	mov    r15d,DWORD PTR [rax+r12*1]
    1d2b7c463c7d:	44 8b e1                                        	mov    r12d,ecx
    1d2b7c463c80:	8b ca                                           	mov    ecx,edx
    1d2b7c463c82:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    1d2b7c463c88:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    1d2b7c463c8e:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    1d2b7c463c91:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    1d2b7c463c97:	8b 45 d4                                        	mov    eax,DWORD PTR [rbp-0x2c]
    1d2b7c463c9a:	c1 e0 02                                        	shl    eax,0x2
    1d2b7c463c9d:	03 f0                                           	add    esi,eax
    1d2b7c463c9f:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    1d2b7c463ca3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    1d2b7c463ca7:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    1d2b7c463caa:	8b 0c 30                                        	mov    ecx,DWORD PTR [rax+rsi*1]
    1d2b7c463cad:	8b c1                                           	mov    eax,ecx
    1d2b7c463caf:	8b 4d dc                                        	mov    ecx,DWORD PTR [rbp-0x24]
    1d2b7c463cb2:	c4 c1 79 6e e7                                  	vmovd  xmm4,r15d
    1d2b7c463cb7:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    1d2b7c463cbc:	c4 e3 59 22 e1 01                               	vpinsrd xmm4,xmm4,ecx,0x1
    1d2b7c463cc2:	c4 c3 59 22 e4 02                               	vpinsrd xmm4,xmm4,r12d,0x2
    1d2b7c463cc8:	c4 e3 59 22 e0 03                               	vpinsrd xmm4,xmm4,eax,0x3
    1d2b7c463cce:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    1d2b7c463cd6:	c5 f9 72 d4 18                                  	vpsrld xmm0,xmm4,0x18
    1d2b7c463cdb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463ce0:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c463ce6:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c463ceb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463cf0:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c463cf5:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c463cf9:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c463cfd:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c463d02:	4c 8b 15 97 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb97]        # 0x1d2b7c4638a0
    1d2b7c463d09:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c463d0e:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c463d12:	c5 d9 db cb                                     	vpand  xmm1,xmm4,xmm3
    1d2b7c463d16:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463d1b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c463d21:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c463d26:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463d2b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c463d30:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c463d34:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c463d38:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c463d3d:	c5 fa 7f 8d 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm1
    1d2b7c463d45:	c5 f1 72 d4 10                                  	vpsrld xmm1,xmm4,0x10
    1d2b7c463d4a:	c5 f1 db cb                                     	vpand  xmm1,xmm1,xmm3
    1d2b7c463d4e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463d53:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c463d59:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c463d5e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463d63:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c463d68:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c463d6c:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c463d70:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c463d75:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    1d2b7c463d7d:	c5 e9 72 d4 08                                  	vpsrld xmm2,xmm4,0x8
    1d2b7c463d82:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    1d2b7c463d86:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c463d8b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    1d2b7c463d91:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    1d2b7c463d96:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c463d9b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    1d2b7c463da0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c463da4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    1d2b7c463da8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    1d2b7c463dad:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    1d2b7c463db2:	c5 fa 7f 6d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm5
    1d2b7c463db7:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    1d2b7c463dbc:	c5 fa 7f 65 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm4
    1d2b7c463dc1:	c5 fa 7f 85 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm0
    1d2b7c463dc9:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    1d2b7c463dd1:	44 89 a5 e0 fe ff ff                            	mov    DWORD PTR [rbp-0x120],r12d
    1d2b7c463dd8:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    1d2b7c463dde:	41 8b f7                                        	mov    esi,r15d
    1d2b7c463de1:	44 8b f9                                        	mov    r15d,ecx
    1d2b7c463de4:	c5 f9 28 c2                                     	vmovapd xmm0,xmm2
    1d2b7c463de8:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    1d2b7c463dec:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    1d2b7c463df4:	c5 fa 6f 8d 58 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xa8]
    1d2b7c463dfc:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    1d2b7c463e06:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c463e0b:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c463e0f:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    1d2b7c463e13:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    1d2b7c463e17:	41 8b c1                                        	mov    eax,r9d
    1d2b7c463e1a:	83 e0 01                                        	and    eax,0x1
    1d2b7c463e1d:	33 c9                                           	xor    ecx,ecx
    1d2b7c463e1f:	2b c8                                           	sub    ecx,eax
    1d2b7c463e21:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    1d2b7c463e25:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c463e2a:	41 8b c1                                        	mov    eax,r9d
    1d2b7c463e2d:	c1 e0 1e                                        	shl    eax,0x1e
    1d2b7c463e30:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c463e33:	c4 e3 49 22 f0 01                               	vpinsrd xmm6,xmm6,eax,0x1
    1d2b7c463e39:	41 8b c1                                        	mov    eax,r9d
    1d2b7c463e3c:	c1 e0 1d                                        	shl    eax,0x1d
    1d2b7c463e3f:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c463e42:	c4 e3 49 22 f0 02                               	vpinsrd xmm6,xmm6,eax,0x2
    1d2b7c463e48:	41 8b c1                                        	mov    eax,r9d
    1d2b7c463e4b:	c1 e0 1c                                        	shl    eax,0x1c
    1d2b7c463e4e:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c463e51:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    1d2b7c463e57:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    1d2b7c463e5b:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    1d2b7c463e5f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c463e64:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    1d2b7c463e68:	48 8b 41 17                                     	mov    rax,QWORD PTR [rcx+0x17]
    1d2b7c463e6c:	c5 fa 7f 7c 38 30                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x30],xmm7
    1d2b7c463e72:	c5 d0 59 ca                                     	vmulps xmm1,xmm5,xmm2
    1d2b7c463e76:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    1d2b7c463e7a:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    1d2b7c463e7e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c463e83:	c5 fa 7f 7c 38 20                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x20],xmm7
    1d2b7c463e89:	c5 f8 59 ca                                     	vmulps xmm1,xmm0,xmm2
    1d2b7c463e8d:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    1d2b7c463e91:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    1d2b7c463e95:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c463e9a:	c5 fa 7f 7c 38 10                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x10],xmm7
    1d2b7c463ea0:	c5 d8 59 ca                                     	vmulps xmm1,xmm4,xmm2
    1d2b7c463ea4:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    1d2b7c463ea8:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    1d2b7c463eac:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c463eb1:	c5 fa 7f 3c 38                                  	vmovdqu XMMWORD PTR [rax+rdi*1],xmm7
    1d2b7c463eb6:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    1d2b7c463ebb:	c5 fa 7f a5 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm4
    1d2b7c463ec3:	c5 fa 7f ad 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm5
    1d2b7c463ecb:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    1d2b7c463ed1:	44 89 85 d0 fe ff ff                            	mov    DWORD PTR [rbp-0x130],r8d
    1d2b7c463ed8:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    1d2b7c463ede:	41 8b c7                                        	mov    eax,r15d
    1d2b7c463ee1:	8b d6                                           	mov    edx,esi
    1d2b7c463ee3:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c463ee7:	c5 f9 28 eb                                     	vmovapd xmm5,xmm3
    1d2b7c463eeb:	b9 01 00 00 00                                  	mov    ecx,0x1
    1d2b7c463ef0:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    1d2b7c463ef6:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    1d2b7c463ef9:	44 8b 45 d4                                     	mov    r8d,DWORD PTR [rbp-0x2c]
    1d2b7c463efd:	44 8b a5 dc fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x124]
    1d2b7c463f04:	44 8b bd e0 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x120]
    1d2b7c463f0b:	c5 fa 6f a5 48 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xb8]
    1d2b7c463f13:	c5 fa 6f b5 58 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xa8]
    1d2b7c463f1b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    1d2b7c463f23:	8b c1                                           	mov    eax,ecx
    1d2b7c463f25:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
    1d2b7c463f29:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
    1d2b7c463f2d:	41 81 aa bc 02 00 00 61 1c 00 00                	sub    DWORD PTR [r10+0x2bc],0x1c61
    1d2b7c463f38:	0f 88 25 00 00 00                               	js     0x1d2b7c463f63
    1d2b7c463f3e:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c463f41:	5d                                              	pop    rbp
    1d2b7c463f42:	c2 08 00                                        	ret    0x8
    1d2b7c463f45:	50                                              	push   rax
    1d2b7c463f46:	51                                              	push   rcx
    1d2b7c463f47:	52                                              	push   rdx
    1d2b7c463f48:	53                                              	push   rbx
    1d2b7c463f49:	57                                              	push   rdi
    1d2b7c463f4a:	41 51                                           	push   r9
    1d2b7c463f4c:	33 c0                                           	xor    eax,eax
    1d2b7c463f4e:	e8 dd af f5 ff                                  	call   0x1d2b7c3bef30
    1d2b7c463f53:	41 59                                           	pop    r9
    1d2b7c463f55:	5f                                              	pop    rdi
    1d2b7c463f56:	5b                                              	pop    rbx
    1d2b7c463f57:	5a                                              	pop    rdx
    1d2b7c463f58:	59                                              	pop    rcx
    1d2b7c463f59:	58                                              	pop    rax
    1d2b7c463f5a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c463f5e:	e9 dd e3 ff ff                                  	jmp    0x1d2b7c462340
    1d2b7c463f63:	50                                              	push   rax
    1d2b7c463f64:	e8 f7 ad f5 ff                                  	call   0x1d2b7c3bed60
    1d2b7c463f69:	58                                              	pop    rax
    1d2b7c463f6a:	eb d2                                           	jmp    0x1d2b7c463f3e
    1d2b7c463f6c:	36 00 00                                        	ss add BYTE PTR [rax],al
    1d2b7c463f6f:	00 08                                           	add    BYTE PTR [rax],cl
	...
