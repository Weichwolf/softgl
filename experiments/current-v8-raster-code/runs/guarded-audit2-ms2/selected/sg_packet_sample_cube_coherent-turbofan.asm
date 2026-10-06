
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms2/selected/sg_packet_sample_cube_coherent-turbofan.bin:     file format binary


Disassembly of section .data:

00002989c627f740 <.data>:
    2989c627f740:	55                                              	push   rbp
    2989c627f741:	48 8b ec                                        	mov    rbp,rsp
    2989c627f744:	6a 30                                           	push   0x30
    2989c627f746:	56                                              	push   rsi
    2989c627f747:	48 83 ec 18                                     	sub    rsp,0x18
    2989c627f74b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    2989c627f74f:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    2989c627f753:	45 85 c9                                        	test   r9d,r9d
    2989c627f756:	0f 85 09 00 00 00                               	jne    0x2989c627f765
    2989c627f75c:	33 c0                                           	xor    eax,eax
    2989c627f75e:	48 8b e5                                        	mov    rsp,rbp
    2989c627f761:	5d                                              	pop    rbp
    2989c627f762:	c2 08 00                                        	ret    0x8
    2989c627f765:	8b f8                                           	mov    edi,eax
    2989c627f767:	44 8b 44 3e 04                                  	mov    r8d,DWORD PTR [rsi+rdi*1+0x4]
    2989c627f76c:	45 85 c0                                        	test   r8d,r8d
    2989c627f76f:	0f 85 04 00 00 00                               	jne    0x2989c627f779
    2989c627f775:	33 c0                                           	xor    eax,eax
    2989c627f777:	eb e5                                           	jmp    0x2989c627f75e
    2989c627f779:	45 8b d9                                        	mov    r11d,r9d
    2989c627f77c:	41 83 e3 0f                                     	and    r11d,0xf
    2989c627f780:	8b c9                                           	mov    ecx,ecx
    2989c627f782:	c5 fa 6f 0c 0e                                  	vmovdqu xmm1,XMMWORD PTR [rsi+rcx*1]
    2989c627f787:	49 ba 50 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b850
    2989c627f791:	c4 c1 70 54 12                                  	vandps xmm2,xmm1,XMMWORD PTR [r10]
    2989c627f796:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    2989c627f7a0:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c627f7a5:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c627f7a9:	c5 e8 c2 e3 02                                  	vcmpleps xmm4,xmm2,xmm3
    2989c627f7ae:	8b d2                                           	mov    edx,edx
    2989c627f7b0:	c5 fa 6f 2c 16                                  	vmovdqu xmm5,XMMWORD PTR [rsi+rdx*1]
    2989c627f7b5:	4c 8b 15 cd ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcd]        # 0x2989c627f789
    2989c627f7bc:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    2989c627f7c1:	c5 c8 c2 fb 02                                  	vcmpleps xmm7,xmm6,xmm3
    2989c627f7c6:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    2989c627f7ca:	8b db                                           	mov    ebx,ebx
    2989c627f7cc:	c5 fa 6f 3c 1e                                  	vmovdqu xmm7,XMMWORD PTR [rsi+rbx*1]
    2989c627f7d1:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x2989c627f789
    2989c627f7d8:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    2989c627f7dd:	c5 b8 c2 db 02                                  	vcmpleps xmm3,xmm8,xmm3
    2989c627f7e2:	c5 d9 db db                                     	vpand  xmm3,xmm4,xmm3
    2989c627f7e6:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    2989c627f7ea:	41 23 db                                        	and    ebx,r11d
    2989c627f7ed:	41 3b d9                                        	cmp    ebx,r9d
    2989c627f7f0:	0f 84 09 00 00 00                               	je     0x2989c627f7ff
    2989c627f7f6:	33 c0                                           	xor    eax,eax
    2989c627f7f8:	48 8b e5                                        	mov    rsp,rbp
    2989c627f7fb:	5d                                              	pop    rbp
    2989c627f7fc:	c2 08 00                                        	ret    0x8
    2989c627f7ff:	c5 b8 c2 de 02                                  	vcmpleps xmm3,xmm8,xmm6
    2989c627f804:	c5 e8 c2 e6 02                                  	vcmpleps xmm4,xmm2,xmm6
    2989c627f809:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    2989c627f80d:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    2989c627f811:	8b d3                                           	mov    edx,ebx
    2989c627f813:	41 23 d1                                        	and    edx,r9d
    2989c627f816:	44 3b ca                                        	cmp    r9d,edx
    2989c627f819:	0f 84 8c 00 00 00                               	je     0x2989c627f8ab
    2989c627f81f:	c5 b8 c2 da 02                                  	vcmpleps xmm3,xmm8,xmm2
    2989c627f824:	c5 c8 c2 e2 02                                  	vcmpleps xmm4,xmm6,xmm2
    2989c627f829:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    2989c627f82d:	c5 f8 50 cb                                     	vmovmskps ecx,xmm3
    2989c627f831:	44 8b e3                                        	mov    r12d,ebx
    2989c627f834:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    2989c627f838:	45 23 e1                                        	and    r12d,r9d
    2989c627f83b:	44 23 e1                                        	and    r12d,ecx
    2989c627f83e:	45 3b e1                                        	cmp    r12d,r9d
    2989c627f841:	0f 84 42 00 00 00                               	je     0x2989c627f889
    2989c627f847:	0b d9                                           	or     ebx,ecx
    2989c627f849:	41 85 d9                                        	test   r9d,ebx
    2989c627f84c:	0f 85 2e 00 00 00                               	jne    0x2989c627f880
    2989c627f852:	49 ba 60 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b860
    2989c627f85c:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    2989c627f861:	bb 04 00 00 00                                  	mov    ebx,0x4
    2989c627f866:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c627f86b:	33 c9                                           	xor    ecx,ecx
    2989c627f86d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    2989c627f873:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    2989c627f877:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    2989c627f87b:	e9 4a 00 00 00                                  	jmp    0x2989c627f8ca
    2989c627f880:	33 c0                                           	xor    eax,eax
    2989c627f882:	48 8b e5                                        	mov    rsp,rbp
    2989c627f885:	5d                                              	pop    rbp
    2989c627f886:	c2 08 00                                        	ret    0x8
    2989c627f889:	bb 02 00 00 00                                  	mov    ebx,0x2
    2989c627f88e:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    2989c627f892:	b9 01 00 00 00                                  	mov    ecx,0x1
    2989c627f897:	45 33 e4                                        	xor    r12d,r12d
    2989c627f89a:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    2989c627f89e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    2989c627f8a2:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    2989c627f8a6:	e9 1f 00 00 00                                  	jmp    0x2989c627f8ca
    2989c627f8ab:	4c 8b 15 a2 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa2]        # 0x2989c627f854
    2989c627f8b2:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    2989c627f8b7:	4c 8b 15 96 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff96]        # 0x2989c627f854
    2989c627f8be:	c4 c1 40 57 12                                  	vxorps xmm2,xmm7,XMMWORD PTR [r10]
    2989c627f8c3:	33 c9                                           	xor    ecx,ecx
    2989c627f8c5:	8b d9                                           	mov    ebx,ecx
    2989c627f8c7:	44 8b e1                                        	mov    r12d,ecx
    2989c627f8ca:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    2989c627f8ce:	c5 e0 c2 e5 02                                  	vcmpleps xmm4,xmm3,xmm5
    2989c627f8d3:	c5 78 50 fc                                     	vmovmskps r15d,xmm4
    2989c627f8d7:	45 23 fb                                        	and    r15d,r11d
    2989c627f8da:	0f 85 58 00 00 00                               	jne    0x2989c627f938
    2989c627f8e0:	4c 8b 15 6d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff6d]        # 0x2989c627f854
    2989c627f8e7:	c4 c1 70 57 22                                  	vxorps xmm4,xmm1,XMMWORD PTR [r10]
    2989c627f8ec:	85 c9                                           	test   ecx,ecx
    2989c627f8ee:	0f 85 04 00 00 00                               	jne    0x2989c627f8f8
    2989c627f8f4:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    2989c627f8f8:	4c 8b 15 55 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff55]        # 0x2989c627f854
    2989c627f8ff:	c4 c1 68 57 0a                                  	vxorps xmm1,xmm2,XMMWORD PTR [r10]
    2989c627f904:	45 85 e4                                        	test   r12d,r12d
    2989c627f907:	0f 84 04 00 00 00                               	je     0x2989c627f911
    2989c627f90d:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    2989c627f911:	41 3b d1                                        	cmp    edx,r9d
    2989c627f914:	0f 84 04 00 00 00                               	je     0x2989c627f91e
    2989c627f91a:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    2989c627f91e:	83 cb 01                                        	or     ebx,0x1
    2989c627f921:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c627f926:	85 c9                                           	test   ecx,ecx
    2989c627f928:	0f 45 da                                        	cmovne ebx,edx
    2989c627f92b:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    2989c627f92f:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    2989c627f933:	e9 12 00 00 00                                  	jmp    0x2989c627f94a
    2989c627f938:	45 3b f9                                        	cmp    r15d,r9d
    2989c627f93b:	0f 84 09 00 00 00                               	je     0x2989c627f94a
    2989c627f941:	33 c0                                           	xor    eax,eax
    2989c627f943:	48 8b e5                                        	mov    rsp,rbp
    2989c627f946:	5d                                              	pop    rbp
    2989c627f947:	c2 08 00                                        	ret    0x8
    2989c627f94a:	c1 e3 06                                        	shl    ebx,0x6
    2989c627f94d:	41 03 d8                                        	add    ebx,r8d
    2989c627f950:	8b 94 1e 24 01 00 00                            	mov    edx,DWORD PTR [rsi+rbx*1+0x124]
    2989c627f957:	85 d2                                           	test   edx,edx
    2989c627f959:	0f 85 09 00 00 00                               	jne    0x2989c627f968
    2989c627f95f:	33 c0                                           	xor    eax,eax
    2989c627f961:	48 8b e5                                        	mov    rsp,rbp
    2989c627f964:	5d                                              	pop    rbp
    2989c627f965:	c2 08 00                                        	ret    0x8
    2989c627f968:	8b 8c 1e a4 02 00 00                            	mov    ecx,DWORD PTR [rsi+rbx*1+0x2a4]
    2989c627f96f:	85 c9                                           	test   ecx,ecx
    2989c627f971:	0f 8e a2 0e 00 00                               	jle    0x2989c6280819
    2989c627f977:	81 c3 24 04 00 00                               	add    ebx,0x424
    2989c627f97d:	8b 1c 1e                                        	mov    ebx,DWORD PTR [rsi+rbx*1]
    2989c627f980:	85 db                                           	test   ebx,ebx
    2989c627f982:	0f 8e 88 0e 00 00                               	jle    0x2989c6280810
    2989c627f988:	44 8d 41 ff                                     	lea    r8d,[rcx-0x1]
    2989c627f98c:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    2989c627f996:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c627f99b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    2989c627f99f:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x2989c627f98e
    2989c627f9a6:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c627f9ab:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c627f9af:	c5 c8 c2 ed 01                                  	vcmpltps xmm5,xmm6,xmm5
    2989c627f9b4:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    2989c627f9b8:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    2989c627f9bc:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    2989c627f9c1:	c5 f0 5e cc                                     	vdivps xmm1,xmm1,xmm4
    2989c627f9c5:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    2989c627f9cf:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c627f9d4:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c627f9d8:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    2989c627f9dc:	c5 e8 5e d4                                     	vdivps xmm2,xmm2,xmm4
    2989c627f9e0:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    2989c627f9e4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    2989c627f9ee:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c627f9f3:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    2989c627f9f7:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    2989c627f9fb:	44 8b 5c 3e 14                                  	mov    r11d,DWORD PTR [rsi+rdi*1+0x14]
    2989c627fa00:	44 8b 64 3e 10                                  	mov    r12d,DWORD PTR [rsi+rdi*1+0x10]
    2989c627fa05:	45 33 ff                                        	xor    r15d,r15d
    2989c627fa08:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    2989c627fa0f:	41 0f 95 c7                                     	setne  r15b
    2989c627fa13:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    2989c627fa1a:	41 0f 95 c4                                     	setne  r12b
    2989c627fa1e:	45 0f b6 e4                                     	movzx  r12d,r12b
    2989c627fa22:	48 89 75 e8                                     	mov    QWORD PTR [rbp-0x18],rsi
    2989c627fa26:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    2989c627fa2a:	48 89 55 d8                                     	mov    QWORD PTR [rbp-0x28],rdx
    2989c627fa2e:	45 23 e7                                        	and    r12d,r15d
    2989c627fa31:	0f 85 0d 00 00 00                               	jne    0x2989c627fa44
    2989c627fa37:	c5 e0 5f d2                                     	vmaxps xmm2,xmm3,xmm2
    2989c627fa3b:	c5 d0 5d d2                                     	vminps xmm2,xmm5,xmm2
    2989c627fa3f:	e9 0a 00 00 00                                  	jmp    0x2989c627fa4e
    2989c627fa44:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    2989c627fa4a:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    2989c627fa4e:	c5 f0 59 cc                                     	vmulps xmm1,xmm1,xmm4
    2989c627fa52:	8b 7c 3e 0c                                     	mov    edi,DWORD PTR [rsi+rdi*1+0xc]
    2989c627fa56:	44 8b d1                                        	mov    r10d,ecx
    2989c627fa59:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    2989c627fa5e:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    2989c627fa63:	c5 d8 59 d2                                     	vmulps xmm2,xmm4,xmm2
    2989c627fa67:	44 8d 7b ff                                     	lea    r15d,[rbx-0x1]
    2989c627fa6b:	41 8b f7                                        	mov    esi,r15d
    2989c627fa6e:	23 f3                                           	and    esi,ebx
    2989c627fa70:	33 c0                                           	xor    eax,eax
    2989c627fa72:	41 8b d0                                        	mov    edx,r8d
    2989c627fa75:	41 85 c8                                        	test   r8d,ecx
    2989c627fa78:	0f 45 d0                                        	cmovne edx,eax
    2989c627fa7b:	44 8b d3                                        	mov    r10d,ebx
    2989c627fa7e:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    2989c627fa83:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    2989c627fa88:	45 33 c9                                        	xor    r9d,r9d
    2989c627fa8b:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    2989c627fa92:	41 0f 95 c1                                     	setne  r9b
    2989c627fa96:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    2989c627fa9d:	41 0f 95 c3                                     	setne  r11b
    2989c627faa1:	45 0f b6 db                                     	movzx  r11d,r11b
    2989c627faa5:	45 23 d9                                        	and    r11d,r9d
    2989c627faa8:	0f 85 0d 00 00 00                               	jne    0x2989c627fabb
    2989c627faae:	c5 e0 5f c9                                     	vmaxps xmm1,xmm3,xmm1
    2989c627fab2:	c5 d0 5d c9                                     	vminps xmm1,xmm5,xmm1
    2989c627fab6:	e9 0a 00 00 00                                  	jmp    0x2989c627fac5
    2989c627fabb:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    2989c627fac1:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    2989c627fac5:	c5 d8 59 c9                                     	vmulps xmm1,xmm4,xmm1
    2989c627fac9:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    2989c627fad3:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c627fad8:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c627fadc:	c5 f0 58 e3                                     	vaddps xmm4,xmm1,xmm3
    2989c627fae0:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    2989c627fae6:	0f 84 5f 00 00 00                               	je     0x2989c627fb4b
    2989c627faec:	c4 e3 79 08 cc 09                               	vroundps xmm1,xmm4,0x9
    2989c627faf2:	4c 8b 15 90 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc90]        # 0x2989c627f789
    2989c627faf9:	c4 c1 70 54 32                                  	vandps xmm6,xmm1,XMMWORD PTR [r10]
    2989c627fafe:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    2989c627fb08:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c627fb0d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c627fb11:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    2989c627fb16:	49 ba 40 b9 f4 10 58 57 00 00                   	movabs r10,0x575810f4b940
    2989c627fb20:	c5 70 c2 f9 00                                  	vcmpeqps xmm15,xmm1,xmm1
    2989c627fb25:	c4 41 70 54 c7                                  	vandps xmm8,xmm1,xmm15
    2989c627fb2a:	c4 41 70 c2 3a 0d                               	vcmpgeps xmm15,xmm1,XMMWORD PTR [r10]
    2989c627fb30:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    2989c627fb35:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    2989c627fb3a:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    2989c627fb3e:	c5 f9 28 d9                                     	vmovapd xmm3,xmm1
    2989c627fb42:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    2989c627fb46:	e9 48 00 00 00                                  	jmp    0x2989c627fb93
    2989c627fb4b:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    2989c627fb51:	4c 8b 15 31 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc31]        # 0x2989c627f789
    2989c627fb58:	c4 c1 60 54 22                                  	vandps xmm4,xmm3,XMMWORD PTR [r10]
    2989c627fb5d:	4c 8b 15 9c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9c]        # 0x2989c627fb00
    2989c627fb64:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c627fb69:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c627fb6d:	c5 d8 c2 f7 01                                  	vcmpltps xmm6,xmm4,xmm7
    2989c627fb72:	4c 8b 15 9f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9f]        # 0x2989c627fb18
    2989c627fb79:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    2989c627fb7e:	c4 41 60 54 c7                                  	vandps xmm8,xmm3,xmm15
    2989c627fb83:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    2989c627fb89:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    2989c627fb8e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    2989c627fb93:	c4 e3 79 08 e2 09                               	vroundps xmm4,xmm2,0x9
    2989c627fb99:	4c 8b 15 78 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff78]        # 0x2989c627fb18
    2989c627fba0:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    2989c627fba5:	c4 41 58 54 cf                                  	vandps xmm9,xmm4,xmm15
    2989c627fbaa:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    2989c627fbb0:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    2989c627fbb5:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    2989c627fbba:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    2989c627fbc4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c627fbc9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c627fbce:	4c 8b 15 b4 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb4]        # 0x2989c627f789
    2989c627fbd5:	c4 41 58 54 1a                                  	vandps xmm11,xmm4,XMMWORD PTR [r10]
    2989c627fbda:	c5 a0 c2 ff 01                                  	vcmpltps xmm7,xmm11,xmm7
    2989c627fbdf:	c4 41 41 df fa                                  	vpandn xmm15,xmm7,xmm10
    2989c627fbe4:	c5 b1 db ff                                     	vpand  xmm7,xmm9,xmm7
    2989c627fbe8:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c627fbed:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    2989c627fbf2:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c627fbf7:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c627fbfc:	c4 42 41 3d db                                  	vpmaxsd xmm11,xmm7,xmm11
    2989c627fc01:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    2989c627fc06:	45 85 e4                                        	test   r12d,r12d
    2989c627fc09:	0f 84 4b 00 00 00                               	je     0x2989c627fc5a
    2989c627fc0f:	c5 79 6e da                                     	vmovd  xmm11,edx
    2989c627fc13:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c627fc18:	c4 41 41 db db                                  	vpand  xmm11,xmm7,xmm11
    2989c627fc1d:	85 d2                                           	test   edx,edx
    2989c627fc1f:	0f 85 35 00 00 00                               	jne    0x2989c627fc5a
    2989c627fc25:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    2989c627fc29:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c627fc2e:	c4 41 41 66 e1                                  	vpcmpgtd xmm12,xmm7,xmm9
    2989c627fc33:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    2989c627fc38:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c627fc3d:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    2989c627fc42:	c5 79 66 ef                                     	vpcmpgtd xmm13,xmm0,xmm7
    2989c627fc46:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    2989c627fc4b:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    2989c627fc50:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    2989c627fc55:	c4 41 41 fe db                                  	vpaddd xmm11,xmm7,xmm11
    2989c627fc5a:	45 8b c7                                        	mov    r8d,r15d
    2989c627fc5d:	85 f6                                           	test   esi,esi
    2989c627fc5f:	44 0f 45 c0                                     	cmovne r8d,eax
    2989c627fc63:	c4 41 49 df fa                                  	vpandn xmm15,xmm6,xmm10
    2989c627fc68:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    2989c627fc6c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c627fc71:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    2989c627fc76:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    2989c627fc7b:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c627fc80:	c4 42 49 3d d2                                  	vpmaxsd xmm10,xmm6,xmm10
    2989c627fc85:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    2989c627fc8a:	45 85 db                                        	test   r11d,r11d
    2989c627fc8d:	0f 84 4b 00 00 00                               	je     0x2989c627fcde
    2989c627fc93:	c4 41 79 6e d0                                  	vmovd  xmm10,r8d
    2989c627fc98:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c627fc9d:	c4 41 49 db d2                                  	vpand  xmm10,xmm6,xmm10
    2989c627fca2:	45 85 c0                                        	test   r8d,r8d
    2989c627fca5:	0f 85 33 00 00 00                               	jne    0x2989c627fcde
    2989c627fcab:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    2989c627fcaf:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    2989c627fcb4:	c4 41 49 66 e0                                  	vpcmpgtd xmm12,xmm6,xmm8
    2989c627fcb9:	c4 41 19 db e2                                  	vpand  xmm12,xmm12,xmm10
    2989c627fcbe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c627fcc3:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    2989c627fcc8:	c5 f9 66 c6                                     	vpcmpgtd xmm0,xmm0,xmm6
    2989c627fccc:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    2989c627fcd1:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    2989c627fcd5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c627fcda:	c5 49 fe d0                                     	vpaddd xmm10,xmm6,xmm0
    2989c627fcde:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    2989c627fce2:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c627fce7:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    2989c627fcec:	c4 41 29 fe e3                                  	vpaddd xmm12,xmm10,xmm11
    2989c627fcf1:	c4 63 79 16 e1 03                               	vpextrd ecx,xmm12,0x3
    2989c627fcf7:	c4 63 79 16 e6 02                               	vpextrd esi,xmm12,0x2
    2989c627fcfd:	c4 43 79 16 e1 01                               	vpextrd r9d,xmm12,0x1
    2989c627fd03:	c4 41 79 7e e7                                  	vmovd  r15d,xmm12
    2989c627fd08:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    2989c627fd0e:	0f 84 d2 08 00 00                               	je     0x2989c62805e6
    2989c627fd14:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    2989c627fd1e:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c627fd23:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c627fd28:	c4 c1 41 fe fc                                  	vpaddd xmm7,xmm7,xmm12
    2989c627fd2d:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    2989c627fd32:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    2989c627fd37:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    2989c627fd3c:	45 85 e4                                        	test   r12d,r12d
    2989c627fd3f:	0f 84 46 00 00 00                               	je     0x2989c627fd8b
    2989c627fd45:	c5 79 6e ea                                     	vmovd  xmm13,edx
    2989c627fd49:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c627fd4e:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    2989c627fd53:	85 d2                                           	test   edx,edx
    2989c627fd55:	0f 85 30 00 00 00                               	jne    0x2989c627fd8b
    2989c627fd5b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    2989c627fd60:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    2989c627fd65:	c5 31 db c8                                     	vpand  xmm9,xmm9,xmm0
    2989c627fd69:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c627fd6e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    2989c627fd73:	c5 11 66 ef                                     	vpcmpgtd xmm13,xmm13,xmm7
    2989c627fd77:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    2989c627fd7c:	c4 41 79 db cd                                  	vpand  xmm9,xmm0,xmm13
    2989c627fd81:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c627fd86:	c4 41 41 fe e9                                  	vpaddd xmm13,xmm7,xmm9
    2989c627fd8b:	c4 c1 49 fe f4                                  	vpaddd xmm6,xmm6,xmm12
    2989c627fd90:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    2989c627fd94:	c4 e2 49 3d ff                                  	vpmaxsd xmm7,xmm6,xmm7
    2989c627fd99:	c4 c2 41 39 f8                                  	vpminsd xmm7,xmm7,xmm8
    2989c627fd9e:	45 85 db                                        	test   r11d,r11d
    2989c627fda1:	0f 84 4f 00 00 00                               	je     0x2989c627fdf6
    2989c627fda7:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
    2989c627fdac:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    2989c627fdb1:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    2989c627fdb5:	45 85 c0                                        	test   r8d,r8d
    2989c627fdb8:	0f 85 38 00 00 00                               	jne    0x2989c627fdf6
    2989c627fdbe:	c5 f9 6e fb                                     	vmovd  xmm7,ebx
    2989c627fdc2:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    2989c627fdc7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c627fdcc:	c4 41 49 66 c0                                  	vpcmpgtd xmm8,xmm6,xmm8
    2989c627fdd1:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    2989c627fdd5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c627fdda:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    2989c627fddf:	c5 31 66 ce                                     	vpcmpgtd xmm9,xmm9,xmm6
    2989c627fde3:	c4 41 31 df f8                                  	vpandn xmm15,xmm9,xmm8
    2989c627fde8:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    2989c627fded:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c627fdf2:	c5 c9 fe ff                                     	vpaddd xmm7,xmm6,xmm7
    2989c627fdf6:	c4 e2 41 40 c0                                  	vpmulld xmm0,xmm7,xmm0
    2989c627fdfb:	c4 c1 79 fe f3                                  	vpaddd xmm6,xmm0,xmm11
    2989c627fe00:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    2989c627fe04:	0f 85 16 00 00 00                               	jne    0x2989c627fe20
    2989c627fe0a:	c4 c1 21 fe fc                                  	vpaddd xmm7,xmm11,xmm12
    2989c627fe0f:	c5 91 76 ff                                     	vpcmpeqd xmm7,xmm13,xmm7
    2989c627fe13:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
    2989c627fe17:	83 fb 0f                                        	cmp    ebx,0xf
    2989c627fe1a:	0f 84 72 03 00 00                               	je     0x2989c6280192
    2989c627fe20:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    2989c627fe23:	83 e3 08                                        	and    ebx,0x8
    2989c627fe26:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    2989c627fe29:	83 e2 04                                        	and    edx,0x4
    2989c627fe2c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c627fe2f:	83 e7 02                                        	and    edi,0x2
    2989c627fe32:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    2989c627fe36:	41 83 e0 01                                     	and    r8d,0x1
    2989c627fe3a:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    2989c627fe3e:	0f 84 7e 00 00 00                               	je     0x2989c627fec2
    2989c627fe44:	45 85 c0                                        	test   r8d,r8d
    2989c627fe47:	0f 85 10 00 00 00                               	jne    0x2989c627fe5d
    2989c627fe4d:	4c 8b d8                                        	mov    r11,rax
    2989c627fe50:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    2989c627fe54:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    2989c627fe58:	e9 10 00 00 00                                  	jmp    0x2989c627fe6d
    2989c627fe5d:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    2989c627fe61:	47 8d 1c b8                                     	lea    r11d,[r8+r15*4]
    2989c627fe65:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    2989c627fe69:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    2989c627fe6d:	85 ff                                           	test   edi,edi
    2989c627fe6f:	0f 85 08 00 00 00                               	jne    0x2989c627fe7d
    2989c627fe75:	48 8b f8                                        	mov    rdi,rax
    2989c627fe78:	e9 08 00 00 00                                  	jmp    0x2989c627fe85
    2989c627fe7d:	43 8d 3c 88                                     	lea    edi,[r8+r9*4]
    2989c627fe81:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    2989c627fe85:	85 d2                                           	test   edx,edx
    2989c627fe87:	0f 85 08 00 00 00                               	jne    0x2989c627fe95
    2989c627fe8d:	48 8b d0                                        	mov    rdx,rax
    2989c627fe90:	e9 08 00 00 00                                  	jmp    0x2989c627fe9d
    2989c627fe95:	41 8d 14 b0                                     	lea    edx,[r8+rsi*4]
    2989c627fe99:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    2989c627fe9d:	85 db                                           	test   ebx,ebx
    2989c627fe9f:	0f 85 10 00 00 00                               	jne    0x2989c627feb5
    2989c627fea5:	8b f2                                           	mov    esi,edx
    2989c627fea7:	48 8b c8                                        	mov    rcx,rax
    2989c627feaa:	41 8b d8                                        	mov    ebx,r8d
    2989c627fead:	49 8b d4                                        	mov    rdx,r12
    2989c627feb0:	e9 2f 00 00 00                                  	jmp    0x2989c627fee4
    2989c627feb5:	8b f2                                           	mov    esi,edx
    2989c627feb7:	41 8b d8                                        	mov    ebx,r8d
    2989c627feba:	49 8b d4                                        	mov    rdx,r12
    2989c627febd:	e9 1c 00 00 00                                  	jmp    0x2989c627fede
    2989c627fec2:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    2989c627fec5:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    2989c627fec9:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    2989c627fecd:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c627fed0:	46 8d 04 bb                                     	lea    r8d,[rbx+r15*4]
    2989c627fed4:	46 8b 1c 02                                     	mov    r11d,DWORD PTR [rdx+r8*1]
    2989c627fed8:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c627fedb:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    2989c627fede:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    2989c627fee1:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    2989c627fee4:	c4 c1 11 fe fa                                  	vpaddd xmm7,xmm13,xmm10
    2989c627fee9:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    2989c627feee:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    2989c627fef3:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    2989c627fef7:	0f 84 74 00 00 00                               	je     0x2989c627ff71
    2989c627fefd:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    2989c627ff01:	0f 85 08 00 00 00                               	jne    0x2989c627ff0f
    2989c627ff07:	4c 8b c0                                        	mov    r8,rax
    2989c627ff0a:	e9 0d 00 00 00                                  	jmp    0x2989c627ff1c
    2989c627ff0f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    2989c627ff14:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c627ff18:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    2989c627ff1c:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    2989c627ff20:	0f 85 08 00 00 00                               	jne    0x2989c627ff2e
    2989c627ff26:	4c 8b c8                                        	mov    r9,rax
    2989c627ff29:	e9 0e 00 00 00                                  	jmp    0x2989c627ff3c
    2989c627ff2e:	c4 c3 79 16 f9 01                               	vpextrd r9d,xmm7,0x1
    2989c627ff34:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    2989c627ff38:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    2989c627ff3c:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    2989c627ff40:	0f 85 08 00 00 00                               	jne    0x2989c627ff4e
    2989c627ff46:	4c 8b d8                                        	mov    r11,rax
    2989c627ff49:	e9 0e 00 00 00                                  	jmp    0x2989c627ff5c
    2989c627ff4e:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    2989c627ff54:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c627ff58:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c627ff5c:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    2989c627ff60:	0f 85 34 00 00 00                               	jne    0x2989c627ff9a
    2989c627ff66:	45 8b e0                                        	mov    r12d,r8d
    2989c627ff69:	4c 8b c0                                        	mov    r8,rax
    2989c627ff6c:	e9 40 00 00 00                                  	jmp    0x2989c627ffb1
    2989c627ff71:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    2989c627ff77:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c627ff7b:	46 8b 0c 02                                     	mov    r9d,DWORD PTR [rdx+r8*1]
    2989c627ff7f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    2989c627ff84:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    2989c627ff88:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    2989c627ff8c:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    2989c627ff92:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c627ff96:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c627ff9a:	c4 c3 79 16 fc 03                               	vpextrd r12d,xmm7,0x3
    2989c627ffa0:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    2989c627ffa4:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    2989c627ffa8:	45 8b d0                                        	mov    r10d,r8d
    2989c627ffab:	45 8b c4                                        	mov    r8d,r12d
    2989c627ffae:	45 8b e2                                        	mov    r12d,r10d
    2989c627ffb1:	c4 e3 39 22 ff 01                               	vpinsrd xmm7,xmm8,edi,0x1
    2989c627ffb7:	c4 41 79 6e c4                                  	vmovd  xmm8,r12d
    2989c627ffbc:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    2989c627ffc1:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    2989c627ffc7:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    2989c627ffcb:	0f 84 71 00 00 00                               	je     0x2989c6280042
    2989c627ffd1:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    2989c627ffd5:	0f 85 08 00 00 00                               	jne    0x2989c627ffe3
    2989c627ffdb:	48 8b f8                                        	mov    rdi,rax
    2989c627ffde:	e9 0a 00 00 00                                  	jmp    0x2989c627ffed
    2989c627ffe3:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    2989c627ffe7:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c627ffea:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c627ffed:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    2989c627fff1:	0f 85 08 00 00 00                               	jne    0x2989c627ffff
    2989c627fff7:	4c 8b c8                                        	mov    r9,rax
    2989c627fffa:	e9 0e 00 00 00                                  	jmp    0x2989c628000d
    2989c627ffff:	c4 c3 79 16 f1 01                               	vpextrd r9d,xmm6,0x1
    2989c6280005:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    2989c6280009:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    2989c628000d:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    2989c6280011:	0f 85 08 00 00 00                               	jne    0x2989c628001f
    2989c6280017:	4c 8b e0                                        	mov    r12,rax
    2989c628001a:	e9 0e 00 00 00                                  	jmp    0x2989c628002d
    2989c628001f:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    2989c6280025:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    2989c6280029:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    2989c628002d:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    2989c6280031:	0f 85 30 00 00 00                               	jne    0x2989c6280067
    2989c6280037:	44 8b ff                                        	mov    r15d,edi
    2989c628003a:	48 8b f8                                        	mov    rdi,rax
    2989c628003d:	e9 3c 00 00 00                                  	jmp    0x2989c628007e
    2989c6280042:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    2989c6280048:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c628004b:	44 8b 0c 3a                                     	mov    r9d,DWORD PTR [rdx+rdi*1]
    2989c628004f:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    2989c6280053:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c6280056:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6280059:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    2989c628005f:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    2989c6280063:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    2989c6280067:	c4 c3 79 16 f7 03                               	vpextrd r15d,xmm6,0x3
    2989c628006d:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c6280071:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    2989c6280075:	45 8b d7                                        	mov    r10d,r15d
    2989c6280078:	44 8b ff                                        	mov    r15d,edi
    2989c628007b:	41 8b fa                                        	mov    edi,r10d
    2989c628007e:	c4 e3 41 22 f6 02                               	vpinsrd xmm6,xmm7,esi,0x2
    2989c6280084:	c4 c3 39 22 fb 02                               	vpinsrd xmm7,xmm8,r11d,0x2
    2989c628008a:	c4 c1 79 fe c5                                  	vpaddd xmm0,xmm0,xmm13
    2989c628008f:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    2989c6280094:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    2989c6280099:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    2989c628009f:	c4 43 39 22 c4 02                               	vpinsrd xmm8,xmm8,r12d,0x2
    2989c62800a5:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    2989c62800a9:	0f 84 6b 00 00 00                               	je     0x2989c628011a
    2989c62800af:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    2989c62800b3:	0f 85 08 00 00 00                               	jne    0x2989c62800c1
    2989c62800b9:	48 8b f0                                        	mov    rsi,rax
    2989c62800bc:	e9 0a 00 00 00                                  	jmp    0x2989c62800cb
    2989c62800c1:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    2989c62800c5:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c62800c8:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    2989c62800cb:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    2989c62800cf:	0f 85 08 00 00 00                               	jne    0x2989c62800dd
    2989c62800d5:	4c 8b c8                                        	mov    r9,rax
    2989c62800d8:	e9 0e 00 00 00                                  	jmp    0x2989c62800eb
    2989c62800dd:	c4 c3 79 16 c1 01                               	vpextrd r9d,xmm0,0x1
    2989c62800e3:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    2989c62800e7:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    2989c62800eb:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    2989c62800ef:	0f 85 08 00 00 00                               	jne    0x2989c62800fd
    2989c62800f5:	4c 8b d8                                        	mov    r11,rax
    2989c62800f8:	e9 0e 00 00 00                                  	jmp    0x2989c628010b
    2989c62800fd:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    2989c6280103:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c6280107:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c628010b:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    2989c628010f:	0f 85 2a 00 00 00                               	jne    0x2989c628013f
    2989c6280115:	e9 34 00 00 00                                  	jmp    0x2989c628014e
    2989c628011a:	c4 e3 79 16 c6 01                               	vpextrd esi,xmm0,0x1
    2989c6280120:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c6280123:	44 8b 0c 32                                     	mov    r9d,DWORD PTR [rdx+rsi*1]
    2989c6280127:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    2989c628012b:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c628012e:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    2989c6280131:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    2989c6280137:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    2989c628013b:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c628013f:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    2989c6280145:	42 8d 1c a3                                     	lea    ebx,[rbx+r12*4]
    2989c6280149:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    2989c628014c:	8b c3                                           	mov    eax,ebx
    2989c628014e:	c4 e3 49 22 c1 03                               	vpinsrd xmm0,xmm6,ecx,0x3
    2989c6280154:	c4 c3 41 22 f0 03                               	vpinsrd xmm6,xmm7,r8d,0x3
    2989c628015a:	c5 f9 6e fe                                     	vmovd  xmm7,esi
    2989c628015e:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    2989c6280163:	c4 c3 41 22 f9 01                               	vpinsrd xmm7,xmm7,r9d,0x1
    2989c6280169:	c4 c3 41 22 fb 02                               	vpinsrd xmm7,xmm7,r11d,0x2
    2989c628016f:	c4 e3 41 22 f8 03                               	vpinsrd xmm7,xmm7,eax,0x3
    2989c6280175:	c4 63 39 22 c7 03                               	vpinsrd xmm8,xmm8,edi,0x3
    2989c628017b:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    2989c628017f:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c6280184:	c4 41 79 28 c7                                  	vmovapd xmm8,xmm15
    2989c6280189:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c628018d:	e9 86 00 00 00                                  	jmp    0x2989c6280218
    2989c6280192:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    2989c6280195:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    2989c6280199:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    2989c628019d:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    2989c62801a2:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    2989c62801a6:	c5 fb 10 3c 3a                                  	vmovsd xmm7,QWORD PTR [rdx+rdi*1]
    2989c62801ab:	c5 f9 6c c7                                     	vpunpcklqdq xmm0,xmm0,xmm7
    2989c62801af:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c62801b2:	c5 fb 10 3c 32                                  	vmovsd xmm7,QWORD PTR [rdx+rsi*1]
    2989c62801b7:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    2989c62801ba:	c5 7b 10 04 0a                                  	vmovsd xmm8,QWORD PTR [rdx+rcx*1]
    2989c62801bf:	c4 c1 41 6c f8                                  	vpunpcklqdq xmm7,xmm7,xmm8
    2989c62801c4:	c5 78 c6 c7 dd                                  	vshufps xmm8,xmm0,xmm7,0xdd
    2989c62801c9:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    2989c62801ce:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    2989c62801d3:	c5 f9 7e f1                                     	vmovd  ecx,xmm6
    2989c62801d7:	03 cb                                           	add    ecx,ebx
    2989c62801d9:	c5 fb 10 3c 0a                                  	vmovsd xmm7,QWORD PTR [rdx+rcx*1]
    2989c62801de:	c4 e3 79 16 f1 01                               	vpextrd ecx,xmm6,0x1
    2989c62801e4:	03 cb                                           	add    ecx,ebx
    2989c62801e6:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    2989c62801eb:	c4 c1 41 6c f9                                  	vpunpcklqdq xmm7,xmm7,xmm9
    2989c62801f0:	c4 e3 79 16 f1 02                               	vpextrd ecx,xmm6,0x2
    2989c62801f6:	03 cb                                           	add    ecx,ebx
    2989c62801f8:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    2989c62801fd:	c4 e3 79 16 f1 03                               	vpextrd ecx,xmm6,0x3
    2989c6280203:	03 d9                                           	add    ebx,ecx
    2989c6280205:	c5 fb 10 34 1a                                  	vmovsd xmm6,QWORD PTR [rdx+rbx*1]
    2989c628020a:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    2989c628020e:	c5 40 c6 ce dd                                  	vshufps xmm9,xmm7,xmm6,0xdd
    2989c6280213:	c5 c0 c6 f6 88                                  	vshufps xmm6,xmm7,xmm6,0x88
    2989c6280218:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    2989c628021c:	c5 d0 5c d9                                     	vsubps xmm3,xmm5,xmm1
    2989c6280220:	c5 e8 5c d4                                     	vsubps xmm2,xmm2,xmm4
    2989c6280224:	c5 d0 5c e2                                     	vsubps xmm4,xmm5,xmm2
    2989c6280228:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    2989c628022d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6280232:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c6280238:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c628023d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6280242:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c6280247:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c628024b:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c628024f:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c6280254:	c5 d8 59 ed                                     	vmulps xmm5,xmm4,xmm5
    2989c6280258:	c4 c1 41 72 d0 18                               	vpsrld xmm7,xmm8,0x18
    2989c628025e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6280263:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c6280269:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c628026e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6280273:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c6280278:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c628027c:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c6280280:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c6280285:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    2989c6280289:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    2989c628028d:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    2989c6280291:	c5 c1 72 d6 18                                  	vpsrld xmm7,xmm6,0x18
    2989c6280296:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628029b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c62802a1:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c62802a6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62802ab:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c62802b0:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c62802b4:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c62802b8:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c62802bd:	c5 d8 59 ff                                     	vmulps xmm7,xmm4,xmm7
    2989c62802c1:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    2989c62802c7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62802cc:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    2989c62802d2:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    2989c62802d7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62802dc:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    2989c62802e2:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    2989c62802e7:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    2989c62802ec:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    2989c62802f1:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
    2989c62802f6:	c4 c1 40 58 fa                                  	vaddps xmm7,xmm7,xmm10
    2989c62802fb:	c5 f0 59 ff                                     	vmulps xmm7,xmm1,xmm7
    2989c62802ff:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    2989c6280303:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    2989c628030d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6280312:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6280316:	c5 79 db d7                                     	vpand  xmm10,xmm0,xmm7
    2989c628031a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628031f:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    2989c6280325:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    2989c628032a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628032f:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    2989c6280335:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    2989c628033a:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    2989c628033f:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    2989c6280344:	c4 41 58 59 d2                                  	vmulps xmm10,xmm4,xmm10
    2989c6280349:	c5 39 db df                                     	vpand  xmm11,xmm8,xmm7
    2989c628034d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6280352:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    2989c6280358:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    2989c628035d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6280362:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    2989c6280368:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    2989c628036d:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    2989c6280372:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    2989c6280377:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    2989c628037c:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    2989c6280381:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    2989c6280386:	c5 49 db df                                     	vpand  xmm11,xmm6,xmm7
    2989c628038a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628038f:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    2989c6280395:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    2989c628039a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628039f:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    2989c62803a5:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    2989c62803aa:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    2989c62803af:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    2989c62803b4:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    2989c62803b9:	c5 31 db e7                                     	vpand  xmm12,xmm9,xmm7
    2989c62803bd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62803c2:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    2989c62803c8:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    2989c62803cd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62803d2:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    2989c62803d8:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    2989c62803dd:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    2989c62803e2:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    2989c62803e7:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    2989c62803ec:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    2989c62803f1:	c4 41 70 59 db                                  	vmulps xmm11,xmm1,xmm11
    2989c62803f6:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    2989c62803fb:	c5 a1 72 d0 10                                  	vpsrld xmm11,xmm0,0x10
    2989c6280400:	c5 21 db df                                     	vpand  xmm11,xmm11,xmm7
    2989c6280404:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6280409:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    2989c628040f:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    2989c6280414:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6280419:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    2989c628041f:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    2989c6280424:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    2989c6280429:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    2989c628042e:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    2989c6280433:	c4 c1 19 72 d0 10                               	vpsrld xmm12,xmm8,0x10
    2989c6280439:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    2989c628043d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6280442:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    2989c6280448:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    2989c628044d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6280452:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    2989c6280458:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    2989c628045d:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    2989c6280462:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    2989c6280467:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    2989c628046c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    2989c6280471:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    2989c6280476:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    2989c628047b:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    2989c628047f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6280484:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    2989c628048a:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    2989c628048f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6280494:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    2989c628049a:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    2989c628049f:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    2989c62804a4:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    2989c62804a9:	c4 41 58 59 e4                                  	vmulps xmm12,xmm4,xmm12
    2989c62804ae:	c4 c1 11 72 d1 10                               	vpsrld xmm13,xmm9,0x10
    2989c62804b4:	c5 11 db ef                                     	vpand  xmm13,xmm13,xmm7
    2989c62804b8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62804bd:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    2989c62804c3:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    2989c62804c8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62804cd:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    2989c62804d3:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    2989c62804d8:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    2989c62804dd:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    2989c62804e2:	c4 41 68 59 ed                                  	vmulps xmm13,xmm2,xmm13
    2989c62804e7:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    2989c62804ec:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    2989c62804f1:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    2989c62804f6:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    2989c62804fb:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    2989c62804ff:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6280504:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c628050a:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c628050f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6280514:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c6280519:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c628051d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c6280521:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c6280526:	c5 d8 59 c0                                     	vmulps xmm0,xmm4,xmm0
    2989c628052a:	c4 c1 39 72 d0 08                               	vpsrld xmm8,xmm8,0x8
    2989c6280530:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    2989c6280534:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6280539:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c628053f:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c6280544:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6280549:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c628054f:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6280554:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6280559:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c628055e:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
    2989c6280563:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    2989c6280568:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    2989c628056c:	c5 e1 72 d6 08                                  	vpsrld xmm3,xmm6,0x8
    2989c6280571:	c5 e1 db df                                     	vpand  xmm3,xmm3,xmm7
    2989c6280575:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628057a:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c6280580:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c6280585:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628058a:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c628058f:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c6280593:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c6280597:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c628059c:	c5 d8 59 db                                     	vmulps xmm3,xmm4,xmm3
    2989c62805a0:	c4 c1 59 72 d1 08                               	vpsrld xmm4,xmm9,0x8
    2989c62805a6:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    2989c62805aa:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62805af:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c62805b5:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c62805ba:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62805bf:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c62805c4:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c62805c8:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c62805cc:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c62805d1:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    2989c62805d5:	c5 e0 58 d2                                     	vaddps xmm2,xmm3,xmm2
    2989c62805d9:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    2989c62805dd:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    2989c62805e1:	e9 84 01 00 00                                  	jmp    0x2989c628076a
    2989c62805e6:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    2989c62805ea:	0f 84 68 00 00 00                               	je     0x2989c6280658
    2989c62805f0:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    2989c62805f4:	0f 85 0f 00 00 00                               	jne    0x2989c6280609
    2989c62805fa:	48 8b f8                                        	mov    rdi,rax
    2989c62805fd:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    2989c6280601:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    2989c6280604:	e9 0e 00 00 00                                  	jmp    0x2989c6280617
    2989c6280609:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    2989c628060c:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    2989c6280610:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    2989c6280614:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6280617:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    2989c628061b:	0f 85 08 00 00 00                               	jne    0x2989c6280629
    2989c6280621:	4c 8b c0                                        	mov    r8,rax
    2989c6280624:	e9 08 00 00 00                                  	jmp    0x2989c6280631
    2989c6280629:	46 8d 04 8b                                     	lea    r8d,[rbx+r9*4]
    2989c628062d:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    2989c6280631:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    2989c6280635:	0f 85 08 00 00 00                               	jne    0x2989c6280643
    2989c628063b:	48 8b f0                                        	mov    rsi,rax
    2989c628063e:	e9 06 00 00 00                                  	jmp    0x2989c6280649
    2989c6280643:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c6280646:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    2989c6280649:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    2989c628064d:	0f 85 21 00 00 00                               	jne    0x2989c6280674
    2989c6280653:	e9 24 00 00 00                                  	jmp    0x2989c628067c
    2989c6280658:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    2989c628065b:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    2989c628065e:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    2989c6280662:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    2989c6280665:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    2989c6280669:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    2989c628066d:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    2989c6280671:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6280674:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    2989c6280677:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    2989c628067a:	8b c3                                           	mov    eax,ebx
    2989c628067c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    2989c6280680:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6280685:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    2989c628068b:	c4 e3 79 22 c6 02                               	vpinsrd xmm0,xmm0,esi,0x2
    2989c6280691:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    2989c6280697:	c5 f1 72 d0 18                                  	vpsrld xmm1,xmm0,0x18
    2989c628069c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62806a1:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c62806a7:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c62806ac:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62806b1:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c62806b6:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c62806ba:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c62806be:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c62806c3:	4c 8b 15 3b fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc3b]        # 0x2989c6280305
    2989c62806ca:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c62806cf:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c62806d3:	c5 f9 db da                                     	vpand  xmm3,xmm0,xmm2
    2989c62806d7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62806dc:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c62806e2:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c62806e7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62806ec:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c62806f1:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c62806f5:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c62806f9:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c62806fe:	c5 d9 72 d0 10                                  	vpsrld xmm4,xmm0,0x10
    2989c6280703:	c5 d9 db e2                                     	vpand  xmm4,xmm4,xmm2
    2989c6280707:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628070c:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c6280712:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c6280717:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628071c:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c6280721:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c6280725:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c6280729:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c628072e:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    2989c6280733:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    2989c6280737:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c628073c:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c6280742:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c6280747:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c628074c:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c6280751:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c6280755:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c6280759:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c628075e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    2989c6280762:	c5 79 28 dc                                     	vmovapd xmm11,xmm4
    2989c6280766:	c5 79 28 d3                                     	vmovapd xmm10,xmm3
    2989c628076a:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    2989c6280774:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c6280779:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    2989c628077d:	c5 d0 59 d1                                     	vmulps xmm2,xmm5,xmm1
    2989c6280781:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c6280785:	41 83 e1 01                                     	and    r9d,0x1
    2989c6280789:	41 f7 d9                                        	neg    r9d
    2989c628078c:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    2989c6280791:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c6280796:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c628079a:	41 c1 e1 1e                                     	shl    r9d,0x1e
    2989c628079e:	41 c1 f9 1f                                     	sar    r9d,0x1f
    2989c62807a2:	c4 c3 61 22 d9 01                               	vpinsrd xmm3,xmm3,r9d,0x1
    2989c62807a8:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c62807ac:	41 c1 e1 1d                                     	shl    r9d,0x1d
    2989c62807b0:	41 c1 f9 1f                                     	sar    r9d,0x1f
    2989c62807b4:	c4 c3 61 22 d9 02                               	vpinsrd xmm3,xmm3,r9d,0x2
    2989c62807ba:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c62807be:	41 c1 e1 1c                                     	shl    r9d,0x1c
    2989c62807c2:	41 c1 f9 1f                                     	sar    r9d,0x1f
    2989c62807c6:	c4 c3 61 22 d9 03                               	vpinsrd xmm3,xmm3,r9d,0x3
    2989c62807cc:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    2989c62807d0:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    2989c62807d3:	8b db                                           	mov    ebx,ebx
    2989c62807d5:	c5 fa 7f 54 1a 30                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x30],xmm2
    2989c62807db:	c5 a0 59 d1                                     	vmulps xmm2,xmm11,xmm1
    2989c62807df:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    2989c62807e3:	c5 fa 7f 54 1a 20                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x20],xmm2
    2989c62807e9:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    2989c62807ed:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    2989c62807f1:	c5 fa 7f 44 1a 10                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x10],xmm0
    2989c62807f7:	c5 a8 59 c1                                     	vmulps xmm0,xmm10,xmm1
    2989c62807fb:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    2989c62807ff:	c5 fa 7f 04 1a                                  	vmovdqu XMMWORD PTR [rdx+rbx*1],xmm0
    2989c6280804:	b8 01 00 00 00                                  	mov    eax,0x1
    2989c6280809:	48 8b e5                                        	mov    rsp,rbp
    2989c628080c:	5d                                              	pop    rbp
    2989c628080d:	c2 08 00                                        	ret    0x8
    2989c6280810:	33 c0                                           	xor    eax,eax
    2989c6280812:	48 8b e5                                        	mov    rsp,rbp
    2989c6280815:	5d                                              	pop    rbp
    2989c6280816:	c2 08 00                                        	ret    0x8
    2989c6280819:	33 c0                                           	xor    eax,eax
    2989c628081b:	48 8b e5                                        	mov    rsp,rbp
    2989c628081e:	5d                                              	pop    rbp
    2989c628081f:	c2 08 00                                        	ret    0x8
    2989c6280822:	90                                              	nop
    2989c6280823:	90                                              	nop
    2989c6280824:	07                                              	(bad)
    2989c6280825:	00 00                                           	add    BYTE PTR [rax],al
    2989c6280827:	00 08                                           	add    BYTE PTR [rax],cl
	...
