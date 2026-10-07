
/home/cosmo/Git/softgl/build/diagnostics/cube-vector-core/native-check/runs/candidate-ms0/selected/sg_raster_triangle_tile_prepared-turbofan.bin:     file format binary


Disassembly of section .data:

00003691cc6a7640 <.data>:
    3691cc6a7640:	55                                              	push   rbp
    3691cc6a7641:	48 8b ec                                        	mov    rbp,rsp
    3691cc6a7644:	6a 30                                           	push   0x30
    3691cc6a7646:	56                                              	push   rsi
    3691cc6a7647:	48 81 ec e8 03 00 00                            	sub    rsp,0x3e8
    3691cc6a764e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    3691cc6a7652:	8b f9                                           	mov    edi,ecx
    3691cc6a7654:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    3691cc6a7658:	0f 86 53 8a 00 00                               	jbe    0x3691cc6b00b1
    3691cc6a765e:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    3691cc6a7662:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    3691cc6a7666:	4d 0b de                                        	or     r11,r14
    3691cc6a7669:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    3691cc6a766d:	41 8d 8c 24 00 fe ff ff                         	lea    ecx,[r12-0x200]
    3691cc6a7675:	41 89 4b 07                                     	mov    DWORD PTR [r11+0x7],ecx
    3691cc6a7679:	45 8b 7b 2f                                     	mov    r15d,DWORD PTR [r11+0x2f]
    3691cc6a767d:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    3691cc6a7681:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    3691cc6a7688:	44 8b e0                                        	mov    r12d,eax
    3691cc6a768b:	43 8b 74 20 14                                  	mov    esi,DWORD PTR [r8+r12*1+0x14]
    3691cc6a7690:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    3691cc6a7697:	85 f6                                           	test   esi,esi
    3691cc6a7699:	0f 85 4c 00 00 00                               	jne    0x3691cc6a76eb
    3691cc6a769f:	45 85 ff                                        	test   r15d,r15d
    3691cc6a76a2:	0f 84 43 00 00 00                               	je     0x3691cc6a76eb
    3691cc6a76a8:	43 8b 74 38 24                                  	mov    esi,DWORD PTR [r8+r15*1+0x24]
    3691cc6a76ad:	43 83 7c 38 24 00                               	cmp    DWORD PTR [r8+r15*1+0x24],0x0
    3691cc6a76b3:	0f 84 32 00 00 00                               	je     0x3691cc6a76eb
    3691cc6a76b9:	ff 75 18                                        	push   QWORD PTR [rbp+0x18]
    3691cc6a76bc:	ff 75 10                                        	push   QWORD PTR [rbp+0x10]
    3691cc6a76bf:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    3691cc6a76c3:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    3691cc6a76c7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a76cb:	8b cf                                           	mov    ecx,edi
    3691cc6a76cd:	e8 7e 9e f1 ff                                  	call   0x3691cc5c1550
    3691cc6a76d2:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6a76d6:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    3691cc6a76dd:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    3691cc6a76e1:	89 7e 07                                        	mov    DWORD PTR [rsi+0x7],edi
    3691cc6a76e4:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a76e7:	5d                                              	pop    rbp
    3691cc6a76e8:	c2 10 00                                        	ret    0x10
    3691cc6a76eb:	4d 8b d3                                        	mov    r10,r11
    3691cc6a76ee:	44 8b d9                                        	mov    r11d,ecx
    3691cc6a76f1:	49 8b ca                                        	mov    rcx,r10
    3691cc6a76f4:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    3691cc6a76fb:	44 8b fb                                        	mov    r15d,ebx
    3691cc6a76fe:	c4 81 7a 6f 74 38 10                            	vmovdqu xmm6,XMMWORD PTR [r8+r15*1+0x10]
    3691cc6a7705:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    3691cc6a770f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6a7714:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6a7718:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    3691cc6a771c:	49 ba 40 c9 35 7d 08 61 00 00                   	movabs r10,0x61087d35c940
    3691cc6a7726:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc6a772c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    3691cc6a7731:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc6a7737:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    3691cc6a773c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    3691cc6a7741:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    3691cc6a7745:	8b da                                           	mov    ebx,edx
    3691cc6a7747:	c4 41 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x10]
    3691cc6a774e:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    3691cc6a7752:	4c 8b 15 c5 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc5]        # 0x3691cc6a771e
    3691cc6a7759:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    3691cc6a775f:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    3691cc6a7764:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    3691cc6a776a:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    3691cc6a776f:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    3691cc6a7774:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    3691cc6a7779:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    3691cc6a777e:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    3691cc6a7784:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    3691cc6a7788:	8b d7                                           	mov    edx,edi
    3691cc6a778a:	c4 41 7a 6f 64 10 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rdx*1+0x10]
    3691cc6a7791:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    3691cc6a7795:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x3691cc6a771e
    3691cc6a779c:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    3691cc6a77a2:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    3691cc6a77a7:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    3691cc6a77ad:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    3691cc6a77b2:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    3691cc6a77b7:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    3691cc6a77bc:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    3691cc6a77c1:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    3691cc6a77c7:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    3691cc6a77cb:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    3691cc6a77d0:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    3691cc6a77d5:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    3691cc6a77d9:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    3691cc6a77df:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    3691cc6a77e3:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    3691cc6a77e8:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    3691cc6a77ec:	c4 e3 f9 16 d7 00                               	vpextrq rdi,xmm2,0x0
    3691cc6a77f2:	c4 e3 f9 16 d6 01                               	vpextrq rsi,xmm2,0x1
    3691cc6a77f8:	48 2b fe                                        	sub    rdi,rsi
    3691cc6a77fb:	48 85 ff                                        	test   rdi,rdi
    3691cc6a77fe:	0f 8e 7f 88 00 00                               	jle    0x3691cc6b0083
    3691cc6a7804:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    3691cc6a7809:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    3691cc6a780e:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    3691cc6a7814:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    3691cc6a781e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc6a7823:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc6a7827:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    3691cc6a782b:	8d 70 04                                        	lea    esi,[rax+0x4]
    3691cc6a782e:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    3691cc6a7833:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    3691cc6a7838:	c4 c3 59 22 24 30 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rsi*1],0x1
    3691cc6a783f:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    3691cc6a7844:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    3691cc6a7848:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    3691cc6a784d:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    3691cc6a7852:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    3691cc6a7857:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    3691cc6a785c:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    3691cc6a7860:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    3691cc6a7864:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    3691cc6a786e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc6a7873:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc6a7877:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    3691cc6a787b:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    3691cc6a787f:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    3691cc6a7884:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    3691cc6a788a:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    3691cc6a788f:	43 8b 74 20 58                                  	mov    esi,DWORD PTR [r8+r12*1+0x58]
    3691cc6a7894:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    3691cc6a7898:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    3691cc6a789c:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    3691cc6a78a4:	85 f6                                           	test   esi,esi
    3691cc6a78a6:	0f 84 39 00 00 00                               	je     0x3691cc6a78e5
    3691cc6a78ac:	44 8d 48 50                                     	lea    r9d,[rax+0x50]
    3691cc6a78b0:	49 8d 78 48                                     	lea    rdi,[r8+0x48]
    3691cc6a78b4:	c4 a1 7b 10 24 27                               	vmovsd xmm4,QWORD PTR [rdi+r12*1]
    3691cc6a78ba:	c4 83 59 22 2c 08 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+r9*1],0x0
    3691cc6a78c1:	8d 78 54                                        	lea    edi,[rax+0x54]
    3691cc6a78c4:	c4 c3 59 22 04 38 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rdi*1],0x1
    3691cc6a78cb:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    3691cc6a78cf:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    3691cc6a78d4:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    3691cc6a78d9:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    3691cc6a78e1:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    3691cc6a78e5:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    3691cc6a78e9:	c4 c3 f9 16 e1 00                               	vpextrq r9,xmm4,0x0
    3691cc6a78ef:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    3691cc6a78f4:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    3691cc6a78fa:	49 23 c1                                        	and    rax,r9
    3691cc6a78fd:	a8 01                                           	test   al,0x1
    3691cc6a78ff:	0f 85 20 00 00 00                               	jne    0x3691cc6a7925
    3691cc6a7905:	b8 01 00 00 00                                  	mov    eax,0x1
    3691cc6a790a:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    3691cc6a790f:	85 f6                                           	test   esi,esi
    3691cc6a7911:	0f 45 c7                                        	cmovne eax,edi
    3691cc6a7914:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    3691cc6a791b:	89 79 07                                        	mov    DWORD PTR [rcx+0x7],edi
    3691cc6a791e:	48 8b e5                                        	mov    rsp,rbp
    3691cc6a7921:	5d                                              	pop    rbp
    3691cc6a7922:	c2 10 00                                        	ret    0x10
    3691cc6a7925:	c4 63 79 16 e8 01                               	vpextrd eax,xmm13,0x1
    3691cc6a792b:	c4 63 79 16 d6 01                               	vpextrd esi,xmm10,0x1
    3691cc6a7931:	45 33 c9                                        	xor    r9d,r9d
    3691cc6a7934:	3b f0                                           	cmp    esi,eax
    3691cc6a7936:	41 0f 9e c1                                     	setle  r9b
    3691cc6a793a:	48 89 4d e8                                     	mov    QWORD PTR [rbp-0x18],rcx
    3691cc6a793e:	33 c9                                           	xor    ecx,ecx
    3691cc6a7940:	3b f0                                           	cmp    esi,eax
    3691cc6a7942:	0f 95 c1                                        	setne  cl
    3691cc6a7945:	4c 89 5d e0                                     	mov    QWORD PTR [rbp-0x20],r11
    3691cc6a7949:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    3691cc6a794e:	c5 79 7e d7                                     	vmovd  edi,xmm10
    3691cc6a7952:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    3691cc6a7959:	45 33 ff                                        	xor    r15d,r15d
    3691cc6a795c:	41 3b fb                                        	cmp    edi,r11d
    3691cc6a795f:	41 0f 9e c7                                     	setle  r15b
    3691cc6a7963:	44 0b f9                                        	or     r15d,ecx
    3691cc6a7966:	45 23 f9                                        	and    r15d,r9d
    3691cc6a7969:	c4 63 79 16 c1 01                               	vpextrd ecx,xmm8,0x1
    3691cc6a796f:	45 33 c9                                        	xor    r9d,r9d
    3691cc6a7972:	3b ce                                           	cmp    ecx,esi
    3691cc6a7974:	41 0f 9e c1                                     	setle  r9b
    3691cc6a7978:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    3691cc6a797f:	45 33 ff                                        	xor    r15d,r15d
    3691cc6a7982:	3b ce                                           	cmp    ecx,esi
    3691cc6a7984:	41 0f 95 c7                                     	setne  r15b
    3691cc6a7988:	48 89 b5 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rsi
    3691cc6a798f:	c5 79 7e c6                                     	vmovd  esi,xmm8
    3691cc6a7993:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    3691cc6a799a:	33 db                                           	xor    ebx,ebx
    3691cc6a799c:	3b f7                                           	cmp    esi,edi
    3691cc6a799e:	0f 9e c3                                        	setle  bl
    3691cc6a79a1:	41 0b df                                        	or     ebx,r15d
    3691cc6a79a4:	41 23 d9                                        	and    ebx,r9d
    3691cc6a79a7:	45 33 ff                                        	xor    r15d,r15d
    3691cc6a79aa:	3b c8                                           	cmp    ecx,eax
    3691cc6a79ac:	41 0f 95 c7                                     	setne  r15b
    3691cc6a79b0:	45 33 c9                                        	xor    r9d,r9d
    3691cc6a79b3:	44 3b de                                        	cmp    r11d,esi
    3691cc6a79b6:	41 0f 9e c1                                     	setle  r9b
    3691cc6a79ba:	45 0b cf                                        	or     r9d,r15d
    3691cc6a79bd:	45 33 ff                                        	xor    r15d,r15d
    3691cc6a79c0:	3b c1                                           	cmp    eax,ecx
    3691cc6a79c2:	41 0f 9e c7                                     	setle  r15b
    3691cc6a79c6:	45 23 f9                                        	and    r15d,r9d
    3691cc6a79c9:	47 8b 8c 20 e0 00 00 00                         	mov    r9d,DWORD PTR [r8+r12*1+0xe0]
    3691cc6a79d1:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    3691cc6a79d5:	4c 89 65 d0                                     	mov    QWORD PTR [rbp-0x30],r12
    3691cc6a79d9:	c5 f8 11 bd 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm7
    3691cc6a79e1:	48 89 9d 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rbx
    3691cc6a79e8:	43 83 bc 20 e0 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xe0],0x0
    3691cc6a79f1:	0f 85 0d 00 00 00                               	jne    0x3691cc6a7a04
    3691cc6a79f7:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    3691cc6a79fb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    3691cc6a79ff:	e9 49 01 00 00                                  	jmp    0x3691cc6a7b4d
    3691cc6a7a04:	c4 01 7a 10 94 20 d8 00 00 00                   	vmovss xmm10,DWORD PTR [r8+r12*1+0xd8]
    3691cc6a7a0e:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6a7a13:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    3691cc6a7a18:	0f 8a 1d 00 00 00                               	jp     0x3691cc6a7a3b
    3691cc6a7a1e:	0f 85 17 00 00 00                               	jne    0x3691cc6a7a3b
    3691cc6a7a24:	c4 01 7a 10 ac 20 dc 00 00 00                   	vmovss xmm13,DWORD PTR [r8+r12*1+0xdc]
    3691cc6a7a2e:	c4 41 78 2e c5                                  	vucomiss xmm8,xmm13
    3691cc6a7a33:	7a 06                                           	jp     0x3691cc6a7a3b
    3691cc6a7a35:	0f 84 0d 01 00 00                               	je     0x3691cc6a7b48
    3691cc6a7a3b:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    3691cc6a7a40:	c4 41 78 28 ec                                  	vmovaps xmm13,xmm12
    3691cc6a7a45:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    3691cc6a7a4a:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    3691cc6a7a4e:	c4 c1 12 59 e1                                  	vmulss xmm4,xmm13,xmm9
    3691cc6a7a53:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    3691cc6a7a58:	c4 c1 4a 59 ec                                  	vmulss xmm5,xmm6,xmm12
    3691cc6a7a5d:	c5 da 5c e5                                     	vsubss xmm4,xmm4,xmm5
    3691cc6a7a61:	c5 78 2e c4                                     	vucomiss xmm8,xmm4
    3691cc6a7a65:	7a 06                                           	jp     0x3691cc6a7a6d
    3691cc6a7a67:	0f 84 db 00 00 00                               	je     0x3691cc6a7b48
    3691cc6a7a6d:	c4 c1 7a 10 6c 10 18                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x18]
    3691cc6a7a74:	4c 8b 8d e8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x218]
    3691cc6a7a7b:	c4 81 7a 10 44 08 18                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x18]
    3691cc6a7a82:	c5 d2 5c e8                                     	vsubss xmm5,xmm5,xmm0
    3691cc6a7a86:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    3691cc6a7a8b:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    3691cc6a7a92:	c4 c1 7a 10 7c 18 18                            	vmovss xmm7,DWORD PTR [r8+rbx*1+0x18]
    3691cc6a7a99:	c5 c2 5c c0                                     	vsubss xmm0,xmm7,xmm0
    3691cc6a7a9d:	c5 9a 59 f8                                     	vmulss xmm7,xmm12,xmm0
    3691cc6a7aa1:	c5 b2 5c ff                                     	vsubss xmm7,xmm9,xmm7
    3691cc6a7aa5:	c5 c2 5e fc                                     	vdivss xmm7,xmm7,xmm4
    3691cc6a7aa9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    3691cc6a7aad:	49 ba 60 c8 35 7d 08 61 00 00                   	movabs r10,0x61087d35c860
    3691cc6a7ab7:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    3691cc6a7abc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6a7ac0:	0f 87 04 00 00 00                               	ja     0x3691cc6a7aca
    3691cc6a7ac6:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6a7aca:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    3691cc6a7acf:	c5 ca 59 f5                                     	vmulss xmm6,xmm6,xmm5
    3691cc6a7ad3:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc6a7ad7:	c5 fa 5e c4                                     	vdivss xmm0,xmm0,xmm4
    3691cc6a7adb:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    3691cc6a7adf:	4c 8b 15 c9 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc9]        # 0x3691cc6a7aaf
    3691cc6a7ae6:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6a7aeb:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc6a7aef:	0f 87 04 00 00 00                               	ja     0x3691cc6a7af9
    3691cc6a7af5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc6a7af9:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    3691cc6a7afd:	0f 87 04 00 00 00                               	ja     0x3691cc6a7b07
    3691cc6a7b03:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6a7b07:	c4 c1 2a 59 c1                                  	vmulss xmm0,xmm10,xmm9
    3691cc6a7b0c:	c4 81 7a 10 b4 20 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+r12*1+0xdc]
    3691cc6a7b16:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    3691cc6a7b1c:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    3691cc6a7b21:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc6a7b25:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a7b29:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc6a7b2d:	c5 f8 10 bd 50 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2b0]
    3691cc6a7b35:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    3691cc6a7b3d:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    3691cc6a7b43:	e9 05 00 00 00                                  	jmp    0x3691cc6a7b4d
    3691cc6a7b48:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    3691cc6a7b4d:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    3691cc6a7b52:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    3691cc6a7b56:	c4 c3 79 16 d9 01                               	vpextrd r9d,xmm3,0x1
    3691cc6a7b5c:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    3691cc6a7b60:	44 8b 8d 28 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3d8]
    3691cc6a7b67:	41 f7 d9                                        	neg    r9d
    3691cc6a7b6a:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    3691cc6a7b6e:	44 8b cb                                        	mov    r9d,ebx
    3691cc6a7b71:	41 f7 d9                                        	neg    r9d
    3691cc6a7b74:	4c 89 4d 90                                     	mov    QWORD PTR [rbp-0x70],r9
    3691cc6a7b78:	45 8b cf                                        	mov    r9d,r15d
    3691cc6a7b7b:	41 f7 d9                                        	neg    r9d
    3691cc6a7b7e:	83 bd 70 ff ff ff 04                            	cmp    DWORD PTR [rbp-0x90],0x4
    3691cc6a7b85:	0f 84 21 84 00 00                               	je     0x3691cc6affac
    3691cc6a7b8b:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    3691cc6a7b92:	0f 85 70 83 00 00                               	jne    0x3691cc6aff08
    3691cc6a7b98:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    3691cc6a7b9c:	41 c1 e1 08                                     	shl    r9d,0x8
    3691cc6a7ba0:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    3691cc6a7ba7:	41 8b d9                                        	mov    ebx,r9d
    3691cc6a7baa:	2b de                                           	sub    ebx,esi
    3691cc6a7bac:	48 63 db                                        	movsxd rbx,ebx
    3691cc6a7baf:	4c 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],r15
    3691cc6a7bb6:	44 8b 7d a0                                     	mov    r15d,DWORD PTR [rbp-0x60]
    3691cc6a7bba:	41 c1 e7 08                                     	shl    r15d,0x8
    3691cc6a7bbe:	41 81 cf 80 00 00 00                            	or     r15d,0x80
    3691cc6a7bc5:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    3691cc6a7bcc:	41 8b d7                                        	mov    edx,r15d
    3691cc6a7bcf:	2b d1                                           	sub    edx,ecx
    3691cc6a7bd1:	48 63 d2                                        	movsxd rdx,edx
    3691cc6a7bd4:	48 89 55 88                                     	mov    QWORD PTR [rbp-0x78],rdx
    3691cc6a7bd8:	41 8b d1                                        	mov    edx,r9d
    3691cc6a7bdb:	41 2b d3                                        	sub    edx,r11d
    3691cc6a7bde:	48 63 d2                                        	movsxd rdx,edx
    3691cc6a7be1:	48 89 95 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rdx
    3691cc6a7be8:	41 8b d7                                        	mov    edx,r15d
    3691cc6a7beb:	2b d0                                           	sub    edx,eax
    3691cc6a7bed:	48 63 d2                                        	movsxd rdx,edx
    3691cc6a7bf0:	44 2b cf                                        	sub    r9d,edi
    3691cc6a7bf3:	4d 63 c9                                        	movsxd r9,r9d
    3691cc6a7bf6:	44 2b bd 68 ff ff ff                            	sub    r15d,DWORD PTR [rbp-0x98]
    3691cc6a7bfd:	4d 63 ff                                        	movsxd r15,r15d
    3691cc6a7c00:	4c 8b 55 98                                     	mov    r10,QWORD PTR [rbp-0x68]
    3691cc6a7c04:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    3691cc6a7c09:	4d 85 d2                                        	test   r10,r10
    3691cc6a7c0c:	79 13                                           	jns    0x3691cc6a7c21
    3691cc6a7c0e:	49 d1 ea                                        	shr    r10,1
    3691cc6a7c11:	73 04                                           	jae    0x3691cc6a7c17
    3691cc6a7c13:	49 83 ca 01                                     	or     r10,0x1
    3691cc6a7c17:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    3691cc6a7c1c:	c4 41 32 58 c9                                  	vaddss xmm9,xmm9,xmm9
    3691cc6a7c21:	2b fe                                           	sub    edi,esi
    3691cc6a7c23:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    3691cc6a7c2a:	4c 63 ff                                        	movsxd r15,edi
    3691cc6a7c2d:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    3691cc6a7c34:	4d 8b cf                                        	mov    r9,r15
    3691cc6a7c37:	49 c1 e1 08                                     	shl    r9,0x8
    3691cc6a7c3b:	4c 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r15
    3691cc6a7c42:	45 33 ff                                        	xor    r15d,r15d
    3691cc6a7c45:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    3691cc6a7c4c:	85 ff                                           	test   edi,edi
    3691cc6a7c4e:	4d 0f 4c f9                                     	cmovl  r15,r9
    3691cc6a7c52:	4c 89 8d f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r9
    3691cc6a7c59:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    3691cc6a7c60:	44 2b c9                                        	sub    r9d,ecx
    3691cc6a7c63:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    3691cc6a7c6a:	4d 63 f9                                        	movsxd r15,r9d
    3691cc6a7c6d:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    3691cc6a7c74:	49 c1 e7 08                                     	shl    r15,0x8
    3691cc6a7c78:	4c 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r15
    3691cc6a7c7f:	49 f7 df                                        	neg    r15
    3691cc6a7c82:	48 89 9d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rbx
    3691cc6a7c89:	33 db                                           	xor    ebx,ebx
    3691cc6a7c8b:	45 85 c9                                        	test   r9d,r9d
    3691cc6a7c8e:	49 0f 4f df                                     	cmovg  rbx,r15
    3691cc6a7c92:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    3691cc6a7c99:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    3691cc6a7ca0:	33 d2                                           	xor    edx,edx
    3691cc6a7ca2:	85 ff                                           	test   edi,edi
    3691cc6a7ca4:	48 0f 4c da                                     	cmovl  rbx,rdx
    3691cc6a7ca8:	45 85 c9                                        	test   r9d,r9d
    3691cc6a7cab:	4c 0f 4f fa                                     	cmovg  r15,rdx
    3691cc6a7caf:	41 2b f3                                        	sub    esi,r11d
    3691cc6a7cb2:	48 63 fe                                        	movsxd rdi,esi
    3691cc6a7cb5:	4c 8b df                                        	mov    r11,rdi
    3691cc6a7cb8:	49 c1 e3 08                                     	shl    r11,0x8
    3691cc6a7cbc:	4c 8b ca                                        	mov    r9,rdx
    3691cc6a7cbf:	85 f6                                           	test   esi,esi
    3691cc6a7cc1:	4d 0f 4c cb                                     	cmovl  r9,r11
    3691cc6a7cc5:	2b c8                                           	sub    ecx,eax
    3691cc6a7cc7:	48 63 c1                                        	movsxd rax,ecx
    3691cc6a7cca:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    3691cc6a7cd1:	4c 8b d8                                        	mov    r11,rax
    3691cc6a7cd4:	49 c1 e3 08                                     	shl    r11,0x8
    3691cc6a7cd8:	4c 89 9d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r11
    3691cc6a7cdf:	49 f7 db                                        	neg    r11
    3691cc6a7ce2:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    3691cc6a7ce9:	4c 8b ca                                        	mov    r9,rdx
    3691cc6a7cec:	85 c9                                           	test   ecx,ecx
    3691cc6a7cee:	4d 0f 4f cb                                     	cmovg  r9,r11
    3691cc6a7cf2:	4c 89 8d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r9
    3691cc6a7cf9:	4c 8b 8d d8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x328]
    3691cc6a7d00:	85 f6                                           	test   esi,esi
    3691cc6a7d02:	4c 0f 4c ca                                     	cmovl  r9,rdx
    3691cc6a7d06:	85 c9                                           	test   ecx,ecx
    3691cc6a7d08:	4c 0f 4f da                                     	cmovg  r11,rdx
    3691cc6a7d0c:	c4 e3 f9 16 c9 00                               	vpextrq rcx,xmm1,0x0
    3691cc6a7d12:	48 8b f1                                        	mov    rsi,rcx
    3691cc6a7d15:	48 c1 e6 08                                     	shl    rsi,0x8
    3691cc6a7d19:	4c 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r11
    3691cc6a7d20:	c4 41 79 7e f3                                  	vmovd  r11d,xmm14
    3691cc6a7d25:	4c 89 4d 98                                     	mov    QWORD PTR [rbp-0x68],r9
    3691cc6a7d29:	4c 8b ca                                        	mov    r9,rdx
    3691cc6a7d2c:	45 85 db                                        	test   r11d,r11d
    3691cc6a7d2f:	4c 0f 4c ce                                     	cmovl  r9,rsi
    3691cc6a7d33:	48 89 b5 a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rsi
    3691cc6a7d3a:	c4 e3 f9 16 ce 01                               	vpextrq rsi,xmm1,0x1
    3691cc6a7d40:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    3691cc6a7d47:	4c 8b ce                                        	mov    r9,rsi
    3691cc6a7d4a:	49 c1 e1 08                                     	shl    r9,0x8
    3691cc6a7d4e:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    3691cc6a7d55:	49 f7 d9                                        	neg    r9
    3691cc6a7d58:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    3691cc6a7d5f:	c4 43 79 16 f7 01                               	vpextrd r15d,xmm14,0x1
    3691cc6a7d65:	48 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rbx
    3691cc6a7d6c:	48 8b da                                        	mov    rbx,rdx
    3691cc6a7d6f:	45 85 ff                                        	test   r15d,r15d
    3691cc6a7d72:	49 0f 4f d9                                     	cmovg  rbx,r9
    3691cc6a7d76:	48 89 9d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rbx
    3691cc6a7d7d:	48 8b 9d a0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x360]
    3691cc6a7d84:	45 85 db                                        	test   r11d,r11d
    3691cc6a7d87:	48 0f 4c da                                     	cmovl  rbx,rdx
    3691cc6a7d8b:	45 85 ff                                        	test   r15d,r15d
    3691cc6a7d8e:	4c 0f 4f ca                                     	cmovg  r9,rdx
    3691cc6a7d92:	47 8b 9c 20 a4 00 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0xa4]
    3691cc6a7d9a:	c5 fb 11 75 80                                  	vmovsd QWORD PTR [rbp-0x80],xmm6
    3691cc6a7d9f:	c5 f8 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm2
    3691cc6a7da7:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    3691cc6a7dab:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    3691cc6a7db2:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    3691cc6a7db9:	48 89 b5 c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rsi
    3691cc6a7dc0:	45 85 db                                        	test   r11d,r11d
    3691cc6a7dc3:	0f 85 b6 00 00 00                               	jne    0x3691cc6a7e7f
    3691cc6a7dc9:	47 8b bc 20 30 05 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x530]
    3691cc6a7dd1:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    3691cc6a7dda:	0f 85 9f 00 00 00                               	jne    0x3691cc6a7e7f
    3691cc6a7de0:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    3691cc6a7de8:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    3691cc6a7df1:	0f 85 88 00 00 00                               	jne    0x3691cc6a7e7f
    3691cc6a7df7:	47 8b bc 20 70 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3770]
    3691cc6a7dff:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    3691cc6a7e08:	0f 85 71 00 00 00                               	jne    0x3691cc6a7e7f
    3691cc6a7e0e:	47 8b bc 20 74 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3774]
    3691cc6a7e16:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    3691cc6a7e1f:	0f 85 5a 00 00 00                               	jne    0x3691cc6a7e7f
    3691cc6a7e25:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    3691cc6a7e29:	41 8b d7                                        	mov    edx,r15d
    3691cc6a7e2c:	4c 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r11
    3691cc6a7e33:	45 8b 9c 10 30 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x130]
    3691cc6a7e3b:	41 83 bc 10 30 01 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x130],0x0
    3691cc6a7e44:	0f 84 16 00 00 00                               	je     0x3691cc6a7e60
    3691cc6a7e4a:	45 8b 9c 10 34 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x134]
    3691cc6a7e52:	41 83 eb 01                                     	sub    r11d,0x1
    3691cc6a7e56:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6a7e5a:	0f 87 11 00 00 00                               	ja     0x3691cc6a7e71
    3691cc6a7e60:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc6a7e65:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    3691cc6a7e6c:	e9 10 00 00 00                                  	jmp    0x3691cc6a7e81
    3691cc6a7e71:	33 d2                                           	xor    edx,edx
    3691cc6a7e73:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    3691cc6a7e7a:	e9 02 00 00 00                                  	jmp    0x3691cc6a7e81
    3691cc6a7e7f:	33 d2                                           	xor    edx,edx
    3691cc6a7e81:	4c 8b bd 30 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xd0]
    3691cc6a7e88:	4c 0f af bd 08 ff ff ff                         	imul   r15,QWORD PTR [rbp-0xf8]
    3691cc6a7e90:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    3691cc6a7e97:	48 8b 55 88                                     	mov    rdx,QWORD PTR [rbp-0x78]
    3691cc6a7e9b:	48 0f af 95 18 ff ff ff                         	imul   rdx,QWORD PTR [rbp-0xe8]
    3691cc6a7ea3:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    3691cc6a7eaa:	48 8b 95 10 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xf0]
    3691cc6a7eb1:	48 0f af d0                                     	imul   rdx,rax
    3691cc6a7eb5:	48 8b 85 78 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x88]
    3691cc6a7ebc:	48 0f af c7                                     	imul   rax,rdi
    3691cc6a7ec0:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    3691cc6a7ec7:	48 0f af fe                                     	imul   rdi,rsi
    3691cc6a7ecb:	48 8b b5 28 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xd8]
    3691cc6a7ed2:	48 0f af f1                                     	imul   rsi,rcx
    3691cc6a7ed6:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6a7edb:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6a7ee1:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6a7ee7:	c4 41 2a 5e c9                                  	vdivss xmm9,xmm10,xmm9
    3691cc6a7eec:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    3691cc6a7ef1:	48 8b 8d 10 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1f0]
    3691cc6a7ef8:	c4 41 7a 10 64 08 1c                            	vmovss xmm12,DWORD PTR [r8+rcx*1+0x1c]
    3691cc6a7eff:	48 89 7d 88                                     	mov    QWORD PTR [rbp-0x78],rdi
    3691cc6a7f03:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    3691cc6a7f0a:	c4 41 7a 10 6c 38 1c                            	vmovss xmm13,DWORD PTR [r8+rdi*1+0x1c]
    3691cc6a7f11:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    3691cc6a7f18:	c4 41 7a 10 74 08 1c                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x1c]
    3691cc6a7f1f:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    3691cc6a7f26:	48 8b bd 58 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa8]
    3691cc6a7f2d:	48 03 f9                                        	add    rdi,rcx
    3691cc6a7f30:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    3691cc6a7f37:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    3691cc6a7f3e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    3691cc6a7f45:	48 03 f9                                        	add    rdi,rcx
    3691cc6a7f48:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    3691cc6a7f4f:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    3691cc6a7f56:	48 8b 8d 48 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb8]
    3691cc6a7f5d:	48 03 f9                                        	add    rdi,rcx
    3691cc6a7f60:	48 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rdi
    3691cc6a7f67:	48 8b bd b0 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x150]
    3691cc6a7f6e:	48 8b 4d 98                                     	mov    rcx,QWORD PTR [rbp-0x68]
    3691cc6a7f72:	48 03 f9                                        	add    rdi,rcx
    3691cc6a7f75:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    3691cc6a7f79:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    3691cc6a7f80:	48 8b 8d c8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x138]
    3691cc6a7f87:	48 03 f9                                        	add    rdi,rcx
    3691cc6a7f8a:	49 03 d9                                        	add    rbx,r9
    3691cc6a7f8d:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    3691cc6a7f91:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    3691cc6a7f99:	c5 7b 11 8d 28 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d8],xmm9
    3691cc6a7fa1:	c5 7b 11 a5 e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm12
    3691cc6a7fa9:	c5 7b 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm13
    3691cc6a7fb1:	c5 7b 11 b5 18 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1e8],xmm14
    3691cc6a7fb9:	4c 89 8d 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],r9
    3691cc6a7fc0:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    3691cc6a7fc9:	0f 85 0a 00 00 00                               	jne    0x3691cc6a7fd9
    3691cc6a7fcf:	33 c9                                           	xor    ecx,ecx
    3691cc6a7fd1:	44 8b d9                                        	mov    r11d,ecx
    3691cc6a7fd4:	e9 47 01 00 00                                  	jmp    0x3691cc6a8120
    3691cc6a7fd9:	43 8b 8c 20 c8 3c 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x3cc8]
    3691cc6a7fe1:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    3691cc6a7fea:	75 e3                                           	jne    0x3691cc6a7fcf
    3691cc6a7fec:	43 8b 8c 20 ec 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xec]
    3691cc6a7ff4:	43 83 bc 20 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xec],0x0
    3691cc6a7ffd:	75 d0                                           	jne    0x3691cc6a7fcf
    3691cc6a7fff:	43 8b 8c 20 80 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x80]
    3691cc6a8007:	47 0b 9c 20 80 00 00 00                         	or     r11d,DWORD PTR [r8+r12*1+0x80]
    3691cc6a800f:	0f 85 5c 00 00 00                               	jne    0x3691cc6a8071
    3691cc6a8015:	47 8b 9c 20 30 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x530]
    3691cc6a801d:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    3691cc6a8026:	0f 85 45 00 00 00                               	jne    0x3691cc6a8071
    3691cc6a802c:	47 8b 9c 20 70 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3770]
    3691cc6a8034:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    3691cc6a803d:	0f 85 2e 00 00 00                               	jne    0x3691cc6a8071
    3691cc6a8043:	47 8b 9c 20 74 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3774]
    3691cc6a804b:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    3691cc6a8054:	0f 85 17 00 00 00                               	jne    0x3691cc6a8071
    3691cc6a805a:	47 8b 9c 20 20 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x520]
    3691cc6a8062:	43 83 bc 20 20 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x520],0x0
    3691cc6a806b:	0f 85 0d 00 00 00                               	jne    0x3691cc6a807e
    3691cc6a8071:	b9 01 00 00 00                                  	mov    ecx,0x1
    3691cc6a8076:	45 33 db                                        	xor    r11d,r11d
    3691cc6a8079:	e9 a2 00 00 00                                  	jmp    0x3691cc6a8120
    3691cc6a807e:	47 8b 9c 20 24 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x524]
    3691cc6a8086:	43 83 bc 20 24 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x524],0x0
    3691cc6a808f:	74 e0                                           	je     0x3691cc6a8071
    3691cc6a8091:	47 8b 9c 20 28 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x528]
    3691cc6a8099:	43 83 bc 20 28 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x528],0x0
    3691cc6a80a2:	74 cd                                           	je     0x3691cc6a8071
    3691cc6a80a4:	47 8b 9c 20 2c 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x52c]
    3691cc6a80ac:	43 83 bc 20 2c 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x52c],0x0
    3691cc6a80b5:	74 ba                                           	je     0x3691cc6a8071
    3691cc6a80b7:	47 8b 5c 20 74                                  	mov    r11d,DWORD PTR [r8+r12*1+0x74]
    3691cc6a80bc:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    3691cc6a80c2:	0f 85 0d 00 00 00                               	jne    0x3691cc6a80d5
    3691cc6a80c8:	b9 01 00 00 00                                  	mov    ecx,0x1
    3691cc6a80cd:	44 8b d9                                        	mov    r11d,ecx
    3691cc6a80d0:	e9 4b 00 00 00                                  	jmp    0x3691cc6a8120
    3691cc6a80d5:	47 8b 5c 20 78                                  	mov    r11d,DWORD PTR [r8+r12*1+0x78]
    3691cc6a80da:	33 c9                                           	xor    ecx,ecx
    3691cc6a80dc:	41 81 fb 02 03 00 00                            	cmp    r11d,0x302
    3691cc6a80e3:	0f 95 c1                                        	setne  cl
    3691cc6a80e6:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6a80ea:	41 0f 95 c3                                     	setne  r11b
    3691cc6a80ee:	45 0f b6 db                                     	movzx  r11d,r11b
    3691cc6a80f2:	44 85 d9                                        	test   ecx,r11d
    3691cc6a80f5:	0f 85 76 ff ff ff                               	jne    0x3691cc6a8071
    3691cc6a80fb:	47 8b 5c 20 7c                                  	mov    r11d,DWORD PTR [r8+r12*1+0x7c]
    3691cc6a8100:	33 c9                                           	xor    ecx,ecx
    3691cc6a8102:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6a8106:	0f 94 c1                                        	sete   cl
    3691cc6a8109:	41 81 fb 03 03 00 00                            	cmp    r11d,0x303
    3691cc6a8110:	41 0f 94 c3                                     	sete   r11b
    3691cc6a8114:	45 0f b6 db                                     	movzx  r11d,r11b
    3691cc6a8118:	44 0b d9                                        	or     r11d,ecx
    3691cc6a811b:	b9 01 00 00 00                                  	mov    ecx,0x1
    3691cc6a8120:	4c 8b 85 30 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd0]
    3691cc6a8127:	4d 2b c7                                        	sub    r8,r15
    3691cc6a812a:	48 2b c2                                        	sub    rax,rdx
    3691cc6a812d:	48 2b 75 88                                     	sub    rsi,QWORD PTR [rbp-0x78]
    3691cc6a8131:	44 8b 7d c8                                     	mov    r15d,DWORD PTR [rbp-0x38]
    3691cc6a8135:	41 8d 97 dc 36 00 00                            	lea    edx,[r15+0x36dc]
    3691cc6a813c:	4c 89 9d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],r11
    3691cc6a8143:	45 8d 9f 68 36 00 00                            	lea    r11d,[r15+0x3668]
    3691cc6a814a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    3691cc6a8151:	41 8d 97 f4 35 00 00                            	lea    edx,[r15+0x35f4]
    3691cc6a8158:	4c 8b 8d 20 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe0]
    3691cc6a815f:	49 c1 e1 09                                     	shl    r9,0x9
    3691cc6a8163:	48 89 8d 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rcx
    3691cc6a816a:	48 8b 8d 18 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xe8]
    3691cc6a8171:	48 c1 e1 09                                     	shl    rcx,0x9
    3691cc6a8175:	4c 89 85 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r8
    3691cc6a817c:	4c 8b 45 90                                     	mov    r8,QWORD PTR [rbp-0x70]
    3691cc6a8180:	49 c1 e0 09                                     	shl    r8,0x9
    3691cc6a8184:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    3691cc6a818b:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    3691cc6a8192:	48 c1 e6 09                                     	shl    rsi,0x9
    3691cc6a8196:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    3691cc6a819a:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    3691cc6a81a1:	49 c1 e0 09                                     	shl    r8,0x9
    3691cc6a81a5:	48 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rax
    3691cc6a81ac:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    3691cc6a81b3:	48 c1 e0 09                                     	shl    rax,0x9
    3691cc6a81b7:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    3691cc6a81be:	4c 8b 8d f8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x308]
    3691cc6a81c5:	4c 2b 8d f0 fc ff ff                            	sub    r9,QWORD PTR [rbp-0x310]
    3691cc6a81cc:	4c 89 9d 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],r11
    3691cc6a81d3:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    3691cc6a81da:	4c 2b 9d d0 fc ff ff                            	sub    r11,QWORD PTR [rbp-0x330]
    3691cc6a81e1:	4c 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r8
    3691cc6a81e8:	44 8b 45 b0                                     	mov    r8d,DWORD PTR [rbp-0x50]
    3691cc6a81ec:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    3691cc6a81f3:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    3691cc6a81f7:	44 8b 45 b8                                     	mov    r8d,DWORD PTR [rbp-0x48]
    3691cc6a81fb:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    3691cc6a8202:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    3691cc6a8206:	44 8b 45 c0                                     	mov    r8d,DWORD PTR [rbp-0x40]
    3691cc6a820a:	4c 89 9d 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],r11
    3691cc6a8211:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    3691cc6a8215:	45 8d 87 80 35 00 00                            	lea    r8d,[r15+0x3580]
    3691cc6a821c:	4c 89 85 b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r8
    3691cc6a8223:	45 8d 87 cc 3c 00 00                            	lea    r8d,[r15+0x3ccc]
    3691cc6a822a:	48 f7 d7                                        	not    rdi
    3691cc6a822d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    3691cc6a8234:	49 f7 d7                                        	not    r15
    3691cc6a8237:	48 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rdi
    3691cc6a823e:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    3691cc6a8245:	48 f7 d7                                        	not    rdi
    3691cc6a8248:	48 f7 db                                        	neg    rbx
    3691cc6a824b:	48 89 9d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rbx
    3691cc6a8252:	48 8b 9d 70 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x90]
    3691cc6a8259:	48 f7 db                                        	neg    rbx
    3691cc6a825c:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    3691cc6a8263:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    3691cc6a8267:	48 f7 df                                        	neg    rdi
    3691cc6a826a:	48 89 bd 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],rdi
    3691cc6a8271:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6a8274:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    3691cc6a827b:	44 8d 47 30                                     	lea    r8d,[rdi+0x30]
    3691cc6a827f:	4c 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],r8
    3691cc6a8286:	44 8d 47 20                                     	lea    r8d,[rdi+0x20]
    3691cc6a828a:	4c 89 85 b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r8
    3691cc6a8291:	44 8d 47 10                                     	lea    r8d,[rdi+0x10]
    3691cc6a8295:	c5 79 7e df                                     	vmovd  edi,xmm11
    3691cc6a8299:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    3691cc6a82a0:	c4 63 79 16 df 01                               	vpextrd edi,xmm11,0x1
    3691cc6a82a6:	c4 62 79 18 de                                  	vbroadcastss xmm11,xmm6
    3691cc6a82ab:	c4 c2 79 18 cc                                  	vbroadcastss xmm1,xmm12
    3691cc6a82b0:	c4 c2 79 18 dd                                  	vbroadcastss xmm3,xmm13
    3691cc6a82b5:	c4 c2 79 18 e6                                  	vbroadcastss xmm4,xmm14
    3691cc6a82ba:	c4 c2 79 18 e9                                  	vbroadcastss xmm5,xmm9
    3691cc6a82bf:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    3691cc6a82c6:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    3691cc6a82ca:	48 89 b5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rsi
    3691cc6a82d1:	48 89 85 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rax
    3691cc6a82d8:	4c 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r9
    3691cc6a82df:	4c 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r11
    3691cc6a82e6:	4c 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r15
    3691cc6a82ed:	48 89 9d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rbx
    3691cc6a82f4:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    3691cc6a82fb:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    3691cc6a82ff:	c5 78 11 9d 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm11
    3691cc6a8307:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    3691cc6a830f:	c5 f8 11 9d 10 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2f0],xmm3
    3691cc6a8317:	c5 f8 11 a5 e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm4
    3691cc6a831f:	c5 f8 11 ad 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm5
    3691cc6a8327:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6a832b:	e9 2d 00 00 00                                  	jmp    0x3691cc6a835d
    3691cc6a8330:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6a8339:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    3691cc6a8340:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    3691cc6a8347:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    3691cc6a834e:	4c 89 bd 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r15
    3691cc6a8355:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6a8359:	4c 89 65 d8                                     	mov    QWORD PTR [rbp-0x28],r12
    3691cc6a835d:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    3691cc6a8361:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc6a8366:	0f 85 96 7d 00 00                               	jne    0x3691cc6b0102
    3691cc6a836c:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
    3691cc6a8370:	b8 0f 00 00 00                                  	mov    eax,0xf
    3691cc6a8375:	be 03 00 00 00                                  	mov    esi,0x3
    3691cc6a837a:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    3691cc6a837e:	0f 4c f0                                        	cmovl  esi,eax
    3691cc6a8381:	46 8d 1c 8d 00 00 00 00                         	lea    r11d,[r9*4+0x0]
    3691cc6a8389:	41 83 e3 7c                                     	and    r11d,0x7c
    3691cc6a838d:	46 8d 0c 85 00 00 00 00                         	lea    r9d,[r8*4+0x0]
    3691cc6a8395:	41 83 e1 7c                                     	and    r9d,0x7c
    3691cc6a8399:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    3691cc6a83a0:	48 89 b5 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rsi
    3691cc6a83a7:	4c 89 9d 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r11
    3691cc6a83ae:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    3691cc6a83b5:	4c 8b 95 38 fc ff ff                            	mov    r10,QWORD PTR [rbp-0x3c8]
    3691cc6a83bc:	4c 89 95 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],r10
    3691cc6a83c3:	4c 8b 95 10 ff ff ff                            	mov    r10,QWORD PTR [rbp-0xf0]
    3691cc6a83ca:	4c 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r10
    3691cc6a83d1:	4c 8b c8                                        	mov    r9,rax
    3691cc6a83d4:	48 8b 85 80 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x380]
    3691cc6a83db:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    3691cc6a83df:	e9 31 00 00 00                                  	jmp    0x3691cc6a8415
    3691cc6a83e4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6a83ed:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6a83f6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6a83ff:	90                                              	nop
    3691cc6a8400:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    3691cc6a8407:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    3691cc6a840e:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6a8412:	45 8b c3                                        	mov    r8d,r11d
    3691cc6a8415:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    3691cc6a841c:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    3691cc6a8423:	4c 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r8
    3691cc6a842a:	48 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rax
    3691cc6a8431:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc6a8436:	0f 85 0f 7d 00 00                               	jne    0x3691cc6b014b
    3691cc6a843c:	48 8b f0                                        	mov    rsi,rax
    3691cc6a843f:	48 2b b5 98 fc ff ff                            	sub    rsi,QWORD PTR [rbp-0x368]
    3691cc6a8446:	48 3b b5 20 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x3e0]
    3691cc6a844d:	0f 8c 4b 02 00 00                               	jl     0x3691cc6a869e
    3691cc6a8453:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    3691cc6a845a:	4c 2b a5 30 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x3d0]
    3691cc6a8461:	4c 3b a5 90 fd ff ff                            	cmp    r12,QWORD PTR [rbp-0x270]
    3691cc6a8468:	0f 8c 30 02 00 00                               	jl     0x3691cc6a869e
    3691cc6a846e:	4c 8b bd 40 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc0]
    3691cc6a8475:	4c 2b bd 28 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x3d8]
    3691cc6a847c:	4c 3b bd 48 fc ff ff                            	cmp    r15,QWORD PTR [rbp-0x3b8]
    3691cc6a8483:	0f 8c 15 02 00 00                               	jl     0x3691cc6a869e
    3691cc6a8489:	41 8d 40 01                                     	lea    eax,[r8+0x1]
    3691cc6a848d:	41 b8 05 00 00 00                               	mov    r8d,0x5
    3691cc6a8493:	3b 85 70 ff ff ff                               	cmp    eax,DWORD PTR [rbp-0x90]
    3691cc6a8499:	45 0f 4c c1                                     	cmovl  r8d,r9d
    3691cc6a849d:	8b 9d 60 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a0]
    3691cc6a84a3:	41 23 d8                                        	and    ebx,r8d
    3691cc6a84a6:	48 3b b5 68 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x398]
    3691cc6a84ad:	0f 8e 29 00 00 00                               	jle    0x3691cc6a84dc
    3691cc6a84b3:	4c 3b a5 c0 fe ff ff                            	cmp    r12,QWORD PTR [rbp-0x140]
    3691cc6a84ba:	0f 8e 1c 00 00 00                               	jle    0x3691cc6a84dc
    3691cc6a84c0:	4d 3b df                                        	cmp    r11,r15
    3691cc6a84c3:	0f 8d 13 00 00 00                               	jge    0x3691cc6a84dc
    3691cc6a84c9:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    3691cc6a84d0:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    3691cc6a84d7:	e9 d7 01 00 00                                  	jmp    0x3691cc6a86b3
    3691cc6a84dc:	c4 c1 f9 6e c4                                  	vmovq  xmm0,r12
    3691cc6a84e1:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    3691cc6a84e5:	4d 8b c4                                        	mov    r8,r12
    3691cc6a84e8:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    3691cc6a84ef:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    3691cc6a84f5:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    3691cc6a84f9:	c5 c1 73 f7 1f                                  	vpsllq xmm7,xmm7,0x1f
    3691cc6a84fe:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6a8502:	c4 62 79 37 df                                  	vpcmpgtq xmm11,xmm0,xmm7
    3691cc6a8507:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    3691cc6a850b:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    3691cc6a8510:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6a8515:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    3691cc6a851a:	c4 c1 21 73 d3 21                               	vpsrlq xmm11,xmm11,0x21
    3691cc6a8520:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    3691cc6a8525:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    3691cc6a852a:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    3691cc6a852f:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    3691cc6a8533:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6a8538:	4c 03 e7                                        	add    r12,rdi
    3691cc6a853b:	c4 c1 f9 6e cc                                  	vmovq  xmm1,r12
    3691cc6a8540:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    3691cc6a8544:	4c 03 c7                                        	add    r8,rdi
    3691cc6a8547:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    3691cc6a854d:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    3691cc6a8552:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    3691cc6a8556:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    3691cc6a855a:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc6a855f:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    3691cc6a8564:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    3691cc6a8569:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    3691cc6a856d:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc6a8572:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    3691cc6a8577:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    3691cc6a857b:	c4 e1 f9 6e c6                                  	vmovq  xmm0,rsi
    3691cc6a8580:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    3691cc6a8584:	4c 8b e6                                        	mov    r12,rsi
    3691cc6a8587:	4c 2b a5 d0 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x330]
    3691cc6a858e:	c4 c3 f9 22 c4 01                               	vpinsrq xmm0,xmm0,r12,0x1
    3691cc6a8594:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    3691cc6a8599:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    3691cc6a859d:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    3691cc6a85a1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6a85a6:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    3691cc6a85ab:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    3691cc6a85b0:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    3691cc6a85b4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6a85b9:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    3691cc6a85c0:	48 03 f7                                        	add    rsi,rdi
    3691cc6a85c3:	c4 e1 f9 6e ce                                  	vmovq  xmm1,rsi
    3691cc6a85c8:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    3691cc6a85cc:	4c 03 e7                                        	add    r12,rdi
    3691cc6a85cf:	c4 c3 f1 22 cc 01                               	vpinsrq xmm1,xmm1,r12,0x1
    3691cc6a85d5:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    3691cc6a85da:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    3691cc6a85de:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    3691cc6a85e2:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc6a85e7:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    3691cc6a85ec:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    3691cc6a85f1:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    3691cc6a85f5:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    3691cc6a85fa:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    3691cc6a85ff:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    3691cc6a8603:	45 0b e0                                        	or     r12d,r8d
    3691cc6a8606:	c4 c1 f9 6e c7                                  	vmovq  xmm0,r15
    3691cc6a860b:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    3691cc6a860f:	4d 8b c7                                        	mov    r8,r15
    3691cc6a8612:	4c 2b 85 e8 fe ff ff                            	sub    r8,QWORD PTR [rbp-0x118]
    3691cc6a8619:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    3691cc6a861f:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    3691cc6a8624:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    3691cc6a8628:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    3691cc6a862c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6a8631:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    3691cc6a8636:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    3691cc6a863b:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    3691cc6a863f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6a8644:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    3691cc6a864b:	4c 03 fe                                        	add    r15,rsi
    3691cc6a864e:	c4 c1 f9 6e cf                                  	vmovq  xmm1,r15
    3691cc6a8653:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    3691cc6a8657:	4c 03 c6                                        	add    r8,rsi
    3691cc6a865a:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    3691cc6a8660:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    3691cc6a8665:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    3691cc6a8669:	c5 f1 db fa                                     	vpand  xmm7,xmm1,xmm2
    3691cc6a866d:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6a8672:	c4 e2 21 37 cf                                  	vpcmpgtq xmm1,xmm11,xmm7
    3691cc6a8677:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    3691cc6a867c:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    3691cc6a8680:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6a8685:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    3691cc6a868a:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    3691cc6a868e:	45 0b c4                                        	or     r8d,r12d
    3691cc6a8691:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    3691cc6a8695:	44 23 c3                                        	and    r8d,ebx
    3691cc6a8698:	0f 85 12 00 00 00                               	jne    0x3691cc6a86b0
    3691cc6a869e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6a86a2:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6a86a6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6a86ab:	e9 ba 77 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6a86b0:	49 8b d8                                        	mov    rbx,r8
    3691cc6a86b3:	45 33 c0                                        	xor    r8d,r8d
    3691cc6a86b6:	3b 45 10                                        	cmp    eax,DWORD PTR [rbp+0x10]
    3691cc6a86b9:	41 0f 9c c0                                     	setl   r8b
    3691cc6a86bd:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    3691cc6a86c4:	48 89 9d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],rbx
    3691cc6a86cb:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    3691cc6a86d2:	45 85 e0                                        	test   r8d,r12d
    3691cc6a86d5:	0f 85 6d 5b 00 00                               	jne    0x3691cc6ae248
    3691cc6a86db:	83 bd 78 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x388],0x0
    3691cc6a86e2:	0f 85 70 2a 00 00                               	jne    0x3691cc6ab158
    3691cc6a86e8:	f6 c3 01                                        	test   bl,0x1
    3691cc6a86eb:	0f 85 28 00 00 00                               	jne    0x3691cc6a8719
    3691cc6a86f1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6a86f5:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    3691cc6a86fb:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    3691cc6a86ff:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    3691cc6a8706:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    3691cc6a870d:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    3691cc6a8714:	e9 86 0a 00 00                                  	jmp    0x3691cc6a919f
    3691cc6a8719:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6a871d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    3691cc6a8721:	43 8b bc 07 c8 3c 00 00                         	mov    edi,DWORD PTR [r15+r8*1+0x3cc8]
    3691cc6a8729:	43 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0x3cc8],0x0
    3691cc6a8732:	0f 84 66 00 00 00                               	je     0x3691cc6a879e
    3691cc6a8738:	8b bd 68 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x98]
    3691cc6a873e:	c1 ef 03                                        	shr    edi,0x3
    3691cc6a8741:	83 e7 03                                        	and    edi,0x3
    3691cc6a8744:	0b bd 70 fc ff ff                               	or     edi,DWORD PTR [rbp-0x390]
    3691cc6a874a:	44 8b 9d 58 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3a8]
    3691cc6a8751:	41 03 fb                                        	add    edi,r11d
    3691cc6a8754:	41 0f b6 3c 3f                                  	movzx  edi,BYTE PTR [r15+rdi*1]
    3691cc6a8759:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    3691cc6a8760:	41 83 e3 07                                     	and    r11d,0x7
    3691cc6a8764:	41 8b cb                                        	mov    ecx,r11d
    3691cc6a8767:	d3 e7                                           	shl    edi,cl
    3691cc6a8769:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    3691cc6a876d:	40 f6 c7 80                                     	test   dil,0x80
    3691cc6a8771:	0f 85 20 00 00 00                               	jne    0x3691cc6a8797
    3691cc6a8777:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    3691cc6a877d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    3691cc6a8784:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    3691cc6a878b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    3691cc6a8792:	e9 08 0a 00 00                                  	jmp    0x3691cc6a919f
    3691cc6a8797:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    3691cc6a879e:	c4 e1 82 2a 85 60 ff ff ff                      	vcvtsi2ss xmm0,xmm15,QWORD PTR [rbp-0xa0]
    3691cc6a87a7:	c5 b2 59 c0                                     	vmulss xmm0,xmm9,xmm0
    3691cc6a87ab:	c5 8a 59 c8                                     	vmulss xmm1,xmm14,xmm0
    3691cc6a87af:	c4 e1 82 2a bd 50 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xb0]
    3691cc6a87b8:	c5 b2 59 ff                                     	vmulss xmm7,xmm9,xmm7
    3691cc6a87bc:	c5 92 59 d7                                     	vmulss xmm2,xmm13,xmm7
    3691cc6a87c0:	c5 72 58 da                                     	vaddss xmm11,xmm1,xmm2
    3691cc6a87c4:	c5 2a 5c c8                                     	vsubss xmm9,xmm10,xmm0
    3691cc6a87c8:	c5 32 5c cf                                     	vsubss xmm9,xmm9,xmm7
    3691cc6a87cc:	c4 41 1a 59 e9                                  	vmulss xmm13,xmm12,xmm9
    3691cc6a87d1:	c4 41 22 58 dd                                  	vaddss xmm11,xmm11,xmm13
    3691cc6a87d6:	c4 41 78 2e c3                                  	vucomiss xmm8,xmm11
    3691cc6a87db:	73 9a                                           	jae    0x3691cc6a8777
    3691cc6a87dd:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    3691cc6a87e4:	c4 41 32 59 4c 3f 18                            	vmulss xmm9,xmm9,DWORD PTR [r15+rdi*1+0x18]
    3691cc6a87eb:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    3691cc6a87f2:	c4 c1 7a 59 44 0f 18                            	vmulss xmm0,xmm0,DWORD PTR [r15+rcx*1+0x18]
    3691cc6a87f9:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    3691cc6a8800:	c4 81 42 59 7c 1f 18                            	vmulss xmm7,xmm7,DWORD PTR [r15+r11*1+0x18]
    3691cc6a8807:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    3691cc6a880b:	c5 b2 58 c0                                     	vaddss xmm0,xmm9,xmm0
    3691cc6a880f:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    3691cc6a8813:	47 8b 64 07 68                                  	mov    r12d,DWORD PTR [r15+r8*1+0x68]
    3691cc6a8818:	43 83 7c 07 68 00                               	cmp    DWORD PTR [r15+r8*1+0x68],0x0
    3691cc6a881e:	0f 85 0b 00 00 00                               	jne    0x3691cc6a882f
    3691cc6a8824:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    3691cc6a882a:	e9 c5 00 00 00                                  	jmp    0x3691cc6a88f4
    3691cc6a882f:	47 8b a4 07 a4 00 00 00                         	mov    r12d,DWORD PTR [r15+r8*1+0xa4]
    3691cc6a8837:	43 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0xa4],0x0
    3691cc6a8840:	75 e2                                           	jne    0x3691cc6a8824
    3691cc6a8842:	47 8b 64 07 0c                                  	mov    r12d,DWORD PTR [r15+r8*1+0xc]
    3691cc6a8847:	43 8b 04 07                                     	mov    eax,DWORD PTR [r15+r8*1]
    3691cc6a884b:	0f af 45 a0                                     	imul   eax,DWORD PTR [rbp-0x60]
    3691cc6a884f:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    3691cc6a8853:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    3691cc6a8859:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    3691cc6a885d:	c4 81 7a 10 3c 27                               	vmovss xmm7,DWORD PTR [r15+r12*1]
    3691cc6a8863:	47 8b 64 07 6c                                  	mov    r12d,DWORD PTR [r15+r8*1+0x6c]
    3691cc6a8868:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    3691cc6a886f:	41 83 fc 08                                     	cmp    r12d,0x8
    3691cc6a8873:	0f 83 0b 00 00 00                               	jae    0x3691cc6a8884
    3691cc6a8879:	4c 8d 15 e8 7c 00 00                            	lea    r10,[rip+0x7ce8]        # 0x3691cc6b0568
    3691cc6a8880:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    3691cc6a8884:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc6a8888:	0f 87 66 00 00 00                               	ja     0x3691cc6a88f4
    3691cc6a888e:	e9 0c 09 00 00                                  	jmp    0x3691cc6a919f
    3691cc6a8893:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    3691cc6a8897:	0f 83 57 00 00 00                               	jae    0x3691cc6a88f4
    3691cc6a889d:	e9 fd 08 00 00                                  	jmp    0x3691cc6a919f
    3691cc6a88a2:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    3691cc6a88a6:	0f 8a 48 00 00 00                               	jp     0x3691cc6a88f4
    3691cc6a88ac:	0f 84 ed 08 00 00                               	je     0x3691cc6a919f
    3691cc6a88b2:	e9 3d 00 00 00                                  	jmp    0x3691cc6a88f4
    3691cc6a88b7:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    3691cc6a88bb:	0f 87 33 00 00 00                               	ja     0x3691cc6a88f4
    3691cc6a88c1:	e9 d9 08 00 00                                  	jmp    0x3691cc6a919f
    3691cc6a88c6:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc6a88ca:	0f 83 24 00 00 00                               	jae    0x3691cc6a88f4
    3691cc6a88d0:	e9 ca 08 00 00                                  	jmp    0x3691cc6a919f
    3691cc6a88d5:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    3691cc6a88d9:	0f 8a c0 08 00 00                               	jp     0x3691cc6a919f
    3691cc6a88df:	0f 84 0f 00 00 00                               	je     0x3691cc6a88f4
    3691cc6a88e5:	e9 b5 08 00 00                                  	jmp    0x3691cc6a919f
    3691cc6a88ea:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc6a88ee:	0f 86 ab 08 00 00                               	jbe    0x3691cc6a919f
    3691cc6a88f4:	c4 c1 2a 5e fb                                  	vdivss xmm7,xmm10,xmm11
    3691cc6a88f9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    3691cc6a88fd:	c4 62 79 18 cf                                  	vbroadcastss xmm9,xmm7
    3691cc6a8902:	c4 41 7a 6f 5c 3f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rdi*1+0x20]
    3691cc6a8909:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    3691cc6a8911:	c4 c2 79 18 c5                                  	vbroadcastss xmm0,xmm13
    3691cc6a8916:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    3691cc6a891a:	c4 41 7a 6f 5c 0f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rcx*1+0x20]
    3691cc6a8921:	c4 e2 79 18 f1                                  	vbroadcastss xmm6,xmm1
    3691cc6a8926:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    3691cc6a892a:	c4 62 79 18 da                                  	vbroadcastss xmm11,xmm2
    3691cc6a892f:	c5 fb 11 bd 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm7
    3691cc6a8937:	c4 81 7a 6f 7c 1f 20                            	vmovdqu xmm7,XMMWORD PTR [r15+r11*1+0x20]
    3691cc6a893e:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    3691cc6a8942:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    3691cc6a8946:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc6a894a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc6a894e:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    3691cc6a8952:	c4 81 7a 7f 84 27 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+r12*1+0x190],xmm0
    3691cc6a895c:	c4 c1 7a 10 b4 3f 98 00 00 00                   	vmovss xmm6,DWORD PTR [r15+rdi*1+0x98]
    3691cc6a8966:	c4 c1 7a 10 bc 0f 98 00 00 00                   	vmovss xmm7,DWORD PTR [r15+rcx*1+0x98]
    3691cc6a8970:	c4 01 7a 10 8c 1f 98 00 00 00                   	vmovss xmm9,DWORD PTR [r15+r11*1+0x98]
    3691cc6a897a:	c4 81 7a 7f 04 27                               	vmovdqu XMMWORD PTR [r15+r12*1],xmm0
    3691cc6a8980:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a8987:	45 8b 84 3f 34 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x134]
    3691cc6a898f:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    3691cc6a8993:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    3691cc6a899b:	c5 fb 11 8d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm1
    3691cc6a89a3:	c5 7b 11 ad 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm13
    3691cc6a89ab:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    3691cc6a89b3:	c5 fb 11 bd b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm7
    3691cc6a89bb:	c5 7b 11 8d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm9
    3691cc6a89c3:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6a89c7:	0f 86 5c 04 00 00                               	jbe    0x3691cc6a8e29
    3691cc6a89cd:	45 8b 84 3f 30 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x130]
    3691cc6a89d5:	41 83 bc 3f 30 01 00 00 00                      	cmp    DWORD PTR [r15+rdi*1+0x130],0x0
    3691cc6a89de:	0f 85 0b 00 00 00                               	jne    0x3691cc6a89ef
    3691cc6a89e4:	41 8b cc                                        	mov    ecx,r12d
    3691cc6a89e7:	4d 8b c7                                        	mov    r8,r15
    3691cc6a89ea:	e9 f9 04 00 00                                  	jmp    0x3691cc6a8ee8
    3691cc6a89ef:	45 8d 84 24 90 00 00 00                         	lea    r8d,[r12+0x90]
    3691cc6a89f7:	45 8d 5c 24 70                                  	lea    r11d,[r12+0x70]
    3691cc6a89fc:	41 53                                           	push   r11
    3691cc6a89fe:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    3691cc6a8a05:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    3691cc6a8a0c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a8a10:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6a8a13:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6a8a16:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    3691cc6a8a19:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6a8a1c:	c4 c1 79 28 dd                                  	vmovapd xmm3,xmm13
    3691cc6a8a21:	c5 fb 10 a5 18 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xe8]
    3691cc6a8a29:	45 8b c8                                        	mov    r9d,r8d
    3691cc6a8a2c:	e8 e7 87 f1 ff                                  	call   0x3691cc5c1218
    3691cc6a8a31:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a8a35:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a8a3c:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    3691cc6a8a44:	45 85 db                                        	test   r11d,r11d
    3691cc6a8a47:	0f 85 62 01 00 00                               	jne    0x3691cc6a8baf
    3691cc6a8a4d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a8a50:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    3691cc6a8a55:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    3691cc6a8a5b:	0f 84 43 00 00 00                               	je     0x3691cc6a8aa4
    3691cc6a8a61:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a8a67:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a8a6b:	41 53                                           	push   r11
    3691cc6a8a6d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a8a71:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    3691cc6a8a77:	33 d2                                           	xor    edx,edx
    3691cc6a8a79:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    3691cc6a8a80:	e8 bb 87 f1 ff                                  	call   0x3691cc5c1240
    3691cc6a8a85:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a8a88:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a8a8c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6a8a93:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a8a9d:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a8aa4:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    3691cc6a8aa9:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    3691cc6a8aaf:	0f 84 46 00 00 00                               	je     0x3691cc6a8afb
    3691cc6a8ab5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a8abb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a8abf:	41 53                                           	push   r11
    3691cc6a8ac1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a8ac5:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    3691cc6a8acb:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc6a8ad0:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    3691cc6a8ad7:	e8 64 87 f1 ff                                  	call   0x3691cc5c1240
    3691cc6a8adc:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a8adf:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a8ae3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6a8aea:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a8af4:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a8afb:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    3691cc6a8b00:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    3691cc6a8b06:	0f 84 46 00 00 00                               	je     0x3691cc6a8b52
    3691cc6a8b0c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a8b12:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a8b16:	41 53                                           	push   r11
    3691cc6a8b18:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a8b1c:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    3691cc6a8b22:	ba 02 00 00 00                                  	mov    edx,0x2
    3691cc6a8b27:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    3691cc6a8b2e:	e8 0d 87 f1 ff                                  	call   0x3691cc5c1240
    3691cc6a8b33:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a8b36:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a8b3a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6a8b41:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a8b4b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a8b52:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    3691cc6a8b57:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    3691cc6a8b5d:	0f 84 85 03 00 00                               	je     0x3691cc6a8ee8
    3691cc6a8b63:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a8b69:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a8b6d:	41 53                                           	push   r11
    3691cc6a8b6f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a8b73:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    3691cc6a8b79:	ba 03 00 00 00                                  	mov    edx,0x3
    3691cc6a8b7e:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    3691cc6a8b85:	e8 b6 86 f1 ff                                  	call   0x3691cc5c1240
    3691cc6a8b8a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a8b8d:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    3691cc6a8b91:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    3691cc6a8b97:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    3691cc6a8ba0:	4c 8b c7                                        	mov    r8,rdi
    3691cc6a8ba3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a8baa:	e9 39 03 00 00                                  	jmp    0x3691cc6a8ee8
    3691cc6a8baf:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a8bb2:	4d 8b e0                                        	mov    r12,r8
    3691cc6a8bb5:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    3691cc6a8bbf:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    3691cc6a8bc5:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6a8bca:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a8bce:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    3691cc6a8bd5:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6a8bd9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6a8bdd:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    3691cc6a8be7:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6a8beb:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    3691cc6a8bf1:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6a8bf5:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    3691cc6a8bfa:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    3691cc6a8c04:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6a8c08:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    3691cc6a8c0f:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    3691cc6a8c13:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    3691cc6a8c17:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    3691cc6a8c1b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a8c1f:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    3691cc6a8c25:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6a8c2a:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    3691cc6a8c2e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc6a8c32:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc6a8c37:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc6a8c3c:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    3691cc6a8c40:	0f 87 09 00 00 00                               	ja     0x3691cc6a8c4f
    3691cc6a8c46:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc6a8c4a:	e9 04 00 00 00                                  	jmp    0x3691cc6a8c53
    3691cc6a8c4f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6a8c53:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6a8c58:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc6a8c5c:	0f 87 09 00 00 00                               	ja     0x3691cc6a8c6b
    3691cc6a8c62:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc6a8c66:	e9 05 00 00 00                                  	jmp    0x3691cc6a8c70
    3691cc6a8c6b:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc6a8c70:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc6a8c75:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6a8c79:	0f 84 a4 00 00 00                               	je     0x3691cc6a8d23
    3691cc6a8c7f:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    3691cc6a8c83:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    3691cc6a8c8d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6a8c91:	0f 87 09 00 00 00                               	ja     0x3691cc6a8ca0
    3691cc6a8c97:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6a8c9b:	e9 04 00 00 00                                  	jmp    0x3691cc6a8ca4
    3691cc6a8ca0:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6a8ca4:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6a8ca8:	0f 87 0a 00 00 00                               	ja     0x3691cc6a8cb8
    3691cc6a8cae:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6a8cb3:	e9 05 00 00 00                                  	jmp    0x3691cc6a8cbd
    3691cc6a8cb8:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6a8cbd:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    3691cc6a8cc1:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6a8cc6:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6a8ccb:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6a8ccf:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    3691cc6a8cd9:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6a8cde:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6a8ce3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6a8ce7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    3691cc6a8cf1:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc6a8cf5:	0f 85 04 00 00 00                               	jne    0x3691cc6a8cff
    3691cc6a8cfb:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    3691cc6a8cff:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc6a8d04:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6a8d08:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6a8d0c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    3691cc6a8d16:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc6a8d1b:	4d 8b df                                        	mov    r11,r15
    3691cc6a8d1e:	e9 cc 00 00 00                                  	jmp    0x3691cc6a8def
    3691cc6a8d23:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    3691cc6a8d2a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6a8d2e:	0f 87 09 00 00 00                               	ja     0x3691cc6a8d3d
    3691cc6a8d34:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6a8d38:	e9 04 00 00 00                                  	jmp    0x3691cc6a8d41
    3691cc6a8d3d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6a8d41:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6a8d45:	0f 87 0a 00 00 00                               	ja     0x3691cc6a8d55
    3691cc6a8d4b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6a8d50:	e9 05 00 00 00                                  	jmp    0x3691cc6a8d5a
    3691cc6a8d55:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6a8d5a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    3691cc6a8d64:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    3691cc6a8d6a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    3691cc6a8d6f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6a8d73:	0f 87 09 00 00 00                               	ja     0x3691cc6a8d82
    3691cc6a8d79:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc6a8d7d:	e9 04 00 00 00                                  	jmp    0x3691cc6a8d86
    3691cc6a8d82:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc6a8d86:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6a8d8a:	0f 87 0a 00 00 00                               	ja     0x3691cc6a8d9a
    3691cc6a8d90:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc6a8d95:	e9 05 00 00 00                                  	jmp    0x3691cc6a8d9f
    3691cc6a8d9a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6a8d9f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    3691cc6a8da9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6a8dae:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6a8db2:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    3691cc6a8dbc:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6a8dc1:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6a8dc6:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6a8dca:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x3691cc6a8cd1
    3691cc6a8dd1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6a8dd6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6a8ddb:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6a8ddf:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc6a8de3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6a8de7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6a8deb:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc6a8def:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6a8df4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6a8df8:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x3691cc6a8cd1
    3691cc6a8dff:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6a8e04:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6a8e09:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    3691cc6a8e0d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    3691cc6a8e17:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    3691cc6a8e21:	4d 8b c4                                        	mov    r8,r12
    3691cc6a8e24:	e9 bf 00 00 00                                  	jmp    0x3691cc6a8ee8
    3691cc6a8e29:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    3691cc6a8e30:	c4 81 7a 10 44 1f 50                            	vmovss xmm0,DWORD PTR [r15+r11*1+0x50]
    3691cc6a8e37:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    3691cc6a8e3c:	48 8b d1                                        	mov    rdx,rcx
    3691cc6a8e3f:	c4 41 7a 10 5c 17 50                            	vmovss xmm11,DWORD PTR [r15+rdx*1+0x50]
    3691cc6a8e46:	c5 22 59 d9                                     	vmulss xmm11,xmm11,xmm1
    3691cc6a8e4a:	48 8b 8d 00 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x200]
    3691cc6a8e51:	c4 c1 6a 59 74 0f 50                            	vmulss xmm6,xmm2,DWORD PTR [r15+rcx*1+0x50]
    3691cc6a8e58:	c5 a2 58 f6                                     	vaddss xmm6,xmm11,xmm6
    3691cc6a8e5c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a8e60:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    3691cc6a8e68:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6a8e6c:	c4 01 7a 10 5c 1f 54                            	vmovss xmm11,DWORD PTR [r15+r11*1+0x54]
    3691cc6a8e73:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    3691cc6a8e78:	c5 fb 11 85 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm0
    3691cc6a8e80:	c4 c1 7a 10 44 17 54                            	vmovss xmm0,DWORD PTR [r15+rdx*1+0x54]
    3691cc6a8e87:	c5 fa 59 c1                                     	vmulss xmm0,xmm0,xmm1
    3691cc6a8e8b:	c4 c1 6a 59 7c 0f 54                            	vmulss xmm7,xmm2,DWORD PTR [r15+rcx*1+0x54]
    3691cc6a8e92:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    3691cc6a8e96:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    3691cc6a8e9a:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6a8e9e:	41 8d bc 24 90 00 00 00                         	lea    edi,[r12+0x90]
    3691cc6a8ea6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a8eaa:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6a8ead:	41 8b d0                                        	mov    edx,r8d
    3691cc6a8eb0:	c5 fb 10 8d b8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x148]
    3691cc6a8eb8:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc6a8ebc:	41 8b cc                                        	mov    ecx,r12d
    3691cc6a8ebf:	8b df                                           	mov    ebx,edi
    3691cc6a8ec1:	e8 6a 86 f1 ff                                  	call   0x3691cc5c1530
    3691cc6a8ec6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a8ec9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a8ecd:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    3691cc6a8ed7:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a8ee1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a8ee8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6a8eec:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    3691cc6a8ef4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    3691cc6a8efd:	0f 85 2a 00 00 00                               	jne    0x3691cc6a8f2d
    3691cc6a8f03:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    3691cc6a8f0d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    3691cc6a8f17:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc6a8f21:	49 8b fb                                        	mov    rdi,r11
    3691cc6a8f24:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc6a8f28:	e9 dd 01 00 00                                  	jmp    0x3691cc6a910a
    3691cc6a8f2d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    3691cc6a8f35:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    3691cc6a8f3d:	c5 fb 10 b5 b0 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x150]
    3691cc6a8f45:	c5 ca 59 b5 30 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1d0]
    3691cc6a8f4d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    3691cc6a8f55:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    3691cc6a8f5d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc6a8f61:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a8f65:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    3691cc6a8f6d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6a8f71:	4c 8b 15 37 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb37]        # 0x3691cc6a7aaf
    3691cc6a8f78:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6a8f7d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    3691cc6a8f81:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc6a8f85:	0f 87 04 00 00 00                               	ja     0x3691cc6a8f8f
    3691cc6a8f8b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc6a8f8f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    3691cc6a8f97:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    3691cc6a8f9e:	0f 85 28 00 00 00                               	jne    0x3691cc6a8fcc
    3691cc6a8fa4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    3691cc6a8fae:	4c 8b 15 fa ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeafa]        # 0x3691cc6a7aaf
    3691cc6a8fb5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc6a8fba:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    3691cc6a8fbe:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a8fc2:	e8 f9 a5 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6a8fc7:	e9 94 00 00 00                                  	jmp    0x3691cc6a9060
    3691cc6a8fcc:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc6a8fd0:	0f 84 67 00 00 00                               	je     0x3691cc6a903d
    3691cc6a8fd6:	4d 8b d0                                        	mov    r10,r8
    3691cc6a8fd9:	4d 8b c3                                        	mov    r8,r11
    3691cc6a8fdc:	4d 8b da                                        	mov    r11,r10
    3691cc6a8fdf:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    3691cc6a8fe9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    3691cc6a8ff3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    3691cc6a8ff8:	7a 06                                           	jp     0x3691cc6a9000
    3691cc6a8ffa:	0f 84 2a 00 00 00                               	je     0x3691cc6a902a
    3691cc6a9000:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc6a9004:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    3691cc6a9009:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    3691cc6a900d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    3691cc6a9011:	0f 86 49 00 00 00                               	jbe    0x3691cc6a9060
    3691cc6a9017:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6a901b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6a9020:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6a9025:	e9 5b 00 00 00                                  	jmp    0x3691cc6a9085
    3691cc6a902a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6a902e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6a9033:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6a9038:	e9 44 00 00 00                                  	jmp    0x3691cc6a9081
    3691cc6a903d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    3691cc6a9047:	4c 8b 15 61 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea61]        # 0x3691cc6a7aaf
    3691cc6a904e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6a9053:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    3691cc6a9057:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a905b:	e8 60 a5 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6a9060:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6a9064:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6a9069:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6a906e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    3691cc6a9072:	0f 87 09 00 00 00                               	ja     0x3691cc6a9081
    3691cc6a9078:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    3691cc6a907c:	e9 04 00 00 00                                  	jmp    0x3691cc6a9085
    3691cc6a9081:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc6a9085:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a9088:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a908c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc6a9096:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    3691cc6a909a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    3691cc6a909e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    3691cc6a90a8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    3691cc6a90ad:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    3691cc6a90b7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    3691cc6a90c1:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    3691cc6a90cb:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    3691cc6a90d0:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    3691cc6a90da:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    3691cc6a90e4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    3691cc6a90ee:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    3691cc6a90f3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    3691cc6a90fd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc6a9101:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6a9105:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc6a910a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    3691cc6a9114:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a9118:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6a911b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6a9121:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc6a9124:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    3691cc6a912c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    3691cc6a9130:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    3691cc6a9134:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    3691cc6a9139:	e8 22 81 f1 ff                                  	call   0x3691cc5c1260
    3691cc6a913e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6a9142:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6a9147:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    3691cc6a914d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    3691cc6a9151:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6a9156:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6a915c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6a9162:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6a9167:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    3691cc6a916e:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    3691cc6a9175:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    3691cc6a917c:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    3691cc6a9182:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6a918a:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6a9192:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    3691cc6a9199:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6a919f:	f6 c3 02                                        	test   bl,0x2
    3691cc6a91a2:	0f 85 26 00 00 00                               	jne    0x3691cc6a91ce
    3691cc6a91a8:	4d 8b e7                                        	mov    r12,r15
    3691cc6a91ab:	4c 8b f9                                        	mov    r15,rcx
    3691cc6a91ae:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    3691cc6a91b4:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6a91bc:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6a91c4:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    3691cc6a91c9:	e9 b5 0a 00 00                                  	jmp    0x3691cc6a9c83
    3691cc6a91ce:	4d 8b e7                                        	mov    r12,r15
    3691cc6a91d1:	47 8b bc 04 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x3cc8]
    3691cc6a91d9:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    3691cc6a91e2:	0f 84 75 00 00 00                               	je     0x3691cc6a925d
    3691cc6a91e8:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    3691cc6a91ef:	41 c1 ef 03                                     	shr    r15d,0x3
    3691cc6a91f3:	41 83 e7 03                                     	and    r15d,0x3
    3691cc6a91f7:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    3691cc6a91fd:	41 0b d7                                        	or     edx,r15d
    3691cc6a9200:	44 8b bd 58 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3a8]
    3691cc6a9207:	41 03 d7                                        	add    edx,r15d
    3691cc6a920a:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    3691cc6a920f:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    3691cc6a9215:	83 e0 07                                        	and    eax,0x7
    3691cc6a9218:	4c 8b d1                                        	mov    r10,rcx
    3691cc6a921b:	8b c8                                           	mov    ecx,eax
    3691cc6a921d:	49 8b c2                                        	mov    rax,r10
    3691cc6a9220:	d3 e2                                           	shl    edx,cl
    3691cc6a9222:	f6 c2 80                                        	test   dl,0x80
    3691cc6a9225:	0f 85 29 00 00 00                               	jne    0x3691cc6a9254
    3691cc6a922b:	4c 8b f8                                        	mov    r15,rax
    3691cc6a922e:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    3691cc6a9234:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    3691cc6a923a:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6a9242:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6a924a:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    3691cc6a924f:	e9 2f 0a 00 00                                  	jmp    0x3691cc6a9c83
    3691cc6a9254:	48 8b c8                                        	mov    rcx,rax
    3691cc6a9257:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    3691cc6a925d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    3691cc6a9264:	4c 2b bd d0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x330]
    3691cc6a926b:	c4 c1 82 2a c7                                  	vcvtsi2ss xmm0,xmm15,r15
    3691cc6a9270:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6a9278:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    3691cc6a927c:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    3691cc6a9281:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    3691cc6a9285:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    3691cc6a928c:	4c 2b bd f0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x310]
    3691cc6a9293:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    3691cc6a9298:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    3691cc6a929d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6a92a5:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    3691cc6a92aa:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    3691cc6a92ae:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    3691cc6a92b2:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    3691cc6a92b7:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    3691cc6a92bb:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    3691cc6a92bf:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    3691cc6a92c4:	0f 83 b0 09 00 00                               	jae    0x3691cc6a9c7a
    3691cc6a92ca:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    3691cc6a92d1:	4c 8b f9                                        	mov    r15,rcx
    3691cc6a92d4:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    3691cc6a92db:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    3691cc6a92e2:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    3691cc6a92e7:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    3691cc6a92eb:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    3691cc6a92ef:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    3691cc6a92f4:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    3691cc6a92fa:	0f 85 0b 00 00 00                               	jne    0x3691cc6a930b
    3691cc6a9300:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    3691cc6a9306:	e9 c5 00 00 00                                  	jmp    0x3691cc6a93d0
    3691cc6a930b:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    3691cc6a9313:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    3691cc6a931c:	75 e2                                           	jne    0x3691cc6a9300
    3691cc6a931e:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    3691cc6a9323:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    3691cc6a9327:	0f af 4d a0                                     	imul   ecx,DWORD PTR [rbp-0x60]
    3691cc6a932b:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    3691cc6a932e:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    3691cc6a9334:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    3691cc6a9337:	c4 41 7a 10 1c 14                               	vmovss xmm11,DWORD PTR [r12+rdx*1]
    3691cc6a933d:	43 8b 54 04 6c                                  	mov    edx,DWORD PTR [r12+r8*1+0x6c]
    3691cc6a9342:	81 ea 00 02 00 00                               	sub    edx,0x200
    3691cc6a9348:	83 fa 08                                        	cmp    edx,0x8
    3691cc6a934b:	0f 83 0b 00 00 00                               	jae    0x3691cc6a935c
    3691cc6a9351:	4c 8d 15 d0 71 00 00                            	lea    r10,[rip+0x71d0]        # 0x3691cc6b0528
    3691cc6a9358:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    3691cc6a935c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6a9360:	0f 87 6a 00 00 00                               	ja     0x3691cc6a93d0
    3691cc6a9366:	e9 18 09 00 00                                  	jmp    0x3691cc6a9c83
    3691cc6a936b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6a9370:	0f 83 5a 00 00 00                               	jae    0x3691cc6a93d0
    3691cc6a9376:	e9 08 09 00 00                                  	jmp    0x3691cc6a9c83
    3691cc6a937b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6a9380:	0f 8a 4a 00 00 00                               	jp     0x3691cc6a93d0
    3691cc6a9386:	0f 84 f7 08 00 00                               	je     0x3691cc6a9c83
    3691cc6a938c:	e9 3f 00 00 00                                  	jmp    0x3691cc6a93d0
    3691cc6a9391:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6a9396:	0f 87 34 00 00 00                               	ja     0x3691cc6a93d0
    3691cc6a939c:	e9 e2 08 00 00                                  	jmp    0x3691cc6a9c83
    3691cc6a93a1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6a93a5:	0f 83 25 00 00 00                               	jae    0x3691cc6a93d0
    3691cc6a93ab:	e9 d3 08 00 00                                  	jmp    0x3691cc6a9c83
    3691cc6a93b0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6a93b5:	0f 8a c8 08 00 00                               	jp     0x3691cc6a9c83
    3691cc6a93bb:	0f 84 0f 00 00 00                               	je     0x3691cc6a93d0
    3691cc6a93c1:	e9 bd 08 00 00                                  	jmp    0x3691cc6a9c83
    3691cc6a93c6:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6a93ca:	0f 86 b3 08 00 00                               	jbe    0x3691cc6a9c83
    3691cc6a93d0:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    3691cc6a93d5:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    3691cc6a93da:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    3691cc6a93df:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    3691cc6a93e6:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    3691cc6a93eb:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    3691cc6a93ef:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    3691cc6a93f6:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    3691cc6a93fe:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc6a9403:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    3691cc6a9407:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    3691cc6a940c:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    3691cc6a9413:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    3691cc6a9417:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc6a941b:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    3691cc6a941f:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    3691cc6a9423:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    3691cc6a9426:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    3691cc6a9430:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    3691cc6a943a:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    3691cc6a9444:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    3691cc6a944e:	c4 c1 7a 7f 04 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm0
    3691cc6a9454:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a945b:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    3691cc6a9463:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    3691cc6a9467:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    3691cc6a946f:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    3691cc6a9477:	c5 fb 11 a5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm4
    3691cc6a947f:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    3691cc6a9487:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    3691cc6a948f:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    3691cc6a9497:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    3691cc6a949f:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6a94a3:	0f 86 4b 04 00 00                               	jbe    0x3691cc6a98f4
    3691cc6a94a9:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    3691cc6a94b1:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    3691cc6a94ba:	0f 85 0a 00 00 00                               	jne    0x3691cc6a94ca
    3691cc6a94c0:	8b ca                                           	mov    ecx,edx
    3691cc6a94c2:	4d 8b c4                                        	mov    r8,r12
    3691cc6a94c5:	e9 de 04 00 00                                  	jmp    0x3691cc6a99a8
    3691cc6a94ca:	44 8d 82 90 00 00 00                            	lea    r8d,[rdx+0x90]
    3691cc6a94d1:	44 8d 5a 70                                     	lea    r11d,[rdx+0x70]
    3691cc6a94d5:	41 53                                           	push   r11
    3691cc6a94d7:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    3691cc6a94de:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a94e2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6a94e5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6a94e8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    3691cc6a94eb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6a94ee:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    3691cc6a94f2:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc6a94f7:	45 8b c8                                        	mov    r9d,r8d
    3691cc6a94fa:	e8 19 7d f1 ff                                  	call   0x3691cc5c1218
    3691cc6a94ff:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a9503:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a950a:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    3691cc6a9512:	45 85 db                                        	test   r11d,r11d
    3691cc6a9515:	0f 85 62 01 00 00                               	jne    0x3691cc6a967d
    3691cc6a951b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a951e:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    3691cc6a9523:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    3691cc6a9529:	0f 84 43 00 00 00                               	je     0x3691cc6a9572
    3691cc6a952f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a9535:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a9539:	41 53                                           	push   r11
    3691cc6a953b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a953f:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    3691cc6a9545:	33 d2                                           	xor    edx,edx
    3691cc6a9547:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    3691cc6a954e:	e8 ed 7c f1 ff                                  	call   0x3691cc5c1240
    3691cc6a9553:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a9556:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a955a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6a9561:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a956b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a9572:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    3691cc6a9577:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    3691cc6a957d:	0f 84 46 00 00 00                               	je     0x3691cc6a95c9
    3691cc6a9583:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a9589:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a958d:	41 53                                           	push   r11
    3691cc6a958f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a9593:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    3691cc6a9599:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc6a959e:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    3691cc6a95a5:	e8 96 7c f1 ff                                  	call   0x3691cc5c1240
    3691cc6a95aa:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a95ad:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a95b1:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6a95b8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a95c2:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a95c9:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    3691cc6a95ce:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    3691cc6a95d4:	0f 84 46 00 00 00                               	je     0x3691cc6a9620
    3691cc6a95da:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a95e0:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a95e4:	41 53                                           	push   r11
    3691cc6a95e6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a95ea:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    3691cc6a95f0:	ba 02 00 00 00                                  	mov    edx,0x2
    3691cc6a95f5:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    3691cc6a95fc:	e8 3f 7c f1 ff                                  	call   0x3691cc5c1240
    3691cc6a9601:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a9604:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a9608:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6a960f:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a9619:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a9620:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    3691cc6a9625:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    3691cc6a962b:	0f 84 77 03 00 00                               	je     0x3691cc6a99a8
    3691cc6a9631:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a9637:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a963b:	41 53                                           	push   r11
    3691cc6a963d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a9641:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    3691cc6a9647:	ba 03 00 00 00                                  	mov    edx,0x3
    3691cc6a964c:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    3691cc6a9653:	e8 e8 7b f1 ff                                  	call   0x3691cc5c1240
    3691cc6a9658:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a965b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    3691cc6a965f:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    3691cc6a9665:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    3691cc6a966e:	4c 8b c7                                        	mov    r8,rdi
    3691cc6a9671:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a9678:	e9 2b 03 00 00                                  	jmp    0x3691cc6a99a8
    3691cc6a967d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a9680:	4d 8b e0                                        	mov    r12,r8
    3691cc6a9683:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    3691cc6a968d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    3691cc6a9693:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6a9698:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a969c:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    3691cc6a96a3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6a96a7:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6a96ab:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    3691cc6a96b5:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6a96b9:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    3691cc6a96bf:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6a96c3:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    3691cc6a96c8:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    3691cc6a96d2:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6a96d6:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    3691cc6a96dd:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    3691cc6a96e1:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    3691cc6a96e5:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    3691cc6a96e9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a96ed:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    3691cc6a96f3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6a96f8:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    3691cc6a96fc:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc6a9700:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc6a9705:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc6a970a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    3691cc6a970e:	0f 87 09 00 00 00                               	ja     0x3691cc6a971d
    3691cc6a9714:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc6a9718:	e9 04 00 00 00                                  	jmp    0x3691cc6a9721
    3691cc6a971d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6a9721:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6a9726:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc6a972a:	0f 87 09 00 00 00                               	ja     0x3691cc6a9739
    3691cc6a9730:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc6a9734:	e9 05 00 00 00                                  	jmp    0x3691cc6a973e
    3691cc6a9739:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc6a973e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc6a9743:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6a9747:	0f 84 a1 00 00 00                               	je     0x3691cc6a97ee
    3691cc6a974d:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    3691cc6a9751:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    3691cc6a975b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6a975f:	0f 87 09 00 00 00                               	ja     0x3691cc6a976e
    3691cc6a9765:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6a9769:	e9 04 00 00 00                                  	jmp    0x3691cc6a9772
    3691cc6a976e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6a9772:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6a9776:	0f 87 0a 00 00 00                               	ja     0x3691cc6a9786
    3691cc6a977c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6a9781:	e9 05 00 00 00                                  	jmp    0x3691cc6a978b
    3691cc6a9786:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6a978b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    3691cc6a978f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6a9794:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6a9799:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6a979d:	4c 8b 15 2d f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52d]        # 0x3691cc6a8cd1
    3691cc6a97a4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6a97a9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6a97ae:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6a97b2:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    3691cc6a97bc:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc6a97c0:	0f 85 04 00 00 00                               	jne    0x3691cc6a97ca
    3691cc6a97c6:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    3691cc6a97ca:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc6a97cf:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6a97d3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6a97d7:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    3691cc6a97e1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc6a97e6:	4d 8b df                                        	mov    r11,r15
    3691cc6a97e9:	e9 cc 00 00 00                                  	jmp    0x3691cc6a98ba
    3691cc6a97ee:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    3691cc6a97f5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6a97f9:	0f 87 09 00 00 00                               	ja     0x3691cc6a9808
    3691cc6a97ff:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6a9803:	e9 04 00 00 00                                  	jmp    0x3691cc6a980c
    3691cc6a9808:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6a980c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6a9810:	0f 87 0a 00 00 00                               	ja     0x3691cc6a9820
    3691cc6a9816:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6a981b:	e9 05 00 00 00                                  	jmp    0x3691cc6a9825
    3691cc6a9820:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6a9825:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    3691cc6a982f:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    3691cc6a9835:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    3691cc6a983a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6a983e:	0f 87 09 00 00 00                               	ja     0x3691cc6a984d
    3691cc6a9844:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc6a9848:	e9 04 00 00 00                                  	jmp    0x3691cc6a9851
    3691cc6a984d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc6a9851:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6a9855:	0f 87 0a 00 00 00                               	ja     0x3691cc6a9865
    3691cc6a985b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc6a9860:	e9 05 00 00 00                                  	jmp    0x3691cc6a986a
    3691cc6a9865:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6a986a:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    3691cc6a9874:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6a9879:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6a987d:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    3691cc6a9887:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6a988c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6a9891:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6a9895:	4c 8b 15 35 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff435]        # 0x3691cc6a8cd1
    3691cc6a989c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6a98a1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6a98a6:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6a98aa:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc6a98ae:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6a98b2:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6a98b6:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc6a98ba:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6a98bf:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6a98c3:	4c 8b 15 07 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff407]        # 0x3691cc6a8cd1
    3691cc6a98ca:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6a98cf:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6a98d4:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    3691cc6a98d8:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    3691cc6a98e2:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    3691cc6a98ec:	4d 8b c4                                        	mov    r8,r12
    3691cc6a98ef:	e9 b4 00 00 00                                  	jmp    0x3691cc6a99a8
    3691cc6a98f4:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    3691cc6a98fb:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    3691cc6a9902:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    3691cc6a9906:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    3691cc6a990d:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc6a9911:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    3691cc6a9918:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    3691cc6a991f:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    3691cc6a9923:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a9927:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    3691cc6a992c:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6a9930:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    3691cc6a9937:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    3691cc6a993b:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    3691cc6a9942:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc6a9946:	c5 fb 11 85 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm0
    3691cc6a994e:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    3691cc6a9955:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    3691cc6a9959:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    3691cc6a995d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6a9961:	8d ba 90 00 00 00                               	lea    edi,[rdx+0x90]
    3691cc6a9967:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a996b:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6a996e:	8b ca                                           	mov    ecx,edx
    3691cc6a9970:	41 8b d0                                        	mov    edx,r8d
    3691cc6a9973:	c5 fb 10 8d 30 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
    3691cc6a997b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc6a997f:	8b df                                           	mov    ebx,edi
    3691cc6a9981:	e8 aa 7b f1 ff                                  	call   0x3691cc5c1530
    3691cc6a9986:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a9989:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a998d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    3691cc6a9997:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a99a1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a99a8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6a99ac:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    3691cc6a99b4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    3691cc6a99bd:	0f 85 2a 00 00 00                               	jne    0x3691cc6a99ed
    3691cc6a99c3:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    3691cc6a99cd:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    3691cc6a99d7:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc6a99e1:	49 8b fb                                        	mov    rdi,r11
    3691cc6a99e4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc6a99e8:	e9 dd 01 00 00                                  	jmp    0x3691cc6a9bca
    3691cc6a99ed:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    3691cc6a99f5:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    3691cc6a99fd:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    3691cc6a9a05:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    3691cc6a9a0d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    3691cc6a9a15:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    3691cc6a9a1d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc6a9a21:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6a9a25:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    3691cc6a9a2d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6a9a31:	4c 8b 15 77 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe077]        # 0x3691cc6a7aaf
    3691cc6a9a38:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6a9a3d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    3691cc6a9a41:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc6a9a45:	0f 87 04 00 00 00                               	ja     0x3691cc6a9a4f
    3691cc6a9a4b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc6a9a4f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    3691cc6a9a57:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    3691cc6a9a5e:	0f 85 28 00 00 00                               	jne    0x3691cc6a9a8c
    3691cc6a9a64:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    3691cc6a9a6e:	4c 8b 15 3a e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe03a]        # 0x3691cc6a7aaf
    3691cc6a9a75:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc6a9a7a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    3691cc6a9a7e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a9a82:	e8 39 9b f1 ff                                  	call   0x3691cc5c35c0
    3691cc6a9a87:	e9 94 00 00 00                                  	jmp    0x3691cc6a9b20
    3691cc6a9a8c:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc6a9a90:	0f 84 67 00 00 00                               	je     0x3691cc6a9afd
    3691cc6a9a96:	4d 8b d0                                        	mov    r10,r8
    3691cc6a9a99:	4d 8b c3                                        	mov    r8,r11
    3691cc6a9a9c:	4d 8b da                                        	mov    r11,r10
    3691cc6a9a9f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    3691cc6a9aa9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    3691cc6a9ab3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    3691cc6a9ab8:	7a 06                                           	jp     0x3691cc6a9ac0
    3691cc6a9aba:	0f 84 2a 00 00 00                               	je     0x3691cc6a9aea
    3691cc6a9ac0:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc6a9ac4:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    3691cc6a9ac9:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    3691cc6a9acd:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    3691cc6a9ad1:	0f 86 49 00 00 00                               	jbe    0x3691cc6a9b20
    3691cc6a9ad7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6a9adb:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6a9ae0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6a9ae5:	e9 5b 00 00 00                                  	jmp    0x3691cc6a9b45
    3691cc6a9aea:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6a9aee:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6a9af3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6a9af8:	e9 44 00 00 00                                  	jmp    0x3691cc6a9b41
    3691cc6a9afd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    3691cc6a9b07:	4c 8b 15 a1 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdfa1]        # 0x3691cc6a7aaf
    3691cc6a9b0e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6a9b13:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    3691cc6a9b17:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a9b1b:	e8 a0 9a f1 ff                                  	call   0x3691cc5c35c0
    3691cc6a9b20:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6a9b24:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6a9b29:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6a9b2e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    3691cc6a9b32:	0f 87 09 00 00 00                               	ja     0x3691cc6a9b41
    3691cc6a9b38:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    3691cc6a9b3c:	e9 04 00 00 00                                  	jmp    0x3691cc6a9b45
    3691cc6a9b41:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc6a9b45:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a9b48:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a9b4c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc6a9b56:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    3691cc6a9b5a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    3691cc6a9b5e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    3691cc6a9b68:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    3691cc6a9b6d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    3691cc6a9b77:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    3691cc6a9b81:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    3691cc6a9b8b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    3691cc6a9b90:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    3691cc6a9b9a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    3691cc6a9ba4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    3691cc6a9bae:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    3691cc6a9bb3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    3691cc6a9bbd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc6a9bc1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6a9bc5:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc6a9bca:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    3691cc6a9bd4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a9bd8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6a9bdb:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc6a9be1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc6a9be4:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    3691cc6a9bec:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    3691cc6a9bf0:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    3691cc6a9bf4:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    3691cc6a9bf9:	e8 62 76 f1 ff                                  	call   0x3691cc5c1260
    3691cc6a9bfe:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6a9c02:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6a9c07:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    3691cc6a9c0d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    3691cc6a9c13:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6a9c17:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6a9c1c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6a9c22:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6a9c28:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6a9c2d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    3691cc6a9c34:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    3691cc6a9c3b:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    3691cc6a9c42:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    3691cc6a9c48:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6a9c50:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6a9c58:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6a9c60:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    3691cc6a9c68:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    3691cc6a9c6f:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6a9c75:	e9 09 00 00 00                                  	jmp    0x3691cc6a9c83
    3691cc6a9c7a:	4c 8b f9                                        	mov    r15,rcx
    3691cc6a9c7d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    3691cc6a9c83:	f6 c3 04                                        	test   bl,0x4
    3691cc6a9c86:	0f 85 0e 00 00 00                               	jne    0x3691cc6a9c9a
    3691cc6a9c8c:	8b d0                                           	mov    edx,eax
    3691cc6a9c8e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    3691cc6a9c95:	e9 70 0a 00 00                                  	jmp    0x3691cc6aa70a
    3691cc6a9c9a:	43 8b 94 04 c8 3c 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0x3cc8]
    3691cc6a9ca2:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    3691cc6a9cab:	0f 84 4d 00 00 00                               	je     0x3691cc6a9cfe
    3691cc6a9cb1:	8b d0                                           	mov    edx,eax
    3691cc6a9cb3:	c1 ea 03                                        	shr    edx,0x3
    3691cc6a9cb6:	83 e2 03                                        	and    edx,0x3
    3691cc6a9cb9:	0b 95 20 fe ff ff                               	or     edx,DWORD PTR [rbp-0x1e0]
    3691cc6a9cbf:	8b 9d 58 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a8]
    3691cc6a9cc5:	03 d3                                           	add    edx,ebx
    3691cc6a9cc7:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    3691cc6a9ccc:	8b d8                                           	mov    ebx,eax
    3691cc6a9cce:	83 e3 07                                        	and    ebx,0x7
    3691cc6a9cd1:	44 8b d1                                        	mov    r10d,ecx
    3691cc6a9cd4:	8b cb                                           	mov    ecx,ebx
    3691cc6a9cd6:	49 8b df                                        	mov    rbx,r15
    3691cc6a9cd9:	45 8b fa                                        	mov    r15d,r10d
    3691cc6a9cdc:	d3 e2                                           	shl    edx,cl
    3691cc6a9cde:	f6 c2 80                                        	test   dl,0x80
    3691cc6a9ce1:	0f 85 11 00 00 00                               	jne    0x3691cc6a9cf8
    3691cc6a9ce7:	8b d0                                           	mov    edx,eax
    3691cc6a9ce9:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    3691cc6a9cf0:	4c 8b fb                                        	mov    r15,rbx
    3691cc6a9cf3:	e9 12 0a 00 00                                  	jmp    0x3691cc6aa70a
    3691cc6a9cf8:	41 8b cf                                        	mov    ecx,r15d
    3691cc6a9cfb:	4c 8b fb                                        	mov    r15,rbx
    3691cc6a9cfe:	48 8b 95 60 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa0]
    3691cc6a9d05:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    3691cc6a9d0c:	48 8d 0c 13                                     	lea    rcx,[rbx+rdx*1]
    3691cc6a9d10:	c4 e1 82 2a c1                                  	vcvtsi2ss xmm0,xmm15,rcx
    3691cc6a9d15:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    3691cc6a9d19:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    3691cc6a9d1d:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    3691cc6a9d24:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    3691cc6a9d2b:	48 8d 14 0b                                     	lea    rdx,[rbx+rcx*1]
    3691cc6a9d2f:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    3691cc6a9d34:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    3691cc6a9d39:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    3691cc6a9d3e:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    3691cc6a9d42:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    3691cc6a9d46:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    3691cc6a9d4b:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    3691cc6a9d4f:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    3691cc6a9d53:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    3691cc6a9d58:	0f 83 aa 09 00 00                               	jae    0x3691cc6aa708
    3691cc6a9d5e:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    3691cc6a9d65:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    3691cc6a9d6c:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    3691cc6a9d73:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    3691cc6a9d78:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    3691cc6a9d7c:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    3691cc6a9d80:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    3691cc6a9d85:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    3691cc6a9d8b:	0f 85 07 00 00 00                               	jne    0x3691cc6a9d98
    3691cc6a9d91:	8b d0                                           	mov    edx,eax
    3691cc6a9d93:	e9 c3 00 00 00                                  	jmp    0x3691cc6a9e5b
    3691cc6a9d98:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    3691cc6a9da0:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    3691cc6a9da9:	75 e6                                           	jne    0x3691cc6a9d91
    3691cc6a9dab:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    3691cc6a9db0:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    3691cc6a9db4:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    3691cc6a9dbb:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    3691cc6a9dbe:	8b d0                                           	mov    edx,eax
    3691cc6a9dc0:	8d 04 93                                        	lea    eax,[rbx+rdx*4]
    3691cc6a9dc3:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    3691cc6a9dc9:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    3691cc6a9dce:	2d 00 02 00 00                                  	sub    eax,0x200
    3691cc6a9dd3:	83 f8 08                                        	cmp    eax,0x8
    3691cc6a9dd6:	0f 83 0b 00 00 00                               	jae    0x3691cc6a9de7
    3691cc6a9ddc:	4c 8d 15 05 67 00 00                            	lea    r10,[rip+0x6705]        # 0x3691cc6b04e8
    3691cc6a9de3:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    3691cc6a9de7:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6a9deb:	0f 87 6a 00 00 00                               	ja     0x3691cc6a9e5b
    3691cc6a9df1:	e9 14 09 00 00                                  	jmp    0x3691cc6aa70a
    3691cc6a9df6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6a9dfb:	0f 83 5a 00 00 00                               	jae    0x3691cc6a9e5b
    3691cc6a9e01:	e9 04 09 00 00                                  	jmp    0x3691cc6aa70a
    3691cc6a9e06:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6a9e0b:	0f 8a 4a 00 00 00                               	jp     0x3691cc6a9e5b
    3691cc6a9e11:	0f 84 f3 08 00 00                               	je     0x3691cc6aa70a
    3691cc6a9e17:	e9 3f 00 00 00                                  	jmp    0x3691cc6a9e5b
    3691cc6a9e1c:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6a9e21:	0f 87 34 00 00 00                               	ja     0x3691cc6a9e5b
    3691cc6a9e27:	e9 de 08 00 00                                  	jmp    0x3691cc6aa70a
    3691cc6a9e2c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6a9e30:	0f 83 25 00 00 00                               	jae    0x3691cc6a9e5b
    3691cc6a9e36:	e9 cf 08 00 00                                  	jmp    0x3691cc6aa70a
    3691cc6a9e3b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6a9e40:	0f 8a c4 08 00 00                               	jp     0x3691cc6aa70a
    3691cc6a9e46:	0f 84 0f 00 00 00                               	je     0x3691cc6a9e5b
    3691cc6a9e4c:	e9 b9 08 00 00                                  	jmp    0x3691cc6aa70a
    3691cc6a9e51:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6a9e55:	0f 86 af 08 00 00                               	jbe    0x3691cc6aa70a
    3691cc6a9e5b:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    3691cc6a9e60:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    3691cc6a9e65:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    3691cc6a9e6a:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    3691cc6a9e71:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    3691cc6a9e76:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    3691cc6a9e7a:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    3691cc6a9e81:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    3691cc6a9e89:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc6a9e8e:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    3691cc6a9e92:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    3691cc6a9e97:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    3691cc6a9e9e:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    3691cc6a9ea2:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc6a9ea6:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    3691cc6a9eaa:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    3691cc6a9eae:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    3691cc6a9eb1:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    3691cc6a9ebb:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    3691cc6a9ec5:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    3691cc6a9ecf:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    3691cc6a9ed9:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    3691cc6a9edf:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    3691cc6a9ee6:	41 8b bc 1c 34 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x134]
    3691cc6a9eee:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    3691cc6a9ef2:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    3691cc6a9efa:	c5 fb 11 8d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm1
    3691cc6a9f02:	c5 fb 11 a5 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm4
    3691cc6a9f0a:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    3691cc6a9f12:	c5 fb 11 b5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm6
    3691cc6a9f1a:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    3691cc6a9f22:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    3691cc6a9f2a:	41 83 f8 01                                     	cmp    r8d,0x1
    3691cc6a9f2e:	0f 86 4d 04 00 00                               	jbe    0x3691cc6aa381
    3691cc6a9f34:	41 8b bc 1c 30 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x130]
    3691cc6a9f3c:	41 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x130],0x0
    3691cc6a9f45:	0f 85 0d 00 00 00                               	jne    0x3691cc6a9f58
    3691cc6a9f4b:	8b c8                                           	mov    ecx,eax
    3691cc6a9f4d:	4d 8b c4                                        	mov    r8,r12
    3691cc6a9f50:	48 8b fb                                        	mov    rdi,rbx
    3691cc6a9f53:	e9 e0 04 00 00                                  	jmp    0x3691cc6aa438
    3691cc6a9f58:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    3691cc6a9f5e:	44 8d 40 70                                     	lea    r8d,[rax+0x70]
    3691cc6a9f62:	41 50                                           	push   r8
    3691cc6a9f64:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    3691cc6a9f6b:	44 8b 85 58 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3a8]
    3691cc6a9f72:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a9f76:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6a9f79:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6a9f7c:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    3691cc6a9f7f:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6a9f82:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    3691cc6a9f86:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc6a9f8b:	44 8b cf                                        	mov    r9d,edi
    3691cc6a9f8e:	e8 85 72 f1 ff                                  	call   0x3691cc5c1218
    3691cc6a9f93:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a9f97:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6a9f9e:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    3691cc6a9fa6:	45 85 db                                        	test   r11d,r11d
    3691cc6a9fa9:	0f 85 61 01 00 00                               	jne    0x3691cc6aa110
    3691cc6a9faf:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a9fb2:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    3691cc6a9fb7:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    3691cc6a9fbd:	0f 84 43 00 00 00                               	je     0x3691cc6aa006
    3691cc6a9fc3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6a9fc9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6a9fcd:	41 53                                           	push   r11
    3691cc6a9fcf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6a9fd3:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    3691cc6a9fd9:	33 d2                                           	xor    edx,edx
    3691cc6a9fdb:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    3691cc6a9fe2:	e8 59 72 f1 ff                                  	call   0x3691cc5c1240
    3691cc6a9fe7:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6a9fea:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6a9fee:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6a9ff5:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6a9fff:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aa006:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    3691cc6aa00b:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    3691cc6aa011:	0f 84 46 00 00 00                               	je     0x3691cc6aa05d
    3691cc6aa017:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6aa01d:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6aa021:	41 53                                           	push   r11
    3691cc6aa023:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aa027:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    3691cc6aa02d:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc6aa032:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    3691cc6aa039:	e8 02 72 f1 ff                                  	call   0x3691cc5c1240
    3691cc6aa03e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aa041:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aa045:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6aa04c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6aa056:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aa05d:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    3691cc6aa062:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    3691cc6aa068:	0f 84 46 00 00 00                               	je     0x3691cc6aa0b4
    3691cc6aa06e:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6aa074:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6aa078:	41 53                                           	push   r11
    3691cc6aa07a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aa07e:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    3691cc6aa084:	ba 02 00 00 00                                  	mov    edx,0x2
    3691cc6aa089:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    3691cc6aa090:	e8 ab 71 f1 ff                                  	call   0x3691cc5c1240
    3691cc6aa095:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aa098:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aa09c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6aa0a3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6aa0ad:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aa0b4:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    3691cc6aa0b9:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    3691cc6aa0bf:	0f 84 73 03 00 00                               	je     0x3691cc6aa438
    3691cc6aa0c5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6aa0cb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6aa0cf:	41 53                                           	push   r11
    3691cc6aa0d1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aa0d5:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    3691cc6aa0db:	ba 03 00 00 00                                  	mov    edx,0x3
    3691cc6aa0e0:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    3691cc6aa0e7:	e8 54 71 f1 ff                                  	call   0x3691cc5c1240
    3691cc6aa0ec:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aa0ef:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aa0f3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6aa0fa:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6aa104:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aa10b:	e9 28 03 00 00                                  	jmp    0x3691cc6aa438
    3691cc6aa110:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aa113:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    3691cc6aa11d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    3691cc6aa123:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6aa128:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6aa12c:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    3691cc6aa133:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6aa137:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aa13b:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    3691cc6aa145:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6aa149:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    3691cc6aa14f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6aa153:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    3691cc6aa158:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    3691cc6aa162:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6aa166:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    3691cc6aa16d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    3691cc6aa171:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    3691cc6aa175:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    3691cc6aa179:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6aa17d:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    3691cc6aa183:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6aa188:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    3691cc6aa18c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc6aa190:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc6aa195:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc6aa19a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    3691cc6aa19e:	0f 87 09 00 00 00                               	ja     0x3691cc6aa1ad
    3691cc6aa1a4:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc6aa1a8:	e9 04 00 00 00                                  	jmp    0x3691cc6aa1b1
    3691cc6aa1ad:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6aa1b1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6aa1b6:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc6aa1ba:	0f 87 09 00 00 00                               	ja     0x3691cc6aa1c9
    3691cc6aa1c0:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc6aa1c4:	e9 05 00 00 00                                  	jmp    0x3691cc6aa1ce
    3691cc6aa1c9:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc6aa1ce:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc6aa1d3:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6aa1d7:	0f 84 a1 00 00 00                               	je     0x3691cc6aa27e
    3691cc6aa1dd:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    3691cc6aa1e1:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    3691cc6aa1eb:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6aa1ef:	0f 87 09 00 00 00                               	ja     0x3691cc6aa1fe
    3691cc6aa1f5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6aa1f9:	e9 04 00 00 00                                  	jmp    0x3691cc6aa202
    3691cc6aa1fe:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6aa202:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6aa206:	0f 87 0a 00 00 00                               	ja     0x3691cc6aa216
    3691cc6aa20c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6aa211:	e9 05 00 00 00                                  	jmp    0x3691cc6aa21b
    3691cc6aa216:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6aa21b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    3691cc6aa21f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6aa224:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6aa229:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6aa22d:	4c 8b 15 9d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea9d]        # 0x3691cc6a8cd1
    3691cc6aa234:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6aa239:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6aa23e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6aa242:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    3691cc6aa24c:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc6aa250:	0f 85 04 00 00 00                               	jne    0x3691cc6aa25a
    3691cc6aa256:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    3691cc6aa25a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc6aa25f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6aa263:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6aa267:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    3691cc6aa271:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc6aa276:	4d 8b dc                                        	mov    r11,r12
    3691cc6aa279:	e9 cc 00 00 00                                  	jmp    0x3691cc6aa34a
    3691cc6aa27e:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    3691cc6aa285:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6aa289:	0f 87 09 00 00 00                               	ja     0x3691cc6aa298
    3691cc6aa28f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6aa293:	e9 04 00 00 00                                  	jmp    0x3691cc6aa29c
    3691cc6aa298:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6aa29c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6aa2a0:	0f 87 0a 00 00 00                               	ja     0x3691cc6aa2b0
    3691cc6aa2a6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6aa2ab:	e9 05 00 00 00                                  	jmp    0x3691cc6aa2b5
    3691cc6aa2b0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6aa2b5:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    3691cc6aa2bf:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    3691cc6aa2c5:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    3691cc6aa2ca:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6aa2ce:	0f 87 09 00 00 00                               	ja     0x3691cc6aa2dd
    3691cc6aa2d4:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc6aa2d8:	e9 04 00 00 00                                  	jmp    0x3691cc6aa2e1
    3691cc6aa2dd:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc6aa2e1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6aa2e5:	0f 87 0a 00 00 00                               	ja     0x3691cc6aa2f5
    3691cc6aa2eb:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc6aa2f0:	e9 05 00 00 00                                  	jmp    0x3691cc6aa2fa
    3691cc6aa2f5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6aa2fa:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    3691cc6aa304:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6aa309:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6aa30d:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    3691cc6aa317:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6aa31c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6aa321:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6aa325:	4c 8b 15 a5 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a5]        # 0x3691cc6a8cd1
    3691cc6aa32c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6aa331:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6aa336:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6aa33a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc6aa33e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6aa342:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6aa346:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc6aa34a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6aa34f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6aa353:	4c 8b 15 77 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe977]        # 0x3691cc6a8cd1
    3691cc6aa35a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6aa35f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6aa364:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    3691cc6aa368:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6aa372:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    3691cc6aa37c:	e9 b7 00 00 00                                  	jmp    0x3691cc6aa438
    3691cc6aa381:	4c 8b 85 10 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f0]
    3691cc6aa388:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    3691cc6aa38f:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    3691cc6aa393:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    3691cc6aa39a:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc6aa39e:	c4 81 6a 59 74 1c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+r11*1+0x50]
    3691cc6aa3a5:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    3691cc6aa3a9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6aa3ad:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    3691cc6aa3b2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6aa3b6:	c4 01 7a 10 5c 04 54                            	vmovss xmm11,DWORD PTR [r12+r8*1+0x54]
    3691cc6aa3bd:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    3691cc6aa3c1:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    3691cc6aa3c8:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc6aa3cc:	c5 fb 11 85 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm0
    3691cc6aa3d4:	c4 81 6a 59 44 1c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+r11*1+0x54]
    3691cc6aa3db:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    3691cc6aa3df:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    3691cc6aa3e3:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6aa3e7:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    3691cc6aa3ee:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    3691cc6aa3f4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aa3f8:	8b c8                                           	mov    ecx,eax
    3691cc6aa3fa:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6aa3fd:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    3691cc6aa403:	c5 fb 10 8d b0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x150]
    3691cc6aa40b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc6aa40f:	8b df                                           	mov    ebx,edi
    3691cc6aa411:	e8 1a 71 f1 ff                                  	call   0x3691cc5c1530
    3691cc6aa416:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aa419:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aa41d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    3691cc6aa427:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6aa431:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aa438:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6aa43c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    3691cc6aa444:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    3691cc6aa44d:	0f 85 2a 00 00 00                               	jne    0x3691cc6aa47d
    3691cc6aa453:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    3691cc6aa45d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    3691cc6aa467:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc6aa471:	49 8b fb                                        	mov    rdi,r11
    3691cc6aa474:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc6aa478:	e9 dd 01 00 00                                  	jmp    0x3691cc6aa65a
    3691cc6aa47d:	c5 fb 10 85 08 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1f8]
    3691cc6aa485:	c5 fa 59 85 a0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x260]
    3691cc6aa48d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    3691cc6aa495:	c5 ca 59 b5 50 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1b0]
    3691cc6aa49d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    3691cc6aa4a5:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    3691cc6aa4ad:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc6aa4b1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6aa4b5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    3691cc6aa4bd:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6aa4c1:	4c 8b 15 e7 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5e7]        # 0x3691cc6a7aaf
    3691cc6aa4c8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6aa4cd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    3691cc6aa4d1:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc6aa4d5:	0f 87 04 00 00 00                               	ja     0x3691cc6aa4df
    3691cc6aa4db:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc6aa4df:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    3691cc6aa4e7:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    3691cc6aa4ee:	0f 85 28 00 00 00                               	jne    0x3691cc6aa51c
    3691cc6aa4f4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    3691cc6aa4fe:	4c 8b 15 aa d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5aa]        # 0x3691cc6a7aaf
    3691cc6aa505:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc6aa50a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    3691cc6aa50e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aa512:	e8 a9 90 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6aa517:	e9 94 00 00 00                                  	jmp    0x3691cc6aa5b0
    3691cc6aa51c:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc6aa520:	0f 84 67 00 00 00                               	je     0x3691cc6aa58d
    3691cc6aa526:	4d 8b d0                                        	mov    r10,r8
    3691cc6aa529:	4d 8b c3                                        	mov    r8,r11
    3691cc6aa52c:	4d 8b da                                        	mov    r11,r10
    3691cc6aa52f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    3691cc6aa539:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    3691cc6aa543:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    3691cc6aa548:	7a 06                                           	jp     0x3691cc6aa550
    3691cc6aa54a:	0f 84 2a 00 00 00                               	je     0x3691cc6aa57a
    3691cc6aa550:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc6aa554:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    3691cc6aa559:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    3691cc6aa55d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    3691cc6aa561:	0f 86 49 00 00 00                               	jbe    0x3691cc6aa5b0
    3691cc6aa567:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6aa56b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6aa570:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6aa575:	e9 5b 00 00 00                                  	jmp    0x3691cc6aa5d5
    3691cc6aa57a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6aa57e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6aa583:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6aa588:	e9 44 00 00 00                                  	jmp    0x3691cc6aa5d1
    3691cc6aa58d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    3691cc6aa597:	4c 8b 15 11 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd511]        # 0x3691cc6a7aaf
    3691cc6aa59e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6aa5a3:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    3691cc6aa5a7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aa5ab:	e8 10 90 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6aa5b0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6aa5b4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6aa5b9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6aa5be:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    3691cc6aa5c2:	0f 87 09 00 00 00                               	ja     0x3691cc6aa5d1
    3691cc6aa5c8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    3691cc6aa5cc:	e9 04 00 00 00                                  	jmp    0x3691cc6aa5d5
    3691cc6aa5d1:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc6aa5d5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aa5d8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aa5dc:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc6aa5e6:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    3691cc6aa5ea:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    3691cc6aa5ee:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    3691cc6aa5f8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    3691cc6aa5fd:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    3691cc6aa607:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    3691cc6aa611:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    3691cc6aa61b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    3691cc6aa620:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    3691cc6aa62a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    3691cc6aa634:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    3691cc6aa63e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    3691cc6aa643:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    3691cc6aa64d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc6aa651:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6aa655:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc6aa65a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    3691cc6aa664:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aa668:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6aa66b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6aa671:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    3691cc6aa677:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    3691cc6aa67f:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    3691cc6aa683:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    3691cc6aa687:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    3691cc6aa68c:	e8 cf 6b f1 ff                                  	call   0x3691cc5c1260
    3691cc6aa691:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6aa695:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6aa69a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6aa6a0:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    3691cc6aa6a7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6aa6ab:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6aa6b0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6aa6b6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6aa6bc:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6aa6c1:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    3691cc6aa6c8:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    3691cc6aa6cf:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    3691cc6aa6d6:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6aa6de:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6aa6e6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6aa6ee:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    3691cc6aa6f6:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    3691cc6aa6fd:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6aa703:	e9 02 00 00 00                                  	jmp    0x3691cc6aa70a
    3691cc6aa708:	8b d0                                           	mov    edx,eax
    3691cc6aa70a:	f6 85 68 fd ff ff 08                            	test   BYTE PTR [rbp-0x298],0x8
    3691cc6aa711:	0f 85 0a 00 00 00                               	jne    0x3691cc6aa721
    3691cc6aa717:	c4 41 79 28 f1                                  	vmovapd xmm14,xmm9
    3691cc6aa71c:	e9 49 57 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6aa721:	43 8b 84 04 c8 3c 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0x3cc8]
    3691cc6aa729:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    3691cc6aa732:	0f 84 3c 00 00 00                               	je     0x3691cc6aa774
    3691cc6aa738:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    3691cc6aa73e:	c1 e8 03                                        	shr    eax,0x3
    3691cc6aa741:	83 e0 03                                        	and    eax,0x3
    3691cc6aa744:	8b 9d 20 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1e0]
    3691cc6aa74a:	0b d8                                           	or     ebx,eax
    3691cc6aa74c:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    3691cc6aa752:	03 d8                                           	add    ebx,eax
    3691cc6aa754:	41 0f b6 1c 1c                                  	movzx  ebx,BYTE PTR [r12+rbx*1]
    3691cc6aa759:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    3691cc6aa75f:	83 e0 07                                        	and    eax,0x7
    3691cc6aa762:	4c 8b d1                                        	mov    r10,rcx
    3691cc6aa765:	8b c8                                           	mov    ecx,eax
    3691cc6aa767:	49 8b c2                                        	mov    rax,r10
    3691cc6aa76a:	d3 e3                                           	shl    ebx,cl
    3691cc6aa76c:	f6 c3 80                                        	test   bl,0x80
    3691cc6aa76f:	74 a6                                           	je     0x3691cc6aa717
    3691cc6aa771:	48 8b c8                                        	mov    rcx,rax
    3691cc6aa774:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    3691cc6aa77b:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    3691cc6aa782:	48 8d 14 03                                     	lea    rdx,[rbx+rax*1]
    3691cc6aa786:	c4 e1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,rdx
    3691cc6aa78b:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    3691cc6aa78f:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    3691cc6aa793:	48 8b d1                                        	mov    rdx,rcx
    3691cc6aa796:	48 8b 8d 50 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3b0]
    3691cc6aa79d:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    3691cc6aa7a1:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    3691cc6aa7a6:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    3691cc6aa7ab:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    3691cc6aa7b0:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    3691cc6aa7b4:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    3691cc6aa7b8:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    3691cc6aa7bd:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    3691cc6aa7c1:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    3691cc6aa7c5:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    3691cc6aa7ca:	0f 83 47 ff ff ff                               	jae    0x3691cc6aa717
    3691cc6aa7d0:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    3691cc6aa7d7:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    3691cc6aa7de:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    3691cc6aa7e5:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    3691cc6aa7ea:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    3691cc6aa7ee:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    3691cc6aa7f2:	43 8b 44 04 68                                  	mov    eax,DWORD PTR [r12+r8*1+0x68]
    3691cc6aa7f7:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    3691cc6aa7fd:	0f 85 0b 00 00 00                               	jne    0x3691cc6aa80e
    3691cc6aa803:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    3691cc6aa809:	e9 c7 00 00 00                                  	jmp    0x3691cc6aa8d5
    3691cc6aa80e:	43 8b 84 04 a4 00 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0xa4]
    3691cc6aa816:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    3691cc6aa81f:	75 e2                                           	jne    0x3691cc6aa803
    3691cc6aa821:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    3691cc6aa826:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    3691cc6aa82a:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    3691cc6aa831:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    3691cc6aa834:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    3691cc6aa83a:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    3691cc6aa83d:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    3691cc6aa843:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    3691cc6aa848:	2d 00 02 00 00                                  	sub    eax,0x200
    3691cc6aa84d:	83 f8 08                                        	cmp    eax,0x8
    3691cc6aa850:	0f 83 0b 00 00 00                               	jae    0x3691cc6aa861
    3691cc6aa856:	4c 8d 15 4b 5c 00 00                            	lea    r10,[rip+0x5c4b]        # 0x3691cc6b04a8
    3691cc6aa85d:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    3691cc6aa861:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6aa865:	0f 87 6a 00 00 00                               	ja     0x3691cc6aa8d5
    3691cc6aa86b:	e9 a7 fe ff ff                                  	jmp    0x3691cc6aa717
    3691cc6aa870:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6aa875:	0f 83 5a 00 00 00                               	jae    0x3691cc6aa8d5
    3691cc6aa87b:	e9 97 fe ff ff                                  	jmp    0x3691cc6aa717
    3691cc6aa880:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6aa885:	0f 8a 4a 00 00 00                               	jp     0x3691cc6aa8d5
    3691cc6aa88b:	0f 84 86 fe ff ff                               	je     0x3691cc6aa717
    3691cc6aa891:	e9 3f 00 00 00                                  	jmp    0x3691cc6aa8d5
    3691cc6aa896:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6aa89b:	0f 87 34 00 00 00                               	ja     0x3691cc6aa8d5
    3691cc6aa8a1:	e9 71 fe ff ff                                  	jmp    0x3691cc6aa717
    3691cc6aa8a6:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6aa8aa:	0f 83 25 00 00 00                               	jae    0x3691cc6aa8d5
    3691cc6aa8b0:	e9 62 fe ff ff                                  	jmp    0x3691cc6aa717
    3691cc6aa8b5:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    3691cc6aa8ba:	0f 8a 57 fe ff ff                               	jp     0x3691cc6aa717
    3691cc6aa8c0:	0f 84 0f 00 00 00                               	je     0x3691cc6aa8d5
    3691cc6aa8c6:	e9 4c fe ff ff                                  	jmp    0x3691cc6aa717
    3691cc6aa8cb:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    3691cc6aa8cf:	0f 86 42 fe ff ff                               	jbe    0x3691cc6aa717
    3691cc6aa8d5:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    3691cc6aa8da:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    3691cc6aa8df:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    3691cc6aa8e4:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    3691cc6aa8eb:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    3691cc6aa8f0:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    3691cc6aa8f4:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    3691cc6aa8fb:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    3691cc6aa903:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc6aa908:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    3691cc6aa90c:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    3691cc6aa911:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    3691cc6aa918:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    3691cc6aa91c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc6aa920:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    3691cc6aa924:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    3691cc6aa928:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    3691cc6aa92b:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    3691cc6aa935:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    3691cc6aa93f:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    3691cc6aa949:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    3691cc6aa953:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    3691cc6aa959:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aa960:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    3691cc6aa968:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    3691cc6aa96c:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    3691cc6aa974:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    3691cc6aa97c:	c5 fb 11 a5 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm4
    3691cc6aa984:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    3691cc6aa98c:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    3691cc6aa994:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    3691cc6aa99c:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    3691cc6aa9a4:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6aa9a8:	0f 86 4b 04 00 00                               	jbe    0x3691cc6aadf9
    3691cc6aa9ae:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    3691cc6aa9b6:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    3691cc6aa9bf:	0f 85 0a 00 00 00                               	jne    0x3691cc6aa9cf
    3691cc6aa9c5:	8b c8                                           	mov    ecx,eax
    3691cc6aa9c7:	4d 8b c4                                        	mov    r8,r12
    3691cc6aa9ca:	e9 e0 04 00 00                                  	jmp    0x3691cc6aaeaf
    3691cc6aa9cf:	44 8d 80 90 00 00 00                            	lea    r8d,[rax+0x90]
    3691cc6aa9d6:	44 8d 58 70                                     	lea    r11d,[rax+0x70]
    3691cc6aa9da:	41 53                                           	push   r11
    3691cc6aa9dc:	4c 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r8
    3691cc6aa9e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aa9e7:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6aa9ea:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6aa9ed:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    3691cc6aa9f0:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6aa9f3:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    3691cc6aa9f7:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc6aa9fc:	45 8b c8                                        	mov    r9d,r8d
    3691cc6aa9ff:	e8 14 68 f1 ff                                  	call   0x3691cc5c1218
    3691cc6aaa04:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aaa08:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aaa0f:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    3691cc6aaa17:	45 85 db                                        	test   r11d,r11d
    3691cc6aaa1a:	0f 85 62 01 00 00                               	jne    0x3691cc6aab82
    3691cc6aaa20:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aaa23:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    3691cc6aaa28:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    3691cc6aaa2e:	0f 84 43 00 00 00                               	je     0x3691cc6aaa77
    3691cc6aaa34:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6aaa3a:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6aaa3e:	41 53                                           	push   r11
    3691cc6aaa40:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aaa44:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    3691cc6aaa4a:	33 d2                                           	xor    edx,edx
    3691cc6aaa4c:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    3691cc6aaa53:	e8 e8 67 f1 ff                                  	call   0x3691cc5c1240
    3691cc6aaa58:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aaa5b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aaa5f:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6aaa66:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6aaa70:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aaa77:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    3691cc6aaa7c:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    3691cc6aaa82:	0f 84 46 00 00 00                               	je     0x3691cc6aaace
    3691cc6aaa88:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6aaa8e:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6aaa92:	41 53                                           	push   r11
    3691cc6aaa94:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aaa98:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    3691cc6aaa9e:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc6aaaa3:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    3691cc6aaaaa:	e8 91 67 f1 ff                                  	call   0x3691cc5c1240
    3691cc6aaaaf:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aaab2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aaab6:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6aaabd:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6aaac7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aaace:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    3691cc6aaad3:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    3691cc6aaad9:	0f 84 46 00 00 00                               	je     0x3691cc6aab25
    3691cc6aaadf:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6aaae5:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6aaae9:	41 53                                           	push   r11
    3691cc6aaaeb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aaaef:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    3691cc6aaaf5:	ba 02 00 00 00                                  	mov    edx,0x2
    3691cc6aaafa:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    3691cc6aab01:	e8 3a 67 f1 ff                                  	call   0x3691cc5c1240
    3691cc6aab06:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aab09:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aab0d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    3691cc6aab14:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    3691cc6aab1e:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aab25:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    3691cc6aab2a:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    3691cc6aab30:	0f 84 79 03 00 00                               	je     0x3691cc6aaeaf
    3691cc6aab36:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    3691cc6aab3c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    3691cc6aab40:	41 53                                           	push   r11
    3691cc6aab42:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aab46:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    3691cc6aab4c:	ba 03 00 00 00                                  	mov    edx,0x3
    3691cc6aab51:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    3691cc6aab58:	e8 e3 66 f1 ff                                  	call   0x3691cc5c1240
    3691cc6aab5d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aab60:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    3691cc6aab64:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    3691cc6aab6a:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    3691cc6aab73:	4c 8b c7                                        	mov    r8,rdi
    3691cc6aab76:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aab7d:	e9 2d 03 00 00                                  	jmp    0x3691cc6aaeaf
    3691cc6aab82:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    3691cc6aab85:	4d 8b e0                                        	mov    r12,r8
    3691cc6aab88:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    3691cc6aab92:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    3691cc6aab98:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6aab9d:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6aaba1:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    3691cc6aaba8:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6aabac:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aabb0:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    3691cc6aabba:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    3691cc6aabbe:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    3691cc6aabc4:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6aabc8:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    3691cc6aabcd:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    3691cc6aabd7:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    3691cc6aabdb:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    3691cc6aabe2:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    3691cc6aabe6:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    3691cc6aabea:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    3691cc6aabee:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6aabf2:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    3691cc6aabf8:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    3691cc6aabfd:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    3691cc6aac01:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    3691cc6aac05:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    3691cc6aac0a:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    3691cc6aac0f:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    3691cc6aac13:	0f 87 09 00 00 00                               	ja     0x3691cc6aac22
    3691cc6aac19:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc6aac1d:	e9 04 00 00 00                                  	jmp    0x3691cc6aac26
    3691cc6aac22:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6aac26:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6aac2b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    3691cc6aac2f:	0f 87 09 00 00 00                               	ja     0x3691cc6aac3e
    3691cc6aac35:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc6aac39:	e9 05 00 00 00                                  	jmp    0x3691cc6aac43
    3691cc6aac3e:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc6aac43:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc6aac48:	41 83 fb 01                                     	cmp    r11d,0x1
    3691cc6aac4c:	0f 84 a1 00 00 00                               	je     0x3691cc6aacf3
    3691cc6aac52:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    3691cc6aac56:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    3691cc6aac60:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6aac64:	0f 87 09 00 00 00                               	ja     0x3691cc6aac73
    3691cc6aac6a:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6aac6e:	e9 04 00 00 00                                  	jmp    0x3691cc6aac77
    3691cc6aac73:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6aac77:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6aac7b:	0f 87 0a 00 00 00                               	ja     0x3691cc6aac8b
    3691cc6aac81:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6aac86:	e9 05 00 00 00                                  	jmp    0x3691cc6aac90
    3691cc6aac8b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6aac90:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    3691cc6aac94:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6aac99:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6aac9e:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6aaca2:	4c 8b 15 28 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe028]        # 0x3691cc6a8cd1
    3691cc6aaca9:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6aacae:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6aacb3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6aacb7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    3691cc6aacc1:	41 83 fb 03                                     	cmp    r11d,0x3
    3691cc6aacc5:	0f 85 04 00 00 00                               	jne    0x3691cc6aaccf
    3691cc6aaccb:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    3691cc6aaccf:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    3691cc6aacd4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6aacd8:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    3691cc6aacdc:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    3691cc6aace6:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc6aaceb:	4d 8b df                                        	mov    r11,r15
    3691cc6aacee:	e9 cc 00 00 00                                  	jmp    0x3691cc6aadbf
    3691cc6aacf3:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    3691cc6aacfa:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6aacfe:	0f 87 09 00 00 00                               	ja     0x3691cc6aad0d
    3691cc6aad04:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    3691cc6aad08:	e9 04 00 00 00                                  	jmp    0x3691cc6aad11
    3691cc6aad0d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    3691cc6aad11:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6aad15:	0f 87 0a 00 00 00                               	ja     0x3691cc6aad25
    3691cc6aad1b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    3691cc6aad20:	e9 05 00 00 00                                  	jmp    0x3691cc6aad2a
    3691cc6aad25:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6aad2a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    3691cc6aad34:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    3691cc6aad3a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    3691cc6aad3f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    3691cc6aad43:	0f 87 09 00 00 00                               	ja     0x3691cc6aad52
    3691cc6aad49:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc6aad4d:	e9 04 00 00 00                                  	jmp    0x3691cc6aad56
    3691cc6aad52:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc6aad56:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    3691cc6aad5a:	0f 87 0a 00 00 00                               	ja     0x3691cc6aad6a
    3691cc6aad60:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc6aad65:	e9 05 00 00 00                                  	jmp    0x3691cc6aad6f
    3691cc6aad6a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    3691cc6aad6f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    3691cc6aad79:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6aad7e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6aad82:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    3691cc6aad8c:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6aad91:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6aad96:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6aad9a:	4c 8b 15 30 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf30]        # 0x3691cc6a8cd1
    3691cc6aada1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6aada6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6aadab:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6aadaf:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc6aadb3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    3691cc6aadb7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    3691cc6aadbb:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc6aadbf:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6aadc4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    3691cc6aadc8:	4c 8b 15 02 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf02]        # 0x3691cc6a8cd1
    3691cc6aadcf:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6aadd4:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6aadd9:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    3691cc6aaddd:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    3691cc6aade7:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    3691cc6aadf1:	4d 8b c4                                        	mov    r8,r12
    3691cc6aadf4:	e9 b6 00 00 00                                  	jmp    0x3691cc6aaeaf
    3691cc6aadf9:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    3691cc6aae00:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    3691cc6aae07:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    3691cc6aae0b:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    3691cc6aae12:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc6aae16:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    3691cc6aae1d:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    3691cc6aae24:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    3691cc6aae28:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6aae2c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    3691cc6aae31:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6aae35:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    3691cc6aae3c:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    3691cc6aae40:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    3691cc6aae47:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    3691cc6aae4b:	c5 fb 11 85 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm0
    3691cc6aae53:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    3691cc6aae5a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    3691cc6aae5e:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    3691cc6aae62:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6aae66:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    3691cc6aae6c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aae70:	8b c8                                           	mov    ecx,eax
    3691cc6aae72:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6aae75:	41 8b d0                                        	mov    edx,r8d
    3691cc6aae78:	c5 fb 10 8d a0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x260]
    3691cc6aae80:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    3691cc6aae84:	8b df                                           	mov    ebx,edi
    3691cc6aae86:	e8 a5 66 f1 ff                                  	call   0x3691cc5c1530
    3691cc6aae8b:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    3691cc6aae8e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6aae92:	c4 c1 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x90]
    3691cc6aae9c:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    3691cc6aaea6:	8b cb                                           	mov    ecx,ebx
    3691cc6aaea8:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aaeaf:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6aaeb3:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    3691cc6aaebb:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    3691cc6aaec4:	0f 85 2c 00 00 00                               	jne    0x3691cc6aaef6
    3691cc6aaeca:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    3691cc6aaed4:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    3691cc6aaede:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    3691cc6aaee8:	49 8b fb                                        	mov    rdi,r11
    3691cc6aaeeb:	8b d9                                           	mov    ebx,ecx
    3691cc6aaeed:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc6aaef1:	e9 dd 01 00 00                                  	jmp    0x3691cc6ab0d3
    3691cc6aaef6:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    3691cc6aaefe:	c5 fa 59 85 30 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1d0]
    3691cc6aaf06:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    3691cc6aaf0e:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    3691cc6aaf16:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    3691cc6aaf1e:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    3691cc6aaf26:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    3691cc6aaf2a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    3691cc6aaf2e:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    3691cc6aaf36:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    3691cc6aaf3a:	4c 8b 15 6e cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb6e]        # 0x3691cc6a7aaf
    3691cc6aaf41:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6aaf46:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    3691cc6aaf4a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    3691cc6aaf4e:	0f 87 04 00 00 00                               	ja     0x3691cc6aaf58
    3691cc6aaf54:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc6aaf58:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    3691cc6aaf60:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    3691cc6aaf67:	0f 85 28 00 00 00                               	jne    0x3691cc6aaf95
    3691cc6aaf6d:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    3691cc6aaf77:	4c 8b 15 31 cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb31]        # 0x3691cc6a7aaf
    3691cc6aaf7e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc6aaf83:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    3691cc6aaf87:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aaf8b:	e8 30 86 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6aaf90:	e9 94 00 00 00                                  	jmp    0x3691cc6ab029
    3691cc6aaf95:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc6aaf99:	0f 84 67 00 00 00                               	je     0x3691cc6ab006
    3691cc6aaf9f:	4d 8b d0                                        	mov    r10,r8
    3691cc6aafa2:	4d 8b c3                                        	mov    r8,r11
    3691cc6aafa5:	4d 8b da                                        	mov    r11,r10
    3691cc6aafa8:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    3691cc6aafb2:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    3691cc6aafbc:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    3691cc6aafc1:	7a 06                                           	jp     0x3691cc6aafc9
    3691cc6aafc3:	0f 84 2a 00 00 00                               	je     0x3691cc6aaff3
    3691cc6aafc9:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    3691cc6aafcd:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    3691cc6aafd2:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    3691cc6aafd6:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    3691cc6aafda:	0f 86 49 00 00 00                               	jbe    0x3691cc6ab029
    3691cc6aafe0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6aafe4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6aafe9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6aafee:	e9 5b 00 00 00                                  	jmp    0x3691cc6ab04e
    3691cc6aaff3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6aaff7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6aaffc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6ab001:	e9 44 00 00 00                                  	jmp    0x3691cc6ab04a
    3691cc6ab006:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    3691cc6ab010:	4c 8b 15 98 ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca98]        # 0x3691cc6a7aaf
    3691cc6ab017:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    3691cc6ab01c:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    3691cc6ab020:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ab024:	e8 97 85 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6ab029:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    3691cc6ab02d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    3691cc6ab032:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    3691cc6ab037:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    3691cc6ab03b:	0f 87 09 00 00 00                               	ja     0x3691cc6ab04a
    3691cc6ab041:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    3691cc6ab045:	e9 04 00 00 00                                  	jmp    0x3691cc6ab04e
    3691cc6ab04a:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    3691cc6ab04e:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    3691cc6ab051:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6ab055:	c4 c1 42 59 b4 18 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rbx*1+0x190]
    3691cc6ab05f:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    3691cc6ab063:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    3691cc6ab067:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    3691cc6ab071:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    3691cc6ab076:	c4 c1 7a 11 b4 18 90 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x190],xmm6
    3691cc6ab080:	c4 41 42 59 8c 18 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rbx*1+0x194]
    3691cc6ab08a:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    3691cc6ab094:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    3691cc6ab099:	c4 41 7a 11 8c 18 94 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x194],xmm9
    3691cc6ab0a3:	c4 c1 42 59 bc 18 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rbx*1+0x198]
    3691cc6ab0ad:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    3691cc6ab0b7:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    3691cc6ab0bc:	c4 c1 7a 11 bc 18 98 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x198],xmm7
    3691cc6ab0c6:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    3691cc6ab0ca:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6ab0ce:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc6ab0d3:	c4 c1 7a 10 ac 18 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rbx*1+0x19c]
    3691cc6ab0dd:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ab0e1:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6ab0e4:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc6ab0ea:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    3691cc6ab0f0:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    3691cc6ab0f8:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    3691cc6ab0fc:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    3691cc6ab100:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    3691cc6ab105:	e8 56 61 f1 ff                                  	call   0x3691cc5c1260
    3691cc6ab10a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6ab10e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6ab113:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6ab117:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6ab11c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6ab122:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6ab128:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6ab12d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6ab135:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6ab13d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6ab145:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6ab14d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6ab153:	e9 12 4d 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6ab158:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    3691cc6ab15c:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    3691cc6ab163:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6ab167:	4e 89 7c 02 70                                  	mov    QWORD PTR [rdx+r8*1+0x70],r15
    3691cc6ab16c:	4a 8d 0c 3f                                     	lea    rcx,[rdi+r15*1]
    3691cc6ab170:	4a 89 8c 02 80 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x80],rcx
    3691cc6ab178:	49 8b df                                        	mov    rbx,r15
    3691cc6ab17b:	48 2b 9d d0 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x330]
    3691cc6ab182:	4a 89 5c 02 78                                  	mov    QWORD PTR [rdx+r8*1+0x78],rbx
    3691cc6ab187:	4c 8d 1c 1f                                     	lea    r11,[rdi+rbx*1]
    3691cc6ab18b:	4e 89 9c 02 88 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x88],r11
    3691cc6ab193:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    3691cc6ab19a:	4a 89 74 02 50                                  	mov    QWORD PTR [rdx+r8*1+0x50],rsi
    3691cc6ab19f:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    3691cc6ab1a6:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    3691cc6ab1aa:	4e 89 64 02 60                                  	mov    QWORD PTR [rdx+r8*1+0x60],r12
    3691cc6ab1af:	48 8b c6                                        	mov    rax,rsi
    3691cc6ab1b2:	48 2b 85 f0 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x310]
    3691cc6ab1b9:	4a 89 44 02 58                                  	mov    QWORD PTR [rdx+r8*1+0x58],rax
    3691cc6ab1be:	4c 8d 0c 07                                     	lea    r9,[rdi+rax*1]
    3691cc6ab1c2:	4e 89 4c 02 68                                  	mov    QWORD PTR [rdx+r8*1+0x68],r9
    3691cc6ab1c7:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    3691cc6ab1cb:	c4 a1 7a 7f 44 02 40                            	vmovdqu XMMWORD PTR [rdx+r8*1+0x40],xmm0
    3691cc6ab1d2:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    3691cc6ab1d9:	48 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rbx
    3691cc6ab1e0:	4c 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r11
    3691cc6ab1e7:	4c 89 a5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r12
    3691cc6ab1ee:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    3691cc6ab1f5:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    3691cc6ab1fc:	33 ff                                           	xor    edi,edi
    3691cc6ab1fe:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    3691cc6ab202:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6ab206:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    3691cc6ab20a:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    3691cc6ab210:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    3691cc6ab215:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    3691cc6ab21c:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    3691cc6ab223:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    3691cc6ab22a:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    3691cc6ab22f:	e9 10 00 00 00                                  	jmp    0x3691cc6ab244
    3691cc6ab234:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ab23d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    3691cc6ab240:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    3691cc6ab244:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc6ab249:	0f 85 63 4f 00 00                               	jne    0x3691cc6b01b2
    3691cc6ab24f:	8b cf                                           	mov    ecx,edi
    3691cc6ab251:	41 bf 01 00 00 00                               	mov    r15d,0x1
    3691cc6ab257:	41 d3 e7                                        	shl    r15d,cl
    3691cc6ab25a:	44 85 bd 68 fd ff ff                            	test   DWORD PTR [rbp-0x298],r15d
    3691cc6ab261:	0f 84 69 01 00 00                               	je     0x3691cc6ab3d0
    3691cc6ab267:	41 8d 4c b8 40                                  	lea    ecx,[r8+rdi*4+0x40]
    3691cc6ab26c:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    3691cc6ab273:	45 8d 7c f8 70                                  	lea    r15d,[r8+rdi*8+0x70]
    3691cc6ab278:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    3691cc6ab27c:	c4 41 82 2a cf                                  	vcvtsi2ss xmm9,xmm15,r15
    3691cc6ab281:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    3691cc6ab286:	c4 41 42 5c d1                                  	vsubss xmm10,xmm7,xmm9
    3691cc6ab28b:	45 8d 7c f8 50                                  	lea    r15d,[r8+rdi*8+0x50]
    3691cc6ab290:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    3691cc6ab294:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    3691cc6ab299:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    3691cc6ab29e:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    3691cc6ab2a3:	c4 21 2a 59 54 0a 18                            	vmulss xmm10,xmm10,DWORD PTR [rdx+r9*1+0x18]
    3691cc6ab2aa:	c4 21 32 59 4c 22 18                            	vmulss xmm9,xmm9,DWORD PTR [rdx+r12*1+0x18]
    3691cc6ab2b1:	c5 22 59 5c 02 18                               	vmulss xmm11,xmm11,DWORD PTR [rdx+rax*1+0x18]
    3691cc6ab2b7:	c4 41 32 58 cb                                  	vaddss xmm9,xmm9,xmm11
    3691cc6ab2bc:	c4 41 2a 58 c9                                  	vaddss xmm9,xmm10,xmm9
    3691cc6ab2c1:	c4 41 72 58 c9                                  	vaddss xmm9,xmm1,xmm9
    3691cc6ab2c6:	c5 7a 11 0c 0a                                  	vmovss DWORD PTR [rdx+rcx*1],xmm9
    3691cc6ab2cb:	44 8b 7c 32 68                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0x68]
    3691cc6ab2d0:	83 7c 32 68 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x68],0x0
    3691cc6ab2d5:	0f 84 f5 00 00 00                               	je     0x3691cc6ab3d0
    3691cc6ab2db:	44 8b bc 32 a4 00 00 00                         	mov    r15d,DWORD PTR [rdx+rsi*1+0xa4]
    3691cc6ab2e3:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    3691cc6ab2eb:	0f 85 df 00 00 00                               	jne    0x3691cc6ab3d0
    3691cc6ab2f1:	44 8b 7c 32 0c                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0xc]
    3691cc6ab2f6:	8b 0c 32                                        	mov    ecx,DWORD PTR [rdx+rsi*1]
    3691cc6ab2f9:	44 8b c7                                        	mov    r8d,edi
    3691cc6ab2fc:	41 d1 e8                                        	shr    r8d,1
    3691cc6ab2ff:	45 03 c3                                        	add    r8d,r11d
    3691cc6ab302:	44 0f af c1                                     	imul   r8d,ecx
    3691cc6ab306:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    3691cc6ab30a:	45 8d 04 98                                     	lea    r8d,[r8+rbx*4]
    3691cc6ab30e:	44 8b ff                                        	mov    r15d,edi
    3691cc6ab311:	41 83 e7 01                                     	and    r15d,0x1
    3691cc6ab315:	47 8d 04 b8                                     	lea    r8d,[r8+r15*4]
    3691cc6ab319:	c4 21 7a 10 14 02                               	vmovss xmm10,DWORD PTR [rdx+r8*1]
    3691cc6ab31f:	44 8b 44 32 6c                                  	mov    r8d,DWORD PTR [rdx+rsi*1+0x6c]
    3691cc6ab324:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    3691cc6ab32b:	41 83 f8 08                                     	cmp    r8d,0x8
    3691cc6ab32f:	0f 83 0b 00 00 00                               	jae    0x3691cc6ab340
    3691cc6ab335:	4c 8d 15 2c 51 00 00                            	lea    r10,[rip+0x512c]        # 0x3691cc6b0468
    3691cc6ab33c:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    3691cc6ab340:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    3691cc6ab345:	0f 87 85 00 00 00                               	ja     0x3691cc6ab3d0
    3691cc6ab34b:	e9 67 00 00 00                                  	jmp    0x3691cc6ab3b7
    3691cc6ab350:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    3691cc6ab355:	0f 83 75 00 00 00                               	jae    0x3691cc6ab3d0
    3691cc6ab35b:	e9 57 00 00 00                                  	jmp    0x3691cc6ab3b7
    3691cc6ab360:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    3691cc6ab365:	0f 8a 65 00 00 00                               	jp     0x3691cc6ab3d0
    3691cc6ab36b:	0f 84 46 00 00 00                               	je     0x3691cc6ab3b7
    3691cc6ab371:	e9 5a 00 00 00                                  	jmp    0x3691cc6ab3d0
    3691cc6ab376:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    3691cc6ab37b:	0f 87 4f 00 00 00                               	ja     0x3691cc6ab3d0
    3691cc6ab381:	e9 31 00 00 00                                  	jmp    0x3691cc6ab3b7
    3691cc6ab386:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    3691cc6ab38b:	0f 83 3f 00 00 00                               	jae    0x3691cc6ab3d0
    3691cc6ab391:	e9 21 00 00 00                                  	jmp    0x3691cc6ab3b7
    3691cc6ab396:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    3691cc6ab39b:	0f 8a 16 00 00 00                               	jp     0x3691cc6ab3b7
    3691cc6ab3a1:	0f 84 29 00 00 00                               	je     0x3691cc6ab3d0
    3691cc6ab3a7:	e9 0b 00 00 00                                  	jmp    0x3691cc6ab3b7
    3691cc6ab3ac:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    3691cc6ab3b1:	0f 87 19 00 00 00                               	ja     0x3691cc6ab3d0
    3691cc6ab3b7:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    3691cc6ab3be:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    3691cc6ab3c2:	44 23 bd 68 fd ff ff                            	and    r15d,DWORD PTR [rbp-0x298]
    3691cc6ab3c9:	4c 89 bd 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r15
    3691cc6ab3d0:	83 c7 01                                        	add    edi,0x1
    3691cc6ab3d3:	83 ff 04                                        	cmp    edi,0x4
    3691cc6ab3d6:	0f 85 64 fe ff ff                               	jne    0x3691cc6ab240
    3691cc6ab3dc:	8b bd 68 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x298]
    3691cc6ab3e2:	85 ff                                           	test   edi,edi
    3691cc6ab3e4:	0f 85 1d 00 00 00                               	jne    0x3691cc6ab407
    3691cc6ab3ea:	4c 8b c6                                        	mov    r8,rsi
    3691cc6ab3ed:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    3691cc6ab3f1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6ab3f5:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    3691cc6ab3f9:	4c 8b e2                                        	mov    r12,rdx
    3691cc6ab3fc:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6ab402:	e9 63 4a 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6ab407:	c4 61 82 2a 8d 60 ff ff ff                      	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0xa0]
    3691cc6ab410:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    3691cc6ab415:	c4 61 82 2a 95 b0 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x150]
    3691cc6ab41e:	c4 43 31 21 ca 10                               	vinsertps xmm9,xmm9,xmm10,0x10
    3691cc6ab424:	c4 61 82 2a 95 b8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x148]
    3691cc6ab42d:	c4 43 31 21 ca 20                               	vinsertps xmm9,xmm9,xmm10,0x20
    3691cc6ab433:	c4 61 82 2a 95 c8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x138]
    3691cc6ab43c:	c4 43 31 21 ca 30                               	vinsertps xmm9,xmm9,xmm10,0x30
    3691cc6ab442:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    3691cc6ab44a:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    3691cc6ab44f:	4c 8d 42 1c                                     	lea    r8,[rdx+0x1c]
    3691cc6ab453:	c4 02 79 18 1c 20                               	vbroadcastss xmm11,DWORD PTR [r8+r12*1]
    3691cc6ab459:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    3691cc6ab45e:	c4 e1 82 2a 95 50 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xb0]
    3691cc6ab467:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    3691cc6ab46c:	c4 e1 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0x100]
    3691cc6ab475:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    3691cc6ab47b:	c4 e1 82 2a 9d 18 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe8]
    3691cc6ab484:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    3691cc6ab48a:	c4 e1 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe0]
    3691cc6ab493:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    3691cc6ab499:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    3691cc6ab49d:	c4 c2 79 18 1c 00                               	vbroadcastss xmm3,DWORD PTR [r8+rax*1]
    3691cc6ab4a3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    3691cc6ab4a7:	c5 a0 58 e3                                     	vaddps xmm4,xmm11,xmm3
    3691cc6ab4ab:	4c 8b 15 1f d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd81f]        # 0x3691cc6a8cd1
    3691cc6ab4b2:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc6ab4b7:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc6ab4bb:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    3691cc6ab4c0:	c5 30 5c ca                                     	vsubps xmm9,xmm9,xmm2
    3691cc6ab4c4:	c4 82 79 18 14 08                               	vbroadcastss xmm2,DWORD PTR [r8+r9*1]
    3691cc6ab4ca:	c5 30 59 ca                                     	vmulps xmm9,xmm9,xmm2
    3691cc6ab4ce:	c4 c1 58 58 d1                                  	vaddps xmm2,xmm4,xmm9
    3691cc6ab4d3:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    3691cc6ab4d7:	c5 e8 c2 f4 02                                  	vcmpleps xmm6,xmm2,xmm4
    3691cc6ab4dc:	c5 78 50 c6                                     	vmovmskps r8d,xmm6
    3691cc6ab4e0:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    3691cc6ab4e4:	44 23 c7                                        	and    r8d,edi
    3691cc6ab4e7:	0f 85 16 00 00 00                               	jne    0x3691cc6ab503
    3691cc6ab4ed:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    3691cc6ab4f4:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    3691cc6ab4f7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6ab4fe:	e9 7c 2a 00 00                                  	jmp    0x3691cc6adf7f
    3691cc6ab503:	c5 d0 5e f2                                     	vdivps xmm6,xmm5,xmm2
    3691cc6ab507:	48 8d 7a 2c                                     	lea    rdi,[rdx+0x2c]
    3691cc6ab50b:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    3691cc6ab511:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc6ab515:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    3691cc6ab51b:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    3691cc6ab51f:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    3691cc6ab523:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    3691cc6ab529:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    3691cc6ab52d:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    3691cc6ab531:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    3691cc6ab535:	48 8d 7a 28                                     	lea    rdi,[rdx+0x28]
    3691cc6ab539:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    3691cc6ab53f:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc6ab543:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    3691cc6ab54b:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    3691cc6ab551:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    3691cc6ab555:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    3691cc6ab559:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    3691cc6ab55f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    3691cc6ab563:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    3691cc6ab567:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    3691cc6ab56b:	48 8d 7a 24                                     	lea    rdi,[rdx+0x24]
    3691cc6ab56f:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    3691cc6ab575:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc6ab579:	c5 f8 11 bd a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm7
    3691cc6ab581:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    3691cc6ab587:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    3691cc6ab58b:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    3691cc6ab58f:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    3691cc6ab595:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    3691cc6ab599:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    3691cc6ab59d:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    3691cc6ab5a1:	48 8d 7a 20                                     	lea    rdi,[rdx+0x20]
    3691cc6ab5a5:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    3691cc6ab5ab:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc6ab5af:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    3691cc6ab5b7:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    3691cc6ab5bd:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    3691cc6ab5c1:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    3691cc6ab5c5:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    3691cc6ab5cb:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    3691cc6ab5cf:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    3691cc6ab5d3:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    3691cc6ab5d7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6ab5de:	44 8b bc 3a 34 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x134]
    3691cc6ab5e6:	41 83 ef 01                                     	sub    r15d,0x1
    3691cc6ab5ea:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    3691cc6ab5f1:	41 83 ff 01                                     	cmp    r15d,0x1
    3691cc6ab5f5:	0f 86 5a 17 00 00                               	jbe    0x3691cc6acd55
    3691cc6ab5fb:	44 8b bc 3a 38 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x138]
    3691cc6ab603:	83 bc 3a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0x138],0x0
    3691cc6ab60b:	0f 85 24 00 00 00                               	jne    0x3691cc6ab635
    3691cc6ab611:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    3691cc6ab619:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    3691cc6ab61d:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    3691cc6ab625:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    3691cc6ab62d:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    3691cc6ab630:	e9 d7 28 00 00                                  	jmp    0x3691cc6adf0c
    3691cc6ab635:	4d 8b f8                                        	mov    r15,r8
    3691cc6ab638:	41 83 e7 08                                     	and    r15d,0x8
    3691cc6ab63c:	49 8b c8                                        	mov    rcx,r8
    3691cc6ab63f:	83 e1 04                                        	and    ecx,0x4
    3691cc6ab642:	4c 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r15
    3691cc6ab649:	4d 8b f8                                        	mov    r15,r8
    3691cc6ab64c:	41 83 e7 02                                     	and    r15d,0x2
    3691cc6ab650:	41 83 e0 01                                     	and    r8d,0x1
    3691cc6ab654:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    3691cc6ab65c:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    3691cc6ab664:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    3691cc6ab66c:	c5 78 11 8d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm9
    3691cc6ab674:	c5 f8 11 9d 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm3
    3691cc6ab67c:	c5 78 11 9d f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm11
    3691cc6ab684:	c5 f8 11 ad d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm5
    3691cc6ab68c:	c5 f8 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm4
    3691cc6ab694:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    3691cc6ab69b:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    3691cc6ab6a2:	4c 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r8
    3691cc6ab6a9:	45 33 c0                                        	xor    r8d,r8d
    3691cc6ab6ac:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6ab6b0:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    3691cc6ab6b8:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    3691cc6ab6c0:	e9 6a 00 00 00                                  	jmp    0x3691cc6ab72f
    3691cc6ab6c5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ab6ce:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ab6d7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ab6e0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ab6e9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ab6f2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ab6fb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    3691cc6ab700:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    3691cc6ab708:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    3691cc6ab710:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6ab717:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    3691cc6ab71f:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    3691cc6ab727:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    3691cc6ab72f:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6ab732:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    3691cc6ab738:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    3691cc6ab73f:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    3691cc6ab746:	4c 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r8
    3691cc6ab74d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc6ab752:	0f 85 e4 4a 00 00                               	jne    0x3691cc6b023c
    3691cc6ab758:	44 8b 8c 3a 3c 01 00 00                         	mov    r9d,DWORD PTR [rdx+rdi*1+0x13c]
    3691cc6ab760:	41 8b c8                                        	mov    ecx,r8d
    3691cc6ab763:	41 d3 e9                                        	shr    r9d,cl
    3691cc6ab766:	41 f6 c1 01                                     	test   r9b,0x1
    3691cc6ab76a:	0f 85 2d 00 00 00                               	jne    0x3691cc6ab79d
    3691cc6ab770:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    3691cc6ab777:	45 8b c8                                        	mov    r9d,r8d
    3691cc6ab77a:	41 c1 e1 06                                     	shl    r9d,0x6
    3691cc6ab77e:	41 03 c9                                        	add    ecx,r9d
    3691cc6ab781:	c5 fa 7f 6c 0a 30                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x30],xmm5
    3691cc6ab787:	c5 fa 7f 6c 0a 20                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x20],xmm5
    3691cc6ab78d:	c5 fa 7f 6c 0a 10                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x10],xmm5
    3691cc6ab793:	c5 fa 7f 2c 0a                                  	vmovdqu XMMWORD PTR [rdx+rcx*1],xmm5
    3691cc6ab798:	e9 11 12 00 00                                  	jmp    0x3691cc6ac9ae
    3691cc6ab79d:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    3691cc6ab7a4:	45 8b c8                                        	mov    r9d,r8d
    3691cc6ab7a7:	41 c1 e1 06                                     	shl    r9d,0x6
    3691cc6ab7ab:	44 03 c9                                        	add    r9d,ecx
    3691cc6ab7ae:	41 6b c8 4c                                     	imul   ecx,r8d,0x4c
    3691cc6ab7b2:	03 c8                                           	add    ecx,eax
    3691cc6ab7b4:	8b 7c 0a 38                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x38]
    3691cc6ab7b8:	83 7c 0a 38 00                                  	cmp    DWORD PTR [rdx+rcx*1+0x38],0x0
    3691cc6ab7bd:	0f 85 a2 11 00 00                               	jne    0x3691cc6ac965
    3691cc6ab7c3:	41 8b f8                                        	mov    edi,r8d
    3691cc6ab7c6:	c1 e7 04                                        	shl    edi,0x4
    3691cc6ab7c9:	46 8d 04 27                                     	lea    r8d,[rdi+r12*1]
    3691cc6ab7cd:	4c 8d 62 04                                     	lea    r12,[rdx+0x4]
    3691cc6ab7d1:	c4 02 79 18 04 04                               	vbroadcastss xmm8,DWORD PTR [r12+r8*1]
    3691cc6ab7d7:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    3691cc6ab7dc:	41 8d 04 3f                                     	lea    eax,[r15+rdi*1]
    3691cc6ab7e0:	c4 42 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+rax*1]
    3691cc6ab7e6:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    3691cc6ab7eb:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    3691cc6ab7f0:	03 fb                                           	add    edi,ebx
    3691cc6ab7f2:	c4 42 79 18 14 3c                               	vbroadcastss xmm10,DWORD PTR [r12+rdi*1]
    3691cc6ab7f8:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    3691cc6ab7fd:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    3691cc6ab802:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    3691cc6ab807:	c4 22 79 18 14 02                               	vbroadcastss xmm10,DWORD PTR [rdx+r8*1]
    3691cc6ab80d:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    3691cc6ab812:	c4 62 79 18 24 02                               	vbroadcastss xmm12,DWORD PTR [rdx+rax*1]
    3691cc6ab818:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    3691cc6ab81d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    3691cc6ab822:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    3691cc6ab828:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    3691cc6ab82d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    3691cc6ab832:	c4 41 48 59 d2                                  	vmulps xmm10,xmm6,xmm10
    3691cc6ab837:	44 8b 24 0a                                     	mov    r12d,DWORD PTR [rdx+rcx*1]
    3691cc6ab83b:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc6ab83f:	0f 85 22 0e 00 00                               	jne    0x3691cc6ac667
    3691cc6ab845:	44 8b 7c 0a 28                                  	mov    r15d,DWORD PTR [rdx+rcx*1+0x28]
    3691cc6ab84a:	45 85 ff                                        	test   r15d,r15d
    3691cc6ab84d:	0f 84 14 0e 00 00                               	je     0x3691cc6ac667
    3691cc6ab853:	8b 5c 0a 1c                                     	mov    ebx,DWORD PTR [rdx+rcx*1+0x1c]
    3691cc6ab857:	85 db                                           	test   ebx,ebx
    3691cc6ab859:	0f 8e 08 0e 00 00                               	jle    0x3691cc6ac667
    3691cc6ab85f:	44 8b 5c 0a 20                                  	mov    r11d,DWORD PTR [rdx+rcx*1+0x20]
    3691cc6ab864:	45 85 db                                        	test   r11d,r11d
    3691cc6ab867:	0f 8e f6 0d 00 00                               	jle    0x3691cc6ac663
    3691cc6ab86d:	44 8b d3                                        	mov    r10d,ebx
    3691cc6ab870:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    3691cc6ab875:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    3691cc6ab87a:	8b 7c 0a 10                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x10]
    3691cc6ab87e:	45 33 c0                                        	xor    r8d,r8d
    3691cc6ab881:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    3691cc6ab887:	41 0f 95 c0                                     	setne  r8b
    3691cc6ab88b:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    3691cc6ab891:	40 0f 95 c7                                     	setne  dil
    3691cc6ab895:	40 0f b6 ff                                     	movzx  edi,dil
    3691cc6ab899:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    3691cc6ab8a0:	41 23 f8                                        	and    edi,r8d
    3691cc6ab8a3:	0f 85 0f 00 00 00                               	jne    0x3691cc6ab8b8
    3691cc6ab8a9:	c4 41 58 5f d2                                  	vmaxps xmm10,xmm4,xmm10
    3691cc6ab8ae:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    3691cc6ab8b3:	e9 0b 00 00 00                                  	jmp    0x3691cc6ab8c3
    3691cc6ab8b8:	c4 43 79 08 ea 09                               	vroundps xmm13,xmm10,0x9
    3691cc6ab8be:	c4 41 28 5c d5                                  	vsubps xmm10,xmm10,xmm13
    3691cc6ab8c3:	c4 41 18 59 d2                                  	vmulps xmm10,xmm12,xmm10
    3691cc6ab8c8:	45 8b d3                                        	mov    r10d,r11d
    3691cc6ab8cb:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    3691cc6ab8d0:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    3691cc6ab8d5:	44 8b 44 0a 14                                  	mov    r8d,DWORD PTR [rdx+rcx*1+0x14]
    3691cc6ab8da:	45 33 e4                                        	xor    r12d,r12d
    3691cc6ab8dd:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    3691cc6ab8e4:	41 0f 95 c4                                     	setne  r12b
    3691cc6ab8e8:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    3691cc6ab8ef:	41 0f 95 c0                                     	setne  r8b
    3691cc6ab8f3:	45 0f b6 c0                                     	movzx  r8d,r8b
    3691cc6ab8f7:	45 23 c4                                        	and    r8d,r12d
    3691cc6ab8fa:	0f 85 0f 00 00 00                               	jne    0x3691cc6ab90f
    3691cc6ab900:	c4 41 58 5f c0                                  	vmaxps xmm8,xmm4,xmm8
    3691cc6ab905:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    3691cc6ab90a:	e9 0b 00 00 00                                  	jmp    0x3691cc6ab91a
    3691cc6ab90f:	c4 43 79 08 e8 09                               	vroundps xmm13,xmm8,0x9
    3691cc6ab915:	c4 41 38 5c c5                                  	vsubps xmm8,xmm8,xmm13
    3691cc6ab91a:	c4 41 18 59 c0                                  	vmulps xmm8,xmm12,xmm8
    3691cc6ab91f:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    3691cc6ab929:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6ab92e:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6ab933:	c4 41 38 58 ec                                  	vaddps xmm13,xmm8,xmm12
    3691cc6ab938:	44 8b 64 0a 0c                                  	mov    r12d,DWORD PTR [rdx+rcx*1+0xc]
    3691cc6ab93d:	45 33 e4                                        	xor    r12d,r12d
    3691cc6ab940:	81 7c 0a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0xc],0x2600
    3691cc6ab948:	41 0f 94 c4                                     	sete   r12b
    3691cc6ab94c:	45 85 e4                                        	test   r12d,r12d
    3691cc6ab94f:	0f 85 66 00 00 00                               	jne    0x3691cc6ab9bb
    3691cc6ab955:	c4 43 79 08 c5 09                               	vroundps xmm8,xmm13,0x9
    3691cc6ab95b:	49 ba 50 c8 35 7d 08 61 00 00                   	movabs r10,0x61087d35c850
    3691cc6ab965:	c4 41 38 54 32                                  	vandps xmm14,xmm8,XMMWORD PTR [r10]
    3691cc6ab96a:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    3691cc6ab974:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc6ab979:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc6ab97d:	c5 08 c2 f1 01                                  	vcmpltps xmm14,xmm14,xmm1
    3691cc6ab982:	4c 8b 15 95 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd95]        # 0x3691cc6a771e
    3691cc6ab989:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc6ab98f:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    3691cc6ab994:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc6ab99a:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    3691cc6ab99e:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    3691cc6ab9a3:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    3691cc6ab9a8:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    3691cc6ab9ad:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    3691cc6ab9b2:	c5 79 28 ec                                     	vmovapd xmm13,xmm4
    3691cc6ab9b6:	e9 49 00 00 00                                  	jmp    0x3691cc6aba04
    3691cc6ab9bb:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    3691cc6ab9c1:	4c 8b 15 95 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff95]        # 0x3691cc6ab95d
    3691cc6ab9c8:	c4 41 18 54 2a                                  	vandps xmm13,xmm12,XMMWORD PTR [r10]
    3691cc6ab9cd:	4c 8b 15 98 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff98]        # 0x3691cc6ab96c
    3691cc6ab9d4:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc6ab9d9:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc6ab9dd:	c5 10 c2 f1 01                                  	vcmpltps xmm14,xmm13,xmm1
    3691cc6ab9e2:	4c 8b 15 35 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd35]        # 0x3691cc6a771e
    3691cc6ab9e9:	c4 41 18 c2 fc 00                               	vcmpeqps xmm15,xmm12,xmm12
    3691cc6ab9ef:	c4 41 18 54 ef                                  	vandps xmm13,xmm12,xmm15
    3691cc6ab9f4:	c4 41 18 c2 3a 0d                               	vcmpgeps xmm15,xmm12,XMMWORD PTR [r10]
    3691cc6ab9fa:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    3691cc6ab9ff:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    3691cc6aba04:	c4 c3 79 08 e2 09                               	vroundps xmm4,xmm10,0x9
    3691cc6aba0a:	4c 8b 15 0d bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd0d]        # 0x3691cc6a771e
    3691cc6aba11:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    3691cc6aba16:	c4 c1 58 54 c7                                  	vandps xmm0,xmm4,xmm15
    3691cc6aba1b:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    3691cc6aba21:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    3691cc6aba25:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    3691cc6aba2a:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    3691cc6aba34:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc6aba39:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc6aba3d:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x3691cc6ab95d
    3691cc6aba44:	c4 41 58 54 0a                                  	vandps xmm9,xmm4,XMMWORD PTR [r10]
    3691cc6aba49:	c5 30 c2 c9 01                                  	vcmpltps xmm9,xmm9,xmm1
    3691cc6aba4e:	c5 31 df fe                                     	vpandn xmm15,xmm9,xmm6
    3691cc6aba52:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    3691cc6aba57:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6aba5c:	8d 43 ff                                        	lea    eax,[rbx-0x1]
    3691cc6aba5f:	c5 79 6e c8                                     	vmovd  xmm9,eax
    3691cc6aba63:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    3691cc6aba68:	8b 44 0a 2c                                     	mov    eax,DWORD PTR [rdx+rcx*1+0x2c]
    3691cc6aba6c:	c4 e2 79 3d ca                                  	vpmaxsd xmm1,xmm0,xmm2
    3691cc6aba71:	c4 c2 71 39 c9                                  	vpminsd xmm1,xmm1,xmm9
    3691cc6aba76:	85 ff                                           	test   edi,edi
    3691cc6aba78:	0f 84 58 00 00 00                               	je     0x3691cc6abad6
    3691cc6aba7e:	c5 f9 6e c8                                     	vmovd  xmm1,eax
    3691cc6aba82:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    3691cc6aba87:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    3691cc6aba8b:	85 c0                                           	test   eax,eax
    3691cc6aba8d:	0f 85 43 00 00 00                               	jne    0x3691cc6abad6
    3691cc6aba93:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    3691cc6aba97:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    3691cc6aba9c:	c4 c1 79 66 d9                                  	vpcmpgtd xmm3,xmm0,xmm9
    3691cc6abaa1:	c5 e1 db d9                                     	vpand  xmm3,xmm3,xmm1
    3691cc6abaa5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6abaaa:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    3691cc6abaaf:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    3691cc6abab3:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    3691cc6abab7:	c4 41 71 db db                                  	vpand  xmm11,xmm1,xmm11
    3691cc6ababc:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    3691cc6abac1:	c4 c1 79 fe cb                                  	vpaddd xmm1,xmm0,xmm11
    3691cc6abac6:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    3691cc6abace:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    3691cc6abad6:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    3691cc6abada:	c4 c1 11 db f6                                  	vpand  xmm6,xmm13,xmm14
    3691cc6abadf:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc6abae4:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    3691cc6abae8:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    3691cc6abaed:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6abaf2:	8b 4c 0a 30                                     	mov    ecx,DWORD PTR [rdx+rcx*1+0x30]
    3691cc6abaf6:	c4 62 49 3d f2                                  	vpmaxsd xmm14,xmm6,xmm2
    3691cc6abafb:	c4 42 09 39 f5                                  	vpminsd xmm14,xmm14,xmm13
    3691cc6abb00:	45 85 c0                                        	test   r8d,r8d
    3691cc6abb03:	0f 84 4a 00 00 00                               	je     0x3691cc6abb53
    3691cc6abb09:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    3691cc6abb0d:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    3691cc6abb12:	c5 09 db f6                                     	vpand  xmm14,xmm14,xmm6
    3691cc6abb16:	85 c9                                           	test   ecx,ecx
    3691cc6abb18:	0f 85 35 00 00 00                               	jne    0x3691cc6abb53
    3691cc6abb1e:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    3691cc6abb23:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    3691cc6abb28:	c4 c1 49 66 dd                                  	vpcmpgtd xmm3,xmm6,xmm13
    3691cc6abb2d:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    3691cc6abb32:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6abb37:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    3691cc6abb3c:	c5 69 66 de                                     	vpcmpgtd xmm11,xmm2,xmm6
    3691cc6abb40:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    3691cc6abb44:	c4 41 09 db db                                  	vpand  xmm11,xmm14,xmm11
    3691cc6abb49:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    3691cc6abb4e:	c4 41 49 fe f3                                  	vpaddd xmm14,xmm6,xmm11
    3691cc6abb53:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    3691cc6abb57:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    3691cc6abb5c:	c4 62 09 40 f3                                  	vpmulld xmm14,xmm14,xmm3
    3691cc6abb61:	c5 09 fe d9                                     	vpaddd xmm11,xmm14,xmm1
    3691cc6abb65:	c4 63 79 16 db 03                               	vpextrd ebx,xmm11,0x3
    3691cc6abb6b:	c4 43 79 16 d9 02                               	vpextrd r9d,xmm11,0x2
    3691cc6abb71:	48 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rbx
    3691cc6abb78:	c4 63 79 16 db 01                               	vpextrd ebx,xmm11,0x1
    3691cc6abb7e:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    3691cc6abb85:	c4 41 79 7e d9                                  	vmovd  r9d,xmm11
    3691cc6abb8a:	45 85 e4                                        	test   r12d,r12d
    3691cc6abb8d:	0f 85 df 08 00 00                               	jne    0x3691cc6ac472
    3691cc6abb93:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    3691cc6abb97:	c4 62 79 3d da                                  	vpmaxsd xmm11,xmm0,xmm2
    3691cc6abb9c:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    3691cc6abba1:	85 ff                                           	test   edi,edi
    3691cc6abba3:	0f 84 41 00 00 00                               	je     0x3691cc6abbea
    3691cc6abba9:	c5 79 6e d8                                     	vmovd  xmm11,eax
    3691cc6abbad:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    3691cc6abbb2:	c4 41 79 db db                                  	vpand  xmm11,xmm0,xmm11
    3691cc6abbb7:	85 c0                                           	test   eax,eax
    3691cc6abbb9:	0f 85 2b 00 00 00                               	jne    0x3691cc6abbea
    3691cc6abbbf:	c4 41 79 66 c9                                  	vpcmpgtd xmm9,xmm0,xmm9
    3691cc6abbc4:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    3691cc6abbc8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6abbcd:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    3691cc6abbd2:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    3691cc6abbd6:	c4 41 21 df f9                                  	vpandn xmm15,xmm11,xmm9
    3691cc6abbdb:	c4 41 61 db cb                                  	vpand  xmm9,xmm3,xmm11
    3691cc6abbe0:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc6abbe5:	c4 41 79 fe d9                                  	vpaddd xmm11,xmm0,xmm9
    3691cc6abbea:	c5 c9 fe c7                                     	vpaddd xmm0,xmm6,xmm7
    3691cc6abbee:	c4 e2 79 3d f2                                  	vpmaxsd xmm6,xmm0,xmm2
    3691cc6abbf3:	c4 c2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm13
    3691cc6abbf8:	45 85 c0                                        	test   r8d,r8d
    3691cc6abbfb:	0f 84 49 00 00 00                               	je     0x3691cc6abc4a
    3691cc6abc01:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    3691cc6abc05:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    3691cc6abc0a:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    3691cc6abc0e:	85 c9                                           	test   ecx,ecx
    3691cc6abc10:	0f 85 34 00 00 00                               	jne    0x3691cc6abc4a
    3691cc6abc16:	c4 c1 79 6e f3                                  	vmovd  xmm6,r11d
    3691cc6abc1b:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    3691cc6abc20:	c4 41 79 66 cd                                  	vpcmpgtd xmm9,xmm0,xmm13
    3691cc6abc25:	c5 31 db ce                                     	vpand  xmm9,xmm9,xmm6
    3691cc6abc29:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6abc2e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    3691cc6abc33:	c5 69 66 e8                                     	vpcmpgtd xmm13,xmm2,xmm0
    3691cc6abc37:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    3691cc6abc3c:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    3691cc6abc41:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc6abc46:	c5 f9 fe f6                                     	vpaddd xmm6,xmm0,xmm6
    3691cc6abc4a:	c4 e2 49 40 c3                                  	vpmulld xmm0,xmm6,xmm3
    3691cc6abc4f:	c5 f9 fe f1                                     	vpaddd xmm6,xmm0,xmm1
    3691cc6abc53:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    3691cc6abc5a:	0f 84 71 00 00 00                               	je     0x3691cc6abcd1
    3691cc6abc60:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    3691cc6abc67:	0f 85 07 00 00 00                               	jne    0x3691cc6abc74
    3691cc6abc6d:	33 ff                                           	xor    edi,edi
    3691cc6abc6f:	e9 07 00 00 00                                  	jmp    0x3691cc6abc7b
    3691cc6abc74:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    3691cc6abc78:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6abc7b:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    3691cc6abc82:	0f 85 08 00 00 00                               	jne    0x3691cc6abc90
    3691cc6abc88:	45 33 c0                                        	xor    r8d,r8d
    3691cc6abc8b:	e9 08 00 00 00                                  	jmp    0x3691cc6abc98
    3691cc6abc90:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    3691cc6abc94:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    3691cc6abc98:	83 bd 50 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1b0],0x0
    3691cc6abc9f:	0f 85 08 00 00 00                               	jne    0x3691cc6abcad
    3691cc6abca5:	45 33 db                                        	xor    r11d,r11d
    3691cc6abca8:	e9 0f 00 00 00                                  	jmp    0x3691cc6abcbc
    3691cc6abcad:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    3691cc6abcb4:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    3691cc6abcb8:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6abcbc:	83 bd b0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x150],0x0
    3691cc6abcc3:	0f 85 3c 00 00 00                               	jne    0x3691cc6abd05
    3691cc6abcc9:	45 33 e4                                        	xor    r12d,r12d
    3691cc6abccc:	e9 43 00 00 00                                  	jmp    0x3691cc6abd14
    3691cc6abcd1:	c5 71 fe cf                                     	vpaddd xmm9,xmm1,xmm7
    3691cc6abcd5:	c4 41 21 76 c9                                  	vpcmpeqd xmm9,xmm11,xmm9
    3691cc6abcda:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    3691cc6abcdf:	83 ff 0f                                        	cmp    edi,0xf
    3691cc6abce2:	0f 84 f8 02 00 00                               	je     0x3691cc6abfe0
    3691cc6abce8:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    3691cc6abcee:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abcf2:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    3691cc6abcf6:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    3691cc6abcfa:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    3691cc6abcfe:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    3691cc6abd02:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6abd05:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    3691cc6abd0c:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    3691cc6abd10:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    3691cc6abd14:	c4 41 21 fe ce                                  	vpaddd xmm9,xmm11,xmm14
    3691cc6abd19:	c5 79 6e ef                                     	vmovd  xmm13,edi
    3691cc6abd1d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6abd22:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    3691cc6abd29:	0f 84 8a 00 00 00                               	je     0x3691cc6abdb9
    3691cc6abd2f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    3691cc6abd36:	0f 85 07 00 00 00                               	jne    0x3691cc6abd43
    3691cc6abd3c:	33 ff                                           	xor    edi,edi
    3691cc6abd3e:	e9 0b 00 00 00                                  	jmp    0x3691cc6abd4e
    3691cc6abd43:	c5 79 7e cf                                     	vmovd  edi,xmm9
    3691cc6abd47:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abd4b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6abd4e:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    3691cc6abd55:	0f 85 07 00 00 00                               	jne    0x3691cc6abd62
    3691cc6abd5b:	33 c0                                           	xor    eax,eax
    3691cc6abd5d:	e9 0d 00 00 00                                  	jmp    0x3691cc6abd6f
    3691cc6abd62:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    3691cc6abd68:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    3691cc6abd6c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    3691cc6abd6f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    3691cc6abd76:	0f 85 07 00 00 00                               	jne    0x3691cc6abd83
    3691cc6abd7c:	33 db                                           	xor    ebx,ebx
    3691cc6abd7e:	e9 0d 00 00 00                                  	jmp    0x3691cc6abd90
    3691cc6abd83:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    3691cc6abd89:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    3691cc6abd8d:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    3691cc6abd90:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    3691cc6abd97:	0f 85 41 00 00 00                               	jne    0x3691cc6abdde
    3691cc6abd9d:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    3691cc6abda3:	c5 79 6e ef                                     	vmovd  xmm13,edi
    3691cc6abda7:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6abdac:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    3691cc6abdb2:	33 c9                                           	xor    ecx,ecx
    3691cc6abdb4:	e9 54 00 00 00                                  	jmp    0x3691cc6abe0d
    3691cc6abdb9:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    3691cc6abdbf:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abdc3:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    3691cc6abdc6:	c5 79 7e cf                                     	vmovd  edi,xmm9
    3691cc6abdca:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abdce:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6abdd1:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    3691cc6abdd7:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    3691cc6abddb:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    3691cc6abdde:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    3691cc6abde4:	41 8d 0c 8f                                     	lea    ecx,[r15+rcx*4]
    3691cc6abde8:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    3691cc6abdeb:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    3691cc6abdf1:	c5 79 6e ef                                     	vmovd  xmm13,edi
    3691cc6abdf5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6abdfa:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    3691cc6abe00:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    3691cc6abe07:	0f 84 78 00 00 00                               	je     0x3691cc6abe85
    3691cc6abe0d:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    3691cc6abe14:	0f 85 07 00 00 00                               	jne    0x3691cc6abe21
    3691cc6abe1a:	33 ff                                           	xor    edi,edi
    3691cc6abe1c:	e9 0b 00 00 00                                  	jmp    0x3691cc6abe2c
    3691cc6abe21:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    3691cc6abe25:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abe29:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6abe2c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    3691cc6abe33:	0f 85 08 00 00 00                               	jne    0x3691cc6abe41
    3691cc6abe39:	45 33 c0                                        	xor    r8d,r8d
    3691cc6abe3c:	e9 0e 00 00 00                                  	jmp    0x3691cc6abe4f
    3691cc6abe41:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    3691cc6abe47:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    3691cc6abe4b:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    3691cc6abe4f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    3691cc6abe56:	0f 85 07 00 00 00                               	jne    0x3691cc6abe63
    3691cc6abe5c:	33 c0                                           	xor    eax,eax
    3691cc6abe5e:	e9 0d 00 00 00                                  	jmp    0x3691cc6abe70
    3691cc6abe63:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    3691cc6abe69:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    3691cc6abe6d:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    3691cc6abe70:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    3691cc6abe77:	0f 85 2e 00 00 00                               	jne    0x3691cc6abeab
    3691cc6abe7d:	45 33 c9                                        	xor    r9d,r9d
    3691cc6abe80:	e9 34 00 00 00                                  	jmp    0x3691cc6abeb9
    3691cc6abe85:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    3691cc6abe8b:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abe8f:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    3691cc6abe93:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    3691cc6abe97:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abe9b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6abe9e:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    3691cc6abea4:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    3691cc6abea8:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    3691cc6abeab:	c4 c3 79 16 f1 03                               	vpextrd r9d,xmm6,0x3
    3691cc6abeb1:	47 8d 0c 8f                                     	lea    r9d,[r15+r9*4]
    3691cc6abeb5:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    3691cc6abeb9:	c4 c3 31 22 f3 02                               	vpinsrd xmm6,xmm9,r11d,0x2
    3691cc6abebf:	c4 63 11 22 cb 02                               	vpinsrd xmm9,xmm13,ebx,0x2
    3691cc6abec5:	c4 c1 79 fe c3                                  	vpaddd xmm0,xmm0,xmm11
    3691cc6abeca:	c5 79 6e df                                     	vmovd  xmm11,edi
    3691cc6abece:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    3691cc6abed3:	c4 43 21 22 d8 01                               	vpinsrd xmm11,xmm11,r8d,0x1
    3691cc6abed9:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    3691cc6abedf:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    3691cc6abee6:	0f 84 7a 00 00 00                               	je     0x3691cc6abf66
    3691cc6abeec:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    3691cc6abef3:	0f 85 07 00 00 00                               	jne    0x3691cc6abf00
    3691cc6abef9:	33 ff                                           	xor    edi,edi
    3691cc6abefb:	e9 0b 00 00 00                                  	jmp    0x3691cc6abf0b
    3691cc6abf00:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    3691cc6abf04:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abf08:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6abf0b:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    3691cc6abf12:	0f 85 08 00 00 00                               	jne    0x3691cc6abf20
    3691cc6abf18:	45 33 c0                                        	xor    r8d,r8d
    3691cc6abf1b:	e9 0e 00 00 00                                  	jmp    0x3691cc6abf2e
    3691cc6abf20:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    3691cc6abf26:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    3691cc6abf2a:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    3691cc6abf2e:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    3691cc6abf35:	0f 85 08 00 00 00                               	jne    0x3691cc6abf43
    3691cc6abf3b:	45 33 db                                        	xor    r11d,r11d
    3691cc6abf3e:	e9 0e 00 00 00                                  	jmp    0x3691cc6abf51
    3691cc6abf43:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    3691cc6abf49:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    3691cc6abf4d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6abf51:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    3691cc6abf58:	0f 85 2f 00 00 00                               	jne    0x3691cc6abf8d
    3691cc6abf5e:	45 33 ff                                        	xor    r15d,r15d
    3691cc6abf61:	e9 35 00 00 00                                  	jmp    0x3691cc6abf9b
    3691cc6abf66:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    3691cc6abf6c:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abf70:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    3691cc6abf74:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    3691cc6abf78:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6abf7c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6abf7f:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    3691cc6abf85:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    3691cc6abf89:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6abf8d:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    3691cc6abf93:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    3691cc6abf97:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    3691cc6abf9b:	c4 c3 49 22 c4 03                               	vpinsrd xmm0,xmm6,r12d,0x3
    3691cc6abfa1:	c4 e3 31 22 f1 03                               	vpinsrd xmm6,xmm9,ecx,0x3
    3691cc6abfa7:	c5 79 6e cf                                     	vmovd  xmm9,edi
    3691cc6abfab:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    3691cc6abfb0:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    3691cc6abfb6:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    3691cc6abfbc:	c4 43 31 22 cf 03                               	vpinsrd xmm9,xmm9,r15d,0x3
    3691cc6abfc2:	c4 43 21 22 d9 03                               	vpinsrd xmm11,xmm11,r9d,0x3
    3691cc6abfc8:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    3691cc6abfcc:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    3691cc6abfd1:	c4 41 79 28 df                                  	vmovapd xmm11,xmm15
    3691cc6abfd6:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    3691cc6abfdb:	e9 95 00 00 00                                  	jmp    0x3691cc6ac075
    3691cc6abfe0:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    3691cc6abfe4:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    3691cc6abfe9:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    3691cc6abfed:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    3691cc6abff2:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    3691cc6abff7:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    3691cc6abffd:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6ac001:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    3691cc6ac006:	44 8b 85 c8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x138]
    3691cc6ac00d:	43 8d 3c 87                                     	lea    edi,[r15+r8*4]
    3691cc6ac011:	c5 7b 10 1c 3a                                  	vmovsd xmm11,QWORD PTR [rdx+rdi*1]
    3691cc6ac016:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    3691cc6ac01b:	c4 41 78 c6 d9 dd                               	vshufps xmm11,xmm0,xmm9,0xdd
    3691cc6ac021:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    3691cc6ac027:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    3691cc6ac02c:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    3691cc6ac030:	41 03 ff                                        	add    edi,r15d
    3691cc6ac033:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    3691cc6ac038:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    3691cc6ac03e:	41 03 ff                                        	add    edi,r15d
    3691cc6ac041:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    3691cc6ac046:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    3691cc6ac04b:	c4 e3 79 16 f7 02                               	vpextrd edi,xmm6,0x2
    3691cc6ac051:	41 03 ff                                        	add    edi,r15d
    3691cc6ac054:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    3691cc6ac059:	c4 e3 79 16 f7 03                               	vpextrd edi,xmm6,0x3
    3691cc6ac05f:	41 03 ff                                        	add    edi,r15d
    3691cc6ac062:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    3691cc6ac067:	c5 91 6c f6                                     	vpunpcklqdq xmm6,xmm13,xmm6
    3691cc6ac06b:	c5 30 c6 ee dd                                  	vshufps xmm13,xmm9,xmm6,0xdd
    3691cc6ac070:	c5 b0 c6 f6 88                                  	vshufps xmm6,xmm9,xmm6,0x88
    3691cc6ac075:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    3691cc6ac07a:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    3691cc6ac07f:	c5 28 5c d4                                     	vsubps xmm10,xmm10,xmm4
    3691cc6ac083:	c4 41 50 5c e2                                  	vsubps xmm12,xmm5,xmm10
    3691cc6ac088:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    3691cc6ac092:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc6ac097:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc6ac09c:	c4 c1 79 db ce                                  	vpand  xmm1,xmm0,xmm14
    3691cc6ac0a1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac0a6:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc6ac0ac:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc6ac0b1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac0b6:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc6ac0bb:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc6ac0bf:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc6ac0c3:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc6ac0c8:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    3691cc6ac0cc:	c4 c1 21 db de                                  	vpand  xmm3,xmm11,xmm14
    3691cc6ac0d1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac0d6:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    3691cc6ac0dc:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    3691cc6ac0e1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac0e6:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    3691cc6ac0eb:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    3691cc6ac0ef:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    3691cc6ac0f3:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    3691cc6ac0f8:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    3691cc6ac0fc:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    3691cc6ac100:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc6ac104:	c4 c1 49 db de                                  	vpand  xmm3,xmm6,xmm14
    3691cc6ac109:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac10e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    3691cc6ac114:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    3691cc6ac119:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac11e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    3691cc6ac123:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    3691cc6ac127:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    3691cc6ac12b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    3691cc6ac130:	c5 98 59 db                                     	vmulps xmm3,xmm12,xmm3
    3691cc6ac134:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    3691cc6ac139:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac13e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc6ac144:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc6ac149:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac14e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc6ac153:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc6ac157:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc6ac15b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc6ac160:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    3691cc6ac164:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    3691cc6ac168:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    3691cc6ac16c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    3691cc6ac170:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    3691cc6ac17a:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6ac17f:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc6ac183:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    3691cc6ac187:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    3691cc6ac18e:	c4 a1 7a 7f 0c 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm1
    3691cc6ac194:	c5 f1 72 d0 10                                  	vpsrld xmm1,xmm0,0x10
    3691cc6ac199:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    3691cc6ac19e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac1a3:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc6ac1a9:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc6ac1ae:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac1b3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc6ac1b8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc6ac1bc:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc6ac1c0:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc6ac1c5:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    3691cc6ac1c9:	c4 c1 59 72 d3 10                               	vpsrld xmm4,xmm11,0x10
    3691cc6ac1cf:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    3691cc6ac1d4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac1d9:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc6ac1df:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc6ac1e4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac1e9:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc6ac1ee:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc6ac1f2:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc6ac1f6:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc6ac1fb:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    3691cc6ac1ff:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    3691cc6ac203:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc6ac207:	c5 d9 72 d6 10                                  	vpsrld xmm4,xmm6,0x10
    3691cc6ac20c:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    3691cc6ac211:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac216:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    3691cc6ac21c:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    3691cc6ac221:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac226:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    3691cc6ac22b:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    3691cc6ac22f:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    3691cc6ac233:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    3691cc6ac238:	c5 98 59 e4                                     	vmulps xmm4,xmm12,xmm4
    3691cc6ac23c:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    3691cc6ac242:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    3691cc6ac247:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac24c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc6ac252:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc6ac257:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac25c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc6ac261:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc6ac265:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc6ac269:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc6ac26e:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    3691cc6ac272:	c5 d8 58 d2                                     	vaddps xmm2,xmm4,xmm2
    3691cc6ac276:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    3691cc6ac27a:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    3691cc6ac27e:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    3691cc6ac282:	c4 a1 7a 7f 4c 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm1
    3691cc6ac289:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    3691cc6ac28e:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    3691cc6ac293:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac298:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    3691cc6ac29e:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    3691cc6ac2a3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac2a8:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    3691cc6ac2ad:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    3691cc6ac2b1:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    3691cc6ac2b5:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    3691cc6ac2ba:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    3691cc6ac2be:	c4 c1 69 72 d3 08                               	vpsrld xmm2,xmm11,0x8
    3691cc6ac2c4:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    3691cc6ac2c9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac2ce:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc6ac2d4:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc6ac2d9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac2de:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc6ac2e3:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc6ac2e7:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc6ac2eb:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc6ac2f0:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    3691cc6ac2f4:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    3691cc6ac2f8:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    3691cc6ac2fc:	c5 e9 72 d6 08                                  	vpsrld xmm2,xmm6,0x8
    3691cc6ac301:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    3691cc6ac306:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac30b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    3691cc6ac311:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    3691cc6ac316:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac31b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    3691cc6ac320:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    3691cc6ac324:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    3691cc6ac328:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    3691cc6ac32d:	c5 98 59 d2                                     	vmulps xmm2,xmm12,xmm2
    3691cc6ac331:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    3691cc6ac337:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    3691cc6ac33c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac341:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    3691cc6ac347:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    3691cc6ac34c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac351:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    3691cc6ac357:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    3691cc6ac35c:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    3691cc6ac361:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    3691cc6ac366:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    3691cc6ac36b:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    3691cc6ac370:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    3691cc6ac375:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    3691cc6ac37a:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    3691cc6ac37e:	c4 21 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm14
    3691cc6ac385:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    3691cc6ac38a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac38f:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc6ac395:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc6ac39a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac39f:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc6ac3a4:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc6ac3a8:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc6ac3ac:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc6ac3b1:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    3691cc6ac3b5:	c4 c1 21 72 d3 18                               	vpsrld xmm11,xmm11,0x18
    3691cc6ac3bb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac3c0:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    3691cc6ac3c6:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    3691cc6ac3cb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac3d0:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    3691cc6ac3d6:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    3691cc6ac3db:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    3691cc6ac3e0:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    3691cc6ac3e5:	c4 41 28 59 db                                  	vmulps xmm11,xmm10,xmm11
    3691cc6ac3ea:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6ac3ef:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc6ac3f3:	c5 c9 72 d6 18                                  	vpsrld xmm6,xmm6,0x18
    3691cc6ac3f8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac3fd:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    3691cc6ac403:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    3691cc6ac408:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac40d:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    3691cc6ac412:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    3691cc6ac416:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    3691cc6ac41a:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    3691cc6ac41f:	c5 98 59 f6                                     	vmulps xmm6,xmm12,xmm6
    3691cc6ac423:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    3691cc6ac429:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac42e:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    3691cc6ac434:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    3691cc6ac439:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac43e:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    3691cc6ac444:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    3691cc6ac449:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    3691cc6ac44e:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    3691cc6ac453:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    3691cc6ac458:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    3691cc6ac45d:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    3691cc6ac461:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc6ac465:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    3691cc6ac46d:	e9 cd 01 00 00                                  	jmp    0x3691cc6ac63f
    3691cc6ac472:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    3691cc6ac479:	0f 84 71 00 00 00                               	je     0x3691cc6ac4f0
    3691cc6ac47f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    3691cc6ac486:	0f 85 07 00 00 00                               	jne    0x3691cc6ac493
    3691cc6ac48c:	33 ff                                           	xor    edi,edi
    3691cc6ac48e:	e9 07 00 00 00                                  	jmp    0x3691cc6ac49a
    3691cc6ac493:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    3691cc6ac497:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ac49a:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    3691cc6ac4a1:	0f 85 08 00 00 00                               	jne    0x3691cc6ac4af
    3691cc6ac4a7:	45 33 c0                                        	xor    r8d,r8d
    3691cc6ac4aa:	e9 08 00 00 00                                  	jmp    0x3691cc6ac4b7
    3691cc6ac4af:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    3691cc6ac4b3:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    3691cc6ac4b7:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    3691cc6ac4be:	0f 85 08 00 00 00                               	jne    0x3691cc6ac4cc
    3691cc6ac4c4:	45 33 db                                        	xor    r11d,r11d
    3691cc6ac4c7:	e9 0f 00 00 00                                  	jmp    0x3691cc6ac4db
    3691cc6ac4cc:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    3691cc6ac4d3:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    3691cc6ac4d7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6ac4db:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    3691cc6ac4e2:	0f 85 25 00 00 00                               	jne    0x3691cc6ac50d
    3691cc6ac4e8:	45 33 e4                                        	xor    r12d,r12d
    3691cc6ac4eb:	e9 2c 00 00 00                                  	jmp    0x3691cc6ac51c
    3691cc6ac4f0:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    3691cc6ac4f6:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    3691cc6ac4fa:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    3691cc6ac4fe:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    3691cc6ac502:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    3691cc6ac506:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    3691cc6ac50a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ac50d:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    3691cc6ac514:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    3691cc6ac518:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    3691cc6ac51c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    3691cc6ac520:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6ac525:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    3691cc6ac52b:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    3691cc6ac531:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    3691cc6ac537:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x3691cc6ac08a
    3691cc6ac53e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc6ac543:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc6ac547:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    3691cc6ac54b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac550:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6ac556:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6ac55b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac560:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6ac566:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6ac56b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6ac570:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6ac575:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x3691cc6ac172
    3691cc6ac57c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6ac581:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6ac586:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    3691cc6ac58b:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    3691cc6ac592:	c4 21 7a 7f 04 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm8
    3691cc6ac598:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    3691cc6ac59d:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    3691cc6ac5a1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac5a6:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6ac5ac:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6ac5b1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac5b6:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6ac5bc:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6ac5c1:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6ac5c6:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6ac5cb:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    3691cc6ac5d0:	c4 21 7a 7f 44 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm8
    3691cc6ac5d7:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    3691cc6ac5dc:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    3691cc6ac5e0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac5e5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    3691cc6ac5eb:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    3691cc6ac5f0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac5f5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    3691cc6ac5fa:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    3691cc6ac5fe:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    3691cc6ac602:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    3691cc6ac607:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    3691cc6ac60c:	c4 a1 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm6
    3691cc6ac613:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    3691cc6ac618:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ac61d:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc6ac623:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc6ac628:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ac62d:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc6ac632:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc6ac636:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc6ac63a:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc6ac63f:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x3691cc6ac172
    3691cc6ac646:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc6ac64b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc6ac64f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    3691cc6ac653:	c4 a1 7a 7f 44 1a 30                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x30],xmm0
    3691cc6ac65a:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6ac65e:	e9 4b 03 00 00                                  	jmp    0x3691cc6ac9ae
    3691cc6ac663:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6ac667:	4c 8d 7a 08                                     	lea    r15,[rdx+0x8]
    3691cc6ac66b:	c4 82 79 18 04 07                               	vbroadcastss xmm0,DWORD PTR [r15+r8*1]
    3691cc6ac671:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    3691cc6ac675:	c4 42 79 18 24 07                               	vbroadcastss xmm12,DWORD PTR [r15+rax*1]
    3691cc6ac67b:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    3691cc6ac67f:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    3691cc6ac684:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    3691cc6ac689:	c4 42 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [r15+rdi*1]
    3691cc6ac68f:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    3691cc6ac694:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    3691cc6ac699:	c5 c8 59 d8                                     	vmulps xmm3,xmm6,xmm0
    3691cc6ac69d:	41 83 fc 03                                     	cmp    r12d,0x3
    3691cc6ac6a1:	0f 84 7a 02 00 00                               	je     0x3691cc6ac921
    3691cc6ac6a7:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    3691cc6ac6af:	41 8b fb                                        	mov    edi,r11d
    3691cc6ac6b2:	c5 fa 7f 84 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm0
    3691cc6ac6bb:	c5 fa 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm0
    3691cc6ac6c4:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    3691cc6ac6cd:	c5 7a 7f 94 3a f0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1f0],xmm10
    3691cc6ac6d6:	c5 7a 7f 84 3a e0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1e0],xmm8
    3691cc6ac6df:	c5 fa 7f 9c 3a d0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1d0],xmm3
    3691cc6ac6e8:	c5 fa 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm0
    3691cc6ac6f1:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    3691cc6ac6f8:	48 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rcx
    3691cc6ac6ff:	45 33 c0                                        	xor    r8d,r8d
    3691cc6ac702:	e9 46 00 00 00                                  	jmp    0x3691cc6ac74d
    3691cc6ac707:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ac710:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ac719:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ac722:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ac72b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ac734:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ac73d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    3691cc6ac740:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    3691cc6ac746:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6ac749:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6ac74d:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    3691cc6ac754:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc6ac759:	0f 85 54 3b 00 00                               	jne    0x3691cc6b02b3
    3691cc6ac75f:	8b c1                                           	mov    eax,ecx
    3691cc6ac761:	41 8b c8                                        	mov    ecx,r8d
    3691cc6ac764:	4c 8b 9d 20 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe0]
    3691cc6ac76b:	41 d3 eb                                        	shr    r11d,cl
    3691cc6ac76e:	41 f6 c3 01                                     	test   r11b,0x1
    3691cc6ac772:	0f 84 ff 00 00 00                               	je     0x3691cc6ac877
    3691cc6ac778:	8b 4c 02 10                                     	mov    ecx,DWORD PTR [rdx+rax*1+0x10]
    3691cc6ac77c:	44 8b 5c 02 0c                                  	mov    r11d,DWORD PTR [rdx+rax*1+0xc]
    3691cc6ac781:	44 8b 64 02 08                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x8]
    3691cc6ac786:	44 8b 64 02 04                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x4]
    3691cc6ac78b:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    3691cc6ac78f:	41 83 ff 02                                     	cmp    r15d,0x2
    3691cc6ac793:	0f 84 89 00 00 00                               	je     0x3691cc6ac822
    3691cc6ac799:	45 85 ff                                        	test   r15d,r15d
    3691cc6ac79c:	0f 85 32 00 00 00                               	jne    0x3691cc6ac7d4
    3691cc6ac7a2:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    3691cc6ac7aa:	c4 a1 7a 10 0c 3a                               	vmovss xmm1,DWORD PTR [rdx+r15*1]
    3691cc6ac7b0:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    3691cc6ac7b7:	41 8b d8                                        	mov    ebx,r8d
    3691cc6ac7ba:	c1 e3 04                                        	shl    ebx,0x4
    3691cc6ac7bd:	41 03 df                                        	add    ebx,r15d
    3691cc6ac7c0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ac7c4:	41 8b c4                                        	mov    eax,r12d
    3691cc6ac7c7:	41 8b d3                                        	mov    edx,r11d
    3691cc6ac7ca:	e8 51 4a f1 ff                                  	call   0x3691cc5c1220
    3691cc6ac7cf:	e9 a3 00 00 00                                  	jmp    0x3691cc6ac877
    3691cc6ac7d4:	4c 8b fa                                        	mov    r15,rdx
    3691cc6ac7d7:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    3691cc6ac7dc:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    3691cc6ac7e4:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    3691cc6ac7ea:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    3691cc6ac7f2:	c4 41 7a 10 04 17                               	vmovss xmm8,DWORD PTR [r15+rdx*1]
    3691cc6ac7f8:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    3691cc6ac7fe:	41 8b f0                                        	mov    esi,r8d
    3691cc6ac801:	c1 e6 04                                        	shl    esi,0x4
    3691cc6ac804:	03 d6                                           	add    edx,esi
    3691cc6ac806:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ac80a:	41 8b c4                                        	mov    eax,r12d
    3691cc6ac80d:	44 8b ca                                        	mov    r9d,edx
    3691cc6ac810:	41 8b d3                                        	mov    edx,r11d
    3691cc6ac813:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    3691cc6ac818:	e8 1b 4a f1 ff                                  	call   0x3691cc5c1238
    3691cc6ac81d:	e9 55 00 00 00                                  	jmp    0x3691cc6ac877
    3691cc6ac822:	4c 8b fa                                        	mov    r15,rdx
    3691cc6ac825:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    3691cc6ac82a:	45 8b 4c 07 18                                  	mov    r9d,DWORD PTR [r15+rax*1+0x18]
    3691cc6ac82f:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    3691cc6ac837:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    3691cc6ac83d:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    3691cc6ac845:	c4 c1 7a 10 14 17                               	vmovss xmm2,DWORD PTR [r15+rdx*1]
    3691cc6ac84b:	42 8d 94 87 d0 01 00 00                         	lea    edx,[rdi+r8*4+0x1d0]
    3691cc6ac853:	c4 c1 7a 10 1c 17                               	vmovss xmm3,DWORD PTR [r15+rdx*1]
    3691cc6ac859:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    3691cc6ac85f:	41 8b f0                                        	mov    esi,r8d
    3691cc6ac862:	c1 e6 04                                        	shl    esi,0x4
    3691cc6ac865:	03 d6                                           	add    edx,esi
    3691cc6ac867:	52                                              	push   rdx
    3691cc6ac868:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ac86c:	41 8b c4                                        	mov    eax,r12d
    3691cc6ac86f:	41 8b d3                                        	mov    edx,r11d
    3691cc6ac872:	e8 b1 49 f1 ff                                  	call   0x3691cc5c1228
    3691cc6ac877:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    3691cc6ac87e:	41 83 c0 01                                     	add    r8d,0x1
    3691cc6ac882:	41 83 f8 04                                     	cmp    r8d,0x4
    3691cc6ac886:	0f 85 b4 fe ff ff                               	jne    0x3691cc6ac740
    3691cc6ac88c:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    3691cc6ac88f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6ac893:	c4 c1 7a 6f 84 18 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x1b0]
    3691cc6ac89d:	c4 c1 7a 6f b4 18 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0x1c0]
    3691cc6ac8a7:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    3691cc6ac8ab:	c4 41 7a 6f 84 18 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x190]
    3691cc6ac8b5:	c4 41 7a 6f 8c 18 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x1a0]
    3691cc6ac8bf:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    3691cc6ac8c4:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    3691cc6ac8c8:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    3691cc6ac8ce:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    3691cc6ac8d5:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    3691cc6ac8d9:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    3691cc6ac8e0:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    3691cc6ac8e4:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    3691cc6ac8e9:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    3691cc6ac8ed:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    3691cc6ac8f4:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    3691cc6ac8f8:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    3691cc6ac8fe:	44 8b db                                        	mov    r11d,ebx
    3691cc6ac901:	49 8b d0                                        	mov    rdx,r8
    3691cc6ac904:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    3691cc6ac90c:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    3691cc6ac914:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    3691cc6ac91c:	e9 8d 00 00 00                                  	jmp    0x3691cc6ac9ae
    3691cc6ac921:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ac925:	8b c1                                           	mov    eax,ecx
    3691cc6ac927:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    3691cc6ac92c:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    3691cc6ac931:	41 8b c9                                        	mov    ecx,r9d
    3691cc6ac934:	48 8b 95 20 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe0]
    3691cc6ac93b:	e8 e8 4b f1 ff                                  	call   0x3691cc5c1528
    3691cc6ac940:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6ac944:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6ac948:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    3691cc6ac950:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    3691cc6ac958:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    3691cc6ac960:	e9 49 00 00 00                                  	jmp    0x3691cc6ac9ae
    3691cc6ac965:	48 8b fa                                        	mov    rdi,rdx
    3691cc6ac968:	48 8d 57 3c                                     	lea    rdx,[rdi+0x3c]
    3691cc6ac96c:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    3691cc6ac972:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    3691cc6ac978:	48 8d 57 40                                     	lea    rdx,[rdi+0x40]
    3691cc6ac97c:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    3691cc6ac982:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    3691cc6ac989:	48 8d 57 44                                     	lea    rdx,[rdi+0x44]
    3691cc6ac98d:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    3691cc6ac993:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    3691cc6ac99a:	48 8d 57 48                                     	lea    rdx,[rdi+0x48]
    3691cc6ac99e:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    3691cc6ac9a4:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
    3691cc6ac9ab:	48 8b d7                                        	mov    rdx,rdi
    3691cc6ac9ae:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    3691cc6ac9b5:	41 83 c0 01                                     	add    r8d,0x1
    3691cc6ac9b9:	41 83 f8 04                                     	cmp    r8d,0x4
    3691cc6ac9bd:	0f 85 3d ed ff ff                               	jne    0x3691cc6ab700
    3691cc6ac9c3:	41 8b db                                        	mov    ebx,r11d
    3691cc6ac9c6:	c5 fa 6f 84 1a 90 00 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x90]
    3691cc6ac9cf:	4c 8b 15 4b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4b]        # 0x3691cc6ab921
    3691cc6ac9d6:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc6ac9db:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc6ac9df:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc6ac9e3:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    3691cc6ac9eb:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    3691cc6ac9ef:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    3691cc6ac9f4:	c5 7a 6f 84 1a a0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xa0]
    3691cc6ac9fd:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    3691cc6aca01:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    3691cc6aca09:	c5 30 58 ce                                     	vaddps xmm9,xmm9,xmm6
    3691cc6aca0d:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    3691cc6aca12:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    3691cc6aca17:	c5 7a 6f 84 1a b0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xb0]
    3691cc6aca20:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    3691cc6aca24:	c5 78 10 95 a0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x160]
    3691cc6aca2c:	c5 a8 58 f6                                     	vaddps xmm6,xmm10,xmm6
    3691cc6aca30:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    3691cc6aca34:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    3691cc6aca38:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    3691cc6aca42:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc6aca47:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc6aca4b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    3691cc6aca4f:	c5 f8 10 b5 c0 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x240]
    3691cc6aca57:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    3691cc6aca5b:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    3691cc6aca5f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6aca63:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    3691cc6aca67:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    3691cc6aca6c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc6aca71:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6aca78:	44 8b 84 3a 38 01 00 00                         	mov    r8d,DWORD PTR [rdx+rdi*1+0x138]
    3691cc6aca80:	4d 8b d8                                        	mov    r11,r8
    3691cc6aca83:	41 83 c3 ff                                     	add    r11d,0xffffffff
    3691cc6aca87:	0f 85 f3 00 00 00                               	jne    0x3691cc6acb80
    3691cc6aca8d:	c5 7a 6f 84 1a 70 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0x170]
    3691cc6aca96:	c5 7a 6f 8c 1a 30 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x130]
    3691cc6aca9f:	4c 8d 82 38 36 00 00                            	lea    r8,[rdx+0x3638]
    3691cc6acaa6:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    3691cc6acaaa:	c4 02 79 18 14 20                               	vbroadcastss xmm10,DWORD PTR [r8+r12*1]
    3691cc6acab0:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    3691cc6acab5:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    3691cc6acaba:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    3691cc6acabf:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    3691cc6acac4:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    3691cc6acac9:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc6acace:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    3691cc6acad3:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    3691cc6acad8:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc6acadd:	c5 7a 6f 8c 1a 60 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x160]
    3691cc6acae6:	c5 7a 6f 94 1a 20 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x120]
    3691cc6acaef:	4c 8d 82 34 36 00 00                            	lea    r8,[rdx+0x3634]
    3691cc6acaf6:	c4 02 79 18 24 20                               	vbroadcastss xmm12,DWORD PTR [r8+r12*1]
    3691cc6acafc:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    3691cc6acb01:	c4 41 48 5f e4                                  	vmaxps xmm12,xmm6,xmm12
    3691cc6acb06:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    3691cc6acb0b:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    3691cc6acb10:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    3691cc6acb15:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    3691cc6acb1a:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    3691cc6acb1f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    3691cc6acb24:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc6acb29:	c5 7a 6f 94 1a 50 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x150]
    3691cc6acb32:	c5 7a 6f a4 1a 10 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x110]
    3691cc6acb3b:	4c 8d 82 30 36 00 00                            	lea    r8,[rdx+0x3630]
    3691cc6acb42:	c4 02 79 18 2c 20                               	vbroadcastss xmm13,DWORD PTR [r8+r12*1]
    3691cc6acb48:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    3691cc6acb4d:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    3691cc6acb51:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6acb55:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    3691cc6acb59:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    3691cc6acb5d:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6acb61:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    3691cc6acb65:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    3691cc6acb69:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6acb6d:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    3691cc6acb72:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    3691cc6acb76:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    3691cc6acb7b:	e9 89 01 00 00                                  	jmp    0x3691cc6acd09
    3691cc6acb80:	41 83 fb 02                                     	cmp    r11d,0x2
    3691cc6acb84:	0f 84 86 00 00 00                               	je     0x3691cc6acc10
    3691cc6acb8a:	c5 fa 6f 84 1a 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x130]
    3691cc6acb93:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    3691cc6acb97:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    3691cc6acb9b:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6acb9f:	c5 7a 6f 8c 1a 20 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x120]
    3691cc6acba8:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    3691cc6acbad:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    3691cc6acbb2:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc6acbb7:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    3691cc6acbbe:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6acbc2:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    3691cc6acbc8:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    3691cc6acbcd:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    3691cc6acbd2:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc6acbd7:	c5 7a 6f 94 1a 10 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x110]
    3691cc6acbe0:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    3691cc6acbe5:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    3691cc6acbea:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc6acbef:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    3691cc6acbf6:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    3691cc6acbfc:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    3691cc6acc01:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    3691cc6acc06:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc6acc0b:	e9 58 00 00 00                                  	jmp    0x3691cc6acc68
    3691cc6acc10:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    3691cc6acc15:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    3691cc6acc19:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6acc1d:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    3691cc6acc24:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6acc28:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    3691cc6acc2e:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    3691cc6acc33:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    3691cc6acc38:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    3691cc6acc3d:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    3691cc6acc44:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    3691cc6acc4a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    3691cc6acc4f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    3691cc6acc54:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    3691cc6acc59:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    3691cc6acc5e:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    3691cc6acc63:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    3691cc6acc68:	4c 8d a2 20 37 00 00                            	lea    r12,[rdx+0x3720]
    3691cc6acc6f:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    3691cc6acc75:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    3691cc6acc7a:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    3691cc6acc7e:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    3691cc6acc82:	41 83 f8 01                                     	cmp    r8d,0x1
    3691cc6acc86:	0f 84 7a 00 00 00                               	je     0x3691cc6acd06
    3691cc6acc8c:	c4 a1 7a 10 b4 1a 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdx+r11*1+0x3724]
    3691cc6acc96:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    3691cc6acc9b:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    3691cc6acca1:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    3691cc6acca7:	c4 c1 78 2e f4                                  	vucomiss xmm6,xmm12
    3691cc6accac:	0f 87 09 00 00 00                               	ja     0x3691cc6accbb
    3691cc6accb2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    3691cc6accb6:	e9 05 00 00 00                                  	jmp    0x3691cc6accc0
    3691cc6accbb:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    3691cc6accc0:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    3691cc6accc5:	c5 78 2e ee                                     	vucomiss xmm13,xmm6
    3691cc6accc9:	0f 87 0a 00 00 00                               	ja     0x3691cc6accd9
    3691cc6acccf:	c4 c1 79 28 f2                                  	vmovapd xmm6,xmm10
    3691cc6accd4:	e9 05 00 00 00                                  	jmp    0x3691cc6accde
    3691cc6accd9:	c4 c1 79 28 f5                                  	vmovapd xmm6,xmm13
    3691cc6accde:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    3691cc6acce3:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6acce7:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc6acceb:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc6accf0:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    3691cc6accf5:	8b c3                                           	mov    eax,ebx
    3691cc6accf7:	49 8b f3                                        	mov    rsi,r11
    3691cc6accfa:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    3691cc6acd01:	e9 06 12 00 00                                  	jmp    0x3691cc6adf0c
    3691cc6acd06:	4d 8b e3                                        	mov    r12,r11
    3691cc6acd09:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    3691cc6acd11:	c4 41 48 5f d4                                  	vmaxps xmm10,xmm6,xmm12
    3691cc6acd16:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    3691cc6acd1b:	c5 7a 6f a4 1a 40 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x140]
    3691cc6acd24:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    3691cc6acd29:	c4 c1 48 5f f2                                  	vmaxps xmm6,xmm6,xmm10
    3691cc6acd2e:	c5 a0 5d f6                                     	vminps xmm6,xmm11,xmm6
    3691cc6acd32:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6acd36:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    3691cc6acd3a:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    3691cc6acd3f:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    3691cc6acd44:	8b c3                                           	mov    eax,ebx
    3691cc6acd46:	49 8b f4                                        	mov    rsi,r12
    3691cc6acd49:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    3691cc6acd50:	e9 b7 11 00 00                                  	jmp    0x3691cc6adf0c
    3691cc6acd55:	44 8b 7c 3a 38                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x38]
    3691cc6acd5a:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    3691cc6acd62:	83 7c 3a 38 00                                  	cmp    DWORD PTR [rdx+rdi*1+0x38],0x0
    3691cc6acd67:	0f 85 b1 10 00 00                               	jne    0x3691cc6ade1e
    3691cc6acd6d:	4c 8d 7a 54                                     	lea    r15,[rdx+0x54]
    3691cc6acd71:	c4 82 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [r15+r12*1]
    3691cc6acd77:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    3691cc6acd7b:	c4 c2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [r15+rax*1]
    3691cc6acd81:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    3691cc6acd85:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    3691cc6acd89:	c4 82 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [r15+r9*1]
    3691cc6acd8f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    3691cc6acd93:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    3691cc6acd97:	c5 c8 59 d7                                     	vmulps xmm2,xmm6,xmm7
    3691cc6acd9b:	4c 8d 7a 50                                     	lea    r15,[rdx+0x50]
    3691cc6acd9f:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    3691cc6acda5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    3691cc6acda9:	c4 42 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+rax*1]
    3691cc6acdaf:	c4 41 60 59 c0                                  	vmulps xmm8,xmm3,xmm8
    3691cc6acdb4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    3691cc6acdb9:	c4 02 79 18 04 0f                               	vbroadcastss xmm8,DWORD PTR [r15+r9*1]
    3691cc6acdbf:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    3691cc6acdc4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    3691cc6acdc9:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    3691cc6acdcd:	44 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+rdi*1]
    3691cc6acdd1:	41 83 ff 01                                     	cmp    r15d,0x1
    3691cc6acdd5:	0f 85 28 0d 00 00                               	jne    0x3691cc6adb03
    3691cc6acddb:	8b 4c 3a 28                                     	mov    ecx,DWORD PTR [rdx+rdi*1+0x28]
    3691cc6acddf:	85 c9                                           	test   ecx,ecx
    3691cc6acde1:	0f 84 1c 0d 00 00                               	je     0x3691cc6adb03
    3691cc6acde7:	44 8b 5c 3a 1c                                  	mov    r11d,DWORD PTR [rdx+rdi*1+0x1c]
    3691cc6acdec:	45 85 db                                        	test   r11d,r11d
    3691cc6acdef:	0f 8e 0e 0d 00 00                               	jle    0x3691cc6adb03
    3691cc6acdf5:	8b 5c 3a 20                                     	mov    ebx,DWORD PTR [rdx+rdi*1+0x20]
    3691cc6acdf9:	85 db                                           	test   ebx,ebx
    3691cc6acdfb:	0f 8e fc 0c 00 00                               	jle    0x3691cc6adafd
    3691cc6ace01:	45 8b d3                                        	mov    r10d,r11d
    3691cc6ace04:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc6ace09:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc6ace0e:	44 8b 7c 3a 10                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x10]
    3691cc6ace13:	33 f6                                           	xor    esi,esi
    3691cc6ace15:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    3691cc6ace1c:	40 0f 95 c6                                     	setne  sil
    3691cc6ace20:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    3691cc6ace27:	41 0f 95 c7                                     	setne  r15b
    3691cc6ace2b:	45 0f b6 ff                                     	movzx  r15d,r15b
    3691cc6ace2f:	44 23 fe                                        	and    r15d,esi
    3691cc6ace32:	0f 85 0d 00 00 00                               	jne    0x3691cc6ace45
    3691cc6ace38:	c5 d8 5f f7                                     	vmaxps xmm6,xmm4,xmm7
    3691cc6ace3c:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    3691cc6ace40:	e9 0a 00 00 00                                  	jmp    0x3691cc6ace4f
    3691cc6ace45:	c4 e3 79 08 f7 09                               	vroundps xmm6,xmm7,0x9
    3691cc6ace4b:	c5 c0 5c f6                                     	vsubps xmm6,xmm7,xmm6
    3691cc6ace4f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    3691cc6ace53:	44 8b d3                                        	mov    r10d,ebx
    3691cc6ace56:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    3691cc6ace5b:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    3691cc6ace60:	8b 74 3a 14                                     	mov    esi,DWORD PTR [rdx+rdi*1+0x14]
    3691cc6ace64:	45 33 c9                                        	xor    r9d,r9d
    3691cc6ace67:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    3691cc6ace6d:	41 0f 95 c1                                     	setne  r9b
    3691cc6ace71:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    3691cc6ace77:	40 0f 95 c6                                     	setne  sil
    3691cc6ace7b:	40 0f b6 f6                                     	movzx  esi,sil
    3691cc6ace7f:	41 23 f1                                        	and    esi,r9d
    3691cc6ace82:	0f 85 0d 00 00 00                               	jne    0x3691cc6ace95
    3691cc6ace88:	c5 d8 5f fa                                     	vmaxps xmm7,xmm4,xmm2
    3691cc6ace8c:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    3691cc6ace90:	e9 0a 00 00 00                                  	jmp    0x3691cc6ace9f
    3691cc6ace95:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    3691cc6ace9b:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    3691cc6ace9f:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    3691cc6acea3:	4c 8b 15 77 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea77]        # 0x3691cc6ab921
    3691cc6aceaa:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6aceaf:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6aceb3:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    3691cc6aceb7:	44 8b 4c 3a 0c                                  	mov    r9d,DWORD PTR [rdx+rdi*1+0xc]
    3691cc6acebc:	45 33 c9                                        	xor    r9d,r9d
    3691cc6acebf:	81 7c 3a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0xc],0x2600
    3691cc6acec7:	41 0f 94 c1                                     	sete   r9b
    3691cc6acecb:	45 85 c9                                        	test   r9d,r9d
    3691cc6acece:	0f 85 5b 00 00 00                               	jne    0x3691cc6acf2f
    3691cc6aced4:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    3691cc6aceda:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x3691cc6ab95d
    3691cc6acee1:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    3691cc6acee6:	4c 8b 15 7f ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7f]        # 0x3691cc6ab96c
    3691cc6aceed:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    3691cc6acef2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    3691cc6acef7:	c4 41 30 c2 cb 01                               	vcmpltps xmm9,xmm9,xmm11
    3691cc6acefd:	4c 8b 15 1a a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa81a]        # 0x3691cc6a771e
    3691cc6acf04:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    3691cc6acf09:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    3691cc6acf0e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    3691cc6acf14:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    3691cc6acf18:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    3691cc6acf1d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    3691cc6acf21:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    3691cc6acf25:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    3691cc6acf2a:	e9 49 00 00 00                                  	jmp    0x3691cc6acf78
    3691cc6acf2f:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    3691cc6acf35:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x3691cc6ab95d
    3691cc6acf3c:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    3691cc6acf41:	4c 8b 15 24 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea24]        # 0x3691cc6ab96c
    3691cc6acf48:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    3691cc6acf4d:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    3691cc6acf52:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    3691cc6acf58:	4c 8b 15 bf a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa7bf]        # 0x3691cc6a771e
    3691cc6acf5f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    3691cc6acf64:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    3691cc6acf69:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    3691cc6acf6f:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    3691cc6acf73:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    3691cc6acf78:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    3691cc6acf7e:	4c 8b 15 99 a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa799]        # 0x3691cc6a771e
    3691cc6acf85:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc6acf8b:	c4 c1 38 54 df                                  	vandps xmm3,xmm8,xmm15
    3691cc6acf90:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc6acf96:	c5 fa 5b db                                     	vcvttps2dq xmm3,xmm3
    3691cc6acf9a:	c4 c1 61 ef df                                  	vpxor  xmm3,xmm3,xmm15
    3691cc6acf9f:	4c 8b 15 86 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea86]        # 0x3691cc6aba2c
    3691cc6acfa6:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    3691cc6acfab:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    3691cc6acfaf:	4c 8b 15 a7 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a7]        # 0x3691cc6ab95d
    3691cc6acfb6:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    3691cc6acfbb:	c4 c1 50 c2 eb 01                               	vcmpltps xmm5,xmm5,xmm11
    3691cc6acfc1:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    3691cc6acfc5:	c5 e1 db dd                                     	vpand  xmm3,xmm3,xmm5
    3691cc6acfc9:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    3691cc6acfce:	41 8d 43 ff                                     	lea    eax,[r11-0x1]
    3691cc6acfd2:	c5 f9 6e e8                                     	vmovd  xmm5,eax
    3691cc6acfd6:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    3691cc6acfdb:	8b 44 3a 2c                                     	mov    eax,DWORD PTR [rdx+rdi*1+0x2c]
    3691cc6acfdf:	c5 78 10 95 40 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2c0]
    3691cc6acfe7:	c4 42 61 3d e2                                  	vpmaxsd xmm12,xmm3,xmm10
    3691cc6acfec:	c4 62 19 39 e5                                  	vpminsd xmm12,xmm12,xmm5
    3691cc6acff1:	45 85 ff                                        	test   r15d,r15d
    3691cc6acff4:	0f 84 53 00 00 00                               	je     0x3691cc6ad04d
    3691cc6acffa:	c5 79 6e e0                                     	vmovd  xmm12,eax
    3691cc6acffe:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc6ad003:	c4 41 61 db e4                                  	vpand  xmm12,xmm3,xmm12
    3691cc6ad008:	85 c0                                           	test   eax,eax
    3691cc6ad00a:	0f 85 3d 00 00 00                               	jne    0x3691cc6ad04d
    3691cc6ad010:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    3691cc6ad015:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    3691cc6ad01a:	c5 61 66 ed                                     	vpcmpgtd xmm13,xmm3,xmm5
    3691cc6ad01e:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    3691cc6ad023:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6ad028:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    3691cc6ad02d:	c5 29 66 f3                                     	vpcmpgtd xmm14,xmm10,xmm3
    3691cc6ad031:	c4 41 09 df fd                                  	vpandn xmm15,xmm14,xmm13
    3691cc6ad036:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    3691cc6ad03b:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    3691cc6ad040:	c4 41 61 fe e4                                  	vpaddd xmm12,xmm3,xmm12
    3691cc6ad045:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6ad04d:	c5 31 df fc                                     	vpandn xmm15,xmm9,xmm4
    3691cc6ad051:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    3691cc6ad056:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    3691cc6ad05b:	44 8d 63 ff                                     	lea    r12d,[rbx-0x1]
    3691cc6ad05f:	c4 c1 79 6e d4                                  	vmovd  xmm2,r12d
    3691cc6ad064:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    3691cc6ad069:	44 8b 64 3a 30                                  	mov    r12d,DWORD PTR [rdx+rdi*1+0x30]
    3691cc6ad06e:	c4 42 31 3d ea                                  	vpmaxsd xmm13,xmm9,xmm10
    3691cc6ad073:	c4 62 11 39 ea                                  	vpminsd xmm13,xmm13,xmm2
    3691cc6ad078:	85 f6                                           	test   esi,esi
    3691cc6ad07a:	0f 84 4c 00 00 00                               	je     0x3691cc6ad0cc
    3691cc6ad080:	c4 41 79 6e ec                                  	vmovd  xmm13,r12d
    3691cc6ad085:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6ad08a:	c4 41 11 db e9                                  	vpand  xmm13,xmm13,xmm9
    3691cc6ad08f:	45 85 e4                                        	test   r12d,r12d
    3691cc6ad092:	0f 85 34 00 00 00                               	jne    0x3691cc6ad0cc
    3691cc6ad098:	c5 79 6e eb                                     	vmovd  xmm13,ebx
    3691cc6ad09c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6ad0a1:	c5 31 66 f2                                     	vpcmpgtd xmm14,xmm9,xmm2
    3691cc6ad0a5:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    3691cc6ad0aa:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6ad0af:	c4 42 09 0a f7                                  	vpsignd xmm14,xmm14,xmm15
    3691cc6ad0b4:	c4 c1 29 66 c9                                  	vpcmpgtd xmm1,xmm10,xmm9
    3691cc6ad0b9:	c4 41 71 df fe                                  	vpandn xmm15,xmm1,xmm14
    3691cc6ad0be:	c5 11 db e9                                     	vpand  xmm13,xmm13,xmm1
    3691cc6ad0c2:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    3691cc6ad0c7:	c4 41 31 fe ed                                  	vpaddd xmm13,xmm9,xmm13
    3691cc6ad0cc:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    3691cc6ad0d1:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    3691cc6ad0d6:	c4 42 11 40 ee                                  	vpmulld xmm13,xmm13,xmm14
    3691cc6ad0db:	c4 c1 11 fe cc                                  	vpaddd xmm1,xmm13,xmm12
    3691cc6ad0e0:	c4 c3 79 16 cb 03                               	vpextrd r11d,xmm1,0x3
    3691cc6ad0e6:	c4 e3 79 16 cf 02                               	vpextrd edi,xmm1,0x2
    3691cc6ad0ec:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    3691cc6ad0f3:	c4 c3 79 16 cb 01                               	vpextrd r11d,xmm1,0x1
    3691cc6ad0f9:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    3691cc6ad100:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    3691cc6ad104:	45 85 c9                                        	test   r9d,r9d
    3691cc6ad107:	0f 85 19 08 00 00                               	jne    0x3691cc6ad926
    3691cc6ad10d:	c5 f8 10 8d 10 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x3f0]
    3691cc6ad115:	c5 e1 fe d9                                     	vpaddd xmm3,xmm3,xmm1
    3691cc6ad119:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    3691cc6ad121:	c4 c2 61 3d f2                                  	vpmaxsd xmm6,xmm3,xmm10
    3691cc6ad126:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    3691cc6ad12b:	45 85 ff                                        	test   r15d,r15d
    3691cc6ad12e:	0f 84 3d 00 00 00                               	je     0x3691cc6ad171
    3691cc6ad134:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    3691cc6ad138:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    3691cc6ad13d:	c5 e1 db f6                                     	vpand  xmm6,xmm3,xmm6
    3691cc6ad141:	85 c0                                           	test   eax,eax
    3691cc6ad143:	0f 85 28 00 00 00                               	jne    0x3691cc6ad171
    3691cc6ad149:	c5 e1 66 f5                                     	vpcmpgtd xmm6,xmm3,xmm5
    3691cc6ad14d:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    3691cc6ad152:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6ad157:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    3691cc6ad15c:	c5 a9 66 eb                                     	vpcmpgtd xmm5,xmm10,xmm3
    3691cc6ad160:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    3691cc6ad164:	c5 89 db f5                                     	vpand  xmm6,xmm14,xmm5
    3691cc6ad168:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc6ad16d:	c5 e1 fe f6                                     	vpaddd xmm6,xmm3,xmm6
    3691cc6ad171:	c5 31 fe c9                                     	vpaddd xmm9,xmm9,xmm1
    3691cc6ad175:	c4 c2 31 3d da                                  	vpmaxsd xmm3,xmm9,xmm10
    3691cc6ad17a:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    3691cc6ad17f:	85 f6                                           	test   esi,esi
    3691cc6ad181:	0f 84 49 00 00 00                               	je     0x3691cc6ad1d0
    3691cc6ad187:	c4 c1 79 6e dc                                  	vmovd  xmm3,r12d
    3691cc6ad18c:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    3691cc6ad191:	c4 c1 61 db d9                                  	vpand  xmm3,xmm3,xmm9
    3691cc6ad196:	45 85 e4                                        	test   r12d,r12d
    3691cc6ad199:	0f 85 31 00 00 00                               	jne    0x3691cc6ad1d0
    3691cc6ad19f:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    3691cc6ad1a3:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    3691cc6ad1a8:	c5 b1 66 d2                                     	vpcmpgtd xmm2,xmm9,xmm2
    3691cc6ad1ac:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    3691cc6ad1b0:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    3691cc6ad1b5:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    3691cc6ad1ba:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    3691cc6ad1bf:	c5 51 df fa                                     	vpandn xmm15,xmm5,xmm2
    3691cc6ad1c3:	c5 e1 db d5                                     	vpand  xmm2,xmm3,xmm5
    3691cc6ad1c7:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    3691cc6ad1cc:	c5 b1 fe da                                     	vpaddd xmm3,xmm9,xmm2
    3691cc6ad1d0:	c4 42 61 40 ce                                  	vpmulld xmm9,xmm3,xmm14
    3691cc6ad1d5:	c4 41 31 fe f4                                  	vpaddd xmm14,xmm9,xmm12
    3691cc6ad1da:	41 83 f8 0f                                     	cmp    r8d,0xf
    3691cc6ad1de:	0f 85 18 00 00 00                               	jne    0x3691cc6ad1fc
    3691cc6ad1e4:	c5 19 fe e1                                     	vpaddd xmm12,xmm12,xmm1
    3691cc6ad1e8:	c4 41 49 76 e4                                  	vpcmpeqd xmm12,xmm6,xmm12
    3691cc6ad1ed:	c4 41 78 50 e4                                  	vmovmskps r12d,xmm12
    3691cc6ad1f2:	41 83 fc 0f                                     	cmp    r12d,0xf
    3691cc6ad1f6:	0f 84 24 03 00 00                               	je     0x3691cc6ad520
    3691cc6ad1fc:	4d 8b e0                                        	mov    r12,r8
    3691cc6ad1ff:	41 83 e4 08                                     	and    r12d,0x8
    3691cc6ad203:	4d 8b f8                                        	mov    r15,r8
    3691cc6ad206:	41 83 e7 04                                     	and    r15d,0x4
    3691cc6ad20a:	49 8b c0                                        	mov    rax,r8
    3691cc6ad20d:	83 e0 02                                        	and    eax,0x2
    3691cc6ad210:	49 8b d8                                        	mov    rbx,r8
    3691cc6ad213:	83 e3 01                                        	and    ebx,0x1
    3691cc6ad216:	41 83 f8 0f                                     	cmp    r8d,0xf
    3691cc6ad21a:	0f 84 6c 00 00 00                               	je     0x3691cc6ad28c
    3691cc6ad220:	85 db                                           	test   ebx,ebx
    3691cc6ad222:	0f 85 07 00 00 00                               	jne    0x3691cc6ad22f
    3691cc6ad228:	33 ff                                           	xor    edi,edi
    3691cc6ad22a:	e9 06 00 00 00                                  	jmp    0x3691cc6ad235
    3691cc6ad22f:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad232:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad235:	85 c0                                           	test   eax,eax
    3691cc6ad237:	0f 85 08 00 00 00                               	jne    0x3691cc6ad245
    3691cc6ad23d:	45 33 db                                        	xor    r11d,r11d
    3691cc6ad240:	e9 08 00 00 00                                  	jmp    0x3691cc6ad24d
    3691cc6ad245:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    3691cc6ad249:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6ad24d:	45 85 ff                                        	test   r15d,r15d
    3691cc6ad250:	0f 85 08 00 00 00                               	jne    0x3691cc6ad25e
    3691cc6ad256:	45 33 ff                                        	xor    r15d,r15d
    3691cc6ad259:	e9 0f 00 00 00                                  	jmp    0x3691cc6ad26d
    3691cc6ad25e:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    3691cc6ad265:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    3691cc6ad269:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    3691cc6ad26d:	45 85 e4                                        	test   r12d,r12d
    3691cc6ad270:	0f 85 33 00 00 00                               	jne    0x3691cc6ad2a9
    3691cc6ad276:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    3691cc6ad27b:	c5 79 6e ef                                     	vmovd  xmm13,edi
    3691cc6ad27f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6ad284:	45 33 e4                                        	xor    r12d,r12d
    3691cc6ad287:	e9 43 00 00 00                                  	jmp    0x3691cc6ad2cf
    3691cc6ad28c:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    3691cc6ad290:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6ad294:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad297:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad29a:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    3691cc6ad2a1:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    3691cc6ad2a5:	46 8b 3c 22                                     	mov    r15d,DWORD PTR [rdx+r12*1]
    3691cc6ad2a9:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    3691cc6ad2af:	44 8d 24 81                                     	lea    r12d,[rcx+rax*4]
    3691cc6ad2b3:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    3691cc6ad2b7:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    3691cc6ad2bc:	c5 79 6e ef                                     	vmovd  xmm13,edi
    3691cc6ad2c0:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6ad2c5:	41 83 f8 0f                                     	cmp    r8d,0xf
    3691cc6ad2c9:	0f 84 66 00 00 00                               	je     0x3691cc6ad335
    3691cc6ad2cf:	41 f6 c0 01                                     	test   r8b,0x1
    3691cc6ad2d3:	0f 85 07 00 00 00                               	jne    0x3691cc6ad2e0
    3691cc6ad2d9:	33 ff                                           	xor    edi,edi
    3691cc6ad2db:	e9 0a 00 00 00                                  	jmp    0x3691cc6ad2ea
    3691cc6ad2e0:	c5 79 7e e7                                     	vmovd  edi,xmm12
    3691cc6ad2e4:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad2e7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad2ea:	41 f6 c0 02                                     	test   r8b,0x2
    3691cc6ad2ee:	0f 85 07 00 00 00                               	jne    0x3691cc6ad2fb
    3691cc6ad2f4:	33 c0                                           	xor    eax,eax
    3691cc6ad2f6:	e9 0c 00 00 00                                  	jmp    0x3691cc6ad307
    3691cc6ad2fb:	c4 63 79 16 e0 01                               	vpextrd eax,xmm12,0x1
    3691cc6ad301:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    3691cc6ad304:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    3691cc6ad307:	41 f6 c0 04                                     	test   r8b,0x4
    3691cc6ad30b:	0f 85 07 00 00 00                               	jne    0x3691cc6ad318
    3691cc6ad311:	33 db                                           	xor    ebx,ebx
    3691cc6ad313:	e9 0c 00 00 00                                  	jmp    0x3691cc6ad324
    3691cc6ad318:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    3691cc6ad31e:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    3691cc6ad321:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    3691cc6ad324:	41 f6 c0 08                                     	test   r8b,0x8
    3691cc6ad328:	0f 85 29 00 00 00                               	jne    0x3691cc6ad357
    3691cc6ad32e:	33 f6                                           	xor    esi,esi
    3691cc6ad330:	e9 2e 00 00 00                                  	jmp    0x3691cc6ad363
    3691cc6ad335:	c4 63 79 16 e7 01                               	vpextrd edi,xmm12,0x1
    3691cc6ad33b:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad33e:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    3691cc6ad341:	c5 79 7e e7                                     	vmovd  edi,xmm12
    3691cc6ad345:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad348:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad34b:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    3691cc6ad351:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    3691cc6ad354:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    3691cc6ad357:	c4 63 79 16 e6 03                               	vpextrd esi,xmm12,0x3
    3691cc6ad35d:	8d 34 b1                                        	lea    esi,[rcx+rsi*4]
    3691cc6ad360:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    3691cc6ad363:	c4 43 11 22 e3 01                               	vpinsrd xmm12,xmm13,r11d,0x1
    3691cc6ad369:	c5 79 6e ef                                     	vmovd  xmm13,edi
    3691cc6ad36d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6ad372:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    3691cc6ad378:	41 83 f8 0f                                     	cmp    r8d,0xf
    3691cc6ad37c:	0f 84 6a 00 00 00                               	je     0x3691cc6ad3ec
    3691cc6ad382:	41 f6 c0 01                                     	test   r8b,0x1
    3691cc6ad386:	0f 85 07 00 00 00                               	jne    0x3691cc6ad393
    3691cc6ad38c:	33 ff                                           	xor    edi,edi
    3691cc6ad38e:	e9 0a 00 00 00                                  	jmp    0x3691cc6ad39d
    3691cc6ad393:	c5 79 7e f7                                     	vmovd  edi,xmm14
    3691cc6ad397:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad39a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad39d:	41 f6 c0 02                                     	test   r8b,0x2
    3691cc6ad3a1:	0f 85 08 00 00 00                               	jne    0x3691cc6ad3af
    3691cc6ad3a7:	45 33 db                                        	xor    r11d,r11d
    3691cc6ad3aa:	e9 0e 00 00 00                                  	jmp    0x3691cc6ad3bd
    3691cc6ad3af:	c4 43 79 16 f3 01                               	vpextrd r11d,xmm14,0x1
    3691cc6ad3b5:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    3691cc6ad3b9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6ad3bd:	41 f6 c0 04                                     	test   r8b,0x4
    3691cc6ad3c1:	0f 85 07 00 00 00                               	jne    0x3691cc6ad3ce
    3691cc6ad3c7:	33 c0                                           	xor    eax,eax
    3691cc6ad3c9:	e9 0c 00 00 00                                  	jmp    0x3691cc6ad3da
    3691cc6ad3ce:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    3691cc6ad3d4:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    3691cc6ad3d7:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    3691cc6ad3da:	41 f6 c0 08                                     	test   r8b,0x8
    3691cc6ad3de:	0f 85 2b 00 00 00                               	jne    0x3691cc6ad40f
    3691cc6ad3e4:	45 33 c9                                        	xor    r9d,r9d
    3691cc6ad3e7:	e9 31 00 00 00                                  	jmp    0x3691cc6ad41d
    3691cc6ad3ec:	c4 63 79 16 f7 01                               	vpextrd edi,xmm14,0x1
    3691cc6ad3f2:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad3f5:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    3691cc6ad3f9:	c5 79 7e f7                                     	vmovd  edi,xmm14
    3691cc6ad3fd:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad400:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad403:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    3691cc6ad409:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    3691cc6ad40c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    3691cc6ad40f:	c4 43 79 16 f1 03                               	vpextrd r9d,xmm14,0x3
    3691cc6ad415:	46 8d 0c 89                                     	lea    r9d,[rcx+r9*4]
    3691cc6ad419:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    3691cc6ad41d:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    3691cc6ad423:	c4 63 11 22 eb 02                               	vpinsrd xmm13,xmm13,ebx,0x2
    3691cc6ad429:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    3691cc6ad42d:	c5 79 6e cf                                     	vmovd  xmm9,edi
    3691cc6ad431:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    3691cc6ad436:	c4 43 31 22 cb 01                               	vpinsrd xmm9,xmm9,r11d,0x1
    3691cc6ad43c:	c4 63 31 22 c8 02                               	vpinsrd xmm9,xmm9,eax,0x2
    3691cc6ad442:	41 83 f8 0f                                     	cmp    r8d,0xf
    3691cc6ad446:	0f 84 6c 00 00 00                               	je     0x3691cc6ad4b8
    3691cc6ad44c:	41 f6 c0 01                                     	test   r8b,0x1
    3691cc6ad450:	0f 85 07 00 00 00                               	jne    0x3691cc6ad45d
    3691cc6ad456:	33 ff                                           	xor    edi,edi
    3691cc6ad458:	e9 0a 00 00 00                                  	jmp    0x3691cc6ad467
    3691cc6ad45d:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    3691cc6ad461:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad464:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad467:	41 f6 c0 02                                     	test   r8b,0x2
    3691cc6ad46b:	0f 85 08 00 00 00                               	jne    0x3691cc6ad479
    3691cc6ad471:	45 33 db                                        	xor    r11d,r11d
    3691cc6ad474:	e9 0e 00 00 00                                  	jmp    0x3691cc6ad487
    3691cc6ad479:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    3691cc6ad47f:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    3691cc6ad483:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6ad487:	41 f6 c0 04                                     	test   r8b,0x4
    3691cc6ad48b:	0f 85 08 00 00 00                               	jne    0x3691cc6ad499
    3691cc6ad491:	45 33 ff                                        	xor    r15d,r15d
    3691cc6ad494:	e9 0e 00 00 00                                  	jmp    0x3691cc6ad4a7
    3691cc6ad499:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    3691cc6ad49f:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    3691cc6ad4a3:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    3691cc6ad4a7:	41 f6 c0 08                                     	test   r8b,0x8
    3691cc6ad4ab:	0f 85 2c 00 00 00                               	jne    0x3691cc6ad4dd
    3691cc6ad4b1:	33 c0                                           	xor    eax,eax
    3691cc6ad4b3:	e9 31 00 00 00                                  	jmp    0x3691cc6ad4e9
    3691cc6ad4b8:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    3691cc6ad4be:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad4c1:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    3691cc6ad4c5:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    3691cc6ad4c9:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad4cc:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad4cf:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    3691cc6ad4d5:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    3691cc6ad4d9:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    3691cc6ad4dd:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    3691cc6ad4e3:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    3691cc6ad4e6:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    3691cc6ad4e9:	c4 c3 19 22 f4 03                               	vpinsrd xmm6,xmm12,r12d,0x3
    3691cc6ad4ef:	c4 63 11 22 e6 03                               	vpinsrd xmm12,xmm13,esi,0x3
    3691cc6ad4f5:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    3691cc6ad4fb:	c5 79 6e ef                                     	vmovd  xmm13,edi
    3691cc6ad4ff:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    3691cc6ad504:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    3691cc6ad50a:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    3691cc6ad510:	c4 63 11 22 e8 03                               	vpinsrd xmm13,xmm13,eax,0x3
    3691cc6ad516:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    3691cc6ad51b:	e9 95 00 00 00                                  	jmp    0x3691cc6ad5b5
    3691cc6ad520:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad523:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    3691cc6ad528:	42 8d 3c 99                                     	lea    edi,[rcx+r11*4]
    3691cc6ad52c:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    3691cc6ad531:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    3691cc6ad536:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    3691cc6ad53d:	42 8d 3c a1                                     	lea    edi,[rcx+r12*4]
    3691cc6ad541:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    3691cc6ad546:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    3691cc6ad54d:	42 8d 3c b9                                     	lea    edi,[rcx+r15*4]
    3691cc6ad551:	c5 7b 10 24 3a                                  	vmovsd xmm12,QWORD PTR [rdx+rdi*1]
    3691cc6ad556:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    3691cc6ad55b:	c4 41 48 c6 e1 dd                               	vshufps xmm12,xmm6,xmm9,0xdd
    3691cc6ad561:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    3691cc6ad567:	c4 c1 31 72 f6 02                               	vpslld xmm9,xmm14,0x2
    3691cc6ad56d:	c5 79 7e cf                                     	vmovd  edi,xmm9
    3691cc6ad571:	03 f9                                           	add    edi,ecx
    3691cc6ad573:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    3691cc6ad578:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    3691cc6ad57e:	03 f9                                           	add    edi,ecx
    3691cc6ad580:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    3691cc6ad585:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    3691cc6ad58a:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    3691cc6ad590:	03 f9                                           	add    edi,ecx
    3691cc6ad592:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    3691cc6ad597:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    3691cc6ad59d:	03 f9                                           	add    edi,ecx
    3691cc6ad59f:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    3691cc6ad5a4:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    3691cc6ad5a9:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    3691cc6ad5af:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    3691cc6ad5b5:	c5 91 72 d6 18                                  	vpsrld xmm13,xmm6,0x18
    3691cc6ad5ba:	c4 c1 69 72 d4 18                               	vpsrld xmm2,xmm12,0x18
    3691cc6ad5c0:	c5 11 6b ea                                     	vpackssdw xmm13,xmm13,xmm2
    3691cc6ad5c4:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    3691cc6ad5c8:	c4 c3 69 0f dd 08                               	vpalignr xmm3,xmm2,xmm13,0x8
    3691cc6ad5ce:	c5 11 61 eb                                     	vpunpcklwd xmm13,xmm13,xmm3
    3691cc6ad5d2:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    3691cc6ad5dc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6ad5e1:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc6ad5e5:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    3691cc6ad5ea:	c5 78 10 85 50 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2b0]
    3691cc6ad5f2:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    3691cc6ad5f7:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    3691cc6ad601:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc6ad606:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    3691cc6ad60a:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    3691cc6ad60e:	4c 8b 15 09 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa109]        # 0x3691cc6a771e
    3691cc6ad615:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    3691cc6ad61a:	c4 c1 78 54 cf                                  	vandps xmm1,xmm0,xmm15
    3691cc6ad61f:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    3691cc6ad625:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    3691cc6ad629:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    3691cc6ad62e:	4c 8b 15 28 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe328]        # 0x3691cc6ab95d
    3691cc6ad635:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc6ad63a:	c4 c1 78 c2 c3 01                               	vcmpltps xmm0,xmm0,xmm11
    3691cc6ad640:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    3691cc6ad644:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    3691cc6ad648:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6ad64d:	c5 e1 fa c8                                     	vpsubd xmm1,xmm3,xmm0
    3691cc6ad651:	c5 f1 6b c0                                     	vpackssdw xmm0,xmm1,xmm0
    3691cc6ad655:	c4 e3 69 0f c8 08                               	vpalignr xmm1,xmm2,xmm0,0x8
    3691cc6ad65b:	c5 f9 61 c1                                     	vpunpcklwd xmm0,xmm0,xmm1
    3691cc6ad65f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    3691cc6ad663:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    3691cc6ad66b:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    3691cc6ad66f:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    3691cc6ad674:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    3691cc6ad678:	4c 8b 15 9f a0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa09f]        # 0x3691cc6a771e
    3691cc6ad67f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    3691cc6ad684:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    3691cc6ad689:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    3691cc6ad68f:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    3691cc6ad693:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    3691cc6ad698:	4c 8b 15 be e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe2be]        # 0x3691cc6ab95d
    3691cc6ad69f:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    3691cc6ad6a4:	c4 c1 40 c2 fb 01                               	vcmpltps xmm7,xmm7,xmm11
    3691cc6ad6aa:	c5 41 df fc                                     	vpandn xmm15,xmm7,xmm4
    3691cc6ad6ae:	c5 f1 db ff                                     	vpand  xmm7,xmm1,xmm7
    3691cc6ad6b2:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6ad6b7:	c5 61 fa df                                     	vpsubd xmm11,xmm3,xmm7
    3691cc6ad6bb:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    3691cc6ad6c0:	c4 c1 71 72 d1 18                               	vpsrld xmm1,xmm9,0x18
    3691cc6ad6c6:	c4 c1 61 72 d6 18                               	vpsrld xmm3,xmm14,0x18
    3691cc6ad6cc:	c5 f1 6b cb                                     	vpackssdw xmm1,xmm1,xmm3
    3691cc6ad6d0:	c4 e3 69 0f d9 08                               	vpalignr xmm3,xmm2,xmm1,0x8
    3691cc6ad6d6:	c5 f1 61 cb                                     	vpunpcklwd xmm1,xmm1,xmm3
    3691cc6ad6da:	c5 f1 f5 c8                                     	vpmaddwd xmm1,xmm1,xmm0
    3691cc6ad6de:	c4 e2 71 40 cf                                  	vpmulld xmm1,xmm1,xmm7
    3691cc6ad6e3:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    3691cc6ad6e7:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    3691cc6ad6f1:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc6ad6f6:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc6ad6fa:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    3691cc6ad6fe:	c4 c1 11 72 d5 10                               	vpsrld xmm13,xmm13,0x10
    3691cc6ad704:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ad709:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    3691cc6ad70f:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    3691cc6ad714:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ad719:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    3691cc6ad71f:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    3691cc6ad724:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    3691cc6ad729:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    3691cc6ad72e:	4c 8b 15 3d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea3d]        # 0x3691cc6ac172
    3691cc6ad735:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6ad73a:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc6ad73e:	c5 10 59 eb                                     	vmulps xmm13,xmm13,xmm3
    3691cc6ad742:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    3691cc6ad745:	c5 7a 7f ac 02 c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1c0],xmm13
    3691cc6ad74e:	c5 91 72 d6 10                                  	vpsrld xmm13,xmm6,0x10
    3691cc6ad753:	4c 8b 15 30 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe930]        # 0x3691cc6ac08a
    3691cc6ad75a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    3691cc6ad75f:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    3691cc6ad763:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    3691cc6ad767:	c4 c1 51 72 d4 10                               	vpsrld xmm5,xmm12,0x10
    3691cc6ad76d:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    3691cc6ad771:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    3691cc6ad775:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    3691cc6ad77b:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    3691cc6ad77f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    3691cc6ad783:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    3691cc6ad788:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    3691cc6ad78e:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    3691cc6ad792:	c4 c1 39 72 d6 10                               	vpsrld xmm8,xmm14,0x10
    3691cc6ad798:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    3691cc6ad79c:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    3691cc6ad7a1:	c4 c3 69 0f e8 08                               	vpalignr xmm5,xmm2,xmm8,0x8
    3691cc6ad7a7:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    3691cc6ad7ab:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    3691cc6ad7af:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    3691cc6ad7b4:	c4 41 11 fe c0                                  	vpaddd xmm8,xmm13,xmm8
    3691cc6ad7b9:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    3691cc6ad7bd:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    3691cc6ad7c3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ad7c8:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6ad7ce:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6ad7d3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ad7d8:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6ad7de:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6ad7e3:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6ad7e8:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6ad7ed:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    3691cc6ad7f1:	c5 7a 7f 84 02 b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1b0],xmm8
    3691cc6ad7fa:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    3691cc6ad7ff:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    3691cc6ad803:	c4 c1 11 72 d4 08                               	vpsrld xmm13,xmm12,0x8
    3691cc6ad809:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    3691cc6ad80d:	c4 41 39 6b c5                                  	vpackssdw xmm8,xmm8,xmm13
    3691cc6ad812:	c4 43 69 0f e8 08                               	vpalignr xmm13,xmm2,xmm8,0x8
    3691cc6ad818:	c4 41 39 61 c5                                  	vpunpcklwd xmm8,xmm8,xmm13
    3691cc6ad81d:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    3691cc6ad821:	c4 42 39 40 c3                                  	vpmulld xmm8,xmm8,xmm11
    3691cc6ad826:	c4 c1 11 72 d1 08                               	vpsrld xmm13,xmm9,0x8
    3691cc6ad82c:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    3691cc6ad830:	c4 c1 51 72 d6 08                               	vpsrld xmm5,xmm14,0x8
    3691cc6ad836:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    3691cc6ad83a:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    3691cc6ad83e:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    3691cc6ad844:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    3691cc6ad848:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    3691cc6ad84c:	c4 62 11 40 ef                                  	vpmulld xmm13,xmm13,xmm7
    3691cc6ad851:	c4 41 39 fe c5                                  	vpaddd xmm8,xmm8,xmm13
    3691cc6ad856:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    3691cc6ad85a:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    3691cc6ad860:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ad865:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6ad86b:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6ad870:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ad875:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6ad87b:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6ad880:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6ad885:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6ad88a:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    3691cc6ad88e:	c5 7a 7f 84 02 a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1a0],xmm8
    3691cc6ad897:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    3691cc6ad89b:	c5 19 db c4                                     	vpand  xmm8,xmm12,xmm4
    3691cc6ad89f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    3691cc6ad8a4:	c4 63 69 0f c6 08                               	vpalignr xmm8,xmm2,xmm6,0x8
    3691cc6ad8aa:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    3691cc6ad8af:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    3691cc6ad8b3:	c4 c2 49 40 f3                                  	vpmulld xmm6,xmm6,xmm11
    3691cc6ad8b8:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    3691cc6ad8bc:	c5 09 db cc                                     	vpand  xmm9,xmm14,xmm4
    3691cc6ad8c0:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    3691cc6ad8c5:	c4 43 69 0f c8 08                               	vpalignr xmm9,xmm2,xmm8,0x8
    3691cc6ad8cb:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    3691cc6ad8d0:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    3691cc6ad8d4:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    3691cc6ad8d9:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    3691cc6ad8dd:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    3691cc6ad8e1:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    3691cc6ad8e6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ad8eb:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc6ad8f1:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc6ad8f6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ad8fb:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc6ad900:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc6ad904:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc6ad908:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc6ad90d:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    3691cc6ad911:	c5 fa 7f 84 02 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x190],xmm0
    3691cc6ad91a:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6ad921:	e9 53 05 00 00                                  	jmp    0x3691cc6ade79
    3691cc6ad926:	41 83 f8 0f                                     	cmp    r8d,0xf
    3691cc6ad92a:	0f 84 64 00 00 00                               	je     0x3691cc6ad994
    3691cc6ad930:	41 f6 c0 01                                     	test   r8b,0x1
    3691cc6ad934:	0f 85 07 00 00 00                               	jne    0x3691cc6ad941
    3691cc6ad93a:	33 ff                                           	xor    edi,edi
    3691cc6ad93c:	e9 06 00 00 00                                  	jmp    0x3691cc6ad947
    3691cc6ad941:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad944:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad947:	41 f6 c0 02                                     	test   r8b,0x2
    3691cc6ad94b:	0f 85 08 00 00 00                               	jne    0x3691cc6ad959
    3691cc6ad951:	45 33 db                                        	xor    r11d,r11d
    3691cc6ad954:	e9 08 00 00 00                                  	jmp    0x3691cc6ad961
    3691cc6ad959:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    3691cc6ad95d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6ad961:	41 f6 c0 04                                     	test   r8b,0x4
    3691cc6ad965:	0f 85 08 00 00 00                               	jne    0x3691cc6ad973
    3691cc6ad96b:	45 33 e4                                        	xor    r12d,r12d
    3691cc6ad96e:	e9 0f 00 00 00                                  	jmp    0x3691cc6ad982
    3691cc6ad973:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    3691cc6ad97a:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    3691cc6ad97e:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    3691cc6ad982:	41 f6 c0 08                                     	test   r8b,0x8
    3691cc6ad986:	0f 85 25 00 00 00                               	jne    0x3691cc6ad9b1
    3691cc6ad98c:	45 33 ff                                        	xor    r15d,r15d
    3691cc6ad98f:	e9 2c 00 00 00                                  	jmp    0x3691cc6ad9c0
    3691cc6ad994:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    3691cc6ad99b:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    3691cc6ad99f:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    3691cc6ad9a3:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    3691cc6ad9a7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    3691cc6ad9ab:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    3691cc6ad9ae:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    3691cc6ad9b1:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    3691cc6ad9b8:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    3691cc6ad9bc:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    3691cc6ad9c0:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    3691cc6ad9c4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6ad9c9:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    3691cc6ad9cf:	c4 c3 79 22 c4 02                               	vpinsrd xmm0,xmm0,r12d,0x2
    3691cc6ad9d5:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    3691cc6ad9db:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    3691cc6ad9e0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ad9e5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    3691cc6ad9eb:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    3691cc6ad9f0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ad9f5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    3691cc6ad9fa:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    3691cc6ad9fe:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    3691cc6ada02:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    3691cc6ada07:	4c 8b 15 64 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe764]        # 0x3691cc6ac172
    3691cc6ada0e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6ada13:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6ada17:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    3691cc6ada1b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6ada1e:	c5 fa 7f b4 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm6
    3691cc6ada27:	4c 8b 15 5c e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe65c]        # 0x3691cc6ac08a
    3691cc6ada2e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    3691cc6ada33:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    3691cc6ada37:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    3691cc6ada3b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ada40:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6ada46:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6ada4b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ada50:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6ada56:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6ada5b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6ada60:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6ada65:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    3691cc6ada69:	c5 7a 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm8
    3691cc6ada72:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    3691cc6ada77:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    3691cc6ada7b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6ada80:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    3691cc6ada86:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    3691cc6ada8b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6ada90:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    3691cc6ada96:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    3691cc6ada9b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    3691cc6adaa0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    3691cc6adaa5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    3691cc6adaa9:	c5 7a 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm8
    3691cc6adab2:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    3691cc6adab7:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    3691cc6adabb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    3691cc6adac0:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    3691cc6adac6:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    3691cc6adacb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    3691cc6adad0:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    3691cc6adad5:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    3691cc6adad9:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    3691cc6adadd:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    3691cc6adae2:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    3691cc6adae6:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    3691cc6adaef:	8b c7                                           	mov    eax,edi
    3691cc6adaf1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6adaf8:	e9 7c 03 00 00                                  	jmp    0x3691cc6ade79
    3691cc6adafd:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    3691cc6adb03:	4c 8d 5a 58                                     	lea    r11,[rdx+0x58]
    3691cc6adb07:	c4 02 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [r11+r12*1]
    3691cc6adb0d:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    3691cc6adb12:	c4 42 79 18 1c 03                               	vbroadcastss xmm11,DWORD PTR [r11+rax*1]
    3691cc6adb18:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    3691cc6adb1d:	c4 41 38 58 c3                                  	vaddps xmm8,xmm8,xmm11
    3691cc6adb22:	c4 02 79 18 1c 0b                               	vbroadcastss xmm11,DWORD PTR [r11+r9*1]
    3691cc6adb28:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    3691cc6adb2d:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    3691cc6adb32:	c4 c1 48 59 d8                                  	vmulps xmm3,xmm6,xmm8
    3691cc6adb37:	41 83 ff 03                                     	cmp    r15d,0x3
    3691cc6adb3b:	0f 84 a5 02 00 00                               	je     0x3691cc6adde6
    3691cc6adb41:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6adb45:	c4 a1 7a 7f 84 1a c0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xc0],xmm0
    3691cc6adb4f:	c4 a1 7a 7f 84 1a b0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xb0],xmm0
    3691cc6adb59:	c4 a1 7a 7f 84 1a a0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xa0],xmm0
    3691cc6adb63:	c4 a1 7a 7f bc 1a f0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1f0],xmm7
    3691cc6adb6d:	c4 a1 7a 7f 94 1a e0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1e0],xmm2
    3691cc6adb77:	c4 a1 7a 7f 9c 1a d0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1d0],xmm3
    3691cc6adb81:	c4 a1 7a 7f 84 1a 90 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x90],xmm0
    3691cc6adb8b:	4c 8b ff                                        	mov    r15,rdi
    3691cc6adb8e:	33 ff                                           	xor    edi,edi
    3691cc6adb90:	e9 41 00 00 00                                  	jmp    0x3691cc6adbd6
    3691cc6adb95:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6adb9e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6adba7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6adbb0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6adbb9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    3691cc6adbc0:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    3691cc6adbc7:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6adbcb:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6adbcf:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    3691cc6adbd6:	48 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rdi
    3691cc6adbdd:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc6adbe2:	0f 85 e9 26 00 00                               	jne    0x3691cc6b02d1
    3691cc6adbe8:	8b cf                                           	mov    ecx,edi
    3691cc6adbea:	41 d3 e8                                        	shr    r8d,cl
    3691cc6adbed:	41 f6 c0 01                                     	test   r8b,0x1
    3691cc6adbf1:	0f 84 4c 01 00 00                               	je     0x3691cc6add43
    3691cc6adbf7:	42 8b 4c 3a 10                                  	mov    ecx,DWORD PTR [rdx+r15*1+0x10]
    3691cc6adbfc:	46 8b 44 3a 0c                                  	mov    r8d,DWORD PTR [rdx+r15*1+0xc]
    3691cc6adc01:	4c 89 85 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r8
    3691cc6adc08:	46 8b 44 3a 08                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x8]
    3691cc6adc0d:	46 8b 44 3a 04                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x4]
    3691cc6adc12:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    3691cc6adc19:	46 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+r15*1]
    3691cc6adc1d:	41 83 f8 02                                     	cmp    r8d,0x2
    3691cc6adc21:	0f 84 b2 00 00 00                               	je     0x3691cc6adcd9
    3691cc6adc27:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    3691cc6adc2e:	45 85 c0                                        	test   r8d,r8d
    3691cc6adc31:	0f 85 44 00 00 00                               	jne    0x3691cc6adc7b
    3691cc6adc37:	45 8d 84 bb f0 01 00 00                         	lea    r8d,[r11+rdi*4+0x1f0]
    3691cc6adc3f:	c4 a1 7a 10 34 02                               	vmovss xmm6,DWORD PTR [rdx+r8*1]
    3691cc6adc45:	45 8d 83 90 00 00 00                            	lea    r8d,[r11+0x90]
    3691cc6adc4c:	8b cf                                           	mov    ecx,edi
    3691cc6adc4e:	c1 e1 04                                        	shl    ecx,0x4
    3691cc6adc51:	44 03 c1                                        	add    r8d,ecx
    3691cc6adc54:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6adc58:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    3691cc6adc5e:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    3691cc6adc64:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    3691cc6adc6a:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6adc6e:	41 8b d8                                        	mov    ebx,r8d
    3691cc6adc71:	e8 aa 35 f1 ff                                  	call   0x3691cc5c1220
    3691cc6adc76:	e9 c8 00 00 00                                  	jmp    0x3691cc6add43
    3691cc6adc7b:	4c 8b c2                                        	mov    r8,rdx
    3691cc6adc7e:	43 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+r15*1+0x14]
    3691cc6adc83:	44 8b d7                                        	mov    r10d,edi
    3691cc6adc86:	41 8b fb                                        	mov    edi,r11d
    3691cc6adc89:	45 8b da                                        	mov    r11d,r10d
    3691cc6adc8c:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    3691cc6adc94:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    3691cc6adc9a:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    3691cc6adca2:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    3691cc6adca8:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    3691cc6adcae:	41 8b cb                                        	mov    ecx,r11d
    3691cc6adcb1:	c1 e1 04                                        	shl    ecx,0x4
    3691cc6adcb4:	03 d1                                           	add    edx,ecx
    3691cc6adcb6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6adcba:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    3691cc6adcc0:	44 8b ca                                        	mov    r9d,edx
    3691cc6adcc3:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    3691cc6adcc9:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    3691cc6adccf:	e8 64 35 f1 ff                                  	call   0x3691cc5c1238
    3691cc6adcd4:	e9 6a 00 00 00                                  	jmp    0x3691cc6add43
    3691cc6adcd9:	4c 8b c2                                        	mov    r8,rdx
    3691cc6adcdc:	4d 8b e7                                        	mov    r12,r15
    3691cc6adcdf:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    3691cc6adce4:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    3691cc6adce9:	44 8b d7                                        	mov    r10d,edi
    3691cc6adcec:	41 8b fb                                        	mov    edi,r11d
    3691cc6adcef:	45 8b da                                        	mov    r11d,r10d
    3691cc6adcf2:	46 8d bc 9f f0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1f0]
    3691cc6adcfa:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    3691cc6add00:	46 8d bc 9f e0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1e0]
    3691cc6add08:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    3691cc6add0e:	46 8d bc 9f d0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1d0]
    3691cc6add16:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    3691cc6add1c:	44 8d bf 90 00 00 00                            	lea    r15d,[rdi+0x90]
    3691cc6add23:	41 8b c3                                        	mov    eax,r11d
    3691cc6add26:	c1 e0 04                                        	shl    eax,0x4
    3691cc6add29:	44 03 f8                                        	add    r15d,eax
    3691cc6add2c:	41 57                                           	push   r15
    3691cc6add2e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6add32:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    3691cc6add38:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    3691cc6add3e:	e8 e5 34 f1 ff                                  	call   0x3691cc5c1228
    3691cc6add43:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    3691cc6add49:	83 c7 01                                        	add    edi,0x1
    3691cc6add4c:	83 ff 04                                        	cmp    edi,0x4
    3691cc6add4f:	0f 85 6b fe ff ff                               	jne    0x3691cc6adbc0
    3691cc6add55:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    3691cc6add58:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6add5c:	c4 c1 7a 6f 84 18 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0xb0]
    3691cc6add66:	c4 c1 7a 6f b4 18 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0xc0]
    3691cc6add70:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    3691cc6add74:	c4 41 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x90]
    3691cc6add7e:	c4 41 7a 6f 8c 18 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0xa0]
    3691cc6add88:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    3691cc6add8d:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    3691cc6add91:	c4 41 7a 7f 9c 18 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1c0],xmm11
    3691cc6add9b:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    3691cc6add9f:	c4 c1 7a 7f bc 18 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1b0],xmm7
    3691cc6adda9:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    3691cc6addad:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    3691cc6addb2:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    3691cc6addb6:	c4 c1 7a 7f bc 18 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1a0],xmm7
    3691cc6addc0:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    3691cc6addc4:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    3691cc6addce:	8b c3                                           	mov    eax,ebx
    3691cc6addd0:	49 8b d0                                        	mov    rdx,r8
    3691cc6addd3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6addda:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    3691cc6adde1:	e9 93 00 00 00                                  	jmp    0x3691cc6ade79
    3691cc6adde6:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6addea:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    3691cc6addf1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6addf5:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6addf8:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    3691cc6addfc:	49 8b d0                                        	mov    rdx,r8
    3691cc6addff:	e8 24 37 f1 ff                                  	call   0x3691cc5c1528
    3691cc6ade04:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    3691cc6ade07:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6ade0b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6ade12:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    3691cc6ade19:	e9 5b 00 00 00                                  	jmp    0x3691cc6ade79
    3691cc6ade1e:	4c 8b fa                                        	mov    r15,rdx
    3691cc6ade21:	49 8d 57 3c                                     	lea    rdx,[r15+0x3c]
    3691cc6ade25:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    3691cc6ade2b:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    3691cc6ade2e:	c4 c1 7a 7f 84 17 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x190],xmm0
    3691cc6ade38:	49 8d 4f 40                                     	lea    rcx,[r15+0x40]
    3691cc6ade3c:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    3691cc6ade42:	c4 c1 7a 7f 84 17 a0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1a0],xmm0
    3691cc6ade4c:	49 8d 4f 44                                     	lea    rcx,[r15+0x44]
    3691cc6ade50:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    3691cc6ade56:	c4 c1 7a 7f 84 17 b0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1b0],xmm0
    3691cc6ade60:	49 8d 4f 48                                     	lea    rcx,[r15+0x48]
    3691cc6ade64:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    3691cc6ade6a:	c4 c1 7a 7f 84 17 c0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1c0],xmm0
    3691cc6ade74:	8b c2                                           	mov    eax,edx
    3691cc6ade76:	49 8b d7                                        	mov    rdx,r15
    3691cc6ade79:	c5 fa 6f 84 02 90 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rax*1+0x190]
    3691cc6ade82:	44 8b 9c 3a 34 01 00 00                         	mov    r11d,DWORD PTR [rdx+rdi*1+0x134]
    3691cc6ade8a:	83 bc 3a 34 01 00 00 02                         	cmp    DWORD PTR [rdx+rdi*1+0x134],0x2
    3691cc6ade92:	0f 84 55 00 00 00                               	je     0x3691cc6adeed
    3691cc6ade98:	c5 fa 6f b4 02 c0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1c0]
    3691cc6adea1:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    3691cc6adea9:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    3691cc6adead:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    3691cc6adeb6:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    3691cc6adebe:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    3691cc6adec2:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    3691cc6adecb:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    3691cc6aded3:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    3691cc6aded8:	c5 78 10 8d 90 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x170]
    3691cc6adee0:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    3691cc6adee4:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    3691cc6adee8:	e9 1f 00 00 00                                  	jmp    0x3691cc6adf0c
    3691cc6adeed:	c5 fa 6f bc 02 c0 01 00 00                      	vmovdqu xmm7,XMMWORD PTR [rdx+rax*1+0x1c0]
    3691cc6adef6:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    3691cc6adeff:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    3691cc6adf08:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    3691cc6adf0c:	c5 49 6a cf                                     	vpunpckhdq xmm9,xmm6,xmm7
    3691cc6adf10:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    3691cc6adf15:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    3691cc6adf1a:	c5 7a 7f 5c 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm11
    3691cc6adf20:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    3691cc6adf25:	c5 7a 7f 4c 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm9
    3691cc6adf2b:	c5 c9 62 f7                                     	vpunpckldq xmm6,xmm6,xmm7
    3691cc6adf2f:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    3691cc6adf34:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    3691cc6adf38:	c5 fa 7f 7c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm7
    3691cc6adf3e:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    3691cc6adf42:	c5 fa 7f 04 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm0
    3691cc6adf47:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    3691cc6adf4c:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    3691cc6adf50:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    3691cc6adf55:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    3691cc6adf5a:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6adf5f:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    3691cc6adf67:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6adf6f:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6adf77:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6adf7f:	41 f6 c0 01                                     	test   r8b,0x1
    3691cc6adf83:	0f 84 63 00 00 00                               	je     0x3691cc6adfec
    3691cc6adf89:	c5 fa 10 44 02 40                               	vmovss xmm0,DWORD PTR [rdx+rax*1+0x40]
    3691cc6adf8f:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    3691cc6adf96:	0f 85 35 00 00 00                               	jne    0x3691cc6adfd1
    3691cc6adf9c:	c5 fa 10 14 02                                  	vmovss xmm2,DWORD PTR [rdx+rax*1]
    3691cc6adfa1:	c5 fa 10 5c 02 04                               	vmovss xmm3,DWORD PTR [rdx+rax*1+0x4]
    3691cc6adfa7:	c5 fa 10 64 02 08                               	vmovss xmm4,DWORD PTR [rdx+rax*1+0x8]
    3691cc6adfad:	c5 fa 10 6c 02 0c                               	vmovss xmm5,DWORD PTR [rdx+rax*1+0xc]
    3691cc6adfb3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6adfb7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6adfba:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6adfc0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc6adfc3:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    3691cc6adfc7:	e8 94 32 f1 ff                                  	call   0x3691cc5c1260
    3691cc6adfcc:	e9 1b 00 00 00                                  	jmp    0x3691cc6adfec
    3691cc6adfd1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6adfd5:	8b d8                                           	mov    ebx,eax
    3691cc6adfd7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6adfda:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6adfe0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc6adfe3:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    3691cc6adfe7:	e8 8c 32 f1 ff                                  	call   0x3691cc5c1278
    3691cc6adfec:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    3691cc6adff3:	0f 84 6c 00 00 00                               	je     0x3691cc6ae065
    3691cc6adff9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6adffc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6ae000:	c4 c1 7a 10 4c 38 44                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x44]
    3691cc6ae007:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    3691cc6ae00e:	0f 85 36 00 00 00                               	jne    0x3691cc6ae04a
    3691cc6ae014:	c4 c1 7a 10 54 38 10                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x10]
    3691cc6ae01b:	c4 c1 7a 10 5c 38 14                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x14]
    3691cc6ae022:	c4 c1 7a 10 64 38 18                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x18]
    3691cc6ae029:	c4 c1 7a 10 6c 38 1c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x1c]
    3691cc6ae030:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ae034:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6ae037:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc6ae03d:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc6ae040:	e8 1b 32 f1 ff                                  	call   0x3691cc5c1260
    3691cc6ae045:	e9 1b 00 00 00                                  	jmp    0x3691cc6ae065
    3691cc6ae04a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ae04e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6ae051:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc6ae057:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    3691cc6ae05a:	8b 9d a8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x358]
    3691cc6ae060:	e8 13 32 f1 ff                                  	call   0x3691cc5c1278
    3691cc6ae065:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    3691cc6ae06c:	0f 84 72 00 00 00                               	je     0x3691cc6ae0e4
    3691cc6ae072:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6ae075:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6ae079:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    3691cc6ae080:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    3691cc6ae087:	0f 85 39 00 00 00                               	jne    0x3691cc6ae0c6
    3691cc6ae08d:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    3691cc6ae094:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    3691cc6ae09b:	c4 c1 7a 10 64 38 28                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x28]
    3691cc6ae0a2:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    3691cc6ae0a9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ae0ad:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6ae0b0:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6ae0b6:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    3691cc6ae0bc:	e8 9f 31 f1 ff                                  	call   0x3691cc5c1260
    3691cc6ae0c1:	e9 1e 00 00 00                                  	jmp    0x3691cc6ae0e4
    3691cc6ae0c6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ae0ca:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6ae0cd:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6ae0d3:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    3691cc6ae0d9:	8b 9d b0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x350]
    3691cc6ae0df:	e8 94 31 f1 ff                                  	call   0x3691cc5c1278
    3691cc6ae0e4:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    3691cc6ae0eb:	0f 85 4e 00 00 00                               	jne    0x3691cc6ae13f
    3691cc6ae0f1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6ae0f5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6ae0fa:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6ae0fe:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6ae103:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6ae109:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6ae10f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6ae114:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6ae11c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6ae124:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6ae12c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6ae134:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6ae13a:	e9 2b 1d 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6ae13f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6ae142:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6ae146:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    3691cc6ae14d:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    3691cc6ae154:	0f 85 82 00 00 00                               	jne    0x3691cc6ae1dc
    3691cc6ae15a:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    3691cc6ae161:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    3691cc6ae168:	c4 c1 7a 10 64 38 38                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x38]
    3691cc6ae16f:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    3691cc6ae176:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ae17a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6ae17d:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc6ae183:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    3691cc6ae189:	e8 d2 30 f1 ff                                  	call   0x3691cc5c1260
    3691cc6ae18e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6ae192:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6ae197:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6ae19b:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6ae1a0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6ae1a6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6ae1ac:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6ae1b1:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6ae1b9:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6ae1c1:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6ae1c9:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6ae1d1:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6ae1d7:	e9 8e 1c 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6ae1dc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6ae1e0:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6ae1e3:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc6ae1e9:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    3691cc6ae1ef:	8b 9d c8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x338]
    3691cc6ae1f5:	e8 7e 30 f1 ff                                  	call   0x3691cc5c1278
    3691cc6ae1fa:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6ae1fe:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6ae203:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6ae207:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6ae20c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6ae212:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6ae218:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6ae21d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6ae225:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6ae22d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6ae235:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6ae23d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6ae243:	e9 22 1c 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6ae248:	44 8b c3                                        	mov    r8d,ebx
    3691cc6ae24b:	41 83 e0 01                                     	and    r8d,0x1
    3691cc6ae24f:	41 f7 d8                                        	neg    r8d
    3691cc6ae252:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    3691cc6ae257:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    3691cc6ae25c:	44 8b c3                                        	mov    r8d,ebx
    3691cc6ae25f:	41 c1 e0 1e                                     	shl    r8d,0x1e
    3691cc6ae263:	41 c1 f8 1f                                     	sar    r8d,0x1f
    3691cc6ae267:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    3691cc6ae26d:	44 8b c3                                        	mov    r8d,ebx
    3691cc6ae270:	41 c1 e0 1d                                     	shl    r8d,0x1d
    3691cc6ae274:	41 c1 f8 1f                                     	sar    r8d,0x1f
    3691cc6ae278:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    3691cc6ae27e:	44 8b c3                                        	mov    r8d,ebx
    3691cc6ae281:	41 c1 e0 1c                                     	shl    r8d,0x1c
    3691cc6ae285:	41 c1 f8 1f                                     	sar    r8d,0x1f
    3691cc6ae289:	c4 c3 79 22 c0 03                               	vpinsrd xmm0,xmm0,r8d,0x3
    3691cc6ae28f:	c4 e1 82 2a bd 60 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xa0]
    3691cc6ae298:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    3691cc6ae29d:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    3691cc6ae2a4:	4c 2b 85 d0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x330]
    3691cc6ae2ab:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    3691cc6ae2b0:	c4 c3 41 21 fb 10                               	vinsertps xmm7,xmm7,xmm11,0x10
    3691cc6ae2b6:	4c 8b ff                                        	mov    r15,rdi
    3691cc6ae2b9:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    3691cc6ae2c0:	49 8d 14 3f                                     	lea    rdx,[r15+rdi*1]
    3691cc6ae2c4:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    3691cc6ae2c9:	c4 c3 41 21 fb 20                               	vinsertps xmm7,xmm7,xmm11,0x20
    3691cc6ae2cf:	4d 03 c7                                        	add    r8,r15
    3691cc6ae2d2:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    3691cc6ae2d7:	c4 c3 41 21 fb 30                               	vinsertps xmm7,xmm7,xmm11,0x30
    3691cc6ae2dd:	c5 78 10 9d 00 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x300]
    3691cc6ae2e5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    3691cc6ae2e9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    3691cc6ae2f1:	c5 f0 59 d7                                     	vmulps xmm2,xmm1,xmm7
    3691cc6ae2f5:	c4 e1 82 2a 9d 50 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xb0]
    3691cc6ae2fe:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    3691cc6ae303:	4c 8b 85 50 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xb0]
    3691cc6ae30a:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    3691cc6ae311:	c4 c1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,r8
    3691cc6ae316:	c4 e3 61 21 dc 10                               	vinsertps xmm3,xmm3,xmm4,0x10
    3691cc6ae31c:	48 8b 95 50 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb0]
    3691cc6ae323:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    3691cc6ae32a:	48 8d 3c 11                                     	lea    rdi,[rcx+rdx*1]
    3691cc6ae32e:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    3691cc6ae333:	c4 e3 61 21 dc 20                               	vinsertps xmm3,xmm3,xmm4,0x20
    3691cc6ae339:	4a 8d 3c 01                                     	lea    rdi,[rcx+r8*1]
    3691cc6ae33d:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    3691cc6ae342:	c4 e3 61 21 dc 30                               	vinsertps xmm3,xmm3,xmm4,0x30
    3691cc6ae348:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    3691cc6ae34c:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    3691cc6ae354:	c5 d8 59 eb                                     	vmulps xmm5,xmm4,xmm3
    3691cc6ae358:	c5 e8 58 f5                                     	vaddps xmm6,xmm2,xmm5
    3691cc6ae35c:	4c 8b 15 6e a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa96e]        # 0x3691cc6a8cd1
    3691cc6ae363:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    3691cc6ae368:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    3691cc6ae36d:	c5 38 5c cf                                     	vsubps xmm9,xmm8,xmm7
    3691cc6ae371:	c5 30 5c cb                                     	vsubps xmm9,xmm9,xmm3
    3691cc6ae375:	c5 78 10 95 20 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2e0]
    3691cc6ae37d:	c4 41 28 59 d9                                  	vmulps xmm11,xmm10,xmm9
    3691cc6ae382:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    3691cc6ae387:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    3691cc6ae38c:	c5 28 c2 e6 01                                  	vcmpltps xmm12,xmm10,xmm6
    3691cc6ae391:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    3691cc6ae395:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6ae399:	49 8d 78 18                                     	lea    rdi,[r8+0x18]
    3691cc6ae39d:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    3691cc6ae3a4:	c4 22 79 18 24 1f                               	vbroadcastss xmm12,DWORD PTR [rdi+r11*1]
    3691cc6ae3aa:	c4 c1 40 59 fc                                  	vmulps xmm7,xmm7,xmm12
    3691cc6ae3af:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    3691cc6ae3b6:	c4 22 79 18 24 27                               	vbroadcastss xmm12,DWORD PTR [rdi+r12*1]
    3691cc6ae3bc:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    3691cc6ae3c1:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    3691cc6ae3c6:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    3691cc6ae3cd:	c4 22 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [rdi+r15*1]
    3691cc6ae3d3:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    3691cc6ae3d8:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    3691cc6ae3dd:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    3691cc6ae3e5:	c5 b0 58 ff                                     	vaddps xmm7,xmm9,xmm7
    3691cc6ae3e9:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    3691cc6ae3ed:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    3691cc6ae3f1:	44 8b ce                                        	mov    r9d,esi
    3691cc6ae3f4:	44 0f af 8d 28 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xd8]
    3691cc6ae3fc:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    3691cc6ae402:	44 03 cb                                        	add    r9d,ebx
    3691cc6ae405:	0f af 75 a0                                     	imul   esi,DWORD PTR [rbp-0x60]
    3691cc6ae409:	03 f3                                           	add    esi,ebx
    3691cc6ae40b:	41 8b 5c 38 04                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x4]
    3691cc6ae410:	41 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+rdi*1+0x68]
    3691cc6ae415:	85 c0                                           	test   eax,eax
    3691cc6ae417:	0f 85 07 00 00 00                               	jne    0x3691cc6ae424
    3691cc6ae41d:	33 d2                                           	xor    edx,edx
    3691cc6ae41f:	e9 13 01 00 00                                  	jmp    0x3691cc6ae537
    3691cc6ae424:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    3691cc6ae42c:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    3691cc6ae435:	75 e6                                           	jne    0x3691cc6ae41d
    3691cc6ae437:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    3691cc6ae43c:	8d 0c b2                                        	lea    ecx,[rdx+rsi*4]
    3691cc6ae43f:	c4 41 7b 10 24 08                               	vmovsd xmm12,QWORD PTR [r8+rcx*1]
    3691cc6ae445:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    3691cc6ae44b:	3b cb                                           	cmp    ecx,ebx
    3691cc6ae44d:	0f 8c 0d 00 00 00                               	jl     0x3691cc6ae460
    3691cc6ae453:	c5 f8 10 9d 40 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2c0]
    3691cc6ae45b:	e9 0a 00 00 00                                  	jmp    0x3691cc6ae46a
    3691cc6ae460:	42 8d 14 8a                                     	lea    edx,[rdx+r9*4]
    3691cc6ae464:	c4 c1 7b 10 1c 10                               	vmovsd xmm3,QWORD PTR [r8+rdx*1]
    3691cc6ae46a:	c5 19 6c e3                                     	vpunpcklqdq xmm12,xmm12,xmm3
    3691cc6ae46e:	41 8b 54 38 6c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x6c]
    3691cc6ae473:	81 ea 00 02 00 00                               	sub    edx,0x200
    3691cc6ae479:	83 fa 07                                        	cmp    edx,0x7
    3691cc6ae47c:	0f 83 0b 00 00 00                               	jae    0x3691cc6ae48d
    3691cc6ae482:	4c 8d 15 a7 1f 00 00                            	lea    r10,[rip+0x1fa7]        # 0x3691cc6b0430
    3691cc6ae489:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    3691cc6ae48d:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    3691cc6ae492:	e9 48 00 00 00                                  	jmp    0x3691cc6ae4df
    3691cc6ae497:	c5 18 c2 e7 02                                  	vcmpleps xmm12,xmm12,xmm7
    3691cc6ae49c:	e9 3e 00 00 00                                  	jmp    0x3691cc6ae4df
    3691cc6ae4a1:	c4 41 40 c2 e4 04                               	vcmpneqps xmm12,xmm7,xmm12
    3691cc6ae4a7:	e9 33 00 00 00                                  	jmp    0x3691cc6ae4df
    3691cc6ae4ac:	c5 18 c2 e7 01                                  	vcmpltps xmm12,xmm12,xmm7
    3691cc6ae4b1:	e9 29 00 00 00                                  	jmp    0x3691cc6ae4df
    3691cc6ae4b6:	c4 41 40 c2 e4 02                               	vcmpleps xmm12,xmm7,xmm12
    3691cc6ae4bc:	e9 1e 00 00 00                                  	jmp    0x3691cc6ae4df
    3691cc6ae4c1:	c4 41 40 c2 e4 00                               	vcmpeqps xmm12,xmm7,xmm12
    3691cc6ae4c7:	e9 13 00 00 00                                  	jmp    0x3691cc6ae4df
    3691cc6ae4cc:	c4 41 40 c2 e4 01                               	vcmpltps xmm12,xmm7,xmm12
    3691cc6ae4d2:	e9 08 00 00 00                                  	jmp    0x3691cc6ae4df
    3691cc6ae4d7:	c5 78 10 a5 40 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2c0]
    3691cc6ae4df:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    3691cc6ae4e3:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    3691cc6ae4e7:	85 d2                                           	test   edx,edx
    3691cc6ae4e9:	0f 85 3c 00 00 00                               	jne    0x3691cc6ae52b
    3691cc6ae4ef:	4d 8b e0                                        	mov    r12,r8
    3691cc6ae4f2:	4c 8b c7                                        	mov    r8,rdi
    3691cc6ae4f5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6ae4fa:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6ae4ff:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6ae505:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6ae50b:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6ae510:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6ae518:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6ae520:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6ae526:	e9 3f 19 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6ae52b:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    3691cc6ae532:	ba 01 00 00 00                                  	mov    edx,0x1
    3691cc6ae537:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    3691cc6ae541:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6ae546:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6ae54b:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x3691cc6ae539
    3691cc6ae552:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6ae557:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    3691cc6ae55b:	c5 e0 c2 de 01                                  	vcmpltps xmm3,xmm3,xmm6
    3691cc6ae560:	c4 41 61 df fc                                  	vpandn xmm15,xmm3,xmm12
    3691cc6ae565:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    3691cc6ae569:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc6ae56e:	c5 b8 5e f6                                     	vdivps xmm6,xmm8,xmm6
    3691cc6ae572:	48 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rbx
    3691cc6ae579:	49 8d 58 2c                                     	lea    rbx,[r8+0x2c]
    3691cc6ae57d:	c4 22 79 18 24 1b                               	vbroadcastss xmm12,DWORD PTR [rbx+r11*1]
    3691cc6ae583:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    3691cc6ae588:	c4 a2 79 18 1c 23                               	vbroadcastss xmm3,DWORD PTR [rbx+r12*1]
    3691cc6ae58e:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    3691cc6ae592:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    3691cc6ae596:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    3691cc6ae59c:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    3691cc6ae5a0:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    3691cc6ae5a4:	c4 41 48 59 e4                                  	vmulps xmm12,xmm6,xmm12
    3691cc6ae5a9:	49 8d 58 28                                     	lea    rbx,[r8+0x28]
    3691cc6ae5ad:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    3691cc6ae5b3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    3691cc6ae5b7:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    3691cc6ae5bf:	c4 a2 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [rbx+r12*1]
    3691cc6ae5c5:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    3691cc6ae5c9:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    3691cc6ae5cd:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    3691cc6ae5d3:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    3691cc6ae5d7:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    3691cc6ae5db:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    3691cc6ae5df:	49 8d 58 24                                     	lea    rbx,[r8+0x24]
    3691cc6ae5e3:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    3691cc6ae5e9:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    3691cc6ae5ed:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    3691cc6ae5f5:	c4 a2 79 18 3c 23                               	vbroadcastss xmm7,DWORD PTR [rbx+r12*1]
    3691cc6ae5fb:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    3691cc6ae5ff:	c5 e0 58 ff                                     	vaddps xmm7,xmm3,xmm7
    3691cc6ae603:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    3691cc6ae609:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    3691cc6ae60d:	c5 c0 58 fb                                     	vaddps xmm7,xmm7,xmm3
    3691cc6ae611:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    3691cc6ae615:	49 8d 58 20                                     	lea    rbx,[r8+0x20]
    3691cc6ae619:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    3691cc6ae61f:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    3691cc6ae623:	c5 78 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm8
    3691cc6ae62b:	c4 22 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [rbx+r12*1]
    3691cc6ae631:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    3691cc6ae636:	c4 41 60 58 c0                                  	vaddps xmm8,xmm3,xmm8
    3691cc6ae63b:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    3691cc6ae641:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    3691cc6ae645:	c5 38 58 c3                                     	vaddps xmm8,xmm8,xmm3
    3691cc6ae649:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    3691cc6ae64e:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    3691cc6ae655:	48 89 b5 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rsi
    3691cc6ae65c:	41 8b b4 18 34 01 00 00                         	mov    esi,DWORD PTR [r8+rbx*1+0x134]
    3691cc6ae664:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    3691cc6ae66b:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    3691cc6ae66f:	c5 78 11 95 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm10
    3691cc6ae677:	48 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rax
    3691cc6ae67e:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    3691cc6ae685:	41 83 f9 01                                     	cmp    r9d,0x1
    3691cc6ae689:	0f 87 fd 06 00 00                               	ja     0x3691cc6aed8c
    3691cc6ae68f:	45 8b 4c 18 28                                  	mov    r9d,DWORD PTR [r8+rbx*1+0x28]
    3691cc6ae694:	41 8b 7c 18 20                                  	mov    edi,DWORD PTR [r8+rbx*1+0x20]
    3691cc6ae699:	48 89 b5 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rsi
    3691cc6ae6a0:	49 8d 70 54                                     	lea    rsi,[r8+0x54]
    3691cc6ae6a4:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    3691cc6ae6aa:	c4 22 79 18 0c 1e                               	vbroadcastss xmm9,DWORD PTR [rsi+r11*1]
    3691cc6ae6b0:	c4 22 79 18 2c 26                               	vbroadcastss xmm13,DWORD PTR [rsi+r12*1]
    3691cc6ae6b6:	41 8b 74 18 1c                                  	mov    esi,DWORD PTR [r8+rbx*1+0x1c]
    3691cc6ae6bb:	c5 02 2a f6                                     	vcvtsi2ss xmm14,xmm15,esi
    3691cc6ae6bf:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    3691cc6ae6c4:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    3691cc6ae6cb:	4d 8d 48 50                                     	lea    r9,[r8+0x50]
    3691cc6ae6cf:	c4 82 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+r11*1]
    3691cc6ae6d5:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    3691cc6ae6d9:	c4 82 79 18 24 21                               	vbroadcastss xmm4,DWORD PTR [r9+r12*1]
    3691cc6ae6df:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    3691cc6ae6e3:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    3691cc6ae6e7:	c4 82 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [r9+r15*1]
    3691cc6ae6ed:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    3691cc6ae6f1:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    3691cc6ae6f5:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    3691cc6ae6f9:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    3691cc6ae6ff:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    3691cc6ae703:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    3691cc6ae707:	4c 8b 15 13 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd213]        # 0x3691cc6ab921
    3691cc6ae70e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    3691cc6ae713:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    3691cc6ae717:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    3691cc6ae71b:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    3691cc6ae721:	4c 8b 15 f6 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ff6]        # 0x3691cc6a771e
    3691cc6ae728:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    3691cc6ae72d:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    3691cc6ae732:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    3691cc6ae738:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    3691cc6ae73d:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    3691cc6ae742:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    3691cc6ae74a:	4c 8b 15 db d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2db]        # 0x3691cc6aba2c
    3691cc6ae751:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    3691cc6ae756:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    3691cc6ae75b:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    3691cc6ae763:	4c 8b 15 f3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f3]        # 0x3691cc6ab95d
    3691cc6ae76a:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    3691cc6ae76f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    3691cc6ae777:	4c 8b 15 ee d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1ee]        # 0x3691cc6ab96c
    3691cc6ae77e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6ae783:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6ae787:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    3691cc6ae78c:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    3691cc6ae791:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    3691cc6ae795:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6ae79a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    3691cc6ae79e:	c4 81 7a 7f 84 08 90 00 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x90],xmm0
    3691cc6ae7a8:	c5 82 2a c7                                     	vcvtsi2ss xmm0,xmm15,edi
    3691cc6ae7ac:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    3691cc6ae7b1:	c4 41 68 59 c9                                  	vmulps xmm9,xmm2,xmm9
    3691cc6ae7b6:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    3691cc6ae7bb:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    3691cc6ae7c0:	c5 20 59 d3                                     	vmulps xmm10,xmm11,xmm3
    3691cc6ae7c4:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    3691cc6ae7c9:	c4 41 48 59 c9                                  	vmulps xmm9,xmm6,xmm9
    3691cc6ae7ce:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    3691cc6ae7d4:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    3691cc6ae7d9:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc6ae7de:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    3691cc6ae7e2:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    3691cc6ae7e8:	4c 8b 15 2f 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8f2f]        # 0x3691cc6a771e
    3691cc6ae7ef:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    3691cc6ae7f5:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    3691cc6ae7fa:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    3691cc6ae800:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    3691cc6ae805:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    3691cc6ae80a:	4c 8b 15 4c d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd14c]        # 0x3691cc6ab95d
    3691cc6ae811:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    3691cc6ae816:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    3691cc6ae81b:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    3691cc6ae820:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    3691cc6ae825:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    3691cc6ae82a:	c4 01 7a 7f 94 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x190],xmm10
    3691cc6ae834:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    3691cc6ae838:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    3691cc6ae840:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    3691cc6ae845:	4c 8b 15 ad ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffedad]        # 0x3691cc6ad5f9
    3691cc6ae84c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    3691cc6ae851:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    3691cc6ae856:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    3691cc6ae85b:	4c 8b 15 bc 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ebc]        # 0x3691cc6a771e
    3691cc6ae862:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    3691cc6ae868:	c4 c1 28 54 cf                                  	vandps xmm1,xmm10,xmm15
    3691cc6ae86d:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    3691cc6ae873:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    3691cc6ae877:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    3691cc6ae87c:	4c 8b 15 da d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0da]        # 0x3691cc6ab95d
    3691cc6ae883:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    3691cc6ae888:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    3691cc6ae88d:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    3691cc6ae892:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    3691cc6ae897:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    3691cc6ae89c:	c4 01 7a 7f 14 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm10
    3691cc6ae8a2:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    3691cc6ae8a7:	c4 c1 78 59 c5                                  	vmulps xmm0,xmm0,xmm13
    3691cc6ae8ac:	c4 c1 78 58 c6                                  	vaddps xmm0,xmm0,xmm14
    3691cc6ae8b1:	4c 8b 15 66 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8e66]        # 0x3691cc6a771e
    3691cc6ae8b8:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    3691cc6ae8bd:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    3691cc6ae8c2:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    3691cc6ae8c8:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    3691cc6ae8cd:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    3691cc6ae8d2:	4c 8b 15 84 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd084]        # 0x3691cc6ab95d
    3691cc6ae8d9:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    3691cc6ae8de:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    3691cc6ae8e3:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    3691cc6ae8e8:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    3691cc6ae8ec:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6ae8f1:	c4 81 7a 7f 44 08 70                            	vmovdqu XMMWORD PTR [r8+r9*1+0x70],xmm0
    3691cc6ae8f8:	c4 01 7a 7f 44 08 50                            	vmovdqu XMMWORD PTR [r8+r9*1+0x50],xmm8
    3691cc6ae8ff:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    3691cc6ae907:	c4 81 7a 7f bc 08 f0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1f0],xmm7
    3691cc6ae911:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    3691cc6ae919:	c4 81 7a 7f 84 08 e0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1e0],xmm0
    3691cc6ae923:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    3691cc6ae92b:	c4 01 7a 7f a4 08 d0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1d0],xmm12
    3691cc6ae935:	45 8b 7c 18 34                                  	mov    r15d,DWORD PTR [r8+rbx*1+0x34]
    3691cc6ae93a:	45 8b 64 18 30                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x30]
    3691cc6ae93f:	45 8b 5c 18 2c                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x2c]
    3691cc6ae944:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    3691cc6ae94b:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    3691cc6ae952:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    3691cc6ae959:	33 c0                                           	xor    eax,eax
    3691cc6ae95b:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    3691cc6ae961:	e9 2a 00 00 00                                  	jmp    0x3691cc6ae990
    3691cc6ae966:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ae96f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3691cc6ae978:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    3691cc6ae980:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    3691cc6ae986:	45 8b cc                                        	mov    r9d,r12d
    3691cc6ae989:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    3691cc6ae990:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    3691cc6ae995:	0f 85 5c 19 00 00                               	jne    0x3691cc6b02f7
    3691cc6ae99b:	8b c8                                           	mov    ecx,eax
    3691cc6ae99d:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    3691cc6ae9a4:	41 d3 ef                                        	shr    r15d,cl
    3691cc6ae9a7:	41 f6 c7 01                                     	test   r15b,0x1
    3691cc6ae9ab:	0f 85 0a 00 00 00                               	jne    0x3691cc6ae9bb
    3691cc6ae9b1:	45 8b e1                                        	mov    r12d,r9d
    3691cc6ae9b4:	8b f8                                           	mov    edi,eax
    3691cc6ae9b6:	e9 3d 03 00 00                                  	jmp    0x3691cc6aecf8
    3691cc6ae9bb:	45 8d bc 81 90 01 00 00                         	lea    r15d,[r9+rax*4+0x190]
    3691cc6ae9c3:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    3691cc6ae9c7:	41 8d 8c 81 90 00 00 00                         	lea    ecx,[r9+rax*4+0x90]
    3691cc6ae9cf:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    3691cc6ae9d3:	44 8d 49 01                                     	lea    r9d,[rcx+0x1]
    3691cc6ae9d7:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    3691cc6ae9de:	45 85 db                                        	test   r11d,r11d
    3691cc6ae9e1:	0f 85 51 00 00 00                               	jne    0x3691cc6aea38
    3691cc6ae9e7:	85 f6                                           	test   esi,esi
    3691cc6ae9e9:	0f 84 c8 19 00 00                               	je     0x3691cc6b03b7
    3691cc6ae9ef:	83 fe ff                                        	cmp    esi,0xffffffff
    3691cc6ae9f2:	0f 84 94 19 00 00                               	je     0x3691cc6b038c
    3691cc6ae9f8:	44 8b d0                                        	mov    r10d,eax
    3691cc6ae9fb:	8b c1                                           	mov    eax,ecx
    3691cc6ae9fd:	41 8b ca                                        	mov    ecx,r10d
    3691cc6aea00:	99                                              	cdq
    3691cc6aea01:	f7 fe                                           	idiv   esi
    3691cc6aea03:	8b c2                                           	mov    eax,edx
    3691cc6aea05:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc6aea08:	23 c6                                           	and    eax,esi
    3691cc6aea0a:	03 c2                                           	add    eax,edx
    3691cc6aea0c:	83 fe ff                                        	cmp    esi,0xffffffff
    3691cc6aea0f:	0f 84 80 19 00 00                               	je     0x3691cc6b0395
    3691cc6aea15:	44 8b d0                                        	mov    r10d,eax
    3691cc6aea18:	41 8b c1                                        	mov    eax,r9d
    3691cc6aea1b:	45 8b ca                                        	mov    r9d,r10d
    3691cc6aea1e:	99                                              	cdq
    3691cc6aea1f:	f7 fe                                           	idiv   esi
    3691cc6aea21:	8b c2                                           	mov    eax,edx
    3691cc6aea23:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc6aea26:	23 c6                                           	and    eax,esi
    3691cc6aea28:	03 c2                                           	add    eax,edx
    3691cc6aea2a:	45 8b d1                                        	mov    r10d,r9d
    3691cc6aea2d:	44 8b c8                                        	mov    r9d,eax
    3691cc6aea30:	41 8b c2                                        	mov    eax,r10d
    3691cc6aea33:	e9 0e 00 00 00                                  	jmp    0x3691cc6aea46
    3691cc6aea38:	41 23 cb                                        	and    ecx,r11d
    3691cc6aea3b:	45 23 cb                                        	and    r9d,r11d
    3691cc6aea3e:	44 8b d1                                        	mov    r10d,ecx
    3691cc6aea41:	8b c8                                           	mov    ecx,eax
    3691cc6aea43:	41 8b c2                                        	mov    eax,r10d
    3691cc6aea46:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    3691cc6aea4a:	45 85 e4                                        	test   r12d,r12d
    3691cc6aea4d:	0f 85 47 00 00 00                               	jne    0x3691cc6aea9a
    3691cc6aea53:	85 ff                                           	test   edi,edi
    3691cc6aea55:	0f 84 57 19 00 00                               	je     0x3691cc6b03b2
    3691cc6aea5b:	83 ff ff                                        	cmp    edi,0xffffffff
    3691cc6aea5e:	0f 84 3b 19 00 00                               	je     0x3691cc6b039f
    3691cc6aea64:	8b c8                                           	mov    ecx,eax
    3691cc6aea66:	8b c2                                           	mov    eax,edx
    3691cc6aea68:	99                                              	cdq
    3691cc6aea69:	f7 ff                                           	idiv   edi
    3691cc6aea6b:	8b c2                                           	mov    eax,edx
    3691cc6aea6d:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc6aea70:	23 c7                                           	and    eax,edi
    3691cc6aea72:	03 c2                                           	add    eax,edx
    3691cc6aea74:	83 ff ff                                        	cmp    edi,0xffffffff
    3691cc6aea77:	0f 84 2b 19 00 00                               	je     0x3691cc6b03a8
    3691cc6aea7d:	44 8b d0                                        	mov    r10d,eax
    3691cc6aea80:	41 8b c7                                        	mov    eax,r15d
    3691cc6aea83:	45 8b fa                                        	mov    r15d,r10d
    3691cc6aea86:	99                                              	cdq
    3691cc6aea87:	f7 ff                                           	idiv   edi
    3691cc6aea89:	8b c2                                           	mov    eax,edx
    3691cc6aea8b:	c1 f8 1f                                        	sar    eax,0x1f
    3691cc6aea8e:	23 f8                                           	and    edi,eax
    3691cc6aea90:	03 fa                                           	add    edi,edx
    3691cc6aea92:	41 8b d7                                        	mov    edx,r15d
    3691cc6aea95:	e9 0b 00 00 00                                  	jmp    0x3691cc6aeaa5
    3691cc6aea9a:	41 23 d4                                        	and    edx,r12d
    3691cc6aea9d:	45 23 e7                                        	and    r12d,r15d
    3691cc6aeaa0:	41 8b fc                                        	mov    edi,r12d
    3691cc6aeaa3:	8b c8                                           	mov    ecx,eax
    3691cc6aeaa5:	8b c1                                           	mov    eax,ecx
    3691cc6aeaa7:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    3691cc6aeaad:	44 8b ff                                        	mov    r15d,edi
    3691cc6aeab0:	41 d3 e7                                        	shl    r15d,cl
    3691cc6aeab3:	0f af fe                                        	imul   edi,esi
    3691cc6aeab6:	45 85 db                                        	test   r11d,r11d
    3691cc6aeab9:	41 0f 45 ff                                     	cmovne edi,r15d
    3691cc6aeabd:	44 8d 3c 38                                     	lea    r15d,[rax+rdi*1]
    3691cc6aeac1:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    3691cc6aeac5:	c4 81 7a 10 04 38                               	vmovss xmm0,DWORD PTR [r8+r15*1]
    3691cc6aeacb:	c4 e2 79 30 c0                                  	vpmovzxbw xmm0,xmm0
    3691cc6aead0:	41 03 f9                                        	add    edi,r9d
    3691cc6aead3:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc6aead6:	c4 c1 7a 10 3c 38                               	vmovss xmm7,DWORD PTR [r8+rdi*1]
    3691cc6aeadc:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    3691cc6aeae1:	c5 f9 61 c7                                     	vpunpcklwd xmm0,xmm0,xmm7
    3691cc6aeae5:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    3691cc6aeaeb:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    3691cc6aeaf2:	41 8d 8c bf 00 fe ff ff                         	lea    ecx,[r15+rdi*4-0x200]
    3691cc6aeafa:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    3691cc6aeafe:	41 bf 00 01 00 00                               	mov    r15d,0x100
    3691cc6aeb04:	44 8b e1                                        	mov    r12d,ecx
    3691cc6aeb07:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    3691cc6aeb0d:	45 0f 4d e7                                     	cmovge r12d,r15d
    3691cc6aeb11:	33 c9                                           	xor    ecx,ecx
    3691cc6aeb13:	45 85 e4                                        	test   r12d,r12d
    3691cc6aeb16:	41 0f 4f cc                                     	cmovg  ecx,r12d
    3691cc6aeb1a:	44 69 e1 ff ff 00 00                            	imul   r12d,ecx,0xffff
    3691cc6aeb21:	41 81 c4 00 01 00 00                            	add    r12d,0x100
    3691cc6aeb28:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    3691cc6aeb2d:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc6aeb32:	c5 f9 f5 c7                                     	vpmaddwd xmm0,xmm0,xmm7
    3691cc6aeb36:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    3691cc6aeb3a:	41 8d 4c bc 70                                  	lea    ecx,[r12+rdi*4+0x70]
    3691cc6aeb3f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    3691cc6aeb43:	8b f9                                           	mov    edi,ecx
    3691cc6aeb45:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    3691cc6aeb4b:	41 0f 4d ff                                     	cmovge edi,r15d
    3691cc6aeb4f:	33 c9                                           	xor    ecx,ecx
    3691cc6aeb51:	85 ff                                           	test   edi,edi
    3691cc6aeb53:	0f 4f cf                                        	cmovg  ecx,edi
    3691cc6aeb56:	44 2b f9                                        	sub    r15d,ecx
    3691cc6aeb59:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    3691cc6aeb5e:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc6aeb63:	c4 c2 79 40 c0                                  	vpmulld xmm0,xmm0,xmm8
    3691cc6aeb68:	44 8b f9                                        	mov    r15d,ecx
    3691cc6aeb6b:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    3691cc6aeb71:	8b fa                                           	mov    edi,edx
    3691cc6aeb73:	d3 e7                                           	shl    edi,cl
    3691cc6aeb75:	0f af d6                                        	imul   edx,esi
    3691cc6aeb78:	45 85 db                                        	test   r11d,r11d
    3691cc6aeb7b:	0f 45 d7                                        	cmovne edx,edi
    3691cc6aeb7e:	8d 3c 10                                        	lea    edi,[rax+rdx*1]
    3691cc6aeb81:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc6aeb84:	c4 41 7a 10 04 38                               	vmovss xmm8,DWORD PTR [r8+rdi*1]
    3691cc6aeb8a:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    3691cc6aeb8f:	42 8d 3c 0a                                     	lea    edi,[rdx+r9*1]
    3691cc6aeb93:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    3691cc6aeb96:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    3691cc6aeb9c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    3691cc6aeba1:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    3691cc6aeba6:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    3691cc6aebaa:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    3691cc6aebaf:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc6aebb4:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    3691cc6aebb9:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    3691cc6aebbd:	4c 8b 15 25 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb25]        # 0x3691cc6ad6e9
    3691cc6aebc4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    3691cc6aebc9:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    3691cc6aebcd:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    3691cc6aebd1:	c5 f9 72 e0 10                                  	vpsrad xmm0,xmm0,0x10
    3691cc6aebd6:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    3691cc6aebdb:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    3691cc6aebdf:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    3691cc6aebe3:	44 8b ff                                        	mov    r15d,edi
    3691cc6aebe6:	41 c1 ef 18                                     	shr    r15d,0x18
    3691cc6aebea:	8b c7                                           	mov    eax,edi
    3691cc6aebec:	c1 e8 10                                        	shr    eax,0x10
    3691cc6aebef:	8b d7                                           	mov    edx,edi
    3691cc6aebf1:	c1 ea 08                                        	shr    edx,0x8
    3691cc6aebf4:	40 0f b6 ff                                     	movzx  edi,dil
    3691cc6aebf8:	44 8b d7                                        	mov    r10d,edi
    3691cc6aebfb:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc6aec00:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    3691cc6aec06:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    3691cc6aec0b:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aec0f:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    3691cc6aec15:	41 8d 4c bc 50                                  	lea    ecx,[r12+rdi*4+0x50]
    3691cc6aec1a:	83 bd 50 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x1b0],0x2
    3691cc6aec21:	0f 84 77 00 00 00                               	je     0x3691cc6aec9e
    3691cc6aec27:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    3691cc6aec2d:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    3691cc6aec33:	41 8d 8c bc f0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1f0]
    3691cc6aec3b:	0f b6 d2                                        	movzx  edx,dl
    3691cc6aec3e:	44 8b d2                                        	mov    r10d,edx
    3691cc6aec41:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc6aec46:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aec4a:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    3691cc6aec50:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    3691cc6aec56:	41 8d 94 bc e0 01 00 00                         	lea    edx,[r12+rdi*4+0x1e0]
    3691cc6aec5e:	0f b6 c0                                        	movzx  eax,al
    3691cc6aec61:	44 8b d0                                        	mov    r10d,eax
    3691cc6aec64:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc6aec69:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aec6d:	c4 c1 7a 59 04 10                               	vmulss xmm0,xmm0,DWORD PTR [r8+rdx*1]
    3691cc6aec73:	c4 c1 7a 11 04 10                               	vmovss DWORD PTR [r8+rdx*1],xmm0
    3691cc6aec79:	41 8d 84 bc d0 01 00 00                         	lea    eax,[r12+rdi*4+0x1d0]
    3691cc6aec81:	45 8b d7                                        	mov    r10d,r15d
    3691cc6aec84:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc6aec89:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aec8d:	c4 c1 7a 59 04 00                               	vmulss xmm0,xmm0,DWORD PTR [r8+rax*1]
    3691cc6aec93:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    3691cc6aec99:	e9 5a 00 00 00                                  	jmp    0x3691cc6aecf8
    3691cc6aec9e:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    3691cc6aeca4:	41 8d 8c bc d0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1d0]
    3691cc6aecac:	45 8b d7                                        	mov    r10d,r15d
    3691cc6aecaf:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc6aecb4:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aecb8:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    3691cc6aecbe:	45 8d bc bc e0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1e0]
    3691cc6aecc6:	0f b6 c0                                        	movzx  eax,al
    3691cc6aecc9:	44 8b d0                                        	mov    r10d,eax
    3691cc6aeccc:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc6aecd1:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aecd5:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    3691cc6aecdb:	45 8d bc bc f0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1f0]
    3691cc6aece3:	0f b6 c2                                        	movzx  eax,dl
    3691cc6aece6:	44 8b d0                                        	mov    r10d,eax
    3691cc6aece9:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    3691cc6aecee:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    3691cc6aecf2:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    3691cc6aecf8:	8d 47 01                                        	lea    eax,[rdi+0x1]
    3691cc6aecfb:	83 f8 04                                        	cmp    eax,0x4
    3691cc6aecfe:	0f 85 7c fc ff ff                               	jne    0x3691cc6ae980
    3691cc6aed04:	c4 01 7a 6f a4 20 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r8+r12*1+0x1d0]
    3691cc6aed0e:	c4 81 7a 6f bc 20 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r12*1+0x1f0]
    3691cc6aed18:	c4 01 7a 6f 44 20 50                            	vmovdqu xmm8,XMMWORD PTR [r8+r12*1+0x50]
    3691cc6aed1f:	c4 81 7a 6f 84 20 e0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+r12*1+0x1e0]
    3691cc6aed29:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6aed31:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6aed39:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    3691cc6aed41:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    3691cc6aed48:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    3691cc6aed4c:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    3691cc6aed54:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    3691cc6aed5a:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    3691cc6aed60:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    3691cc6aed67:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    3691cc6aed6e:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    3691cc6aed75:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    3691cc6aed7c:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    3691cc6aed84:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    3691cc6aed8c:	41 8b b4 38 ec 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xec]
    3691cc6aed94:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    3691cc6aed9c:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    3691cc6aeda5:	0f 84 04 04 00 00                               	je     0x3691cc6af1af
    3691cc6aedab:	49 8d b0 98 00 00 00                            	lea    rsi,[r8+0x98]
    3691cc6aedb2:	c4 a2 79 18 1c 1e                               	vbroadcastss xmm3,DWORD PTR [rsi+r11*1]
    3691cc6aedb8:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    3691cc6aedbc:	c4 a2 79 18 1c 26                               	vbroadcastss xmm3,DWORD PTR [rsi+r12*1]
    3691cc6aedc2:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    3691cc6aedc6:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    3691cc6aedca:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    3691cc6aedd0:	c5 20 59 db                                     	vmulps xmm11,xmm11,xmm3
    3691cc6aedd4:	c4 41 68 58 db                                  	vaddps xmm11,xmm2,xmm11
    3691cc6aedd9:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    3691cc6aedde:	c5 28 5c de                                     	vsubps xmm11,xmm10,xmm6
    3691cc6aede2:	c5 a0 c2 d6 01                                  	vcmpltps xmm2,xmm11,xmm6
    3691cc6aede7:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    3691cc6aedec:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    3691cc6aedf0:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc6aedf5:	4c 8b 15 d5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed5]        # 0x3691cc6a8cd1
    3691cc6aedfc:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    3691cc6aee01:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    3691cc6aee06:	41 8b b4 38 f0 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xf0]
    3691cc6aee0e:	81 fe 00 08 00 00                               	cmp    esi,0x800
    3691cc6aee14:	0f 84 8d 01 00 00                               	je     0x3691cc6aefa7
    3691cc6aee1a:	81 fe 01 26 00 00                               	cmp    esi,0x2601
    3691cc6aee20:	0f 84 23 01 00 00                               	je     0x3691cc6aef49
    3691cc6aee26:	c4 c1 7a 10 94 38 f4 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xf4]
    3691cc6aee30:	c5 f8 28 de                                     	vmovaps xmm3,xmm6
    3691cc6aee34:	c5 ea 59 db                                     	vmulss xmm3,xmm2,xmm3
    3691cc6aee38:	4c 8b 15 70 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c70]        # 0x3691cc6a7aaf
    3691cc6aee3f:	c4 c1 60 57 2a                                  	vxorps xmm5,xmm3,XMMWORD PTR [r10]
    3691cc6aee44:	c5 e2 59 dd                                     	vmulss xmm3,xmm3,xmm5
    3691cc6aee48:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    3691cc6aee50:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    3691cc6aee58:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    3691cc6aee60:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    3691cc6aee68:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    3691cc6aee70:	c5 fb 11 95 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm2
    3691cc6aee78:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aee7c:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    3691cc6aee80:	e8 3b 47 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6aee85:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc6aee8a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    3691cc6aee92:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    3691cc6aee96:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    3691cc6aee9e:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    3691cc6aeea2:	4c 8b 15 06 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c06]        # 0x3691cc6a7aaf
    3691cc6aeea9:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    3691cc6aeeae:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    3691cc6aeeb3:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    3691cc6aeebb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aeebf:	e8 fc 46 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6aeec4:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    3691cc6aeecc:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    3691cc6aeed2:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    3691cc6aeeda:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    3691cc6aeedf:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    3691cc6aeee7:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    3691cc6aeeeb:	4c 8b 15 bd 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8bbd]        # 0x3691cc6a7aaf
    3691cc6aeef2:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    3691cc6aeef7:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    3691cc6aeefc:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    3691cc6aef04:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aef08:	e8 b3 46 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6aef0d:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    3691cc6aef15:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    3691cc6aef1b:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    3691cc6aef23:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    3691cc6aef28:	c5 fb 10 bd b0 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x150]
    3691cc6aef30:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    3691cc6aef34:	4c 8b 15 74 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b74]        # 0x3691cc6a7aaf
    3691cc6aef3b:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    3691cc6aef40:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    3691cc6aef44:	e9 3a 01 00 00                                  	jmp    0x3691cc6af083
    3691cc6aef49:	c4 c1 7a 10 94 38 fc 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xfc]
    3691cc6aef53:	c4 c1 6a 5c 9c 38 f8 00 00 00                   	vsubss xmm3,xmm2,DWORD PTR [r8+rdi*1+0xf8]
    3691cc6aef5d:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    3691cc6aef61:	c5 f8 2e eb                                     	vucomiss xmm5,xmm3
    3691cc6aef65:	7a 06                                           	jp     0x3691cc6aef6d
    3691cc6aef67:	0f 84 2d 00 00 00                               	je     0x3691cc6aef9a
    3691cc6aef6d:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    3691cc6aef72:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    3691cc6aef76:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    3691cc6aef7a:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    3691cc6aef7f:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    3691cc6aef84:	c5 ea 5e db                                     	vdivss xmm3,xmm2,xmm3
    3691cc6aef88:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    3691cc6aef8c:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    3691cc6aef91:	c5 c8 59 f3                                     	vmulps xmm6,xmm6,xmm3
    3691cc6aef95:	e9 9f 01 00 00                                  	jmp    0x3691cc6af139
    3691cc6aef9a:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    3691cc6aefa2:	e9 92 01 00 00                                  	jmp    0x3691cc6af139
    3691cc6aefa7:	c5 f8 28 d6                                     	vmovaps xmm2,xmm6
    3691cc6aefab:	c4 c1 7a 10 9c 38 f4 00 00 00                   	vmovss xmm3,DWORD PTR [r8+rdi*1+0xf4]
    3691cc6aefb5:	4c 8b 15 f3 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8af3]        # 0x3691cc6a7aaf
    3691cc6aefbc:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    3691cc6aefc1:	c5 ea 59 d3                                     	vmulss xmm2,xmm2,xmm3
    3691cc6aefc5:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    3691cc6aefcd:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    3691cc6aefd5:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    3691cc6aefdd:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    3691cc6aefe5:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    3691cc6aefed:	c5 fb 11 9d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm3
    3691cc6aeff5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aeff9:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    3691cc6aeffd:	e8 be 45 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6af002:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    3691cc6af007:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    3691cc6af00f:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    3691cc6af013:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    3691cc6af01b:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    3691cc6af023:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6af027:	e8 94 45 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6af02c:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    3691cc6af034:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    3691cc6af03a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    3691cc6af042:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    3691cc6af047:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    3691cc6af04f:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    3691cc6af057:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6af05b:	e8 60 45 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6af060:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    3691cc6af068:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    3691cc6af06e:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    3691cc6af076:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    3691cc6af07b:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    3691cc6af083:	c5 f8 11 85 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm0
    3691cc6af08b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6af08f:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6af093:	e8 28 45 f1 ff                                  	call   0x3691cc5c35c0
    3691cc6af098:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    3691cc6af0a0:	c4 e3 49 21 f1 30                               	vinsertps xmm6,xmm6,xmm1,0x30
    3691cc6af0a6:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6af0ae:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    3691cc6af0b2:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    3691cc6af0ba:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6af0be:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    3691cc6af0c6:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    3691cc6af0cc:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    3691cc6af0d2:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    3691cc6af0da:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    3691cc6af0e2:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    3691cc6af0ea:	c5 78 10 9d 70 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x190]
    3691cc6af0f2:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    3691cc6af0f6:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    3691cc6af0fd:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    3691cc6af104:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    3691cc6af10b:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    3691cc6af112:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    3691cc6af11a:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    3691cc6af122:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    3691cc6af129:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    3691cc6af131:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6af139:	c5 f8 10 95 80 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x180]
    3691cc6af141:	c5 e8 c2 de 01                                  	vcmpltps xmm3,xmm2,xmm6
    3691cc6af146:	c5 61 df fe                                     	vpandn xmm15,xmm3,xmm6
    3691cc6af14a:	c5 a1 db f3                                     	vpand  xmm6,xmm11,xmm3
    3691cc6af14e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    3691cc6af153:	c4 41 48 c2 da 01                               	vcmpltps xmm11,xmm6,xmm10
    3691cc6af159:	c5 a0 55 f6                                     	vandnps xmm6,xmm11,xmm6
    3691cc6af15d:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    3691cc6af161:	49 8d b0 08 01 00 00                            	lea    rsi,[r8+0x108]
    3691cc6af168:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    3691cc6af16e:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    3691cc6af172:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    3691cc6af176:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6af17b:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    3691cc6af17f:	49 8d b0 04 01 00 00                            	lea    rsi,[r8+0x104]
    3691cc6af186:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    3691cc6af18c:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    3691cc6af190:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    3691cc6af195:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    3691cc6af199:	49 8d b0 00 01 00 00                            	lea    rsi,[r8+0x100]
    3691cc6af1a0:	c4 62 79 18 04 3e                               	vbroadcastss xmm8,DWORD PTR [rsi+rdi*1]
    3691cc6af1a6:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    3691cc6af1aa:	c4 41 48 58 c0                                  	vaddps xmm8,xmm6,xmm8
    3691cc6af1af:	41 8b b4 38 80 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x80]
    3691cc6af1b7:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    3691cc6af1c0:	0f 85 0d 00 00 00                               	jne    0x3691cc6af1d3
    3691cc6af1c6:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    3691cc6af1ce:	e9 83 00 00 00                                  	jmp    0x3691cc6af256
    3691cc6af1d3:	49 8d b0 88 00 00 00                            	lea    rsi,[r8+0x88]
    3691cc6af1da:	c4 e2 79 18 34 3e                               	vbroadcastss xmm6,DWORD PTR [rsi+rdi*1]
    3691cc6af1e0:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6af1e5:	41 8b b4 38 84 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x84]
    3691cc6af1ed:	81 ee 00 02 00 00                               	sub    esi,0x200
    3691cc6af1f3:	83 fe 07                                        	cmp    esi,0x7
    3691cc6af1f6:	0f 83 0b 00 00 00                               	jae    0x3691cc6af207
    3691cc6af1fc:	4c 8d 15 f5 11 00 00                            	lea    r10,[rip+0x11f5]        # 0x3691cc6b03f8
    3691cc6af203:	41 ff 24 f2                                     	jmp    QWORD PTR [r10+rsi*8]
    3691cc6af207:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    3691cc6af20c:	e9 39 00 00 00                                  	jmp    0x3691cc6af24a
    3691cc6af211:	c4 41 48 c2 dc 02                               	vcmpleps xmm11,xmm6,xmm12
    3691cc6af217:	e9 2e 00 00 00                                  	jmp    0x3691cc6af24a
    3691cc6af21c:	c5 18 c2 de 04                                  	vcmpneqps xmm11,xmm12,xmm6
    3691cc6af221:	e9 24 00 00 00                                  	jmp    0x3691cc6af24a
    3691cc6af226:	c4 41 48 c2 dc 01                               	vcmpltps xmm11,xmm6,xmm12
    3691cc6af22c:	e9 19 00 00 00                                  	jmp    0x3691cc6af24a
    3691cc6af231:	c5 18 c2 de 02                                  	vcmpleps xmm11,xmm12,xmm6
    3691cc6af236:	e9 0f 00 00 00                                  	jmp    0x3691cc6af24a
    3691cc6af23b:	c5 18 c2 de 00                                  	vcmpeqps xmm11,xmm12,xmm6
    3691cc6af240:	e9 05 00 00 00                                  	jmp    0x3691cc6af24a
    3691cc6af245:	c5 18 c2 de 01                                  	vcmpltps xmm11,xmm12,xmm6
    3691cc6af24a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    3691cc6af252:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    3691cc6af256:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    3691cc6af25a:	85 f6                                           	test   esi,esi
    3691cc6af25c:	0f 84 8d f2 ff ff                               	je     0x3691cc6ae4ef
    3691cc6af262:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    3691cc6af267:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    3691cc6af26d:	0f 85 15 00 00 00                               	jne    0x3691cc6af288
    3691cc6af273:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    3691cc6af279:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    3691cc6af27f:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6af283:	e9 1f 01 00 00                                  	jmp    0x3691cc6af3a7
    3691cc6af288:	41 8b 74 38 48                                  	mov    esi,DWORD PTR [r8+rdi*1+0x48]
    3691cc6af28d:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    3691cc6af294:	45 33 db                                        	xor    r11d,r11d
    3691cc6af297:	44 3b ce                                        	cmp    r9d,esi
    3691cc6af29a:	41 0f 9c c3                                     	setl   r11b
    3691cc6af29e:	45 8b 64 38 50                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x50]
    3691cc6af2a3:	44 03 e6                                        	add    r12d,esi
    3691cc6af2a6:	45 33 ff                                        	xor    r15d,r15d
    3691cc6af2a9:	45 3b e1                                        	cmp    r12d,r9d
    3691cc6af2ac:	41 0f 9e c7                                     	setle  r15b
    3691cc6af2b0:	45 0b fb                                        	or     r15d,r11d
    3691cc6af2b3:	45 8b 5c 38 4c                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x4c]
    3691cc6af2b8:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6af2bc:	33 db                                           	xor    ebx,ebx
    3691cc6af2be:	45 3b cb                                        	cmp    r9d,r11d
    3691cc6af2c1:	0f 9c c3                                        	setl   bl
    3691cc6af2c4:	41 8b cf                                        	mov    ecx,r15d
    3691cc6af2c7:	0b cb                                           	or     ecx,ebx
    3691cc6af2c9:	83 f1 ff                                        	xor    ecx,0xffffffff
    3691cc6af2cc:	41 8b 54 38 54                                  	mov    edx,DWORD PTR [r8+rdi*1+0x54]
    3691cc6af2d1:	41 03 d3                                        	add    edx,r11d
    3691cc6af2d4:	33 ff                                           	xor    edi,edi
    3691cc6af2d6:	44 3b ca                                        	cmp    r9d,edx
    3691cc6af2d9:	40 0f 9c c7                                     	setl   dil
    3691cc6af2dd:	23 cf                                           	and    ecx,edi
    3691cc6af2df:	f7 d9                                           	neg    ecx
    3691cc6af2e1:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    3691cc6af2e5:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    3691cc6af2ea:	44 3b a5 30 ff ff ff                            	cmp    r12d,DWORD PTR [rbp-0xd0]
    3691cc6af2f1:	41 0f 9e c4                                     	setle  r12b
    3691cc6af2f5:	45 0f b6 e4                                     	movzx  r12d,r12b
    3691cc6af2f9:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    3691cc6af2ff:	3b ce                                           	cmp    ecx,esi
    3691cc6af301:	40 0f 9c c6                                     	setl   sil
    3691cc6af305:	40 0f b6 f6                                     	movzx  esi,sil
    3691cc6af309:	41 0b f4                                        	or     esi,r12d
    3691cc6af30c:	0b de                                           	or     ebx,esi
    3691cc6af30e:	83 f3 ff                                        	xor    ebx,0xffffffff
    3691cc6af311:	23 fb                                           	and    edi,ebx
    3691cc6af313:	f7 df                                           	neg    edi
    3691cc6af315:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    3691cc6af31b:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    3691cc6af321:	45 33 e4                                        	xor    r12d,r12d
    3691cc6af324:	3b fa                                           	cmp    edi,edx
    3691cc6af326:	41 0f 9c c4                                     	setl   r12b
    3691cc6af32a:	41 3b fb                                        	cmp    edi,r11d
    3691cc6af32d:	41 0f 9c c3                                     	setl   r11b
    3691cc6af331:	45 0f b6 db                                     	movzx  r11d,r11b
    3691cc6af335:	45 0b fb                                        	or     r15d,r11d
    3691cc6af338:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    3691cc6af33c:	45 23 fc                                        	and    r15d,r12d
    3691cc6af33f:	41 f7 df                                        	neg    r15d
    3691cc6af342:	c4 43 21 22 df 02                               	vpinsrd xmm11,xmm11,r15d,0x2
    3691cc6af348:	41 0b f3                                        	or     esi,r11d
    3691cc6af34b:	83 f6 ff                                        	xor    esi,0xffffffff
    3691cc6af34e:	44 23 e6                                        	and    r12d,esi
    3691cc6af351:	41 f7 dc                                        	neg    r12d
    3691cc6af354:	c4 43 21 22 dc 03                               	vpinsrd xmm11,xmm11,r12d,0x3
    3691cc6af35a:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    3691cc6af35e:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    3691cc6af362:	85 f6                                           	test   esi,esi
    3691cc6af364:	0f 85 3d 00 00 00                               	jne    0x3691cc6af3a7
    3691cc6af36a:	4d 8b e0                                        	mov    r12,r8
    3691cc6af36d:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6af371:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6af376:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6af37b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6af381:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6af387:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6af38c:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6af394:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6af39c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6af3a2:	e9 c3 0a 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6af3a7:	85 c0                                           	test   eax,eax
    3691cc6af3a9:	0f 85 16 00 00 00                               	jne    0x3691cc6af3c5
    3691cc6af3af:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    3691cc6af3b6:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6af3ba:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    3691cc6af3c0:	e9 fe 01 00 00                                  	jmp    0x3691cc6af5c3
    3691cc6af3c5:	83 bd 20 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xe0],0x0
    3691cc6af3cc:	0f 85 42 01 00 00                               	jne    0x3691cc6af514
    3691cc6af3d2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6af3d7:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6af3db:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    3691cc6af3e0:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    3691cc6af3e7:	43 8d 04 bc                                     	lea    eax,[r12+r15*4]
    3691cc6af3eb:	c4 c1 7b 10 14 00                               	vmovsd xmm2,QWORD PTR [r8+rax*1]
    3691cc6af3f1:	3b bd 00 ff ff ff                               	cmp    edi,DWORD PTR [rbp-0x100]
    3691cc6af3f7:	0f 8c 10 00 00 00                               	jl     0x3691cc6af40d
    3691cc6af3fd:	c4 c1 79 28 db                                  	vmovapd xmm3,xmm11
    3691cc6af402:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    3691cc6af408:	e9 10 00 00 00                                  	jmp    0x3691cc6af41d
    3691cc6af40d:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    3691cc6af413:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    3691cc6af417:	c4 81 7b 10 1c 20                               	vmovsd xmm3,QWORD PTR [r8+r12*1]
    3691cc6af41d:	c5 e9 6c d3                                     	vpunpcklqdq xmm2,xmm2,xmm3
    3691cc6af421:	47 8b 64 18 6c                                  	mov    r12d,DWORD PTR [r8+r11*1+0x6c]
    3691cc6af426:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    3691cc6af42d:	41 83 fc 07                                     	cmp    r12d,0x7
    3691cc6af431:	0f 83 0b 00 00 00                               	jae    0x3691cc6af442
    3691cc6af437:	4c 8d 15 82 0f 00 00                            	lea    r10,[rip+0xf82]        # 0x3691cc6b03c0
    3691cc6af43e:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    3691cc6af442:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    3691cc6af447:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    3691cc6af44f:	e9 74 00 00 00                                  	jmp    0x3691cc6af4c8
    3691cc6af454:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    3691cc6af45c:	c5 68 c2 db 02                                  	vcmpleps xmm11,xmm2,xmm3
    3691cc6af461:	e9 62 00 00 00                                  	jmp    0x3691cc6af4c8
    3691cc6af466:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    3691cc6af46e:	c5 60 c2 da 04                                  	vcmpneqps xmm11,xmm3,xmm2
    3691cc6af473:	e9 50 00 00 00                                  	jmp    0x3691cc6af4c8
    3691cc6af478:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    3691cc6af480:	c5 68 c2 db 01                                  	vcmpltps xmm11,xmm2,xmm3
    3691cc6af485:	e9 3e 00 00 00                                  	jmp    0x3691cc6af4c8
    3691cc6af48a:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    3691cc6af492:	c5 60 c2 da 02                                  	vcmpleps xmm11,xmm3,xmm2
    3691cc6af497:	e9 2c 00 00 00                                  	jmp    0x3691cc6af4c8
    3691cc6af49c:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    3691cc6af4a4:	c5 60 c2 da 00                                  	vcmpeqps xmm11,xmm3,xmm2
    3691cc6af4a9:	e9 1a 00 00 00                                  	jmp    0x3691cc6af4c8
    3691cc6af4ae:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    3691cc6af4b6:	c5 60 c2 da 01                                  	vcmpltps xmm11,xmm3,xmm2
    3691cc6af4bb:	e9 08 00 00 00                                  	jmp    0x3691cc6af4c8
    3691cc6af4c0:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    3691cc6af4c8:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    3691cc6af4cc:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    3691cc6af4d0:	85 f6                                           	test   esi,esi
    3691cc6af4d2:	0f 85 4d 00 00 00                               	jne    0x3691cc6af525
    3691cc6af4d8:	4d 8b e0                                        	mov    r12,r8
    3691cc6af4db:	4d 8b c3                                        	mov    r8,r11
    3691cc6af4de:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6af4e3:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6af4e8:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6af4ee:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6af4f4:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6af4f9:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6af501:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6af509:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6af50f:	e9 56 09 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6af514:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    3691cc6af51b:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6af51f:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    3691cc6af525:	47 8b 64 18 70                                  	mov    r12d,DWORD PTR [r8+r11*1+0x70]
    3691cc6af52a:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    3691cc6af530:	0f 84 8d 00 00 00                               	je     0x3691cc6af5c3
    3691cc6af536:	40 f6 c6 01                                     	test   sil,0x1
    3691cc6af53a:	0f 85 0d 00 00 00                               	jne    0x3691cc6af54d
    3691cc6af540:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    3691cc6af548:	e9 1b 00 00 00                                  	jmp    0x3691cc6af568
    3691cc6af54d:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    3691cc6af552:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    3691cc6af556:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    3691cc6af55e:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    3691cc6af562:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    3691cc6af568:	40 f6 c6 02                                     	test   sil,0x2
    3691cc6af56c:	0f 84 14 00 00 00                               	je     0x3691cc6af586
    3691cc6af572:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    3691cc6af577:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    3691cc6af57b:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    3691cc6af57f:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    3691cc6af586:	40 f6 c6 04                                     	test   sil,0x4
    3691cc6af58a:	0f 84 14 00 00 00                               	je     0x3691cc6af5a4
    3691cc6af590:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    3691cc6af595:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    3691cc6af599:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    3691cc6af59e:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    3691cc6af5a4:	40 f6 c6 08                                     	test   sil,0x8
    3691cc6af5a8:	0f 84 15 00 00 00                               	je     0x3691cc6af5c3
    3691cc6af5ae:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    3691cc6af5b3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    3691cc6af5b7:	c5 79 70 de 03                                  	vpshufd xmm11,xmm6,0x3
    3691cc6af5bc:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    3691cc6af5c3:	47 8b 64 18 74                                  	mov    r12d,DWORD PTR [r8+r11*1+0x74]
    3691cc6af5c8:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    3691cc6af5ce:	0f 85 0d 00 00 00                               	jne    0x3691cc6af5e1
    3691cc6af5d4:	46 8d 24 bd 00 00 00 00                         	lea    r12d,[r15*4+0x0]
    3691cc6af5dc:	e9 d6 02 00 00                                  	jmp    0x3691cc6af8b7
    3691cc6af5e1:	47 8b 64 18 78                                  	mov    r12d,DWORD PTR [r8+r11*1+0x78]
    3691cc6af5e6:	41 8d 9c 24 fe fc ff ff                         	lea    ebx,[r12-0x302]
    3691cc6af5ee:	33 d2                                           	xor    edx,edx
    3691cc6af5f0:	83 fb 04                                        	cmp    ebx,0x4
    3691cc6af5f3:	0f 93 c2                                        	setae  dl
    3691cc6af5f6:	33 c9                                           	xor    ecx,ecx
    3691cc6af5f8:	41 83 fc 01                                     	cmp    r12d,0x1
    3691cc6af5fc:	0f 97 c1                                        	seta   cl
    3691cc6af5ff:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    3691cc6af606:	85 ca                                           	test   edx,ecx
    3691cc6af608:	0f 85 b9 05 00 00                               	jne    0x3691cc6afbc7
    3691cc6af60e:	43 8b 54 18 7c                                  	mov    edx,DWORD PTR [r8+r11*1+0x7c]
    3691cc6af613:	8d 8a fe fc ff ff                               	lea    ecx,[rdx-0x302]
    3691cc6af619:	45 33 c9                                        	xor    r9d,r9d
    3691cc6af61c:	83 f9 04                                        	cmp    ecx,0x4
    3691cc6af61f:	41 0f 93 c1                                     	setae  r9b
    3691cc6af623:	33 f6                                           	xor    esi,esi
    3691cc6af625:	83 fa 01                                        	cmp    edx,0x1
    3691cc6af628:	40 0f 97 c6                                     	seta   sil
    3691cc6af62c:	41 85 f1                                        	test   r9d,esi
    3691cc6af62f:	0f 85 88 05 00 00                               	jne    0x3691cc6afbbd
    3691cc6af635:	42 8d 34 bd 00 00 00 00                         	lea    esi,[r15*4+0x0]
    3691cc6af63d:	47 8b 4c 18 08                                  	mov    r9d,DWORD PTR [r8+r11*1+0x8]
    3691cc6af642:	47 8d 3c b9                                     	lea    r15d,[r9+r15*4]
    3691cc6af646:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    3691cc6af64c:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    3691cc6af653:	44 3b ff                                        	cmp    r15d,edi
    3691cc6af656:	0f 8e 0f 00 00 00                               	jle    0x3691cc6af66b
    3691cc6af65c:	45 8d 0c 81                                     	lea    r9d,[r9+rax*4]
    3691cc6af660:	c4 01 7b 10 1c 08                               	vmovsd xmm11,QWORD PTR [r8+r9*1]
    3691cc6af666:	e9 05 00 00 00                                  	jmp    0x3691cc6af670
    3691cc6af66b:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6af670:	c4 c1 49 6c f3                                  	vpunpcklqdq xmm6,xmm6,xmm11
    3691cc6af675:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    3691cc6af67f:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    3691cc6af684:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    3691cc6af68e:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    3691cc6af694:	c4 42 49 00 db                                  	vpshufb xmm11,xmm6,xmm11
    3691cc6af699:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    3691cc6af69e:	4c 8b 15 cd ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcacd]        # 0x3691cc6ac172
    3691cc6af6a5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc6af6aa:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc6af6ae:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    3691cc6af6b2:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    3691cc6af6bc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    3691cc6af6c1:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    3691cc6af6cb:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    3691cc6af6d1:	c4 e2 49 00 db                                  	vpshufb xmm3,xmm6,xmm3
    3691cc6af6d6:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    3691cc6af6da:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    3691cc6af6e4:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    3691cc6af6e9:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    3691cc6af6f3:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    3691cc6af6f9:	c4 e2 49 00 ed                                  	vpshufb xmm5,xmm6,xmm5
    3691cc6af6fe:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    3691cc6af702:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    3691cc6af70c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6af711:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    3691cc6af71b:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    3691cc6af721:	c4 c2 49 00 f1                                  	vpshufb xmm6,xmm6,xmm9
    3691cc6af726:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    3691cc6af72a:	83 fb 02                                        	cmp    ebx,0x2
    3691cc6af72d:	0f 8c 14 00 00 00                               	jl     0x3691cc6af747
    3691cc6af733:	0f 84 69 00 00 00                               	je     0x3691cc6af7a2
    3691cc6af739:	83 fb 03                                        	cmp    ebx,0x3
    3691cc6af73c:	0f 84 45 00 00 00                               	je     0x3691cc6af787
    3691cc6af742:	e9 17 00 00 00                                  	jmp    0x3691cc6af75e
    3691cc6af747:	83 fb 00                                        	cmp    ebx,0x0
    3691cc6af74a:	0f 84 77 00 00 00                               	je     0x3691cc6af7c7
    3691cc6af750:	83 fb 01                                        	cmp    ebx,0x1
    3691cc6af753:	0f 84 53 00 00 00                               	je     0x3691cc6af7ac
    3691cc6af759:	e9 00 00 00 00                                  	jmp    0x3691cc6af75e
    3691cc6af75e:	45 85 e4                                        	test   r12d,r12d
    3691cc6af761:	0f 85 0a 00 00 00                               	jne    0x3691cc6af771
    3691cc6af767:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    3691cc6af76c:	e9 5b 00 00 00                                  	jmp    0x3691cc6af7cc
    3691cc6af771:	4c 8b 15 59 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9559]        # 0x3691cc6a8cd1
    3691cc6af778:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6af77d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6af782:	e9 45 00 00 00                                  	jmp    0x3691cc6af7cc
    3691cc6af787:	4c 8b 15 43 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9543]        # 0x3691cc6a8cd1
    3691cc6af78e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6af793:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6af798:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    3691cc6af79d:	e9 2a 00 00 00                                  	jmp    0x3691cc6af7cc
    3691cc6af7a2:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    3691cc6af7a7:	e9 20 00 00 00                                  	jmp    0x3691cc6af7cc
    3691cc6af7ac:	4c 8b 15 1e 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff951e]        # 0x3691cc6a8cd1
    3691cc6af7b3:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6af7b8:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6af7bd:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    3691cc6af7c2:	e9 05 00 00 00                                  	jmp    0x3691cc6af7cc
    3691cc6af7c7:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    3691cc6af7cc:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    3691cc6af7d0:	c5 d0 59 ea                                     	vmulps xmm5,xmm5,xmm2
    3691cc6af7d4:	c5 c8 59 f2                                     	vmulps xmm6,xmm6,xmm2
    3691cc6af7d8:	83 f9 02                                        	cmp    ecx,0x2
    3691cc6af7db:	0f 8c 14 00 00 00                               	jl     0x3691cc6af7f5
    3691cc6af7e1:	0f 84 5e 00 00 00                               	je     0x3691cc6af845
    3691cc6af7e7:	83 f9 03                                        	cmp    ecx,0x3
    3691cc6af7ea:	0f 84 3a 00 00 00                               	je     0x3691cc6af82a
    3691cc6af7f0:	e9 17 00 00 00                                  	jmp    0x3691cc6af80c
    3691cc6af7f5:	83 f9 00                                        	cmp    ecx,0x0
    3691cc6af7f8:	0f 84 6c 00 00 00                               	je     0x3691cc6af86a
    3691cc6af7fe:	83 f9 01                                        	cmp    ecx,0x1
    3691cc6af801:	0f 84 48 00 00 00                               	je     0x3691cc6af84f
    3691cc6af807:	e9 00 00 00 00                                  	jmp    0x3691cc6af80c
    3691cc6af80c:	85 d2                                           	test   edx,edx
    3691cc6af80e:	0f 84 5b 00 00 00                               	je     0x3691cc6af86f
    3691cc6af814:	4c 8b 15 b6 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94b6]        # 0x3691cc6a8cd1
    3691cc6af81b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6af820:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6af825:	e9 45 00 00 00                                  	jmp    0x3691cc6af86f
    3691cc6af82a:	4c 8b 15 a0 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94a0]        # 0x3691cc6a8cd1
    3691cc6af831:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6af836:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6af83b:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    3691cc6af840:	e9 2a 00 00 00                                  	jmp    0x3691cc6af86f
    3691cc6af845:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    3691cc6af84a:	e9 20 00 00 00                                  	jmp    0x3691cc6af86f
    3691cc6af84f:	4c 8b 15 7b 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947b]        # 0x3691cc6a8cd1
    3691cc6af856:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6af85b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6af860:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    3691cc6af865:	e9 05 00 00 00                                  	jmp    0x3691cc6af86f
    3691cc6af86a:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    3691cc6af86f:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    3691cc6af874:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    3691cc6af879:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    3691cc6af87e:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    3691cc6af883:	c4 41 60 59 da                                  	vmulps xmm11,xmm3,xmm10
    3691cc6af888:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    3691cc6af88d:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    3691cc6af892:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    3691cc6af897:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    3691cc6af89c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    3691cc6af8a1:	c4 c1 48 59 f2                                  	vmulps xmm6,xmm6,xmm10
    3691cc6af8a6:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    3691cc6af8aa:	44 8b e6                                        	mov    r12d,esi
    3691cc6af8ad:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    3691cc6af8b3:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6af8b7:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    3691cc6af8bb:	4c 8b 15 0f 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff940f]        # 0x3691cc6a8cd1
    3691cc6af8c2:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    3691cc6af8c7:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    3691cc6af8cc:	4c 8b 15 fe 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff93fe]        # 0x3691cc6a8cd1
    3691cc6af8d3:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    3691cc6af8d8:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    3691cc6af8dd:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    3691cc6af8e3:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    3691cc6af8e8:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    3691cc6af8ed:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    3691cc6af8f2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    3691cc6af8f7:	c4 c1 38 c2 d3 01                               	vcmpltps xmm2,xmm8,xmm11
    3691cc6af8fd:	c4 41 68 55 c0                                  	vandnps xmm8,xmm2,xmm8
    3691cc6af902:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    3691cc6af90c:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    3691cc6af911:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    3691cc6af915:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    3691cc6af919:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    3691cc6af91f:	4c 8b 15 f8 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7df8]        # 0x3691cc6a771e
    3691cc6af926:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc6af92c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    3691cc6af931:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc6af937:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    3691cc6af93c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    3691cc6af941:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    3691cc6af946:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    3691cc6af94b:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    3691cc6af951:	c5 a8 c2 df 01                                  	vcmpltps xmm3,xmm10,xmm7
    3691cc6af956:	c5 61 df ff                                     	vpandn xmm15,xmm3,xmm7
    3691cc6af95a:	c5 b1 db fb                                     	vpand  xmm7,xmm9,xmm3
    3691cc6af95e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    3691cc6af963:	c4 c1 40 c2 db 01                               	vcmpltps xmm3,xmm7,xmm11
    3691cc6af969:	c5 e0 55 ff                                     	vandnps xmm7,xmm3,xmm7
    3691cc6af96d:	c5 c0 59 fa                                     	vmulps xmm7,xmm7,xmm2
    3691cc6af971:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    3691cc6af977:	4c 8b 15 a0 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7da0]        # 0x3691cc6a771e
    3691cc6af97e:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    3691cc6af983:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    3691cc6af988:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    3691cc6af98e:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    3691cc6af992:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    3691cc6af997:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    3691cc6af99b:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    3691cc6af99f:	c4 e3 41 0e fe fc                               	vpblendw xmm7,xmm7,xmm6,0xfc
    3691cc6af9a5:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    3691cc6af9a9:	c5 28 c2 c0 01                                  	vcmpltps xmm8,xmm10,xmm0
    3691cc6af9ae:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    3691cc6af9b2:	c4 c1 31 db c0                                  	vpand  xmm0,xmm9,xmm8
    3691cc6af9b7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6af9bc:	c4 41 78 c2 c3 01                               	vcmpltps xmm8,xmm0,xmm11
    3691cc6af9c2:	c5 b8 55 c0                                     	vandnps xmm0,xmm8,xmm0
    3691cc6af9c6:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    3691cc6af9ca:	c4 e3 79 08 c0 08                               	vroundps xmm0,xmm0,0x8
    3691cc6af9d0:	4c 8b 15 47 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7d47]        # 0x3691cc6a771e
    3691cc6af9d7:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    3691cc6af9dc:	c4 c1 78 54 c7                                  	vandps xmm0,xmm0,xmm15
    3691cc6af9e1:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    3691cc6af9e7:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    3691cc6af9eb:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    3691cc6af9f0:	c5 f9 6b c0                                     	vpackssdw xmm0,xmm0,xmm0
    3691cc6af9f4:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    3691cc6af9f8:	c4 e3 79 0e c6 fc                               	vpblendw xmm0,xmm0,xmm6,0xfc
    3691cc6af9fe:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    3691cc6afa04:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    3691cc6afa09:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    3691cc6afa0e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    3691cc6afa13:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    3691cc6afa19:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    3691cc6afa1e:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    3691cc6afa22:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    3691cc6afa28:	4c 8b 15 ef 7c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7cef]        # 0x3691cc6a771e
    3691cc6afa2f:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    3691cc6afa35:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    3691cc6afa3a:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    3691cc6afa40:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    3691cc6afa45:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    3691cc6afa4a:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    3691cc6afa4f:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    3691cc6afa54:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    3691cc6afa5a:	c4 c1 79 60 c0                                  	vpunpcklbw xmm0,xmm0,xmm8
    3691cc6afa5f:	c5 c1 61 c0                                     	vpunpcklwd xmm0,xmm7,xmm0
    3691cc6afa63:	c4 81 7a 6f bc 18 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x520]
    3691cc6afa6d:	c5 c1 76 fe                                     	vpcmpeqd xmm7,xmm7,xmm6
    3691cc6afa71:	c4 c3 79 16 ff 01                               	vpextrd r15d,xmm7,0x1
    3691cc6afa77:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    3691cc6afa7c:	33 d2                                           	xor    edx,edx
    3691cc6afa7e:	41 f6 c7 01                                     	test   r15b,0x1
    3691cc6afa82:	0f 45 da                                        	cmovne ebx,edx
    3691cc6afa85:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    3691cc6afa8a:	b9 ff 00 00 00                                  	mov    ecx,0xff
    3691cc6afa8f:	41 f6 c7 01                                     	test   r15b,0x1
    3691cc6afa93:	0f 45 ca                                        	cmovne ecx,edx
    3691cc6afa96:	0b cb                                           	or     ecx,ebx
    3691cc6afa98:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    3691cc6afa9e:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    3691cc6afaa3:	41 f6 c7 01                                     	test   r15b,0x1
    3691cc6afaa7:	0f 45 da                                        	cmovne ebx,edx
    3691cc6afaaa:	0b d9                                           	or     ebx,ecx
    3691cc6afaac:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    3691cc6afab2:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    3691cc6afab7:	41 f6 c7 01                                     	test   r15b,0x1
    3691cc6afabb:	0f 45 ca                                        	cmovne ecx,edx
    3691cc6afabe:	0b cb                                           	or     ecx,ebx
    3691cc6afac0:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    3691cc6afac4:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    3691cc6afac9:	44 8b fe                                        	mov    r15d,esi
    3691cc6afacc:	41 83 e7 01                                     	and    r15d,0x1
    3691cc6afad0:	41 f7 df                                        	neg    r15d
    3691cc6afad3:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    3691cc6afad8:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    3691cc6afadd:	44 8b fe                                        	mov    r15d,esi
    3691cc6afae0:	41 c1 e7 1e                                     	shl    r15d,0x1e
    3691cc6afae4:	41 c1 ff 1f                                     	sar    r15d,0x1f
    3691cc6afae8:	c4 43 39 22 c7 01                               	vpinsrd xmm8,xmm8,r15d,0x1
    3691cc6afaee:	44 8b fe                                        	mov    r15d,esi
    3691cc6afaf1:	41 c1 e7 1d                                     	shl    r15d,0x1d
    3691cc6afaf5:	41 c1 ff 1f                                     	sar    r15d,0x1f
    3691cc6afaf9:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    3691cc6afaff:	44 8b fe                                        	mov    r15d,esi
    3691cc6afb02:	41 c1 e7 1c                                     	shl    r15d,0x1c
    3691cc6afb06:	41 c1 ff 1f                                     	sar    r15d,0x1f
    3691cc6afb0a:	c4 43 39 22 c7 03                               	vpinsrd xmm8,xmm8,r15d,0x3
    3691cc6afb10:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    3691cc6afb15:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    3691cc6afb1a:	45 03 e7                                        	add    r12d,r15d
    3691cc6afb1d:	c4 01 7b 10 04 20                               	vmovsd xmm8,QWORD PTR [r8+r12*1]
    3691cc6afb23:	8b 9d 00 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x100]
    3691cc6afb29:	3b df                                           	cmp    ebx,edi
    3691cc6afb2b:	0f 8e 0a 00 00 00                               	jle    0x3691cc6afb3b
    3691cc6afb31:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    3691cc6afb35:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    3691cc6afb3b:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    3691cc6afb3f:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    3691cc6afb43:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    3691cc6afb47:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    3691cc6afb4c:	40 f6 c6 03                                     	test   sil,0x3
    3691cc6afb50:	0f 84 06 00 00 00                               	je     0x3691cc6afb5c
    3691cc6afb56:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    3691cc6afb5c:	3b df                                           	cmp    ebx,edi
    3691cc6afb5e:	0f 8e 74 f9 ff ff                               	jle    0x3691cc6af4d8
    3691cc6afb64:	40 f6 c6 0c                                     	test   sil,0xc
    3691cc6afb68:	0f 84 6a f9 ff ff                               	je     0x3691cc6af4d8
    3691cc6afb6e:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    3691cc6afb73:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    3691cc6afb77:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    3691cc6afb7b:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    3691cc6afb81:	4d 8b e0                                        	mov    r12,r8
    3691cc6afb84:	4d 8b c3                                        	mov    r8,r11
    3691cc6afb87:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6afb8c:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6afb91:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6afb97:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6afb9d:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6afba2:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6afbaa:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6afbb2:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6afbb8:	e9 ad 02 00 00                                  	jmp    0x3691cc6afe6a
    3691cc6afbbd:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    3691cc6afbc3:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6afbc7:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    3691cc6afbcf:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    3691cc6afbd7:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    3691cc6afbdf:	40 f6 c6 01                                     	test   sil,0x1
    3691cc6afbe3:	0f 84 9d 00 00 00                               	je     0x3691cc6afc86
    3691cc6afbe9:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    3691cc6afbf1:	c5 78 28 d6                                     	vmovaps xmm10,xmm6
    3691cc6afbf5:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    3691cc6afbfa:	c5 f8 28 df                                     	vmovaps xmm3,xmm7
    3691cc6afbfe:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    3691cc6afc02:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    3691cc6afc07:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6afc0b:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6afc0e:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6afc14:	41 8b c9                                        	mov    ecx,r9d
    3691cc6afc17:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    3691cc6afc1c:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc6afc21:	e8 3a 16 f1 ff                                  	call   0x3691cc5c1260
    3691cc6afc26:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6afc2a:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6afc2e:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    3691cc6afc34:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    3691cc6afc3c:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    3691cc6afc44:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    3691cc6afc4c:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    3691cc6afc54:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    3691cc6afc5a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6afc5e:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    3691cc6afc66:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    3691cc6afc6e:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    3691cc6afc76:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6afc7e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6afc86:	40 f6 c6 02                                     	test   sil,0x2
    3691cc6afc8a:	0f 84 9d 00 00 00                               	je     0x3691cc6afd2d
    3691cc6afc90:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    3691cc6afc98:	c5 7a 16 d6                                     	vmovshdup xmm10,xmm6
    3691cc6afc9c:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    3691cc6afca1:	c5 fa 16 df                                     	vmovshdup xmm3,xmm7
    3691cc6afca5:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    3691cc6afca9:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    3691cc6afcae:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6afcb2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6afcb5:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc6afcbb:	41 8b c9                                        	mov    ecx,r9d
    3691cc6afcbe:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    3691cc6afcc3:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc6afcc8:	e8 93 15 f1 ff                                  	call   0x3691cc5c1260
    3691cc6afccd:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6afcd1:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6afcd5:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    3691cc6afcdb:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    3691cc6afce3:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    3691cc6afceb:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    3691cc6afcf3:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    3691cc6afcfb:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    3691cc6afd01:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6afd05:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    3691cc6afd0d:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    3691cc6afd15:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    3691cc6afd1d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6afd25:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6afd2d:	40 f6 c6 04                                     	test   sil,0x4
    3691cc6afd31:	0f 84 a1 00 00 00                               	je     0x3691cc6afdd8
    3691cc6afd37:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    3691cc6afd3f:	c5 79 70 d6 02                                  	vpshufd xmm10,xmm6,0x2
    3691cc6afd44:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    3691cc6afd4a:	c5 f9 70 df 02                                  	vpshufd xmm3,xmm7,0x2
    3691cc6afd4f:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    3691cc6afd54:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    3691cc6afd5a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6afd5e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6afd61:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    3691cc6afd67:	8b cf                                           	mov    ecx,edi
    3691cc6afd69:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    3691cc6afd6e:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    3691cc6afd73:	e8 e8 14 f1 ff                                  	call   0x3691cc5c1260
    3691cc6afd78:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    3691cc6afd7c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6afd80:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    3691cc6afd86:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    3691cc6afd8e:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    3691cc6afd96:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    3691cc6afd9e:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    3691cc6afda6:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    3691cc6afdac:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6afdb0:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    3691cc6afdb8:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    3691cc6afdc0:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    3691cc6afdc8:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6afdd0:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6afdd8:	40 f6 c6 08                                     	test   sil,0x8
    3691cc6afddc:	0f 84 f6 f6 ff ff                               	je     0x3691cc6af4d8
    3691cc6afde2:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    3691cc6afdea:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    3691cc6afdef:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    3691cc6afdf5:	c5 f9 70 df 03                                  	vpshufd xmm3,xmm7,0x3
    3691cc6afdfa:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    3691cc6afdff:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    3691cc6afe05:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6afe09:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6afe0c:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    3691cc6afe12:	8b cf                                           	mov    ecx,edi
    3691cc6afe14:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6afe18:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    3691cc6afe1c:	e8 3f 14 f1 ff                                  	call   0x3691cc5c1260
    3691cc6afe21:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    3691cc6afe25:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6afe2a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    3691cc6afe2e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6afe33:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6afe39:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6afe3f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6afe44:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    3691cc6afe4c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6afe54:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6afe5c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6afe64:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6afe6a:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    3691cc6afe71:	48 2b bd 38 ff ff ff                            	sub    rdi,QWORD PTR [rbp-0xc8]
    3691cc6afe78:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    3691cc6afe7f:	48 2b b5 48 ff ff ff                            	sub    rsi,QWORD PTR [rbp-0xb8]
    3691cc6afe86:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    3691cc6afe8d:	48 2b 85 58 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa8]
    3691cc6afe94:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    3691cc6afe9b:	41 83 c3 02                                     	add    r11d,0x2
    3691cc6afe9f:	44 3b 9d 70 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0x90]
    3691cc6afea6:	0f 8c 54 85 ff ff                               	jl     0x3691cc6a8400
    3691cc6afeac:	48 8b bd 78 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x88]
    3691cc6afeb3:	48 8b b5 38 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3c8]
    3691cc6afeba:	48 03 f7                                        	add    rsi,rdi
    3691cc6afebd:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    3691cc6afec1:	4c 8b bd 10 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xf0]
    3691cc6afec8:	4d 03 fb                                        	add    r15,r11
    3691cc6afecb:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
    3691cc6afecf:	48 8b 9d 80 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x380]
    3691cc6afed6:	48 03 d8                                        	add    rbx,rax
    3691cc6afed9:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6afedd:	41 83 c1 02                                     	add    r9d,0x2
    3691cc6afee1:	44 3b 4d 98                                     	cmp    r9d,DWORD PTR [rbp-0x68]
    3691cc6afee5:	0f 8c 55 84 ff ff                               	jl     0x3691cc6a8340
    3691cc6afeeb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6afeee:	81 c7 00 02 00 00                               	add    edi,0x200
    3691cc6afef4:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    3691cc6afef8:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    3691cc6afefc:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    3691cc6aff01:	48 8b e5                                        	mov    rsp,rbp
    3691cc6aff04:	5d                                              	pop    rbp
    3691cc6aff05:	c2 10 00                                        	ret    0x10
    3691cc6aff08:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    3691cc6aff0f:	0f 84 17 00 00 00                               	je     0x3691cc6aff2c
    3691cc6aff15:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    3691cc6aff1b:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    3691cc6aff20:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    3691cc6aff26:	0f 85 40 00 00 00                               	jne    0x3691cc6aff6c
    3691cc6aff2c:	c5 79 7e df                                     	vmovd  edi,xmm11
    3691cc6aff30:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    3691cc6aff36:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    3691cc6aff39:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    3691cc6aff3c:	41 51                                           	push   r9
    3691cc6aff3e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    3691cc6aff41:	41 53                                           	push   r11
    3691cc6aff43:	57                                              	push   rdi
    3691cc6aff44:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    3691cc6aff47:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    3691cc6aff4a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aff4e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6aff51:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6aff54:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    3691cc6aff57:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6aff5a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    3691cc6aff5e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6aff62:	e8 b9 15 f1 ff                                  	call   0x3691cc5c1520
    3691cc6aff67:	e9 df 00 00 00                                  	jmp    0x3691cc6b004b
    3691cc6aff6c:	c5 79 7e df                                     	vmovd  edi,xmm11
    3691cc6aff70:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    3691cc6aff76:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    3691cc6aff79:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    3691cc6aff7c:	41 51                                           	push   r9
    3691cc6aff7e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    3691cc6aff81:	41 53                                           	push   r11
    3691cc6aff83:	57                                              	push   rdi
    3691cc6aff84:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    3691cc6aff87:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    3691cc6aff8a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6aff8e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6aff91:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6aff94:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    3691cc6aff97:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6aff9a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    3691cc6aff9e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6affa2:	e8 91 15 f1 ff                                  	call   0x3691cc5c1538
    3691cc6affa7:	e9 9f 00 00 00                                  	jmp    0x3691cc6b004b
    3691cc6affac:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    3691cc6affb3:	0f 84 17 00 00 00                               	je     0x3691cc6affd0
    3691cc6affb9:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    3691cc6affbf:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    3691cc6affc4:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    3691cc6affca:	0f 85 40 00 00 00                               	jne    0x3691cc6b0010
    3691cc6affd0:	c5 79 7e df                                     	vmovd  edi,xmm11
    3691cc6affd4:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    3691cc6affda:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    3691cc6affdd:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    3691cc6affe0:	41 51                                           	push   r9
    3691cc6affe2:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    3691cc6affe5:	41 53                                           	push   r11
    3691cc6affe7:	57                                              	push   rdi
    3691cc6affe8:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    3691cc6affeb:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    3691cc6affee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6afff2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6afff5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6afff8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    3691cc6afffb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6afffe:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    3691cc6b0002:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6b0006:	e8 35 15 f1 ff                                  	call   0x3691cc5c1540
    3691cc6b000b:	e9 3b 00 00 00                                  	jmp    0x3691cc6b004b
    3691cc6b0010:	c5 79 7e df                                     	vmovd  edi,xmm11
    3691cc6b0014:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    3691cc6b001a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    3691cc6b001d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    3691cc6b0020:	41 51                                           	push   r9
    3691cc6b0022:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    3691cc6b0025:	41 53                                           	push   r11
    3691cc6b0027:	57                                              	push   rdi
    3691cc6b0028:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    3691cc6b002b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    3691cc6b002e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6b0032:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6b0035:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6b0038:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    3691cc6b003b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6b003e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    3691cc6b0042:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    3691cc6b0046:	e8 fd 14 f1 ff                                  	call   0x3691cc5c1548
    3691cc6b004b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6b004f:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    3691cc6b0053:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    3691cc6b0058:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    3691cc6b005e:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    3691cc6b0064:	41 0f 45 c3                                     	cmovne eax,r11d
    3691cc6b0068:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6b006c:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    3691cc6b0073:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    3691cc6b0077:	41 89 7c 24 07                                  	mov    DWORD PTR [r12+0x7],edi
    3691cc6b007c:	48 8b e5                                        	mov    rsp,rbp
    3691cc6b007f:	5d                                              	pop    rbp
    3691cc6b0080:	c2 10 00                                        	ret    0x10
    3691cc6b0083:	43 8b 7c 20 58                                  	mov    edi,DWORD PTR [r8+r12*1+0x58]
    3691cc6b0088:	bf 01 00 00 00                                  	mov    edi,0x1
    3691cc6b008d:	41 bf ff ff ff ff                               	mov    r15d,0xffffffff
    3691cc6b0093:	43 83 7c 20 58 00                               	cmp    DWORD PTR [r8+r12*1+0x58],0x0
    3691cc6b0099:	41 0f 45 ff                                     	cmovne edi,r15d
    3691cc6b009d:	45 8d 83 00 02 00 00                            	lea    r8d,[r11+0x200]
    3691cc6b00a4:	44 89 41 07                                     	mov    DWORD PTR [rcx+0x7],r8d
    3691cc6b00a8:	8b c7                                           	mov    eax,edi
    3691cc6b00aa:	48 8b e5                                        	mov    rsp,rbp
    3691cc6b00ad:	5d                                              	pop    rbp
    3691cc6b00ae:	c2 10 00                                        	ret    0x10
    3691cc6b00b1:	41 b8 80 00 00 00                               	mov    r8d,0x80
    3691cc6b00b7:	41 d1 f8                                        	sar    r8d,1
    3691cc6b00ba:	4d 63 c0                                        	movsxd r8,r8d
    3691cc6b00bd:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    3691cc6b00c1:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    3691cc6b00c5:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    3691cc6b00c9:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    3691cc6b00cd:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    3691cc6b00d5:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    3691cc6b00d9:	49 8b c0                                        	mov    rax,r8
    3691cc6b00dc:	e8 4f 3e f1 ff                                  	call   0x3691cc5c3f30
    3691cc6b00e1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    3691cc6b00e5:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    3691cc6b00e8:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    3691cc6b00eb:	8b 7d b8                                        	mov    edi,DWORD PTR [rbp-0x48]
    3691cc6b00ee:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    3691cc6b00f1:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    3691cc6b00f9:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    3691cc6b00fd:	e9 5c 75 ff ff                                  	jmp    0x3691cc6a765e
    3691cc6b0102:	e8 39 3e f1 ff                                  	call   0x3691cc5c3f40
    3691cc6b0107:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6b010c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    3691cc6b0110:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6b0115:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6b011b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6b0121:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6b0126:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    3691cc6b012e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6b0136:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6b013e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6b0146:	e9 21 82 ff ff                                  	jmp    0x3691cc6a836c
    3691cc6b014b:	e8 f0 3d f1 ff                                  	call   0x3691cc5c3f40
    3691cc6b0150:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    3691cc6b0155:	44 8b 85 68 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x98]
    3691cc6b015c:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    3691cc6b0163:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    3691cc6b0168:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    3691cc6b016e:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    3691cc6b0174:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6b0179:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    3691cc6b0180:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    3691cc6b0188:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6b0190:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6b0198:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6b01a0:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    3691cc6b01a7:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    3691cc6b01ad:	e9 8a 82 ff ff                                  	jmp    0x3691cc6a843c
    3691cc6b01b2:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    3691cc6b01ba:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    3691cc6b01c1:	e8 7a 3d f1 ff                                  	call   0x3691cc5c3f40
    3691cc6b01c6:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    3691cc6b01ca:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    3691cc6b01ce:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    3691cc6b01d3:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    3691cc6b01d7:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    3691cc6b01dd:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6b01e1:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    3691cc6b01e5:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    3691cc6b01ea:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    3691cc6b01ef:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    3691cc6b01f4:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    3691cc6b01fb:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    3691cc6b0202:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    3691cc6b0209:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    3691cc6b0211:	8b bd 08 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1f8]
    3691cc6b0217:	c5 fb 10 b5 28 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x1d8]
    3691cc6b021f:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    3691cc6b0227:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    3691cc6b022f:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    3691cc6b0237:	e9 13 b0 ff ff                                  	jmp    0x3691cc6ab24f
    3691cc6b023c:	e8 ff 3c f1 ff                                  	call   0x3691cc5c3f40
    3691cc6b0241:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6b0245:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    3691cc6b0248:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6b024c:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    3691cc6b0253:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    3691cc6b025b:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    3691cc6b0263:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    3691cc6b026b:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    3691cc6b0273:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    3691cc6b027b:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    3691cc6b0283:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    3691cc6b028b:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    3691cc6b0293:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    3691cc6b029a:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    3691cc6b02a0:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    3691cc6b02a7:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    3691cc6b02ae:	e9 a5 b4 ff ff                                  	jmp    0x3691cc6ab758
    3691cc6b02b3:	e8 88 3c f1 ff                                  	call   0x3691cc5c3f40
    3691cc6b02b8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    3691cc6b02bb:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6b02bf:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    3691cc6b02c5:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    3691cc6b02cc:	e9 8e c4 ff ff                                  	jmp    0x3691cc6ac75f
    3691cc6b02d1:	e8 6a 3c f1 ff                                  	call   0x3691cc5c3f40
    3691cc6b02d6:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    3691cc6b02da:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    3691cc6b02de:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    3691cc6b02e5:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    3691cc6b02ec:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    3691cc6b02f2:	e9 f1 d8 ff ff                                  	jmp    0x3691cc6adbe8
    3691cc6b02f7:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    3691cc6b02ff:	c5 78 11 9d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm11
    3691cc6b0307:	c5 f8 11 ad 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm5
    3691cc6b030f:	c5 f8 11 95 f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm2
    3691cc6b0317:	4c 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r11
    3691cc6b031e:	48 89 b5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rsi
    3691cc6b0325:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    3691cc6b032c:	e8 0f 3c f1 ff                                  	call   0x3691cc5c3f40
    3691cc6b0331:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    3691cc6b0335:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    3691cc6b0339:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    3691cc6b0341:	c5 78 10 9d 60 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x1a0]
    3691cc6b0349:	c5 f8 10 ad 40 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1c0]
    3691cc6b0351:	c5 f8 10 95 f0 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x210]
    3691cc6b0359:	8b 85 b0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x150]
    3691cc6b035f:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    3691cc6b0365:	44 8b 9d 08 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1f8]
    3691cc6b036c:	8b b5 a0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x260]
    3691cc6b0372:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    3691cc6b0379:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    3691cc6b037f:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    3691cc6b0387:	e9 0f e6 ff ff                                  	jmp    0x3691cc6ae99b
    3691cc6b038c:	8b c8                                           	mov    ecx,eax
    3691cc6b038e:	33 d2                                           	xor    edx,edx
    3691cc6b0390:	e9 6e e6 ff ff                                  	jmp    0x3691cc6aea03
    3691cc6b0395:	33 d2                                           	xor    edx,edx
    3691cc6b0397:	44 8b c8                                        	mov    r9d,eax
    3691cc6b039a:	e9 82 e6 ff ff                                  	jmp    0x3691cc6aea21
    3691cc6b039f:	33 d2                                           	xor    edx,edx
    3691cc6b03a1:	8b c8                                           	mov    ecx,eax
    3691cc6b03a3:	e9 c3 e6 ff ff                                  	jmp    0x3691cc6aea6b
    3691cc6b03a8:	33 d2                                           	xor    edx,edx
    3691cc6b03aa:	44 8b f8                                        	mov    r15d,eax
    3691cc6b03ad:	e9 d7 e6 ff ff                                  	jmp    0x3691cc6aea89
    3691cc6b03b2:	e8 99 38 f1 ff                                  	call   0x3691cc5c3c50
    3691cc6b03b7:	e8 94 38 f1 ff                                  	call   0x3691cc5c3c50
    3691cc6b03bc:	90                                              	nop
    3691cc6b03bd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    3691cc6b03c0:	c0 f4 6a                                        	shl    ah,0x6a
    3691cc6b03c3:	cc                                              	int3
    3691cc6b03c4:	91                                              	xchg   ecx,eax
    3691cc6b03c5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b03c8:	ae                                              	scas   al,BYTE PTR es:[rdi]
    3691cc6b03c9:	f4                                              	hlt
    3691cc6b03ca:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b03cc:	91                                              	xchg   ecx,eax
    3691cc6b03cd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b03d0:	9c                                              	pushf
    3691cc6b03d1:	f4                                              	hlt
    3691cc6b03d2:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b03d4:	91                                              	xchg   ecx,eax
    3691cc6b03d5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b03d8:	8a f4                                           	mov    dh,ah
    3691cc6b03da:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b03dc:	91                                              	xchg   ecx,eax
    3691cc6b03dd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b03e0:	78 f4                                           	js     0x3691cc6b03d6
    3691cc6b03e2:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b03e4:	91                                              	xchg   ecx,eax
    3691cc6b03e5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b03e8:	66 f4                                           	data16 hlt
    3691cc6b03ea:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b03ec:	91                                              	xchg   ecx,eax
    3691cc6b03ed:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b03f0:	54                                              	push   rsp
    3691cc6b03f1:	f4                                              	hlt
    3691cc6b03f2:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b03f4:	91                                              	xchg   ecx,eax
    3691cc6b03f5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b03f8:	4a                                              	rex.WX
    3691cc6b03f9:	f2 6a cc                                        	repnz push 0xffffffffffffffcc
    3691cc6b03fc:	91                                              	xchg   ecx,eax
    3691cc6b03fd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0400:	45                                              	rex.RB
    3691cc6b0401:	f2 6a cc                                        	repnz push 0xffffffffffffffcc
    3691cc6b0404:	91                                              	xchg   ecx,eax
    3691cc6b0405:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0408:	3b f2                                           	cmp    esi,edx
    3691cc6b040a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b040c:	91                                              	xchg   ecx,eax
    3691cc6b040d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0410:	31 f2                                           	xor    edx,esi
    3691cc6b0412:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b0414:	91                                              	xchg   ecx,eax
    3691cc6b0415:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0418:	26 f2 6a cc                                     	es repnz push 0xffffffffffffffcc
    3691cc6b041c:	91                                              	xchg   ecx,eax
    3691cc6b041d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0420:	1c f2                                           	sbb    al,0xf2
    3691cc6b0422:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b0424:	91                                              	xchg   ecx,eax
    3691cc6b0425:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0428:	11 f2                                           	adc    edx,esi
    3691cc6b042a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b042c:	91                                              	xchg   ecx,eax
    3691cc6b042d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0430:	d7                                              	xlat   BYTE PTR ds:[rbx]
    3691cc6b0431:	e4 6a                                           	in     al,0x6a
    3691cc6b0433:	cc                                              	int3
    3691cc6b0434:	91                                              	xchg   ecx,eax
    3691cc6b0435:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0438:	cc                                              	int3
    3691cc6b0439:	e4 6a                                           	in     al,0x6a
    3691cc6b043b:	cc                                              	int3
    3691cc6b043c:	91                                              	xchg   ecx,eax
    3691cc6b043d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0440:	c1 e4 6a                                        	shl    esp,0x6a
    3691cc6b0443:	cc                                              	int3
    3691cc6b0444:	91                                              	xchg   ecx,eax
    3691cc6b0445:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0448:	b6 e4                                           	mov    dh,0xe4
    3691cc6b044a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b044c:	91                                              	xchg   ecx,eax
    3691cc6b044d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0450:	ac                                              	lods   al,BYTE PTR ds:[rsi]
    3691cc6b0451:	e4 6a                                           	in     al,0x6a
    3691cc6b0453:	cc                                              	int3
    3691cc6b0454:	91                                              	xchg   ecx,eax
    3691cc6b0455:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0458:	a1 e4 6a cc 91 36 00 00 97                      	movabs eax,ds:0x9700003691cc6ae4
    3691cc6b0461:	e4 6a                                           	in     al,0x6a
    3691cc6b0463:	cc                                              	int3
    3691cc6b0464:	91                                              	xchg   ecx,eax
    3691cc6b0465:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0468:	b7 b3                                           	mov    bh,0xb3
    3691cc6b046a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b046c:	91                                              	xchg   ecx,eax
    3691cc6b046d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0470:	ac                                              	lods   al,BYTE PTR ds:[rsi]
    3691cc6b0471:	b3 6a                                           	mov    bl,0x6a
    3691cc6b0473:	cc                                              	int3
    3691cc6b0474:	91                                              	xchg   ecx,eax
    3691cc6b0475:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0478:	96                                              	xchg   esi,eax
    3691cc6b0479:	b3 6a                                           	mov    bl,0x6a
    3691cc6b047b:	cc                                              	int3
    3691cc6b047c:	91                                              	xchg   ecx,eax
    3691cc6b047d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0480:	86 b3 6a cc 91 36                               	xchg   BYTE PTR [rbx+0x3691cc6a],dh
    3691cc6b0486:	00 00                                           	add    BYTE PTR [rax],al
    3691cc6b0488:	76 b3                                           	jbe    0x3691cc6b043d
    3691cc6b048a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b048c:	91                                              	xchg   ecx,eax
    3691cc6b048d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0490:	60                                              	(bad)
    3691cc6b0491:	b3 6a                                           	mov    bl,0x6a
    3691cc6b0493:	cc                                              	int3
    3691cc6b0494:	91                                              	xchg   ecx,eax
    3691cc6b0495:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0498:	50                                              	push   rax
    3691cc6b0499:	b3 6a                                           	mov    bl,0x6a
    3691cc6b049b:	cc                                              	int3
    3691cc6b049c:	91                                              	xchg   ecx,eax
    3691cc6b049d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04a0:	d0 b3 6a cc 91 36                               	shl    BYTE PTR [rbx+0x3691cc6a],1
    3691cc6b04a6:	00 00                                           	add    BYTE PTR [rax],al
    3691cc6b04a8:	17                                              	(bad)
    3691cc6b04a9:	a7                                              	cmps   DWORD PTR ds:[rsi],DWORD PTR es:[rdi]
    3691cc6b04aa:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b04ac:	91                                              	xchg   ecx,eax
    3691cc6b04ad:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04b0:	cb                                              	retf
    3691cc6b04b1:	a8 6a                                           	test   al,0x6a
    3691cc6b04b3:	cc                                              	int3
    3691cc6b04b4:	91                                              	xchg   ecx,eax
    3691cc6b04b5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04b8:	b5 a8                                           	mov    ch,0xa8
    3691cc6b04ba:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b04bc:	91                                              	xchg   ecx,eax
    3691cc6b04bd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04c0:	a6                                              	cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
    3691cc6b04c1:	a8 6a                                           	test   al,0x6a
    3691cc6b04c3:	cc                                              	int3
    3691cc6b04c4:	91                                              	xchg   ecx,eax
    3691cc6b04c5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04c8:	96                                              	xchg   esi,eax
    3691cc6b04c9:	a8 6a                                           	test   al,0x6a
    3691cc6b04cb:	cc                                              	int3
    3691cc6b04cc:	91                                              	xchg   ecx,eax
    3691cc6b04cd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04d0:	80 a8 6a cc 91 36 00                            	sub    BYTE PTR [rax+0x3691cc6a],0x0
    3691cc6b04d7:	00 70 a8                                        	add    BYTE PTR [rax-0x58],dh
    3691cc6b04da:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b04dc:	91                                              	xchg   ecx,eax
    3691cc6b04dd:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04e0:	d5 a8 6a cc                                     	{rex2 0xa8} punpckhdq mm1,mm4
    3691cc6b04e4:	91                                              	xchg   ecx,eax
    3691cc6b04e5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04e8:	0a a7 6a cc 91 36                               	or     ah,BYTE PTR [rdi+0x3691cc6a]
    3691cc6b04ee:	00 00                                           	add    BYTE PTR [rax],al
    3691cc6b04f0:	51                                              	push   rcx
    3691cc6b04f1:	9e                                              	sahf
    3691cc6b04f2:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b04f4:	91                                              	xchg   ecx,eax
    3691cc6b04f5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b04f8:	3b 9e 6a cc 91 36                               	cmp    ebx,DWORD PTR [rsi+0x3691cc6a]
    3691cc6b04fe:	00 00                                           	add    BYTE PTR [rax],al
    3691cc6b0500:	2c 9e                                           	sub    al,0x9e
    3691cc6b0502:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b0504:	91                                              	xchg   ecx,eax
    3691cc6b0505:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0508:	1c 9e                                           	sbb    al,0x9e
    3691cc6b050a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b050c:	91                                              	xchg   ecx,eax
    3691cc6b050d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0510:	06                                              	(bad)
    3691cc6b0511:	9e                                              	sahf
    3691cc6b0512:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b0514:	91                                              	xchg   ecx,eax
    3691cc6b0515:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0518:	f6 9d 6a cc 91 36                               	neg    BYTE PTR [rbp+0x3691cc6a]
    3691cc6b051e:	00 00                                           	add    BYTE PTR [rax],al
    3691cc6b0520:	5b                                              	pop    rbx
    3691cc6b0521:	9e                                              	sahf
    3691cc6b0522:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b0524:	91                                              	xchg   ecx,eax
    3691cc6b0525:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0528:	83 9c 6a cc 91 36 00 00                         	sbb    DWORD PTR [rdx+rbp*2+0x3691cc],0x0
    3691cc6b0530:	c6                                              	(bad)
    3691cc6b0531:	93                                              	xchg   ebx,eax
    3691cc6b0532:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b0534:	91                                              	xchg   ecx,eax
    3691cc6b0535:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0538:	b0 93                                           	mov    al,0x93
    3691cc6b053a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b053c:	91                                              	xchg   ecx,eax
    3691cc6b053d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0540:	a1 93 6a cc 91 36 00 00 91                      	movabs eax,ds:0x9100003691cc6a93
    3691cc6b0549:	93                                              	xchg   ebx,eax
    3691cc6b054a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b054c:	91                                              	xchg   ecx,eax
    3691cc6b054d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0550:	7b 93                                           	jnp    0x3691cc6b04e5
    3691cc6b0552:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b0554:	91                                              	xchg   ecx,eax
    3691cc6b0555:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0558:	6b 93 6a cc 91 36 00                            	imul   edx,DWORD PTR [rbx+0x3691cc6a],0x0
    3691cc6b055f:	00 d0                                           	add    al,dl
    3691cc6b0561:	93                                              	xchg   ebx,eax
    3691cc6b0562:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b0564:	91                                              	xchg   ecx,eax
    3691cc6b0565:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0568:	9f                                              	lahf
    3691cc6b0569:	91                                              	xchg   ecx,eax
    3691cc6b056a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b056c:	91                                              	xchg   ecx,eax
    3691cc6b056d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0570:	ea                                              	(bad)
    3691cc6b0571:	88 6a cc                                        	mov    BYTE PTR [rdx-0x34],ch
    3691cc6b0574:	91                                              	xchg   ecx,eax
    3691cc6b0575:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0578:	d5 88 6a cc                                     	{rex2 0x88} punpckhdq mm1,mm4
    3691cc6b057c:	91                                              	xchg   ecx,eax
    3691cc6b057d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0580:	c6                                              	(bad)
    3691cc6b0581:	88 6a cc                                        	mov    BYTE PTR [rdx-0x34],ch
    3691cc6b0584:	91                                              	xchg   ecx,eax
    3691cc6b0585:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0588:	b7 88                                           	mov    bh,0x88
    3691cc6b058a:	6a cc                                           	push   0xffffffffffffffcc
    3691cc6b058c:	91                                              	xchg   ecx,eax
    3691cc6b058d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b0590:	a2 88 6a cc 91 36 00 00 93                      	movabs ds:0x9300003691cc6a88,al
    3691cc6b0599:	88 6a cc                                        	mov    BYTE PTR [rdx-0x34],ch
    3691cc6b059c:	91                                              	xchg   ecx,eax
    3691cc6b059d:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b05a0:	f4                                              	hlt
    3691cc6b05a1:	88 6a cc                                        	mov    BYTE PTR [rdx-0x34],ch
    3691cc6b05a4:	91                                              	xchg   ecx,eax
    3691cc6b05a5:	36 00 00                                        	ss add BYTE PTR [rax],al
    3691cc6b05a8:	81 00 00 00 1c 00                               	add    DWORD PTR [rax],0x1c0000
    3691cc6b05ae:	00 00                                           	add    BYTE PTR [rax],al
    3691cc6b05b0:	91                                              	xchg   ecx,eax
    3691cc6b05b1:	01 d7                                           	add    edi,edx
    3691cc6b05b3:	03 05 8f 94 02 d7                               	add    eax,DWORD PTR [rip+0xffffffffd702948f]        # 0x3691a36d9a48
    3691cc6b05b9:	03 05 26 d7 03 05                               	add    eax,DWORD PTR [rip+0x503d726]        # 0x3691d16edce5
    3691cc6b05bf:	b0 05                                           	mov    al,0x5
    3691cc6b05c1:	d7                                              	xlat   BYTE PTR ds:[rbx]
    3691cc6b05c2:	03 05 00 00 00 00                               	add    eax,DWORD PTR [rip+0x0]        # 0x3691cc6b05c8
	...
