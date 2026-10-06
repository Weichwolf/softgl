
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms0/selected/sg_raster_triangle_depth_capture-turbofan.bin:     file format binary


Disassembly of section .data:

00001d2b7c4a75c0 <.data>:
    1d2b7c4a75c0:	55                                              	push   rbp
    1d2b7c4a75c1:	48 8b ec                                        	mov    rbp,rsp
    1d2b7c4a75c4:	6a 30                                           	push   0x30
    1d2b7c4a75c6:	56                                              	push   rsi
    1d2b7c4a75c7:	48 81 ec f0 03 00 00                            	sub    rsp,0x3f0
    1d2b7c4a75ce:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    1d2b7c4a75d2:	48 89 95 d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],rdx
    1d2b7c4a75d9:	8b f9                                           	mov    edi,ecx
    1d2b7c4a75db:	48 89 8d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rcx
    1d2b7c4a75e2:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    1d2b7c4a75e6:	0f 86 da 95 00 00                               	jbe    0x1d2b7c4b0bc6
    1d2b7c4a75ec:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    1d2b7c4a75f0:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    1d2b7c4a75f4:	4d 0b de                                        	or     r11,r14
    1d2b7c4a75f7:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    1d2b7c4a75fb:	45 8d bc 24 00 fe ff ff                         	lea    r15d,[r12-0x200]
    1d2b7c4a7603:	45 89 7b 07                                     	mov    DWORD PTR [r11+0x7],r15d
    1d2b7c4a7607:	8b cb                                           	mov    ecx,ebx
    1d2b7c4a7609:	c4 c1 7a 6f 74 08 10                            	vmovdqu xmm6,XMMWORD PTR [r8+rcx*1+0x10]
    1d2b7c4a7610:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    1d2b7c4a761a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4a761f:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4a7623:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    1d2b7c4a7627:	49 ba 40 79 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7940
    1d2b7c4a7631:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c4a7637:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    1d2b7c4a763c:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c4a7642:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    1d2b7c4a7647:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    1d2b7c4a764c:	4c 89 a5 c8 fd ff ff                            	mov    QWORD PTR [rbp-0x238],r12
    1d2b7c4a7653:	44 8b e2                                        	mov    r12d,edx
    1d2b7c4a7656:	c4 01 7a 6f 4c 20 10                            	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x10]
    1d2b7c4a765d:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    1d2b7c4a7661:	4c 8b 15 c1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc1]        # 0x1d2b7c4a7629
    1d2b7c4a7668:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    1d2b7c4a766e:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    1d2b7c4a7673:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    1d2b7c4a7679:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    1d2b7c4a767e:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    1d2b7c4a7683:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    1d2b7c4a7688:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    1d2b7c4a768d:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    1d2b7c4a7693:	8b f7                                           	mov    esi,edi
    1d2b7c4a7695:	c4 41 7a 6f 64 30 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rsi*1+0x10]
    1d2b7c4a769c:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    1d2b7c4a76a0:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x1d2b7c4a7629
    1d2b7c4a76a7:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    1d2b7c4a76ad:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    1d2b7c4a76b2:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    1d2b7c4a76b8:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    1d2b7c4a76bd:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    1d2b7c4a76c2:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    1d2b7c4a76c7:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    1d2b7c4a76cc:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    1d2b7c4a76d2:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    1d2b7c4a76d6:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    1d2b7c4a76db:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    1d2b7c4a76e0:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    1d2b7c4a76e4:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    1d2b7c4a76ea:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    1d2b7c4a76ee:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    1d2b7c4a76f3:	c4 e3 f9 16 d2 00                               	vpextrq rdx,xmm2,0x0
    1d2b7c4a76f9:	c4 e3 f9 16 d7 01                               	vpextrq rdi,xmm2,0x1
    1d2b7c4a76ff:	48 2b d7                                        	sub    rdx,rdi
    1d2b7c4a7702:	48 85 d2                                        	test   rdx,rdx
    1d2b7c4a7705:	0f 8e 8a 94 00 00                               	jle    0x1d2b7c4b0b95
    1d2b7c4a770b:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    1d2b7c4a7710:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    1d2b7c4a7715:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    1d2b7c4a771b:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    1d2b7c4a7725:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c4a772a:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c4a772e:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    1d2b7c4a7732:	8d 78 04                                        	lea    edi,[rax+0x4]
    1d2b7c4a7735:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    1d2b7c4a773a:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    1d2b7c4a773f:	c4 c3 59 22 24 38 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rdi*1],0x1
    1d2b7c4a7746:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    1d2b7c4a774b:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    1d2b7c4a774f:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    1d2b7c4a7754:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    1d2b7c4a7759:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    1d2b7c4a775e:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    1d2b7c4a7763:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    1d2b7c4a7767:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    1d2b7c4a776b:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    1d2b7c4a7775:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c4a777a:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c4a777e:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    1d2b7c4a7782:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    1d2b7c4a7786:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    1d2b7c4a778b:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    1d2b7c4a7791:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    1d2b7c4a7796:	8b f8                                           	mov    edi,eax
    1d2b7c4a7798:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    1d2b7c4a779d:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    1d2b7c4a77a1:	c5 f8 11 85 80 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x280],xmm0
    1d2b7c4a77a9:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    1d2b7c4a77b0:	48 89 95 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rdx
    1d2b7c4a77b7:	45 85 c9                                        	test   r9d,r9d
    1d2b7c4a77ba:	0f 84 3a 00 00 00                               	je     0x1d2b7c4a77fa
    1d2b7c4a77c0:	8d 58 50                                        	lea    ebx,[rax+0x50]
    1d2b7c4a77c3:	49 8d 50 48                                     	lea    rdx,[r8+0x48]
    1d2b7c4a77c7:	c5 fb 10 24 3a                                  	vmovsd xmm4,QWORD PTR [rdx+rdi*1]
    1d2b7c4a77cc:	c4 c3 59 22 2c 18 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+rbx*1],0x0
    1d2b7c4a77d3:	8d 58 54                                        	lea    ebx,[rax+0x54]
    1d2b7c4a77d6:	c4 c3 59 22 04 18 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rbx*1],0x1
    1d2b7c4a77dd:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    1d2b7c4a77e1:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    1d2b7c4a77e6:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    1d2b7c4a77eb:	48 8b 95 70 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x190]
    1d2b7c4a77f2:	c5 f8 10 85 80 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x280]
    1d2b7c4a77fa:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    1d2b7c4a77fe:	c4 e3 f9 16 e3 00                               	vpextrq rbx,xmm4,0x0
    1d2b7c4a7804:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    1d2b7c4a7809:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    1d2b7c4a780f:	48 23 c3                                        	and    rax,rbx
    1d2b7c4a7812:	a8 01                                           	test   al,0x1
    1d2b7c4a7814:	0f 85 22 00 00 00                               	jne    0x1d2b7c4a783c
    1d2b7c4a781a:	b8 01 00 00 00                                  	mov    eax,0x1
    1d2b7c4a781f:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    1d2b7c4a7824:	45 85 c9                                        	test   r9d,r9d
    1d2b7c4a7827:	0f 45 c7                                        	cmovne eax,edi
    1d2b7c4a782a:	41 8d bf 00 02 00 00                            	lea    edi,[r15+0x200]
    1d2b7c4a7831:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    1d2b7c4a7835:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c4a7838:	5d                                              	pop    rbp
    1d2b7c4a7839:	c2 10 00                                        	ret    0x10
    1d2b7c4a783c:	c4 63 79 16 d0 01                               	vpextrd eax,xmm10,0x1
    1d2b7c4a7842:	c4 63 79 16 eb 01                               	vpextrd ebx,xmm13,0x1
    1d2b7c4a7848:	c4 43 79 16 c1 01                               	vpextrd r9d,xmm8,0x1
    1d2b7c4a784e:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    1d2b7c4a7852:	45 8b 9c 38 e0 00 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0xe0]
    1d2b7c4a785a:	4c 89 7d e0                                     	mov    QWORD PTR [rbp-0x20],r15
    1d2b7c4a785e:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    1d2b7c4a7862:	48 89 7d c8                                     	mov    QWORD PTR [rbp-0x38],rdi
    1d2b7c4a7866:	48 89 8d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],rcx
    1d2b7c4a786d:	48 89 b5 48 fe ff ff                            	mov    QWORD PTR [rbp-0x1b8],rsi
    1d2b7c4a7874:	4c 89 a5 40 fe ff ff                            	mov    QWORD PTR [rbp-0x1c0],r12
    1d2b7c4a787b:	c5 f8 11 bd 90 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x270],xmm7
    1d2b7c4a7883:	c5 f8 11 95 60 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3a0],xmm2
    1d2b7c4a788b:	48 89 85 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rax
    1d2b7c4a7892:	48 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rbx
    1d2b7c4a7899:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    1d2b7c4a789d:	4c 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],r11
    1d2b7c4a78a1:	45 85 db                                        	test   r11d,r11d
    1d2b7c4a78a4:	0f 85 0d 00 00 00                               	jne    0x1d2b7c4a78b7
    1d2b7c4a78aa:	c5 f8 57 c0                                     	vxorps xmm0,xmm0,xmm0
    1d2b7c4a78ae:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    1d2b7c4a78b2:	e9 43 01 00 00                                  	jmp    0x1d2b7c4a79fa
    1d2b7c4a78b7:	c4 c1 7a 10 ac 38 d8 00 00 00                   	vmovss xmm5,DWORD PTR [r8+rdi*1+0xd8]
    1d2b7c4a78c1:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4a78c5:	c5 f8 2e e5                                     	vucomiss xmm4,xmm5
    1d2b7c4a78c9:	0f 8a 1c 00 00 00                               	jp     0x1d2b7c4a78eb
    1d2b7c4a78cf:	0f 85 16 00 00 00                               	jne    0x1d2b7c4a78eb
    1d2b7c4a78d5:	c4 c1 7a 10 84 38 dc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rdi*1+0xdc]
    1d2b7c4a78df:	c5 f8 2e e0                                     	vucomiss xmm4,xmm0
    1d2b7c4a78e3:	7a 06                                           	jp     0x1d2b7c4a78eb
    1d2b7c4a78e5:	0f 84 0b 01 00 00                               	je     0x1d2b7c4a79f6
    1d2b7c4a78eb:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    1d2b7c4a78f0:	c4 c1 78 28 c4                                  	vmovaps xmm0,xmm12
    1d2b7c4a78f5:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    1d2b7c4a78fa:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    1d2b7c4a78fe:	c4 c1 7a 59 f9                                  	vmulss xmm7,xmm0,xmm9
    1d2b7c4a7903:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    1d2b7c4a7908:	c4 c1 4a 59 d4                                  	vmulss xmm2,xmm6,xmm12
    1d2b7c4a790d:	c5 c2 5c fa                                     	vsubss xmm7,xmm7,xmm2
    1d2b7c4a7911:	c5 f8 2e e7                                     	vucomiss xmm4,xmm7
    1d2b7c4a7915:	7a 06                                           	jp     0x1d2b7c4a791d
    1d2b7c4a7917:	0f 84 d9 00 00 00                               	je     0x1d2b7c4a79f6
    1d2b7c4a791d:	c4 c1 7a 10 54 30 18                            	vmovss xmm2,DWORD PTR [r8+rsi*1+0x18]
    1d2b7c4a7924:	c5 78 11 9d 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm11
    1d2b7c4a792c:	c4 01 7a 10 5c 20 18                            	vmovss xmm11,DWORD PTR [r8+r12*1+0x18]
    1d2b7c4a7933:	c4 c1 6a 5c d3                                  	vsubss xmm2,xmm2,xmm11
    1d2b7c4a7938:	c4 41 6a 59 c9                                  	vmulss xmm9,xmm2,xmm9
    1d2b7c4a793d:	c5 78 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm14
    1d2b7c4a7945:	c4 41 7a 10 74 08 18                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x18]
    1d2b7c4a794c:	c4 41 0a 5c db                                  	vsubss xmm11,xmm14,xmm11
    1d2b7c4a7951:	c4 41 1a 59 e3                                  	vmulss xmm12,xmm12,xmm11
    1d2b7c4a7956:	c4 41 32 5c cc                                  	vsubss xmm9,xmm9,xmm12
    1d2b7c4a795b:	c5 32 5e cf                                     	vdivss xmm9,xmm9,xmm7
    1d2b7c4a795f:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    1d2b7c4a7964:	49 ba 60 78 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7860
    1d2b7c4a796e:	c4 41 30 57 22                                  	vxorps xmm12,xmm9,XMMWORD PTR [r10]
    1d2b7c4a7973:	c4 c1 78 2e e1                                  	vucomiss xmm4,xmm9
    1d2b7c4a7978:	0f 87 05 00 00 00                               	ja     0x1d2b7c4a7983
    1d2b7c4a797e:	c4 41 79 28 e1                                  	vmovapd xmm12,xmm9
    1d2b7c4a7983:	c5 a2 59 c0                                     	vmulss xmm0,xmm11,xmm0
    1d2b7c4a7987:	c5 ca 59 f2                                     	vmulss xmm6,xmm6,xmm2
    1d2b7c4a798b:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c4a798f:	c5 fa 5e c7                                     	vdivss xmm0,xmm0,xmm7
    1d2b7c4a7993:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    1d2b7c4a7997:	4c 8b 15 c8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc8]        # 0x1d2b7c4a7966
    1d2b7c4a799e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4a79a3:	c5 f8 2e e0                                     	vucomiss xmm4,xmm0
    1d2b7c4a79a7:	0f 87 04 00 00 00                               	ja     0x1d2b7c4a79b1
    1d2b7c4a79ad:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c4a79b1:	c5 78 2e e6                                     	vucomiss xmm12,xmm6
    1d2b7c4a79b5:	0f 87 04 00 00 00                               	ja     0x1d2b7c4a79bf
    1d2b7c4a79bb:	c5 79 28 e6                                     	vmovapd xmm12,xmm6
    1d2b7c4a79bf:	c4 c1 52 59 c4                                  	vmulss xmm0,xmm5,xmm12
    1d2b7c4a79c4:	c4 c1 7a 10 b4 38 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+rdi*1+0xdc]
    1d2b7c4a79ce:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    1d2b7c4a79d4:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    1d2b7c4a79d9:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4a79dd:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a79e1:	c5 78 10 b5 10 ff ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0xf0]
    1d2b7c4a79e9:	c5 78 10 9d 40 ff ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0xc0]
    1d2b7c4a79f1:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a79fa
    1d2b7c4a79f6:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    1d2b7c4a79fa:	c4 c1 79 7e df                                  	vmovd  r15d,xmm3
    1d2b7c4a79ff:	4c 89 bd 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],r15
    1d2b7c4a7a06:	c4 c3 79 16 df 01                               	vpextrd r15d,xmm3,0x1
    1d2b7c4a7a0c:	4c 89 bd e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r15
    1d2b7c4a7a13:	c4 41 79 7e d7                                  	vmovd  r15d,xmm10
    1d2b7c4a7a18:	c5 79 7e ea                                     	vmovd  edx,xmm13
    1d2b7c4a7a1c:	c5 79 7e c1                                     	vmovd  ecx,xmm8
    1d2b7c4a7a20:	41 2b c1                                        	sub    eax,r9d
    1d2b7c4a7a23:	4c 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],r15
    1d2b7c4a7a27:	45 8b f9                                        	mov    r15d,r9d
    1d2b7c4a7a2a:	44 2b fb                                        	sub    r15d,ebx
    1d2b7c4a7a2d:	41 8b 9c 38 a4 00 00 00                         	mov    ebx,DWORD PTR [r8+rdi*1+0xa4]
    1d2b7c4a7a35:	c5 fb 11 85 78 fc ff ff                         	vmovsd QWORD PTR [rbp-0x388],xmm0
    1d2b7c4a7a3d:	48 89 55 80                                     	mov    QWORD PTR [rbp-0x80],rdx
    1d2b7c4a7a41:	48 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rax
    1d2b7c4a7a48:	4c 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r15
    1d2b7c4a7a4f:	85 db                                           	test   ebx,ebx
    1d2b7c4a7a51:	0f 85 a6 00 00 00                               	jne    0x1d2b7c4a7afd
    1d2b7c4a7a57:	45 8b 8c 38 30 05 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x530]
    1d2b7c4a7a5f:	41 83 bc 38 30 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x530],0x0
    1d2b7c4a7a68:	0f 85 8f 00 00 00                               	jne    0x1d2b7c4a7afd
    1d2b7c4a7a6e:	45 8b 8c 38 c8 3c 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3cc8]
    1d2b7c4a7a76:	41 83 bc 38 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3cc8],0x0
    1d2b7c4a7a7f:	0f 85 78 00 00 00                               	jne    0x1d2b7c4a7afd
    1d2b7c4a7a85:	45 8b 8c 38 70 37 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3770]
    1d2b7c4a7a8d:	41 83 bc 38 70 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3770],0x0
    1d2b7c4a7a96:	0f 85 61 00 00 00                               	jne    0x1d2b7c4a7afd
    1d2b7c4a7a9c:	45 8b 8c 38 74 37 00 00                         	mov    r9d,DWORD PTR [r8+rdi*1+0x3774]
    1d2b7c4a7aa4:	41 83 bc 38 74 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3774],0x0
    1d2b7c4a7aad:	0f 85 4a 00 00 00                               	jne    0x1d2b7c4a7afd
    1d2b7c4a7ab3:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    1d2b7c4a7ab7:	45 8b d9                                        	mov    r11d,r9d
    1d2b7c4a7aba:	43 8b b4 18 30 01 00 00                         	mov    esi,DWORD PTR [r8+r11*1+0x130]
    1d2b7c4a7ac2:	43 83 bc 18 30 01 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0x130],0x0
    1d2b7c4a7acb:	0f 84 16 00 00 00                               	je     0x1d2b7c4a7ae7
    1d2b7c4a7ad1:	47 8b 9c 18 34 01 00 00                         	mov    r11d,DWORD PTR [r8+r11*1+0x134]
    1d2b7c4a7ad9:	41 83 eb 01                                     	sub    r11d,0x1
    1d2b7c4a7add:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c4a7ae1:	0f 87 0b 00 00 00                               	ja     0x1d2b7c4a7af2
    1d2b7c4a7ae7:	41 b9 01 00 00 00                               	mov    r9d,0x1
    1d2b7c4a7aed:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4a7b00
    1d2b7c4a7af2:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4a7af5:	4d 8b cb                                        	mov    r9,r11
    1d2b7c4a7af8:	e9 03 00 00 00                                  	jmp    0x1d2b7c4a7b00
    1d2b7c4a7afd:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4a7b00:	4c 89 8d b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r9
    1d2b7c4a7b07:	44 8b 8d 38 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3c8]
    1d2b7c4a7b0e:	41 c1 e1 08                                     	shl    r9d,0x8
    1d2b7c4a7b12:	44 8b 9d e0 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x320]
    1d2b7c4a7b19:	41 c1 e3 08                                     	shl    r11d,0x8
    1d2b7c4a7b1d:	48 63 f0                                        	movsxd rsi,eax
    1d2b7c4a7b20:	48 89 75 a8                                     	mov    QWORD PTR [rbp-0x58],rsi
    1d2b7c4a7b24:	8b 75 90                                        	mov    esi,DWORD PTR [rbp-0x70]
    1d2b7c4a7b27:	2b f1                                           	sub    esi,ecx
    1d2b7c4a7b29:	49 63 c7                                        	movsxd rax,r15d
    1d2b7c4a7b2c:	48 89 45 c0                                     	mov    QWORD PTR [rbp-0x40],rax
    1d2b7c4a7b30:	8b c1                                           	mov    eax,ecx
    1d2b7c4a7b32:	2b c2                                           	sub    eax,edx
    1d2b7c4a7b34:	c4 c3 f9 16 cf 01                               	vpextrq r15,xmm1,0x1
    1d2b7c4a7b3a:	4c 89 bd 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],r15
    1d2b7c4a7b41:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    1d2b7c4a7b45:	43 8b 94 38 38 01 00 00                         	mov    edx,DWORD PTR [r8+r15*1+0x138]
    1d2b7c4a7b4d:	48 89 b5 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rsi
    1d2b7c4a7b54:	48 89 85 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rax
    1d2b7c4a7b5b:	4c 89 bd a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r15
    1d2b7c4a7b62:	43 83 bc 38 38 01 00 00 00                      	cmp    DWORD PTR [r8+r15*1+0x138],0x0
    1d2b7c4a7b6b:	0f 85 0e 00 00 00                               	jne    0x1d2b7c4a7b7f
    1d2b7c4a7b71:	33 d2                                           	xor    edx,edx
    1d2b7c4a7b73:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    1d2b7c4a7b7a:	e9 53 01 00 00                                  	jmp    0x1d2b7c4a7cd2
    1d2b7c4a7b7f:	41 8b 94 38 c8 3c 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3cc8]
    1d2b7c4a7b87:	41 83 bc 38 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3cc8],0x0
    1d2b7c4a7b90:	75 df                                           	jne    0x1d2b7c4a7b71
    1d2b7c4a7b92:	41 8b 94 38 ec 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0xec]
    1d2b7c4a7b9a:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    1d2b7c4a7ba3:	75 cc                                           	jne    0x1d2b7c4a7b71
    1d2b7c4a7ba5:	41 8b 54 38 14                                  	mov    edx,DWORD PTR [r8+rdi*1+0x14]
    1d2b7c4a7baa:	41 83 7c 38 14 00                               	cmp    DWORD PTR [r8+rdi*1+0x14],0x0
    1d2b7c4a7bb0:	0f 85 6c 00 00 00                               	jne    0x1d2b7c4a7c22
    1d2b7c4a7bb6:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    1d2b7c4a7bbe:	0b d3                                           	or     edx,ebx
    1d2b7c4a7bc0:	0f 85 5c 00 00 00                               	jne    0x1d2b7c4a7c22
    1d2b7c4a7bc6:	41 8b 94 38 30 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x530]
    1d2b7c4a7bce:	41 83 bc 38 30 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x530],0x0
    1d2b7c4a7bd7:	0f 85 45 00 00 00                               	jne    0x1d2b7c4a7c22
    1d2b7c4a7bdd:	41 8b 94 38 70 37 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3770]
    1d2b7c4a7be5:	41 83 bc 38 70 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3770],0x0
    1d2b7c4a7bee:	0f 85 2e 00 00 00                               	jne    0x1d2b7c4a7c22
    1d2b7c4a7bf4:	41 8b 94 38 74 37 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x3774]
    1d2b7c4a7bfc:	41 83 bc 38 74 37 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x3774],0x0
    1d2b7c4a7c05:	0f 85 17 00 00 00                               	jne    0x1d2b7c4a7c22
    1d2b7c4a7c0b:	41 8b 94 38 20 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x520]
    1d2b7c4a7c13:	41 83 bc 38 20 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x520],0x0
    1d2b7c4a7c1c:	0f 85 12 00 00 00                               	jne    0x1d2b7c4a7c34
    1d2b7c4a7c22:	33 d2                                           	xor    edx,edx
    1d2b7c4a7c24:	48 c7 85 30 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x3d0],0x1
    1d2b7c4a7c2f:	e9 9e 00 00 00                                  	jmp    0x1d2b7c4a7cd2
    1d2b7c4a7c34:	41 8b 94 38 24 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x524]
    1d2b7c4a7c3c:	41 83 bc 38 24 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x524],0x0
    1d2b7c4a7c45:	74 db                                           	je     0x1d2b7c4a7c22
    1d2b7c4a7c47:	41 8b 94 38 28 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x528]
    1d2b7c4a7c4f:	41 83 bc 38 28 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x528],0x0
    1d2b7c4a7c58:	74 c8                                           	je     0x1d2b7c4a7c22
    1d2b7c4a7c5a:	41 8b 94 38 2c 05 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x52c]
    1d2b7c4a7c62:	41 83 bc 38 2c 05 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x52c],0x0
    1d2b7c4a7c6b:	74 b5                                           	je     0x1d2b7c4a7c22
    1d2b7c4a7c6d:	41 8b 54 38 74                                  	mov    edx,DWORD PTR [r8+rdi*1+0x74]
    1d2b7c4a7c72:	41 83 7c 38 74 00                               	cmp    DWORD PTR [r8+rdi*1+0x74],0x0
    1d2b7c4a7c78:	0f 85 11 00 00 00                               	jne    0x1d2b7c4a7c8f
    1d2b7c4a7c7e:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c4a7c83:	48 89 95 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rdx
    1d2b7c4a7c8a:	e9 43 00 00 00                                  	jmp    0x1d2b7c4a7cd2
    1d2b7c4a7c8f:	41 8b 54 38 78                                  	mov    edx,DWORD PTR [r8+rdi*1+0x78]
    1d2b7c4a7c94:	81 fa 02 03 00 00                               	cmp    edx,0x302
    1d2b7c4a7c9a:	0f 84 09 00 00 00                               	je     0x1d2b7c4a7ca9
    1d2b7c4a7ca0:	83 fa 01                                        	cmp    edx,0x1
    1d2b7c4a7ca3:	0f 85 79 ff ff ff                               	jne    0x1d2b7c4a7c22
    1d2b7c4a7ca9:	41 8b 54 38 7c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x7c]
    1d2b7c4a7cae:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4a7cb1:	83 fa 01                                        	cmp    edx,0x1
    1d2b7c4a7cb4:	41 0f 94 c7                                     	sete   r15b
    1d2b7c4a7cb8:	81 fa 03 03 00 00                               	cmp    edx,0x303
    1d2b7c4a7cbe:	0f 94 c2                                        	sete   dl
    1d2b7c4a7cc1:	0f b6 d2                                        	movzx  edx,dl
    1d2b7c4a7cc4:	41 0b d7                                        	or     edx,r15d
    1d2b7c4a7cc7:	48 c7 85 30 fc ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x3d0],0x1
    1d2b7c4a7cd2:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    1d2b7c4a7cd9:	41 81 cb 80 00 00 00                            	or     r11d,0x80
    1d2b7c4a7ce0:	48 89 95 08 fd ff ff                            	mov    QWORD PTR [rbp-0x2f8],rdx
    1d2b7c4a7ce7:	48 63 d6                                        	movsxd rdx,esi
    1d2b7c4a7cea:	4c 63 f8                                        	movsxd r15,eax
    1d2b7c4a7ced:	4c 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],r15
    1d2b7c4a7cf1:	c4 c3 f9 16 cf 00                               	vpextrq r15,xmm1,0x0
    1d2b7c4a7cf7:	4c 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],r15
    1d2b7c4a7cfe:	4c 8b bd 88 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x178]
    1d2b7c4a7d05:	49 c1 e7 08                                     	shl    r15,0x8
    1d2b7c4a7d09:	4c 89 bd 00 fd ff ff                            	mov    QWORD PTR [rbp-0x300],r15
    1d2b7c4a7d10:	4c 8b 7d a8                                     	mov    r15,QWORD PTR [rbp-0x58]
    1d2b7c4a7d14:	49 c1 e7 08                                     	shl    r15,0x8
    1d2b7c4a7d18:	4c 89 bd 38 fd ff ff                            	mov    QWORD PTR [rbp-0x2c8],r15
    1d2b7c4a7d1f:	4c 8b 7d c0                                     	mov    r15,QWORD PTR [rbp-0x40]
    1d2b7c4a7d23:	49 c1 e7 08                                     	shl    r15,0x8
    1d2b7c4a7d27:	c4 c1 79 28 f6                                  	vmovapd xmm6,xmm14
    1d2b7c4a7d2c:	4c 89 bd 18 fd ff ff                            	mov    QWORD PTR [rbp-0x2e8],r15
    1d2b7c4a7d33:	c4 c1 79 7e f7                                  	vmovd  r15d,xmm6
    1d2b7c4a7d38:	48 89 95 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rdx
    1d2b7c4a7d3f:	c4 e3 79 16 f2 01                               	vpextrd edx,xmm6,0x1
    1d2b7c4a7d45:	c4 81 7a 10 74 20 18                            	vmovss xmm6,DWORD PTR [r8+r12*1+0x18]
    1d2b7c4a7d4c:	4c 8b a5 48 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1b8]
    1d2b7c4a7d53:	c4 81 7a 10 7c 20 18                            	vmovss xmm7,DWORD PTR [r8+r12*1+0x18]
    1d2b7c4a7d5a:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c4a7d5d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a7d61:	41 0f 97 c4                                     	seta   r12b
    1d2b7c4a7d65:	4c 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r15
    1d2b7c4a7d6c:	48 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rdx
    1d2b7c4a7d73:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    1d2b7c4a7d77:	0b d3                                           	or     edx,ebx
    1d2b7c4a7d79:	0f 85 11 00 00 00                               	jne    0x1d2b7c4a7d90
    1d2b7c4a7d7f:	41 8b 5c 38 68                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x68]
    1d2b7c4a7d84:	41 83 7c 38 68 00                               	cmp    DWORD PTR [r8+rdi*1+0x68],0x0
    1d2b7c4a7d8a:	0f 85 0a 00 00 00                               	jne    0x1d2b7c4a7d9a
    1d2b7c4a7d90:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4a7d95:	e9 17 00 00 00                                  	jmp    0x1d2b7c4a7db1
    1d2b7c4a7d9a:	41 8b 5c 38 6c                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x6c]
    1d2b7c4a7d9f:	81 eb 01 02 00 00                               	sub    ebx,0x201
    1d2b7c4a7da5:	f7 c3 fd ff ff ff                               	test   ebx,0xfffffffd
    1d2b7c4a7dab:	0f 95 c3                                        	setne  bl
    1d2b7c4a7dae:	0f b6 db                                        	movzx  ebx,bl
    1d2b7c4a7db1:	41 8b d1                                        	mov    edx,r9d
    1d2b7c4a7db4:	2b d1                                           	sub    edx,ecx
    1d2b7c4a7db6:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4a7db9:	2b 7d 88                                        	sub    edi,DWORD PTR [rbp-0x78]
    1d2b7c4a7dbc:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    1d2b7c4a7dc3:	41 8b f9                                        	mov    edi,r9d
    1d2b7c4a7dc6:	2b 7d 80                                        	sub    edi,DWORD PTR [rbp-0x80]
    1d2b7c4a7dc9:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    1d2b7c4a7dcd:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4a7dd0:	2b bd 20 ff ff ff                               	sub    edi,DWORD PTR [rbp-0xe0]
    1d2b7c4a7dd6:	44 2b 4d 90                                     	sub    r9d,DWORD PTR [rbp-0x70]
    1d2b7c4a7dda:	44 2b 9d 50 fe ff ff                            	sub    r11d,DWORD PTR [rbp-0x1b0]
    1d2b7c4a7de1:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    1d2b7c4a7de5:	4c 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],r11
    1d2b7c4a7de9:	45 85 e4                                        	test   r12d,r12d
    1d2b7c4a7dec:	0f 85 09 00 00 00                               	jne    0x1d2b7c4a7dfb
    1d2b7c4a7df2:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c4a7df6:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a7dff
    1d2b7c4a7dfb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    1d2b7c4a7dff:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    1d2b7c4a7e06:	c4 01 7a 10 4c 20 18                            	vmovss xmm9,DWORD PTR [r8+r12*1+0x18]
    1d2b7c4a7e0d:	44 8b 85 50 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x1b0]
    1d2b7c4a7e14:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c4a7e17:	44 3b 85 20 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xe0]
    1d2b7c4a7e1e:	41 0f 95 c4                                     	setne  r12b
    1d2b7c4a7e22:	4c 89 a5 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r12
    1d2b7c4a7e29:	44 8b 65 90                                     	mov    r12d,DWORD PTR [rbp-0x70]
    1d2b7c4a7e2d:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4a7e30:	44 3b 65 80                                     	cmp    r12d,DWORD PTR [rbp-0x80]
    1d2b7c4a7e34:	41 0f 9e c3                                     	setle  r11b
    1d2b7c4a7e38:	4c 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r11
    1d2b7c4a7e3f:	44 8b 5d 88                                     	mov    r11d,DWORD PTR [rbp-0x78]
    1d2b7c4a7e43:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4a7e46:	45 3b d8                                        	cmp    r11d,r8d
    1d2b7c4a7e49:	41 0f 95 c1                                     	setne  r9b
    1d2b7c4a7e4d:	41 3b cc                                        	cmp    ecx,r12d
    1d2b7c4a7e50:	41 0f 9e c4                                     	setle  r12b
    1d2b7c4a7e54:	45 0f b6 e4                                     	movzx  r12d,r12b
    1d2b7c4a7e58:	4c 89 65 90                                     	mov    QWORD PTR [rbp-0x70],r12
    1d2b7c4a7e5c:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c4a7e5f:	44 3b 9d 20 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0xe0]
    1d2b7c4a7e66:	41 0f 95 c4                                     	setne  r12b
    1d2b7c4a7e6a:	4c 89 a5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r12
    1d2b7c4a7e71:	44 8b 65 80                                     	mov    r12d,DWORD PTR [rbp-0x80]
    1d2b7c4a7e75:	44 3b e1                                        	cmp    r12d,ecx
    1d2b7c4a7e78:	41 0f 9e c4                                     	setle  r12b
    1d2b7c4a7e7c:	45 0f b6 e4                                     	movzx  r12d,r12b
    1d2b7c4a7e80:	48 8b 8d a0 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x160]
    1d2b7c4a7e87:	48 c1 e1 08                                     	shl    rcx,0x8
    1d2b7c4a7e8b:	48 89 8d e8 fc ff ff                            	mov    QWORD PTR [rbp-0x318],rcx
    1d2b7c4a7e92:	48 8b 8d 00 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x300]
    1d2b7c4a7e99:	48 f7 d9                                        	neg    rcx
    1d2b7c4a7e9c:	48 89 8d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rcx
    1d2b7c4a7ea3:	48 8b 8d 78 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x188]
    1d2b7c4a7eaa:	48 c1 e1 08                                     	shl    rcx,0x8
    1d2b7c4a7eae:	48 89 8d a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rcx
    1d2b7c4a7eb5:	48 8b 4d b8                                     	mov    rcx,QWORD PTR [rbp-0x48]
    1d2b7c4a7eb9:	48 c1 e1 08                                     	shl    rcx,0x8
    1d2b7c4a7ebd:	48 89 8d 30 fd ff ff                            	mov    QWORD PTR [rbp-0x2d0],rcx
    1d2b7c4a7ec4:	48 8b 8d 38 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2c8]
    1d2b7c4a7ecb:	48 f7 d9                                        	neg    rcx
    1d2b7c4a7ece:	48 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rcx
    1d2b7c4a7ed5:	48 8b 8d 18 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2e8]
    1d2b7c4a7edc:	48 f7 d9                                        	neg    rcx
    1d2b7c4a7edf:	48 89 8d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rcx
    1d2b7c4a7ee6:	33 c9                                           	xor    ecx,ecx
    1d2b7c4a7ee8:	85 f6                                           	test   esi,esi
    1d2b7c4a7eea:	0f 9c c1                                        	setl   cl
    1d2b7c4a7eed:	33 f6                                           	xor    esi,esi
    1d2b7c4a7eef:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    1d2b7c4a7ef6:	40 0f 9f c6                                     	setg   sil
    1d2b7c4a7efa:	48 89 75 80                                     	mov    QWORD PTR [rbp-0x80],rsi
    1d2b7c4a7efe:	33 f6                                           	xor    esi,esi
    1d2b7c4a7f00:	85 c0                                           	test   eax,eax
    1d2b7c4a7f02:	40 0f 9c c6                                     	setl   sil
    1d2b7c4a7f06:	33 c0                                           	xor    eax,eax
    1d2b7c4a7f08:	83 bd 68 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x98],0x0
    1d2b7c4a7f0f:	0f 9f c0                                        	setg   al
    1d2b7c4a7f12:	48 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rax
    1d2b7c4a7f19:	33 c0                                           	xor    eax,eax
    1d2b7c4a7f1b:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4a7f1e:	0f 9c c0                                        	setl   al
    1d2b7c4a7f21:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4a7f24:	83 bd 50 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xb0],0x0
    1d2b7c4a7f2b:	41 0f 9f c7                                     	setg   r15b
    1d2b7c4a7f2f:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    1d2b7c4a7f36:	c4 c1 79 7e f7                                  	vmovd  r15d,xmm6
    1d2b7c4a7f3b:	41 81 e7 ff ff ff 7f                            	and    r15d,0x7fffffff
    1d2b7c4a7f42:	41 81 ff ff ff 7f 7f                            	cmp    r15d,0x7f7fffff
    1d2b7c4a7f49:	0f 87 25 00 00 00                               	ja     0x1d2b7c4a7f74
    1d2b7c4a7f4f:	c5 f8 2e f4                                     	vucomiss xmm6,xmm4
    1d2b7c4a7f53:	0f 82 1b 00 00 00                               	jb     0x1d2b7c4a7f74
    1d2b7c4a7f59:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c4a7f5e:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c4a7f64:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c4a7f6a:	c5 78 2e d6                                     	vucomiss xmm10,xmm6
    1d2b7c4a7f6e:	0f 83 05 00 00 00                               	jae    0x1d2b7c4a7f79
    1d2b7c4a7f74:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4a7f79:	4c 63 fa                                        	movsxd r15,edx
    1d2b7c4a7f7c:	48 63 95 30 ff ff ff                            	movsxd rdx,DWORD PTR [rbp-0xd0]
    1d2b7c4a7f83:	48 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdx
    1d2b7c4a7f8a:	48 63 55 98                                     	movsxd rdx,DWORD PTR [rbp-0x68]
    1d2b7c4a7f8e:	48 63 ff                                        	movsxd rdi,edi
    1d2b7c4a7f91:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    1d2b7c4a7f95:	48 63 7d a0                                     	movsxd rdi,DWORD PTR [rbp-0x60]
    1d2b7c4a7f99:	48 89 7d a0                                     	mov    QWORD PTR [rbp-0x60],rdi
    1d2b7c4a7f9d:	48 63 7d b0                                     	movsxd rdi,DWORD PTR [rbp-0x50]
    1d2b7c4a7fa1:	48 89 7d b0                                     	mov    QWORD PTR [rbp-0x50],rdi
    1d2b7c4a7fa5:	33 ff                                           	xor    edi,edi
    1d2b7c4a7fa7:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    1d2b7c4a7fac:	40 0f 97 c7                                     	seta   dil
    1d2b7c4a7fb0:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    1d2b7c4a7fb7:	48 8b bd 00 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x100]
    1d2b7c4a7fbe:	0b bd f8 fd ff ff                               	or     edi,DWORD PTR [rbp-0x208]
    1d2b7c4a7fc4:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    1d2b7c4a7fcb:	33 ff                                           	xor    edi,edi
    1d2b7c4a7fcd:	44 3b 85 20 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xe0]
    1d2b7c4a7fd4:	40 0f 9e c7                                     	setle  dil
    1d2b7c4a7fd8:	48 89 bd f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],rdi
    1d2b7c4a7fdf:	48 8b 7d 90                                     	mov    rdi,QWORD PTR [rbp-0x70]
    1d2b7c4a7fe3:	41 0b f9                                        	or     edi,r9d
    1d2b7c4a7fe6:	45 3b d8                                        	cmp    r11d,r8d
    1d2b7c4a7fe9:	41 0f 9e c0                                     	setle  r8b
    1d2b7c4a7fed:	45 0f b6 c0                                     	movzx  r8d,r8b
    1d2b7c4a7ff1:	44 0b a5 38 ff ff ff                            	or     r12d,DWORD PTR [rbp-0xc8]
    1d2b7c4a7ff8:	44 8b 8d 20 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xe0]
    1d2b7c4a7fff:	45 3b cb                                        	cmp    r9d,r11d
    1d2b7c4a8002:	41 0f 9e c3                                     	setle  r11b
    1d2b7c4a8006:	45 0f b6 db                                     	movzx  r11d,r11b
    1d2b7c4a800a:	4c 8b 95 70 fe ff ff                            	mov    r10,QWORD PTR [rbp-0x190]
    1d2b7c4a8011:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4a8016:	4d 85 d2                                        	test   r10,r10
    1d2b7c4a8019:	79 12                                           	jns    0x1d2b7c4a802d
    1d2b7c4a801b:	49 d1 ea                                        	shr    r10,1
    1d2b7c4a801e:	73 04                                           	jae    0x1d2b7c4a8024
    1d2b7c4a8020:	49 83 ca 01                                     	or     r10,0x1
    1d2b7c4a8024:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4a8029:	c5 ca 58 f6                                     	vaddss xmm6,xmm6,xmm6
    1d2b7c4a802d:	4c 89 9d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r11
    1d2b7c4a8034:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4a8037:	85 c9                                           	test   ecx,ecx
    1d2b7c4a8039:	4c 0f 45 9d a0 fd ff ff                         	cmovne r11,QWORD PTR [rbp-0x260]
    1d2b7c4a8041:	33 c9                                           	xor    ecx,ecx
    1d2b7c4a8043:	83 7d 80 00                                     	cmp    DWORD PTR [rbp-0x80],0x0
    1d2b7c4a8047:	48 0f 45 8d 78 ff ff ff                         	cmovne rcx,QWORD PTR [rbp-0x88]
    1d2b7c4a804f:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4a8052:	48 89 8d e0 fd ff ff                            	mov    QWORD PTR [rbp-0x220],rcx
    1d2b7c4a8059:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    1d2b7c4a8060:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
    1d2b7c4a8067:	49 0f 4c c9                                     	cmovl  rcx,r9
    1d2b7c4a806b:	48 89 8d 70 fe ff ff                            	mov    QWORD PTR [rbp-0x190],rcx
    1d2b7c4a8072:	48 8b 8d 78 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x88]
    1d2b7c4a8079:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    1d2b7c4a8080:	49 0f 4f c9                                     	cmovg  rcx,r9
    1d2b7c4a8084:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    1d2b7c4a808b:	49 8b c9                                        	mov    rcx,r9
    1d2b7c4a808e:	85 f6                                           	test   esi,esi
    1d2b7c4a8090:	48 0f 45 8d 30 fd ff ff                         	cmovne rcx,QWORD PTR [rbp-0x2d0]
    1d2b7c4a8098:	49 8b f1                                        	mov    rsi,r9
    1d2b7c4a809b:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4a80a2:	48 0f 45 b5 08 ff ff ff                         	cmovne rsi,QWORD PTR [rbp-0xf8]
    1d2b7c4a80aa:	48 89 8d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rcx
    1d2b7c4a80b1:	48 8b 8d 30 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x2d0]
    1d2b7c4a80b8:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    1d2b7c4a80bf:	49 0f 4c c9                                     	cmovl  rcx,r9
    1d2b7c4a80c3:	48 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rcx
    1d2b7c4a80ca:	48 8b 8d 08 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xf8]
    1d2b7c4a80d1:	83 bd 68 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x98],0x0
    1d2b7c4a80d8:	49 0f 4f c9                                     	cmovg  rcx,r9
    1d2b7c4a80dc:	48 89 8d 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rcx
    1d2b7c4a80e3:	49 8b c9                                        	mov    rcx,r9
    1d2b7c4a80e6:	85 c0                                           	test   eax,eax
    1d2b7c4a80e8:	48 0f 45 8d e8 fc ff ff                         	cmovne rcx,QWORD PTR [rbp-0x318]
    1d2b7c4a80f0:	49 8b c1                                        	mov    rax,r9
    1d2b7c4a80f3:	83 bd 28 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd8],0x0
    1d2b7c4a80fa:	48 0f 45 85 58 ff ff ff                         	cmovne rax,QWORD PTR [rbp-0xa8]
    1d2b7c4a8102:	48 89 4d 80                                     	mov    QWORD PTR [rbp-0x80],rcx
    1d2b7c4a8106:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    1d2b7c4a810d:	83 bd 60 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xa0],0x0
    1d2b7c4a8114:	49 0f 4c c9                                     	cmovl  rcx,r9
    1d2b7c4a8118:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    1d2b7c4a811c:	48 8b 8d 58 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xa8]
    1d2b7c4a8123:	83 bd 50 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xb0],0x0
    1d2b7c4a812a:	49 0f 4f c9                                     	cmovg  rcx,r9
    1d2b7c4a812e:	c4 c1 79 7e f9                                  	vmovd  r9d,xmm7
    1d2b7c4a8133:	41 81 e1 ff ff ff 7f                            	and    r9d,0x7fffffff
    1d2b7c4a813a:	41 81 f9 ff ff 7f 7f                            	cmp    r9d,0x7f7fffff
    1d2b7c4a8141:	0f 87 25 00 00 00                               	ja     0x1d2b7c4a816c
    1d2b7c4a8147:	c5 f8 2e fc                                     	vucomiss xmm7,xmm4
    1d2b7c4a814b:	0f 82 1b 00 00 00                               	jb     0x1d2b7c4a816c
    1d2b7c4a8151:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    1d2b7c4a8156:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    1d2b7c4a815c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    1d2b7c4a8162:	c5 78 2e d7                                     	vucomiss xmm10,xmm7
    1d2b7c4a8166:	0f 83 05 00 00 00                               	jae    0x1d2b7c4a8171
    1d2b7c4a816c:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4a8171:	4c 0f af 7d a8                                  	imul   r15,QWORD PTR [rbp-0x58]
    1d2b7c4a8176:	4c 8b 8d 68 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x198]
    1d2b7c4a817d:	4c 0f af 8d 78 fe ff ff                         	imul   r9,QWORD PTR [rbp-0x188]
    1d2b7c4a8185:	48 0f af 55 c0                                  	imul   rdx,QWORD PTR [rbp-0x40]
    1d2b7c4a818a:	48 89 55 90                                     	mov    QWORD PTR [rbp-0x70],rdx
    1d2b7c4a818e:	48 8b 55 98                                     	mov    rdx,QWORD PTR [rbp-0x68]
    1d2b7c4a8192:	48 0f af 55 b8                                  	imul   rdx,QWORD PTR [rbp-0x48]
    1d2b7c4a8197:	48 89 55 98                                     	mov    QWORD PTR [rbp-0x68],rdx
    1d2b7c4a819b:	48 8b 55 a0                                     	mov    rdx,QWORD PTR [rbp-0x60]
    1d2b7c4a819f:	48 0f af 95 88 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x178]
    1d2b7c4a81a7:	48 89 55 a0                                     	mov    QWORD PTR [rbp-0x60],rdx
    1d2b7c4a81ab:	48 8b 55 b0                                     	mov    rdx,QWORD PTR [rbp-0x50]
    1d2b7c4a81af:	48 0f af 95 a0 fe ff ff                         	imul   rdx,QWORD PTR [rbp-0x160]
    1d2b7c4a81b7:	48 89 55 b0                                     	mov    QWORD PTR [rbp-0x50],rdx
    1d2b7c4a81bb:	83 bd 30 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xd0],0x0
    1d2b7c4a81c2:	0f 85 0a 00 00 00                               	jne    0x1d2b7c4a81d2
    1d2b7c4a81c8:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4a81cd:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a81d7
    1d2b7c4a81d2:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4a81d7:	48 8b 95 f8 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x208]
    1d2b7c4a81de:	23 95 00 ff ff ff                               	and    edx,DWORD PTR [rbp-0x100]
    1d2b7c4a81e4:	41 23 f8                                        	and    edi,r8d
    1d2b7c4a81e7:	44 23 a5 20 ff ff ff                            	and    r12d,DWORD PTR [rbp-0xe0]
    1d2b7c4a81ee:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4a81f3:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4a81f9:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4a81ff:	c5 ba 5e f6                                     	vdivss xmm6,xmm8,xmm6
    1d2b7c4a8203:	c5 f8 28 f6                                     	vmovaps xmm6,xmm6
    1d2b7c4a8207:	4c 8b 85 e0 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x220]
    1d2b7c4a820e:	4d 03 c3                                        	add    r8,r11
    1d2b7c4a8211:	48 89 bd 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],rdi
    1d2b7c4a8218:	48 8b bd 70 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x190]
    1d2b7c4a821f:	4c 8b 9d 50 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b0]
    1d2b7c4a8226:	49 03 fb                                        	add    rdi,r11
    1d2b7c4a8229:	4c 8b 9d 80 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x180]
    1d2b7c4a8230:	4c 03 de                                        	add    r11,rsi
    1d2b7c4a8233:	4c 89 a5 18 fc ff ff                            	mov    QWORD PTR [rbp-0x3e8],r12
    1d2b7c4a823a:	4c 8b a5 70 ff ff ff                            	mov    r12,QWORD PTR [rbp-0x90]
    1d2b7c4a8241:	48 8b b5 78 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0x88]
    1d2b7c4a8248:	4c 03 e6                                        	add    r12,rsi
    1d2b7c4a824b:	48 8b 75 80                                     	mov    rsi,QWORD PTR [rbp-0x80]
    1d2b7c4a824f:	48 03 c6                                        	add    rax,rsi
    1d2b7c4a8252:	48 8b 75 88                                     	mov    rsi,QWORD PTR [rbp-0x78]
    1d2b7c4a8256:	48 03 ce                                        	add    rcx,rsi
    1d2b7c4a8259:	48 89 95 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],rdx
    1d2b7c4a8260:	48 8b 95 58 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1a8]
    1d2b7c4a8267:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    1d2b7c4a826b:	c5 7a 10 54 16 1c                               	vmovss xmm10,DWORD PTR [rsi+rdx*1+0x1c]
    1d2b7c4a8271:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    1d2b7c4a8278:	c5 7a 10 64 16 1c                               	vmovss xmm12,DWORD PTR [rsi+rdx*1+0x1c]
    1d2b7c4a827e:	48 8b 95 40 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1c0]
    1d2b7c4a8285:	c5 7a 10 6c 16 1c                               	vmovss xmm13,DWORD PTR [rsi+rdx*1+0x1c]
    1d2b7c4a828b:	c5 79 7e ce                                     	vmovd  esi,xmm9
    1d2b7c4a828f:	81 e6 ff ff ff 7f                               	and    esi,0x7fffffff
    1d2b7c4a8295:	c5 fb 11 b5 58 fc ff ff                         	vmovsd QWORD PTR [rbp-0x3a8],xmm6
    1d2b7c4a829d:	c5 7b 11 95 c0 fc ff ff                         	vmovsd QWORD PTR [rbp-0x340],xmm10
    1d2b7c4a82a5:	c5 7b 11 a5 90 fc ff ff                         	vmovsd QWORD PTR [rbp-0x370],xmm12
    1d2b7c4a82ad:	c5 7b 11 ad 70 fe ff ff                         	vmovsd QWORD PTR [rbp-0x190],xmm13
    1d2b7c4a82b5:	81 fe ff ff 7f 7f                               	cmp    esi,0x7f7fffff
    1d2b7c4a82bb:	0f 87 15 00 00 00                               	ja     0x1d2b7c4a82d6
    1d2b7c4a82c1:	c5 78 2e cc                                     	vucomiss xmm9,xmm4
    1d2b7c4a82c5:	0f 82 0b 00 00 00                               	jb     0x1d2b7c4a82d6
    1d2b7c4a82cb:	c4 41 78 2e c1                                  	vucomiss xmm8,xmm9
    1d2b7c4a82d0:	0f 83 05 00 00 00                               	jae    0x1d2b7c4a82db
    1d2b7c4a82d6:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4a82db:	4d 2b cf                                        	sub    r9,r15
    1d2b7c4a82de:	4c 8b 7d 98                                     	mov    r15,QWORD PTR [rbp-0x68]
    1d2b7c4a82e2:	4c 2b 7d 90                                     	sub    r15,QWORD PTR [rbp-0x70]
    1d2b7c4a82e6:	48 8b 75 b0                                     	mov    rsi,QWORD PTR [rbp-0x50]
    1d2b7c4a82ea:	48 2b 75 a0                                     	sub    rsi,QWORD PTR [rbp-0x60]
    1d2b7c4a82ee:	41 ba bd 37 06 b6                               	mov    r10d,0xb60637bd
    1d2b7c4a82f4:	c4 41 79 6e ca                                  	vmovd  xmm9,r10d
    1d2b7c4a82f9:	c4 c1 42 58 f9                                  	vaddss xmm7,xmm7,xmm9
    1d2b7c4a82fe:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    1d2b7c4a8305:	4c 89 bd 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r15
    1d2b7c4a830c:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    1d2b7c4a8310:	41 8d 9f dc 36 00 00                            	lea    ebx,[r15+0x36dc]
    1d2b7c4a8317:	48 89 9d a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rbx
    1d2b7c4a831e:	41 8d 9f 68 36 00 00                            	lea    ebx,[r15+0x3668]
    1d2b7c4a8325:	48 89 9d 10 fc ff ff                            	mov    QWORD PTR [rbp-0x3f0],rbx
    1d2b7c4a832c:	41 8d 9f f4 35 00 00                            	lea    ebx,[r15+0x35f4]
    1d2b7c4a8333:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    1d2b7c4a833a:	48 8b 9d a0 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x160]
    1d2b7c4a8341:	48 c1 e3 09                                     	shl    rbx,0x9
    1d2b7c4a8345:	48 8b 95 78 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x188]
    1d2b7c4a834c:	48 c1 e2 09                                     	shl    rdx,0x9
    1d2b7c4a8350:	48 89 5d a0                                     	mov    QWORD PTR [rbp-0x60],rbx
    1d2b7c4a8354:	48 8b 5d b8                                     	mov    rbx,QWORD PTR [rbp-0x48]
    1d2b7c4a8358:	48 c1 e3 09                                     	shl    rbx,0x9
    1d2b7c4a835c:	48 89 5d b8                                     	mov    QWORD PTR [rbp-0x48],rbx
    1d2b7c4a8360:	48 8b 9d 88 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x178]
    1d2b7c4a8367:	48 c1 e3 09                                     	shl    rbx,0x9
    1d2b7c4a836b:	48 89 b5 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rsi
    1d2b7c4a8372:	48 8b 75 a8                                     	mov    rsi,QWORD PTR [rbp-0x58]
    1d2b7c4a8376:	48 c1 e6 09                                     	shl    rsi,0x9
    1d2b7c4a837a:	48 89 9d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rbx
    1d2b7c4a8381:	48 8b 5d c0                                     	mov    rbx,QWORD PTR [rbp-0x40]
    1d2b7c4a8385:	48 c1 e3 09                                     	shl    rbx,0x9
    1d2b7c4a8389:	48 89 5d 80                                     	mov    QWORD PTR [rbp-0x80],rbx
    1d2b7c4a838d:	48 8b 9d a0 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x260]
    1d2b7c4a8394:	48 2b 9d 38 fd ff ff                            	sub    rbx,QWORD PTR [rbp-0x2c8]
    1d2b7c4a839b:	48 89 9d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rbx
    1d2b7c4a83a2:	48 8b 9d 30 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2d0]
    1d2b7c4a83a9:	48 2b 9d 18 fd ff ff                            	sub    rbx,QWORD PTR [rbp-0x2e8]
    1d2b7c4a83b0:	48 89 9d 78 fe ff ff                            	mov    QWORD PTR [rbp-0x188],rbx
    1d2b7c4a83b7:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    1d2b7c4a83bd:	48 89 55 b0                                     	mov    QWORD PTR [rbp-0x50],rdx
    1d2b7c4a83c1:	8d 53 50                                        	lea    edx,[rbx+0x50]
    1d2b7c4a83c4:	8b 9d e8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x218]
    1d2b7c4a83ca:	48 89 95 00 fc ff ff                            	mov    QWORD PTR [rbp-0x400],rdx
    1d2b7c4a83d1:	8d 53 50                                        	lea    edx,[rbx+0x50]
    1d2b7c4a83d4:	8b 9d d0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x330]
    1d2b7c4a83da:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    1d2b7c4a83e1:	8d 53 50                                        	lea    edx,[rbx+0x50]
    1d2b7c4a83e4:	41 8d 9f 80 35 00 00                            	lea    ebx,[r15+0x3580]
    1d2b7c4a83eb:	48 89 9d b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],rbx
    1d2b7c4a83f2:	41 8d 9f cc 3c 00 00                            	lea    ebx,[r15+0x3ccc]
    1d2b7c4a83f9:	48 f7 d0                                        	not    rax
    1d2b7c4a83fc:	49 f7 d0                                        	not    r8
    1d2b7c4a83ff:	49 f7 d3                                        	not    r11
    1d2b7c4a8402:	48 f7 d9                                        	neg    rcx
    1d2b7c4a8405:	48 f7 df                                        	neg    rdi
    1d2b7c4a8408:	49 f7 dc                                        	neg    r12
    1d2b7c4a840b:	44 8b 7d e0                                     	mov    r15d,DWORD PTR [rbp-0x20]
    1d2b7c4a840f:	48 89 85 d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],rax
    1d2b7c4a8416:	41 8d 47 30                                     	lea    eax,[r15+0x30]
    1d2b7c4a841a:	4c 89 85 f8 fd ff ff                            	mov    QWORD PTR [rbp-0x208],r8
    1d2b7c4a8421:	45 8d 47 20                                     	lea    r8d,[r15+0x20]
    1d2b7c4a8425:	4c 89 9d 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],r11
    1d2b7c4a842c:	45 8d 5f 10                                     	lea    r11d,[r15+0x10]
    1d2b7c4a8430:	c4 41 79 7e df                                  	vmovd  r15d,xmm11
    1d2b7c4a8435:	48 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],rcx
    1d2b7c4a843c:	c4 63 79 16 d9 01                               	vpextrd ecx,xmm11,0x1
    1d2b7c4a8442:	c4 62 79 18 c8                                  	vbroadcastss xmm9,xmm0
    1d2b7c4a8447:	c4 42 79 18 da                                  	vbroadcastss xmm11,xmm10
    1d2b7c4a844c:	c4 42 79 18 f4                                  	vbroadcastss xmm14,xmm12
    1d2b7c4a8451:	c4 c2 79 18 cd                                  	vbroadcastss xmm1,xmm13
    1d2b7c4a8456:	c4 e2 79 18 d6                                  	vbroadcastss xmm2,xmm6
    1d2b7c4a845b:	c5 fb 11 bd e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm7
    1d2b7c4a8463:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    1d2b7c4a846a:	48 89 95 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],rdx
    1d2b7c4a8471:	48 89 9d 88 fe ff ff                            	mov    QWORD PTR [rbp-0x178],rbx
    1d2b7c4a8478:	48 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],rdi
    1d2b7c4a847f:	4c 89 a5 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r12
    1d2b7c4a8486:	48 89 85 10 fd ff ff                            	mov    QWORD PTR [rbp-0x2f0],rax
    1d2b7c4a848d:	4c 89 85 f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r8
    1d2b7c4a8494:	4c 89 9d f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r11
    1d2b7c4a849b:	4c 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],r15
    1d2b7c4a849f:	48 89 4d c0                                     	mov    QWORD PTR [rbp-0x40],rcx
    1d2b7c4a84a3:	c5 78 11 8d 70 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x290],xmm9
    1d2b7c4a84ab:	c5 78 11 9d 60 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2a0],xmm11
    1d2b7c4a84b3:	c5 78 11 b5 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm14
    1d2b7c4a84bb:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    1d2b7c4a84c3:	c5 f8 11 95 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm2
    1d2b7c4a84cb:	33 c0                                           	xor    eax,eax
    1d2b7c4a84cd:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    1d2b7c4a84d4:	e9 3e 00 00 00                                  	jmp    0x1d2b7c4a8517
    1d2b7c4a84d9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4a84e2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4a84eb:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4a84f4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4a84fd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    1d2b7c4a8500:	4c 89 9d 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r11
    1d2b7c4a8507:	4c 89 bd 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r15
    1d2b7c4a850e:	44 8b f8                                        	mov    r15d,eax
    1d2b7c4a8511:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    1d2b7c4a8517:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    1d2b7c4a851b:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    1d2b7c4a8521:	48 8b 8d d8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x328]
    1d2b7c4a8528:	4c 89 bd e0 fc ff ff                            	mov    QWORD PTR [rbp-0x320],r15
    1d2b7c4a852f:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c4a8534:	0f 85 e1 86 00 00                               	jne    0x1d2b7c4b0c1b
    1d2b7c4a853a:	45 8d 47 01                                     	lea    r8d,[r15+0x1]
    1d2b7c4a853e:	41 bb 0f 00 00 00                               	mov    r11d,0xf
    1d2b7c4a8544:	41 b9 03 00 00 00                               	mov    r9d,0x3
    1d2b7c4a854a:	44 3b 45 c0                                     	cmp    r8d,DWORD PTR [rbp-0x40]
    1d2b7c4a854e:	45 0f 4c cb                                     	cmovl  r9d,r11d
    1d2b7c4a8552:	42 8d 14 bd 00 00 00 00                         	lea    edx,[r15*4+0x0]
    1d2b7c4a855a:	83 e2 7c                                        	and    edx,0x7c
    1d2b7c4a855d:	46 8d 3c 85 00 00 00 00                         	lea    r15d,[r8*4+0x0]
    1d2b7c4a8565:	41 83 e7 7c                                     	and    r15d,0x7c
    1d2b7c4a8569:	4c 89 85 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r8
    1d2b7c4a8570:	4c 89 8d a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r9
    1d2b7c4a8577:	48 89 95 68 fe ff ff                            	mov    QWORD PTR [rbp-0x198],rdx
    1d2b7c4a857e:	4c 89 bd 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],r15
    1d2b7c4a8585:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
    1d2b7c4a858c:	48 8b 85 08 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xf8]
    1d2b7c4a8593:	4c 8b 4d a8                                     	mov    r9,QWORD PTR [rbp-0x58]
    1d2b7c4a8597:	4d 8b fb                                        	mov    r15,r11
    1d2b7c4a859a:	4c 8b 9d 40 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x3c0]
    1d2b7c4a85a1:	44 8b 85 38 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3c8]
    1d2b7c4a85a8:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    1d2b7c4a85af:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    1d2b7c4a85b6:	48 8b d1                                        	mov    rdx,rcx
    1d2b7c4a85b9:	e9 0f 00 00 00                                  	jmp    0x1d2b7c4a85cd
    1d2b7c4a85be:	66 90                                           	xchg   ax,ax
    1d2b7c4a85c0:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    1d2b7c4a85c6:	48 8b 95 d8 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x328]
    1d2b7c4a85cd:	48 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rax
    1d2b7c4a85d4:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c4a85d9:	0f 85 ab 86 00 00                               	jne    0x1d2b7c4b0c8a
    1d2b7c4a85df:	49 8b db                                        	mov    rbx,r11
    1d2b7c4a85e2:	48 2b 9d 18 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x3e8]
    1d2b7c4a85e9:	48 3b 9d 28 fc ff ff                            	cmp    rbx,QWORD PTR [rbp-0x3d8]
    1d2b7c4a85f0:	0f 8c b2 84 00 00                               	jl     0x1d2b7c4b0aa8
    1d2b7c4a85f6:	49 8b c9                                        	mov    rcx,r9
    1d2b7c4a85f9:	48 2b 8d 88 fc ff ff                            	sub    rcx,QWORD PTR [rbp-0x378]
    1d2b7c4a8600:	48 3b 8d 98 fc ff ff                            	cmp    rcx,QWORD PTR [rbp-0x368]
    1d2b7c4a8607:	0f 8c 9b 84 00 00                               	jl     0x1d2b7c4b0aa8
    1d2b7c4a860d:	48 2b 85 c8 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x338]
    1d2b7c4a8614:	48 3b 85 50 fc ff ff                            	cmp    rax,QWORD PTR [rbp-0x3b0]
    1d2b7c4a861b:	0f 8c 87 84 00 00                               	jl     0x1d2b7c4b0aa8
    1d2b7c4a8621:	41 8d 78 01                                     	lea    edi,[r8+0x1]
    1d2b7c4a8625:	41 bc 05 00 00 00                               	mov    r12d,0x5
    1d2b7c4a862b:	3b 7d 98                                        	cmp    edi,DWORD PTR [rbp-0x68]
    1d2b7c4a862e:	45 0f 4c e7                                     	cmovl  r12d,r15d
    1d2b7c4a8632:	44 8b bd a8 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x358]
    1d2b7c4a8639:	45 23 fc                                        	and    r15d,r12d
    1d2b7c4a863c:	48 3b 9d 20 fc ff ff                            	cmp    rbx,QWORD PTR [rbp-0x3e0]
    1d2b7c4a8643:	0f 8e 29 00 00 00                               	jle    0x1d2b7c4a8672
    1d2b7c4a8649:	48 3b 8d f8 fd ff ff                            	cmp    rcx,QWORD PTR [rbp-0x208]
    1d2b7c4a8650:	0f 8e 1c 00 00 00                               	jle    0x1d2b7c4a8672
    1d2b7c4a8656:	48 3b d0                                        	cmp    rdx,rax
    1d2b7c4a8659:	0f 8d 13 00 00 00                               	jge    0x1d2b7c4a8672
    1d2b7c4a865f:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    1d2b7c4a8666:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    1d2b7c4a866d:	e9 cd 01 00 00                                  	jmp    0x1d2b7c4a883f
    1d2b7c4a8672:	c4 e1 f9 6e d9                                  	vmovq  xmm3,rcx
    1d2b7c4a8677:	c5 fb 12 db                                     	vmovddup xmm3,xmm3
    1d2b7c4a867b:	4c 8b e1                                        	mov    r12,rcx
    1d2b7c4a867e:	4c 2b a5 38 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2c8]
    1d2b7c4a8685:	c4 c3 e1 22 dc 01                               	vpinsrq xmm3,xmm3,r12,0x1
    1d2b7c4a868b:	c5 d1 76 ed                                     	vpcmpeqd xmm5,xmm5,xmm5
    1d2b7c4a868f:	c5 d1 73 f5 1f                                  	vpsllq xmm5,xmm5,0x1f
    1d2b7c4a8694:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c4a8698:	c4 e2 61 37 fd                                  	vpcmpgtq xmm7,xmm3,xmm5
    1d2b7c4a869d:	c5 41 df fd                                     	vpandn xmm15,xmm7,xmm5
    1d2b7c4a86a1:	c5 e1 db ff                                     	vpand  xmm7,xmm3,xmm7
    1d2b7c4a86a5:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4a86aa:	c5 e1 76 db                                     	vpcmpeqd xmm3,xmm3,xmm3
    1d2b7c4a86ae:	c5 e1 73 d3 21                                  	vpsrlq xmm3,xmm3,0x21
    1d2b7c4a86b3:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c4a86b7:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    1d2b7c4a86bc:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    1d2b7c4a86c0:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    1d2b7c4a86c5:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4a86ca:	48 03 ce                                        	add    rcx,rsi
    1d2b7c4a86cd:	c4 61 f9 6e c9                                  	vmovq  xmm9,rcx
    1d2b7c4a86d2:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    1d2b7c4a86d7:	4c 03 e6                                        	add    r12,rsi
    1d2b7c4a86da:	c4 43 b1 22 cc 01                               	vpinsrq xmm9,xmm9,r12,0x1
    1d2b7c4a86e0:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    1d2b7c4a86e5:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    1d2b7c4a86e9:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    1d2b7c4a86ee:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c4a86f3:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    1d2b7c4a86f8:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    1d2b7c4a86fc:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    1d2b7c4a8701:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c4a8706:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    1d2b7c4a870c:	c5 78 50 e7                                     	vmovmskps r12d,xmm7
    1d2b7c4a8710:	c4 e1 f9 6e fb                                  	vmovq  xmm7,rbx
    1d2b7c4a8715:	c5 fb 12 ff                                     	vmovddup xmm7,xmm7
    1d2b7c4a8719:	48 8b cb                                        	mov    rcx,rbx
    1d2b7c4a871c:	48 2b 8d 18 fd ff ff                            	sub    rcx,QWORD PTR [rbp-0x2e8]
    1d2b7c4a8723:	c4 e3 c1 22 f9 01                               	vpinsrq xmm7,xmm7,rcx,0x1
    1d2b7c4a8729:	c4 62 41 37 cd                                  	vpcmpgtq xmm9,xmm7,xmm5
    1d2b7c4a872e:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    1d2b7c4a8732:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    1d2b7c4a8737:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4a873c:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    1d2b7c4a8741:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    1d2b7c4a8745:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    1d2b7c4a874a:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4a874f:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    1d2b7c4a8756:	48 03 da                                        	add    rbx,rdx
    1d2b7c4a8759:	c4 61 f9 6e cb                                  	vmovq  xmm9,rbx
    1d2b7c4a875e:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    1d2b7c4a8763:	48 8d 1c 0a                                     	lea    rbx,[rdx+rcx*1]
    1d2b7c4a8767:	c4 63 b1 22 cb 01                               	vpinsrq xmm9,xmm9,rbx,0x1
    1d2b7c4a876d:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    1d2b7c4a8772:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    1d2b7c4a8776:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    1d2b7c4a877b:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c4a8780:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    1d2b7c4a8785:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    1d2b7c4a8789:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    1d2b7c4a878e:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c4a8793:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    1d2b7c4a8799:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
    1d2b7c4a879d:	41 0b dc                                        	or     ebx,r12d
    1d2b7c4a87a0:	c4 e1 f9 6e f8                                  	vmovq  xmm7,rax
    1d2b7c4a87a5:	c5 fb 12 ff                                     	vmovddup xmm7,xmm7
    1d2b7c4a87a9:	4c 8b e0                                        	mov    r12,rax
    1d2b7c4a87ac:	4c 2b a5 00 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x300]
    1d2b7c4a87b3:	c4 c3 c1 22 fc 01                               	vpinsrq xmm7,xmm7,r12,0x1
    1d2b7c4a87b9:	c4 62 41 37 cd                                  	vpcmpgtq xmm9,xmm7,xmm5
    1d2b7c4a87be:	c5 31 df fd                                     	vpandn xmm15,xmm9,xmm5
    1d2b7c4a87c2:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    1d2b7c4a87c7:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4a87cc:	c4 62 61 37 cf                                  	vpcmpgtq xmm9,xmm3,xmm7
    1d2b7c4a87d1:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    1d2b7c4a87d5:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    1d2b7c4a87da:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4a87df:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    1d2b7c4a87e6:	48 03 c1                                        	add    rax,rcx
    1d2b7c4a87e9:	c4 61 f9 6e c8                                  	vmovq  xmm9,rax
    1d2b7c4a87ee:	c4 41 7b 12 c9                                  	vmovddup xmm9,xmm9
    1d2b7c4a87f3:	4c 03 e1                                        	add    r12,rcx
    1d2b7c4a87f6:	c4 43 b1 22 cc 01                               	vpinsrq xmm9,xmm9,r12,0x1
    1d2b7c4a87fc:	c4 62 31 37 dd                                  	vpcmpgtq xmm11,xmm9,xmm5
    1d2b7c4a8801:	c5 21 df fd                                     	vpandn xmm15,xmm11,xmm5
    1d2b7c4a8805:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    1d2b7c4a880a:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c4a880f:	c4 42 61 37 d9                                  	vpcmpgtq xmm11,xmm3,xmm9
    1d2b7c4a8814:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    1d2b7c4a8818:	c4 41 31 db cb                                  	vpand  xmm9,xmm9,xmm11
    1d2b7c4a881d:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c4a8822:	c4 c1 40 c6 f9 88                               	vshufps xmm7,xmm7,xmm9,0x88
    1d2b7c4a8828:	c5 78 50 e7                                     	vmovmskps r12d,xmm7
    1d2b7c4a882c:	44 0b e3                                        	or     r12d,ebx
    1d2b7c4a882f:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    1d2b7c4a8833:	45 23 e7                                        	and    r12d,r15d
    1d2b7c4a8836:	0f 84 6c 82 00 00                               	je     0x1d2b7c4b0aa8
    1d2b7c4a883c:	4d 8b fc                                        	mov    r15,r12
    1d2b7c4a883f:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c4a8842:	3b 7d 10                                        	cmp    edi,DWORD PTR [rbp+0x10]
    1d2b7c4a8845:	41 0f 9c c4                                     	setl   r12b
    1d2b7c4a8849:	4c 89 5d 88                                     	mov    QWORD PTR [rbp-0x78],r11
    1d2b7c4a884d:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    1d2b7c4a8854:	48 89 bd 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rdi
    1d2b7c4a885b:	4c 89 bd b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r15
    1d2b7c4a8862:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    1d2b7c4a8868:	41 85 c4                                        	test   r12d,eax
    1d2b7c4a886b:	0f 85 a1 65 00 00                               	jne    0x1d2b7c4aee12
    1d2b7c4a8871:	83 bd 30 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x3d0],0x0
    1d2b7c4a8878:	0f 85 80 2a 00 00                               	jne    0x1d2b7c4ab2fe
    1d2b7c4a887e:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    1d2b7c4a8882:	41 f6 c7 01                                     	test   r15b,0x1
    1d2b7c4a8886:	0f 85 22 00 00 00                               	jne    0x1d2b7c4a88ae
    1d2b7c4a888c:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4a8890:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    1d2b7c4a8894:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    1d2b7c4a889b:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    1d2b7c4a88a2:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4a88a9:	e9 67 0a 00 00                                  	jmp    0x1d2b7c4a9315
    1d2b7c4a88ae:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4a88b2:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    1d2b7c4a88b6:	41 8b bc 1c c8 3c 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x3cc8]
    1d2b7c4a88be:	41 83 bc 1c c8 3c 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x3cc8],0x0
    1d2b7c4a88c7:	0f 85 0c 00 00 00                               	jne    0x1d2b7c4a88d9
    1d2b7c4a88cd:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    1d2b7c4a88d4:	e9 4e 00 00 00                                  	jmp    0x1d2b7c4a8927
    1d2b7c4a88d9:	41 8b f8                                        	mov    edi,r8d
    1d2b7c4a88dc:	c1 ef 03                                        	shr    edi,0x3
    1d2b7c4a88df:	83 e7 03                                        	and    edi,0x3
    1d2b7c4a88e2:	0b bd 68 fe ff ff                               	or     edi,DWORD PTR [rbp-0x198]
    1d2b7c4a88e8:	44 8b bd 88 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x178]
    1d2b7c4a88ef:	41 03 ff                                        	add    edi,r15d
    1d2b7c4a88f2:	41 0f b6 3c 3c                                  	movzx  edi,BYTE PTR [r12+rdi*1]
    1d2b7c4a88f7:	45 8b f8                                        	mov    r15d,r8d
    1d2b7c4a88fa:	41 83 e7 07                                     	and    r15d,0x7
    1d2b7c4a88fe:	41 8b cf                                        	mov    ecx,r15d
    1d2b7c4a8901:	d3 e7                                           	shl    edi,cl
    1d2b7c4a8903:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    1d2b7c4a890a:	40 f6 c7 80                                     	test   dil,0x80
    1d2b7c4a890e:	0f 85 13 00 00 00                               	jne    0x1d2b7c4a8927
    1d2b7c4a8914:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    1d2b7c4a891b:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4a8922:	e9 ee 09 00 00                                  	jmp    0x1d2b7c4a9315
    1d2b7c4a8927:	c4 c1 82 2a fb                                  	vcvtsi2ss xmm7,xmm15,r11
    1d2b7c4a892c:	c5 ca 59 ff                                     	vmulss xmm7,xmm6,xmm7
    1d2b7c4a8930:	c5 12 59 cf                                     	vmulss xmm9,xmm13,xmm7
    1d2b7c4a8934:	c4 41 82 2a d9                                  	vcvtsi2ss xmm11,xmm15,r9
    1d2b7c4a8939:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    1d2b7c4a893e:	c4 c1 1a 59 db                                  	vmulss xmm3,xmm12,xmm11
    1d2b7c4a8943:	c5 b2 58 eb                                     	vaddss xmm5,xmm9,xmm3
    1d2b7c4a8947:	c5 ba 5c f7                                     	vsubss xmm6,xmm8,xmm7
    1d2b7c4a894b:	c4 c1 4a 5c f3                                  	vsubss xmm6,xmm6,xmm11
    1d2b7c4a8950:	c5 2a 59 e6                                     	vmulss xmm12,xmm10,xmm6
    1d2b7c4a8954:	c4 c1 52 58 ec                                  	vaddss xmm5,xmm5,xmm12
    1d2b7c4a8959:	c5 f8 2e e5                                     	vucomiss xmm4,xmm5
    1d2b7c4a895d:	73 b5                                           	jae    0x1d2b7c4a8914
    1d2b7c4a895f:	c4 81 4a 59 74 3c 18                            	vmulss xmm6,xmm6,DWORD PTR [r12+r15*1+0x18]
    1d2b7c4a8966:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4a896d:	c4 c1 42 59 7c 3c 18                            	vmulss xmm7,xmm7,DWORD PTR [r12+rdi*1+0x18]
    1d2b7c4a8974:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    1d2b7c4a897b:	c4 41 22 59 5c 0c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+rcx*1+0x18]
    1d2b7c4a8982:	c4 c1 42 58 fb                                  	vaddss xmm7,xmm7,xmm11
    1d2b7c4a8987:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c4a898b:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    1d2b7c4a898f:	45 8b 5c 1c 68                                  	mov    r11d,DWORD PTR [r12+rbx*1+0x68]
    1d2b7c4a8994:	41 83 7c 1c 68 00                               	cmp    DWORD PTR [r12+rbx*1+0x68],0x0
    1d2b7c4a899a:	0f 84 c6 00 00 00                               	je     0x1d2b7c4a8a66
    1d2b7c4a89a0:	45 8b 9c 1c a4 00 00 00                         	mov    r11d,DWORD PTR [r12+rbx*1+0xa4]
    1d2b7c4a89a8:	41 83 bc 1c a4 00 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0xa4],0x0
    1d2b7c4a89b1:	0f 85 af 00 00 00                               	jne    0x1d2b7c4a8a66
    1d2b7c4a89b7:	45 8b 5c 1c 0c                                  	mov    r11d,DWORD PTR [r12+rbx*1+0xc]
    1d2b7c4a89bc:	41 8b 04 1c                                     	mov    eax,DWORD PTR [r12+rbx*1]
    1d2b7c4a89c0:	0f af 85 e0 fc ff ff                            	imul   eax,DWORD PTR [rbp-0x320]
    1d2b7c4a89c7:	45 8d 1c 83                                     	lea    r11d,[r11+rax*4]
    1d2b7c4a89cb:	47 8d 1c 83                                     	lea    r11d,[r11+r8*4]
    1d2b7c4a89cf:	c4 81 7a 10 3c 1c                               	vmovss xmm7,DWORD PTR [r12+r11*1]
    1d2b7c4a89d5:	45 8b 5c 1c 6c                                  	mov    r11d,DWORD PTR [r12+rbx*1+0x6c]
    1d2b7c4a89da:	41 81 eb 00 02 00 00                            	sub    r11d,0x200
    1d2b7c4a89e1:	41 83 fb 08                                     	cmp    r11d,0x8
    1d2b7c4a89e5:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4a89f6
    1d2b7c4a89eb:	4c 8d 15 ce 86 00 00                            	lea    r10,[rip+0x86ce]        # 0x1d2b7c4b10c0
    1d2b7c4a89f2:	43 ff 24 da                                     	jmp    QWORD PTR [r10+r11*8]
    1d2b7c4a89f6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a89fa:	0f 87 66 00 00 00                               	ja     0x1d2b7c4a8a66
    1d2b7c4a8a00:	e9 10 09 00 00                                  	jmp    0x1d2b7c4a9315
    1d2b7c4a8a05:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    1d2b7c4a8a09:	0f 83 57 00 00 00                               	jae    0x1d2b7c4a8a66
    1d2b7c4a8a0f:	e9 01 09 00 00                                  	jmp    0x1d2b7c4a9315
    1d2b7c4a8a14:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    1d2b7c4a8a18:	0f 8a 48 00 00 00                               	jp     0x1d2b7c4a8a66
    1d2b7c4a8a1e:	0f 84 f1 08 00 00                               	je     0x1d2b7c4a9315
    1d2b7c4a8a24:	e9 3d 00 00 00                                  	jmp    0x1d2b7c4a8a66
    1d2b7c4a8a29:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    1d2b7c4a8a2d:	0f 87 33 00 00 00                               	ja     0x1d2b7c4a8a66
    1d2b7c4a8a33:	e9 dd 08 00 00                                  	jmp    0x1d2b7c4a9315
    1d2b7c4a8a38:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a8a3c:	0f 83 24 00 00 00                               	jae    0x1d2b7c4a8a66
    1d2b7c4a8a42:	e9 ce 08 00 00                                  	jmp    0x1d2b7c4a9315
    1d2b7c4a8a47:	c5 f8 2e f7                                     	vucomiss xmm6,xmm7
    1d2b7c4a8a4b:	0f 8a c4 08 00 00                               	jp     0x1d2b7c4a9315
    1d2b7c4a8a51:	0f 84 0f 00 00 00                               	je     0x1d2b7c4a8a66
    1d2b7c4a8a57:	e9 b9 08 00 00                                  	jmp    0x1d2b7c4a9315
    1d2b7c4a8a5c:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a8a60:	0f 86 af 08 00 00                               	jbe    0x1d2b7c4a9315
    1d2b7c4a8a66:	c5 ba 5e fd                                     	vdivss xmm7,xmm8,xmm5
    1d2b7c4a8a6a:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    1d2b7c4a8a6e:	c4 62 79 18 df                                  	vbroadcastss xmm11,xmm7
    1d2b7c4a8a73:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    1d2b7c4a8a7a:	c4 c2 79 18 c4                                  	vbroadcastss xmm0,xmm12
    1d2b7c4a8a7f:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    1d2b7c4a8a83:	c4 c1 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+rdi*1+0x20]
    1d2b7c4a8a8a:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    1d2b7c4a8a92:	c4 c2 79 18 f1                                  	vbroadcastss xmm6,xmm9
    1d2b7c4a8a97:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    1d2b7c4a8a9b:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    1d2b7c4a8aa0:	c5 fb 11 bd 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm7
    1d2b7c4a8aa8:	c4 c1 7a 6f 7c 0c 20                            	vmovdqu xmm7,XMMWORD PTR [r12+rcx*1+0x20]
    1d2b7c4a8aaf:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    1d2b7c4a8ab3:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    1d2b7c4a8ab7:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c4a8abb:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    1d2b7c4a8abf:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4a8ac3:	c4 81 7a 7f 84 1c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x190],xmm0
    1d2b7c4a8acd:	c4 81 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+r15*1+0x98]
    1d2b7c4a8ad7:	c4 c1 7a 10 bc 3c 98 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rdi*1+0x98]
    1d2b7c4a8ae1:	c4 41 7a 10 9c 0c 98 00 00 00                   	vmovss xmm11,DWORD PTR [r12+rcx*1+0x98]
    1d2b7c4a8aeb:	c4 81 7a 7f 04 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm0
    1d2b7c4a8af1:	48 8b 85 a8 fd ff ff                            	mov    rax,QWORD PTR [rbp-0x258]
    1d2b7c4a8af8:	41 8b bc 04 34 01 00 00                         	mov    edi,DWORD PTR [r12+rax*1+0x134]
    1d2b7c4a8b00:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    1d2b7c4a8b04:	c5 fb 11 9d 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm3
    1d2b7c4a8b0c:	c5 7b 11 8d a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm9
    1d2b7c4a8b14:	c5 7b 11 a5 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm12
    1d2b7c4a8b1c:	c5 fb 11 b5 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm6
    1d2b7c4a8b24:	c5 fb 11 bd 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm7
    1d2b7c4a8b2c:	c5 7b 11 9d 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm11
    1d2b7c4a8b34:	41 83 f8 01                                     	cmp    r8d,0x1
    1d2b7c4a8b38:	0f 86 64 04 00 00                               	jbe    0x1d2b7c4a8fa2
    1d2b7c4a8b3e:	41 8b bc 04 30 01 00 00                         	mov    edi,DWORD PTR [r12+rax*1+0x130]
    1d2b7c4a8b46:	41 83 bc 04 30 01 00 00 00                      	cmp    DWORD PTR [r12+rax*1+0x130],0x0
    1d2b7c4a8b4f:	0f 85 0e 00 00 00                               	jne    0x1d2b7c4a8b63
    1d2b7c4a8b55:	41 8b cb                                        	mov    ecx,r11d
    1d2b7c4a8b58:	4d 8b c4                                        	mov    r8,r12
    1d2b7c4a8b5b:	48 8b f8                                        	mov    rdi,rax
    1d2b7c4a8b5e:	e9 02 05 00 00                                  	jmp    0x1d2b7c4a9065
    1d2b7c4a8b63:	41 8d bb 90 00 00 00                            	lea    edi,[r11+0x90]
    1d2b7c4a8b6a:	45 8d 43 70                                     	lea    r8d,[r11+0x70]
    1d2b7c4a8b6e:	41 50                                           	push   r8
    1d2b7c4a8b70:	48 89 bd a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rdi
    1d2b7c4a8b77:	4c 8b c2                                        	mov    r8,rdx
    1d2b7c4a8b7a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a8b7e:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4a8b81:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    1d2b7c4a8b87:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    1d2b7c4a8b8d:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    1d2b7c4a8b93:	c4 c1 79 28 c9                                  	vmovapd xmm1,xmm9
    1d2b7c4a8b98:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    1d2b7c4a8b9c:	c4 c1 79 28 dc                                  	vmovapd xmm3,xmm12
    1d2b7c4a8ba1:	c5 fb 10 a5 30 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xd0]
    1d2b7c4a8ba9:	44 8b cf                                        	mov    r9d,edi
    1d2b7c4a8bac:	e8 67 36 f1 ff                                  	call   0x1d2b7c3bc218
    1d2b7c4a8bb1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a8bb5:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a8bbc:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    1d2b7c4a8bc4:	45 85 db                                        	test   r11d,r11d
    1d2b7c4a8bc7:	0f 85 61 01 00 00                               	jne    0x1d2b7c4a8d2e
    1d2b7c4a8bcd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a8bd0:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    1d2b7c4a8bd5:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    1d2b7c4a8bdb:	0f 84 43 00 00 00                               	je     0x1d2b7c4a8c24
    1d2b7c4a8be1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4a8be7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4a8beb:	41 53                                           	push   r11
    1d2b7c4a8bed:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a8bf1:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    1d2b7c4a8bf7:	33 d2                                           	xor    edx,edx
    1d2b7c4a8bf9:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    1d2b7c4a8c00:	e8 3b 36 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4a8c05:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a8c08:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a8c0c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4a8c13:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a8c1d:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a8c24:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    1d2b7c4a8c29:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    1d2b7c4a8c2f:	0f 84 46 00 00 00                               	je     0x1d2b7c4a8c7b
    1d2b7c4a8c35:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4a8c3b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4a8c3f:	41 53                                           	push   r11
    1d2b7c4a8c41:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a8c45:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    1d2b7c4a8c4b:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c4a8c50:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    1d2b7c4a8c57:	e8 e4 35 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4a8c5c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a8c5f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a8c63:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4a8c6a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a8c74:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a8c7b:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    1d2b7c4a8c80:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    1d2b7c4a8c86:	0f 84 46 00 00 00                               	je     0x1d2b7c4a8cd2
    1d2b7c4a8c8c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4a8c92:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4a8c96:	41 53                                           	push   r11
    1d2b7c4a8c98:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a8c9c:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    1d2b7c4a8ca2:	ba 02 00 00 00                                  	mov    edx,0x2
    1d2b7c4a8ca7:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    1d2b7c4a8cae:	e8 8d 35 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4a8cb3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a8cb6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a8cba:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4a8cc1:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a8ccb:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a8cd2:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    1d2b7c4a8cd7:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    1d2b7c4a8cdd:	0f 84 82 03 00 00                               	je     0x1d2b7c4a9065
    1d2b7c4a8ce3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4a8ce9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4a8ced:	41 53                                           	push   r11
    1d2b7c4a8cef:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a8cf3:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    1d2b7c4a8cf9:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c4a8cfe:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    1d2b7c4a8d05:	e8 36 35 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4a8d0a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a8d0d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a8d11:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4a8d18:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a8d22:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a8d29:	e9 37 03 00 00                                  	jmp    0x1d2b7c4a9065
    1d2b7c4a8d2e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a8d31:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    1d2b7c4a8d3b:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    1d2b7c4a8d41:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c4a8d46:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a8d4a:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    1d2b7c4a8d51:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c4a8d55:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c4a8d59:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    1d2b7c4a8d63:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c4a8d67:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    1d2b7c4a8d6d:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c4a8d71:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    1d2b7c4a8d76:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    1d2b7c4a8d80:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c4a8d84:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    1d2b7c4a8d8b:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    1d2b7c4a8d8f:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    1d2b7c4a8d93:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    1d2b7c4a8d97:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a8d9b:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    1d2b7c4a8da1:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c4a8da6:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    1d2b7c4a8daa:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4a8dae:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4a8db3:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4a8db8:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    1d2b7c4a8dbc:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a8dcb
    1d2b7c4a8dc2:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4a8dc6:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a8dcf
    1d2b7c4a8dcb:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4a8dcf:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c4a8dd4:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c4a8dd8:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a8de7
    1d2b7c4a8dde:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c4a8de2:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a8dec
    1d2b7c4a8de7:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4a8dec:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c4a8df1:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c4a8df5:	0f 84 a4 00 00 00                               	je     0x1d2b7c4a8e9f
    1d2b7c4a8dfb:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    1d2b7c4a8dff:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    1d2b7c4a8e09:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a8e0d:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a8e1c
    1d2b7c4a8e13:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4a8e17:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a8e20
    1d2b7c4a8e1c:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4a8e20:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4a8e24:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4a8e34
    1d2b7c4a8e2a:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4a8e2f:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a8e39
    1d2b7c4a8e34:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4a8e39:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    1d2b7c4a8e3d:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4a8e42:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4a8e47:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4a8e4b:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    1d2b7c4a8e55:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4a8e5a:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4a8e5f:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c4a8e63:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    1d2b7c4a8e6d:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c4a8e71:	0f 85 04 00 00 00                               	jne    0x1d2b7c4a8e7b
    1d2b7c4a8e77:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    1d2b7c4a8e7b:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c4a8e80:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4a8e84:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c4a8e88:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    1d2b7c4a8e92:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4a8e97:	4d 8b dc                                        	mov    r11,r12
    1d2b7c4a8e9a:	e9 cc 00 00 00                                  	jmp    0x1d2b7c4a8f6b
    1d2b7c4a8e9f:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    1d2b7c4a8ea6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a8eaa:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a8eb9
    1d2b7c4a8eb0:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4a8eb4:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a8ebd
    1d2b7c4a8eb9:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4a8ebd:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4a8ec1:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4a8ed1
    1d2b7c4a8ec7:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4a8ecc:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a8ed6
    1d2b7c4a8ed1:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4a8ed6:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    1d2b7c4a8ee0:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    1d2b7c4a8ee6:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    1d2b7c4a8eeb:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a8eef:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a8efe
    1d2b7c4a8ef5:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c4a8ef9:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a8f02
    1d2b7c4a8efe:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c4a8f02:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4a8f06:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4a8f16
    1d2b7c4a8f0c:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c4a8f11:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a8f1b
    1d2b7c4a8f16:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4a8f1b:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    1d2b7c4a8f25:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4a8f2a:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4a8f2e:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    1d2b7c4a8f38:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c4a8f3d:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4a8f42:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c4a8f46:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x1d2b7c4a8e4d
    1d2b7c4a8f4d:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c4a8f52:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c4a8f57:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c4a8f5b:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c4a8f5f:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c4a8f63:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c4a8f67:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c4a8f6b:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4a8f70:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4a8f74:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x1d2b7c4a8e4d
    1d2b7c4a8f7b:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4a8f80:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4a8f85:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    1d2b7c4a8f89:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a8f93:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    1d2b7c4a8f9d:	e9 c3 00 00 00                                  	jmp    0x1d2b7c4a9065
    1d2b7c4a8fa2:	4d 8b c7                                        	mov    r8,r15
    1d2b7c4a8fa5:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    1d2b7c4a8fac:	c4 c1 7a 59 c4                                  	vmulss xmm0,xmm0,xmm12
    1d2b7c4a8fb1:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    1d2b7c4a8fb8:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    1d2b7c4a8fbf:	c4 c1 52 59 e9                                  	vmulss xmm5,xmm5,xmm9
    1d2b7c4a8fc4:	c4 c1 62 59 74 0c 50                            	vmulss xmm6,xmm3,DWORD PTR [r12+rcx*1+0x50]
    1d2b7c4a8fcb:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    1d2b7c4a8fcf:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a8fd3:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    1d2b7c4a8fdb:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4a8fdf:	c4 81 7a 10 6c 04 54                            	vmovss xmm5,DWORD PTR [r12+r8*1+0x54]
    1d2b7c4a8fe6:	c4 c1 52 59 ec                                  	vmulss xmm5,xmm5,xmm12
    1d2b7c4a8feb:	c5 fb 11 85 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm0
    1d2b7c4a8ff3:	c4 81 7a 10 44 3c 54                            	vmovss xmm0,DWORD PTR [r12+r15*1+0x54]
    1d2b7c4a8ffa:	c4 c1 7a 59 c1                                  	vmulss xmm0,xmm0,xmm9
    1d2b7c4a8fff:	c4 c1 62 59 7c 0c 54                            	vmulss xmm7,xmm3,DWORD PTR [r12+rcx*1+0x54]
    1d2b7c4a9006:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    1d2b7c4a900a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    1d2b7c4a900e:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4a9012:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    1d2b7c4a9019:	41 8d bb 90 00 00 00                            	lea    edi,[r11+0x90]
    1d2b7c4a9020:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a9024:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4a9027:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
    1d2b7c4a902d:	c5 fb 10 8d a8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x158]
    1d2b7c4a9035:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    1d2b7c4a9039:	41 8b cb                                        	mov    ecx,r11d
    1d2b7c4a903c:	8b df                                           	mov    ebx,edi
    1d2b7c4a903e:	e8 ed 34 f1 ff                                  	call   0x1d2b7c3bc530
    1d2b7c4a9043:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a9046:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a904a:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    1d2b7c4a9054:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a905e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a9065:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4a9069:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    1d2b7c4a9071:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    1d2b7c4a907a:	0f 85 2a 00 00 00                               	jne    0x1d2b7c4a90aa
    1d2b7c4a9080:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c4a908a:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c4a9094:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c4a909e:	49 8b fb                                        	mov    rdi,r11
    1d2b7c4a90a1:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c4a90a5:	e9 d4 01 00 00                                  	jmp    0x1d2b7c4a927e
    1d2b7c4a90aa:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    1d2b7c4a90b2:	c5 fa 59 85 f0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x210]
    1d2b7c4a90ba:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    1d2b7c4a90c2:	c5 ca 59 b5 a0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x160]
    1d2b7c4a90ca:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    1d2b7c4a90d2:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    1d2b7c4a90da:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c4a90de:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a90e2:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    1d2b7c4a90ea:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4a90ee:	4c 8b 15 71 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe871]        # 0x1d2b7c4a7966
    1d2b7c4a90f5:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4a90fa:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    1d2b7c4a90fe:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c4a9102:	0f 87 04 00 00 00                               	ja     0x1d2b7c4a910c
    1d2b7c4a9108:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c4a910c:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    1d2b7c4a9114:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    1d2b7c4a911b:	0f 85 28 00 00 00                               	jne    0x1d2b7c4a9149
    1d2b7c4a9121:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c4a912b:	4c 8b 15 34 e8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe834]        # 0x1d2b7c4a7966
    1d2b7c4a9132:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4a9137:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    1d2b7c4a913b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a913f:	e8 74 54 f1 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4a9144:	e9 8b 00 00 00                                  	jmp    0x1d2b7c4a91d4
    1d2b7c4a9149:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c4a914d:	0f 84 5e 00 00 00                               	je     0x1d2b7c4a91b1
    1d2b7c4a9153:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    1d2b7c4a915d:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    1d2b7c4a9167:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    1d2b7c4a916c:	7a 06                                           	jp     0x1d2b7c4a9174
    1d2b7c4a916e:	0f 84 2a 00 00 00                               	je     0x1d2b7c4a919e
    1d2b7c4a9174:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c4a9178:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    1d2b7c4a917d:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    1d2b7c4a9181:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    1d2b7c4a9185:	0f 86 49 00 00 00                               	jbe    0x1d2b7c4a91d4
    1d2b7c4a918b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4a918f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4a9194:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4a9199:	e9 5b 00 00 00                                  	jmp    0x1d2b7c4a91f9
    1d2b7c4a919e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4a91a2:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4a91a7:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4a91ac:	e9 44 00 00 00                                  	jmp    0x1d2b7c4a91f5
    1d2b7c4a91b1:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c4a91bb:	4c 8b 15 a4 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe7a4]        # 0x1d2b7c4a7966
    1d2b7c4a91c2:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4a91c7:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    1d2b7c4a91cb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a91cf:	e8 e4 53 f1 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4a91d4:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4a91d8:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4a91dd:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4a91e2:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    1d2b7c4a91e6:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a91f5
    1d2b7c4a91ec:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    1d2b7c4a91f0:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a91f9
    1d2b7c4a91f5:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4a91f9:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a91fc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a9200:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c4a920a:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    1d2b7c4a920e:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    1d2b7c4a9212:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    1d2b7c4a921c:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    1d2b7c4a9221:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    1d2b7c4a922b:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c4a9235:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    1d2b7c4a923f:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    1d2b7c4a9244:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    1d2b7c4a924e:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c4a9258:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    1d2b7c4a9262:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    1d2b7c4a9267:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    1d2b7c4a9271:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c4a9275:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4a9279:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c4a927e:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    1d2b7c4a9288:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a928c:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4a928f:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    1d2b7c4a9292:	8b 8d e0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x320]
    1d2b7c4a9298:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    1d2b7c4a92a0:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    1d2b7c4a92a4:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    1d2b7c4a92a8:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    1d2b7c4a92ad:	e8 ae 2f f1 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4a92b2:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4a92b6:	48 8b 5d c8                                     	mov    rbx,QWORD PTR [rbp-0x38]
    1d2b7c4a92ba:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4a92be:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    1d2b7c4a92c5:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4a92ca:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4a92d0:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4a92d6:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4a92da:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    1d2b7c4a92e1:	48 8b 8d 48 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1b8]
    1d2b7c4a92e8:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4a92ef:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    1d2b7c4a92f6:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    1d2b7c4a92fd:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4a9305:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4a930d:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4a9315:	f6 85 b0 fd ff ff 02                            	test   BYTE PTR [rbp-0x250],0x2
    1d2b7c4a931c:	0f 85 29 00 00 00                               	jne    0x1d2b7c4a934b
    1d2b7c4a9322:	4d 8b dc                                        	mov    r11,r12
    1d2b7c4a9325:	4c 8b e3                                        	mov    r12,rbx
    1d2b7c4a9328:	48 8b c1                                        	mov    rax,rcx
    1d2b7c4a932b:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4a9331:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    1d2b7c4a9339:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4a9341:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    1d2b7c4a9346:	e9 ab 0a 00 00                                  	jmp    0x1d2b7c4a9df6
    1d2b7c4a934b:	4d 8b dc                                        	mov    r11,r12
    1d2b7c4a934e:	4c 8b e3                                        	mov    r12,rbx
    1d2b7c4a9351:	43 8b 84 23 c8 3c 00 00                         	mov    eax,DWORD PTR [r11+r12*1+0x3cc8]
    1d2b7c4a9359:	43 83 bc 23 c8 3c 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0x3cc8],0x0
    1d2b7c4a9362:	0f 84 6e 00 00 00                               	je     0x1d2b7c4a93d6
    1d2b7c4a9368:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    1d2b7c4a936e:	c1 e8 03                                        	shr    eax,0x3
    1d2b7c4a9371:	83 e0 03                                        	and    eax,0x3
    1d2b7c4a9374:	8b 9d 68 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x198]
    1d2b7c4a937a:	0b d8                                           	or     ebx,eax
    1d2b7c4a937c:	8b 85 88 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x178]
    1d2b7c4a9382:	03 d8                                           	add    ebx,eax
    1d2b7c4a9384:	41 0f b6 1c 1b                                  	movzx  ebx,BYTE PTR [r11+rbx*1]
    1d2b7c4a9389:	44 8b 85 58 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xa8]
    1d2b7c4a9390:	41 83 e0 07                                     	and    r8d,0x7
    1d2b7c4a9394:	4c 8b d1                                        	mov    r10,rcx
    1d2b7c4a9397:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4a939a:	4d 8b c2                                        	mov    r8,r10
    1d2b7c4a939d:	d3 e3                                           	shl    ebx,cl
    1d2b7c4a939f:	f6 c3 80                                        	test   bl,0x80
    1d2b7c4a93a2:	0f 85 27 00 00 00                               	jne    0x1d2b7c4a93cf
    1d2b7c4a93a8:	49 8b c0                                        	mov    rax,r8
    1d2b7c4a93ab:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4a93af:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4a93b5:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    1d2b7c4a93bd:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4a93c5:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    1d2b7c4a93ca:	e9 27 0a 00 00                                  	jmp    0x1d2b7c4a9df6
    1d2b7c4a93cf:	49 8b c8                                        	mov    rcx,r8
    1d2b7c4a93d2:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4a93d6:	48 8b 45 88                                     	mov    rax,QWORD PTR [rbp-0x78]
    1d2b7c4a93da:	48 2b 85 18 fd ff ff                            	sub    rax,QWORD PTR [rbp-0x2e8]
    1d2b7c4a93e1:	c4 e1 82 2a f0                                  	vcvtsi2ss xmm6,xmm15,rax
    1d2b7c4a93e6:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    1d2b7c4a93ee:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    1d2b7c4a93f2:	c4 41 79 28 cd                                  	vmovapd xmm9,xmm13
    1d2b7c4a93f7:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    1d2b7c4a93fb:	49 8b c1                                        	mov    rax,r9
    1d2b7c4a93fe:	48 2b 85 38 fd ff ff                            	sub    rax,QWORD PTR [rbp-0x2c8]
    1d2b7c4a9405:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    1d2b7c4a940a:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    1d2b7c4a940f:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4a9417:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    1d2b7c4a941c:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    1d2b7c4a9420:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    1d2b7c4a9424:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    1d2b7c4a9429:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    1d2b7c4a942e:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    1d2b7c4a9432:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    1d2b7c4a9437:	0f 83 b0 09 00 00                               	jae    0x1d2b7c4a9ded
    1d2b7c4a943d:	c4 01 0a 59 74 3b 18                            	vmulss xmm14,xmm14,DWORD PTR [r11+r15*1+0x18]
    1d2b7c4a9444:	c4 c1 4a 59 74 3b 18                            	vmulss xmm6,xmm6,DWORD PTR [r11+rdi*1+0x18]
    1d2b7c4a944b:	48 8b c1                                        	mov    rax,rcx
    1d2b7c4a944e:	c4 41 22 59 5c 03 18                            	vmulss xmm11,xmm11,DWORD PTR [r11+rax*1+0x18]
    1d2b7c4a9455:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    1d2b7c4a945a:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    1d2b7c4a945e:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    1d2b7c4a9462:	43 8b 5c 23 68                                  	mov    ebx,DWORD PTR [r11+r12*1+0x68]
    1d2b7c4a9467:	43 83 7c 23 68 00                               	cmp    DWORD PTR [r11+r12*1+0x68],0x0
    1d2b7c4a946d:	0f 85 0b 00 00 00                               	jne    0x1d2b7c4a947e
    1d2b7c4a9473:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4a9479:	e9 c8 00 00 00                                  	jmp    0x1d2b7c4a9546
    1d2b7c4a947e:	43 8b 9c 23 a4 00 00 00                         	mov    ebx,DWORD PTR [r11+r12*1+0xa4]
    1d2b7c4a9486:	43 83 bc 23 a4 00 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0xa4],0x0
    1d2b7c4a948f:	75 e2                                           	jne    0x1d2b7c4a9473
    1d2b7c4a9491:	43 8b 5c 23 0c                                  	mov    ebx,DWORD PTR [r11+r12*1+0xc]
    1d2b7c4a9496:	43 8b 0c 23                                     	mov    ecx,DWORD PTR [r11+r12*1]
    1d2b7c4a949a:	0f af 8d e0 fc ff ff                            	imul   ecx,DWORD PTR [rbp-0x320]
    1d2b7c4a94a1:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    1d2b7c4a94a4:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4a94aa:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    1d2b7c4a94ad:	c4 41 7a 10 1c 1b                               	vmovss xmm11,DWORD PTR [r11+rbx*1]
    1d2b7c4a94b3:	43 8b 5c 23 6c                                  	mov    ebx,DWORD PTR [r11+r12*1+0x6c]
    1d2b7c4a94b8:	81 eb 00 02 00 00                               	sub    ebx,0x200
    1d2b7c4a94be:	83 fb 08                                        	cmp    ebx,0x8
    1d2b7c4a94c1:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4a94d2
    1d2b7c4a94c7:	4c 8d 15 b2 7b 00 00                            	lea    r10,[rip+0x7bb2]        # 0x1d2b7c4b1080
    1d2b7c4a94ce:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    1d2b7c4a94d2:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4a94d6:	0f 87 6a 00 00 00                               	ja     0x1d2b7c4a9546
    1d2b7c4a94dc:	e9 15 09 00 00                                  	jmp    0x1d2b7c4a9df6
    1d2b7c4a94e1:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4a94e6:	0f 83 5a 00 00 00                               	jae    0x1d2b7c4a9546
    1d2b7c4a94ec:	e9 05 09 00 00                                  	jmp    0x1d2b7c4a9df6
    1d2b7c4a94f1:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4a94f6:	0f 8a 4a 00 00 00                               	jp     0x1d2b7c4a9546
    1d2b7c4a94fc:	0f 84 f4 08 00 00                               	je     0x1d2b7c4a9df6
    1d2b7c4a9502:	e9 3f 00 00 00                                  	jmp    0x1d2b7c4a9546
    1d2b7c4a9507:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4a950c:	0f 87 34 00 00 00                               	ja     0x1d2b7c4a9546
    1d2b7c4a9512:	e9 df 08 00 00                                  	jmp    0x1d2b7c4a9df6
    1d2b7c4a9517:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4a951b:	0f 83 25 00 00 00                               	jae    0x1d2b7c4a9546
    1d2b7c4a9521:	e9 d0 08 00 00                                  	jmp    0x1d2b7c4a9df6
    1d2b7c4a9526:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4a952b:	0f 8a c5 08 00 00                               	jp     0x1d2b7c4a9df6
    1d2b7c4a9531:	0f 84 0f 00 00 00                               	je     0x1d2b7c4a9546
    1d2b7c4a9537:	e9 ba 08 00 00                                  	jmp    0x1d2b7c4a9df6
    1d2b7c4a953c:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4a9540:	0f 86 b0 08 00 00                               	jbe    0x1d2b7c4a9df6
    1d2b7c4a9546:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    1d2b7c4a954b:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    1d2b7c4a9550:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    1d2b7c4a9555:	c4 01 7a 6f 74 3b 20                            	vmovdqu xmm14,XMMWORD PTR [r11+r15*1+0x20]
    1d2b7c4a955c:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    1d2b7c4a9561:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    1d2b7c4a9565:	c4 c1 7a 6f 6c 3b 20                            	vmovdqu xmm5,XMMWORD PTR [r11+rdi*1+0x20]
    1d2b7c4a956c:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c4a9571:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    1d2b7c4a9575:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    1d2b7c4a957a:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    1d2b7c4a9582:	c4 c1 7a 6f 74 03 20                            	vmovdqu xmm6,XMMWORD PTR [r11+rax*1+0x20]
    1d2b7c4a9589:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    1d2b7c4a958d:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c4a9591:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    1d2b7c4a9595:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    1d2b7c4a9599:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    1d2b7c4a959c:	c4 c1 7a 7f 84 1b 90 01 00 00                   	vmovdqu XMMWORD PTR [r11+rbx*1+0x190],xmm0
    1d2b7c4a95a6:	c4 81 7a 10 b4 3b 98 00 00 00                   	vmovss xmm6,DWORD PTR [r11+r15*1+0x98]
    1d2b7c4a95b0:	c4 41 7a 10 ac 3b 98 00 00 00                   	vmovss xmm13,DWORD PTR [r11+rdi*1+0x98]
    1d2b7c4a95ba:	c4 41 7a 10 b4 03 98 00 00 00                   	vmovss xmm14,DWORD PTR [r11+rax*1+0x98]
    1d2b7c4a95c4:	c4 c1 7a 7f 04 1b                               	vmovdqu XMMWORD PTR [r11+rbx*1],xmm0
    1d2b7c4a95ca:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a95d1:	45 8b 84 3b 34 01 00 00                         	mov    r8d,DWORD PTR [r11+rdi*1+0x134]
    1d2b7c4a95d9:	45 8d 60 ff                                     	lea    r12d,[r8-0x1]
    1d2b7c4a95dd:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    1d2b7c4a95e5:	c5 fb 11 8d a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm1
    1d2b7c4a95ed:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
    1d2b7c4a95f5:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    1d2b7c4a95fd:	c5 fb 11 b5 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm6
    1d2b7c4a9605:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    1d2b7c4a960d:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    1d2b7c4a9615:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c4a9619:	0f 86 50 04 00 00                               	jbe    0x1d2b7c4a9a6f
    1d2b7c4a961f:	45 8b 84 3b 30 01 00 00                         	mov    r8d,DWORD PTR [r11+rdi*1+0x130]
    1d2b7c4a9627:	41 83 bc 3b 30 01 00 00 00                      	cmp    DWORD PTR [r11+rdi*1+0x130],0x0
    1d2b7c4a9630:	0f 85 0a 00 00 00                               	jne    0x1d2b7c4a9640
    1d2b7c4a9636:	8b cb                                           	mov    ecx,ebx
    1d2b7c4a9638:	4d 8b c3                                        	mov    r8,r11
    1d2b7c4a963b:	e9 df 04 00 00                                  	jmp    0x1d2b7c4a9b1f
    1d2b7c4a9640:	44 8d 83 90 00 00 00                            	lea    r8d,[rbx+0x90]
    1d2b7c4a9647:	44 8d 63 70                                     	lea    r12d,[rbx+0x70]
    1d2b7c4a964b:	41 54                                           	push   r12
    1d2b7c4a964d:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    1d2b7c4a9654:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a9658:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4a965b:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    1d2b7c4a9661:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    1d2b7c4a9667:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    1d2b7c4a966d:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c4a9672:	45 8b c8                                        	mov    r9d,r8d
    1d2b7c4a9675:	e8 9e 2b f1 ff                                  	call   0x1d2b7c3bc218
    1d2b7c4a967a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a967e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a9685:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    1d2b7c4a968d:	45 85 db                                        	test   r11d,r11d
    1d2b7c4a9690:	0f 85 62 01 00 00                               	jne    0x1d2b7c4a97f8
    1d2b7c4a9696:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a9699:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    1d2b7c4a969e:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    1d2b7c4a96a4:	0f 84 43 00 00 00                               	je     0x1d2b7c4a96ed
    1d2b7c4a96aa:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4a96b0:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4a96b4:	41 53                                           	push   r11
    1d2b7c4a96b6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a96ba:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    1d2b7c4a96c0:	33 d2                                           	xor    edx,edx
    1d2b7c4a96c2:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    1d2b7c4a96c9:	e8 72 2b f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4a96ce:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a96d1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a96d5:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4a96dc:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a96e6:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a96ed:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    1d2b7c4a96f2:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    1d2b7c4a96f8:	0f 84 46 00 00 00                               	je     0x1d2b7c4a9744
    1d2b7c4a96fe:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4a9704:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4a9708:	41 53                                           	push   r11
    1d2b7c4a970a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a970e:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    1d2b7c4a9714:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c4a9719:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    1d2b7c4a9720:	e8 1b 2b f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4a9725:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a9728:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a972c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4a9733:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a973d:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a9744:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    1d2b7c4a9749:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    1d2b7c4a974f:	0f 84 46 00 00 00                               	je     0x1d2b7c4a979b
    1d2b7c4a9755:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4a975b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4a975f:	41 53                                           	push   r11
    1d2b7c4a9761:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a9765:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    1d2b7c4a976b:	ba 02 00 00 00                                  	mov    edx,0x2
    1d2b7c4a9770:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    1d2b7c4a9777:	e8 c4 2a f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4a977c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a977f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a9783:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4a978a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a9794:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a979b:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    1d2b7c4a97a0:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    1d2b7c4a97a6:	0f 84 73 03 00 00                               	je     0x1d2b7c4a9b1f
    1d2b7c4a97ac:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4a97b2:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4a97b6:	41 53                                           	push   r11
    1d2b7c4a97b8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a97bc:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    1d2b7c4a97c2:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c4a97c7:	44 8b 8d a8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x158]
    1d2b7c4a97ce:	e8 6d 2a f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4a97d3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a97d6:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    1d2b7c4a97da:	c5 fa 6f 44 0e 50                               	vmovdqu xmm0,XMMWORD PTR [rsi+rcx*1+0x50]
    1d2b7c4a97e0:	c5 fa 7f 84 0e 90 01 00 00                      	vmovdqu XMMWORD PTR [rsi+rcx*1+0x190],xmm0
    1d2b7c4a97e9:	4c 8b c6                                        	mov    r8,rsi
    1d2b7c4a97ec:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a97f3:	e9 27 03 00 00                                  	jmp    0x1d2b7c4a9b1f
    1d2b7c4a97f8:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a97fb:	4d 8b e0                                        	mov    r12,r8
    1d2b7c4a97fe:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    1d2b7c4a9808:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    1d2b7c4a980e:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c4a9813:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a9817:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    1d2b7c4a981e:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c4a9822:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c4a9826:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    1d2b7c4a9830:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c4a9834:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    1d2b7c4a983a:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c4a983e:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    1d2b7c4a9843:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    1d2b7c4a984d:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c4a9851:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    1d2b7c4a9858:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    1d2b7c4a985c:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    1d2b7c4a9860:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    1d2b7c4a9864:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a9868:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    1d2b7c4a986e:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c4a9873:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    1d2b7c4a9877:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4a987b:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4a9880:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4a9885:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    1d2b7c4a9889:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a9898
    1d2b7c4a988f:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4a9893:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a989c
    1d2b7c4a9898:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4a989c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c4a98a1:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c4a98a5:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a98b4
    1d2b7c4a98ab:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c4a98af:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a98b9
    1d2b7c4a98b4:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4a98b9:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c4a98be:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c4a98c2:	0f 84 a1 00 00 00                               	je     0x1d2b7c4a9969
    1d2b7c4a98c8:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    1d2b7c4a98cc:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    1d2b7c4a98d6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a98da:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a98e9
    1d2b7c4a98e0:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4a98e4:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a98ed
    1d2b7c4a98e9:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4a98ed:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4a98f1:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4a9901
    1d2b7c4a98f7:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4a98fc:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a9906
    1d2b7c4a9901:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4a9906:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    1d2b7c4a990a:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4a990f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4a9914:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4a9918:	4c 8b 15 2e f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52e]        # 0x1d2b7c4a8e4d
    1d2b7c4a991f:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4a9924:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4a9929:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c4a992d:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    1d2b7c4a9937:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c4a993b:	0f 85 04 00 00 00                               	jne    0x1d2b7c4a9945
    1d2b7c4a9941:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    1d2b7c4a9945:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c4a994a:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4a994e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c4a9952:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    1d2b7c4a995c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4a9961:	4d 8b df                                        	mov    r11,r15
    1d2b7c4a9964:	e9 cc 00 00 00                                  	jmp    0x1d2b7c4a9a35
    1d2b7c4a9969:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    1d2b7c4a9970:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a9974:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a9983
    1d2b7c4a997a:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4a997e:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a9987
    1d2b7c4a9983:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4a9987:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4a998b:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4a999b
    1d2b7c4a9991:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4a9996:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a99a0
    1d2b7c4a999b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4a99a0:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    1d2b7c4a99aa:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    1d2b7c4a99b0:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    1d2b7c4a99b5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4a99b9:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a99c8
    1d2b7c4a99bf:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c4a99c3:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a99cc
    1d2b7c4a99c8:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c4a99cc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4a99d0:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4a99e0
    1d2b7c4a99d6:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c4a99db:	e9 05 00 00 00                                  	jmp    0x1d2b7c4a99e5
    1d2b7c4a99e0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4a99e5:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    1d2b7c4a99ef:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4a99f4:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4a99f8:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    1d2b7c4a9a02:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c4a9a07:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4a9a0c:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c4a9a10:	4c 8b 15 36 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff436]        # 0x1d2b7c4a8e4d
    1d2b7c4a9a17:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c4a9a1c:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c4a9a21:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c4a9a25:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c4a9a29:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c4a9a2d:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c4a9a31:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c4a9a35:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4a9a3a:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4a9a3e:	4c 8b 15 08 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff408]        # 0x1d2b7c4a8e4d
    1d2b7c4a9a45:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4a9a4a:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4a9a4f:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    1d2b7c4a9a53:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    1d2b7c4a9a5d:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    1d2b7c4a9a67:	4d 8b c4                                        	mov    r8,r12
    1d2b7c4a9a6a:	e9 b0 00 00 00                                  	jmp    0x1d2b7c4a9b1f
    1d2b7c4a9a6f:	4d 8b e7                                        	mov    r12,r15
    1d2b7c4a9a72:	c4 81 7a 10 44 23 50                            	vmovss xmm0,DWORD PTR [r11+r12*1+0x50]
    1d2b7c4a9a79:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    1d2b7c4a9a7d:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    1d2b7c4a9a84:	c4 81 7a 10 6c 3b 50                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x50]
    1d2b7c4a9a8b:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c4a9a8f:	c4 c1 6a 59 74 03 50                            	vmulss xmm6,xmm2,DWORD PTR [r11+rax*1+0x50]
    1d2b7c4a9a96:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    1d2b7c4a9a9a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a9a9e:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    1d2b7c4a9aa3:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4a9aa7:	c4 01 7a 10 5c 23 54                            	vmovss xmm11,DWORD PTR [r11+r12*1+0x54]
    1d2b7c4a9aae:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    1d2b7c4a9ab2:	c4 81 7a 10 6c 3b 54                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x54]
    1d2b7c4a9ab9:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c4a9abd:	c5 fb 11 85 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm0
    1d2b7c4a9ac5:	c4 c1 6a 59 44 03 54                            	vmulss xmm0,xmm2,DWORD PTR [r11+rax*1+0x54]
    1d2b7c4a9acc:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    1d2b7c4a9ad0:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    1d2b7c4a9ad4:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4a9ad8:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    1d2b7c4a9ade:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a9ae2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4a9ae5:	41 8b d0                                        	mov    edx,r8d
    1d2b7c4a9ae8:	c5 fb 10 8d a8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x158]
    1d2b7c4a9af0:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    1d2b7c4a9af4:	8b cb                                           	mov    ecx,ebx
    1d2b7c4a9af6:	8b df                                           	mov    ebx,edi
    1d2b7c4a9af8:	e8 33 2a f1 ff                                  	call   0x1d2b7c3bc530
    1d2b7c4a9afd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a9b00:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a9b04:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    1d2b7c4a9b0e:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4a9b18:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4a9b1f:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4a9b23:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    1d2b7c4a9b2b:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    1d2b7c4a9b34:	0f 85 2a 00 00 00                               	jne    0x1d2b7c4a9b64
    1d2b7c4a9b3a:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c4a9b44:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c4a9b4e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c4a9b58:	49 8b fb                                        	mov    rdi,r11
    1d2b7c4a9b5b:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c4a9b5f:	e9 d4 01 00 00                                  	jmp    0x1d2b7c4a9d38
    1d2b7c4a9b64:	c5 fb 10 85 f0 fd ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x210]
    1d2b7c4a9b6c:	c5 fa 59 85 80 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x180]
    1d2b7c4a9b74:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    1d2b7c4a9b7c:	c5 ca 59 b5 a0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x160]
    1d2b7c4a9b84:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    1d2b7c4a9b8c:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    1d2b7c4a9b94:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c4a9b98:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4a9b9c:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    1d2b7c4a9ba4:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4a9ba8:	4c 8b 15 b7 dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffddb7]        # 0x1d2b7c4a7966
    1d2b7c4a9baf:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4a9bb4:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    1d2b7c4a9bb8:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c4a9bbc:	0f 87 04 00 00 00                               	ja     0x1d2b7c4a9bc6
    1d2b7c4a9bc2:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c4a9bc6:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    1d2b7c4a9bce:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    1d2b7c4a9bd5:	0f 85 28 00 00 00                               	jne    0x1d2b7c4a9c03
    1d2b7c4a9bdb:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c4a9be5:	4c 8b 15 7a dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdd7a]        # 0x1d2b7c4a7966
    1d2b7c4a9bec:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4a9bf1:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    1d2b7c4a9bf5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a9bf9:	e8 ba 49 f1 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4a9bfe:	e9 8b 00 00 00                                  	jmp    0x1d2b7c4a9c8e
    1d2b7c4a9c03:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c4a9c07:	0f 84 5e 00 00 00                               	je     0x1d2b7c4a9c6b
    1d2b7c4a9c0d:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    1d2b7c4a9c17:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    1d2b7c4a9c21:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    1d2b7c4a9c26:	7a 06                                           	jp     0x1d2b7c4a9c2e
    1d2b7c4a9c28:	0f 84 2a 00 00 00                               	je     0x1d2b7c4a9c58
    1d2b7c4a9c2e:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c4a9c32:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    1d2b7c4a9c37:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    1d2b7c4a9c3b:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    1d2b7c4a9c3f:	0f 86 49 00 00 00                               	jbe    0x1d2b7c4a9c8e
    1d2b7c4a9c45:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4a9c49:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4a9c4e:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4a9c53:	e9 5b 00 00 00                                  	jmp    0x1d2b7c4a9cb3
    1d2b7c4a9c58:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4a9c5c:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4a9c61:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4a9c66:	e9 44 00 00 00                                  	jmp    0x1d2b7c4a9caf
    1d2b7c4a9c6b:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c4a9c75:	4c 8b 15 ea dc ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdcea]        # 0x1d2b7c4a7966
    1d2b7c4a9c7c:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4a9c81:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    1d2b7c4a9c85:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a9c89:	e8 2a 49 f1 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4a9c8e:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4a9c92:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4a9c97:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4a9c9c:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    1d2b7c4a9ca0:	0f 87 09 00 00 00                               	ja     0x1d2b7c4a9caf
    1d2b7c4a9ca6:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    1d2b7c4a9caa:	e9 04 00 00 00                                  	jmp    0x1d2b7c4a9cb3
    1d2b7c4a9caf:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4a9cb3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4a9cb6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4a9cba:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c4a9cc4:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    1d2b7c4a9cc8:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    1d2b7c4a9ccc:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    1d2b7c4a9cd6:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    1d2b7c4a9cdb:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    1d2b7c4a9ce5:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c4a9cef:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    1d2b7c4a9cf9:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    1d2b7c4a9cfe:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    1d2b7c4a9d08:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c4a9d12:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    1d2b7c4a9d1c:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    1d2b7c4a9d21:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    1d2b7c4a9d2b:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c4a9d2f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4a9d33:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c4a9d38:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    1d2b7c4a9d42:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4a9d46:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4a9d49:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    1d2b7c4a9d4f:	8b 8d e0 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x320]
    1d2b7c4a9d55:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    1d2b7c4a9d5d:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    1d2b7c4a9d61:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    1d2b7c4a9d65:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    1d2b7c4a9d6a:	e8 f1 24 f1 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4a9d6f:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    1d2b7c4a9d73:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    1d2b7c4a9d77:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4a9d7b:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    1d2b7c4a9d82:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4a9d88:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4a9d8d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4a9d93:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4a9d99:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4a9d9d:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    1d2b7c4a9da4:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    1d2b7c4a9dab:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4a9db2:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    1d2b7c4a9db9:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    1d2b7c4a9dc0:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4a9dc8:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    1d2b7c4a9dd0:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4a9dd8:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4a9de0:	c5 7b 10 8d 70 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x190]
    1d2b7c4a9de8:	e9 09 00 00 00                                  	jmp    0x1d2b7c4a9df6
    1d2b7c4a9ded:	48 8b c1                                        	mov    rax,rcx
    1d2b7c4a9df0:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4a9df6:	f6 85 b0 fd ff ff 04                            	test   BYTE PTR [rbp-0x250],0x4
    1d2b7c4a9dfd:	0f 85 08 00 00 00                               	jne    0x1d2b7c4a9e0b
    1d2b7c4a9e03:	48 8b ce                                        	mov    rcx,rsi
    1d2b7c4a9e06:	e9 48 0a 00 00                                  	jmp    0x1d2b7c4aa853
    1d2b7c4a9e0b:	43 8b 9c 23 c8 3c 00 00                         	mov    ebx,DWORD PTR [r11+r12*1+0x3cc8]
    1d2b7c4a9e13:	43 83 bc 23 c8 3c 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0x3cc8],0x0
    1d2b7c4a9e1c:	0f 84 4d 00 00 00                               	je     0x1d2b7c4a9e6f
    1d2b7c4a9e22:	41 8b d8                                        	mov    ebx,r8d
    1d2b7c4a9e25:	c1 eb 03                                        	shr    ebx,0x3
    1d2b7c4a9e28:	83 e3 03                                        	and    ebx,0x3
    1d2b7c4a9e2b:	0b 9d 48 fc ff ff                               	or     ebx,DWORD PTR [rbp-0x3b8]
    1d2b7c4a9e31:	44 8b 85 88 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x178]
    1d2b7c4a9e38:	41 03 d8                                        	add    ebx,r8d
    1d2b7c4a9e3b:	41 0f b6 1c 1b                                  	movzx  ebx,BYTE PTR [r11+rbx*1]
    1d2b7c4a9e40:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4a9e44:	41 83 e0 07                                     	and    r8d,0x7
    1d2b7c4a9e48:	44 8b d1                                        	mov    r10d,ecx
    1d2b7c4a9e4b:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4a9e4e:	45 8b c2                                        	mov    r8d,r10d
    1d2b7c4a9e51:	d3 e3                                           	shl    ebx,cl
    1d2b7c4a9e53:	f6 c3 80                                        	test   bl,0x80
    1d2b7c4a9e56:	0f 85 0c 00 00 00                               	jne    0x1d2b7c4a9e68
    1d2b7c4a9e5c:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4a9e60:	48 8b ce                                        	mov    rcx,rsi
    1d2b7c4a9e63:	e9 eb 09 00 00                                  	jmp    0x1d2b7c4aa853
    1d2b7c4a9e68:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4a9e6b:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4a9e6f:	48 8b 5d 88                                     	mov    rbx,QWORD PTR [rbp-0x78]
    1d2b7c4a9e73:	48 8d 0c 1a                                     	lea    rcx,[rdx+rbx*1]
    1d2b7c4a9e77:	c4 e1 82 2a f1                                  	vcvtsi2ss xmm6,xmm15,rcx
    1d2b7c4a9e7c:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    1d2b7c4a9e80:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    1d2b7c4a9e84:	48 8b ce                                        	mov    rcx,rsi
    1d2b7c4a9e87:	4a 8d 34 09                                     	lea    rsi,[rcx+r9*1]
    1d2b7c4a9e8b:	c4 61 82 2a de                                  	vcvtsi2ss xmm11,xmm15,rsi
    1d2b7c4a9e90:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    1d2b7c4a9e95:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    1d2b7c4a9e9a:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    1d2b7c4a9e9e:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    1d2b7c4a9ea2:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    1d2b7c4a9ea7:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    1d2b7c4a9eac:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    1d2b7c4a9eb0:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    1d2b7c4a9eb5:	0f 83 98 09 00 00                               	jae    0x1d2b7c4aa853
    1d2b7c4a9ebb:	c4 01 0a 59 74 3b 18                            	vmulss xmm14,xmm14,DWORD PTR [r11+r15*1+0x18]
    1d2b7c4a9ec2:	c4 c1 4a 59 74 3b 18                            	vmulss xmm6,xmm6,DWORD PTR [r11+rdi*1+0x18]
    1d2b7c4a9ec9:	c4 41 22 59 5c 03 18                            	vmulss xmm11,xmm11,DWORD PTR [r11+rax*1+0x18]
    1d2b7c4a9ed0:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    1d2b7c4a9ed5:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    1d2b7c4a9ed9:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    1d2b7c4a9edd:	43 8b 74 23 68                                  	mov    esi,DWORD PTR [r11+r12*1+0x68]
    1d2b7c4a9ee2:	43 83 7c 23 68 00                               	cmp    DWORD PTR [r11+r12*1+0x68],0x0
    1d2b7c4a9ee8:	0f 84 c7 00 00 00                               	je     0x1d2b7c4a9fb5
    1d2b7c4a9eee:	43 8b b4 23 a4 00 00 00                         	mov    esi,DWORD PTR [r11+r12*1+0xa4]
    1d2b7c4a9ef6:	43 83 bc 23 a4 00 00 00 00                      	cmp    DWORD PTR [r11+r12*1+0xa4],0x0
    1d2b7c4a9eff:	0f 85 b0 00 00 00                               	jne    0x1d2b7c4a9fb5
    1d2b7c4a9f05:	43 8b 74 23 0c                                  	mov    esi,DWORD PTR [r11+r12*1+0xc]
    1d2b7c4a9f0a:	43 8b 1c 23                                     	mov    ebx,DWORD PTR [r11+r12*1]
    1d2b7c4a9f0e:	0f af 9d 50 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xb0]
    1d2b7c4a9f15:	8d 1c 9e                                        	lea    ebx,[rsi+rbx*4]
    1d2b7c4a9f18:	42 8d 1c 83                                     	lea    ebx,[rbx+r8*4]
    1d2b7c4a9f1c:	c4 41 7a 10 1c 1b                               	vmovss xmm11,DWORD PTR [r11+rbx*1]
    1d2b7c4a9f22:	43 8b 5c 23 6c                                  	mov    ebx,DWORD PTR [r11+r12*1+0x6c]
    1d2b7c4a9f27:	81 eb 00 02 00 00                               	sub    ebx,0x200
    1d2b7c4a9f2d:	83 fb 08                                        	cmp    ebx,0x8
    1d2b7c4a9f30:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4a9f41
    1d2b7c4a9f36:	4c 8d 15 03 71 00 00                            	lea    r10,[rip+0x7103]        # 0x1d2b7c4b1040
    1d2b7c4a9f3d:	41 ff 24 da                                     	jmp    QWORD PTR [r10+rbx*8]
    1d2b7c4a9f41:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4a9f45:	0f 87 6a 00 00 00                               	ja     0x1d2b7c4a9fb5
    1d2b7c4a9f4b:	e9 03 09 00 00                                  	jmp    0x1d2b7c4aa853
    1d2b7c4a9f50:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4a9f55:	0f 83 5a 00 00 00                               	jae    0x1d2b7c4a9fb5
    1d2b7c4a9f5b:	e9 f3 08 00 00                                  	jmp    0x1d2b7c4aa853
    1d2b7c4a9f60:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4a9f65:	0f 8a 4a 00 00 00                               	jp     0x1d2b7c4a9fb5
    1d2b7c4a9f6b:	0f 84 e2 08 00 00                               	je     0x1d2b7c4aa853
    1d2b7c4a9f71:	e9 3f 00 00 00                                  	jmp    0x1d2b7c4a9fb5
    1d2b7c4a9f76:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4a9f7b:	0f 87 34 00 00 00                               	ja     0x1d2b7c4a9fb5
    1d2b7c4a9f81:	e9 cd 08 00 00                                  	jmp    0x1d2b7c4aa853
    1d2b7c4a9f86:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4a9f8a:	0f 83 25 00 00 00                               	jae    0x1d2b7c4a9fb5
    1d2b7c4a9f90:	e9 be 08 00 00                                  	jmp    0x1d2b7c4aa853
    1d2b7c4a9f95:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4a9f9a:	0f 8a b3 08 00 00                               	jp     0x1d2b7c4aa853
    1d2b7c4a9fa0:	0f 84 0f 00 00 00                               	je     0x1d2b7c4a9fb5
    1d2b7c4a9fa6:	e9 a8 08 00 00                                  	jmp    0x1d2b7c4aa853
    1d2b7c4a9fab:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4a9faf:	0f 86 9e 08 00 00                               	jbe    0x1d2b7c4aa853
    1d2b7c4a9fb5:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    1d2b7c4a9fba:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    1d2b7c4a9fbf:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    1d2b7c4a9fc4:	c4 01 7a 6f 74 3b 20                            	vmovdqu xmm14,XMMWORD PTR [r11+r15*1+0x20]
    1d2b7c4a9fcb:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    1d2b7c4a9fd0:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    1d2b7c4a9fd4:	c4 c1 7a 6f 6c 3b 20                            	vmovdqu xmm5,XMMWORD PTR [r11+rdi*1+0x20]
    1d2b7c4a9fdb:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c4a9fe0:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    1d2b7c4a9fe4:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    1d2b7c4a9fe9:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    1d2b7c4a9ff1:	c4 c1 7a 6f 74 03 20                            	vmovdqu xmm6,XMMWORD PTR [r11+rax*1+0x20]
    1d2b7c4a9ff8:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    1d2b7c4a9ffc:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c4aa000:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    1d2b7c4aa004:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    1d2b7c4aa008:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    1d2b7c4aa00b:	c4 c1 7a 7f 84 1b 90 01 00 00                   	vmovdqu XMMWORD PTR [r11+rbx*1+0x190],xmm0
    1d2b7c4aa015:	c4 81 7a 10 b4 3b 98 00 00 00                   	vmovss xmm6,DWORD PTR [r11+r15*1+0x98]
    1d2b7c4aa01f:	c4 41 7a 10 ac 3b 98 00 00 00                   	vmovss xmm13,DWORD PTR [r11+rdi*1+0x98]
    1d2b7c4aa029:	c4 41 7a 10 b4 03 98 00 00 00                   	vmovss xmm14,DWORD PTR [r11+rax*1+0x98]
    1d2b7c4aa033:	c4 c1 7a 7f 04 1b                               	vmovdqu XMMWORD PTR [r11+rbx*1],xmm0
    1d2b7c4aa039:	48 8b b5 a8 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x258]
    1d2b7c4aa040:	41 8b bc 33 34 01 00 00                         	mov    edi,DWORD PTR [r11+rsi*1+0x134]
    1d2b7c4aa048:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    1d2b7c4aa04c:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    1d2b7c4aa054:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    1d2b7c4aa05c:	c5 fb 11 9d f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm3
    1d2b7c4aa064:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    1d2b7c4aa06c:	c5 fb 11 b5 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm6
    1d2b7c4aa074:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    1d2b7c4aa07c:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    1d2b7c4aa084:	41 83 f8 01                                     	cmp    r8d,0x1
    1d2b7c4aa088:	0f 86 4b 04 00 00                               	jbe    0x1d2b7c4aa4d9
    1d2b7c4aa08e:	41 8b bc 33 30 01 00 00                         	mov    edi,DWORD PTR [r11+rsi*1+0x130]
    1d2b7c4aa096:	41 83 bc 33 30 01 00 00 00                      	cmp    DWORD PTR [r11+rsi*1+0x130],0x0
    1d2b7c4aa09f:	0f 85 0d 00 00 00                               	jne    0x1d2b7c4aa0b2
    1d2b7c4aa0a5:	8b cb                                           	mov    ecx,ebx
    1d2b7c4aa0a7:	4d 8b c3                                        	mov    r8,r11
    1d2b7c4aa0aa:	48 8b fe                                        	mov    rdi,rsi
    1d2b7c4aa0ad:	e9 e1 04 00 00                                  	jmp    0x1d2b7c4aa593
    1d2b7c4aa0b2:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    1d2b7c4aa0b8:	44 8d 43 70                                     	lea    r8d,[rbx+0x70]
    1d2b7c4aa0bc:	41 50                                           	push   r8
    1d2b7c4aa0be:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
    1d2b7c4aa0c5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa0c9:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4aa0cc:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    1d2b7c4aa0d2:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    1d2b7c4aa0d8:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    1d2b7c4aa0de:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c4aa0e3:	44 8b cf                                        	mov    r9d,edi
    1d2b7c4aa0e6:	e8 2d 21 f1 ff                                  	call   0x1d2b7c3bc218
    1d2b7c4aa0eb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aa0ef:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aa0f6:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    1d2b7c4aa0fe:	45 85 db                                        	test   r11d,r11d
    1d2b7c4aa101:	0f 85 61 01 00 00                               	jne    0x1d2b7c4aa268
    1d2b7c4aa107:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aa10a:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    1d2b7c4aa10f:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    1d2b7c4aa115:	0f 84 43 00 00 00                               	je     0x1d2b7c4aa15e
    1d2b7c4aa11b:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4aa121:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4aa125:	41 53                                           	push   r11
    1d2b7c4aa127:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa12b:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    1d2b7c4aa131:	33 d2                                           	xor    edx,edx
    1d2b7c4aa133:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    1d2b7c4aa13a:	e8 01 21 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4aa13f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aa142:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aa146:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4aa14d:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aa157:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aa15e:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    1d2b7c4aa163:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    1d2b7c4aa169:	0f 84 46 00 00 00                               	je     0x1d2b7c4aa1b5
    1d2b7c4aa16f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4aa175:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4aa179:	41 53                                           	push   r11
    1d2b7c4aa17b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa17f:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    1d2b7c4aa185:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c4aa18a:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    1d2b7c4aa191:	e8 aa 20 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4aa196:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aa199:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aa19d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4aa1a4:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aa1ae:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aa1b5:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    1d2b7c4aa1ba:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    1d2b7c4aa1c0:	0f 84 46 00 00 00                               	je     0x1d2b7c4aa20c
    1d2b7c4aa1c6:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4aa1cc:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4aa1d0:	41 53                                           	push   r11
    1d2b7c4aa1d2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa1d6:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    1d2b7c4aa1dc:	ba 02 00 00 00                                  	mov    edx,0x2
    1d2b7c4aa1e1:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    1d2b7c4aa1e8:	e8 53 20 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4aa1ed:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aa1f0:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aa1f4:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4aa1fb:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aa205:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aa20c:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    1d2b7c4aa211:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    1d2b7c4aa217:	0f 84 76 03 00 00                               	je     0x1d2b7c4aa593
    1d2b7c4aa21d:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4aa223:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4aa227:	41 53                                           	push   r11
    1d2b7c4aa229:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa22d:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    1d2b7c4aa233:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c4aa238:	44 8b 8d a0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x160]
    1d2b7c4aa23f:	e8 fc 1f f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4aa244:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aa247:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aa24b:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4aa252:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aa25c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aa263:	e9 2b 03 00 00                                  	jmp    0x1d2b7c4aa593
    1d2b7c4aa268:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aa26b:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    1d2b7c4aa275:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    1d2b7c4aa27b:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c4aa280:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4aa284:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    1d2b7c4aa28b:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c4aa28f:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c4aa293:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    1d2b7c4aa29d:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c4aa2a1:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    1d2b7c4aa2a7:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c4aa2ab:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    1d2b7c4aa2b0:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    1d2b7c4aa2ba:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c4aa2be:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    1d2b7c4aa2c5:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    1d2b7c4aa2c9:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    1d2b7c4aa2cd:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    1d2b7c4aa2d1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4aa2d5:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    1d2b7c4aa2db:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c4aa2e0:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    1d2b7c4aa2e4:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4aa2e8:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4aa2ed:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4aa2f2:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    1d2b7c4aa2f6:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aa305
    1d2b7c4aa2fc:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4aa300:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aa309
    1d2b7c4aa305:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4aa309:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c4aa30e:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c4aa312:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aa321
    1d2b7c4aa318:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c4aa31c:	e9 05 00 00 00                                  	jmp    0x1d2b7c4aa326
    1d2b7c4aa321:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4aa326:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c4aa32b:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c4aa32f:	0f 84 a1 00 00 00                               	je     0x1d2b7c4aa3d6
    1d2b7c4aa335:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    1d2b7c4aa339:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    1d2b7c4aa343:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4aa347:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aa356
    1d2b7c4aa34d:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4aa351:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aa35a
    1d2b7c4aa356:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4aa35a:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4aa35e:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4aa36e
    1d2b7c4aa364:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4aa369:	e9 05 00 00 00                                  	jmp    0x1d2b7c4aa373
    1d2b7c4aa36e:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4aa373:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    1d2b7c4aa377:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4aa37c:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4aa381:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4aa385:	4c 8b 15 c1 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeac1]        # 0x1d2b7c4a8e4d
    1d2b7c4aa38c:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4aa391:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4aa396:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c4aa39a:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    1d2b7c4aa3a4:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c4aa3a8:	0f 85 04 00 00 00                               	jne    0x1d2b7c4aa3b2
    1d2b7c4aa3ae:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    1d2b7c4aa3b2:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c4aa3b7:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4aa3bb:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c4aa3bf:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    1d2b7c4aa3c9:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4aa3ce:	4d 8b dc                                        	mov    r11,r12
    1d2b7c4aa3d1:	e9 cc 00 00 00                                  	jmp    0x1d2b7c4aa4a2
    1d2b7c4aa3d6:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    1d2b7c4aa3dd:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4aa3e1:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aa3f0
    1d2b7c4aa3e7:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4aa3eb:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aa3f4
    1d2b7c4aa3f0:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4aa3f4:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4aa3f8:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4aa408
    1d2b7c4aa3fe:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4aa403:	e9 05 00 00 00                                  	jmp    0x1d2b7c4aa40d
    1d2b7c4aa408:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4aa40d:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    1d2b7c4aa417:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    1d2b7c4aa41d:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    1d2b7c4aa422:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4aa426:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aa435
    1d2b7c4aa42c:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c4aa430:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aa439
    1d2b7c4aa435:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c4aa439:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4aa43d:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4aa44d
    1d2b7c4aa443:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c4aa448:	e9 05 00 00 00                                  	jmp    0x1d2b7c4aa452
    1d2b7c4aa44d:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4aa452:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    1d2b7c4aa45c:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4aa461:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4aa465:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    1d2b7c4aa46f:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c4aa474:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4aa479:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c4aa47d:	4c 8b 15 c9 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9c9]        # 0x1d2b7c4a8e4d
    1d2b7c4aa484:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c4aa489:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c4aa48e:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c4aa492:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c4aa496:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c4aa49a:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c4aa49e:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c4aa4a2:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4aa4a7:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4aa4ab:	4c 8b 15 9b e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe99b]        # 0x1d2b7c4a8e4d
    1d2b7c4aa4b2:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4aa4b7:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4aa4bc:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    1d2b7c4aa4c0:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aa4ca:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    1d2b7c4aa4d4:	e9 ba 00 00 00                                  	jmp    0x1d2b7c4aa593
    1d2b7c4aa4d9:	4d 8b c7                                        	mov    r8,r15
    1d2b7c4aa4dc:	c4 81 7a 10 44 03 50                            	vmovss xmm0,DWORD PTR [r11+r8*1+0x50]
    1d2b7c4aa4e3:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    1d2b7c4aa4e7:	4c 8b bd 40 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1c0]
    1d2b7c4aa4ee:	c4 81 7a 10 6c 3b 50                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x50]
    1d2b7c4aa4f5:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c4aa4f9:	c4 c1 6a 59 74 03 50                            	vmulss xmm6,xmm2,DWORD PTR [r11+rax*1+0x50]
    1d2b7c4aa500:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    1d2b7c4aa504:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4aa508:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    1d2b7c4aa50d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4aa511:	c4 01 7a 10 5c 03 54                            	vmovss xmm11,DWORD PTR [r11+r8*1+0x54]
    1d2b7c4aa518:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    1d2b7c4aa51c:	c4 81 7a 10 6c 3b 54                            	vmovss xmm5,DWORD PTR [r11+r15*1+0x54]
    1d2b7c4aa523:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c4aa527:	c5 fb 11 85 a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm0
    1d2b7c4aa52f:	c4 c1 6a 59 44 03 54                            	vmulss xmm0,xmm2,DWORD PTR [r11+rax*1+0x54]
    1d2b7c4aa536:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    1d2b7c4aa53a:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    1d2b7c4aa53e:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4aa542:	48 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rdi
    1d2b7c4aa549:	8d bb 90 00 00 00                               	lea    edi,[rbx+0x90]
    1d2b7c4aa54f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa553:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4aa556:	8b 95 d8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x228]
    1d2b7c4aa55c:	c5 fb 10 8d a0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x160]
    1d2b7c4aa564:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    1d2b7c4aa568:	8b cb                                           	mov    ecx,ebx
    1d2b7c4aa56a:	8b df                                           	mov    ebx,edi
    1d2b7c4aa56c:	e8 bf 1f f1 ff                                  	call   0x1d2b7c3bc530
    1d2b7c4aa571:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aa574:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aa578:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    1d2b7c4aa582:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aa58c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aa593:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4aa597:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    1d2b7c4aa59f:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    1d2b7c4aa5a8:	0f 85 2a 00 00 00                               	jne    0x1d2b7c4aa5d8
    1d2b7c4aa5ae:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c4aa5b8:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c4aa5c2:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c4aa5cc:	49 8b fb                                        	mov    rdi,r11
    1d2b7c4aa5cf:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c4aa5d3:	e9 d4 01 00 00                                  	jmp    0x1d2b7c4aa7ac
    1d2b7c4aa5d8:	c5 fb 10 85 80 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x180]
    1d2b7c4aa5e0:	c5 fa 59 85 f0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x210]
    1d2b7c4aa5e8:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    1d2b7c4aa5f0:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    1d2b7c4aa5f8:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    1d2b7c4aa600:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    1d2b7c4aa608:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c4aa60c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4aa610:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    1d2b7c4aa618:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4aa61c:	4c 8b 15 43 d3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd343]        # 0x1d2b7c4a7966
    1d2b7c4aa623:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4aa628:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    1d2b7c4aa62c:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c4aa630:	0f 87 04 00 00 00                               	ja     0x1d2b7c4aa63a
    1d2b7c4aa636:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c4aa63a:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    1d2b7c4aa642:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    1d2b7c4aa649:	0f 85 28 00 00 00                               	jne    0x1d2b7c4aa677
    1d2b7c4aa64f:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c4aa659:	4c 8b 15 06 d3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd306]        # 0x1d2b7c4a7966
    1d2b7c4aa660:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4aa665:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    1d2b7c4aa669:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa66d:	e8 46 3f f1 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4aa672:	e9 8b 00 00 00                                  	jmp    0x1d2b7c4aa702
    1d2b7c4aa677:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c4aa67b:	0f 84 5e 00 00 00                               	je     0x1d2b7c4aa6df
    1d2b7c4aa681:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    1d2b7c4aa68b:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    1d2b7c4aa695:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    1d2b7c4aa69a:	7a 06                                           	jp     0x1d2b7c4aa6a2
    1d2b7c4aa69c:	0f 84 2a 00 00 00                               	je     0x1d2b7c4aa6cc
    1d2b7c4aa6a2:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c4aa6a6:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    1d2b7c4aa6ab:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    1d2b7c4aa6af:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    1d2b7c4aa6b3:	0f 86 49 00 00 00                               	jbe    0x1d2b7c4aa702
    1d2b7c4aa6b9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4aa6bd:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4aa6c2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4aa6c7:	e9 5b 00 00 00                                  	jmp    0x1d2b7c4aa727
    1d2b7c4aa6cc:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4aa6d0:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4aa6d5:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4aa6da:	e9 44 00 00 00                                  	jmp    0x1d2b7c4aa723
    1d2b7c4aa6df:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c4aa6e9:	4c 8b 15 76 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd276]        # 0x1d2b7c4a7966
    1d2b7c4aa6f0:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4aa6f5:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    1d2b7c4aa6f9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa6fd:	e8 b6 3e f1 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4aa702:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4aa706:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4aa70b:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4aa710:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    1d2b7c4aa714:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aa723
    1d2b7c4aa71a:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    1d2b7c4aa71e:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aa727
    1d2b7c4aa723:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4aa727:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aa72a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aa72e:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c4aa738:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    1d2b7c4aa73c:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    1d2b7c4aa740:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    1d2b7c4aa74a:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    1d2b7c4aa74f:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    1d2b7c4aa759:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c4aa763:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    1d2b7c4aa76d:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    1d2b7c4aa772:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    1d2b7c4aa77c:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c4aa786:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    1d2b7c4aa790:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    1d2b7c4aa795:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    1d2b7c4aa79f:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c4aa7a3:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4aa7a7:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c4aa7ac:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    1d2b7c4aa7b6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aa7ba:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4aa7bd:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    1d2b7c4aa7c0:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    1d2b7c4aa7c6:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    1d2b7c4aa7ce:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    1d2b7c4aa7d2:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    1d2b7c4aa7d6:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    1d2b7c4aa7db:	e8 80 1a f1 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4aa7e0:	4c 8b 5d d8                                     	mov    r11,QWORD PTR [rbp-0x28]
    1d2b7c4aa7e4:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    1d2b7c4aa7e8:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4aa7ec:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    1d2b7c4aa7f3:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4aa7f8:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4aa7fe:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4aa804:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4aa808:	4c 8b bd 58 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1a8]
    1d2b7c4aa80f:	48 8b 85 48 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x1b8]
    1d2b7c4aa816:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4aa81d:	48 8b 8d a0 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x260]
    1d2b7c4aa824:	48 8b 95 30 fd ff ff                            	mov    rdx,QWORD PTR [rbp-0x2d0]
    1d2b7c4aa82b:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4aa833:	c5 fb 10 bd 58 fc ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x3a8]
    1d2b7c4aa83b:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4aa843:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4aa84b:	c5 7b 10 8d 70 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x190]
    1d2b7c4aa853:	f6 85 b0 fd ff ff 08                            	test   BYTE PTR [rbp-0x250],0x8
    1d2b7c4aa85a:	0f 85 1b 00 00 00                               	jne    0x1d2b7c4aa87b
    1d2b7c4aa860:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4aa865:	49 8b f3                                        	mov    rsi,r11
    1d2b7c4aa868:	4d 8b dc                                        	mov    r11,r12
    1d2b7c4aa86b:	4d 8b e7                                        	mov    r12,r15
    1d2b7c4aa86e:	4c 8b f8                                        	mov    r15,rax
    1d2b7c4aa871:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    1d2b7c4aa876:	e9 fd 61 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4aa87b:	49 8b f3                                        	mov    rsi,r11
    1d2b7c4aa87e:	4d 8b dc                                        	mov    r11,r12
    1d2b7c4aa881:	46 8b a4 1e c8 3c 00 00                         	mov    r12d,DWORD PTR [rsi+r11*1+0x3cc8]
    1d2b7c4aa889:	42 83 bc 1e c8 3c 00 00 00                      	cmp    DWORD PTR [rsi+r11*1+0x3cc8],0x0
    1d2b7c4aa892:	0f 84 5d 00 00 00                               	je     0x1d2b7c4aa8f5
    1d2b7c4aa898:	44 8b a5 58 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0xa8]
    1d2b7c4aa89f:	41 c1 ec 03                                     	shr    r12d,0x3
    1d2b7c4aa8a3:	41 83 e4 03                                     	and    r12d,0x3
    1d2b7c4aa8a7:	8b 9d 48 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3b8]
    1d2b7c4aa8ad:	41 0b dc                                        	or     ebx,r12d
    1d2b7c4aa8b0:	44 8b a5 88 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x178]
    1d2b7c4aa8b7:	41 03 dc                                        	add    ebx,r12d
    1d2b7c4aa8ba:	0f b6 1c 1e                                     	movzx  ebx,BYTE PTR [rsi+rbx*1]
    1d2b7c4aa8be:	44 8b 85 58 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xa8]
    1d2b7c4aa8c5:	41 83 e0 07                                     	and    r8d,0x7
    1d2b7c4aa8c9:	4c 8b d1                                        	mov    r10,rcx
    1d2b7c4aa8cc:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4aa8cf:	4d 8b c2                                        	mov    r8,r10
    1d2b7c4aa8d2:	d3 e3                                           	shl    ebx,cl
    1d2b7c4aa8d4:	f6 c3 80                                        	test   bl,0x80
    1d2b7c4aa8d7:	0f 85 15 00 00 00                               	jne    0x1d2b7c4aa8f2
    1d2b7c4aa8dd:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4aa8e2:	4d 8b e7                                        	mov    r12,r15
    1d2b7c4aa8e5:	4c 8b f8                                        	mov    r15,rax
    1d2b7c4aa8e8:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    1d2b7c4aa8ed:	e9 86 61 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4aa8f2:	49 8b c8                                        	mov    rcx,r8
    1d2b7c4aa8f5:	4c 8b 65 88                                     	mov    r12,QWORD PTR [rbp-0x78]
    1d2b7c4aa8f9:	48 8b 9d 78 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x188]
    1d2b7c4aa900:	4e 8d 04 23                                     	lea    r8,[rbx+r12*1]
    1d2b7c4aa904:	c4 c1 82 2a f0                                  	vcvtsi2ss xmm6,xmm15,r8
    1d2b7c4aa909:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    1d2b7c4aa90d:	c5 b2 59 ce                                     	vmulss xmm1,xmm9,xmm6
    1d2b7c4aa911:	4c 8b 85 50 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1b0]
    1d2b7c4aa918:	4f 8d 24 08                                     	lea    r12,[r8+r9*1]
    1d2b7c4aa91c:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    1d2b7c4aa921:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    1d2b7c4aa926:	c4 c1 1a 59 d3                                  	vmulss xmm2,xmm12,xmm11
    1d2b7c4aa92b:	c5 72 58 ea                                     	vaddss xmm13,xmm1,xmm2
    1d2b7c4aa92f:	c5 3a 5c f6                                     	vsubss xmm14,xmm8,xmm6
    1d2b7c4aa933:	c4 41 0a 5c f3                                  	vsubss xmm14,xmm14,xmm11
    1d2b7c4aa938:	c4 c1 2a 59 de                                  	vmulss xmm3,xmm10,xmm14
    1d2b7c4aa93d:	c5 12 58 eb                                     	vaddss xmm13,xmm13,xmm3
    1d2b7c4aa941:	c4 c1 78 2e e5                                  	vucomiss xmm4,xmm13
    1d2b7c4aa946:	73 95                                           	jae    0x1d2b7c4aa8dd
    1d2b7c4aa948:	4d 8b e7                                        	mov    r12,r15
    1d2b7c4aa94b:	c4 21 0a 59 74 26 18                            	vmulss xmm14,xmm14,DWORD PTR [rsi+r12*1+0x18]
    1d2b7c4aa952:	c5 ca 59 74 3e 18                               	vmulss xmm6,xmm6,DWORD PTR [rsi+rdi*1+0x18]
    1d2b7c4aa958:	4c 8b f8                                        	mov    r15,rax
    1d2b7c4aa95b:	c4 21 22 59 5c 3e 18                            	vmulss xmm11,xmm11,DWORD PTR [rsi+r15*1+0x18]
    1d2b7c4aa962:	c4 c1 4a 58 f3                                  	vaddss xmm6,xmm6,xmm11
    1d2b7c4aa967:	c5 8a 58 f6                                     	vaddss xmm6,xmm14,xmm6
    1d2b7c4aa96b:	c5 fa 58 f6                                     	vaddss xmm6,xmm0,xmm6
    1d2b7c4aa96f:	42 8b 44 1e 68                                  	mov    eax,DWORD PTR [rsi+r11*1+0x68]
    1d2b7c4aa974:	42 83 7c 1e 68 00                               	cmp    DWORD PTR [rsi+r11*1+0x68],0x0
    1d2b7c4aa97a:	0f 85 0b 00 00 00                               	jne    0x1d2b7c4aa98b
    1d2b7c4aa980:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    1d2b7c4aa986:	e9 f4 00 00 00                                  	jmp    0x1d2b7c4aaa7f
    1d2b7c4aa98b:	42 8b 84 1e a4 00 00 00                         	mov    eax,DWORD PTR [rsi+r11*1+0xa4]
    1d2b7c4aa993:	42 83 bc 1e a4 00 00 00 00                      	cmp    DWORD PTR [rsi+r11*1+0xa4],0x0
    1d2b7c4aa99c:	75 e2                                           	jne    0x1d2b7c4aa980
    1d2b7c4aa99e:	42 8b 44 1e 0c                                  	mov    eax,DWORD PTR [rsi+r11*1+0xc]
    1d2b7c4aa9a3:	46 8b 04 1e                                     	mov    r8d,DWORD PTR [rsi+r11*1]
    1d2b7c4aa9a7:	44 0f af 85 50 ff ff ff                         	imul   r8d,DWORD PTR [rbp-0xb0]
    1d2b7c4aa9af:	46 8d 04 80                                     	lea    r8d,[rax+r8*4]
    1d2b7c4aa9b3:	8b 85 58 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xa8]
    1d2b7c4aa9b9:	45 8d 04 80                                     	lea    r8d,[r8+rax*4]
    1d2b7c4aa9bd:	c4 21 7a 10 1c 06                               	vmovss xmm11,DWORD PTR [rsi+r8*1]
    1d2b7c4aa9c3:	46 8b 44 1e 6c                                  	mov    r8d,DWORD PTR [rsi+r11*1+0x6c]
    1d2b7c4aa9c8:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    1d2b7c4aa9cf:	41 83 f8 08                                     	cmp    r8d,0x8
    1d2b7c4aa9d3:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4aa9e4
    1d2b7c4aa9d9:	4c 8d 15 20 66 00 00                            	lea    r10,[rip+0x6620]        # 0x1d2b7c4b1000
    1d2b7c4aa9e0:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    1d2b7c4aa9e4:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4aa9e8:	0f 87 91 00 00 00                               	ja     0x1d2b7c4aaa7f
    1d2b7c4aa9ee:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4aa9f3:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    1d2b7c4aa9f8:	e9 7b 60 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4aa9fd:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4aaa02:	0f 83 77 00 00 00                               	jae    0x1d2b7c4aaa7f
    1d2b7c4aaa08:	eb e4                                           	jmp    0x1d2b7c4aa9ee
    1d2b7c4aaa0a:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4aaa0f:	0f 8a 6a 00 00 00                               	jp     0x1d2b7c4aaa7f
    1d2b7c4aaa15:	74 d7                                           	je     0x1d2b7c4aa9ee
    1d2b7c4aaa17:	e9 63 00 00 00                                  	jmp    0x1d2b7c4aaa7f
    1d2b7c4aaa1c:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4aaa21:	0f 87 58 00 00 00                               	ja     0x1d2b7c4aaa7f
    1d2b7c4aaa27:	eb c5                                           	jmp    0x1d2b7c4aa9ee
    1d2b7c4aaa29:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4aaa2d:	0f 83 4c 00 00 00                               	jae    0x1d2b7c4aaa7f
    1d2b7c4aaa33:	eb b9                                           	jmp    0x1d2b7c4aa9ee
    1d2b7c4aaa35:	c4 c1 78 2e f3                                  	vucomiss xmm6,xmm11
    1d2b7c4aaa3a:	7a b2                                           	jp     0x1d2b7c4aa9ee
    1d2b7c4aaa3c:	0f 84 3d 00 00 00                               	je     0x1d2b7c4aaa7f
    1d2b7c4aaa42:	eb aa                                           	jmp    0x1d2b7c4aa9ee
    1d2b7c4aaa44:	c5 78 2e de                                     	vucomiss xmm11,xmm6
    1d2b7c4aaa48:	0f 87 31 00 00 00                               	ja     0x1d2b7c4aaa7f
    1d2b7c4aaa4e:	eb 9e                                           	jmp    0x1d2b7c4aa9ee
    1d2b7c4aaa50:	48 c7 85 a8 fe ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0x158],0x1
    1d2b7c4aaa5b:	48 c7 85 38 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xc8],0x1
    1d2b7c4aaa66:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4aaa6a:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    1d2b7c4aaa6e:	48 8b f1                                        	mov    rsi,rcx
    1d2b7c4aaa71:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    1d2b7c4aaa75:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    1d2b7c4aaa7a:	e9 29 60 00 00                                  	jmp    0x1d2b7c4b0aa8
    1d2b7c4aaa7f:	c4 41 3a 5e dd                                  	vdivss xmm11,xmm8,xmm13
    1d2b7c4aaa84:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    1d2b7c4aaa89:	c4 42 79 18 eb                                  	vbroadcastss xmm13,xmm11
    1d2b7c4aaa8e:	c4 21 7a 6f 74 26 20                            	vmovdqu xmm14,XMMWORD PTR [rsi+r12*1+0x20]
    1d2b7c4aaa95:	c4 e2 79 18 eb                                  	vbroadcastss xmm5,xmm3
    1d2b7c4aaa9a:	c5 08 59 f5                                     	vmulps xmm14,xmm14,xmm5
    1d2b7c4aaa9e:	c5 fa 6f 6c 3e 20                               	vmovdqu xmm5,XMMWORD PTR [rsi+rdi*1+0x20]
    1d2b7c4aaaa4:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c4aaaa9:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    1d2b7c4aaaad:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    1d2b7c4aaab2:	c5 fb 11 b5 38 ff ff ff                         	vmovsd QWORD PTR [rbp-0xc8],xmm6
    1d2b7c4aaaba:	c4 a1 7a 6f 74 3e 20                            	vmovdqu xmm6,XMMWORD PTR [rsi+r15*1+0x20]
    1d2b7c4aaac1:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    1d2b7c4aaac5:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    1d2b7c4aaac9:	c5 88 58 c0                                     	vaddps xmm0,xmm14,xmm0
    1d2b7c4aaacd:	c5 90 59 c0                                     	vmulps xmm0,xmm13,xmm0
    1d2b7c4aaad1:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    1d2b7c4aaad5:	c4 a1 7a 7f 84 06 90 01 00 00                   	vmovdqu XMMWORD PTR [rsi+r8*1+0x190],xmm0
    1d2b7c4aaadf:	c4 a1 7a 10 b4 26 98 00 00 00                   	vmovss xmm6,DWORD PTR [rsi+r12*1+0x98]
    1d2b7c4aaae9:	c5 7a 10 ac 3e 98 00 00 00                      	vmovss xmm13,DWORD PTR [rsi+rdi*1+0x98]
    1d2b7c4aaaf2:	c4 21 7a 10 b4 3e 98 00 00 00                   	vmovss xmm14,DWORD PTR [rsi+r15*1+0x98]
    1d2b7c4aaafc:	c4 a1 7a 7f 04 06                               	vmovdqu XMMWORD PTR [rsi+r8*1],xmm0
    1d2b7c4aab02:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aab09:	44 8b 9c 3e 34 01 00 00                         	mov    r11d,DWORD PTR [rsi+rdi*1+0x134]
    1d2b7c4aab11:	45 8d 63 ff                                     	lea    r12d,[r11-0x1]
    1d2b7c4aab15:	c5 fb 11 95 28 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd8],xmm2
    1d2b7c4aab1d:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    1d2b7c4aab25:	c5 fb 11 9d 80 fe ff ff                         	vmovsd QWORD PTR [rbp-0x180],xmm3
    1d2b7c4aab2d:	c5 7b 11 9d 30 ff ff ff                         	vmovsd QWORD PTR [rbp-0xd0],xmm11
    1d2b7c4aab35:	c5 fb 11 b5 a0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x160],xmm6
    1d2b7c4aab3d:	c5 7b 11 ad 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm13
    1d2b7c4aab45:	c5 7b 11 b5 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm14
    1d2b7c4aab4d:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c4aab51:	0f 86 46 04 00 00                               	jbe    0x1d2b7c4aaf9d
    1d2b7c4aab57:	44 8b 9c 3e 30 01 00 00                         	mov    r11d,DWORD PTR [rsi+rdi*1+0x130]
    1d2b7c4aab5f:	83 bc 3e 30 01 00 00 00                         	cmp    DWORD PTR [rsi+rdi*1+0x130],0x0
    1d2b7c4aab67:	0f 85 0b 00 00 00                               	jne    0x1d2b7c4aab78
    1d2b7c4aab6d:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4aab70:	4c 8b c6                                        	mov    r8,rsi
    1d2b7c4aab73:	e9 db 04 00 00                                  	jmp    0x1d2b7c4ab053
    1d2b7c4aab78:	45 8d 98 90 00 00 00                            	lea    r11d,[r8+0x90]
    1d2b7c4aab7f:	45 8d 60 70                                     	lea    r12d,[r8+0x70]
    1d2b7c4aab83:	41 54                                           	push   r12
    1d2b7c4aab85:	4c 89 9d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r11
    1d2b7c4aab8c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aab90:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4aab93:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    1d2b7c4aab99:	8b 8d e8 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x218]
    1d2b7c4aab9f:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    1d2b7c4aaba5:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c4aabaa:	45 8b cb                                        	mov    r9d,r11d
    1d2b7c4aabad:	e8 66 16 f1 ff                                  	call   0x1d2b7c3bc218
    1d2b7c4aabb2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aabb6:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aabbd:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    1d2b7c4aabc5:	45 85 db                                        	test   r11d,r11d
    1d2b7c4aabc8:	0f 85 61 01 00 00                               	jne    0x1d2b7c4aad2f
    1d2b7c4aabce:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aabd1:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    1d2b7c4aabd6:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    1d2b7c4aabdc:	0f 84 43 00 00 00                               	je     0x1d2b7c4aac25
    1d2b7c4aabe2:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4aabe8:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4aabec:	41 53                                           	push   r11
    1d2b7c4aabee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aabf2:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    1d2b7c4aabf8:	33 d2                                           	xor    edx,edx
    1d2b7c4aabfa:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    1d2b7c4aac01:	e8 3a 16 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4aac06:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aac09:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aac0d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4aac14:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aac1e:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aac25:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    1d2b7c4aac2a:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    1d2b7c4aac30:	0f 84 46 00 00 00                               	je     0x1d2b7c4aac7c
    1d2b7c4aac36:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4aac3c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4aac40:	41 53                                           	push   r11
    1d2b7c4aac42:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aac46:	8b 85 80 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x380]
    1d2b7c4aac4c:	ba 01 00 00 00                                  	mov    edx,0x1
    1d2b7c4aac51:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    1d2b7c4aac58:	e8 e3 15 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4aac5d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aac60:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aac64:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4aac6b:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aac75:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aac7c:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    1d2b7c4aac81:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    1d2b7c4aac87:	0f 84 46 00 00 00                               	je     0x1d2b7c4aacd3
    1d2b7c4aac8d:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4aac93:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4aac97:	41 53                                           	push   r11
    1d2b7c4aac99:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aac9d:	8b 85 10 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f0]
    1d2b7c4aaca3:	ba 02 00 00 00                                  	mov    edx,0x2
    1d2b7c4aaca8:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    1d2b7c4aacaf:	e8 8c 15 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4aacb4:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aacb7:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aacbb:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4aacc2:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aaccc:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aacd3:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    1d2b7c4aacd8:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    1d2b7c4aacde:	0f 84 6f 03 00 00                               	je     0x1d2b7c4ab053
    1d2b7c4aace4:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    1d2b7c4aacea:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    1d2b7c4aacee:	41 53                                           	push   r11
    1d2b7c4aacf0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aacf4:	8b 85 a0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x360]
    1d2b7c4aacfa:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c4aacff:	44 8b 8d d8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x228]
    1d2b7c4aad06:	e8 35 15 f1 ff                                  	call   0x1d2b7c3bc240
    1d2b7c4aad0b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aad0e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4aad12:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    1d2b7c4aad19:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aad23:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4aad2a:	e9 24 03 00 00                                  	jmp    0x1d2b7c4ab053
    1d2b7c4aad2f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    1d2b7c4aad32:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    1d2b7c4aad3c:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    1d2b7c4aad42:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c4aad47:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4aad4b:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    1d2b7c4aad52:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c4aad56:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    1d2b7c4aad5a:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    1d2b7c4aad64:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    1d2b7c4aad68:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    1d2b7c4aad6e:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c4aad72:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    1d2b7c4aad77:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    1d2b7c4aad81:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    1d2b7c4aad85:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    1d2b7c4aad8c:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    1d2b7c4aad90:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    1d2b7c4aad94:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    1d2b7c4aad98:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4aad9c:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    1d2b7c4aada2:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    1d2b7c4aada7:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    1d2b7c4aadab:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4aadaf:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4aadb4:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4aadb9:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    1d2b7c4aadbd:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aadcc
    1d2b7c4aadc3:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4aadc7:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aadd0
    1d2b7c4aadcc:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4aadd0:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    1d2b7c4aadd5:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    1d2b7c4aadd9:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aade8
    1d2b7c4aaddf:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c4aade3:	e9 05 00 00 00                                  	jmp    0x1d2b7c4aaded
    1d2b7c4aade8:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4aaded:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c4aadf2:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c4aadf6:	0f 84 9e 00 00 00                               	je     0x1d2b7c4aae9a
    1d2b7c4aadfc:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    1d2b7c4aae00:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    1d2b7c4aae0a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4aae0e:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aae1d
    1d2b7c4aae14:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4aae18:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aae21
    1d2b7c4aae1d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4aae21:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4aae25:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4aae35
    1d2b7c4aae2b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4aae30:	e9 05 00 00 00                                  	jmp    0x1d2b7c4aae3a
    1d2b7c4aae35:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4aae3a:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    1d2b7c4aae3e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4aae43:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4aae48:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4aae4c:	4c 8b 15 fa df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdffa]        # 0x1d2b7c4a8e4d
    1d2b7c4aae53:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4aae58:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4aae5d:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c4aae61:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    1d2b7c4aae6b:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c4aae6f:	0f 85 04 00 00 00                               	jne    0x1d2b7c4aae79
    1d2b7c4aae75:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    1d2b7c4aae79:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c4aae7e:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4aae82:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    1d2b7c4aae86:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    1d2b7c4aae90:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4aae95:	e9 cc 00 00 00                                  	jmp    0x1d2b7c4aaf66
    1d2b7c4aae9a:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    1d2b7c4aaea1:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4aaea5:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aaeb4
    1d2b7c4aaeab:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4aaeaf:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aaeb8
    1d2b7c4aaeb4:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4aaeb8:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4aaebc:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4aaecc
    1d2b7c4aaec2:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    1d2b7c4aaec7:	e9 05 00 00 00                                  	jmp    0x1d2b7c4aaed1
    1d2b7c4aaecc:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4aaed1:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    1d2b7c4aaedb:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    1d2b7c4aaee1:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    1d2b7c4aaee6:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    1d2b7c4aaeea:	0f 87 09 00 00 00                               	ja     0x1d2b7c4aaef9
    1d2b7c4aaef0:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c4aaef4:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aaefd
    1d2b7c4aaef9:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    1d2b7c4aaefd:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    1d2b7c4aaf01:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4aaf11
    1d2b7c4aaf07:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c4aaf0c:	e9 05 00 00 00                                  	jmp    0x1d2b7c4aaf16
    1d2b7c4aaf11:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    1d2b7c4aaf16:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    1d2b7c4aaf20:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4aaf25:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    1d2b7c4aaf29:	c4 01 7a 6f 9c 20 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r12*1+0x3630]
    1d2b7c4aaf33:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c4aaf38:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4aaf3d:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c4aaf41:	4c 8b 15 05 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf05]        # 0x1d2b7c4a8e4d
    1d2b7c4aaf48:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c4aaf4d:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c4aaf52:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c4aaf56:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c4aaf5a:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    1d2b7c4aaf5e:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    1d2b7c4aaf62:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c4aaf66:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4aaf6b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    1d2b7c4aaf6f:	4c 8b 15 d7 de ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffded7]        # 0x1d2b7c4a8e4d
    1d2b7c4aaf76:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4aaf7b:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4aaf80:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    1d2b7c4aaf84:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    1d2b7c4aaf8e:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    1d2b7c4aaf98:	e9 b6 00 00 00                                  	jmp    0x1d2b7c4ab053
    1d2b7c4aaf9d:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    1d2b7c4aafa4:	c4 a1 7a 10 44 26 50                            	vmovss xmm0,DWORD PTR [rsi+r12*1+0x50]
    1d2b7c4aafab:	c5 fa 59 c3                                     	vmulss xmm0,xmm0,xmm3
    1d2b7c4aafaf:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4aafb6:	c5 fa 10 6c 3e 50                               	vmovss xmm5,DWORD PTR [rsi+rdi*1+0x50]
    1d2b7c4aafbc:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c4aafc0:	c4 a1 6a 59 74 3e 50                            	vmulss xmm6,xmm2,DWORD PTR [rsi+r15*1+0x50]
    1d2b7c4aafc7:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    1d2b7c4aafcb:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4aafcf:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    1d2b7c4aafd4:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4aafd8:	c4 21 7a 10 5c 26 54                            	vmovss xmm11,DWORD PTR [rsi+r12*1+0x54]
    1d2b7c4aafdf:	c5 22 59 db                                     	vmulss xmm11,xmm11,xmm3
    1d2b7c4aafe3:	c5 fa 10 6c 3e 54                               	vmovss xmm5,DWORD PTR [rsi+rdi*1+0x54]
    1d2b7c4aafe9:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    1d2b7c4aafed:	c5 fb 11 85 f0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x210],xmm0
    1d2b7c4aaff5:	c4 a1 6a 59 44 3e 54                            	vmulss xmm0,xmm2,DWORD PTR [rsi+r15*1+0x54]
    1d2b7c4aaffc:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    1d2b7c4ab000:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    1d2b7c4ab004:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4ab008:	41 8d b8 90 00 00 00                            	lea    edi,[r8+0x90]
    1d2b7c4ab00f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ab013:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4ab016:	41 8b d3                                        	mov    edx,r11d
    1d2b7c4ab019:	c5 fb 10 8d f0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x210]
    1d2b7c4ab021:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    1d2b7c4ab025:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4ab028:	8b df                                           	mov    ebx,edi
    1d2b7c4ab02a:	e8 01 15 f1 ff                                  	call   0x1d2b7c3bc530
    1d2b7c4ab02f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4ab032:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4ab036:	c4 c1 7a 6f 84 38 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x90]
    1d2b7c4ab040:	c4 c1 7a 7f 84 38 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x190],xmm0
    1d2b7c4ab04a:	8b cf                                           	mov    ecx,edi
    1d2b7c4ab04c:	48 8b bd a8 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x258]
    1d2b7c4ab053:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4ab057:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    1d2b7c4ab05f:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    1d2b7c4ab068:	0f 85 29 00 00 00                               	jne    0x1d2b7c4ab097
    1d2b7c4ab06e:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    1d2b7c4ab078:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    1d2b7c4ab082:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    1d2b7c4ab08c:	8b f9                                           	mov    edi,ecx
    1d2b7c4ab08e:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c4ab092:	e9 d4 01 00 00                                  	jmp    0x1d2b7c4ab26b
    1d2b7c4ab097:	c5 fb 10 85 a0 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x160]
    1d2b7c4ab09f:	c5 fa 59 85 80 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x180]
    1d2b7c4ab0a7:	c5 fb 10 b5 00 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x100]
    1d2b7c4ab0af:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    1d2b7c4ab0b7:	c5 fb 10 bd 28 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0xd8]
    1d2b7c4ab0bf:	c5 c2 59 bd 20 ff ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0xe0]
    1d2b7c4ab0c7:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    1d2b7c4ab0cb:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    1d2b7c4ab0cf:	c5 fb 10 b5 30 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xd0]
    1d2b7c4ab0d7:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    1d2b7c4ab0db:	4c 8b 15 84 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc884]        # 0x1d2b7c4a7966
    1d2b7c4ab0e2:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4ab0e7:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    1d2b7c4ab0eb:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    1d2b7c4ab0ef:	0f 87 04 00 00 00                               	ja     0x1d2b7c4ab0f9
    1d2b7c4ab0f5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    1d2b7c4ab0f9:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    1d2b7c4ab101:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    1d2b7c4ab108:	0f 85 28 00 00 00                               	jne    0x1d2b7c4ab136
    1d2b7c4ab10e:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c4ab118:	4c 8b 15 47 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc847]        # 0x1d2b7c4a7966
    1d2b7c4ab11f:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4ab124:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    1d2b7c4ab128:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ab12c:	e8 87 34 f1 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4ab131:	e9 8b 00 00 00                                  	jmp    0x1d2b7c4ab1c1
    1d2b7c4ab136:	41 83 fc 01                                     	cmp    r12d,0x1
    1d2b7c4ab13a:	0f 84 5e 00 00 00                               	je     0x1d2b7c4ab19e
    1d2b7c4ab140:	c4 81 7a 10 84 18 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xfc]
    1d2b7c4ab14a:	c4 01 7a 5c 84 18 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r8+r11*1+0xf8]
    1d2b7c4ab154:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    1d2b7c4ab159:	7a 06                                           	jp     0x1d2b7c4ab161
    1d2b7c4ab15b:	0f 84 2a 00 00 00                               	je     0x1d2b7c4ab18b
    1d2b7c4ab161:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    1d2b7c4ab165:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    1d2b7c4ab16a:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    1d2b7c4ab16e:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    1d2b7c4ab172:	0f 86 49 00 00 00                               	jbe    0x1d2b7c4ab1c1
    1d2b7c4ab178:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4ab17c:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4ab181:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4ab186:	e9 5b 00 00 00                                  	jmp    0x1d2b7c4ab1e6
    1d2b7c4ab18b:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4ab18f:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4ab194:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4ab199:	e9 44 00 00 00                                  	jmp    0x1d2b7c4ab1e2
    1d2b7c4ab19e:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    1d2b7c4ab1a8:	4c 8b 15 b7 c7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc7b7]        # 0x1d2b7c4a7966
    1d2b7c4ab1af:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    1d2b7c4ab1b4:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    1d2b7c4ab1b8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ab1bc:	e8 f7 33 f1 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4ab1c1:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    1d2b7c4ab1c5:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    1d2b7c4ab1ca:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    1d2b7c4ab1cf:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    1d2b7c4ab1d3:	0f 87 09 00 00 00                               	ja     0x1d2b7c4ab1e2
    1d2b7c4ab1d9:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    1d2b7c4ab1dd:	e9 04 00 00 00                                  	jmp    0x1d2b7c4ab1e6
    1d2b7c4ab1e2:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4ab1e6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4ab1e9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4ab1ed:	c4 c1 42 59 b4 38 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rdi*1+0x190]
    1d2b7c4ab1f7:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    1d2b7c4ab1fb:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4ab1ff:	c4 01 3a 59 8c 18 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+r11*1+0x100]
    1d2b7c4ab209:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    1d2b7c4ab20e:	c4 c1 7a 11 b4 38 90 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x190],xmm6
    1d2b7c4ab218:	c4 41 42 59 8c 38 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rdi*1+0x194]
    1d2b7c4ab222:	c4 01 3a 59 94 18 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+r11*1+0x104]
    1d2b7c4ab22c:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    1d2b7c4ab231:	c4 41 7a 11 8c 38 94 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x194],xmm9
    1d2b7c4ab23b:	c4 c1 42 59 bc 38 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rdi*1+0x198]
    1d2b7c4ab245:	c4 01 3a 59 84 18 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+r11*1+0x108]
    1d2b7c4ab24f:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    1d2b7c4ab254:	c4 c1 7a 11 bc 38 98 01 00 00                   	vmovss DWORD PTR [r8+rdi*1+0x198],xmm7
    1d2b7c4ab25e:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    1d2b7c4ab262:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4ab266:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    1d2b7c4ab26b:	c4 c1 7a 10 ac 38 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rdi*1+0x19c]
    1d2b7c4ab275:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ab279:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4ab27c:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    1d2b7c4ab282:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    1d2b7c4ab288:	c5 fb 10 8d 38 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xc8]
    1d2b7c4ab290:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    1d2b7c4ab294:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    1d2b7c4ab298:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    1d2b7c4ab29d:	e8 be 0f f1 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4ab2a2:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4ab2a7:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    1d2b7c4ab2ab:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4ab2af:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4ab2b4:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4ab2ba:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4ab2c0:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4ab2c4:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    1d2b7c4ab2cb:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    1d2b7c4ab2d2:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4ab2d9:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4ab2e1:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4ab2e9:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4ab2f1:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4ab2f9:	e9 7a 57 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4ab2fe:	49 8b db                                        	mov    rbx,r11
    1d2b7c4ab301:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4ab305:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4ab309:	4b 89 5c 1c 70                                  	mov    QWORD PTR [r12+r11*1+0x70],rbx
    1d2b7c4ab30e:	4c 8d 3c 1a                                     	lea    r15,[rdx+rbx*1]
    1d2b7c4ab312:	4f 89 bc 1c 80 00 00 00                         	mov    QWORD PTR [r12+r11*1+0x80],r15
    1d2b7c4ab31a:	48 8b fb                                        	mov    rdi,rbx
    1d2b7c4ab31d:	48 2b bd 18 fd ff ff                            	sub    rdi,QWORD PTR [rbp-0x2e8]
    1d2b7c4ab324:	4b 89 7c 1c 78                                  	mov    QWORD PTR [r12+r11*1+0x78],rdi
    1d2b7c4ab329:	48 8d 04 3a                                     	lea    rax,[rdx+rdi*1]
    1d2b7c4ab32d:	4b 89 84 1c 88 00 00 00                         	mov    QWORD PTR [r12+r11*1+0x88],rax
    1d2b7c4ab335:	4f 89 4c 1c 50                                  	mov    QWORD PTR [r12+r11*1+0x50],r9
    1d2b7c4ab33a:	4a 8d 14 0e                                     	lea    rdx,[rsi+r9*1]
    1d2b7c4ab33e:	4b 89 54 1c 60                                  	mov    QWORD PTR [r12+r11*1+0x60],rdx
    1d2b7c4ab343:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    1d2b7c4ab34a:	49 8b d1                                        	mov    rdx,r9
    1d2b7c4ab34d:	48 2b 95 38 fd ff ff                            	sub    rdx,QWORD PTR [rbp-0x2c8]
    1d2b7c4ab354:	4b 89 54 1c 58                                  	mov    QWORD PTR [r12+r11*1+0x58],rdx
    1d2b7c4ab359:	4c 8d 0c 16                                     	lea    r9,[rsi+rdx*1]
    1d2b7c4ab35d:	4f 89 4c 1c 68                                  	mov    QWORD PTR [r12+r11*1+0x68],r9
    1d2b7c4ab362:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    1d2b7c4ab366:	c4 81 7a 7f 7c 1c 40                            	vmovdqu XMMWORD PTR [r12+r11*1+0x40],xmm7
    1d2b7c4ab36d:	4c 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r15
    1d2b7c4ab374:	48 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rdi
    1d2b7c4ab37b:	48 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rax
    1d2b7c4ab382:	48 89 95 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rdx
    1d2b7c4ab389:	4c 89 8d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r9
    1d2b7c4ab390:	41 8b f8                                        	mov    edi,r8d
    1d2b7c4ab393:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ab396:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4ab39a:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    1d2b7c4ab3a1:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    1d2b7c4ab3a5:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    1d2b7c4ab3aa:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c4ab3ae:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    1d2b7c4ab3b3:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    1d2b7c4ab3ba:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    1d2b7c4ab3c1:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    1d2b7c4ab3c8:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4ab3d1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4ab3da:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4ab3e3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4ab3ec:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4ab3f5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4ab3fe:	66 90                                           	xchg   ax,ax
    1d2b7c4ab400:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c4ab405:	0f 85 ff 58 00 00                               	jne    0x1d2b7c4b0d0a
    1d2b7c4ab40b:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4ab40e:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4ab413:	d3 e3                                           	shl    ebx,cl
    1d2b7c4ab415:	85 9d b0 fd ff ff                               	test   DWORD PTR [rbp-0x250],ebx
    1d2b7c4ab41b:	0f 84 7a 03 00 00                               	je     0x1d2b7c4ab79b
    1d2b7c4ab421:	43 8d 4c 83 40                                  	lea    ecx,[r11+r8*4+0x40]
    1d2b7c4ab426:	48 89 9d d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],rbx
    1d2b7c4ab42d:	43 8d 5c c3 70                                  	lea    ebx,[r11+r8*8+0x70]
    1d2b7c4ab432:	49 8b 1c 1c                                     	mov    rbx,QWORD PTR [r12+rbx*1]
    1d2b7c4ab436:	c4 61 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,rbx
    1d2b7c4ab43b:	c4 41 7a 59 c9                                  	vmulss xmm9,xmm0,xmm9
    1d2b7c4ab440:	c4 41 4a 5c d9                                  	vsubss xmm11,xmm6,xmm9
    1d2b7c4ab445:	43 8d 5c c3 50                                  	lea    ebx,[r11+r8*8+0x50]
    1d2b7c4ab44a:	49 8b 1c 1c                                     	mov    rbx,QWORD PTR [r12+rbx*1]
    1d2b7c4ab44e:	c4 61 82 2a f3                                  	vcvtsi2ss xmm14,xmm15,rbx
    1d2b7c4ab453:	c4 41 7a 59 f6                                  	vmulss xmm14,xmm0,xmm14
    1d2b7c4ab458:	c4 41 22 5c de                                  	vsubss xmm11,xmm11,xmm14
    1d2b7c4ab45d:	c4 41 22 59 5c 34 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+rsi*1+0x18]
    1d2b7c4ab464:	c4 01 32 59 4c 0c 18                            	vmulss xmm9,xmm9,DWORD PTR [r12+r9*1+0x18]
    1d2b7c4ab46b:	c4 41 0a 59 74 14 18                            	vmulss xmm14,xmm14,DWORD PTR [r12+rdx*1+0x18]
    1d2b7c4ab472:	c4 41 32 58 ce                                  	vaddss xmm9,xmm9,xmm14
    1d2b7c4ab477:	c4 41 22 58 c9                                  	vaddss xmm9,xmm11,xmm9
    1d2b7c4ab47c:	c4 41 3a 58 c9                                  	vaddss xmm9,xmm8,xmm9
    1d2b7c4ab481:	c4 41 7a 11 0c 0c                               	vmovss DWORD PTR [r12+rcx*1],xmm9
    1d2b7c4ab487:	41 8b 5c 04 68                                  	mov    ebx,DWORD PTR [r12+rax*1+0x68]
    1d2b7c4ab48c:	41 83 7c 04 68 00                               	cmp    DWORD PTR [r12+rax*1+0x68],0x0
    1d2b7c4ab492:	0f 84 03 03 00 00                               	je     0x1d2b7c4ab79b
    1d2b7c4ab498:	41 8b 9c 04 a4 00 00 00                         	mov    ebx,DWORD PTR [r12+rax*1+0xa4]
    1d2b7c4ab4a0:	41 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+rax*1+0xa4],0x0
    1d2b7c4ab4a9:	0f 85 ec 02 00 00                               	jne    0x1d2b7c4ab79b
    1d2b7c4ab4af:	41 8b 5c 04 0c                                  	mov    ebx,DWORD PTR [r12+rax*1+0xc]
    1d2b7c4ab4b4:	41 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+rax*1]
    1d2b7c4ab4b8:	45 8b d8                                        	mov    r11d,r8d
    1d2b7c4ab4bb:	41 d1 eb                                        	shr    r11d,1
    1d2b7c4ab4be:	45 03 df                                        	add    r11d,r15d
    1d2b7c4ab4c1:	44 0f af d9                                     	imul   r11d,ecx
    1d2b7c4ab4c5:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c4ab4c9:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    1d2b7c4ab4cd:	41 8b d8                                        	mov    ebx,r8d
    1d2b7c4ab4d0:	83 e3 01                                        	and    ebx,0x1
    1d2b7c4ab4d3:	45 8d 1c 9b                                     	lea    r11d,[r11+rbx*4]
    1d2b7c4ab4d7:	c4 01 7a 10 1c 1c                               	vmovss xmm11,DWORD PTR [r12+r11*1]
    1d2b7c4ab4dd:	45 8b 5c 04 6c                                  	mov    r11d,DWORD PTR [r12+rax*1+0x6c]
    1d2b7c4ab4e2:	41 81 eb 00 02 00 00                            	sub    r11d,0x200
    1d2b7c4ab4e9:	41 83 fb 08                                     	cmp    r11d,0x8
    1d2b7c4ab4ed:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4ab4fe
    1d2b7c4ab4f3:	4c 8d 15 c6 5a 00 00                            	lea    r10,[rip+0x5ac6]        # 0x1d2b7c4b0fc0
    1d2b7c4ab4fa:	43 ff 24 da                                     	jmp    QWORD PTR [r10+r11*8]
    1d2b7c4ab4fe:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab501:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4ab508:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4ab50c:	33 db                                           	xor    ebx,ebx
    1d2b7c4ab50e:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab513:	0f 97 c3                                        	seta   bl
    1d2b7c4ab516:	41 0b db                                        	or     ebx,r11d
    1d2b7c4ab519:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab51c:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    1d2b7c4ab524:	41 0f 93 c3                                     	setae  r11b
    1d2b7c4ab528:	44 0b db                                        	or     r11d,ebx
    1d2b7c4ab52b:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab530:	0f 87 15 02 00 00                               	ja     0x1d2b7c4ab74b
    1d2b7c4ab536:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    1d2b7c4ab53c:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4ab53f:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4ab542:	44 8b db                                        	mov    r11d,ebx
    1d2b7c4ab545:	41 8b da                                        	mov    ebx,r10d
    1d2b7c4ab548:	e9 35 02 00 00                                  	jmp    0x1d2b7c4ab782
    1d2b7c4ab54d:	41 bb 01 00 00 00                               	mov    r11d,0x1
    1d2b7c4ab553:	e9 f3 01 00 00                                  	jmp    0x1d2b7c4ab74b
    1d2b7c4ab558:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab55b:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4ab562:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4ab566:	33 db                                           	xor    ebx,ebx
    1d2b7c4ab568:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    1d2b7c4ab56d:	0f 93 c3                                        	setae  bl
    1d2b7c4ab570:	41 0b db                                        	or     ebx,r11d
    1d2b7c4ab573:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab576:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    1d2b7c4ab57e:	41 0f 93 c3                                     	setae  r11b
    1d2b7c4ab582:	44 0b db                                        	or     r11d,ebx
    1d2b7c4ab585:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    1d2b7c4ab58a:	0f 83 bb 01 00 00                               	jae    0x1d2b7c4ab74b
    1d2b7c4ab590:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    1d2b7c4ab596:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4ab599:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4ab59c:	44 8b db                                        	mov    r11d,ebx
    1d2b7c4ab59f:	41 8b da                                        	mov    ebx,r10d
    1d2b7c4ab5a2:	e9 db 01 00 00                                  	jmp    0x1d2b7c4ab782
    1d2b7c4ab5a7:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab5aa:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4ab5b1:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4ab5b5:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab5ba:	7b 07                                           	jnp    0x1d2b7c4ab5c3
    1d2b7c4ab5bc:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4ab5c1:	eb 06                                           	jmp    0x1d2b7c4ab5c9
    1d2b7c4ab5c3:	0f 95 c3                                        	setne  bl
    1d2b7c4ab5c6:	0f b6 db                                        	movzx  ebx,bl
    1d2b7c4ab5c9:	41 0b db                                        	or     ebx,r11d
    1d2b7c4ab5cc:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab5cf:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    1d2b7c4ab5d7:	41 0f 93 c3                                     	setae  r11b
    1d2b7c4ab5db:	44 0b db                                        	or     r11d,ebx
    1d2b7c4ab5de:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab5e3:	0f 8a 62 01 00 00                               	jp     0x1d2b7c4ab74b
    1d2b7c4ab5e9:	0f 85 5c 01 00 00                               	jne    0x1d2b7c4ab74b
    1d2b7c4ab5ef:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    1d2b7c4ab5f5:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4ab5f8:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4ab5fb:	44 8b db                                        	mov    r11d,ebx
    1d2b7c4ab5fe:	41 8b da                                        	mov    ebx,r10d
    1d2b7c4ab601:	e9 7c 01 00 00                                  	jmp    0x1d2b7c4ab782
    1d2b7c4ab606:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab609:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4ab610:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4ab614:	33 db                                           	xor    ebx,ebx
    1d2b7c4ab616:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    1d2b7c4ab61b:	0f 97 c3                                        	seta   bl
    1d2b7c4ab61e:	41 0b db                                        	or     ebx,r11d
    1d2b7c4ab621:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab624:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    1d2b7c4ab62c:	41 0f 93 c3                                     	setae  r11b
    1d2b7c4ab630:	44 0b db                                        	or     r11d,ebx
    1d2b7c4ab633:	c4 41 78 2e cb                                  	vucomiss xmm9,xmm11
    1d2b7c4ab638:	0f 87 0d 01 00 00                               	ja     0x1d2b7c4ab74b
    1d2b7c4ab63e:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    1d2b7c4ab644:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4ab647:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4ab64a:	44 8b db                                        	mov    r11d,ebx
    1d2b7c4ab64d:	41 8b da                                        	mov    ebx,r10d
    1d2b7c4ab650:	e9 2d 01 00 00                                  	jmp    0x1d2b7c4ab782
    1d2b7c4ab655:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab658:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab65d:	41 0f 93 c3                                     	setae  r11b
    1d2b7c4ab661:	33 db                                           	xor    ebx,ebx
    1d2b7c4ab663:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    1d2b7c4ab66b:	0f 93 c3                                        	setae  bl
    1d2b7c4ab66e:	41 0b db                                        	or     ebx,r11d
    1d2b7c4ab671:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab674:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4ab67b:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4ab67f:	44 0b db                                        	or     r11d,ebx
    1d2b7c4ab682:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab687:	0f 83 be 00 00 00                               	jae    0x1d2b7c4ab74b
    1d2b7c4ab68d:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    1d2b7c4ab693:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4ab696:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4ab699:	44 8b db                                        	mov    r11d,ebx
    1d2b7c4ab69c:	41 8b da                                        	mov    ebx,r10d
    1d2b7c4ab69f:	e9 de 00 00 00                                  	jmp    0x1d2b7c4ab782
    1d2b7c4ab6a4:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab6a7:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4ab6ae:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4ab6b2:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab6b7:	7b 04                                           	jnp    0x1d2b7c4ab6bd
    1d2b7c4ab6b9:	33 db                                           	xor    ebx,ebx
    1d2b7c4ab6bb:	eb 06                                           	jmp    0x1d2b7c4ab6c3
    1d2b7c4ab6bd:	0f 94 c3                                        	sete   bl
    1d2b7c4ab6c0:	0f b6 db                                        	movzx  ebx,bl
    1d2b7c4ab6c3:	41 0b db                                        	or     ebx,r11d
    1d2b7c4ab6c6:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab6c9:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    1d2b7c4ab6d1:	41 0f 93 c3                                     	setae  r11b
    1d2b7c4ab6d5:	44 0b db                                        	or     r11d,ebx
    1d2b7c4ab6d8:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab6dd:	7a 06                                           	jp     0x1d2b7c4ab6e5
    1d2b7c4ab6df:	0f 84 66 00 00 00                               	je     0x1d2b7c4ab74b
    1d2b7c4ab6e5:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    1d2b7c4ab6eb:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4ab6ee:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4ab6f1:	44 8b db                                        	mov    r11d,ebx
    1d2b7c4ab6f4:	41 8b da                                        	mov    ebx,r10d
    1d2b7c4ab6f7:	e9 86 00 00 00                                  	jmp    0x1d2b7c4ab782
    1d2b7c4ab6fc:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab6ff:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4ab706:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4ab70a:	33 db                                           	xor    ebx,ebx
    1d2b7c4ab70c:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab711:	0f 97 c3                                        	seta   bl
    1d2b7c4ab714:	41 0b db                                        	or     ebx,r11d
    1d2b7c4ab717:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab71a:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    1d2b7c4ab722:	41 0f 93 c3                                     	setae  r11b
    1d2b7c4ab726:	44 0b db                                        	or     r11d,ebx
    1d2b7c4ab729:	c4 41 78 2e d9                                  	vucomiss xmm11,xmm9
    1d2b7c4ab72e:	0f 87 17 00 00 00                               	ja     0x1d2b7c4ab74b
    1d2b7c4ab734:	8b 9d d8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x228]
    1d2b7c4ab73a:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4ab73d:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4ab740:	44 8b db                                        	mov    r11d,ebx
    1d2b7c4ab743:	41 8b da                                        	mov    ebx,r10d
    1d2b7c4ab746:	e9 37 00 00 00                                  	jmp    0x1d2b7c4ab782
    1d2b7c4ab74b:	41 8b db                                        	mov    ebx,r11d
    1d2b7c4ab74e:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    1d2b7c4ab754:	e9 29 00 00 00                                  	jmp    0x1d2b7c4ab782
    1d2b7c4ab759:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ab75c:	83 bd a8 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x158],0x0
    1d2b7c4ab763:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4ab767:	33 db                                           	xor    ebx,ebx
    1d2b7c4ab769:	c5 78 2e 9d e0 fd ff ff                         	vucomiss xmm11,DWORD PTR [rbp-0x220]
    1d2b7c4ab771:	0f 93 c3                                        	setae  bl
    1d2b7c4ab774:	41 0b db                                        	or     ebx,r11d
    1d2b7c4ab777:	44 8b 9d d8 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x228]
    1d2b7c4ab77e:	41 83 f3 ff                                     	xor    r11d,0xffffffff
    1d2b7c4ab782:	44 23 9d b0 fd ff ff                            	and    r11d,DWORD PTR [rbp-0x250]
    1d2b7c4ab789:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    1d2b7c4ab790:	4c 89 9d b0 fd ff ff                            	mov    QWORD PTR [rbp-0x250],r11
    1d2b7c4ab797:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4ab79b:	41 83 c0 01                                     	add    r8d,0x1
    1d2b7c4ab79f:	41 83 f8 04                                     	cmp    r8d,0x4
    1d2b7c4ab7a3:	0f 85 57 fc ff ff                               	jne    0x1d2b7c4ab400
    1d2b7c4ab7a9:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    1d2b7c4ab7ad:	44 8b 85 b0 fd ff ff                            	mov    r8d,DWORD PTR [rbp-0x250]
    1d2b7c4ab7b4:	45 85 c0                                        	test   r8d,r8d
    1d2b7c4ab7b7:	0f 85 26 00 00 00                               	jne    0x1d2b7c4ab7e3
    1d2b7c4ab7bd:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    1d2b7c4ab7c3:	4c 8b d6                                        	mov    r10,rsi
    1d2b7c4ab7c6:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4ab7c9:	4d 8b e2                                        	mov    r12,r10
    1d2b7c4ab7cc:	4c 8b d8                                        	mov    r11,rax
    1d2b7c4ab7cf:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4ab7d4:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    1d2b7c4ab7d8:	4c 8b fa                                        	mov    r15,rdx
    1d2b7c4ab7db:	49 8b f9                                        	mov    rdi,r9
    1d2b7c4ab7de:	e9 95 52 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4ab7e3:	c4 61 82 2a 4d 88                               	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0x78]
    1d2b7c4ab7e9:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    1d2b7c4ab7ee:	c4 61 82 2a 9d a0 fe ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x160]
    1d2b7c4ab7f7:	c4 43 31 21 cb 10                               	vinsertps xmm9,xmm9,xmm11,0x10
    1d2b7c4ab7fd:	c4 61 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0x100]
    1d2b7c4ab806:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    1d2b7c4ab80c:	c4 61 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm11,xmm15,QWORD PTR [rbp-0xe0]
    1d2b7c4ab815:	c4 43 31 21 cb 30                               	vinsertps xmm9,xmm9,xmm11,0x30
    1d2b7c4ab81b:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    1d2b7c4ab823:	c4 41 20 59 c9                                  	vmulps xmm9,xmm11,xmm9
    1d2b7c4ab828:	49 8d 5c 24 1c                                  	lea    rbx,[r12+0x1c]
    1d2b7c4ab82d:	c4 22 79 18 34 0b                               	vbroadcastss xmm14,DWORD PTR [rbx+r9*1]
    1d2b7c4ab833:	c4 41 30 59 f6                                  	vmulps xmm14,xmm9,xmm14
    1d2b7c4ab838:	c4 e1 82 2a 8d 78 ff ff ff                      	vcvtsi2ss xmm1,xmm15,QWORD PTR [rbp-0x88]
    1d2b7c4ab841:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    1d2b7c4ab846:	c4 e1 82 2a 95 28 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xd8]
    1d2b7c4ab84f:	c4 e3 71 21 ca 10                               	vinsertps xmm1,xmm1,xmm2,0x10
    1d2b7c4ab855:	c4 e1 82 2a 95 30 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xd0]
    1d2b7c4ab85e:	c4 e3 71 21 ca 20                               	vinsertps xmm1,xmm1,xmm2,0x20
    1d2b7c4ab864:	c4 e1 82 2a 95 38 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xc8]
    1d2b7c4ab86d:	c4 e3 71 21 ca 30                               	vinsertps xmm1,xmm1,xmm2,0x30
    1d2b7c4ab873:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    1d2b7c4ab877:	c4 e2 79 18 14 13                               	vbroadcastss xmm2,DWORD PTR [rbx+rdx*1]
    1d2b7c4ab87d:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    1d2b7c4ab881:	c5 88 58 da                                     	vaddps xmm3,xmm14,xmm2
    1d2b7c4ab885:	4c 8b 15 c1 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5c1]        # 0x1d2b7c4a8e4d
    1d2b7c4ab88c:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c4ab891:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c4ab895:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    1d2b7c4ab89a:	c5 30 5c c9                                     	vsubps xmm9,xmm9,xmm1
    1d2b7c4ab89e:	c4 e2 79 18 0c 33                               	vbroadcastss xmm1,DWORD PTR [rbx+rsi*1]
    1d2b7c4ab8a4:	c5 30 59 c9                                     	vmulps xmm9,xmm9,xmm1
    1d2b7c4ab8a8:	c4 c1 60 58 c9                                  	vaddps xmm1,xmm3,xmm9
    1d2b7c4ab8ad:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    1d2b7c4ab8b1:	c5 f0 c2 c3 02                                  	vcmpleps xmm0,xmm1,xmm3
    1d2b7c4ab8b6:	c5 f8 50 d8                                     	vmovmskps ebx,xmm0
    1d2b7c4ab8ba:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4ab8bd:	41 23 d8                                        	and    ebx,r8d
    1d2b7c4ab8c0:	0f 85 0c 00 00 00                               	jne    0x1d2b7c4ab8d2
    1d2b7c4ab8c6:	48 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rbx
    1d2b7c4ab8cd:	e9 df 2a 00 00                                  	jmp    0x1d2b7c4ae3b1
    1d2b7c4ab8d2:	c5 d0 5e c1                                     	vdivps xmm0,xmm5,xmm1
    1d2b7c4ab8d6:	4d 8d 44 24 2c                                  	lea    r8,[r12+0x2c]
    1d2b7c4ab8db:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    1d2b7c4ab8e1:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    1d2b7c4ab8e5:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    1d2b7c4ab8eb:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    1d2b7c4ab8ef:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    1d2b7c4ab8f3:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    1d2b7c4ab8f9:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c4ab8fd:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    1d2b7c4ab901:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    1d2b7c4ab905:	4d 8d 44 24 28                                  	lea    r8,[r12+0x28]
    1d2b7c4ab90a:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    1d2b7c4ab910:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    1d2b7c4ab914:	c5 f8 11 b5 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm6
    1d2b7c4ab91c:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    1d2b7c4ab922:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    1d2b7c4ab926:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    1d2b7c4ab92a:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    1d2b7c4ab930:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c4ab934:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    1d2b7c4ab938:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    1d2b7c4ab93c:	4d 8d 44 24 24                                  	lea    r8,[r12+0x24]
    1d2b7c4ab941:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    1d2b7c4ab947:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    1d2b7c4ab94b:	c5 f8 11 b5 f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm6
    1d2b7c4ab953:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    1d2b7c4ab959:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    1d2b7c4ab95d:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    1d2b7c4ab961:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    1d2b7c4ab967:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c4ab96b:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    1d2b7c4ab96f:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    1d2b7c4ab973:	4d 8d 44 24 20                                  	lea    r8,[r12+0x20]
    1d2b7c4ab978:	c4 82 79 18 0c 08                               	vbroadcastss xmm1,DWORD PTR [r8+r9*1]
    1d2b7c4ab97e:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    1d2b7c4ab982:	c5 f8 11 b5 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm6
    1d2b7c4ab98a:	c4 c2 79 18 34 10                               	vbroadcastss xmm6,DWORD PTR [r8+rdx*1]
    1d2b7c4ab990:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    1d2b7c4ab994:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    1d2b7c4ab998:	c4 c2 79 18 0c 30                               	vbroadcastss xmm1,DWORD PTR [r8+rsi*1]
    1d2b7c4ab99e:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c4ab9a2:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    1d2b7c4ab9a6:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    1d2b7c4ab9aa:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4ab9b1:	43 8b 8c 04 34 01 00 00                         	mov    ecx,DWORD PTR [r12+r8*1+0x134]
    1d2b7c4ab9b9:	83 e9 01                                        	sub    ecx,0x1
    1d2b7c4ab9bc:	48 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rbx
    1d2b7c4ab9c3:	83 f9 01                                        	cmp    ecx,0x1
    1d2b7c4ab9c6:	0f 86 59 17 00 00                               	jbe    0x1d2b7c4ad125
    1d2b7c4ab9cc:	43 8b 8c 04 38 01 00 00                         	mov    ecx,DWORD PTR [r12+r8*1+0x138]
    1d2b7c4ab9d4:	43 83 bc 04 38 01 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x138],0x0
    1d2b7c4ab9dd:	0f 85 24 00 00 00                               	jne    0x1d2b7c4aba07
    1d2b7c4ab9e3:	c5 78 10 85 40 ff ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0xc0]
    1d2b7c4ab9eb:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    1d2b7c4ab9ef:	c5 f8 10 b5 10 ff ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0xf0]
    1d2b7c4ab9f7:	c5 f8 10 bd f0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x110]
    1d2b7c4ab9ff:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4aba02:	e9 0f 29 00 00                                  	jmp    0x1d2b7c4ae316
    1d2b7c4aba07:	48 8b cb                                        	mov    rcx,rbx
    1d2b7c4aba0a:	83 e1 08                                        	and    ecx,0x8
    1d2b7c4aba0d:	83 e3 04                                        	and    ebx,0x4
    1d2b7c4aba10:	48 89 8d a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],rcx
    1d2b7c4aba17:	48 8b 8d 38 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xc8]
    1d2b7c4aba1e:	83 e1 02                                        	and    ecx,0x2
    1d2b7c4aba21:	4c 8b 85 38 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xc8]
    1d2b7c4aba28:	41 83 e0 01                                     	and    r8d,0x1
    1d2b7c4aba2c:	c5 f8 11 b5 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm6
    1d2b7c4aba34:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    1d2b7c4aba3c:	c5 f8 11 85 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm0
    1d2b7c4aba44:	c5 78 11 8d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm9
    1d2b7c4aba4c:	c5 f8 11 95 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm2
    1d2b7c4aba54:	c5 78 11 b5 30 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1d0],xmm14
    1d2b7c4aba5c:	c5 f8 11 ad 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm5
    1d2b7c4aba64:	c5 f8 11 9d 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm3
    1d2b7c4aba6c:	48 89 9d 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rbx
    1d2b7c4aba73:	48 89 8d f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rcx
    1d2b7c4aba7a:	4c 89 85 d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r8
    1d2b7c4aba81:	33 ff                                           	xor    edi,edi
    1d2b7c4aba83:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    1d2b7c4aba8b:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    1d2b7c4aba93:	e9 50 00 00 00                                  	jmp    0x1d2b7c4abae8
    1d2b7c4aba98:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4abaa1:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4abaaa:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4abab3:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4ababc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    1d2b7c4abac0:	c5 f8 10 9d 10 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1f0]
    1d2b7c4abac8:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    1d2b7c4abad0:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    1d2b7c4abad8:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    1d2b7c4abae0:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    1d2b7c4abae8:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4abaef:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4abaf2:	8b 95 00 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x400]
    1d2b7c4abaf8:	8b 9d 08 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3f8]
    1d2b7c4abafe:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    1d2b7c4abb05:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    1d2b7c4abb0c:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c4abb11:	0f 85 84 52 00 00                               	jne    0x1d2b7c4b0d9b
    1d2b7c4abb17:	47 8b 8c 04 3c 01 00 00                         	mov    r9d,DWORD PTR [r12+r8*1+0x13c]
    1d2b7c4abb1f:	8b cf                                           	mov    ecx,edi
    1d2b7c4abb21:	41 d3 e9                                        	shr    r9d,cl
    1d2b7c4abb24:	41 f6 c1 01                                     	test   r9b,0x1
    1d2b7c4abb28:	0f 85 31 00 00 00                               	jne    0x1d2b7c4abb5f
    1d2b7c4abb2e:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    1d2b7c4abb35:	44 8b cf                                        	mov    r9d,edi
    1d2b7c4abb38:	41 c1 e1 06                                     	shl    r9d,0x6
    1d2b7c4abb3c:	41 03 c9                                        	add    ecx,r9d
    1d2b7c4abb3f:	c4 c1 7a 7f 6c 0c 30                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x30],xmm5
    1d2b7c4abb46:	c4 c1 7a 7f 6c 0c 20                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x20],xmm5
    1d2b7c4abb4d:	c4 c1 7a 7f 6c 0c 10                            	vmovdqu XMMWORD PTR [r12+rcx*1+0x10],xmm5
    1d2b7c4abb54:	c4 c1 7a 7f 2c 0c                               	vmovdqu XMMWORD PTR [r12+rcx*1],xmm5
    1d2b7c4abb5a:	e9 14 12 00 00                                  	jmp    0x1d2b7c4acd73
    1d2b7c4abb5f:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    1d2b7c4abb66:	44 8b cf                                        	mov    r9d,edi
    1d2b7c4abb69:	41 c1 e1 06                                     	shl    r9d,0x6
    1d2b7c4abb6d:	44 03 c9                                        	add    r9d,ecx
    1d2b7c4abb70:	6b cf 4c                                        	imul   ecx,edi,0x4c
    1d2b7c4abb73:	03 c8                                           	add    ecx,eax
    1d2b7c4abb75:	41 8b 7c 0c 38                                  	mov    edi,DWORD PTR [r12+rcx*1+0x38]
    1d2b7c4abb7a:	41 83 7c 0c 38 00                               	cmp    DWORD PTR [r12+rcx*1+0x38],0x0
    1d2b7c4abb80:	0f 85 a1 11 00 00                               	jne    0x1d2b7c4acd27
    1d2b7c4abb86:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    1d2b7c4abb8c:	c1 e7 04                                        	shl    edi,0x4
    1d2b7c4abb8f:	46 8d 04 3f                                     	lea    r8d,[rdi+r15*1]
    1d2b7c4abb93:	4d 8d 7c 24 04                                  	lea    r15,[r12+0x4]
    1d2b7c4abb98:	c4 02 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+r8*1]
    1d2b7c4abb9e:	c4 41 08 59 c0                                  	vmulps xmm8,xmm14,xmm8
    1d2b7c4abba3:	8d 04 3b                                        	lea    eax,[rbx+rdi*1]
    1d2b7c4abba6:	c4 42 79 18 14 07                               	vbroadcastss xmm10,DWORD PTR [r15+rax*1]
    1d2b7c4abbac:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
    1d2b7c4abbb1:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    1d2b7c4abbb6:	03 fa                                           	add    edi,edx
    1d2b7c4abbb8:	c4 42 79 18 14 3f                               	vbroadcastss xmm10,DWORD PTR [r15+rdi*1]
    1d2b7c4abbbe:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    1d2b7c4abbc3:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    1d2b7c4abbc8:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    1d2b7c4abbcd:	c4 02 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+r8*1]
    1d2b7c4abbd3:	c4 41 08 59 d2                                  	vmulps xmm10,xmm14,xmm10
    1d2b7c4abbd8:	c4 42 79 18 1c 04                               	vbroadcastss xmm11,DWORD PTR [r12+rax*1]
    1d2b7c4abbde:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    1d2b7c4abbe3:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    1d2b7c4abbe8:	c4 42 79 18 1c 3c                               	vbroadcastss xmm11,DWORD PTR [r12+rdi*1]
    1d2b7c4abbee:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    1d2b7c4abbf3:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    1d2b7c4abbf8:	c4 41 78 59 d2                                  	vmulps xmm10,xmm0,xmm10
    1d2b7c4abbfd:	45 8b 3c 0c                                     	mov    r15d,DWORD PTR [r12+rcx*1]
    1d2b7c4abc01:	41 83 ff 01                                     	cmp    r15d,0x1
    1d2b7c4abc05:	0f 85 2d 0e 00 00                               	jne    0x1d2b7c4aca38
    1d2b7c4abc0b:	41 8b 5c 0c 28                                  	mov    ebx,DWORD PTR [r12+rcx*1+0x28]
    1d2b7c4abc10:	85 db                                           	test   ebx,ebx
    1d2b7c4abc12:	0f 84 20 0e 00 00                               	je     0x1d2b7c4aca38
    1d2b7c4abc18:	41 8b 54 0c 1c                                  	mov    edx,DWORD PTR [r12+rcx*1+0x1c]
    1d2b7c4abc1d:	85 d2                                           	test   edx,edx
    1d2b7c4abc1f:	0f 8e 13 0e 00 00                               	jle    0x1d2b7c4aca38
    1d2b7c4abc25:	45 8b 5c 0c 20                                  	mov    r11d,DWORD PTR [r12+rcx*1+0x20]
    1d2b7c4abc2a:	45 85 db                                        	test   r11d,r11d
    1d2b7c4abc2d:	0f 8e 01 0e 00 00                               	jle    0x1d2b7c4aca34
    1d2b7c4abc33:	44 8b d2                                        	mov    r10d,edx
    1d2b7c4abc36:	c4 41 82 2a da                                  	vcvtsi2ss xmm11,xmm15,r10
    1d2b7c4abc3b:	c4 42 79 18 db                                  	vbroadcastss xmm11,xmm11
    1d2b7c4abc40:	41 8b 7c 0c 10                                  	mov    edi,DWORD PTR [r12+rcx*1+0x10]
    1d2b7c4abc45:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4abc48:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    1d2b7c4abc4e:	41 0f 95 c0                                     	setne  r8b
    1d2b7c4abc52:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    1d2b7c4abc58:	40 0f 95 c7                                     	setne  dil
    1d2b7c4abc5c:	40 0f b6 ff                                     	movzx  edi,dil
    1d2b7c4abc60:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
    1d2b7c4abc67:	41 23 f8                                        	and    edi,r8d
    1d2b7c4abc6a:	0f 85 0f 00 00 00                               	jne    0x1d2b7c4abc7f
    1d2b7c4abc70:	c4 41 60 5f d2                                  	vmaxps xmm10,xmm3,xmm10
    1d2b7c4abc75:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    1d2b7c4abc7a:	e9 0b 00 00 00                                  	jmp    0x1d2b7c4abc8a
    1d2b7c4abc7f:	c4 43 79 08 e2 09                               	vroundps xmm12,xmm10,0x9
    1d2b7c4abc85:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    1d2b7c4abc8a:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    1d2b7c4abc8f:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4abc92:	c4 41 82 2a da                                  	vcvtsi2ss xmm11,xmm15,r10
    1d2b7c4abc97:	c4 42 79 18 db                                  	vbroadcastss xmm11,xmm11
    1d2b7c4abc9c:	45 8b 44 0c 14                                  	mov    r8d,DWORD PTR [r12+rcx*1+0x14]
    1d2b7c4abca1:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4abca4:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    1d2b7c4abcab:	41 0f 95 c7                                     	setne  r15b
    1d2b7c4abcaf:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    1d2b7c4abcb6:	41 0f 95 c0                                     	setne  r8b
    1d2b7c4abcba:	45 0f b6 c0                                     	movzx  r8d,r8b
    1d2b7c4abcbe:	45 23 c7                                        	and    r8d,r15d
    1d2b7c4abcc1:	0f 85 0f 00 00 00                               	jne    0x1d2b7c4abcd6
    1d2b7c4abcc7:	c4 41 60 5f c0                                  	vmaxps xmm8,xmm3,xmm8
    1d2b7c4abccc:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    1d2b7c4abcd1:	e9 0b 00 00 00                                  	jmp    0x1d2b7c4abce1
    1d2b7c4abcd6:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    1d2b7c4abcdc:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    1d2b7c4abce1:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    1d2b7c4abce6:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    1d2b7c4abcf0:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    1d2b7c4abcf5:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    1d2b7c4abcfa:	c4 41 38 58 e3                                  	vaddps xmm12,xmm8,xmm11
    1d2b7c4abcff:	45 8b 7c 0c 0c                                  	mov    r15d,DWORD PTR [r12+rcx*1+0xc]
    1d2b7c4abd04:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4abd07:	41 81 7c 0c 0c 00 26 00 00                      	cmp    DWORD PTR [r12+rcx*1+0xc],0x2600
    1d2b7c4abd10:	41 0f 94 c7                                     	sete   r15b
    1d2b7c4abd14:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4abd17:	0f 85 6b 00 00 00                               	jne    0x1d2b7c4abd88
    1d2b7c4abd1d:	c4 43 79 08 c4 09                               	vroundps xmm8,xmm12,0x9
    1d2b7c4abd23:	49 ba 50 78 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7850
    1d2b7c4abd2d:	c4 41 38 54 2a                                  	vandps xmm13,xmm8,XMMWORD PTR [r10]
    1d2b7c4abd32:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    1d2b7c4abd3c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c4abd41:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c4abd45:	c5 10 c2 eb 01                                  	vcmpltps xmm13,xmm13,xmm3
    1d2b7c4abd4a:	4c 8b 15 d8 b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb8d8]        # 0x1d2b7c4a7629
    1d2b7c4abd51:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c4abd57:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    1d2b7c4abd5c:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c4abd62:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    1d2b7c4abd66:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    1d2b7c4abd6b:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    1d2b7c4abd70:	c4 41 79 28 d8                                  	vmovapd xmm11,xmm8
    1d2b7c4abd75:	c4 41 79 28 c4                                  	vmovapd xmm8,xmm12
    1d2b7c4abd7a:	c4 41 79 28 e5                                  	vmovapd xmm12,xmm13
    1d2b7c4abd7f:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    1d2b7c4abd83:	e9 4a 00 00 00                                  	jmp    0x1d2b7c4abdd2
    1d2b7c4abd88:	c4 43 79 08 d8 09                               	vroundps xmm11,xmm8,0x9
    1d2b7c4abd8e:	4c 8b 15 90 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff90]        # 0x1d2b7c4abd25
    1d2b7c4abd95:	c4 41 20 54 22                                  	vandps xmm12,xmm11,XMMWORD PTR [r10]
    1d2b7c4abd9a:	4c 8b 15 93 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff93]        # 0x1d2b7c4abd34
    1d2b7c4abda1:	c4 41 f9 6e ea                                  	vmovq  xmm13,r10
    1d2b7c4abda6:	c4 41 11 6c ed                                  	vpunpcklqdq xmm13,xmm13,xmm13
    1d2b7c4abdab:	c4 41 18 c2 e5 01                               	vcmpltps xmm12,xmm12,xmm13
    1d2b7c4abdb1:	4c 8b 15 71 b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb871]        # 0x1d2b7c4a7629
    1d2b7c4abdb8:	c4 41 20 c2 fb 00                               	vcmpeqps xmm15,xmm11,xmm11
    1d2b7c4abdbe:	c4 c1 20 54 e7                                  	vandps xmm4,xmm11,xmm15
    1d2b7c4abdc3:	c4 41 20 c2 3a 0d                               	vcmpgeps xmm15,xmm11,XMMWORD PTR [r10]
    1d2b7c4abdc9:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    1d2b7c4abdcd:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    1d2b7c4abdd2:	c4 c3 79 08 da 09                               	vroundps xmm3,xmm10,0x9
    1d2b7c4abdd8:	4c 8b 15 4a b8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffb84a]        # 0x1d2b7c4a7629
    1d2b7c4abddf:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    1d2b7c4abde4:	c4 c1 60 54 ff                                  	vandps xmm7,xmm3,xmm15
    1d2b7c4abde9:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    1d2b7c4abdef:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    1d2b7c4abdf3:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    1d2b7c4abdf8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    1d2b7c4abe02:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    1d2b7c4abe07:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    1d2b7c4abe0b:	4c 8b 15 13 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff13]        # 0x1d2b7c4abd25
    1d2b7c4abe12:	c4 41 60 54 0a                                  	vandps xmm9,xmm3,XMMWORD PTR [r10]
    1d2b7c4abe17:	c4 41 30 c2 cd 01                               	vcmpltps xmm9,xmm9,xmm13
    1d2b7c4abe1d:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    1d2b7c4abe21:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    1d2b7c4abe26:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4abe2b:	8d 42 ff                                        	lea    eax,[rdx-0x1]
    1d2b7c4abe2e:	c5 79 6e c8                                     	vmovd  xmm9,eax
    1d2b7c4abe32:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    1d2b7c4abe37:	41 8b 44 0c 2c                                  	mov    eax,DWORD PTR [r12+rcx*1+0x2c]
    1d2b7c4abe3c:	c4 62 41 3d e9                                  	vpmaxsd xmm13,xmm7,xmm1
    1d2b7c4abe41:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    1d2b7c4abe46:	85 ff                                           	test   edi,edi
    1d2b7c4abe48:	0f 84 5a 00 00 00                               	je     0x1d2b7c4abea8
    1d2b7c4abe4e:	c5 79 6e e8                                     	vmovd  xmm13,eax
    1d2b7c4abe52:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c4abe57:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    1d2b7c4abe5c:	85 c0                                           	test   eax,eax
    1d2b7c4abe5e:	0f 85 44 00 00 00                               	jne    0x1d2b7c4abea8
    1d2b7c4abe64:	c5 79 6e ea                                     	vmovd  xmm13,edx
    1d2b7c4abe68:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c4abe6d:	c4 c1 41 66 d1                                  	vpcmpgtd xmm2,xmm7,xmm9
    1d2b7c4abe72:	c4 c1 69 db d5                                  	vpand  xmm2,xmm2,xmm13
    1d2b7c4abe77:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4abe7c:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    1d2b7c4abe81:	c5 71 66 f7                                     	vpcmpgtd xmm14,xmm1,xmm7
    1d2b7c4abe85:	c5 09 df fa                                     	vpandn xmm15,xmm14,xmm2
    1d2b7c4abe89:	c4 41 11 db ee                                  	vpand  xmm13,xmm13,xmm14
    1d2b7c4abe8e:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    1d2b7c4abe93:	c4 41 41 fe ed                                  	vpaddd xmm13,xmm7,xmm13
    1d2b7c4abe98:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    1d2b7c4abea0:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    1d2b7c4abea8:	c5 19 df f8                                     	vpandn xmm15,xmm12,xmm0
    1d2b7c4abeac:	c4 c1 59 db c4                                  	vpand  xmm0,xmm4,xmm12
    1d2b7c4abeb1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4abeb6:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    1d2b7c4abeba:	c4 41 79 6e e1                                  	vmovd  xmm12,r9d
    1d2b7c4abebf:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4abec4:	41 8b 4c 0c 30                                  	mov    ecx,DWORD PTR [r12+rcx*1+0x30]
    1d2b7c4abec9:	c4 e2 79 3d e1                                  	vpmaxsd xmm4,xmm0,xmm1
    1d2b7c4abece:	c4 c2 59 39 e4                                  	vpminsd xmm4,xmm4,xmm12
    1d2b7c4abed3:	45 85 c0                                        	test   r8d,r8d
    1d2b7c4abed6:	0f 84 49 00 00 00                               	je     0x1d2b7c4abf25
    1d2b7c4abedc:	c5 f9 6e e1                                     	vmovd  xmm4,ecx
    1d2b7c4abee0:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    1d2b7c4abee5:	c5 d9 db e0                                     	vpand  xmm4,xmm4,xmm0
    1d2b7c4abee9:	85 c9                                           	test   ecx,ecx
    1d2b7c4abeeb:	0f 85 34 00 00 00                               	jne    0x1d2b7c4abf25
    1d2b7c4abef1:	c4 c1 79 6e e3                                  	vmovd  xmm4,r11d
    1d2b7c4abef6:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    1d2b7c4abefb:	c4 c1 79 66 d4                                  	vpcmpgtd xmm2,xmm0,xmm12
    1d2b7c4abf00:	c5 e9 db d4                                     	vpand  xmm2,xmm2,xmm4
    1d2b7c4abf04:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4abf09:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    1d2b7c4abf0e:	c5 71 66 f0                                     	vpcmpgtd xmm14,xmm1,xmm0
    1d2b7c4abf12:	c5 09 df fa                                     	vpandn xmm15,xmm14,xmm2
    1d2b7c4abf16:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    1d2b7c4abf1b:	c4 41 09 eb f7                                  	vpor   xmm14,xmm14,xmm15
    1d2b7c4abf20:	c4 c1 79 fe e6                                  	vpaddd xmm4,xmm0,xmm14
    1d2b7c4abf25:	c5 f9 6e d2                                     	vmovd  xmm2,edx
    1d2b7c4abf29:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    1d2b7c4abf2e:	c4 e2 59 40 e2                                  	vpmulld xmm4,xmm4,xmm2
    1d2b7c4abf33:	c4 41 59 fe f5                                  	vpaddd xmm14,xmm4,xmm13
    1d2b7c4abf38:	c4 63 79 16 f2 03                               	vpextrd edx,xmm14,0x3
    1d2b7c4abf3e:	c4 43 79 16 f1 02                               	vpextrd r9d,xmm14,0x2
    1d2b7c4abf44:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    1d2b7c4abf4b:	c4 63 79 16 f2 01                               	vpextrd edx,xmm14,0x1
    1d2b7c4abf51:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    1d2b7c4abf58:	c4 41 79 7e f1                                  	vmovd  r9d,xmm14
    1d2b7c4abf5d:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4abf60:	0f 85 dd 08 00 00                               	jne    0x1d2b7c4ac843
    1d2b7c4abf66:	c5 c1 fe fe                                     	vpaddd xmm7,xmm7,xmm6
    1d2b7c4abf6a:	c4 62 41 3d f1                                  	vpmaxsd xmm14,xmm7,xmm1
    1d2b7c4abf6f:	c4 42 09 39 f1                                  	vpminsd xmm14,xmm14,xmm9
    1d2b7c4abf74:	85 ff                                           	test   edi,edi
    1d2b7c4abf76:	0f 84 41 00 00 00                               	je     0x1d2b7c4abfbd
    1d2b7c4abf7c:	c5 79 6e f0                                     	vmovd  xmm14,eax
    1d2b7c4abf80:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    1d2b7c4abf85:	c4 41 41 db f6                                  	vpand  xmm14,xmm7,xmm14
    1d2b7c4abf8a:	85 c0                                           	test   eax,eax
    1d2b7c4abf8c:	0f 85 2b 00 00 00                               	jne    0x1d2b7c4abfbd
    1d2b7c4abf92:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    1d2b7c4abf97:	c5 31 db ca                                     	vpand  xmm9,xmm9,xmm2
    1d2b7c4abf9b:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4abfa0:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    1d2b7c4abfa5:	c5 71 66 f7                                     	vpcmpgtd xmm14,xmm1,xmm7
    1d2b7c4abfa9:	c4 41 09 df f9                                  	vpandn xmm15,xmm14,xmm9
    1d2b7c4abfae:	c4 41 69 db ce                                  	vpand  xmm9,xmm2,xmm14
    1d2b7c4abfb3:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c4abfb8:	c4 41 41 fe f1                                  	vpaddd xmm14,xmm7,xmm9
    1d2b7c4abfbd:	c5 f9 fe c6                                     	vpaddd xmm0,xmm0,xmm6
    1d2b7c4abfc1:	c4 e2 79 3d f9                                  	vpmaxsd xmm7,xmm0,xmm1
    1d2b7c4abfc6:	c4 c2 41 39 fc                                  	vpminsd xmm7,xmm7,xmm12
    1d2b7c4abfcb:	45 85 c0                                        	test   r8d,r8d
    1d2b7c4abfce:	0f 84 49 00 00 00                               	je     0x1d2b7c4ac01d
    1d2b7c4abfd4:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    1d2b7c4abfd8:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c4abfdd:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
    1d2b7c4abfe1:	85 c9                                           	test   ecx,ecx
    1d2b7c4abfe3:	0f 85 34 00 00 00                               	jne    0x1d2b7c4ac01d
    1d2b7c4abfe9:	c4 c1 79 6e fb                                  	vmovd  xmm7,r11d
    1d2b7c4abfee:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c4abff3:	c4 41 79 66 cc                                  	vpcmpgtd xmm9,xmm0,xmm12
    1d2b7c4abff8:	c5 31 db cf                                     	vpand  xmm9,xmm9,xmm7
    1d2b7c4abffc:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4ac001:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    1d2b7c4ac006:	c5 71 66 e0                                     	vpcmpgtd xmm12,xmm1,xmm0
    1d2b7c4ac00a:	c4 41 19 df f9                                  	vpandn xmm15,xmm12,xmm9
    1d2b7c4ac00f:	c4 c1 41 db fc                                  	vpand  xmm7,xmm7,xmm12
    1d2b7c4ac014:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4ac019:	c5 f9 fe ff                                     	vpaddd xmm7,xmm0,xmm7
    1d2b7c4ac01d:	c4 e2 41 40 c2                                  	vpmulld xmm0,xmm7,xmm2
    1d2b7c4ac022:	c4 c1 79 fe fd                                  	vpaddd xmm7,xmm0,xmm13
    1d2b7c4ac027:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    1d2b7c4ac02e:	0f 84 72 00 00 00                               	je     0x1d2b7c4ac0a6
    1d2b7c4ac034:	83 bd d8 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x228],0x0
    1d2b7c4ac03b:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ac048
    1d2b7c4ac041:	33 ff                                           	xor    edi,edi
    1d2b7c4ac043:	e9 08 00 00 00                                  	jmp    0x1d2b7c4ac050
    1d2b7c4ac048:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    1d2b7c4ac04c:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac050:	83 bd f0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x210],0x0
    1d2b7c4ac057:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ac065
    1d2b7c4ac05d:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ac060:	e9 08 00 00 00                                  	jmp    0x1d2b7c4ac06d
    1d2b7c4ac065:	44 8d 04 93                                     	lea    r8d,[rbx+rdx*4]
    1d2b7c4ac069:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ac06d:	83 bd 80 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x180],0x0
    1d2b7c4ac074:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ac082
    1d2b7c4ac07a:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ac07d:	e9 0f 00 00 00                                  	jmp    0x1d2b7c4ac091
    1d2b7c4ac082:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    1d2b7c4ac089:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c4ac08d:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c4ac091:	83 bd a0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x160],0x0
    1d2b7c4ac098:	0f 85 3b 00 00 00                               	jne    0x1d2b7c4ac0d9
    1d2b7c4ac09e:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4ac0a1:	e9 42 00 00 00                                  	jmp    0x1d2b7c4ac0e8
    1d2b7c4ac0a6:	c5 11 fe ce                                     	vpaddd xmm9,xmm13,xmm6
    1d2b7c4ac0aa:	c4 41 09 76 c9                                  	vpcmpeqd xmm9,xmm14,xmm9
    1d2b7c4ac0af:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    1d2b7c4ac0b4:	83 ff 0f                                        	cmp    edi,0xf
    1d2b7c4ac0b7:	0f 84 f2 02 00 00                               	je     0x1d2b7c4ac3af
    1d2b7c4ac0bd:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    1d2b7c4ac0c3:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac0c6:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    1d2b7c4ac0ca:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    1d2b7c4ac0cd:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    1d2b7c4ac0d1:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    1d2b7c4ac0d5:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac0d9:	44 8b bd 20 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe0]
    1d2b7c4ac0e0:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    1d2b7c4ac0e4:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    1d2b7c4ac0e8:	c5 09 fe cc                                     	vpaddd xmm9,xmm14,xmm4
    1d2b7c4ac0ec:	c5 79 6e e7                                     	vmovd  xmm12,edi
    1d2b7c4ac0f0:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ac0f5:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    1d2b7c4ac0fc:	0f 84 8a 00 00 00                               	je     0x1d2b7c4ac18c
    1d2b7c4ac102:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    1d2b7c4ac109:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ac116
    1d2b7c4ac10f:	33 ff                                           	xor    edi,edi
    1d2b7c4ac111:	e9 0b 00 00 00                                  	jmp    0x1d2b7c4ac121
    1d2b7c4ac116:	c5 79 7e cf                                     	vmovd  edi,xmm9
    1d2b7c4ac11a:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac11d:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac121:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    1d2b7c4ac128:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ac135
    1d2b7c4ac12e:	33 c0                                           	xor    eax,eax
    1d2b7c4ac130:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ac142
    1d2b7c4ac135:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    1d2b7c4ac13b:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    1d2b7c4ac13e:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    1d2b7c4ac142:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    1d2b7c4ac149:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ac156
    1d2b7c4ac14f:	33 d2                                           	xor    edx,edx
    1d2b7c4ac151:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ac163
    1d2b7c4ac156:	c4 63 79 16 ca 02                               	vpextrd edx,xmm9,0x2
    1d2b7c4ac15c:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    1d2b7c4ac15f:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    1d2b7c4ac163:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    1d2b7c4ac16a:	0f 85 41 00 00 00                               	jne    0x1d2b7c4ac1b1
    1d2b7c4ac170:	c4 43 19 22 c8 01                               	vpinsrd xmm9,xmm12,r8d,0x1
    1d2b7c4ac176:	c5 79 6e e7                                     	vmovd  xmm12,edi
    1d2b7c4ac17a:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ac17f:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    1d2b7c4ac185:	33 c9                                           	xor    ecx,ecx
    1d2b7c4ac187:	e9 54 00 00 00                                  	jmp    0x1d2b7c4ac1e0
    1d2b7c4ac18c:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    1d2b7c4ac192:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac195:	41 8b 04 3c                                     	mov    eax,DWORD PTR [r12+rdi*1]
    1d2b7c4ac199:	c5 79 7e cf                                     	vmovd  edi,xmm9
    1d2b7c4ac19d:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac1a0:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac1a4:	c4 63 79 16 ca 02                               	vpextrd edx,xmm9,0x2
    1d2b7c4ac1aa:	8d 14 93                                        	lea    edx,[rbx+rdx*4]
    1d2b7c4ac1ad:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    1d2b7c4ac1b1:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    1d2b7c4ac1b7:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    1d2b7c4ac1ba:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    1d2b7c4ac1be:	c4 43 19 22 c8 01                               	vpinsrd xmm9,xmm12,r8d,0x1
    1d2b7c4ac1c4:	c5 79 6e e7                                     	vmovd  xmm12,edi
    1d2b7c4ac1c8:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ac1cd:	c4 63 19 22 e0 01                               	vpinsrd xmm12,xmm12,eax,0x1
    1d2b7c4ac1d3:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    1d2b7c4ac1da:	0f 84 78 00 00 00                               	je     0x1d2b7c4ac258
    1d2b7c4ac1e0:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    1d2b7c4ac1e7:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ac1f4
    1d2b7c4ac1ed:	33 ff                                           	xor    edi,edi
    1d2b7c4ac1ef:	e9 0b 00 00 00                                  	jmp    0x1d2b7c4ac1ff
    1d2b7c4ac1f4:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    1d2b7c4ac1f8:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac1fb:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac1ff:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    1d2b7c4ac206:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ac214
    1d2b7c4ac20c:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ac20f:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4ac222
    1d2b7c4ac214:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    1d2b7c4ac21a:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    1d2b7c4ac21e:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ac222:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    1d2b7c4ac229:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ac236
    1d2b7c4ac22f:	33 c0                                           	xor    eax,eax
    1d2b7c4ac231:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ac243
    1d2b7c4ac236:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
    1d2b7c4ac23c:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    1d2b7c4ac23f:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    1d2b7c4ac243:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    1d2b7c4ac24a:	0f 85 2d 00 00 00                               	jne    0x1d2b7c4ac27d
    1d2b7c4ac250:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4ac253:	e9 33 00 00 00                                  	jmp    0x1d2b7c4ac28b
    1d2b7c4ac258:	c4 e3 79 16 ff 01                               	vpextrd edi,xmm7,0x1
    1d2b7c4ac25e:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac261:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    1d2b7c4ac265:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    1d2b7c4ac269:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac26c:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac270:	c4 e3 79 16 f8 02                               	vpextrd eax,xmm7,0x2
    1d2b7c4ac276:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    1d2b7c4ac279:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    1d2b7c4ac27d:	c4 c3 79 16 f9 03                               	vpextrd r9d,xmm7,0x3
    1d2b7c4ac283:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    1d2b7c4ac287:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
    1d2b7c4ac28b:	c4 c3 31 22 fb 02                               	vpinsrd xmm7,xmm9,r11d,0x2
    1d2b7c4ac291:	c4 63 19 22 ca 02                               	vpinsrd xmm9,xmm12,edx,0x2
    1d2b7c4ac297:	c4 c1 79 fe c6                                  	vpaddd xmm0,xmm0,xmm14
    1d2b7c4ac29c:	c5 79 6e e7                                     	vmovd  xmm12,edi
    1d2b7c4ac2a0:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ac2a5:	c4 43 19 22 e0 01                               	vpinsrd xmm12,xmm12,r8d,0x1
    1d2b7c4ac2ab:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    1d2b7c4ac2b1:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    1d2b7c4ac2b8:	0f 84 79 00 00 00                               	je     0x1d2b7c4ac337
    1d2b7c4ac2be:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    1d2b7c4ac2c5:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ac2d2
    1d2b7c4ac2cb:	33 ff                                           	xor    edi,edi
    1d2b7c4ac2cd:	e9 0b 00 00 00                                  	jmp    0x1d2b7c4ac2dd
    1d2b7c4ac2d2:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    1d2b7c4ac2d6:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac2d9:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac2dd:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    1d2b7c4ac2e4:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ac2f2
    1d2b7c4ac2ea:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ac2ed:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4ac300
    1d2b7c4ac2f2:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    1d2b7c4ac2f8:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    1d2b7c4ac2fc:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ac300:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    1d2b7c4ac307:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ac315
    1d2b7c4ac30d:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ac310:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4ac323
    1d2b7c4ac315:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    1d2b7c4ac31b:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c4ac31f:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c4ac323:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    1d2b7c4ac32a:	0f 85 2d 00 00 00                               	jne    0x1d2b7c4ac35d
    1d2b7c4ac330:	33 c0                                           	xor    eax,eax
    1d2b7c4ac332:	e9 33 00 00 00                                  	jmp    0x1d2b7c4ac36a
    1d2b7c4ac337:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    1d2b7c4ac33d:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac340:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    1d2b7c4ac344:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    1d2b7c4ac348:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac34b:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac34f:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    1d2b7c4ac355:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c4ac359:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c4ac35d:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    1d2b7c4ac363:	8d 04 83                                        	lea    eax,[rbx+rax*4]
    1d2b7c4ac366:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    1d2b7c4ac36a:	c4 c3 41 22 c7 03                               	vpinsrd xmm0,xmm7,r15d,0x3
    1d2b7c4ac370:	c4 e3 31 22 f9 03                               	vpinsrd xmm7,xmm9,ecx,0x3
    1d2b7c4ac376:	c5 79 6e cf                                     	vmovd  xmm9,edi
    1d2b7c4ac37a:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    1d2b7c4ac37f:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    1d2b7c4ac385:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    1d2b7c4ac38b:	c4 63 31 22 c8 03                               	vpinsrd xmm9,xmm9,eax,0x3
    1d2b7c4ac391:	c4 43 19 22 e1 03                               	vpinsrd xmm12,xmm12,r9d,0x3
    1d2b7c4ac397:	c5 79 28 ff                                     	vmovapd xmm15,xmm7
    1d2b7c4ac39b:	c4 c1 79 28 fc                                  	vmovapd xmm7,xmm12
    1d2b7c4ac3a0:	c4 41 79 28 e7                                  	vmovapd xmm12,xmm15
    1d2b7c4ac3a5:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    1d2b7c4ac3aa:	e9 97 00 00 00                                  	jmp    0x1d2b7c4ac446
    1d2b7c4ac3af:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    1d2b7c4ac3b3:	c4 c1 7b 10 04 3c                               	vmovsd xmm0,QWORD PTR [r12+rdi*1]
    1d2b7c4ac3b9:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    1d2b7c4ac3bc:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    1d2b7c4ac3c2:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    1d2b7c4ac3c7:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    1d2b7c4ac3cd:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac3d0:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    1d2b7c4ac3d6:	44 8b 85 20 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe0]
    1d2b7c4ac3dd:	42 8d 3c 83                                     	lea    edi,[rbx+r8*4]
    1d2b7c4ac3e1:	c4 41 7b 10 24 3c                               	vmovsd xmm12,QWORD PTR [r12+rdi*1]
    1d2b7c4ac3e7:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    1d2b7c4ac3ec:	c4 41 78 c6 e1 dd                               	vshufps xmm12,xmm0,xmm9,0xdd
    1d2b7c4ac3f2:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    1d2b7c4ac3f8:	c5 c1 72 f7 02                                  	vpslld xmm7,xmm7,0x2
    1d2b7c4ac3fd:	c5 f9 7e ff                                     	vmovd  edi,xmm7
    1d2b7c4ac401:	03 fb                                           	add    edi,ebx
    1d2b7c4ac403:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    1d2b7c4ac409:	c4 e3 79 16 ff 01                               	vpextrd edi,xmm7,0x1
    1d2b7c4ac40f:	03 fb                                           	add    edi,ebx
    1d2b7c4ac411:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    1d2b7c4ac417:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    1d2b7c4ac41c:	c4 e3 79 16 ff 02                               	vpextrd edi,xmm7,0x2
    1d2b7c4ac422:	03 fb                                           	add    edi,ebx
    1d2b7c4ac424:	c4 41 7b 10 2c 3c                               	vmovsd xmm13,QWORD PTR [r12+rdi*1]
    1d2b7c4ac42a:	c4 e3 79 16 ff 03                               	vpextrd edi,xmm7,0x3
    1d2b7c4ac430:	03 fb                                           	add    edi,ebx
    1d2b7c4ac432:	c4 c1 7b 10 3c 3c                               	vmovsd xmm7,QWORD PTR [r12+rdi*1]
    1d2b7c4ac438:	c5 91 6c ff                                     	vpunpcklqdq xmm7,xmm13,xmm7
    1d2b7c4ac43c:	c5 30 c6 ef dd                                  	vshufps xmm13,xmm9,xmm7,0xdd
    1d2b7c4ac441:	c5 b0 c6 ff 88                                  	vshufps xmm7,xmm9,xmm7,0x88
    1d2b7c4ac446:	c4 41 38 5c c3                                  	vsubps xmm8,xmm8,xmm11
    1d2b7c4ac44b:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    1d2b7c4ac450:	c5 28 5c d3                                     	vsubps xmm10,xmm10,xmm3
    1d2b7c4ac454:	c4 41 50 5c da                                  	vsubps xmm11,xmm5,xmm10
    1d2b7c4ac459:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    1d2b7c4ac463:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4ac468:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4ac46d:	c4 c1 79 db d6                                  	vpand  xmm2,xmm0,xmm14
    1d2b7c4ac472:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac477:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    1d2b7c4ac47d:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    1d2b7c4ac482:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac487:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    1d2b7c4ac48c:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c4ac490:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    1d2b7c4ac494:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    1d2b7c4ac499:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c4ac49d:	c4 c1 19 db de                                  	vpand  xmm3,xmm12,xmm14
    1d2b7c4ac4a2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac4a7:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    1d2b7c4ac4ad:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    1d2b7c4ac4b2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac4b7:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    1d2b7c4ac4bc:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    1d2b7c4ac4c0:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    1d2b7c4ac4c4:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    1d2b7c4ac4c9:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    1d2b7c4ac4cd:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    1d2b7c4ac4d1:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    1d2b7c4ac4d5:	c4 c1 41 db de                                  	vpand  xmm3,xmm7,xmm14
    1d2b7c4ac4da:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac4df:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    1d2b7c4ac4e5:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    1d2b7c4ac4ea:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac4ef:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    1d2b7c4ac4f4:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    1d2b7c4ac4f8:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    1d2b7c4ac4fc:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    1d2b7c4ac501:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    1d2b7c4ac505:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    1d2b7c4ac50a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac50f:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c4ac515:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c4ac51a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac51f:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c4ac524:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c4ac528:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c4ac52c:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c4ac531:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    1d2b7c4ac535:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    1d2b7c4ac539:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    1d2b7c4ac53d:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    1d2b7c4ac541:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    1d2b7c4ac54b:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c4ac550:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c4ac554:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    1d2b7c4ac558:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    1d2b7c4ac55f:	c4 81 7a 7f 14 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm2
    1d2b7c4ac565:	c5 e9 72 d0 10                                  	vpsrld xmm2,xmm0,0x10
    1d2b7c4ac56a:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    1d2b7c4ac56f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac574:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    1d2b7c4ac57a:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    1d2b7c4ac57f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac584:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    1d2b7c4ac589:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c4ac58d:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    1d2b7c4ac591:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    1d2b7c4ac596:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c4ac59a:	c4 c1 59 72 d4 10                               	vpsrld xmm4,xmm12,0x10
    1d2b7c4ac5a0:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    1d2b7c4ac5a5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac5aa:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c4ac5b0:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c4ac5b5:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac5ba:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c4ac5bf:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c4ac5c3:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c4ac5c7:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c4ac5cc:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    1d2b7c4ac5d0:	c5 e8 58 d4                                     	vaddps xmm2,xmm2,xmm4
    1d2b7c4ac5d4:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    1d2b7c4ac5d8:	c5 d9 72 d7 10                                  	vpsrld xmm4,xmm7,0x10
    1d2b7c4ac5dd:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    1d2b7c4ac5e2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac5e7:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c4ac5ed:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c4ac5f2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac5f7:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c4ac5fc:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c4ac600:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c4ac604:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c4ac609:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    1d2b7c4ac60d:	c4 c1 71 72 d5 10                               	vpsrld xmm1,xmm13,0x10
    1d2b7c4ac613:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    1d2b7c4ac618:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac61d:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c4ac623:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c4ac628:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac62d:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c4ac632:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c4ac636:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c4ac63a:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c4ac63f:	c5 a8 59 c9                                     	vmulps xmm1,xmm10,xmm1
    1d2b7c4ac643:	c5 d8 58 c9                                     	vaddps xmm1,xmm4,xmm1
    1d2b7c4ac647:	c5 b8 59 c9                                     	vmulps xmm1,xmm8,xmm1
    1d2b7c4ac64b:	c5 e8 58 c9                                     	vaddps xmm1,xmm2,xmm1
    1d2b7c4ac64f:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    1d2b7c4ac653:	c4 81 7a 7f 4c 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm1
    1d2b7c4ac65a:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    1d2b7c4ac65f:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    1d2b7c4ac664:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac669:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c4ac66f:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c4ac674:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac679:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c4ac67e:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c4ac682:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c4ac686:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c4ac68b:	c5 a0 59 c9                                     	vmulps xmm1,xmm11,xmm1
    1d2b7c4ac68f:	c4 c1 69 72 d4 08                               	vpsrld xmm2,xmm12,0x8
    1d2b7c4ac695:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    1d2b7c4ac69a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac69f:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    1d2b7c4ac6a5:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    1d2b7c4ac6aa:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac6af:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    1d2b7c4ac6b4:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c4ac6b8:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    1d2b7c4ac6bc:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    1d2b7c4ac6c1:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    1d2b7c4ac6c5:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    1d2b7c4ac6c9:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c4ac6cd:	c5 e9 72 d7 08                                  	vpsrld xmm2,xmm7,0x8
    1d2b7c4ac6d2:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    1d2b7c4ac6d7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac6dc:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    1d2b7c4ac6e2:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    1d2b7c4ac6e7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac6ec:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    1d2b7c4ac6f1:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c4ac6f5:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    1d2b7c4ac6f9:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    1d2b7c4ac6fe:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c4ac702:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    1d2b7c4ac708:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    1d2b7c4ac70d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac712:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    1d2b7c4ac718:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    1d2b7c4ac71d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac722:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    1d2b7c4ac728:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    1d2b7c4ac72d:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    1d2b7c4ac732:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    1d2b7c4ac737:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    1d2b7c4ac73c:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    1d2b7c4ac741:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    1d2b7c4ac746:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    1d2b7c4ac74b:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    1d2b7c4ac74f:	c4 01 7a 7f 74 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm14
    1d2b7c4ac756:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    1d2b7c4ac75b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac760:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c4ac766:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c4ac76b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac770:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c4ac775:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c4ac779:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c4ac77d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c4ac782:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    1d2b7c4ac786:	c4 c1 19 72 d4 18                               	vpsrld xmm12,xmm12,0x18
    1d2b7c4ac78c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac791:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    1d2b7c4ac797:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    1d2b7c4ac79c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac7a1:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    1d2b7c4ac7a7:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    1d2b7c4ac7ac:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    1d2b7c4ac7b1:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    1d2b7c4ac7b6:	c4 41 28 59 e4                                  	vmulps xmm12,xmm10,xmm12
    1d2b7c4ac7bb:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    1d2b7c4ac7c0:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c4ac7c4:	c5 c1 72 d7 18                                  	vpsrld xmm7,xmm7,0x18
    1d2b7c4ac7c9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac7ce:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    1d2b7c4ac7d4:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    1d2b7c4ac7d9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac7de:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    1d2b7c4ac7e3:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    1d2b7c4ac7e7:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    1d2b7c4ac7eb:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    1d2b7c4ac7f0:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    1d2b7c4ac7f4:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    1d2b7c4ac7fa:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac7ff:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    1d2b7c4ac805:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    1d2b7c4ac80a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac80f:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    1d2b7c4ac815:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    1d2b7c4ac81a:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    1d2b7c4ac81f:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    1d2b7c4ac824:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    1d2b7c4ac829:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    1d2b7c4ac82e:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    1d2b7c4ac832:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4ac836:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    1d2b7c4ac83e:	e9 cd 01 00 00                                  	jmp    0x1d2b7c4aca10
    1d2b7c4ac843:	83 bd 38 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xc8],0xf
    1d2b7c4ac84a:	0f 84 72 00 00 00                               	je     0x1d2b7c4ac8c2
    1d2b7c4ac850:	f6 85 38 ff ff ff 01                            	test   BYTE PTR [rbp-0xc8],0x1
    1d2b7c4ac857:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ac864
    1d2b7c4ac85d:	33 ff                                           	xor    edi,edi
    1d2b7c4ac85f:	e9 08 00 00 00                                  	jmp    0x1d2b7c4ac86c
    1d2b7c4ac864:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    1d2b7c4ac868:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac86c:	f6 85 38 ff ff ff 02                            	test   BYTE PTR [rbp-0xc8],0x2
    1d2b7c4ac873:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ac881
    1d2b7c4ac879:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ac87c:	e9 08 00 00 00                                  	jmp    0x1d2b7c4ac889
    1d2b7c4ac881:	44 8d 04 93                                     	lea    r8d,[rbx+rdx*4]
    1d2b7c4ac885:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ac889:	f6 85 38 ff ff ff 04                            	test   BYTE PTR [rbp-0xc8],0x4
    1d2b7c4ac890:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ac89e
    1d2b7c4ac896:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ac899:	e9 0f 00 00 00                                  	jmp    0x1d2b7c4ac8ad
    1d2b7c4ac89e:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    1d2b7c4ac8a5:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c4ac8a9:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c4ac8ad:	f6 85 38 ff ff ff 08                            	test   BYTE PTR [rbp-0xc8],0x8
    1d2b7c4ac8b4:	0f 85 24 00 00 00                               	jne    0x1d2b7c4ac8de
    1d2b7c4ac8ba:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4ac8bd:	e9 2b 00 00 00                                  	jmp    0x1d2b7c4ac8ed
    1d2b7c4ac8c2:	8b bd 00 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x100]
    1d2b7c4ac8c8:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4ac8cb:	45 8b 1c 3c                                     	mov    r11d,DWORD PTR [r12+rdi*1]
    1d2b7c4ac8cf:	8d 3c 93                                        	lea    edi,[rbx+rdx*4]
    1d2b7c4ac8d2:	45 8b 04 3c                                     	mov    r8d,DWORD PTR [r12+rdi*1]
    1d2b7c4ac8d6:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    1d2b7c4ac8da:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ac8de:	44 8b bd 20 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe0]
    1d2b7c4ac8e5:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    1d2b7c4ac8e9:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    1d2b7c4ac8ed:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    1d2b7c4ac8f1:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4ac8f6:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    1d2b7c4ac8fc:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    1d2b7c4ac902:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    1d2b7c4ac908:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x1d2b7c4ac45b
    1d2b7c4ac90f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ac914:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ac918:	c5 79 db c7                                     	vpand  xmm8,xmm0,xmm7
    1d2b7c4ac91c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac921:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c4ac927:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c4ac92c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac931:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c4ac937:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c4ac93c:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c4ac941:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c4ac946:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x1d2b7c4ac543
    1d2b7c4ac94d:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4ac952:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4ac957:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    1d2b7c4ac95c:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    1d2b7c4ac963:	c4 01 7a 7f 04 1c                               	vmovdqu XMMWORD PTR [r12+r11*1],xmm8
    1d2b7c4ac969:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    1d2b7c4ac96e:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    1d2b7c4ac972:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac977:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c4ac97d:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c4ac982:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac987:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c4ac98d:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c4ac992:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c4ac997:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c4ac99c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    1d2b7c4ac9a1:	c4 01 7a 7f 44 1c 20                            	vmovdqu XMMWORD PTR [r12+r11*1+0x20],xmm8
    1d2b7c4ac9a8:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    1d2b7c4ac9ad:	c5 b9 db ff                                     	vpand  xmm7,xmm8,xmm7
    1d2b7c4ac9b1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac9b6:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    1d2b7c4ac9bc:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    1d2b7c4ac9c1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac9c6:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    1d2b7c4ac9cb:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    1d2b7c4ac9cf:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    1d2b7c4ac9d3:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    1d2b7c4ac9d8:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    1d2b7c4ac9dd:	c4 81 7a 7f 7c 1c 10                            	vmovdqu XMMWORD PTR [r12+r11*1+0x10],xmm7
    1d2b7c4ac9e4:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    1d2b7c4ac9e9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ac9ee:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c4ac9f4:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c4ac9f9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ac9fe:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c4aca03:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c4aca07:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c4aca0b:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c4aca10:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x1d2b7c4ac543
    1d2b7c4aca17:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4aca1c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4aca20:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c4aca24:	c4 81 7a 7f 44 1c 30                            	vmovdqu XMMWORD PTR [r12+r11*1+0x30],xmm0
    1d2b7c4aca2b:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4aca2f:	e9 3f 03 00 00                                  	jmp    0x1d2b7c4acd73
    1d2b7c4aca34:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4aca38:	49 8d 5c 24 08                                  	lea    rbx,[r12+0x8]
    1d2b7c4aca3d:	c4 a2 79 18 3c 03                               	vbroadcastss xmm7,DWORD PTR [rbx+r8*1]
    1d2b7c4aca43:	c4 41 79 28 de                                  	vmovapd xmm11,xmm14
    1d2b7c4aca48:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    1d2b7c4aca4c:	c4 62 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [rbx+rax*1]
    1d2b7c4aca52:	c5 79 28 ea                                     	vmovapd xmm13,xmm2
    1d2b7c4aca56:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    1d2b7c4aca5b:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    1d2b7c4aca60:	c4 62 79 18 24 3b                               	vbroadcastss xmm12,DWORD PTR [rbx+rdi*1]
    1d2b7c4aca66:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    1d2b7c4aca6b:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    1d2b7c4aca70:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    1d2b7c4aca74:	41 83 ff 03                                     	cmp    r15d,0x3
    1d2b7c4aca78:	0f 84 61 02 00 00                               	je     0x1d2b7c4accdf
    1d2b7c4aca7e:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    1d2b7c4aca86:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4aca89:	c4 41 7a 7f a4 3c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1c0],xmm12
    1d2b7c4aca93:	c4 41 7a 7f a4 3c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1b0],xmm12
    1d2b7c4aca9d:	c4 41 7a 7f a4 3c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1a0],xmm12
    1d2b7c4acaa7:	c4 41 7a 7f 94 3c f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1f0],xmm10
    1d2b7c4acab1:	c4 41 7a 7f 84 3c e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1e0],xmm8
    1d2b7c4acabb:	c4 c1 7a 7f bc 3c d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1d0],xmm7
    1d2b7c4acac5:	c4 41 7a 7f a4 3c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x190],xmm12
    1d2b7c4acacf:	4c 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r9
    1d2b7c4acad6:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    1d2b7c4acadd:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4acae0:	e9 28 00 00 00                                  	jmp    0x1d2b7c4acb0d
    1d2b7c4acae5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4acaee:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4acaf7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4acb00:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    1d2b7c4acb06:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4acb09:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4acb0d:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    1d2b7c4acb14:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c4acb19:	0f 85 f1 42 00 00                               	jne    0x1d2b7c4b0e10
    1d2b7c4acb1f:	8b c1                                           	mov    eax,ecx
    1d2b7c4acb21:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4acb24:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4acb2b:	d3 eb                                           	shr    ebx,cl
    1d2b7c4acb2d:	f6 c3 01                                        	test   bl,0x1
    1d2b7c4acb30:	0f 84 ff 00 00 00                               	je     0x1d2b7c4acc35
    1d2b7c4acb36:	41 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+rax*1+0x10]
    1d2b7c4acb3b:	41 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+rax*1+0xc]
    1d2b7c4acb40:	45 8b 5c 04 08                                  	mov    r11d,DWORD PTR [r12+rax*1+0x8]
    1d2b7c4acb45:	45 8b 5c 04 04                                  	mov    r11d,DWORD PTR [r12+rax*1+0x4]
    1d2b7c4acb4a:	45 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+rax*1]
    1d2b7c4acb4e:	41 83 ff 02                                     	cmp    r15d,0x2
    1d2b7c4acb52:	0f 84 88 00 00 00                               	je     0x1d2b7c4acbe0
    1d2b7c4acb58:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4acb5b:	0f 85 33 00 00 00                               	jne    0x1d2b7c4acb94
    1d2b7c4acb61:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    1d2b7c4acb69:	c4 81 7a 10 3c 3c                               	vmovss xmm7,DWORD PTR [r12+r15*1]
    1d2b7c4acb6f:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    1d2b7c4acb76:	41 8b d8                                        	mov    ebx,r8d
    1d2b7c4acb79:	c1 e3 04                                        	shl    ebx,0x4
    1d2b7c4acb7c:	41 03 df                                        	add    ebx,r15d
    1d2b7c4acb7f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4acb83:	41 8b c3                                        	mov    eax,r11d
    1d2b7c4acb86:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    1d2b7c4acb8a:	e8 91 f6 f0 ff                                  	call   0x1d2b7c3bc220
    1d2b7c4acb8f:	e9 a1 00 00 00                                  	jmp    0x1d2b7c4acc35
    1d2b7c4acb94:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4acb97:	8b 5c 06 14                                     	mov    ebx,DWORD PTR [rsi+rax*1+0x14]
    1d2b7c4acb9b:	46 8d a4 87 f0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1f0]
    1d2b7c4acba3:	c4 a1 7a 10 3c 26                               	vmovss xmm7,DWORD PTR [rsi+r12*1]
    1d2b7c4acba9:	46 8d a4 87 e0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1e0]
    1d2b7c4acbb1:	c4 a1 7a 10 14 26                               	vmovss xmm2,DWORD PTR [rsi+r12*1]
    1d2b7c4acbb7:	44 8d a7 90 01 00 00                            	lea    r12d,[rdi+0x190]
    1d2b7c4acbbe:	45 8b f8                                        	mov    r15d,r8d
    1d2b7c4acbc1:	41 c1 e7 04                                     	shl    r15d,0x4
    1d2b7c4acbc5:	45 03 e7                                        	add    r12d,r15d
    1d2b7c4acbc8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4acbcc:	41 8b c3                                        	mov    eax,r11d
    1d2b7c4acbcf:	45 8b cc                                        	mov    r9d,r12d
    1d2b7c4acbd2:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    1d2b7c4acbd6:	e8 5d f6 f0 ff                                  	call   0x1d2b7c3bc238
    1d2b7c4acbdb:	e9 55 00 00 00                                  	jmp    0x1d2b7c4acc35
    1d2b7c4acbe0:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4acbe3:	8b 5c 06 14                                     	mov    ebx,DWORD PTR [rsi+rax*1+0x14]
    1d2b7c4acbe7:	44 8b 4c 06 18                                  	mov    r9d,DWORD PTR [rsi+rax*1+0x18]
    1d2b7c4acbec:	46 8d a4 87 f0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1f0]
    1d2b7c4acbf4:	c4 a1 7a 10 0c 26                               	vmovss xmm1,DWORD PTR [rsi+r12*1]
    1d2b7c4acbfa:	46 8d a4 87 e0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1e0]
    1d2b7c4acc02:	c4 a1 7a 10 14 26                               	vmovss xmm2,DWORD PTR [rsi+r12*1]
    1d2b7c4acc08:	46 8d a4 87 d0 01 00 00                         	lea    r12d,[rdi+r8*4+0x1d0]
    1d2b7c4acc10:	c4 a1 7a 10 1c 26                               	vmovss xmm3,DWORD PTR [rsi+r12*1]
    1d2b7c4acc16:	44 8d a7 90 01 00 00                            	lea    r12d,[rdi+0x190]
    1d2b7c4acc1d:	45 8b f8                                        	mov    r15d,r8d
    1d2b7c4acc20:	41 c1 e7 04                                     	shl    r15d,0x4
    1d2b7c4acc24:	45 03 e7                                        	add    r12d,r15d
    1d2b7c4acc27:	41 54                                           	push   r12
    1d2b7c4acc29:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4acc2d:	41 8b c3                                        	mov    eax,r11d
    1d2b7c4acc30:	e8 f3 f5 f0 ff                                  	call   0x1d2b7c3bc228
    1d2b7c4acc35:	44 8b 85 00 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x100]
    1d2b7c4acc3c:	41 83 c0 01                                     	add    r8d,0x1
    1d2b7c4acc40:	41 83 f8 04                                     	cmp    r8d,0x4
    1d2b7c4acc44:	0f 85 b6 fe ff ff                               	jne    0x1d2b7c4acb00
    1d2b7c4acc4a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4acc4d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4acc51:	c4 c1 7a 6f 84 38 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0x1b0]
    1d2b7c4acc5b:	c4 c1 7a 6f b4 38 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0x1c0]
    1d2b7c4acc65:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    1d2b7c4acc69:	c4 41 7a 6f 84 38 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x190]
    1d2b7c4acc73:	c4 41 7a 6f 8c 38 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rdi*1+0x1a0]
    1d2b7c4acc7d:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    1d2b7c4acc82:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    1d2b7c4acc86:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    1d2b7c4acc8c:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    1d2b7c4acc93:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    1d2b7c4acc97:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    1d2b7c4acc9e:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    1d2b7c4acca2:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    1d2b7c4acca7:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    1d2b7c4accab:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    1d2b7c4accb2:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    1d2b7c4accb6:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    1d2b7c4accbc:	44 8b df                                        	mov    r11d,edi
    1d2b7c4accbf:	4d 8b e0                                        	mov    r12,r8
    1d2b7c4accc2:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    1d2b7c4accca:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    1d2b7c4accd2:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    1d2b7c4accda:	e9 94 00 00 00                                  	jmp    0x1d2b7c4acd73
    1d2b7c4accdf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4acce3:	8b c1                                           	mov    eax,ecx
    1d2b7c4acce5:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    1d2b7c4accea:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    1d2b7c4accef:	c5 f9 28 df                                     	vmovapd xmm3,xmm7
    1d2b7c4accf3:	48 8b 95 38 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xc8]
    1d2b7c4accfa:	41 8b c9                                        	mov    ecx,r9d
    1d2b7c4accfd:	e8 26 f8 f0 ff                                  	call   0x1d2b7c3bc528
    1d2b7c4acd02:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4acd06:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4acd0a:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    1d2b7c4acd12:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    1d2b7c4acd1a:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    1d2b7c4acd22:	e9 4c 00 00 00                                  	jmp    0x1d2b7c4acd73
    1d2b7c4acd27:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4acd2a:	48 8d 7e 3c                                     	lea    rdi,[rsi+0x3c]
    1d2b7c4acd2e:	44 8b e1                                        	mov    r12d,ecx
    1d2b7c4acd31:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    1d2b7c4acd37:	c4 a1 7a 7f 3c 0e                               	vmovdqu XMMWORD PTR [rsi+r9*1],xmm7
    1d2b7c4acd3d:	48 8d 7e 40                                     	lea    rdi,[rsi+0x40]
    1d2b7c4acd41:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    1d2b7c4acd47:	c4 a1 7a 7f 7c 0e 10                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x10],xmm7
    1d2b7c4acd4e:	48 8d 7e 44                                     	lea    rdi,[rsi+0x44]
    1d2b7c4acd52:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    1d2b7c4acd58:	c4 a1 7a 7f 7c 0e 20                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x20],xmm7
    1d2b7c4acd5f:	48 8d 7e 48                                     	lea    rdi,[rsi+0x48]
    1d2b7c4acd63:	c4 a2 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [rdi+r12*1]
    1d2b7c4acd69:	c4 a1 7a 7f 7c 0e 30                            	vmovdqu XMMWORD PTR [rsi+r9*1+0x30],xmm7
    1d2b7c4acd70:	4c 8b e6                                        	mov    r12,rsi
    1d2b7c4acd73:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    1d2b7c4acd79:	83 c7 01                                        	add    edi,0x1
    1d2b7c4acd7c:	83 ff 04                                        	cmp    edi,0x4
    1d2b7c4acd7f:	0f 85 3b ed ff ff                               	jne    0x1d2b7c4abac0
    1d2b7c4acd85:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4acd88:	c4 c1 7a 6f 84 3c 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x90]
    1d2b7c4acd92:	4c 8b 15 4f ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4f]        # 0x1d2b7c4abce8
    1d2b7c4acd99:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4acd9e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4acda2:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4acda6:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    1d2b7c4acdae:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    1d2b7c4acdb2:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    1d2b7c4acdb7:	c4 41 7a 6f 84 3c a0 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0xa0]
    1d2b7c4acdc1:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    1d2b7c4acdc5:	c5 78 10 8d 40 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xc0]
    1d2b7c4acdcd:	c5 30 58 cf                                     	vaddps xmm9,xmm9,xmm7
    1d2b7c4acdd1:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    1d2b7c4acdd6:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    1d2b7c4acddb:	c4 41 7a 6f 84 3c b0 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0xb0]
    1d2b7c4acde5:	c5 38 58 c7                                     	vaddps xmm8,xmm8,xmm7
    1d2b7c4acde9:	c5 78 10 95 f0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x110]
    1d2b7c4acdf1:	c5 a8 58 ff                                     	vaddps xmm7,xmm10,xmm7
    1d2b7c4acdf5:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    1d2b7c4acdf9:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4acdfd:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    1d2b7c4ace07:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ace0c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ace10:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c4ace14:	c5 f8 10 bd 10 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1f0]
    1d2b7c4ace1c:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    1d2b7c4ace20:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    1d2b7c4ace24:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c4ace28:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    1d2b7c4ace2c:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    1d2b7c4ace31:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c4ace36:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4ace3d:	47 8b 9c 04 38 01 00 00                         	mov    r11d,DWORD PTR [r12+r8*1+0x138]
    1d2b7c4ace45:	4d 8b fb                                        	mov    r15,r11
    1d2b7c4ace48:	41 83 c7 ff                                     	add    r15d,0xffffffff
    1d2b7c4ace4c:	0f 85 fc 00 00 00                               	jne    0x1d2b7c4acf4e
    1d2b7c4ace52:	c4 41 7a 6f 84 3c 70 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x170]
    1d2b7c4ace5c:	c4 41 7a 6f 8c 3c 30 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x130]
    1d2b7c4ace66:	4d 8d 9c 24 38 36 00 00                         	lea    r11,[r12+0x3638]
    1d2b7c4ace6e:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4ace72:	c4 42 79 18 14 03                               	vbroadcastss xmm10,DWORD PTR [r11+rax*1]
    1d2b7c4ace78:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    1d2b7c4ace7d:	c4 41 40 5f d2                                  	vmaxps xmm10,xmm7,xmm10
    1d2b7c4ace82:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    1d2b7c4ace87:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    1d2b7c4ace8c:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    1d2b7c4ace91:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c4ace96:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    1d2b7c4ace9b:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    1d2b7c4acea0:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c4acea5:	c4 41 7a 6f 8c 3c 60 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x160]
    1d2b7c4aceaf:	c4 41 7a 6f 94 3c 20 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x120]
    1d2b7c4aceb9:	4d 8d 9c 24 34 36 00 00                         	lea    r11,[r12+0x3634]
    1d2b7c4acec1:	c4 42 79 18 24 03                               	vbroadcastss xmm12,DWORD PTR [r11+rax*1]
    1d2b7c4acec7:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    1d2b7c4acecc:	c4 41 40 5f e4                                  	vmaxps xmm12,xmm7,xmm12
    1d2b7c4aced1:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    1d2b7c4aced6:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    1d2b7c4acedb:	c4 41 40 5f d2                                  	vmaxps xmm10,xmm7,xmm10
    1d2b7c4acee0:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    1d2b7c4acee5:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    1d2b7c4aceea:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    1d2b7c4aceef:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c4acef4:	c4 41 7a 6f 94 3c 50 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x150]
    1d2b7c4acefe:	c4 41 7a 6f a4 3c 10 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+rdi*1+0x110]
    1d2b7c4acf08:	4d 8d 9c 24 30 36 00 00                         	lea    r11,[r12+0x3630]
    1d2b7c4acf10:	c4 42 79 18 2c 03                               	vbroadcastss xmm13,DWORD PTR [r11+rax*1]
    1d2b7c4acf16:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    1d2b7c4acf1b:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    1d2b7c4acf1f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c4acf23:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    1d2b7c4acf27:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    1d2b7c4acf2b:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c4acf2f:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    1d2b7c4acf33:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    1d2b7c4acf37:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c4acf3b:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    1d2b7c4acf40:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    1d2b7c4acf44:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    1d2b7c4acf49:	e9 8f 01 00 00                                  	jmp    0x1d2b7c4ad0dd
    1d2b7c4acf4e:	41 83 ff 02                                     	cmp    r15d,0x2
    1d2b7c4acf52:	0f 84 8b 00 00 00                               	je     0x1d2b7c4acfe3
    1d2b7c4acf58:	c4 c1 7a 6f 84 3c 30 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x130]
    1d2b7c4acf62:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    1d2b7c4acf66:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    1d2b7c4acf6a:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c4acf6e:	c4 41 7a 6f 8c 3c 20 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rdi*1+0x120]
    1d2b7c4acf78:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    1d2b7c4acf7d:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    1d2b7c4acf82:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c4acf87:	49 8d 84 24 1c 37 00 00                         	lea    rax,[r12+0x371c]
    1d2b7c4acf8f:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    1d2b7c4acf93:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    1d2b7c4acf99:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    1d2b7c4acf9e:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    1d2b7c4acfa3:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c4acfa8:	c4 41 7a 6f 94 3c 10 01 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rdi*1+0x110]
    1d2b7c4acfb2:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    1d2b7c4acfb7:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    1d2b7c4acfbc:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c4acfc1:	49 8d 84 24 18 37 00 00                         	lea    rax,[r12+0x3718]
    1d2b7c4acfc9:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    1d2b7c4acfcf:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    1d2b7c4acfd4:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    1d2b7c4acfd9:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c4acfde:	e9 5a 00 00 00                                  	jmp    0x1d2b7c4ad03d
    1d2b7c4acfe3:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    1d2b7c4acfe8:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    1d2b7c4acfec:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c4acff0:	49 8d 84 24 1c 37 00 00                         	lea    rax,[r12+0x371c]
    1d2b7c4acff8:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    1d2b7c4acffc:	c4 22 79 18 04 38                               	vbroadcastss xmm8,DWORD PTR [rax+r15*1]
    1d2b7c4ad002:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    1d2b7c4ad007:	c4 41 40 5f c0                                  	vmaxps xmm8,xmm7,xmm8
    1d2b7c4ad00c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    1d2b7c4ad011:	49 8d 84 24 18 37 00 00                         	lea    rax,[r12+0x3718]
    1d2b7c4ad019:	c4 22 79 18 0c 38                               	vbroadcastss xmm9,DWORD PTR [rax+r15*1]
    1d2b7c4ad01f:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    1d2b7c4ad024:	c4 41 40 5f c9                                  	vmaxps xmm9,xmm7,xmm9
    1d2b7c4ad029:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    1d2b7c4ad02e:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    1d2b7c4ad033:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    1d2b7c4ad038:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    1d2b7c4ad03d:	49 8d 84 24 20 37 00 00                         	lea    rax,[r12+0x3720]
    1d2b7c4ad045:	c4 22 79 18 14 38                               	vbroadcastss xmm10,DWORD PTR [rax+r15*1]
    1d2b7c4ad04b:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    1d2b7c4ad050:	c5 c0 5f c0                                     	vmaxps xmm0,xmm7,xmm0
    1d2b7c4ad054:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    1d2b7c4ad058:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c4ad05c:	0f 84 78 00 00 00                               	je     0x1d2b7c4ad0da
    1d2b7c4ad062:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    1d2b7c4ad06c:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    1d2b7c4ad071:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    1d2b7c4ad077:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    1d2b7c4ad07d:	c4 c1 78 2e fc                                  	vucomiss xmm7,xmm12
    1d2b7c4ad082:	0f 87 09 00 00 00                               	ja     0x1d2b7c4ad091
    1d2b7c4ad088:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    1d2b7c4ad08c:	e9 05 00 00 00                                  	jmp    0x1d2b7c4ad096
    1d2b7c4ad091:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    1d2b7c4ad096:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    1d2b7c4ad09b:	c5 78 2e ef                                     	vucomiss xmm13,xmm7
    1d2b7c4ad09f:	0f 87 0a 00 00 00                               	ja     0x1d2b7c4ad0af
    1d2b7c4ad0a5:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    1d2b7c4ad0aa:	e9 05 00 00 00                                  	jmp    0x1d2b7c4ad0b4
    1d2b7c4ad0af:	c4 c1 79 28 fd                                  	vmovapd xmm7,xmm13
    1d2b7c4ad0b4:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    1d2b7c4ad0b9:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    1d2b7c4ad0bd:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4ad0c1:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4ad0c6:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    1d2b7c4ad0cb:	49 8b c7                                        	mov    rax,r15
    1d2b7c4ad0ce:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4ad0d5:	e9 3c 12 00 00                                  	jmp    0x1d2b7c4ae316
    1d2b7c4ad0da:	49 8b c7                                        	mov    rax,r15
    1d2b7c4ad0dd:	c5 78 10 a5 10 ff ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0xf0]
    1d2b7c4ad0e5:	c4 41 40 5f d4                                  	vmaxps xmm10,xmm7,xmm12
    1d2b7c4ad0ea:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    1d2b7c4ad0ef:	c4 41 7a 6f a4 3c 40 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+rdi*1+0x140]
    1d2b7c4ad0f9:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    1d2b7c4ad0fe:	c4 c1 40 5f fa                                  	vmaxps xmm7,xmm7,xmm10
    1d2b7c4ad103:	c5 a0 5d ff                                     	vminps xmm7,xmm11,xmm7
    1d2b7c4ad107:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    1d2b7c4ad10b:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    1d2b7c4ad10f:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4ad114:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    1d2b7c4ad119:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4ad120:	e9 f1 11 00 00                                  	jmp    0x1d2b7c4ae316
    1d2b7c4ad125:	43 8b 4c 04 38                                  	mov    ecx,DWORD PTR [r12+r8*1+0x38]
    1d2b7c4ad12a:	c5 f8 11 b5 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm6
    1d2b7c4ad132:	43 83 7c 04 38 00                               	cmp    DWORD PTR [r12+r8*1+0x38],0x0
    1d2b7c4ad138:	0f 85 e6 10 00 00                               	jne    0x1d2b7c4ae224
    1d2b7c4ad13e:	49 8d 4c 24 54                                  	lea    rcx,[r12+0x54]
    1d2b7c4ad143:	c4 a2 79 18 0c 09                               	vbroadcastss xmm1,DWORD PTR [rcx+r9*1]
    1d2b7c4ad149:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    1d2b7c4ad14d:	c4 e2 79 18 34 11                               	vbroadcastss xmm6,DWORD PTR [rcx+rdx*1]
    1d2b7c4ad153:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    1d2b7c4ad157:	c5 f0 58 f6                                     	vaddps xmm6,xmm1,xmm6
    1d2b7c4ad15b:	c4 e2 79 18 0c 31                               	vbroadcastss xmm1,DWORD PTR [rcx+rsi*1]
    1d2b7c4ad161:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c4ad165:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    1d2b7c4ad169:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    1d2b7c4ad16d:	49 8d 4c 24 50                                  	lea    rcx,[r12+0x50]
    1d2b7c4ad172:	c4 a2 79 18 0c 09                               	vbroadcastss xmm1,DWORD PTR [rcx+r9*1]
    1d2b7c4ad178:	c5 88 59 c9                                     	vmulps xmm1,xmm14,xmm1
    1d2b7c4ad17c:	c4 62 79 18 04 11                               	vbroadcastss xmm8,DWORD PTR [rcx+rdx*1]
    1d2b7c4ad182:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
    1d2b7c4ad187:	c4 41 70 58 c0                                  	vaddps xmm8,xmm1,xmm8
    1d2b7c4ad18c:	c4 e2 79 18 0c 31                               	vbroadcastss xmm1,DWORD PTR [rcx+rsi*1]
    1d2b7c4ad192:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    1d2b7c4ad196:	c5 38 58 c1                                     	vaddps xmm8,xmm8,xmm1
    1d2b7c4ad19a:	c4 c1 78 59 c8                                  	vmulps xmm1,xmm0,xmm8
    1d2b7c4ad19f:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    1d2b7c4ad1a3:	83 f9 01                                        	cmp    ecx,0x1
    1d2b7c4ad1a6:	0f 85 50 0d 00 00                               	jne    0x1d2b7c4adefc
    1d2b7c4ad1ac:	43 8b 7c 04 28                                  	mov    edi,DWORD PTR [r12+r8*1+0x28]
    1d2b7c4ad1b1:	85 ff                                           	test   edi,edi
    1d2b7c4ad1b3:	0f 84 43 0d 00 00                               	je     0x1d2b7c4adefc
    1d2b7c4ad1b9:	47 8b 7c 04 1c                                  	mov    r15d,DWORD PTR [r12+r8*1+0x1c]
    1d2b7c4ad1be:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4ad1c1:	0f 8e 35 0d 00 00                               	jle    0x1d2b7c4adefc
    1d2b7c4ad1c7:	43 8b 44 04 20                                  	mov    eax,DWORD PTR [r12+r8*1+0x20]
    1d2b7c4ad1cc:	85 c0                                           	test   eax,eax
    1d2b7c4ad1ce:	0f 8e 24 0d 00 00                               	jle    0x1d2b7c4adef8
    1d2b7c4ad1d4:	45 8b d7                                        	mov    r10d,r15d
    1d2b7c4ad1d7:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    1d2b7c4ad1dc:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    1d2b7c4ad1e1:	43 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+r8*1+0x10]
    1d2b7c4ad1e6:	33 f6                                           	xor    esi,esi
    1d2b7c4ad1e8:	81 f9 2f 81 00 00                               	cmp    ecx,0x812f
    1d2b7c4ad1ee:	40 0f 95 c6                                     	setne  sil
    1d2b7c4ad1f2:	81 f9 00 29 00 00                               	cmp    ecx,0x2900
    1d2b7c4ad1f8:	0f 95 c1                                        	setne  cl
    1d2b7c4ad1fb:	0f b6 c9                                        	movzx  ecx,cl
    1d2b7c4ad1fe:	23 ce                                           	and    ecx,esi
    1d2b7c4ad200:	0f 85 0d 00 00 00                               	jne    0x1d2b7c4ad213
    1d2b7c4ad206:	c5 e0 5f f9                                     	vmaxps xmm7,xmm3,xmm1
    1d2b7c4ad20a:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    1d2b7c4ad20e:	e9 0a 00 00 00                                  	jmp    0x1d2b7c4ad21d
    1d2b7c4ad213:	c4 e3 79 08 f9 09                               	vroundps xmm7,xmm1,0x9
    1d2b7c4ad219:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    1d2b7c4ad21d:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c4ad221:	44 8b d0                                        	mov    r10d,eax
    1d2b7c4ad224:	c4 c1 82 2a fa                                  	vcvtsi2ss xmm7,xmm15,r10
    1d2b7c4ad229:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    1d2b7c4ad22e:	43 8b 74 04 14                                  	mov    esi,DWORD PTR [r12+r8*1+0x14]
    1d2b7c4ad233:	33 d2                                           	xor    edx,edx
    1d2b7c4ad235:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    1d2b7c4ad23b:	0f 95 c2                                        	setne  dl
    1d2b7c4ad23e:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    1d2b7c4ad244:	40 0f 95 c6                                     	setne  sil
    1d2b7c4ad248:	40 0f b6 f6                                     	movzx  esi,sil
    1d2b7c4ad24c:	23 f2                                           	and    esi,edx
    1d2b7c4ad24e:	0f 85 0d 00 00 00                               	jne    0x1d2b7c4ad261
    1d2b7c4ad254:	c5 e0 5f f6                                     	vmaxps xmm6,xmm3,xmm6
    1d2b7c4ad258:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    1d2b7c4ad25c:	e9 0b 00 00 00                                  	jmp    0x1d2b7c4ad26c
    1d2b7c4ad261:	c4 63 79 08 c6 09                               	vroundps xmm8,xmm6,0x9
    1d2b7c4ad267:	c4 c1 48 5c f0                                  	vsubps xmm6,xmm6,xmm8
    1d2b7c4ad26c:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    1d2b7c4ad270:	4c 8b 15 71 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea71]        # 0x1d2b7c4abce8
    1d2b7c4ad277:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ad27c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ad280:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    1d2b7c4ad284:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    1d2b7c4ad289:	33 d2                                           	xor    edx,edx
    1d2b7c4ad28b:	43 81 7c 04 0c 00 26 00 00                      	cmp    DWORD PTR [r12+r8*1+0xc],0x2600
    1d2b7c4ad294:	0f 94 c2                                        	sete   dl
    1d2b7c4ad297:	85 d2                                           	test   edx,edx
    1d2b7c4ad299:	0f 85 5b 00 00 00                               	jne    0x1d2b7c4ad2fa
    1d2b7c4ad29f:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    1d2b7c4ad2a5:	4c 8b 15 79 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea79]        # 0x1d2b7c4abd25
    1d2b7c4ad2ac:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    1d2b7c4ad2b1:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x1d2b7c4abd34
    1d2b7c4ad2b8:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4ad2bd:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4ad2c2:	c4 41 30 c2 ce 01                               	vcmpltps xmm9,xmm9,xmm14
    1d2b7c4ad2c8:	4c 8b 15 5a a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa35a]        # 0x1d2b7c4a7629
    1d2b7c4ad2cf:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    1d2b7c4ad2d4:	c4 c1 48 54 cf                                  	vandps xmm1,xmm6,xmm15
    1d2b7c4ad2d9:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    1d2b7c4ad2df:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    1d2b7c4ad2e3:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    1d2b7c4ad2e8:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4ad2ec:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4ad2f0:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    1d2b7c4ad2f5:	e9 49 00 00 00                                  	jmp    0x1d2b7c4ad343
    1d2b7c4ad2fa:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    1d2b7c4ad300:	4c 8b 15 1e ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea1e]        # 0x1d2b7c4abd25
    1d2b7c4ad307:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    1d2b7c4ad30c:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x1d2b7c4abd34
    1d2b7c4ad313:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4ad318:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4ad31d:	c4 41 38 c2 ce 01                               	vcmpltps xmm9,xmm8,xmm14
    1d2b7c4ad323:	4c 8b 15 ff a2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa2ff]        # 0x1d2b7c4a7629
    1d2b7c4ad32a:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    1d2b7c4ad32f:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    1d2b7c4ad334:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    1d2b7c4ad33a:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    1d2b7c4ad33e:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    1d2b7c4ad343:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    1d2b7c4ad349:	4c 8b 15 d9 a2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa2d9]        # 0x1d2b7c4a7629
    1d2b7c4ad350:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c4ad356:	c4 c1 38 54 d7                                  	vandps xmm2,xmm8,xmm15
    1d2b7c4ad35b:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c4ad361:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    1d2b7c4ad365:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    1d2b7c4ad36a:	4c 8b 15 89 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea89]        # 0x1d2b7c4abdfa
    1d2b7c4ad371:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c4ad376:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c4ad37a:	4c 8b 15 a4 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a4]        # 0x1d2b7c4abd25
    1d2b7c4ad381:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    1d2b7c4ad386:	c4 c1 50 c2 ee 01                               	vcmpltps xmm5,xmm5,xmm14
    1d2b7c4ad38c:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    1d2b7c4ad390:	c5 e9 db d5                                     	vpand  xmm2,xmm2,xmm5
    1d2b7c4ad394:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    1d2b7c4ad399:	45 8d 4f ff                                     	lea    r9d,[r15-0x1]
    1d2b7c4ad39d:	c4 c1 79 6e e9                                  	vmovd  xmm5,r9d
    1d2b7c4ad3a2:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    1d2b7c4ad3a7:	47 8b 4c 04 2c                                  	mov    r9d,DWORD PTR [r12+r8*1+0x2c]
    1d2b7c4ad3ac:	c5 78 10 95 80 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x280]
    1d2b7c4ad3b4:	c4 42 69 3d da                                  	vpmaxsd xmm11,xmm2,xmm10
    1d2b7c4ad3b9:	c4 62 21 39 dd                                  	vpminsd xmm11,xmm11,xmm5
    1d2b7c4ad3be:	85 c9                                           	test   ecx,ecx
    1d2b7c4ad3c0:	0f 84 55 00 00 00                               	je     0x1d2b7c4ad41b
    1d2b7c4ad3c6:	c4 41 79 6e d9                                  	vmovd  xmm11,r9d
    1d2b7c4ad3cb:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    1d2b7c4ad3d0:	c4 41 69 db db                                  	vpand  xmm11,xmm2,xmm11
    1d2b7c4ad3d5:	45 85 c9                                        	test   r9d,r9d
    1d2b7c4ad3d8:	0f 85 3d 00 00 00                               	jne    0x1d2b7c4ad41b
    1d2b7c4ad3de:	c4 41 79 6e df                                  	vmovd  xmm11,r15d
    1d2b7c4ad3e3:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    1d2b7c4ad3e8:	c5 69 66 e5                                     	vpcmpgtd xmm12,xmm2,xmm5
    1d2b7c4ad3ec:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    1d2b7c4ad3f1:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4ad3f6:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    1d2b7c4ad3fb:	c5 29 66 ea                                     	vpcmpgtd xmm13,xmm10,xmm2
    1d2b7c4ad3ff:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    1d2b7c4ad404:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    1d2b7c4ad409:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    1d2b7c4ad40e:	c4 41 69 fe db                                  	vpaddd xmm11,xmm2,xmm11
    1d2b7c4ad413:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4ad41b:	c5 31 df fb                                     	vpandn xmm15,xmm9,xmm3
    1d2b7c4ad41f:	c4 41 71 db c9                                  	vpand  xmm9,xmm1,xmm9
    1d2b7c4ad424:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c4ad429:	44 8d 58 ff                                     	lea    r11d,[rax-0x1]
    1d2b7c4ad42d:	c4 c1 79 6e cb                                  	vmovd  xmm1,r11d
    1d2b7c4ad432:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    1d2b7c4ad437:	47 8b 5c 04 30                                  	mov    r11d,DWORD PTR [r12+r8*1+0x30]
    1d2b7c4ad43c:	c4 42 31 3d e2                                  	vpmaxsd xmm12,xmm9,xmm10
    1d2b7c4ad441:	c4 62 19 39 e1                                  	vpminsd xmm12,xmm12,xmm1
    1d2b7c4ad446:	85 f6                                           	test   esi,esi
    1d2b7c4ad448:	0f 84 4c 00 00 00                               	je     0x1d2b7c4ad49a
    1d2b7c4ad44e:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    1d2b7c4ad453:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ad458:	c4 41 19 db e1                                  	vpand  xmm12,xmm12,xmm9
    1d2b7c4ad45d:	45 85 db                                        	test   r11d,r11d
    1d2b7c4ad460:	0f 85 34 00 00 00                               	jne    0x1d2b7c4ad49a
    1d2b7c4ad466:	c5 79 6e e0                                     	vmovd  xmm12,eax
    1d2b7c4ad46a:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ad46f:	c5 31 66 e9                                     	vpcmpgtd xmm13,xmm9,xmm1
    1d2b7c4ad473:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    1d2b7c4ad478:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4ad47d:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    1d2b7c4ad482:	c4 c1 29 66 e1                                  	vpcmpgtd xmm4,xmm10,xmm9
    1d2b7c4ad487:	c4 41 59 df fd                                  	vpandn xmm15,xmm4,xmm13
    1d2b7c4ad48c:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    1d2b7c4ad490:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    1d2b7c4ad495:	c4 41 31 fe e4                                  	vpaddd xmm12,xmm9,xmm12
    1d2b7c4ad49a:	c4 41 79 6e ef                                  	vmovd  xmm13,r15d
    1d2b7c4ad49f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c4ad4a4:	c4 42 19 40 e5                                  	vpmulld xmm12,xmm12,xmm13
    1d2b7c4ad4a9:	c4 c1 19 fe e3                                  	vpaddd xmm4,xmm12,xmm11
    1d2b7c4ad4ae:	c4 c3 79 16 e7 03                               	vpextrd r15d,xmm4,0x3
    1d2b7c4ad4b4:	c4 c3 79 16 e0 02                               	vpextrd r8d,xmm4,0x2
    1d2b7c4ad4ba:	4c 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r15
    1d2b7c4ad4c1:	c4 c3 79 16 e7 01                               	vpextrd r15d,xmm4,0x1
    1d2b7c4ad4c7:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    1d2b7c4ad4ce:	c4 c1 79 7e e0                                  	vmovd  r8d,xmm4
    1d2b7c4ad4d3:	85 d2                                           	test   edx,edx
    1d2b7c4ad4d5:	0f 85 3e 08 00 00                               	jne    0x1d2b7c4add19
    1d2b7c4ad4db:	c5 f8 10 a5 60 fc ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x3a0]
    1d2b7c4ad4e3:	c5 e9 fe d4                                     	vpaddd xmm2,xmm2,xmm4
    1d2b7c4ad4e7:	c5 f8 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm6
    1d2b7c4ad4ef:	c4 c2 69 3d f2                                  	vpmaxsd xmm6,xmm2,xmm10
    1d2b7c4ad4f4:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    1d2b7c4ad4f9:	85 c9                                           	test   ecx,ecx
    1d2b7c4ad4fb:	0f 84 3f 00 00 00                               	je     0x1d2b7c4ad540
    1d2b7c4ad501:	c4 c1 79 6e f1                                  	vmovd  xmm6,r9d
    1d2b7c4ad506:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    1d2b7c4ad50b:	c5 e9 db f6                                     	vpand  xmm6,xmm2,xmm6
    1d2b7c4ad50f:	45 85 c9                                        	test   r9d,r9d
    1d2b7c4ad512:	0f 85 28 00 00 00                               	jne    0x1d2b7c4ad540
    1d2b7c4ad518:	c5 e9 66 f5                                     	vpcmpgtd xmm6,xmm2,xmm5
    1d2b7c4ad51c:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    1d2b7c4ad521:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4ad526:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    1d2b7c4ad52b:	c5 a9 66 ea                                     	vpcmpgtd xmm5,xmm10,xmm2
    1d2b7c4ad52f:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    1d2b7c4ad533:	c5 91 db f5                                     	vpand  xmm6,xmm13,xmm5
    1d2b7c4ad537:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c4ad53c:	c5 e9 fe f6                                     	vpaddd xmm6,xmm2,xmm6
    1d2b7c4ad540:	c5 31 fe cc                                     	vpaddd xmm9,xmm9,xmm4
    1d2b7c4ad544:	c4 c2 31 3d d2                                  	vpmaxsd xmm2,xmm9,xmm10
    1d2b7c4ad549:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
    1d2b7c4ad54e:	85 f6                                           	test   esi,esi
    1d2b7c4ad550:	0f 84 49 00 00 00                               	je     0x1d2b7c4ad59f
    1d2b7c4ad556:	c4 c1 79 6e d3                                  	vmovd  xmm2,r11d
    1d2b7c4ad55b:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    1d2b7c4ad560:	c4 c1 69 db d1                                  	vpand  xmm2,xmm2,xmm9
    1d2b7c4ad565:	45 85 db                                        	test   r11d,r11d
    1d2b7c4ad568:	0f 85 31 00 00 00                               	jne    0x1d2b7c4ad59f
    1d2b7c4ad56e:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    1d2b7c4ad572:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    1d2b7c4ad577:	c5 b1 66 c9                                     	vpcmpgtd xmm1,xmm9,xmm1
    1d2b7c4ad57b:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    1d2b7c4ad57f:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4ad584:	c4 c2 71 0a cf                                  	vpsignd xmm1,xmm1,xmm15
    1d2b7c4ad589:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    1d2b7c4ad58e:	c5 51 df f9                                     	vpandn xmm15,xmm5,xmm1
    1d2b7c4ad592:	c5 e9 db cd                                     	vpand  xmm1,xmm2,xmm5
    1d2b7c4ad596:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    1d2b7c4ad59b:	c5 b1 fe d1                                     	vpaddd xmm2,xmm9,xmm1
    1d2b7c4ad59f:	c4 42 69 40 cd                                  	vpmulld xmm9,xmm2,xmm13
    1d2b7c4ad5a4:	c4 41 31 fe eb                                  	vpaddd xmm13,xmm9,xmm11
    1d2b7c4ad5a9:	83 fb 0f                                        	cmp    ebx,0xf
    1d2b7c4ad5ac:	0f 85 18 00 00 00                               	jne    0x1d2b7c4ad5ca
    1d2b7c4ad5b2:	c5 21 fe dc                                     	vpaddd xmm11,xmm11,xmm4
    1d2b7c4ad5b6:	c4 41 49 76 db                                  	vpcmpeqd xmm11,xmm6,xmm11
    1d2b7c4ad5bb:	c4 41 78 50 db                                  	vmovmskps r11d,xmm11
    1d2b7c4ad5c0:	41 83 fb 0f                                     	cmp    r11d,0xf
    1d2b7c4ad5c4:	0f 84 36 03 00 00                               	je     0x1d2b7c4ad900
    1d2b7c4ad5ca:	4c 8b db                                        	mov    r11,rbx
    1d2b7c4ad5cd:	41 83 e3 08                                     	and    r11d,0x8
    1d2b7c4ad5d1:	48 8b c3                                        	mov    rax,rbx
    1d2b7c4ad5d4:	83 e0 04                                        	and    eax,0x4
    1d2b7c4ad5d7:	48 8b d3                                        	mov    rdx,rbx
    1d2b7c4ad5da:	83 e2 02                                        	and    edx,0x2
    1d2b7c4ad5dd:	48 8b cb                                        	mov    rcx,rbx
    1d2b7c4ad5e0:	83 e1 01                                        	and    ecx,0x1
    1d2b7c4ad5e3:	83 fb 0f                                        	cmp    ebx,0xf
    1d2b7c4ad5e6:	0f 84 6c 00 00 00                               	je     0x1d2b7c4ad658
    1d2b7c4ad5ec:	85 c9                                           	test   ecx,ecx
    1d2b7c4ad5ee:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ad5fc
    1d2b7c4ad5f4:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ad5f7:	e9 08 00 00 00                                  	jmp    0x1d2b7c4ad604
    1d2b7c4ad5fc:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad600:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ad604:	85 d2                                           	test   edx,edx
    1d2b7c4ad606:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ad614
    1d2b7c4ad60c:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4ad60f:	e9 08 00 00 00                                  	jmp    0x1d2b7c4ad61c
    1d2b7c4ad614:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    1d2b7c4ad618:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    1d2b7c4ad61c:	85 c0                                           	test   eax,eax
    1d2b7c4ad61e:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ad62b
    1d2b7c4ad624:	33 c0                                           	xor    eax,eax
    1d2b7c4ad626:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ad638
    1d2b7c4ad62b:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    1d2b7c4ad631:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    1d2b7c4ad634:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    1d2b7c4ad638:	45 85 db                                        	test   r11d,r11d
    1d2b7c4ad63b:	0f 85 36 00 00 00                               	jne    0x1d2b7c4ad677
    1d2b7c4ad641:	c4 41 49 fe dc                                  	vpaddd xmm11,xmm6,xmm12
    1d2b7c4ad646:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    1d2b7c4ad64b:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ad650:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4ad653:	e9 45 00 00 00                                  	jmp    0x1d2b7c4ad69d
    1d2b7c4ad658:	46 8d 1c bf                                     	lea    r11d,[rdi+r15*4]
    1d2b7c4ad65c:	47 8b 3c 1c                                     	mov    r15d,DWORD PTR [r12+r11*1]
    1d2b7c4ad660:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad664:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ad668:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    1d2b7c4ad66f:	46 8d 1c 9f                                     	lea    r11d,[rdi+r11*4]
    1d2b7c4ad673:	43 8b 04 1c                                     	mov    eax,DWORD PTR [r12+r11*1]
    1d2b7c4ad677:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c4ad67d:	44 8d 1c 97                                     	lea    r11d,[rdi+rdx*4]
    1d2b7c4ad681:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c4ad685:	c4 41 49 fe dc                                  	vpaddd xmm11,xmm6,xmm12
    1d2b7c4ad68a:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    1d2b7c4ad68f:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ad694:	83 fb 0f                                        	cmp    ebx,0xf
    1d2b7c4ad697:	0f 84 68 00 00 00                               	je     0x1d2b7c4ad705
    1d2b7c4ad69d:	f6 c3 01                                        	test   bl,0x1
    1d2b7c4ad6a0:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ad6ae
    1d2b7c4ad6a6:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ad6a9:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ad6bb
    1d2b7c4ad6ae:	c4 41 79 7e d8                                  	vmovd  r8d,xmm11
    1d2b7c4ad6b3:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad6b7:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ad6bb:	f6 c3 02                                        	test   bl,0x2
    1d2b7c4ad6be:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ad6cb
    1d2b7c4ad6c4:	33 d2                                           	xor    edx,edx
    1d2b7c4ad6c6:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ad6d8
    1d2b7c4ad6cb:	c4 63 79 16 da 01                               	vpextrd edx,xmm11,0x1
    1d2b7c4ad6d1:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    1d2b7c4ad6d4:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    1d2b7c4ad6d8:	f6 c3 04                                        	test   bl,0x4
    1d2b7c4ad6db:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ad6e8
    1d2b7c4ad6e1:	33 c9                                           	xor    ecx,ecx
    1d2b7c4ad6e3:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ad6f5
    1d2b7c4ad6e8:	c4 63 79 16 d9 02                               	vpextrd ecx,xmm11,0x2
    1d2b7c4ad6ee:	8d 0c 8f                                        	lea    ecx,[rdi+rcx*4]
    1d2b7c4ad6f1:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    1d2b7c4ad6f5:	f6 c3 08                                        	test   bl,0x8
    1d2b7c4ad6f8:	0f 85 2f 00 00 00                               	jne    0x1d2b7c4ad72d
    1d2b7c4ad6fe:	33 f6                                           	xor    esi,esi
    1d2b7c4ad700:	e9 35 00 00 00                                  	jmp    0x1d2b7c4ad73a
    1d2b7c4ad705:	c4 43 79 16 d8 01                               	vpextrd r8d,xmm11,0x1
    1d2b7c4ad70b:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad70f:	43 8b 14 04                                     	mov    edx,DWORD PTR [r12+r8*1]
    1d2b7c4ad713:	c4 41 79 7e d8                                  	vmovd  r8d,xmm11
    1d2b7c4ad718:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad71c:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ad720:	c4 63 79 16 d9 02                               	vpextrd ecx,xmm11,0x2
    1d2b7c4ad726:	8d 0c 8f                                        	lea    ecx,[rdi+rcx*4]
    1d2b7c4ad729:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    1d2b7c4ad72d:	c4 63 79 16 de 03                               	vpextrd esi,xmm11,0x3
    1d2b7c4ad733:	8d 34 b7                                        	lea    esi,[rdi+rsi*4]
    1d2b7c4ad736:	41 8b 34 34                                     	mov    esi,DWORD PTR [r12+rsi*1]
    1d2b7c4ad73a:	c4 43 19 22 df 01                               	vpinsrd xmm11,xmm12,r15d,0x1
    1d2b7c4ad740:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    1d2b7c4ad745:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ad74a:	c4 63 19 22 e2 01                               	vpinsrd xmm12,xmm12,edx,0x1
    1d2b7c4ad750:	83 fb 0f                                        	cmp    ebx,0xf
    1d2b7c4ad753:	0f 84 6b 00 00 00                               	je     0x1d2b7c4ad7c4
    1d2b7c4ad759:	f6 c3 01                                        	test   bl,0x1
    1d2b7c4ad75c:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ad76a
    1d2b7c4ad762:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ad765:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ad777
    1d2b7c4ad76a:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
    1d2b7c4ad76f:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad773:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ad777:	f6 c3 02                                        	test   bl,0x2
    1d2b7c4ad77a:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ad788
    1d2b7c4ad780:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4ad783:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4ad796
    1d2b7c4ad788:	c4 43 79 16 ef 01                               	vpextrd r15d,xmm13,0x1
    1d2b7c4ad78e:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    1d2b7c4ad792:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    1d2b7c4ad796:	f6 c3 04                                        	test   bl,0x4
    1d2b7c4ad799:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ad7a6
    1d2b7c4ad79f:	33 d2                                           	xor    edx,edx
    1d2b7c4ad7a1:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ad7b3
    1d2b7c4ad7a6:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    1d2b7c4ad7ac:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    1d2b7c4ad7af:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    1d2b7c4ad7b3:	f6 c3 08                                        	test   bl,0x8
    1d2b7c4ad7b6:	0f 85 30 00 00 00                               	jne    0x1d2b7c4ad7ec
    1d2b7c4ad7bc:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4ad7bf:	e9 36 00 00 00                                  	jmp    0x1d2b7c4ad7fa
    1d2b7c4ad7c4:	c4 43 79 16 e8 01                               	vpextrd r8d,xmm13,0x1
    1d2b7c4ad7ca:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad7ce:	47 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+r8*1]
    1d2b7c4ad7d2:	c4 41 79 7e e8                                  	vmovd  r8d,xmm13
    1d2b7c4ad7d7:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad7db:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ad7df:	c4 63 79 16 ea 02                               	vpextrd edx,xmm13,0x2
    1d2b7c4ad7e5:	8d 14 97                                        	lea    edx,[rdi+rdx*4]
    1d2b7c4ad7e8:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    1d2b7c4ad7ec:	c4 43 79 16 e9 03                               	vpextrd r9d,xmm13,0x3
    1d2b7c4ad7f2:	46 8d 0c 8f                                     	lea    r9d,[rdi+r9*4]
    1d2b7c4ad7f6:	47 8b 0c 0c                                     	mov    r9d,DWORD PTR [r12+r9*1]
    1d2b7c4ad7fa:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    1d2b7c4ad800:	c4 63 19 22 e1 02                               	vpinsrd xmm12,xmm12,ecx,0x2
    1d2b7c4ad806:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    1d2b7c4ad80a:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    1d2b7c4ad80f:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    1d2b7c4ad814:	c4 43 31 22 cf 01                               	vpinsrd xmm9,xmm9,r15d,0x1
    1d2b7c4ad81a:	c4 63 31 22 ca 02                               	vpinsrd xmm9,xmm9,edx,0x2
    1d2b7c4ad820:	83 fb 0f                                        	cmp    ebx,0xf
    1d2b7c4ad823:	0f 84 6a 00 00 00                               	je     0x1d2b7c4ad893
    1d2b7c4ad829:	f6 c3 01                                        	test   bl,0x1
    1d2b7c4ad82c:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ad83a
    1d2b7c4ad832:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4ad835:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ad847
    1d2b7c4ad83a:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    1d2b7c4ad83f:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad843:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ad847:	f6 c3 02                                        	test   bl,0x2
    1d2b7c4ad84a:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ad858
    1d2b7c4ad850:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4ad853:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4ad866
    1d2b7c4ad858:	c4 c3 79 16 f7 01                               	vpextrd r15d,xmm6,0x1
    1d2b7c4ad85e:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    1d2b7c4ad862:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    1d2b7c4ad866:	f6 c3 04                                        	test   bl,0x4
    1d2b7c4ad869:	0f 85 07 00 00 00                               	jne    0x1d2b7c4ad876
    1d2b7c4ad86f:	33 c0                                           	xor    eax,eax
    1d2b7c4ad871:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4ad883
    1d2b7c4ad876:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    1d2b7c4ad87c:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    1d2b7c4ad87f:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    1d2b7c4ad883:	f6 c3 08                                        	test   bl,0x8
    1d2b7c4ad886:	0f 85 2f 00 00 00                               	jne    0x1d2b7c4ad8bb
    1d2b7c4ad88c:	33 ff                                           	xor    edi,edi
    1d2b7c4ad88e:	e9 35 00 00 00                                  	jmp    0x1d2b7c4ad8c8
    1d2b7c4ad893:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    1d2b7c4ad899:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad89d:	47 8b 3c 04                                     	mov    r15d,DWORD PTR [r12+r8*1]
    1d2b7c4ad8a1:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    1d2b7c4ad8a6:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad8aa:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4ad8ae:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    1d2b7c4ad8b4:	8d 04 87                                        	lea    eax,[rdi+rax*4]
    1d2b7c4ad8b7:	41 8b 04 04                                     	mov    eax,DWORD PTR [r12+rax*1]
    1d2b7c4ad8bb:	c4 e3 79 16 f2 03                               	vpextrd edx,xmm6,0x3
    1d2b7c4ad8c1:	8d 3c 97                                        	lea    edi,[rdi+rdx*4]
    1d2b7c4ad8c4:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4ad8c8:	c4 c3 21 22 f3 03                               	vpinsrd xmm6,xmm11,r11d,0x3
    1d2b7c4ad8ce:	c4 63 19 22 de 03                               	vpinsrd xmm11,xmm12,esi,0x3
    1d2b7c4ad8d4:	c4 41 79 6e e0                                  	vmovd  xmm12,r8d
    1d2b7c4ad8d9:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    1d2b7c4ad8de:	c4 43 19 22 e7 01                               	vpinsrd xmm12,xmm12,r15d,0x1
    1d2b7c4ad8e4:	c4 63 19 22 e0 02                               	vpinsrd xmm12,xmm12,eax,0x2
    1d2b7c4ad8ea:	c4 63 19 22 e7 03                               	vpinsrd xmm12,xmm12,edi,0x3
    1d2b7c4ad8f0:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    1d2b7c4ad8f6:	c4 41 79 28 ec                                  	vmovapd xmm13,xmm12
    1d2b7c4ad8fb:	e9 a2 00 00 00                                  	jmp    0x1d2b7c4ad9a2
    1d2b7c4ad900:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4ad904:	c4 81 7b 10 34 04                               	vmovsd xmm6,QWORD PTR [r12+r8*1]
    1d2b7c4ad90a:	46 8d 04 bf                                     	lea    r8d,[rdi+r15*4]
    1d2b7c4ad90e:	c4 01 7b 10 0c 04                               	vmovsd xmm9,QWORD PTR [r12+r8*1]
    1d2b7c4ad914:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    1d2b7c4ad919:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    1d2b7c4ad920:	46 8d 04 9f                                     	lea    r8d,[rdi+r11*4]
    1d2b7c4ad924:	c4 01 7b 10 0c 04                               	vmovsd xmm9,QWORD PTR [r12+r8*1]
    1d2b7c4ad92a:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    1d2b7c4ad930:	44 8d 04 87                                     	lea    r8d,[rdi+rax*4]
    1d2b7c4ad934:	c4 01 7b 10 1c 04                               	vmovsd xmm11,QWORD PTR [r12+r8*1]
    1d2b7c4ad93a:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    1d2b7c4ad93f:	c4 41 48 c6 d9 dd                               	vshufps xmm11,xmm6,xmm9,0xdd
    1d2b7c4ad945:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    1d2b7c4ad94b:	c4 c1 31 72 f5 02                               	vpslld xmm9,xmm13,0x2
    1d2b7c4ad951:	c4 41 79 7e c8                                  	vmovd  r8d,xmm9
    1d2b7c4ad956:	44 03 c7                                        	add    r8d,edi
    1d2b7c4ad959:	c4 01 7b 10 24 04                               	vmovsd xmm12,QWORD PTR [r12+r8*1]
    1d2b7c4ad95f:	c4 43 79 16 c8 01                               	vpextrd r8d,xmm9,0x1
    1d2b7c4ad965:	44 03 c7                                        	add    r8d,edi
    1d2b7c4ad968:	c4 01 7b 10 2c 04                               	vmovsd xmm13,QWORD PTR [r12+r8*1]
    1d2b7c4ad96e:	c4 41 19 6c e5                                  	vpunpcklqdq xmm12,xmm12,xmm13
    1d2b7c4ad973:	c4 43 79 16 c8 02                               	vpextrd r8d,xmm9,0x2
    1d2b7c4ad979:	44 03 c7                                        	add    r8d,edi
    1d2b7c4ad97c:	c4 01 7b 10 2c 04                               	vmovsd xmm13,QWORD PTR [r12+r8*1]
    1d2b7c4ad982:	c4 43 79 16 c8 03                               	vpextrd r8d,xmm9,0x3
    1d2b7c4ad988:	41 03 f8                                        	add    edi,r8d
    1d2b7c4ad98b:	c4 41 7b 10 0c 3c                               	vmovsd xmm9,QWORD PTR [r12+rdi*1]
    1d2b7c4ad991:	c4 41 11 6c c9                                  	vpunpcklqdq xmm9,xmm13,xmm9
    1d2b7c4ad996:	c4 41 18 c6 e9 dd                               	vshufps xmm13,xmm12,xmm9,0xdd
    1d2b7c4ad99c:	c4 41 18 c6 c9 88                               	vshufps xmm9,xmm12,xmm9,0x88
    1d2b7c4ad9a2:	c5 99 72 d6 18                                  	vpsrld xmm12,xmm6,0x18
    1d2b7c4ad9a7:	c4 c1 71 72 d3 18                               	vpsrld xmm1,xmm11,0x18
    1d2b7c4ad9ad:	c5 19 6b e1                                     	vpackssdw xmm12,xmm12,xmm1
    1d2b7c4ad9b1:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    1d2b7c4ad9b5:	c4 c3 71 0f d4 08                               	vpalignr xmm2,xmm1,xmm12,0x8
    1d2b7c4ad9bb:	c5 19 61 e2                                     	vpunpcklwd xmm12,xmm12,xmm2
    1d2b7c4ad9bf:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    1d2b7c4ad9c9:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c4ad9ce:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c4ad9d2:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    1d2b7c4ad9d7:	c5 78 10 85 90 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x270]
    1d2b7c4ad9df:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    1d2b7c4ad9e4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    1d2b7c4ad9ee:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c4ad9f3:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c4ad9f7:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    1d2b7c4ad9fb:	4c 8b 15 27 9c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9c27]        # 0x1d2b7c4a7629
    1d2b7c4ada02:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    1d2b7c4ada07:	c4 c1 78 54 e7                                  	vandps xmm4,xmm0,xmm15
    1d2b7c4ada0c:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    1d2b7c4ada12:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    1d2b7c4ada16:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    1d2b7c4ada1b:	4c 8b 15 03 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe303]        # 0x1d2b7c4abd25
    1d2b7c4ada22:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4ada27:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    1d2b7c4ada2d:	c5 79 df fb                                     	vpandn xmm15,xmm0,xmm3
    1d2b7c4ada31:	c5 d9 db c0                                     	vpand  xmm0,xmm4,xmm0
    1d2b7c4ada35:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4ada3a:	c5 e9 fa e0                                     	vpsubd xmm4,xmm2,xmm0
    1d2b7c4ada3e:	c5 d9 6b c0                                     	vpackssdw xmm0,xmm4,xmm0
    1d2b7c4ada42:	c4 e3 71 0f e0 08                               	vpalignr xmm4,xmm1,xmm0,0x8
    1d2b7c4ada48:	c5 f9 61 c4                                     	vpunpcklwd xmm0,xmm0,xmm4
    1d2b7c4ada4c:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    1d2b7c4ada50:	c5 f8 10 a5 d0 fe ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x130]
    1d2b7c4ada58:	c5 d8 5c ff                                     	vsubps xmm7,xmm4,xmm7
    1d2b7c4ada5c:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    1d2b7c4ada61:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    1d2b7c4ada65:	4c 8b 15 bd 9b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9bbd]        # 0x1d2b7c4a7629
    1d2b7c4ada6c:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    1d2b7c4ada71:	c4 c1 40 54 e7                                  	vandps xmm4,xmm7,xmm15
    1d2b7c4ada76:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    1d2b7c4ada7c:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    1d2b7c4ada80:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    1d2b7c4ada85:	4c 8b 15 99 e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe299]        # 0x1d2b7c4abd25
    1d2b7c4ada8c:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    1d2b7c4ada91:	c4 c1 40 c2 fe 01                               	vcmpltps xmm7,xmm7,xmm14
    1d2b7c4ada97:	c5 41 df fb                                     	vpandn xmm15,xmm7,xmm3
    1d2b7c4ada9b:	c5 d9 db ff                                     	vpand  xmm7,xmm4,xmm7
    1d2b7c4ada9f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4adaa4:	c5 69 fa f7                                     	vpsubd xmm14,xmm2,xmm7
    1d2b7c4adaa8:	c4 42 19 40 e6                                  	vpmulld xmm12,xmm12,xmm14
    1d2b7c4adaad:	c4 c1 69 72 d1 18                               	vpsrld xmm2,xmm9,0x18
    1d2b7c4adab3:	c4 c1 61 72 d5 18                               	vpsrld xmm3,xmm13,0x18
    1d2b7c4adab9:	c5 e9 6b d3                                     	vpackssdw xmm2,xmm2,xmm3
    1d2b7c4adabd:	c4 e3 71 0f da 08                               	vpalignr xmm3,xmm1,xmm2,0x8
    1d2b7c4adac3:	c5 e9 61 d3                                     	vpunpcklwd xmm2,xmm2,xmm3
    1d2b7c4adac7:	c5 e9 f5 d0                                     	vpmaddwd xmm2,xmm2,xmm0
    1d2b7c4adacb:	c4 e2 69 40 d7                                  	vpmulld xmm2,xmm2,xmm7
    1d2b7c4adad0:	c5 19 fe e2                                     	vpaddd xmm12,xmm12,xmm2
    1d2b7c4adad4:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    1d2b7c4adade:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c4adae3:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c4adae7:	c5 19 fe e2                                     	vpaddd xmm12,xmm12,xmm2
    1d2b7c4adaeb:	c4 c1 19 72 d4 10                               	vpsrld xmm12,xmm12,0x10
    1d2b7c4adaf1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4adaf6:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    1d2b7c4adafc:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    1d2b7c4adb01:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4adb06:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    1d2b7c4adb0c:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    1d2b7c4adb11:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    1d2b7c4adb16:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    1d2b7c4adb1b:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x1d2b7c4ac543
    1d2b7c4adb22:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c4adb27:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c4adb2b:	c5 18 59 e3                                     	vmulps xmm12,xmm12,xmm3
    1d2b7c4adb2f:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    1d2b7c4adb32:	c4 41 7a 7f a4 14 c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1c0],xmm12
    1d2b7c4adb3c:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    1d2b7c4adb41:	4c 8b 15 13 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe913]        # 0x1d2b7c4ac45b
    1d2b7c4adb48:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    1d2b7c4adb4d:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    1d2b7c4adb51:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    1d2b7c4adb55:	c4 c1 51 72 d3 10                               	vpsrld xmm5,xmm11,0x10
    1d2b7c4adb5b:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    1d2b7c4adb5f:	c5 19 6b e5                                     	vpackssdw xmm12,xmm12,xmm5
    1d2b7c4adb63:	c4 c3 71 0f ec 08                               	vpalignr xmm5,xmm1,xmm12,0x8
    1d2b7c4adb69:	c5 19 61 e5                                     	vpunpcklwd xmm12,xmm12,xmm5
    1d2b7c4adb6d:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    1d2b7c4adb71:	c4 42 19 40 e6                                  	vpmulld xmm12,xmm12,xmm14
    1d2b7c4adb76:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    1d2b7c4adb7c:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    1d2b7c4adb80:	c4 c1 39 72 d5 10                               	vpsrld xmm8,xmm13,0x10
    1d2b7c4adb86:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    1d2b7c4adb8a:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    1d2b7c4adb8f:	c4 c3 71 0f e8 08                               	vpalignr xmm5,xmm1,xmm8,0x8
    1d2b7c4adb95:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    1d2b7c4adb99:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    1d2b7c4adb9d:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    1d2b7c4adba2:	c4 41 19 fe c0                                  	vpaddd xmm8,xmm12,xmm8
    1d2b7c4adba7:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    1d2b7c4adbab:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    1d2b7c4adbb1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4adbb6:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c4adbbc:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c4adbc1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4adbc6:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c4adbcc:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c4adbd1:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c4adbd6:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c4adbdb:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    1d2b7c4adbdf:	c4 41 7a 7f 84 14 b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1b0],xmm8
    1d2b7c4adbe9:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    1d2b7c4adbee:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    1d2b7c4adbf2:	c4 c1 19 72 d3 08                               	vpsrld xmm12,xmm11,0x8
    1d2b7c4adbf8:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    1d2b7c4adbfc:	c4 41 39 6b c4                                  	vpackssdw xmm8,xmm8,xmm12
    1d2b7c4adc01:	c4 43 71 0f e0 08                               	vpalignr xmm12,xmm1,xmm8,0x8
    1d2b7c4adc07:	c4 41 39 61 c4                                  	vpunpcklwd xmm8,xmm8,xmm12
    1d2b7c4adc0c:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    1d2b7c4adc10:	c4 42 39 40 c6                                  	vpmulld xmm8,xmm8,xmm14
    1d2b7c4adc15:	c4 c1 19 72 d1 08                               	vpsrld xmm12,xmm9,0x8
    1d2b7c4adc1b:	c5 19 db e4                                     	vpand  xmm12,xmm12,xmm4
    1d2b7c4adc1f:	c4 c1 51 72 d5 08                               	vpsrld xmm5,xmm13,0x8
    1d2b7c4adc25:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    1d2b7c4adc29:	c5 19 6b e5                                     	vpackssdw xmm12,xmm12,xmm5
    1d2b7c4adc2d:	c4 c3 71 0f ec 08                               	vpalignr xmm5,xmm1,xmm12,0x8
    1d2b7c4adc33:	c5 19 61 e5                                     	vpunpcklwd xmm12,xmm12,xmm5
    1d2b7c4adc37:	c5 19 f5 e0                                     	vpmaddwd xmm12,xmm12,xmm0
    1d2b7c4adc3b:	c4 62 19 40 e7                                  	vpmulld xmm12,xmm12,xmm7
    1d2b7c4adc40:	c4 41 39 fe c4                                  	vpaddd xmm8,xmm8,xmm12
    1d2b7c4adc45:	c5 39 fe c2                                     	vpaddd xmm8,xmm8,xmm2
    1d2b7c4adc49:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    1d2b7c4adc4f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4adc54:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c4adc5a:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c4adc5f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4adc64:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c4adc6a:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c4adc6f:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c4adc74:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c4adc79:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    1d2b7c4adc7d:	c4 41 7a 7f 84 14 a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x1a0],xmm8
    1d2b7c4adc87:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    1d2b7c4adc8b:	c5 21 db c4                                     	vpand  xmm8,xmm11,xmm4
    1d2b7c4adc8f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    1d2b7c4adc94:	c4 63 71 0f c6 08                               	vpalignr xmm8,xmm1,xmm6,0x8
    1d2b7c4adc9a:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    1d2b7c4adc9f:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    1d2b7c4adca3:	c4 c2 49 40 f6                                  	vpmulld xmm6,xmm6,xmm14
    1d2b7c4adca8:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    1d2b7c4adcac:	c5 11 db cc                                     	vpand  xmm9,xmm13,xmm4
    1d2b7c4adcb0:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    1d2b7c4adcb5:	c4 43 71 0f c8 08                               	vpalignr xmm9,xmm1,xmm8,0x8
    1d2b7c4adcbb:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    1d2b7c4adcc0:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    1d2b7c4adcc4:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    1d2b7c4adcc9:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    1d2b7c4adccd:	c5 f9 fe c2                                     	vpaddd xmm0,xmm0,xmm2
    1d2b7c4adcd1:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    1d2b7c4adcd6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4adcdb:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c4adce1:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c4adce6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4adceb:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c4adcf0:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c4adcf4:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c4adcf8:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c4adcfd:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    1d2b7c4add01:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    1d2b7c4add0b:	8b fa                                           	mov    edi,edx
    1d2b7c4add0d:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4add14:	e9 62 05 00 00                                  	jmp    0x1d2b7c4ae27b
    1d2b7c4add19:	83 fb 0f                                        	cmp    ebx,0xf
    1d2b7c4add1c:	0f 84 61 00 00 00                               	je     0x1d2b7c4add83
    1d2b7c4add22:	f6 c3 01                                        	test   bl,0x1
    1d2b7c4add25:	0f 85 08 00 00 00                               	jne    0x1d2b7c4add33
    1d2b7c4add2b:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4add2e:	e9 08 00 00 00                                  	jmp    0x1d2b7c4add3b
    1d2b7c4add33:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4add37:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4add3b:	f6 c3 02                                        	test   bl,0x2
    1d2b7c4add3e:	0f 85 08 00 00 00                               	jne    0x1d2b7c4add4c
    1d2b7c4add44:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4add47:	e9 08 00 00 00                                  	jmp    0x1d2b7c4add54
    1d2b7c4add4c:	46 8d 1c bf                                     	lea    r11d,[rdi+r15*4]
    1d2b7c4add50:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c4add54:	f6 c3 04                                        	test   bl,0x4
    1d2b7c4add57:	0f 85 08 00 00 00                               	jne    0x1d2b7c4add65
    1d2b7c4add5d:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4add60:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4add73
    1d2b7c4add65:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    1d2b7c4add6b:	44 8d 3c 87                                     	lea    r15d,[rdi+rax*4]
    1d2b7c4add6f:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    1d2b7c4add73:	f6 c3 08                                        	test   bl,0x8
    1d2b7c4add76:	0f 85 2f 00 00 00                               	jne    0x1d2b7c4addab
    1d2b7c4add7c:	33 ff                                           	xor    edi,edi
    1d2b7c4add7e:	e9 35 00 00 00                                  	jmp    0x1d2b7c4addb8
    1d2b7c4add83:	44 8b 9d 28 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd8]
    1d2b7c4add8a:	46 8d 1c 9f                                     	lea    r11d,[rdi+r11*4]
    1d2b7c4add8e:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c4add92:	46 8d 3c bf                                     	lea    r15d,[rdi+r15*4]
    1d2b7c4add96:	47 8b 3c 3c                                     	mov    r15d,DWORD PTR [r12+r15*1]
    1d2b7c4add9a:	46 8d 04 87                                     	lea    r8d,[rdi+r8*4]
    1d2b7c4add9e:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4adda2:	45 8b d7                                        	mov    r10d,r15d
    1d2b7c4adda5:	45 8b fb                                        	mov    r15d,r11d
    1d2b7c4adda8:	45 8b da                                        	mov    r11d,r10d
    1d2b7c4addab:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    1d2b7c4addb1:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    1d2b7c4addb4:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c4addb8:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    1d2b7c4addbd:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4addc2:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    1d2b7c4addc8:	c4 c3 79 22 c7 02                               	vpinsrd xmm0,xmm0,r15d,0x2
    1d2b7c4addce:	c4 e3 79 22 c7 03                               	vpinsrd xmm0,xmm0,edi,0x3
    1d2b7c4addd4:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    1d2b7c4addd9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4addde:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    1d2b7c4adde4:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    1d2b7c4adde9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4addee:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    1d2b7c4addf3:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    1d2b7c4addf7:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    1d2b7c4addfb:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    1d2b7c4ade00:	4c 8b 15 3c e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe73c]        # 0x1d2b7c4ac543
    1d2b7c4ade07:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ade0c:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ade10:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    1d2b7c4ade14:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4ade17:	c4 c1 7a 7f b4 3c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1c0],xmm6
    1d2b7c4ade21:	4c 8b 15 33 e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe633]        # 0x1d2b7c4ac45b
    1d2b7c4ade28:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    1d2b7c4ade2d:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    1d2b7c4ade31:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    1d2b7c4ade35:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ade3a:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c4ade40:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c4ade45:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ade4a:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c4ade50:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c4ade55:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c4ade5a:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c4ade5f:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    1d2b7c4ade63:	c4 41 7a 7f 84 3c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x190],xmm8
    1d2b7c4ade6d:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    1d2b7c4ade72:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    1d2b7c4ade76:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4ade7b:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c4ade81:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c4ade86:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4ade8b:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c4ade91:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c4ade96:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c4ade9b:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c4adea0:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    1d2b7c4adea4:	c4 41 7a 7f 84 3c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1b0],xmm8
    1d2b7c4adeae:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    1d2b7c4adeb3:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    1d2b7c4adeb7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4adebc:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c4adec2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c4adec7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4adecc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c4aded1:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c4aded5:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c4aded9:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c4adede:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c4adee2:	c4 c1 7a 7f 84 3c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdi*1+0x1a0],xmm0
    1d2b7c4adeec:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4adef3:	e9 83 03 00 00                                  	jmp    0x1d2b7c4ae27b
    1d2b7c4adef8:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4adefc:	49 8d 7c 24 58                                  	lea    rdi,[r12+0x58]
    1d2b7c4adf01:	4d 8b f9                                        	mov    r15,r9
    1d2b7c4adf04:	c4 22 79 18 04 3f                               	vbroadcastss xmm8,DWORD PTR [rdi+r15*1]
    1d2b7c4adf0a:	c4 41 08 59 c0                                  	vmulps xmm8,xmm14,xmm8
    1d2b7c4adf0f:	c4 62 79 18 34 17                               	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1]
    1d2b7c4adf15:	c4 41 68 59 f6                                  	vmulps xmm14,xmm2,xmm14
    1d2b7c4adf1a:	c4 41 38 58 c6                                  	vaddps xmm8,xmm8,xmm14
    1d2b7c4adf1f:	c4 62 79 18 34 37                               	vbroadcastss xmm14,DWORD PTR [rdi+rsi*1]
    1d2b7c4adf25:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    1d2b7c4adf2a:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    1d2b7c4adf2f:	c4 c1 78 59 d8                                  	vmulps xmm3,xmm0,xmm8
    1d2b7c4adf34:	83 f9 03                                        	cmp    ecx,0x3
    1d2b7c4adf37:	0f 84 b3 02 00 00                               	je     0x1d2b7c4ae1f0
    1d2b7c4adf3d:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    1d2b7c4adf41:	c4 81 7a 7f 84 1c c0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xc0],xmm0
    1d2b7c4adf4b:	c4 81 7a 7f 84 1c b0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xb0],xmm0
    1d2b7c4adf55:	c4 81 7a 7f 84 1c a0 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0xa0],xmm0
    1d2b7c4adf5f:	c4 81 7a 7f 8c 1c f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1f0],xmm1
    1d2b7c4adf69:	c4 81 7a 7f b4 1c e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1e0],xmm6
    1d2b7c4adf73:	c4 81 7a 7f 9c 1c d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1d0],xmm3
    1d2b7c4adf7d:	c4 81 7a 7f 84 1c 90 00 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x90],xmm0
    1d2b7c4adf87:	33 ff                                           	xor    edi,edi
    1d2b7c4adf89:	e9 48 00 00 00                                  	jmp    0x1d2b7c4adfd6
    1d2b7c4adf8e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4adf97:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4adfa0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4adfa9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4adfb2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4adfbb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    1d2b7c4adfc0:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4adfc7:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4adfcb:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4adfcf:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4adfd6:	48 89 bd 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdi
    1d2b7c4adfdd:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c4adfe2:	0f 85 46 2e 00 00                               	jne    0x1d2b7c4b0e2e
    1d2b7c4adfe8:	8b cf                                           	mov    ecx,edi
    1d2b7c4adfea:	4c 8b cb                                        	mov    r9,rbx
    1d2b7c4adfed:	41 d3 e9                                        	shr    r9d,cl
    1d2b7c4adff0:	41 f6 c1 01                                     	test   r9b,0x1
    1d2b7c4adff4:	0f 84 55 01 00 00                               	je     0x1d2b7c4ae14f
    1d2b7c4adffa:	43 8b 4c 04 10                                  	mov    ecx,DWORD PTR [r12+r8*1+0x10]
    1d2b7c4adfff:	47 8b 4c 04 0c                                  	mov    r9d,DWORD PTR [r12+r8*1+0xc]
    1d2b7c4ae004:	48 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rcx
    1d2b7c4ae00b:	43 8b 4c 04 08                                  	mov    ecx,DWORD PTR [r12+r8*1+0x8]
    1d2b7c4ae010:	43 8b 4c 04 04                                  	mov    ecx,DWORD PTR [r12+r8*1+0x4]
    1d2b7c4ae015:	48 89 8d 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],rcx
    1d2b7c4ae01c:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    1d2b7c4ae020:	83 f9 02                                        	cmp    ecx,0x2
    1d2b7c4ae023:	0f 84 b3 00 00 00                               	je     0x1d2b7c4ae0dc
    1d2b7c4ae029:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    1d2b7c4ae030:	85 c9                                           	test   ecx,ecx
    1d2b7c4ae032:	0f 85 41 00 00 00                               	jne    0x1d2b7c4ae079
    1d2b7c4ae038:	41 8d 8c bb f0 01 00 00                         	lea    ecx,[r11+rdi*4+0x1f0]
    1d2b7c4ae040:	c4 c1 7a 10 0c 0c                               	vmovss xmm1,DWORD PTR [r12+rcx*1]
    1d2b7c4ae046:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    1d2b7c4ae04d:	44 8b cf                                        	mov    r9d,edi
    1d2b7c4ae050:	41 c1 e1 04                                     	shl    r9d,0x4
    1d2b7c4ae054:	41 03 c9                                        	add    ecx,r9d
    1d2b7c4ae057:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ae05b:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    1d2b7c4ae061:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    1d2b7c4ae067:	8b d9                                           	mov    ebx,ecx
    1d2b7c4ae069:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    1d2b7c4ae06f:	e8 ac e1 f0 ff                                  	call   0x1d2b7c3bc220
    1d2b7c4ae074:	e9 d6 00 00 00                                  	jmp    0x1d2b7c4ae14f
    1d2b7c4ae079:	4d 8b d0                                        	mov    r10,r8
    1d2b7c4ae07c:	4d 8b c4                                        	mov    r8,r12
    1d2b7c4ae07f:	4d 8b e2                                        	mov    r12,r10
    1d2b7c4ae082:	43 8b 4c 20 14                                  	mov    ecx,DWORD PTR [r8+r12*1+0x14]
    1d2b7c4ae087:	44 8b d7                                        	mov    r10d,edi
    1d2b7c4ae08a:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4ae08d:	45 8b da                                        	mov    r11d,r10d
    1d2b7c4ae090:	46 8d 8c 9f f0 01 00 00                         	lea    r9d,[rdi+r11*4+0x1f0]
    1d2b7c4ae098:	c4 81 7a 10 0c 08                               	vmovss xmm1,DWORD PTR [r8+r9*1]
    1d2b7c4ae09e:	46 8d 8c 9f e0 01 00 00                         	lea    r9d,[rdi+r11*4+0x1e0]
    1d2b7c4ae0a6:	c4 81 7a 10 14 08                               	vmovss xmm2,DWORD PTR [r8+r9*1]
    1d2b7c4ae0ac:	44 8d 8f 90 00 00 00                            	lea    r9d,[rdi+0x90]
    1d2b7c4ae0b3:	41 c1 e3 04                                     	shl    r11d,0x4
    1d2b7c4ae0b7:	45 03 cb                                        	add    r9d,r11d
    1d2b7c4ae0ba:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ae0be:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    1d2b7c4ae0c4:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    1d2b7c4ae0ca:	8b d9                                           	mov    ebx,ecx
    1d2b7c4ae0cc:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    1d2b7c4ae0d2:	e8 61 e1 f0 ff                                  	call   0x1d2b7c3bc238
    1d2b7c4ae0d7:	e9 73 00 00 00                                  	jmp    0x1d2b7c4ae14f
    1d2b7c4ae0dc:	4d 8b d0                                        	mov    r10,r8
    1d2b7c4ae0df:	4d 8b c4                                        	mov    r8,r12
    1d2b7c4ae0e2:	4d 8b e2                                        	mov    r12,r10
    1d2b7c4ae0e5:	47 8b 7c 20 14                                  	mov    r15d,DWORD PTR [r8+r12*1+0x14]
    1d2b7c4ae0ea:	43 8b 44 20 18                                  	mov    eax,DWORD PTR [r8+r12*1+0x18]
    1d2b7c4ae0ef:	44 8b d7                                        	mov    r10d,edi
    1d2b7c4ae0f2:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4ae0f5:	45 8b da                                        	mov    r11d,r10d
    1d2b7c4ae0f8:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    1d2b7c4ae100:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    1d2b7c4ae106:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    1d2b7c4ae10e:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    1d2b7c4ae114:	42 8d 94 9f d0 01 00 00                         	lea    edx,[rdi+r11*4+0x1d0]
    1d2b7c4ae11c:	c4 c1 7a 10 1c 10                               	vmovss xmm3,DWORD PTR [r8+rdx*1]
    1d2b7c4ae122:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    1d2b7c4ae128:	41 8b cb                                        	mov    ecx,r11d
    1d2b7c4ae12b:	c1 e1 04                                        	shl    ecx,0x4
    1d2b7c4ae12e:	03 d1                                           	add    edx,ecx
    1d2b7c4ae130:	52                                              	push   rdx
    1d2b7c4ae131:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ae135:	41 8b d1                                        	mov    edx,r9d
    1d2b7c4ae138:	44 8b c8                                        	mov    r9d,eax
    1d2b7c4ae13b:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    1d2b7c4ae141:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    1d2b7c4ae147:	41 8b df                                        	mov    ebx,r15d
    1d2b7c4ae14a:	e8 d9 e0 f0 ff                                  	call   0x1d2b7c3bc228
    1d2b7c4ae14f:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    1d2b7c4ae155:	83 c7 01                                        	add    edi,0x1
    1d2b7c4ae158:	83 ff 04                                        	cmp    edi,0x4
    1d2b7c4ae15b:	0f 85 5f fe ff ff                               	jne    0x1d2b7c4adfc0
    1d2b7c4ae161:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4ae164:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4ae168:	c4 c1 7a 6f 84 38 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1+0xb0]
    1d2b7c4ae172:	c4 c1 7a 6f b4 38 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rdi*1+0xc0]
    1d2b7c4ae17c:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    1d2b7c4ae180:	c4 41 7a 6f 84 38 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rdi*1+0x90]
    1d2b7c4ae18a:	c4 41 7a 6f 8c 38 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rdi*1+0xa0]
    1d2b7c4ae194:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    1d2b7c4ae199:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    1d2b7c4ae19d:	c4 41 7a 7f 9c 38 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1c0],xmm11
    1d2b7c4ae1a7:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    1d2b7c4ae1ab:	c4 c1 7a 7f bc 38 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1b0],xmm7
    1d2b7c4ae1b5:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    1d2b7c4ae1b9:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    1d2b7c4ae1be:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    1d2b7c4ae1c2:	c4 c1 7a 7f bc 38 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x1a0],xmm7
    1d2b7c4ae1cc:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    1d2b7c4ae1d0:	c4 c1 7a 7f 84 38 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rdi*1+0x190],xmm0
    1d2b7c4ae1da:	4d 8b e0                                        	mov    r12,r8
    1d2b7c4ae1dd:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4ae1e4:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4ae1eb:	e9 8b 00 00 00                                  	jmp    0x1d2b7c4ae27b
    1d2b7c4ae1f0:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    1d2b7c4ae1f7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ae1fb:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4ae1fe:	48 8b d3                                        	mov    rdx,rbx
    1d2b7c4ae201:	c5 f9 28 d6                                     	vmovapd xmm2,xmm6
    1d2b7c4ae205:	e8 1e e3 f0 ff                                  	call   0x1d2b7c3bc528
    1d2b7c4ae20a:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4ae20d:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4ae211:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4ae218:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4ae21f:	e9 57 00 00 00                                  	jmp    0x1d2b7c4ae27b
    1d2b7c4ae224:	49 8d 4c 24 3c                                  	lea    rcx,[r12+0x3c]
    1d2b7c4ae229:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    1d2b7c4ae22f:	c4 81 7a 7f 84 1c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x190],xmm0
    1d2b7c4ae239:	49 8d 4c 24 40                                  	lea    rcx,[r12+0x40]
    1d2b7c4ae23e:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    1d2b7c4ae244:	c4 81 7a 7f 84 1c a0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1a0],xmm0
    1d2b7c4ae24e:	49 8d 4c 24 44                                  	lea    rcx,[r12+0x44]
    1d2b7c4ae253:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    1d2b7c4ae259:	c4 81 7a 7f 84 1c b0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1b0],xmm0
    1d2b7c4ae263:	49 8d 4c 24 48                                  	lea    rcx,[r12+0x48]
    1d2b7c4ae268:	c4 a2 79 18 04 01                               	vbroadcastss xmm0,DWORD PTR [rcx+r8*1]
    1d2b7c4ae26e:	c4 81 7a 7f 84 1c c0 01 00 00                   	vmovdqu XMMWORD PTR [r12+r11*1+0x1c0],xmm0
    1d2b7c4ae278:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4ae27b:	c4 c1 7a 6f 84 3c 90 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r12+rdi*1+0x190]
    1d2b7c4ae285:	47 8b 9c 04 34 01 00 00                         	mov    r11d,DWORD PTR [r12+r8*1+0x134]
    1d2b7c4ae28d:	43 83 bc 04 34 01 00 00 02                      	cmp    DWORD PTR [r12+r8*1+0x134],0x2
    1d2b7c4ae296:	0f 84 58 00 00 00                               	je     0x1d2b7c4ae2f4
    1d2b7c4ae29c:	c4 c1 7a 6f b4 3c c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+rdi*1+0x1c0]
    1d2b7c4ae2a6:	c5 f8 10 bd 10 ff ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0xf0]
    1d2b7c4ae2ae:	c5 c0 59 f6                                     	vmulps xmm6,xmm7,xmm6
    1d2b7c4ae2b2:	c4 c1 7a 6f bc 3c b0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+rdi*1+0x1b0]
    1d2b7c4ae2bc:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    1d2b7c4ae2c4:	c5 b8 59 ff                                     	vmulps xmm7,xmm8,xmm7
    1d2b7c4ae2c8:	c4 41 7a 6f 84 3c a0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x1a0]
    1d2b7c4ae2d2:	c5 78 10 8d 40 ff ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0xc0]
    1d2b7c4ae2da:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    1d2b7c4ae2df:	c5 78 10 8d e0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x120]
    1d2b7c4ae2e7:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    1d2b7c4ae2eb:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4ae2ef:	e9 22 00 00 00                                  	jmp    0x1d2b7c4ae316
    1d2b7c4ae2f4:	c4 c1 7a 6f b4 3c c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+rdi*1+0x1c0]
    1d2b7c4ae2fe:	c4 c1 7a 6f bc 3c b0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+rdi*1+0x1b0]
    1d2b7c4ae308:	c4 41 7a 6f 84 3c a0 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r12+rdi*1+0x1a0]
    1d2b7c4ae312:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4ae316:	c5 41 6a ce                                     	vpunpckhdq xmm9,xmm7,xmm6
    1d2b7c4ae31a:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    1d2b7c4ae31f:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    1d2b7c4ae324:	c4 41 7a 7f 5c 3c 30                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x30],xmm11
    1d2b7c4ae32b:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    1d2b7c4ae330:	c4 41 7a 7f 4c 3c 20                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x20],xmm9
    1d2b7c4ae337:	c5 c1 62 f6                                     	vpunpckldq xmm6,xmm7,xmm6
    1d2b7c4ae33b:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    1d2b7c4ae340:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    1d2b7c4ae344:	c4 c1 7a 7f 7c 3c 10                            	vmovdqu XMMWORD PTR [r12+rdi*1+0x10],xmm7
    1d2b7c4ae34b:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    1d2b7c4ae34f:	c4 c1 7a 7f 04 3c                               	vmovdqu XMMWORD PTR [r12+rdi*1],xmm0
    1d2b7c4ae355:	44 8b df                                        	mov    r11d,edi
    1d2b7c4ae358:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    1d2b7c4ae35f:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    1d2b7c4ae362:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4ae366:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4ae36b:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4ae370:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4ae374:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    1d2b7c4ae37b:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    1d2b7c4ae382:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    1d2b7c4ae389:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    1d2b7c4ae391:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    1d2b7c4ae399:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4ae3a1:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4ae3a9:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4ae3b1:	f6 c3 01                                        	test   bl,0x1
    1d2b7c4ae3b4:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ae3c2
    1d2b7c4ae3ba:	4d 8b c4                                        	mov    r8,r12
    1d2b7c4ae3bd:	e9 77 02 00 00                                  	jmp    0x1d2b7c4ae639
    1d2b7c4ae3c2:	c4 81 7a 10 4c 1c 40                            	vmovss xmm1,DWORD PTR [r12+r11*1+0x40]
    1d2b7c4ae3c9:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    1d2b7c4ae3d0:	0f 85 a1 00 00 00                               	jne    0x1d2b7c4ae477
    1d2b7c4ae3d6:	c4 81 7a 10 14 1c                               	vmovss xmm2,DWORD PTR [r12+r11*1]
    1d2b7c4ae3dc:	c4 81 7a 10 5c 1c 04                            	vmovss xmm3,DWORD PTR [r12+r11*1+0x4]
    1d2b7c4ae3e3:	c4 81 7a 10 44 1c 08                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x8]
    1d2b7c4ae3ea:	c4 81 7a 10 6c 1c 0c                            	vmovss xmm5,DWORD PTR [r12+r11*1+0xc]
    1d2b7c4ae3f1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ae3f5:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4ae3f8:	8b d7                                           	mov    edx,edi
    1d2b7c4ae3fa:	41 8b cf                                        	mov    ecx,r15d
    1d2b7c4ae3fd:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    1d2b7c4ae401:	e8 5a de f0 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4ae406:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4ae40a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4ae40e:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4ae412:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    1d2b7c4ae419:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    1d2b7c4ae41c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4ae420:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4ae425:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4ae42a:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4ae42e:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    1d2b7c4ae435:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    1d2b7c4ae43c:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    1d2b7c4ae443:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    1d2b7c4ae44b:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4ae452:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    1d2b7c4ae45a:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4ae462:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4ae46a:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4ae472:	e9 c2 01 00 00                                  	jmp    0x1d2b7c4ae639
    1d2b7c4ae477:	4d 8b c4                                        	mov    r8,r12
    1d2b7c4ae47a:	4c 8b e0                                        	mov    r12,rax
    1d2b7c4ae47d:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    1d2b7c4ae481:	41 0f af c7                                     	imul   eax,r15d
    1d2b7c4ae485:	03 c7                                           	add    eax,edi
    1d2b7c4ae487:	43 8b 4c 20 68                                  	mov    ecx,DWORD PTR [r8+r12*1+0x68]
    1d2b7c4ae48c:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
    1d2b7c4ae492:	0f 84 1f 00 00 00                               	je     0x1d2b7c4ae4b7
    1d2b7c4ae498:	43 8b 4c 20 70                                  	mov    ecx,DWORD PTR [r8+r12*1+0x70]
    1d2b7c4ae49d:	43 83 7c 20 70 00                               	cmp    DWORD PTR [r8+r12*1+0x70],0x0
    1d2b7c4ae4a3:	0f 84 0e 00 00 00                               	je     0x1d2b7c4ae4b7
    1d2b7c4ae4a9:	43 8b 4c 20 0c                                  	mov    ecx,DWORD PTR [r8+r12*1+0xc]
    1d2b7c4ae4ae:	8d 0c 81                                        	lea    ecx,[rcx+rax*4]
    1d2b7c4ae4b1:	c4 c1 7a 11 0c 08                               	vmovss DWORD PTR [r8+rcx*1],xmm1
    1d2b7c4ae4b7:	c4 81 7a 6f 04 18                               	vmovdqu xmm0,XMMWORD PTR [r8+r11*1]
    1d2b7c4ae4bd:	43 8b 4c 20 08                                  	mov    ecx,DWORD PTR [r8+r12*1+0x8]
    1d2b7c4ae4c2:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    1d2b7c4ae4c5:	43 8b 4c 20 74                                  	mov    ecx,DWORD PTR [r8+r12*1+0x74]
    1d2b7c4ae4ca:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    1d2b7c4ae4d0:	0f 84 81 00 00 00                               	je     0x1d2b7c4ae557
    1d2b7c4ae4d6:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    1d2b7c4ae4db:	43 8b 4c 20 78                                  	mov    ecx,DWORD PTR [r8+r12*1+0x78]
    1d2b7c4ae4e0:	43 81 7c 20 78 02 03 00 00                      	cmp    DWORD PTR [r8+r12*1+0x78],0x302
    1d2b7c4ae4e9:	0f 84 09 00 00 00                               	je     0x1d2b7c4ae4f8
    1d2b7c4ae4ef:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4ae4f3:	e9 04 00 00 00                                  	jmp    0x1d2b7c4ae4fc
    1d2b7c4ae4f8:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4ae4fc:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    1d2b7c4ae501:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4ae506:	c4 41 7a 10 0c 00                               	vmovss xmm9,DWORD PTR [r8+rax*1]
    1d2b7c4ae50c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    1d2b7c4ae511:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    1d2b7c4ae516:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    1d2b7c4ae51b:	4c 8b 15 21 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe021]        # 0x1d2b7c4ac543
    1d2b7c4ae522:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4ae527:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4ae52c:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    1d2b7c4ae531:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    1d2b7c4ae535:	43 8b 4c 20 7c                                  	mov    ecx,DWORD PTR [r8+r12*1+0x7c]
    1d2b7c4ae53a:	43 83 7c 20 7c 01                               	cmp    DWORD PTR [r8+r12*1+0x7c],0x1
    1d2b7c4ae540:	0f 85 04 00 00 00                               	jne    0x1d2b7c4ae54a
    1d2b7c4ae546:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4ae54a:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    1d2b7c4ae54f:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    1d2b7c4ae553:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4ae557:	4c 8b 15 ef a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8ef]        # 0x1d2b7c4a8e4d
    1d2b7c4ae55e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ae563:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ae567:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4ae56c:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    1d2b7c4ae572:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    1d2b7c4ae576:	4c 8b 15 d0 a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa8d0]        # 0x1d2b7c4a8e4d
    1d2b7c4ae57d:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4ae582:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4ae587:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    1d2b7c4ae58c:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    1d2b7c4ae590:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    1d2b7c4ae595:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4ae59a:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    1d2b7c4ae5a4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ae5a9:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ae5ad:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c4ae5b1:	4c 8b 15 2e f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff42e]        # 0x1d2b7c4ad9e6
    1d2b7c4ae5b8:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ae5bd:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ae5c1:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4ae5c5:	4c 8b 15 5d 90 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff905d]        # 0x1d2b7c4a7629
    1d2b7c4ae5cc:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    1d2b7c4ae5d1:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    1d2b7c4ae5d6:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    1d2b7c4ae5dc:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    1d2b7c4ae5e0:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    1d2b7c4ae5e5:	4c 8b 15 0e d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd80e]        # 0x1d2b7c4abdfa
    1d2b7c4ae5ec:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4ae5f1:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4ae5f6:	4c 8b 15 28 d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd728]        # 0x1d2b7c4abd25
    1d2b7c4ae5fd:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4ae602:	4c 8b 15 2b d7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd72b]        # 0x1d2b7c4abd34
    1d2b7c4ae609:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4ae60e:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4ae613:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    1d2b7c4ae619:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    1d2b7c4ae61e:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    1d2b7c4ae622:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4ae627:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    1d2b7c4ae62c:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    1d2b7c4ae630:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    1d2b7c4ae636:	49 8b c4                                        	mov    rax,r12
    1d2b7c4ae639:	f6 c3 02                                        	test   bl,0x2
    1d2b7c4ae63c:	0f 84 7f 02 00 00                               	je     0x1d2b7c4ae8c1
    1d2b7c4ae642:	c4 81 7a 10 4c 18 44                            	vmovss xmm1,DWORD PTR [r8+r11*1+0x44]
    1d2b7c4ae649:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    1d2b7c4ae650:	0f 85 a3 00 00 00                               	jne    0x1d2b7c4ae6f9
    1d2b7c4ae656:	c4 81 7a 10 54 18 10                            	vmovss xmm2,DWORD PTR [r8+r11*1+0x10]
    1d2b7c4ae65d:	c4 81 7a 10 5c 18 14                            	vmovss xmm3,DWORD PTR [r8+r11*1+0x14]
    1d2b7c4ae664:	c4 81 7a 10 44 18 18                            	vmovss xmm0,DWORD PTR [r8+r11*1+0x18]
    1d2b7c4ae66b:	c4 81 7a 10 6c 18 1c                            	vmovss xmm5,DWORD PTR [r8+r11*1+0x1c]
    1d2b7c4ae672:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ae676:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4ae679:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    1d2b7c4ae67f:	41 8b cf                                        	mov    ecx,r15d
    1d2b7c4ae682:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    1d2b7c4ae686:	e8 d5 db f0 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4ae68b:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4ae68f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4ae693:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4ae697:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    1d2b7c4ae69e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4ae6a2:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4ae6a7:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4ae6ac:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4ae6b0:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    1d2b7c4ae6b7:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    1d2b7c4ae6be:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    1d2b7c4ae6c5:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    1d2b7c4ae6cd:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4ae6d4:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    1d2b7c4ae6dc:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4ae6e4:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4ae6ec:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4ae6f4:	e9 c8 01 00 00                                  	jmp    0x1d2b7c4ae8c1
    1d2b7c4ae6f9:	4c 8b e0                                        	mov    r12,rax
    1d2b7c4ae6fc:	43 8b 04 20                                     	mov    eax,DWORD PTR [r8+r12*1]
    1d2b7c4ae700:	41 0f af c7                                     	imul   eax,r15d
    1d2b7c4ae704:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4ae70a:	03 c1                                           	add    eax,ecx
    1d2b7c4ae70c:	43 8b 7c 20 68                                  	mov    edi,DWORD PTR [r8+r12*1+0x68]
    1d2b7c4ae711:	43 83 7c 20 68 00                               	cmp    DWORD PTR [r8+r12*1+0x68],0x0
    1d2b7c4ae717:	0f 84 1f 00 00 00                               	je     0x1d2b7c4ae73c
    1d2b7c4ae71d:	43 8b 7c 20 70                                  	mov    edi,DWORD PTR [r8+r12*1+0x70]
    1d2b7c4ae722:	43 83 7c 20 70 00                               	cmp    DWORD PTR [r8+r12*1+0x70],0x0
    1d2b7c4ae728:	0f 84 0e 00 00 00                               	je     0x1d2b7c4ae73c
    1d2b7c4ae72e:	43 8b 7c 20 0c                                  	mov    edi,DWORD PTR [r8+r12*1+0xc]
    1d2b7c4ae733:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    1d2b7c4ae736:	c4 c1 7a 11 0c 38                               	vmovss DWORD PTR [r8+rdi*1],xmm1
    1d2b7c4ae73c:	8b bd f0 fc ff ff                               	mov    edi,DWORD PTR [rbp-0x310]
    1d2b7c4ae742:	c4 c1 7a 6f 04 38                               	vmovdqu xmm0,XMMWORD PTR [r8+rdi*1]
    1d2b7c4ae748:	43 8b 7c 20 08                                  	mov    edi,DWORD PTR [r8+r12*1+0x8]
    1d2b7c4ae74d:	8d 3c 87                                        	lea    edi,[rdi+rax*4]
    1d2b7c4ae750:	43 8b 44 20 74                                  	mov    eax,DWORD PTR [r8+r12*1+0x74]
    1d2b7c4ae755:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    1d2b7c4ae75b:	0f 84 81 00 00 00                               	je     0x1d2b7c4ae7e2
    1d2b7c4ae761:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    1d2b7c4ae766:	43 8b 44 20 78                                  	mov    eax,DWORD PTR [r8+r12*1+0x78]
    1d2b7c4ae76b:	43 81 7c 20 78 02 03 00 00                      	cmp    DWORD PTR [r8+r12*1+0x78],0x302
    1d2b7c4ae774:	0f 84 09 00 00 00                               	je     0x1d2b7c4ae783
    1d2b7c4ae77a:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4ae77e:	e9 04 00 00 00                                  	jmp    0x1d2b7c4ae787
    1d2b7c4ae783:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4ae787:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    1d2b7c4ae78c:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4ae791:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    1d2b7c4ae797:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    1d2b7c4ae79c:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    1d2b7c4ae7a1:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    1d2b7c4ae7a6:	4c 8b 15 96 dd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdd96]        # 0x1d2b7c4ac543
    1d2b7c4ae7ad:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4ae7b2:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4ae7b7:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    1d2b7c4ae7bc:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    1d2b7c4ae7c0:	43 8b 44 20 7c                                  	mov    eax,DWORD PTR [r8+r12*1+0x7c]
    1d2b7c4ae7c5:	43 83 7c 20 7c 01                               	cmp    DWORD PTR [r8+r12*1+0x7c],0x1
    1d2b7c4ae7cb:	0f 85 04 00 00 00                               	jne    0x1d2b7c4ae7d5
    1d2b7c4ae7d1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4ae7d5:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    1d2b7c4ae7da:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    1d2b7c4ae7de:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4ae7e2:	4c 8b 15 64 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa664]        # 0x1d2b7c4a8e4d
    1d2b7c4ae7e9:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ae7ee:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ae7f2:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4ae7f7:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    1d2b7c4ae7fd:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    1d2b7c4ae801:	4c 8b 15 45 a6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa645]        # 0x1d2b7c4a8e4d
    1d2b7c4ae808:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4ae80d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4ae812:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    1d2b7c4ae817:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    1d2b7c4ae81b:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    1d2b7c4ae820:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4ae825:	4c 8b 15 70 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffd70]        # 0x1d2b7c4ae59c
    1d2b7c4ae82c:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ae831:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ae835:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c4ae839:	4c 8b 15 a6 f1 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff1a6]        # 0x1d2b7c4ad9e6
    1d2b7c4ae840:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4ae845:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4ae849:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4ae84d:	4c 8b 15 d5 8d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8dd5]        # 0x1d2b7c4a7629
    1d2b7c4ae854:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    1d2b7c4ae859:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    1d2b7c4ae85e:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    1d2b7c4ae864:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    1d2b7c4ae868:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    1d2b7c4ae86d:	4c 8b 15 86 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd586]        # 0x1d2b7c4abdfa
    1d2b7c4ae874:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4ae879:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4ae87e:	4c 8b 15 a0 d4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd4a0]        # 0x1d2b7c4abd25
    1d2b7c4ae885:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4ae88a:	4c 8b 15 a3 d4 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd4a3]        # 0x1d2b7c4abd34
    1d2b7c4ae891:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4ae896:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4ae89b:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    1d2b7c4ae8a1:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    1d2b7c4ae8a6:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    1d2b7c4ae8aa:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4ae8af:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    1d2b7c4ae8b4:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    1d2b7c4ae8b8:	c4 c1 7a 11 04 38                               	vmovss DWORD PTR [r8+rdi*1],xmm0
    1d2b7c4ae8be:	49 8b c4                                        	mov    rax,r12
    1d2b7c4ae8c1:	f6 c3 04                                        	test   bl,0x4
    1d2b7c4ae8c4:	0f 85 08 00 00 00                               	jne    0x1d2b7c4ae8d2
    1d2b7c4ae8ca:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4ae8cd:	e9 7e 02 00 00                                  	jmp    0x1d2b7c4aeb50
    1d2b7c4ae8d2:	41 8b fb                                        	mov    edi,r11d
    1d2b7c4ae8d5:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    1d2b7c4ae8dc:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    1d2b7c4ae8e3:	0f 85 9b 00 00 00                               	jne    0x1d2b7c4ae984
    1d2b7c4ae8e9:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    1d2b7c4ae8f0:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    1d2b7c4ae8f7:	c4 c1 7a 10 44 38 28                            	vmovss xmm0,DWORD PTR [r8+rdi*1+0x28]
    1d2b7c4ae8fe:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    1d2b7c4ae905:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4ae909:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4ae90c:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    1d2b7c4ae90f:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    1d2b7c4ae915:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    1d2b7c4ae919:	e8 42 d9 f0 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4ae91e:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4ae921:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4ae925:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4ae929:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4ae92d:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4ae932:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4ae937:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4ae93b:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    1d2b7c4ae942:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    1d2b7c4ae949:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    1d2b7c4ae950:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    1d2b7c4ae958:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4ae95f:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    1d2b7c4ae967:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4ae96f:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4ae977:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4ae97f:	e9 cc 01 00 00                                  	jmp    0x1d2b7c4aeb50
    1d2b7c4ae984:	4c 8b d8                                        	mov    r11,rax
    1d2b7c4ae987:	47 8b 24 18                                     	mov    r12d,DWORD PTR [r8+r11*1]
    1d2b7c4ae98b:	44 0f af a5 50 ff ff ff                         	imul   r12d,DWORD PTR [rbp-0xb0]
    1d2b7c4ae993:	8b 45 90                                        	mov    eax,DWORD PTR [rbp-0x70]
    1d2b7c4ae996:	44 03 e0                                        	add    r12d,eax
    1d2b7c4ae999:	43 8b 4c 18 68                                  	mov    ecx,DWORD PTR [r8+r11*1+0x68]
    1d2b7c4ae99e:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    1d2b7c4ae9a4:	0f 84 20 00 00 00                               	je     0x1d2b7c4ae9ca
    1d2b7c4ae9aa:	43 8b 4c 18 70                                  	mov    ecx,DWORD PTR [r8+r11*1+0x70]
    1d2b7c4ae9af:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    1d2b7c4ae9b5:	0f 84 0f 00 00 00                               	je     0x1d2b7c4ae9ca
    1d2b7c4ae9bb:	43 8b 4c 18 0c                                  	mov    ecx,DWORD PTR [r8+r11*1+0xc]
    1d2b7c4ae9c0:	42 8d 0c a1                                     	lea    ecx,[rcx+r12*4]
    1d2b7c4ae9c4:	c4 c1 7a 11 0c 08                               	vmovss DWORD PTR [r8+rcx*1],xmm1
    1d2b7c4ae9ca:	8b 8d f8 fc ff ff                               	mov    ecx,DWORD PTR [rbp-0x308]
    1d2b7c4ae9d0:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
    1d2b7c4ae9d6:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    1d2b7c4ae9db:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    1d2b7c4ae9df:	47 8b 7c 18 74                                  	mov    r15d,DWORD PTR [r8+r11*1+0x74]
    1d2b7c4ae9e4:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    1d2b7c4ae9ea:	0f 84 81 00 00 00                               	je     0x1d2b7c4aea71
    1d2b7c4ae9f0:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    1d2b7c4ae9f5:	47 8b 7c 18 78                                  	mov    r15d,DWORD PTR [r8+r11*1+0x78]
    1d2b7c4ae9fa:	43 81 7c 18 78 02 03 00 00                      	cmp    DWORD PTR [r8+r11*1+0x78],0x302
    1d2b7c4aea03:	0f 84 09 00 00 00                               	je     0x1d2b7c4aea12
    1d2b7c4aea09:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4aea0d:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aea16
    1d2b7c4aea12:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4aea16:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    1d2b7c4aea1b:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4aea20:	c4 01 7a 10 0c 20                               	vmovss xmm9,DWORD PTR [r8+r12*1]
    1d2b7c4aea26:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    1d2b7c4aea2b:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    1d2b7c4aea30:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    1d2b7c4aea35:	4c 8b 15 07 db ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdb07]        # 0x1d2b7c4ac543
    1d2b7c4aea3c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4aea41:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4aea46:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    1d2b7c4aea4b:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    1d2b7c4aea4f:	47 8b 7c 18 7c                                  	mov    r15d,DWORD PTR [r8+r11*1+0x7c]
    1d2b7c4aea54:	43 83 7c 18 7c 01                               	cmp    DWORD PTR [r8+r11*1+0x7c],0x1
    1d2b7c4aea5a:	0f 85 04 00 00 00                               	jne    0x1d2b7c4aea64
    1d2b7c4aea60:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4aea64:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    1d2b7c4aea69:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    1d2b7c4aea6d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4aea71:	4c 8b 15 d5 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3d5]        # 0x1d2b7c4a8e4d
    1d2b7c4aea78:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4aea7d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4aea81:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4aea86:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    1d2b7c4aea8c:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    1d2b7c4aea90:	4c 8b 15 b6 a3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa3b6]        # 0x1d2b7c4a8e4d
    1d2b7c4aea97:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4aea9c:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4aeaa1:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    1d2b7c4aeaa6:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    1d2b7c4aeaaa:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    1d2b7c4aeaaf:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4aeab4:	4c 8b 15 e1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffae1]        # 0x1d2b7c4ae59c
    1d2b7c4aeabb:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4aeac0:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4aeac4:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c4aeac8:	4c 8b 15 17 ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef17]        # 0x1d2b7c4ad9e6
    1d2b7c4aeacf:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4aead4:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4aead8:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4aeadc:	4c 8b 15 46 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b46]        # 0x1d2b7c4a7629
    1d2b7c4aeae3:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    1d2b7c4aeae8:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    1d2b7c4aeaed:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    1d2b7c4aeaf3:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    1d2b7c4aeaf7:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    1d2b7c4aeafc:	4c 8b 15 f7 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2f7]        # 0x1d2b7c4abdfa
    1d2b7c4aeb03:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4aeb08:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4aeb0d:	4c 8b 15 11 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd211]        # 0x1d2b7c4abd25
    1d2b7c4aeb14:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4aeb19:	4c 8b 15 14 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd214]        # 0x1d2b7c4abd34
    1d2b7c4aeb20:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4aeb25:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4aeb2a:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    1d2b7c4aeb30:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    1d2b7c4aeb35:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    1d2b7c4aeb39:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4aeb3e:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    1d2b7c4aeb43:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    1d2b7c4aeb47:	c4 81 7a 11 04 20                               	vmovss DWORD PTR [r8+r12*1],xmm0
    1d2b7c4aeb4d:	49 8b c3                                        	mov    rax,r11
    1d2b7c4aeb50:	f6 c3 08                                        	test   bl,0x8
    1d2b7c4aeb53:	0f 85 23 00 00 00                               	jne    0x1d2b7c4aeb7c
    1d2b7c4aeb59:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    1d2b7c4aeb5f:	4c 8b e6                                        	mov    r12,rsi
    1d2b7c4aeb62:	49 8b f0                                        	mov    rsi,r8
    1d2b7c4aeb65:	4c 8b d8                                        	mov    r11,rax
    1d2b7c4aeb68:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4aeb6d:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    1d2b7c4aeb71:	4c 8b fa                                        	mov    r15,rdx
    1d2b7c4aeb74:	49 8b f9                                        	mov    rdi,r9
    1d2b7c4aeb77:	e9 fc 1e 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4aeb7c:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    1d2b7c4aeb83:	83 bd 08 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x2f8],0x0
    1d2b7c4aeb8a:	0f 85 95 00 00 00                               	jne    0x1d2b7c4aec25
    1d2b7c4aeb90:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    1d2b7c4aeb97:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    1d2b7c4aeb9e:	c4 c1 7a 10 44 38 38                            	vmovss xmm0,DWORD PTR [r8+rdi*1+0x38]
    1d2b7c4aeba5:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    1d2b7c4aebac:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4aebb0:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4aebb3:	8b 95 58 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xa8]
    1d2b7c4aebb9:	8b 8d 50 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xb0]
    1d2b7c4aebbf:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    1d2b7c4aebc3:	e8 98 d6 f0 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4aebc8:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    1d2b7c4aebce:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    1d2b7c4aebd2:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4aebd6:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4aebdb:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4aebe1:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4aebe7:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4aebeb:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    1d2b7c4aebf2:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    1d2b7c4aebf9:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4aec00:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4aec08:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4aec10:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4aec18:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4aec20:	e9 53 1e 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4aec25:	4c 8b d8                                        	mov    r11,rax
    1d2b7c4aec28:	47 8b 24 18                                     	mov    r12d,DWORD PTR [r8+r11*1]
    1d2b7c4aec2c:	44 0f af a5 50 ff ff ff                         	imul   r12d,DWORD PTR [rbp-0xb0]
    1d2b7c4aec34:	44 8b bd 58 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xa8]
    1d2b7c4aec3b:	45 03 e7                                        	add    r12d,r15d
    1d2b7c4aec3e:	47 8b 7c 18 68                                  	mov    r15d,DWORD PTR [r8+r11*1+0x68]
    1d2b7c4aec43:	43 83 7c 18 68 00                               	cmp    DWORD PTR [r8+r11*1+0x68],0x0
    1d2b7c4aec49:	0f 84 20 00 00 00                               	je     0x1d2b7c4aec6f
    1d2b7c4aec4f:	47 8b 7c 18 70                                  	mov    r15d,DWORD PTR [r8+r11*1+0x70]
    1d2b7c4aec54:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    1d2b7c4aec5a:	0f 84 0f 00 00 00                               	je     0x1d2b7c4aec6f
    1d2b7c4aec60:	47 8b 7c 18 0c                                  	mov    r15d,DWORD PTR [r8+r11*1+0xc]
    1d2b7c4aec65:	47 8d 3c a7                                     	lea    r15d,[r15+r12*4]
    1d2b7c4aec69:	c4 81 7a 11 0c 38                               	vmovss DWORD PTR [r8+r15*1],xmm1
    1d2b7c4aec6f:	8b 9d 10 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x2f0]
    1d2b7c4aec75:	c4 c1 7a 6f 04 18                               	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1]
    1d2b7c4aec7b:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    1d2b7c4aec80:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    1d2b7c4aec84:	47 8b 7c 18 74                                  	mov    r15d,DWORD PTR [r8+r11*1+0x74]
    1d2b7c4aec89:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    1d2b7c4aec8f:	0f 84 81 00 00 00                               	je     0x1d2b7c4aed16
    1d2b7c4aec95:	c5 f9 70 f8 03                                  	vpshufd xmm7,xmm0,0x3
    1d2b7c4aec9a:	47 8b 7c 18 78                                  	mov    r15d,DWORD PTR [r8+r11*1+0x78]
    1d2b7c4aec9f:	43 81 7c 18 78 02 03 00 00                      	cmp    DWORD PTR [r8+r11*1+0x78],0x302
    1d2b7c4aeca8:	0f 84 09 00 00 00                               	je     0x1d2b7c4aecb7
    1d2b7c4aecae:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    1d2b7c4aecb2:	e9 04 00 00 00                                  	jmp    0x1d2b7c4aecbb
    1d2b7c4aecb7:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c4aecbb:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    1d2b7c4aecc0:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    1d2b7c4aecc5:	c4 01 7a 10 0c 20                               	vmovss xmm9,DWORD PTR [r8+r12*1]
    1d2b7c4aeccb:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    1d2b7c4aecd0:	c4 42 79 33 c9                                  	vpmovzxwd xmm9,xmm9
    1d2b7c4aecd5:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    1d2b7c4aecda:	4c 8b 15 62 d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd862]        # 0x1d2b7c4ac543
    1d2b7c4aece1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4aece6:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4aeceb:	c4 41 30 59 ce                                  	vmulps xmm9,xmm9,xmm14
    1d2b7c4aecf0:	c5 ca 5c ff                                     	vsubss xmm7,xmm6,xmm7
    1d2b7c4aecf4:	47 8b 7c 18 7c                                  	mov    r15d,DWORD PTR [r8+r11*1+0x7c]
    1d2b7c4aecf9:	43 83 7c 18 7c 01                               	cmp    DWORD PTR [r8+r11*1+0x7c],0x1
    1d2b7c4aecff:	0f 85 04 00 00 00                               	jne    0x1d2b7c4aed09
    1d2b7c4aed05:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    1d2b7c4aed09:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    1d2b7c4aed0e:	c5 b0 59 ff                                     	vmulps xmm7,xmm9,xmm7
    1d2b7c4aed12:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4aed16:	4c 8b 15 30 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa130]        # 0x1d2b7c4a8e4d
    1d2b7c4aed1d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4aed22:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4aed26:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4aed2b:	c4 41 78 c2 c9 01                               	vcmpltps xmm9,xmm0,xmm9
    1d2b7c4aed31:	c5 b0 55 c0                                     	vandnps xmm0,xmm9,xmm0
    1d2b7c4aed35:	4c 8b 15 11 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa111]        # 0x1d2b7c4a8e4d
    1d2b7c4aed3c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4aed41:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4aed46:	c5 30 c2 c8 01                                  	vcmpltps xmm9,xmm9,xmm0
    1d2b7c4aed4b:	c5 31 df f8                                     	vpandn xmm15,xmm9,xmm0
    1d2b7c4aed4f:	c4 c1 41 db c1                                  	vpand  xmm0,xmm7,xmm9
    1d2b7c4aed54:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4aed59:	4c 8b 15 3c f8 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff83c]        # 0x1d2b7c4ae59c
    1d2b7c4aed60:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4aed65:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4aed69:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    1d2b7c4aed6d:	4c 8b 15 72 ec ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffec72]        # 0x1d2b7c4ad9e6
    1d2b7c4aed74:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4aed79:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4aed7d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    1d2b7c4aed81:	4c 8b 15 a1 88 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff88a1]        # 0x1d2b7c4a7629
    1d2b7c4aed88:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    1d2b7c4aed8d:	c4 c1 78 54 ff                                  	vandps xmm7,xmm0,xmm15
    1d2b7c4aed92:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    1d2b7c4aed98:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    1d2b7c4aed9c:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    1d2b7c4aeda1:	4c 8b 15 52 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd052]        # 0x1d2b7c4abdfa
    1d2b7c4aeda8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4aedad:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4aedb2:	4c 8b 15 6c cf ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcf6c]        # 0x1d2b7c4abd25
    1d2b7c4aedb9:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    1d2b7c4aedbe:	4c 8b 15 6f cf ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcf6f]        # 0x1d2b7c4abd34
    1d2b7c4aedc5:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4aedca:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4aedcf:	c4 c1 78 c2 c6 01                               	vcmpltps xmm0,xmm0,xmm14
    1d2b7c4aedd5:	c4 41 79 df f9                                  	vpandn xmm15,xmm0,xmm9
    1d2b7c4aedda:	c5 c1 db c0                                     	vpand  xmm0,xmm7,xmm0
    1d2b7c4aedde:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4aede3:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    1d2b7c4aede8:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    1d2b7c4aedec:	c4 81 7a 11 04 20                               	vmovss DWORD PTR [r8+r12*1],xmm0
    1d2b7c4aedf2:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    1d2b7c4aedf8:	4c 8b e6                                        	mov    r12,rsi
    1d2b7c4aedfb:	49 8b f0                                        	mov    rsi,r8
    1d2b7c4aedfe:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    1d2b7c4aee03:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    1d2b7c4aee07:	4c 8b fa                                        	mov    r15,rdx
    1d2b7c4aee0a:	49 8b f9                                        	mov    rdi,r9
    1d2b7c4aee0d:	e9 66 1c 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4aee12:	45 8b e7                                        	mov    r12d,r15d
    1d2b7c4aee15:	41 83 e4 01                                     	and    r12d,0x1
    1d2b7c4aee19:	41 f7 dc                                        	neg    r12d
    1d2b7c4aee1c:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    1d2b7c4aee21:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c4aee26:	45 8b e7                                        	mov    r12d,r15d
    1d2b7c4aee29:	41 c1 e4 1e                                     	shl    r12d,0x1e
    1d2b7c4aee2d:	41 c1 fc 1f                                     	sar    r12d,0x1f
    1d2b7c4aee31:	c4 c3 41 22 fc 01                               	vpinsrd xmm7,xmm7,r12d,0x1
    1d2b7c4aee37:	45 8b e7                                        	mov    r12d,r15d
    1d2b7c4aee3a:	41 c1 e4 1d                                     	shl    r12d,0x1d
    1d2b7c4aee3e:	41 c1 fc 1f                                     	sar    r12d,0x1f
    1d2b7c4aee42:	c4 c3 41 22 fc 02                               	vpinsrd xmm7,xmm7,r12d,0x2
    1d2b7c4aee48:	45 8b e7                                        	mov    r12d,r15d
    1d2b7c4aee4b:	41 c1 e4 1c                                     	shl    r12d,0x1c
    1d2b7c4aee4f:	41 c1 fc 1f                                     	sar    r12d,0x1f
    1d2b7c4aee53:	c4 c3 41 22 fc 03                               	vpinsrd xmm7,xmm7,r12d,0x3
    1d2b7c4aee59:	c4 41 82 2a cb                                  	vcvtsi2ss xmm9,xmm15,r11
    1d2b7c4aee5e:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    1d2b7c4aee63:	4d 8b e3                                        	mov    r12,r11
    1d2b7c4aee66:	4c 2b a5 18 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2e8]
    1d2b7c4aee6d:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    1d2b7c4aee72:	c4 43 31 21 cb 10                               	vinsertps xmm9,xmm9,xmm11,0x10
    1d2b7c4aee78:	48 8b da                                        	mov    rbx,rdx
    1d2b7c4aee7b:	4a 8d 14 1b                                     	lea    rdx,[rbx+r11*1]
    1d2b7c4aee7f:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    1d2b7c4aee84:	c4 43 31 21 cb 20                               	vinsertps xmm9,xmm9,xmm11,0x20
    1d2b7c4aee8a:	4c 03 e3                                        	add    r12,rbx
    1d2b7c4aee8d:	c4 41 82 2a dc                                  	vcvtsi2ss xmm11,xmm15,r12
    1d2b7c4aee92:	c4 43 31 21 cb 30                               	vinsertps xmm9,xmm9,xmm11,0x30
    1d2b7c4aee98:	c5 78 10 9d 40 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x2c0]
    1d2b7c4aeea0:	c4 41 20 59 c9                                  	vmulps xmm9,xmm11,xmm9
    1d2b7c4aeea5:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    1d2b7c4aeead:	c4 c1 08 59 c9                                  	vmulps xmm1,xmm14,xmm9
    1d2b7c4aeeb2:	c4 c1 82 2a d1                                  	vcvtsi2ss xmm2,xmm15,r9
    1d2b7c4aeeb7:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    1d2b7c4aeebc:	4d 8b e1                                        	mov    r12,r9
    1d2b7c4aeebf:	4c 2b a5 38 fd ff ff                            	sub    r12,QWORD PTR [rbp-0x2c8]
    1d2b7c4aeec6:	c4 c1 82 2a dc                                  	vcvtsi2ss xmm3,xmm15,r12
    1d2b7c4aeecb:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    1d2b7c4aeed1:	4a 8d 14 0e                                     	lea    rdx,[rsi+r9*1]
    1d2b7c4aeed5:	c4 e1 82 2a da                                  	vcvtsi2ss xmm3,xmm15,rdx
    1d2b7c4aeeda:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    1d2b7c4aeee0:	4c 03 e6                                        	add    r12,rsi
    1d2b7c4aeee3:	c4 c1 82 2a dc                                  	vcvtsi2ss xmm3,xmm15,r12
    1d2b7c4aeee8:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    1d2b7c4aeeee:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c4aeef2:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    1d2b7c4aeefa:	c5 e0 59 ea                                     	vmulps xmm5,xmm3,xmm2
    1d2b7c4aeefe:	c5 f0 58 c5                                     	vaddps xmm0,xmm1,xmm5
    1d2b7c4aef02:	4c 8b 15 44 9f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9f44]        # 0x1d2b7c4a8e4d
    1d2b7c4aef09:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    1d2b7c4aef0e:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    1d2b7c4aef12:	c4 41 48 5c c1                                  	vsubps xmm8,xmm6,xmm9
    1d2b7c4aef17:	c5 38 5c c2                                     	vsubps xmm8,xmm8,xmm2
    1d2b7c4aef1b:	c5 78 10 95 60 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2a0]
    1d2b7c4aef23:	c4 41 28 59 d8                                  	vmulps xmm11,xmm10,xmm8
    1d2b7c4aef28:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    1d2b7c4aef2d:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    1d2b7c4aef32:	c5 28 c2 e0 01                                  	vcmpltps xmm12,xmm10,xmm0
    1d2b7c4aef37:	c5 99 db ff                                     	vpand  xmm7,xmm12,xmm7
    1d2b7c4aef3b:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4aef3f:	49 8d 54 24 18                                  	lea    rdx,[r12+0x18]
    1d2b7c4aef44:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4aef4b:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    1d2b7c4aef51:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    1d2b7c4aef56:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    1d2b7c4aef5d:	c4 22 79 18 24 1a                               	vbroadcastss xmm12,DWORD PTR [rdx+r11*1]
    1d2b7c4aef63:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    1d2b7c4aef68:	c4 41 30 58 cc                                  	vaddps xmm9,xmm9,xmm12
    1d2b7c4aef6d:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    1d2b7c4aef74:	c4 62 79 18 24 1a                               	vbroadcastss xmm12,DWORD PTR [rdx+rbx*1]
    1d2b7c4aef7a:	c4 41 38 59 c4                                  	vmulps xmm8,xmm8,xmm12
    1d2b7c4aef7f:	c4 41 30 58 c0                                  	vaddps xmm8,xmm9,xmm8
    1d2b7c4aef84:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    1d2b7c4aef8c:	c4 41 30 58 c0                                  	vaddps xmm8,xmm9,xmm8
    1d2b7c4aef91:	48 8b 55 c8                                     	mov    rdx,QWORD PTR [rbp-0x38]
    1d2b7c4aef95:	41 8b 34 14                                     	mov    esi,DWORD PTR [r12+rdx*1]
    1d2b7c4aef99:	44 8b ce                                        	mov    r9d,esi
    1d2b7c4aef9c:	44 0f af 8d 50 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xb0]
    1d2b7c4aefa4:	45 03 c8                                        	add    r9d,r8d
    1d2b7c4aefa7:	0f af b5 e0 fc ff ff                            	imul   esi,DWORD PTR [rbp-0x320]
    1d2b7c4aefae:	41 03 f0                                        	add    esi,r8d
    1d2b7c4aefb1:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    1d2b7c4aefb5:	45 8b 44 14 04                                  	mov    r8d,DWORD PTR [r12+rdx*1+0x4]
    1d2b7c4aefba:	45 8b 7c 14 68                                  	mov    r15d,DWORD PTR [r12+rdx*1+0x68]
    1d2b7c4aefbf:	4c 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r15
    1d2b7c4aefc6:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4aefc9:	0f 85 08 00 00 00                               	jne    0x1d2b7c4aefd7
    1d2b7c4aefcf:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c4aefd2:	e9 1d 01 00 00                                  	jmp    0x1d2b7c4af0f4
    1d2b7c4aefd7:	45 8b bc 14 80 00 00 00                         	mov    r15d,DWORD PTR [r12+rdx*1+0x80]
    1d2b7c4aefdf:	41 83 bc 14 80 00 00 00 00                      	cmp    DWORD PTR [r12+rdx*1+0x80],0x0
    1d2b7c4aefe8:	75 e5                                           	jne    0x1d2b7c4aefcf
    1d2b7c4aefea:	45 8b 7c 14 0c                                  	mov    r15d,DWORD PTR [r12+rdx*1+0xc]
    1d2b7c4aefef:	41 8d 04 b7                                     	lea    eax,[r15+rsi*4]
    1d2b7c4aeff3:	c4 41 7b 10 24 04                               	vmovsd xmm12,QWORD PTR [r12+rax*1]
    1d2b7c4aeff9:	8b 85 50 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xb0]
    1d2b7c4aefff:	41 3b c0                                        	cmp    eax,r8d
    1d2b7c4af002:	0f 8c 0d 00 00 00                               	jl     0x1d2b7c4af015
    1d2b7c4af008:	c5 f8 10 95 80 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x280]
    1d2b7c4af010:	e9 0a 00 00 00                                  	jmp    0x1d2b7c4af01f
    1d2b7c4af015:	47 8d 3c 8f                                     	lea    r15d,[r15+r9*4]
    1d2b7c4af019:	c4 81 7b 10 14 3c                               	vmovsd xmm2,QWORD PTR [r12+r15*1]
    1d2b7c4af01f:	c5 19 6c e2                                     	vpunpcklqdq xmm12,xmm12,xmm2
    1d2b7c4af023:	45 8b 7c 14 6c                                  	mov    r15d,DWORD PTR [r12+rdx*1+0x6c]
    1d2b7c4af028:	41 81 ef 00 02 00 00                            	sub    r15d,0x200
    1d2b7c4af02f:	41 83 ff 07                                     	cmp    r15d,0x7
    1d2b7c4af033:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4af044
    1d2b7c4af039:	4c 8d 15 48 1f 00 00                            	lea    r10,[rip+0x1f48]        # 0x1d2b7c4b0f88
    1d2b7c4af040:	43 ff 24 fa                                     	jmp    QWORD PTR [r10+r15*8]
    1d2b7c4af044:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    1d2b7c4af049:	e9 4a 00 00 00                                  	jmp    0x1d2b7c4af098
    1d2b7c4af04e:	c4 41 18 c2 e0 02                               	vcmpleps xmm12,xmm12,xmm8
    1d2b7c4af054:	e9 3f 00 00 00                                  	jmp    0x1d2b7c4af098
    1d2b7c4af059:	c4 41 38 c2 e4 04                               	vcmpneqps xmm12,xmm8,xmm12
    1d2b7c4af05f:	e9 34 00 00 00                                  	jmp    0x1d2b7c4af098
    1d2b7c4af064:	c4 41 18 c2 e0 01                               	vcmpltps xmm12,xmm12,xmm8
    1d2b7c4af06a:	e9 29 00 00 00                                  	jmp    0x1d2b7c4af098
    1d2b7c4af06f:	c4 41 38 c2 e4 02                               	vcmpleps xmm12,xmm8,xmm12
    1d2b7c4af075:	e9 1e 00 00 00                                  	jmp    0x1d2b7c4af098
    1d2b7c4af07a:	c4 41 38 c2 e4 00                               	vcmpeqps xmm12,xmm8,xmm12
    1d2b7c4af080:	e9 13 00 00 00                                  	jmp    0x1d2b7c4af098
    1d2b7c4af085:	c4 41 38 c2 e4 01                               	vcmpltps xmm12,xmm8,xmm12
    1d2b7c4af08b:	e9 08 00 00 00                                  	jmp    0x1d2b7c4af098
    1d2b7c4af090:	c5 78 10 a5 80 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x280]
    1d2b7c4af098:	c5 99 db ff                                     	vpand  xmm7,xmm12,xmm7
    1d2b7c4af09c:	c5 78 50 ff                                     	vmovmskps r15d,xmm7
    1d2b7c4af0a0:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4af0a3:	0f 85 3f 00 00 00                               	jne    0x1d2b7c4af0e8
    1d2b7c4af0a9:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4af0ac:	4c 8b e3                                        	mov    r12,rbx
    1d2b7c4af0af:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4af0b4:	4d 8b fb                                        	mov    r15,r11
    1d2b7c4af0b7:	4c 8b da                                        	mov    r11,rdx
    1d2b7c4af0ba:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4af0bf:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4af0c5:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4af0cb:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4af0d3:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4af0db:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4af0e3:	e9 90 19 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4af0e8:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    1d2b7c4af0ee:	41 bf 01 00 00 00                               	mov    r15d,0x1
    1d2b7c4af0f4:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    1d2b7c4af0fe:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c4af103:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c4af108:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x1d2b7c4af0f6
    1d2b7c4af10f:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c4af114:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c4af118:	c5 e8 c2 d0 01                                  	vcmpltps xmm2,xmm2,xmm0
    1d2b7c4af11d:	c4 41 69 df fc                                  	vpandn xmm15,xmm2,xmm12
    1d2b7c4af122:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    1d2b7c4af126:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4af12b:	c5 c8 5e c0                                     	vdivps xmm0,xmm6,xmm0
    1d2b7c4af12f:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    1d2b7c4af136:	4d 8d 44 24 2c                                  	lea    r8,[r12+0x2c]
    1d2b7c4af13b:	c4 42 79 18 24 38                               	vbroadcastss xmm12,DWORD PTR [r8+rdi*1]
    1d2b7c4af141:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    1d2b7c4af146:	c4 82 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+r11*1]
    1d2b7c4af14c:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    1d2b7c4af150:	c5 18 58 e2                                     	vaddps xmm12,xmm12,xmm2
    1d2b7c4af154:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    1d2b7c4af15a:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c4af15e:	c5 18 58 e2                                     	vaddps xmm12,xmm12,xmm2
    1d2b7c4af162:	c4 41 78 59 e4                                  	vmulps xmm12,xmm0,xmm12
    1d2b7c4af167:	4d 8d 44 24 28                                  	lea    r8,[r12+0x28]
    1d2b7c4af16c:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    1d2b7c4af172:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    1d2b7c4af176:	c5 f8 11 b5 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm6
    1d2b7c4af17e:	c4 82 79 18 34 18                               	vbroadcastss xmm6,DWORD PTR [r8+r11*1]
    1d2b7c4af184:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    1d2b7c4af188:	c5 e8 58 f6                                     	vaddps xmm6,xmm2,xmm6
    1d2b7c4af18c:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    1d2b7c4af192:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c4af196:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
    1d2b7c4af19a:	c5 f8 59 f6                                     	vmulps xmm6,xmm0,xmm6
    1d2b7c4af19e:	4d 8d 44 24 24                                  	lea    r8,[r12+0x24]
    1d2b7c4af1a3:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    1d2b7c4af1a9:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    1d2b7c4af1ad:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    1d2b7c4af1b5:	c4 82 79 18 3c 18                               	vbroadcastss xmm7,DWORD PTR [r8+r11*1]
    1d2b7c4af1bb:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    1d2b7c4af1bf:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    1d2b7c4af1c3:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    1d2b7c4af1c9:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c4af1cd:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    1d2b7c4af1d1:	c5 f8 59 ff                                     	vmulps xmm7,xmm0,xmm7
    1d2b7c4af1d5:	4d 8d 44 24 20                                  	lea    r8,[r12+0x20]
    1d2b7c4af1da:	c4 c2 79 18 14 38                               	vbroadcastss xmm2,DWORD PTR [r8+rdi*1]
    1d2b7c4af1e0:	c5 f0 59 d2                                     	vmulps xmm2,xmm1,xmm2
    1d2b7c4af1e4:	c5 78 11 85 40 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xc0],xmm8
    1d2b7c4af1ec:	c4 02 79 18 04 18                               	vbroadcastss xmm8,DWORD PTR [r8+r11*1]
    1d2b7c4af1f2:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    1d2b7c4af1f7:	c4 41 68 58 c0                                  	vaddps xmm8,xmm2,xmm8
    1d2b7c4af1fc:	c4 c2 79 18 14 18                               	vbroadcastss xmm2,DWORD PTR [r8+rbx*1]
    1d2b7c4af202:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    1d2b7c4af206:	c5 38 58 c2                                     	vaddps xmm8,xmm8,xmm2
    1d2b7c4af20a:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    1d2b7c4af20f:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4af216:	4c 89 bd 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r15
    1d2b7c4af21d:	47 8b bc 04 34 01 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x134]
    1d2b7c4af225:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    1d2b7c4af22c:	41 8d 77 ff                                     	lea    esi,[r15-0x1]
    1d2b7c4af230:	4c 89 8d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],r9
    1d2b7c4af237:	c5 78 11 95 10 ff ff ff                         	vmovups XMMWORD PTR [rbp-0xf0],xmm10
    1d2b7c4af23f:	83 fe 01                                        	cmp    esi,0x1
    1d2b7c4af242:	0f 87 14 07 00 00                               	ja     0x1d2b7c4af95c
    1d2b7c4af248:	43 8b 74 04 28                                  	mov    esi,DWORD PTR [r12+r8*1+0x28]
    1d2b7c4af24d:	47 8b 4c 04 20                                  	mov    r9d,DWORD PTR [r12+r8*1+0x20]
    1d2b7c4af252:	4c 89 bd a0 fe ff ff                            	mov    QWORD PTR [rbp-0x160],r15
    1d2b7c4af259:	4d 8d 7c 24 54                                  	lea    r15,[r12+0x54]
    1d2b7c4af25e:	c4 c2 79 18 14 1f                               	vbroadcastss xmm2,DWORD PTR [r15+rbx*1]
    1d2b7c4af264:	c4 42 79 18 0c 3f                               	vbroadcastss xmm9,DWORD PTR [r15+rdi*1]
    1d2b7c4af26a:	c4 02 79 18 2c 1f                               	vbroadcastss xmm13,DWORD PTR [r15+r11*1]
    1d2b7c4af270:	47 8b 7c 04 1c                                  	mov    r15d,DWORD PTR [r12+r8*1+0x1c]
    1d2b7c4af275:	c4 41 02 2a f7                                  	vcvtsi2ss xmm14,xmm15,r15d
    1d2b7c4af27a:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    1d2b7c4af27f:	48 89 b5 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],rsi
    1d2b7c4af286:	49 8d 74 24 50                                  	lea    rsi,[r12+0x50]
    1d2b7c4af28b:	c4 e2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+rdi*1]
    1d2b7c4af291:	c5 f0 59 db                                     	vmulps xmm3,xmm1,xmm3
    1d2b7c4af295:	c4 a2 79 18 24 1e                               	vbroadcastss xmm4,DWORD PTR [rsi+r11*1]
    1d2b7c4af29b:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    1d2b7c4af29f:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    1d2b7c4af2a3:	c4 e2 79 18 24 1e                               	vbroadcastss xmm4,DWORD PTR [rsi+rbx*1]
    1d2b7c4af2a9:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    1d2b7c4af2ad:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    1d2b7c4af2b1:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    1d2b7c4af2b5:	c4 e3 79 08 e3 09                               	vroundps xmm4,xmm3,0x9
    1d2b7c4af2bb:	c5 e0 5c dc                                     	vsubps xmm3,xmm3,xmm4
    1d2b7c4af2bf:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    1d2b7c4af2c3:	4c 8b 15 1e ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca1e]        # 0x1d2b7c4abce8
    1d2b7c4af2ca:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c4af2cf:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c4af2d3:	c5 08 58 f3                                     	vaddps xmm14,xmm14,xmm3
    1d2b7c4af2d7:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    1d2b7c4af2dd:	4c 8b 15 45 83 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8345]        # 0x1d2b7c4a7629
    1d2b7c4af2e4:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    1d2b7c4af2e9:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    1d2b7c4af2ee:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    1d2b7c4af2f4:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    1d2b7c4af2f9:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    1d2b7c4af2fe:	c5 78 11 a5 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm12
    1d2b7c4af306:	4c 8b 15 ed ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcaed]        # 0x1d2b7c4abdfa
    1d2b7c4af30d:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c4af312:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c4af317:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    1d2b7c4af31f:	4c 8b 15 ff c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc9ff]        # 0x1d2b7c4abd25
    1d2b7c4af326:	c4 c1 58 54 32                                  	vandps xmm6,xmm4,XMMWORD PTR [r10]
    1d2b7c4af32b:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    1d2b7c4af333:	4c 8b 15 fa c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc9fa]        # 0x1d2b7c4abd34
    1d2b7c4af33a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4af33f:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4af343:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    1d2b7c4af348:	c4 41 49 df fc                                  	vpandn xmm15,xmm6,xmm12
    1d2b7c4af34d:	c5 a9 db f6                                     	vpand  xmm6,xmm10,xmm6
    1d2b7c4af351:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c4af356:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    1d2b7c4af359:	c4 c1 7a 7f b4 34 90 00 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x90],xmm6
    1d2b7c4af363:	c4 c1 02 2a f1                                  	vcvtsi2ss xmm6,xmm15,r9d
    1d2b7c4af368:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    1d2b7c4af36d:	c4 41 70 59 c9                                  	vmulps xmm9,xmm1,xmm9
    1d2b7c4af372:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    1d2b7c4af377:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    1d2b7c4af37c:	c5 20 59 d2                                     	vmulps xmm10,xmm11,xmm2
    1d2b7c4af380:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    1d2b7c4af385:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    1d2b7c4af38a:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    1d2b7c4af390:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    1d2b7c4af395:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    1d2b7c4af39a:	c5 c8 58 f3                                     	vaddps xmm6,xmm6,xmm3
    1d2b7c4af39e:	c4 63 79 08 ce 09                               	vroundps xmm9,xmm6,0x9
    1d2b7c4af3a4:	4c 8b 15 7e 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff827e]        # 0x1d2b7c4a7629
    1d2b7c4af3ab:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    1d2b7c4af3b1:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    1d2b7c4af3b6:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    1d2b7c4af3bc:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    1d2b7c4af3c1:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    1d2b7c4af3c6:	4c 8b 15 58 c9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc958]        # 0x1d2b7c4abd25
    1d2b7c4af3cd:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    1d2b7c4af3d2:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    1d2b7c4af3d7:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    1d2b7c4af3dc:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    1d2b7c4af3e1:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    1d2b7c4af3e6:	c4 41 7a 7f 94 34 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x190],xmm10
    1d2b7c4af3f0:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    1d2b7c4af3f4:	c5 78 10 ad 90 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x270]
    1d2b7c4af3fc:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    1d2b7c4af401:	4c 8b 15 de e5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe5de]        # 0x1d2b7c4ad9e6
    1d2b7c4af408:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    1d2b7c4af40d:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    1d2b7c4af412:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    1d2b7c4af417:	4c 8b 15 0b 82 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff820b]        # 0x1d2b7c4a7629
    1d2b7c4af41e:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    1d2b7c4af424:	c4 c1 28 54 d7                                  	vandps xmm2,xmm10,xmm15
    1d2b7c4af429:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    1d2b7c4af42f:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    1d2b7c4af433:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    1d2b7c4af438:	4c 8b 15 e6 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc8e6]        # 0x1d2b7c4abd25
    1d2b7c4af43f:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    1d2b7c4af444:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    1d2b7c4af449:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    1d2b7c4af44e:	c4 41 69 db d2                                  	vpand  xmm10,xmm2,xmm10
    1d2b7c4af453:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    1d2b7c4af458:	c4 41 7a 7f 14 34                               	vmovdqu XMMWORD PTR [r12+rsi*1],xmm10
    1d2b7c4af45e:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    1d2b7c4af463:	c4 c1 48 59 f5                                  	vmulps xmm6,xmm6,xmm13
    1d2b7c4af468:	c4 c1 48 58 f6                                  	vaddps xmm6,xmm6,xmm14
    1d2b7c4af46d:	4c 8b 15 b5 81 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff81b5]        # 0x1d2b7c4a7629
    1d2b7c4af474:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    1d2b7c4af479:	c4 41 48 54 cf                                  	vandps xmm9,xmm6,xmm15
    1d2b7c4af47e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    1d2b7c4af484:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    1d2b7c4af489:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    1d2b7c4af48e:	4c 8b 15 90 c8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc890]        # 0x1d2b7c4abd25
    1d2b7c4af495:	c4 c1 48 54 32                                  	vandps xmm6,xmm6,XMMWORD PTR [r10]
    1d2b7c4af49a:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    1d2b7c4af49f:	c4 41 49 df fc                                  	vpandn xmm15,xmm6,xmm12
    1d2b7c4af4a4:	c5 b1 db f6                                     	vpand  xmm6,xmm9,xmm6
    1d2b7c4af4a8:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c4af4ad:	c4 c1 7a 7f 74 34 70                            	vmovdqu XMMWORD PTR [r12+rsi*1+0x70],xmm6
    1d2b7c4af4b4:	c4 41 7a 7f 44 34 50                            	vmovdqu XMMWORD PTR [r12+rsi*1+0x50],xmm8
    1d2b7c4af4bb:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    1d2b7c4af4c3:	c4 c1 7a 7f bc 34 f0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1f0],xmm7
    1d2b7c4af4cd:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    1d2b7c4af4d5:	c4 c1 7a 7f b4 34 e0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1e0],xmm6
    1d2b7c4af4df:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    1d2b7c4af4e7:	c4 41 7a 7f a4 34 d0 01 00 00                   	vmovdqu XMMWORD PTR [r12+rsi*1+0x1d0],xmm12
    1d2b7c4af4f1:	43 8b 5c 04 34                                  	mov    ebx,DWORD PTR [r12+r8*1+0x34]
    1d2b7c4af4f6:	47 8b 5c 04 30                                  	mov    r11d,DWORD PTR [r12+r8*1+0x30]
    1d2b7c4af4fb:	43 8b 7c 04 2c                                  	mov    edi,DWORD PTR [r12+r8*1+0x2c]
    1d2b7c4af500:	4c 89 8d b8 fd ff ff                            	mov    QWORD PTR [rbp-0x248],r9
    1d2b7c4af507:	48 89 9d d0 fd ff ff                            	mov    QWORD PTR [rbp-0x230],rbx
    1d2b7c4af50e:	4c 89 9d c0 fd ff ff                            	mov    QWORD PTR [rbp-0x240],r11
    1d2b7c4af515:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4af518:	e9 37 00 00 00                                  	jmp    0x1d2b7c4af554
    1d2b7c4af51d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4af526:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4af52f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    1d2b7c4af538:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    1d2b7c4af540:	41 8b f0                                        	mov    esi,r8d
    1d2b7c4af543:	45 8b c3                                        	mov    r8d,r11d
    1d2b7c4af546:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    1d2b7c4af54d:	44 8b 8d b8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x248]
    1d2b7c4af554:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    1d2b7c4af559:	0f 85 f5 18 00 00                               	jne    0x1d2b7c4b0e54
    1d2b7c4af55f:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4af562:	8b 9d b0 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x250]
    1d2b7c4af568:	d3 eb                                           	shr    ebx,cl
    1d2b7c4af56a:	f6 c3 01                                        	test   bl,0x1
    1d2b7c4af56d:	0f 85 11 00 00 00                               	jne    0x1d2b7c4af584
    1d2b7c4af573:	41 8b d8                                        	mov    ebx,r8d
    1d2b7c4af576:	44 8b c6                                        	mov    r8d,esi
    1d2b7c4af579:	8b 95 80 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x180]
    1d2b7c4af57f:	e9 45 03 00 00                                  	jmp    0x1d2b7c4af8c9
    1d2b7c4af584:	42 8d 9c 86 90 01 00 00                         	lea    ebx,[rsi+r8*4+0x190]
    1d2b7c4af58c:	41 8b 1c 1c                                     	mov    ebx,DWORD PTR [r12+rbx*1]
    1d2b7c4af590:	42 8d 8c 86 90 00 00 00                         	lea    ecx,[rsi+r8*4+0x90]
    1d2b7c4af598:	41 8b 0c 0c                                     	mov    ecx,DWORD PTR [r12+rcx*1]
    1d2b7c4af59c:	8d 71 01                                        	lea    esi,[rcx+0x1]
    1d2b7c4af59f:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    1d2b7c4af5a6:	44 8d 43 01                                     	lea    r8d,[rbx+0x1]
    1d2b7c4af5aa:	85 ff                                           	test   edi,edi
    1d2b7c4af5ac:	0f 85 48 00 00 00                               	jne    0x1d2b7c4af5fa
    1d2b7c4af5b2:	45 85 ff                                        	test   r15d,r15d
    1d2b7c4af5b5:	0f 84 50 19 00 00                               	je     0x1d2b7c4b0f0b
    1d2b7c4af5bb:	41 83 ff ff                                     	cmp    r15d,0xffffffff
    1d2b7c4af5bf:	0f 84 1f 19 00 00                               	je     0x1d2b7c4b0ee4
    1d2b7c4af5c5:	8b c6                                           	mov    eax,esi
    1d2b7c4af5c7:	99                                              	cdq
    1d2b7c4af5c8:	41 f7 ff                                        	idiv   r15d
    1d2b7c4af5cb:	8b c2                                           	mov    eax,edx
    1d2b7c4af5cd:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c4af5d0:	41 23 c7                                        	and    eax,r15d
    1d2b7c4af5d3:	03 c2                                           	add    eax,edx
    1d2b7c4af5d5:	41 83 ff ff                                     	cmp    r15d,0xffffffff
    1d2b7c4af5d9:	0f 84 0c 19 00 00                               	je     0x1d2b7c4b0eeb
    1d2b7c4af5df:	44 8b d0                                        	mov    r10d,eax
    1d2b7c4af5e2:	8b c1                                           	mov    eax,ecx
    1d2b7c4af5e4:	41 8b ca                                        	mov    ecx,r10d
    1d2b7c4af5e7:	99                                              	cdq
    1d2b7c4af5e8:	41 f7 ff                                        	idiv   r15d
    1d2b7c4af5eb:	8b c2                                           	mov    eax,edx
    1d2b7c4af5ed:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c4af5f0:	41 23 c7                                        	and    eax,r15d
    1d2b7c4af5f3:	03 c2                                           	add    eax,edx
    1d2b7c4af5f5:	e9 08 00 00 00                                  	jmp    0x1d2b7c4af602
    1d2b7c4af5fa:	23 f7                                           	and    esi,edi
    1d2b7c4af5fc:	23 cf                                           	and    ecx,edi
    1d2b7c4af5fe:	8b c1                                           	mov    eax,ecx
    1d2b7c4af600:	8b ce                                           	mov    ecx,esi
    1d2b7c4af602:	45 85 db                                        	test   r11d,r11d
    1d2b7c4af605:	0f 85 51 00 00 00                               	jne    0x1d2b7c4af65c
    1d2b7c4af60b:	45 85 c9                                        	test   r9d,r9d
    1d2b7c4af60e:	0f 84 f2 18 00 00                               	je     0x1d2b7c4b0f06
    1d2b7c4af614:	41 83 f9 ff                                     	cmp    r9d,0xffffffff
    1d2b7c4af618:	0f 84 d6 18 00 00                               	je     0x1d2b7c4b0ef4
    1d2b7c4af61e:	8b f0                                           	mov    esi,eax
    1d2b7c4af620:	41 8b c0                                        	mov    eax,r8d
    1d2b7c4af623:	99                                              	cdq
    1d2b7c4af624:	41 f7 f9                                        	idiv   r9d
    1d2b7c4af627:	8b c2                                           	mov    eax,edx
    1d2b7c4af629:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c4af62c:	41 23 c1                                        	and    eax,r9d
    1d2b7c4af62f:	03 c2                                           	add    eax,edx
    1d2b7c4af631:	41 83 f9 ff                                     	cmp    r9d,0xffffffff
    1d2b7c4af635:	0f 84 c2 18 00 00                               	je     0x1d2b7c4b0efd
    1d2b7c4af63b:	44 8b d0                                        	mov    r10d,eax
    1d2b7c4af63e:	8b c3                                           	mov    eax,ebx
    1d2b7c4af640:	41 8b da                                        	mov    ebx,r10d
    1d2b7c4af643:	99                                              	cdq
    1d2b7c4af644:	41 f7 f9                                        	idiv   r9d
    1d2b7c4af647:	8b c2                                           	mov    eax,edx
    1d2b7c4af649:	c1 f8 1f                                        	sar    eax,0x1f
    1d2b7c4af64c:	44 23 c8                                        	and    r9d,eax
    1d2b7c4af64f:	42 8d 04 0a                                     	lea    eax,[rdx+r9*1]
    1d2b7c4af653:	8b d0                                           	mov    edx,eax
    1d2b7c4af655:	8b c3                                           	mov    eax,ebx
    1d2b7c4af657:	e9 0d 00 00 00                                  	jmp    0x1d2b7c4af669
    1d2b7c4af65c:	45 23 c3                                        	and    r8d,r11d
    1d2b7c4af65f:	41 8b d3                                        	mov    edx,r11d
    1d2b7c4af662:	23 d3                                           	and    edx,ebx
    1d2b7c4af664:	8b f0                                           	mov    esi,eax
    1d2b7c4af666:	41 8b c0                                        	mov    eax,r8d
    1d2b7c4af669:	44 8b c9                                        	mov    r9d,ecx
    1d2b7c4af66c:	8b 8d d0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x230]
    1d2b7c4af672:	8b da                                           	mov    ebx,edx
    1d2b7c4af674:	d3 e3                                           	shl    ebx,cl
    1d2b7c4af676:	41 0f af d7                                     	imul   edx,r15d
    1d2b7c4af67a:	85 ff                                           	test   edi,edi
    1d2b7c4af67c:	0f 45 d3                                        	cmovne edx,ebx
    1d2b7c4af67f:	8d 1c 32                                        	lea    ebx,[rdx+rsi*1]
    1d2b7c4af682:	8b 8d 80 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x180]
    1d2b7c4af688:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    1d2b7c4af68b:	c4 c1 7a 10 34 1c                               	vmovss xmm6,DWORD PTR [r12+rbx*1]
    1d2b7c4af691:	c4 e2 79 30 f6                                  	vpmovzxbw xmm6,xmm6
    1d2b7c4af696:	41 8d 1c 11                                     	lea    ebx,[r9+rdx*1]
    1d2b7c4af69a:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    1d2b7c4af69d:	c4 c1 7a 10 3c 1c                               	vmovss xmm7,DWORD PTR [r12+rbx*1]
    1d2b7c4af6a3:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    1d2b7c4af6a8:	c5 c9 61 f7                                     	vpunpcklwd xmm6,xmm6,xmm7
    1d2b7c4af6ac:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    1d2b7c4af6b2:	8b 95 c8 fd ff ff                               	mov    edx,DWORD PTR [rbp-0x238]
    1d2b7c4af6b8:	44 8d 84 9a 00 fe ff ff                         	lea    r8d,[rdx+rbx*4-0x200]
    1d2b7c4af6c0:	47 8b 04 04                                     	mov    r8d,DWORD PTR [r12+r8*1]
    1d2b7c4af6c4:	ba 00 01 00 00                                  	mov    edx,0x100
    1d2b7c4af6c9:	45 8b d8                                        	mov    r11d,r8d
    1d2b7c4af6cc:	41 81 f8 00 01 00 00                            	cmp    r8d,0x100
    1d2b7c4af6d3:	44 0f 4d da                                     	cmovge r11d,edx
    1d2b7c4af6d7:	45 33 c0                                        	xor    r8d,r8d
    1d2b7c4af6da:	45 85 db                                        	test   r11d,r11d
    1d2b7c4af6dd:	45 0f 4f c3                                     	cmovg  r8d,r11d
    1d2b7c4af6e1:	45 69 c0 ff ff 00 00                            	imul   r8d,r8d,0xffff
    1d2b7c4af6e8:	41 81 c0 00 01 00 00                            	add    r8d,0x100
    1d2b7c4af6ef:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
    1d2b7c4af6f4:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c4af6f9:	c5 c9 f5 f7                                     	vpmaddwd xmm6,xmm6,xmm7
    1d2b7c4af6fd:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    1d2b7c4af701:	45 8d 5c 98 70                                  	lea    r11d,[r8+rbx*4+0x70]
    1d2b7c4af706:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c4af70a:	45 8b c3                                        	mov    r8d,r11d
    1d2b7c4af70d:	41 81 fb 00 01 00 00                            	cmp    r11d,0x100
    1d2b7c4af714:	44 0f 4d c2                                     	cmovge r8d,edx
    1d2b7c4af718:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4af71b:	45 85 c0                                        	test   r8d,r8d
    1d2b7c4af71e:	45 0f 4f d8                                     	cmovg  r11d,r8d
    1d2b7c4af722:	41 2b d3                                        	sub    edx,r11d
    1d2b7c4af725:	c5 79 6e c2                                     	vmovd  xmm8,edx
    1d2b7c4af729:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c4af72e:	c4 c2 49 40 f0                                  	vpmulld xmm6,xmm6,xmm8
    1d2b7c4af733:	8b d1                                           	mov    edx,ecx
    1d2b7c4af735:	8b 8d d0 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x230]
    1d2b7c4af73b:	44 8b c0                                        	mov    r8d,eax
    1d2b7c4af73e:	41 d3 e0                                        	shl    r8d,cl
    1d2b7c4af741:	41 0f af c7                                     	imul   eax,r15d
    1d2b7c4af745:	85 ff                                           	test   edi,edi
    1d2b7c4af747:	41 0f 45 c0                                     	cmovne eax,r8d
    1d2b7c4af74b:	44 8d 04 06                                     	lea    r8d,[rsi+rax*1]
    1d2b7c4af74f:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    1d2b7c4af753:	c4 01 7a 10 04 04                               	vmovss xmm8,DWORD PTR [r12+r8*1]
    1d2b7c4af759:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    1d2b7c4af75e:	46 8d 04 08                                     	lea    r8d,[rax+r9*1]
    1d2b7c4af762:	46 8d 04 82                                     	lea    r8d,[rdx+r8*4]
    1d2b7c4af766:	c4 01 7a 10 0c 04                               	vmovss xmm9,DWORD PTR [r12+r8*1]
    1d2b7c4af76c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    1d2b7c4af771:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    1d2b7c4af776:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    1d2b7c4af77a:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    1d2b7c4af77f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c4af784:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    1d2b7c4af789:	c5 c9 fe f7                                     	vpaddd xmm6,xmm6,xmm7
    1d2b7c4af78d:	4c 8b 15 42 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe342]        # 0x1d2b7c4adad6
    1d2b7c4af794:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c4af799:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c4af79d:	c5 c9 fe f7                                     	vpaddd xmm6,xmm6,xmm7
    1d2b7c4af7a1:	c5 c9 72 e6 10                                  	vpsrad xmm6,xmm6,0x10
    1d2b7c4af7a6:	c4 e2 49 2b f6                                  	vpackusdw xmm6,xmm6,xmm6
    1d2b7c4af7ab:	c5 c9 67 f6                                     	vpackuswb xmm6,xmm6,xmm6
    1d2b7c4af7af:	c4 c1 79 7e f0                                  	vmovd  r8d,xmm6
    1d2b7c4af7b4:	45 8b d8                                        	mov    r11d,r8d
    1d2b7c4af7b7:	41 c1 eb 18                                     	shr    r11d,0x18
    1d2b7c4af7bb:	41 8b c0                                        	mov    eax,r8d
    1d2b7c4af7be:	c1 e8 10                                        	shr    eax,0x10
    1d2b7c4af7c1:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4af7c4:	c1 e9 08                                        	shr    ecx,0x8
    1d2b7c4af7c7:	45 0f b6 c0                                     	movzx  r8d,r8b
    1d2b7c4af7cb:	45 8b d0                                        	mov    r10d,r8d
    1d2b7c4af7ce:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4af7d3:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    1d2b7c4af7d9:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    1d2b7c4af7de:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4af7e2:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    1d2b7c4af7e6:	41 8d 74 98 50                                  	lea    esi,[r8+rbx*4+0x50]
    1d2b7c4af7eb:	83 bd a0 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x160],0x2
    1d2b7c4af7f2:	0f 84 77 00 00 00                               	je     0x1d2b7c4af86f
    1d2b7c4af7f8:	c4 c1 4a 59 34 34                               	vmulss xmm6,xmm6,DWORD PTR [r12+rsi*1]
    1d2b7c4af7fe:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    1d2b7c4af804:	41 8d b4 98 f0 01 00 00                         	lea    esi,[r8+rbx*4+0x1f0]
    1d2b7c4af80c:	0f b6 c9                                        	movzx  ecx,cl
    1d2b7c4af80f:	44 8b d1                                        	mov    r10d,ecx
    1d2b7c4af812:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4af817:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4af81b:	c4 c1 4a 59 34 34                               	vmulss xmm6,xmm6,DWORD PTR [r12+rsi*1]
    1d2b7c4af821:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    1d2b7c4af827:	41 8d 8c 98 e0 01 00 00                         	lea    ecx,[r8+rbx*4+0x1e0]
    1d2b7c4af82f:	0f b6 c0                                        	movzx  eax,al
    1d2b7c4af832:	44 8b d0                                        	mov    r10d,eax
    1d2b7c4af835:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4af83a:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4af83e:	c4 c1 4a 59 34 0c                               	vmulss xmm6,xmm6,DWORD PTR [r12+rcx*1]
    1d2b7c4af844:	c4 c1 7a 11 34 0c                               	vmovss DWORD PTR [r12+rcx*1],xmm6
    1d2b7c4af84a:	41 8d 84 98 d0 01 00 00                         	lea    eax,[r8+rbx*4+0x1d0]
    1d2b7c4af852:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4af855:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4af85a:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4af85e:	c4 c1 4a 59 34 04                               	vmulss xmm6,xmm6,DWORD PTR [r12+rax*1]
    1d2b7c4af864:	c4 c1 7a 11 34 04                               	vmovss DWORD PTR [r12+rax*1],xmm6
    1d2b7c4af86a:	e9 5a 00 00 00                                  	jmp    0x1d2b7c4af8c9
    1d2b7c4af86f:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    1d2b7c4af875:	41 8d b4 98 d0 01 00 00                         	lea    esi,[r8+rbx*4+0x1d0]
    1d2b7c4af87d:	45 8b d3                                        	mov    r10d,r11d
    1d2b7c4af880:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4af885:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4af889:	c4 c1 7a 11 34 34                               	vmovss DWORD PTR [r12+rsi*1],xmm6
    1d2b7c4af88f:	45 8d 9c 98 e0 01 00 00                         	lea    r11d,[r8+rbx*4+0x1e0]
    1d2b7c4af897:	0f b6 c0                                        	movzx  eax,al
    1d2b7c4af89a:	44 8b d0                                        	mov    r10d,eax
    1d2b7c4af89d:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4af8a2:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4af8a6:	c4 81 7a 11 34 1c                               	vmovss DWORD PTR [r12+r11*1],xmm6
    1d2b7c4af8ac:	45 8d 9c 98 f0 01 00 00                         	lea    r11d,[r8+rbx*4+0x1f0]
    1d2b7c4af8b4:	0f b6 c1                                        	movzx  eax,cl
    1d2b7c4af8b7:	44 8b d0                                        	mov    r10d,eax
    1d2b7c4af8ba:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    1d2b7c4af8bf:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4af8c3:	c4 81 7a 11 34 1c                               	vmovss DWORD PTR [r12+r11*1],xmm6
    1d2b7c4af8c9:	44 8d 5b 01                                     	lea    r11d,[rbx+0x1]
    1d2b7c4af8cd:	41 83 fb 04                                     	cmp    r11d,0x4
    1d2b7c4af8d1:	0f 85 69 fc ff ff                               	jne    0x1d2b7c4af540
    1d2b7c4af8d7:	c4 01 7a 6f a4 04 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r12+r8*1+0x1d0]
    1d2b7c4af8e1:	c4 81 7a 6f bc 04 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+r8*1+0x1f0]
    1d2b7c4af8eb:	c4 01 7a 6f 44 04 50                            	vmovdqu xmm8,XMMWORD PTR [r12+r8*1+0x50]
    1d2b7c4af8f2:	c4 81 7a 6f b4 04 e0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r12+r8*1+0x1e0]
    1d2b7c4af8fc:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    1d2b7c4af903:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    1d2b7c4af909:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4af911:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    1d2b7c4af919:	48 8b 55 c8                                     	mov    rdx,QWORD PTR [rbp-0x38]
    1d2b7c4af91d:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    1d2b7c4af924:	c5 78 10 95 10 ff ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0xf0]
    1d2b7c4af92c:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4af930:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    1d2b7c4af937:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    1d2b7c4af93e:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4af945:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4af94c:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    1d2b7c4af954:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    1d2b7c4af95c:	4c 8b fa                                        	mov    r15,rdx
    1d2b7c4af95f:	43 8b 94 3c ec 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0xec]
    1d2b7c4af967:	c5 78 11 a5 10 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1f0],xmm12
    1d2b7c4af96f:	43 83 bc 3c ec 00 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0xec],0x0
    1d2b7c4af978:	0f 84 02 04 00 00                               	je     0x1d2b7c4afd80
    1d2b7c4af97e:	49 8d 94 24 98 00 00 00                         	lea    rdx,[r12+0x98]
    1d2b7c4af986:	c4 e2 79 18 14 3a                               	vbroadcastss xmm2,DWORD PTR [rdx+rdi*1]
    1d2b7c4af98c:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    1d2b7c4af990:	c4 a2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+r11*1]
    1d2b7c4af996:	c5 d0 59 d2                                     	vmulps xmm2,xmm5,xmm2
    1d2b7c4af99a:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    1d2b7c4af99e:	c4 e2 79 18 14 1a                               	vbroadcastss xmm2,DWORD PTR [rdx+rbx*1]
    1d2b7c4af9a4:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    1d2b7c4af9a8:	c4 41 70 58 db                                  	vaddps xmm11,xmm1,xmm11
    1d2b7c4af9ad:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    1d2b7c4af9b2:	c5 28 5c d8                                     	vsubps xmm11,xmm10,xmm0
    1d2b7c4af9b6:	c5 a0 c2 c8 01                                  	vcmpltps xmm1,xmm11,xmm0
    1d2b7c4af9bb:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    1d2b7c4af9c0:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    1d2b7c4af9c4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4af9c9:	4c 8b 15 7d 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947d]        # 0x1d2b7c4a8e4d
    1d2b7c4af9d0:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    1d2b7c4af9d5:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    1d2b7c4af9da:	43 8b 94 3c f0 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0xf0]
    1d2b7c4af9e2:	81 fa 00 08 00 00                               	cmp    edx,0x800
    1d2b7c4af9e8:	0f 84 8f 01 00 00                               	je     0x1d2b7c4afb7d
    1d2b7c4af9ee:	81 fa 01 26 00 00                               	cmp    edx,0x2601
    1d2b7c4af9f4:	0f 84 23 01 00 00                               	je     0x1d2b7c4afb1d
    1d2b7c4af9fa:	c4 81 7a 10 8c 3c f4 00 00 00                   	vmovss xmm1,DWORD PTR [r12+r15*1+0xf4]
    1d2b7c4afa04:	c5 f8 28 d0                                     	vmovaps xmm2,xmm0
    1d2b7c4afa08:	c5 f2 59 d2                                     	vmulss xmm2,xmm1,xmm2
    1d2b7c4afa0c:	4c 8b 15 53 7f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7f53]        # 0x1d2b7c4a7966
    1d2b7c4afa13:	c4 c1 68 57 2a                                  	vxorps xmm5,xmm2,XMMWORD PTR [r10]
    1d2b7c4afa18:	c5 ea 59 d5                                     	vmulss xmm2,xmm2,xmm5
    1d2b7c4afa1c:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    1d2b7c4afa24:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    1d2b7c4afa2c:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    1d2b7c4afa34:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    1d2b7c4afa3c:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    1d2b7c4afa44:	c5 fb 11 8d a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm1
    1d2b7c4afa4c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4afa50:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    1d2b7c4afa54:	e8 5f eb f0 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4afa59:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c4afa5e:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    1d2b7c4afa66:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    1d2b7c4afa6a:	c5 7b 10 85 a8 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x158]
    1d2b7c4afa72:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    1d2b7c4afa76:	4c 8b 15 e9 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7ee9]        # 0x1d2b7c4a7966
    1d2b7c4afa7d:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    1d2b7c4afa82:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    1d2b7c4afa87:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    1d2b7c4afa8f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4afa93:	e8 20 eb f0 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4afa98:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    1d2b7c4afaa0:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    1d2b7c4afaa6:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    1d2b7c4afaae:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    1d2b7c4afab3:	c5 7b 10 85 a8 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x158]
    1d2b7c4afabb:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    1d2b7c4afabf:	4c 8b 15 a0 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7ea0]        # 0x1d2b7c4a7966
    1d2b7c4afac6:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    1d2b7c4afacb:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    1d2b7c4afad0:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    1d2b7c4afad8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4afadc:	e8 d7 ea f0 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4afae1:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    1d2b7c4afae9:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    1d2b7c4afaef:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    1d2b7c4afaf7:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    1d2b7c4afafc:	c5 fb 10 bd a8 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x158]
    1d2b7c4afb04:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    1d2b7c4afb08:	4c 8b 15 57 7e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7e57]        # 0x1d2b7c4a7966
    1d2b7c4afb0f:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    1d2b7c4afb14:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    1d2b7c4afb18:	e9 38 01 00 00                                  	jmp    0x1d2b7c4afc55
    1d2b7c4afb1d:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4afb20:	4d 8b e7                                        	mov    r12,r15
    1d2b7c4afb23:	c4 a1 7a 10 8c 26 fc 00 00 00                   	vmovss xmm1,DWORD PTR [rsi+r12*1+0xfc]
    1d2b7c4afb2d:	c4 a1 72 5c 94 26 f8 00 00 00                   	vsubss xmm2,xmm1,DWORD PTR [rsi+r12*1+0xf8]
    1d2b7c4afb37:	c5 f8 2e e2                                     	vucomiss xmm4,xmm2
    1d2b7c4afb3b:	7a 06                                           	jp     0x1d2b7c4afb43
    1d2b7c4afb3d:	0f 84 2d 00 00 00                               	je     0x1d2b7c4afb70
    1d2b7c4afb43:	c4 e2 79 18 c9                                  	vbroadcastss xmm1,xmm1
    1d2b7c4afb48:	c5 f0 5c c0                                     	vsubps xmm0,xmm1,xmm0
    1d2b7c4afb4c:	c5 f1 76 c9                                     	vpcmpeqd xmm1,xmm1,xmm1
    1d2b7c4afb50:	c5 f1 72 f1 19                                  	vpslld xmm1,xmm1,0x19
    1d2b7c4afb55:	c5 f1 72 d1 02                                  	vpsrld xmm1,xmm1,0x2
    1d2b7c4afb5a:	c5 f2 5e d2                                     	vdivss xmm2,xmm1,xmm2
    1d2b7c4afb5e:	c5 f8 28 d2                                     	vmovaps xmm2,xmm2
    1d2b7c4afb62:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    1d2b7c4afb67:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    1d2b7c4afb6b:	e9 94 01 00 00                                  	jmp    0x1d2b7c4afd04
    1d2b7c4afb70:	c5 f8 10 85 d0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x130]
    1d2b7c4afb78:	e9 87 01 00 00                                  	jmp    0x1d2b7c4afd04
    1d2b7c4afb7d:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    1d2b7c4afb81:	c4 81 7a 10 94 3c f4 00 00 00                   	vmovss xmm2,DWORD PTR [r12+r15*1+0xf4]
    1d2b7c4afb8b:	4c 8b 15 d4 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7dd4]        # 0x1d2b7c4a7966
    1d2b7c4afb92:	c4 c1 68 57 12                                  	vxorps xmm2,xmm2,XMMWORD PTR [r10]
    1d2b7c4afb97:	c5 f2 59 ca                                     	vmulss xmm1,xmm1,xmm2
    1d2b7c4afb9b:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    1d2b7c4afba3:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    1d2b7c4afbab:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    1d2b7c4afbb3:	c5 78 11 9d c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm11
    1d2b7c4afbbb:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    1d2b7c4afbc3:	c5 fb 11 95 a8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x158],xmm2
    1d2b7c4afbcb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4afbcf:	e8 e4 e9 f0 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4afbd4:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    1d2b7c4afbd9:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    1d2b7c4afbe1:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    1d2b7c4afbe5:	c5 c2 59 8d a8 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x158]
    1d2b7c4afbed:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    1d2b7c4afbf5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4afbf9:	e8 ba e9 f0 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4afbfe:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    1d2b7c4afc06:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    1d2b7c4afc0c:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    1d2b7c4afc14:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    1d2b7c4afc19:	c5 c2 59 8d a8 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x158]
    1d2b7c4afc21:	c5 f8 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm0
    1d2b7c4afc29:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4afc2d:	e8 86 e9 f0 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4afc32:	c5 f8 10 85 90 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x170]
    1d2b7c4afc3a:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    1d2b7c4afc40:	c5 f8 10 b5 b0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x150]
    1d2b7c4afc48:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    1d2b7c4afc4d:	c5 ca 59 b5 a8 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x158]
    1d2b7c4afc55:	c5 f8 11 85 b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm0
    1d2b7c4afc5d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4afc61:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    1d2b7c4afc65:	e8 4e e9 f0 ff                                  	call   0x1d2b7c3be5b8
    1d2b7c4afc6a:	c5 f8 10 85 b0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x150]
    1d2b7c4afc72:	c4 e3 79 21 c1 30                               	vinsertps xmm0,xmm0,xmm1,0x30
    1d2b7c4afc78:	48 8b 8d e8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x318]
    1d2b7c4afc7f:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    1d2b7c4afc83:	4c 8b 65 c8                                     	mov    r12,QWORD PTR [rbp-0x38]
    1d2b7c4afc87:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    1d2b7c4afc8f:	44 8b 8d 30 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0xd0]
    1d2b7c4afc96:	c5 78 10 95 10 ff ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0xf0]
    1d2b7c4afc9e:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    1d2b7c4afca6:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    1d2b7c4afcae:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    1d2b7c4afcb6:	c5 78 10 9d c0 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x140]
    1d2b7c4afcbe:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4afcc2:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    1d2b7c4afcc9:	4c 8b 9d 48 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1b8]
    1d2b7c4afcd0:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4afcd7:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4afcde:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    1d2b7c4afce6:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    1d2b7c4afcee:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    1d2b7c4afcf6:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4afcfe:	8b 85 b0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x350]
    1d2b7c4afd04:	c5 f8 10 8d d0 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x130]
    1d2b7c4afd0c:	c5 f0 c2 d0 01                                  	vcmpltps xmm2,xmm1,xmm0
    1d2b7c4afd11:	c5 69 df f8                                     	vpandn xmm15,xmm2,xmm0
    1d2b7c4afd15:	c5 a1 db c2                                     	vpand  xmm0,xmm11,xmm2
    1d2b7c4afd19:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4afd1e:	c4 41 78 c2 da 01                               	vcmpltps xmm11,xmm0,xmm10
    1d2b7c4afd24:	c5 a0 55 c0                                     	vandnps xmm0,xmm11,xmm0
    1d2b7c4afd28:	c5 c8 59 f0                                     	vmulps xmm6,xmm6,xmm0
    1d2b7c4afd2c:	4c 8d be 08 01 00 00                            	lea    r15,[rsi+0x108]
    1d2b7c4afd33:	c4 02 79 18 1c 27                               	vbroadcastss xmm11,DWORD PTR [r15+r12*1]
    1d2b7c4afd39:	c5 f0 5c c8                                     	vsubps xmm1,xmm1,xmm0
    1d2b7c4afd3d:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    1d2b7c4afd41:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    1d2b7c4afd46:	c5 c0 59 f8                                     	vmulps xmm7,xmm7,xmm0
    1d2b7c4afd4a:	4c 8d be 04 01 00 00                            	lea    r15,[rsi+0x104]
    1d2b7c4afd51:	c4 02 79 18 1c 27                               	vbroadcastss xmm11,DWORD PTR [r15+r12*1]
    1d2b7c4afd57:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    1d2b7c4afd5b:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    1d2b7c4afd60:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    1d2b7c4afd64:	4c 8d be 00 01 00 00                            	lea    r15,[rsi+0x100]
    1d2b7c4afd6b:	c4 02 79 18 04 27                               	vbroadcastss xmm8,DWORD PTR [r15+r12*1]
    1d2b7c4afd71:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    1d2b7c4afd75:	c4 41 78 58 c0                                  	vaddps xmm8,xmm0,xmm8
    1d2b7c4afd7a:	4d 8b fc                                        	mov    r15,r12
    1d2b7c4afd7d:	4c 8b e6                                        	mov    r12,rsi
    1d2b7c4afd80:	43 8b 94 3c 80 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0x80]
    1d2b7c4afd88:	43 83 bc 3c 80 00 00 00 00                      	cmp    DWORD PTR [r12+r15*1+0x80],0x0
    1d2b7c4afd91:	0f 85 0d 00 00 00                               	jne    0x1d2b7c4afda4
    1d2b7c4afd97:	c5 f8 10 85 f0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x110]
    1d2b7c4afd9f:	e9 84 00 00 00                                  	jmp    0x1d2b7c4afe28
    1d2b7c4afda4:	49 8d 94 24 88 00 00 00                         	lea    rdx,[r12+0x88]
    1d2b7c4afdac:	c4 a2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+r15*1]
    1d2b7c4afdb2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4afdb7:	43 8b 94 3c 84 00 00 00                         	mov    edx,DWORD PTR [r12+r15*1+0x84]
    1d2b7c4afdbf:	81 ea 00 02 00 00                               	sub    edx,0x200
    1d2b7c4afdc5:	83 fa 07                                        	cmp    edx,0x7
    1d2b7c4afdc8:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4afdd9
    1d2b7c4afdce:	4c 8d 15 7b 11 00 00                            	lea    r10,[rip+0x117b]        # 0x1d2b7c4b0f50
    1d2b7c4afdd5:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    1d2b7c4afdd9:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    1d2b7c4afdde:	e9 39 00 00 00                                  	jmp    0x1d2b7c4afe1c
    1d2b7c4afde3:	c4 41 78 c2 dc 02                               	vcmpleps xmm11,xmm0,xmm12
    1d2b7c4afde9:	e9 2e 00 00 00                                  	jmp    0x1d2b7c4afe1c
    1d2b7c4afdee:	c5 18 c2 d8 04                                  	vcmpneqps xmm11,xmm12,xmm0
    1d2b7c4afdf3:	e9 24 00 00 00                                  	jmp    0x1d2b7c4afe1c
    1d2b7c4afdf8:	c4 41 78 c2 dc 01                               	vcmpltps xmm11,xmm0,xmm12
    1d2b7c4afdfe:	e9 19 00 00 00                                  	jmp    0x1d2b7c4afe1c
    1d2b7c4afe03:	c5 18 c2 d8 02                                  	vcmpleps xmm11,xmm12,xmm0
    1d2b7c4afe08:	e9 0f 00 00 00                                  	jmp    0x1d2b7c4afe1c
    1d2b7c4afe0d:	c5 18 c2 d8 00                                  	vcmpeqps xmm11,xmm12,xmm0
    1d2b7c4afe12:	e9 05 00 00 00                                  	jmp    0x1d2b7c4afe1c
    1d2b7c4afe17:	c5 18 c2 d8 01                                  	vcmpltps xmm11,xmm12,xmm0
    1d2b7c4afe1c:	c5 f8 10 85 f0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x110]
    1d2b7c4afe24:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    1d2b7c4afe28:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    1d2b7c4afe2c:	85 d2                                           	test   edx,edx
    1d2b7c4afe2e:	0f 85 42 00 00 00                               	jne    0x1d2b7c4afe76
    1d2b7c4afe34:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4afe37:	4c 8b e3                                        	mov    r12,rbx
    1d2b7c4afe3a:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4afe3f:	4d 8b d3                                        	mov    r10,r11
    1d2b7c4afe42:	4d 8b df                                        	mov    r11,r15
    1d2b7c4afe45:	4d 8b fa                                        	mov    r15,r10
    1d2b7c4afe48:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4afe4d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4afe53:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4afe59:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4afe61:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4afe69:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4afe71:	e9 02 0c 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4afe76:	43 8b 74 3c 58                                  	mov    esi,DWORD PTR [r12+r15*1+0x58]
    1d2b7c4afe7b:	43 83 7c 3c 58 00                               	cmp    DWORD PTR [r12+r15*1+0x58],0x0
    1d2b7c4afe81:	0f 85 18 00 00 00                               	jne    0x1d2b7c4afe9f
    1d2b7c4afe87:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    1d2b7c4afe8e:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4afe94:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    1d2b7c4afe9a:	e9 28 01 00 00                                  	jmp    0x1d2b7c4affc7
    1d2b7c4afe9f:	43 8b 54 3c 48                                  	mov    edx,DWORD PTR [r12+r15*1+0x48]
    1d2b7c4afea4:	8b 75 90                                        	mov    esi,DWORD PTR [rbp-0x70]
    1d2b7c4afea7:	33 ff                                           	xor    edi,edi
    1d2b7c4afea9:	3b f2                                           	cmp    esi,edx
    1d2b7c4afeab:	40 0f 9c c7                                     	setl   dil
    1d2b7c4afeaf:	47 8b 44 3c 50                                  	mov    r8d,DWORD PTR [r12+r15*1+0x50]
    1d2b7c4afeb4:	44 03 c2                                        	add    r8d,edx
    1d2b7c4afeb7:	45 33 db                                        	xor    r11d,r11d
    1d2b7c4afeba:	44 3b c6                                        	cmp    r8d,esi
    1d2b7c4afebd:	41 0f 9e c3                                     	setle  r11b
    1d2b7c4afec1:	44 0b df                                        	or     r11d,edi
    1d2b7c4afec4:	43 8b 7c 3c 4c                                  	mov    edi,DWORD PTR [r12+r15*1+0x4c]
    1d2b7c4afec9:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    1d2b7c4afecf:	33 db                                           	xor    ebx,ebx
    1d2b7c4afed1:	3b c7                                           	cmp    eax,edi
    1d2b7c4afed3:	0f 9c c3                                        	setl   bl
    1d2b7c4afed6:	41 8b cb                                        	mov    ecx,r11d
    1d2b7c4afed9:	0b cb                                           	or     ecx,ebx
    1d2b7c4afedb:	83 f1 ff                                        	xor    ecx,0xffffffff
    1d2b7c4afede:	43 8b 74 3c 54                                  	mov    esi,DWORD PTR [r12+r15*1+0x54]
    1d2b7c4afee3:	03 f7                                           	add    esi,edi
    1d2b7c4afee5:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4afee8:	3b c6                                           	cmp    eax,esi
    1d2b7c4afeea:	41 0f 9c c1                                     	setl   r9b
    1d2b7c4afeee:	41 23 c9                                        	and    ecx,r9d
    1d2b7c4afef1:	f7 d9                                           	neg    ecx
    1d2b7c4afef3:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    1d2b7c4afef7:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    1d2b7c4afefc:	44 3b 85 58 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xa8]
    1d2b7c4aff03:	41 0f 9e c0                                     	setle  r8b
    1d2b7c4aff07:	45 0f b6 c0                                     	movzx  r8d,r8b
    1d2b7c4aff0b:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4aff11:	3b ca                                           	cmp    ecx,edx
    1d2b7c4aff13:	0f 9c c2                                        	setl   dl
    1d2b7c4aff16:	0f b6 d2                                        	movzx  edx,dl
    1d2b7c4aff19:	41 0b d0                                        	or     edx,r8d
    1d2b7c4aff1c:	0b da                                           	or     ebx,edx
    1d2b7c4aff1e:	83 f3 ff                                        	xor    ebx,0xffffffff
    1d2b7c4aff21:	44 23 cb                                        	and    r9d,ebx
    1d2b7c4aff24:	41 f7 d9                                        	neg    r9d
    1d2b7c4aff27:	c4 43 21 22 d9 01                               	vpinsrd xmm11,xmm11,r9d,0x1
    1d2b7c4aff2d:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    1d2b7c4aff34:	33 db                                           	xor    ebx,ebx
    1d2b7c4aff36:	44 3b c6                                        	cmp    r8d,esi
    1d2b7c4aff39:	0f 9c c3                                        	setl   bl
    1d2b7c4aff3c:	44 3b c7                                        	cmp    r8d,edi
    1d2b7c4aff3f:	40 0f 9c c7                                     	setl   dil
    1d2b7c4aff43:	40 0f b6 ff                                     	movzx  edi,dil
    1d2b7c4aff47:	44 0b df                                        	or     r11d,edi
    1d2b7c4aff4a:	41 83 f3 ff                                     	xor    r11d,0xffffffff
    1d2b7c4aff4e:	44 23 db                                        	and    r11d,ebx
    1d2b7c4aff51:	41 f7 db                                        	neg    r11d
    1d2b7c4aff54:	c4 43 21 22 db 02                               	vpinsrd xmm11,xmm11,r11d,0x2
    1d2b7c4aff5a:	0b fa                                           	or     edi,edx
    1d2b7c4aff5c:	83 f7 ff                                        	xor    edi,0xffffffff
    1d2b7c4aff5f:	23 df                                           	and    ebx,edi
    1d2b7c4aff61:	f7 db                                           	neg    ebx
    1d2b7c4aff63:	c4 63 21 22 db 03                               	vpinsrd xmm11,xmm11,ebx,0x3
    1d2b7c4aff69:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    1d2b7c4aff6d:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    1d2b7c4aff71:	85 d2                                           	test   edx,edx
    1d2b7c4aff73:	0f 85 4e 00 00 00                               	jne    0x1d2b7c4affc7
    1d2b7c4aff79:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4aff7e:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4aff81:	4d 8b df                                        	mov    r11,r15
    1d2b7c4aff84:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4aff89:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4aff8f:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4aff95:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    1d2b7c4aff9c:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    1d2b7c4affa3:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4affaa:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4affb2:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4affba:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4affc2:	e9 b1 0a 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4affc7:	83 bd 00 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x100],0x0
    1d2b7c4affce:	0f 84 c6 01 00 00                               	je     0x1d2b7c4b019a
    1d2b7c4affd4:	83 bd 38 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xc8],0x0
    1d2b7c4affdb:	0f 85 00 01 00 00                               	jne    0x1d2b7c4b00e1
    1d2b7c4affe1:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4affe6:	43 8b 7c 3c 0c                                  	mov    edi,DWORD PTR [r12+r15*1+0xc]
    1d2b7c4affeb:	44 8b 9d 20 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xe0]
    1d2b7c4afff2:	42 8d 1c 9f                                     	lea    ebx,[rdi+r11*4]
    1d2b7c4afff6:	c4 c1 7b 10 0c 1c                               	vmovsd xmm1,QWORD PTR [r12+rbx*1]
    1d2b7c4afffc:	44 3b 85 28 ff ff ff                            	cmp    r8d,DWORD PTR [rbp-0xd8]
    1d2b7c4b0003:	0f 8c 10 00 00 00                               	jl     0x1d2b7c4b0019
    1d2b7c4b0009:	c4 c1 79 28 d3                                  	vmovapd xmm2,xmm11
    1d2b7c4b000e:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    1d2b7c4b0014:	e9 0f 00 00 00                                  	jmp    0x1d2b7c4b0028
    1d2b7c4b0019:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    1d2b7c4b001f:	8d 3c 9f                                        	lea    edi,[rdi+rbx*4]
    1d2b7c4b0022:	c4 c1 7b 10 14 3c                               	vmovsd xmm2,QWORD PTR [r12+rdi*1]
    1d2b7c4b0028:	c5 f1 6c ca                                     	vpunpcklqdq xmm1,xmm1,xmm2
    1d2b7c4b002c:	43 8b 7c 3c 6c                                  	mov    edi,DWORD PTR [r12+r15*1+0x6c]
    1d2b7c4b0031:	81 ef 00 02 00 00                               	sub    edi,0x200
    1d2b7c4b0037:	83 ff 07                                        	cmp    edi,0x7
    1d2b7c4b003a:	0f 83 0b 00 00 00                               	jae    0x1d2b7c4b004b
    1d2b7c4b0040:	4c 8d 15 d1 0e 00 00                            	lea    r10,[rip+0xed1]        # 0x1d2b7c4b0f18
    1d2b7c4b0047:	41 ff 24 fa                                     	jmp    QWORD PTR [r10+rdi*8]
    1d2b7c4b004b:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    1d2b7c4b0050:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b0058:	e9 74 00 00 00                                  	jmp    0x1d2b7c4b00d1
    1d2b7c4b005d:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b0065:	c5 70 c2 da 02                                  	vcmpleps xmm11,xmm1,xmm2
    1d2b7c4b006a:	e9 62 00 00 00                                  	jmp    0x1d2b7c4b00d1
    1d2b7c4b006f:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b0077:	c5 68 c2 d9 04                                  	vcmpneqps xmm11,xmm2,xmm1
    1d2b7c4b007c:	e9 50 00 00 00                                  	jmp    0x1d2b7c4b00d1
    1d2b7c4b0081:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b0089:	c5 70 c2 da 01                                  	vcmpltps xmm11,xmm1,xmm2
    1d2b7c4b008e:	e9 3e 00 00 00                                  	jmp    0x1d2b7c4b00d1
    1d2b7c4b0093:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b009b:	c5 68 c2 d9 02                                  	vcmpleps xmm11,xmm2,xmm1
    1d2b7c4b00a0:	e9 2c 00 00 00                                  	jmp    0x1d2b7c4b00d1
    1d2b7c4b00a5:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b00ad:	c5 68 c2 d9 00                                  	vcmpeqps xmm11,xmm2,xmm1
    1d2b7c4b00b2:	e9 1a 00 00 00                                  	jmp    0x1d2b7c4b00d1
    1d2b7c4b00b7:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b00bf:	c5 68 c2 d9 01                                  	vcmpltps xmm11,xmm2,xmm1
    1d2b7c4b00c4:	e9 08 00 00 00                                  	jmp    0x1d2b7c4b00d1
    1d2b7c4b00c9:	c5 f8 10 95 40 ff ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b00d1:	c5 a1 db c0                                     	vpand  xmm0,xmm11,xmm0
    1d2b7c4b00d5:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    1d2b7c4b00d9:	85 d2                                           	test   edx,edx
    1d2b7c4b00db:	0f 84 98 fe ff ff                               	je     0x1d2b7c4aff79
    1d2b7c4b00e1:	43 8b 7c 3c 70                                  	mov    edi,DWORD PTR [r12+r15*1+0x70]
    1d2b7c4b00e6:	43 83 7c 3c 70 00                               	cmp    DWORD PTR [r12+r15*1+0x70],0x0
    1d2b7c4b00ec:	0f 84 a8 00 00 00                               	je     0x1d2b7c4b019a
    1d2b7c4b00f2:	f6 c2 01                                        	test   dl,0x1
    1d2b7c4b00f5:	0f 85 13 00 00 00                               	jne    0x1d2b7c4b010e
    1d2b7c4b00fb:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b0103:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    1d2b7c4b0109:	e9 21 00 00 00                                  	jmp    0x1d2b7c4b012f
    1d2b7c4b010e:	47 8b 5c 3c 0c                                  	mov    r11d,DWORD PTR [r12+r15*1+0xc]
    1d2b7c4b0113:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    1d2b7c4b0119:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    1d2b7c4b011d:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b0125:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    1d2b7c4b0129:	c4 01 7a 11 1c 1c                               	vmovss DWORD PTR [r12+r11*1],xmm11
    1d2b7c4b012f:	f6 c2 02                                        	test   dl,0x2
    1d2b7c4b0132:	0f 84 14 00 00 00                               	je     0x1d2b7c4b014c
    1d2b7c4b0138:	47 8b 5c 3c 0c                                  	mov    r11d,DWORD PTR [r12+r15*1+0xc]
    1d2b7c4b013d:	45 8d 1c bb                                     	lea    r11d,[r11+rdi*4]
    1d2b7c4b0141:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    1d2b7c4b0145:	c4 01 7a 11 5c 1c 04                            	vmovss DWORD PTR [r12+r11*1+0x4],xmm11
    1d2b7c4b014c:	f6 c2 04                                        	test   dl,0x4
    1d2b7c4b014f:	0f 85 0c 00 00 00                               	jne    0x1d2b7c4b0161
    1d2b7c4b0155:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    1d2b7c4b015c:	e9 1b 00 00 00                                  	jmp    0x1d2b7c4b017c
    1d2b7c4b0161:	43 8b 5c 3c 0c                                  	mov    ebx,DWORD PTR [r12+r15*1+0xc]
    1d2b7c4b0166:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    1d2b7c4b016d:	42 8d 1c 9b                                     	lea    ebx,[rbx+r11*4]
    1d2b7c4b0171:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    1d2b7c4b0176:	c4 41 7a 11 1c 1c                               	vmovss DWORD PTR [r12+rbx*1],xmm11
    1d2b7c4b017c:	f6 c2 08                                        	test   dl,0x8
    1d2b7c4b017f:	0f 84 15 00 00 00                               	je     0x1d2b7c4b019a
    1d2b7c4b0185:	43 8b 5c 3c 0c                                  	mov    ebx,DWORD PTR [r12+r15*1+0xc]
    1d2b7c4b018a:	42 8d 1c 9b                                     	lea    ebx,[rbx+r11*4]
    1d2b7c4b018e:	c5 79 70 d8 03                                  	vpshufd xmm11,xmm0,0x3
    1d2b7c4b0193:	c4 41 7a 11 5c 1c 04                            	vmovss DWORD PTR [r12+rbx*1+0x4],xmm11
    1d2b7c4b019a:	43 8b 7c 3c 74                                  	mov    edi,DWORD PTR [r12+r15*1+0x74]
    1d2b7c4b019f:	43 83 7c 3c 74 00                               	cmp    DWORD PTR [r12+r15*1+0x74],0x0
    1d2b7c4b01a5:	0f 85 14 00 00 00                               	jne    0x1d2b7c4b01bf
    1d2b7c4b01ab:	8b bd 20 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe0]
    1d2b7c4b01b1:	c1 e7 02                                        	shl    edi,0x2
    1d2b7c4b01b4:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    1d2b7c4b01ba:	e9 dd 02 00 00                                  	jmp    0x1d2b7c4b049c
    1d2b7c4b01bf:	43 8b 7c 3c 78                                  	mov    edi,DWORD PTR [r12+r15*1+0x78]
    1d2b7c4b01c4:	44 8d 9f fe fc ff ff                            	lea    r11d,[rdi-0x302]
    1d2b7c4b01cb:	33 db                                           	xor    ebx,ebx
    1d2b7c4b01cd:	41 83 fb 04                                     	cmp    r11d,0x4
    1d2b7c4b01d1:	0f 93 c3                                        	setae  bl
    1d2b7c4b01d4:	33 f6                                           	xor    esi,esi
    1d2b7c4b01d6:	83 ff 01                                        	cmp    edi,0x1
    1d2b7c4b01d9:	40 0f 97 c6                                     	seta   sil
    1d2b7c4b01dd:	85 f3                                           	test   ebx,esi
    1d2b7c4b01df:	0f 85 dc 05 00 00                               	jne    0x1d2b7c4b07c1
    1d2b7c4b01e5:	43 8b 5c 3c 7c                                  	mov    ebx,DWORD PTR [r12+r15*1+0x7c]
    1d2b7c4b01ea:	8d b3 fe fc ff ff                               	lea    esi,[rbx-0x302]
    1d2b7c4b01f0:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c4b01f3:	83 fe 04                                        	cmp    esi,0x4
    1d2b7c4b01f6:	41 0f 93 c1                                     	setae  r9b
    1d2b7c4b01fa:	33 c0                                           	xor    eax,eax
    1d2b7c4b01fc:	83 fb 01                                        	cmp    ebx,0x1
    1d2b7c4b01ff:	0f 97 c0                                        	seta   al
    1d2b7c4b0202:	41 85 c1                                        	test   r9d,eax
    1d2b7c4b0205:	0f 85 b0 05 00 00                               	jne    0x1d2b7c4b07bb
    1d2b7c4b020b:	8b 85 20 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe0]
    1d2b7c4b0211:	8d 0c 85 00 00 00 00                            	lea    ecx,[rax*4+0x0]
    1d2b7c4b0218:	47 8b 4c 3c 08                                  	mov    r9d,DWORD PTR [r12+r15*1+0x8]
    1d2b7c4b021d:	41 8d 04 81                                     	lea    eax,[r9+rax*4]
    1d2b7c4b0221:	c4 c1 7b 10 04 04                               	vmovsd xmm0,QWORD PTR [r12+rax*1]
    1d2b7c4b0227:	8b 85 28 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd8]
    1d2b7c4b022d:	41 3b c0                                        	cmp    eax,r8d
    1d2b7c4b0230:	0f 8e 22 00 00 00                               	jle    0x1d2b7c4b0258
    1d2b7c4b0236:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
    1d2b7c4b023d:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    1d2b7c4b0243:	45 8d 0c 91                                     	lea    r9d,[r9+rdx*4]
    1d2b7c4b0247:	c4 01 7b 10 1c 0c                               	vmovsd xmm11,QWORD PTR [r12+r9*1]
    1d2b7c4b024d:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    1d2b7c4b0253:	e9 05 00 00 00                                  	jmp    0x1d2b7c4b025d
    1d2b7c4b0258:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4b025d:	c4 c1 79 6c c3                                  	vpunpcklqdq xmm0,xmm0,xmm11
    1d2b7c4b0262:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    1d2b7c4b026c:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    1d2b7c4b0271:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    1d2b7c4b027b:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    1d2b7c4b0281:	c4 42 79 00 db                                  	vpshufb xmm11,xmm0,xmm11
    1d2b7c4b0286:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    1d2b7c4b028b:	4c 8b 15 b1 c2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffc2b1]        # 0x1d2b7c4ac543
    1d2b7c4b0292:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    1d2b7c4b0297:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    1d2b7c4b029b:	c5 20 59 d9                                     	vmulps xmm11,xmm11,xmm1
    1d2b7c4b029f:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    1d2b7c4b02a9:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c4b02ae:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    1d2b7c4b02b8:	c4 c3 e9 22 d2 01                               	vpinsrq xmm2,xmm2,r10,0x1
    1d2b7c4b02be:	c4 e2 79 00 d2                                  	vpshufb xmm2,xmm0,xmm2
    1d2b7c4b02c3:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    1d2b7c4b02c7:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    1d2b7c4b02d1:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c4b02d6:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    1d2b7c4b02e0:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    1d2b7c4b02e6:	c4 e2 79 00 ed                                  	vpshufb xmm5,xmm0,xmm5
    1d2b7c4b02eb:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    1d2b7c4b02ef:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    1d2b7c4b02f9:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4b02fe:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    1d2b7c4b0308:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    1d2b7c4b030e:	c4 c2 79 00 c1                                  	vpshufb xmm0,xmm0,xmm9
    1d2b7c4b0313:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c4b0317:	41 83 fb 02                                     	cmp    r11d,0x2
    1d2b7c4b031b:	0f 8c 15 00 00 00                               	jl     0x1d2b7c4b0336
    1d2b7c4b0321:	0f 84 6b 00 00 00                               	je     0x1d2b7c4b0392
    1d2b7c4b0327:	41 83 fb 03                                     	cmp    r11d,0x3
    1d2b7c4b032b:	0f 84 46 00 00 00                               	je     0x1d2b7c4b0377
    1d2b7c4b0331:	e9 19 00 00 00                                  	jmp    0x1d2b7c4b034f
    1d2b7c4b0336:	41 83 fb 00                                     	cmp    r11d,0x0
    1d2b7c4b033a:	0f 84 77 00 00 00                               	je     0x1d2b7c4b03b7
    1d2b7c4b0340:	41 83 fb 01                                     	cmp    r11d,0x1
    1d2b7c4b0344:	0f 84 52 00 00 00                               	je     0x1d2b7c4b039c
    1d2b7c4b034a:	e9 00 00 00 00                                  	jmp    0x1d2b7c4b034f
    1d2b7c4b034f:	85 ff                                           	test   edi,edi
    1d2b7c4b0351:	0f 85 0a 00 00 00                               	jne    0x1d2b7c4b0361
    1d2b7c4b0357:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4b035c:	e9 5b 00 00 00                                  	jmp    0x1d2b7c4b03bc
    1d2b7c4b0361:	4c 8b 15 e5 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ae5]        # 0x1d2b7c4a8e4d
    1d2b7c4b0368:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4b036d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4b0372:	e9 45 00 00 00                                  	jmp    0x1d2b7c4b03bc
    1d2b7c4b0377:	4c 8b 15 cf 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8acf]        # 0x1d2b7c4a8e4d
    1d2b7c4b037e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4b0383:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4b0388:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    1d2b7c4b038d:	e9 2a 00 00 00                                  	jmp    0x1d2b7c4b03bc
    1d2b7c4b0392:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    1d2b7c4b0397:	e9 20 00 00 00                                  	jmp    0x1d2b7c4b03bc
    1d2b7c4b039c:	4c 8b 15 aa 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8aaa]        # 0x1d2b7c4a8e4d
    1d2b7c4b03a3:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4b03a8:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4b03ad:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    1d2b7c4b03b2:	e9 05 00 00 00                                  	jmp    0x1d2b7c4b03bc
    1d2b7c4b03b7:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    1d2b7c4b03bc:	c5 e8 59 d1                                     	vmulps xmm2,xmm2,xmm1
    1d2b7c4b03c0:	c5 d0 59 e9                                     	vmulps xmm5,xmm5,xmm1
    1d2b7c4b03c4:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    1d2b7c4b03c8:	83 fe 02                                        	cmp    esi,0x2
    1d2b7c4b03cb:	0f 8c 14 00 00 00                               	jl     0x1d2b7c4b03e5
    1d2b7c4b03d1:	0f 84 5e 00 00 00                               	je     0x1d2b7c4b0435
    1d2b7c4b03d7:	83 fe 03                                        	cmp    esi,0x3
    1d2b7c4b03da:	0f 84 3a 00 00 00                               	je     0x1d2b7c4b041a
    1d2b7c4b03e0:	e9 17 00 00 00                                  	jmp    0x1d2b7c4b03fc
    1d2b7c4b03e5:	83 fe 00                                        	cmp    esi,0x0
    1d2b7c4b03e8:	0f 84 6c 00 00 00                               	je     0x1d2b7c4b045a
    1d2b7c4b03ee:	83 fe 01                                        	cmp    esi,0x1
    1d2b7c4b03f1:	0f 84 48 00 00 00                               	je     0x1d2b7c4b043f
    1d2b7c4b03f7:	e9 00 00 00 00                                  	jmp    0x1d2b7c4b03fc
    1d2b7c4b03fc:	85 db                                           	test   ebx,ebx
    1d2b7c4b03fe:	0f 84 5b 00 00 00                               	je     0x1d2b7c4b045f
    1d2b7c4b0404:	4c 8b 15 42 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a42]        # 0x1d2b7c4a8e4d
    1d2b7c4b040b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4b0410:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4b0415:	e9 45 00 00 00                                  	jmp    0x1d2b7c4b045f
    1d2b7c4b041a:	4c 8b 15 2c 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a2c]        # 0x1d2b7c4a8e4d
    1d2b7c4b0421:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4b0426:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4b042b:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    1d2b7c4b0430:	e9 2a 00 00 00                                  	jmp    0x1d2b7c4b045f
    1d2b7c4b0435:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    1d2b7c4b043a:	e9 20 00 00 00                                  	jmp    0x1d2b7c4b045f
    1d2b7c4b043f:	4c 8b 15 07 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8a07]        # 0x1d2b7c4a8e4d
    1d2b7c4b0446:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4b044b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4b0450:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    1d2b7c4b0455:	e9 05 00 00 00                                  	jmp    0x1d2b7c4b045f
    1d2b7c4b045a:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    1d2b7c4b045f:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    1d2b7c4b0464:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    1d2b7c4b0469:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    1d2b7c4b046e:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    1d2b7c4b0473:	c4 41 68 59 da                                  	vmulps xmm11,xmm2,xmm10
    1d2b7c4b0478:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    1d2b7c4b047d:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    1d2b7c4b0482:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    1d2b7c4b0487:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    1d2b7c4b048c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    1d2b7c4b0491:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    1d2b7c4b0496:	c5 38 58 c0                                     	vaddps xmm8,xmm8,xmm0
    1d2b7c4b049a:	8b f9                                           	mov    edi,ecx
    1d2b7c4b049c:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    1d2b7c4b04a0:	4c 8b 15 a6 89 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff89a6]        # 0x1d2b7c4a8e4d
    1d2b7c4b04a7:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    1d2b7c4b04ac:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    1d2b7c4b04b1:	4c 8b 15 95 89 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8995]        # 0x1d2b7c4a8e4d
    1d2b7c4b04b8:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4b04bd:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4b04c2:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    1d2b7c4b04c8:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    1d2b7c4b04cd:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    1d2b7c4b04d2:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    1d2b7c4b04d7:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4b04dc:	c4 c1 38 c2 cb 01                               	vcmpltps xmm1,xmm8,xmm11
    1d2b7c4b04e2:	c4 41 70 55 c0                                  	vandnps xmm8,xmm1,xmm8
    1d2b7c4b04e7:	4c 8b 15 ae e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe0ae]        # 0x1d2b7c4ae59c
    1d2b7c4b04ee:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    1d2b7c4b04f3:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    1d2b7c4b04f7:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    1d2b7c4b04fb:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    1d2b7c4b0501:	4c 8b 15 21 71 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7121]        # 0x1d2b7c4a7629
    1d2b7c4b0508:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c4b050e:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    1d2b7c4b0513:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c4b0519:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    1d2b7c4b051e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    1d2b7c4b0523:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    1d2b7c4b0528:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    1d2b7c4b052d:	c4 63 39 0e c0 fc                               	vpblendw xmm8,xmm8,xmm0,0xfc
    1d2b7c4b0533:	c5 a8 c2 d7 01                                  	vcmpltps xmm2,xmm10,xmm7
    1d2b7c4b0538:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    1d2b7c4b053c:	c5 b1 db fa                                     	vpand  xmm7,xmm9,xmm2
    1d2b7c4b0540:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4b0545:	c4 c1 40 c2 d3 01                               	vcmpltps xmm2,xmm7,xmm11
    1d2b7c4b054b:	c5 e8 55 ff                                     	vandnps xmm7,xmm2,xmm7
    1d2b7c4b054f:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    1d2b7c4b0553:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    1d2b7c4b0559:	4c 8b 15 c9 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff70c9]        # 0x1d2b7c4a7629
    1d2b7c4b0560:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    1d2b7c4b0565:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    1d2b7c4b056a:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    1d2b7c4b0570:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    1d2b7c4b0574:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    1d2b7c4b0579:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    1d2b7c4b057d:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    1d2b7c4b0581:	c4 e3 41 0e f8 fc                               	vpblendw xmm7,xmm7,xmm0,0xfc
    1d2b7c4b0587:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    1d2b7c4b058b:	c5 28 c2 c6 01                                  	vcmpltps xmm8,xmm10,xmm6
    1d2b7c4b0590:	c5 39 df fe                                     	vpandn xmm15,xmm8,xmm6
    1d2b7c4b0594:	c4 c1 31 db f0                                  	vpand  xmm6,xmm9,xmm8
    1d2b7c4b0599:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c4b059e:	c4 41 48 c2 c3 01                               	vcmpltps xmm8,xmm6,xmm11
    1d2b7c4b05a4:	c5 b8 55 f6                                     	vandnps xmm6,xmm8,xmm6
    1d2b7c4b05a8:	c5 c8 59 f1                                     	vmulps xmm6,xmm6,xmm1
    1d2b7c4b05ac:	c4 e3 79 08 f6 08                               	vroundps xmm6,xmm6,0x8
    1d2b7c4b05b2:	4c 8b 15 70 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7070]        # 0x1d2b7c4a7629
    1d2b7c4b05b9:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    1d2b7c4b05be:	c4 c1 48 54 f7                                  	vandps xmm6,xmm6,xmm15
    1d2b7c4b05c3:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    1d2b7c4b05c9:	c5 fa 5b f6                                     	vcvttps2dq xmm6,xmm6
    1d2b7c4b05cd:	c4 c1 49 ef f7                                  	vpxor  xmm6,xmm6,xmm15
    1d2b7c4b05d2:	c5 c9 6b f6                                     	vpackssdw xmm6,xmm6,xmm6
    1d2b7c4b05d6:	c5 c9 67 f6                                     	vpackuswb xmm6,xmm6,xmm6
    1d2b7c4b05da:	c4 e3 49 0e f0 fc                               	vpblendw xmm6,xmm6,xmm0,0xfc
    1d2b7c4b05e0:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    1d2b7c4b05e6:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    1d2b7c4b05eb:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    1d2b7c4b05f0:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    1d2b7c4b05f5:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    1d2b7c4b05fb:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    1d2b7c4b0600:	c5 38 59 c1                                     	vmulps xmm8,xmm8,xmm1
    1d2b7c4b0604:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    1d2b7c4b060a:	4c 8b 15 18 70 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7018]        # 0x1d2b7c4a7629
    1d2b7c4b0611:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    1d2b7c4b0617:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    1d2b7c4b061c:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    1d2b7c4b0622:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    1d2b7c4b0627:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    1d2b7c4b062c:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    1d2b7c4b0631:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    1d2b7c4b0636:	c4 63 39 0e c0 fc                               	vpblendw xmm8,xmm8,xmm0,0xfc
    1d2b7c4b063c:	c4 c1 49 60 f0                                  	vpunpcklbw xmm6,xmm6,xmm8
    1d2b7c4b0641:	c5 c1 61 f6                                     	vpunpcklwd xmm6,xmm7,xmm6
    1d2b7c4b0645:	c4 81 7a 6f bc 3c 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r12+r15*1+0x520]
    1d2b7c4b064f:	c5 c1 76 f8                                     	vpcmpeqd xmm7,xmm7,xmm0
    1d2b7c4b0653:	c4 c3 79 16 fb 01                               	vpextrd r11d,xmm7,0x1
    1d2b7c4b0659:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    1d2b7c4b065e:	33 f6                                           	xor    esi,esi
    1d2b7c4b0660:	41 f6 c3 01                                     	test   r11b,0x1
    1d2b7c4b0664:	0f 45 de                                        	cmovne ebx,esi
    1d2b7c4b0667:	c4 c1 79 7e fb                                  	vmovd  r11d,xmm7
    1d2b7c4b066c:	b9 ff 00 00 00                                  	mov    ecx,0xff
    1d2b7c4b0671:	41 f6 c3 01                                     	test   r11b,0x1
    1d2b7c4b0675:	0f 45 ce                                        	cmovne ecx,esi
    1d2b7c4b0678:	0b cb                                           	or     ecx,ebx
    1d2b7c4b067a:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    1d2b7c4b0680:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    1d2b7c4b0685:	41 f6 c3 01                                     	test   r11b,0x1
    1d2b7c4b0689:	0f 45 de                                        	cmovne ebx,esi
    1d2b7c4b068c:	0b d9                                           	or     ebx,ecx
    1d2b7c4b068e:	c4 c3 79 16 fb 03                               	vpextrd r11d,xmm7,0x3
    1d2b7c4b0694:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    1d2b7c4b0699:	41 f6 c3 01                                     	test   r11b,0x1
    1d2b7c4b069d:	0f 45 ce                                        	cmovne ecx,esi
    1d2b7c4b06a0:	0b cb                                           	or     ecx,ebx
    1d2b7c4b06a2:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    1d2b7c4b06a6:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c4b06ab:	44 8b da                                        	mov    r11d,edx
    1d2b7c4b06ae:	41 83 e3 01                                     	and    r11d,0x1
    1d2b7c4b06b2:	41 f7 db                                        	neg    r11d
    1d2b7c4b06b5:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    1d2b7c4b06ba:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c4b06bf:	44 8b da                                        	mov    r11d,edx
    1d2b7c4b06c2:	41 c1 e3 1e                                     	shl    r11d,0x1e
    1d2b7c4b06c6:	41 c1 fb 1f                                     	sar    r11d,0x1f
    1d2b7c4b06ca:	c4 43 39 22 c3 01                               	vpinsrd xmm8,xmm8,r11d,0x1
    1d2b7c4b06d0:	44 8b da                                        	mov    r11d,edx
    1d2b7c4b06d3:	41 c1 e3 1d                                     	shl    r11d,0x1d
    1d2b7c4b06d7:	41 c1 fb 1f                                     	sar    r11d,0x1f
    1d2b7c4b06db:	c4 43 39 22 c3 02                               	vpinsrd xmm8,xmm8,r11d,0x2
    1d2b7c4b06e1:	44 8b da                                        	mov    r11d,edx
    1d2b7c4b06e4:	41 c1 e3 1c                                     	shl    r11d,0x1c
    1d2b7c4b06e8:	41 c1 fb 1f                                     	sar    r11d,0x1f
    1d2b7c4b06ec:	c4 43 39 22 c3 03                               	vpinsrd xmm8,xmm8,r11d,0x3
    1d2b7c4b06f2:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    1d2b7c4b06f7:	47 8b 5c 3c 08                                  	mov    r11d,DWORD PTR [r12+r15*1+0x8]
    1d2b7c4b06fc:	41 03 fb                                        	add    edi,r11d
    1d2b7c4b06ff:	c4 41 7b 10 04 3c                               	vmovsd xmm8,QWORD PTR [r12+rdi*1]
    1d2b7c4b0705:	41 3b c0                                        	cmp    eax,r8d
    1d2b7c4b0708:	0f 8e 15 00 00 00                               	jle    0x1d2b7c4b0723
    1d2b7c4b070e:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    1d2b7c4b0714:	45 8d 1c 9b                                     	lea    r11d,[r11+rbx*4]
    1d2b7c4b0718:	c4 81 7b 10 04 1c                               	vmovsd xmm0,QWORD PTR [r12+r11*1]
    1d2b7c4b071e:	e9 06 00 00 00                                  	jmp    0x1d2b7c4b0729
    1d2b7c4b0723:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    1d2b7c4b0729:	c5 b9 6c c0                                     	vpunpcklqdq xmm0,xmm8,xmm0
    1d2b7c4b072d:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    1d2b7c4b0731:	c5 c9 db c7                                     	vpand  xmm0,xmm6,xmm7
    1d2b7c4b0735:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4b073a:	f6 c2 03                                        	test   dl,0x3
    1d2b7c4b073d:	0f 84 06 00 00 00                               	je     0x1d2b7c4b0749
    1d2b7c4b0743:	c4 c1 78 13 04 3c                               	vmovlps QWORD PTR [r12+rdi*1],xmm0
    1d2b7c4b0749:	41 3b c0                                        	cmp    eax,r8d
    1d2b7c4b074c:	0f 8e 27 f8 ff ff                               	jle    0x1d2b7c4aff79
    1d2b7c4b0752:	f6 c2 0c                                        	test   dl,0xc
    1d2b7c4b0755:	0f 84 1e f8 ff ff                               	je     0x1d2b7c4aff79
    1d2b7c4b075b:	43 8b 7c 3c 08                                  	mov    edi,DWORD PTR [r12+r15*1+0x8]
    1d2b7c4b0760:	8d 3c 9f                                        	lea    edi,[rdi+rbx*4]
    1d2b7c4b0763:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    1d2b7c4b0767:	c4 c1 78 13 04 3c                               	vmovlps QWORD PTR [r12+rdi*1],xmm0
    1d2b7c4b076d:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4b0772:	49 8b f4                                        	mov    rsi,r12
    1d2b7c4b0775:	4d 8b df                                        	mov    r11,r15
    1d2b7c4b0778:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4b077d:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4b0783:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4b0789:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    1d2b7c4b0790:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    1d2b7c4b0797:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4b079e:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4b07a6:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4b07ae:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4b07b6:	e9 bd 02 00 00                                  	jmp    0x1d2b7c4b0a78
    1d2b7c4b07bb:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    1d2b7c4b07c1:	c5 f8 11 b5 00 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x200],xmm6
    1d2b7c4b07c9:	c5 f8 11 bd 20 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1e0],xmm7
    1d2b7c4b07d1:	c5 78 11 85 e0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x120],xmm8
    1d2b7c4b07d9:	48 89 95 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rdx
    1d2b7c4b07e0:	f6 c2 01                                        	test   dl,0x1
    1d2b7c4b07e3:	0f 84 a0 00 00 00                               	je     0x1d2b7c4b0889
    1d2b7c4b07e9:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b07f1:	c5 f8 28 c8                                     	vmovaps xmm1,xmm0
    1d2b7c4b07f5:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    1d2b7c4b07fa:	c5 78 28 d7                                     	vmovaps xmm10,xmm7
    1d2b7c4b07fe:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    1d2b7c4b0802:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    1d2b7c4b0807:	8b f8                                           	mov    edi,eax
    1d2b7c4b0809:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4b080d:	8b c8                                           	mov    ecx,eax
    1d2b7c4b080f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4b0812:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    1d2b7c4b0815:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    1d2b7c4b081a:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c4b081f:	e8 3c ba f0 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4b0824:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4b0828:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    1d2b7c4b082c:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    1d2b7c4b0832:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4b0838:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    1d2b7c4b083f:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    1d2b7c4b0847:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    1d2b7c4b084f:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    1d2b7c4b0857:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    1d2b7c4b085f:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    1d2b7c4b0865:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4b0869:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    1d2b7c4b0871:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    1d2b7c4b0879:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    1d2b7c4b0881:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4b0889:	f6 c2 02                                        	test   dl,0x2
    1d2b7c4b088c:	0f 84 9d 00 00 00                               	je     0x1d2b7c4b092f
    1d2b7c4b0892:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b089a:	c5 fa 16 c8                                     	vmovshdup xmm1,xmm0
    1d2b7c4b089e:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    1d2b7c4b08a3:	c5 7a 16 d7                                     	vmovshdup xmm10,xmm7
    1d2b7c4b08a7:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    1d2b7c4b08ab:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    1d2b7c4b08b0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4b08b4:	8b d1                                           	mov    edx,ecx
    1d2b7c4b08b6:	8b c8                                           	mov    ecx,eax
    1d2b7c4b08b8:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4b08bb:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c4b08c0:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    1d2b7c4b08c5:	e8 96 b9 f0 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4b08ca:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4b08ce:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    1d2b7c4b08d2:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    1d2b7c4b08d8:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4b08de:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    1d2b7c4b08e5:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    1d2b7c4b08ed:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    1d2b7c4b08f5:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    1d2b7c4b08fd:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    1d2b7c4b0905:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    1d2b7c4b090b:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4b090f:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    1d2b7c4b0917:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    1d2b7c4b091f:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    1d2b7c4b0927:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4b092f:	f6 c2 04                                        	test   dl,0x4
    1d2b7c4b0932:	0f 84 a4 00 00 00                               	je     0x1d2b7c4b09dc
    1d2b7c4b0938:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b0940:	c5 f9 70 c8 02                                  	vpshufd xmm1,xmm0,0x2
    1d2b7c4b0945:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    1d2b7c4b094b:	c5 79 70 d7 02                                  	vpshufd xmm10,xmm7,0x2
    1d2b7c4b0950:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    1d2b7c4b0955:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    1d2b7c4b095b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4b095f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4b0962:	8b 55 90                                        	mov    edx,DWORD PTR [rbp-0x70]
    1d2b7c4b0965:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4b0968:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    1d2b7c4b096d:	c4 c1 79 28 da                                  	vmovapd xmm3,xmm10
    1d2b7c4b0972:	e8 e9 b8 f0 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4b0977:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4b097b:	4c 8b 7d c8                                     	mov    r15,QWORD PTR [rbp-0x38]
    1d2b7c4b097f:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    1d2b7c4b0985:	8b 8d 58 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xa8]
    1d2b7c4b098b:	44 8b 85 50 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xb0]
    1d2b7c4b0992:	c5 78 10 a5 10 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x1f0]
    1d2b7c4b099a:	c5 f8 10 b5 00 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x200]
    1d2b7c4b09a2:	c5 f8 10 bd 20 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x1e0]
    1d2b7c4b09aa:	c5 78 10 85 e0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x120]
    1d2b7c4b09b2:	8b 95 38 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xc8]
    1d2b7c4b09b8:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4b09bc:	c5 78 10 8d 70 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x290]
    1d2b7c4b09c4:	c5 f8 10 9d 50 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2b0]
    1d2b7c4b09cc:	c5 78 10 b5 20 fd ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x2e0]
    1d2b7c4b09d4:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4b09dc:	f6 c2 08                                        	test   dl,0x8
    1d2b7c4b09df:	0f 84 94 f5 ff ff                               	je     0x1d2b7c4aff79
    1d2b7c4b09e5:	c5 f8 10 85 40 ff ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0xc0]
    1d2b7c4b09ed:	c5 f9 70 c8 03                                  	vpshufd xmm1,xmm0,0x3
    1d2b7c4b09f2:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    1d2b7c4b09f8:	c5 f9 70 c7 03                                  	vpshufd xmm0,xmm7,0x3
    1d2b7c4b09fd:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    1d2b7c4b0a02:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    1d2b7c4b0a08:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4b0a0c:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4b0a0f:	8b d1                                           	mov    edx,ecx
    1d2b7c4b0a11:	41 8b c8                                        	mov    ecx,r8d
    1d2b7c4b0a14:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    1d2b7c4b0a18:	c5 f9 28 d8                                     	vmovapd xmm3,xmm0
    1d2b7c4b0a1c:	e8 3f b8 f0 ff                                  	call   0x1d2b7c3bc260
    1d2b7c4b0a21:	bb 01 00 00 00                                  	mov    ebx,0x1
    1d2b7c4b0a26:	48 8b 75 d8                                     	mov    rsi,QWORD PTR [rbp-0x28]
    1d2b7c4b0a2a:	4c 8b 5d c8                                     	mov    r11,QWORD PTR [rbp-0x38]
    1d2b7c4b0a2e:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4b0a33:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4b0a39:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4b0a3f:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4b0a43:	4c 8b a5 58 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x1a8]
    1d2b7c4b0a4a:	4c 8b bd 48 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1b8]
    1d2b7c4b0a51:	48 8b bd 40 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1c0]
    1d2b7c4b0a58:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4b0a60:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4b0a68:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4b0a70:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4b0a78:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    1d2b7c4b0a7f:	48 c7 85 38 ff ff ff 01 00 00 00                	mov    QWORD PTR [rbp-0xc8],0x1
    1d2b7c4b0a8a:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4b0a8e:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    1d2b7c4b0a92:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    1d2b7c4b0a99:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    1d2b7c4b0aa0:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    1d2b7c4b0aa8:	48 8b 85 68 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x98]
    1d2b7c4b0aaf:	48 2b 85 60 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa0]
    1d2b7c4b0ab6:	4c 2b 8d 70 ff ff ff                            	sub    r9,QWORD PTR [rbp-0x90]
    1d2b7c4b0abd:	4c 2b 5d 80                                     	sub    r11,QWORD PTR [rbp-0x80]
    1d2b7c4b0ac1:	41 83 c0 02                                     	add    r8d,0x2
    1d2b7c4b0ac5:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    1d2b7c4b0ac9:	0f 8c f1 7a ff ff                               	jl     0x1d2b7c4a85c0
    1d2b7c4b0acf:	48 8b 7d a0                                     	mov    rdi,QWORD PTR [rbp-0x60]
    1d2b7c4b0ad3:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    1d2b7c4b0ada:	4e 8d 1c 07                                     	lea    r11,[rdi+r8*1]
    1d2b7c4b0ade:	4c 8b 45 b0                                     	mov    r8,QWORD PTR [rbp-0x50]
    1d2b7c4b0ae2:	4c 8b 4d a8                                     	mov    r9,QWORD PTR [rbp-0x58]
    1d2b7c4b0ae6:	4d 03 c8                                        	add    r9,r8
    1d2b7c4b0ae9:	4c 8b 65 b8                                     	mov    r12,QWORD PTR [rbp-0x48]
    1d2b7c4b0aed:	4c 8b bd 40 fc ff ff                            	mov    r15,QWORD PTR [rbp-0x3c0]
    1d2b7c4b0af4:	4d 03 fc                                        	add    r15,r12
    1d2b7c4b0af7:	8b 85 e0 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x320]
    1d2b7c4b0afd:	83 c0 02                                        	add    eax,0x2
    1d2b7c4b0b00:	3b 45 c0                                        	cmp    eax,DWORD PTR [rbp-0x40]
    1d2b7c4b0b03:	0f 8c f7 79 ff ff                               	jl     0x1d2b7c4a8500
    1d2b7c4b0b09:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    1d2b7c4b0b0d:	48 8b 7d c8                                     	mov    rdi,QWORD PTR [rbp-0x38]
    1d2b7c4b0b11:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    1d2b7c4b0b16:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    1d2b7c4b0b1c:	0f 85 56 00 00 00                               	jne    0x1d2b7c4b0b78
    1d2b7c4b0b22:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    1d2b7c4b0b28:	85 c0                                           	test   eax,eax
    1d2b7c4b0b2a:	0f 85 1d 00 00 00                               	jne    0x1d2b7c4b0b4d
    1d2b7c4b0b30:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4b0b33:	81 c7 00 02 00 00                               	add    edi,0x200
    1d2b7c4b0b39:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    1d2b7c4b0b3d:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    1d2b7c4b0b41:	b8 01 00 00 00                                  	mov    eax,0x1
    1d2b7c4b0b46:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c4b0b49:	5d                                              	pop    rbp
    1d2b7c4b0b4a:	c2 10 00                                        	ret    0x10
    1d2b7c4b0b4d:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    1d2b7c4b0b53:	33 ff                                           	xor    edi,edi
    1d2b7c4b0b55:	85 db                                           	test   ebx,ebx
    1d2b7c4b0b57:	40 0f 94 c7                                     	sete   dil
    1d2b7c4b0b5b:	8d 04 3f                                        	lea    eax,[rdi+rdi*1]
    1d2b7c4b0b5e:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    1d2b7c4b0b62:	41 81 c0 00 02 00 00                            	add    r8d,0x200
    1d2b7c4b0b69:	48 8b 7d e8                                     	mov    rdi,QWORD PTR [rbp-0x18]
    1d2b7c4b0b6d:	44 89 47 07                                     	mov    DWORD PTR [rdi+0x7],r8d
    1d2b7c4b0b71:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c4b0b74:	5d                                              	pop    rbp
    1d2b7c4b0b75:	c2 10 00                                        	ret    0x10
    1d2b7c4b0b78:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4b0b7b:	81 c7 00 02 00 00                               	add    edi,0x200
    1d2b7c4b0b81:	4c 8b 45 e8                                     	mov    r8,QWORD PTR [rbp-0x18]
    1d2b7c4b0b85:	41 89 78 07                                     	mov    DWORD PTR [r8+0x7],edi
    1d2b7c4b0b89:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    1d2b7c4b0b8e:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c4b0b91:	5d                                              	pop    rbp
    1d2b7c4b0b92:	c2 10 00                                        	ret    0x10
    1d2b7c4b0b95:	8b f8                                           	mov    edi,eax
    1d2b7c4b0b97:	45 8b 64 38 58                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x58]
    1d2b7c4b0b9c:	41 bc 01 00 00 00                               	mov    r12d,0x1
    1d2b7c4b0ba2:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    1d2b7c4b0ba7:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    1d2b7c4b0bad:	44 0f 45 e0                                     	cmovne r12d,eax
    1d2b7c4b0bb1:	41 8d bf 00 02 00 00                            	lea    edi,[r15+0x200]
    1d2b7c4b0bb8:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    1d2b7c4b0bbc:	41 8b c4                                        	mov    eax,r12d
    1d2b7c4b0bbf:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c4b0bc2:	5d                                              	pop    rbp
    1d2b7c4b0bc3:	c2 10 00                                        	ret    0x10
    1d2b7c4b0bc6:	41 b8 10 00 00 00                               	mov    r8d,0x10
    1d2b7c4b0bcc:	41 d1 f8                                        	sar    r8d,1
    1d2b7c4b0bcf:	4d 63 c0                                        	movsxd r8,r8d
    1d2b7c4b0bd2:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
    1d2b7c4b0bd6:	c5 f8 11 85 80 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x280],xmm0
    1d2b7c4b0bde:	48 89 9d 60 fe ff ff                            	mov    QWORD PTR [rbp-0x1a0],rbx
    1d2b7c4b0be5:	4c 89 4d c8                                     	mov    QWORD PTR [rbp-0x38],r9
    1d2b7c4b0be9:	49 8b c0                                        	mov    rax,r8
    1d2b7c4b0bec:	e8 3f e3 f0 ff                                  	call   0x1d2b7c3bef30
    1d2b7c4b0bf1:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    1d2b7c4b0bf4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    1d2b7c4b0bf8:	c5 f8 10 85 80 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x280]
    1d2b7c4b0c00:	8b 95 d0 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x330]
    1d2b7c4b0c06:	8b bd e8 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x218]
    1d2b7c4b0c0c:	8b 9d 60 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1a0]
    1d2b7c4b0c12:	44 8b 4d c8                                     	mov    r9d,DWORD PTR [rbp-0x38]
    1d2b7c4b0c16:	e9 d1 69 ff ff                                  	jmp    0x1d2b7c4a75ec
    1d2b7c4b0c1b:	48 89 9d a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],rbx
    1d2b7c4b0c22:	48 89 85 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rax
    1d2b7c4b0c29:	e8 12 e3 f0 ff                                  	call   0x1d2b7c3bef40
    1d2b7c4b0c2e:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    1d2b7c4b0c35:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4b0c3a:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4b0c40:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4b0c46:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4b0c4a:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4b0c52:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    1d2b7c4b0c5a:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4b0c62:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4b0c6a:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4b0c72:	48 8b 8d d8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x328]
    1d2b7c4b0c79:	8b 9d a8 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x158]
    1d2b7c4b0c7f:	8b 85 38 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xc8]
    1d2b7c4b0c85:	e9 b0 78 ff ff                                  	jmp    0x1d2b7c4a853a
    1d2b7c4b0c8a:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    1d2b7c4b0c8e:	4c 89 5d 88                                     	mov    QWORD PTR [rbp-0x78],r11
    1d2b7c4b0c92:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    1d2b7c4b0c99:	e8 a2 e2 f0 ff                                  	call   0x1d2b7c3bef40
    1d2b7c4b0c9e:	44 8b 45 90                                     	mov    r8d,DWORD PTR [rbp-0x70]
    1d2b7c4b0ca2:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    1d2b7c4b0ca6:	4c 8b 8d 78 ff ff ff                            	mov    r9,QWORD PTR [rbp-0x88]
    1d2b7c4b0cad:	48 8b 85 68 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x98]
    1d2b7c4b0cb4:	c4 41 39 76 c0                                  	vpcmpeqd xmm8,xmm8,xmm8
    1d2b7c4b0cb9:	c4 c1 39 72 f0 19                               	vpslld xmm8,xmm8,0x19
    1d2b7c4b0cbf:	c4 c1 39 72 d0 02                               	vpsrld xmm8,xmm8,0x2
    1d2b7c4b0cc5:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4b0cc9:	48 8b b5 a0 fd ff ff                            	mov    rsi,QWORD PTR [rbp-0x260]
    1d2b7c4b0cd0:	c5 fb 10 85 78 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x388]
    1d2b7c4b0cd8:	c5 fb 10 b5 58 fc ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x3a8]
    1d2b7c4b0ce0:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4b0ce8:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4b0cf0:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4b0cf8:	48 8b 95 d8 fc ff ff                            	mov    rdx,QWORD PTR [rbp-0x328]
    1d2b7c4b0cff:	41 bf 0f 00 00 00                               	mov    r15d,0xf
    1d2b7c4b0d05:	e9 d5 78 ff ff                                  	jmp    0x1d2b7c4a85df
    1d2b7c4b0d0a:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    1d2b7c4b0d0e:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    1d2b7c4b0d16:	4c 89 85 80 fe ff ff                            	mov    QWORD PTR [rbp-0x180],r8
    1d2b7c4b0d1d:	e8 1e e2 f0 ff                                  	call   0x1d2b7c3bef40
    1d2b7c4b0d22:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4b0d26:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4b0d2a:	48 8b 45 c8                                     	mov    rax,QWORD PTR [rbp-0x38]
    1d2b7c4b0d2e:	44 8b bd e0 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x320]
    1d2b7c4b0d35:	8b 7d 90                                        	mov    edi,DWORD PTR [rbp-0x70]
    1d2b7c4b0d38:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    1d2b7c4b0d3c:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    1d2b7c4b0d41:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    1d2b7c4b0d46:	c5 d8 57 e4                                     	vxorps xmm4,xmm4,xmm4
    1d2b7c4b0d4a:	48 8b b5 58 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x1a8]
    1d2b7c4b0d51:	48 8b 95 48 fe ff ff                            	mov    rdx,QWORD PTR [rbp-0x1b8]
    1d2b7c4b0d58:	4c 8b 8d 40 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1c0]
    1d2b7c4b0d5f:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    1d2b7c4b0d67:	44 8b 85 80 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x180]
    1d2b7c4b0d6e:	c5 7b 10 85 78 fc ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x388]
    1d2b7c4b0d76:	c5 fb 10 85 58 fc ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x3a8]
    1d2b7c4b0d7e:	c5 7b 10 95 c0 fc ff ff                         	vmovsd xmm10,QWORD PTR [rbp-0x340]
    1d2b7c4b0d86:	c5 7b 10 a5 90 fc ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x370]
    1d2b7c4b0d8e:	c5 7b 10 ad 70 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x190]
    1d2b7c4b0d96:	e9 70 a6 ff ff                                  	jmp    0x1d2b7c4ab40b
    1d2b7c4b0d9b:	e8 a0 e1 f0 ff                                  	call   0x1d2b7c3bef40
    1d2b7c4b0da0:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4b0da4:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4b0da8:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4b0daf:	c5 f8 10 8d 80 fd ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x280]
    1d2b7c4b0db7:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    1d2b7c4b0dba:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    1d2b7c4b0dc2:	c5 78 10 8d b0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x150]
    1d2b7c4b0dca:	c5 f8 10 95 90 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x170]
    1d2b7c4b0dd2:	c5 78 10 b5 30 fe ff ff                         	vmovups xmm14,XMMWORD PTR [rbp-0x1d0]
    1d2b7c4b0dda:	c5 f8 10 b5 60 fc ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x3a0]
    1d2b7c4b0de2:	c5 f8 10 ad 20 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1e0]
    1d2b7c4b0dea:	c5 f8 10 9d 10 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1f0]
    1d2b7c4b0df2:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    1d2b7c4b0df8:	8b 95 00 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x400]
    1d2b7c4b0dfe:	8b 9d 08 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3f8]
    1d2b7c4b0e04:	44 8b bd 70 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x390]
    1d2b7c4b0e0b:	e9 07 ad ff ff                                  	jmp    0x1d2b7c4abb17
    1d2b7c4b0e10:	e8 2b e1 f0 ff                                  	call   0x1d2b7c3bef40
    1d2b7c4b0e15:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c4b0e18:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4b0e1c:	8b 8d 20 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xe0]
    1d2b7c4b0e22:	44 8b 85 00 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x100]
    1d2b7c4b0e29:	e9 f1 bc ff ff                                  	jmp    0x1d2b7c4acb1f
    1d2b7c4b0e2e:	e8 0d e1 f0 ff                                  	call   0x1d2b7c3bef40
    1d2b7c4b0e33:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    1d2b7c4b0e37:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4b0e3b:	4c 8b 85 a8 fd ff ff                            	mov    r8,QWORD PTR [rbp-0x258]
    1d2b7c4b0e42:	48 8b 9d 38 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0xc8]
    1d2b7c4b0e49:	8b bd 30 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd0]
    1d2b7c4b0e4f:	e9 94 d1 ff ff                                  	jmp    0x1d2b7c4adfe8
    1d2b7c4b0e54:	c5 f8 11 85 c0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x140],xmm0
    1d2b7c4b0e5c:	c5 78 11 9d b0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x150],xmm11
    1d2b7c4b0e64:	c5 f8 11 ad 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm5
    1d2b7c4b0e6c:	c5 f8 11 8d 30 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1d0],xmm1
    1d2b7c4b0e74:	48 89 bd f0 fd ff ff                            	mov    QWORD PTR [rbp-0x210],rdi
    1d2b7c4b0e7b:	4c 89 bd d8 fd ff ff                            	mov    QWORD PTR [rbp-0x228],r15
    1d2b7c4b0e82:	4c 89 85 a8 fe ff ff                            	mov    QWORD PTR [rbp-0x158],r8
    1d2b7c4b0e89:	e8 b2 e0 f0 ff                                  	call   0x1d2b7c3bef40
    1d2b7c4b0e8e:	8b 75 e0                                        	mov    esi,DWORD PTR [rbp-0x20]
    1d2b7c4b0e91:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    1d2b7c4b0e95:	c5 f8 10 85 c0 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x140]
    1d2b7c4b0e9d:	c5 78 10 9d b0 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x150]
    1d2b7c4b0ea5:	c5 f8 10 ad 90 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x170]
    1d2b7c4b0ead:	c5 f8 10 8d 30 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x1d0]
    1d2b7c4b0eb5:	44 8b 85 a8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x158]
    1d2b7c4b0ebc:	8b bd f0 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x210]
    1d2b7c4b0ec2:	44 8b bd d8 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x228]
    1d2b7c4b0ec9:	44 8b 9d c0 fd ff ff                            	mov    r11d,DWORD PTR [rbp-0x240]
    1d2b7c4b0ed0:	44 8b 8d b8 fd ff ff                            	mov    r9d,DWORD PTR [rbp-0x248]
    1d2b7c4b0ed7:	c5 78 10 ad 90 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x270]
    1d2b7c4b0edf:	e9 7b e6 ff ff                                  	jmp    0x1d2b7c4af55f
    1d2b7c4b0ee4:	33 d2                                           	xor    edx,edx
    1d2b7c4b0ee6:	e9 e0 e6 ff ff                                  	jmp    0x1d2b7c4af5cb
    1d2b7c4b0eeb:	33 d2                                           	xor    edx,edx
    1d2b7c4b0eed:	8b c8                                           	mov    ecx,eax
    1d2b7c4b0eef:	e9 f7 e6 ff ff                                  	jmp    0x1d2b7c4af5eb
    1d2b7c4b0ef4:	8b f0                                           	mov    esi,eax
    1d2b7c4b0ef6:	33 d2                                           	xor    edx,edx
    1d2b7c4b0ef8:	e9 2a e7 ff ff                                  	jmp    0x1d2b7c4af627
    1d2b7c4b0efd:	33 d2                                           	xor    edx,edx
    1d2b7c4b0eff:	8b d8                                           	mov    ebx,eax
    1d2b7c4b0f01:	e9 41 e7 ff ff                                  	jmp    0x1d2b7c4af647
    1d2b7c4b0f06:	e8 45 dd f0 ff                                  	call   0x1d2b7c3bec50
    1d2b7c4b0f0b:	e8 40 dd f0 ff                                  	call   0x1d2b7c3bec50
    1d2b7c4b0f10:	90                                              	nop
    1d2b7c4b0f11:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    1d2b7c4b0f18:	c9                                              	leave
    1d2b7c4b0f19:	00 4b 7c                                        	add    BYTE PTR [rbx+0x7c],cl
    1d2b7c4b0f1c:	2b 1d 00 00 b7 00                               	sub    ebx,DWORD PTR [rip+0xb70000]        # 0x1d2b7d020f22
    1d2b7c4b0f22:	4b 7c 2b                                        	rex.WXB jl 0x1d2b7c4b0f50
    1d2b7c4b0f25:	1d 00 00 a5 00                                  	sbb    eax,0xa50000
    1d2b7c4b0f2a:	4b 7c 2b                                        	rex.WXB jl 0x1d2b7c4b0f58
    1d2b7c4b0f2d:	1d 00 00 93 00                                  	sbb    eax,0x930000
    1d2b7c4b0f32:	4b 7c 2b                                        	rex.WXB jl 0x1d2b7c4b0f60
    1d2b7c4b0f35:	1d 00 00 81 00                                  	sbb    eax,0x810000
    1d2b7c4b0f3a:	4b 7c 2b                                        	rex.WXB jl 0x1d2b7c4b0f68
    1d2b7c4b0f3d:	1d 00 00 6f 00                                  	sbb    eax,0x6f0000
    1d2b7c4b0f42:	4b 7c 2b                                        	rex.WXB jl 0x1d2b7c4b0f70
    1d2b7c4b0f45:	1d 00 00 5d 00                                  	sbb    eax,0x5d0000
    1d2b7c4b0f4a:	4b 7c 2b                                        	rex.WXB jl 0x1d2b7c4b0f78
    1d2b7c4b0f4d:	1d 00 00 1c fe                                  	sbb    eax,0xfe1c0000
    1d2b7c4b0f52:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0f80
    1d2b7c4b0f55:	1d 00 00 17 fe                                  	sbb    eax,0xfe170000
    1d2b7c4b0f5a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0f88
    1d2b7c4b0f5d:	1d 00 00 0d fe                                  	sbb    eax,0xfe0d0000
    1d2b7c4b0f62:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0f90
    1d2b7c4b0f65:	1d 00 00 03 fe                                  	sbb    eax,0xfe030000
    1d2b7c4b0f6a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0f98
    1d2b7c4b0f6d:	1d 00 00 f8 fd                                  	sbb    eax,0xfdf80000
    1d2b7c4b0f72:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fa0
    1d2b7c4b0f75:	1d 00 00 ee fd                                  	sbb    eax,0xfdee0000
    1d2b7c4b0f7a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fa8
    1d2b7c4b0f7d:	1d 00 00 e3 fd                                  	sbb    eax,0xfde30000
    1d2b7c4b0f82:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fb0
    1d2b7c4b0f85:	1d 00 00 90 f0                                  	sbb    eax,0xf0900000
    1d2b7c4b0f8a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fb8
    1d2b7c4b0f8d:	1d 00 00 85 f0                                  	sbb    eax,0xf0850000
    1d2b7c4b0f92:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fc0
    1d2b7c4b0f95:	1d 00 00 7a f0                                  	sbb    eax,0xf07a0000
    1d2b7c4b0f9a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fc8
    1d2b7c4b0f9d:	1d 00 00 6f f0                                  	sbb    eax,0xf06f0000
    1d2b7c4b0fa2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fd0
    1d2b7c4b0fa5:	1d 00 00 64 f0                                  	sbb    eax,0xf0640000
    1d2b7c4b0faa:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fd8
    1d2b7c4b0fad:	1d 00 00 59 f0                                  	sbb    eax,0xf0590000
    1d2b7c4b0fb2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fe0
    1d2b7c4b0fb5:	1d 00 00 4e f0                                  	sbb    eax,0xf04e0000
    1d2b7c4b0fba:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0fe8
    1d2b7c4b0fbd:	1d 00 00 59 b7                                  	sbb    eax,0xb7590000
    1d2b7c4b0fc2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0ff0
    1d2b7c4b0fc5:	1d 00 00 fc b6                                  	sbb    eax,0xb6fc0000
    1d2b7c4b0fca:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b0ff8
    1d2b7c4b0fcd:	1d 00 00 a4 b6                                  	sbb    eax,0xb6a40000
    1d2b7c4b0fd2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1000
    1d2b7c4b0fd5:	1d 00 00 55 b6                                  	sbb    eax,0xb6550000
    1d2b7c4b0fda:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1008
    1d2b7c4b0fdd:	1d 00 00 06 b6                                  	sbb    eax,0xb6060000
    1d2b7c4b0fe2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1010
    1d2b7c4b0fe5:	1d 00 00 a7 b5                                  	sbb    eax,0xb5a70000
    1d2b7c4b0fea:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1018
    1d2b7c4b0fed:	1d 00 00 58 b5                                  	sbb    eax,0xb5580000
    1d2b7c4b0ff2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1020
    1d2b7c4b0ff5:	1d 00 00 4d b5                                  	sbb    eax,0xb54d0000
    1d2b7c4b0ffa:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1028
    1d2b7c4b0ffd:	1d 00 00 50 aa                                  	sbb    eax,0xaa500000
    1d2b7c4b1002:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1030
    1d2b7c4b1005:	1d 00 00 44 aa                                  	sbb    eax,0xaa440000
    1d2b7c4b100a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1038
    1d2b7c4b100d:	1d 00 00 35 aa                                  	sbb    eax,0xaa350000
    1d2b7c4b1012:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1040
    1d2b7c4b1015:	1d 00 00 29 aa                                  	sbb    eax,0xaa290000
    1d2b7c4b101a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1048
    1d2b7c4b101d:	1d 00 00 1c aa                                  	sbb    eax,0xaa1c0000
    1d2b7c4b1022:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1050
    1d2b7c4b1025:	1d 00 00 0a aa                                  	sbb    eax,0xaa0a0000
    1d2b7c4b102a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1058
    1d2b7c4b102d:	1d 00 00 fd a9                                  	sbb    eax,0xa9fd0000
    1d2b7c4b1032:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1060
    1d2b7c4b1035:	1d 00 00 7f aa                                  	sbb    eax,0xaa7f0000
    1d2b7c4b103a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1068
    1d2b7c4b103d:	1d 00 00 53 a8                                  	sbb    eax,0xa8530000
    1d2b7c4b1042:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1070
    1d2b7c4b1045:	1d 00 00 ab 9f                                  	sbb    eax,0x9fab0000
    1d2b7c4b104a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1078
    1d2b7c4b104d:	1d 00 00 95 9f                                  	sbb    eax,0x9f950000
    1d2b7c4b1052:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1080
    1d2b7c4b1055:	1d 00 00 86 9f                                  	sbb    eax,0x9f860000
    1d2b7c4b105a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1088
    1d2b7c4b105d:	1d 00 00 76 9f                                  	sbb    eax,0x9f760000
    1d2b7c4b1062:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1090
    1d2b7c4b1065:	1d 00 00 60 9f                                  	sbb    eax,0x9f600000
    1d2b7c4b106a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1098
    1d2b7c4b106d:	1d 00 00 50 9f                                  	sbb    eax,0x9f500000
    1d2b7c4b1072:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10a0
    1d2b7c4b1075:	1d 00 00 b5 9f                                  	sbb    eax,0x9fb50000
    1d2b7c4b107a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10a8
    1d2b7c4b107d:	1d 00 00 f6 9d                                  	sbb    eax,0x9df60000
    1d2b7c4b1082:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10b0
    1d2b7c4b1085:	1d 00 00 3c 95                                  	sbb    eax,0x953c0000
    1d2b7c4b108a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10b8
    1d2b7c4b108d:	1d 00 00 26 95                                  	sbb    eax,0x95260000
    1d2b7c4b1092:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10c0
    1d2b7c4b1095:	1d 00 00 17 95                                  	sbb    eax,0x95170000
    1d2b7c4b109a:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10c8
    1d2b7c4b109d:	1d 00 00 07 95                                  	sbb    eax,0x95070000
    1d2b7c4b10a2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10d0
    1d2b7c4b10a5:	1d 00 00 f1 94                                  	sbb    eax,0x94f10000
    1d2b7c4b10aa:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10d8
    1d2b7c4b10ad:	1d 00 00 e1 94                                  	sbb    eax,0x94e10000
    1d2b7c4b10b2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10e0
    1d2b7c4b10b5:	1d 00 00 46 95                                  	sbb    eax,0x95460000
    1d2b7c4b10ba:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10e8
    1d2b7c4b10bd:	1d 00 00 15 93                                  	sbb    eax,0x93150000
    1d2b7c4b10c2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10f0
    1d2b7c4b10c5:	1d 00 00 5c 8a                                  	sbb    eax,0x8a5c0000
    1d2b7c4b10ca:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b10f8
    1d2b7c4b10cd:	1d 00 00 47 8a                                  	sbb    eax,0x8a470000
    1d2b7c4b10d2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1100
    1d2b7c4b10d5:	1d 00 00 38 8a                                  	sbb    eax,0x8a380000
    1d2b7c4b10da:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1108
    1d2b7c4b10dd:	1d 00 00 29 8a                                  	sbb    eax,0x8a290000
    1d2b7c4b10e2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1110
    1d2b7c4b10e5:	1d 00 00 14 8a                                  	sbb    eax,0x8a140000
    1d2b7c4b10ea:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1118
    1d2b7c4b10ed:	1d 00 00 05 8a                                  	sbb    eax,0x8a050000
    1d2b7c4b10f2:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1120
    1d2b7c4b10f5:	1d 00 00 66 8a                                  	sbb    eax,0x8a660000
    1d2b7c4b10fa:	4a 7c 2b                                        	rex.WX jl 0x1d2b7c4b1128
    1d2b7c4b10fd:	1d 00 00 82 00                                  	sbb    eax,0x820000
    1d2b7c4b1102:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c4b1104:	1c 00                                           	sbb    al,0x0
    1d2b7c4b1106:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c4b1108:	f0 2b db                                        	lock sub ebx,ebx
    1d2b7c4b110b:	03 05 c0 80 02 db                               	add    eax,DWORD PTR [rip+0xffffffffdb0280c0]        # 0x1d2b574d91d1
    1d2b7c4b1111:	03 05 3d db 03 05                               	add    eax,DWORD PTR [rip+0x503db3d]        # 0x1d2b814eec54
    1d2b7c4b1117:	dd 05 db 03 05 00                               	fld    QWORD PTR [rip+0x503db]        # 0x1d2b7c5014f8
	...
