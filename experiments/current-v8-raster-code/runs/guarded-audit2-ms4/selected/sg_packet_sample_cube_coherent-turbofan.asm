
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms4/selected/sg_packet_sample_cube_coherent-turbofan.bin:     file format binary


Disassembly of section .data:

0000214fa4943600 <.data>:
    214fa4943600:	55                                              	push   rbp
    214fa4943601:	48 8b ec                                        	mov    rbp,rsp
    214fa4943604:	6a 30                                           	push   0x30
    214fa4943606:	56                                              	push   rsi
    214fa4943607:	48 83 ec 18                                     	sub    rsp,0x18
    214fa494360b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    214fa494360f:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    214fa4943613:	45 85 c9                                        	test   r9d,r9d
    214fa4943616:	0f 85 09 00 00 00                               	jne    0x214fa4943625
    214fa494361c:	33 c0                                           	xor    eax,eax
    214fa494361e:	48 8b e5                                        	mov    rsp,rbp
    214fa4943621:	5d                                              	pop    rbp
    214fa4943622:	c2 08 00                                        	ret    0x8
    214fa4943625:	8b f8                                           	mov    edi,eax
    214fa4943627:	44 8b 44 3e 04                                  	mov    r8d,DWORD PTR [rsi+rdi*1+0x4]
    214fa494362c:	45 85 c0                                        	test   r8d,r8d
    214fa494362f:	0f 85 04 00 00 00                               	jne    0x214fa4943639
    214fa4943635:	33 c0                                           	xor    eax,eax
    214fa4943637:	eb e5                                           	jmp    0x214fa494361e
    214fa4943639:	45 8b d9                                        	mov    r11d,r9d
    214fa494363c:	41 83 e3 0f                                     	and    r11d,0xf
    214fa4943640:	8b c9                                           	mov    ecx,ecx
    214fa4943642:	c5 fa 6f 0c 0e                                  	vmovdqu xmm1,XMMWORD PTR [rsi+rcx*1]
    214fa4943647:	49 ba 50 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2850
    214fa4943651:	c4 c1 70 54 12                                  	vandps xmm2,xmm1,XMMWORD PTR [r10]
    214fa4943656:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    214fa4943660:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa4943665:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa4943669:	c5 e8 c2 e3 02                                  	vcmpleps xmm4,xmm2,xmm3
    214fa494366e:	8b d2                                           	mov    edx,edx
    214fa4943670:	c5 fa 6f 2c 16                                  	vmovdqu xmm5,XMMWORD PTR [rsi+rdx*1]
    214fa4943675:	4c 8b 15 cd ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcd]        # 0x214fa4943649
    214fa494367c:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    214fa4943681:	c5 c8 c2 fb 02                                  	vcmpleps xmm7,xmm6,xmm3
    214fa4943686:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    214fa494368a:	8b db                                           	mov    ebx,ebx
    214fa494368c:	c5 fa 6f 3c 1e                                  	vmovdqu xmm7,XMMWORD PTR [rsi+rbx*1]
    214fa4943691:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x214fa4943649
    214fa4943698:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    214fa494369d:	c5 b8 c2 db 02                                  	vcmpleps xmm3,xmm8,xmm3
    214fa49436a2:	c5 d9 db db                                     	vpand  xmm3,xmm4,xmm3
    214fa49436a6:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    214fa49436aa:	41 23 db                                        	and    ebx,r11d
    214fa49436ad:	41 3b d9                                        	cmp    ebx,r9d
    214fa49436b0:	0f 84 09 00 00 00                               	je     0x214fa49436bf
    214fa49436b6:	33 c0                                           	xor    eax,eax
    214fa49436b8:	48 8b e5                                        	mov    rsp,rbp
    214fa49436bb:	5d                                              	pop    rbp
    214fa49436bc:	c2 08 00                                        	ret    0x8
    214fa49436bf:	c5 b8 c2 de 02                                  	vcmpleps xmm3,xmm8,xmm6
    214fa49436c4:	c5 e8 c2 e6 02                                  	vcmpleps xmm4,xmm2,xmm6
    214fa49436c9:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    214fa49436cd:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    214fa49436d1:	8b d3                                           	mov    edx,ebx
    214fa49436d3:	41 23 d1                                        	and    edx,r9d
    214fa49436d6:	44 3b ca                                        	cmp    r9d,edx
    214fa49436d9:	0f 84 8c 00 00 00                               	je     0x214fa494376b
    214fa49436df:	c5 b8 c2 da 02                                  	vcmpleps xmm3,xmm8,xmm2
    214fa49436e4:	c5 c8 c2 e2 02                                  	vcmpleps xmm4,xmm6,xmm2
    214fa49436e9:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    214fa49436ed:	c5 f8 50 cb                                     	vmovmskps ecx,xmm3
    214fa49436f1:	44 8b e3                                        	mov    r12d,ebx
    214fa49436f4:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    214fa49436f8:	45 23 e1                                        	and    r12d,r9d
    214fa49436fb:	44 23 e1                                        	and    r12d,ecx
    214fa49436fe:	45 3b e1                                        	cmp    r12d,r9d
    214fa4943701:	0f 84 42 00 00 00                               	je     0x214fa4943749
    214fa4943707:	0b d9                                           	or     ebx,ecx
    214fa4943709:	41 85 d9                                        	test   r9d,ebx
    214fa494370c:	0f 85 2e 00 00 00                               	jne    0x214fa4943740
    214fa4943712:	49 ba 60 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2860
    214fa494371c:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    214fa4943721:	bb 04 00 00 00                                  	mov    ebx,0x4
    214fa4943726:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa494372b:	33 c9                                           	xor    ecx,ecx
    214fa494372d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    214fa4943733:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    214fa4943737:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    214fa494373b:	e9 4a 00 00 00                                  	jmp    0x214fa494378a
    214fa4943740:	33 c0                                           	xor    eax,eax
    214fa4943742:	48 8b e5                                        	mov    rsp,rbp
    214fa4943745:	5d                                              	pop    rbp
    214fa4943746:	c2 08 00                                        	ret    0x8
    214fa4943749:	bb 02 00 00 00                                  	mov    ebx,0x2
    214fa494374e:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    214fa4943752:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa4943757:	45 33 e4                                        	xor    r12d,r12d
    214fa494375a:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    214fa494375e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    214fa4943762:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    214fa4943766:	e9 1f 00 00 00                                  	jmp    0x214fa494378a
    214fa494376b:	4c 8b 15 a2 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa2]        # 0x214fa4943714
    214fa4943772:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    214fa4943777:	4c 8b 15 96 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff96]        # 0x214fa4943714
    214fa494377e:	c4 c1 40 57 12                                  	vxorps xmm2,xmm7,XMMWORD PTR [r10]
    214fa4943783:	33 c9                                           	xor    ecx,ecx
    214fa4943785:	8b d9                                           	mov    ebx,ecx
    214fa4943787:	44 8b e1                                        	mov    r12d,ecx
    214fa494378a:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    214fa494378e:	c5 e0 c2 e5 02                                  	vcmpleps xmm4,xmm3,xmm5
    214fa4943793:	c5 78 50 fc                                     	vmovmskps r15d,xmm4
    214fa4943797:	45 23 fb                                        	and    r15d,r11d
    214fa494379a:	0f 85 58 00 00 00                               	jne    0x214fa49437f8
    214fa49437a0:	4c 8b 15 6d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff6d]        # 0x214fa4943714
    214fa49437a7:	c4 c1 70 57 22                                  	vxorps xmm4,xmm1,XMMWORD PTR [r10]
    214fa49437ac:	85 c9                                           	test   ecx,ecx
    214fa49437ae:	0f 85 04 00 00 00                               	jne    0x214fa49437b8
    214fa49437b4:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    214fa49437b8:	4c 8b 15 55 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff55]        # 0x214fa4943714
    214fa49437bf:	c4 c1 68 57 0a                                  	vxorps xmm1,xmm2,XMMWORD PTR [r10]
    214fa49437c4:	45 85 e4                                        	test   r12d,r12d
    214fa49437c7:	0f 84 04 00 00 00                               	je     0x214fa49437d1
    214fa49437cd:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    214fa49437d1:	41 3b d1                                        	cmp    edx,r9d
    214fa49437d4:	0f 84 04 00 00 00                               	je     0x214fa49437de
    214fa49437da:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    214fa49437de:	83 cb 01                                        	or     ebx,0x1
    214fa49437e1:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa49437e6:	85 c9                                           	test   ecx,ecx
    214fa49437e8:	0f 45 da                                        	cmovne ebx,edx
    214fa49437eb:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    214fa49437ef:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    214fa49437f3:	e9 12 00 00 00                                  	jmp    0x214fa494380a
    214fa49437f8:	45 3b f9                                        	cmp    r15d,r9d
    214fa49437fb:	0f 84 09 00 00 00                               	je     0x214fa494380a
    214fa4943801:	33 c0                                           	xor    eax,eax
    214fa4943803:	48 8b e5                                        	mov    rsp,rbp
    214fa4943806:	5d                                              	pop    rbp
    214fa4943807:	c2 08 00                                        	ret    0x8
    214fa494380a:	c1 e3 06                                        	shl    ebx,0x6
    214fa494380d:	41 03 d8                                        	add    ebx,r8d
    214fa4943810:	8b 94 1e 24 01 00 00                            	mov    edx,DWORD PTR [rsi+rbx*1+0x124]
    214fa4943817:	85 d2                                           	test   edx,edx
    214fa4943819:	0f 85 09 00 00 00                               	jne    0x214fa4943828
    214fa494381f:	33 c0                                           	xor    eax,eax
    214fa4943821:	48 8b e5                                        	mov    rsp,rbp
    214fa4943824:	5d                                              	pop    rbp
    214fa4943825:	c2 08 00                                        	ret    0x8
    214fa4943828:	8b 8c 1e a4 02 00 00                            	mov    ecx,DWORD PTR [rsi+rbx*1+0x2a4]
    214fa494382f:	85 c9                                           	test   ecx,ecx
    214fa4943831:	0f 8e a2 0e 00 00                               	jle    0x214fa49446d9
    214fa4943837:	81 c3 24 04 00 00                               	add    ebx,0x424
    214fa494383d:	8b 1c 1e                                        	mov    ebx,DWORD PTR [rsi+rbx*1]
    214fa4943840:	85 db                                           	test   ebx,ebx
    214fa4943842:	0f 8e 88 0e 00 00                               	jle    0x214fa49446d0
    214fa4943848:	44 8d 41 ff                                     	lea    r8d,[rcx-0x1]
    214fa494384c:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    214fa4943856:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa494385b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    214fa494385f:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x214fa494384e
    214fa4943866:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa494386b:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa494386f:	c5 c8 c2 ed 01                                  	vcmpltps xmm5,xmm6,xmm5
    214fa4943874:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    214fa4943878:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    214fa494387c:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    214fa4943881:	c5 f0 5e cc                                     	vdivps xmm1,xmm1,xmm4
    214fa4943885:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    214fa494388f:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa4943894:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa4943898:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    214fa494389c:	c5 e8 5e d4                                     	vdivps xmm2,xmm2,xmm4
    214fa49438a0:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    214fa49438a4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    214fa49438ae:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa49438b3:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    214fa49438b7:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    214fa49438bb:	44 8b 5c 3e 14                                  	mov    r11d,DWORD PTR [rsi+rdi*1+0x14]
    214fa49438c0:	44 8b 64 3e 10                                  	mov    r12d,DWORD PTR [rsi+rdi*1+0x10]
    214fa49438c5:	45 33 ff                                        	xor    r15d,r15d
    214fa49438c8:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    214fa49438cf:	41 0f 95 c7                                     	setne  r15b
    214fa49438d3:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    214fa49438da:	41 0f 95 c4                                     	setne  r12b
    214fa49438de:	45 0f b6 e4                                     	movzx  r12d,r12b
    214fa49438e2:	48 89 75 e8                                     	mov    QWORD PTR [rbp-0x18],rsi
    214fa49438e6:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    214fa49438ea:	48 89 55 d8                                     	mov    QWORD PTR [rbp-0x28],rdx
    214fa49438ee:	45 23 e7                                        	and    r12d,r15d
    214fa49438f1:	0f 85 0d 00 00 00                               	jne    0x214fa4943904
    214fa49438f7:	c5 e0 5f d2                                     	vmaxps xmm2,xmm3,xmm2
    214fa49438fb:	c5 d0 5d d2                                     	vminps xmm2,xmm5,xmm2
    214fa49438ff:	e9 0a 00 00 00                                  	jmp    0x214fa494390e
    214fa4943904:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    214fa494390a:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    214fa494390e:	c5 f0 59 cc                                     	vmulps xmm1,xmm1,xmm4
    214fa4943912:	8b 7c 3e 0c                                     	mov    edi,DWORD PTR [rsi+rdi*1+0xc]
    214fa4943916:	44 8b d1                                        	mov    r10d,ecx
    214fa4943919:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    214fa494391e:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    214fa4943923:	c5 d8 59 d2                                     	vmulps xmm2,xmm4,xmm2
    214fa4943927:	44 8d 7b ff                                     	lea    r15d,[rbx-0x1]
    214fa494392b:	41 8b f7                                        	mov    esi,r15d
    214fa494392e:	23 f3                                           	and    esi,ebx
    214fa4943930:	33 c0                                           	xor    eax,eax
    214fa4943932:	41 8b d0                                        	mov    edx,r8d
    214fa4943935:	41 85 c8                                        	test   r8d,ecx
    214fa4943938:	0f 45 d0                                        	cmovne edx,eax
    214fa494393b:	44 8b d3                                        	mov    r10d,ebx
    214fa494393e:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    214fa4943943:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    214fa4943948:	45 33 c9                                        	xor    r9d,r9d
    214fa494394b:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    214fa4943952:	41 0f 95 c1                                     	setne  r9b
    214fa4943956:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    214fa494395d:	41 0f 95 c3                                     	setne  r11b
    214fa4943961:	45 0f b6 db                                     	movzx  r11d,r11b
    214fa4943965:	45 23 d9                                        	and    r11d,r9d
    214fa4943968:	0f 85 0d 00 00 00                               	jne    0x214fa494397b
    214fa494396e:	c5 e0 5f c9                                     	vmaxps xmm1,xmm3,xmm1
    214fa4943972:	c5 d0 5d c9                                     	vminps xmm1,xmm5,xmm1
    214fa4943976:	e9 0a 00 00 00                                  	jmp    0x214fa4943985
    214fa494397b:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    214fa4943981:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    214fa4943985:	c5 d8 59 c9                                     	vmulps xmm1,xmm4,xmm1
    214fa4943989:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    214fa4943993:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa4943998:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa494399c:	c5 f0 58 e3                                     	vaddps xmm4,xmm1,xmm3
    214fa49439a0:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    214fa49439a6:	0f 84 5f 00 00 00                               	je     0x214fa4943a0b
    214fa49439ac:	c4 e3 79 08 cc 09                               	vroundps xmm1,xmm4,0x9
    214fa49439b2:	4c 8b 15 90 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc90]        # 0x214fa4943649
    214fa49439b9:	c4 c1 70 54 32                                  	vandps xmm6,xmm1,XMMWORD PTR [r10]
    214fa49439be:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    214fa49439c8:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49439cd:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa49439d1:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    214fa49439d6:	49 ba 40 29 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2940
    214fa49439e0:	c5 70 c2 f9 00                                  	vcmpeqps xmm15,xmm1,xmm1
    214fa49439e5:	c4 41 70 54 c7                                  	vandps xmm8,xmm1,xmm15
    214fa49439ea:	c4 41 70 c2 3a 0d                               	vcmpgeps xmm15,xmm1,XMMWORD PTR [r10]
    214fa49439f0:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    214fa49439f5:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    214fa49439fa:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    214fa49439fe:	c5 f9 28 d9                                     	vmovapd xmm3,xmm1
    214fa4943a02:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    214fa4943a06:	e9 48 00 00 00                                  	jmp    0x214fa4943a53
    214fa4943a0b:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    214fa4943a11:	4c 8b 15 31 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc31]        # 0x214fa4943649
    214fa4943a18:	c4 c1 60 54 22                                  	vandps xmm4,xmm3,XMMWORD PTR [r10]
    214fa4943a1d:	4c 8b 15 9c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9c]        # 0x214fa49439c0
    214fa4943a24:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4943a29:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa4943a2d:	c5 d8 c2 f7 01                                  	vcmpltps xmm6,xmm4,xmm7
    214fa4943a32:	4c 8b 15 9f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9f]        # 0x214fa49439d8
    214fa4943a39:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    214fa4943a3e:	c4 41 60 54 c7                                  	vandps xmm8,xmm3,xmm15
    214fa4943a43:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    214fa4943a49:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    214fa4943a4e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    214fa4943a53:	c4 e3 79 08 e2 09                               	vroundps xmm4,xmm2,0x9
    214fa4943a59:	4c 8b 15 78 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff78]        # 0x214fa49439d8
    214fa4943a60:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    214fa4943a65:	c4 41 58 54 cf                                  	vandps xmm9,xmm4,xmm15
    214fa4943a6a:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    214fa4943a70:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    214fa4943a75:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    214fa4943a7a:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    214fa4943a84:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4943a89:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa4943a8e:	4c 8b 15 b4 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb4]        # 0x214fa4943649
    214fa4943a95:	c4 41 58 54 1a                                  	vandps xmm11,xmm4,XMMWORD PTR [r10]
    214fa4943a9a:	c5 a0 c2 ff 01                                  	vcmpltps xmm7,xmm11,xmm7
    214fa4943a9f:	c4 41 41 df fa                                  	vpandn xmm15,xmm7,xmm10
    214fa4943aa4:	c5 b1 db ff                                     	vpand  xmm7,xmm9,xmm7
    214fa4943aa8:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa4943aad:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    214fa4943ab2:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa4943ab7:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa4943abc:	c4 42 41 3d db                                  	vpmaxsd xmm11,xmm7,xmm11
    214fa4943ac1:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    214fa4943ac6:	45 85 e4                                        	test   r12d,r12d
    214fa4943ac9:	0f 84 4b 00 00 00                               	je     0x214fa4943b1a
    214fa4943acf:	c5 79 6e da                                     	vmovd  xmm11,edx
    214fa4943ad3:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa4943ad8:	c4 41 41 db db                                  	vpand  xmm11,xmm7,xmm11
    214fa4943add:	85 d2                                           	test   edx,edx
    214fa4943adf:	0f 85 35 00 00 00                               	jne    0x214fa4943b1a
    214fa4943ae5:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    214fa4943ae9:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa4943aee:	c4 41 41 66 e1                                  	vpcmpgtd xmm12,xmm7,xmm9
    214fa4943af3:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    214fa4943af8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4943afd:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    214fa4943b02:	c5 79 66 ef                                     	vpcmpgtd xmm13,xmm0,xmm7
    214fa4943b06:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    214fa4943b0b:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    214fa4943b10:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa4943b15:	c4 41 41 fe db                                  	vpaddd xmm11,xmm7,xmm11
    214fa4943b1a:	45 8b c7                                        	mov    r8d,r15d
    214fa4943b1d:	85 f6                                           	test   esi,esi
    214fa4943b1f:	44 0f 45 c0                                     	cmovne r8d,eax
    214fa4943b23:	c4 41 49 df fa                                  	vpandn xmm15,xmm6,xmm10
    214fa4943b28:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    214fa4943b2c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa4943b31:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    214fa4943b36:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa4943b3b:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    214fa4943b40:	c4 42 49 3d d2                                  	vpmaxsd xmm10,xmm6,xmm10
    214fa4943b45:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    214fa4943b4a:	45 85 db                                        	test   r11d,r11d
    214fa4943b4d:	0f 84 4b 00 00 00                               	je     0x214fa4943b9e
    214fa4943b53:	c4 41 79 6e d0                                  	vmovd  xmm10,r8d
    214fa4943b58:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4943b5d:	c4 41 49 db d2                                  	vpand  xmm10,xmm6,xmm10
    214fa4943b62:	45 85 c0                                        	test   r8d,r8d
    214fa4943b65:	0f 85 33 00 00 00                               	jne    0x214fa4943b9e
    214fa4943b6b:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    214fa4943b6f:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    214fa4943b74:	c4 41 49 66 e0                                  	vpcmpgtd xmm12,xmm6,xmm8
    214fa4943b79:	c4 41 19 db e2                                  	vpand  xmm12,xmm12,xmm10
    214fa4943b7e:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4943b83:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    214fa4943b88:	c5 f9 66 c6                                     	vpcmpgtd xmm0,xmm0,xmm6
    214fa4943b8c:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    214fa4943b91:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    214fa4943b95:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4943b9a:	c5 49 fe d0                                     	vpaddd xmm10,xmm6,xmm0
    214fa4943b9e:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    214fa4943ba2:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4943ba7:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    214fa4943bac:	c4 41 29 fe e3                                  	vpaddd xmm12,xmm10,xmm11
    214fa4943bb1:	c4 63 79 16 e1 03                               	vpextrd ecx,xmm12,0x3
    214fa4943bb7:	c4 63 79 16 e6 02                               	vpextrd esi,xmm12,0x2
    214fa4943bbd:	c4 43 79 16 e1 01                               	vpextrd r9d,xmm12,0x1
    214fa4943bc3:	c4 41 79 7e e7                                  	vmovd  r15d,xmm12
    214fa4943bc8:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    214fa4943bce:	0f 84 d2 08 00 00                               	je     0x214fa49444a6
    214fa4943bd4:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    214fa4943bde:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4943be3:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa4943be8:	c4 c1 41 fe fc                                  	vpaddd xmm7,xmm7,xmm12
    214fa4943bed:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    214fa4943bf2:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    214fa4943bf7:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    214fa4943bfc:	45 85 e4                                        	test   r12d,r12d
    214fa4943bff:	0f 84 46 00 00 00                               	je     0x214fa4943c4b
    214fa4943c05:	c5 79 6e ea                                     	vmovd  xmm13,edx
    214fa4943c09:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa4943c0e:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    214fa4943c13:	85 d2                                           	test   edx,edx
    214fa4943c15:	0f 85 30 00 00 00                               	jne    0x214fa4943c4b
    214fa4943c1b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    214fa4943c20:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    214fa4943c25:	c5 31 db c8                                     	vpand  xmm9,xmm9,xmm0
    214fa4943c29:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4943c2e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    214fa4943c33:	c5 11 66 ef                                     	vpcmpgtd xmm13,xmm13,xmm7
    214fa4943c37:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    214fa4943c3c:	c4 41 79 db cd                                  	vpand  xmm9,xmm0,xmm13
    214fa4943c41:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa4943c46:	c4 41 41 fe e9                                  	vpaddd xmm13,xmm7,xmm9
    214fa4943c4b:	c4 c1 49 fe f4                                  	vpaddd xmm6,xmm6,xmm12
    214fa4943c50:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    214fa4943c54:	c4 e2 49 3d ff                                  	vpmaxsd xmm7,xmm6,xmm7
    214fa4943c59:	c4 c2 41 39 f8                                  	vpminsd xmm7,xmm7,xmm8
    214fa4943c5e:	45 85 db                                        	test   r11d,r11d
    214fa4943c61:	0f 84 4f 00 00 00                               	je     0x214fa4943cb6
    214fa4943c67:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
    214fa4943c6c:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    214fa4943c71:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    214fa4943c75:	45 85 c0                                        	test   r8d,r8d
    214fa4943c78:	0f 85 38 00 00 00                               	jne    0x214fa4943cb6
    214fa4943c7e:	c5 f9 6e fb                                     	vmovd  xmm7,ebx
    214fa4943c82:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    214fa4943c87:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa4943c8c:	c4 41 49 66 c0                                  	vpcmpgtd xmm8,xmm6,xmm8
    214fa4943c91:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    214fa4943c95:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa4943c9a:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    214fa4943c9f:	c5 31 66 ce                                     	vpcmpgtd xmm9,xmm9,xmm6
    214fa4943ca3:	c4 41 31 df f8                                  	vpandn xmm15,xmm9,xmm8
    214fa4943ca8:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    214fa4943cad:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa4943cb2:	c5 c9 fe ff                                     	vpaddd xmm7,xmm6,xmm7
    214fa4943cb6:	c4 e2 41 40 c0                                  	vpmulld xmm0,xmm7,xmm0
    214fa4943cbb:	c4 c1 79 fe f3                                  	vpaddd xmm6,xmm0,xmm11
    214fa4943cc0:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    214fa4943cc4:	0f 85 16 00 00 00                               	jne    0x214fa4943ce0
    214fa4943cca:	c4 c1 21 fe fc                                  	vpaddd xmm7,xmm11,xmm12
    214fa4943ccf:	c5 91 76 ff                                     	vpcmpeqd xmm7,xmm13,xmm7
    214fa4943cd3:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
    214fa4943cd7:	83 fb 0f                                        	cmp    ebx,0xf
    214fa4943cda:	0f 84 72 03 00 00                               	je     0x214fa4944052
    214fa4943ce0:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    214fa4943ce3:	83 e3 08                                        	and    ebx,0x8
    214fa4943ce6:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    214fa4943ce9:	83 e2 04                                        	and    edx,0x4
    214fa4943cec:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4943cef:	83 e7 02                                        	and    edi,0x2
    214fa4943cf2:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    214fa4943cf6:	41 83 e0 01                                     	and    r8d,0x1
    214fa4943cfa:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    214fa4943cfe:	0f 84 7e 00 00 00                               	je     0x214fa4943d82
    214fa4943d04:	45 85 c0                                        	test   r8d,r8d
    214fa4943d07:	0f 85 10 00 00 00                               	jne    0x214fa4943d1d
    214fa4943d0d:	4c 8b d8                                        	mov    r11,rax
    214fa4943d10:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    214fa4943d14:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    214fa4943d18:	e9 10 00 00 00                                  	jmp    0x214fa4943d2d
    214fa4943d1d:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    214fa4943d21:	47 8d 1c b8                                     	lea    r11d,[r8+r15*4]
    214fa4943d25:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    214fa4943d29:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    214fa4943d2d:	85 ff                                           	test   edi,edi
    214fa4943d2f:	0f 85 08 00 00 00                               	jne    0x214fa4943d3d
    214fa4943d35:	48 8b f8                                        	mov    rdi,rax
    214fa4943d38:	e9 08 00 00 00                                  	jmp    0x214fa4943d45
    214fa4943d3d:	43 8d 3c 88                                     	lea    edi,[r8+r9*4]
    214fa4943d41:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    214fa4943d45:	85 d2                                           	test   edx,edx
    214fa4943d47:	0f 85 08 00 00 00                               	jne    0x214fa4943d55
    214fa4943d4d:	48 8b d0                                        	mov    rdx,rax
    214fa4943d50:	e9 08 00 00 00                                  	jmp    0x214fa4943d5d
    214fa4943d55:	41 8d 14 b0                                     	lea    edx,[r8+rsi*4]
    214fa4943d59:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    214fa4943d5d:	85 db                                           	test   ebx,ebx
    214fa4943d5f:	0f 85 10 00 00 00                               	jne    0x214fa4943d75
    214fa4943d65:	8b f2                                           	mov    esi,edx
    214fa4943d67:	48 8b c8                                        	mov    rcx,rax
    214fa4943d6a:	41 8b d8                                        	mov    ebx,r8d
    214fa4943d6d:	49 8b d4                                        	mov    rdx,r12
    214fa4943d70:	e9 2f 00 00 00                                  	jmp    0x214fa4943da4
    214fa4943d75:	8b f2                                           	mov    esi,edx
    214fa4943d77:	41 8b d8                                        	mov    ebx,r8d
    214fa4943d7a:	49 8b d4                                        	mov    rdx,r12
    214fa4943d7d:	e9 1c 00 00 00                                  	jmp    0x214fa4943d9e
    214fa4943d82:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    214fa4943d85:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    214fa4943d89:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    214fa4943d8d:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa4943d90:	46 8d 04 bb                                     	lea    r8d,[rbx+r15*4]
    214fa4943d94:	46 8b 1c 02                                     	mov    r11d,DWORD PTR [rdx+r8*1]
    214fa4943d98:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    214fa4943d9b:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    214fa4943d9e:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    214fa4943da1:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    214fa4943da4:	c4 c1 11 fe fa                                  	vpaddd xmm7,xmm13,xmm10
    214fa4943da9:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    214fa4943dae:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa4943db3:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    214fa4943db7:	0f 84 74 00 00 00                               	je     0x214fa4943e31
    214fa4943dbd:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    214fa4943dc1:	0f 85 08 00 00 00                               	jne    0x214fa4943dcf
    214fa4943dc7:	4c 8b c0                                        	mov    r8,rax
    214fa4943dca:	e9 0d 00 00 00                                  	jmp    0x214fa4943ddc
    214fa4943dcf:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    214fa4943dd4:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    214fa4943dd8:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    214fa4943ddc:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    214fa4943de0:	0f 85 08 00 00 00                               	jne    0x214fa4943dee
    214fa4943de6:	4c 8b c8                                        	mov    r9,rax
    214fa4943de9:	e9 0e 00 00 00                                  	jmp    0x214fa4943dfc
    214fa4943dee:	c4 c3 79 16 f9 01                               	vpextrd r9d,xmm7,0x1
    214fa4943df4:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    214fa4943df8:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    214fa4943dfc:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    214fa4943e00:	0f 85 08 00 00 00                               	jne    0x214fa4943e0e
    214fa4943e06:	4c 8b d8                                        	mov    r11,rax
    214fa4943e09:	e9 0e 00 00 00                                  	jmp    0x214fa4943e1c
    214fa4943e0e:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    214fa4943e14:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    214fa4943e18:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa4943e1c:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    214fa4943e20:	0f 85 34 00 00 00                               	jne    0x214fa4943e5a
    214fa4943e26:	45 8b e0                                        	mov    r12d,r8d
    214fa4943e29:	4c 8b c0                                        	mov    r8,rax
    214fa4943e2c:	e9 40 00 00 00                                  	jmp    0x214fa4943e71
    214fa4943e31:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    214fa4943e37:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    214fa4943e3b:	46 8b 0c 02                                     	mov    r9d,DWORD PTR [rdx+r8*1]
    214fa4943e3f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    214fa4943e44:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    214fa4943e48:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    214fa4943e4c:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    214fa4943e52:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    214fa4943e56:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa4943e5a:	c4 c3 79 16 fc 03                               	vpextrd r12d,xmm7,0x3
    214fa4943e60:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    214fa4943e64:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    214fa4943e68:	45 8b d0                                        	mov    r10d,r8d
    214fa4943e6b:	45 8b c4                                        	mov    r8d,r12d
    214fa4943e6e:	45 8b e2                                        	mov    r12d,r10d
    214fa4943e71:	c4 e3 39 22 ff 01                               	vpinsrd xmm7,xmm8,edi,0x1
    214fa4943e77:	c4 41 79 6e c4                                  	vmovd  xmm8,r12d
    214fa4943e7c:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa4943e81:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    214fa4943e87:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    214fa4943e8b:	0f 84 71 00 00 00                               	je     0x214fa4943f02
    214fa4943e91:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    214fa4943e95:	0f 85 08 00 00 00                               	jne    0x214fa4943ea3
    214fa4943e9b:	48 8b f8                                        	mov    rdi,rax
    214fa4943e9e:	e9 0a 00 00 00                                  	jmp    0x214fa4943ead
    214fa4943ea3:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    214fa4943ea7:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    214fa4943eaa:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa4943ead:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    214fa4943eb1:	0f 85 08 00 00 00                               	jne    0x214fa4943ebf
    214fa4943eb7:	4c 8b c8                                        	mov    r9,rax
    214fa4943eba:	e9 0e 00 00 00                                  	jmp    0x214fa4943ecd
    214fa4943ebf:	c4 c3 79 16 f1 01                               	vpextrd r9d,xmm6,0x1
    214fa4943ec5:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    214fa4943ec9:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    214fa4943ecd:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    214fa4943ed1:	0f 85 08 00 00 00                               	jne    0x214fa4943edf
    214fa4943ed7:	4c 8b e0                                        	mov    r12,rax
    214fa4943eda:	e9 0e 00 00 00                                  	jmp    0x214fa4943eed
    214fa4943edf:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    214fa4943ee5:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    214fa4943ee9:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    214fa4943eed:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    214fa4943ef1:	0f 85 30 00 00 00                               	jne    0x214fa4943f27
    214fa4943ef7:	44 8b ff                                        	mov    r15d,edi
    214fa4943efa:	48 8b f8                                        	mov    rdi,rax
    214fa4943efd:	e9 3c 00 00 00                                  	jmp    0x214fa4943f3e
    214fa4943f02:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    214fa4943f08:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    214fa4943f0b:	44 8b 0c 3a                                     	mov    r9d,DWORD PTR [rdx+rdi*1]
    214fa4943f0f:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    214fa4943f13:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    214fa4943f16:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa4943f19:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    214fa4943f1f:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    214fa4943f23:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    214fa4943f27:	c4 c3 79 16 f7 03                               	vpextrd r15d,xmm6,0x3
    214fa4943f2d:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    214fa4943f31:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    214fa4943f35:	45 8b d7                                        	mov    r10d,r15d
    214fa4943f38:	44 8b ff                                        	mov    r15d,edi
    214fa4943f3b:	41 8b fa                                        	mov    edi,r10d
    214fa4943f3e:	c4 e3 41 22 f6 02                               	vpinsrd xmm6,xmm7,esi,0x2
    214fa4943f44:	c4 c3 39 22 fb 02                               	vpinsrd xmm7,xmm8,r11d,0x2
    214fa4943f4a:	c4 c1 79 fe c5                                  	vpaddd xmm0,xmm0,xmm13
    214fa4943f4f:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    214fa4943f54:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa4943f59:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    214fa4943f5f:	c4 43 39 22 c4 02                               	vpinsrd xmm8,xmm8,r12d,0x2
    214fa4943f65:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    214fa4943f69:	0f 84 6b 00 00 00                               	je     0x214fa4943fda
    214fa4943f6f:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    214fa4943f73:	0f 85 08 00 00 00                               	jne    0x214fa4943f81
    214fa4943f79:	48 8b f0                                        	mov    rsi,rax
    214fa4943f7c:	e9 0a 00 00 00                                  	jmp    0x214fa4943f8b
    214fa4943f81:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    214fa4943f85:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    214fa4943f88:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    214fa4943f8b:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    214fa4943f8f:	0f 85 08 00 00 00                               	jne    0x214fa4943f9d
    214fa4943f95:	4c 8b c8                                        	mov    r9,rax
    214fa4943f98:	e9 0e 00 00 00                                  	jmp    0x214fa4943fab
    214fa4943f9d:	c4 c3 79 16 c1 01                               	vpextrd r9d,xmm0,0x1
    214fa4943fa3:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    214fa4943fa7:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    214fa4943fab:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    214fa4943faf:	0f 85 08 00 00 00                               	jne    0x214fa4943fbd
    214fa4943fb5:	4c 8b d8                                        	mov    r11,rax
    214fa4943fb8:	e9 0e 00 00 00                                  	jmp    0x214fa4943fcb
    214fa4943fbd:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    214fa4943fc3:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    214fa4943fc7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa4943fcb:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    214fa4943fcf:	0f 85 2a 00 00 00                               	jne    0x214fa4943fff
    214fa4943fd5:	e9 34 00 00 00                                  	jmp    0x214fa494400e
    214fa4943fda:	c4 e3 79 16 c6 01                               	vpextrd esi,xmm0,0x1
    214fa4943fe0:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    214fa4943fe3:	44 8b 0c 32                                     	mov    r9d,DWORD PTR [rdx+rsi*1]
    214fa4943fe7:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    214fa4943feb:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    214fa4943fee:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    214fa4943ff1:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    214fa4943ff7:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    214fa4943ffb:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa4943fff:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    214fa4944005:	42 8d 1c a3                                     	lea    ebx,[rbx+r12*4]
    214fa4944009:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    214fa494400c:	8b c3                                           	mov    eax,ebx
    214fa494400e:	c4 e3 49 22 c1 03                               	vpinsrd xmm0,xmm6,ecx,0x3
    214fa4944014:	c4 c3 41 22 f0 03                               	vpinsrd xmm6,xmm7,r8d,0x3
    214fa494401a:	c5 f9 6e fe                                     	vmovd  xmm7,esi
    214fa494401e:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    214fa4944023:	c4 c3 41 22 f9 01                               	vpinsrd xmm7,xmm7,r9d,0x1
    214fa4944029:	c4 c3 41 22 fb 02                               	vpinsrd xmm7,xmm7,r11d,0x2
    214fa494402f:	c4 e3 41 22 f8 03                               	vpinsrd xmm7,xmm7,eax,0x3
    214fa4944035:	c4 63 39 22 c7 03                               	vpinsrd xmm8,xmm8,edi,0x3
    214fa494403b:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    214fa494403f:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa4944044:	c4 41 79 28 c7                                  	vmovapd xmm8,xmm15
    214fa4944049:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa494404d:	e9 86 00 00 00                                  	jmp    0x214fa49440d8
    214fa4944052:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    214fa4944055:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    214fa4944059:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    214fa494405d:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    214fa4944062:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    214fa4944066:	c5 fb 10 3c 3a                                  	vmovsd xmm7,QWORD PTR [rdx+rdi*1]
    214fa494406b:	c5 f9 6c c7                                     	vpunpcklqdq xmm0,xmm0,xmm7
    214fa494406f:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    214fa4944072:	c5 fb 10 3c 32                                  	vmovsd xmm7,QWORD PTR [rdx+rsi*1]
    214fa4944077:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    214fa494407a:	c5 7b 10 04 0a                                  	vmovsd xmm8,QWORD PTR [rdx+rcx*1]
    214fa494407f:	c4 c1 41 6c f8                                  	vpunpcklqdq xmm7,xmm7,xmm8
    214fa4944084:	c5 78 c6 c7 dd                                  	vshufps xmm8,xmm0,xmm7,0xdd
    214fa4944089:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    214fa494408e:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    214fa4944093:	c5 f9 7e f1                                     	vmovd  ecx,xmm6
    214fa4944097:	03 cb                                           	add    ecx,ebx
    214fa4944099:	c5 fb 10 3c 0a                                  	vmovsd xmm7,QWORD PTR [rdx+rcx*1]
    214fa494409e:	c4 e3 79 16 f1 01                               	vpextrd ecx,xmm6,0x1
    214fa49440a4:	03 cb                                           	add    ecx,ebx
    214fa49440a6:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    214fa49440ab:	c4 c1 41 6c f9                                  	vpunpcklqdq xmm7,xmm7,xmm9
    214fa49440b0:	c4 e3 79 16 f1 02                               	vpextrd ecx,xmm6,0x2
    214fa49440b6:	03 cb                                           	add    ecx,ebx
    214fa49440b8:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    214fa49440bd:	c4 e3 79 16 f1 03                               	vpextrd ecx,xmm6,0x3
    214fa49440c3:	03 d9                                           	add    ebx,ecx
    214fa49440c5:	c5 fb 10 34 1a                                  	vmovsd xmm6,QWORD PTR [rdx+rbx*1]
    214fa49440ca:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    214fa49440ce:	c5 40 c6 ce dd                                  	vshufps xmm9,xmm7,xmm6,0xdd
    214fa49440d3:	c5 c0 c6 f6 88                                  	vshufps xmm6,xmm7,xmm6,0x88
    214fa49440d8:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    214fa49440dc:	c5 d0 5c d9                                     	vsubps xmm3,xmm5,xmm1
    214fa49440e0:	c5 e8 5c d4                                     	vsubps xmm2,xmm2,xmm4
    214fa49440e4:	c5 d0 5c e2                                     	vsubps xmm4,xmm5,xmm2
    214fa49440e8:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    214fa49440ed:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49440f2:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    214fa49440f8:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    214fa49440fd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4944102:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    214fa4944107:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa494410b:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    214fa494410f:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    214fa4944114:	c5 d8 59 ed                                     	vmulps xmm5,xmm4,xmm5
    214fa4944118:	c4 c1 41 72 d0 18                               	vpsrld xmm7,xmm8,0x18
    214fa494411e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4944123:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa4944129:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa494412e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4944133:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa4944138:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa494413c:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa4944140:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa4944145:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    214fa4944149:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    214fa494414d:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    214fa4944151:	c5 c1 72 d6 18                                  	vpsrld xmm7,xmm6,0x18
    214fa4944156:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494415b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    214fa4944161:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    214fa4944166:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494416b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    214fa4944170:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    214fa4944174:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    214fa4944178:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    214fa494417d:	c5 d8 59 ff                                     	vmulps xmm7,xmm4,xmm7
    214fa4944181:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    214fa4944187:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494418c:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    214fa4944192:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    214fa4944197:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494419c:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    214fa49441a2:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    214fa49441a7:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    214fa49441ac:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    214fa49441b1:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
    214fa49441b6:	c4 c1 40 58 fa                                  	vaddps xmm7,xmm7,xmm10
    214fa49441bb:	c5 f0 59 ff                                     	vmulps xmm7,xmm1,xmm7
    214fa49441bf:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    214fa49441c3:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    214fa49441cd:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa49441d2:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa49441d6:	c5 79 db d7                                     	vpand  xmm10,xmm0,xmm7
    214fa49441da:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49441df:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    214fa49441e5:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    214fa49441ea:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49441ef:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    214fa49441f5:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    214fa49441fa:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    214fa49441ff:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    214fa4944204:	c4 41 58 59 d2                                  	vmulps xmm10,xmm4,xmm10
    214fa4944209:	c5 39 db df                                     	vpand  xmm11,xmm8,xmm7
    214fa494420d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4944212:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    214fa4944218:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    214fa494421d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4944222:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    214fa4944228:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    214fa494422d:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    214fa4944232:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    214fa4944237:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    214fa494423c:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    214fa4944241:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    214fa4944246:	c5 49 db df                                     	vpand  xmm11,xmm6,xmm7
    214fa494424a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494424f:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    214fa4944255:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    214fa494425a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494425f:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    214fa4944265:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    214fa494426a:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    214fa494426f:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    214fa4944274:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    214fa4944279:	c5 31 db e7                                     	vpand  xmm12,xmm9,xmm7
    214fa494427d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4944282:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    214fa4944288:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    214fa494428d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4944292:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    214fa4944298:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    214fa494429d:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    214fa49442a2:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    214fa49442a7:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    214fa49442ac:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    214fa49442b1:	c4 41 70 59 db                                  	vmulps xmm11,xmm1,xmm11
    214fa49442b6:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    214fa49442bb:	c5 a1 72 d0 10                                  	vpsrld xmm11,xmm0,0x10
    214fa49442c0:	c5 21 db df                                     	vpand  xmm11,xmm11,xmm7
    214fa49442c4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49442c9:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    214fa49442cf:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    214fa49442d4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49442d9:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    214fa49442df:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    214fa49442e4:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    214fa49442e9:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    214fa49442ee:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    214fa49442f3:	c4 c1 19 72 d0 10                               	vpsrld xmm12,xmm8,0x10
    214fa49442f9:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    214fa49442fd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4944302:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    214fa4944308:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    214fa494430d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4944312:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    214fa4944318:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    214fa494431d:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    214fa4944322:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    214fa4944327:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    214fa494432c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    214fa4944331:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    214fa4944336:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    214fa494433b:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    214fa494433f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4944344:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    214fa494434a:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    214fa494434f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4944354:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    214fa494435a:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    214fa494435f:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    214fa4944364:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    214fa4944369:	c4 41 58 59 e4                                  	vmulps xmm12,xmm4,xmm12
    214fa494436e:	c4 c1 11 72 d1 10                               	vpsrld xmm13,xmm9,0x10
    214fa4944374:	c5 11 db ef                                     	vpand  xmm13,xmm13,xmm7
    214fa4944378:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494437d:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    214fa4944383:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    214fa4944388:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494438d:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    214fa4944393:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    214fa4944398:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    214fa494439d:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    214fa49443a2:	c4 41 68 59 ed                                  	vmulps xmm13,xmm2,xmm13
    214fa49443a7:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    214fa49443ac:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    214fa49443b1:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    214fa49443b6:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    214fa49443bb:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa49443bf:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49443c4:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa49443ca:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa49443cf:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49443d4:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa49443d9:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa49443dd:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa49443e1:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa49443e6:	c5 d8 59 c0                                     	vmulps xmm0,xmm4,xmm0
    214fa49443ea:	c4 c1 39 72 d0 08                               	vpsrld xmm8,xmm8,0x8
    214fa49443f0:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    214fa49443f4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49443f9:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa49443ff:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa4944404:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4944409:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa494440f:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa4944414:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa4944419:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa494441e:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
    214fa4944423:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    214fa4944428:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    214fa494442c:	c5 e1 72 d6 08                                  	vpsrld xmm3,xmm6,0x8
    214fa4944431:	c5 e1 db df                                     	vpand  xmm3,xmm3,xmm7
    214fa4944435:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494443a:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa4944440:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa4944445:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494444a:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa494444f:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa4944453:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa4944457:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa494445c:	c5 d8 59 db                                     	vmulps xmm3,xmm4,xmm3
    214fa4944460:	c4 c1 59 72 d1 08                               	vpsrld xmm4,xmm9,0x8
    214fa4944466:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    214fa494446a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494446f:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa4944475:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa494447a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494447f:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa4944484:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa4944488:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa494448c:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa4944491:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    214fa4944495:	c5 e0 58 d2                                     	vaddps xmm2,xmm3,xmm2
    214fa4944499:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    214fa494449d:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    214fa49444a1:	e9 84 01 00 00                                  	jmp    0x214fa494462a
    214fa49444a6:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    214fa49444aa:	0f 84 68 00 00 00                               	je     0x214fa4944518
    214fa49444b0:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    214fa49444b4:	0f 85 0f 00 00 00                               	jne    0x214fa49444c9
    214fa49444ba:	48 8b f8                                        	mov    rdi,rax
    214fa49444bd:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    214fa49444c1:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    214fa49444c4:	e9 0e 00 00 00                                  	jmp    0x214fa49444d7
    214fa49444c9:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    214fa49444cc:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    214fa49444d0:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    214fa49444d4:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa49444d7:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    214fa49444db:	0f 85 08 00 00 00                               	jne    0x214fa49444e9
    214fa49444e1:	4c 8b c0                                        	mov    r8,rax
    214fa49444e4:	e9 08 00 00 00                                  	jmp    0x214fa49444f1
    214fa49444e9:	46 8d 04 8b                                     	lea    r8d,[rbx+r9*4]
    214fa49444ed:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    214fa49444f1:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    214fa49444f5:	0f 85 08 00 00 00                               	jne    0x214fa4944503
    214fa49444fb:	48 8b f0                                        	mov    rsi,rax
    214fa49444fe:	e9 06 00 00 00                                  	jmp    0x214fa4944509
    214fa4944503:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    214fa4944506:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    214fa4944509:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    214fa494450d:	0f 85 21 00 00 00                               	jne    0x214fa4944534
    214fa4944513:	e9 24 00 00 00                                  	jmp    0x214fa494453c
    214fa4944518:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    214fa494451b:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    214fa494451e:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    214fa4944522:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    214fa4944525:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    214fa4944529:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    214fa494452d:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    214fa4944531:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa4944534:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    214fa4944537:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    214fa494453a:	8b c3                                           	mov    eax,ebx
    214fa494453c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    214fa4944540:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4944545:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    214fa494454b:	c4 e3 79 22 c6 02                               	vpinsrd xmm0,xmm0,esi,0x2
    214fa4944551:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    214fa4944557:	c5 f1 72 d0 18                                  	vpsrld xmm1,xmm0,0x18
    214fa494455c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa4944561:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa4944567:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa494456c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa4944571:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa4944576:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa494457a:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa494457e:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa4944583:	4c 8b 15 3b fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc3b]        # 0x214fa49441c5
    214fa494458a:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa494458f:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa4944593:	c5 f9 db da                                     	vpand  xmm3,xmm0,xmm2
    214fa4944597:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494459c:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa49445a2:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa49445a7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49445ac:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa49445b1:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa49445b5:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa49445b9:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa49445be:	c5 d9 72 d0 10                                  	vpsrld xmm4,xmm0,0x10
    214fa49445c3:	c5 d9 db e2                                     	vpand  xmm4,xmm4,xmm2
    214fa49445c7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49445cc:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa49445d2:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa49445d7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa49445dc:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa49445e1:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa49445e5:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa49445e9:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa49445ee:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    214fa49445f3:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    214fa49445f7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa49445fc:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa4944602:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa4944607:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494460c:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa4944611:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa4944615:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa4944619:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa494461e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    214fa4944622:	c5 79 28 dc                                     	vmovapd xmm11,xmm4
    214fa4944626:	c5 79 28 d3                                     	vmovapd xmm10,xmm3
    214fa494462a:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    214fa4944634:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    214fa4944639:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    214fa494463d:	c5 d0 59 d1                                     	vmulps xmm2,xmm5,xmm1
    214fa4944641:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa4944645:	41 83 e1 01                                     	and    r9d,0x1
    214fa4944649:	41 f7 d9                                        	neg    r9d
    214fa494464c:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    214fa4944651:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa4944656:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa494465a:	41 c1 e1 1e                                     	shl    r9d,0x1e
    214fa494465e:	41 c1 f9 1f                                     	sar    r9d,0x1f
    214fa4944662:	c4 c3 61 22 d9 01                               	vpinsrd xmm3,xmm3,r9d,0x1
    214fa4944668:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa494466c:	41 c1 e1 1d                                     	shl    r9d,0x1d
    214fa4944670:	41 c1 f9 1f                                     	sar    r9d,0x1f
    214fa4944674:	c4 c3 61 22 d9 02                               	vpinsrd xmm3,xmm3,r9d,0x2
    214fa494467a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa494467e:	41 c1 e1 1c                                     	shl    r9d,0x1c
    214fa4944682:	41 c1 f9 1f                                     	sar    r9d,0x1f
    214fa4944686:	c4 c3 61 22 d9 03                               	vpinsrd xmm3,xmm3,r9d,0x3
    214fa494468c:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    214fa4944690:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    214fa4944693:	8b db                                           	mov    ebx,ebx
    214fa4944695:	c5 fa 7f 54 1a 30                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x30],xmm2
    214fa494469b:	c5 a0 59 d1                                     	vmulps xmm2,xmm11,xmm1
    214fa494469f:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    214fa49446a3:	c5 fa 7f 54 1a 20                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x20],xmm2
    214fa49446a9:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    214fa49446ad:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    214fa49446b1:	c5 fa 7f 44 1a 10                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x10],xmm0
    214fa49446b7:	c5 a8 59 c1                                     	vmulps xmm0,xmm10,xmm1
    214fa49446bb:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    214fa49446bf:	c5 fa 7f 04 1a                                  	vmovdqu XMMWORD PTR [rdx+rbx*1],xmm0
    214fa49446c4:	b8 01 00 00 00                                  	mov    eax,0x1
    214fa49446c9:	48 8b e5                                        	mov    rsp,rbp
    214fa49446cc:	5d                                              	pop    rbp
    214fa49446cd:	c2 08 00                                        	ret    0x8
    214fa49446d0:	33 c0                                           	xor    eax,eax
    214fa49446d2:	48 8b e5                                        	mov    rsp,rbp
    214fa49446d5:	5d                                              	pop    rbp
    214fa49446d6:	c2 08 00                                        	ret    0x8
    214fa49446d9:	33 c0                                           	xor    eax,eax
    214fa49446db:	48 8b e5                                        	mov    rsp,rbp
    214fa49446de:	5d                                              	pop    rbp
    214fa49446df:	c2 08 00                                        	ret    0x8
    214fa49446e2:	90                                              	nop
    214fa49446e3:	90                                              	nop
    214fa49446e4:	07                                              	(bad)
    214fa49446e5:	00 00                                           	add    BYTE PTR [rax],al
    214fa49446e7:	00 08                                           	add    BYTE PTR [rax],cl
	...
