
/home/cosmo/Git/softgl/build/diagnostics/cube-cold-fallback/native-check/runs/candidate-ms0/selected/sg_raster_triangle_tile_prepared-turbofan.bin:     file format binary


Disassembly of section .data:

000022bdd7cca680 <.data>:
    22bdd7cca680:	55                                              	push   rbp
    22bdd7cca681:	48 8b ec                                        	mov    rbp,rsp
    22bdd7cca684:	6a 30                                           	push   0x30
    22bdd7cca686:	56                                              	push   rsi
    22bdd7cca687:	48 81 ec e8 03 00 00                            	sub    rsp,0x3e8
    22bdd7cca68e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cca692:	8b f9                                           	mov    edi,ecx
    22bdd7cca694:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    22bdd7cca698:	0f 86 53 8a 00 00                               	jbe    0x22bdd7cd30f1
    22bdd7cca69e:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    22bdd7cca6a2:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    22bdd7cca6a6:	4d 0b de                                        	or     r11,r14
    22bdd7cca6a9:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    22bdd7cca6ad:	41 8d 8c 24 00 fe ff ff                         	lea    ecx,[r12-0x200]
    22bdd7cca6b5:	41 89 4b 07                                     	mov    DWORD PTR [r11+0x7],ecx
    22bdd7cca6b9:	45 8b 7b 2f                                     	mov    r15d,DWORD PTR [r11+0x2f]
    22bdd7cca6bd:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    22bdd7cca6c1:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    22bdd7cca6c8:	44 8b e0                                        	mov    r12d,eax
    22bdd7cca6cb:	43 8b 74 20 14                                  	mov    esi,DWORD PTR [r8+r12*1+0x14]
    22bdd7cca6d0:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    22bdd7cca6d7:	85 f6                                           	test   esi,esi
    22bdd7cca6d9:	0f 85 4c 00 00 00                               	jne    0x22bdd7cca72b
    22bdd7cca6df:	45 85 ff                                        	test   r15d,r15d
    22bdd7cca6e2:	0f 84 43 00 00 00                               	je     0x22bdd7cca72b
    22bdd7cca6e8:	43 8b 74 38 24                                  	mov    esi,DWORD PTR [r8+r15*1+0x24]
    22bdd7cca6ed:	43 83 7c 38 24 00                               	cmp    DWORD PTR [r8+r15*1+0x24],0x0
    22bdd7cca6f3:	0f 84 32 00 00 00                               	je     0x22bdd7cca72b
    22bdd7cca6f9:	ff 75 18                                        	push   QWORD PTR [rbp+0x18]
    22bdd7cca6fc:	ff 75 10                                        	push   QWORD PTR [rbp+0x10]
    22bdd7cca6ff:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    22bdd7cca703:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    22bdd7cca707:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cca70b:	8b cf                                           	mov    ecx,edi
    22bdd7cca70d:	e8 3e be f3 ff                                  	call   0x22bdd7c06550
    22bdd7cca712:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cca716:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    22bdd7cca71d:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    22bdd7cca721:	89 7e 07                                        	mov    DWORD PTR [rsi+0x7],edi
    22bdd7cca724:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cca727:	5d                                              	pop    rbp
    22bdd7cca728:	c2 10 00                                        	ret    0x10
    22bdd7cca72b:	4d 8b d3                                        	mov    r10,r11
    22bdd7cca72e:	44 8b d9                                        	mov    r11d,ecx
    22bdd7cca731:	49 8b ca                                        	mov    rcx,r10
    22bdd7cca734:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    22bdd7cca73b:	44 8b fb                                        	mov    r15d,ebx
    22bdd7cca73e:	c4 81 7a 6f 74 38 10                            	vmovdqu xmm6,XMMWORD PTR [r8+r15*1+0x10]
    22bdd7cca745:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    22bdd7cca74f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cca754:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cca758:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    22bdd7cca75c:	49 ba 40 d9 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d940
    22bdd7cca766:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7cca76c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    22bdd7cca771:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7cca777:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    22bdd7cca77c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    22bdd7cca781:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    22bdd7cca785:	8b da                                           	mov    ebx,edx
    22bdd7cca787:	c4 41 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x10]
    22bdd7cca78e:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    22bdd7cca792:	4c 8b 15 c5 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc5]        # 0x22bdd7cca75e
    22bdd7cca799:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    22bdd7cca79f:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    22bdd7cca7a4:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    22bdd7cca7aa:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    22bdd7cca7af:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    22bdd7cca7b4:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    22bdd7cca7b9:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    22bdd7cca7be:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    22bdd7cca7c4:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    22bdd7cca7c8:	8b d7                                           	mov    edx,edi
    22bdd7cca7ca:	c4 41 7a 6f 64 10 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rdx*1+0x10]
    22bdd7cca7d1:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    22bdd7cca7d5:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x22bdd7cca75e
    22bdd7cca7dc:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    22bdd7cca7e2:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    22bdd7cca7e7:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    22bdd7cca7ed:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    22bdd7cca7f2:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    22bdd7cca7f7:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    22bdd7cca7fc:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    22bdd7cca801:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    22bdd7cca807:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    22bdd7cca80b:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    22bdd7cca810:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    22bdd7cca815:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    22bdd7cca819:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    22bdd7cca81f:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    22bdd7cca823:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    22bdd7cca828:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    22bdd7cca82c:	c4 e3 f9 16 d7 00                               	vpextrq rdi,xmm2,0x0
    22bdd7cca832:	c4 e3 f9 16 d6 01                               	vpextrq rsi,xmm2,0x1
    22bdd7cca838:	48 2b fe                                        	sub    rdi,rsi
    22bdd7cca83b:	48 85 ff                                        	test   rdi,rdi
    22bdd7cca83e:	0f 8e 7f 88 00 00                               	jle    0x22bdd7cd30c3
    22bdd7cca844:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    22bdd7cca849:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    22bdd7cca84e:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    22bdd7cca854:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    22bdd7cca85e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7cca863:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7cca867:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    22bdd7cca86b:	8d 70 04                                        	lea    esi,[rax+0x4]
    22bdd7cca86e:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    22bdd7cca873:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    22bdd7cca878:	c4 c3 59 22 24 30 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rsi*1],0x1
    22bdd7cca87f:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    22bdd7cca884:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    22bdd7cca888:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    22bdd7cca88d:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    22bdd7cca892:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    22bdd7cca897:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    22bdd7cca89c:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    22bdd7cca8a0:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    22bdd7cca8a4:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    22bdd7cca8ae:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cca8b3:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7cca8b7:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    22bdd7cca8bb:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    22bdd7cca8bf:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    22bdd7cca8c4:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    22bdd7cca8ca:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    22bdd7cca8cf:	43 8b 74 20 58                                  	mov    esi,DWORD PTR [r8+r12*1+0x58]
    22bdd7cca8d4:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    22bdd7cca8d8:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    22bdd7cca8dc:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    22bdd7cca8e4:	85 f6                                           	test   esi,esi
    22bdd7cca8e6:	0f 84 39 00 00 00                               	je     0x22bdd7cca925
    22bdd7cca8ec:	44 8d 48 50                                     	lea    r9d,[rax+0x50]
    22bdd7cca8f0:	49 8d 78 48                                     	lea    rdi,[r8+0x48]
    22bdd7cca8f4:	c4 a1 7b 10 24 27                               	vmovsd xmm4,QWORD PTR [rdi+r12*1]
    22bdd7cca8fa:	c4 83 59 22 2c 08 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+r9*1],0x0
    22bdd7cca901:	8d 78 54                                        	lea    edi,[rax+0x54]
    22bdd7cca904:	c4 c3 59 22 04 38 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rdi*1],0x1
    22bdd7cca90b:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    22bdd7cca90f:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    22bdd7cca914:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    22bdd7cca919:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    22bdd7cca921:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    22bdd7cca925:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    22bdd7cca929:	c4 c3 f9 16 e1 00                               	vpextrq r9,xmm4,0x0
    22bdd7cca92f:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    22bdd7cca934:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    22bdd7cca93a:	49 23 c1                                        	and    rax,r9
    22bdd7cca93d:	a8 01                                           	test   al,0x1
    22bdd7cca93f:	0f 85 20 00 00 00                               	jne    0x22bdd7cca965
    22bdd7cca945:	b8 01 00 00 00                                  	mov    eax,0x1
    22bdd7cca94a:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    22bdd7cca94f:	85 f6                                           	test   esi,esi
    22bdd7cca951:	0f 45 c7                                        	cmovne eax,edi
    22bdd7cca954:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    22bdd7cca95b:	89 79 07                                        	mov    DWORD PTR [rcx+0x7],edi
    22bdd7cca95e:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cca961:	5d                                              	pop    rbp
    22bdd7cca962:	c2 10 00                                        	ret    0x10
    22bdd7cca965:	c4 63 79 16 e8 01                               	vpextrd eax,xmm13,0x1
    22bdd7cca96b:	c4 63 79 16 d6 01                               	vpextrd esi,xmm10,0x1
    22bdd7cca971:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cca974:	3b f0                                           	cmp    esi,eax
    22bdd7cca976:	41 0f 9e c1                                     	setle  r9b
    22bdd7cca97a:	48 89 4d e8                                     	mov    QWORD PTR [rbp-0x18],rcx
    22bdd7cca97e:	33 c9                                           	xor    ecx,ecx
    22bdd7cca980:	3b f0                                           	cmp    esi,eax
    22bdd7cca982:	0f 95 c1                                        	setne  cl
    22bdd7cca985:	4c 89 5d e0                                     	mov    QWORD PTR [rbp-0x20],r11
    22bdd7cca989:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    22bdd7cca98e:	c5 79 7e d7                                     	vmovd  edi,xmm10
    22bdd7cca992:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    22bdd7cca999:	45 33 ff                                        	xor    r15d,r15d
    22bdd7cca99c:	41 3b fb                                        	cmp    edi,r11d
    22bdd7cca99f:	41 0f 9e c7                                     	setle  r15b
    22bdd7cca9a3:	44 0b f9                                        	or     r15d,ecx
    22bdd7cca9a6:	45 23 f9                                        	and    r15d,r9d
    22bdd7cca9a9:	c4 63 79 16 c1 01                               	vpextrd ecx,xmm8,0x1
    22bdd7cca9af:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cca9b2:	3b ce                                           	cmp    ecx,esi
    22bdd7cca9b4:	41 0f 9e c1                                     	setle  r9b
    22bdd7cca9b8:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    22bdd7cca9bf:	45 33 ff                                        	xor    r15d,r15d
    22bdd7cca9c2:	3b ce                                           	cmp    ecx,esi
    22bdd7cca9c4:	41 0f 95 c7                                     	setne  r15b
    22bdd7cca9c8:	48 89 b5 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rsi
    22bdd7cca9cf:	c5 79 7e c6                                     	vmovd  esi,xmm8
    22bdd7cca9d3:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    22bdd7cca9da:	33 db                                           	xor    ebx,ebx
    22bdd7cca9dc:	3b f7                                           	cmp    esi,edi
    22bdd7cca9de:	0f 9e c3                                        	setle  bl
    22bdd7cca9e1:	41 0b df                                        	or     ebx,r15d
    22bdd7cca9e4:	41 23 d9                                        	and    ebx,r9d
    22bdd7cca9e7:	45 33 ff                                        	xor    r15d,r15d
    22bdd7cca9ea:	3b c8                                           	cmp    ecx,eax
    22bdd7cca9ec:	41 0f 95 c7                                     	setne  r15b
    22bdd7cca9f0:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cca9f3:	44 3b de                                        	cmp    r11d,esi
    22bdd7cca9f6:	41 0f 9e c1                                     	setle  r9b
    22bdd7cca9fa:	45 0b cf                                        	or     r9d,r15d
    22bdd7cca9fd:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ccaa00:	3b c1                                           	cmp    eax,ecx
    22bdd7ccaa02:	41 0f 9e c7                                     	setle  r15b
    22bdd7ccaa06:	45 23 f9                                        	and    r15d,r9d
    22bdd7ccaa09:	47 8b 8c 20 e0 00 00 00                         	mov    r9d,DWORD PTR [r8+r12*1+0xe0]
    22bdd7ccaa11:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    22bdd7ccaa15:	4c 89 65 d0                                     	mov    QWORD PTR [rbp-0x30],r12
    22bdd7ccaa19:	c5 f8 11 bd 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm7
    22bdd7ccaa21:	48 89 9d 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rbx
    22bdd7ccaa28:	43 83 bc 20 e0 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xe0],0x0
    22bdd7ccaa31:	0f 85 0d 00 00 00                               	jne    0x22bdd7ccaa44
    22bdd7ccaa37:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    22bdd7ccaa3b:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    22bdd7ccaa3f:	e9 49 01 00 00                                  	jmp    0x22bdd7ccab8d
    22bdd7ccaa44:	c4 01 7a 10 94 20 d8 00 00 00                   	vmovss xmm10,DWORD PTR [r8+r12*1+0xd8]
    22bdd7ccaa4e:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ccaa53:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    22bdd7ccaa58:	0f 8a 1d 00 00 00                               	jp     0x22bdd7ccaa7b
    22bdd7ccaa5e:	0f 85 17 00 00 00                               	jne    0x22bdd7ccaa7b
    22bdd7ccaa64:	c4 01 7a 10 ac 20 dc 00 00 00                   	vmovss xmm13,DWORD PTR [r8+r12*1+0xdc]
    22bdd7ccaa6e:	c4 41 78 2e c5                                  	vucomiss xmm8,xmm13
    22bdd7ccaa73:	7a 06                                           	jp     0x22bdd7ccaa7b
    22bdd7ccaa75:	0f 84 0d 01 00 00                               	je     0x22bdd7ccab88
    22bdd7ccaa7b:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    22bdd7ccaa80:	c4 41 78 28 ec                                  	vmovaps xmm13,xmm12
    22bdd7ccaa85:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    22bdd7ccaa8a:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    22bdd7ccaa8e:	c4 c1 12 59 e1                                  	vmulss xmm4,xmm13,xmm9
    22bdd7ccaa93:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    22bdd7ccaa98:	c4 c1 4a 59 ec                                  	vmulss xmm5,xmm6,xmm12
    22bdd7ccaa9d:	c5 da 5c e5                                     	vsubss xmm4,xmm4,xmm5
    22bdd7ccaaa1:	c5 78 2e c4                                     	vucomiss xmm8,xmm4
    22bdd7ccaaa5:	7a 06                                           	jp     0x22bdd7ccaaad
    22bdd7ccaaa7:	0f 84 db 00 00 00                               	je     0x22bdd7ccab88
    22bdd7ccaaad:	c4 c1 7a 10 6c 10 18                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x18]
    22bdd7ccaab4:	4c 8b 8d e8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x218]
    22bdd7ccaabb:	c4 81 7a 10 44 08 18                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x18]
    22bdd7ccaac2:	c5 d2 5c e8                                     	vsubss xmm5,xmm5,xmm0
    22bdd7ccaac6:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    22bdd7ccaacb:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    22bdd7ccaad2:	c4 c1 7a 10 7c 18 18                            	vmovss xmm7,DWORD PTR [r8+rbx*1+0x18]
    22bdd7ccaad9:	c5 c2 5c c0                                     	vsubss xmm0,xmm7,xmm0
    22bdd7ccaadd:	c5 9a 59 f8                                     	vmulss xmm7,xmm12,xmm0
    22bdd7ccaae1:	c5 b2 5c ff                                     	vsubss xmm7,xmm9,xmm7
    22bdd7ccaae5:	c5 c2 5e fc                                     	vdivss xmm7,xmm7,xmm4
    22bdd7ccaae9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    22bdd7ccaaed:	49 ba 60 d8 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d860
    22bdd7ccaaf7:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    22bdd7ccaafc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccab00:	0f 87 04 00 00 00                               	ja     0x22bdd7ccab0a
    22bdd7ccab06:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccab0a:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    22bdd7ccab0f:	c5 ca 59 f5                                     	vmulss xmm6,xmm6,xmm5
    22bdd7ccab13:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7ccab17:	c5 fa 5e c4                                     	vdivss xmm0,xmm0,xmm4
    22bdd7ccab1b:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    22bdd7ccab1f:	4c 8b 15 c9 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc9]        # 0x22bdd7ccaaef
    22bdd7ccab26:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ccab2b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ccab2f:	0f 87 04 00 00 00                               	ja     0x22bdd7ccab39
    22bdd7ccab35:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ccab39:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    22bdd7ccab3d:	0f 87 04 00 00 00                               	ja     0x22bdd7ccab47
    22bdd7ccab43:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccab47:	c4 c1 2a 59 c1                                  	vmulss xmm0,xmm10,xmm9
    22bdd7ccab4c:	c4 81 7a 10 b4 20 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+r12*1+0xdc]
    22bdd7ccab56:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    22bdd7ccab5c:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    22bdd7ccab61:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7ccab65:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccab69:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ccab6d:	c5 f8 10 bd 50 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2b0]
    22bdd7ccab75:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    22bdd7ccab7d:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    22bdd7ccab83:	e9 05 00 00 00                                  	jmp    0x22bdd7ccab8d
    22bdd7ccab88:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    22bdd7ccab8d:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    22bdd7ccab92:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    22bdd7ccab96:	c4 c3 79 16 d9 01                               	vpextrd r9d,xmm3,0x1
    22bdd7ccab9c:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    22bdd7ccaba0:	44 8b 8d 28 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3d8]
    22bdd7ccaba7:	41 f7 d9                                        	neg    r9d
    22bdd7ccabaa:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    22bdd7ccabae:	44 8b cb                                        	mov    r9d,ebx
    22bdd7ccabb1:	41 f7 d9                                        	neg    r9d
    22bdd7ccabb4:	4c 89 4d 90                                     	mov    QWORD PTR [rbp-0x70],r9
    22bdd7ccabb8:	45 8b cf                                        	mov    r9d,r15d
    22bdd7ccabbb:	41 f7 d9                                        	neg    r9d
    22bdd7ccabbe:	83 bd 70 ff ff ff 04                            	cmp    DWORD PTR [rbp-0x90],0x4
    22bdd7ccabc5:	0f 84 21 84 00 00                               	je     0x22bdd7cd2fec
    22bdd7ccabcb:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    22bdd7ccabd2:	0f 85 70 83 00 00                               	jne    0x22bdd7cd2f48
    22bdd7ccabd8:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    22bdd7ccabdc:	41 c1 e1 08                                     	shl    r9d,0x8
    22bdd7ccabe0:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    22bdd7ccabe7:	41 8b d9                                        	mov    ebx,r9d
    22bdd7ccabea:	2b de                                           	sub    ebx,esi
    22bdd7ccabec:	48 63 db                                        	movsxd rbx,ebx
    22bdd7ccabef:	4c 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],r15
    22bdd7ccabf6:	44 8b 7d a0                                     	mov    r15d,DWORD PTR [rbp-0x60]
    22bdd7ccabfa:	41 c1 e7 08                                     	shl    r15d,0x8
    22bdd7ccabfe:	41 81 cf 80 00 00 00                            	or     r15d,0x80
    22bdd7ccac05:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    22bdd7ccac0c:	41 8b d7                                        	mov    edx,r15d
    22bdd7ccac0f:	2b d1                                           	sub    edx,ecx
    22bdd7ccac11:	48 63 d2                                        	movsxd rdx,edx
    22bdd7ccac14:	48 89 55 88                                     	mov    QWORD PTR [rbp-0x78],rdx
    22bdd7ccac18:	41 8b d1                                        	mov    edx,r9d
    22bdd7ccac1b:	41 2b d3                                        	sub    edx,r11d
    22bdd7ccac1e:	48 63 d2                                        	movsxd rdx,edx
    22bdd7ccac21:	48 89 95 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rdx
    22bdd7ccac28:	41 8b d7                                        	mov    edx,r15d
    22bdd7ccac2b:	2b d0                                           	sub    edx,eax
    22bdd7ccac2d:	48 63 d2                                        	movsxd rdx,edx
    22bdd7ccac30:	44 2b cf                                        	sub    r9d,edi
    22bdd7ccac33:	4d 63 c9                                        	movsxd r9,r9d
    22bdd7ccac36:	44 2b bd 68 ff ff ff                            	sub    r15d,DWORD PTR [rbp-0x98]
    22bdd7ccac3d:	4d 63 ff                                        	movsxd r15,r15d
    22bdd7ccac40:	4c 8b 55 98                                     	mov    r10,QWORD PTR [rbp-0x68]
    22bdd7ccac44:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    22bdd7ccac49:	4d 85 d2                                        	test   r10,r10
    22bdd7ccac4c:	79 13                                           	jns    0x22bdd7ccac61
    22bdd7ccac4e:	49 d1 ea                                        	shr    r10,1
    22bdd7ccac51:	73 04                                           	jae    0x22bdd7ccac57
    22bdd7ccac53:	49 83 ca 01                                     	or     r10,0x1
    22bdd7ccac57:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    22bdd7ccac5c:	c4 41 32 58 c9                                  	vaddss xmm9,xmm9,xmm9
    22bdd7ccac61:	2b fe                                           	sub    edi,esi
    22bdd7ccac63:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    22bdd7ccac6a:	4c 63 ff                                        	movsxd r15,edi
    22bdd7ccac6d:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    22bdd7ccac74:	4d 8b cf                                        	mov    r9,r15
    22bdd7ccac77:	49 c1 e1 08                                     	shl    r9,0x8
    22bdd7ccac7b:	4c 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r15
    22bdd7ccac82:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ccac85:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    22bdd7ccac8c:	85 ff                                           	test   edi,edi
    22bdd7ccac8e:	4d 0f 4c f9                                     	cmovl  r15,r9
    22bdd7ccac92:	4c 89 8d f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r9
    22bdd7ccac99:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    22bdd7ccaca0:	44 2b c9                                        	sub    r9d,ecx
    22bdd7ccaca3:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    22bdd7ccacaa:	4d 63 f9                                        	movsxd r15,r9d
    22bdd7ccacad:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    22bdd7ccacb4:	49 c1 e7 08                                     	shl    r15,0x8
    22bdd7ccacb8:	4c 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r15
    22bdd7ccacbf:	49 f7 df                                        	neg    r15
    22bdd7ccacc2:	48 89 9d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rbx
    22bdd7ccacc9:	33 db                                           	xor    ebx,ebx
    22bdd7ccaccb:	45 85 c9                                        	test   r9d,r9d
    22bdd7ccacce:	49 0f 4f df                                     	cmovg  rbx,r15
    22bdd7ccacd2:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    22bdd7ccacd9:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    22bdd7ccace0:	33 d2                                           	xor    edx,edx
    22bdd7ccace2:	85 ff                                           	test   edi,edi
    22bdd7ccace4:	48 0f 4c da                                     	cmovl  rbx,rdx
    22bdd7ccace8:	45 85 c9                                        	test   r9d,r9d
    22bdd7ccaceb:	4c 0f 4f fa                                     	cmovg  r15,rdx
    22bdd7ccacef:	41 2b f3                                        	sub    esi,r11d
    22bdd7ccacf2:	48 63 fe                                        	movsxd rdi,esi
    22bdd7ccacf5:	4c 8b df                                        	mov    r11,rdi
    22bdd7ccacf8:	49 c1 e3 08                                     	shl    r11,0x8
    22bdd7ccacfc:	4c 8b ca                                        	mov    r9,rdx
    22bdd7ccacff:	85 f6                                           	test   esi,esi
    22bdd7ccad01:	4d 0f 4c cb                                     	cmovl  r9,r11
    22bdd7ccad05:	2b c8                                           	sub    ecx,eax
    22bdd7ccad07:	48 63 c1                                        	movsxd rax,ecx
    22bdd7ccad0a:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    22bdd7ccad11:	4c 8b d8                                        	mov    r11,rax
    22bdd7ccad14:	49 c1 e3 08                                     	shl    r11,0x8
    22bdd7ccad18:	4c 89 9d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r11
    22bdd7ccad1f:	49 f7 db                                        	neg    r11
    22bdd7ccad22:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    22bdd7ccad29:	4c 8b ca                                        	mov    r9,rdx
    22bdd7ccad2c:	85 c9                                           	test   ecx,ecx
    22bdd7ccad2e:	4d 0f 4f cb                                     	cmovg  r9,r11
    22bdd7ccad32:	4c 89 8d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r9
    22bdd7ccad39:	4c 8b 8d d8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x328]
    22bdd7ccad40:	85 f6                                           	test   esi,esi
    22bdd7ccad42:	4c 0f 4c ca                                     	cmovl  r9,rdx
    22bdd7ccad46:	85 c9                                           	test   ecx,ecx
    22bdd7ccad48:	4c 0f 4f da                                     	cmovg  r11,rdx
    22bdd7ccad4c:	c4 e3 f9 16 c9 00                               	vpextrq rcx,xmm1,0x0
    22bdd7ccad52:	48 8b f1                                        	mov    rsi,rcx
    22bdd7ccad55:	48 c1 e6 08                                     	shl    rsi,0x8
    22bdd7ccad59:	4c 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r11
    22bdd7ccad60:	c4 41 79 7e f3                                  	vmovd  r11d,xmm14
    22bdd7ccad65:	4c 89 4d 98                                     	mov    QWORD PTR [rbp-0x68],r9
    22bdd7ccad69:	4c 8b ca                                        	mov    r9,rdx
    22bdd7ccad6c:	45 85 db                                        	test   r11d,r11d
    22bdd7ccad6f:	4c 0f 4c ce                                     	cmovl  r9,rsi
    22bdd7ccad73:	48 89 b5 a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rsi
    22bdd7ccad7a:	c4 e3 f9 16 ce 01                               	vpextrq rsi,xmm1,0x1
    22bdd7ccad80:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    22bdd7ccad87:	4c 8b ce                                        	mov    r9,rsi
    22bdd7ccad8a:	49 c1 e1 08                                     	shl    r9,0x8
    22bdd7ccad8e:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    22bdd7ccad95:	49 f7 d9                                        	neg    r9
    22bdd7ccad98:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    22bdd7ccad9f:	c4 43 79 16 f7 01                               	vpextrd r15d,xmm14,0x1
    22bdd7ccada5:	48 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rbx
    22bdd7ccadac:	48 8b da                                        	mov    rbx,rdx
    22bdd7ccadaf:	45 85 ff                                        	test   r15d,r15d
    22bdd7ccadb2:	49 0f 4f d9                                     	cmovg  rbx,r9
    22bdd7ccadb6:	48 89 9d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rbx
    22bdd7ccadbd:	48 8b 9d a0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x360]
    22bdd7ccadc4:	45 85 db                                        	test   r11d,r11d
    22bdd7ccadc7:	48 0f 4c da                                     	cmovl  rbx,rdx
    22bdd7ccadcb:	45 85 ff                                        	test   r15d,r15d
    22bdd7ccadce:	4c 0f 4f ca                                     	cmovg  r9,rdx
    22bdd7ccadd2:	47 8b 9c 20 a4 00 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0xa4]
    22bdd7ccadda:	c5 fb 11 75 80                                  	vmovsd QWORD PTR [rbp-0x80],xmm6
    22bdd7ccaddf:	c5 f8 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm2
    22bdd7ccade7:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    22bdd7ccadeb:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    22bdd7ccadf2:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    22bdd7ccadf9:	48 89 b5 c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rsi
    22bdd7ccae00:	45 85 db                                        	test   r11d,r11d
    22bdd7ccae03:	0f 85 b6 00 00 00                               	jne    0x22bdd7ccaebf
    22bdd7ccae09:	47 8b bc 20 30 05 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x530]
    22bdd7ccae11:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    22bdd7ccae1a:	0f 85 9f 00 00 00                               	jne    0x22bdd7ccaebf
    22bdd7ccae20:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    22bdd7ccae28:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    22bdd7ccae31:	0f 85 88 00 00 00                               	jne    0x22bdd7ccaebf
    22bdd7ccae37:	47 8b bc 20 70 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3770]
    22bdd7ccae3f:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    22bdd7ccae48:	0f 85 71 00 00 00                               	jne    0x22bdd7ccaebf
    22bdd7ccae4e:	47 8b bc 20 74 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3774]
    22bdd7ccae56:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    22bdd7ccae5f:	0f 85 5a 00 00 00                               	jne    0x22bdd7ccaebf
    22bdd7ccae65:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    22bdd7ccae69:	41 8b d7                                        	mov    edx,r15d
    22bdd7ccae6c:	4c 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r11
    22bdd7ccae73:	45 8b 9c 10 30 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x130]
    22bdd7ccae7b:	41 83 bc 10 30 01 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x130],0x0
    22bdd7ccae84:	0f 84 16 00 00 00                               	je     0x22bdd7ccaea0
    22bdd7ccae8a:	45 8b 9c 10 34 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x134]
    22bdd7ccae92:	41 83 eb 01                                     	sub    r11d,0x1
    22bdd7ccae96:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccae9a:	0f 87 11 00 00 00                               	ja     0x22bdd7ccaeb1
    22bdd7ccaea0:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ccaea5:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    22bdd7ccaeac:	e9 10 00 00 00                                  	jmp    0x22bdd7ccaec1
    22bdd7ccaeb1:	33 d2                                           	xor    edx,edx
    22bdd7ccaeb3:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    22bdd7ccaeba:	e9 02 00 00 00                                  	jmp    0x22bdd7ccaec1
    22bdd7ccaebf:	33 d2                                           	xor    edx,edx
    22bdd7ccaec1:	4c 8b bd 30 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xd0]
    22bdd7ccaec8:	4c 0f af bd 08 ff ff ff                         	imul   r15,QWORD PTR [rbp-0xf8]
    22bdd7ccaed0:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    22bdd7ccaed7:	48 8b 55 88                                     	mov    rdx,QWORD PTR [rbp-0x78]
    22bdd7ccaedb:	48 0f af 95 18 ff ff ff                         	imul   rdx,QWORD PTR [rbp-0xe8]
    22bdd7ccaee3:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    22bdd7ccaeea:	48 8b 95 10 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xf0]
    22bdd7ccaef1:	48 0f af d0                                     	imul   rdx,rax
    22bdd7ccaef5:	48 8b 85 78 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x88]
    22bdd7ccaefc:	48 0f af c7                                     	imul   rax,rdi
    22bdd7ccaf00:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    22bdd7ccaf07:	48 0f af fe                                     	imul   rdi,rsi
    22bdd7ccaf0b:	48 8b b5 28 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xd8]
    22bdd7ccaf12:	48 0f af f1                                     	imul   rsi,rcx
    22bdd7ccaf16:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7ccaf1b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7ccaf21:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7ccaf27:	c4 41 2a 5e c9                                  	vdivss xmm9,xmm10,xmm9
    22bdd7ccaf2c:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    22bdd7ccaf31:	48 8b 8d 10 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1f0]
    22bdd7ccaf38:	c4 41 7a 10 64 08 1c                            	vmovss xmm12,DWORD PTR [r8+rcx*1+0x1c]
    22bdd7ccaf3f:	48 89 7d 88                                     	mov    QWORD PTR [rbp-0x78],rdi
    22bdd7ccaf43:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    22bdd7ccaf4a:	c4 41 7a 10 6c 38 1c                            	vmovss xmm13,DWORD PTR [r8+rdi*1+0x1c]
    22bdd7ccaf51:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    22bdd7ccaf58:	c4 41 7a 10 74 08 1c                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x1c]
    22bdd7ccaf5f:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    22bdd7ccaf66:	48 8b bd 58 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa8]
    22bdd7ccaf6d:	48 03 f9                                        	add    rdi,rcx
    22bdd7ccaf70:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    22bdd7ccaf77:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    22bdd7ccaf7e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    22bdd7ccaf85:	48 03 f9                                        	add    rdi,rcx
    22bdd7ccaf88:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    22bdd7ccaf8f:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    22bdd7ccaf96:	48 8b 8d 48 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb8]
    22bdd7ccaf9d:	48 03 f9                                        	add    rdi,rcx
    22bdd7ccafa0:	48 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rdi
    22bdd7ccafa7:	48 8b bd b0 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x150]
    22bdd7ccafae:	48 8b 4d 98                                     	mov    rcx,QWORD PTR [rbp-0x68]
    22bdd7ccafb2:	48 03 f9                                        	add    rdi,rcx
    22bdd7ccafb5:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    22bdd7ccafb9:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    22bdd7ccafc0:	48 8b 8d c8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x138]
    22bdd7ccafc7:	48 03 f9                                        	add    rdi,rcx
    22bdd7ccafca:	49 03 d9                                        	add    rbx,r9
    22bdd7ccafcd:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    22bdd7ccafd1:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    22bdd7ccafd9:	c5 7b 11 8d 28 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d8],xmm9
    22bdd7ccafe1:	c5 7b 11 a5 e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm12
    22bdd7ccafe9:	c5 7b 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm13
    22bdd7ccaff1:	c5 7b 11 b5 18 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1e8],xmm14
    22bdd7ccaff9:	4c 89 8d 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],r9
    22bdd7ccb000:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    22bdd7ccb009:	0f 85 0a 00 00 00                               	jne    0x22bdd7ccb019
    22bdd7ccb00f:	33 c9                                           	xor    ecx,ecx
    22bdd7ccb011:	44 8b d9                                        	mov    r11d,ecx
    22bdd7ccb014:	e9 47 01 00 00                                  	jmp    0x22bdd7ccb160
    22bdd7ccb019:	43 8b 8c 20 c8 3c 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x3cc8]
    22bdd7ccb021:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    22bdd7ccb02a:	75 e3                                           	jne    0x22bdd7ccb00f
    22bdd7ccb02c:	43 8b 8c 20 ec 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xec]
    22bdd7ccb034:	43 83 bc 20 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xec],0x0
    22bdd7ccb03d:	75 d0                                           	jne    0x22bdd7ccb00f
    22bdd7ccb03f:	43 8b 8c 20 80 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x80]
    22bdd7ccb047:	47 0b 9c 20 80 00 00 00                         	or     r11d,DWORD PTR [r8+r12*1+0x80]
    22bdd7ccb04f:	0f 85 5c 00 00 00                               	jne    0x22bdd7ccb0b1
    22bdd7ccb055:	47 8b 9c 20 30 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x530]
    22bdd7ccb05d:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    22bdd7ccb066:	0f 85 45 00 00 00                               	jne    0x22bdd7ccb0b1
    22bdd7ccb06c:	47 8b 9c 20 70 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3770]
    22bdd7ccb074:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    22bdd7ccb07d:	0f 85 2e 00 00 00                               	jne    0x22bdd7ccb0b1
    22bdd7ccb083:	47 8b 9c 20 74 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3774]
    22bdd7ccb08b:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    22bdd7ccb094:	0f 85 17 00 00 00                               	jne    0x22bdd7ccb0b1
    22bdd7ccb09a:	47 8b 9c 20 20 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x520]
    22bdd7ccb0a2:	43 83 bc 20 20 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x520],0x0
    22bdd7ccb0ab:	0f 85 0d 00 00 00                               	jne    0x22bdd7ccb0be
    22bdd7ccb0b1:	b9 01 00 00 00                                  	mov    ecx,0x1
    22bdd7ccb0b6:	45 33 db                                        	xor    r11d,r11d
    22bdd7ccb0b9:	e9 a2 00 00 00                                  	jmp    0x22bdd7ccb160
    22bdd7ccb0be:	47 8b 9c 20 24 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x524]
    22bdd7ccb0c6:	43 83 bc 20 24 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x524],0x0
    22bdd7ccb0cf:	74 e0                                           	je     0x22bdd7ccb0b1
    22bdd7ccb0d1:	47 8b 9c 20 28 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x528]
    22bdd7ccb0d9:	43 83 bc 20 28 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x528],0x0
    22bdd7ccb0e2:	74 cd                                           	je     0x22bdd7ccb0b1
    22bdd7ccb0e4:	47 8b 9c 20 2c 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x52c]
    22bdd7ccb0ec:	43 83 bc 20 2c 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x52c],0x0
    22bdd7ccb0f5:	74 ba                                           	je     0x22bdd7ccb0b1
    22bdd7ccb0f7:	47 8b 5c 20 74                                  	mov    r11d,DWORD PTR [r8+r12*1+0x74]
    22bdd7ccb0fc:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    22bdd7ccb102:	0f 85 0d 00 00 00                               	jne    0x22bdd7ccb115
    22bdd7ccb108:	b9 01 00 00 00                                  	mov    ecx,0x1
    22bdd7ccb10d:	44 8b d9                                        	mov    r11d,ecx
    22bdd7ccb110:	e9 4b 00 00 00                                  	jmp    0x22bdd7ccb160
    22bdd7ccb115:	47 8b 5c 20 78                                  	mov    r11d,DWORD PTR [r8+r12*1+0x78]
    22bdd7ccb11a:	33 c9                                           	xor    ecx,ecx
    22bdd7ccb11c:	41 81 fb 02 03 00 00                            	cmp    r11d,0x302
    22bdd7ccb123:	0f 95 c1                                        	setne  cl
    22bdd7ccb126:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccb12a:	41 0f 95 c3                                     	setne  r11b
    22bdd7ccb12e:	45 0f b6 db                                     	movzx  r11d,r11b
    22bdd7ccb132:	44 85 d9                                        	test   ecx,r11d
    22bdd7ccb135:	0f 85 76 ff ff ff                               	jne    0x22bdd7ccb0b1
    22bdd7ccb13b:	47 8b 5c 20 7c                                  	mov    r11d,DWORD PTR [r8+r12*1+0x7c]
    22bdd7ccb140:	33 c9                                           	xor    ecx,ecx
    22bdd7ccb142:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccb146:	0f 94 c1                                        	sete   cl
    22bdd7ccb149:	41 81 fb 03 03 00 00                            	cmp    r11d,0x303
    22bdd7ccb150:	41 0f 94 c3                                     	sete   r11b
    22bdd7ccb154:	45 0f b6 db                                     	movzx  r11d,r11b
    22bdd7ccb158:	44 0b d9                                        	or     r11d,ecx
    22bdd7ccb15b:	b9 01 00 00 00                                  	mov    ecx,0x1
    22bdd7ccb160:	4c 8b 85 30 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd0]
    22bdd7ccb167:	4d 2b c7                                        	sub    r8,r15
    22bdd7ccb16a:	48 2b c2                                        	sub    rax,rdx
    22bdd7ccb16d:	48 2b 75 88                                     	sub    rsi,QWORD PTR [rbp-0x78]
    22bdd7ccb171:	44 8b 7d c8                                     	mov    r15d,DWORD PTR [rbp-0x38]
    22bdd7ccb175:	41 8d 97 dc 36 00 00                            	lea    edx,[r15+0x36dc]
    22bdd7ccb17c:	4c 89 9d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],r11
    22bdd7ccb183:	45 8d 9f 68 36 00 00                            	lea    r11d,[r15+0x3668]
    22bdd7ccb18a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    22bdd7ccb191:	41 8d 97 f4 35 00 00                            	lea    edx,[r15+0x35f4]
    22bdd7ccb198:	4c 8b 8d 20 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe0]
    22bdd7ccb19f:	49 c1 e1 09                                     	shl    r9,0x9
    22bdd7ccb1a3:	48 89 8d 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rcx
    22bdd7ccb1aa:	48 8b 8d 18 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xe8]
    22bdd7ccb1b1:	48 c1 e1 09                                     	shl    rcx,0x9
    22bdd7ccb1b5:	4c 89 85 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r8
    22bdd7ccb1bc:	4c 8b 45 90                                     	mov    r8,QWORD PTR [rbp-0x70]
    22bdd7ccb1c0:	49 c1 e0 09                                     	shl    r8,0x9
    22bdd7ccb1c4:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    22bdd7ccb1cb:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    22bdd7ccb1d2:	48 c1 e6 09                                     	shl    rsi,0x9
    22bdd7ccb1d6:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    22bdd7ccb1da:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    22bdd7ccb1e1:	49 c1 e0 09                                     	shl    r8,0x9
    22bdd7ccb1e5:	48 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rax
    22bdd7ccb1ec:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    22bdd7ccb1f3:	48 c1 e0 09                                     	shl    rax,0x9
    22bdd7ccb1f7:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    22bdd7ccb1fe:	4c 8b 8d f8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x308]
    22bdd7ccb205:	4c 2b 8d f0 fc ff ff                            	sub    r9,QWORD PTR [rbp-0x310]
    22bdd7ccb20c:	4c 89 9d 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],r11
    22bdd7ccb213:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    22bdd7ccb21a:	4c 2b 9d d0 fc ff ff                            	sub    r11,QWORD PTR [rbp-0x330]
    22bdd7ccb221:	4c 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r8
    22bdd7ccb228:	44 8b 45 b0                                     	mov    r8d,DWORD PTR [rbp-0x50]
    22bdd7ccb22c:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    22bdd7ccb233:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    22bdd7ccb237:	44 8b 45 b8                                     	mov    r8d,DWORD PTR [rbp-0x48]
    22bdd7ccb23b:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    22bdd7ccb242:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    22bdd7ccb246:	44 8b 45 c0                                     	mov    r8d,DWORD PTR [rbp-0x40]
    22bdd7ccb24a:	4c 89 9d 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],r11
    22bdd7ccb251:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    22bdd7ccb255:	45 8d 87 80 35 00 00                            	lea    r8d,[r15+0x3580]
    22bdd7ccb25c:	4c 89 85 b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r8
    22bdd7ccb263:	45 8d 87 cc 3c 00 00                            	lea    r8d,[r15+0x3ccc]
    22bdd7ccb26a:	48 f7 d7                                        	not    rdi
    22bdd7ccb26d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    22bdd7ccb274:	49 f7 d7                                        	not    r15
    22bdd7ccb277:	48 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rdi
    22bdd7ccb27e:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    22bdd7ccb285:	48 f7 d7                                        	not    rdi
    22bdd7ccb288:	48 f7 db                                        	neg    rbx
    22bdd7ccb28b:	48 89 9d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rbx
    22bdd7ccb292:	48 8b 9d 70 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x90]
    22bdd7ccb299:	48 f7 db                                        	neg    rbx
    22bdd7ccb29c:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    22bdd7ccb2a3:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    22bdd7ccb2a7:	48 f7 df                                        	neg    rdi
    22bdd7ccb2aa:	48 89 bd 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],rdi
    22bdd7ccb2b1:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ccb2b4:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    22bdd7ccb2bb:	44 8d 47 30                                     	lea    r8d,[rdi+0x30]
    22bdd7ccb2bf:	4c 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],r8
    22bdd7ccb2c6:	44 8d 47 20                                     	lea    r8d,[rdi+0x20]
    22bdd7ccb2ca:	4c 89 85 b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r8
    22bdd7ccb2d1:	44 8d 47 10                                     	lea    r8d,[rdi+0x10]
    22bdd7ccb2d5:	c5 79 7e df                                     	vmovd  edi,xmm11
    22bdd7ccb2d9:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    22bdd7ccb2e0:	c4 63 79 16 df 01                               	vpextrd edi,xmm11,0x1
    22bdd7ccb2e6:	c4 62 79 18 de                                  	vbroadcastss xmm11,xmm6
    22bdd7ccb2eb:	c4 c2 79 18 cc                                  	vbroadcastss xmm1,xmm12
    22bdd7ccb2f0:	c4 c2 79 18 dd                                  	vbroadcastss xmm3,xmm13
    22bdd7ccb2f5:	c4 c2 79 18 e6                                  	vbroadcastss xmm4,xmm14
    22bdd7ccb2fa:	c4 c2 79 18 e9                                  	vbroadcastss xmm5,xmm9
    22bdd7ccb2ff:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    22bdd7ccb306:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    22bdd7ccb30a:	48 89 b5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rsi
    22bdd7ccb311:	48 89 85 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rax
    22bdd7ccb318:	4c 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r9
    22bdd7ccb31f:	4c 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r11
    22bdd7ccb326:	4c 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r15
    22bdd7ccb32d:	48 89 9d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rbx
    22bdd7ccb334:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    22bdd7ccb33b:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    22bdd7ccb33f:	c5 78 11 9d 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm11
    22bdd7ccb347:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    22bdd7ccb34f:	c5 f8 11 9d 10 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2f0],xmm3
    22bdd7ccb357:	c5 f8 11 a5 e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm4
    22bdd7ccb35f:	c5 f8 11 ad 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm5
    22bdd7ccb367:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7ccb36b:	e9 2d 00 00 00                                  	jmp    0x22bdd7ccb39d
    22bdd7ccb370:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccb379:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    22bdd7ccb380:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    22bdd7ccb387:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    22bdd7ccb38e:	4c 89 bd 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r15
    22bdd7ccb395:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccb399:	4c 89 65 d8                                     	mov    QWORD PTR [rbp-0x28],r12
    22bdd7ccb39d:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    22bdd7ccb3a1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ccb3a6:	0f 85 96 7d 00 00                               	jne    0x22bdd7cd3142
    22bdd7ccb3ac:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
    22bdd7ccb3b0:	b8 0f 00 00 00                                  	mov    eax,0xf
    22bdd7ccb3b5:	be 03 00 00 00                                  	mov    esi,0x3
    22bdd7ccb3ba:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    22bdd7ccb3be:	0f 4c f0                                        	cmovl  esi,eax
    22bdd7ccb3c1:	46 8d 1c 8d 00 00 00 00                         	lea    r11d,[r9*4+0x0]
    22bdd7ccb3c9:	41 83 e3 7c                                     	and    r11d,0x7c
    22bdd7ccb3cd:	46 8d 0c 85 00 00 00 00                         	lea    r9d,[r8*4+0x0]
    22bdd7ccb3d5:	41 83 e1 7c                                     	and    r9d,0x7c
    22bdd7ccb3d9:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    22bdd7ccb3e0:	48 89 b5 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rsi
    22bdd7ccb3e7:	4c 89 9d 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r11
    22bdd7ccb3ee:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    22bdd7ccb3f5:	4c 8b 95 38 fc ff ff                            	mov    r10,QWORD PTR [rbp-0x3c8]
    22bdd7ccb3fc:	4c 89 95 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],r10
    22bdd7ccb403:	4c 8b 95 10 ff ff ff                            	mov    r10,QWORD PTR [rbp-0xf0]
    22bdd7ccb40a:	4c 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r10
    22bdd7ccb411:	4c 8b c8                                        	mov    r9,rax
    22bdd7ccb414:	48 8b 85 80 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x380]
    22bdd7ccb41b:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    22bdd7ccb41f:	e9 31 00 00 00                                  	jmp    0x22bdd7ccb455
    22bdd7ccb424:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccb42d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccb436:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccb43f:	90                                              	nop
    22bdd7ccb440:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    22bdd7ccb447:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    22bdd7ccb44e:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccb452:	45 8b c3                                        	mov    r8d,r11d
    22bdd7ccb455:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    22bdd7ccb45c:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    22bdd7ccb463:	4c 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r8
    22bdd7ccb46a:	48 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rax
    22bdd7ccb471:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ccb476:	0f 85 0f 7d 00 00                               	jne    0x22bdd7cd318b
    22bdd7ccb47c:	48 8b f0                                        	mov    rsi,rax
    22bdd7ccb47f:	48 2b b5 98 fc ff ff                            	sub    rsi,QWORD PTR [rbp-0x368]
    22bdd7ccb486:	48 3b b5 20 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x3e0]
    22bdd7ccb48d:	0f 8c 4b 02 00 00                               	jl     0x22bdd7ccb6de
    22bdd7ccb493:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    22bdd7ccb49a:	4c 2b a5 30 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x3d0]
    22bdd7ccb4a1:	4c 3b a5 90 fd ff ff                            	cmp    r12,QWORD PTR [rbp-0x270]
    22bdd7ccb4a8:	0f 8c 30 02 00 00                               	jl     0x22bdd7ccb6de
    22bdd7ccb4ae:	4c 8b bd 40 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc0]
    22bdd7ccb4b5:	4c 2b bd 28 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x3d8]
    22bdd7ccb4bc:	4c 3b bd 48 fc ff ff                            	cmp    r15,QWORD PTR [rbp-0x3b8]
    22bdd7ccb4c3:	0f 8c 15 02 00 00                               	jl     0x22bdd7ccb6de
    22bdd7ccb4c9:	41 8d 40 01                                     	lea    eax,[r8+0x1]
    22bdd7ccb4cd:	41 b8 05 00 00 00                               	mov    r8d,0x5
    22bdd7ccb4d3:	3b 85 70 ff ff ff                               	cmp    eax,DWORD PTR [rbp-0x90]
    22bdd7ccb4d9:	45 0f 4c c1                                     	cmovl  r8d,r9d
    22bdd7ccb4dd:	8b 9d 60 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a0]
    22bdd7ccb4e3:	41 23 d8                                        	and    ebx,r8d
    22bdd7ccb4e6:	48 3b b5 68 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x398]
    22bdd7ccb4ed:	0f 8e 29 00 00 00                               	jle    0x22bdd7ccb51c
    22bdd7ccb4f3:	4c 3b a5 c0 fe ff ff                            	cmp    r12,QWORD PTR [rbp-0x140]
    22bdd7ccb4fa:	0f 8e 1c 00 00 00                               	jle    0x22bdd7ccb51c
    22bdd7ccb500:	4d 3b df                                        	cmp    r11,r15
    22bdd7ccb503:	0f 8d 13 00 00 00                               	jge    0x22bdd7ccb51c
    22bdd7ccb509:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    22bdd7ccb510:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    22bdd7ccb517:	e9 d7 01 00 00                                  	jmp    0x22bdd7ccb6f3
    22bdd7ccb51c:	c4 c1 f9 6e c4                                  	vmovq  xmm0,r12
    22bdd7ccb521:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    22bdd7ccb525:	4d 8b c4                                        	mov    r8,r12
    22bdd7ccb528:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    22bdd7ccb52f:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    22bdd7ccb535:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    22bdd7ccb539:	c5 c1 73 f7 1f                                  	vpsllq xmm7,xmm7,0x1f
    22bdd7ccb53e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ccb542:	c4 62 79 37 df                                  	vpcmpgtq xmm11,xmm0,xmm7
    22bdd7ccb547:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    22bdd7ccb54b:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    22bdd7ccb550:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ccb555:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    22bdd7ccb55a:	c4 c1 21 73 d3 21                               	vpsrlq xmm11,xmm11,0x21
    22bdd7ccb560:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    22bdd7ccb565:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    22bdd7ccb56a:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    22bdd7ccb56f:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    22bdd7ccb573:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ccb578:	4c 03 e7                                        	add    r12,rdi
    22bdd7ccb57b:	c4 c1 f9 6e cc                                  	vmovq  xmm1,r12
    22bdd7ccb580:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    22bdd7ccb584:	4c 03 c7                                        	add    r8,rdi
    22bdd7ccb587:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    22bdd7ccb58d:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    22bdd7ccb592:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    22bdd7ccb596:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    22bdd7ccb59a:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7ccb59f:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    22bdd7ccb5a4:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    22bdd7ccb5a9:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    22bdd7ccb5ad:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7ccb5b2:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    22bdd7ccb5b7:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    22bdd7ccb5bb:	c4 e1 f9 6e c6                                  	vmovq  xmm0,rsi
    22bdd7ccb5c0:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    22bdd7ccb5c4:	4c 8b e6                                        	mov    r12,rsi
    22bdd7ccb5c7:	4c 2b a5 d0 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x330]
    22bdd7ccb5ce:	c4 c3 f9 22 c4 01                               	vpinsrq xmm0,xmm0,r12,0x1
    22bdd7ccb5d4:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    22bdd7ccb5d9:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    22bdd7ccb5dd:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    22bdd7ccb5e1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ccb5e6:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    22bdd7ccb5eb:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    22bdd7ccb5f0:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    22bdd7ccb5f4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ccb5f9:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    22bdd7ccb600:	48 03 f7                                        	add    rsi,rdi
    22bdd7ccb603:	c4 e1 f9 6e ce                                  	vmovq  xmm1,rsi
    22bdd7ccb608:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    22bdd7ccb60c:	4c 03 e7                                        	add    r12,rdi
    22bdd7ccb60f:	c4 c3 f1 22 cc 01                               	vpinsrq xmm1,xmm1,r12,0x1
    22bdd7ccb615:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    22bdd7ccb61a:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    22bdd7ccb61e:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    22bdd7ccb622:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7ccb627:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    22bdd7ccb62c:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    22bdd7ccb631:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    22bdd7ccb635:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    22bdd7ccb63a:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    22bdd7ccb63f:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    22bdd7ccb643:	45 0b e0                                        	or     r12d,r8d
    22bdd7ccb646:	c4 c1 f9 6e c7                                  	vmovq  xmm0,r15
    22bdd7ccb64b:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    22bdd7ccb64f:	4d 8b c7                                        	mov    r8,r15
    22bdd7ccb652:	4c 2b 85 e8 fe ff ff                            	sub    r8,QWORD PTR [rbp-0x118]
    22bdd7ccb659:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    22bdd7ccb65f:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    22bdd7ccb664:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    22bdd7ccb668:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    22bdd7ccb66c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ccb671:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    22bdd7ccb676:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    22bdd7ccb67b:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    22bdd7ccb67f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ccb684:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    22bdd7ccb68b:	4c 03 fe                                        	add    r15,rsi
    22bdd7ccb68e:	c4 c1 f9 6e cf                                  	vmovq  xmm1,r15
    22bdd7ccb693:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    22bdd7ccb697:	4c 03 c6                                        	add    r8,rsi
    22bdd7ccb69a:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    22bdd7ccb6a0:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    22bdd7ccb6a5:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    22bdd7ccb6a9:	c5 f1 db fa                                     	vpand  xmm7,xmm1,xmm2
    22bdd7ccb6ad:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ccb6b2:	c4 e2 21 37 cf                                  	vpcmpgtq xmm1,xmm11,xmm7
    22bdd7ccb6b7:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    22bdd7ccb6bc:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    22bdd7ccb6c0:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7ccb6c5:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    22bdd7ccb6ca:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    22bdd7ccb6ce:	45 0b c4                                        	or     r8d,r12d
    22bdd7ccb6d1:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    22bdd7ccb6d5:	44 23 c3                                        	and    r8d,ebx
    22bdd7ccb6d8:	0f 85 12 00 00 00                               	jne    0x22bdd7ccb6f0
    22bdd7ccb6de:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7ccb6e2:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ccb6e6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccb6eb:	e9 ba 77 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7ccb6f0:	49 8b d8                                        	mov    rbx,r8
    22bdd7ccb6f3:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ccb6f6:	3b 45 10                                        	cmp    eax,DWORD PTR [rbp+0x10]
    22bdd7ccb6f9:	41 0f 9c c0                                     	setl   r8b
    22bdd7ccb6fd:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    22bdd7ccb704:	48 89 9d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],rbx
    22bdd7ccb70b:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    22bdd7ccb712:	45 85 e0                                        	test   r8d,r12d
    22bdd7ccb715:	0f 85 6d 5b 00 00                               	jne    0x22bdd7cd1288
    22bdd7ccb71b:	83 bd 78 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x388],0x0
    22bdd7ccb722:	0f 85 70 2a 00 00                               	jne    0x22bdd7cce198
    22bdd7ccb728:	f6 c3 01                                        	test   bl,0x1
    22bdd7ccb72b:	0f 85 28 00 00 00                               	jne    0x22bdd7ccb759
    22bdd7ccb731:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7ccb735:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    22bdd7ccb73b:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    22bdd7ccb73f:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    22bdd7ccb746:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    22bdd7ccb74d:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    22bdd7ccb754:	e9 86 0a 00 00                                  	jmp    0x22bdd7ccc1df
    22bdd7ccb759:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7ccb75d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    22bdd7ccb761:	43 8b bc 07 c8 3c 00 00                         	mov    edi,DWORD PTR [r15+r8*1+0x3cc8]
    22bdd7ccb769:	43 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0x3cc8],0x0
    22bdd7ccb772:	0f 84 66 00 00 00                               	je     0x22bdd7ccb7de
    22bdd7ccb778:	8b bd 68 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x98]
    22bdd7ccb77e:	c1 ef 03                                        	shr    edi,0x3
    22bdd7ccb781:	83 e7 03                                        	and    edi,0x3
    22bdd7ccb784:	0b bd 70 fc ff ff                               	or     edi,DWORD PTR [rbp-0x390]
    22bdd7ccb78a:	44 8b 9d 58 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3a8]
    22bdd7ccb791:	41 03 fb                                        	add    edi,r11d
    22bdd7ccb794:	41 0f b6 3c 3f                                  	movzx  edi,BYTE PTR [r15+rdi*1]
    22bdd7ccb799:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    22bdd7ccb7a0:	41 83 e3 07                                     	and    r11d,0x7
    22bdd7ccb7a4:	41 8b cb                                        	mov    ecx,r11d
    22bdd7ccb7a7:	d3 e7                                           	shl    edi,cl
    22bdd7ccb7a9:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    22bdd7ccb7ad:	40 f6 c7 80                                     	test   dil,0x80
    22bdd7ccb7b1:	0f 85 20 00 00 00                               	jne    0x22bdd7ccb7d7
    22bdd7ccb7b7:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    22bdd7ccb7bd:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    22bdd7ccb7c4:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    22bdd7ccb7cb:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    22bdd7ccb7d2:	e9 08 0a 00 00                                  	jmp    0x22bdd7ccc1df
    22bdd7ccb7d7:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    22bdd7ccb7de:	c4 e1 82 2a 85 60 ff ff ff                      	vcvtsi2ss xmm0,xmm15,QWORD PTR [rbp-0xa0]
    22bdd7ccb7e7:	c5 b2 59 c0                                     	vmulss xmm0,xmm9,xmm0
    22bdd7ccb7eb:	c5 8a 59 c8                                     	vmulss xmm1,xmm14,xmm0
    22bdd7ccb7ef:	c4 e1 82 2a bd 50 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xb0]
    22bdd7ccb7f8:	c5 b2 59 ff                                     	vmulss xmm7,xmm9,xmm7
    22bdd7ccb7fc:	c5 92 59 d7                                     	vmulss xmm2,xmm13,xmm7
    22bdd7ccb800:	c5 72 58 da                                     	vaddss xmm11,xmm1,xmm2
    22bdd7ccb804:	c5 2a 5c c8                                     	vsubss xmm9,xmm10,xmm0
    22bdd7ccb808:	c5 32 5c cf                                     	vsubss xmm9,xmm9,xmm7
    22bdd7ccb80c:	c4 41 1a 59 e9                                  	vmulss xmm13,xmm12,xmm9
    22bdd7ccb811:	c4 41 22 58 dd                                  	vaddss xmm11,xmm11,xmm13
    22bdd7ccb816:	c4 41 78 2e c3                                  	vucomiss xmm8,xmm11
    22bdd7ccb81b:	73 9a                                           	jae    0x22bdd7ccb7b7
    22bdd7ccb81d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    22bdd7ccb824:	c4 41 32 59 4c 3f 18                            	vmulss xmm9,xmm9,DWORD PTR [r15+rdi*1+0x18]
    22bdd7ccb82b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    22bdd7ccb832:	c4 c1 7a 59 44 0f 18                            	vmulss xmm0,xmm0,DWORD PTR [r15+rcx*1+0x18]
    22bdd7ccb839:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    22bdd7ccb840:	c4 81 42 59 7c 1f 18                            	vmulss xmm7,xmm7,DWORD PTR [r15+r11*1+0x18]
    22bdd7ccb847:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    22bdd7ccb84b:	c5 b2 58 c0                                     	vaddss xmm0,xmm9,xmm0
    22bdd7ccb84f:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    22bdd7ccb853:	47 8b 64 07 68                                  	mov    r12d,DWORD PTR [r15+r8*1+0x68]
    22bdd7ccb858:	43 83 7c 07 68 00                               	cmp    DWORD PTR [r15+r8*1+0x68],0x0
    22bdd7ccb85e:	0f 85 0b 00 00 00                               	jne    0x22bdd7ccb86f
    22bdd7ccb864:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    22bdd7ccb86a:	e9 c5 00 00 00                                  	jmp    0x22bdd7ccb934
    22bdd7ccb86f:	47 8b a4 07 a4 00 00 00                         	mov    r12d,DWORD PTR [r15+r8*1+0xa4]
    22bdd7ccb877:	43 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0xa4],0x0
    22bdd7ccb880:	75 e2                                           	jne    0x22bdd7ccb864
    22bdd7ccb882:	47 8b 64 07 0c                                  	mov    r12d,DWORD PTR [r15+r8*1+0xc]
    22bdd7ccb887:	43 8b 04 07                                     	mov    eax,DWORD PTR [r15+r8*1]
    22bdd7ccb88b:	0f af 45 a0                                     	imul   eax,DWORD PTR [rbp-0x60]
    22bdd7ccb88f:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    22bdd7ccb893:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    22bdd7ccb899:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    22bdd7ccb89d:	c4 81 7a 10 3c 27                               	vmovss xmm7,DWORD PTR [r15+r12*1]
    22bdd7ccb8a3:	47 8b 64 07 6c                                  	mov    r12d,DWORD PTR [r15+r8*1+0x6c]
    22bdd7ccb8a8:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    22bdd7ccb8af:	41 83 fc 08                                     	cmp    r12d,0x8
    22bdd7ccb8b3:	0f 83 0b 00 00 00                               	jae    0x22bdd7ccb8c4
    22bdd7ccb8b9:	4c 8d 15 e8 7c 00 00                            	lea    r10,[rip+0x7ce8]        # 0x22bdd7cd35a8
    22bdd7ccb8c0:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    22bdd7ccb8c4:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ccb8c8:	0f 87 66 00 00 00                               	ja     0x22bdd7ccb934
    22bdd7ccb8ce:	e9 0c 09 00 00                                  	jmp    0x22bdd7ccc1df
    22bdd7ccb8d3:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    22bdd7ccb8d7:	0f 83 57 00 00 00                               	jae    0x22bdd7ccb934
    22bdd7ccb8dd:	e9 fd 08 00 00                                  	jmp    0x22bdd7ccc1df
    22bdd7ccb8e2:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    22bdd7ccb8e6:	0f 8a 48 00 00 00                               	jp     0x22bdd7ccb934
    22bdd7ccb8ec:	0f 84 ed 08 00 00                               	je     0x22bdd7ccc1df
    22bdd7ccb8f2:	e9 3d 00 00 00                                  	jmp    0x22bdd7ccb934
    22bdd7ccb8f7:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    22bdd7ccb8fb:	0f 87 33 00 00 00                               	ja     0x22bdd7ccb934
    22bdd7ccb901:	e9 d9 08 00 00                                  	jmp    0x22bdd7ccc1df
    22bdd7ccb906:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ccb90a:	0f 83 24 00 00 00                               	jae    0x22bdd7ccb934
    22bdd7ccb910:	e9 ca 08 00 00                                  	jmp    0x22bdd7ccc1df
    22bdd7ccb915:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    22bdd7ccb919:	0f 8a c0 08 00 00                               	jp     0x22bdd7ccc1df
    22bdd7ccb91f:	0f 84 0f 00 00 00                               	je     0x22bdd7ccb934
    22bdd7ccb925:	e9 b5 08 00 00                                  	jmp    0x22bdd7ccc1df
    22bdd7ccb92a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ccb92e:	0f 86 ab 08 00 00                               	jbe    0x22bdd7ccc1df
    22bdd7ccb934:	c4 c1 2a 5e fb                                  	vdivss xmm7,xmm10,xmm11
    22bdd7ccb939:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    22bdd7ccb93d:	c4 62 79 18 cf                                  	vbroadcastss xmm9,xmm7
    22bdd7ccb942:	c4 41 7a 6f 5c 3f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rdi*1+0x20]
    22bdd7ccb949:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    22bdd7ccb951:	c4 c2 79 18 c5                                  	vbroadcastss xmm0,xmm13
    22bdd7ccb956:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    22bdd7ccb95a:	c4 41 7a 6f 5c 0f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rcx*1+0x20]
    22bdd7ccb961:	c4 e2 79 18 f1                                  	vbroadcastss xmm6,xmm1
    22bdd7ccb966:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    22bdd7ccb96a:	c4 62 79 18 da                                  	vbroadcastss xmm11,xmm2
    22bdd7ccb96f:	c5 fb 11 bd 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm7
    22bdd7ccb977:	c4 81 7a 6f 7c 1f 20                            	vmovdqu xmm7,XMMWORD PTR [r15+r11*1+0x20]
    22bdd7ccb97e:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    22bdd7ccb982:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    22bdd7ccb986:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ccb98a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ccb98e:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    22bdd7ccb992:	c4 81 7a 7f 84 27 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+r12*1+0x190],xmm0
    22bdd7ccb99c:	c4 c1 7a 10 b4 3f 98 00 00 00                   	vmovss xmm6,DWORD PTR [r15+rdi*1+0x98]
    22bdd7ccb9a6:	c4 c1 7a 10 bc 0f 98 00 00 00                   	vmovss xmm7,DWORD PTR [r15+rcx*1+0x98]
    22bdd7ccb9b0:	c4 01 7a 10 8c 1f 98 00 00 00                   	vmovss xmm9,DWORD PTR [r15+r11*1+0x98]
    22bdd7ccb9ba:	c4 81 7a 7f 04 27                               	vmovdqu XMMWORD PTR [r15+r12*1],xmm0
    22bdd7ccb9c0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccb9c7:	45 8b 84 3f 34 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x134]
    22bdd7ccb9cf:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    22bdd7ccb9d3:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    22bdd7ccb9db:	c5 fb 11 8d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm1
    22bdd7ccb9e3:	c5 7b 11 ad 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm13
    22bdd7ccb9eb:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    22bdd7ccb9f3:	c5 fb 11 bd b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm7
    22bdd7ccb9fb:	c5 7b 11 8d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm9
    22bdd7ccba03:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccba07:	0f 86 5c 04 00 00                               	jbe    0x22bdd7ccbe69
    22bdd7ccba0d:	45 8b 84 3f 30 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x130]
    22bdd7ccba15:	41 83 bc 3f 30 01 00 00 00                      	cmp    DWORD PTR [r15+rdi*1+0x130],0x0
    22bdd7ccba1e:	0f 85 0b 00 00 00                               	jne    0x22bdd7ccba2f
    22bdd7ccba24:	41 8b cc                                        	mov    ecx,r12d
    22bdd7ccba27:	4d 8b c7                                        	mov    r8,r15
    22bdd7ccba2a:	e9 f9 04 00 00                                  	jmp    0x22bdd7ccbf28
    22bdd7ccba2f:	45 8d 84 24 90 00 00 00                         	lea    r8d,[r12+0x90]
    22bdd7ccba37:	45 8d 5c 24 70                                  	lea    r11d,[r12+0x70]
    22bdd7ccba3c:	41 53                                           	push   r11
    22bdd7ccba3e:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    22bdd7ccba45:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    22bdd7ccba4c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccba50:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ccba53:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7ccba56:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    22bdd7ccba59:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7ccba5c:	c4 c1 79 28 dd                                  	vmovapd xmm3,xmm13
    22bdd7ccba61:	c5 fb 10 a5 18 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xe8]
    22bdd7ccba69:	45 8b c8                                        	mov    r9d,r8d
    22bdd7ccba6c:	e8 a7 a7 f3 ff                                  	call   0x22bdd7c06218
    22bdd7ccba71:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccba75:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccba7c:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    22bdd7ccba84:	45 85 db                                        	test   r11d,r11d
    22bdd7ccba87:	0f 85 62 01 00 00                               	jne    0x22bdd7ccbbef
    22bdd7ccba8d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccba90:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    22bdd7ccba95:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    22bdd7ccba9b:	0f 84 43 00 00 00                               	je     0x22bdd7ccbae4
    22bdd7ccbaa1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccbaa7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccbaab:	41 53                                           	push   r11
    22bdd7ccbaad:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccbab1:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    22bdd7ccbab7:	33 d2                                           	xor    edx,edx
    22bdd7ccbab9:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    22bdd7ccbac0:	e8 7b a7 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccbac5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccbac8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccbacc:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccbad3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccbadd:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccbae4:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    22bdd7ccbae9:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    22bdd7ccbaef:	0f 84 46 00 00 00                               	je     0x22bdd7ccbb3b
    22bdd7ccbaf5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccbafb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccbaff:	41 53                                           	push   r11
    22bdd7ccbb01:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccbb05:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    22bdd7ccbb0b:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ccbb10:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    22bdd7ccbb17:	e8 24 a7 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccbb1c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccbb1f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccbb23:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccbb2a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccbb34:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccbb3b:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    22bdd7ccbb40:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    22bdd7ccbb46:	0f 84 46 00 00 00                               	je     0x22bdd7ccbb92
    22bdd7ccbb4c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccbb52:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccbb56:	41 53                                           	push   r11
    22bdd7ccbb58:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccbb5c:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    22bdd7ccbb62:	ba 02 00 00 00                                  	mov    edx,0x2
    22bdd7ccbb67:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    22bdd7ccbb6e:	e8 cd a6 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccbb73:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccbb76:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccbb7a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccbb81:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccbb8b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccbb92:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    22bdd7ccbb97:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    22bdd7ccbb9d:	0f 84 85 03 00 00                               	je     0x22bdd7ccbf28
    22bdd7ccbba3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccbba9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccbbad:	41 53                                           	push   r11
    22bdd7ccbbaf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccbbb3:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    22bdd7ccbbb9:	ba 03 00 00 00                                  	mov    edx,0x3
    22bdd7ccbbbe:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    22bdd7ccbbc5:	e8 76 a6 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccbbca:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccbbcd:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    22bdd7ccbbd1:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    22bdd7ccbbd7:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    22bdd7ccbbe0:	4c 8b c7                                        	mov    r8,rdi
    22bdd7ccbbe3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccbbea:	e9 39 03 00 00                                  	jmp    0x22bdd7ccbf28
    22bdd7ccbbef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccbbf2:	4d 8b e0                                        	mov    r12,r8
    22bdd7ccbbf5:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    22bdd7ccbbff:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    22bdd7ccbc05:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ccbc0a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccbc0e:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    22bdd7ccbc15:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ccbc19:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7ccbc1d:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    22bdd7ccbc27:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ccbc2b:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    22bdd7ccbc31:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ccbc35:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    22bdd7ccbc3a:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    22bdd7ccbc44:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ccbc48:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    22bdd7ccbc4f:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    22bdd7ccbc53:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    22bdd7ccbc57:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    22bdd7ccbc5b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccbc5f:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    22bdd7ccbc65:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ccbc6a:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    22bdd7ccbc6e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ccbc72:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ccbc77:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ccbc7c:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    22bdd7ccbc80:	0f 87 09 00 00 00                               	ja     0x22bdd7ccbc8f
    22bdd7ccbc86:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ccbc8a:	e9 04 00 00 00                                  	jmp    0x22bdd7ccbc93
    22bdd7ccbc8f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccbc93:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ccbc98:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ccbc9c:	0f 87 09 00 00 00                               	ja     0x22bdd7ccbcab
    22bdd7ccbca2:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ccbca6:	e9 05 00 00 00                                  	jmp    0x22bdd7ccbcb0
    22bdd7ccbcab:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ccbcb0:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ccbcb5:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccbcb9:	0f 84 a4 00 00 00                               	je     0x22bdd7ccbd63
    22bdd7ccbcbf:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    22bdd7ccbcc3:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    22bdd7ccbccd:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccbcd1:	0f 87 09 00 00 00                               	ja     0x22bdd7ccbce0
    22bdd7ccbcd7:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccbcdb:	e9 04 00 00 00                                  	jmp    0x22bdd7ccbce4
    22bdd7ccbce0:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccbce4:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccbce8:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccbcf8
    22bdd7ccbcee:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccbcf3:	e9 05 00 00 00                                  	jmp    0x22bdd7ccbcfd
    22bdd7ccbcf8:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccbcfd:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    22bdd7ccbd01:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccbd06:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ccbd0b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccbd0f:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    22bdd7ccbd19:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7ccbd1e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7ccbd23:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ccbd27:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    22bdd7ccbd31:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7ccbd35:	0f 85 04 00 00 00                               	jne    0x22bdd7ccbd3f
    22bdd7ccbd3b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    22bdd7ccbd3f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ccbd44:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccbd48:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ccbd4c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    22bdd7ccbd56:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7ccbd5b:	4d 8b df                                        	mov    r11,r15
    22bdd7ccbd5e:	e9 cc 00 00 00                                  	jmp    0x22bdd7ccbe2f
    22bdd7ccbd63:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    22bdd7ccbd6a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccbd6e:	0f 87 09 00 00 00                               	ja     0x22bdd7ccbd7d
    22bdd7ccbd74:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccbd78:	e9 04 00 00 00                                  	jmp    0x22bdd7ccbd81
    22bdd7ccbd7d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccbd81:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccbd85:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccbd95
    22bdd7ccbd8b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccbd90:	e9 05 00 00 00                                  	jmp    0x22bdd7ccbd9a
    22bdd7ccbd95:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccbd9a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    22bdd7ccbda4:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    22bdd7ccbdaa:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    22bdd7ccbdaf:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccbdb3:	0f 87 09 00 00 00                               	ja     0x22bdd7ccbdc2
    22bdd7ccbdb9:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ccbdbd:	e9 04 00 00 00                                  	jmp    0x22bdd7ccbdc6
    22bdd7ccbdc2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ccbdc6:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccbdca:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccbdda
    22bdd7ccbdd0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ccbdd5:	e9 05 00 00 00                                  	jmp    0x22bdd7ccbddf
    22bdd7ccbdda:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccbddf:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    22bdd7ccbde9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccbdee:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccbdf2:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    22bdd7ccbdfc:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ccbe01:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7ccbe06:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ccbe0a:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x22bdd7ccbd11
    22bdd7ccbe11:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ccbe16:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ccbe1b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ccbe1f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ccbe23:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ccbe27:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ccbe2b:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ccbe2f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ccbe34:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccbe38:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x22bdd7ccbd11
    22bdd7ccbe3f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ccbe44:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ccbe49:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    22bdd7ccbe4d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    22bdd7ccbe57:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    22bdd7ccbe61:	4d 8b c4                                        	mov    r8,r12
    22bdd7ccbe64:	e9 bf 00 00 00                                  	jmp    0x22bdd7ccbf28
    22bdd7ccbe69:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    22bdd7ccbe70:	c4 81 7a 10 44 1f 50                            	vmovss xmm0,DWORD PTR [r15+r11*1+0x50]
    22bdd7ccbe77:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    22bdd7ccbe7c:	48 8b d1                                        	mov    rdx,rcx
    22bdd7ccbe7f:	c4 41 7a 10 5c 17 50                            	vmovss xmm11,DWORD PTR [r15+rdx*1+0x50]
    22bdd7ccbe86:	c5 22 59 d9                                     	vmulss xmm11,xmm11,xmm1
    22bdd7ccbe8a:	48 8b 8d 00 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x200]
    22bdd7ccbe91:	c4 c1 6a 59 74 0f 50                            	vmulss xmm6,xmm2,DWORD PTR [r15+rcx*1+0x50]
    22bdd7ccbe98:	c5 a2 58 f6                                     	vaddss xmm6,xmm11,xmm6
    22bdd7ccbe9c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccbea0:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    22bdd7ccbea8:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccbeac:	c4 01 7a 10 5c 1f 54                            	vmovss xmm11,DWORD PTR [r15+r11*1+0x54]
    22bdd7ccbeb3:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    22bdd7ccbeb8:	c5 fb 11 85 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm0
    22bdd7ccbec0:	c4 c1 7a 10 44 17 54                            	vmovss xmm0,DWORD PTR [r15+rdx*1+0x54]
    22bdd7ccbec7:	c5 fa 59 c1                                     	vmulss xmm0,xmm0,xmm1
    22bdd7ccbecb:	c4 c1 6a 59 7c 0f 54                            	vmulss xmm7,xmm2,DWORD PTR [r15+rcx*1+0x54]
    22bdd7ccbed2:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    22bdd7ccbed6:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    22bdd7ccbeda:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccbede:	41 8d bc 24 90 00 00 00                         	lea    edi,[r12+0x90]
    22bdd7ccbee6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccbeea:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ccbeed:	41 8b d0                                        	mov    edx,r8d
    22bdd7ccbef0:	c5 fb 10 8d b8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x148]
    22bdd7ccbef8:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7ccbefc:	41 8b cc                                        	mov    ecx,r12d
    22bdd7ccbeff:	8b df                                           	mov    ebx,edi
    22bdd7ccbf01:	e8 2a a6 f3 ff                                  	call   0x22bdd7c06530
    22bdd7ccbf06:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccbf09:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccbf0d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    22bdd7ccbf17:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccbf21:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccbf28:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccbf2c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    22bdd7ccbf34:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    22bdd7ccbf3d:	0f 85 2a 00 00 00                               	jne    0x22bdd7ccbf6d
    22bdd7ccbf43:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ccbf4d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ccbf57:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ccbf61:	49 8b fb                                        	mov    rdi,r11
    22bdd7ccbf64:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ccbf68:	e9 dd 01 00 00                                  	jmp    0x22bdd7ccc14a
    22bdd7ccbf6d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    22bdd7ccbf75:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    22bdd7ccbf7d:	c5 fb 10 b5 b0 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x150]
    22bdd7ccbf85:	c5 ca 59 b5 30 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1d0]
    22bdd7ccbf8d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    22bdd7ccbf95:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    22bdd7ccbf9d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ccbfa1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccbfa5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    22bdd7ccbfad:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccbfb1:	4c 8b 15 37 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb37]        # 0x22bdd7ccaaef
    22bdd7ccbfb8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ccbfbd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    22bdd7ccbfc1:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ccbfc5:	0f 87 04 00 00 00                               	ja     0x22bdd7ccbfcf
    22bdd7ccbfcb:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ccbfcf:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    22bdd7ccbfd7:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    22bdd7ccbfde:	0f 85 28 00 00 00                               	jne    0x22bdd7ccc00c
    22bdd7ccbfe4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ccbfee:	4c 8b 15 fa ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeafa]        # 0x22bdd7ccaaef
    22bdd7ccbff5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ccbffa:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    22bdd7ccbffe:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc002:	e8 b9 c5 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7ccc007:	e9 94 00 00 00                                  	jmp    0x22bdd7ccc0a0
    22bdd7ccc00c:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ccc010:	0f 84 67 00 00 00                               	je     0x22bdd7ccc07d
    22bdd7ccc016:	4d 8b d0                                        	mov    r10,r8
    22bdd7ccc019:	4d 8b c3                                        	mov    r8,r11
    22bdd7ccc01c:	4d 8b da                                        	mov    r11,r10
    22bdd7ccc01f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    22bdd7ccc029:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    22bdd7ccc033:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    22bdd7ccc038:	7a 06                                           	jp     0x22bdd7ccc040
    22bdd7ccc03a:	0f 84 2a 00 00 00                               	je     0x22bdd7ccc06a
    22bdd7ccc040:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7ccc044:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    22bdd7ccc049:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    22bdd7ccc04d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    22bdd7ccc051:	0f 86 49 00 00 00                               	jbe    0x22bdd7ccc0a0
    22bdd7ccc057:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ccc05b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ccc060:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ccc065:	e9 5b 00 00 00                                  	jmp    0x22bdd7ccc0c5
    22bdd7ccc06a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ccc06e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ccc073:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ccc078:	e9 44 00 00 00                                  	jmp    0x22bdd7ccc0c1
    22bdd7ccc07d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ccc087:	4c 8b 15 61 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea61]        # 0x22bdd7ccaaef
    22bdd7ccc08e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ccc093:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    22bdd7ccc097:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc09b:	e8 20 c5 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7ccc0a0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ccc0a4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ccc0a9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ccc0ae:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    22bdd7ccc0b2:	0f 87 09 00 00 00                               	ja     0x22bdd7ccc0c1
    22bdd7ccc0b8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    22bdd7ccc0bc:	e9 04 00 00 00                                  	jmp    0x22bdd7ccc0c5
    22bdd7ccc0c1:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ccc0c5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccc0c8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccc0cc:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ccc0d6:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    22bdd7ccc0da:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    22bdd7ccc0de:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    22bdd7ccc0e8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    22bdd7ccc0ed:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    22bdd7ccc0f7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ccc101:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    22bdd7ccc10b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    22bdd7ccc110:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    22bdd7ccc11a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ccc124:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    22bdd7ccc12e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    22bdd7ccc133:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    22bdd7ccc13d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7ccc141:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccc145:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7ccc14a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    22bdd7ccc154:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc158:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7ccc15b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7ccc161:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7ccc164:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    22bdd7ccc16c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    22bdd7ccc170:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    22bdd7ccc174:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    22bdd7ccc179:	e8 e2 a0 f3 ff                                  	call   0x22bdd7c06260
    22bdd7ccc17e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7ccc182:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7ccc187:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    22bdd7ccc18d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    22bdd7ccc191:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7ccc196:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7ccc19c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7ccc1a2:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ccc1a7:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    22bdd7ccc1ae:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    22bdd7ccc1b5:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    22bdd7ccc1bc:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    22bdd7ccc1c2:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7ccc1ca:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7ccc1d2:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    22bdd7ccc1d9:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7ccc1df:	f6 c3 02                                        	test   bl,0x2
    22bdd7ccc1e2:	0f 85 26 00 00 00                               	jne    0x22bdd7ccc20e
    22bdd7ccc1e8:	4d 8b e7                                        	mov    r12,r15
    22bdd7ccc1eb:	4c 8b f9                                        	mov    r15,rcx
    22bdd7ccc1ee:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    22bdd7ccc1f4:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7ccc1fc:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7ccc204:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    22bdd7ccc209:	e9 b5 0a 00 00                                  	jmp    0x22bdd7ccccc3
    22bdd7ccc20e:	4d 8b e7                                        	mov    r12,r15
    22bdd7ccc211:	47 8b bc 04 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x3cc8]
    22bdd7ccc219:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    22bdd7ccc222:	0f 84 75 00 00 00                               	je     0x22bdd7ccc29d
    22bdd7ccc228:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    22bdd7ccc22f:	41 c1 ef 03                                     	shr    r15d,0x3
    22bdd7ccc233:	41 83 e7 03                                     	and    r15d,0x3
    22bdd7ccc237:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    22bdd7ccc23d:	41 0b d7                                        	or     edx,r15d
    22bdd7ccc240:	44 8b bd 58 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3a8]
    22bdd7ccc247:	41 03 d7                                        	add    edx,r15d
    22bdd7ccc24a:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    22bdd7ccc24f:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    22bdd7ccc255:	83 e0 07                                        	and    eax,0x7
    22bdd7ccc258:	4c 8b d1                                        	mov    r10,rcx
    22bdd7ccc25b:	8b c8                                           	mov    ecx,eax
    22bdd7ccc25d:	49 8b c2                                        	mov    rax,r10
    22bdd7ccc260:	d3 e2                                           	shl    edx,cl
    22bdd7ccc262:	f6 c2 80                                        	test   dl,0x80
    22bdd7ccc265:	0f 85 29 00 00 00                               	jne    0x22bdd7ccc294
    22bdd7ccc26b:	4c 8b f8                                        	mov    r15,rax
    22bdd7ccc26e:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    22bdd7ccc274:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    22bdd7ccc27a:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7ccc282:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7ccc28a:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    22bdd7ccc28f:	e9 2f 0a 00 00                                  	jmp    0x22bdd7ccccc3
    22bdd7ccc294:	48 8b c8                                        	mov    rcx,rax
    22bdd7ccc297:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    22bdd7ccc29d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    22bdd7ccc2a4:	4c 2b bd d0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x330]
    22bdd7ccc2ab:	c4 c1 82 2a c7                                  	vcvtsi2ss xmm0,xmm15,r15
    22bdd7ccc2b0:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7ccc2b8:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    22bdd7ccc2bc:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    22bdd7ccc2c1:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    22bdd7ccc2c5:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    22bdd7ccc2cc:	4c 2b bd f0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x310]
    22bdd7ccc2d3:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    22bdd7ccc2d8:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    22bdd7ccc2dd:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7ccc2e5:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    22bdd7ccc2ea:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    22bdd7ccc2ee:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    22bdd7ccc2f2:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    22bdd7ccc2f7:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    22bdd7ccc2fb:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    22bdd7ccc2ff:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    22bdd7ccc304:	0f 83 b0 09 00 00                               	jae    0x22bdd7ccccba
    22bdd7ccc30a:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    22bdd7ccc311:	4c 8b f9                                        	mov    r15,rcx
    22bdd7ccc314:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    22bdd7ccc31b:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    22bdd7ccc322:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    22bdd7ccc327:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    22bdd7ccc32b:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    22bdd7ccc32f:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    22bdd7ccc334:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    22bdd7ccc33a:	0f 85 0b 00 00 00                               	jne    0x22bdd7ccc34b
    22bdd7ccc340:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    22bdd7ccc346:	e9 c5 00 00 00                                  	jmp    0x22bdd7ccc410
    22bdd7ccc34b:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    22bdd7ccc353:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    22bdd7ccc35c:	75 e2                                           	jne    0x22bdd7ccc340
    22bdd7ccc35e:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    22bdd7ccc363:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    22bdd7ccc367:	0f af 4d a0                                     	imul   ecx,DWORD PTR [rbp-0x60]
    22bdd7ccc36b:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    22bdd7ccc36e:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    22bdd7ccc374:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    22bdd7ccc377:	c4 41 7a 10 1c 14                               	vmovss xmm11,DWORD PTR [r12+rdx*1]
    22bdd7ccc37d:	43 8b 54 04 6c                                  	mov    edx,DWORD PTR [r12+r8*1+0x6c]
    22bdd7ccc382:	81 ea 00 02 00 00                               	sub    edx,0x200
    22bdd7ccc388:	83 fa 08                                        	cmp    edx,0x8
    22bdd7ccc38b:	0f 83 0b 00 00 00                               	jae    0x22bdd7ccc39c
    22bdd7ccc391:	4c 8d 15 d0 71 00 00                            	lea    r10,[rip+0x71d0]        # 0x22bdd7cd3568
    22bdd7ccc398:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    22bdd7ccc39c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccc3a0:	0f 87 6a 00 00 00                               	ja     0x22bdd7ccc410
    22bdd7ccc3a6:	e9 18 09 00 00                                  	jmp    0x22bdd7ccccc3
    22bdd7ccc3ab:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccc3b0:	0f 83 5a 00 00 00                               	jae    0x22bdd7ccc410
    22bdd7ccc3b6:	e9 08 09 00 00                                  	jmp    0x22bdd7ccccc3
    22bdd7ccc3bb:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccc3c0:	0f 8a 4a 00 00 00                               	jp     0x22bdd7ccc410
    22bdd7ccc3c6:	0f 84 f7 08 00 00                               	je     0x22bdd7ccccc3
    22bdd7ccc3cc:	e9 3f 00 00 00                                  	jmp    0x22bdd7ccc410
    22bdd7ccc3d1:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccc3d6:	0f 87 34 00 00 00                               	ja     0x22bdd7ccc410
    22bdd7ccc3dc:	e9 e2 08 00 00                                  	jmp    0x22bdd7ccccc3
    22bdd7ccc3e1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccc3e5:	0f 83 25 00 00 00                               	jae    0x22bdd7ccc410
    22bdd7ccc3eb:	e9 d3 08 00 00                                  	jmp    0x22bdd7ccccc3
    22bdd7ccc3f0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccc3f5:	0f 8a c8 08 00 00                               	jp     0x22bdd7ccccc3
    22bdd7ccc3fb:	0f 84 0f 00 00 00                               	je     0x22bdd7ccc410
    22bdd7ccc401:	e9 bd 08 00 00                                  	jmp    0x22bdd7ccccc3
    22bdd7ccc406:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccc40a:	0f 86 b3 08 00 00                               	jbe    0x22bdd7ccccc3
    22bdd7ccc410:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    22bdd7ccc415:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    22bdd7ccc41a:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    22bdd7ccc41f:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    22bdd7ccc426:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    22bdd7ccc42b:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    22bdd7ccc42f:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    22bdd7ccc436:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    22bdd7ccc43e:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7ccc443:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    22bdd7ccc447:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    22bdd7ccc44c:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    22bdd7ccc453:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    22bdd7ccc457:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ccc45b:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    22bdd7ccc45f:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    22bdd7ccc463:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    22bdd7ccc466:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    22bdd7ccc470:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    22bdd7ccc47a:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    22bdd7ccc484:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    22bdd7ccc48e:	c4 c1 7a 7f 04 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm0
    22bdd7ccc494:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccc49b:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    22bdd7ccc4a3:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    22bdd7ccc4a7:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    22bdd7ccc4af:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    22bdd7ccc4b7:	c5 fb 11 a5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm4
    22bdd7ccc4bf:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    22bdd7ccc4c7:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    22bdd7ccc4cf:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    22bdd7ccc4d7:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    22bdd7ccc4df:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccc4e3:	0f 86 4b 04 00 00                               	jbe    0x22bdd7ccc934
    22bdd7ccc4e9:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    22bdd7ccc4f1:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    22bdd7ccc4fa:	0f 85 0a 00 00 00                               	jne    0x22bdd7ccc50a
    22bdd7ccc500:	8b ca                                           	mov    ecx,edx
    22bdd7ccc502:	4d 8b c4                                        	mov    r8,r12
    22bdd7ccc505:	e9 de 04 00 00                                  	jmp    0x22bdd7ccc9e8
    22bdd7ccc50a:	44 8d 82 90 00 00 00                            	lea    r8d,[rdx+0x90]
    22bdd7ccc511:	44 8d 5a 70                                     	lea    r11d,[rdx+0x70]
    22bdd7ccc515:	41 53                                           	push   r11
    22bdd7ccc517:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    22bdd7ccc51e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc522:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ccc525:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7ccc528:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    22bdd7ccc52b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7ccc52e:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    22bdd7ccc532:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7ccc537:	45 8b c8                                        	mov    r9d,r8d
    22bdd7ccc53a:	e8 d9 9c f3 ff                                  	call   0x22bdd7c06218
    22bdd7ccc53f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccc543:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccc54a:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    22bdd7ccc552:	45 85 db                                        	test   r11d,r11d
    22bdd7ccc555:	0f 85 62 01 00 00                               	jne    0x22bdd7ccc6bd
    22bdd7ccc55b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccc55e:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    22bdd7ccc563:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    22bdd7ccc569:	0f 84 43 00 00 00                               	je     0x22bdd7ccc5b2
    22bdd7ccc56f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccc575:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccc579:	41 53                                           	push   r11
    22bdd7ccc57b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc57f:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    22bdd7ccc585:	33 d2                                           	xor    edx,edx
    22bdd7ccc587:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    22bdd7ccc58e:	e8 ad 9c f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccc593:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccc596:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccc59a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccc5a1:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccc5ab:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccc5b2:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    22bdd7ccc5b7:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    22bdd7ccc5bd:	0f 84 46 00 00 00                               	je     0x22bdd7ccc609
    22bdd7ccc5c3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccc5c9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccc5cd:	41 53                                           	push   r11
    22bdd7ccc5cf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc5d3:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    22bdd7ccc5d9:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ccc5de:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    22bdd7ccc5e5:	e8 56 9c f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccc5ea:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccc5ed:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccc5f1:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccc5f8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccc602:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccc609:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    22bdd7ccc60e:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    22bdd7ccc614:	0f 84 46 00 00 00                               	je     0x22bdd7ccc660
    22bdd7ccc61a:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccc620:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccc624:	41 53                                           	push   r11
    22bdd7ccc626:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc62a:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    22bdd7ccc630:	ba 02 00 00 00                                  	mov    edx,0x2
    22bdd7ccc635:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    22bdd7ccc63c:	e8 ff 9b f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccc641:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccc644:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccc648:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccc64f:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccc659:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccc660:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    22bdd7ccc665:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    22bdd7ccc66b:	0f 84 77 03 00 00                               	je     0x22bdd7ccc9e8
    22bdd7ccc671:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccc677:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccc67b:	41 53                                           	push   r11
    22bdd7ccc67d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc681:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    22bdd7ccc687:	ba 03 00 00 00                                  	mov    edx,0x3
    22bdd7ccc68c:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    22bdd7ccc693:	e8 a8 9b f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccc698:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccc69b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    22bdd7ccc69f:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    22bdd7ccc6a5:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    22bdd7ccc6ae:	4c 8b c7                                        	mov    r8,rdi
    22bdd7ccc6b1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccc6b8:	e9 2b 03 00 00                                  	jmp    0x22bdd7ccc9e8
    22bdd7ccc6bd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccc6c0:	4d 8b e0                                        	mov    r12,r8
    22bdd7ccc6c3:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    22bdd7ccc6cd:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    22bdd7ccc6d3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ccc6d8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccc6dc:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    22bdd7ccc6e3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ccc6e7:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7ccc6eb:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    22bdd7ccc6f5:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ccc6f9:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    22bdd7ccc6ff:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ccc703:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    22bdd7ccc708:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    22bdd7ccc712:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ccc716:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    22bdd7ccc71d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    22bdd7ccc721:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    22bdd7ccc725:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    22bdd7ccc729:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccc72d:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    22bdd7ccc733:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ccc738:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    22bdd7ccc73c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ccc740:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ccc745:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ccc74a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    22bdd7ccc74e:	0f 87 09 00 00 00                               	ja     0x22bdd7ccc75d
    22bdd7ccc754:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ccc758:	e9 04 00 00 00                                  	jmp    0x22bdd7ccc761
    22bdd7ccc75d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccc761:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ccc766:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ccc76a:	0f 87 09 00 00 00                               	ja     0x22bdd7ccc779
    22bdd7ccc770:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ccc774:	e9 05 00 00 00                                  	jmp    0x22bdd7ccc77e
    22bdd7ccc779:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ccc77e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ccc783:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccc787:	0f 84 a1 00 00 00                               	je     0x22bdd7ccc82e
    22bdd7ccc78d:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    22bdd7ccc791:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    22bdd7ccc79b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccc79f:	0f 87 09 00 00 00                               	ja     0x22bdd7ccc7ae
    22bdd7ccc7a5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccc7a9:	e9 04 00 00 00                                  	jmp    0x22bdd7ccc7b2
    22bdd7ccc7ae:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccc7b2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccc7b6:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccc7c6
    22bdd7ccc7bc:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccc7c1:	e9 05 00 00 00                                  	jmp    0x22bdd7ccc7cb
    22bdd7ccc7c6:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccc7cb:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    22bdd7ccc7cf:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccc7d4:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ccc7d9:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccc7dd:	4c 8b 15 2d f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52d]        # 0x22bdd7ccbd11
    22bdd7ccc7e4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7ccc7e9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7ccc7ee:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ccc7f2:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    22bdd7ccc7fc:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7ccc800:	0f 85 04 00 00 00                               	jne    0x22bdd7ccc80a
    22bdd7ccc806:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    22bdd7ccc80a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ccc80f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccc813:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ccc817:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    22bdd7ccc821:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7ccc826:	4d 8b df                                        	mov    r11,r15
    22bdd7ccc829:	e9 cc 00 00 00                                  	jmp    0x22bdd7ccc8fa
    22bdd7ccc82e:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    22bdd7ccc835:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccc839:	0f 87 09 00 00 00                               	ja     0x22bdd7ccc848
    22bdd7ccc83f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccc843:	e9 04 00 00 00                                  	jmp    0x22bdd7ccc84c
    22bdd7ccc848:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccc84c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccc850:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccc860
    22bdd7ccc856:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccc85b:	e9 05 00 00 00                                  	jmp    0x22bdd7ccc865
    22bdd7ccc860:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccc865:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    22bdd7ccc86f:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    22bdd7ccc875:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    22bdd7ccc87a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccc87e:	0f 87 09 00 00 00                               	ja     0x22bdd7ccc88d
    22bdd7ccc884:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ccc888:	e9 04 00 00 00                                  	jmp    0x22bdd7ccc891
    22bdd7ccc88d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ccc891:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccc895:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccc8a5
    22bdd7ccc89b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ccc8a0:	e9 05 00 00 00                                  	jmp    0x22bdd7ccc8aa
    22bdd7ccc8a5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccc8aa:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    22bdd7ccc8b4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccc8b9:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccc8bd:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    22bdd7ccc8c7:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ccc8cc:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7ccc8d1:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ccc8d5:	4c 8b 15 35 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff435]        # 0x22bdd7ccbd11
    22bdd7ccc8dc:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ccc8e1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ccc8e6:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ccc8ea:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ccc8ee:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ccc8f2:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ccc8f6:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ccc8fa:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ccc8ff:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccc903:	4c 8b 15 07 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff407]        # 0x22bdd7ccbd11
    22bdd7ccc90a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ccc90f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ccc914:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    22bdd7ccc918:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    22bdd7ccc922:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    22bdd7ccc92c:	4d 8b c4                                        	mov    r8,r12
    22bdd7ccc92f:	e9 b4 00 00 00                                  	jmp    0x22bdd7ccc9e8
    22bdd7ccc934:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    22bdd7ccc93b:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    22bdd7ccc942:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    22bdd7ccc946:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    22bdd7ccc94d:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ccc951:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    22bdd7ccc958:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    22bdd7ccc95f:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    22bdd7ccc963:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccc967:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    22bdd7ccc96c:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccc970:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    22bdd7ccc977:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    22bdd7ccc97b:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    22bdd7ccc982:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ccc986:	c5 fb 11 85 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm0
    22bdd7ccc98e:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    22bdd7ccc995:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    22bdd7ccc999:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    22bdd7ccc99d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccc9a1:	8d ba 90 00 00 00                               	lea    edi,[rdx+0x90]
    22bdd7ccc9a7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccc9ab:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ccc9ae:	8b ca                                           	mov    ecx,edx
    22bdd7ccc9b0:	41 8b d0                                        	mov    edx,r8d
    22bdd7ccc9b3:	c5 fb 10 8d 30 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
    22bdd7ccc9bb:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7ccc9bf:	8b df                                           	mov    ebx,edi
    22bdd7ccc9c1:	e8 6a 9b f3 ff                                  	call   0x22bdd7c06530
    22bdd7ccc9c6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccc9c9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccc9cd:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    22bdd7ccc9d7:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccc9e1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccc9e8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccc9ec:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    22bdd7ccc9f4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    22bdd7ccc9fd:	0f 85 2a 00 00 00                               	jne    0x22bdd7ccca2d
    22bdd7ccca03:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ccca0d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ccca17:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ccca21:	49 8b fb                                        	mov    rdi,r11
    22bdd7ccca24:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ccca28:	e9 dd 01 00 00                                  	jmp    0x22bdd7cccc0a
    22bdd7ccca2d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    22bdd7ccca35:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    22bdd7ccca3d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    22bdd7ccca45:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    22bdd7ccca4d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    22bdd7ccca55:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    22bdd7ccca5d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ccca61:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccca65:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    22bdd7ccca6d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccca71:	4c 8b 15 77 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe077]        # 0x22bdd7ccaaef
    22bdd7ccca78:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ccca7d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    22bdd7ccca81:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ccca85:	0f 87 04 00 00 00                               	ja     0x22bdd7ccca8f
    22bdd7ccca8b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ccca8f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    22bdd7ccca97:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    22bdd7ccca9e:	0f 85 28 00 00 00                               	jne    0x22bdd7cccacc
    22bdd7cccaa4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    22bdd7cccaae:	4c 8b 15 3a e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe03a]        # 0x22bdd7ccaaef
    22bdd7cccab5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7cccaba:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    22bdd7cccabe:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cccac2:	e8 f9 ba f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cccac7:	e9 94 00 00 00                                  	jmp    0x22bdd7cccb60
    22bdd7cccacc:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7cccad0:	0f 84 67 00 00 00                               	je     0x22bdd7cccb3d
    22bdd7cccad6:	4d 8b d0                                        	mov    r10,r8
    22bdd7cccad9:	4d 8b c3                                        	mov    r8,r11
    22bdd7cccadc:	4d 8b da                                        	mov    r11,r10
    22bdd7cccadf:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    22bdd7cccae9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    22bdd7cccaf3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    22bdd7cccaf8:	7a 06                                           	jp     0x22bdd7cccb00
    22bdd7cccafa:	0f 84 2a 00 00 00                               	je     0x22bdd7cccb2a
    22bdd7cccb00:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7cccb04:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    22bdd7cccb09:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    22bdd7cccb0d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    22bdd7cccb11:	0f 86 49 00 00 00                               	jbe    0x22bdd7cccb60
    22bdd7cccb17:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7cccb1b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7cccb20:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7cccb25:	e9 5b 00 00 00                                  	jmp    0x22bdd7cccb85
    22bdd7cccb2a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7cccb2e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7cccb33:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7cccb38:	e9 44 00 00 00                                  	jmp    0x22bdd7cccb81
    22bdd7cccb3d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    22bdd7cccb47:	4c 8b 15 a1 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdfa1]        # 0x22bdd7ccaaef
    22bdd7cccb4e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7cccb53:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    22bdd7cccb57:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cccb5b:	e8 60 ba f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cccb60:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7cccb64:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7cccb69:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7cccb6e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    22bdd7cccb72:	0f 87 09 00 00 00                               	ja     0x22bdd7cccb81
    22bdd7cccb78:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    22bdd7cccb7c:	e9 04 00 00 00                                  	jmp    0x22bdd7cccb85
    22bdd7cccb81:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7cccb85:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7cccb88:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cccb8c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7cccb96:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    22bdd7cccb9a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    22bdd7cccb9e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    22bdd7cccba8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    22bdd7cccbad:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    22bdd7cccbb7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    22bdd7cccbc1:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    22bdd7cccbcb:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    22bdd7cccbd0:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    22bdd7cccbda:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    22bdd7cccbe4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    22bdd7cccbee:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    22bdd7cccbf3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    22bdd7cccbfd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7cccc01:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7cccc05:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7cccc0a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    22bdd7cccc14:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cccc18:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cccc1b:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cccc21:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cccc24:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    22bdd7cccc2c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    22bdd7cccc30:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    22bdd7cccc34:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    22bdd7cccc39:	e8 22 96 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cccc3e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7cccc42:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cccc47:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    22bdd7cccc4d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    22bdd7cccc53:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cccc57:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cccc5c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cccc62:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cccc68:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cccc6d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    22bdd7cccc74:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    22bdd7cccc7b:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    22bdd7cccc82:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    22bdd7cccc88:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cccc90:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cccc98:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cccca0:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    22bdd7cccca8:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    22bdd7ccccaf:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7ccccb5:	e9 09 00 00 00                                  	jmp    0x22bdd7ccccc3
    22bdd7ccccba:	4c 8b f9                                        	mov    r15,rcx
    22bdd7ccccbd:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    22bdd7ccccc3:	f6 c3 04                                        	test   bl,0x4
    22bdd7ccccc6:	0f 85 0e 00 00 00                               	jne    0x22bdd7ccccda
    22bdd7cccccc:	8b d0                                           	mov    edx,eax
    22bdd7ccccce:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    22bdd7ccccd5:	e9 70 0a 00 00                                  	jmp    0x22bdd7ccd74a
    22bdd7ccccda:	43 8b 94 04 c8 3c 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0x3cc8]
    22bdd7cccce2:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    22bdd7cccceb:	0f 84 4d 00 00 00                               	je     0x22bdd7cccd3e
    22bdd7ccccf1:	8b d0                                           	mov    edx,eax
    22bdd7ccccf3:	c1 ea 03                                        	shr    edx,0x3
    22bdd7ccccf6:	83 e2 03                                        	and    edx,0x3
    22bdd7ccccf9:	0b 95 20 fe ff ff                               	or     edx,DWORD PTR [rbp-0x1e0]
    22bdd7ccccff:	8b 9d 58 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a8]
    22bdd7cccd05:	03 d3                                           	add    edx,ebx
    22bdd7cccd07:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    22bdd7cccd0c:	8b d8                                           	mov    ebx,eax
    22bdd7cccd0e:	83 e3 07                                        	and    ebx,0x7
    22bdd7cccd11:	44 8b d1                                        	mov    r10d,ecx
    22bdd7cccd14:	8b cb                                           	mov    ecx,ebx
    22bdd7cccd16:	49 8b df                                        	mov    rbx,r15
    22bdd7cccd19:	45 8b fa                                        	mov    r15d,r10d
    22bdd7cccd1c:	d3 e2                                           	shl    edx,cl
    22bdd7cccd1e:	f6 c2 80                                        	test   dl,0x80
    22bdd7cccd21:	0f 85 11 00 00 00                               	jne    0x22bdd7cccd38
    22bdd7cccd27:	8b d0                                           	mov    edx,eax
    22bdd7cccd29:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    22bdd7cccd30:	4c 8b fb                                        	mov    r15,rbx
    22bdd7cccd33:	e9 12 0a 00 00                                  	jmp    0x22bdd7ccd74a
    22bdd7cccd38:	41 8b cf                                        	mov    ecx,r15d
    22bdd7cccd3b:	4c 8b fb                                        	mov    r15,rbx
    22bdd7cccd3e:	48 8b 95 60 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa0]
    22bdd7cccd45:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    22bdd7cccd4c:	48 8d 0c 13                                     	lea    rcx,[rbx+rdx*1]
    22bdd7cccd50:	c4 e1 82 2a c1                                  	vcvtsi2ss xmm0,xmm15,rcx
    22bdd7cccd55:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    22bdd7cccd59:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    22bdd7cccd5d:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    22bdd7cccd64:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    22bdd7cccd6b:	48 8d 14 0b                                     	lea    rdx,[rbx+rcx*1]
    22bdd7cccd6f:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    22bdd7cccd74:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    22bdd7cccd79:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    22bdd7cccd7e:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    22bdd7cccd82:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    22bdd7cccd86:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    22bdd7cccd8b:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    22bdd7cccd8f:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    22bdd7cccd93:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    22bdd7cccd98:	0f 83 aa 09 00 00                               	jae    0x22bdd7ccd748
    22bdd7cccd9e:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    22bdd7cccda5:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    22bdd7cccdac:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    22bdd7cccdb3:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    22bdd7cccdb8:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    22bdd7cccdbc:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    22bdd7cccdc0:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    22bdd7cccdc5:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    22bdd7cccdcb:	0f 85 07 00 00 00                               	jne    0x22bdd7cccdd8
    22bdd7cccdd1:	8b d0                                           	mov    edx,eax
    22bdd7cccdd3:	e9 c3 00 00 00                                  	jmp    0x22bdd7ccce9b
    22bdd7cccdd8:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    22bdd7cccde0:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    22bdd7cccde9:	75 e6                                           	jne    0x22bdd7cccdd1
    22bdd7cccdeb:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    22bdd7cccdf0:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    22bdd7cccdf4:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    22bdd7cccdfb:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    22bdd7cccdfe:	8b d0                                           	mov    edx,eax
    22bdd7ccce00:	8d 04 93                                        	lea    eax,[rbx+rdx*4]
    22bdd7ccce03:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    22bdd7ccce09:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    22bdd7ccce0e:	2d 00 02 00 00                                  	sub    eax,0x200
    22bdd7ccce13:	83 f8 08                                        	cmp    eax,0x8
    22bdd7ccce16:	0f 83 0b 00 00 00                               	jae    0x22bdd7ccce27
    22bdd7ccce1c:	4c 8d 15 05 67 00 00                            	lea    r10,[rip+0x6705]        # 0x22bdd7cd3528
    22bdd7ccce23:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    22bdd7ccce27:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccce2b:	0f 87 6a 00 00 00                               	ja     0x22bdd7ccce9b
    22bdd7ccce31:	e9 14 09 00 00                                  	jmp    0x22bdd7ccd74a
    22bdd7ccce36:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccce3b:	0f 83 5a 00 00 00                               	jae    0x22bdd7ccce9b
    22bdd7ccce41:	e9 04 09 00 00                                  	jmp    0x22bdd7ccd74a
    22bdd7ccce46:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccce4b:	0f 8a 4a 00 00 00                               	jp     0x22bdd7ccce9b
    22bdd7ccce51:	0f 84 f3 08 00 00                               	je     0x22bdd7ccd74a
    22bdd7ccce57:	e9 3f 00 00 00                                  	jmp    0x22bdd7ccce9b
    22bdd7ccce5c:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccce61:	0f 87 34 00 00 00                               	ja     0x22bdd7ccce9b
    22bdd7ccce67:	e9 de 08 00 00                                  	jmp    0x22bdd7ccd74a
    22bdd7ccce6c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccce70:	0f 83 25 00 00 00                               	jae    0x22bdd7ccce9b
    22bdd7ccce76:	e9 cf 08 00 00                                  	jmp    0x22bdd7ccd74a
    22bdd7ccce7b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccce80:	0f 8a c4 08 00 00                               	jp     0x22bdd7ccd74a
    22bdd7ccce86:	0f 84 0f 00 00 00                               	je     0x22bdd7ccce9b
    22bdd7ccce8c:	e9 b9 08 00 00                                  	jmp    0x22bdd7ccd74a
    22bdd7ccce91:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccce95:	0f 86 af 08 00 00                               	jbe    0x22bdd7ccd74a
    22bdd7ccce9b:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    22bdd7cccea0:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    22bdd7cccea5:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    22bdd7ccceaa:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    22bdd7ccceb1:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    22bdd7ccceb6:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    22bdd7ccceba:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    22bdd7cccec1:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    22bdd7cccec9:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7cccece:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    22bdd7ccced2:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    22bdd7ccced7:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    22bdd7cccede:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    22bdd7cccee2:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7cccee6:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    22bdd7ccceea:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    22bdd7ccceee:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    22bdd7cccef1:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    22bdd7cccefb:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    22bdd7cccf05:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    22bdd7cccf0f:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    22bdd7cccf19:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    22bdd7cccf1f:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    22bdd7cccf26:	41 8b bc 1c 34 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x134]
    22bdd7cccf2e:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    22bdd7cccf32:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    22bdd7cccf3a:	c5 fb 11 8d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm1
    22bdd7cccf42:	c5 fb 11 a5 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm4
    22bdd7cccf4a:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    22bdd7cccf52:	c5 fb 11 b5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm6
    22bdd7cccf5a:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    22bdd7cccf62:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    22bdd7cccf6a:	41 83 f8 01                                     	cmp    r8d,0x1
    22bdd7cccf6e:	0f 86 4d 04 00 00                               	jbe    0x22bdd7ccd3c1
    22bdd7cccf74:	41 8b bc 1c 30 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x130]
    22bdd7cccf7c:	41 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x130],0x0
    22bdd7cccf85:	0f 85 0d 00 00 00                               	jne    0x22bdd7cccf98
    22bdd7cccf8b:	8b c8                                           	mov    ecx,eax
    22bdd7cccf8d:	4d 8b c4                                        	mov    r8,r12
    22bdd7cccf90:	48 8b fb                                        	mov    rdi,rbx
    22bdd7cccf93:	e9 e0 04 00 00                                  	jmp    0x22bdd7ccd478
    22bdd7cccf98:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    22bdd7cccf9e:	44 8d 40 70                                     	lea    r8d,[rax+0x70]
    22bdd7cccfa2:	41 50                                           	push   r8
    22bdd7cccfa4:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    22bdd7cccfab:	44 8b 85 58 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3a8]
    22bdd7cccfb2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cccfb6:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7cccfb9:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7cccfbc:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    22bdd7cccfbf:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7cccfc2:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    22bdd7cccfc6:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7cccfcb:	44 8b cf                                        	mov    r9d,edi
    22bdd7cccfce:	e8 45 92 f3 ff                                  	call   0x22bdd7c06218
    22bdd7cccfd3:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cccfd7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cccfde:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    22bdd7cccfe6:	45 85 db                                        	test   r11d,r11d
    22bdd7cccfe9:	0f 85 61 01 00 00                               	jne    0x22bdd7ccd150
    22bdd7cccfef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7cccff2:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    22bdd7cccff7:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    22bdd7cccffd:	0f 84 43 00 00 00                               	je     0x22bdd7ccd046
    22bdd7ccd003:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccd009:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccd00d:	41 53                                           	push   r11
    22bdd7ccd00f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccd013:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    22bdd7ccd019:	33 d2                                           	xor    edx,edx
    22bdd7ccd01b:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    22bdd7ccd022:	e8 19 92 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccd027:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccd02a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccd02e:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccd035:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccd03f:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccd046:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    22bdd7ccd04b:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    22bdd7ccd051:	0f 84 46 00 00 00                               	je     0x22bdd7ccd09d
    22bdd7ccd057:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccd05d:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccd061:	41 53                                           	push   r11
    22bdd7ccd063:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccd067:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    22bdd7ccd06d:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ccd072:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    22bdd7ccd079:	e8 c2 91 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccd07e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccd081:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccd085:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccd08c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccd096:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccd09d:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    22bdd7ccd0a2:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    22bdd7ccd0a8:	0f 84 46 00 00 00                               	je     0x22bdd7ccd0f4
    22bdd7ccd0ae:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccd0b4:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccd0b8:	41 53                                           	push   r11
    22bdd7ccd0ba:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccd0be:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    22bdd7ccd0c4:	ba 02 00 00 00                                  	mov    edx,0x2
    22bdd7ccd0c9:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    22bdd7ccd0d0:	e8 6b 91 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccd0d5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccd0d8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccd0dc:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccd0e3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccd0ed:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccd0f4:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    22bdd7ccd0f9:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    22bdd7ccd0ff:	0f 84 73 03 00 00                               	je     0x22bdd7ccd478
    22bdd7ccd105:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccd10b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccd10f:	41 53                                           	push   r11
    22bdd7ccd111:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccd115:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    22bdd7ccd11b:	ba 03 00 00 00                                  	mov    edx,0x3
    22bdd7ccd120:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    22bdd7ccd127:	e8 14 91 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccd12c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccd12f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccd133:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccd13a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccd144:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccd14b:	e9 28 03 00 00                                  	jmp    0x22bdd7ccd478
    22bdd7ccd150:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccd153:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    22bdd7ccd15d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    22bdd7ccd163:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ccd168:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccd16c:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    22bdd7ccd173:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ccd177:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7ccd17b:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    22bdd7ccd185:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ccd189:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    22bdd7ccd18f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ccd193:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    22bdd7ccd198:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    22bdd7ccd1a2:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ccd1a6:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    22bdd7ccd1ad:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    22bdd7ccd1b1:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    22bdd7ccd1b5:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    22bdd7ccd1b9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccd1bd:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    22bdd7ccd1c3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ccd1c8:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    22bdd7ccd1cc:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ccd1d0:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ccd1d5:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ccd1da:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    22bdd7ccd1de:	0f 87 09 00 00 00                               	ja     0x22bdd7ccd1ed
    22bdd7ccd1e4:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ccd1e8:	e9 04 00 00 00                                  	jmp    0x22bdd7ccd1f1
    22bdd7ccd1ed:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccd1f1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ccd1f6:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ccd1fa:	0f 87 09 00 00 00                               	ja     0x22bdd7ccd209
    22bdd7ccd200:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ccd204:	e9 05 00 00 00                                  	jmp    0x22bdd7ccd20e
    22bdd7ccd209:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ccd20e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ccd213:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccd217:	0f 84 a1 00 00 00                               	je     0x22bdd7ccd2be
    22bdd7ccd21d:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    22bdd7ccd221:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    22bdd7ccd22b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccd22f:	0f 87 09 00 00 00                               	ja     0x22bdd7ccd23e
    22bdd7ccd235:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccd239:	e9 04 00 00 00                                  	jmp    0x22bdd7ccd242
    22bdd7ccd23e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccd242:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccd246:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccd256
    22bdd7ccd24c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccd251:	e9 05 00 00 00                                  	jmp    0x22bdd7ccd25b
    22bdd7ccd256:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccd25b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    22bdd7ccd25f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccd264:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ccd269:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccd26d:	4c 8b 15 9d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea9d]        # 0x22bdd7ccbd11
    22bdd7ccd274:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7ccd279:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7ccd27e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ccd282:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    22bdd7ccd28c:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7ccd290:	0f 85 04 00 00 00                               	jne    0x22bdd7ccd29a
    22bdd7ccd296:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    22bdd7ccd29a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ccd29f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccd2a3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ccd2a7:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    22bdd7ccd2b1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7ccd2b6:	4d 8b dc                                        	mov    r11,r12
    22bdd7ccd2b9:	e9 cc 00 00 00                                  	jmp    0x22bdd7ccd38a
    22bdd7ccd2be:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    22bdd7ccd2c5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccd2c9:	0f 87 09 00 00 00                               	ja     0x22bdd7ccd2d8
    22bdd7ccd2cf:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccd2d3:	e9 04 00 00 00                                  	jmp    0x22bdd7ccd2dc
    22bdd7ccd2d8:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccd2dc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccd2e0:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccd2f0
    22bdd7ccd2e6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccd2eb:	e9 05 00 00 00                                  	jmp    0x22bdd7ccd2f5
    22bdd7ccd2f0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccd2f5:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    22bdd7ccd2ff:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    22bdd7ccd305:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    22bdd7ccd30a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccd30e:	0f 87 09 00 00 00                               	ja     0x22bdd7ccd31d
    22bdd7ccd314:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ccd318:	e9 04 00 00 00                                  	jmp    0x22bdd7ccd321
    22bdd7ccd31d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ccd321:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccd325:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccd335
    22bdd7ccd32b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ccd330:	e9 05 00 00 00                                  	jmp    0x22bdd7ccd33a
    22bdd7ccd335:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccd33a:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    22bdd7ccd344:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccd349:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccd34d:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    22bdd7ccd357:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ccd35c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7ccd361:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ccd365:	4c 8b 15 a5 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a5]        # 0x22bdd7ccbd11
    22bdd7ccd36c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ccd371:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ccd376:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ccd37a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ccd37e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ccd382:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ccd386:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ccd38a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ccd38f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccd393:	4c 8b 15 77 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe977]        # 0x22bdd7ccbd11
    22bdd7ccd39a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ccd39f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ccd3a4:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    22bdd7ccd3a8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccd3b2:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    22bdd7ccd3bc:	e9 b7 00 00 00                                  	jmp    0x22bdd7ccd478
    22bdd7ccd3c1:	4c 8b 85 10 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f0]
    22bdd7ccd3c8:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    22bdd7ccd3cf:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    22bdd7ccd3d3:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    22bdd7ccd3da:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ccd3de:	c4 81 6a 59 74 1c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+r11*1+0x50]
    22bdd7ccd3e5:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    22bdd7ccd3e9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccd3ed:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    22bdd7ccd3f2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccd3f6:	c4 01 7a 10 5c 04 54                            	vmovss xmm11,DWORD PTR [r12+r8*1+0x54]
    22bdd7ccd3fd:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    22bdd7ccd401:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    22bdd7ccd408:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ccd40c:	c5 fb 11 85 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm0
    22bdd7ccd414:	c4 81 6a 59 44 1c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+r11*1+0x54]
    22bdd7ccd41b:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    22bdd7ccd41f:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    22bdd7ccd423:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccd427:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    22bdd7ccd42e:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    22bdd7ccd434:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccd438:	8b c8                                           	mov    ecx,eax
    22bdd7ccd43a:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ccd43d:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    22bdd7ccd443:	c5 fb 10 8d b0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x150]
    22bdd7ccd44b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7ccd44f:	8b df                                           	mov    ebx,edi
    22bdd7ccd451:	e8 da 90 f3 ff                                  	call   0x22bdd7c06530
    22bdd7ccd456:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccd459:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccd45d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    22bdd7ccd467:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccd471:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccd478:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccd47c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    22bdd7ccd484:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    22bdd7ccd48d:	0f 85 2a 00 00 00                               	jne    0x22bdd7ccd4bd
    22bdd7ccd493:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ccd49d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ccd4a7:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ccd4b1:	49 8b fb                                        	mov    rdi,r11
    22bdd7ccd4b4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ccd4b8:	e9 dd 01 00 00                                  	jmp    0x22bdd7ccd69a
    22bdd7ccd4bd:	c5 fb 10 85 08 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1f8]
    22bdd7ccd4c5:	c5 fa 59 85 a0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x260]
    22bdd7ccd4cd:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    22bdd7ccd4d5:	c5 ca 59 b5 50 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1b0]
    22bdd7ccd4dd:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    22bdd7ccd4e5:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    22bdd7ccd4ed:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ccd4f1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccd4f5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    22bdd7ccd4fd:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccd501:	4c 8b 15 e7 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5e7]        # 0x22bdd7ccaaef
    22bdd7ccd508:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ccd50d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    22bdd7ccd511:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ccd515:	0f 87 04 00 00 00                               	ja     0x22bdd7ccd51f
    22bdd7ccd51b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ccd51f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    22bdd7ccd527:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    22bdd7ccd52e:	0f 85 28 00 00 00                               	jne    0x22bdd7ccd55c
    22bdd7ccd534:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ccd53e:	4c 8b 15 aa d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5aa]        # 0x22bdd7ccaaef
    22bdd7ccd545:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ccd54a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    22bdd7ccd54e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccd552:	e8 69 b0 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7ccd557:	e9 94 00 00 00                                  	jmp    0x22bdd7ccd5f0
    22bdd7ccd55c:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ccd560:	0f 84 67 00 00 00                               	je     0x22bdd7ccd5cd
    22bdd7ccd566:	4d 8b d0                                        	mov    r10,r8
    22bdd7ccd569:	4d 8b c3                                        	mov    r8,r11
    22bdd7ccd56c:	4d 8b da                                        	mov    r11,r10
    22bdd7ccd56f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    22bdd7ccd579:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    22bdd7ccd583:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    22bdd7ccd588:	7a 06                                           	jp     0x22bdd7ccd590
    22bdd7ccd58a:	0f 84 2a 00 00 00                               	je     0x22bdd7ccd5ba
    22bdd7ccd590:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7ccd594:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    22bdd7ccd599:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    22bdd7ccd59d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    22bdd7ccd5a1:	0f 86 49 00 00 00                               	jbe    0x22bdd7ccd5f0
    22bdd7ccd5a7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ccd5ab:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ccd5b0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ccd5b5:	e9 5b 00 00 00                                  	jmp    0x22bdd7ccd615
    22bdd7ccd5ba:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ccd5be:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ccd5c3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ccd5c8:	e9 44 00 00 00                                  	jmp    0x22bdd7ccd611
    22bdd7ccd5cd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ccd5d7:	4c 8b 15 11 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd511]        # 0x22bdd7ccaaef
    22bdd7ccd5de:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ccd5e3:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    22bdd7ccd5e7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccd5eb:	e8 d0 af f3 ff                                  	call   0x22bdd7c085c0
    22bdd7ccd5f0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7ccd5f4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7ccd5f9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7ccd5fe:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    22bdd7ccd602:	0f 87 09 00 00 00                               	ja     0x22bdd7ccd611
    22bdd7ccd608:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    22bdd7ccd60c:	e9 04 00 00 00                                  	jmp    0x22bdd7ccd615
    22bdd7ccd611:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ccd615:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccd618:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccd61c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ccd626:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    22bdd7ccd62a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    22bdd7ccd62e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    22bdd7ccd638:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    22bdd7ccd63d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    22bdd7ccd647:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ccd651:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    22bdd7ccd65b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    22bdd7ccd660:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    22bdd7ccd66a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ccd674:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    22bdd7ccd67e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    22bdd7ccd683:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    22bdd7ccd68d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7ccd691:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccd695:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7ccd69a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    22bdd7ccd6a4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccd6a8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7ccd6ab:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7ccd6b1:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    22bdd7ccd6b7:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    22bdd7ccd6bf:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    22bdd7ccd6c3:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    22bdd7ccd6c7:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    22bdd7ccd6cc:	e8 8f 8b f3 ff                                  	call   0x22bdd7c06260
    22bdd7ccd6d1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7ccd6d5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7ccd6da:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7ccd6e0:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    22bdd7ccd6e7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7ccd6eb:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7ccd6f0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7ccd6f6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7ccd6fc:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ccd701:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    22bdd7ccd708:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    22bdd7ccd70f:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    22bdd7ccd716:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7ccd71e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7ccd726:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7ccd72e:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    22bdd7ccd736:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    22bdd7ccd73d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7ccd743:	e9 02 00 00 00                                  	jmp    0x22bdd7ccd74a
    22bdd7ccd748:	8b d0                                           	mov    edx,eax
    22bdd7ccd74a:	f6 85 68 fd ff ff 08                            	test   BYTE PTR [rbp-0x298],0x8
    22bdd7ccd751:	0f 85 0a 00 00 00                               	jne    0x22bdd7ccd761
    22bdd7ccd757:	c4 41 79 28 f1                                  	vmovapd xmm14,xmm9
    22bdd7ccd75c:	e9 49 57 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7ccd761:	43 8b 84 04 c8 3c 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0x3cc8]
    22bdd7ccd769:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    22bdd7ccd772:	0f 84 3c 00 00 00                               	je     0x22bdd7ccd7b4
    22bdd7ccd778:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    22bdd7ccd77e:	c1 e8 03                                        	shr    eax,0x3
    22bdd7ccd781:	83 e0 03                                        	and    eax,0x3
    22bdd7ccd784:	8b 9d 20 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1e0]
    22bdd7ccd78a:	0b d8                                           	or     ebx,eax
    22bdd7ccd78c:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    22bdd7ccd792:	03 d8                                           	add    ebx,eax
    22bdd7ccd794:	41 0f b6 1c 1c                                  	movzx  ebx,BYTE PTR [r12+rbx*1]
    22bdd7ccd799:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    22bdd7ccd79f:	83 e0 07                                        	and    eax,0x7
    22bdd7ccd7a2:	4c 8b d1                                        	mov    r10,rcx
    22bdd7ccd7a5:	8b c8                                           	mov    ecx,eax
    22bdd7ccd7a7:	49 8b c2                                        	mov    rax,r10
    22bdd7ccd7aa:	d3 e3                                           	shl    ebx,cl
    22bdd7ccd7ac:	f6 c3 80                                        	test   bl,0x80
    22bdd7ccd7af:	74 a6                                           	je     0x22bdd7ccd757
    22bdd7ccd7b1:	48 8b c8                                        	mov    rcx,rax
    22bdd7ccd7b4:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    22bdd7ccd7bb:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    22bdd7ccd7c2:	48 8d 14 03                                     	lea    rdx,[rbx+rax*1]
    22bdd7ccd7c6:	c4 e1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,rdx
    22bdd7ccd7cb:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    22bdd7ccd7cf:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    22bdd7ccd7d3:	48 8b d1                                        	mov    rdx,rcx
    22bdd7ccd7d6:	48 8b 8d 50 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3b0]
    22bdd7ccd7dd:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    22bdd7ccd7e1:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    22bdd7ccd7e6:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    22bdd7ccd7eb:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    22bdd7ccd7f0:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    22bdd7ccd7f4:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    22bdd7ccd7f8:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    22bdd7ccd7fd:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    22bdd7ccd801:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    22bdd7ccd805:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    22bdd7ccd80a:	0f 83 47 ff ff ff                               	jae    0x22bdd7ccd757
    22bdd7ccd810:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    22bdd7ccd817:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    22bdd7ccd81e:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    22bdd7ccd825:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    22bdd7ccd82a:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    22bdd7ccd82e:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    22bdd7ccd832:	43 8b 44 04 68                                  	mov    eax,DWORD PTR [r12+r8*1+0x68]
    22bdd7ccd837:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    22bdd7ccd83d:	0f 85 0b 00 00 00                               	jne    0x22bdd7ccd84e
    22bdd7ccd843:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    22bdd7ccd849:	e9 c7 00 00 00                                  	jmp    0x22bdd7ccd915
    22bdd7ccd84e:	43 8b 84 04 a4 00 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0xa4]
    22bdd7ccd856:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    22bdd7ccd85f:	75 e2                                           	jne    0x22bdd7ccd843
    22bdd7ccd861:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    22bdd7ccd866:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    22bdd7ccd86a:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    22bdd7ccd871:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    22bdd7ccd874:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    22bdd7ccd87a:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    22bdd7ccd87d:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    22bdd7ccd883:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    22bdd7ccd888:	2d 00 02 00 00                                  	sub    eax,0x200
    22bdd7ccd88d:	83 f8 08                                        	cmp    eax,0x8
    22bdd7ccd890:	0f 83 0b 00 00 00                               	jae    0x22bdd7ccd8a1
    22bdd7ccd896:	4c 8d 15 4b 5c 00 00                            	lea    r10,[rip+0x5c4b]        # 0x22bdd7cd34e8
    22bdd7ccd89d:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    22bdd7ccd8a1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccd8a5:	0f 87 6a 00 00 00                               	ja     0x22bdd7ccd915
    22bdd7ccd8ab:	e9 a7 fe ff ff                                  	jmp    0x22bdd7ccd757
    22bdd7ccd8b0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccd8b5:	0f 83 5a 00 00 00                               	jae    0x22bdd7ccd915
    22bdd7ccd8bb:	e9 97 fe ff ff                                  	jmp    0x22bdd7ccd757
    22bdd7ccd8c0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccd8c5:	0f 8a 4a 00 00 00                               	jp     0x22bdd7ccd915
    22bdd7ccd8cb:	0f 84 86 fe ff ff                               	je     0x22bdd7ccd757
    22bdd7ccd8d1:	e9 3f 00 00 00                                  	jmp    0x22bdd7ccd915
    22bdd7ccd8d6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccd8db:	0f 87 34 00 00 00                               	ja     0x22bdd7ccd915
    22bdd7ccd8e1:	e9 71 fe ff ff                                  	jmp    0x22bdd7ccd757
    22bdd7ccd8e6:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccd8ea:	0f 83 25 00 00 00                               	jae    0x22bdd7ccd915
    22bdd7ccd8f0:	e9 62 fe ff ff                                  	jmp    0x22bdd7ccd757
    22bdd7ccd8f5:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    22bdd7ccd8fa:	0f 8a 57 fe ff ff                               	jp     0x22bdd7ccd757
    22bdd7ccd900:	0f 84 0f 00 00 00                               	je     0x22bdd7ccd915
    22bdd7ccd906:	e9 4c fe ff ff                                  	jmp    0x22bdd7ccd757
    22bdd7ccd90b:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    22bdd7ccd90f:	0f 86 42 fe ff ff                               	jbe    0x22bdd7ccd757
    22bdd7ccd915:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    22bdd7ccd91a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    22bdd7ccd91f:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    22bdd7ccd924:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    22bdd7ccd92b:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    22bdd7ccd930:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    22bdd7ccd934:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    22bdd7ccd93b:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    22bdd7ccd943:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7ccd948:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    22bdd7ccd94c:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    22bdd7ccd951:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    22bdd7ccd958:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    22bdd7ccd95c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ccd960:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    22bdd7ccd964:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    22bdd7ccd968:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    22bdd7ccd96b:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    22bdd7ccd975:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    22bdd7ccd97f:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    22bdd7ccd989:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    22bdd7ccd993:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    22bdd7ccd999:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccd9a0:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    22bdd7ccd9a8:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    22bdd7ccd9ac:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    22bdd7ccd9b4:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    22bdd7ccd9bc:	c5 fb 11 a5 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm4
    22bdd7ccd9c4:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    22bdd7ccd9cc:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    22bdd7ccd9d4:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    22bdd7ccd9dc:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    22bdd7ccd9e4:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccd9e8:	0f 86 4b 04 00 00                               	jbe    0x22bdd7ccde39
    22bdd7ccd9ee:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    22bdd7ccd9f6:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    22bdd7ccd9ff:	0f 85 0a 00 00 00                               	jne    0x22bdd7ccda0f
    22bdd7ccda05:	8b c8                                           	mov    ecx,eax
    22bdd7ccda07:	4d 8b c4                                        	mov    r8,r12
    22bdd7ccda0a:	e9 e0 04 00 00                                  	jmp    0x22bdd7ccdeef
    22bdd7ccda0f:	44 8d 80 90 00 00 00                            	lea    r8d,[rax+0x90]
    22bdd7ccda16:	44 8d 58 70                                     	lea    r11d,[rax+0x70]
    22bdd7ccda1a:	41 53                                           	push   r11
    22bdd7ccda1c:	4c 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r8
    22bdd7ccda23:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccda27:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ccda2a:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7ccda2d:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    22bdd7ccda30:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7ccda33:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    22bdd7ccda37:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7ccda3c:	45 8b c8                                        	mov    r9d,r8d
    22bdd7ccda3f:	e8 d4 87 f3 ff                                  	call   0x22bdd7c06218
    22bdd7ccda44:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccda48:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccda4f:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    22bdd7ccda57:	45 85 db                                        	test   r11d,r11d
    22bdd7ccda5a:	0f 85 62 01 00 00                               	jne    0x22bdd7ccdbc2
    22bdd7ccda60:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccda63:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    22bdd7ccda68:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    22bdd7ccda6e:	0f 84 43 00 00 00                               	je     0x22bdd7ccdab7
    22bdd7ccda74:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccda7a:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccda7e:	41 53                                           	push   r11
    22bdd7ccda80:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccda84:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    22bdd7ccda8a:	33 d2                                           	xor    edx,edx
    22bdd7ccda8c:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    22bdd7ccda93:	e8 a8 87 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccda98:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccda9b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccda9f:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccdaa6:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccdab0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccdab7:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    22bdd7ccdabc:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    22bdd7ccdac2:	0f 84 46 00 00 00                               	je     0x22bdd7ccdb0e
    22bdd7ccdac8:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccdace:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccdad2:	41 53                                           	push   r11
    22bdd7ccdad4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccdad8:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    22bdd7ccdade:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7ccdae3:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    22bdd7ccdaea:	e8 51 87 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccdaef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccdaf2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccdaf6:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccdafd:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccdb07:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccdb0e:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    22bdd7ccdb13:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    22bdd7ccdb19:	0f 84 46 00 00 00                               	je     0x22bdd7ccdb65
    22bdd7ccdb1f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccdb25:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccdb29:	41 53                                           	push   r11
    22bdd7ccdb2b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccdb2f:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    22bdd7ccdb35:	ba 02 00 00 00                                  	mov    edx,0x2
    22bdd7ccdb3a:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    22bdd7ccdb41:	e8 fa 86 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccdb46:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccdb49:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccdb4d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    22bdd7ccdb54:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    22bdd7ccdb5e:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccdb65:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    22bdd7ccdb6a:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    22bdd7ccdb70:	0f 84 79 03 00 00                               	je     0x22bdd7ccdeef
    22bdd7ccdb76:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    22bdd7ccdb7c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    22bdd7ccdb80:	41 53                                           	push   r11
    22bdd7ccdb82:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccdb86:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    22bdd7ccdb8c:	ba 03 00 00 00                                  	mov    edx,0x3
    22bdd7ccdb91:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    22bdd7ccdb98:	e8 a3 86 f3 ff                                  	call   0x22bdd7c06240
    22bdd7ccdb9d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccdba0:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    22bdd7ccdba4:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    22bdd7ccdbaa:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    22bdd7ccdbb3:	4c 8b c7                                        	mov    r8,rdi
    22bdd7ccdbb6:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccdbbd:	e9 2d 03 00 00                                  	jmp    0x22bdd7ccdeef
    22bdd7ccdbc2:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    22bdd7ccdbc5:	4d 8b e0                                        	mov    r12,r8
    22bdd7ccdbc8:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    22bdd7ccdbd2:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    22bdd7ccdbd8:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ccdbdd:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccdbe1:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    22bdd7ccdbe8:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ccdbec:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7ccdbf0:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    22bdd7ccdbfa:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    22bdd7ccdbfe:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    22bdd7ccdc04:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ccdc08:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    22bdd7ccdc0d:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    22bdd7ccdc17:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    22bdd7ccdc1b:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    22bdd7ccdc22:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    22bdd7ccdc26:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    22bdd7ccdc2a:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    22bdd7ccdc2e:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccdc32:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    22bdd7ccdc38:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    22bdd7ccdc3d:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    22bdd7ccdc41:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    22bdd7ccdc45:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    22bdd7ccdc4a:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    22bdd7ccdc4f:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    22bdd7ccdc53:	0f 87 09 00 00 00                               	ja     0x22bdd7ccdc62
    22bdd7ccdc59:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7ccdc5d:	e9 04 00 00 00                                  	jmp    0x22bdd7ccdc66
    22bdd7ccdc62:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccdc66:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7ccdc6b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    22bdd7ccdc6f:	0f 87 09 00 00 00                               	ja     0x22bdd7ccdc7e
    22bdd7ccdc75:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7ccdc79:	e9 05 00 00 00                                  	jmp    0x22bdd7ccdc83
    22bdd7ccdc7e:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ccdc83:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ccdc88:	41 83 fb 01                                     	cmp    r11d,0x1
    22bdd7ccdc8c:	0f 84 a1 00 00 00                               	je     0x22bdd7ccdd33
    22bdd7ccdc92:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    22bdd7ccdc96:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    22bdd7ccdca0:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccdca4:	0f 87 09 00 00 00                               	ja     0x22bdd7ccdcb3
    22bdd7ccdcaa:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccdcae:	e9 04 00 00 00                                  	jmp    0x22bdd7ccdcb7
    22bdd7ccdcb3:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccdcb7:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccdcbb:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccdccb
    22bdd7ccdcc1:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccdcc6:	e9 05 00 00 00                                  	jmp    0x22bdd7ccdcd0
    22bdd7ccdccb:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccdcd0:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    22bdd7ccdcd4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccdcd9:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ccdcde:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccdce2:	4c 8b 15 28 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe028]        # 0x22bdd7ccbd11
    22bdd7ccdce9:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7ccdcee:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7ccdcf3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ccdcf7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    22bdd7ccdd01:	41 83 fb 03                                     	cmp    r11d,0x3
    22bdd7ccdd05:	0f 85 04 00 00 00                               	jne    0x22bdd7ccdd0f
    22bdd7ccdd0b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    22bdd7ccdd0f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    22bdd7ccdd14:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccdd18:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    22bdd7ccdd1c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    22bdd7ccdd26:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7ccdd2b:	4d 8b df                                        	mov    r11,r15
    22bdd7ccdd2e:	e9 cc 00 00 00                                  	jmp    0x22bdd7ccddff
    22bdd7ccdd33:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    22bdd7ccdd3a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccdd3e:	0f 87 09 00 00 00                               	ja     0x22bdd7ccdd4d
    22bdd7ccdd44:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    22bdd7ccdd48:	e9 04 00 00 00                                  	jmp    0x22bdd7ccdd51
    22bdd7ccdd4d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    22bdd7ccdd51:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccdd55:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccdd65
    22bdd7ccdd5b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    22bdd7ccdd60:	e9 05 00 00 00                                  	jmp    0x22bdd7ccdd6a
    22bdd7ccdd65:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccdd6a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    22bdd7ccdd74:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    22bdd7ccdd7a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    22bdd7ccdd7f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    22bdd7ccdd83:	0f 87 09 00 00 00                               	ja     0x22bdd7ccdd92
    22bdd7ccdd89:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7ccdd8d:	e9 04 00 00 00                                  	jmp    0x22bdd7ccdd96
    22bdd7ccdd92:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ccdd96:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    22bdd7ccdd9a:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccddaa
    22bdd7ccdda0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7ccdda5:	e9 05 00 00 00                                  	jmp    0x22bdd7ccddaf
    22bdd7ccddaa:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    22bdd7ccddaf:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    22bdd7ccddb9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccddbe:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccddc2:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    22bdd7ccddcc:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ccddd1:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7ccddd6:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ccddda:	4c 8b 15 30 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf30]        # 0x22bdd7ccbd11
    22bdd7ccdde1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7ccdde6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7ccddeb:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ccddef:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ccddf3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    22bdd7ccddf7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    22bdd7ccddfb:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ccddff:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7ccde04:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    22bdd7ccde08:	4c 8b 15 02 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf02]        # 0x22bdd7ccbd11
    22bdd7ccde0f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ccde14:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ccde19:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    22bdd7ccde1d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    22bdd7ccde27:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    22bdd7ccde31:	4d 8b c4                                        	mov    r8,r12
    22bdd7ccde34:	e9 b6 00 00 00                                  	jmp    0x22bdd7ccdeef
    22bdd7ccde39:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    22bdd7ccde40:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    22bdd7ccde47:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    22bdd7ccde4b:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    22bdd7ccde52:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ccde56:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    22bdd7ccde5d:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    22bdd7ccde64:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    22bdd7ccde68:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccde6c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    22bdd7ccde71:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccde75:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    22bdd7ccde7c:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    22bdd7ccde80:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    22bdd7ccde87:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    22bdd7ccde8b:	c5 fb 11 85 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm0
    22bdd7ccde93:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    22bdd7ccde9a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    22bdd7ccde9e:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    22bdd7ccdea2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccdea6:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    22bdd7ccdeac:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccdeb0:	8b c8                                           	mov    ecx,eax
    22bdd7ccdeb2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7ccdeb5:	41 8b d0                                        	mov    edx,r8d
    22bdd7ccdeb8:	c5 fb 10 8d a0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x260]
    22bdd7ccdec0:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    22bdd7ccdec4:	8b df                                           	mov    ebx,edi
    22bdd7ccdec6:	e8 65 86 f3 ff                                  	call   0x22bdd7c06530
    22bdd7ccdecb:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    22bdd7ccdece:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccded2:	c4 c1 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x90]
    22bdd7ccdedc:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    22bdd7ccdee6:	8b cb                                           	mov    ecx,ebx
    22bdd7ccdee8:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccdeef:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccdef3:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    22bdd7ccdefb:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    22bdd7ccdf04:	0f 85 2c 00 00 00                               	jne    0x22bdd7ccdf36
    22bdd7ccdf0a:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    22bdd7ccdf14:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    22bdd7ccdf1e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    22bdd7ccdf28:	49 8b fb                                        	mov    rdi,r11
    22bdd7ccdf2b:	8b d9                                           	mov    ebx,ecx
    22bdd7ccdf2d:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ccdf31:	e9 dd 01 00 00                                  	jmp    0x22bdd7cce113
    22bdd7ccdf36:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    22bdd7ccdf3e:	c5 fa 59 85 30 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1d0]
    22bdd7ccdf46:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    22bdd7ccdf4e:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    22bdd7ccdf56:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    22bdd7ccdf5e:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    22bdd7ccdf66:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    22bdd7ccdf6a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    22bdd7ccdf6e:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    22bdd7ccdf76:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    22bdd7ccdf7a:	4c 8b 15 6e cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb6e]        # 0x22bdd7ccaaef
    22bdd7ccdf81:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7ccdf86:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    22bdd7ccdf8a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    22bdd7ccdf8e:	0f 87 04 00 00 00                               	ja     0x22bdd7ccdf98
    22bdd7ccdf94:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ccdf98:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    22bdd7ccdfa0:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    22bdd7ccdfa7:	0f 85 28 00 00 00                               	jne    0x22bdd7ccdfd5
    22bdd7ccdfad:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    22bdd7ccdfb7:	4c 8b 15 31 cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb31]        # 0x22bdd7ccaaef
    22bdd7ccdfbe:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7ccdfc3:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    22bdd7ccdfc7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccdfcb:	e8 f0 a5 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7ccdfd0:	e9 94 00 00 00                                  	jmp    0x22bdd7cce069
    22bdd7ccdfd5:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7ccdfd9:	0f 84 67 00 00 00                               	je     0x22bdd7cce046
    22bdd7ccdfdf:	4d 8b d0                                        	mov    r10,r8
    22bdd7ccdfe2:	4d 8b c3                                        	mov    r8,r11
    22bdd7ccdfe5:	4d 8b da                                        	mov    r11,r10
    22bdd7ccdfe8:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    22bdd7ccdff2:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    22bdd7ccdffc:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    22bdd7cce001:	7a 06                                           	jp     0x22bdd7cce009
    22bdd7cce003:	0f 84 2a 00 00 00                               	je     0x22bdd7cce033
    22bdd7cce009:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    22bdd7cce00d:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    22bdd7cce012:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    22bdd7cce016:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    22bdd7cce01a:	0f 86 49 00 00 00                               	jbe    0x22bdd7cce069
    22bdd7cce020:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7cce024:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7cce029:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7cce02e:	e9 5b 00 00 00                                  	jmp    0x22bdd7cce08e
    22bdd7cce033:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7cce037:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7cce03c:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7cce041:	e9 44 00 00 00                                  	jmp    0x22bdd7cce08a
    22bdd7cce046:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    22bdd7cce050:	4c 8b 15 98 ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca98]        # 0x22bdd7ccaaef
    22bdd7cce057:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    22bdd7cce05c:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    22bdd7cce060:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cce064:	e8 57 a5 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cce069:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    22bdd7cce06d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    22bdd7cce072:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    22bdd7cce077:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    22bdd7cce07b:	0f 87 09 00 00 00                               	ja     0x22bdd7cce08a
    22bdd7cce081:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    22bdd7cce085:	e9 04 00 00 00                                  	jmp    0x22bdd7cce08e
    22bdd7cce08a:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    22bdd7cce08e:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    22bdd7cce091:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cce095:	c4 c1 42 59 b4 18 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rbx*1+0x190]
    22bdd7cce09f:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    22bdd7cce0a3:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    22bdd7cce0a7:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    22bdd7cce0b1:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    22bdd7cce0b6:	c4 c1 7a 11 b4 18 90 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x190],xmm6
    22bdd7cce0c0:	c4 41 42 59 8c 18 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rbx*1+0x194]
    22bdd7cce0ca:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    22bdd7cce0d4:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    22bdd7cce0d9:	c4 41 7a 11 8c 18 94 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x194],xmm9
    22bdd7cce0e3:	c4 c1 42 59 bc 18 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rbx*1+0x198]
    22bdd7cce0ed:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    22bdd7cce0f7:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    22bdd7cce0fc:	c4 c1 7a 11 bc 18 98 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x198],xmm7
    22bdd7cce106:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    22bdd7cce10a:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7cce10e:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7cce113:	c4 c1 7a 10 ac 18 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rbx*1+0x19c]
    22bdd7cce11d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cce121:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cce124:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cce12a:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    22bdd7cce130:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    22bdd7cce138:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    22bdd7cce13c:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    22bdd7cce140:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    22bdd7cce145:	e8 16 81 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cce14a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7cce14e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cce153:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cce157:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cce15c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cce162:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cce168:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cce16d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cce175:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cce17d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cce185:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cce18d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cce193:	e9 12 4d 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cce198:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    22bdd7cce19c:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    22bdd7cce1a3:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7cce1a7:	4e 89 7c 02 70                                  	mov    QWORD PTR [rdx+r8*1+0x70],r15
    22bdd7cce1ac:	4a 8d 0c 3f                                     	lea    rcx,[rdi+r15*1]
    22bdd7cce1b0:	4a 89 8c 02 80 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x80],rcx
    22bdd7cce1b8:	49 8b df                                        	mov    rbx,r15
    22bdd7cce1bb:	48 2b 9d d0 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x330]
    22bdd7cce1c2:	4a 89 5c 02 78                                  	mov    QWORD PTR [rdx+r8*1+0x78],rbx
    22bdd7cce1c7:	4c 8d 1c 1f                                     	lea    r11,[rdi+rbx*1]
    22bdd7cce1cb:	4e 89 9c 02 88 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x88],r11
    22bdd7cce1d3:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    22bdd7cce1da:	4a 89 74 02 50                                  	mov    QWORD PTR [rdx+r8*1+0x50],rsi
    22bdd7cce1df:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    22bdd7cce1e6:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    22bdd7cce1ea:	4e 89 64 02 60                                  	mov    QWORD PTR [rdx+r8*1+0x60],r12
    22bdd7cce1ef:	48 8b c6                                        	mov    rax,rsi
    22bdd7cce1f2:	48 2b 85 f0 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x310]
    22bdd7cce1f9:	4a 89 44 02 58                                  	mov    QWORD PTR [rdx+r8*1+0x58],rax
    22bdd7cce1fe:	4c 8d 0c 07                                     	lea    r9,[rdi+rax*1]
    22bdd7cce202:	4e 89 4c 02 68                                  	mov    QWORD PTR [rdx+r8*1+0x68],r9
    22bdd7cce207:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    22bdd7cce20b:	c4 a1 7a 7f 44 02 40                            	vmovdqu XMMWORD PTR [rdx+r8*1+0x40],xmm0
    22bdd7cce212:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    22bdd7cce219:	48 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rbx
    22bdd7cce220:	4c 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r11
    22bdd7cce227:	4c 89 a5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r12
    22bdd7cce22e:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    22bdd7cce235:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    22bdd7cce23c:	33 ff                                           	xor    edi,edi
    22bdd7cce23e:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    22bdd7cce242:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cce246:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    22bdd7cce24a:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    22bdd7cce250:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    22bdd7cce255:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    22bdd7cce25c:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    22bdd7cce263:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    22bdd7cce26a:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    22bdd7cce26f:	e9 10 00 00 00                                  	jmp    0x22bdd7cce284
    22bdd7cce274:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cce27d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    22bdd7cce280:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    22bdd7cce284:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7cce289:	0f 85 63 4f 00 00                               	jne    0x22bdd7cd31f2
    22bdd7cce28f:	8b cf                                           	mov    ecx,edi
    22bdd7cce291:	41 bf 01 00 00 00                               	mov    r15d,0x1
    22bdd7cce297:	41 d3 e7                                        	shl    r15d,cl
    22bdd7cce29a:	44 85 bd 68 fd ff ff                            	test   DWORD PTR [rbp-0x298],r15d
    22bdd7cce2a1:	0f 84 69 01 00 00                               	je     0x22bdd7cce410
    22bdd7cce2a7:	41 8d 4c b8 40                                  	lea    ecx,[r8+rdi*4+0x40]
    22bdd7cce2ac:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    22bdd7cce2b3:	45 8d 7c f8 70                                  	lea    r15d,[r8+rdi*8+0x70]
    22bdd7cce2b8:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    22bdd7cce2bc:	c4 41 82 2a cf                                  	vcvtsi2ss xmm9,xmm15,r15
    22bdd7cce2c1:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    22bdd7cce2c6:	c4 41 42 5c d1                                  	vsubss xmm10,xmm7,xmm9
    22bdd7cce2cb:	45 8d 7c f8 50                                  	lea    r15d,[r8+rdi*8+0x50]
    22bdd7cce2d0:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    22bdd7cce2d4:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    22bdd7cce2d9:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    22bdd7cce2de:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    22bdd7cce2e3:	c4 21 2a 59 54 0a 18                            	vmulss xmm10,xmm10,DWORD PTR [rdx+r9*1+0x18]
    22bdd7cce2ea:	c4 21 32 59 4c 22 18                            	vmulss xmm9,xmm9,DWORD PTR [rdx+r12*1+0x18]
    22bdd7cce2f1:	c5 22 59 5c 02 18                               	vmulss xmm11,xmm11,DWORD PTR [rdx+rax*1+0x18]
    22bdd7cce2f7:	c4 41 32 58 cb                                  	vaddss xmm9,xmm9,xmm11
    22bdd7cce2fc:	c4 41 2a 58 c9                                  	vaddss xmm9,xmm10,xmm9
    22bdd7cce301:	c4 41 72 58 c9                                  	vaddss xmm9,xmm1,xmm9
    22bdd7cce306:	c5 7a 11 0c 0a                                  	vmovss DWORD PTR [rdx+rcx*1],xmm9
    22bdd7cce30b:	44 8b 7c 32 68                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0x68]
    22bdd7cce310:	83 7c 32 68 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x68],0x0
    22bdd7cce315:	0f 84 f5 00 00 00                               	je     0x22bdd7cce410
    22bdd7cce31b:	44 8b bc 32 a4 00 00 00                         	mov    r15d,DWORD PTR [rdx+rsi*1+0xa4]
    22bdd7cce323:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    22bdd7cce32b:	0f 85 df 00 00 00                               	jne    0x22bdd7cce410
    22bdd7cce331:	44 8b 7c 32 0c                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0xc]
    22bdd7cce336:	8b 0c 32                                        	mov    ecx,DWORD PTR [rdx+rsi*1]
    22bdd7cce339:	44 8b c7                                        	mov    r8d,edi
    22bdd7cce33c:	41 d1 e8                                        	shr    r8d,1
    22bdd7cce33f:	45 03 c3                                        	add    r8d,r11d
    22bdd7cce342:	44 0f af c1                                     	imul   r8d,ecx
    22bdd7cce346:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    22bdd7cce34a:	45 8d 04 98                                     	lea    r8d,[r8+rbx*4]
    22bdd7cce34e:	44 8b ff                                        	mov    r15d,edi
    22bdd7cce351:	41 83 e7 01                                     	and    r15d,0x1
    22bdd7cce355:	47 8d 04 b8                                     	lea    r8d,[r8+r15*4]
    22bdd7cce359:	c4 21 7a 10 14 02                               	vmovss xmm10,DWORD PTR [rdx+r8*1]
    22bdd7cce35f:	44 8b 44 32 6c                                  	mov    r8d,DWORD PTR [rdx+rsi*1+0x6c]
    22bdd7cce364:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    22bdd7cce36b:	41 83 f8 08                                     	cmp    r8d,0x8
    22bdd7cce36f:	0f 83 0b 00 00 00                               	jae    0x22bdd7cce380
    22bdd7cce375:	4c 8d 15 2c 51 00 00                            	lea    r10,[rip+0x512c]        # 0x22bdd7cd34a8
    22bdd7cce37c:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    22bdd7cce380:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    22bdd7cce385:	0f 87 85 00 00 00                               	ja     0x22bdd7cce410
    22bdd7cce38b:	e9 67 00 00 00                                  	jmp    0x22bdd7cce3f7
    22bdd7cce390:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    22bdd7cce395:	0f 83 75 00 00 00                               	jae    0x22bdd7cce410
    22bdd7cce39b:	e9 57 00 00 00                                  	jmp    0x22bdd7cce3f7
    22bdd7cce3a0:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    22bdd7cce3a5:	0f 8a 65 00 00 00                               	jp     0x22bdd7cce410
    22bdd7cce3ab:	0f 84 46 00 00 00                               	je     0x22bdd7cce3f7
    22bdd7cce3b1:	e9 5a 00 00 00                                  	jmp    0x22bdd7cce410
    22bdd7cce3b6:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    22bdd7cce3bb:	0f 87 4f 00 00 00                               	ja     0x22bdd7cce410
    22bdd7cce3c1:	e9 31 00 00 00                                  	jmp    0x22bdd7cce3f7
    22bdd7cce3c6:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    22bdd7cce3cb:	0f 83 3f 00 00 00                               	jae    0x22bdd7cce410
    22bdd7cce3d1:	e9 21 00 00 00                                  	jmp    0x22bdd7cce3f7
    22bdd7cce3d6:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    22bdd7cce3db:	0f 8a 16 00 00 00                               	jp     0x22bdd7cce3f7
    22bdd7cce3e1:	0f 84 29 00 00 00                               	je     0x22bdd7cce410
    22bdd7cce3e7:	e9 0b 00 00 00                                  	jmp    0x22bdd7cce3f7
    22bdd7cce3ec:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    22bdd7cce3f1:	0f 87 19 00 00 00                               	ja     0x22bdd7cce410
    22bdd7cce3f7:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    22bdd7cce3fe:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    22bdd7cce402:	44 23 bd 68 fd ff ff                            	and    r15d,DWORD PTR [rbp-0x298]
    22bdd7cce409:	4c 89 bd 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r15
    22bdd7cce410:	83 c7 01                                        	add    edi,0x1
    22bdd7cce413:	83 ff 04                                        	cmp    edi,0x4
    22bdd7cce416:	0f 85 64 fe ff ff                               	jne    0x22bdd7cce280
    22bdd7cce41c:	8b bd 68 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x298]
    22bdd7cce422:	85 ff                                           	test   edi,edi
    22bdd7cce424:	0f 85 1d 00 00 00                               	jne    0x22bdd7cce447
    22bdd7cce42a:	4c 8b c6                                        	mov    r8,rsi
    22bdd7cce42d:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    22bdd7cce431:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7cce435:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    22bdd7cce439:	4c 8b e2                                        	mov    r12,rdx
    22bdd7cce43c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cce442:	e9 63 4a 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cce447:	c4 61 82 2a 8d 60 ff ff ff                      	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0xa0]
    22bdd7cce450:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    22bdd7cce455:	c4 61 82 2a 95 b0 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x150]
    22bdd7cce45e:	c4 43 31 21 ca 10                               	vinsertps xmm9,xmm9,xmm10,0x10
    22bdd7cce464:	c4 61 82 2a 95 b8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x148]
    22bdd7cce46d:	c4 43 31 21 ca 20                               	vinsertps xmm9,xmm9,xmm10,0x20
    22bdd7cce473:	c4 61 82 2a 95 c8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x138]
    22bdd7cce47c:	c4 43 31 21 ca 30                               	vinsertps xmm9,xmm9,xmm10,0x30
    22bdd7cce482:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    22bdd7cce48a:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    22bdd7cce48f:	4c 8d 42 1c                                     	lea    r8,[rdx+0x1c]
    22bdd7cce493:	c4 02 79 18 1c 20                               	vbroadcastss xmm11,DWORD PTR [r8+r12*1]
    22bdd7cce499:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    22bdd7cce49e:	c4 e1 82 2a 95 50 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xb0]
    22bdd7cce4a7:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    22bdd7cce4ac:	c4 e1 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0x100]
    22bdd7cce4b5:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    22bdd7cce4bb:	c4 e1 82 2a 9d 18 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe8]
    22bdd7cce4c4:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    22bdd7cce4ca:	c4 e1 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe0]
    22bdd7cce4d3:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    22bdd7cce4d9:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    22bdd7cce4dd:	c4 c2 79 18 1c 00                               	vbroadcastss xmm3,DWORD PTR [r8+rax*1]
    22bdd7cce4e3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    22bdd7cce4e7:	c5 a0 58 e3                                     	vaddps xmm4,xmm11,xmm3
    22bdd7cce4eb:	4c 8b 15 1f d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd81f]        # 0x22bdd7ccbd11
    22bdd7cce4f2:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cce4f7:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7cce4fb:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    22bdd7cce500:	c5 30 5c ca                                     	vsubps xmm9,xmm9,xmm2
    22bdd7cce504:	c4 82 79 18 14 08                               	vbroadcastss xmm2,DWORD PTR [r8+r9*1]
    22bdd7cce50a:	c5 30 59 ca                                     	vmulps xmm9,xmm9,xmm2
    22bdd7cce50e:	c4 c1 58 58 d1                                  	vaddps xmm2,xmm4,xmm9
    22bdd7cce513:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    22bdd7cce517:	c5 e8 c2 f4 02                                  	vcmpleps xmm6,xmm2,xmm4
    22bdd7cce51c:	c5 78 50 c6                                     	vmovmskps r8d,xmm6
    22bdd7cce520:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    22bdd7cce524:	44 23 c7                                        	and    r8d,edi
    22bdd7cce527:	0f 85 16 00 00 00                               	jne    0x22bdd7cce543
    22bdd7cce52d:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    22bdd7cce534:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    22bdd7cce537:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cce53e:	e9 7c 2a 00 00                                  	jmp    0x22bdd7cd0fbf
    22bdd7cce543:	c5 d0 5e f2                                     	vdivps xmm6,xmm5,xmm2
    22bdd7cce547:	48 8d 7a 2c                                     	lea    rdi,[rdx+0x2c]
    22bdd7cce54b:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    22bdd7cce551:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7cce555:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    22bdd7cce55b:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    22bdd7cce55f:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    22bdd7cce563:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    22bdd7cce569:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    22bdd7cce56d:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    22bdd7cce571:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    22bdd7cce575:	48 8d 7a 28                                     	lea    rdi,[rdx+0x28]
    22bdd7cce579:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    22bdd7cce57f:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7cce583:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    22bdd7cce58b:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    22bdd7cce591:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    22bdd7cce595:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    22bdd7cce599:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    22bdd7cce59f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    22bdd7cce5a3:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    22bdd7cce5a7:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    22bdd7cce5ab:	48 8d 7a 24                                     	lea    rdi,[rdx+0x24]
    22bdd7cce5af:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    22bdd7cce5b5:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7cce5b9:	c5 f8 11 bd a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm7
    22bdd7cce5c1:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    22bdd7cce5c7:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    22bdd7cce5cb:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    22bdd7cce5cf:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    22bdd7cce5d5:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    22bdd7cce5d9:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    22bdd7cce5dd:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    22bdd7cce5e1:	48 8d 7a 20                                     	lea    rdi,[rdx+0x20]
    22bdd7cce5e5:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    22bdd7cce5eb:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7cce5ef:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    22bdd7cce5f7:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    22bdd7cce5fd:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    22bdd7cce601:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    22bdd7cce605:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    22bdd7cce60b:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    22bdd7cce60f:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    22bdd7cce613:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    22bdd7cce617:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cce61e:	44 8b bc 3a 34 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x134]
    22bdd7cce626:	41 83 ef 01                                     	sub    r15d,0x1
    22bdd7cce62a:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    22bdd7cce631:	41 83 ff 01                                     	cmp    r15d,0x1
    22bdd7cce635:	0f 86 5a 17 00 00                               	jbe    0x22bdd7ccfd95
    22bdd7cce63b:	44 8b bc 3a 38 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x138]
    22bdd7cce643:	83 bc 3a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0x138],0x0
    22bdd7cce64b:	0f 85 24 00 00 00                               	jne    0x22bdd7cce675
    22bdd7cce651:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    22bdd7cce659:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    22bdd7cce65d:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    22bdd7cce665:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    22bdd7cce66d:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    22bdd7cce670:	e9 d7 28 00 00                                  	jmp    0x22bdd7cd0f4c
    22bdd7cce675:	4d 8b f8                                        	mov    r15,r8
    22bdd7cce678:	41 83 e7 08                                     	and    r15d,0x8
    22bdd7cce67c:	49 8b c8                                        	mov    rcx,r8
    22bdd7cce67f:	83 e1 04                                        	and    ecx,0x4
    22bdd7cce682:	4c 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r15
    22bdd7cce689:	4d 8b f8                                        	mov    r15,r8
    22bdd7cce68c:	41 83 e7 02                                     	and    r15d,0x2
    22bdd7cce690:	41 83 e0 01                                     	and    r8d,0x1
    22bdd7cce694:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    22bdd7cce69c:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    22bdd7cce6a4:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    22bdd7cce6ac:	c5 78 11 8d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm9
    22bdd7cce6b4:	c5 f8 11 9d 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm3
    22bdd7cce6bc:	c5 78 11 9d f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm11
    22bdd7cce6c4:	c5 f8 11 ad d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm5
    22bdd7cce6cc:	c5 f8 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm4
    22bdd7cce6d4:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    22bdd7cce6db:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    22bdd7cce6e2:	4c 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r8
    22bdd7cce6e9:	45 33 c0                                        	xor    r8d,r8d
    22bdd7cce6ec:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cce6f0:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    22bdd7cce6f8:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    22bdd7cce700:	e9 6a 00 00 00                                  	jmp    0x22bdd7cce76f
    22bdd7cce705:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cce70e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cce717:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cce720:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cce729:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cce732:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cce73b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    22bdd7cce740:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    22bdd7cce748:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    22bdd7cce750:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cce757:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    22bdd7cce75f:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    22bdd7cce767:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    22bdd7cce76f:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7cce772:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    22bdd7cce778:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    22bdd7cce77f:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    22bdd7cce786:	4c 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r8
    22bdd7cce78d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7cce792:	0f 85 e4 4a 00 00                               	jne    0x22bdd7cd327c
    22bdd7cce798:	44 8b 8c 3a 3c 01 00 00                         	mov    r9d,DWORD PTR [rdx+rdi*1+0x13c]
    22bdd7cce7a0:	41 8b c8                                        	mov    ecx,r8d
    22bdd7cce7a3:	41 d3 e9                                        	shr    r9d,cl
    22bdd7cce7a6:	41 f6 c1 01                                     	test   r9b,0x1
    22bdd7cce7aa:	0f 85 2d 00 00 00                               	jne    0x22bdd7cce7dd
    22bdd7cce7b0:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    22bdd7cce7b7:	45 8b c8                                        	mov    r9d,r8d
    22bdd7cce7ba:	41 c1 e1 06                                     	shl    r9d,0x6
    22bdd7cce7be:	41 03 c9                                        	add    ecx,r9d
    22bdd7cce7c1:	c5 fa 7f 6c 0a 30                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x30],xmm5
    22bdd7cce7c7:	c5 fa 7f 6c 0a 20                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x20],xmm5
    22bdd7cce7cd:	c5 fa 7f 6c 0a 10                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x10],xmm5
    22bdd7cce7d3:	c5 fa 7f 2c 0a                                  	vmovdqu XMMWORD PTR [rdx+rcx*1],xmm5
    22bdd7cce7d8:	e9 11 12 00 00                                  	jmp    0x22bdd7ccf9ee
    22bdd7cce7dd:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    22bdd7cce7e4:	45 8b c8                                        	mov    r9d,r8d
    22bdd7cce7e7:	41 c1 e1 06                                     	shl    r9d,0x6
    22bdd7cce7eb:	44 03 c9                                        	add    r9d,ecx
    22bdd7cce7ee:	41 6b c8 4c                                     	imul   ecx,r8d,0x4c
    22bdd7cce7f2:	03 c8                                           	add    ecx,eax
    22bdd7cce7f4:	8b 7c 0a 38                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x38]
    22bdd7cce7f8:	83 7c 0a 38 00                                  	cmp    DWORD PTR [rdx+rcx*1+0x38],0x0
    22bdd7cce7fd:	0f 85 a2 11 00 00                               	jne    0x22bdd7ccf9a5
    22bdd7cce803:	41 8b f8                                        	mov    edi,r8d
    22bdd7cce806:	c1 e7 04                                        	shl    edi,0x4
    22bdd7cce809:	46 8d 04 27                                     	lea    r8d,[rdi+r12*1]
    22bdd7cce80d:	4c 8d 62 04                                     	lea    r12,[rdx+0x4]
    22bdd7cce811:	c4 02 79 18 04 04                               	vbroadcastss xmm8,DWORD PTR [r12+r8*1]
    22bdd7cce817:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    22bdd7cce81c:	41 8d 04 3f                                     	lea    eax,[r15+rdi*1]
    22bdd7cce820:	c4 42 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+rax*1]
    22bdd7cce826:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    22bdd7cce82b:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    22bdd7cce830:	03 fb                                           	add    edi,ebx
    22bdd7cce832:	c4 42 79 18 14 3c                               	vbroadcastss xmm10,DWORD PTR [r12+rdi*1]
    22bdd7cce838:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    22bdd7cce83d:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    22bdd7cce842:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    22bdd7cce847:	c4 22 79 18 14 02                               	vbroadcastss xmm10,DWORD PTR [rdx+r8*1]
    22bdd7cce84d:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    22bdd7cce852:	c4 62 79 18 24 02                               	vbroadcastss xmm12,DWORD PTR [rdx+rax*1]
    22bdd7cce858:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    22bdd7cce85d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    22bdd7cce862:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    22bdd7cce868:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    22bdd7cce86d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    22bdd7cce872:	c4 41 48 59 d2                                  	vmulps xmm10,xmm6,xmm10
    22bdd7cce877:	44 8b 24 0a                                     	mov    r12d,DWORD PTR [rdx+rcx*1]
    22bdd7cce87b:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7cce87f:	0f 85 22 0e 00 00                               	jne    0x22bdd7ccf6a7
    22bdd7cce885:	44 8b 7c 0a 28                                  	mov    r15d,DWORD PTR [rdx+rcx*1+0x28]
    22bdd7cce88a:	45 85 ff                                        	test   r15d,r15d
    22bdd7cce88d:	0f 84 14 0e 00 00                               	je     0x22bdd7ccf6a7
    22bdd7cce893:	8b 5c 0a 1c                                     	mov    ebx,DWORD PTR [rdx+rcx*1+0x1c]
    22bdd7cce897:	85 db                                           	test   ebx,ebx
    22bdd7cce899:	0f 8e 08 0e 00 00                               	jle    0x22bdd7ccf6a7
    22bdd7cce89f:	44 8b 5c 0a 20                                  	mov    r11d,DWORD PTR [rdx+rcx*1+0x20]
    22bdd7cce8a4:	45 85 db                                        	test   r11d,r11d
    22bdd7cce8a7:	0f 8e f6 0d 00 00                               	jle    0x22bdd7ccf6a3
    22bdd7cce8ad:	44 8b d3                                        	mov    r10d,ebx
    22bdd7cce8b0:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    22bdd7cce8b5:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    22bdd7cce8ba:	8b 7c 0a 10                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x10]
    22bdd7cce8be:	45 33 c0                                        	xor    r8d,r8d
    22bdd7cce8c1:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    22bdd7cce8c7:	41 0f 95 c0                                     	setne  r8b
    22bdd7cce8cb:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    22bdd7cce8d1:	40 0f 95 c7                                     	setne  dil
    22bdd7cce8d5:	40 0f b6 ff                                     	movzx  edi,dil
    22bdd7cce8d9:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    22bdd7cce8e0:	41 23 f8                                        	and    edi,r8d
    22bdd7cce8e3:	0f 85 0f 00 00 00                               	jne    0x22bdd7cce8f8
    22bdd7cce8e9:	c4 41 58 5f d2                                  	vmaxps xmm10,xmm4,xmm10
    22bdd7cce8ee:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    22bdd7cce8f3:	e9 0b 00 00 00                                  	jmp    0x22bdd7cce903
    22bdd7cce8f8:	c4 43 79 08 ea 09                               	vroundps xmm13,xmm10,0x9
    22bdd7cce8fe:	c4 41 28 5c d5                                  	vsubps xmm10,xmm10,xmm13
    22bdd7cce903:	c4 41 18 59 d2                                  	vmulps xmm10,xmm12,xmm10
    22bdd7cce908:	45 8b d3                                        	mov    r10d,r11d
    22bdd7cce90b:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    22bdd7cce910:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    22bdd7cce915:	44 8b 44 0a 14                                  	mov    r8d,DWORD PTR [rdx+rcx*1+0x14]
    22bdd7cce91a:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cce91d:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    22bdd7cce924:	41 0f 95 c4                                     	setne  r12b
    22bdd7cce928:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    22bdd7cce92f:	41 0f 95 c0                                     	setne  r8b
    22bdd7cce933:	45 0f b6 c0                                     	movzx  r8d,r8b
    22bdd7cce937:	45 23 c4                                        	and    r8d,r12d
    22bdd7cce93a:	0f 85 0f 00 00 00                               	jne    0x22bdd7cce94f
    22bdd7cce940:	c4 41 58 5f c0                                  	vmaxps xmm8,xmm4,xmm8
    22bdd7cce945:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    22bdd7cce94a:	e9 0b 00 00 00                                  	jmp    0x22bdd7cce95a
    22bdd7cce94f:	c4 43 79 08 e8 09                               	vroundps xmm13,xmm8,0x9
    22bdd7cce955:	c4 41 38 5c c5                                  	vsubps xmm8,xmm8,xmm13
    22bdd7cce95a:	c4 41 18 59 c0                                  	vmulps xmm8,xmm12,xmm8
    22bdd7cce95f:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    22bdd7cce969:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7cce96e:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7cce973:	c4 41 38 58 ec                                  	vaddps xmm13,xmm8,xmm12
    22bdd7cce978:	44 8b 64 0a 0c                                  	mov    r12d,DWORD PTR [rdx+rcx*1+0xc]
    22bdd7cce97d:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cce980:	81 7c 0a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0xc],0x2600
    22bdd7cce988:	41 0f 94 c4                                     	sete   r12b
    22bdd7cce98c:	45 85 e4                                        	test   r12d,r12d
    22bdd7cce98f:	0f 85 66 00 00 00                               	jne    0x22bdd7cce9fb
    22bdd7cce995:	c4 43 79 08 c5 09                               	vroundps xmm8,xmm13,0x9
    22bdd7cce99b:	49 ba 50 d8 a6 01 d6 5c 00 00                   	movabs r10,0x5cd601a6d850
    22bdd7cce9a5:	c4 41 38 54 32                                  	vandps xmm14,xmm8,XMMWORD PTR [r10]
    22bdd7cce9aa:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    22bdd7cce9b4:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cce9b9:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cce9bd:	c5 08 c2 f1 01                                  	vcmpltps xmm14,xmm14,xmm1
    22bdd7cce9c2:	4c 8b 15 95 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd95]        # 0x22bdd7cca75e
    22bdd7cce9c9:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7cce9cf:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    22bdd7cce9d4:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7cce9da:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    22bdd7cce9de:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    22bdd7cce9e3:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    22bdd7cce9e8:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    22bdd7cce9ed:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    22bdd7cce9f2:	c5 79 28 ec                                     	vmovapd xmm13,xmm4
    22bdd7cce9f6:	e9 49 00 00 00                                  	jmp    0x22bdd7ccea44
    22bdd7cce9fb:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    22bdd7ccea01:	4c 8b 15 95 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff95]        # 0x22bdd7cce99d
    22bdd7ccea08:	c4 41 18 54 2a                                  	vandps xmm13,xmm12,XMMWORD PTR [r10]
    22bdd7ccea0d:	4c 8b 15 98 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff98]        # 0x22bdd7cce9ac
    22bdd7ccea14:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7ccea19:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7ccea1d:	c5 10 c2 f1 01                                  	vcmpltps xmm14,xmm13,xmm1
    22bdd7ccea22:	4c 8b 15 35 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd35]        # 0x22bdd7cca75e
    22bdd7ccea29:	c4 41 18 c2 fc 00                               	vcmpeqps xmm15,xmm12,xmm12
    22bdd7ccea2f:	c4 41 18 54 ef                                  	vandps xmm13,xmm12,xmm15
    22bdd7ccea34:	c4 41 18 c2 3a 0d                               	vcmpgeps xmm15,xmm12,XMMWORD PTR [r10]
    22bdd7ccea3a:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    22bdd7ccea3f:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    22bdd7ccea44:	c4 c3 79 08 e2 09                               	vroundps xmm4,xmm10,0x9
    22bdd7ccea4a:	4c 8b 15 0d bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd0d]        # 0x22bdd7cca75e
    22bdd7ccea51:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    22bdd7ccea56:	c4 c1 58 54 c7                                  	vandps xmm0,xmm4,xmm15
    22bdd7ccea5b:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    22bdd7ccea61:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    22bdd7ccea65:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    22bdd7ccea6a:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    22bdd7ccea74:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7ccea79:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7ccea7d:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x22bdd7cce99d
    22bdd7ccea84:	c4 41 58 54 0a                                  	vandps xmm9,xmm4,XMMWORD PTR [r10]
    22bdd7ccea89:	c5 30 c2 c9 01                                  	vcmpltps xmm9,xmm9,xmm1
    22bdd7ccea8e:	c5 31 df fe                                     	vpandn xmm15,xmm9,xmm6
    22bdd7ccea92:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    22bdd7ccea97:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7ccea9c:	8d 43 ff                                        	lea    eax,[rbx-0x1]
    22bdd7ccea9f:	c5 79 6e c8                                     	vmovd  xmm9,eax
    22bdd7cceaa3:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    22bdd7cceaa8:	8b 44 0a 2c                                     	mov    eax,DWORD PTR [rdx+rcx*1+0x2c]
    22bdd7cceaac:	c4 e2 79 3d ca                                  	vpmaxsd xmm1,xmm0,xmm2
    22bdd7cceab1:	c4 c2 71 39 c9                                  	vpminsd xmm1,xmm1,xmm9
    22bdd7cceab6:	85 ff                                           	test   edi,edi
    22bdd7cceab8:	0f 84 58 00 00 00                               	je     0x22bdd7cceb16
    22bdd7cceabe:	c5 f9 6e c8                                     	vmovd  xmm1,eax
    22bdd7cceac2:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    22bdd7cceac7:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    22bdd7cceacb:	85 c0                                           	test   eax,eax
    22bdd7cceacd:	0f 85 43 00 00 00                               	jne    0x22bdd7cceb16
    22bdd7ccead3:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    22bdd7ccead7:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    22bdd7cceadc:	c4 c1 79 66 d9                                  	vpcmpgtd xmm3,xmm0,xmm9
    22bdd7cceae1:	c5 e1 db d9                                     	vpand  xmm3,xmm3,xmm1
    22bdd7cceae5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cceaea:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    22bdd7cceaef:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    22bdd7cceaf3:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    22bdd7cceaf7:	c4 41 71 db db                                  	vpand  xmm11,xmm1,xmm11
    22bdd7cceafc:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    22bdd7cceb01:	c4 c1 79 fe cb                                  	vpaddd xmm1,xmm0,xmm11
    22bdd7cceb06:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    22bdd7cceb0e:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    22bdd7cceb16:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    22bdd7cceb1a:	c4 c1 11 db f6                                  	vpand  xmm6,xmm13,xmm14
    22bdd7cceb1f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cceb24:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    22bdd7cceb28:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    22bdd7cceb2d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cceb32:	8b 4c 0a 30                                     	mov    ecx,DWORD PTR [rdx+rcx*1+0x30]
    22bdd7cceb36:	c4 62 49 3d f2                                  	vpmaxsd xmm14,xmm6,xmm2
    22bdd7cceb3b:	c4 42 09 39 f5                                  	vpminsd xmm14,xmm14,xmm13
    22bdd7cceb40:	45 85 c0                                        	test   r8d,r8d
    22bdd7cceb43:	0f 84 4a 00 00 00                               	je     0x22bdd7cceb93
    22bdd7cceb49:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    22bdd7cceb4d:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    22bdd7cceb52:	c5 09 db f6                                     	vpand  xmm14,xmm14,xmm6
    22bdd7cceb56:	85 c9                                           	test   ecx,ecx
    22bdd7cceb58:	0f 85 35 00 00 00                               	jne    0x22bdd7cceb93
    22bdd7cceb5e:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    22bdd7cceb63:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    22bdd7cceb68:	c4 c1 49 66 dd                                  	vpcmpgtd xmm3,xmm6,xmm13
    22bdd7cceb6d:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    22bdd7cceb72:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cceb77:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    22bdd7cceb7c:	c5 69 66 de                                     	vpcmpgtd xmm11,xmm2,xmm6
    22bdd7cceb80:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    22bdd7cceb84:	c4 41 09 db db                                  	vpand  xmm11,xmm14,xmm11
    22bdd7cceb89:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    22bdd7cceb8e:	c4 41 49 fe f3                                  	vpaddd xmm14,xmm6,xmm11
    22bdd7cceb93:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    22bdd7cceb97:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    22bdd7cceb9c:	c4 62 09 40 f3                                  	vpmulld xmm14,xmm14,xmm3
    22bdd7cceba1:	c5 09 fe d9                                     	vpaddd xmm11,xmm14,xmm1
    22bdd7cceba5:	c4 63 79 16 db 03                               	vpextrd ebx,xmm11,0x3
    22bdd7ccebab:	c4 43 79 16 d9 02                               	vpextrd r9d,xmm11,0x2
    22bdd7ccebb1:	48 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rbx
    22bdd7ccebb8:	c4 63 79 16 db 01                               	vpextrd ebx,xmm11,0x1
    22bdd7ccebbe:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    22bdd7ccebc5:	c4 41 79 7e d9                                  	vmovd  r9d,xmm11
    22bdd7ccebca:	45 85 e4                                        	test   r12d,r12d
    22bdd7ccebcd:	0f 85 df 08 00 00                               	jne    0x22bdd7ccf4b2
    22bdd7ccebd3:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    22bdd7ccebd7:	c4 62 79 3d da                                  	vpmaxsd xmm11,xmm0,xmm2
    22bdd7ccebdc:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    22bdd7ccebe1:	85 ff                                           	test   edi,edi
    22bdd7ccebe3:	0f 84 41 00 00 00                               	je     0x22bdd7ccec2a
    22bdd7ccebe9:	c5 79 6e d8                                     	vmovd  xmm11,eax
    22bdd7ccebed:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    22bdd7ccebf2:	c4 41 79 db db                                  	vpand  xmm11,xmm0,xmm11
    22bdd7ccebf7:	85 c0                                           	test   eax,eax
    22bdd7ccebf9:	0f 85 2b 00 00 00                               	jne    0x22bdd7ccec2a
    22bdd7ccebff:	c4 41 79 66 c9                                  	vpcmpgtd xmm9,xmm0,xmm9
    22bdd7ccec04:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    22bdd7ccec08:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ccec0d:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    22bdd7ccec12:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    22bdd7ccec16:	c4 41 21 df f9                                  	vpandn xmm15,xmm11,xmm9
    22bdd7ccec1b:	c4 41 61 db cb                                  	vpand  xmm9,xmm3,xmm11
    22bdd7ccec20:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7ccec25:	c4 41 79 fe d9                                  	vpaddd xmm11,xmm0,xmm9
    22bdd7ccec2a:	c5 c9 fe c7                                     	vpaddd xmm0,xmm6,xmm7
    22bdd7ccec2e:	c4 e2 79 3d f2                                  	vpmaxsd xmm6,xmm0,xmm2
    22bdd7ccec33:	c4 c2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm13
    22bdd7ccec38:	45 85 c0                                        	test   r8d,r8d
    22bdd7ccec3b:	0f 84 49 00 00 00                               	je     0x22bdd7ccec8a
    22bdd7ccec41:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    22bdd7ccec45:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    22bdd7ccec4a:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    22bdd7ccec4e:	85 c9                                           	test   ecx,ecx
    22bdd7ccec50:	0f 85 34 00 00 00                               	jne    0x22bdd7ccec8a
    22bdd7ccec56:	c4 c1 79 6e f3                                  	vmovd  xmm6,r11d
    22bdd7ccec5b:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    22bdd7ccec60:	c4 41 79 66 cd                                  	vpcmpgtd xmm9,xmm0,xmm13
    22bdd7ccec65:	c5 31 db ce                                     	vpand  xmm9,xmm9,xmm6
    22bdd7ccec69:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7ccec6e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    22bdd7ccec73:	c5 69 66 e8                                     	vpcmpgtd xmm13,xmm2,xmm0
    22bdd7ccec77:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    22bdd7ccec7c:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    22bdd7ccec81:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7ccec86:	c5 f9 fe f6                                     	vpaddd xmm6,xmm0,xmm6
    22bdd7ccec8a:	c4 e2 49 40 c3                                  	vpmulld xmm0,xmm6,xmm3
    22bdd7ccec8f:	c5 f9 fe f1                                     	vpaddd xmm6,xmm0,xmm1
    22bdd7ccec93:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    22bdd7ccec9a:	0f 84 71 00 00 00                               	je     0x22bdd7cced11
    22bdd7cceca0:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    22bdd7cceca7:	0f 85 07 00 00 00                               	jne    0x22bdd7ccecb4
    22bdd7ccecad:	33 ff                                           	xor    edi,edi
    22bdd7ccecaf:	e9 07 00 00 00                                  	jmp    0x22bdd7ccecbb
    22bdd7ccecb4:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    22bdd7ccecb8:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7ccecbb:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    22bdd7ccecc2:	0f 85 08 00 00 00                               	jne    0x22bdd7ccecd0
    22bdd7ccecc8:	45 33 c0                                        	xor    r8d,r8d
    22bdd7cceccb:	e9 08 00 00 00                                  	jmp    0x22bdd7ccecd8
    22bdd7ccecd0:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    22bdd7ccecd4:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    22bdd7ccecd8:	83 bd 50 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1b0],0x0
    22bdd7ccecdf:	0f 85 08 00 00 00                               	jne    0x22bdd7cceced
    22bdd7ccece5:	45 33 db                                        	xor    r11d,r11d
    22bdd7ccece8:	e9 0f 00 00 00                                  	jmp    0x22bdd7ccecfc
    22bdd7cceced:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    22bdd7ccecf4:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    22bdd7ccecf8:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7ccecfc:	83 bd b0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x150],0x0
    22bdd7cced03:	0f 85 3c 00 00 00                               	jne    0x22bdd7cced45
    22bdd7cced09:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cced0c:	e9 43 00 00 00                                  	jmp    0x22bdd7cced54
    22bdd7cced11:	c5 71 fe cf                                     	vpaddd xmm9,xmm1,xmm7
    22bdd7cced15:	c4 41 21 76 c9                                  	vpcmpeqd xmm9,xmm11,xmm9
    22bdd7cced1a:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    22bdd7cced1f:	83 ff 0f                                        	cmp    edi,0xf
    22bdd7cced22:	0f 84 f8 02 00 00                               	je     0x22bdd7ccf020
    22bdd7cced28:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    22bdd7cced2e:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7cced32:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    22bdd7cced36:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    22bdd7cced3a:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    22bdd7cced3e:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    22bdd7cced42:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cced45:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    22bdd7cced4c:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    22bdd7cced50:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    22bdd7cced54:	c4 41 21 fe ce                                  	vpaddd xmm9,xmm11,xmm14
    22bdd7cced59:	c5 79 6e ef                                     	vmovd  xmm13,edi
    22bdd7cced5d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cced62:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    22bdd7cced69:	0f 84 8a 00 00 00                               	je     0x22bdd7ccedf9
    22bdd7cced6f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    22bdd7cced76:	0f 85 07 00 00 00                               	jne    0x22bdd7cced83
    22bdd7cced7c:	33 ff                                           	xor    edi,edi
    22bdd7cced7e:	e9 0b 00 00 00                                  	jmp    0x22bdd7cced8e
    22bdd7cced83:	c5 79 7e cf                                     	vmovd  edi,xmm9
    22bdd7cced87:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7cced8b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cced8e:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    22bdd7cced95:	0f 85 07 00 00 00                               	jne    0x22bdd7cceda2
    22bdd7cced9b:	33 c0                                           	xor    eax,eax
    22bdd7cced9d:	e9 0d 00 00 00                                  	jmp    0x22bdd7ccedaf
    22bdd7cceda2:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    22bdd7cceda8:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    22bdd7ccedac:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    22bdd7ccedaf:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    22bdd7ccedb6:	0f 85 07 00 00 00                               	jne    0x22bdd7ccedc3
    22bdd7ccedbc:	33 db                                           	xor    ebx,ebx
    22bdd7ccedbe:	e9 0d 00 00 00                                  	jmp    0x22bdd7ccedd0
    22bdd7ccedc3:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    22bdd7ccedc9:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    22bdd7ccedcd:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    22bdd7ccedd0:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    22bdd7ccedd7:	0f 85 41 00 00 00                               	jne    0x22bdd7ccee1e
    22bdd7cceddd:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    22bdd7ccede3:	c5 79 6e ef                                     	vmovd  xmm13,edi
    22bdd7ccede7:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7ccedec:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    22bdd7ccedf2:	33 c9                                           	xor    ecx,ecx
    22bdd7ccedf4:	e9 54 00 00 00                                  	jmp    0x22bdd7ccee4d
    22bdd7ccedf9:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    22bdd7ccedff:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7ccee03:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    22bdd7ccee06:	c5 79 7e cf                                     	vmovd  edi,xmm9
    22bdd7ccee0a:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7ccee0e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7ccee11:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    22bdd7ccee17:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    22bdd7ccee1b:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    22bdd7ccee1e:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    22bdd7ccee24:	41 8d 0c 8f                                     	lea    ecx,[r15+rcx*4]
    22bdd7ccee28:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    22bdd7ccee2b:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    22bdd7ccee31:	c5 79 6e ef                                     	vmovd  xmm13,edi
    22bdd7ccee35:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7ccee3a:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    22bdd7ccee40:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    22bdd7ccee47:	0f 84 78 00 00 00                               	je     0x22bdd7cceec5
    22bdd7ccee4d:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    22bdd7ccee54:	0f 85 07 00 00 00                               	jne    0x22bdd7ccee61
    22bdd7ccee5a:	33 ff                                           	xor    edi,edi
    22bdd7ccee5c:	e9 0b 00 00 00                                  	jmp    0x22bdd7ccee6c
    22bdd7ccee61:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    22bdd7ccee65:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7ccee69:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7ccee6c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    22bdd7ccee73:	0f 85 08 00 00 00                               	jne    0x22bdd7ccee81
    22bdd7ccee79:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ccee7c:	e9 0e 00 00 00                                  	jmp    0x22bdd7ccee8f
    22bdd7ccee81:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    22bdd7ccee87:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    22bdd7ccee8b:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    22bdd7ccee8f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    22bdd7ccee96:	0f 85 07 00 00 00                               	jne    0x22bdd7cceea3
    22bdd7ccee9c:	33 c0                                           	xor    eax,eax
    22bdd7ccee9e:	e9 0d 00 00 00                                  	jmp    0x22bdd7cceeb0
    22bdd7cceea3:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    22bdd7cceea9:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    22bdd7cceead:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    22bdd7cceeb0:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    22bdd7cceeb7:	0f 85 2e 00 00 00                               	jne    0x22bdd7cceeeb
    22bdd7cceebd:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cceec0:	e9 34 00 00 00                                  	jmp    0x22bdd7cceef9
    22bdd7cceec5:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    22bdd7cceecb:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7cceecf:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    22bdd7cceed3:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    22bdd7cceed7:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7cceedb:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cceede:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    22bdd7cceee4:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    22bdd7cceee8:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    22bdd7cceeeb:	c4 c3 79 16 f1 03                               	vpextrd r9d,xmm6,0x3
    22bdd7cceef1:	47 8d 0c 8f                                     	lea    r9d,[r15+r9*4]
    22bdd7cceef5:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    22bdd7cceef9:	c4 c3 31 22 f3 02                               	vpinsrd xmm6,xmm9,r11d,0x2
    22bdd7cceeff:	c4 63 11 22 cb 02                               	vpinsrd xmm9,xmm13,ebx,0x2
    22bdd7ccef05:	c4 c1 79 fe c3                                  	vpaddd xmm0,xmm0,xmm11
    22bdd7ccef0a:	c5 79 6e df                                     	vmovd  xmm11,edi
    22bdd7ccef0e:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    22bdd7ccef13:	c4 43 21 22 d8 01                               	vpinsrd xmm11,xmm11,r8d,0x1
    22bdd7ccef19:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    22bdd7ccef1f:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    22bdd7ccef26:	0f 84 7a 00 00 00                               	je     0x22bdd7ccefa6
    22bdd7ccef2c:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    22bdd7ccef33:	0f 85 07 00 00 00                               	jne    0x22bdd7ccef40
    22bdd7ccef39:	33 ff                                           	xor    edi,edi
    22bdd7ccef3b:	e9 0b 00 00 00                                  	jmp    0x22bdd7ccef4b
    22bdd7ccef40:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    22bdd7ccef44:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7ccef48:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7ccef4b:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    22bdd7ccef52:	0f 85 08 00 00 00                               	jne    0x22bdd7ccef60
    22bdd7ccef58:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ccef5b:	e9 0e 00 00 00                                  	jmp    0x22bdd7ccef6e
    22bdd7ccef60:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    22bdd7ccef66:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    22bdd7ccef6a:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    22bdd7ccef6e:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    22bdd7ccef75:	0f 85 08 00 00 00                               	jne    0x22bdd7ccef83
    22bdd7ccef7b:	45 33 db                                        	xor    r11d,r11d
    22bdd7ccef7e:	e9 0e 00 00 00                                  	jmp    0x22bdd7ccef91
    22bdd7ccef83:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    22bdd7ccef89:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    22bdd7ccef8d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7ccef91:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    22bdd7ccef98:	0f 85 2f 00 00 00                               	jne    0x22bdd7ccefcd
    22bdd7ccef9e:	45 33 ff                                        	xor    r15d,r15d
    22bdd7ccefa1:	e9 35 00 00 00                                  	jmp    0x22bdd7ccefdb
    22bdd7ccefa6:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    22bdd7ccefac:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7ccefb0:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    22bdd7ccefb4:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    22bdd7ccefb8:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7ccefbc:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7ccefbf:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    22bdd7ccefc5:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    22bdd7ccefc9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7ccefcd:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    22bdd7ccefd3:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    22bdd7ccefd7:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    22bdd7ccefdb:	c4 c3 49 22 c4 03                               	vpinsrd xmm0,xmm6,r12d,0x3
    22bdd7ccefe1:	c4 e3 31 22 f1 03                               	vpinsrd xmm6,xmm9,ecx,0x3
    22bdd7ccefe7:	c5 79 6e cf                                     	vmovd  xmm9,edi
    22bdd7ccefeb:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    22bdd7cceff0:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    22bdd7cceff6:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    22bdd7cceffc:	c4 43 31 22 cf 03                               	vpinsrd xmm9,xmm9,r15d,0x3
    22bdd7ccf002:	c4 43 21 22 d9 03                               	vpinsrd xmm11,xmm11,r9d,0x3
    22bdd7ccf008:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    22bdd7ccf00c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    22bdd7ccf011:	c4 41 79 28 df                                  	vmovapd xmm11,xmm15
    22bdd7ccf016:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    22bdd7ccf01b:	e9 95 00 00 00                                  	jmp    0x22bdd7ccf0b5
    22bdd7ccf020:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    22bdd7ccf024:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    22bdd7ccf029:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    22bdd7ccf02d:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    22bdd7ccf032:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    22bdd7ccf037:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    22bdd7ccf03d:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7ccf041:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    22bdd7ccf046:	44 8b 85 c8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x138]
    22bdd7ccf04d:	43 8d 3c 87                                     	lea    edi,[r15+r8*4]
    22bdd7ccf051:	c5 7b 10 1c 3a                                  	vmovsd xmm11,QWORD PTR [rdx+rdi*1]
    22bdd7ccf056:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    22bdd7ccf05b:	c4 41 78 c6 d9 dd                               	vshufps xmm11,xmm0,xmm9,0xdd
    22bdd7ccf061:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    22bdd7ccf067:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    22bdd7ccf06c:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    22bdd7ccf070:	41 03 ff                                        	add    edi,r15d
    22bdd7ccf073:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    22bdd7ccf078:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    22bdd7ccf07e:	41 03 ff                                        	add    edi,r15d
    22bdd7ccf081:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    22bdd7ccf086:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    22bdd7ccf08b:	c4 e3 79 16 f7 02                               	vpextrd edi,xmm6,0x2
    22bdd7ccf091:	41 03 ff                                        	add    edi,r15d
    22bdd7ccf094:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    22bdd7ccf099:	c4 e3 79 16 f7 03                               	vpextrd edi,xmm6,0x3
    22bdd7ccf09f:	41 03 ff                                        	add    edi,r15d
    22bdd7ccf0a2:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    22bdd7ccf0a7:	c5 91 6c f6                                     	vpunpcklqdq xmm6,xmm13,xmm6
    22bdd7ccf0ab:	c5 30 c6 ee dd                                  	vshufps xmm13,xmm9,xmm6,0xdd
    22bdd7ccf0b0:	c5 b0 c6 f6 88                                  	vshufps xmm6,xmm9,xmm6,0x88
    22bdd7ccf0b5:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    22bdd7ccf0ba:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    22bdd7ccf0bf:	c5 28 5c d4                                     	vsubps xmm10,xmm10,xmm4
    22bdd7ccf0c3:	c4 41 50 5c e2                                  	vsubps xmm12,xmm5,xmm10
    22bdd7ccf0c8:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    22bdd7ccf0d2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7ccf0d7:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7ccf0dc:	c4 c1 79 db ce                                  	vpand  xmm1,xmm0,xmm14
    22bdd7ccf0e1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf0e6:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7ccf0ec:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7ccf0f1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf0f6:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7ccf0fb:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7ccf0ff:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7ccf103:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7ccf108:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    22bdd7ccf10c:	c4 c1 21 db de                                  	vpand  xmm3,xmm11,xmm14
    22bdd7ccf111:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf116:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    22bdd7ccf11c:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    22bdd7ccf121:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf126:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    22bdd7ccf12b:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    22bdd7ccf12f:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    22bdd7ccf133:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    22bdd7ccf138:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    22bdd7ccf13c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    22bdd7ccf140:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ccf144:	c4 c1 49 db de                                  	vpand  xmm3,xmm6,xmm14
    22bdd7ccf149:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf14e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    22bdd7ccf154:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    22bdd7ccf159:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf15e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    22bdd7ccf163:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    22bdd7ccf167:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    22bdd7ccf16b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    22bdd7ccf170:	c5 98 59 db                                     	vmulps xmm3,xmm12,xmm3
    22bdd7ccf174:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    22bdd7ccf179:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf17e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7ccf184:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7ccf189:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf18e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7ccf193:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7ccf197:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7ccf19b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7ccf1a0:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    22bdd7ccf1a4:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    22bdd7ccf1a8:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    22bdd7ccf1ac:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    22bdd7ccf1b0:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    22bdd7ccf1ba:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7ccf1bf:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7ccf1c3:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    22bdd7ccf1c7:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    22bdd7ccf1ce:	c4 a1 7a 7f 0c 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm1
    22bdd7ccf1d4:	c5 f1 72 d0 10                                  	vpsrld xmm1,xmm0,0x10
    22bdd7ccf1d9:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    22bdd7ccf1de:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf1e3:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7ccf1e9:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7ccf1ee:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf1f3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7ccf1f8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7ccf1fc:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7ccf200:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7ccf205:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    22bdd7ccf209:	c4 c1 59 72 d3 10                               	vpsrld xmm4,xmm11,0x10
    22bdd7ccf20f:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    22bdd7ccf214:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf219:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7ccf21f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7ccf224:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf229:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7ccf22e:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7ccf232:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7ccf236:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7ccf23b:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    22bdd7ccf23f:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    22bdd7ccf243:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ccf247:	c5 d9 72 d6 10                                  	vpsrld xmm4,xmm6,0x10
    22bdd7ccf24c:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    22bdd7ccf251:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf256:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    22bdd7ccf25c:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    22bdd7ccf261:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf266:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    22bdd7ccf26b:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    22bdd7ccf26f:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    22bdd7ccf273:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    22bdd7ccf278:	c5 98 59 e4                                     	vmulps xmm4,xmm12,xmm4
    22bdd7ccf27c:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    22bdd7ccf282:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    22bdd7ccf287:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf28c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7ccf292:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7ccf297:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf29c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7ccf2a1:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7ccf2a5:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7ccf2a9:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7ccf2ae:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    22bdd7ccf2b2:	c5 d8 58 d2                                     	vaddps xmm2,xmm4,xmm2
    22bdd7ccf2b6:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    22bdd7ccf2ba:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    22bdd7ccf2be:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    22bdd7ccf2c2:	c4 a1 7a 7f 4c 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm1
    22bdd7ccf2c9:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    22bdd7ccf2ce:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    22bdd7ccf2d3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf2d8:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    22bdd7ccf2de:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    22bdd7ccf2e3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf2e8:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    22bdd7ccf2ed:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    22bdd7ccf2f1:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    22bdd7ccf2f5:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    22bdd7ccf2fa:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    22bdd7ccf2fe:	c4 c1 69 72 d3 08                               	vpsrld xmm2,xmm11,0x8
    22bdd7ccf304:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    22bdd7ccf309:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf30e:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7ccf314:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7ccf319:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf31e:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7ccf323:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7ccf327:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7ccf32b:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7ccf330:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    22bdd7ccf334:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    22bdd7ccf338:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    22bdd7ccf33c:	c5 e9 72 d6 08                                  	vpsrld xmm2,xmm6,0x8
    22bdd7ccf341:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    22bdd7ccf346:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf34b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    22bdd7ccf351:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    22bdd7ccf356:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf35b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    22bdd7ccf360:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    22bdd7ccf364:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    22bdd7ccf368:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    22bdd7ccf36d:	c5 98 59 d2                                     	vmulps xmm2,xmm12,xmm2
    22bdd7ccf371:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    22bdd7ccf377:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    22bdd7ccf37c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf381:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    22bdd7ccf387:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    22bdd7ccf38c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf391:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    22bdd7ccf397:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    22bdd7ccf39c:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    22bdd7ccf3a1:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    22bdd7ccf3a6:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    22bdd7ccf3ab:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    22bdd7ccf3b0:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    22bdd7ccf3b5:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    22bdd7ccf3ba:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    22bdd7ccf3be:	c4 21 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm14
    22bdd7ccf3c5:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    22bdd7ccf3ca:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf3cf:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7ccf3d5:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7ccf3da:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf3df:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7ccf3e4:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7ccf3e8:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7ccf3ec:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7ccf3f1:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    22bdd7ccf3f5:	c4 c1 21 72 d3 18                               	vpsrld xmm11,xmm11,0x18
    22bdd7ccf3fb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf400:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    22bdd7ccf406:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    22bdd7ccf40b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf410:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    22bdd7ccf416:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    22bdd7ccf41b:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    22bdd7ccf420:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    22bdd7ccf425:	c4 41 28 59 db                                  	vmulps xmm11,xmm10,xmm11
    22bdd7ccf42a:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7ccf42f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7ccf433:	c5 c9 72 d6 18                                  	vpsrld xmm6,xmm6,0x18
    22bdd7ccf438:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf43d:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    22bdd7ccf443:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    22bdd7ccf448:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf44d:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    22bdd7ccf452:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    22bdd7ccf456:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    22bdd7ccf45a:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    22bdd7ccf45f:	c5 98 59 f6                                     	vmulps xmm6,xmm12,xmm6
    22bdd7ccf463:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    22bdd7ccf469:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf46e:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    22bdd7ccf474:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    22bdd7ccf479:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf47e:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    22bdd7ccf484:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    22bdd7ccf489:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    22bdd7ccf48e:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    22bdd7ccf493:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    22bdd7ccf498:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    22bdd7ccf49d:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    22bdd7ccf4a1:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ccf4a5:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    22bdd7ccf4ad:	e9 cd 01 00 00                                  	jmp    0x22bdd7ccf67f
    22bdd7ccf4b2:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    22bdd7ccf4b9:	0f 84 71 00 00 00                               	je     0x22bdd7ccf530
    22bdd7ccf4bf:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    22bdd7ccf4c6:	0f 85 07 00 00 00                               	jne    0x22bdd7ccf4d3
    22bdd7ccf4cc:	33 ff                                           	xor    edi,edi
    22bdd7ccf4ce:	e9 07 00 00 00                                  	jmp    0x22bdd7ccf4da
    22bdd7ccf4d3:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    22bdd7ccf4d7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7ccf4da:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    22bdd7ccf4e1:	0f 85 08 00 00 00                               	jne    0x22bdd7ccf4ef
    22bdd7ccf4e7:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ccf4ea:	e9 08 00 00 00                                  	jmp    0x22bdd7ccf4f7
    22bdd7ccf4ef:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    22bdd7ccf4f3:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    22bdd7ccf4f7:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    22bdd7ccf4fe:	0f 85 08 00 00 00                               	jne    0x22bdd7ccf50c
    22bdd7ccf504:	45 33 db                                        	xor    r11d,r11d
    22bdd7ccf507:	e9 0f 00 00 00                                  	jmp    0x22bdd7ccf51b
    22bdd7ccf50c:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    22bdd7ccf513:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    22bdd7ccf517:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7ccf51b:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    22bdd7ccf522:	0f 85 25 00 00 00                               	jne    0x22bdd7ccf54d
    22bdd7ccf528:	45 33 e4                                        	xor    r12d,r12d
    22bdd7ccf52b:	e9 2c 00 00 00                                  	jmp    0x22bdd7ccf55c
    22bdd7ccf530:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    22bdd7ccf536:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    22bdd7ccf53a:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    22bdd7ccf53e:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    22bdd7ccf542:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    22bdd7ccf546:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    22bdd7ccf54a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7ccf54d:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    22bdd7ccf554:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    22bdd7ccf558:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    22bdd7ccf55c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    22bdd7ccf560:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7ccf565:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    22bdd7ccf56b:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    22bdd7ccf571:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    22bdd7ccf577:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x22bdd7ccf0ca
    22bdd7ccf57e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7ccf583:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7ccf587:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    22bdd7ccf58b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf590:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7ccf596:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7ccf59b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf5a0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7ccf5a6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7ccf5ab:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7ccf5b0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7ccf5b5:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x22bdd7ccf1b2
    22bdd7ccf5bc:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7ccf5c1:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7ccf5c6:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    22bdd7ccf5cb:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    22bdd7ccf5d2:	c4 21 7a 7f 04 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm8
    22bdd7ccf5d8:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    22bdd7ccf5dd:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    22bdd7ccf5e1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf5e6:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7ccf5ec:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7ccf5f1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf5f6:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7ccf5fc:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7ccf601:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7ccf606:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7ccf60b:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    22bdd7ccf610:	c4 21 7a 7f 44 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm8
    22bdd7ccf617:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    22bdd7ccf61c:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    22bdd7ccf620:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf625:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    22bdd7ccf62b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    22bdd7ccf630:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf635:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    22bdd7ccf63a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    22bdd7ccf63e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    22bdd7ccf642:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    22bdd7ccf647:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    22bdd7ccf64c:	c4 a1 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm6
    22bdd7ccf653:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    22bdd7ccf658:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7ccf65d:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7ccf663:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7ccf668:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7ccf66d:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7ccf672:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7ccf676:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7ccf67a:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7ccf67f:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x22bdd7ccf1b2
    22bdd7ccf686:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7ccf68b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7ccf68f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    22bdd7ccf693:	c4 a1 7a 7f 44 1a 30                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x30],xmm0
    22bdd7ccf69a:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ccf69e:	e9 4b 03 00 00                                  	jmp    0x22bdd7ccf9ee
    22bdd7ccf6a3:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ccf6a7:	4c 8d 7a 08                                     	lea    r15,[rdx+0x8]
    22bdd7ccf6ab:	c4 82 79 18 04 07                               	vbroadcastss xmm0,DWORD PTR [r15+r8*1]
    22bdd7ccf6b1:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    22bdd7ccf6b5:	c4 42 79 18 24 07                               	vbroadcastss xmm12,DWORD PTR [r15+rax*1]
    22bdd7ccf6bb:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    22bdd7ccf6bf:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    22bdd7ccf6c4:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    22bdd7ccf6c9:	c4 42 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [r15+rdi*1]
    22bdd7ccf6cf:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    22bdd7ccf6d4:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    22bdd7ccf6d9:	c5 c8 59 d8                                     	vmulps xmm3,xmm6,xmm0
    22bdd7ccf6dd:	41 83 fc 03                                     	cmp    r12d,0x3
    22bdd7ccf6e1:	0f 84 7a 02 00 00                               	je     0x22bdd7ccf961
    22bdd7ccf6e7:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    22bdd7ccf6ef:	41 8b fb                                        	mov    edi,r11d
    22bdd7ccf6f2:	c5 fa 7f 84 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm0
    22bdd7ccf6fb:	c5 fa 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm0
    22bdd7ccf704:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    22bdd7ccf70d:	c5 7a 7f 94 3a f0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1f0],xmm10
    22bdd7ccf716:	c5 7a 7f 84 3a e0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1e0],xmm8
    22bdd7ccf71f:	c5 fa 7f 9c 3a d0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1d0],xmm3
    22bdd7ccf728:	c5 fa 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm0
    22bdd7ccf731:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    22bdd7ccf738:	48 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rcx
    22bdd7ccf73f:	45 33 c0                                        	xor    r8d,r8d
    22bdd7ccf742:	e9 46 00 00 00                                  	jmp    0x22bdd7ccf78d
    22bdd7ccf747:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccf750:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccf759:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccf762:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccf76b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccf774:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7ccf77d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    22bdd7ccf780:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    22bdd7ccf786:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7ccf789:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7ccf78d:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    22bdd7ccf794:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7ccf799:	0f 85 54 3b 00 00                               	jne    0x22bdd7cd32f3
    22bdd7ccf79f:	8b c1                                           	mov    eax,ecx
    22bdd7ccf7a1:	41 8b c8                                        	mov    ecx,r8d
    22bdd7ccf7a4:	4c 8b 9d 20 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe0]
    22bdd7ccf7ab:	41 d3 eb                                        	shr    r11d,cl
    22bdd7ccf7ae:	41 f6 c3 01                                     	test   r11b,0x1
    22bdd7ccf7b2:	0f 84 ff 00 00 00                               	je     0x22bdd7ccf8b7
    22bdd7ccf7b8:	8b 4c 02 10                                     	mov    ecx,DWORD PTR [rdx+rax*1+0x10]
    22bdd7ccf7bc:	44 8b 5c 02 0c                                  	mov    r11d,DWORD PTR [rdx+rax*1+0xc]
    22bdd7ccf7c1:	44 8b 64 02 08                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x8]
    22bdd7ccf7c6:	44 8b 64 02 04                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x4]
    22bdd7ccf7cb:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    22bdd7ccf7cf:	41 83 ff 02                                     	cmp    r15d,0x2
    22bdd7ccf7d3:	0f 84 89 00 00 00                               	je     0x22bdd7ccf862
    22bdd7ccf7d9:	45 85 ff                                        	test   r15d,r15d
    22bdd7ccf7dc:	0f 85 32 00 00 00                               	jne    0x22bdd7ccf814
    22bdd7ccf7e2:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    22bdd7ccf7ea:	c4 a1 7a 10 0c 3a                               	vmovss xmm1,DWORD PTR [rdx+r15*1]
    22bdd7ccf7f0:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    22bdd7ccf7f7:	41 8b d8                                        	mov    ebx,r8d
    22bdd7ccf7fa:	c1 e3 04                                        	shl    ebx,0x4
    22bdd7ccf7fd:	41 03 df                                        	add    ebx,r15d
    22bdd7ccf800:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccf804:	41 8b c4                                        	mov    eax,r12d
    22bdd7ccf807:	41 8b d3                                        	mov    edx,r11d
    22bdd7ccf80a:	e8 11 6a f3 ff                                  	call   0x22bdd7c06220
    22bdd7ccf80f:	e9 a3 00 00 00                                  	jmp    0x22bdd7ccf8b7
    22bdd7ccf814:	4c 8b fa                                        	mov    r15,rdx
    22bdd7ccf817:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    22bdd7ccf81c:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    22bdd7ccf824:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    22bdd7ccf82a:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    22bdd7ccf832:	c4 41 7a 10 04 17                               	vmovss xmm8,DWORD PTR [r15+rdx*1]
    22bdd7ccf838:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    22bdd7ccf83e:	41 8b f0                                        	mov    esi,r8d
    22bdd7ccf841:	c1 e6 04                                        	shl    esi,0x4
    22bdd7ccf844:	03 d6                                           	add    edx,esi
    22bdd7ccf846:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccf84a:	41 8b c4                                        	mov    eax,r12d
    22bdd7ccf84d:	44 8b ca                                        	mov    r9d,edx
    22bdd7ccf850:	41 8b d3                                        	mov    edx,r11d
    22bdd7ccf853:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    22bdd7ccf858:	e8 db 69 f3 ff                                  	call   0x22bdd7c06238
    22bdd7ccf85d:	e9 55 00 00 00                                  	jmp    0x22bdd7ccf8b7
    22bdd7ccf862:	4c 8b fa                                        	mov    r15,rdx
    22bdd7ccf865:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    22bdd7ccf86a:	45 8b 4c 07 18                                  	mov    r9d,DWORD PTR [r15+rax*1+0x18]
    22bdd7ccf86f:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    22bdd7ccf877:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    22bdd7ccf87d:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    22bdd7ccf885:	c4 c1 7a 10 14 17                               	vmovss xmm2,DWORD PTR [r15+rdx*1]
    22bdd7ccf88b:	42 8d 94 87 d0 01 00 00                         	lea    edx,[rdi+r8*4+0x1d0]
    22bdd7ccf893:	c4 c1 7a 10 1c 17                               	vmovss xmm3,DWORD PTR [r15+rdx*1]
    22bdd7ccf899:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    22bdd7ccf89f:	41 8b f0                                        	mov    esi,r8d
    22bdd7ccf8a2:	c1 e6 04                                        	shl    esi,0x4
    22bdd7ccf8a5:	03 d6                                           	add    edx,esi
    22bdd7ccf8a7:	52                                              	push   rdx
    22bdd7ccf8a8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccf8ac:	41 8b c4                                        	mov    eax,r12d
    22bdd7ccf8af:	41 8b d3                                        	mov    edx,r11d
    22bdd7ccf8b2:	e8 71 69 f3 ff                                  	call   0x22bdd7c06228
    22bdd7ccf8b7:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    22bdd7ccf8be:	41 83 c0 01                                     	add    r8d,0x1
    22bdd7ccf8c2:	41 83 f8 04                                     	cmp    r8d,0x4
    22bdd7ccf8c6:	0f 85 b4 fe ff ff                               	jne    0x22bdd7ccf780
    22bdd7ccf8cc:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    22bdd7ccf8cf:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7ccf8d3:	c4 c1 7a 6f 84 18 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x1b0]
    22bdd7ccf8dd:	c4 c1 7a 6f b4 18 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0x1c0]
    22bdd7ccf8e7:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    22bdd7ccf8eb:	c4 41 7a 6f 84 18 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x190]
    22bdd7ccf8f5:	c4 41 7a 6f 8c 18 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x1a0]
    22bdd7ccf8ff:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    22bdd7ccf904:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    22bdd7ccf908:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    22bdd7ccf90e:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    22bdd7ccf915:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    22bdd7ccf919:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    22bdd7ccf920:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    22bdd7ccf924:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    22bdd7ccf929:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    22bdd7ccf92d:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    22bdd7ccf934:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    22bdd7ccf938:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    22bdd7ccf93e:	44 8b db                                        	mov    r11d,ebx
    22bdd7ccf941:	49 8b d0                                        	mov    rdx,r8
    22bdd7ccf944:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    22bdd7ccf94c:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    22bdd7ccf954:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    22bdd7ccf95c:	e9 8d 00 00 00                                  	jmp    0x22bdd7ccf9ee
    22bdd7ccf961:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7ccf965:	8b c1                                           	mov    eax,ecx
    22bdd7ccf967:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    22bdd7ccf96c:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    22bdd7ccf971:	41 8b c9                                        	mov    ecx,r9d
    22bdd7ccf974:	48 8b 95 20 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe0]
    22bdd7ccf97b:	e8 a8 6b f3 ff                                  	call   0x22bdd7c06528
    22bdd7ccf980:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7ccf984:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7ccf988:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    22bdd7ccf990:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    22bdd7ccf998:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    22bdd7ccf9a0:	e9 49 00 00 00                                  	jmp    0x22bdd7ccf9ee
    22bdd7ccf9a5:	48 8b fa                                        	mov    rdi,rdx
    22bdd7ccf9a8:	48 8d 57 3c                                     	lea    rdx,[rdi+0x3c]
    22bdd7ccf9ac:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    22bdd7ccf9b2:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    22bdd7ccf9b8:	48 8d 57 40                                     	lea    rdx,[rdi+0x40]
    22bdd7ccf9bc:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    22bdd7ccf9c2:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    22bdd7ccf9c9:	48 8d 57 44                                     	lea    rdx,[rdi+0x44]
    22bdd7ccf9cd:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    22bdd7ccf9d3:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    22bdd7ccf9da:	48 8d 57 48                                     	lea    rdx,[rdi+0x48]
    22bdd7ccf9de:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    22bdd7ccf9e4:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
    22bdd7ccf9eb:	48 8b d7                                        	mov    rdx,rdi
    22bdd7ccf9ee:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    22bdd7ccf9f5:	41 83 c0 01                                     	add    r8d,0x1
    22bdd7ccf9f9:	41 83 f8 04                                     	cmp    r8d,0x4
    22bdd7ccf9fd:	0f 85 3d ed ff ff                               	jne    0x22bdd7cce740
    22bdd7ccfa03:	41 8b db                                        	mov    ebx,r11d
    22bdd7ccfa06:	c5 fa 6f 84 1a 90 00 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x90]
    22bdd7ccfa0f:	4c 8b 15 4b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4b]        # 0x22bdd7cce961
    22bdd7ccfa16:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7ccfa1b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7ccfa1f:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ccfa23:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    22bdd7ccfa2b:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    22bdd7ccfa2f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    22bdd7ccfa34:	c5 7a 6f 84 1a a0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xa0]
    22bdd7ccfa3d:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    22bdd7ccfa41:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    22bdd7ccfa49:	c5 30 58 ce                                     	vaddps xmm9,xmm9,xmm6
    22bdd7ccfa4d:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    22bdd7ccfa52:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    22bdd7ccfa57:	c5 7a 6f 84 1a b0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xb0]
    22bdd7ccfa60:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    22bdd7ccfa64:	c5 78 10 95 a0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x160]
    22bdd7ccfa6c:	c5 a8 58 f6                                     	vaddps xmm6,xmm10,xmm6
    22bdd7ccfa70:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    22bdd7ccfa74:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    22bdd7ccfa78:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    22bdd7ccfa82:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7ccfa87:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7ccfa8b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    22bdd7ccfa8f:	c5 f8 10 b5 c0 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x240]
    22bdd7ccfa97:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    22bdd7ccfa9b:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    22bdd7ccfa9f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ccfaa3:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    22bdd7ccfaa7:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    22bdd7ccfaac:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ccfab1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7ccfab8:	44 8b 84 3a 38 01 00 00                         	mov    r8d,DWORD PTR [rdx+rdi*1+0x138]
    22bdd7ccfac0:	4d 8b d8                                        	mov    r11,r8
    22bdd7ccfac3:	41 83 c3 ff                                     	add    r11d,0xffffffff
    22bdd7ccfac7:	0f 85 f3 00 00 00                               	jne    0x22bdd7ccfbc0
    22bdd7ccfacd:	c5 7a 6f 84 1a 70 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0x170]
    22bdd7ccfad6:	c5 7a 6f 8c 1a 30 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x130]
    22bdd7ccfadf:	4c 8d 82 38 36 00 00                            	lea    r8,[rdx+0x3638]
    22bdd7ccfae6:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    22bdd7ccfaea:	c4 02 79 18 14 20                               	vbroadcastss xmm10,DWORD PTR [r8+r12*1]
    22bdd7ccfaf0:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    22bdd7ccfaf5:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    22bdd7ccfafa:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    22bdd7ccfaff:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    22bdd7ccfb04:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    22bdd7ccfb09:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ccfb0e:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    22bdd7ccfb13:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    22bdd7ccfb18:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ccfb1d:	c5 7a 6f 8c 1a 60 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x160]
    22bdd7ccfb26:	c5 7a 6f 94 1a 20 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x120]
    22bdd7ccfb2f:	4c 8d 82 34 36 00 00                            	lea    r8,[rdx+0x3634]
    22bdd7ccfb36:	c4 02 79 18 24 20                               	vbroadcastss xmm12,DWORD PTR [r8+r12*1]
    22bdd7ccfb3c:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    22bdd7ccfb41:	c4 41 48 5f e4                                  	vmaxps xmm12,xmm6,xmm12
    22bdd7ccfb46:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    22bdd7ccfb4b:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    22bdd7ccfb50:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    22bdd7ccfb55:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    22bdd7ccfb5a:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    22bdd7ccfb5f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    22bdd7ccfb64:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ccfb69:	c5 7a 6f 94 1a 50 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x150]
    22bdd7ccfb72:	c5 7a 6f a4 1a 10 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x110]
    22bdd7ccfb7b:	4c 8d 82 30 36 00 00                            	lea    r8,[rdx+0x3630]
    22bdd7ccfb82:	c4 02 79 18 2c 20                               	vbroadcastss xmm13,DWORD PTR [r8+r12*1]
    22bdd7ccfb88:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    22bdd7ccfb8d:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    22bdd7ccfb91:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ccfb95:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    22bdd7ccfb99:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    22bdd7ccfb9d:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ccfba1:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    22bdd7ccfba5:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    22bdd7ccfba9:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ccfbad:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    22bdd7ccfbb2:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    22bdd7ccfbb6:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    22bdd7ccfbbb:	e9 89 01 00 00                                  	jmp    0x22bdd7ccfd49
    22bdd7ccfbc0:	41 83 fb 02                                     	cmp    r11d,0x2
    22bdd7ccfbc4:	0f 84 86 00 00 00                               	je     0x22bdd7ccfc50
    22bdd7ccfbca:	c5 fa 6f 84 1a 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x130]
    22bdd7ccfbd3:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    22bdd7ccfbd7:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    22bdd7ccfbdb:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ccfbdf:	c5 7a 6f 8c 1a 20 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x120]
    22bdd7ccfbe8:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    22bdd7ccfbed:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    22bdd7ccfbf2:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ccfbf7:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    22bdd7ccfbfe:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccfc02:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    22bdd7ccfc08:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    22bdd7ccfc0d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    22bdd7ccfc12:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ccfc17:	c5 7a 6f 94 1a 10 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x110]
    22bdd7ccfc20:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    22bdd7ccfc25:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    22bdd7ccfc2a:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ccfc2f:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    22bdd7ccfc36:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    22bdd7ccfc3c:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    22bdd7ccfc41:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    22bdd7ccfc46:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ccfc4b:	e9 58 00 00 00                                  	jmp    0x22bdd7ccfca8
    22bdd7ccfc50:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    22bdd7ccfc55:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    22bdd7ccfc59:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ccfc5d:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    22bdd7ccfc64:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7ccfc68:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    22bdd7ccfc6e:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    22bdd7ccfc73:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    22bdd7ccfc78:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    22bdd7ccfc7d:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    22bdd7ccfc84:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    22bdd7ccfc8a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    22bdd7ccfc8f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    22bdd7ccfc94:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    22bdd7ccfc99:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    22bdd7ccfc9e:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    22bdd7ccfca3:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    22bdd7ccfca8:	4c 8d a2 20 37 00 00                            	lea    r12,[rdx+0x3720]
    22bdd7ccfcaf:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    22bdd7ccfcb5:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    22bdd7ccfcba:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    22bdd7ccfcbe:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    22bdd7ccfcc2:	41 83 f8 01                                     	cmp    r8d,0x1
    22bdd7ccfcc6:	0f 84 7a 00 00 00                               	je     0x22bdd7ccfd46
    22bdd7ccfccc:	c4 a1 7a 10 b4 1a 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdx+r11*1+0x3724]
    22bdd7ccfcd6:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    22bdd7ccfcdb:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    22bdd7ccfce1:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    22bdd7ccfce7:	c4 c1 78 2e f4                                  	vucomiss xmm6,xmm12
    22bdd7ccfcec:	0f 87 09 00 00 00                               	ja     0x22bdd7ccfcfb
    22bdd7ccfcf2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    22bdd7ccfcf6:	e9 05 00 00 00                                  	jmp    0x22bdd7ccfd00
    22bdd7ccfcfb:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    22bdd7ccfd00:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    22bdd7ccfd05:	c5 78 2e ee                                     	vucomiss xmm13,xmm6
    22bdd7ccfd09:	0f 87 0a 00 00 00                               	ja     0x22bdd7ccfd19
    22bdd7ccfd0f:	c4 c1 79 28 f2                                  	vmovapd xmm6,xmm10
    22bdd7ccfd14:	e9 05 00 00 00                                  	jmp    0x22bdd7ccfd1e
    22bdd7ccfd19:	c4 c1 79 28 f5                                  	vmovapd xmm6,xmm13
    22bdd7ccfd1e:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    22bdd7ccfd23:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccfd27:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ccfd2b:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ccfd30:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    22bdd7ccfd35:	8b c3                                           	mov    eax,ebx
    22bdd7ccfd37:	49 8b f3                                        	mov    rsi,r11
    22bdd7ccfd3a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    22bdd7ccfd41:	e9 06 12 00 00                                  	jmp    0x22bdd7cd0f4c
    22bdd7ccfd46:	4d 8b e3                                        	mov    r12,r11
    22bdd7ccfd49:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    22bdd7ccfd51:	c4 41 48 5f d4                                  	vmaxps xmm10,xmm6,xmm12
    22bdd7ccfd56:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    22bdd7ccfd5b:	c5 7a 6f a4 1a 40 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x140]
    22bdd7ccfd64:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    22bdd7ccfd69:	c4 c1 48 5f f2                                  	vmaxps xmm6,xmm6,xmm10
    22bdd7ccfd6e:	c5 a0 5d f6                                     	vminps xmm6,xmm11,xmm6
    22bdd7ccfd72:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccfd76:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    22bdd7ccfd7a:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    22bdd7ccfd7f:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    22bdd7ccfd84:	8b c3                                           	mov    eax,ebx
    22bdd7ccfd86:	49 8b f4                                        	mov    rsi,r12
    22bdd7ccfd89:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    22bdd7ccfd90:	e9 b7 11 00 00                                  	jmp    0x22bdd7cd0f4c
    22bdd7ccfd95:	44 8b 7c 3a 38                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x38]
    22bdd7ccfd9a:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    22bdd7ccfda2:	83 7c 3a 38 00                                  	cmp    DWORD PTR [rdx+rdi*1+0x38],0x0
    22bdd7ccfda7:	0f 85 b1 10 00 00                               	jne    0x22bdd7cd0e5e
    22bdd7ccfdad:	4c 8d 7a 54                                     	lea    r15,[rdx+0x54]
    22bdd7ccfdb1:	c4 82 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [r15+r12*1]
    22bdd7ccfdb7:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    22bdd7ccfdbb:	c4 c2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [r15+rax*1]
    22bdd7ccfdc1:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    22bdd7ccfdc5:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    22bdd7ccfdc9:	c4 82 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [r15+r9*1]
    22bdd7ccfdcf:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    22bdd7ccfdd3:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    22bdd7ccfdd7:	c5 c8 59 d7                                     	vmulps xmm2,xmm6,xmm7
    22bdd7ccfddb:	4c 8d 7a 50                                     	lea    r15,[rdx+0x50]
    22bdd7ccfddf:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    22bdd7ccfde5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    22bdd7ccfde9:	c4 42 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+rax*1]
    22bdd7ccfdef:	c4 41 60 59 c0                                  	vmulps xmm8,xmm3,xmm8
    22bdd7ccfdf4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    22bdd7ccfdf9:	c4 02 79 18 04 0f                               	vbroadcastss xmm8,DWORD PTR [r15+r9*1]
    22bdd7ccfdff:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    22bdd7ccfe04:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    22bdd7ccfe09:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    22bdd7ccfe0d:	44 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+rdi*1]
    22bdd7ccfe11:	41 83 ff 01                                     	cmp    r15d,0x1
    22bdd7ccfe15:	0f 85 28 0d 00 00                               	jne    0x22bdd7cd0b43
    22bdd7ccfe1b:	8b 4c 3a 28                                     	mov    ecx,DWORD PTR [rdx+rdi*1+0x28]
    22bdd7ccfe1f:	85 c9                                           	test   ecx,ecx
    22bdd7ccfe21:	0f 84 1c 0d 00 00                               	je     0x22bdd7cd0b43
    22bdd7ccfe27:	44 8b 5c 3a 1c                                  	mov    r11d,DWORD PTR [rdx+rdi*1+0x1c]
    22bdd7ccfe2c:	45 85 db                                        	test   r11d,r11d
    22bdd7ccfe2f:	0f 8e 0e 0d 00 00                               	jle    0x22bdd7cd0b43
    22bdd7ccfe35:	8b 5c 3a 20                                     	mov    ebx,DWORD PTR [rdx+rdi*1+0x20]
    22bdd7ccfe39:	85 db                                           	test   ebx,ebx
    22bdd7ccfe3b:	0f 8e fc 0c 00 00                               	jle    0x22bdd7cd0b3d
    22bdd7ccfe41:	45 8b d3                                        	mov    r10d,r11d
    22bdd7ccfe44:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7ccfe49:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7ccfe4e:	44 8b 7c 3a 10                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x10]
    22bdd7ccfe53:	33 f6                                           	xor    esi,esi
    22bdd7ccfe55:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    22bdd7ccfe5c:	40 0f 95 c6                                     	setne  sil
    22bdd7ccfe60:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    22bdd7ccfe67:	41 0f 95 c7                                     	setne  r15b
    22bdd7ccfe6b:	45 0f b6 ff                                     	movzx  r15d,r15b
    22bdd7ccfe6f:	44 23 fe                                        	and    r15d,esi
    22bdd7ccfe72:	0f 85 0d 00 00 00                               	jne    0x22bdd7ccfe85
    22bdd7ccfe78:	c5 d8 5f f7                                     	vmaxps xmm6,xmm4,xmm7
    22bdd7ccfe7c:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    22bdd7ccfe80:	e9 0a 00 00 00                                  	jmp    0x22bdd7ccfe8f
    22bdd7ccfe85:	c4 e3 79 08 f7 09                               	vroundps xmm6,xmm7,0x9
    22bdd7ccfe8b:	c5 c0 5c f6                                     	vsubps xmm6,xmm7,xmm6
    22bdd7ccfe8f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    22bdd7ccfe93:	44 8b d3                                        	mov    r10d,ebx
    22bdd7ccfe96:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    22bdd7ccfe9b:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    22bdd7ccfea0:	8b 74 3a 14                                     	mov    esi,DWORD PTR [rdx+rdi*1+0x14]
    22bdd7ccfea4:	45 33 c9                                        	xor    r9d,r9d
    22bdd7ccfea7:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    22bdd7ccfead:	41 0f 95 c1                                     	setne  r9b
    22bdd7ccfeb1:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    22bdd7ccfeb7:	40 0f 95 c6                                     	setne  sil
    22bdd7ccfebb:	40 0f b6 f6                                     	movzx  esi,sil
    22bdd7ccfebf:	41 23 f1                                        	and    esi,r9d
    22bdd7ccfec2:	0f 85 0d 00 00 00                               	jne    0x22bdd7ccfed5
    22bdd7ccfec8:	c5 d8 5f fa                                     	vmaxps xmm7,xmm4,xmm2
    22bdd7ccfecc:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    22bdd7ccfed0:	e9 0a 00 00 00                                  	jmp    0x22bdd7ccfedf
    22bdd7ccfed5:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    22bdd7ccfedb:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    22bdd7ccfedf:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    22bdd7ccfee3:	4c 8b 15 77 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea77]        # 0x22bdd7cce961
    22bdd7ccfeea:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7ccfeef:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7ccfef3:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    22bdd7ccfef7:	44 8b 4c 3a 0c                                  	mov    r9d,DWORD PTR [rdx+rdi*1+0xc]
    22bdd7ccfefc:	45 33 c9                                        	xor    r9d,r9d
    22bdd7ccfeff:	81 7c 3a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0xc],0x2600
    22bdd7ccff07:	41 0f 94 c1                                     	sete   r9b
    22bdd7ccff0b:	45 85 c9                                        	test   r9d,r9d
    22bdd7ccff0e:	0f 85 5b 00 00 00                               	jne    0x22bdd7ccff6f
    22bdd7ccff14:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    22bdd7ccff1a:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x22bdd7cce99d
    22bdd7ccff21:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    22bdd7ccff26:	4c 8b 15 7f ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7f]        # 0x22bdd7cce9ac
    22bdd7ccff2d:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    22bdd7ccff32:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    22bdd7ccff37:	c4 41 30 c2 cb 01                               	vcmpltps xmm9,xmm9,xmm11
    22bdd7ccff3d:	4c 8b 15 1a a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa81a]        # 0x22bdd7cca75e
    22bdd7ccff44:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    22bdd7ccff49:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    22bdd7ccff4e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    22bdd7ccff54:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    22bdd7ccff58:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    22bdd7ccff5d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    22bdd7ccff61:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    22bdd7ccff65:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    22bdd7ccff6a:	e9 49 00 00 00                                  	jmp    0x22bdd7ccffb8
    22bdd7ccff6f:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    22bdd7ccff75:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x22bdd7cce99d
    22bdd7ccff7c:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    22bdd7ccff81:	4c 8b 15 24 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea24]        # 0x22bdd7cce9ac
    22bdd7ccff88:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    22bdd7ccff8d:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    22bdd7ccff92:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    22bdd7ccff98:	4c 8b 15 bf a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa7bf]        # 0x22bdd7cca75e
    22bdd7ccff9f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    22bdd7ccffa4:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    22bdd7ccffa9:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    22bdd7ccffaf:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    22bdd7ccffb3:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    22bdd7ccffb8:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    22bdd7ccffbe:	4c 8b 15 99 a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa799]        # 0x22bdd7cca75e
    22bdd7ccffc5:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7ccffcb:	c4 c1 38 54 df                                  	vandps xmm3,xmm8,xmm15
    22bdd7ccffd0:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7ccffd6:	c5 fa 5b db                                     	vcvttps2dq xmm3,xmm3
    22bdd7ccffda:	c4 c1 61 ef df                                  	vpxor  xmm3,xmm3,xmm15
    22bdd7ccffdf:	4c 8b 15 86 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea86]        # 0x22bdd7ccea6c
    22bdd7ccffe6:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    22bdd7ccffeb:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    22bdd7ccffef:	4c 8b 15 a7 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a7]        # 0x22bdd7cce99d
    22bdd7ccfff6:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    22bdd7ccfffb:	c4 c1 50 c2 eb 01                               	vcmpltps xmm5,xmm5,xmm11
    22bdd7cd0001:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    22bdd7cd0005:	c5 e1 db dd                                     	vpand  xmm3,xmm3,xmm5
    22bdd7cd0009:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    22bdd7cd000e:	41 8d 43 ff                                     	lea    eax,[r11-0x1]
    22bdd7cd0012:	c5 f9 6e e8                                     	vmovd  xmm5,eax
    22bdd7cd0016:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    22bdd7cd001b:	8b 44 3a 2c                                     	mov    eax,DWORD PTR [rdx+rdi*1+0x2c]
    22bdd7cd001f:	c5 78 10 95 40 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2c0]
    22bdd7cd0027:	c4 42 61 3d e2                                  	vpmaxsd xmm12,xmm3,xmm10
    22bdd7cd002c:	c4 62 19 39 e5                                  	vpminsd xmm12,xmm12,xmm5
    22bdd7cd0031:	45 85 ff                                        	test   r15d,r15d
    22bdd7cd0034:	0f 84 53 00 00 00                               	je     0x22bdd7cd008d
    22bdd7cd003a:	c5 79 6e e0                                     	vmovd  xmm12,eax
    22bdd7cd003e:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7cd0043:	c4 41 61 db e4                                  	vpand  xmm12,xmm3,xmm12
    22bdd7cd0048:	85 c0                                           	test   eax,eax
    22bdd7cd004a:	0f 85 3d 00 00 00                               	jne    0x22bdd7cd008d
    22bdd7cd0050:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    22bdd7cd0055:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    22bdd7cd005a:	c5 61 66 ed                                     	vpcmpgtd xmm13,xmm3,xmm5
    22bdd7cd005e:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    22bdd7cd0063:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cd0068:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    22bdd7cd006d:	c5 29 66 f3                                     	vpcmpgtd xmm14,xmm10,xmm3
    22bdd7cd0071:	c4 41 09 df fd                                  	vpandn xmm15,xmm14,xmm13
    22bdd7cd0076:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    22bdd7cd007b:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    22bdd7cd0080:	c4 41 61 fe e4                                  	vpaddd xmm12,xmm3,xmm12
    22bdd7cd0085:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd008d:	c5 31 df fc                                     	vpandn xmm15,xmm9,xmm4
    22bdd7cd0091:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    22bdd7cd0096:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    22bdd7cd009b:	44 8d 63 ff                                     	lea    r12d,[rbx-0x1]
    22bdd7cd009f:	c4 c1 79 6e d4                                  	vmovd  xmm2,r12d
    22bdd7cd00a4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    22bdd7cd00a9:	44 8b 64 3a 30                                  	mov    r12d,DWORD PTR [rdx+rdi*1+0x30]
    22bdd7cd00ae:	c4 42 31 3d ea                                  	vpmaxsd xmm13,xmm9,xmm10
    22bdd7cd00b3:	c4 62 11 39 ea                                  	vpminsd xmm13,xmm13,xmm2
    22bdd7cd00b8:	85 f6                                           	test   esi,esi
    22bdd7cd00ba:	0f 84 4c 00 00 00                               	je     0x22bdd7cd010c
    22bdd7cd00c0:	c4 41 79 6e ec                                  	vmovd  xmm13,r12d
    22bdd7cd00c5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cd00ca:	c4 41 11 db e9                                  	vpand  xmm13,xmm13,xmm9
    22bdd7cd00cf:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd00d2:	0f 85 34 00 00 00                               	jne    0x22bdd7cd010c
    22bdd7cd00d8:	c5 79 6e eb                                     	vmovd  xmm13,ebx
    22bdd7cd00dc:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cd00e1:	c5 31 66 f2                                     	vpcmpgtd xmm14,xmm9,xmm2
    22bdd7cd00e5:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    22bdd7cd00ea:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cd00ef:	c4 42 09 0a f7                                  	vpsignd xmm14,xmm14,xmm15
    22bdd7cd00f4:	c4 c1 29 66 c9                                  	vpcmpgtd xmm1,xmm10,xmm9
    22bdd7cd00f9:	c4 41 71 df fe                                  	vpandn xmm15,xmm1,xmm14
    22bdd7cd00fe:	c5 11 db e9                                     	vpand  xmm13,xmm13,xmm1
    22bdd7cd0102:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    22bdd7cd0107:	c4 41 31 fe ed                                  	vpaddd xmm13,xmm9,xmm13
    22bdd7cd010c:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    22bdd7cd0111:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    22bdd7cd0116:	c4 42 11 40 ee                                  	vpmulld xmm13,xmm13,xmm14
    22bdd7cd011b:	c4 c1 11 fe cc                                  	vpaddd xmm1,xmm13,xmm12
    22bdd7cd0120:	c4 c3 79 16 cb 03                               	vpextrd r11d,xmm1,0x3
    22bdd7cd0126:	c4 e3 79 16 cf 02                               	vpextrd edi,xmm1,0x2
    22bdd7cd012c:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    22bdd7cd0133:	c4 c3 79 16 cb 01                               	vpextrd r11d,xmm1,0x1
    22bdd7cd0139:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    22bdd7cd0140:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    22bdd7cd0144:	45 85 c9                                        	test   r9d,r9d
    22bdd7cd0147:	0f 85 19 08 00 00                               	jne    0x22bdd7cd0966
    22bdd7cd014d:	c5 f8 10 8d 10 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x3f0]
    22bdd7cd0155:	c5 e1 fe d9                                     	vpaddd xmm3,xmm3,xmm1
    22bdd7cd0159:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    22bdd7cd0161:	c4 c2 61 3d f2                                  	vpmaxsd xmm6,xmm3,xmm10
    22bdd7cd0166:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    22bdd7cd016b:	45 85 ff                                        	test   r15d,r15d
    22bdd7cd016e:	0f 84 3d 00 00 00                               	je     0x22bdd7cd01b1
    22bdd7cd0174:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    22bdd7cd0178:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    22bdd7cd017d:	c5 e1 db f6                                     	vpand  xmm6,xmm3,xmm6
    22bdd7cd0181:	85 c0                                           	test   eax,eax
    22bdd7cd0183:	0f 85 28 00 00 00                               	jne    0x22bdd7cd01b1
    22bdd7cd0189:	c5 e1 66 f5                                     	vpcmpgtd xmm6,xmm3,xmm5
    22bdd7cd018d:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    22bdd7cd0192:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cd0197:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    22bdd7cd019c:	c5 a9 66 eb                                     	vpcmpgtd xmm5,xmm10,xmm3
    22bdd7cd01a0:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    22bdd7cd01a4:	c5 89 db f5                                     	vpand  xmm6,xmm14,xmm5
    22bdd7cd01a8:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cd01ad:	c5 e1 fe f6                                     	vpaddd xmm6,xmm3,xmm6
    22bdd7cd01b1:	c5 31 fe c9                                     	vpaddd xmm9,xmm9,xmm1
    22bdd7cd01b5:	c4 c2 31 3d da                                  	vpmaxsd xmm3,xmm9,xmm10
    22bdd7cd01ba:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    22bdd7cd01bf:	85 f6                                           	test   esi,esi
    22bdd7cd01c1:	0f 84 49 00 00 00                               	je     0x22bdd7cd0210
    22bdd7cd01c7:	c4 c1 79 6e dc                                  	vmovd  xmm3,r12d
    22bdd7cd01cc:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    22bdd7cd01d1:	c4 c1 61 db d9                                  	vpand  xmm3,xmm3,xmm9
    22bdd7cd01d6:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd01d9:	0f 85 31 00 00 00                               	jne    0x22bdd7cd0210
    22bdd7cd01df:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    22bdd7cd01e3:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    22bdd7cd01e8:	c5 b1 66 d2                                     	vpcmpgtd xmm2,xmm9,xmm2
    22bdd7cd01ec:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    22bdd7cd01f0:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    22bdd7cd01f5:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    22bdd7cd01fa:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    22bdd7cd01ff:	c5 51 df fa                                     	vpandn xmm15,xmm5,xmm2
    22bdd7cd0203:	c5 e1 db d5                                     	vpand  xmm2,xmm3,xmm5
    22bdd7cd0207:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    22bdd7cd020c:	c5 b1 fe da                                     	vpaddd xmm3,xmm9,xmm2
    22bdd7cd0210:	c4 42 61 40 ce                                  	vpmulld xmm9,xmm3,xmm14
    22bdd7cd0215:	c4 41 31 fe f4                                  	vpaddd xmm14,xmm9,xmm12
    22bdd7cd021a:	41 83 f8 0f                                     	cmp    r8d,0xf
    22bdd7cd021e:	0f 85 18 00 00 00                               	jne    0x22bdd7cd023c
    22bdd7cd0224:	c5 19 fe e1                                     	vpaddd xmm12,xmm12,xmm1
    22bdd7cd0228:	c4 41 49 76 e4                                  	vpcmpeqd xmm12,xmm6,xmm12
    22bdd7cd022d:	c4 41 78 50 e4                                  	vmovmskps r12d,xmm12
    22bdd7cd0232:	41 83 fc 0f                                     	cmp    r12d,0xf
    22bdd7cd0236:	0f 84 24 03 00 00                               	je     0x22bdd7cd0560
    22bdd7cd023c:	4d 8b e0                                        	mov    r12,r8
    22bdd7cd023f:	41 83 e4 08                                     	and    r12d,0x8
    22bdd7cd0243:	4d 8b f8                                        	mov    r15,r8
    22bdd7cd0246:	41 83 e7 04                                     	and    r15d,0x4
    22bdd7cd024a:	49 8b c0                                        	mov    rax,r8
    22bdd7cd024d:	83 e0 02                                        	and    eax,0x2
    22bdd7cd0250:	49 8b d8                                        	mov    rbx,r8
    22bdd7cd0253:	83 e3 01                                        	and    ebx,0x1
    22bdd7cd0256:	41 83 f8 0f                                     	cmp    r8d,0xf
    22bdd7cd025a:	0f 84 6c 00 00 00                               	je     0x22bdd7cd02cc
    22bdd7cd0260:	85 db                                           	test   ebx,ebx
    22bdd7cd0262:	0f 85 07 00 00 00                               	jne    0x22bdd7cd026f
    22bdd7cd0268:	33 ff                                           	xor    edi,edi
    22bdd7cd026a:	e9 06 00 00 00                                  	jmp    0x22bdd7cd0275
    22bdd7cd026f:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd0272:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd0275:	85 c0                                           	test   eax,eax
    22bdd7cd0277:	0f 85 08 00 00 00                               	jne    0x22bdd7cd0285
    22bdd7cd027d:	45 33 db                                        	xor    r11d,r11d
    22bdd7cd0280:	e9 08 00 00 00                                  	jmp    0x22bdd7cd028d
    22bdd7cd0285:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    22bdd7cd0289:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7cd028d:	45 85 ff                                        	test   r15d,r15d
    22bdd7cd0290:	0f 85 08 00 00 00                               	jne    0x22bdd7cd029e
    22bdd7cd0296:	45 33 ff                                        	xor    r15d,r15d
    22bdd7cd0299:	e9 0f 00 00 00                                  	jmp    0x22bdd7cd02ad
    22bdd7cd029e:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    22bdd7cd02a5:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    22bdd7cd02a9:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    22bdd7cd02ad:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd02b0:	0f 85 33 00 00 00                               	jne    0x22bdd7cd02e9
    22bdd7cd02b6:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    22bdd7cd02bb:	c5 79 6e ef                                     	vmovd  xmm13,edi
    22bdd7cd02bf:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cd02c4:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cd02c7:	e9 43 00 00 00                                  	jmp    0x22bdd7cd030f
    22bdd7cd02cc:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    22bdd7cd02d0:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7cd02d4:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd02d7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd02da:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    22bdd7cd02e1:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    22bdd7cd02e5:	46 8b 3c 22                                     	mov    r15d,DWORD PTR [rdx+r12*1]
    22bdd7cd02e9:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    22bdd7cd02ef:	44 8d 24 81                                     	lea    r12d,[rcx+rax*4]
    22bdd7cd02f3:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    22bdd7cd02f7:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    22bdd7cd02fc:	c5 79 6e ef                                     	vmovd  xmm13,edi
    22bdd7cd0300:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cd0305:	41 83 f8 0f                                     	cmp    r8d,0xf
    22bdd7cd0309:	0f 84 66 00 00 00                               	je     0x22bdd7cd0375
    22bdd7cd030f:	41 f6 c0 01                                     	test   r8b,0x1
    22bdd7cd0313:	0f 85 07 00 00 00                               	jne    0x22bdd7cd0320
    22bdd7cd0319:	33 ff                                           	xor    edi,edi
    22bdd7cd031b:	e9 0a 00 00 00                                  	jmp    0x22bdd7cd032a
    22bdd7cd0320:	c5 79 7e e7                                     	vmovd  edi,xmm12
    22bdd7cd0324:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd0327:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd032a:	41 f6 c0 02                                     	test   r8b,0x2
    22bdd7cd032e:	0f 85 07 00 00 00                               	jne    0x22bdd7cd033b
    22bdd7cd0334:	33 c0                                           	xor    eax,eax
    22bdd7cd0336:	e9 0c 00 00 00                                  	jmp    0x22bdd7cd0347
    22bdd7cd033b:	c4 63 79 16 e0 01                               	vpextrd eax,xmm12,0x1
    22bdd7cd0341:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    22bdd7cd0344:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    22bdd7cd0347:	41 f6 c0 04                                     	test   r8b,0x4
    22bdd7cd034b:	0f 85 07 00 00 00                               	jne    0x22bdd7cd0358
    22bdd7cd0351:	33 db                                           	xor    ebx,ebx
    22bdd7cd0353:	e9 0c 00 00 00                                  	jmp    0x22bdd7cd0364
    22bdd7cd0358:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    22bdd7cd035e:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    22bdd7cd0361:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    22bdd7cd0364:	41 f6 c0 08                                     	test   r8b,0x8
    22bdd7cd0368:	0f 85 29 00 00 00                               	jne    0x22bdd7cd0397
    22bdd7cd036e:	33 f6                                           	xor    esi,esi
    22bdd7cd0370:	e9 2e 00 00 00                                  	jmp    0x22bdd7cd03a3
    22bdd7cd0375:	c4 63 79 16 e7 01                               	vpextrd edi,xmm12,0x1
    22bdd7cd037b:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd037e:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    22bdd7cd0381:	c5 79 7e e7                                     	vmovd  edi,xmm12
    22bdd7cd0385:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd0388:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd038b:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    22bdd7cd0391:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    22bdd7cd0394:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    22bdd7cd0397:	c4 63 79 16 e6 03                               	vpextrd esi,xmm12,0x3
    22bdd7cd039d:	8d 34 b1                                        	lea    esi,[rcx+rsi*4]
    22bdd7cd03a0:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    22bdd7cd03a3:	c4 43 11 22 e3 01                               	vpinsrd xmm12,xmm13,r11d,0x1
    22bdd7cd03a9:	c5 79 6e ef                                     	vmovd  xmm13,edi
    22bdd7cd03ad:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cd03b2:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    22bdd7cd03b8:	41 83 f8 0f                                     	cmp    r8d,0xf
    22bdd7cd03bc:	0f 84 6a 00 00 00                               	je     0x22bdd7cd042c
    22bdd7cd03c2:	41 f6 c0 01                                     	test   r8b,0x1
    22bdd7cd03c6:	0f 85 07 00 00 00                               	jne    0x22bdd7cd03d3
    22bdd7cd03cc:	33 ff                                           	xor    edi,edi
    22bdd7cd03ce:	e9 0a 00 00 00                                  	jmp    0x22bdd7cd03dd
    22bdd7cd03d3:	c5 79 7e f7                                     	vmovd  edi,xmm14
    22bdd7cd03d7:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd03da:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd03dd:	41 f6 c0 02                                     	test   r8b,0x2
    22bdd7cd03e1:	0f 85 08 00 00 00                               	jne    0x22bdd7cd03ef
    22bdd7cd03e7:	45 33 db                                        	xor    r11d,r11d
    22bdd7cd03ea:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd03fd
    22bdd7cd03ef:	c4 43 79 16 f3 01                               	vpextrd r11d,xmm14,0x1
    22bdd7cd03f5:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    22bdd7cd03f9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7cd03fd:	41 f6 c0 04                                     	test   r8b,0x4
    22bdd7cd0401:	0f 85 07 00 00 00                               	jne    0x22bdd7cd040e
    22bdd7cd0407:	33 c0                                           	xor    eax,eax
    22bdd7cd0409:	e9 0c 00 00 00                                  	jmp    0x22bdd7cd041a
    22bdd7cd040e:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    22bdd7cd0414:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    22bdd7cd0417:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    22bdd7cd041a:	41 f6 c0 08                                     	test   r8b,0x8
    22bdd7cd041e:	0f 85 2b 00 00 00                               	jne    0x22bdd7cd044f
    22bdd7cd0424:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cd0427:	e9 31 00 00 00                                  	jmp    0x22bdd7cd045d
    22bdd7cd042c:	c4 63 79 16 f7 01                               	vpextrd edi,xmm14,0x1
    22bdd7cd0432:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd0435:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    22bdd7cd0439:	c5 79 7e f7                                     	vmovd  edi,xmm14
    22bdd7cd043d:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd0440:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd0443:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    22bdd7cd0449:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    22bdd7cd044c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    22bdd7cd044f:	c4 43 79 16 f1 03                               	vpextrd r9d,xmm14,0x3
    22bdd7cd0455:	46 8d 0c 89                                     	lea    r9d,[rcx+r9*4]
    22bdd7cd0459:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    22bdd7cd045d:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    22bdd7cd0463:	c4 63 11 22 eb 02                               	vpinsrd xmm13,xmm13,ebx,0x2
    22bdd7cd0469:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    22bdd7cd046d:	c5 79 6e cf                                     	vmovd  xmm9,edi
    22bdd7cd0471:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    22bdd7cd0476:	c4 43 31 22 cb 01                               	vpinsrd xmm9,xmm9,r11d,0x1
    22bdd7cd047c:	c4 63 31 22 c8 02                               	vpinsrd xmm9,xmm9,eax,0x2
    22bdd7cd0482:	41 83 f8 0f                                     	cmp    r8d,0xf
    22bdd7cd0486:	0f 84 6c 00 00 00                               	je     0x22bdd7cd04f8
    22bdd7cd048c:	41 f6 c0 01                                     	test   r8b,0x1
    22bdd7cd0490:	0f 85 07 00 00 00                               	jne    0x22bdd7cd049d
    22bdd7cd0496:	33 ff                                           	xor    edi,edi
    22bdd7cd0498:	e9 0a 00 00 00                                  	jmp    0x22bdd7cd04a7
    22bdd7cd049d:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    22bdd7cd04a1:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd04a4:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd04a7:	41 f6 c0 02                                     	test   r8b,0x2
    22bdd7cd04ab:	0f 85 08 00 00 00                               	jne    0x22bdd7cd04b9
    22bdd7cd04b1:	45 33 db                                        	xor    r11d,r11d
    22bdd7cd04b4:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd04c7
    22bdd7cd04b9:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    22bdd7cd04bf:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    22bdd7cd04c3:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7cd04c7:	41 f6 c0 04                                     	test   r8b,0x4
    22bdd7cd04cb:	0f 85 08 00 00 00                               	jne    0x22bdd7cd04d9
    22bdd7cd04d1:	45 33 ff                                        	xor    r15d,r15d
    22bdd7cd04d4:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd04e7
    22bdd7cd04d9:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    22bdd7cd04df:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    22bdd7cd04e3:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    22bdd7cd04e7:	41 f6 c0 08                                     	test   r8b,0x8
    22bdd7cd04eb:	0f 85 2c 00 00 00                               	jne    0x22bdd7cd051d
    22bdd7cd04f1:	33 c0                                           	xor    eax,eax
    22bdd7cd04f3:	e9 31 00 00 00                                  	jmp    0x22bdd7cd0529
    22bdd7cd04f8:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    22bdd7cd04fe:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd0501:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    22bdd7cd0505:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    22bdd7cd0509:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd050c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd050f:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    22bdd7cd0515:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    22bdd7cd0519:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    22bdd7cd051d:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    22bdd7cd0523:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    22bdd7cd0526:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    22bdd7cd0529:	c4 c3 19 22 f4 03                               	vpinsrd xmm6,xmm12,r12d,0x3
    22bdd7cd052f:	c4 63 11 22 e6 03                               	vpinsrd xmm12,xmm13,esi,0x3
    22bdd7cd0535:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    22bdd7cd053b:	c5 79 6e ef                                     	vmovd  xmm13,edi
    22bdd7cd053f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    22bdd7cd0544:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    22bdd7cd054a:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    22bdd7cd0550:	c4 63 11 22 e8 03                               	vpinsrd xmm13,xmm13,eax,0x3
    22bdd7cd0556:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    22bdd7cd055b:	e9 95 00 00 00                                  	jmp    0x22bdd7cd05f5
    22bdd7cd0560:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd0563:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    22bdd7cd0568:	42 8d 3c 99                                     	lea    edi,[rcx+r11*4]
    22bdd7cd056c:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    22bdd7cd0571:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    22bdd7cd0576:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    22bdd7cd057d:	42 8d 3c a1                                     	lea    edi,[rcx+r12*4]
    22bdd7cd0581:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    22bdd7cd0586:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    22bdd7cd058d:	42 8d 3c b9                                     	lea    edi,[rcx+r15*4]
    22bdd7cd0591:	c5 7b 10 24 3a                                  	vmovsd xmm12,QWORD PTR [rdx+rdi*1]
    22bdd7cd0596:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    22bdd7cd059b:	c4 41 48 c6 e1 dd                               	vshufps xmm12,xmm6,xmm9,0xdd
    22bdd7cd05a1:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    22bdd7cd05a7:	c4 c1 31 72 f6 02                               	vpslld xmm9,xmm14,0x2
    22bdd7cd05ad:	c5 79 7e cf                                     	vmovd  edi,xmm9
    22bdd7cd05b1:	03 f9                                           	add    edi,ecx
    22bdd7cd05b3:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    22bdd7cd05b8:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    22bdd7cd05be:	03 f9                                           	add    edi,ecx
    22bdd7cd05c0:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    22bdd7cd05c5:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    22bdd7cd05ca:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    22bdd7cd05d0:	03 f9                                           	add    edi,ecx
    22bdd7cd05d2:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    22bdd7cd05d7:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    22bdd7cd05dd:	03 f9                                           	add    edi,ecx
    22bdd7cd05df:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    22bdd7cd05e4:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    22bdd7cd05e9:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    22bdd7cd05ef:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    22bdd7cd05f5:	c5 91 72 d6 18                                  	vpsrld xmm13,xmm6,0x18
    22bdd7cd05fa:	c4 c1 69 72 d4 18                               	vpsrld xmm2,xmm12,0x18
    22bdd7cd0600:	c5 11 6b ea                                     	vpackssdw xmm13,xmm13,xmm2
    22bdd7cd0604:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    22bdd7cd0608:	c4 c3 69 0f dd 08                               	vpalignr xmm3,xmm2,xmm13,0x8
    22bdd7cd060e:	c5 11 61 eb                                     	vpunpcklwd xmm13,xmm13,xmm3
    22bdd7cd0612:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    22bdd7cd061c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7cd0621:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7cd0625:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    22bdd7cd062a:	c5 78 10 85 50 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2b0]
    22bdd7cd0632:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    22bdd7cd0637:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    22bdd7cd0641:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cd0646:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    22bdd7cd064a:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    22bdd7cd064e:	4c 8b 15 09 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa109]        # 0x22bdd7cca75e
    22bdd7cd0655:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    22bdd7cd065a:	c4 c1 78 54 cf                                  	vandps xmm1,xmm0,xmm15
    22bdd7cd065f:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    22bdd7cd0665:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    22bdd7cd0669:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    22bdd7cd066e:	4c 8b 15 28 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe328]        # 0x22bdd7cce99d
    22bdd7cd0675:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7cd067a:	c4 c1 78 c2 c3 01                               	vcmpltps xmm0,xmm0,xmm11
    22bdd7cd0680:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    22bdd7cd0684:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    22bdd7cd0688:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cd068d:	c5 e1 fa c8                                     	vpsubd xmm1,xmm3,xmm0
    22bdd7cd0691:	c5 f1 6b c0                                     	vpackssdw xmm0,xmm1,xmm0
    22bdd7cd0695:	c4 e3 69 0f c8 08                               	vpalignr xmm1,xmm2,xmm0,0x8
    22bdd7cd069b:	c5 f9 61 c1                                     	vpunpcklwd xmm0,xmm0,xmm1
    22bdd7cd069f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    22bdd7cd06a3:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    22bdd7cd06ab:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    22bdd7cd06af:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    22bdd7cd06b4:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    22bdd7cd06b8:	4c 8b 15 9f a0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa09f]        # 0x22bdd7cca75e
    22bdd7cd06bf:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    22bdd7cd06c4:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    22bdd7cd06c9:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    22bdd7cd06cf:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    22bdd7cd06d3:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    22bdd7cd06d8:	4c 8b 15 be e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe2be]        # 0x22bdd7cce99d
    22bdd7cd06df:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    22bdd7cd06e4:	c4 c1 40 c2 fb 01                               	vcmpltps xmm7,xmm7,xmm11
    22bdd7cd06ea:	c5 41 df fc                                     	vpandn xmm15,xmm7,xmm4
    22bdd7cd06ee:	c5 f1 db ff                                     	vpand  xmm7,xmm1,xmm7
    22bdd7cd06f2:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cd06f7:	c5 61 fa df                                     	vpsubd xmm11,xmm3,xmm7
    22bdd7cd06fb:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    22bdd7cd0700:	c4 c1 71 72 d1 18                               	vpsrld xmm1,xmm9,0x18
    22bdd7cd0706:	c4 c1 61 72 d6 18                               	vpsrld xmm3,xmm14,0x18
    22bdd7cd070c:	c5 f1 6b cb                                     	vpackssdw xmm1,xmm1,xmm3
    22bdd7cd0710:	c4 e3 69 0f d9 08                               	vpalignr xmm3,xmm2,xmm1,0x8
    22bdd7cd0716:	c5 f1 61 cb                                     	vpunpcklwd xmm1,xmm1,xmm3
    22bdd7cd071a:	c5 f1 f5 c8                                     	vpmaddwd xmm1,xmm1,xmm0
    22bdd7cd071e:	c4 e2 71 40 cf                                  	vpmulld xmm1,xmm1,xmm7
    22bdd7cd0723:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    22bdd7cd0727:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    22bdd7cd0731:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cd0736:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cd073a:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    22bdd7cd073e:	c4 c1 11 72 d5 10                               	vpsrld xmm13,xmm13,0x10
    22bdd7cd0744:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd0749:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    22bdd7cd074f:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    22bdd7cd0754:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd0759:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    22bdd7cd075f:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    22bdd7cd0764:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    22bdd7cd0769:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    22bdd7cd076e:	4c 8b 15 3d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea3d]        # 0x22bdd7ccf1b2
    22bdd7cd0775:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7cd077a:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7cd077e:	c5 10 59 eb                                     	vmulps xmm13,xmm13,xmm3
    22bdd7cd0782:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    22bdd7cd0785:	c5 7a 7f ac 02 c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1c0],xmm13
    22bdd7cd078e:	c5 91 72 d6 10                                  	vpsrld xmm13,xmm6,0x10
    22bdd7cd0793:	4c 8b 15 30 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe930]        # 0x22bdd7ccf0ca
    22bdd7cd079a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    22bdd7cd079f:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    22bdd7cd07a3:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    22bdd7cd07a7:	c4 c1 51 72 d4 10                               	vpsrld xmm5,xmm12,0x10
    22bdd7cd07ad:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    22bdd7cd07b1:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    22bdd7cd07b5:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    22bdd7cd07bb:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    22bdd7cd07bf:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    22bdd7cd07c3:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    22bdd7cd07c8:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    22bdd7cd07ce:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    22bdd7cd07d2:	c4 c1 39 72 d6 10                               	vpsrld xmm8,xmm14,0x10
    22bdd7cd07d8:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    22bdd7cd07dc:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    22bdd7cd07e1:	c4 c3 69 0f e8 08                               	vpalignr xmm5,xmm2,xmm8,0x8
    22bdd7cd07e7:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    22bdd7cd07eb:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    22bdd7cd07ef:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    22bdd7cd07f4:	c4 41 11 fe c0                                  	vpaddd xmm8,xmm13,xmm8
    22bdd7cd07f9:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    22bdd7cd07fd:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    22bdd7cd0803:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd0808:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7cd080e:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7cd0813:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd0818:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7cd081e:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7cd0823:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7cd0828:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7cd082d:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    22bdd7cd0831:	c5 7a 7f 84 02 b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1b0],xmm8
    22bdd7cd083a:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    22bdd7cd083f:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    22bdd7cd0843:	c4 c1 11 72 d4 08                               	vpsrld xmm13,xmm12,0x8
    22bdd7cd0849:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    22bdd7cd084d:	c4 41 39 6b c5                                  	vpackssdw xmm8,xmm8,xmm13
    22bdd7cd0852:	c4 43 69 0f e8 08                               	vpalignr xmm13,xmm2,xmm8,0x8
    22bdd7cd0858:	c4 41 39 61 c5                                  	vpunpcklwd xmm8,xmm8,xmm13
    22bdd7cd085d:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    22bdd7cd0861:	c4 42 39 40 c3                                  	vpmulld xmm8,xmm8,xmm11
    22bdd7cd0866:	c4 c1 11 72 d1 08                               	vpsrld xmm13,xmm9,0x8
    22bdd7cd086c:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    22bdd7cd0870:	c4 c1 51 72 d6 08                               	vpsrld xmm5,xmm14,0x8
    22bdd7cd0876:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    22bdd7cd087a:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    22bdd7cd087e:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    22bdd7cd0884:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    22bdd7cd0888:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    22bdd7cd088c:	c4 62 11 40 ef                                  	vpmulld xmm13,xmm13,xmm7
    22bdd7cd0891:	c4 41 39 fe c5                                  	vpaddd xmm8,xmm8,xmm13
    22bdd7cd0896:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    22bdd7cd089a:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    22bdd7cd08a0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd08a5:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7cd08ab:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7cd08b0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd08b5:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7cd08bb:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7cd08c0:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7cd08c5:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7cd08ca:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    22bdd7cd08ce:	c5 7a 7f 84 02 a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1a0],xmm8
    22bdd7cd08d7:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    22bdd7cd08db:	c5 19 db c4                                     	vpand  xmm8,xmm12,xmm4
    22bdd7cd08df:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    22bdd7cd08e4:	c4 63 69 0f c6 08                               	vpalignr xmm8,xmm2,xmm6,0x8
    22bdd7cd08ea:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    22bdd7cd08ef:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    22bdd7cd08f3:	c4 c2 49 40 f3                                  	vpmulld xmm6,xmm6,xmm11
    22bdd7cd08f8:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    22bdd7cd08fc:	c5 09 db cc                                     	vpand  xmm9,xmm14,xmm4
    22bdd7cd0900:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    22bdd7cd0905:	c4 43 69 0f c8 08                               	vpalignr xmm9,xmm2,xmm8,0x8
    22bdd7cd090b:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    22bdd7cd0910:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    22bdd7cd0914:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    22bdd7cd0919:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    22bdd7cd091d:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    22bdd7cd0921:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    22bdd7cd0926:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd092b:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7cd0931:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7cd0936:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd093b:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7cd0940:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7cd0944:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7cd0948:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7cd094d:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    22bdd7cd0951:	c5 fa 7f 84 02 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x190],xmm0
    22bdd7cd095a:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cd0961:	e9 53 05 00 00                                  	jmp    0x22bdd7cd0eb9
    22bdd7cd0966:	41 83 f8 0f                                     	cmp    r8d,0xf
    22bdd7cd096a:	0f 84 64 00 00 00                               	je     0x22bdd7cd09d4
    22bdd7cd0970:	41 f6 c0 01                                     	test   r8b,0x1
    22bdd7cd0974:	0f 85 07 00 00 00                               	jne    0x22bdd7cd0981
    22bdd7cd097a:	33 ff                                           	xor    edi,edi
    22bdd7cd097c:	e9 06 00 00 00                                  	jmp    0x22bdd7cd0987
    22bdd7cd0981:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd0984:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd0987:	41 f6 c0 02                                     	test   r8b,0x2
    22bdd7cd098b:	0f 85 08 00 00 00                               	jne    0x22bdd7cd0999
    22bdd7cd0991:	45 33 db                                        	xor    r11d,r11d
    22bdd7cd0994:	e9 08 00 00 00                                  	jmp    0x22bdd7cd09a1
    22bdd7cd0999:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    22bdd7cd099d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7cd09a1:	41 f6 c0 04                                     	test   r8b,0x4
    22bdd7cd09a5:	0f 85 08 00 00 00                               	jne    0x22bdd7cd09b3
    22bdd7cd09ab:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cd09ae:	e9 0f 00 00 00                                  	jmp    0x22bdd7cd09c2
    22bdd7cd09b3:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    22bdd7cd09ba:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    22bdd7cd09be:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    22bdd7cd09c2:	41 f6 c0 08                                     	test   r8b,0x8
    22bdd7cd09c6:	0f 85 25 00 00 00                               	jne    0x22bdd7cd09f1
    22bdd7cd09cc:	45 33 ff                                        	xor    r15d,r15d
    22bdd7cd09cf:	e9 2c 00 00 00                                  	jmp    0x22bdd7cd0a00
    22bdd7cd09d4:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    22bdd7cd09db:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    22bdd7cd09df:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    22bdd7cd09e3:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    22bdd7cd09e7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    22bdd7cd09eb:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    22bdd7cd09ee:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    22bdd7cd09f1:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    22bdd7cd09f8:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    22bdd7cd09fc:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    22bdd7cd0a00:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    22bdd7cd0a04:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7cd0a09:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    22bdd7cd0a0f:	c4 c3 79 22 c4 02                               	vpinsrd xmm0,xmm0,r12d,0x2
    22bdd7cd0a15:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    22bdd7cd0a1b:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    22bdd7cd0a20:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd0a25:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    22bdd7cd0a2b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    22bdd7cd0a30:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd0a35:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    22bdd7cd0a3a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    22bdd7cd0a3e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    22bdd7cd0a42:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    22bdd7cd0a47:	4c 8b 15 64 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe764]        # 0x22bdd7ccf1b2
    22bdd7cd0a4e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cd0a53:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cd0a57:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    22bdd7cd0a5b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cd0a5e:	c5 fa 7f b4 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm6
    22bdd7cd0a67:	4c 8b 15 5c e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe65c]        # 0x22bdd7ccf0ca
    22bdd7cd0a6e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    22bdd7cd0a73:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    22bdd7cd0a77:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    22bdd7cd0a7b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd0a80:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7cd0a86:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7cd0a8b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd0a90:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7cd0a96:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7cd0a9b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7cd0aa0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7cd0aa5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    22bdd7cd0aa9:	c5 7a 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm8
    22bdd7cd0ab2:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    22bdd7cd0ab7:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    22bdd7cd0abb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd0ac0:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    22bdd7cd0ac6:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    22bdd7cd0acb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd0ad0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    22bdd7cd0ad6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    22bdd7cd0adb:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    22bdd7cd0ae0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    22bdd7cd0ae5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    22bdd7cd0ae9:	c5 7a 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm8
    22bdd7cd0af2:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    22bdd7cd0af7:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    22bdd7cd0afb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    22bdd7cd0b00:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    22bdd7cd0b06:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    22bdd7cd0b0b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    22bdd7cd0b10:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    22bdd7cd0b15:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    22bdd7cd0b19:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    22bdd7cd0b1d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    22bdd7cd0b22:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    22bdd7cd0b26:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    22bdd7cd0b2f:	8b c7                                           	mov    eax,edi
    22bdd7cd0b31:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cd0b38:	e9 7c 03 00 00                                  	jmp    0x22bdd7cd0eb9
    22bdd7cd0b3d:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    22bdd7cd0b43:	4c 8d 5a 58                                     	lea    r11,[rdx+0x58]
    22bdd7cd0b47:	c4 02 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [r11+r12*1]
    22bdd7cd0b4d:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    22bdd7cd0b52:	c4 42 79 18 1c 03                               	vbroadcastss xmm11,DWORD PTR [r11+rax*1]
    22bdd7cd0b58:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    22bdd7cd0b5d:	c4 41 38 58 c3                                  	vaddps xmm8,xmm8,xmm11
    22bdd7cd0b62:	c4 02 79 18 1c 0b                               	vbroadcastss xmm11,DWORD PTR [r11+r9*1]
    22bdd7cd0b68:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    22bdd7cd0b6d:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    22bdd7cd0b72:	c4 c1 48 59 d8                                  	vmulps xmm3,xmm6,xmm8
    22bdd7cd0b77:	41 83 ff 03                                     	cmp    r15d,0x3
    22bdd7cd0b7b:	0f 84 a5 02 00 00                               	je     0x22bdd7cd0e26
    22bdd7cd0b81:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cd0b85:	c4 a1 7a 7f 84 1a c0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xc0],xmm0
    22bdd7cd0b8f:	c4 a1 7a 7f 84 1a b0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xb0],xmm0
    22bdd7cd0b99:	c4 a1 7a 7f 84 1a a0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xa0],xmm0
    22bdd7cd0ba3:	c4 a1 7a 7f bc 1a f0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1f0],xmm7
    22bdd7cd0bad:	c4 a1 7a 7f 94 1a e0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1e0],xmm2
    22bdd7cd0bb7:	c4 a1 7a 7f 9c 1a d0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1d0],xmm3
    22bdd7cd0bc1:	c4 a1 7a 7f 84 1a 90 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x90],xmm0
    22bdd7cd0bcb:	4c 8b ff                                        	mov    r15,rdi
    22bdd7cd0bce:	33 ff                                           	xor    edi,edi
    22bdd7cd0bd0:	e9 41 00 00 00                                  	jmp    0x22bdd7cd0c16
    22bdd7cd0bd5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cd0bde:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cd0be7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cd0bf0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cd0bf9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    22bdd7cd0c00:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    22bdd7cd0c07:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cd0c0b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7cd0c0f:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    22bdd7cd0c16:	48 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rdi
    22bdd7cd0c1d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7cd0c22:	0f 85 e9 26 00 00                               	jne    0x22bdd7cd3311
    22bdd7cd0c28:	8b cf                                           	mov    ecx,edi
    22bdd7cd0c2a:	41 d3 e8                                        	shr    r8d,cl
    22bdd7cd0c2d:	41 f6 c0 01                                     	test   r8b,0x1
    22bdd7cd0c31:	0f 84 4c 01 00 00                               	je     0x22bdd7cd0d83
    22bdd7cd0c37:	42 8b 4c 3a 10                                  	mov    ecx,DWORD PTR [rdx+r15*1+0x10]
    22bdd7cd0c3c:	46 8b 44 3a 0c                                  	mov    r8d,DWORD PTR [rdx+r15*1+0xc]
    22bdd7cd0c41:	4c 89 85 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r8
    22bdd7cd0c48:	46 8b 44 3a 08                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x8]
    22bdd7cd0c4d:	46 8b 44 3a 04                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x4]
    22bdd7cd0c52:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    22bdd7cd0c59:	46 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+r15*1]
    22bdd7cd0c5d:	41 83 f8 02                                     	cmp    r8d,0x2
    22bdd7cd0c61:	0f 84 b2 00 00 00                               	je     0x22bdd7cd0d19
    22bdd7cd0c67:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    22bdd7cd0c6e:	45 85 c0                                        	test   r8d,r8d
    22bdd7cd0c71:	0f 85 44 00 00 00                               	jne    0x22bdd7cd0cbb
    22bdd7cd0c77:	45 8d 84 bb f0 01 00 00                         	lea    r8d,[r11+rdi*4+0x1f0]
    22bdd7cd0c7f:	c4 a1 7a 10 34 02                               	vmovss xmm6,DWORD PTR [rdx+r8*1]
    22bdd7cd0c85:	45 8d 83 90 00 00 00                            	lea    r8d,[r11+0x90]
    22bdd7cd0c8c:	8b cf                                           	mov    ecx,edi
    22bdd7cd0c8e:	c1 e1 04                                        	shl    ecx,0x4
    22bdd7cd0c91:	44 03 c1                                        	add    r8d,ecx
    22bdd7cd0c94:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd0c98:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    22bdd7cd0c9e:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    22bdd7cd0ca4:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    22bdd7cd0caa:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cd0cae:	41 8b d8                                        	mov    ebx,r8d
    22bdd7cd0cb1:	e8 6a 55 f3 ff                                  	call   0x22bdd7c06220
    22bdd7cd0cb6:	e9 c8 00 00 00                                  	jmp    0x22bdd7cd0d83
    22bdd7cd0cbb:	4c 8b c2                                        	mov    r8,rdx
    22bdd7cd0cbe:	43 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+r15*1+0x14]
    22bdd7cd0cc3:	44 8b d7                                        	mov    r10d,edi
    22bdd7cd0cc6:	41 8b fb                                        	mov    edi,r11d
    22bdd7cd0cc9:	45 8b da                                        	mov    r11d,r10d
    22bdd7cd0ccc:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    22bdd7cd0cd4:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    22bdd7cd0cda:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    22bdd7cd0ce2:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    22bdd7cd0ce8:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    22bdd7cd0cee:	41 8b cb                                        	mov    ecx,r11d
    22bdd7cd0cf1:	c1 e1 04                                        	shl    ecx,0x4
    22bdd7cd0cf4:	03 d1                                           	add    edx,ecx
    22bdd7cd0cf6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd0cfa:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    22bdd7cd0d00:	44 8b ca                                        	mov    r9d,edx
    22bdd7cd0d03:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    22bdd7cd0d09:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    22bdd7cd0d0f:	e8 24 55 f3 ff                                  	call   0x22bdd7c06238
    22bdd7cd0d14:	e9 6a 00 00 00                                  	jmp    0x22bdd7cd0d83
    22bdd7cd0d19:	4c 8b c2                                        	mov    r8,rdx
    22bdd7cd0d1c:	4d 8b e7                                        	mov    r12,r15
    22bdd7cd0d1f:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    22bdd7cd0d24:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    22bdd7cd0d29:	44 8b d7                                        	mov    r10d,edi
    22bdd7cd0d2c:	41 8b fb                                        	mov    edi,r11d
    22bdd7cd0d2f:	45 8b da                                        	mov    r11d,r10d
    22bdd7cd0d32:	46 8d bc 9f f0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1f0]
    22bdd7cd0d3a:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    22bdd7cd0d40:	46 8d bc 9f e0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1e0]
    22bdd7cd0d48:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    22bdd7cd0d4e:	46 8d bc 9f d0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1d0]
    22bdd7cd0d56:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    22bdd7cd0d5c:	44 8d bf 90 00 00 00                            	lea    r15d,[rdi+0x90]
    22bdd7cd0d63:	41 8b c3                                        	mov    eax,r11d
    22bdd7cd0d66:	c1 e0 04                                        	shl    eax,0x4
    22bdd7cd0d69:	44 03 f8                                        	add    r15d,eax
    22bdd7cd0d6c:	41 57                                           	push   r15
    22bdd7cd0d6e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd0d72:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    22bdd7cd0d78:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    22bdd7cd0d7e:	e8 a5 54 f3 ff                                  	call   0x22bdd7c06228
    22bdd7cd0d83:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    22bdd7cd0d89:	83 c7 01                                        	add    edi,0x1
    22bdd7cd0d8c:	83 ff 04                                        	cmp    edi,0x4
    22bdd7cd0d8f:	0f 85 6b fe ff ff                               	jne    0x22bdd7cd0c00
    22bdd7cd0d95:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    22bdd7cd0d98:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd0d9c:	c4 c1 7a 6f 84 18 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0xb0]
    22bdd7cd0da6:	c4 c1 7a 6f b4 18 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0xc0]
    22bdd7cd0db0:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    22bdd7cd0db4:	c4 41 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x90]
    22bdd7cd0dbe:	c4 41 7a 6f 8c 18 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0xa0]
    22bdd7cd0dc8:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    22bdd7cd0dcd:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    22bdd7cd0dd1:	c4 41 7a 7f 9c 18 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1c0],xmm11
    22bdd7cd0ddb:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    22bdd7cd0ddf:	c4 c1 7a 7f bc 18 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1b0],xmm7
    22bdd7cd0de9:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    22bdd7cd0ded:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    22bdd7cd0df2:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    22bdd7cd0df6:	c4 c1 7a 7f bc 18 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1a0],xmm7
    22bdd7cd0e00:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    22bdd7cd0e04:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    22bdd7cd0e0e:	8b c3                                           	mov    eax,ebx
    22bdd7cd0e10:	49 8b d0                                        	mov    rdx,r8
    22bdd7cd0e13:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cd0e1a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    22bdd7cd0e21:	e9 93 00 00 00                                  	jmp    0x22bdd7cd0eb9
    22bdd7cd0e26:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cd0e2a:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    22bdd7cd0e31:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd0e35:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7cd0e38:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    22bdd7cd0e3c:	49 8b d0                                        	mov    rdx,r8
    22bdd7cd0e3f:	e8 e4 56 f3 ff                                  	call   0x22bdd7c06528
    22bdd7cd0e44:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    22bdd7cd0e47:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7cd0e4b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cd0e52:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    22bdd7cd0e59:	e9 5b 00 00 00                                  	jmp    0x22bdd7cd0eb9
    22bdd7cd0e5e:	4c 8b fa                                        	mov    r15,rdx
    22bdd7cd0e61:	49 8d 57 3c                                     	lea    rdx,[r15+0x3c]
    22bdd7cd0e65:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    22bdd7cd0e6b:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    22bdd7cd0e6e:	c4 c1 7a 7f 84 17 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x190],xmm0
    22bdd7cd0e78:	49 8d 4f 40                                     	lea    rcx,[r15+0x40]
    22bdd7cd0e7c:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    22bdd7cd0e82:	c4 c1 7a 7f 84 17 a0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1a0],xmm0
    22bdd7cd0e8c:	49 8d 4f 44                                     	lea    rcx,[r15+0x44]
    22bdd7cd0e90:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    22bdd7cd0e96:	c4 c1 7a 7f 84 17 b0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1b0],xmm0
    22bdd7cd0ea0:	49 8d 4f 48                                     	lea    rcx,[r15+0x48]
    22bdd7cd0ea4:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    22bdd7cd0eaa:	c4 c1 7a 7f 84 17 c0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1c0],xmm0
    22bdd7cd0eb4:	8b c2                                           	mov    eax,edx
    22bdd7cd0eb6:	49 8b d7                                        	mov    rdx,r15
    22bdd7cd0eb9:	c5 fa 6f 84 02 90 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rax*1+0x190]
    22bdd7cd0ec2:	44 8b 9c 3a 34 01 00 00                         	mov    r11d,DWORD PTR [rdx+rdi*1+0x134]
    22bdd7cd0eca:	83 bc 3a 34 01 00 00 02                         	cmp    DWORD PTR [rdx+rdi*1+0x134],0x2
    22bdd7cd0ed2:	0f 84 55 00 00 00                               	je     0x22bdd7cd0f2d
    22bdd7cd0ed8:	c5 fa 6f b4 02 c0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1c0]
    22bdd7cd0ee1:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    22bdd7cd0ee9:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    22bdd7cd0eed:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    22bdd7cd0ef6:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    22bdd7cd0efe:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    22bdd7cd0f02:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    22bdd7cd0f0b:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    22bdd7cd0f13:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    22bdd7cd0f18:	c5 78 10 8d 90 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x170]
    22bdd7cd0f20:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    22bdd7cd0f24:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    22bdd7cd0f28:	e9 1f 00 00 00                                  	jmp    0x22bdd7cd0f4c
    22bdd7cd0f2d:	c5 fa 6f bc 02 c0 01 00 00                      	vmovdqu xmm7,XMMWORD PTR [rdx+rax*1+0x1c0]
    22bdd7cd0f36:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    22bdd7cd0f3f:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    22bdd7cd0f48:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    22bdd7cd0f4c:	c5 49 6a cf                                     	vpunpckhdq xmm9,xmm6,xmm7
    22bdd7cd0f50:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    22bdd7cd0f55:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    22bdd7cd0f5a:	c5 7a 7f 5c 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm11
    22bdd7cd0f60:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    22bdd7cd0f65:	c5 7a 7f 4c 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm9
    22bdd7cd0f6b:	c5 c9 62 f7                                     	vpunpckldq xmm6,xmm6,xmm7
    22bdd7cd0f6f:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    22bdd7cd0f74:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    22bdd7cd0f78:	c5 fa 7f 7c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm7
    22bdd7cd0f7e:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    22bdd7cd0f82:	c5 fa 7f 04 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm0
    22bdd7cd0f87:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    22bdd7cd0f8c:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    22bdd7cd0f90:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    22bdd7cd0f95:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    22bdd7cd0f9a:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd0f9f:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    22bdd7cd0fa7:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd0faf:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd0fb7:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd0fbf:	41 f6 c0 01                                     	test   r8b,0x1
    22bdd7cd0fc3:	0f 84 63 00 00 00                               	je     0x22bdd7cd102c
    22bdd7cd0fc9:	c5 fa 10 44 02 40                               	vmovss xmm0,DWORD PTR [rdx+rax*1+0x40]
    22bdd7cd0fcf:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    22bdd7cd0fd6:	0f 85 35 00 00 00                               	jne    0x22bdd7cd1011
    22bdd7cd0fdc:	c5 fa 10 14 02                                  	vmovss xmm2,DWORD PTR [rdx+rax*1]
    22bdd7cd0fe1:	c5 fa 10 5c 02 04                               	vmovss xmm3,DWORD PTR [rdx+rax*1+0x4]
    22bdd7cd0fe7:	c5 fa 10 64 02 08                               	vmovss xmm4,DWORD PTR [rdx+rax*1+0x8]
    22bdd7cd0fed:	c5 fa 10 6c 02 0c                               	vmovss xmm5,DWORD PTR [rdx+rax*1+0xc]
    22bdd7cd0ff3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd0ff7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd0ffa:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7cd1000:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cd1003:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    22bdd7cd1007:	e8 54 52 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cd100c:	e9 1b 00 00 00                                  	jmp    0x22bdd7cd102c
    22bdd7cd1011:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd1015:	8b d8                                           	mov    ebx,eax
    22bdd7cd1017:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd101a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7cd1020:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cd1023:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    22bdd7cd1027:	e8 4c 52 f3 ff                                  	call   0x22bdd7c06278
    22bdd7cd102c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    22bdd7cd1033:	0f 84 6c 00 00 00                               	je     0x22bdd7cd10a5
    22bdd7cd1039:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cd103c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd1040:	c4 c1 7a 10 4c 38 44                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x44]
    22bdd7cd1047:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    22bdd7cd104e:	0f 85 36 00 00 00                               	jne    0x22bdd7cd108a
    22bdd7cd1054:	c4 c1 7a 10 54 38 10                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x10]
    22bdd7cd105b:	c4 c1 7a 10 5c 38 14                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x14]
    22bdd7cd1062:	c4 c1 7a 10 64 38 18                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x18]
    22bdd7cd1069:	c4 c1 7a 10 6c 38 1c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x1c]
    22bdd7cd1070:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd1074:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd1077:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cd107d:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cd1080:	e8 db 51 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cd1085:	e9 1b 00 00 00                                  	jmp    0x22bdd7cd10a5
    22bdd7cd108a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd108e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd1091:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cd1097:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    22bdd7cd109a:	8b 9d a8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x358]
    22bdd7cd10a0:	e8 d3 51 f3 ff                                  	call   0x22bdd7c06278
    22bdd7cd10a5:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    22bdd7cd10ac:	0f 84 72 00 00 00                               	je     0x22bdd7cd1124
    22bdd7cd10b2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cd10b5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd10b9:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    22bdd7cd10c0:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    22bdd7cd10c7:	0f 85 39 00 00 00                               	jne    0x22bdd7cd1106
    22bdd7cd10cd:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    22bdd7cd10d4:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    22bdd7cd10db:	c4 c1 7a 10 64 38 28                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x28]
    22bdd7cd10e2:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    22bdd7cd10e9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd10ed:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd10f0:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7cd10f6:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    22bdd7cd10fc:	e8 5f 51 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cd1101:	e9 1e 00 00 00                                  	jmp    0x22bdd7cd1124
    22bdd7cd1106:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd110a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd110d:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7cd1113:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    22bdd7cd1119:	8b 9d b0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x350]
    22bdd7cd111f:	e8 54 51 f3 ff                                  	call   0x22bdd7c06278
    22bdd7cd1124:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    22bdd7cd112b:	0f 85 4e 00 00 00                               	jne    0x22bdd7cd117f
    22bdd7cd1131:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7cd1135:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd113a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cd113e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd1143:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd1149:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd114f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd1154:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cd115c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd1164:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd116c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd1174:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd117a:	e9 2b 1d 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cd117f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cd1182:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd1186:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    22bdd7cd118d:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    22bdd7cd1194:	0f 85 82 00 00 00                               	jne    0x22bdd7cd121c
    22bdd7cd119a:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    22bdd7cd11a1:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    22bdd7cd11a8:	c4 c1 7a 10 64 38 38                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x38]
    22bdd7cd11af:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    22bdd7cd11b6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd11ba:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd11bd:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cd11c3:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    22bdd7cd11c9:	e8 92 50 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cd11ce:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7cd11d2:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd11d7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cd11db:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd11e0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd11e6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd11ec:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd11f1:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cd11f9:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd1201:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd1209:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd1211:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd1217:	e9 8e 1c 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cd121c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd1220:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd1223:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cd1229:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    22bdd7cd122f:	8b 9d c8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x338]
    22bdd7cd1235:	e8 3e 50 f3 ff                                  	call   0x22bdd7c06278
    22bdd7cd123a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7cd123e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd1243:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cd1247:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd124c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd1252:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd1258:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd125d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cd1265:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd126d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd1275:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd127d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd1283:	e9 22 1c 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cd1288:	44 8b c3                                        	mov    r8d,ebx
    22bdd7cd128b:	41 83 e0 01                                     	and    r8d,0x1
    22bdd7cd128f:	41 f7 d8                                        	neg    r8d
    22bdd7cd1292:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    22bdd7cd1297:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    22bdd7cd129c:	44 8b c3                                        	mov    r8d,ebx
    22bdd7cd129f:	41 c1 e0 1e                                     	shl    r8d,0x1e
    22bdd7cd12a3:	41 c1 f8 1f                                     	sar    r8d,0x1f
    22bdd7cd12a7:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    22bdd7cd12ad:	44 8b c3                                        	mov    r8d,ebx
    22bdd7cd12b0:	41 c1 e0 1d                                     	shl    r8d,0x1d
    22bdd7cd12b4:	41 c1 f8 1f                                     	sar    r8d,0x1f
    22bdd7cd12b8:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    22bdd7cd12be:	44 8b c3                                        	mov    r8d,ebx
    22bdd7cd12c1:	41 c1 e0 1c                                     	shl    r8d,0x1c
    22bdd7cd12c5:	41 c1 f8 1f                                     	sar    r8d,0x1f
    22bdd7cd12c9:	c4 c3 79 22 c0 03                               	vpinsrd xmm0,xmm0,r8d,0x3
    22bdd7cd12cf:	c4 e1 82 2a bd 60 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xa0]
    22bdd7cd12d8:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    22bdd7cd12dd:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    22bdd7cd12e4:	4c 2b 85 d0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x330]
    22bdd7cd12eb:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    22bdd7cd12f0:	c4 c3 41 21 fb 10                               	vinsertps xmm7,xmm7,xmm11,0x10
    22bdd7cd12f6:	4c 8b ff                                        	mov    r15,rdi
    22bdd7cd12f9:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    22bdd7cd1300:	49 8d 14 3f                                     	lea    rdx,[r15+rdi*1]
    22bdd7cd1304:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    22bdd7cd1309:	c4 c3 41 21 fb 20                               	vinsertps xmm7,xmm7,xmm11,0x20
    22bdd7cd130f:	4d 03 c7                                        	add    r8,r15
    22bdd7cd1312:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    22bdd7cd1317:	c4 c3 41 21 fb 30                               	vinsertps xmm7,xmm7,xmm11,0x30
    22bdd7cd131d:	c5 78 10 9d 00 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x300]
    22bdd7cd1325:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    22bdd7cd1329:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    22bdd7cd1331:	c5 f0 59 d7                                     	vmulps xmm2,xmm1,xmm7
    22bdd7cd1335:	c4 e1 82 2a 9d 50 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xb0]
    22bdd7cd133e:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    22bdd7cd1343:	4c 8b 85 50 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xb0]
    22bdd7cd134a:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    22bdd7cd1351:	c4 c1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,r8
    22bdd7cd1356:	c4 e3 61 21 dc 10                               	vinsertps xmm3,xmm3,xmm4,0x10
    22bdd7cd135c:	48 8b 95 50 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb0]
    22bdd7cd1363:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    22bdd7cd136a:	48 8d 3c 11                                     	lea    rdi,[rcx+rdx*1]
    22bdd7cd136e:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    22bdd7cd1373:	c4 e3 61 21 dc 20                               	vinsertps xmm3,xmm3,xmm4,0x20
    22bdd7cd1379:	4a 8d 3c 01                                     	lea    rdi,[rcx+r8*1]
    22bdd7cd137d:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    22bdd7cd1382:	c4 e3 61 21 dc 30                               	vinsertps xmm3,xmm3,xmm4,0x30
    22bdd7cd1388:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    22bdd7cd138c:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    22bdd7cd1394:	c5 d8 59 eb                                     	vmulps xmm5,xmm4,xmm3
    22bdd7cd1398:	c5 e8 58 f5                                     	vaddps xmm6,xmm2,xmm5
    22bdd7cd139c:	4c 8b 15 6e a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa96e]        # 0x22bdd7ccbd11
    22bdd7cd13a3:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    22bdd7cd13a8:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    22bdd7cd13ad:	c5 38 5c cf                                     	vsubps xmm9,xmm8,xmm7
    22bdd7cd13b1:	c5 30 5c cb                                     	vsubps xmm9,xmm9,xmm3
    22bdd7cd13b5:	c5 78 10 95 20 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2e0]
    22bdd7cd13bd:	c4 41 28 59 d9                                  	vmulps xmm11,xmm10,xmm9
    22bdd7cd13c2:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    22bdd7cd13c7:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    22bdd7cd13cc:	c5 28 c2 e6 01                                  	vcmpltps xmm12,xmm10,xmm6
    22bdd7cd13d1:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    22bdd7cd13d5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd13d9:	49 8d 78 18                                     	lea    rdi,[r8+0x18]
    22bdd7cd13dd:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    22bdd7cd13e4:	c4 22 79 18 24 1f                               	vbroadcastss xmm12,DWORD PTR [rdi+r11*1]
    22bdd7cd13ea:	c4 c1 40 59 fc                                  	vmulps xmm7,xmm7,xmm12
    22bdd7cd13ef:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    22bdd7cd13f6:	c4 22 79 18 24 27                               	vbroadcastss xmm12,DWORD PTR [rdi+r12*1]
    22bdd7cd13fc:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    22bdd7cd1401:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    22bdd7cd1406:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    22bdd7cd140d:	c4 22 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [rdi+r15*1]
    22bdd7cd1413:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    22bdd7cd1418:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    22bdd7cd141d:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    22bdd7cd1425:	c5 b0 58 ff                                     	vaddps xmm7,xmm9,xmm7
    22bdd7cd1429:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    22bdd7cd142d:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    22bdd7cd1431:	44 8b ce                                        	mov    r9d,esi
    22bdd7cd1434:	44 0f af 8d 28 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xd8]
    22bdd7cd143c:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    22bdd7cd1442:	44 03 cb                                        	add    r9d,ebx
    22bdd7cd1445:	0f af 75 a0                                     	imul   esi,DWORD PTR [rbp-0x60]
    22bdd7cd1449:	03 f3                                           	add    esi,ebx
    22bdd7cd144b:	41 8b 5c 38 04                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x4]
    22bdd7cd1450:	41 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+rdi*1+0x68]
    22bdd7cd1455:	85 c0                                           	test   eax,eax
    22bdd7cd1457:	0f 85 07 00 00 00                               	jne    0x22bdd7cd1464
    22bdd7cd145d:	33 d2                                           	xor    edx,edx
    22bdd7cd145f:	e9 13 01 00 00                                  	jmp    0x22bdd7cd1577
    22bdd7cd1464:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    22bdd7cd146c:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    22bdd7cd1475:	75 e6                                           	jne    0x22bdd7cd145d
    22bdd7cd1477:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    22bdd7cd147c:	8d 0c b2                                        	lea    ecx,[rdx+rsi*4]
    22bdd7cd147f:	c4 41 7b 10 24 08                               	vmovsd xmm12,QWORD PTR [r8+rcx*1]
    22bdd7cd1485:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    22bdd7cd148b:	3b cb                                           	cmp    ecx,ebx
    22bdd7cd148d:	0f 8c 0d 00 00 00                               	jl     0x22bdd7cd14a0
    22bdd7cd1493:	c5 f8 10 9d 40 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2c0]
    22bdd7cd149b:	e9 0a 00 00 00                                  	jmp    0x22bdd7cd14aa
    22bdd7cd14a0:	42 8d 14 8a                                     	lea    edx,[rdx+r9*4]
    22bdd7cd14a4:	c4 c1 7b 10 1c 10                               	vmovsd xmm3,QWORD PTR [r8+rdx*1]
    22bdd7cd14aa:	c5 19 6c e3                                     	vpunpcklqdq xmm12,xmm12,xmm3
    22bdd7cd14ae:	41 8b 54 38 6c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x6c]
    22bdd7cd14b3:	81 ea 00 02 00 00                               	sub    edx,0x200
    22bdd7cd14b9:	83 fa 07                                        	cmp    edx,0x7
    22bdd7cd14bc:	0f 83 0b 00 00 00                               	jae    0x22bdd7cd14cd
    22bdd7cd14c2:	4c 8d 15 a7 1f 00 00                            	lea    r10,[rip+0x1fa7]        # 0x22bdd7cd3470
    22bdd7cd14c9:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    22bdd7cd14cd:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    22bdd7cd14d2:	e9 48 00 00 00                                  	jmp    0x22bdd7cd151f
    22bdd7cd14d7:	c5 18 c2 e7 02                                  	vcmpleps xmm12,xmm12,xmm7
    22bdd7cd14dc:	e9 3e 00 00 00                                  	jmp    0x22bdd7cd151f
    22bdd7cd14e1:	c4 41 40 c2 e4 04                               	vcmpneqps xmm12,xmm7,xmm12
    22bdd7cd14e7:	e9 33 00 00 00                                  	jmp    0x22bdd7cd151f
    22bdd7cd14ec:	c5 18 c2 e7 01                                  	vcmpltps xmm12,xmm12,xmm7
    22bdd7cd14f1:	e9 29 00 00 00                                  	jmp    0x22bdd7cd151f
    22bdd7cd14f6:	c4 41 40 c2 e4 02                               	vcmpleps xmm12,xmm7,xmm12
    22bdd7cd14fc:	e9 1e 00 00 00                                  	jmp    0x22bdd7cd151f
    22bdd7cd1501:	c4 41 40 c2 e4 00                               	vcmpeqps xmm12,xmm7,xmm12
    22bdd7cd1507:	e9 13 00 00 00                                  	jmp    0x22bdd7cd151f
    22bdd7cd150c:	c4 41 40 c2 e4 01                               	vcmpltps xmm12,xmm7,xmm12
    22bdd7cd1512:	e9 08 00 00 00                                  	jmp    0x22bdd7cd151f
    22bdd7cd1517:	c5 78 10 a5 40 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2c0]
    22bdd7cd151f:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    22bdd7cd1523:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    22bdd7cd1527:	85 d2                                           	test   edx,edx
    22bdd7cd1529:	0f 85 3c 00 00 00                               	jne    0x22bdd7cd156b
    22bdd7cd152f:	4d 8b e0                                        	mov    r12,r8
    22bdd7cd1532:	4c 8b c7                                        	mov    r8,rdi
    22bdd7cd1535:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd153a:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd153f:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd1545:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd154b:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd1550:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cd1558:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd1560:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd1566:	e9 3f 19 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cd156b:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    22bdd7cd1572:	ba 01 00 00 00                                  	mov    edx,0x1
    22bdd7cd1577:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    22bdd7cd1581:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7cd1586:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7cd158b:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x22bdd7cd1579
    22bdd7cd1592:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7cd1597:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    22bdd7cd159b:	c5 e0 c2 de 01                                  	vcmpltps xmm3,xmm3,xmm6
    22bdd7cd15a0:	c4 41 61 df fc                                  	vpandn xmm15,xmm3,xmm12
    22bdd7cd15a5:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    22bdd7cd15a9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cd15ae:	c5 b8 5e f6                                     	vdivps xmm6,xmm8,xmm6
    22bdd7cd15b2:	48 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rbx
    22bdd7cd15b9:	49 8d 58 2c                                     	lea    rbx,[r8+0x2c]
    22bdd7cd15bd:	c4 22 79 18 24 1b                               	vbroadcastss xmm12,DWORD PTR [rbx+r11*1]
    22bdd7cd15c3:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    22bdd7cd15c8:	c4 a2 79 18 1c 23                               	vbroadcastss xmm3,DWORD PTR [rbx+r12*1]
    22bdd7cd15ce:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    22bdd7cd15d2:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    22bdd7cd15d6:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    22bdd7cd15dc:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    22bdd7cd15e0:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    22bdd7cd15e4:	c4 41 48 59 e4                                  	vmulps xmm12,xmm6,xmm12
    22bdd7cd15e9:	49 8d 58 28                                     	lea    rbx,[r8+0x28]
    22bdd7cd15ed:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    22bdd7cd15f3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    22bdd7cd15f7:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    22bdd7cd15ff:	c4 a2 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [rbx+r12*1]
    22bdd7cd1605:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    22bdd7cd1609:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    22bdd7cd160d:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    22bdd7cd1613:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    22bdd7cd1617:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    22bdd7cd161b:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    22bdd7cd161f:	49 8d 58 24                                     	lea    rbx,[r8+0x24]
    22bdd7cd1623:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    22bdd7cd1629:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    22bdd7cd162d:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    22bdd7cd1635:	c4 a2 79 18 3c 23                               	vbroadcastss xmm7,DWORD PTR [rbx+r12*1]
    22bdd7cd163b:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    22bdd7cd163f:	c5 e0 58 ff                                     	vaddps xmm7,xmm3,xmm7
    22bdd7cd1643:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    22bdd7cd1649:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    22bdd7cd164d:	c5 c0 58 fb                                     	vaddps xmm7,xmm7,xmm3
    22bdd7cd1651:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    22bdd7cd1655:	49 8d 58 20                                     	lea    rbx,[r8+0x20]
    22bdd7cd1659:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    22bdd7cd165f:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    22bdd7cd1663:	c5 78 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm8
    22bdd7cd166b:	c4 22 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [rbx+r12*1]
    22bdd7cd1671:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    22bdd7cd1676:	c4 41 60 58 c0                                  	vaddps xmm8,xmm3,xmm8
    22bdd7cd167b:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    22bdd7cd1681:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    22bdd7cd1685:	c5 38 58 c3                                     	vaddps xmm8,xmm8,xmm3
    22bdd7cd1689:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    22bdd7cd168e:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    22bdd7cd1695:	48 89 b5 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rsi
    22bdd7cd169c:	41 8b b4 18 34 01 00 00                         	mov    esi,DWORD PTR [r8+rbx*1+0x134]
    22bdd7cd16a4:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    22bdd7cd16ab:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    22bdd7cd16af:	c5 78 11 95 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm10
    22bdd7cd16b7:	48 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rax
    22bdd7cd16be:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    22bdd7cd16c5:	41 83 f9 01                                     	cmp    r9d,0x1
    22bdd7cd16c9:	0f 87 fd 06 00 00                               	ja     0x22bdd7cd1dcc
    22bdd7cd16cf:	45 8b 4c 18 28                                  	mov    r9d,DWORD PTR [r8+rbx*1+0x28]
    22bdd7cd16d4:	41 8b 7c 18 20                                  	mov    edi,DWORD PTR [r8+rbx*1+0x20]
    22bdd7cd16d9:	48 89 b5 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rsi
    22bdd7cd16e0:	49 8d 70 54                                     	lea    rsi,[r8+0x54]
    22bdd7cd16e4:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    22bdd7cd16ea:	c4 22 79 18 0c 1e                               	vbroadcastss xmm9,DWORD PTR [rsi+r11*1]
    22bdd7cd16f0:	c4 22 79 18 2c 26                               	vbroadcastss xmm13,DWORD PTR [rsi+r12*1]
    22bdd7cd16f6:	41 8b 74 18 1c                                  	mov    esi,DWORD PTR [r8+rbx*1+0x1c]
    22bdd7cd16fb:	c5 02 2a f6                                     	vcvtsi2ss xmm14,xmm15,esi
    22bdd7cd16ff:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    22bdd7cd1704:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    22bdd7cd170b:	4d 8d 48 50                                     	lea    r9,[r8+0x50]
    22bdd7cd170f:	c4 82 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+r11*1]
    22bdd7cd1715:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    22bdd7cd1719:	c4 82 79 18 24 21                               	vbroadcastss xmm4,DWORD PTR [r9+r12*1]
    22bdd7cd171f:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    22bdd7cd1723:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    22bdd7cd1727:	c4 82 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [r9+r15*1]
    22bdd7cd172d:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    22bdd7cd1731:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    22bdd7cd1735:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    22bdd7cd1739:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    22bdd7cd173f:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    22bdd7cd1743:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    22bdd7cd1747:	4c 8b 15 13 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd213]        # 0x22bdd7cce961
    22bdd7cd174e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    22bdd7cd1753:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    22bdd7cd1757:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    22bdd7cd175b:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    22bdd7cd1761:	4c 8b 15 f6 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ff6]        # 0x22bdd7cca75e
    22bdd7cd1768:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    22bdd7cd176d:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    22bdd7cd1772:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    22bdd7cd1778:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    22bdd7cd177d:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    22bdd7cd1782:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    22bdd7cd178a:	4c 8b 15 db d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2db]        # 0x22bdd7ccea6c
    22bdd7cd1791:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    22bdd7cd1796:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    22bdd7cd179b:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    22bdd7cd17a3:	4c 8b 15 f3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f3]        # 0x22bdd7cce99d
    22bdd7cd17aa:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    22bdd7cd17af:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    22bdd7cd17b7:	4c 8b 15 ee d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1ee]        # 0x22bdd7cce9ac
    22bdd7cd17be:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cd17c3:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cd17c7:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    22bdd7cd17cc:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    22bdd7cd17d1:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    22bdd7cd17d5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cd17da:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    22bdd7cd17de:	c4 81 7a 7f 84 08 90 00 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x90],xmm0
    22bdd7cd17e8:	c5 82 2a c7                                     	vcvtsi2ss xmm0,xmm15,edi
    22bdd7cd17ec:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    22bdd7cd17f1:	c4 41 68 59 c9                                  	vmulps xmm9,xmm2,xmm9
    22bdd7cd17f6:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    22bdd7cd17fb:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    22bdd7cd1800:	c5 20 59 d3                                     	vmulps xmm10,xmm11,xmm3
    22bdd7cd1804:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    22bdd7cd1809:	c4 41 48 59 c9                                  	vmulps xmm9,xmm6,xmm9
    22bdd7cd180e:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    22bdd7cd1814:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    22bdd7cd1819:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7cd181e:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    22bdd7cd1822:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    22bdd7cd1828:	4c 8b 15 2f 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8f2f]        # 0x22bdd7cca75e
    22bdd7cd182f:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    22bdd7cd1835:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    22bdd7cd183a:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    22bdd7cd1840:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    22bdd7cd1845:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    22bdd7cd184a:	4c 8b 15 4c d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd14c]        # 0x22bdd7cce99d
    22bdd7cd1851:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    22bdd7cd1856:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    22bdd7cd185b:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    22bdd7cd1860:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    22bdd7cd1865:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    22bdd7cd186a:	c4 01 7a 7f 94 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x190],xmm10
    22bdd7cd1874:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    22bdd7cd1878:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    22bdd7cd1880:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    22bdd7cd1885:	4c 8b 15 ad ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffedad]        # 0x22bdd7cd0639
    22bdd7cd188c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    22bdd7cd1891:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    22bdd7cd1896:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    22bdd7cd189b:	4c 8b 15 bc 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ebc]        # 0x22bdd7cca75e
    22bdd7cd18a2:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    22bdd7cd18a8:	c4 c1 28 54 cf                                  	vandps xmm1,xmm10,xmm15
    22bdd7cd18ad:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    22bdd7cd18b3:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    22bdd7cd18b7:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    22bdd7cd18bc:	4c 8b 15 da d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0da]        # 0x22bdd7cce99d
    22bdd7cd18c3:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    22bdd7cd18c8:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    22bdd7cd18cd:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    22bdd7cd18d2:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    22bdd7cd18d7:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    22bdd7cd18dc:	c4 01 7a 7f 14 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm10
    22bdd7cd18e2:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    22bdd7cd18e7:	c4 c1 78 59 c5                                  	vmulps xmm0,xmm0,xmm13
    22bdd7cd18ec:	c4 c1 78 58 c6                                  	vaddps xmm0,xmm0,xmm14
    22bdd7cd18f1:	4c 8b 15 66 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8e66]        # 0x22bdd7cca75e
    22bdd7cd18f8:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    22bdd7cd18fd:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    22bdd7cd1902:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    22bdd7cd1908:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    22bdd7cd190d:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    22bdd7cd1912:	4c 8b 15 84 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd084]        # 0x22bdd7cce99d
    22bdd7cd1919:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    22bdd7cd191e:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    22bdd7cd1923:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    22bdd7cd1928:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    22bdd7cd192c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cd1931:	c4 81 7a 7f 44 08 70                            	vmovdqu XMMWORD PTR [r8+r9*1+0x70],xmm0
    22bdd7cd1938:	c4 01 7a 7f 44 08 50                            	vmovdqu XMMWORD PTR [r8+r9*1+0x50],xmm8
    22bdd7cd193f:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    22bdd7cd1947:	c4 81 7a 7f bc 08 f0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1f0],xmm7
    22bdd7cd1951:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    22bdd7cd1959:	c4 81 7a 7f 84 08 e0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1e0],xmm0
    22bdd7cd1963:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    22bdd7cd196b:	c4 01 7a 7f a4 08 d0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1d0],xmm12
    22bdd7cd1975:	45 8b 7c 18 34                                  	mov    r15d,DWORD PTR [r8+rbx*1+0x34]
    22bdd7cd197a:	45 8b 64 18 30                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x30]
    22bdd7cd197f:	45 8b 5c 18 2c                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x2c]
    22bdd7cd1984:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    22bdd7cd198b:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    22bdd7cd1992:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    22bdd7cd1999:	33 c0                                           	xor    eax,eax
    22bdd7cd199b:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    22bdd7cd19a1:	e9 2a 00 00 00                                  	jmp    0x22bdd7cd19d0
    22bdd7cd19a6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cd19af:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    22bdd7cd19b8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    22bdd7cd19c0:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    22bdd7cd19c6:	45 8b cc                                        	mov    r9d,r12d
    22bdd7cd19c9:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    22bdd7cd19d0:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    22bdd7cd19d5:	0f 85 5c 19 00 00                               	jne    0x22bdd7cd3337
    22bdd7cd19db:	8b c8                                           	mov    ecx,eax
    22bdd7cd19dd:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    22bdd7cd19e4:	41 d3 ef                                        	shr    r15d,cl
    22bdd7cd19e7:	41 f6 c7 01                                     	test   r15b,0x1
    22bdd7cd19eb:	0f 85 0a 00 00 00                               	jne    0x22bdd7cd19fb
    22bdd7cd19f1:	45 8b e1                                        	mov    r12d,r9d
    22bdd7cd19f4:	8b f8                                           	mov    edi,eax
    22bdd7cd19f6:	e9 3d 03 00 00                                  	jmp    0x22bdd7cd1d38
    22bdd7cd19fb:	45 8d bc 81 90 01 00 00                         	lea    r15d,[r9+rax*4+0x190]
    22bdd7cd1a03:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    22bdd7cd1a07:	41 8d 8c 81 90 00 00 00                         	lea    ecx,[r9+rax*4+0x90]
    22bdd7cd1a0f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    22bdd7cd1a13:	44 8d 49 01                                     	lea    r9d,[rcx+0x1]
    22bdd7cd1a17:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    22bdd7cd1a1e:	45 85 db                                        	test   r11d,r11d
    22bdd7cd1a21:	0f 85 51 00 00 00                               	jne    0x22bdd7cd1a78
    22bdd7cd1a27:	85 f6                                           	test   esi,esi
    22bdd7cd1a29:	0f 84 c8 19 00 00                               	je     0x22bdd7cd33f7
    22bdd7cd1a2f:	83 fe ff                                        	cmp    esi,0xffffffff
    22bdd7cd1a32:	0f 84 94 19 00 00                               	je     0x22bdd7cd33cc
    22bdd7cd1a38:	44 8b d0                                        	mov    r10d,eax
    22bdd7cd1a3b:	8b c1                                           	mov    eax,ecx
    22bdd7cd1a3d:	41 8b ca                                        	mov    ecx,r10d
    22bdd7cd1a40:	99                                              	cdq
    22bdd7cd1a41:	f7 fe                                           	idiv   esi
    22bdd7cd1a43:	8b c2                                           	mov    eax,edx
    22bdd7cd1a45:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7cd1a48:	23 c6                                           	and    eax,esi
    22bdd7cd1a4a:	03 c2                                           	add    eax,edx
    22bdd7cd1a4c:	83 fe ff                                        	cmp    esi,0xffffffff
    22bdd7cd1a4f:	0f 84 80 19 00 00                               	je     0x22bdd7cd33d5
    22bdd7cd1a55:	44 8b d0                                        	mov    r10d,eax
    22bdd7cd1a58:	41 8b c1                                        	mov    eax,r9d
    22bdd7cd1a5b:	45 8b ca                                        	mov    r9d,r10d
    22bdd7cd1a5e:	99                                              	cdq
    22bdd7cd1a5f:	f7 fe                                           	idiv   esi
    22bdd7cd1a61:	8b c2                                           	mov    eax,edx
    22bdd7cd1a63:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7cd1a66:	23 c6                                           	and    eax,esi
    22bdd7cd1a68:	03 c2                                           	add    eax,edx
    22bdd7cd1a6a:	45 8b d1                                        	mov    r10d,r9d
    22bdd7cd1a6d:	44 8b c8                                        	mov    r9d,eax
    22bdd7cd1a70:	41 8b c2                                        	mov    eax,r10d
    22bdd7cd1a73:	e9 0e 00 00 00                                  	jmp    0x22bdd7cd1a86
    22bdd7cd1a78:	41 23 cb                                        	and    ecx,r11d
    22bdd7cd1a7b:	45 23 cb                                        	and    r9d,r11d
    22bdd7cd1a7e:	44 8b d1                                        	mov    r10d,ecx
    22bdd7cd1a81:	8b c8                                           	mov    ecx,eax
    22bdd7cd1a83:	41 8b c2                                        	mov    eax,r10d
    22bdd7cd1a86:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    22bdd7cd1a8a:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd1a8d:	0f 85 47 00 00 00                               	jne    0x22bdd7cd1ada
    22bdd7cd1a93:	85 ff                                           	test   edi,edi
    22bdd7cd1a95:	0f 84 57 19 00 00                               	je     0x22bdd7cd33f2
    22bdd7cd1a9b:	83 ff ff                                        	cmp    edi,0xffffffff
    22bdd7cd1a9e:	0f 84 3b 19 00 00                               	je     0x22bdd7cd33df
    22bdd7cd1aa4:	8b c8                                           	mov    ecx,eax
    22bdd7cd1aa6:	8b c2                                           	mov    eax,edx
    22bdd7cd1aa8:	99                                              	cdq
    22bdd7cd1aa9:	f7 ff                                           	idiv   edi
    22bdd7cd1aab:	8b c2                                           	mov    eax,edx
    22bdd7cd1aad:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7cd1ab0:	23 c7                                           	and    eax,edi
    22bdd7cd1ab2:	03 c2                                           	add    eax,edx
    22bdd7cd1ab4:	83 ff ff                                        	cmp    edi,0xffffffff
    22bdd7cd1ab7:	0f 84 2b 19 00 00                               	je     0x22bdd7cd33e8
    22bdd7cd1abd:	44 8b d0                                        	mov    r10d,eax
    22bdd7cd1ac0:	41 8b c7                                        	mov    eax,r15d
    22bdd7cd1ac3:	45 8b fa                                        	mov    r15d,r10d
    22bdd7cd1ac6:	99                                              	cdq
    22bdd7cd1ac7:	f7 ff                                           	idiv   edi
    22bdd7cd1ac9:	8b c2                                           	mov    eax,edx
    22bdd7cd1acb:	c1 f8 1f                                        	sar    eax,0x1f
    22bdd7cd1ace:	23 f8                                           	and    edi,eax
    22bdd7cd1ad0:	03 fa                                           	add    edi,edx
    22bdd7cd1ad2:	41 8b d7                                        	mov    edx,r15d
    22bdd7cd1ad5:	e9 0b 00 00 00                                  	jmp    0x22bdd7cd1ae5
    22bdd7cd1ada:	41 23 d4                                        	and    edx,r12d
    22bdd7cd1add:	45 23 e7                                        	and    r12d,r15d
    22bdd7cd1ae0:	41 8b fc                                        	mov    edi,r12d
    22bdd7cd1ae3:	8b c8                                           	mov    ecx,eax
    22bdd7cd1ae5:	8b c1                                           	mov    eax,ecx
    22bdd7cd1ae7:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    22bdd7cd1aed:	44 8b ff                                        	mov    r15d,edi
    22bdd7cd1af0:	41 d3 e7                                        	shl    r15d,cl
    22bdd7cd1af3:	0f af fe                                        	imul   edi,esi
    22bdd7cd1af6:	45 85 db                                        	test   r11d,r11d
    22bdd7cd1af9:	41 0f 45 ff                                     	cmovne edi,r15d
    22bdd7cd1afd:	44 8d 3c 38                                     	lea    r15d,[rax+rdi*1]
    22bdd7cd1b01:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    22bdd7cd1b05:	c4 81 7a 10 04 38                               	vmovss xmm0,DWORD PTR [r8+r15*1]
    22bdd7cd1b0b:	c4 e2 79 30 c0                                  	vpmovzxbw xmm0,xmm0
    22bdd7cd1b10:	41 03 f9                                        	add    edi,r9d
    22bdd7cd1b13:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7cd1b16:	c4 c1 7a 10 3c 38                               	vmovss xmm7,DWORD PTR [r8+rdi*1]
    22bdd7cd1b1c:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    22bdd7cd1b21:	c5 f9 61 c7                                     	vpunpcklwd xmm0,xmm0,xmm7
    22bdd7cd1b25:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    22bdd7cd1b2b:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    22bdd7cd1b32:	41 8d 8c bf 00 fe ff ff                         	lea    ecx,[r15+rdi*4-0x200]
    22bdd7cd1b3a:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    22bdd7cd1b3e:	41 bf 00 01 00 00                               	mov    r15d,0x100
    22bdd7cd1b44:	44 8b e1                                        	mov    r12d,ecx
    22bdd7cd1b47:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    22bdd7cd1b4d:	45 0f 4d e7                                     	cmovge r12d,r15d
    22bdd7cd1b51:	33 c9                                           	xor    ecx,ecx
    22bdd7cd1b53:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd1b56:	41 0f 4f cc                                     	cmovg  ecx,r12d
    22bdd7cd1b5a:	44 69 e1 ff ff 00 00                            	imul   r12d,ecx,0xffff
    22bdd7cd1b61:	41 81 c4 00 01 00 00                            	add    r12d,0x100
    22bdd7cd1b68:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    22bdd7cd1b6d:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cd1b72:	c5 f9 f5 c7                                     	vpmaddwd xmm0,xmm0,xmm7
    22bdd7cd1b76:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    22bdd7cd1b7a:	41 8d 4c bc 70                                  	lea    ecx,[r12+rdi*4+0x70]
    22bdd7cd1b7f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    22bdd7cd1b83:	8b f9                                           	mov    edi,ecx
    22bdd7cd1b85:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    22bdd7cd1b8b:	41 0f 4d ff                                     	cmovge edi,r15d
    22bdd7cd1b8f:	33 c9                                           	xor    ecx,ecx
    22bdd7cd1b91:	85 ff                                           	test   edi,edi
    22bdd7cd1b93:	0f 4f cf                                        	cmovg  ecx,edi
    22bdd7cd1b96:	44 2b f9                                        	sub    r15d,ecx
    22bdd7cd1b99:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    22bdd7cd1b9e:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7cd1ba3:	c4 c2 79 40 c0                                  	vpmulld xmm0,xmm0,xmm8
    22bdd7cd1ba8:	44 8b f9                                        	mov    r15d,ecx
    22bdd7cd1bab:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    22bdd7cd1bb1:	8b fa                                           	mov    edi,edx
    22bdd7cd1bb3:	d3 e7                                           	shl    edi,cl
    22bdd7cd1bb5:	0f af d6                                        	imul   edx,esi
    22bdd7cd1bb8:	45 85 db                                        	test   r11d,r11d
    22bdd7cd1bbb:	0f 45 d7                                        	cmovne edx,edi
    22bdd7cd1bbe:	8d 3c 10                                        	lea    edi,[rax+rdx*1]
    22bdd7cd1bc1:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7cd1bc4:	c4 41 7a 10 04 38                               	vmovss xmm8,DWORD PTR [r8+rdi*1]
    22bdd7cd1bca:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    22bdd7cd1bcf:	42 8d 3c 0a                                     	lea    edi,[rdx+r9*1]
    22bdd7cd1bd3:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    22bdd7cd1bd6:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    22bdd7cd1bdc:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    22bdd7cd1be1:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    22bdd7cd1be6:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    22bdd7cd1bea:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    22bdd7cd1bef:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7cd1bf4:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    22bdd7cd1bf9:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    22bdd7cd1bfd:	4c 8b 15 25 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb25]        # 0x22bdd7cd0729
    22bdd7cd1c04:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    22bdd7cd1c09:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    22bdd7cd1c0d:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    22bdd7cd1c11:	c5 f9 72 e0 10                                  	vpsrad xmm0,xmm0,0x10
    22bdd7cd1c16:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    22bdd7cd1c1b:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    22bdd7cd1c1f:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    22bdd7cd1c23:	44 8b ff                                        	mov    r15d,edi
    22bdd7cd1c26:	41 c1 ef 18                                     	shr    r15d,0x18
    22bdd7cd1c2a:	8b c7                                           	mov    eax,edi
    22bdd7cd1c2c:	c1 e8 10                                        	shr    eax,0x10
    22bdd7cd1c2f:	8b d7                                           	mov    edx,edi
    22bdd7cd1c31:	c1 ea 08                                        	shr    edx,0x8
    22bdd7cd1c34:	40 0f b6 ff                                     	movzx  edi,dil
    22bdd7cd1c38:	44 8b d7                                        	mov    r10d,edi
    22bdd7cd1c3b:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7cd1c40:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    22bdd7cd1c46:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    22bdd7cd1c4b:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7cd1c4f:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    22bdd7cd1c55:	41 8d 4c bc 50                                  	lea    ecx,[r12+rdi*4+0x50]
    22bdd7cd1c5a:	83 bd 50 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x1b0],0x2
    22bdd7cd1c61:	0f 84 77 00 00 00                               	je     0x22bdd7cd1cde
    22bdd7cd1c67:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    22bdd7cd1c6d:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    22bdd7cd1c73:	41 8d 8c bc f0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1f0]
    22bdd7cd1c7b:	0f b6 d2                                        	movzx  edx,dl
    22bdd7cd1c7e:	44 8b d2                                        	mov    r10d,edx
    22bdd7cd1c81:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7cd1c86:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7cd1c8a:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    22bdd7cd1c90:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    22bdd7cd1c96:	41 8d 94 bc e0 01 00 00                         	lea    edx,[r12+rdi*4+0x1e0]
    22bdd7cd1c9e:	0f b6 c0                                        	movzx  eax,al
    22bdd7cd1ca1:	44 8b d0                                        	mov    r10d,eax
    22bdd7cd1ca4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7cd1ca9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7cd1cad:	c4 c1 7a 59 04 10                               	vmulss xmm0,xmm0,DWORD PTR [r8+rdx*1]
    22bdd7cd1cb3:	c4 c1 7a 11 04 10                               	vmovss DWORD PTR [r8+rdx*1],xmm0
    22bdd7cd1cb9:	41 8d 84 bc d0 01 00 00                         	lea    eax,[r12+rdi*4+0x1d0]
    22bdd7cd1cc1:	45 8b d7                                        	mov    r10d,r15d
    22bdd7cd1cc4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7cd1cc9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7cd1ccd:	c4 c1 7a 59 04 00                               	vmulss xmm0,xmm0,DWORD PTR [r8+rax*1]
    22bdd7cd1cd3:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    22bdd7cd1cd9:	e9 5a 00 00 00                                  	jmp    0x22bdd7cd1d38
    22bdd7cd1cde:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    22bdd7cd1ce4:	41 8d 8c bc d0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1d0]
    22bdd7cd1cec:	45 8b d7                                        	mov    r10d,r15d
    22bdd7cd1cef:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7cd1cf4:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7cd1cf8:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    22bdd7cd1cfe:	45 8d bc bc e0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1e0]
    22bdd7cd1d06:	0f b6 c0                                        	movzx  eax,al
    22bdd7cd1d09:	44 8b d0                                        	mov    r10d,eax
    22bdd7cd1d0c:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7cd1d11:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7cd1d15:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    22bdd7cd1d1b:	45 8d bc bc f0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1f0]
    22bdd7cd1d23:	0f b6 c2                                        	movzx  eax,dl
    22bdd7cd1d26:	44 8b d0                                        	mov    r10d,eax
    22bdd7cd1d29:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    22bdd7cd1d2e:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    22bdd7cd1d32:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    22bdd7cd1d38:	8d 47 01                                        	lea    eax,[rdi+0x1]
    22bdd7cd1d3b:	83 f8 04                                        	cmp    eax,0x4
    22bdd7cd1d3e:	0f 85 7c fc ff ff                               	jne    0x22bdd7cd19c0
    22bdd7cd1d44:	c4 01 7a 6f a4 20 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r8+r12*1+0x1d0]
    22bdd7cd1d4e:	c4 81 7a 6f bc 20 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r12*1+0x1f0]
    22bdd7cd1d58:	c4 01 7a 6f 44 20 50                            	vmovdqu xmm8,XMMWORD PTR [r8+r12*1+0x50]
    22bdd7cd1d5f:	c4 81 7a 6f 84 20 e0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+r12*1+0x1e0]
    22bdd7cd1d69:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd1d71:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd1d79:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    22bdd7cd1d81:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    22bdd7cd1d88:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    22bdd7cd1d8c:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    22bdd7cd1d94:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    22bdd7cd1d9a:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    22bdd7cd1da0:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    22bdd7cd1da7:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    22bdd7cd1dae:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    22bdd7cd1db5:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    22bdd7cd1dbc:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    22bdd7cd1dc4:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    22bdd7cd1dcc:	41 8b b4 38 ec 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xec]
    22bdd7cd1dd4:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    22bdd7cd1ddc:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    22bdd7cd1de5:	0f 84 04 04 00 00                               	je     0x22bdd7cd21ef
    22bdd7cd1deb:	49 8d b0 98 00 00 00                            	lea    rsi,[r8+0x98]
    22bdd7cd1df2:	c4 a2 79 18 1c 1e                               	vbroadcastss xmm3,DWORD PTR [rsi+r11*1]
    22bdd7cd1df8:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    22bdd7cd1dfc:	c4 a2 79 18 1c 26                               	vbroadcastss xmm3,DWORD PTR [rsi+r12*1]
    22bdd7cd1e02:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    22bdd7cd1e06:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    22bdd7cd1e0a:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    22bdd7cd1e10:	c5 20 59 db                                     	vmulps xmm11,xmm11,xmm3
    22bdd7cd1e14:	c4 41 68 58 db                                  	vaddps xmm11,xmm2,xmm11
    22bdd7cd1e19:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    22bdd7cd1e1e:	c5 28 5c de                                     	vsubps xmm11,xmm10,xmm6
    22bdd7cd1e22:	c5 a0 c2 d6 01                                  	vcmpltps xmm2,xmm11,xmm6
    22bdd7cd1e27:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    22bdd7cd1e2c:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    22bdd7cd1e30:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cd1e35:	4c 8b 15 d5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed5]        # 0x22bdd7ccbd11
    22bdd7cd1e3c:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    22bdd7cd1e41:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    22bdd7cd1e46:	41 8b b4 38 f0 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xf0]
    22bdd7cd1e4e:	81 fe 00 08 00 00                               	cmp    esi,0x800
    22bdd7cd1e54:	0f 84 8d 01 00 00                               	je     0x22bdd7cd1fe7
    22bdd7cd1e5a:	81 fe 01 26 00 00                               	cmp    esi,0x2601
    22bdd7cd1e60:	0f 84 23 01 00 00                               	je     0x22bdd7cd1f89
    22bdd7cd1e66:	c4 c1 7a 10 94 38 f4 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xf4]
    22bdd7cd1e70:	c5 f8 28 de                                     	vmovaps xmm3,xmm6
    22bdd7cd1e74:	c5 ea 59 db                                     	vmulss xmm3,xmm2,xmm3
    22bdd7cd1e78:	4c 8b 15 70 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c70]        # 0x22bdd7ccaaef
    22bdd7cd1e7f:	c4 c1 60 57 2a                                  	vxorps xmm5,xmm3,XMMWORD PTR [r10]
    22bdd7cd1e84:	c5 e2 59 dd                                     	vmulss xmm3,xmm3,xmm5
    22bdd7cd1e88:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    22bdd7cd1e90:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    22bdd7cd1e98:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    22bdd7cd1ea0:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    22bdd7cd1ea8:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    22bdd7cd1eb0:	c5 fb 11 95 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm2
    22bdd7cd1eb8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd1ebc:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    22bdd7cd1ec0:	e8 fb 66 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cd1ec5:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7cd1eca:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd1ed2:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    22bdd7cd1ed6:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    22bdd7cd1ede:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    22bdd7cd1ee2:	4c 8b 15 06 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c06]        # 0x22bdd7ccaaef
    22bdd7cd1ee9:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    22bdd7cd1eee:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    22bdd7cd1ef3:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    22bdd7cd1efb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd1eff:	e8 bc 66 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cd1f04:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    22bdd7cd1f0c:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    22bdd7cd1f12:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd1f1a:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    22bdd7cd1f1f:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    22bdd7cd1f27:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    22bdd7cd1f2b:	4c 8b 15 bd 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8bbd]        # 0x22bdd7ccaaef
    22bdd7cd1f32:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    22bdd7cd1f37:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    22bdd7cd1f3c:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    22bdd7cd1f44:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd1f48:	e8 73 66 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cd1f4d:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    22bdd7cd1f55:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    22bdd7cd1f5b:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd1f63:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    22bdd7cd1f68:	c5 fb 10 bd b0 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x150]
    22bdd7cd1f70:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    22bdd7cd1f74:	4c 8b 15 74 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b74]        # 0x22bdd7ccaaef
    22bdd7cd1f7b:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    22bdd7cd1f80:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    22bdd7cd1f84:	e9 3a 01 00 00                                  	jmp    0x22bdd7cd20c3
    22bdd7cd1f89:	c4 c1 7a 10 94 38 fc 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xfc]
    22bdd7cd1f93:	c4 c1 6a 5c 9c 38 f8 00 00 00                   	vsubss xmm3,xmm2,DWORD PTR [r8+rdi*1+0xf8]
    22bdd7cd1f9d:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    22bdd7cd1fa1:	c5 f8 2e eb                                     	vucomiss xmm5,xmm3
    22bdd7cd1fa5:	7a 06                                           	jp     0x22bdd7cd1fad
    22bdd7cd1fa7:	0f 84 2d 00 00 00                               	je     0x22bdd7cd1fda
    22bdd7cd1fad:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    22bdd7cd1fb2:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    22bdd7cd1fb6:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    22bdd7cd1fba:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    22bdd7cd1fbf:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    22bdd7cd1fc4:	c5 ea 5e db                                     	vdivss xmm3,xmm2,xmm3
    22bdd7cd1fc8:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    22bdd7cd1fcc:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    22bdd7cd1fd1:	c5 c8 59 f3                                     	vmulps xmm6,xmm6,xmm3
    22bdd7cd1fd5:	e9 9f 01 00 00                                  	jmp    0x22bdd7cd2179
    22bdd7cd1fda:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    22bdd7cd1fe2:	e9 92 01 00 00                                  	jmp    0x22bdd7cd2179
    22bdd7cd1fe7:	c5 f8 28 d6                                     	vmovaps xmm2,xmm6
    22bdd7cd1feb:	c4 c1 7a 10 9c 38 f4 00 00 00                   	vmovss xmm3,DWORD PTR [r8+rdi*1+0xf4]
    22bdd7cd1ff5:	4c 8b 15 f3 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8af3]        # 0x22bdd7ccaaef
    22bdd7cd1ffc:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    22bdd7cd2001:	c5 ea 59 d3                                     	vmulss xmm2,xmm2,xmm3
    22bdd7cd2005:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    22bdd7cd200d:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    22bdd7cd2015:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    22bdd7cd201d:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    22bdd7cd2025:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    22bdd7cd202d:	c5 fb 11 9d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm3
    22bdd7cd2035:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd2039:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    22bdd7cd203d:	e8 7e 65 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cd2042:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    22bdd7cd2047:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd204f:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    22bdd7cd2053:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    22bdd7cd205b:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    22bdd7cd2063:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd2067:	e8 54 65 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cd206c:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    22bdd7cd2074:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    22bdd7cd207a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd2082:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    22bdd7cd2087:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    22bdd7cd208f:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    22bdd7cd2097:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd209b:	e8 20 65 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cd20a0:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    22bdd7cd20a8:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    22bdd7cd20ae:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd20b6:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    22bdd7cd20bb:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    22bdd7cd20c3:	c5 f8 11 85 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm0
    22bdd7cd20cb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd20cf:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cd20d3:	e8 e8 64 f3 ff                                  	call   0x22bdd7c085c0
    22bdd7cd20d8:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd20e0:	c4 e3 49 21 f1 30                               	vinsertps xmm6,xmm6,xmm1,0x30
    22bdd7cd20e6:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd20ee:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    22bdd7cd20f2:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    22bdd7cd20fa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd20fe:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    22bdd7cd2106:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    22bdd7cd210c:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    22bdd7cd2112:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    22bdd7cd211a:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    22bdd7cd2122:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    22bdd7cd212a:	c5 78 10 9d 70 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x190]
    22bdd7cd2132:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    22bdd7cd2136:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    22bdd7cd213d:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    22bdd7cd2144:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    22bdd7cd214b:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    22bdd7cd2152:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    22bdd7cd215a:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    22bdd7cd2162:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    22bdd7cd2169:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    22bdd7cd2171:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd2179:	c5 f8 10 95 80 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x180]
    22bdd7cd2181:	c5 e8 c2 de 01                                  	vcmpltps xmm3,xmm2,xmm6
    22bdd7cd2186:	c5 61 df fe                                     	vpandn xmm15,xmm3,xmm6
    22bdd7cd218a:	c5 a1 db f3                                     	vpand  xmm6,xmm11,xmm3
    22bdd7cd218e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    22bdd7cd2193:	c4 41 48 c2 da 01                               	vcmpltps xmm11,xmm6,xmm10
    22bdd7cd2199:	c5 a0 55 f6                                     	vandnps xmm6,xmm11,xmm6
    22bdd7cd219d:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    22bdd7cd21a1:	49 8d b0 08 01 00 00                            	lea    rsi,[r8+0x108]
    22bdd7cd21a8:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    22bdd7cd21ae:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    22bdd7cd21b2:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    22bdd7cd21b6:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7cd21bb:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    22bdd7cd21bf:	49 8d b0 04 01 00 00                            	lea    rsi,[r8+0x104]
    22bdd7cd21c6:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    22bdd7cd21cc:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    22bdd7cd21d0:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    22bdd7cd21d5:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    22bdd7cd21d9:	49 8d b0 00 01 00 00                            	lea    rsi,[r8+0x100]
    22bdd7cd21e0:	c4 62 79 18 04 3e                               	vbroadcastss xmm8,DWORD PTR [rsi+rdi*1]
    22bdd7cd21e6:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    22bdd7cd21ea:	c4 41 48 58 c0                                  	vaddps xmm8,xmm6,xmm8
    22bdd7cd21ef:	41 8b b4 38 80 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x80]
    22bdd7cd21f7:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    22bdd7cd2200:	0f 85 0d 00 00 00                               	jne    0x22bdd7cd2213
    22bdd7cd2206:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    22bdd7cd220e:	e9 83 00 00 00                                  	jmp    0x22bdd7cd2296
    22bdd7cd2213:	49 8d b0 88 00 00 00                            	lea    rsi,[r8+0x88]
    22bdd7cd221a:	c4 e2 79 18 34 3e                               	vbroadcastss xmm6,DWORD PTR [rsi+rdi*1]
    22bdd7cd2220:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cd2225:	41 8b b4 38 84 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x84]
    22bdd7cd222d:	81 ee 00 02 00 00                               	sub    esi,0x200
    22bdd7cd2233:	83 fe 07                                        	cmp    esi,0x7
    22bdd7cd2236:	0f 83 0b 00 00 00                               	jae    0x22bdd7cd2247
    22bdd7cd223c:	4c 8d 15 f5 11 00 00                            	lea    r10,[rip+0x11f5]        # 0x22bdd7cd3438
    22bdd7cd2243:	41 ff 24 f2                                     	jmp    QWORD PTR [r10+rsi*8]
    22bdd7cd2247:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    22bdd7cd224c:	e9 39 00 00 00                                  	jmp    0x22bdd7cd228a
    22bdd7cd2251:	c4 41 48 c2 dc 02                               	vcmpleps xmm11,xmm6,xmm12
    22bdd7cd2257:	e9 2e 00 00 00                                  	jmp    0x22bdd7cd228a
    22bdd7cd225c:	c5 18 c2 de 04                                  	vcmpneqps xmm11,xmm12,xmm6
    22bdd7cd2261:	e9 24 00 00 00                                  	jmp    0x22bdd7cd228a
    22bdd7cd2266:	c4 41 48 c2 dc 01                               	vcmpltps xmm11,xmm6,xmm12
    22bdd7cd226c:	e9 19 00 00 00                                  	jmp    0x22bdd7cd228a
    22bdd7cd2271:	c5 18 c2 de 02                                  	vcmpleps xmm11,xmm12,xmm6
    22bdd7cd2276:	e9 0f 00 00 00                                  	jmp    0x22bdd7cd228a
    22bdd7cd227b:	c5 18 c2 de 00                                  	vcmpeqps xmm11,xmm12,xmm6
    22bdd7cd2280:	e9 05 00 00 00                                  	jmp    0x22bdd7cd228a
    22bdd7cd2285:	c5 18 c2 de 01                                  	vcmpltps xmm11,xmm12,xmm6
    22bdd7cd228a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    22bdd7cd2292:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    22bdd7cd2296:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    22bdd7cd229a:	85 f6                                           	test   esi,esi
    22bdd7cd229c:	0f 84 8d f2 ff ff                               	je     0x22bdd7cd152f
    22bdd7cd22a2:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    22bdd7cd22a7:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    22bdd7cd22ad:	0f 85 15 00 00 00                               	jne    0x22bdd7cd22c8
    22bdd7cd22b3:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    22bdd7cd22b9:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    22bdd7cd22bf:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd22c3:	e9 1f 01 00 00                                  	jmp    0x22bdd7cd23e7
    22bdd7cd22c8:	41 8b 74 38 48                                  	mov    esi,DWORD PTR [r8+rdi*1+0x48]
    22bdd7cd22cd:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    22bdd7cd22d4:	45 33 db                                        	xor    r11d,r11d
    22bdd7cd22d7:	44 3b ce                                        	cmp    r9d,esi
    22bdd7cd22da:	41 0f 9c c3                                     	setl   r11b
    22bdd7cd22de:	45 8b 64 38 50                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x50]
    22bdd7cd22e3:	44 03 e6                                        	add    r12d,esi
    22bdd7cd22e6:	45 33 ff                                        	xor    r15d,r15d
    22bdd7cd22e9:	45 3b e1                                        	cmp    r12d,r9d
    22bdd7cd22ec:	41 0f 9e c7                                     	setle  r15b
    22bdd7cd22f0:	45 0b fb                                        	or     r15d,r11d
    22bdd7cd22f3:	45 8b 5c 38 4c                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x4c]
    22bdd7cd22f8:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd22fc:	33 db                                           	xor    ebx,ebx
    22bdd7cd22fe:	45 3b cb                                        	cmp    r9d,r11d
    22bdd7cd2301:	0f 9c c3                                        	setl   bl
    22bdd7cd2304:	41 8b cf                                        	mov    ecx,r15d
    22bdd7cd2307:	0b cb                                           	or     ecx,ebx
    22bdd7cd2309:	83 f1 ff                                        	xor    ecx,0xffffffff
    22bdd7cd230c:	41 8b 54 38 54                                  	mov    edx,DWORD PTR [r8+rdi*1+0x54]
    22bdd7cd2311:	41 03 d3                                        	add    edx,r11d
    22bdd7cd2314:	33 ff                                           	xor    edi,edi
    22bdd7cd2316:	44 3b ca                                        	cmp    r9d,edx
    22bdd7cd2319:	40 0f 9c c7                                     	setl   dil
    22bdd7cd231d:	23 cf                                           	and    ecx,edi
    22bdd7cd231f:	f7 d9                                           	neg    ecx
    22bdd7cd2321:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    22bdd7cd2325:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    22bdd7cd232a:	44 3b a5 30 ff ff ff                            	cmp    r12d,DWORD PTR [rbp-0xd0]
    22bdd7cd2331:	41 0f 9e c4                                     	setle  r12b
    22bdd7cd2335:	45 0f b6 e4                                     	movzx  r12d,r12b
    22bdd7cd2339:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    22bdd7cd233f:	3b ce                                           	cmp    ecx,esi
    22bdd7cd2341:	40 0f 9c c6                                     	setl   sil
    22bdd7cd2345:	40 0f b6 f6                                     	movzx  esi,sil
    22bdd7cd2349:	41 0b f4                                        	or     esi,r12d
    22bdd7cd234c:	0b de                                           	or     ebx,esi
    22bdd7cd234e:	83 f3 ff                                        	xor    ebx,0xffffffff
    22bdd7cd2351:	23 fb                                           	and    edi,ebx
    22bdd7cd2353:	f7 df                                           	neg    edi
    22bdd7cd2355:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    22bdd7cd235b:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    22bdd7cd2361:	45 33 e4                                        	xor    r12d,r12d
    22bdd7cd2364:	3b fa                                           	cmp    edi,edx
    22bdd7cd2366:	41 0f 9c c4                                     	setl   r12b
    22bdd7cd236a:	41 3b fb                                        	cmp    edi,r11d
    22bdd7cd236d:	41 0f 9c c3                                     	setl   r11b
    22bdd7cd2371:	45 0f b6 db                                     	movzx  r11d,r11b
    22bdd7cd2375:	45 0b fb                                        	or     r15d,r11d
    22bdd7cd2378:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    22bdd7cd237c:	45 23 fc                                        	and    r15d,r12d
    22bdd7cd237f:	41 f7 df                                        	neg    r15d
    22bdd7cd2382:	c4 43 21 22 df 02                               	vpinsrd xmm11,xmm11,r15d,0x2
    22bdd7cd2388:	41 0b f3                                        	or     esi,r11d
    22bdd7cd238b:	83 f6 ff                                        	xor    esi,0xffffffff
    22bdd7cd238e:	44 23 e6                                        	and    r12d,esi
    22bdd7cd2391:	41 f7 dc                                        	neg    r12d
    22bdd7cd2394:	c4 43 21 22 dc 03                               	vpinsrd xmm11,xmm11,r12d,0x3
    22bdd7cd239a:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    22bdd7cd239e:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    22bdd7cd23a2:	85 f6                                           	test   esi,esi
    22bdd7cd23a4:	0f 85 3d 00 00 00                               	jne    0x22bdd7cd23e7
    22bdd7cd23aa:	4d 8b e0                                        	mov    r12,r8
    22bdd7cd23ad:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7cd23b1:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd23b6:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd23bb:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd23c1:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd23c7:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd23cc:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cd23d4:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd23dc:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd23e2:	e9 c3 0a 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cd23e7:	85 c0                                           	test   eax,eax
    22bdd7cd23e9:	0f 85 16 00 00 00                               	jne    0x22bdd7cd2405
    22bdd7cd23ef:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    22bdd7cd23f6:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7cd23fa:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    22bdd7cd2400:	e9 fe 01 00 00                                  	jmp    0x22bdd7cd2603
    22bdd7cd2405:	83 bd 20 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xe0],0x0
    22bdd7cd240c:	0f 85 42 01 00 00                               	jne    0x22bdd7cd2554
    22bdd7cd2412:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cd2417:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7cd241b:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd2420:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    22bdd7cd2427:	43 8d 04 bc                                     	lea    eax,[r12+r15*4]
    22bdd7cd242b:	c4 c1 7b 10 14 00                               	vmovsd xmm2,QWORD PTR [r8+rax*1]
    22bdd7cd2431:	3b bd 00 ff ff ff                               	cmp    edi,DWORD PTR [rbp-0x100]
    22bdd7cd2437:	0f 8c 10 00 00 00                               	jl     0x22bdd7cd244d
    22bdd7cd243d:	c4 c1 79 28 db                                  	vmovapd xmm3,xmm11
    22bdd7cd2442:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    22bdd7cd2448:	e9 10 00 00 00                                  	jmp    0x22bdd7cd245d
    22bdd7cd244d:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    22bdd7cd2453:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    22bdd7cd2457:	c4 81 7b 10 1c 20                               	vmovsd xmm3,QWORD PTR [r8+r12*1]
    22bdd7cd245d:	c5 e9 6c d3                                     	vpunpcklqdq xmm2,xmm2,xmm3
    22bdd7cd2461:	47 8b 64 18 6c                                  	mov    r12d,DWORD PTR [r8+r11*1+0x6c]
    22bdd7cd2466:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    22bdd7cd246d:	41 83 fc 07                                     	cmp    r12d,0x7
    22bdd7cd2471:	0f 83 0b 00 00 00                               	jae    0x22bdd7cd2482
    22bdd7cd2477:	4c 8d 15 82 0f 00 00                            	lea    r10,[rip+0xf82]        # 0x22bdd7cd3400
    22bdd7cd247e:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    22bdd7cd2482:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    22bdd7cd2487:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    22bdd7cd248f:	e9 74 00 00 00                                  	jmp    0x22bdd7cd2508
    22bdd7cd2494:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    22bdd7cd249c:	c5 68 c2 db 02                                  	vcmpleps xmm11,xmm2,xmm3
    22bdd7cd24a1:	e9 62 00 00 00                                  	jmp    0x22bdd7cd2508
    22bdd7cd24a6:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    22bdd7cd24ae:	c5 60 c2 da 04                                  	vcmpneqps xmm11,xmm3,xmm2
    22bdd7cd24b3:	e9 50 00 00 00                                  	jmp    0x22bdd7cd2508
    22bdd7cd24b8:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    22bdd7cd24c0:	c5 68 c2 db 01                                  	vcmpltps xmm11,xmm2,xmm3
    22bdd7cd24c5:	e9 3e 00 00 00                                  	jmp    0x22bdd7cd2508
    22bdd7cd24ca:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    22bdd7cd24d2:	c5 60 c2 da 02                                  	vcmpleps xmm11,xmm3,xmm2
    22bdd7cd24d7:	e9 2c 00 00 00                                  	jmp    0x22bdd7cd2508
    22bdd7cd24dc:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    22bdd7cd24e4:	c5 60 c2 da 00                                  	vcmpeqps xmm11,xmm3,xmm2
    22bdd7cd24e9:	e9 1a 00 00 00                                  	jmp    0x22bdd7cd2508
    22bdd7cd24ee:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    22bdd7cd24f6:	c5 60 c2 da 01                                  	vcmpltps xmm11,xmm3,xmm2
    22bdd7cd24fb:	e9 08 00 00 00                                  	jmp    0x22bdd7cd2508
    22bdd7cd2500:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    22bdd7cd2508:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    22bdd7cd250c:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    22bdd7cd2510:	85 f6                                           	test   esi,esi
    22bdd7cd2512:	0f 85 4d 00 00 00                               	jne    0x22bdd7cd2565
    22bdd7cd2518:	4d 8b e0                                        	mov    r12,r8
    22bdd7cd251b:	4d 8b c3                                        	mov    r8,r11
    22bdd7cd251e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd2523:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd2528:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd252e:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd2534:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd2539:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cd2541:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd2549:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd254f:	e9 56 09 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cd2554:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    22bdd7cd255b:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7cd255f:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    22bdd7cd2565:	47 8b 64 18 70                                  	mov    r12d,DWORD PTR [r8+r11*1+0x70]
    22bdd7cd256a:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    22bdd7cd2570:	0f 84 8d 00 00 00                               	je     0x22bdd7cd2603
    22bdd7cd2576:	40 f6 c6 01                                     	test   sil,0x1
    22bdd7cd257a:	0f 85 0d 00 00 00                               	jne    0x22bdd7cd258d
    22bdd7cd2580:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    22bdd7cd2588:	e9 1b 00 00 00                                  	jmp    0x22bdd7cd25a8
    22bdd7cd258d:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd2592:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    22bdd7cd2596:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    22bdd7cd259e:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    22bdd7cd25a2:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    22bdd7cd25a8:	40 f6 c6 02                                     	test   sil,0x2
    22bdd7cd25ac:	0f 84 14 00 00 00                               	je     0x22bdd7cd25c6
    22bdd7cd25b2:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd25b7:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    22bdd7cd25bb:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    22bdd7cd25bf:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    22bdd7cd25c6:	40 f6 c6 04                                     	test   sil,0x4
    22bdd7cd25ca:	0f 84 14 00 00 00                               	je     0x22bdd7cd25e4
    22bdd7cd25d0:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd25d5:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    22bdd7cd25d9:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    22bdd7cd25de:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    22bdd7cd25e4:	40 f6 c6 08                                     	test   sil,0x8
    22bdd7cd25e8:	0f 84 15 00 00 00                               	je     0x22bdd7cd2603
    22bdd7cd25ee:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    22bdd7cd25f3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    22bdd7cd25f7:	c5 79 70 de 03                                  	vpshufd xmm11,xmm6,0x3
    22bdd7cd25fc:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    22bdd7cd2603:	47 8b 64 18 74                                  	mov    r12d,DWORD PTR [r8+r11*1+0x74]
    22bdd7cd2608:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    22bdd7cd260e:	0f 85 0d 00 00 00                               	jne    0x22bdd7cd2621
    22bdd7cd2614:	46 8d 24 bd 00 00 00 00                         	lea    r12d,[r15*4+0x0]
    22bdd7cd261c:	e9 d6 02 00 00                                  	jmp    0x22bdd7cd28f7
    22bdd7cd2621:	47 8b 64 18 78                                  	mov    r12d,DWORD PTR [r8+r11*1+0x78]
    22bdd7cd2626:	41 8d 9c 24 fe fc ff ff                         	lea    ebx,[r12-0x302]
    22bdd7cd262e:	33 d2                                           	xor    edx,edx
    22bdd7cd2630:	83 fb 04                                        	cmp    ebx,0x4
    22bdd7cd2633:	0f 93 c2                                        	setae  dl
    22bdd7cd2636:	33 c9                                           	xor    ecx,ecx
    22bdd7cd2638:	41 83 fc 01                                     	cmp    r12d,0x1
    22bdd7cd263c:	0f 97 c1                                        	seta   cl
    22bdd7cd263f:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    22bdd7cd2646:	85 ca                                           	test   edx,ecx
    22bdd7cd2648:	0f 85 b9 05 00 00                               	jne    0x22bdd7cd2c07
    22bdd7cd264e:	43 8b 54 18 7c                                  	mov    edx,DWORD PTR [r8+r11*1+0x7c]
    22bdd7cd2653:	8d 8a fe fc ff ff                               	lea    ecx,[rdx-0x302]
    22bdd7cd2659:	45 33 c9                                        	xor    r9d,r9d
    22bdd7cd265c:	83 f9 04                                        	cmp    ecx,0x4
    22bdd7cd265f:	41 0f 93 c1                                     	setae  r9b
    22bdd7cd2663:	33 f6                                           	xor    esi,esi
    22bdd7cd2665:	83 fa 01                                        	cmp    edx,0x1
    22bdd7cd2668:	40 0f 97 c6                                     	seta   sil
    22bdd7cd266c:	41 85 f1                                        	test   r9d,esi
    22bdd7cd266f:	0f 85 88 05 00 00                               	jne    0x22bdd7cd2bfd
    22bdd7cd2675:	42 8d 34 bd 00 00 00 00                         	lea    esi,[r15*4+0x0]
    22bdd7cd267d:	47 8b 4c 18 08                                  	mov    r9d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cd2682:	47 8d 3c b9                                     	lea    r15d,[r9+r15*4]
    22bdd7cd2686:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    22bdd7cd268c:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    22bdd7cd2693:	44 3b ff                                        	cmp    r15d,edi
    22bdd7cd2696:	0f 8e 0f 00 00 00                               	jle    0x22bdd7cd26ab
    22bdd7cd269c:	45 8d 0c 81                                     	lea    r9d,[r9+rax*4]
    22bdd7cd26a0:	c4 01 7b 10 1c 08                               	vmovsd xmm11,QWORD PTR [r8+r9*1]
    22bdd7cd26a6:	e9 05 00 00 00                                  	jmp    0x22bdd7cd26b0
    22bdd7cd26ab:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cd26b0:	c4 c1 49 6c f3                                  	vpunpcklqdq xmm6,xmm6,xmm11
    22bdd7cd26b5:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    22bdd7cd26bf:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    22bdd7cd26c4:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    22bdd7cd26ce:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    22bdd7cd26d4:	c4 42 49 00 db                                  	vpshufb xmm11,xmm6,xmm11
    22bdd7cd26d9:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    22bdd7cd26de:	4c 8b 15 cd ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcacd]        # 0x22bdd7ccf1b2
    22bdd7cd26e5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7cd26ea:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7cd26ee:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    22bdd7cd26f2:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    22bdd7cd26fc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    22bdd7cd2701:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    22bdd7cd270b:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    22bdd7cd2711:	c4 e2 49 00 db                                  	vpshufb xmm3,xmm6,xmm3
    22bdd7cd2716:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    22bdd7cd271a:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    22bdd7cd2724:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    22bdd7cd2729:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    22bdd7cd2733:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    22bdd7cd2739:	c4 e2 49 00 ed                                  	vpshufb xmm5,xmm6,xmm5
    22bdd7cd273e:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    22bdd7cd2742:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    22bdd7cd274c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cd2751:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    22bdd7cd275b:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    22bdd7cd2761:	c4 c2 49 00 f1                                  	vpshufb xmm6,xmm6,xmm9
    22bdd7cd2766:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    22bdd7cd276a:	83 fb 02                                        	cmp    ebx,0x2
    22bdd7cd276d:	0f 8c 14 00 00 00                               	jl     0x22bdd7cd2787
    22bdd7cd2773:	0f 84 69 00 00 00                               	je     0x22bdd7cd27e2
    22bdd7cd2779:	83 fb 03                                        	cmp    ebx,0x3
    22bdd7cd277c:	0f 84 45 00 00 00                               	je     0x22bdd7cd27c7
    22bdd7cd2782:	e9 17 00 00 00                                  	jmp    0x22bdd7cd279e
    22bdd7cd2787:	83 fb 00                                        	cmp    ebx,0x0
    22bdd7cd278a:	0f 84 77 00 00 00                               	je     0x22bdd7cd2807
    22bdd7cd2790:	83 fb 01                                        	cmp    ebx,0x1
    22bdd7cd2793:	0f 84 53 00 00 00                               	je     0x22bdd7cd27ec
    22bdd7cd2799:	e9 00 00 00 00                                  	jmp    0x22bdd7cd279e
    22bdd7cd279e:	45 85 e4                                        	test   r12d,r12d
    22bdd7cd27a1:	0f 85 0a 00 00 00                               	jne    0x22bdd7cd27b1
    22bdd7cd27a7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    22bdd7cd27ac:	e9 5b 00 00 00                                  	jmp    0x22bdd7cd280c
    22bdd7cd27b1:	4c 8b 15 59 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9559]        # 0x22bdd7ccbd11
    22bdd7cd27b8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cd27bd:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cd27c2:	e9 45 00 00 00                                  	jmp    0x22bdd7cd280c
    22bdd7cd27c7:	4c 8b 15 43 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9543]        # 0x22bdd7ccbd11
    22bdd7cd27ce:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cd27d3:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cd27d8:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    22bdd7cd27dd:	e9 2a 00 00 00                                  	jmp    0x22bdd7cd280c
    22bdd7cd27e2:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    22bdd7cd27e7:	e9 20 00 00 00                                  	jmp    0x22bdd7cd280c
    22bdd7cd27ec:	4c 8b 15 1e 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff951e]        # 0x22bdd7ccbd11
    22bdd7cd27f3:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cd27f8:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cd27fd:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    22bdd7cd2802:	e9 05 00 00 00                                  	jmp    0x22bdd7cd280c
    22bdd7cd2807:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    22bdd7cd280c:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    22bdd7cd2810:	c5 d0 59 ea                                     	vmulps xmm5,xmm5,xmm2
    22bdd7cd2814:	c5 c8 59 f2                                     	vmulps xmm6,xmm6,xmm2
    22bdd7cd2818:	83 f9 02                                        	cmp    ecx,0x2
    22bdd7cd281b:	0f 8c 14 00 00 00                               	jl     0x22bdd7cd2835
    22bdd7cd2821:	0f 84 5e 00 00 00                               	je     0x22bdd7cd2885
    22bdd7cd2827:	83 f9 03                                        	cmp    ecx,0x3
    22bdd7cd282a:	0f 84 3a 00 00 00                               	je     0x22bdd7cd286a
    22bdd7cd2830:	e9 17 00 00 00                                  	jmp    0x22bdd7cd284c
    22bdd7cd2835:	83 f9 00                                        	cmp    ecx,0x0
    22bdd7cd2838:	0f 84 6c 00 00 00                               	je     0x22bdd7cd28aa
    22bdd7cd283e:	83 f9 01                                        	cmp    ecx,0x1
    22bdd7cd2841:	0f 84 48 00 00 00                               	je     0x22bdd7cd288f
    22bdd7cd2847:	e9 00 00 00 00                                  	jmp    0x22bdd7cd284c
    22bdd7cd284c:	85 d2                                           	test   edx,edx
    22bdd7cd284e:	0f 84 5b 00 00 00                               	je     0x22bdd7cd28af
    22bdd7cd2854:	4c 8b 15 b6 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94b6]        # 0x22bdd7ccbd11
    22bdd7cd285b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cd2860:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cd2865:	e9 45 00 00 00                                  	jmp    0x22bdd7cd28af
    22bdd7cd286a:	4c 8b 15 a0 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94a0]        # 0x22bdd7ccbd11
    22bdd7cd2871:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cd2876:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cd287b:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    22bdd7cd2880:	e9 2a 00 00 00                                  	jmp    0x22bdd7cd28af
    22bdd7cd2885:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    22bdd7cd288a:	e9 20 00 00 00                                  	jmp    0x22bdd7cd28af
    22bdd7cd288f:	4c 8b 15 7b 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947b]        # 0x22bdd7ccbd11
    22bdd7cd2896:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cd289b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cd28a0:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    22bdd7cd28a5:	e9 05 00 00 00                                  	jmp    0x22bdd7cd28af
    22bdd7cd28aa:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    22bdd7cd28af:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    22bdd7cd28b4:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    22bdd7cd28b9:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    22bdd7cd28be:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    22bdd7cd28c3:	c4 41 60 59 da                                  	vmulps xmm11,xmm3,xmm10
    22bdd7cd28c8:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    22bdd7cd28cd:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    22bdd7cd28d2:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    22bdd7cd28d7:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    22bdd7cd28dc:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    22bdd7cd28e1:	c4 c1 48 59 f2                                  	vmulps xmm6,xmm6,xmm10
    22bdd7cd28e6:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    22bdd7cd28ea:	44 8b e6                                        	mov    r12d,esi
    22bdd7cd28ed:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    22bdd7cd28f3:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd28f7:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    22bdd7cd28fb:	4c 8b 15 0f 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff940f]        # 0x22bdd7ccbd11
    22bdd7cd2902:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    22bdd7cd2907:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    22bdd7cd290c:	4c 8b 15 fe 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff93fe]        # 0x22bdd7ccbd11
    22bdd7cd2913:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    22bdd7cd2918:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    22bdd7cd291d:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    22bdd7cd2923:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    22bdd7cd2928:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    22bdd7cd292d:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    22bdd7cd2932:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    22bdd7cd2937:	c4 c1 38 c2 d3 01                               	vcmpltps xmm2,xmm8,xmm11
    22bdd7cd293d:	c4 41 68 55 c0                                  	vandnps xmm8,xmm2,xmm8
    22bdd7cd2942:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    22bdd7cd294c:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    22bdd7cd2951:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    22bdd7cd2955:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    22bdd7cd2959:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    22bdd7cd295f:	4c 8b 15 f8 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7df8]        # 0x22bdd7cca75e
    22bdd7cd2966:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7cd296c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    22bdd7cd2971:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7cd2977:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    22bdd7cd297c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    22bdd7cd2981:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    22bdd7cd2986:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    22bdd7cd298b:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    22bdd7cd2991:	c5 a8 c2 df 01                                  	vcmpltps xmm3,xmm10,xmm7
    22bdd7cd2996:	c5 61 df ff                                     	vpandn xmm15,xmm3,xmm7
    22bdd7cd299a:	c5 b1 db fb                                     	vpand  xmm7,xmm9,xmm3
    22bdd7cd299e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    22bdd7cd29a3:	c4 c1 40 c2 db 01                               	vcmpltps xmm3,xmm7,xmm11
    22bdd7cd29a9:	c5 e0 55 ff                                     	vandnps xmm7,xmm3,xmm7
    22bdd7cd29ad:	c5 c0 59 fa                                     	vmulps xmm7,xmm7,xmm2
    22bdd7cd29b1:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    22bdd7cd29b7:	4c 8b 15 a0 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7da0]        # 0x22bdd7cca75e
    22bdd7cd29be:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    22bdd7cd29c3:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    22bdd7cd29c8:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    22bdd7cd29ce:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    22bdd7cd29d2:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    22bdd7cd29d7:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    22bdd7cd29db:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    22bdd7cd29df:	c4 e3 41 0e fe fc                               	vpblendw xmm7,xmm7,xmm6,0xfc
    22bdd7cd29e5:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    22bdd7cd29e9:	c5 28 c2 c0 01                                  	vcmpltps xmm8,xmm10,xmm0
    22bdd7cd29ee:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    22bdd7cd29f2:	c4 c1 31 db c0                                  	vpand  xmm0,xmm9,xmm8
    22bdd7cd29f7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cd29fc:	c4 41 78 c2 c3 01                               	vcmpltps xmm8,xmm0,xmm11
    22bdd7cd2a02:	c5 b8 55 c0                                     	vandnps xmm0,xmm8,xmm0
    22bdd7cd2a06:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    22bdd7cd2a0a:	c4 e3 79 08 c0 08                               	vroundps xmm0,xmm0,0x8
    22bdd7cd2a10:	4c 8b 15 47 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7d47]        # 0x22bdd7cca75e
    22bdd7cd2a17:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    22bdd7cd2a1c:	c4 c1 78 54 c7                                  	vandps xmm0,xmm0,xmm15
    22bdd7cd2a21:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    22bdd7cd2a27:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    22bdd7cd2a2b:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    22bdd7cd2a30:	c5 f9 6b c0                                     	vpackssdw xmm0,xmm0,xmm0
    22bdd7cd2a34:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    22bdd7cd2a38:	c4 e3 79 0e c6 fc                               	vpblendw xmm0,xmm0,xmm6,0xfc
    22bdd7cd2a3e:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    22bdd7cd2a44:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    22bdd7cd2a49:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    22bdd7cd2a4e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    22bdd7cd2a53:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    22bdd7cd2a59:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    22bdd7cd2a5e:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    22bdd7cd2a62:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    22bdd7cd2a68:	4c 8b 15 ef 7c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7cef]        # 0x22bdd7cca75e
    22bdd7cd2a6f:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    22bdd7cd2a75:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    22bdd7cd2a7a:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    22bdd7cd2a80:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    22bdd7cd2a85:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    22bdd7cd2a8a:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    22bdd7cd2a8f:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    22bdd7cd2a94:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    22bdd7cd2a9a:	c4 c1 79 60 c0                                  	vpunpcklbw xmm0,xmm0,xmm8
    22bdd7cd2a9f:	c5 c1 61 c0                                     	vpunpcklwd xmm0,xmm7,xmm0
    22bdd7cd2aa3:	c4 81 7a 6f bc 18 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x520]
    22bdd7cd2aad:	c5 c1 76 fe                                     	vpcmpeqd xmm7,xmm7,xmm6
    22bdd7cd2ab1:	c4 c3 79 16 ff 01                               	vpextrd r15d,xmm7,0x1
    22bdd7cd2ab7:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    22bdd7cd2abc:	33 d2                                           	xor    edx,edx
    22bdd7cd2abe:	41 f6 c7 01                                     	test   r15b,0x1
    22bdd7cd2ac2:	0f 45 da                                        	cmovne ebx,edx
    22bdd7cd2ac5:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    22bdd7cd2aca:	b9 ff 00 00 00                                  	mov    ecx,0xff
    22bdd7cd2acf:	41 f6 c7 01                                     	test   r15b,0x1
    22bdd7cd2ad3:	0f 45 ca                                        	cmovne ecx,edx
    22bdd7cd2ad6:	0b cb                                           	or     ecx,ebx
    22bdd7cd2ad8:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    22bdd7cd2ade:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    22bdd7cd2ae3:	41 f6 c7 01                                     	test   r15b,0x1
    22bdd7cd2ae7:	0f 45 da                                        	cmovne ebx,edx
    22bdd7cd2aea:	0b d9                                           	or     ebx,ecx
    22bdd7cd2aec:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    22bdd7cd2af2:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    22bdd7cd2af7:	41 f6 c7 01                                     	test   r15b,0x1
    22bdd7cd2afb:	0f 45 ca                                        	cmovne ecx,edx
    22bdd7cd2afe:	0b cb                                           	or     ecx,ebx
    22bdd7cd2b00:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    22bdd7cd2b04:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    22bdd7cd2b09:	44 8b fe                                        	mov    r15d,esi
    22bdd7cd2b0c:	41 83 e7 01                                     	and    r15d,0x1
    22bdd7cd2b10:	41 f7 df                                        	neg    r15d
    22bdd7cd2b13:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    22bdd7cd2b18:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    22bdd7cd2b1d:	44 8b fe                                        	mov    r15d,esi
    22bdd7cd2b20:	41 c1 e7 1e                                     	shl    r15d,0x1e
    22bdd7cd2b24:	41 c1 ff 1f                                     	sar    r15d,0x1f
    22bdd7cd2b28:	c4 43 39 22 c7 01                               	vpinsrd xmm8,xmm8,r15d,0x1
    22bdd7cd2b2e:	44 8b fe                                        	mov    r15d,esi
    22bdd7cd2b31:	41 c1 e7 1d                                     	shl    r15d,0x1d
    22bdd7cd2b35:	41 c1 ff 1f                                     	sar    r15d,0x1f
    22bdd7cd2b39:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    22bdd7cd2b3f:	44 8b fe                                        	mov    r15d,esi
    22bdd7cd2b42:	41 c1 e7 1c                                     	shl    r15d,0x1c
    22bdd7cd2b46:	41 c1 ff 1f                                     	sar    r15d,0x1f
    22bdd7cd2b4a:	c4 43 39 22 c7 03                               	vpinsrd xmm8,xmm8,r15d,0x3
    22bdd7cd2b50:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    22bdd7cd2b55:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cd2b5a:	45 03 e7                                        	add    r12d,r15d
    22bdd7cd2b5d:	c4 01 7b 10 04 20                               	vmovsd xmm8,QWORD PTR [r8+r12*1]
    22bdd7cd2b63:	8b 9d 00 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x100]
    22bdd7cd2b69:	3b df                                           	cmp    ebx,edi
    22bdd7cd2b6b:	0f 8e 0a 00 00 00                               	jle    0x22bdd7cd2b7b
    22bdd7cd2b71:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    22bdd7cd2b75:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    22bdd7cd2b7b:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    22bdd7cd2b7f:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    22bdd7cd2b83:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    22bdd7cd2b87:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    22bdd7cd2b8c:	40 f6 c6 03                                     	test   sil,0x3
    22bdd7cd2b90:	0f 84 06 00 00 00                               	je     0x22bdd7cd2b9c
    22bdd7cd2b96:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    22bdd7cd2b9c:	3b df                                           	cmp    ebx,edi
    22bdd7cd2b9e:	0f 8e 74 f9 ff ff                               	jle    0x22bdd7cd2518
    22bdd7cd2ba4:	40 f6 c6 0c                                     	test   sil,0xc
    22bdd7cd2ba8:	0f 84 6a f9 ff ff                               	je     0x22bdd7cd2518
    22bdd7cd2bae:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    22bdd7cd2bb3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    22bdd7cd2bb7:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    22bdd7cd2bbb:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    22bdd7cd2bc1:	4d 8b e0                                        	mov    r12,r8
    22bdd7cd2bc4:	4d 8b c3                                        	mov    r8,r11
    22bdd7cd2bc7:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd2bcc:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd2bd1:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd2bd7:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd2bdd:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd2be2:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cd2bea:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd2bf2:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd2bf8:	e9 ad 02 00 00                                  	jmp    0x22bdd7cd2eaa
    22bdd7cd2bfd:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    22bdd7cd2c03:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd2c07:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    22bdd7cd2c0f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    22bdd7cd2c17:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    22bdd7cd2c1f:	40 f6 c6 01                                     	test   sil,0x1
    22bdd7cd2c23:	0f 84 9d 00 00 00                               	je     0x22bdd7cd2cc6
    22bdd7cd2c29:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    22bdd7cd2c31:	c5 78 28 d6                                     	vmovaps xmm10,xmm6
    22bdd7cd2c35:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    22bdd7cd2c3a:	c5 f8 28 df                                     	vmovaps xmm3,xmm7
    22bdd7cd2c3e:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    22bdd7cd2c42:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    22bdd7cd2c47:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd2c4b:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd2c4e:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7cd2c54:	41 8b c9                                        	mov    ecx,r9d
    22bdd7cd2c57:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    22bdd7cd2c5c:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7cd2c61:	e8 fa 35 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cd2c66:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7cd2c6a:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd2c6e:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    22bdd7cd2c74:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    22bdd7cd2c7c:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    22bdd7cd2c84:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    22bdd7cd2c8c:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    22bdd7cd2c94:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    22bdd7cd2c9a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd2c9e:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    22bdd7cd2ca6:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    22bdd7cd2cae:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    22bdd7cd2cb6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd2cbe:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd2cc6:	40 f6 c6 02                                     	test   sil,0x2
    22bdd7cd2cca:	0f 84 9d 00 00 00                               	je     0x22bdd7cd2d6d
    22bdd7cd2cd0:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    22bdd7cd2cd8:	c5 7a 16 d6                                     	vmovshdup xmm10,xmm6
    22bdd7cd2cdc:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    22bdd7cd2ce1:	c5 fa 16 df                                     	vmovshdup xmm3,xmm7
    22bdd7cd2ce5:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    22bdd7cd2ce9:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    22bdd7cd2cee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd2cf2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd2cf5:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cd2cfb:	41 8b c9                                        	mov    ecx,r9d
    22bdd7cd2cfe:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    22bdd7cd2d03:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7cd2d08:	e8 53 35 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cd2d0d:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7cd2d11:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd2d15:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    22bdd7cd2d1b:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    22bdd7cd2d23:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    22bdd7cd2d2b:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    22bdd7cd2d33:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    22bdd7cd2d3b:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    22bdd7cd2d41:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd2d45:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    22bdd7cd2d4d:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    22bdd7cd2d55:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    22bdd7cd2d5d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd2d65:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd2d6d:	40 f6 c6 04                                     	test   sil,0x4
    22bdd7cd2d71:	0f 84 a1 00 00 00                               	je     0x22bdd7cd2e18
    22bdd7cd2d77:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    22bdd7cd2d7f:	c5 79 70 d6 02                                  	vpshufd xmm10,xmm6,0x2
    22bdd7cd2d84:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    22bdd7cd2d8a:	c5 f9 70 df 02                                  	vpshufd xmm3,xmm7,0x2
    22bdd7cd2d8f:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    22bdd7cd2d94:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    22bdd7cd2d9a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd2d9e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd2da1:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    22bdd7cd2da7:	8b cf                                           	mov    ecx,edi
    22bdd7cd2da9:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    22bdd7cd2dae:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    22bdd7cd2db3:	e8 a8 34 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cd2db8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    22bdd7cd2dbc:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd2dc0:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    22bdd7cd2dc6:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    22bdd7cd2dce:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    22bdd7cd2dd6:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    22bdd7cd2dde:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    22bdd7cd2de6:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    22bdd7cd2dec:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd2df0:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    22bdd7cd2df8:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    22bdd7cd2e00:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    22bdd7cd2e08:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd2e10:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd2e18:	40 f6 c6 08                                     	test   sil,0x8
    22bdd7cd2e1c:	0f 84 f6 f6 ff ff                               	je     0x22bdd7cd2518
    22bdd7cd2e22:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    22bdd7cd2e2a:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    22bdd7cd2e2f:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    22bdd7cd2e35:	c5 f9 70 df 03                                  	vpshufd xmm3,xmm7,0x3
    22bdd7cd2e3a:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    22bdd7cd2e3f:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    22bdd7cd2e45:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd2e49:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd2e4c:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    22bdd7cd2e52:	8b cf                                           	mov    ecx,edi
    22bdd7cd2e54:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cd2e58:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    22bdd7cd2e5c:	e8 ff 33 f3 ff                                  	call   0x22bdd7c06260
    22bdd7cd2e61:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    22bdd7cd2e65:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd2e6a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    22bdd7cd2e6e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd2e73:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd2e79:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd2e7f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd2e84:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    22bdd7cd2e8c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd2e94:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd2e9c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd2ea4:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd2eaa:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    22bdd7cd2eb1:	48 2b bd 38 ff ff ff                            	sub    rdi,QWORD PTR [rbp-0xc8]
    22bdd7cd2eb8:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    22bdd7cd2ebf:	48 2b b5 48 ff ff ff                            	sub    rsi,QWORD PTR [rbp-0xb8]
    22bdd7cd2ec6:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    22bdd7cd2ecd:	48 2b 85 58 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa8]
    22bdd7cd2ed4:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    22bdd7cd2edb:	41 83 c3 02                                     	add    r11d,0x2
    22bdd7cd2edf:	44 3b 9d 70 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0x90]
    22bdd7cd2ee6:	0f 8c 54 85 ff ff                               	jl     0x22bdd7ccb440
    22bdd7cd2eec:	48 8b bd 78 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x88]
    22bdd7cd2ef3:	48 8b b5 38 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3c8]
    22bdd7cd2efa:	48 03 f7                                        	add    rsi,rdi
    22bdd7cd2efd:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    22bdd7cd2f01:	4c 8b bd 10 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xf0]
    22bdd7cd2f08:	4d 03 fb                                        	add    r15,r11
    22bdd7cd2f0b:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
    22bdd7cd2f0f:	48 8b 9d 80 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x380]
    22bdd7cd2f16:	48 03 d8                                        	add    rbx,rax
    22bdd7cd2f19:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd2f1d:	41 83 c1 02                                     	add    r9d,0x2
    22bdd7cd2f21:	44 3b 4d 98                                     	cmp    r9d,DWORD PTR [rbp-0x68]
    22bdd7cd2f25:	0f 8c 55 84 ff ff                               	jl     0x22bdd7ccb380
    22bdd7cd2f2b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cd2f2e:	81 c7 00 02 00 00                               	add    edi,0x200
    22bdd7cd2f34:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    22bdd7cd2f38:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    22bdd7cd2f3c:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    22bdd7cd2f41:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd2f44:	5d                                              	pop    rbp
    22bdd7cd2f45:	c2 10 00                                        	ret    0x10
    22bdd7cd2f48:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    22bdd7cd2f4f:	0f 84 17 00 00 00                               	je     0x22bdd7cd2f6c
    22bdd7cd2f55:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    22bdd7cd2f5b:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    22bdd7cd2f60:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    22bdd7cd2f66:	0f 85 40 00 00 00                               	jne    0x22bdd7cd2fac
    22bdd7cd2f6c:	c5 79 7e df                                     	vmovd  edi,xmm11
    22bdd7cd2f70:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    22bdd7cd2f76:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    22bdd7cd2f79:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    22bdd7cd2f7c:	41 51                                           	push   r9
    22bdd7cd2f7e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    22bdd7cd2f81:	41 53                                           	push   r11
    22bdd7cd2f83:	57                                              	push   rdi
    22bdd7cd2f84:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    22bdd7cd2f87:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    22bdd7cd2f8a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd2f8e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd2f91:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7cd2f94:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    22bdd7cd2f97:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7cd2f9a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    22bdd7cd2f9e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cd2fa2:	e8 79 35 f3 ff                                  	call   0x22bdd7c06520
    22bdd7cd2fa7:	e9 df 00 00 00                                  	jmp    0x22bdd7cd308b
    22bdd7cd2fac:	c5 79 7e df                                     	vmovd  edi,xmm11
    22bdd7cd2fb0:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    22bdd7cd2fb6:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    22bdd7cd2fb9:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    22bdd7cd2fbc:	41 51                                           	push   r9
    22bdd7cd2fbe:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    22bdd7cd2fc1:	41 53                                           	push   r11
    22bdd7cd2fc3:	57                                              	push   rdi
    22bdd7cd2fc4:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    22bdd7cd2fc7:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    22bdd7cd2fca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd2fce:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd2fd1:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7cd2fd4:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    22bdd7cd2fd7:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7cd2fda:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    22bdd7cd2fde:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cd2fe2:	e8 51 35 f3 ff                                  	call   0x22bdd7c06538
    22bdd7cd2fe7:	e9 9f 00 00 00                                  	jmp    0x22bdd7cd308b
    22bdd7cd2fec:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    22bdd7cd2ff3:	0f 84 17 00 00 00                               	je     0x22bdd7cd3010
    22bdd7cd2ff9:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    22bdd7cd2fff:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    22bdd7cd3004:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    22bdd7cd300a:	0f 85 40 00 00 00                               	jne    0x22bdd7cd3050
    22bdd7cd3010:	c5 79 7e df                                     	vmovd  edi,xmm11
    22bdd7cd3014:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    22bdd7cd301a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    22bdd7cd301d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    22bdd7cd3020:	41 51                                           	push   r9
    22bdd7cd3022:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    22bdd7cd3025:	41 53                                           	push   r11
    22bdd7cd3027:	57                                              	push   rdi
    22bdd7cd3028:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    22bdd7cd302b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    22bdd7cd302e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd3032:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd3035:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7cd3038:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    22bdd7cd303b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7cd303e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    22bdd7cd3042:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cd3046:	e8 f5 34 f3 ff                                  	call   0x22bdd7c06540
    22bdd7cd304b:	e9 3b 00 00 00                                  	jmp    0x22bdd7cd308b
    22bdd7cd3050:	c5 79 7e df                                     	vmovd  edi,xmm11
    22bdd7cd3054:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    22bdd7cd305a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    22bdd7cd305d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    22bdd7cd3060:	41 51                                           	push   r9
    22bdd7cd3062:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    22bdd7cd3065:	41 53                                           	push   r11
    22bdd7cd3067:	57                                              	push   rdi
    22bdd7cd3068:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    22bdd7cd306b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    22bdd7cd306e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd3072:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd3075:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7cd3078:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    22bdd7cd307b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7cd307e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    22bdd7cd3082:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    22bdd7cd3086:	e8 bd 34 f3 ff                                  	call   0x22bdd7c06548
    22bdd7cd308b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd308f:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    22bdd7cd3093:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    22bdd7cd3098:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    22bdd7cd309e:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    22bdd7cd30a4:	41 0f 45 c3                                     	cmovne eax,r11d
    22bdd7cd30a8:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cd30ac:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    22bdd7cd30b3:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    22bdd7cd30b7:	41 89 7c 24 07                                  	mov    DWORD PTR [r12+0x7],edi
    22bdd7cd30bc:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd30bf:	5d                                              	pop    rbp
    22bdd7cd30c0:	c2 10 00                                        	ret    0x10
    22bdd7cd30c3:	43 8b 7c 20 58                                  	mov    edi,DWORD PTR [r8+r12*1+0x58]
    22bdd7cd30c8:	bf 01 00 00 00                                  	mov    edi,0x1
    22bdd7cd30cd:	41 bf ff ff ff ff                               	mov    r15d,0xffffffff
    22bdd7cd30d3:	43 83 7c 20 58 00                               	cmp    DWORD PTR [r8+r12*1+0x58],0x0
    22bdd7cd30d9:	41 0f 45 ff                                     	cmovne edi,r15d
    22bdd7cd30dd:	45 8d 83 00 02 00 00                            	lea    r8d,[r11+0x200]
    22bdd7cd30e4:	44 89 41 07                                     	mov    DWORD PTR [rcx+0x7],r8d
    22bdd7cd30e8:	8b c7                                           	mov    eax,edi
    22bdd7cd30ea:	48 8b e5                                        	mov    rsp,rbp
    22bdd7cd30ed:	5d                                              	pop    rbp
    22bdd7cd30ee:	c2 10 00                                        	ret    0x10
    22bdd7cd30f1:	41 b8 80 00 00 00                               	mov    r8d,0x80
    22bdd7cd30f7:	41 d1 f8                                        	sar    r8d,1
    22bdd7cd30fa:	4d 63 c0                                        	movsxd r8,r8d
    22bdd7cd30fd:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    22bdd7cd3101:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    22bdd7cd3105:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    22bdd7cd3109:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    22bdd7cd310d:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    22bdd7cd3115:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    22bdd7cd3119:	49 8b c0                                        	mov    rax,r8
    22bdd7cd311c:	e8 0f 5e f3 ff                                  	call   0x22bdd7c08f30
    22bdd7cd3121:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    22bdd7cd3125:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    22bdd7cd3128:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    22bdd7cd312b:	8b 7d b8                                        	mov    edi,DWORD PTR [rbp-0x48]
    22bdd7cd312e:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    22bdd7cd3131:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    22bdd7cd3139:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    22bdd7cd313d:	e9 5c 75 ff ff                                  	jmp    0x22bdd7cca69e
    22bdd7cd3142:	e8 f9 5d f3 ff                                  	call   0x22bdd7c08f40
    22bdd7cd3147:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd314c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    22bdd7cd3150:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd3155:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd315b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd3161:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd3166:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    22bdd7cd316e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd3176:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd317e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd3186:	e9 21 82 ff ff                                  	jmp    0x22bdd7ccb3ac
    22bdd7cd318b:	e8 b0 5d f3 ff                                  	call   0x22bdd7c08f40
    22bdd7cd3190:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    22bdd7cd3195:	44 8b 85 68 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x98]
    22bdd7cd319c:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    22bdd7cd31a3:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    22bdd7cd31a8:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    22bdd7cd31ae:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    22bdd7cd31b4:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd31b9:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    22bdd7cd31c0:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    22bdd7cd31c8:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd31d0:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd31d8:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd31e0:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    22bdd7cd31e7:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    22bdd7cd31ed:	e9 8a 82 ff ff                                  	jmp    0x22bdd7ccb47c
    22bdd7cd31f2:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    22bdd7cd31fa:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    22bdd7cd3201:	e8 3a 5d f3 ff                                  	call   0x22bdd7c08f40
    22bdd7cd3206:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    22bdd7cd320a:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    22bdd7cd320e:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    22bdd7cd3213:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    22bdd7cd3217:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    22bdd7cd321d:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7cd3221:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    22bdd7cd3225:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    22bdd7cd322a:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    22bdd7cd322f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    22bdd7cd3234:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    22bdd7cd323b:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    22bdd7cd3242:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    22bdd7cd3249:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    22bdd7cd3251:	8b bd 08 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1f8]
    22bdd7cd3257:	c5 fb 10 b5 28 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x1d8]
    22bdd7cd325f:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    22bdd7cd3267:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    22bdd7cd326f:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    22bdd7cd3277:	e9 13 b0 ff ff                                  	jmp    0x22bdd7cce28f
    22bdd7cd327c:	e8 bf 5c f3 ff                                  	call   0x22bdd7c08f40
    22bdd7cd3281:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cd3285:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    22bdd7cd3288:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7cd328c:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    22bdd7cd3293:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    22bdd7cd329b:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    22bdd7cd32a3:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd32ab:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    22bdd7cd32b3:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    22bdd7cd32bb:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    22bdd7cd32c3:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    22bdd7cd32cb:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    22bdd7cd32d3:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    22bdd7cd32da:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    22bdd7cd32e0:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    22bdd7cd32e7:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    22bdd7cd32ee:	e9 a5 b4 ff ff                                  	jmp    0x22bdd7cce798
    22bdd7cd32f3:	e8 48 5c f3 ff                                  	call   0x22bdd7c08f40
    22bdd7cd32f8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    22bdd7cd32fb:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7cd32ff:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    22bdd7cd3305:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    22bdd7cd330c:	e9 8e c4 ff ff                                  	jmp    0x22bdd7ccf79f
    22bdd7cd3311:	e8 2a 5c f3 ff                                  	call   0x22bdd7c08f40
    22bdd7cd3316:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    22bdd7cd331a:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    22bdd7cd331e:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    22bdd7cd3325:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    22bdd7cd332c:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    22bdd7cd3332:	e9 f1 d8 ff ff                                  	jmp    0x22bdd7cd0c28
    22bdd7cd3337:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    22bdd7cd333f:	c5 78 11 9d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm11
    22bdd7cd3347:	c5 f8 11 ad 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm5
    22bdd7cd334f:	c5 f8 11 95 f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm2
    22bdd7cd3357:	4c 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r11
    22bdd7cd335e:	48 89 b5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rsi
    22bdd7cd3365:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    22bdd7cd336c:	e8 cf 5b f3 ff                                  	call   0x22bdd7c08f40
    22bdd7cd3371:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    22bdd7cd3375:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    22bdd7cd3379:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    22bdd7cd3381:	c5 78 10 9d 60 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x1a0]
    22bdd7cd3389:	c5 f8 10 ad 40 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1c0]
    22bdd7cd3391:	c5 f8 10 95 f0 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x210]
    22bdd7cd3399:	8b 85 b0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x150]
    22bdd7cd339f:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    22bdd7cd33a5:	44 8b 9d 08 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1f8]
    22bdd7cd33ac:	8b b5 a0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x260]
    22bdd7cd33b2:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    22bdd7cd33b9:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    22bdd7cd33bf:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    22bdd7cd33c7:	e9 0f e6 ff ff                                  	jmp    0x22bdd7cd19db
    22bdd7cd33cc:	8b c8                                           	mov    ecx,eax
    22bdd7cd33ce:	33 d2                                           	xor    edx,edx
    22bdd7cd33d0:	e9 6e e6 ff ff                                  	jmp    0x22bdd7cd1a43
    22bdd7cd33d5:	33 d2                                           	xor    edx,edx
    22bdd7cd33d7:	44 8b c8                                        	mov    r9d,eax
    22bdd7cd33da:	e9 82 e6 ff ff                                  	jmp    0x22bdd7cd1a61
    22bdd7cd33df:	33 d2                                           	xor    edx,edx
    22bdd7cd33e1:	8b c8                                           	mov    ecx,eax
    22bdd7cd33e3:	e9 c3 e6 ff ff                                  	jmp    0x22bdd7cd1aab
    22bdd7cd33e8:	33 d2                                           	xor    edx,edx
    22bdd7cd33ea:	44 8b f8                                        	mov    r15d,eax
    22bdd7cd33ed:	e9 d7 e6 ff ff                                  	jmp    0x22bdd7cd1ac9
    22bdd7cd33f2:	e8 59 58 f3 ff                                  	call   0x22bdd7c08c50
    22bdd7cd33f7:	e8 54 58 f3 ff                                  	call   0x22bdd7c08c50
    22bdd7cd33fc:	90                                              	nop
    22bdd7cd33fd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    22bdd7cd3400:	00 25 cd d7 bd 22                               	add    BYTE PTR [rip+0x22bdd7cd],ah        # 0x22bdfa8b0bd3
    22bdd7cd3406:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd3408:	ee                                              	out    dx,al
    22bdd7cd3409:	24 cd                                           	and    al,0xcd
    22bdd7cd340b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd340c:	bd 22 00 00 dc                                  	mov    ebp,0xdc000022
    22bdd7cd3411:	24 cd                                           	and    al,0xcd
    22bdd7cd3413:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3414:	bd 22 00 00 ca                                  	mov    ebp,0xca000022
    22bdd7cd3419:	24 cd                                           	and    al,0xcd
    22bdd7cd341b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd341c:	bd 22 00 00 b8                                  	mov    ebp,0xb8000022
    22bdd7cd3421:	24 cd                                           	and    al,0xcd
    22bdd7cd3423:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3424:	bd 22 00 00 a6                                  	mov    ebp,0xa6000022
    22bdd7cd3429:	24 cd                                           	and    al,0xcd
    22bdd7cd342b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd342c:	bd 22 00 00 94                                  	mov    ebp,0x94000022
    22bdd7cd3431:	24 cd                                           	and    al,0xcd
    22bdd7cd3433:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3434:	bd 22 00 00 8a                                  	mov    ebp,0x8a000022
    22bdd7cd3439:	22 cd                                           	and    cl,ch
    22bdd7cd343b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd343c:	bd 22 00 00 85                                  	mov    ebp,0x85000022
    22bdd7cd3441:	22 cd                                           	and    cl,ch
    22bdd7cd3443:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3444:	bd 22 00 00 7b                                  	mov    ebp,0x7b000022
    22bdd7cd3449:	22 cd                                           	and    cl,ch
    22bdd7cd344b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd344c:	bd 22 00 00 71                                  	mov    ebp,0x71000022
    22bdd7cd3451:	22 cd                                           	and    cl,ch
    22bdd7cd3453:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3454:	bd 22 00 00 66                                  	mov    ebp,0x66000022
    22bdd7cd3459:	22 cd                                           	and    cl,ch
    22bdd7cd345b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd345c:	bd 22 00 00 5c                                  	mov    ebp,0x5c000022
    22bdd7cd3461:	22 cd                                           	and    cl,ch
    22bdd7cd3463:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3464:	bd 22 00 00 51                                  	mov    ebp,0x51000022
    22bdd7cd3469:	22 cd                                           	and    cl,ch
    22bdd7cd346b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd346c:	bd 22 00 00 17                                  	mov    ebp,0x17000022
    22bdd7cd3471:	15 cd d7 bd 22                                  	adc    eax,0x22bdd7cd
    22bdd7cd3476:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd3478:	0c 15                                           	or     al,0x15
    22bdd7cd347a:	cd d7                                           	int    0xd7
    22bdd7cd347c:	bd 22 00 00 01                                  	mov    ebp,0x1000022
    22bdd7cd3481:	15 cd d7 bd 22                                  	adc    eax,0x22bdd7cd
    22bdd7cd3486:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd3488:	f6 14 cd d7 bd 22 00                            	not    BYTE PTR [rcx*8+0x22bdd7]
    22bdd7cd348f:	00 ec                                           	add    ah,ch
    22bdd7cd3491:	14 cd                                           	adc    al,0xcd
    22bdd7cd3493:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3494:	bd 22 00 00 e1                                  	mov    ebp,0xe1000022
    22bdd7cd3499:	14 cd                                           	adc    al,0xcd
    22bdd7cd349b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd349c:	bd 22 00 00 d7                                  	mov    ebp,0xd7000022
    22bdd7cd34a1:	14 cd                                           	adc    al,0xcd
    22bdd7cd34a3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34a4:	bd 22 00 00 f7                                  	mov    ebp,0xf7000022
    22bdd7cd34a9:	e3 cc                                           	jrcxz  0x22bdd7cd3477
    22bdd7cd34ab:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34ac:	bd 22 00 00 ec                                  	mov    ebp,0xec000022
    22bdd7cd34b1:	e3 cc                                           	jrcxz  0x22bdd7cd347f
    22bdd7cd34b3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34b4:	bd 22 00 00 d6                                  	mov    ebp,0xd6000022
    22bdd7cd34b9:	e3 cc                                           	jrcxz  0x22bdd7cd3487
    22bdd7cd34bb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34bc:	bd 22 00 00 c6                                  	mov    ebp,0xc6000022
    22bdd7cd34c1:	e3 cc                                           	jrcxz  0x22bdd7cd348f
    22bdd7cd34c3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34c4:	bd 22 00 00 b6                                  	mov    ebp,0xb6000022
    22bdd7cd34c9:	e3 cc                                           	jrcxz  0x22bdd7cd3497
    22bdd7cd34cb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34cc:	bd 22 00 00 a0                                  	mov    ebp,0xa0000022
    22bdd7cd34d1:	e3 cc                                           	jrcxz  0x22bdd7cd349f
    22bdd7cd34d3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34d4:	bd 22 00 00 90                                  	mov    ebp,0x90000022
    22bdd7cd34d9:	e3 cc                                           	jrcxz  0x22bdd7cd34a7
    22bdd7cd34db:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34dc:	bd 22 00 00 10                                  	mov    ebp,0x10000022
    22bdd7cd34e1:	e4 cc                                           	in     al,0xcc
    22bdd7cd34e3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34e4:	bd 22 00 00 57                                  	mov    ebp,0x57000022
    22bdd7cd34e9:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34ea:	cc                                              	int3
    22bdd7cd34eb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34ec:	bd 22 00 00 0b                                  	mov    ebp,0xb000022
    22bdd7cd34f1:	d9 cc                                           	fxch   st(4)
    22bdd7cd34f3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34f4:	bd 22 00 00 f5                                  	mov    ebp,0xf5000022
    22bdd7cd34f9:	d8 cc                                           	fmul   st,st(4)
    22bdd7cd34fb:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd34fc:	bd 22 00 00 e6                                  	mov    ebp,0xe6000022
    22bdd7cd3501:	d8 cc                                           	fmul   st,st(4)
    22bdd7cd3503:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3504:	bd 22 00 00 d6                                  	mov    ebp,0xd6000022
    22bdd7cd3509:	d8 cc                                           	fmul   st,st(4)
    22bdd7cd350b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd350c:	bd 22 00 00 c0                                  	mov    ebp,0xc0000022
    22bdd7cd3511:	d8 cc                                           	fmul   st,st(4)
    22bdd7cd3513:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3514:	bd 22 00 00 b0                                  	mov    ebp,0xb0000022
    22bdd7cd3519:	d8 cc                                           	fmul   st,st(4)
    22bdd7cd351b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd351c:	bd 22 00 00 15                                  	mov    ebp,0x15000022
    22bdd7cd3521:	d9 cc                                           	fxch   st(4)
    22bdd7cd3523:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3524:	bd 22 00 00 4a                                  	mov    ebp,0x4a000022
    22bdd7cd3529:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd352a:	cc                                              	int3
    22bdd7cd352b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd352c:	bd 22 00 00 91                                  	mov    ebp,0x91000022
    22bdd7cd3531:	ce                                              	(bad)
    22bdd7cd3532:	cc                                              	int3
    22bdd7cd3533:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3534:	bd 22 00 00 7b                                  	mov    ebp,0x7b000022
    22bdd7cd3539:	ce                                              	(bad)
    22bdd7cd353a:	cc                                              	int3
    22bdd7cd353b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd353c:	bd 22 00 00 6c                                  	mov    ebp,0x6c000022
    22bdd7cd3541:	ce                                              	(bad)
    22bdd7cd3542:	cc                                              	int3
    22bdd7cd3543:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3544:	bd 22 00 00 5c                                  	mov    ebp,0x5c000022
    22bdd7cd3549:	ce                                              	(bad)
    22bdd7cd354a:	cc                                              	int3
    22bdd7cd354b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd354c:	bd 22 00 00 46                                  	mov    ebp,0x46000022
    22bdd7cd3551:	ce                                              	(bad)
    22bdd7cd3552:	cc                                              	int3
    22bdd7cd3553:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3554:	bd 22 00 00 36                                  	mov    ebp,0x36000022
    22bdd7cd3559:	ce                                              	(bad)
    22bdd7cd355a:	cc                                              	int3
    22bdd7cd355b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd355c:	bd 22 00 00 9b                                  	mov    ebp,0x9b000022
    22bdd7cd3561:	ce                                              	(bad)
    22bdd7cd3562:	cc                                              	int3
    22bdd7cd3563:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3564:	bd 22 00 00 c3                                  	mov    ebp,0xc3000022
    22bdd7cd3569:	cc                                              	int3
    22bdd7cd356a:	cc                                              	int3
    22bdd7cd356b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd356c:	bd 22 00 00 06                                  	mov    ebp,0x6000022
    22bdd7cd3571:	c4                                              	(bad)
    22bdd7cd3572:	cc                                              	int3
    22bdd7cd3573:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3574:	bd 22 00 00 f0                                  	mov    ebp,0xf0000022
    22bdd7cd3579:	c3                                              	ret
    22bdd7cd357a:	cc                                              	int3
    22bdd7cd357b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd357c:	bd 22 00 00 e1                                  	mov    ebp,0xe1000022
    22bdd7cd3581:	c3                                              	ret
    22bdd7cd3582:	cc                                              	int3
    22bdd7cd3583:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3584:	bd 22 00 00 d1                                  	mov    ebp,0xd1000022
    22bdd7cd3589:	c3                                              	ret
    22bdd7cd358a:	cc                                              	int3
    22bdd7cd358b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd358c:	bd 22 00 00 bb                                  	mov    ebp,0xbb000022
    22bdd7cd3591:	c3                                              	ret
    22bdd7cd3592:	cc                                              	int3
    22bdd7cd3593:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3594:	bd 22 00 00 ab                                  	mov    ebp,0xab000022
    22bdd7cd3599:	c3                                              	ret
    22bdd7cd359a:	cc                                              	int3
    22bdd7cd359b:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd359c:	bd 22 00 00 10                                  	mov    ebp,0x10000022
    22bdd7cd35a1:	c4                                              	(bad)
    22bdd7cd35a2:	cc                                              	int3
    22bdd7cd35a3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd35a4:	bd 22 00 00 df                                  	mov    ebp,0xdf000022
    22bdd7cd35a9:	c1 cc d7                                        	ror    esp,0xd7
    22bdd7cd35ac:	bd 22 00 00 2a                                  	mov    ebp,0x2a000022
    22bdd7cd35b1:	b9 cc d7 bd 22                                  	mov    ecx,0x22bdd7cc
    22bdd7cd35b6:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd35b8:	15 b9 cc d7 bd                                  	adc    eax,0xbdd7ccb9
    22bdd7cd35bd:	22 00                                           	and    al,BYTE PTR [rax]
    22bdd7cd35bf:	00 06                                           	add    BYTE PTR [rsi],al
    22bdd7cd35c1:	b9 cc d7 bd 22                                  	mov    ecx,0x22bdd7cc
    22bdd7cd35c6:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd35c8:	f7 b8 cc d7 bd 22                               	idiv   DWORD PTR [rax+0x22bdd7cc]
    22bdd7cd35ce:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd35d0:	e2 b8                                           	loop   0x22bdd7cd358a
    22bdd7cd35d2:	cc                                              	int3
    22bdd7cd35d3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd35d4:	bd 22 00 00 d3                                  	mov    ebp,0xd3000022
    22bdd7cd35d9:	b8 cc d7 bd 22                                  	mov    eax,0x22bdd7cc
    22bdd7cd35de:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd35e0:	34 b9                                           	xor    al,0xb9
    22bdd7cd35e2:	cc                                              	int3
    22bdd7cd35e3:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd35e4:	bd 22 00 00 81                                  	mov    ebp,0x81000022
    22bdd7cd35e9:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd35eb:	00 1c 00                                        	add    BYTE PTR [rax+rax*1],bl
    22bdd7cd35ee:	00 00                                           	add    BYTE PTR [rax],al
    22bdd7cd35f0:	91                                              	xchg   ecx,eax
    22bdd7cd35f1:	01 d7                                           	add    edi,edx
    22bdd7cd35f3:	03 05 8f 94 02 d7                               	add    eax,DWORD PTR [rip+0xffffffffd702948f]        # 0x22bdaecfca88
    22bdd7cd35f9:	03 05 26 d7 03 05                               	add    eax,DWORD PTR [rip+0x503d726]        # 0x22bddcd10d25
    22bdd7cd35ff:	b0 05                                           	mov    al,0x5
    22bdd7cd3601:	d7                                              	xlat   BYTE PTR ds:[rbx]
    22bdd7cd3602:	03 05 00 00 00 00                               	add    eax,DWORD PTR [rip+0x0]        # 0x22bdd7cd3608
	...
