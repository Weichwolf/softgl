
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms2/selected/sg_raster_triangle_tile_prepared-turbofan.bin:     file format binary


Disassembly of section .data:

00002989c628d7c0 <.data>:
    2989c628d7c0:	55                                              	push   rbp
    2989c628d7c1:	48 8b ec                                        	mov    rbp,rsp
    2989c628d7c4:	6a 30                                           	push   0x30
    2989c628d7c6:	56                                              	push   rsi
    2989c628d7c7:	48 81 ec e8 03 00 00                            	sub    rsp,0x3e8
    2989c628d7ce:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    2989c628d7d2:	8b f9                                           	mov    edi,ecx
    2989c628d7d4:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    2989c628d7d8:	0f 86 53 8a 00 00                               	jbe    0x2989c6296231
    2989c628d7de:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    2989c628d7e2:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    2989c628d7e6:	4d 0b de                                        	or     r11,r14
    2989c628d7e9:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    2989c628d7ed:	41 8d 8c 24 00 fe ff ff                         	lea    ecx,[r12-0x200]
    2989c628d7f5:	41 89 4b 07                                     	mov    DWORD PTR [r11+0x7],ecx
    2989c628d7f9:	45 8b 7b 2f                                     	mov    r15d,DWORD PTR [r11+0x2f]
    2989c628d7fd:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    2989c628d801:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    2989c628d808:	44 8b e0                                        	mov    r12d,eax
    2989c628d80b:	43 8b 74 20 14                                  	mov    esi,DWORD PTR [r8+r12*1+0x14]
    2989c628d810:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    2989c628d817:	85 f6                                           	test   esi,esi
    2989c628d819:	0f 85 4c 00 00 00                               	jne    0x2989c628d86b
    2989c628d81f:	45 85 ff                                        	test   r15d,r15d
    2989c628d822:	0f 84 43 00 00 00                               	je     0x2989c628d86b
    2989c628d828:	43 8b 74 38 24                                  	mov    esi,DWORD PTR [r8+r15*1+0x24]
    2989c628d82d:	43 83 7c 38 24 00                               	cmp    DWORD PTR [r8+r15*1+0x24],0x0
    2989c628d833:	0f 84 32 00 00 00                               	je     0x2989c628d86b
    2989c628d839:	ff 75 18                                        	push   QWORD PTR [rbp+0x18]
    2989c628d83c:	ff 75 10                                        	push   QWORD PTR [rbp+0x10]
    2989c628d83f:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    2989c628d843:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    2989c628d847:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628d84b:	8b cf                                           	mov    ecx,edi
    2989c628d84d:	e8 fe dc ee ff                                  	call   0x2989c617b550
    2989c628d852:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c628d856:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    2989c628d85d:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    2989c628d861:	89 7e 07                                        	mov    DWORD PTR [rsi+0x7],edi
    2989c628d864:	48 8b e5                                        	mov    rsp,rbp
    2989c628d867:	5d                                              	pop    rbp
    2989c628d868:	c2 10 00                                        	ret    0x10
    2989c628d86b:	4d 8b d3                                        	mov    r10,r11
    2989c628d86e:	44 8b d9                                        	mov    r11d,ecx
    2989c628d871:	49 8b ca                                        	mov    rcx,r10
    2989c628d874:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    2989c628d87b:	44 8b fb                                        	mov    r15d,ebx
    2989c628d87e:	c4 81 7a 6f 74 38 10                            	vmovdqu xmm6,XMMWORD PTR [r8+r15*1+0x10]
    2989c628d885:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    2989c628d88f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c628d894:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c628d898:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    2989c628d89c:	49 ba 40 b9 f4 10 58 57 00 00                   	movabs r10,0x575810f4b940
    2989c628d8a6:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    2989c628d8ac:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    2989c628d8b1:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    2989c628d8b7:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    2989c628d8bc:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    2989c628d8c1:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    2989c628d8c5:	8b da                                           	mov    ebx,edx
    2989c628d8c7:	c4 41 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x10]
    2989c628d8ce:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    2989c628d8d2:	4c 8b 15 c5 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc5]        # 0x2989c628d89e
    2989c628d8d9:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    2989c628d8df:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    2989c628d8e4:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    2989c628d8ea:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    2989c628d8ef:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    2989c628d8f4:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    2989c628d8f9:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    2989c628d8fe:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    2989c628d904:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    2989c628d908:	8b d7                                           	mov    edx,edi
    2989c628d90a:	c4 41 7a 6f 64 10 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rdx*1+0x10]
    2989c628d911:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    2989c628d915:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x2989c628d89e
    2989c628d91c:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    2989c628d922:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    2989c628d927:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    2989c628d92d:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    2989c628d932:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    2989c628d937:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    2989c628d93c:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    2989c628d941:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    2989c628d947:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    2989c628d94b:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    2989c628d950:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    2989c628d955:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    2989c628d959:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    2989c628d95f:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    2989c628d963:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    2989c628d968:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    2989c628d96c:	c4 e3 f9 16 d7 00                               	vpextrq rdi,xmm2,0x0
    2989c628d972:	c4 e3 f9 16 d6 01                               	vpextrq rsi,xmm2,0x1
    2989c628d978:	48 2b fe                                        	sub    rdi,rsi
    2989c628d97b:	48 85 ff                                        	test   rdi,rdi
    2989c628d97e:	0f 8e 7f 88 00 00                               	jle    0x2989c6296203
    2989c628d984:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    2989c628d989:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    2989c628d98e:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    2989c628d994:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    2989c628d99e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c628d9a3:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c628d9a7:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    2989c628d9ab:	8d 70 04                                        	lea    esi,[rax+0x4]
    2989c628d9ae:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    2989c628d9b3:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    2989c628d9b8:	c4 c3 59 22 24 30 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rsi*1],0x1
    2989c628d9bf:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    2989c628d9c4:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    2989c628d9c8:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    2989c628d9cd:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    2989c628d9d2:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    2989c628d9d7:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    2989c628d9dc:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c628d9e0:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    2989c628d9e4:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    2989c628d9ee:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c628d9f3:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c628d9f7:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    2989c628d9fb:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    2989c628d9ff:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    2989c628da04:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    2989c628da0a:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    2989c628da0f:	43 8b 74 20 58                                  	mov    esi,DWORD PTR [r8+r12*1+0x58]
    2989c628da14:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    2989c628da18:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    2989c628da1c:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    2989c628da24:	85 f6                                           	test   esi,esi
    2989c628da26:	0f 84 39 00 00 00                               	je     0x2989c628da65
    2989c628da2c:	44 8d 48 50                                     	lea    r9d,[rax+0x50]
    2989c628da30:	49 8d 78 48                                     	lea    rdi,[r8+0x48]
    2989c628da34:	c4 a1 7b 10 24 27                               	vmovsd xmm4,QWORD PTR [rdi+r12*1]
    2989c628da3a:	c4 83 59 22 2c 08 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+r9*1],0x0
    2989c628da41:	8d 78 54                                        	lea    edi,[rax+0x54]
    2989c628da44:	c4 c3 59 22 04 38 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rdi*1],0x1
    2989c628da4b:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    2989c628da4f:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    2989c628da54:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    2989c628da59:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    2989c628da61:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    2989c628da65:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    2989c628da69:	c4 c3 f9 16 e1 00                               	vpextrq r9,xmm4,0x0
    2989c628da6f:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    2989c628da74:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    2989c628da7a:	49 23 c1                                        	and    rax,r9
    2989c628da7d:	a8 01                                           	test   al,0x1
    2989c628da7f:	0f 85 20 00 00 00                               	jne    0x2989c628daa5
    2989c628da85:	b8 01 00 00 00                                  	mov    eax,0x1
    2989c628da8a:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    2989c628da8f:	85 f6                                           	test   esi,esi
    2989c628da91:	0f 45 c7                                        	cmovne eax,edi
    2989c628da94:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    2989c628da9b:	89 79 07                                        	mov    DWORD PTR [rcx+0x7],edi
    2989c628da9e:	48 8b e5                                        	mov    rsp,rbp
    2989c628daa1:	5d                                              	pop    rbp
    2989c628daa2:	c2 10 00                                        	ret    0x10
    2989c628daa5:	c4 63 79 16 e8 01                               	vpextrd eax,xmm13,0x1
    2989c628daab:	c4 63 79 16 d6 01                               	vpextrd esi,xmm10,0x1
    2989c628dab1:	45 33 c9                                        	xor    r9d,r9d
    2989c628dab4:	3b f0                                           	cmp    esi,eax
    2989c628dab6:	41 0f 9e c1                                     	setle  r9b
    2989c628daba:	48 89 4d e8                                     	mov    QWORD PTR [rbp-0x18],rcx
    2989c628dabe:	33 c9                                           	xor    ecx,ecx
    2989c628dac0:	3b f0                                           	cmp    esi,eax
    2989c628dac2:	0f 95 c1                                        	setne  cl
    2989c628dac5:	4c 89 5d e0                                     	mov    QWORD PTR [rbp-0x20],r11
    2989c628dac9:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    2989c628dace:	c5 79 7e d7                                     	vmovd  edi,xmm10
    2989c628dad2:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    2989c628dad9:	45 33 ff                                        	xor    r15d,r15d
    2989c628dadc:	41 3b fb                                        	cmp    edi,r11d
    2989c628dadf:	41 0f 9e c7                                     	setle  r15b
    2989c628dae3:	44 0b f9                                        	or     r15d,ecx
    2989c628dae6:	45 23 f9                                        	and    r15d,r9d
    2989c628dae9:	c4 63 79 16 c1 01                               	vpextrd ecx,xmm8,0x1
    2989c628daef:	45 33 c9                                        	xor    r9d,r9d
    2989c628daf2:	3b ce                                           	cmp    ecx,esi
    2989c628daf4:	41 0f 9e c1                                     	setle  r9b
    2989c628daf8:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    2989c628daff:	45 33 ff                                        	xor    r15d,r15d
    2989c628db02:	3b ce                                           	cmp    ecx,esi
    2989c628db04:	41 0f 95 c7                                     	setne  r15b
    2989c628db08:	48 89 b5 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rsi
    2989c628db0f:	c5 79 7e c6                                     	vmovd  esi,xmm8
    2989c628db13:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    2989c628db1a:	33 db                                           	xor    ebx,ebx
    2989c628db1c:	3b f7                                           	cmp    esi,edi
    2989c628db1e:	0f 9e c3                                        	setle  bl
    2989c628db21:	41 0b df                                        	or     ebx,r15d
    2989c628db24:	41 23 d9                                        	and    ebx,r9d
    2989c628db27:	45 33 ff                                        	xor    r15d,r15d
    2989c628db2a:	3b c8                                           	cmp    ecx,eax
    2989c628db2c:	41 0f 95 c7                                     	setne  r15b
    2989c628db30:	45 33 c9                                        	xor    r9d,r9d
    2989c628db33:	44 3b de                                        	cmp    r11d,esi
    2989c628db36:	41 0f 9e c1                                     	setle  r9b
    2989c628db3a:	45 0b cf                                        	or     r9d,r15d
    2989c628db3d:	45 33 ff                                        	xor    r15d,r15d
    2989c628db40:	3b c1                                           	cmp    eax,ecx
    2989c628db42:	41 0f 9e c7                                     	setle  r15b
    2989c628db46:	45 23 f9                                        	and    r15d,r9d
    2989c628db49:	47 8b 8c 20 e0 00 00 00                         	mov    r9d,DWORD PTR [r8+r12*1+0xe0]
    2989c628db51:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    2989c628db55:	4c 89 65 d0                                     	mov    QWORD PTR [rbp-0x30],r12
    2989c628db59:	c5 f8 11 bd 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm7
    2989c628db61:	48 89 9d 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rbx
    2989c628db68:	43 83 bc 20 e0 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xe0],0x0
    2989c628db71:	0f 85 0d 00 00 00                               	jne    0x2989c628db84
    2989c628db77:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    2989c628db7b:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    2989c628db7f:	e9 49 01 00 00                                  	jmp    0x2989c628dccd
    2989c628db84:	c4 01 7a 10 94 20 d8 00 00 00                   	vmovss xmm10,DWORD PTR [r8+r12*1+0xd8]
    2989c628db8e:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c628db93:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    2989c628db98:	0f 8a 1d 00 00 00                               	jp     0x2989c628dbbb
    2989c628db9e:	0f 85 17 00 00 00                               	jne    0x2989c628dbbb
    2989c628dba4:	c4 01 7a 10 ac 20 dc 00 00 00                   	vmovss xmm13,DWORD PTR [r8+r12*1+0xdc]
    2989c628dbae:	c4 41 78 2e c5                                  	vucomiss xmm8,xmm13
    2989c628dbb3:	7a 06                                           	jp     0x2989c628dbbb
    2989c628dbb5:	0f 84 0d 01 00 00                               	je     0x2989c628dcc8
    2989c628dbbb:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    2989c628dbc0:	c4 41 78 28 ec                                  	vmovaps xmm13,xmm12
    2989c628dbc5:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    2989c628dbca:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    2989c628dbce:	c4 c1 12 59 e1                                  	vmulss xmm4,xmm13,xmm9
    2989c628dbd3:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    2989c628dbd8:	c4 c1 4a 59 ec                                  	vmulss xmm5,xmm6,xmm12
    2989c628dbdd:	c5 da 5c e5                                     	vsubss xmm4,xmm4,xmm5
    2989c628dbe1:	c5 78 2e c4                                     	vucomiss xmm8,xmm4
    2989c628dbe5:	7a 06                                           	jp     0x2989c628dbed
    2989c628dbe7:	0f 84 db 00 00 00                               	je     0x2989c628dcc8
    2989c628dbed:	c4 c1 7a 10 6c 10 18                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x18]
    2989c628dbf4:	4c 8b 8d e8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x218]
    2989c628dbfb:	c4 81 7a 10 44 08 18                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x18]
    2989c628dc02:	c5 d2 5c e8                                     	vsubss xmm5,xmm5,xmm0
    2989c628dc06:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    2989c628dc0b:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    2989c628dc12:	c4 c1 7a 10 7c 18 18                            	vmovss xmm7,DWORD PTR [r8+rbx*1+0x18]
    2989c628dc19:	c5 c2 5c c0                                     	vsubss xmm0,xmm7,xmm0
    2989c628dc1d:	c5 9a 59 f8                                     	vmulss xmm7,xmm12,xmm0
    2989c628dc21:	c5 b2 5c ff                                     	vsubss xmm7,xmm9,xmm7
    2989c628dc25:	c5 c2 5e fc                                     	vdivss xmm7,xmm7,xmm4
    2989c628dc29:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    2989c628dc2d:	49 ba 60 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b860
    2989c628dc37:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    2989c628dc3c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c628dc40:	0f 87 04 00 00 00                               	ja     0x2989c628dc4a
    2989c628dc46:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c628dc4a:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    2989c628dc4f:	c5 ca 59 f5                                     	vmulss xmm6,xmm6,xmm5
    2989c628dc53:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    2989c628dc57:	c5 fa 5e c4                                     	vdivss xmm0,xmm0,xmm4
    2989c628dc5b:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    2989c628dc5f:	4c 8b 15 c9 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc9]        # 0x2989c628dc2f
    2989c628dc66:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c628dc6b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    2989c628dc6f:	0f 87 04 00 00 00                               	ja     0x2989c628dc79
    2989c628dc75:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c628dc79:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    2989c628dc7d:	0f 87 04 00 00 00                               	ja     0x2989c628dc87
    2989c628dc83:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c628dc87:	c4 c1 2a 59 c1                                  	vmulss xmm0,xmm10,xmm9
    2989c628dc8c:	c4 81 7a 10 b4 20 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+r12*1+0xdc]
    2989c628dc96:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    2989c628dc9c:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    2989c628dca1:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    2989c628dca5:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628dca9:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c628dcad:	c5 f8 10 bd 50 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2b0]
    2989c628dcb5:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    2989c628dcbd:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    2989c628dcc3:	e9 05 00 00 00                                  	jmp    0x2989c628dccd
    2989c628dcc8:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c628dccd:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    2989c628dcd2:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    2989c628dcd6:	c4 c3 79 16 d9 01                               	vpextrd r9d,xmm3,0x1
    2989c628dcdc:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    2989c628dce0:	44 8b 8d 28 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3d8]
    2989c628dce7:	41 f7 d9                                        	neg    r9d
    2989c628dcea:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    2989c628dcee:	44 8b cb                                        	mov    r9d,ebx
    2989c628dcf1:	41 f7 d9                                        	neg    r9d
    2989c628dcf4:	4c 89 4d 90                                     	mov    QWORD PTR [rbp-0x70],r9
    2989c628dcf8:	45 8b cf                                        	mov    r9d,r15d
    2989c628dcfb:	41 f7 d9                                        	neg    r9d
    2989c628dcfe:	83 bd 70 ff ff ff 04                            	cmp    DWORD PTR [rbp-0x90],0x4
    2989c628dd05:	0f 84 21 84 00 00                               	je     0x2989c629612c
    2989c628dd0b:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    2989c628dd12:	0f 85 70 83 00 00                               	jne    0x2989c6296088
    2989c628dd18:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    2989c628dd1c:	41 c1 e1 08                                     	shl    r9d,0x8
    2989c628dd20:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    2989c628dd27:	41 8b d9                                        	mov    ebx,r9d
    2989c628dd2a:	2b de                                           	sub    ebx,esi
    2989c628dd2c:	48 63 db                                        	movsxd rbx,ebx
    2989c628dd2f:	4c 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],r15
    2989c628dd36:	44 8b 7d a0                                     	mov    r15d,DWORD PTR [rbp-0x60]
    2989c628dd3a:	41 c1 e7 08                                     	shl    r15d,0x8
    2989c628dd3e:	41 81 cf 80 00 00 00                            	or     r15d,0x80
    2989c628dd45:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    2989c628dd4c:	41 8b d7                                        	mov    edx,r15d
    2989c628dd4f:	2b d1                                           	sub    edx,ecx
    2989c628dd51:	48 63 d2                                        	movsxd rdx,edx
    2989c628dd54:	48 89 55 88                                     	mov    QWORD PTR [rbp-0x78],rdx
    2989c628dd58:	41 8b d1                                        	mov    edx,r9d
    2989c628dd5b:	41 2b d3                                        	sub    edx,r11d
    2989c628dd5e:	48 63 d2                                        	movsxd rdx,edx
    2989c628dd61:	48 89 95 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rdx
    2989c628dd68:	41 8b d7                                        	mov    edx,r15d
    2989c628dd6b:	2b d0                                           	sub    edx,eax
    2989c628dd6d:	48 63 d2                                        	movsxd rdx,edx
    2989c628dd70:	44 2b cf                                        	sub    r9d,edi
    2989c628dd73:	4d 63 c9                                        	movsxd r9,r9d
    2989c628dd76:	44 2b bd 68 ff ff ff                            	sub    r15d,DWORD PTR [rbp-0x98]
    2989c628dd7d:	4d 63 ff                                        	movsxd r15,r15d
    2989c628dd80:	4c 8b 55 98                                     	mov    r10,QWORD PTR [rbp-0x68]
    2989c628dd84:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    2989c628dd89:	4d 85 d2                                        	test   r10,r10
    2989c628dd8c:	79 13                                           	jns    0x2989c628dda1
    2989c628dd8e:	49 d1 ea                                        	shr    r10,1
    2989c628dd91:	73 04                                           	jae    0x2989c628dd97
    2989c628dd93:	49 83 ca 01                                     	or     r10,0x1
    2989c628dd97:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    2989c628dd9c:	c4 41 32 58 c9                                  	vaddss xmm9,xmm9,xmm9
    2989c628dda1:	2b fe                                           	sub    edi,esi
    2989c628dda3:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    2989c628ddaa:	4c 63 ff                                        	movsxd r15,edi
    2989c628ddad:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    2989c628ddb4:	4d 8b cf                                        	mov    r9,r15
    2989c628ddb7:	49 c1 e1 08                                     	shl    r9,0x8
    2989c628ddbb:	4c 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r15
    2989c628ddc2:	45 33 ff                                        	xor    r15d,r15d
    2989c628ddc5:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    2989c628ddcc:	85 ff                                           	test   edi,edi
    2989c628ddce:	4d 0f 4c f9                                     	cmovl  r15,r9
    2989c628ddd2:	4c 89 8d f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r9
    2989c628ddd9:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    2989c628dde0:	44 2b c9                                        	sub    r9d,ecx
    2989c628dde3:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    2989c628ddea:	4d 63 f9                                        	movsxd r15,r9d
    2989c628dded:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    2989c628ddf4:	49 c1 e7 08                                     	shl    r15,0x8
    2989c628ddf8:	4c 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r15
    2989c628ddff:	49 f7 df                                        	neg    r15
    2989c628de02:	48 89 9d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rbx
    2989c628de09:	33 db                                           	xor    ebx,ebx
    2989c628de0b:	45 85 c9                                        	test   r9d,r9d
    2989c628de0e:	49 0f 4f df                                     	cmovg  rbx,r15
    2989c628de12:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    2989c628de19:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    2989c628de20:	33 d2                                           	xor    edx,edx
    2989c628de22:	85 ff                                           	test   edi,edi
    2989c628de24:	48 0f 4c da                                     	cmovl  rbx,rdx
    2989c628de28:	45 85 c9                                        	test   r9d,r9d
    2989c628de2b:	4c 0f 4f fa                                     	cmovg  r15,rdx
    2989c628de2f:	41 2b f3                                        	sub    esi,r11d
    2989c628de32:	48 63 fe                                        	movsxd rdi,esi
    2989c628de35:	4c 8b df                                        	mov    r11,rdi
    2989c628de38:	49 c1 e3 08                                     	shl    r11,0x8
    2989c628de3c:	4c 8b ca                                        	mov    r9,rdx
    2989c628de3f:	85 f6                                           	test   esi,esi
    2989c628de41:	4d 0f 4c cb                                     	cmovl  r9,r11
    2989c628de45:	2b c8                                           	sub    ecx,eax
    2989c628de47:	48 63 c1                                        	movsxd rax,ecx
    2989c628de4a:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    2989c628de51:	4c 8b d8                                        	mov    r11,rax
    2989c628de54:	49 c1 e3 08                                     	shl    r11,0x8
    2989c628de58:	4c 89 9d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r11
    2989c628de5f:	49 f7 db                                        	neg    r11
    2989c628de62:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    2989c628de69:	4c 8b ca                                        	mov    r9,rdx
    2989c628de6c:	85 c9                                           	test   ecx,ecx
    2989c628de6e:	4d 0f 4f cb                                     	cmovg  r9,r11
    2989c628de72:	4c 89 8d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r9
    2989c628de79:	4c 8b 8d d8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x328]
    2989c628de80:	85 f6                                           	test   esi,esi
    2989c628de82:	4c 0f 4c ca                                     	cmovl  r9,rdx
    2989c628de86:	85 c9                                           	test   ecx,ecx
    2989c628de88:	4c 0f 4f da                                     	cmovg  r11,rdx
    2989c628de8c:	c4 e3 f9 16 c9 00                               	vpextrq rcx,xmm1,0x0
    2989c628de92:	48 8b f1                                        	mov    rsi,rcx
    2989c628de95:	48 c1 e6 08                                     	shl    rsi,0x8
    2989c628de99:	4c 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r11
    2989c628dea0:	c4 41 79 7e f3                                  	vmovd  r11d,xmm14
    2989c628dea5:	4c 89 4d 98                                     	mov    QWORD PTR [rbp-0x68],r9
    2989c628dea9:	4c 8b ca                                        	mov    r9,rdx
    2989c628deac:	45 85 db                                        	test   r11d,r11d
    2989c628deaf:	4c 0f 4c ce                                     	cmovl  r9,rsi
    2989c628deb3:	48 89 b5 a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rsi
    2989c628deba:	c4 e3 f9 16 ce 01                               	vpextrq rsi,xmm1,0x1
    2989c628dec0:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    2989c628dec7:	4c 8b ce                                        	mov    r9,rsi
    2989c628deca:	49 c1 e1 08                                     	shl    r9,0x8
    2989c628dece:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    2989c628ded5:	49 f7 d9                                        	neg    r9
    2989c628ded8:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    2989c628dedf:	c4 43 79 16 f7 01                               	vpextrd r15d,xmm14,0x1
    2989c628dee5:	48 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rbx
    2989c628deec:	48 8b da                                        	mov    rbx,rdx
    2989c628deef:	45 85 ff                                        	test   r15d,r15d
    2989c628def2:	49 0f 4f d9                                     	cmovg  rbx,r9
    2989c628def6:	48 89 9d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rbx
    2989c628defd:	48 8b 9d a0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x360]
    2989c628df04:	45 85 db                                        	test   r11d,r11d
    2989c628df07:	48 0f 4c da                                     	cmovl  rbx,rdx
    2989c628df0b:	45 85 ff                                        	test   r15d,r15d
    2989c628df0e:	4c 0f 4f ca                                     	cmovg  r9,rdx
    2989c628df12:	47 8b 9c 20 a4 00 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0xa4]
    2989c628df1a:	c5 fb 11 75 80                                  	vmovsd QWORD PTR [rbp-0x80],xmm6
    2989c628df1f:	c5 f8 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm2
    2989c628df27:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    2989c628df2b:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    2989c628df32:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    2989c628df39:	48 89 b5 c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rsi
    2989c628df40:	45 85 db                                        	test   r11d,r11d
    2989c628df43:	0f 85 b6 00 00 00                               	jne    0x2989c628dfff
    2989c628df49:	47 8b bc 20 30 05 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x530]
    2989c628df51:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    2989c628df5a:	0f 85 9f 00 00 00                               	jne    0x2989c628dfff
    2989c628df60:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    2989c628df68:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    2989c628df71:	0f 85 88 00 00 00                               	jne    0x2989c628dfff
    2989c628df77:	47 8b bc 20 70 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3770]
    2989c628df7f:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    2989c628df88:	0f 85 71 00 00 00                               	jne    0x2989c628dfff
    2989c628df8e:	47 8b bc 20 74 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3774]
    2989c628df96:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    2989c628df9f:	0f 85 5a 00 00 00                               	jne    0x2989c628dfff
    2989c628dfa5:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    2989c628dfa9:	41 8b d7                                        	mov    edx,r15d
    2989c628dfac:	4c 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r11
    2989c628dfb3:	45 8b 9c 10 30 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x130]
    2989c628dfbb:	41 83 bc 10 30 01 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x130],0x0
    2989c628dfc4:	0f 84 16 00 00 00                               	je     0x2989c628dfe0
    2989c628dfca:	45 8b 9c 10 34 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x134]
    2989c628dfd2:	41 83 eb 01                                     	sub    r11d,0x1
    2989c628dfd6:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c628dfda:	0f 87 11 00 00 00                               	ja     0x2989c628dff1
    2989c628dfe0:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c628dfe5:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    2989c628dfec:	e9 10 00 00 00                                  	jmp    0x2989c628e001
    2989c628dff1:	33 d2                                           	xor    edx,edx
    2989c628dff3:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    2989c628dffa:	e9 02 00 00 00                                  	jmp    0x2989c628e001
    2989c628dfff:	33 d2                                           	xor    edx,edx
    2989c628e001:	4c 8b bd 30 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xd0]
    2989c628e008:	4c 0f af bd 08 ff ff ff                         	imul   r15,QWORD PTR [rbp-0xf8]
    2989c628e010:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    2989c628e017:	48 8b 55 88                                     	mov    rdx,QWORD PTR [rbp-0x78]
    2989c628e01b:	48 0f af 95 18 ff ff ff                         	imul   rdx,QWORD PTR [rbp-0xe8]
    2989c628e023:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    2989c628e02a:	48 8b 95 10 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xf0]
    2989c628e031:	48 0f af d0                                     	imul   rdx,rax
    2989c628e035:	48 8b 85 78 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x88]
    2989c628e03c:	48 0f af c7                                     	imul   rax,rdi
    2989c628e040:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    2989c628e047:	48 0f af fe                                     	imul   rdi,rsi
    2989c628e04b:	48 8b b5 28 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xd8]
    2989c628e052:	48 0f af f1                                     	imul   rsi,rcx
    2989c628e056:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c628e05b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c628e061:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c628e067:	c4 41 2a 5e c9                                  	vdivss xmm9,xmm10,xmm9
    2989c628e06c:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    2989c628e071:	48 8b 8d 10 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1f0]
    2989c628e078:	c4 41 7a 10 64 08 1c                            	vmovss xmm12,DWORD PTR [r8+rcx*1+0x1c]
    2989c628e07f:	48 89 7d 88                                     	mov    QWORD PTR [rbp-0x78],rdi
    2989c628e083:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    2989c628e08a:	c4 41 7a 10 6c 38 1c                            	vmovss xmm13,DWORD PTR [r8+rdi*1+0x1c]
    2989c628e091:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    2989c628e098:	c4 41 7a 10 74 08 1c                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x1c]
    2989c628e09f:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    2989c628e0a6:	48 8b bd 58 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa8]
    2989c628e0ad:	48 03 f9                                        	add    rdi,rcx
    2989c628e0b0:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    2989c628e0b7:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    2989c628e0be:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    2989c628e0c5:	48 03 f9                                        	add    rdi,rcx
    2989c628e0c8:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    2989c628e0cf:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    2989c628e0d6:	48 8b 8d 48 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb8]
    2989c628e0dd:	48 03 f9                                        	add    rdi,rcx
    2989c628e0e0:	48 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rdi
    2989c628e0e7:	48 8b bd b0 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x150]
    2989c628e0ee:	48 8b 4d 98                                     	mov    rcx,QWORD PTR [rbp-0x68]
    2989c628e0f2:	48 03 f9                                        	add    rdi,rcx
    2989c628e0f5:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    2989c628e0f9:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    2989c628e100:	48 8b 8d c8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x138]
    2989c628e107:	48 03 f9                                        	add    rdi,rcx
    2989c628e10a:	49 03 d9                                        	add    rbx,r9
    2989c628e10d:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    2989c628e111:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    2989c628e119:	c5 7b 11 8d 28 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d8],xmm9
    2989c628e121:	c5 7b 11 a5 e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm12
    2989c628e129:	c5 7b 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm13
    2989c628e131:	c5 7b 11 b5 18 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1e8],xmm14
    2989c628e139:	4c 89 8d 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],r9
    2989c628e140:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    2989c628e149:	0f 85 0a 00 00 00                               	jne    0x2989c628e159
    2989c628e14f:	33 c9                                           	xor    ecx,ecx
    2989c628e151:	44 8b d9                                        	mov    r11d,ecx
    2989c628e154:	e9 47 01 00 00                                  	jmp    0x2989c628e2a0
    2989c628e159:	43 8b 8c 20 c8 3c 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x3cc8]
    2989c628e161:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    2989c628e16a:	75 e3                                           	jne    0x2989c628e14f
    2989c628e16c:	43 8b 8c 20 ec 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xec]
    2989c628e174:	43 83 bc 20 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xec],0x0
    2989c628e17d:	75 d0                                           	jne    0x2989c628e14f
    2989c628e17f:	43 8b 8c 20 80 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x80]
    2989c628e187:	47 0b 9c 20 80 00 00 00                         	or     r11d,DWORD PTR [r8+r12*1+0x80]
    2989c628e18f:	0f 85 5c 00 00 00                               	jne    0x2989c628e1f1
    2989c628e195:	47 8b 9c 20 30 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x530]
    2989c628e19d:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    2989c628e1a6:	0f 85 45 00 00 00                               	jne    0x2989c628e1f1
    2989c628e1ac:	47 8b 9c 20 70 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3770]
    2989c628e1b4:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    2989c628e1bd:	0f 85 2e 00 00 00                               	jne    0x2989c628e1f1
    2989c628e1c3:	47 8b 9c 20 74 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3774]
    2989c628e1cb:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    2989c628e1d4:	0f 85 17 00 00 00                               	jne    0x2989c628e1f1
    2989c628e1da:	47 8b 9c 20 20 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x520]
    2989c628e1e2:	43 83 bc 20 20 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x520],0x0
    2989c628e1eb:	0f 85 0d 00 00 00                               	jne    0x2989c628e1fe
    2989c628e1f1:	b9 01 00 00 00                                  	mov    ecx,0x1
    2989c628e1f6:	45 33 db                                        	xor    r11d,r11d
    2989c628e1f9:	e9 a2 00 00 00                                  	jmp    0x2989c628e2a0
    2989c628e1fe:	47 8b 9c 20 24 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x524]
    2989c628e206:	43 83 bc 20 24 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x524],0x0
    2989c628e20f:	74 e0                                           	je     0x2989c628e1f1
    2989c628e211:	47 8b 9c 20 28 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x528]
    2989c628e219:	43 83 bc 20 28 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x528],0x0
    2989c628e222:	74 cd                                           	je     0x2989c628e1f1
    2989c628e224:	47 8b 9c 20 2c 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x52c]
    2989c628e22c:	43 83 bc 20 2c 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x52c],0x0
    2989c628e235:	74 ba                                           	je     0x2989c628e1f1
    2989c628e237:	47 8b 5c 20 74                                  	mov    r11d,DWORD PTR [r8+r12*1+0x74]
    2989c628e23c:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    2989c628e242:	0f 85 0d 00 00 00                               	jne    0x2989c628e255
    2989c628e248:	b9 01 00 00 00                                  	mov    ecx,0x1
    2989c628e24d:	44 8b d9                                        	mov    r11d,ecx
    2989c628e250:	e9 4b 00 00 00                                  	jmp    0x2989c628e2a0
    2989c628e255:	47 8b 5c 20 78                                  	mov    r11d,DWORD PTR [r8+r12*1+0x78]
    2989c628e25a:	33 c9                                           	xor    ecx,ecx
    2989c628e25c:	41 81 fb 02 03 00 00                            	cmp    r11d,0x302
    2989c628e263:	0f 95 c1                                        	setne  cl
    2989c628e266:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c628e26a:	41 0f 95 c3                                     	setne  r11b
    2989c628e26e:	45 0f b6 db                                     	movzx  r11d,r11b
    2989c628e272:	44 85 d9                                        	test   ecx,r11d
    2989c628e275:	0f 85 76 ff ff ff                               	jne    0x2989c628e1f1
    2989c628e27b:	47 8b 5c 20 7c                                  	mov    r11d,DWORD PTR [r8+r12*1+0x7c]
    2989c628e280:	33 c9                                           	xor    ecx,ecx
    2989c628e282:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c628e286:	0f 94 c1                                        	sete   cl
    2989c628e289:	41 81 fb 03 03 00 00                            	cmp    r11d,0x303
    2989c628e290:	41 0f 94 c3                                     	sete   r11b
    2989c628e294:	45 0f b6 db                                     	movzx  r11d,r11b
    2989c628e298:	44 0b d9                                        	or     r11d,ecx
    2989c628e29b:	b9 01 00 00 00                                  	mov    ecx,0x1
    2989c628e2a0:	4c 8b 85 30 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd0]
    2989c628e2a7:	4d 2b c7                                        	sub    r8,r15
    2989c628e2aa:	48 2b c2                                        	sub    rax,rdx
    2989c628e2ad:	48 2b 75 88                                     	sub    rsi,QWORD PTR [rbp-0x78]
    2989c628e2b1:	44 8b 7d c8                                     	mov    r15d,DWORD PTR [rbp-0x38]
    2989c628e2b5:	41 8d 97 dc 36 00 00                            	lea    edx,[r15+0x36dc]
    2989c628e2bc:	4c 89 9d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],r11
    2989c628e2c3:	45 8d 9f 68 36 00 00                            	lea    r11d,[r15+0x3668]
    2989c628e2ca:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    2989c628e2d1:	41 8d 97 f4 35 00 00                            	lea    edx,[r15+0x35f4]
    2989c628e2d8:	4c 8b 8d 20 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe0]
    2989c628e2df:	49 c1 e1 09                                     	shl    r9,0x9
    2989c628e2e3:	48 89 8d 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rcx
    2989c628e2ea:	48 8b 8d 18 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xe8]
    2989c628e2f1:	48 c1 e1 09                                     	shl    rcx,0x9
    2989c628e2f5:	4c 89 85 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r8
    2989c628e2fc:	4c 8b 45 90                                     	mov    r8,QWORD PTR [rbp-0x70]
    2989c628e300:	49 c1 e0 09                                     	shl    r8,0x9
    2989c628e304:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    2989c628e30b:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    2989c628e312:	48 c1 e6 09                                     	shl    rsi,0x9
    2989c628e316:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    2989c628e31a:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    2989c628e321:	49 c1 e0 09                                     	shl    r8,0x9
    2989c628e325:	48 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rax
    2989c628e32c:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    2989c628e333:	48 c1 e0 09                                     	shl    rax,0x9
    2989c628e337:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    2989c628e33e:	4c 8b 8d f8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x308]
    2989c628e345:	4c 2b 8d f0 fc ff ff                            	sub    r9,QWORD PTR [rbp-0x310]
    2989c628e34c:	4c 89 9d 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],r11
    2989c628e353:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    2989c628e35a:	4c 2b 9d d0 fc ff ff                            	sub    r11,QWORD PTR [rbp-0x330]
    2989c628e361:	4c 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r8
    2989c628e368:	44 8b 45 b0                                     	mov    r8d,DWORD PTR [rbp-0x50]
    2989c628e36c:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    2989c628e373:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    2989c628e377:	44 8b 45 b8                                     	mov    r8d,DWORD PTR [rbp-0x48]
    2989c628e37b:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    2989c628e382:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    2989c628e386:	44 8b 45 c0                                     	mov    r8d,DWORD PTR [rbp-0x40]
    2989c628e38a:	4c 89 9d 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],r11
    2989c628e391:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    2989c628e395:	45 8d 87 80 35 00 00                            	lea    r8d,[r15+0x3580]
    2989c628e39c:	4c 89 85 b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r8
    2989c628e3a3:	45 8d 87 cc 3c 00 00                            	lea    r8d,[r15+0x3ccc]
    2989c628e3aa:	48 f7 d7                                        	not    rdi
    2989c628e3ad:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    2989c628e3b4:	49 f7 d7                                        	not    r15
    2989c628e3b7:	48 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rdi
    2989c628e3be:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    2989c628e3c5:	48 f7 d7                                        	not    rdi
    2989c628e3c8:	48 f7 db                                        	neg    rbx
    2989c628e3cb:	48 89 9d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rbx
    2989c628e3d2:	48 8b 9d 70 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x90]
    2989c628e3d9:	48 f7 db                                        	neg    rbx
    2989c628e3dc:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    2989c628e3e3:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    2989c628e3e7:	48 f7 df                                        	neg    rdi
    2989c628e3ea:	48 89 bd 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],rdi
    2989c628e3f1:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c628e3f4:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    2989c628e3fb:	44 8d 47 30                                     	lea    r8d,[rdi+0x30]
    2989c628e3ff:	4c 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],r8
    2989c628e406:	44 8d 47 20                                     	lea    r8d,[rdi+0x20]
    2989c628e40a:	4c 89 85 b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r8
    2989c628e411:	44 8d 47 10                                     	lea    r8d,[rdi+0x10]
    2989c628e415:	c5 79 7e df                                     	vmovd  edi,xmm11
    2989c628e419:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    2989c628e420:	c4 63 79 16 df 01                               	vpextrd edi,xmm11,0x1
    2989c628e426:	c4 62 79 18 de                                  	vbroadcastss xmm11,xmm6
    2989c628e42b:	c4 c2 79 18 cc                                  	vbroadcastss xmm1,xmm12
    2989c628e430:	c4 c2 79 18 dd                                  	vbroadcastss xmm3,xmm13
    2989c628e435:	c4 c2 79 18 e6                                  	vbroadcastss xmm4,xmm14
    2989c628e43a:	c4 c2 79 18 e9                                  	vbroadcastss xmm5,xmm9
    2989c628e43f:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    2989c628e446:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    2989c628e44a:	48 89 b5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rsi
    2989c628e451:	48 89 85 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rax
    2989c628e458:	4c 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r9
    2989c628e45f:	4c 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r11
    2989c628e466:	4c 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r15
    2989c628e46d:	48 89 9d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rbx
    2989c628e474:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    2989c628e47b:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    2989c628e47f:	c5 78 11 9d 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm11
    2989c628e487:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    2989c628e48f:	c5 f8 11 9d 10 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2f0],xmm3
    2989c628e497:	c5 f8 11 a5 e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm4
    2989c628e49f:	c5 f8 11 ad 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm5
    2989c628e4a7:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c628e4ab:	e9 2d 00 00 00                                  	jmp    0x2989c628e4dd
    2989c628e4b0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c628e4b9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    2989c628e4c0:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    2989c628e4c7:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    2989c628e4ce:	4c 89 bd 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r15
    2989c628e4d5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c628e4d9:	4c 89 65 d8                                     	mov    QWORD PTR [rbp-0x28],r12
    2989c628e4dd:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    2989c628e4e1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c628e4e6:	0f 85 96 7d 00 00                               	jne    0x2989c6296282
    2989c628e4ec:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
    2989c628e4f0:	b8 0f 00 00 00                                  	mov    eax,0xf
    2989c628e4f5:	be 03 00 00 00                                  	mov    esi,0x3
    2989c628e4fa:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    2989c628e4fe:	0f 4c f0                                        	cmovl  esi,eax
    2989c628e501:	46 8d 1c 8d 00 00 00 00                         	lea    r11d,[r9*4+0x0]
    2989c628e509:	41 83 e3 7c                                     	and    r11d,0x7c
    2989c628e50d:	46 8d 0c 85 00 00 00 00                         	lea    r9d,[r8*4+0x0]
    2989c628e515:	41 83 e1 7c                                     	and    r9d,0x7c
    2989c628e519:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    2989c628e520:	48 89 b5 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rsi
    2989c628e527:	4c 89 9d 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r11
    2989c628e52e:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    2989c628e535:	4c 8b 95 38 fc ff ff                            	mov    r10,QWORD PTR [rbp-0x3c8]
    2989c628e53c:	4c 89 95 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],r10
    2989c628e543:	4c 8b 95 10 ff ff ff                            	mov    r10,QWORD PTR [rbp-0xf0]
    2989c628e54a:	4c 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r10
    2989c628e551:	4c 8b c8                                        	mov    r9,rax
    2989c628e554:	48 8b 85 80 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x380]
    2989c628e55b:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    2989c628e55f:	e9 31 00 00 00                                  	jmp    0x2989c628e595
    2989c628e564:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c628e56d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c628e576:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c628e57f:	90                                              	nop
    2989c628e580:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    2989c628e587:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    2989c628e58e:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c628e592:	45 8b c3                                        	mov    r8d,r11d
    2989c628e595:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    2989c628e59c:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    2989c628e5a3:	4c 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r8
    2989c628e5aa:	48 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rax
    2989c628e5b1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c628e5b6:	0f 85 0f 7d 00 00                               	jne    0x2989c62962cb
    2989c628e5bc:	48 8b f0                                        	mov    rsi,rax
    2989c628e5bf:	48 2b b5 98 fc ff ff                            	sub    rsi,QWORD PTR [rbp-0x368]
    2989c628e5c6:	48 3b b5 20 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x3e0]
    2989c628e5cd:	0f 8c 4b 02 00 00                               	jl     0x2989c628e81e
    2989c628e5d3:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    2989c628e5da:	4c 2b a5 30 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x3d0]
    2989c628e5e1:	4c 3b a5 90 fd ff ff                            	cmp    r12,QWORD PTR [rbp-0x270]
    2989c628e5e8:	0f 8c 30 02 00 00                               	jl     0x2989c628e81e
    2989c628e5ee:	4c 8b bd 40 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc0]
    2989c628e5f5:	4c 2b bd 28 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x3d8]
    2989c628e5fc:	4c 3b bd 48 fc ff ff                            	cmp    r15,QWORD PTR [rbp-0x3b8]
    2989c628e603:	0f 8c 15 02 00 00                               	jl     0x2989c628e81e
    2989c628e609:	41 8d 40 01                                     	lea    eax,[r8+0x1]
    2989c628e60d:	41 b8 05 00 00 00                               	mov    r8d,0x5
    2989c628e613:	3b 85 70 ff ff ff                               	cmp    eax,DWORD PTR [rbp-0x90]
    2989c628e619:	45 0f 4c c1                                     	cmovl  r8d,r9d
    2989c628e61d:	8b 9d 60 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a0]
    2989c628e623:	41 23 d8                                        	and    ebx,r8d
    2989c628e626:	48 3b b5 68 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x398]
    2989c628e62d:	0f 8e 29 00 00 00                               	jle    0x2989c628e65c
    2989c628e633:	4c 3b a5 c0 fe ff ff                            	cmp    r12,QWORD PTR [rbp-0x140]
    2989c628e63a:	0f 8e 1c 00 00 00                               	jle    0x2989c628e65c
    2989c628e640:	4d 3b df                                        	cmp    r11,r15
    2989c628e643:	0f 8d 13 00 00 00                               	jge    0x2989c628e65c
    2989c628e649:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    2989c628e650:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    2989c628e657:	e9 d7 01 00 00                                  	jmp    0x2989c628e833
    2989c628e65c:	c4 c1 f9 6e c4                                  	vmovq  xmm0,r12
    2989c628e661:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    2989c628e665:	4d 8b c4                                        	mov    r8,r12
    2989c628e668:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    2989c628e66f:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    2989c628e675:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    2989c628e679:	c5 c1 73 f7 1f                                  	vpsllq xmm7,xmm7,0x1f
    2989c628e67e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c628e682:	c4 62 79 37 df                                  	vpcmpgtq xmm11,xmm0,xmm7
    2989c628e687:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    2989c628e68b:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    2989c628e690:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628e695:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    2989c628e69a:	c4 c1 21 73 d3 21                               	vpsrlq xmm11,xmm11,0x21
    2989c628e6a0:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c628e6a5:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    2989c628e6aa:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    2989c628e6af:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    2989c628e6b3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628e6b8:	4c 03 e7                                        	add    r12,rdi
    2989c628e6bb:	c4 c1 f9 6e cc                                  	vmovq  xmm1,r12
    2989c628e6c0:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    2989c628e6c4:	4c 03 c7                                        	add    r8,rdi
    2989c628e6c7:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    2989c628e6cd:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    2989c628e6d2:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    2989c628e6d6:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    2989c628e6da:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    2989c628e6df:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    2989c628e6e4:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    2989c628e6e9:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    2989c628e6ed:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    2989c628e6f2:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    2989c628e6f7:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    2989c628e6fb:	c4 e1 f9 6e c6                                  	vmovq  xmm0,rsi
    2989c628e700:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    2989c628e704:	4c 8b e6                                        	mov    r12,rsi
    2989c628e707:	4c 2b a5 d0 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x330]
    2989c628e70e:	c4 c3 f9 22 c4 01                               	vpinsrq xmm0,xmm0,r12,0x1
    2989c628e714:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    2989c628e719:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    2989c628e71d:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    2989c628e721:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628e726:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    2989c628e72b:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    2989c628e730:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    2989c628e734:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628e739:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    2989c628e740:	48 03 f7                                        	add    rsi,rdi
    2989c628e743:	c4 e1 f9 6e ce                                  	vmovq  xmm1,rsi
    2989c628e748:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    2989c628e74c:	4c 03 e7                                        	add    r12,rdi
    2989c628e74f:	c4 c3 f1 22 cc 01                               	vpinsrq xmm1,xmm1,r12,0x1
    2989c628e755:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    2989c628e75a:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    2989c628e75e:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    2989c628e762:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    2989c628e767:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    2989c628e76c:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    2989c628e771:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    2989c628e775:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    2989c628e77a:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    2989c628e77f:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    2989c628e783:	45 0b e0                                        	or     r12d,r8d
    2989c628e786:	c4 c1 f9 6e c7                                  	vmovq  xmm0,r15
    2989c628e78b:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    2989c628e78f:	4d 8b c7                                        	mov    r8,r15
    2989c628e792:	4c 2b 85 e8 fe ff ff                            	sub    r8,QWORD PTR [rbp-0x118]
    2989c628e799:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    2989c628e79f:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    2989c628e7a4:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    2989c628e7a8:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    2989c628e7ac:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628e7b1:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    2989c628e7b6:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    2989c628e7bb:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    2989c628e7bf:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c628e7c4:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    2989c628e7cb:	4c 03 fe                                        	add    r15,rsi
    2989c628e7ce:	c4 c1 f9 6e cf                                  	vmovq  xmm1,r15
    2989c628e7d3:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    2989c628e7d7:	4c 03 c6                                        	add    r8,rsi
    2989c628e7da:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    2989c628e7e0:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    2989c628e7e5:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    2989c628e7e9:	c5 f1 db fa                                     	vpand  xmm7,xmm1,xmm2
    2989c628e7ed:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c628e7f2:	c4 e2 21 37 cf                                  	vpcmpgtq xmm1,xmm11,xmm7
    2989c628e7f7:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    2989c628e7fc:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    2989c628e800:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c628e805:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    2989c628e80a:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    2989c628e80e:	45 0b c4                                        	or     r8d,r12d
    2989c628e811:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    2989c628e815:	44 23 c3                                        	and    r8d,ebx
    2989c628e818:	0f 85 12 00 00 00                               	jne    0x2989c628e830
    2989c628e81e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c628e822:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c628e826:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c628e82b:	e9 ba 77 00 00                                  	jmp    0x2989c6295fea
    2989c628e830:	49 8b d8                                        	mov    rbx,r8
    2989c628e833:	45 33 c0                                        	xor    r8d,r8d
    2989c628e836:	3b 45 10                                        	cmp    eax,DWORD PTR [rbp+0x10]
    2989c628e839:	41 0f 9c c0                                     	setl   r8b
    2989c628e83d:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    2989c628e844:	48 89 9d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],rbx
    2989c628e84b:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    2989c628e852:	45 85 e0                                        	test   r8d,r12d
    2989c628e855:	0f 85 6d 5b 00 00                               	jne    0x2989c62943c8
    2989c628e85b:	83 bd 78 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x388],0x0
    2989c628e862:	0f 85 70 2a 00 00                               	jne    0x2989c62912d8
    2989c628e868:	f6 c3 01                                        	test   bl,0x1
    2989c628e86b:	0f 85 28 00 00 00                               	jne    0x2989c628e899
    2989c628e871:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c628e875:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    2989c628e87b:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    2989c628e87f:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    2989c628e886:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    2989c628e88d:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    2989c628e894:	e9 86 0a 00 00                                  	jmp    0x2989c628f31f
    2989c628e899:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c628e89d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    2989c628e8a1:	43 8b bc 07 c8 3c 00 00                         	mov    edi,DWORD PTR [r15+r8*1+0x3cc8]
    2989c628e8a9:	43 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0x3cc8],0x0
    2989c628e8b2:	0f 84 66 00 00 00                               	je     0x2989c628e91e
    2989c628e8b8:	8b bd 68 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x98]
    2989c628e8be:	c1 ef 03                                        	shr    edi,0x3
    2989c628e8c1:	83 e7 03                                        	and    edi,0x3
    2989c628e8c4:	0b bd 70 fc ff ff                               	or     edi,DWORD PTR [rbp-0x390]
    2989c628e8ca:	44 8b 9d 58 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3a8]
    2989c628e8d1:	41 03 fb                                        	add    edi,r11d
    2989c628e8d4:	41 0f b6 3c 3f                                  	movzx  edi,BYTE PTR [r15+rdi*1]
    2989c628e8d9:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    2989c628e8e0:	41 83 e3 07                                     	and    r11d,0x7
    2989c628e8e4:	41 8b cb                                        	mov    ecx,r11d
    2989c628e8e7:	d3 e7                                           	shl    edi,cl
    2989c628e8e9:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    2989c628e8ed:	40 f6 c7 80                                     	test   dil,0x80
    2989c628e8f1:	0f 85 20 00 00 00                               	jne    0x2989c628e917
    2989c628e8f7:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    2989c628e8fd:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    2989c628e904:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    2989c628e90b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    2989c628e912:	e9 08 0a 00 00                                  	jmp    0x2989c628f31f
    2989c628e917:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    2989c628e91e:	c4 e1 82 2a 85 60 ff ff ff                      	vcvtsi2ss xmm0,xmm15,QWORD PTR [rbp-0xa0]
    2989c628e927:	c5 b2 59 c0                                     	vmulss xmm0,xmm9,xmm0
    2989c628e92b:	c5 8a 59 c8                                     	vmulss xmm1,xmm14,xmm0
    2989c628e92f:	c4 e1 82 2a bd 50 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xb0]
    2989c628e938:	c5 b2 59 ff                                     	vmulss xmm7,xmm9,xmm7
    2989c628e93c:	c5 92 59 d7                                     	vmulss xmm2,xmm13,xmm7
    2989c628e940:	c5 72 58 da                                     	vaddss xmm11,xmm1,xmm2
    2989c628e944:	c5 2a 5c c8                                     	vsubss xmm9,xmm10,xmm0
    2989c628e948:	c5 32 5c cf                                     	vsubss xmm9,xmm9,xmm7
    2989c628e94c:	c4 41 1a 59 e9                                  	vmulss xmm13,xmm12,xmm9
    2989c628e951:	c4 41 22 58 dd                                  	vaddss xmm11,xmm11,xmm13
    2989c628e956:	c4 41 78 2e c3                                  	vucomiss xmm8,xmm11
    2989c628e95b:	73 9a                                           	jae    0x2989c628e8f7
    2989c628e95d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    2989c628e964:	c4 41 32 59 4c 3f 18                            	vmulss xmm9,xmm9,DWORD PTR [r15+rdi*1+0x18]
    2989c628e96b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    2989c628e972:	c4 c1 7a 59 44 0f 18                            	vmulss xmm0,xmm0,DWORD PTR [r15+rcx*1+0x18]
    2989c628e979:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    2989c628e980:	c4 81 42 59 7c 1f 18                            	vmulss xmm7,xmm7,DWORD PTR [r15+r11*1+0x18]
    2989c628e987:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    2989c628e98b:	c5 b2 58 c0                                     	vaddss xmm0,xmm9,xmm0
    2989c628e98f:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    2989c628e993:	47 8b 64 07 68                                  	mov    r12d,DWORD PTR [r15+r8*1+0x68]
    2989c628e998:	43 83 7c 07 68 00                               	cmp    DWORD PTR [r15+r8*1+0x68],0x0
    2989c628e99e:	0f 85 0b 00 00 00                               	jne    0x2989c628e9af
    2989c628e9a4:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    2989c628e9aa:	e9 c5 00 00 00                                  	jmp    0x2989c628ea74
    2989c628e9af:	47 8b a4 07 a4 00 00 00                         	mov    r12d,DWORD PTR [r15+r8*1+0xa4]
    2989c628e9b7:	43 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0xa4],0x0
    2989c628e9c0:	75 e2                                           	jne    0x2989c628e9a4
    2989c628e9c2:	47 8b 64 07 0c                                  	mov    r12d,DWORD PTR [r15+r8*1+0xc]
    2989c628e9c7:	43 8b 04 07                                     	mov    eax,DWORD PTR [r15+r8*1]
    2989c628e9cb:	0f af 45 a0                                     	imul   eax,DWORD PTR [rbp-0x60]
    2989c628e9cf:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    2989c628e9d3:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    2989c628e9d9:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    2989c628e9dd:	c4 81 7a 10 3c 27                               	vmovss xmm7,DWORD PTR [r15+r12*1]
    2989c628e9e3:	47 8b 64 07 6c                                  	mov    r12d,DWORD PTR [r15+r8*1+0x6c]
    2989c628e9e8:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    2989c628e9ef:	41 83 fc 08                                     	cmp    r12d,0x8
    2989c628e9f3:	0f 83 0b 00 00 00                               	jae    0x2989c628ea04
    2989c628e9f9:	4c 8d 15 e8 7c 00 00                            	lea    r10,[rip+0x7ce8]        # 0x2989c62966e8
    2989c628ea00:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    2989c628ea04:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c628ea08:	0f 87 66 00 00 00                               	ja     0x2989c628ea74
    2989c628ea0e:	e9 0c 09 00 00                                  	jmp    0x2989c628f31f
    2989c628ea13:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    2989c628ea17:	0f 83 57 00 00 00                               	jae    0x2989c628ea74
    2989c628ea1d:	e9 fd 08 00 00                                  	jmp    0x2989c628f31f
    2989c628ea22:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    2989c628ea26:	0f 8a 48 00 00 00                               	jp     0x2989c628ea74
    2989c628ea2c:	0f 84 ed 08 00 00                               	je     0x2989c628f31f
    2989c628ea32:	e9 3d 00 00 00                                  	jmp    0x2989c628ea74
    2989c628ea37:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    2989c628ea3b:	0f 87 33 00 00 00                               	ja     0x2989c628ea74
    2989c628ea41:	e9 d9 08 00 00                                  	jmp    0x2989c628f31f
    2989c628ea46:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c628ea4a:	0f 83 24 00 00 00                               	jae    0x2989c628ea74
    2989c628ea50:	e9 ca 08 00 00                                  	jmp    0x2989c628f31f
    2989c628ea55:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    2989c628ea59:	0f 8a c0 08 00 00                               	jp     0x2989c628f31f
    2989c628ea5f:	0f 84 0f 00 00 00                               	je     0x2989c628ea74
    2989c628ea65:	e9 b5 08 00 00                                  	jmp    0x2989c628f31f
    2989c628ea6a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c628ea6e:	0f 86 ab 08 00 00                               	jbe    0x2989c628f31f
    2989c628ea74:	c4 c1 2a 5e fb                                  	vdivss xmm7,xmm10,xmm11
    2989c628ea79:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    2989c628ea7d:	c4 62 79 18 cf                                  	vbroadcastss xmm9,xmm7
    2989c628ea82:	c4 41 7a 6f 5c 3f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rdi*1+0x20]
    2989c628ea89:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    2989c628ea91:	c4 c2 79 18 c5                                  	vbroadcastss xmm0,xmm13
    2989c628ea96:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    2989c628ea9a:	c4 41 7a 6f 5c 0f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rcx*1+0x20]
    2989c628eaa1:	c4 e2 79 18 f1                                  	vbroadcastss xmm6,xmm1
    2989c628eaa6:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    2989c628eaaa:	c4 62 79 18 da                                  	vbroadcastss xmm11,xmm2
    2989c628eaaf:	c5 fb 11 bd 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm7
    2989c628eab7:	c4 81 7a 6f 7c 1f 20                            	vmovdqu xmm7,XMMWORD PTR [r15+r11*1+0x20]
    2989c628eabe:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    2989c628eac2:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    2989c628eac6:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c628eaca:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c628eace:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    2989c628ead2:	c4 81 7a 7f 84 27 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+r12*1+0x190],xmm0
    2989c628eadc:	c4 c1 7a 10 b4 3f 98 00 00 00                   	vmovss xmm6,DWORD PTR [r15+rdi*1+0x98]
    2989c628eae6:	c4 c1 7a 10 bc 0f 98 00 00 00                   	vmovss xmm7,DWORD PTR [r15+rcx*1+0x98]
    2989c628eaf0:	c4 01 7a 10 8c 1f 98 00 00 00                   	vmovss xmm9,DWORD PTR [r15+r11*1+0x98]
    2989c628eafa:	c4 81 7a 7f 04 27                               	vmovdqu XMMWORD PTR [r15+r12*1],xmm0
    2989c628eb00:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628eb07:	45 8b 84 3f 34 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x134]
    2989c628eb0f:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    2989c628eb13:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    2989c628eb1b:	c5 fb 11 8d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm1
    2989c628eb23:	c5 7b 11 ad 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm13
    2989c628eb2b:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    2989c628eb33:	c5 fb 11 bd b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm7
    2989c628eb3b:	c5 7b 11 8d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm9
    2989c628eb43:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c628eb47:	0f 86 5c 04 00 00                               	jbe    0x2989c628efa9
    2989c628eb4d:	45 8b 84 3f 30 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x130]
    2989c628eb55:	41 83 bc 3f 30 01 00 00 00                      	cmp    DWORD PTR [r15+rdi*1+0x130],0x0
    2989c628eb5e:	0f 85 0b 00 00 00                               	jne    0x2989c628eb6f
    2989c628eb64:	41 8b cc                                        	mov    ecx,r12d
    2989c628eb67:	4d 8b c7                                        	mov    r8,r15
    2989c628eb6a:	e9 f9 04 00 00                                  	jmp    0x2989c628f068
    2989c628eb6f:	45 8d 84 24 90 00 00 00                         	lea    r8d,[r12+0x90]
    2989c628eb77:	45 8d 5c 24 70                                  	lea    r11d,[r12+0x70]
    2989c628eb7c:	41 53                                           	push   r11
    2989c628eb7e:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    2989c628eb85:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    2989c628eb8c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628eb90:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c628eb93:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c628eb96:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    2989c628eb99:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c628eb9c:	c4 c1 79 28 dd                                  	vmovapd xmm3,xmm13
    2989c628eba1:	c5 fb 10 a5 18 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xe8]
    2989c628eba9:	45 8b c8                                        	mov    r9d,r8d
    2989c628ebac:	e8 67 c6 ee ff                                  	call   0x2989c617b218
    2989c628ebb1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628ebb5:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628ebbc:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    2989c628ebc4:	45 85 db                                        	test   r11d,r11d
    2989c628ebc7:	0f 85 62 01 00 00                               	jne    0x2989c628ed2f
    2989c628ebcd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628ebd0:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    2989c628ebd5:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    2989c628ebdb:	0f 84 43 00 00 00                               	je     0x2989c628ec24
    2989c628ebe1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c628ebe7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c628ebeb:	41 53                                           	push   r11
    2989c628ebed:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628ebf1:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    2989c628ebf7:	33 d2                                           	xor    edx,edx
    2989c628ebf9:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    2989c628ec00:	e8 3b c6 ee ff                                  	call   0x2989c617b240
    2989c628ec05:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628ec08:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628ec0c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c628ec13:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c628ec1d:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628ec24:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    2989c628ec29:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    2989c628ec2f:	0f 84 46 00 00 00                               	je     0x2989c628ec7b
    2989c628ec35:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c628ec3b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c628ec3f:	41 53                                           	push   r11
    2989c628ec41:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628ec45:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    2989c628ec4b:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c628ec50:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    2989c628ec57:	e8 e4 c5 ee ff                                  	call   0x2989c617b240
    2989c628ec5c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628ec5f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628ec63:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c628ec6a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c628ec74:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628ec7b:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    2989c628ec80:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    2989c628ec86:	0f 84 46 00 00 00                               	je     0x2989c628ecd2
    2989c628ec8c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c628ec92:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c628ec96:	41 53                                           	push   r11
    2989c628ec98:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628ec9c:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    2989c628eca2:	ba 02 00 00 00                                  	mov    edx,0x2
    2989c628eca7:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    2989c628ecae:	e8 8d c5 ee ff                                  	call   0x2989c617b240
    2989c628ecb3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628ecb6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628ecba:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c628ecc1:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c628eccb:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628ecd2:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    2989c628ecd7:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    2989c628ecdd:	0f 84 85 03 00 00                               	je     0x2989c628f068
    2989c628ece3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c628ece9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c628eced:	41 53                                           	push   r11
    2989c628ecef:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628ecf3:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    2989c628ecf9:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c628ecfe:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    2989c628ed05:	e8 36 c5 ee ff                                  	call   0x2989c617b240
    2989c628ed0a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628ed0d:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c628ed11:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    2989c628ed17:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    2989c628ed20:	4c 8b c7                                        	mov    r8,rdi
    2989c628ed23:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628ed2a:	e9 39 03 00 00                                  	jmp    0x2989c628f068
    2989c628ed2f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628ed32:	4d 8b e0                                        	mov    r12,r8
    2989c628ed35:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    2989c628ed3f:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    2989c628ed45:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c628ed4a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628ed4e:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    2989c628ed55:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    2989c628ed59:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c628ed5d:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    2989c628ed67:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    2989c628ed6b:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    2989c628ed71:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    2989c628ed75:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    2989c628ed7a:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    2989c628ed84:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    2989c628ed88:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    2989c628ed8f:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    2989c628ed93:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    2989c628ed97:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    2989c628ed9b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628ed9f:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    2989c628eda5:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c628edaa:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    2989c628edae:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    2989c628edb2:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    2989c628edb7:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    2989c628edbc:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    2989c628edc0:	0f 87 09 00 00 00                               	ja     0x2989c628edcf
    2989c628edc6:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    2989c628edca:	e9 04 00 00 00                                  	jmp    0x2989c628edd3
    2989c628edcf:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c628edd3:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c628edd8:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    2989c628eddc:	0f 87 09 00 00 00                               	ja     0x2989c628edeb
    2989c628ede2:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c628ede6:	e9 05 00 00 00                                  	jmp    0x2989c628edf0
    2989c628edeb:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    2989c628edf0:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c628edf5:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c628edf9:	0f 84 a4 00 00 00                               	je     0x2989c628eea3
    2989c628edff:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    2989c628ee03:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    2989c628ee0d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c628ee11:	0f 87 09 00 00 00                               	ja     0x2989c628ee20
    2989c628ee17:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c628ee1b:	e9 04 00 00 00                                  	jmp    0x2989c628ee24
    2989c628ee20:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c628ee24:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c628ee28:	0f 87 0a 00 00 00                               	ja     0x2989c628ee38
    2989c628ee2e:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c628ee33:	e9 05 00 00 00                                  	jmp    0x2989c628ee3d
    2989c628ee38:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c628ee3d:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    2989c628ee41:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c628ee46:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c628ee4b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c628ee4f:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    2989c628ee59:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c628ee5e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c628ee63:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    2989c628ee67:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    2989c628ee71:	41 83 fb 03                                     	cmp    r11d,0x3
    2989c628ee75:	0f 85 04 00 00 00                               	jne    0x2989c628ee7f
    2989c628ee7b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    2989c628ee7f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    2989c628ee84:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c628ee88:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    2989c628ee8c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    2989c628ee96:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    2989c628ee9b:	4d 8b df                                        	mov    r11,r15
    2989c628ee9e:	e9 cc 00 00 00                                  	jmp    0x2989c628ef6f
    2989c628eea3:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    2989c628eeaa:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c628eeae:	0f 87 09 00 00 00                               	ja     0x2989c628eebd
    2989c628eeb4:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c628eeb8:	e9 04 00 00 00                                  	jmp    0x2989c628eec1
    2989c628eebd:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c628eec1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c628eec5:	0f 87 0a 00 00 00                               	ja     0x2989c628eed5
    2989c628eecb:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c628eed0:	e9 05 00 00 00                                  	jmp    0x2989c628eeda
    2989c628eed5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c628eeda:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    2989c628eee4:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    2989c628eeea:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    2989c628eeef:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c628eef3:	0f 87 09 00 00 00                               	ja     0x2989c628ef02
    2989c628eef9:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c628eefd:	e9 04 00 00 00                                  	jmp    0x2989c628ef06
    2989c628ef02:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    2989c628ef06:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c628ef0a:	0f 87 0a 00 00 00                               	ja     0x2989c628ef1a
    2989c628ef10:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    2989c628ef15:	e9 05 00 00 00                                  	jmp    0x2989c628ef1f
    2989c628ef1a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c628ef1f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    2989c628ef29:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c628ef2e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c628ef32:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    2989c628ef3c:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    2989c628ef41:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c628ef46:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c628ef4a:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x2989c628ee51
    2989c628ef51:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c628ef56:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c628ef5b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c628ef5f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c628ef63:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c628ef67:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c628ef6b:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    2989c628ef6f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c628ef74:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c628ef78:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x2989c628ee51
    2989c628ef7f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c628ef84:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c628ef89:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c628ef8d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    2989c628ef97:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    2989c628efa1:	4d 8b c4                                        	mov    r8,r12
    2989c628efa4:	e9 bf 00 00 00                                  	jmp    0x2989c628f068
    2989c628efa9:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    2989c628efb0:	c4 81 7a 10 44 1f 50                            	vmovss xmm0,DWORD PTR [r15+r11*1+0x50]
    2989c628efb7:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    2989c628efbc:	48 8b d1                                        	mov    rdx,rcx
    2989c628efbf:	c4 41 7a 10 5c 17 50                            	vmovss xmm11,DWORD PTR [r15+rdx*1+0x50]
    2989c628efc6:	c5 22 59 d9                                     	vmulss xmm11,xmm11,xmm1
    2989c628efca:	48 8b 8d 00 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x200]
    2989c628efd1:	c4 c1 6a 59 74 0f 50                            	vmulss xmm6,xmm2,DWORD PTR [r15+rcx*1+0x50]
    2989c628efd8:	c5 a2 58 f6                                     	vaddss xmm6,xmm11,xmm6
    2989c628efdc:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628efe0:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    2989c628efe8:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c628efec:	c4 01 7a 10 5c 1f 54                            	vmovss xmm11,DWORD PTR [r15+r11*1+0x54]
    2989c628eff3:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    2989c628eff8:	c5 fb 11 85 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm0
    2989c628f000:	c4 c1 7a 10 44 17 54                            	vmovss xmm0,DWORD PTR [r15+rdx*1+0x54]
    2989c628f007:	c5 fa 59 c1                                     	vmulss xmm0,xmm0,xmm1
    2989c628f00b:	c4 c1 6a 59 7c 0f 54                            	vmulss xmm7,xmm2,DWORD PTR [r15+rcx*1+0x54]
    2989c628f012:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    2989c628f016:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    2989c628f01a:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c628f01e:	41 8d bc 24 90 00 00 00                         	lea    edi,[r12+0x90]
    2989c628f026:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f02a:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c628f02d:	41 8b d0                                        	mov    edx,r8d
    2989c628f030:	c5 fb 10 8d b8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x148]
    2989c628f038:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    2989c628f03c:	41 8b cc                                        	mov    ecx,r12d
    2989c628f03f:	8b df                                           	mov    ebx,edi
    2989c628f041:	e8 ea c4 ee ff                                  	call   0x2989c617b530
    2989c628f046:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628f049:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628f04d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    2989c628f057:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c628f061:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628f068:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c628f06c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    2989c628f074:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    2989c628f07d:	0f 85 2a 00 00 00                               	jne    0x2989c628f0ad
    2989c628f083:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    2989c628f08d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    2989c628f097:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    2989c628f0a1:	49 8b fb                                        	mov    rdi,r11
    2989c628f0a4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    2989c628f0a8:	e9 dd 01 00 00                                  	jmp    0x2989c628f28a
    2989c628f0ad:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    2989c628f0b5:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    2989c628f0bd:	c5 fb 10 b5 b0 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x150]
    2989c628f0c5:	c5 ca 59 b5 30 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1d0]
    2989c628f0cd:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    2989c628f0d5:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    2989c628f0dd:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    2989c628f0e1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628f0e5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    2989c628f0ed:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c628f0f1:	4c 8b 15 37 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb37]        # 0x2989c628dc2f
    2989c628f0f8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c628f0fd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c628f101:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c628f105:	0f 87 04 00 00 00                               	ja     0x2989c628f10f
    2989c628f10b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c628f10f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    2989c628f117:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    2989c628f11e:	0f 85 28 00 00 00                               	jne    0x2989c628f14c
    2989c628f124:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    2989c628f12e:	4c 8b 15 fa ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeafa]        # 0x2989c628dc2f
    2989c628f135:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c628f13a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    2989c628f13e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f142:	e8 71 e4 ee ff                                  	call   0x2989c617d5b8
    2989c628f147:	e9 94 00 00 00                                  	jmp    0x2989c628f1e0
    2989c628f14c:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c628f150:	0f 84 67 00 00 00                               	je     0x2989c628f1bd
    2989c628f156:	4d 8b d0                                        	mov    r10,r8
    2989c628f159:	4d 8b c3                                        	mov    r8,r11
    2989c628f15c:	4d 8b da                                        	mov    r11,r10
    2989c628f15f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    2989c628f169:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    2989c628f173:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    2989c628f178:	7a 06                                           	jp     0x2989c628f180
    2989c628f17a:	0f 84 2a 00 00 00                               	je     0x2989c628f1aa
    2989c628f180:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    2989c628f184:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    2989c628f189:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    2989c628f18d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    2989c628f191:	0f 86 49 00 00 00                               	jbe    0x2989c628f1e0
    2989c628f197:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c628f19b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c628f1a0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c628f1a5:	e9 5b 00 00 00                                  	jmp    0x2989c628f205
    2989c628f1aa:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c628f1ae:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c628f1b3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c628f1b8:	e9 44 00 00 00                                  	jmp    0x2989c628f201
    2989c628f1bd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    2989c628f1c7:	4c 8b 15 61 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea61]        # 0x2989c628dc2f
    2989c628f1ce:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c628f1d3:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    2989c628f1d7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f1db:	e8 d8 e3 ee ff                                  	call   0x2989c617d5b8
    2989c628f1e0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c628f1e4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c628f1e9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c628f1ee:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    2989c628f1f2:	0f 87 09 00 00 00                               	ja     0x2989c628f201
    2989c628f1f8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    2989c628f1fc:	e9 04 00 00 00                                  	jmp    0x2989c628f205
    2989c628f201:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    2989c628f205:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628f208:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628f20c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    2989c628f216:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    2989c628f21a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    2989c628f21e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    2989c628f228:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    2989c628f22d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    2989c628f237:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    2989c628f241:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    2989c628f24b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    2989c628f250:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    2989c628f25a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    2989c628f264:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    2989c628f26e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    2989c628f273:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    2989c628f27d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    2989c628f281:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c628f285:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c628f28a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    2989c628f294:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f298:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c628f29b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c628f2a1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c628f2a4:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    2989c628f2ac:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    2989c628f2b0:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    2989c628f2b4:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    2989c628f2b9:	e8 a2 bf ee ff                                  	call   0x2989c617b260
    2989c628f2be:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c628f2c2:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c628f2c7:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    2989c628f2cd:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    2989c628f2d1:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c628f2d6:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c628f2dc:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c628f2e2:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c628f2e7:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    2989c628f2ee:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    2989c628f2f5:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    2989c628f2fc:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    2989c628f302:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c628f30a:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c628f312:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    2989c628f319:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c628f31f:	f6 c3 02                                        	test   bl,0x2
    2989c628f322:	0f 85 26 00 00 00                               	jne    0x2989c628f34e
    2989c628f328:	4d 8b e7                                        	mov    r12,r15
    2989c628f32b:	4c 8b f9                                        	mov    r15,rcx
    2989c628f32e:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c628f334:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c628f33c:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c628f344:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    2989c628f349:	e9 b5 0a 00 00                                  	jmp    0x2989c628fe03
    2989c628f34e:	4d 8b e7                                        	mov    r12,r15
    2989c628f351:	47 8b bc 04 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x3cc8]
    2989c628f359:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    2989c628f362:	0f 84 75 00 00 00                               	je     0x2989c628f3dd
    2989c628f368:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    2989c628f36f:	41 c1 ef 03                                     	shr    r15d,0x3
    2989c628f373:	41 83 e7 03                                     	and    r15d,0x3
    2989c628f377:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    2989c628f37d:	41 0b d7                                        	or     edx,r15d
    2989c628f380:	44 8b bd 58 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3a8]
    2989c628f387:	41 03 d7                                        	add    edx,r15d
    2989c628f38a:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    2989c628f38f:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    2989c628f395:	83 e0 07                                        	and    eax,0x7
    2989c628f398:	4c 8b d1                                        	mov    r10,rcx
    2989c628f39b:	8b c8                                           	mov    ecx,eax
    2989c628f39d:	49 8b c2                                        	mov    rax,r10
    2989c628f3a0:	d3 e2                                           	shl    edx,cl
    2989c628f3a2:	f6 c2 80                                        	test   dl,0x80
    2989c628f3a5:	0f 85 29 00 00 00                               	jne    0x2989c628f3d4
    2989c628f3ab:	4c 8b f8                                        	mov    r15,rax
    2989c628f3ae:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    2989c628f3b4:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c628f3ba:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c628f3c2:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c628f3ca:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    2989c628f3cf:	e9 2f 0a 00 00                                  	jmp    0x2989c628fe03
    2989c628f3d4:	48 8b c8                                        	mov    rcx,rax
    2989c628f3d7:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    2989c628f3dd:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    2989c628f3e4:	4c 2b bd d0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x330]
    2989c628f3eb:	c4 c1 82 2a c7                                  	vcvtsi2ss xmm0,xmm15,r15
    2989c628f3f0:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c628f3f8:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    2989c628f3fc:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    2989c628f401:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    2989c628f405:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    2989c628f40c:	4c 2b bd f0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x310]
    2989c628f413:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    2989c628f418:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    2989c628f41d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c628f425:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    2989c628f42a:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    2989c628f42e:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    2989c628f432:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    2989c628f437:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    2989c628f43b:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    2989c628f43f:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    2989c628f444:	0f 83 b0 09 00 00                               	jae    0x2989c628fdfa
    2989c628f44a:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    2989c628f451:	4c 8b f9                                        	mov    r15,rcx
    2989c628f454:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    2989c628f45b:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    2989c628f462:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    2989c628f467:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    2989c628f46b:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    2989c628f46f:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    2989c628f474:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    2989c628f47a:	0f 85 0b 00 00 00                               	jne    0x2989c628f48b
    2989c628f480:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c628f486:	e9 c5 00 00 00                                  	jmp    0x2989c628f550
    2989c628f48b:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    2989c628f493:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    2989c628f49c:	75 e2                                           	jne    0x2989c628f480
    2989c628f49e:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    2989c628f4a3:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    2989c628f4a7:	0f af 4d a0                                     	imul   ecx,DWORD PTR [rbp-0x60]
    2989c628f4ab:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    2989c628f4ae:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c628f4b4:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    2989c628f4b7:	c4 41 7a 10 1c 14                               	vmovss xmm11,DWORD PTR [r12+rdx*1]
    2989c628f4bd:	43 8b 54 04 6c                                  	mov    edx,DWORD PTR [r12+r8*1+0x6c]
    2989c628f4c2:	81 ea 00 02 00 00                               	sub    edx,0x200
    2989c628f4c8:	83 fa 08                                        	cmp    edx,0x8
    2989c628f4cb:	0f 83 0b 00 00 00                               	jae    0x2989c628f4dc
    2989c628f4d1:	4c 8d 15 d0 71 00 00                            	lea    r10,[rip+0x71d0]        # 0x2989c62966a8
    2989c628f4d8:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    2989c628f4dc:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c628f4e0:	0f 87 6a 00 00 00                               	ja     0x2989c628f550
    2989c628f4e6:	e9 18 09 00 00                                  	jmp    0x2989c628fe03
    2989c628f4eb:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c628f4f0:	0f 83 5a 00 00 00                               	jae    0x2989c628f550
    2989c628f4f6:	e9 08 09 00 00                                  	jmp    0x2989c628fe03
    2989c628f4fb:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c628f500:	0f 8a 4a 00 00 00                               	jp     0x2989c628f550
    2989c628f506:	0f 84 f7 08 00 00                               	je     0x2989c628fe03
    2989c628f50c:	e9 3f 00 00 00                                  	jmp    0x2989c628f550
    2989c628f511:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c628f516:	0f 87 34 00 00 00                               	ja     0x2989c628f550
    2989c628f51c:	e9 e2 08 00 00                                  	jmp    0x2989c628fe03
    2989c628f521:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c628f525:	0f 83 25 00 00 00                               	jae    0x2989c628f550
    2989c628f52b:	e9 d3 08 00 00                                  	jmp    0x2989c628fe03
    2989c628f530:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c628f535:	0f 8a c8 08 00 00                               	jp     0x2989c628fe03
    2989c628f53b:	0f 84 0f 00 00 00                               	je     0x2989c628f550
    2989c628f541:	e9 bd 08 00 00                                  	jmp    0x2989c628fe03
    2989c628f546:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c628f54a:	0f 86 b3 08 00 00                               	jbe    0x2989c628fe03
    2989c628f550:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    2989c628f555:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    2989c628f55a:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    2989c628f55f:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    2989c628f566:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    2989c628f56b:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    2989c628f56f:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    2989c628f576:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    2989c628f57e:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    2989c628f583:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    2989c628f587:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    2989c628f58c:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    2989c628f593:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    2989c628f597:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c628f59b:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    2989c628f59f:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    2989c628f5a3:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    2989c628f5a6:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    2989c628f5b0:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    2989c628f5ba:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    2989c628f5c4:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    2989c628f5ce:	c4 c1 7a 7f 04 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm0
    2989c628f5d4:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628f5db:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    2989c628f5e3:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    2989c628f5e7:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    2989c628f5ef:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    2989c628f5f7:	c5 fb 11 a5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm4
    2989c628f5ff:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    2989c628f607:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    2989c628f60f:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    2989c628f617:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    2989c628f61f:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c628f623:	0f 86 4b 04 00 00                               	jbe    0x2989c628fa74
    2989c628f629:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    2989c628f631:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    2989c628f63a:	0f 85 0a 00 00 00                               	jne    0x2989c628f64a
    2989c628f640:	8b ca                                           	mov    ecx,edx
    2989c628f642:	4d 8b c4                                        	mov    r8,r12
    2989c628f645:	e9 de 04 00 00                                  	jmp    0x2989c628fb28
    2989c628f64a:	44 8d 82 90 00 00 00                            	lea    r8d,[rdx+0x90]
    2989c628f651:	44 8d 5a 70                                     	lea    r11d,[rdx+0x70]
    2989c628f655:	41 53                                           	push   r11
    2989c628f657:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    2989c628f65e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f662:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c628f665:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c628f668:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    2989c628f66b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c628f66e:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    2989c628f672:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    2989c628f677:	45 8b c8                                        	mov    r9d,r8d
    2989c628f67a:	e8 99 bb ee ff                                  	call   0x2989c617b218
    2989c628f67f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628f683:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628f68a:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    2989c628f692:	45 85 db                                        	test   r11d,r11d
    2989c628f695:	0f 85 62 01 00 00                               	jne    0x2989c628f7fd
    2989c628f69b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628f69e:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    2989c628f6a3:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    2989c628f6a9:	0f 84 43 00 00 00                               	je     0x2989c628f6f2
    2989c628f6af:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c628f6b5:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c628f6b9:	41 53                                           	push   r11
    2989c628f6bb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f6bf:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    2989c628f6c5:	33 d2                                           	xor    edx,edx
    2989c628f6c7:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    2989c628f6ce:	e8 6d bb ee ff                                  	call   0x2989c617b240
    2989c628f6d3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628f6d6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628f6da:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c628f6e1:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c628f6eb:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628f6f2:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    2989c628f6f7:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    2989c628f6fd:	0f 84 46 00 00 00                               	je     0x2989c628f749
    2989c628f703:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c628f709:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c628f70d:	41 53                                           	push   r11
    2989c628f70f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f713:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    2989c628f719:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c628f71e:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    2989c628f725:	e8 16 bb ee ff                                  	call   0x2989c617b240
    2989c628f72a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628f72d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628f731:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c628f738:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c628f742:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628f749:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    2989c628f74e:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    2989c628f754:	0f 84 46 00 00 00                               	je     0x2989c628f7a0
    2989c628f75a:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c628f760:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c628f764:	41 53                                           	push   r11
    2989c628f766:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f76a:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    2989c628f770:	ba 02 00 00 00                                  	mov    edx,0x2
    2989c628f775:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    2989c628f77c:	e8 bf ba ee ff                                  	call   0x2989c617b240
    2989c628f781:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628f784:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628f788:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c628f78f:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c628f799:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628f7a0:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    2989c628f7a5:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    2989c628f7ab:	0f 84 77 03 00 00                               	je     0x2989c628fb28
    2989c628f7b1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c628f7b7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c628f7bb:	41 53                                           	push   r11
    2989c628f7bd:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628f7c1:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    2989c628f7c7:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c628f7cc:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    2989c628f7d3:	e8 68 ba ee ff                                  	call   0x2989c617b240
    2989c628f7d8:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628f7db:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c628f7df:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    2989c628f7e5:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    2989c628f7ee:	4c 8b c7                                        	mov    r8,rdi
    2989c628f7f1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628f7f8:	e9 2b 03 00 00                                  	jmp    0x2989c628fb28
    2989c628f7fd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628f800:	4d 8b e0                                        	mov    r12,r8
    2989c628f803:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    2989c628f80d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    2989c628f813:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c628f818:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628f81c:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    2989c628f823:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    2989c628f827:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c628f82b:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    2989c628f835:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    2989c628f839:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    2989c628f83f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    2989c628f843:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    2989c628f848:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    2989c628f852:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    2989c628f856:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    2989c628f85d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    2989c628f861:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    2989c628f865:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    2989c628f869:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628f86d:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    2989c628f873:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c628f878:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    2989c628f87c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    2989c628f880:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    2989c628f885:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    2989c628f88a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    2989c628f88e:	0f 87 09 00 00 00                               	ja     0x2989c628f89d
    2989c628f894:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    2989c628f898:	e9 04 00 00 00                                  	jmp    0x2989c628f8a1
    2989c628f89d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c628f8a1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c628f8a6:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    2989c628f8aa:	0f 87 09 00 00 00                               	ja     0x2989c628f8b9
    2989c628f8b0:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c628f8b4:	e9 05 00 00 00                                  	jmp    0x2989c628f8be
    2989c628f8b9:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    2989c628f8be:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c628f8c3:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c628f8c7:	0f 84 a1 00 00 00                               	je     0x2989c628f96e
    2989c628f8cd:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    2989c628f8d1:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    2989c628f8db:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c628f8df:	0f 87 09 00 00 00                               	ja     0x2989c628f8ee
    2989c628f8e5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c628f8e9:	e9 04 00 00 00                                  	jmp    0x2989c628f8f2
    2989c628f8ee:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c628f8f2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c628f8f6:	0f 87 0a 00 00 00                               	ja     0x2989c628f906
    2989c628f8fc:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c628f901:	e9 05 00 00 00                                  	jmp    0x2989c628f90b
    2989c628f906:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c628f90b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    2989c628f90f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c628f914:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c628f919:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c628f91d:	4c 8b 15 2d f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52d]        # 0x2989c628ee51
    2989c628f924:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c628f929:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c628f92e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    2989c628f932:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    2989c628f93c:	41 83 fb 03                                     	cmp    r11d,0x3
    2989c628f940:	0f 85 04 00 00 00                               	jne    0x2989c628f94a
    2989c628f946:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    2989c628f94a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    2989c628f94f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c628f953:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    2989c628f957:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    2989c628f961:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    2989c628f966:	4d 8b df                                        	mov    r11,r15
    2989c628f969:	e9 cc 00 00 00                                  	jmp    0x2989c628fa3a
    2989c628f96e:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    2989c628f975:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c628f979:	0f 87 09 00 00 00                               	ja     0x2989c628f988
    2989c628f97f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c628f983:	e9 04 00 00 00                                  	jmp    0x2989c628f98c
    2989c628f988:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c628f98c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c628f990:	0f 87 0a 00 00 00                               	ja     0x2989c628f9a0
    2989c628f996:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c628f99b:	e9 05 00 00 00                                  	jmp    0x2989c628f9a5
    2989c628f9a0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c628f9a5:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    2989c628f9af:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    2989c628f9b5:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    2989c628f9ba:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c628f9be:	0f 87 09 00 00 00                               	ja     0x2989c628f9cd
    2989c628f9c4:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c628f9c8:	e9 04 00 00 00                                  	jmp    0x2989c628f9d1
    2989c628f9cd:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    2989c628f9d1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c628f9d5:	0f 87 0a 00 00 00                               	ja     0x2989c628f9e5
    2989c628f9db:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    2989c628f9e0:	e9 05 00 00 00                                  	jmp    0x2989c628f9ea
    2989c628f9e5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c628f9ea:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    2989c628f9f4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c628f9f9:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c628f9fd:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    2989c628fa07:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    2989c628fa0c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c628fa11:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c628fa15:	4c 8b 15 35 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff435]        # 0x2989c628ee51
    2989c628fa1c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c628fa21:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c628fa26:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c628fa2a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c628fa2e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c628fa32:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c628fa36:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    2989c628fa3a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c628fa3f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c628fa43:	4c 8b 15 07 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff407]        # 0x2989c628ee51
    2989c628fa4a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c628fa4f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c628fa54:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c628fa58:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    2989c628fa62:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    2989c628fa6c:	4d 8b c4                                        	mov    r8,r12
    2989c628fa6f:	e9 b4 00 00 00                                  	jmp    0x2989c628fb28
    2989c628fa74:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    2989c628fa7b:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    2989c628fa82:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    2989c628fa86:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    2989c628fa8d:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    2989c628fa91:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    2989c628fa98:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    2989c628fa9f:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    2989c628faa3:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628faa7:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    2989c628faac:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c628fab0:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    2989c628fab7:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    2989c628fabb:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    2989c628fac2:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    2989c628fac6:	c5 fb 11 85 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm0
    2989c628face:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    2989c628fad5:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    2989c628fad9:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    2989c628fadd:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c628fae1:	8d ba 90 00 00 00                               	lea    edi,[rdx+0x90]
    2989c628fae7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628faeb:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c628faee:	8b ca                                           	mov    ecx,edx
    2989c628faf0:	41 8b d0                                        	mov    edx,r8d
    2989c628faf3:	c5 fb 10 8d 30 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
    2989c628fafb:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    2989c628faff:	8b df                                           	mov    ebx,edi
    2989c628fb01:	e8 2a ba ee ff                                  	call   0x2989c617b530
    2989c628fb06:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628fb09:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628fb0d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    2989c628fb17:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c628fb21:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c628fb28:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c628fb2c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    2989c628fb34:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    2989c628fb3d:	0f 85 2a 00 00 00                               	jne    0x2989c628fb6d
    2989c628fb43:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    2989c628fb4d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    2989c628fb57:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    2989c628fb61:	49 8b fb                                        	mov    rdi,r11
    2989c628fb64:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    2989c628fb68:	e9 dd 01 00 00                                  	jmp    0x2989c628fd4a
    2989c628fb6d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    2989c628fb75:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    2989c628fb7d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    2989c628fb85:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    2989c628fb8d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    2989c628fb95:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    2989c628fb9d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    2989c628fba1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c628fba5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    2989c628fbad:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c628fbb1:	4c 8b 15 77 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe077]        # 0x2989c628dc2f
    2989c628fbb8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c628fbbd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c628fbc1:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c628fbc5:	0f 87 04 00 00 00                               	ja     0x2989c628fbcf
    2989c628fbcb:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c628fbcf:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    2989c628fbd7:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    2989c628fbde:	0f 85 28 00 00 00                               	jne    0x2989c628fc0c
    2989c628fbe4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    2989c628fbee:	4c 8b 15 3a e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe03a]        # 0x2989c628dc2f
    2989c628fbf5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c628fbfa:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    2989c628fbfe:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628fc02:	e8 b1 d9 ee ff                                  	call   0x2989c617d5b8
    2989c628fc07:	e9 94 00 00 00                                  	jmp    0x2989c628fca0
    2989c628fc0c:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c628fc10:	0f 84 67 00 00 00                               	je     0x2989c628fc7d
    2989c628fc16:	4d 8b d0                                        	mov    r10,r8
    2989c628fc19:	4d 8b c3                                        	mov    r8,r11
    2989c628fc1c:	4d 8b da                                        	mov    r11,r10
    2989c628fc1f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    2989c628fc29:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    2989c628fc33:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    2989c628fc38:	7a 06                                           	jp     0x2989c628fc40
    2989c628fc3a:	0f 84 2a 00 00 00                               	je     0x2989c628fc6a
    2989c628fc40:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    2989c628fc44:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    2989c628fc49:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    2989c628fc4d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    2989c628fc51:	0f 86 49 00 00 00                               	jbe    0x2989c628fca0
    2989c628fc57:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c628fc5b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c628fc60:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c628fc65:	e9 5b 00 00 00                                  	jmp    0x2989c628fcc5
    2989c628fc6a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c628fc6e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c628fc73:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c628fc78:	e9 44 00 00 00                                  	jmp    0x2989c628fcc1
    2989c628fc7d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    2989c628fc87:	4c 8b 15 a1 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdfa1]        # 0x2989c628dc2f
    2989c628fc8e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c628fc93:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    2989c628fc97:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628fc9b:	e8 18 d9 ee ff                                  	call   0x2989c617d5b8
    2989c628fca0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c628fca4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c628fca9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c628fcae:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    2989c628fcb2:	0f 87 09 00 00 00                               	ja     0x2989c628fcc1
    2989c628fcb8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    2989c628fcbc:	e9 04 00 00 00                                  	jmp    0x2989c628fcc5
    2989c628fcc1:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    2989c628fcc5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c628fcc8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c628fccc:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    2989c628fcd6:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    2989c628fcda:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    2989c628fcde:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    2989c628fce8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    2989c628fced:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    2989c628fcf7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    2989c628fd01:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    2989c628fd0b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    2989c628fd10:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    2989c628fd1a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    2989c628fd24:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    2989c628fd2e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    2989c628fd33:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    2989c628fd3d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    2989c628fd41:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c628fd45:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c628fd4a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    2989c628fd54:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c628fd58:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c628fd5b:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    2989c628fd61:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c628fd64:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    2989c628fd6c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    2989c628fd70:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    2989c628fd74:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    2989c628fd79:	e8 e2 b4 ee ff                                  	call   0x2989c617b260
    2989c628fd7e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c628fd82:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c628fd87:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    2989c628fd8d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c628fd93:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c628fd97:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c628fd9c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c628fda2:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c628fda8:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c628fdad:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    2989c628fdb4:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    2989c628fdbb:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    2989c628fdc2:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    2989c628fdc8:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c628fdd0:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c628fdd8:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c628fde0:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    2989c628fde8:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    2989c628fdef:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c628fdf5:	e9 09 00 00 00                                  	jmp    0x2989c628fe03
    2989c628fdfa:	4c 8b f9                                        	mov    r15,rcx
    2989c628fdfd:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c628fe03:	f6 c3 04                                        	test   bl,0x4
    2989c628fe06:	0f 85 0e 00 00 00                               	jne    0x2989c628fe1a
    2989c628fe0c:	8b d0                                           	mov    edx,eax
    2989c628fe0e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    2989c628fe15:	e9 70 0a 00 00                                  	jmp    0x2989c629088a
    2989c628fe1a:	43 8b 94 04 c8 3c 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0x3cc8]
    2989c628fe22:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    2989c628fe2b:	0f 84 4d 00 00 00                               	je     0x2989c628fe7e
    2989c628fe31:	8b d0                                           	mov    edx,eax
    2989c628fe33:	c1 ea 03                                        	shr    edx,0x3
    2989c628fe36:	83 e2 03                                        	and    edx,0x3
    2989c628fe39:	0b 95 20 fe ff ff                               	or     edx,DWORD PTR [rbp-0x1e0]
    2989c628fe3f:	8b 9d 58 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a8]
    2989c628fe45:	03 d3                                           	add    edx,ebx
    2989c628fe47:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    2989c628fe4c:	8b d8                                           	mov    ebx,eax
    2989c628fe4e:	83 e3 07                                        	and    ebx,0x7
    2989c628fe51:	44 8b d1                                        	mov    r10d,ecx
    2989c628fe54:	8b cb                                           	mov    ecx,ebx
    2989c628fe56:	49 8b df                                        	mov    rbx,r15
    2989c628fe59:	45 8b fa                                        	mov    r15d,r10d
    2989c628fe5c:	d3 e2                                           	shl    edx,cl
    2989c628fe5e:	f6 c2 80                                        	test   dl,0x80
    2989c628fe61:	0f 85 11 00 00 00                               	jne    0x2989c628fe78
    2989c628fe67:	8b d0                                           	mov    edx,eax
    2989c628fe69:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    2989c628fe70:	4c 8b fb                                        	mov    r15,rbx
    2989c628fe73:	e9 12 0a 00 00                                  	jmp    0x2989c629088a
    2989c628fe78:	41 8b cf                                        	mov    ecx,r15d
    2989c628fe7b:	4c 8b fb                                        	mov    r15,rbx
    2989c628fe7e:	48 8b 95 60 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa0]
    2989c628fe85:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    2989c628fe8c:	48 8d 0c 13                                     	lea    rcx,[rbx+rdx*1]
    2989c628fe90:	c4 e1 82 2a c1                                  	vcvtsi2ss xmm0,xmm15,rcx
    2989c628fe95:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    2989c628fe99:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    2989c628fe9d:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    2989c628fea4:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    2989c628feab:	48 8d 14 0b                                     	lea    rdx,[rbx+rcx*1]
    2989c628feaf:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    2989c628feb4:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    2989c628feb9:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    2989c628febe:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    2989c628fec2:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    2989c628fec6:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    2989c628fecb:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    2989c628fecf:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    2989c628fed3:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    2989c628fed8:	0f 83 aa 09 00 00                               	jae    0x2989c6290888
    2989c628fede:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    2989c628fee5:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    2989c628feec:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    2989c628fef3:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    2989c628fef8:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    2989c628fefc:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    2989c628ff00:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    2989c628ff05:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    2989c628ff0b:	0f 85 07 00 00 00                               	jne    0x2989c628ff18
    2989c628ff11:	8b d0                                           	mov    edx,eax
    2989c628ff13:	e9 c3 00 00 00                                  	jmp    0x2989c628ffdb
    2989c628ff18:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    2989c628ff20:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    2989c628ff29:	75 e6                                           	jne    0x2989c628ff11
    2989c628ff2b:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    2989c628ff30:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    2989c628ff34:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    2989c628ff3b:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    2989c628ff3e:	8b d0                                           	mov    edx,eax
    2989c628ff40:	8d 04 93                                        	lea    eax,[rbx+rdx*4]
    2989c628ff43:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    2989c628ff49:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    2989c628ff4e:	2d 00 02 00 00                                  	sub    eax,0x200
    2989c628ff53:	83 f8 08                                        	cmp    eax,0x8
    2989c628ff56:	0f 83 0b 00 00 00                               	jae    0x2989c628ff67
    2989c628ff5c:	4c 8d 15 05 67 00 00                            	lea    r10,[rip+0x6705]        # 0x2989c6296668
    2989c628ff63:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    2989c628ff67:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c628ff6b:	0f 87 6a 00 00 00                               	ja     0x2989c628ffdb
    2989c628ff71:	e9 14 09 00 00                                  	jmp    0x2989c629088a
    2989c628ff76:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c628ff7b:	0f 83 5a 00 00 00                               	jae    0x2989c628ffdb
    2989c628ff81:	e9 04 09 00 00                                  	jmp    0x2989c629088a
    2989c628ff86:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c628ff8b:	0f 8a 4a 00 00 00                               	jp     0x2989c628ffdb
    2989c628ff91:	0f 84 f3 08 00 00                               	je     0x2989c629088a
    2989c628ff97:	e9 3f 00 00 00                                  	jmp    0x2989c628ffdb
    2989c628ff9c:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c628ffa1:	0f 87 34 00 00 00                               	ja     0x2989c628ffdb
    2989c628ffa7:	e9 de 08 00 00                                  	jmp    0x2989c629088a
    2989c628ffac:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c628ffb0:	0f 83 25 00 00 00                               	jae    0x2989c628ffdb
    2989c628ffb6:	e9 cf 08 00 00                                  	jmp    0x2989c629088a
    2989c628ffbb:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c628ffc0:	0f 8a c4 08 00 00                               	jp     0x2989c629088a
    2989c628ffc6:	0f 84 0f 00 00 00                               	je     0x2989c628ffdb
    2989c628ffcc:	e9 b9 08 00 00                                  	jmp    0x2989c629088a
    2989c628ffd1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c628ffd5:	0f 86 af 08 00 00                               	jbe    0x2989c629088a
    2989c628ffdb:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    2989c628ffe0:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    2989c628ffe5:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    2989c628ffea:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    2989c628fff1:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    2989c628fff6:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    2989c628fffa:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    2989c6290001:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    2989c6290009:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    2989c629000e:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    2989c6290012:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    2989c6290017:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    2989c629001e:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    2989c6290022:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6290026:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    2989c629002a:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    2989c629002e:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    2989c6290031:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    2989c629003b:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    2989c6290045:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    2989c629004f:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    2989c6290059:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    2989c629005f:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    2989c6290066:	41 8b bc 1c 34 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x134]
    2989c629006e:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    2989c6290072:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    2989c629007a:	c5 fb 11 8d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm1
    2989c6290082:	c5 fb 11 a5 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm4
    2989c629008a:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    2989c6290092:	c5 fb 11 b5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm6
    2989c629009a:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    2989c62900a2:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    2989c62900aa:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c62900ae:	0f 86 4d 04 00 00                               	jbe    0x2989c6290501
    2989c62900b4:	41 8b bc 1c 30 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x130]
    2989c62900bc:	41 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x130],0x0
    2989c62900c5:	0f 85 0d 00 00 00                               	jne    0x2989c62900d8
    2989c62900cb:	8b c8                                           	mov    ecx,eax
    2989c62900cd:	4d 8b c4                                        	mov    r8,r12
    2989c62900d0:	48 8b fb                                        	mov    rdi,rbx
    2989c62900d3:	e9 e0 04 00 00                                  	jmp    0x2989c62905b8
    2989c62900d8:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    2989c62900de:	44 8d 40 70                                     	lea    r8d,[rax+0x70]
    2989c62900e2:	41 50                                           	push   r8
    2989c62900e4:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    2989c62900eb:	44 8b 85 58 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3a8]
    2989c62900f2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62900f6:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c62900f9:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c62900fc:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    2989c62900ff:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c6290102:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    2989c6290106:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    2989c629010b:	44 8b cf                                        	mov    r9d,edi
    2989c629010e:	e8 05 b1 ee ff                                  	call   0x2989c617b218
    2989c6290113:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6290117:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c629011e:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    2989c6290126:	45 85 db                                        	test   r11d,r11d
    2989c6290129:	0f 85 61 01 00 00                               	jne    0x2989c6290290
    2989c629012f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290132:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    2989c6290137:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    2989c629013d:	0f 84 43 00 00 00                               	je     0x2989c6290186
    2989c6290143:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c6290149:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c629014d:	41 53                                           	push   r11
    2989c629014f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290153:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    2989c6290159:	33 d2                                           	xor    edx,edx
    2989c629015b:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    2989c6290162:	e8 d9 b0 ee ff                                  	call   0x2989c617b240
    2989c6290167:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c629016a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629016e:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c6290175:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c629017f:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6290186:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    2989c629018b:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    2989c6290191:	0f 84 46 00 00 00                               	je     0x2989c62901dd
    2989c6290197:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c629019d:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c62901a1:	41 53                                           	push   r11
    2989c62901a3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62901a7:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    2989c62901ad:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c62901b2:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    2989c62901b9:	e8 82 b0 ee ff                                  	call   0x2989c617b240
    2989c62901be:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c62901c1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c62901c5:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c62901cc:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c62901d6:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c62901dd:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    2989c62901e2:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    2989c62901e8:	0f 84 46 00 00 00                               	je     0x2989c6290234
    2989c62901ee:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c62901f4:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c62901f8:	41 53                                           	push   r11
    2989c62901fa:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62901fe:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    2989c6290204:	ba 02 00 00 00                                  	mov    edx,0x2
    2989c6290209:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    2989c6290210:	e8 2b b0 ee ff                                  	call   0x2989c617b240
    2989c6290215:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290218:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629021c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c6290223:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c629022d:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6290234:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    2989c6290239:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    2989c629023f:	0f 84 73 03 00 00                               	je     0x2989c62905b8
    2989c6290245:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c629024b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c629024f:	41 53                                           	push   r11
    2989c6290251:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290255:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    2989c629025b:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c6290260:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    2989c6290267:	e8 d4 af ee ff                                  	call   0x2989c617b240
    2989c629026c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c629026f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6290273:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c629027a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c6290284:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c629028b:	e9 28 03 00 00                                  	jmp    0x2989c62905b8
    2989c6290290:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290293:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    2989c629029d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    2989c62902a3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c62902a8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c62902ac:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    2989c62902b3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    2989c62902b7:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c62902bb:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    2989c62902c5:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    2989c62902c9:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    2989c62902cf:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    2989c62902d3:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    2989c62902d8:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    2989c62902e2:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    2989c62902e6:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    2989c62902ed:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    2989c62902f1:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    2989c62902f5:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    2989c62902f9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c62902fd:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    2989c6290303:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c6290308:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    2989c629030c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    2989c6290310:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    2989c6290315:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    2989c629031a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    2989c629031e:	0f 87 09 00 00 00                               	ja     0x2989c629032d
    2989c6290324:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    2989c6290328:	e9 04 00 00 00                                  	jmp    0x2989c6290331
    2989c629032d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c6290331:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6290336:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    2989c629033a:	0f 87 09 00 00 00                               	ja     0x2989c6290349
    2989c6290340:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c6290344:	e9 05 00 00 00                                  	jmp    0x2989c629034e
    2989c6290349:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    2989c629034e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c6290353:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c6290357:	0f 84 a1 00 00 00                               	je     0x2989c62903fe
    2989c629035d:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    2989c6290361:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    2989c629036b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c629036f:	0f 87 09 00 00 00                               	ja     0x2989c629037e
    2989c6290375:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c6290379:	e9 04 00 00 00                                  	jmp    0x2989c6290382
    2989c629037e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c6290382:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c6290386:	0f 87 0a 00 00 00                               	ja     0x2989c6290396
    2989c629038c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c6290391:	e9 05 00 00 00                                  	jmp    0x2989c629039b
    2989c6290396:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c629039b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    2989c629039f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c62903a4:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c62903a9:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c62903ad:	4c 8b 15 9d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea9d]        # 0x2989c628ee51
    2989c62903b4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c62903b9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c62903be:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    2989c62903c2:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    2989c62903cc:	41 83 fb 03                                     	cmp    r11d,0x3
    2989c62903d0:	0f 85 04 00 00 00                               	jne    0x2989c62903da
    2989c62903d6:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    2989c62903da:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    2989c62903df:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c62903e3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    2989c62903e7:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    2989c62903f1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    2989c62903f6:	4d 8b dc                                        	mov    r11,r12
    2989c62903f9:	e9 cc 00 00 00                                  	jmp    0x2989c62904ca
    2989c62903fe:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    2989c6290405:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6290409:	0f 87 09 00 00 00                               	ja     0x2989c6290418
    2989c629040f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c6290413:	e9 04 00 00 00                                  	jmp    0x2989c629041c
    2989c6290418:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c629041c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c6290420:	0f 87 0a 00 00 00                               	ja     0x2989c6290430
    2989c6290426:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c629042b:	e9 05 00 00 00                                  	jmp    0x2989c6290435
    2989c6290430:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c6290435:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    2989c629043f:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    2989c6290445:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    2989c629044a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c629044e:	0f 87 09 00 00 00                               	ja     0x2989c629045d
    2989c6290454:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c6290458:	e9 04 00 00 00                                  	jmp    0x2989c6290461
    2989c629045d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    2989c6290461:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c6290465:	0f 87 0a 00 00 00                               	ja     0x2989c6290475
    2989c629046b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    2989c6290470:	e9 05 00 00 00                                  	jmp    0x2989c629047a
    2989c6290475:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c629047a:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    2989c6290484:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6290489:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c629048d:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    2989c6290497:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    2989c629049c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c62904a1:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c62904a5:	4c 8b 15 a5 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a5]        # 0x2989c628ee51
    2989c62904ac:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c62904b1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c62904b6:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c62904ba:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c62904be:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c62904c2:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c62904c6:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    2989c62904ca:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c62904cf:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c62904d3:	4c 8b 15 77 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe977]        # 0x2989c628ee51
    2989c62904da:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c62904df:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c62904e4:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c62904e8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c62904f2:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    2989c62904fc:	e9 b7 00 00 00                                  	jmp    0x2989c62905b8
    2989c6290501:	4c 8b 85 10 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f0]
    2989c6290508:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    2989c629050f:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    2989c6290513:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    2989c629051a:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    2989c629051e:	c4 81 6a 59 74 1c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+r11*1+0x50]
    2989c6290525:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    2989c6290529:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c629052d:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    2989c6290532:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c6290536:	c4 01 7a 10 5c 04 54                            	vmovss xmm11,DWORD PTR [r12+r8*1+0x54]
    2989c629053d:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    2989c6290541:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    2989c6290548:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    2989c629054c:	c5 fb 11 85 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm0
    2989c6290554:	c4 81 6a 59 44 1c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+r11*1+0x54]
    2989c629055b:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    2989c629055f:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    2989c6290563:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c6290567:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    2989c629056e:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    2989c6290574:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290578:	8b c8                                           	mov    ecx,eax
    2989c629057a:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c629057d:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    2989c6290583:	c5 fb 10 8d b0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x150]
    2989c629058b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    2989c629058f:	8b df                                           	mov    ebx,edi
    2989c6290591:	e8 9a af ee ff                                  	call   0x2989c617b530
    2989c6290596:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290599:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629059d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    2989c62905a7:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c62905b1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c62905b8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c62905bc:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    2989c62905c4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    2989c62905cd:	0f 85 2a 00 00 00                               	jne    0x2989c62905fd
    2989c62905d3:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    2989c62905dd:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    2989c62905e7:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    2989c62905f1:	49 8b fb                                        	mov    rdi,r11
    2989c62905f4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    2989c62905f8:	e9 dd 01 00 00                                  	jmp    0x2989c62907da
    2989c62905fd:	c5 fb 10 85 08 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1f8]
    2989c6290605:	c5 fa 59 85 a0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x260]
    2989c629060d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    2989c6290615:	c5 ca 59 b5 50 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1b0]
    2989c629061d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    2989c6290625:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    2989c629062d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    2989c6290631:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c6290635:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    2989c629063d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c6290641:	4c 8b 15 e7 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5e7]        # 0x2989c628dc2f
    2989c6290648:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c629064d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c6290651:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c6290655:	0f 87 04 00 00 00                               	ja     0x2989c629065f
    2989c629065b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c629065f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    2989c6290667:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    2989c629066e:	0f 85 28 00 00 00                               	jne    0x2989c629069c
    2989c6290674:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    2989c629067e:	4c 8b 15 aa d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5aa]        # 0x2989c628dc2f
    2989c6290685:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c629068a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    2989c629068e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290692:	e8 21 cf ee ff                                  	call   0x2989c617d5b8
    2989c6290697:	e9 94 00 00 00                                  	jmp    0x2989c6290730
    2989c629069c:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c62906a0:	0f 84 67 00 00 00                               	je     0x2989c629070d
    2989c62906a6:	4d 8b d0                                        	mov    r10,r8
    2989c62906a9:	4d 8b c3                                        	mov    r8,r11
    2989c62906ac:	4d 8b da                                        	mov    r11,r10
    2989c62906af:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    2989c62906b9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    2989c62906c3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    2989c62906c8:	7a 06                                           	jp     0x2989c62906d0
    2989c62906ca:	0f 84 2a 00 00 00                               	je     0x2989c62906fa
    2989c62906d0:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    2989c62906d4:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    2989c62906d9:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    2989c62906dd:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    2989c62906e1:	0f 86 49 00 00 00                               	jbe    0x2989c6290730
    2989c62906e7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c62906eb:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c62906f0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c62906f5:	e9 5b 00 00 00                                  	jmp    0x2989c6290755
    2989c62906fa:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c62906fe:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6290703:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6290708:	e9 44 00 00 00                                  	jmp    0x2989c6290751
    2989c629070d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    2989c6290717:	4c 8b 15 11 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd511]        # 0x2989c628dc2f
    2989c629071e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c6290723:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    2989c6290727:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629072b:	e8 88 ce ee ff                                  	call   0x2989c617d5b8
    2989c6290730:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6290734:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6290739:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c629073e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    2989c6290742:	0f 87 09 00 00 00                               	ja     0x2989c6290751
    2989c6290748:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    2989c629074c:	e9 04 00 00 00                                  	jmp    0x2989c6290755
    2989c6290751:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    2989c6290755:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290758:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629075c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    2989c6290766:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    2989c629076a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    2989c629076e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    2989c6290778:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    2989c629077d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    2989c6290787:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    2989c6290791:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    2989c629079b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    2989c62907a0:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    2989c62907aa:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    2989c62907b4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    2989c62907be:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    2989c62907c3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    2989c62907cd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    2989c62907d1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c62907d5:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c62907da:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    2989c62907e4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62907e8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c62907eb:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c62907f1:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    2989c62907f7:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    2989c62907ff:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    2989c6290803:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    2989c6290807:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    2989c629080c:	e8 4f aa ee ff                                  	call   0x2989c617b260
    2989c6290811:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c6290815:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c629081a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c6290820:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    2989c6290827:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629082b:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c6290830:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6290836:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c629083c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6290841:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    2989c6290848:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    2989c629084f:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    2989c6290856:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c629085e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c6290866:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c629086e:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    2989c6290876:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    2989c629087d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c6290883:	e9 02 00 00 00                                  	jmp    0x2989c629088a
    2989c6290888:	8b d0                                           	mov    edx,eax
    2989c629088a:	f6 85 68 fd ff ff 08                            	test   BYTE PTR [rbp-0x298],0x8
    2989c6290891:	0f 85 0a 00 00 00                               	jne    0x2989c62908a1
    2989c6290897:	c4 41 79 28 f1                                  	vmovapd xmm14,xmm9
    2989c629089c:	e9 49 57 00 00                                  	jmp    0x2989c6295fea
    2989c62908a1:	43 8b 84 04 c8 3c 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0x3cc8]
    2989c62908a9:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    2989c62908b2:	0f 84 3c 00 00 00                               	je     0x2989c62908f4
    2989c62908b8:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    2989c62908be:	c1 e8 03                                        	shr    eax,0x3
    2989c62908c1:	83 e0 03                                        	and    eax,0x3
    2989c62908c4:	8b 9d 20 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1e0]
    2989c62908ca:	0b d8                                           	or     ebx,eax
    2989c62908cc:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    2989c62908d2:	03 d8                                           	add    ebx,eax
    2989c62908d4:	41 0f b6 1c 1c                                  	movzx  ebx,BYTE PTR [r12+rbx*1]
    2989c62908d9:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    2989c62908df:	83 e0 07                                        	and    eax,0x7
    2989c62908e2:	4c 8b d1                                        	mov    r10,rcx
    2989c62908e5:	8b c8                                           	mov    ecx,eax
    2989c62908e7:	49 8b c2                                        	mov    rax,r10
    2989c62908ea:	d3 e3                                           	shl    ebx,cl
    2989c62908ec:	f6 c3 80                                        	test   bl,0x80
    2989c62908ef:	74 a6                                           	je     0x2989c6290897
    2989c62908f1:	48 8b c8                                        	mov    rcx,rax
    2989c62908f4:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    2989c62908fb:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    2989c6290902:	48 8d 14 03                                     	lea    rdx,[rbx+rax*1]
    2989c6290906:	c4 e1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,rdx
    2989c629090b:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    2989c629090f:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    2989c6290913:	48 8b d1                                        	mov    rdx,rcx
    2989c6290916:	48 8b 8d 50 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3b0]
    2989c629091d:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    2989c6290921:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    2989c6290926:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    2989c629092b:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    2989c6290930:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    2989c6290934:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    2989c6290938:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    2989c629093d:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    2989c6290941:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    2989c6290945:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    2989c629094a:	0f 83 47 ff ff ff                               	jae    0x2989c6290897
    2989c6290950:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    2989c6290957:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    2989c629095e:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    2989c6290965:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    2989c629096a:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    2989c629096e:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    2989c6290972:	43 8b 44 04 68                                  	mov    eax,DWORD PTR [r12+r8*1+0x68]
    2989c6290977:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    2989c629097d:	0f 85 0b 00 00 00                               	jne    0x2989c629098e
    2989c6290983:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    2989c6290989:	e9 c7 00 00 00                                  	jmp    0x2989c6290a55
    2989c629098e:	43 8b 84 04 a4 00 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0xa4]
    2989c6290996:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    2989c629099f:	75 e2                                           	jne    0x2989c6290983
    2989c62909a1:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    2989c62909a6:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    2989c62909aa:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    2989c62909b1:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    2989c62909b4:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    2989c62909ba:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    2989c62909bd:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    2989c62909c3:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    2989c62909c8:	2d 00 02 00 00                                  	sub    eax,0x200
    2989c62909cd:	83 f8 08                                        	cmp    eax,0x8
    2989c62909d0:	0f 83 0b 00 00 00                               	jae    0x2989c62909e1
    2989c62909d6:	4c 8d 15 4b 5c 00 00                            	lea    r10,[rip+0x5c4b]        # 0x2989c6296628
    2989c62909dd:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    2989c62909e1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c62909e5:	0f 87 6a 00 00 00                               	ja     0x2989c6290a55
    2989c62909eb:	e9 a7 fe ff ff                                  	jmp    0x2989c6290897
    2989c62909f0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c62909f5:	0f 83 5a 00 00 00                               	jae    0x2989c6290a55
    2989c62909fb:	e9 97 fe ff ff                                  	jmp    0x2989c6290897
    2989c6290a00:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c6290a05:	0f 8a 4a 00 00 00                               	jp     0x2989c6290a55
    2989c6290a0b:	0f 84 86 fe ff ff                               	je     0x2989c6290897
    2989c6290a11:	e9 3f 00 00 00                                  	jmp    0x2989c6290a55
    2989c6290a16:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c6290a1b:	0f 87 34 00 00 00                               	ja     0x2989c6290a55
    2989c6290a21:	e9 71 fe ff ff                                  	jmp    0x2989c6290897
    2989c6290a26:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c6290a2a:	0f 83 25 00 00 00                               	jae    0x2989c6290a55
    2989c6290a30:	e9 62 fe ff ff                                  	jmp    0x2989c6290897
    2989c6290a35:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    2989c6290a3a:	0f 8a 57 fe ff ff                               	jp     0x2989c6290897
    2989c6290a40:	0f 84 0f 00 00 00                               	je     0x2989c6290a55
    2989c6290a46:	e9 4c fe ff ff                                  	jmp    0x2989c6290897
    2989c6290a4b:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    2989c6290a4f:	0f 86 42 fe ff ff                               	jbe    0x2989c6290897
    2989c6290a55:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    2989c6290a5a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    2989c6290a5f:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    2989c6290a64:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    2989c6290a6b:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    2989c6290a70:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    2989c6290a74:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    2989c6290a7b:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    2989c6290a83:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    2989c6290a88:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    2989c6290a8c:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    2989c6290a91:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    2989c6290a98:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    2989c6290a9c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6290aa0:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    2989c6290aa4:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    2989c6290aa8:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    2989c6290aab:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    2989c6290ab5:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    2989c6290abf:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    2989c6290ac9:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    2989c6290ad3:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    2989c6290ad9:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6290ae0:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    2989c6290ae8:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    2989c6290aec:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    2989c6290af4:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    2989c6290afc:	c5 fb 11 a5 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm4
    2989c6290b04:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    2989c6290b0c:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    2989c6290b14:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    2989c6290b1c:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    2989c6290b24:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c6290b28:	0f 86 4b 04 00 00                               	jbe    0x2989c6290f79
    2989c6290b2e:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    2989c6290b36:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    2989c6290b3f:	0f 85 0a 00 00 00                               	jne    0x2989c6290b4f
    2989c6290b45:	8b c8                                           	mov    ecx,eax
    2989c6290b47:	4d 8b c4                                        	mov    r8,r12
    2989c6290b4a:	e9 e0 04 00 00                                  	jmp    0x2989c629102f
    2989c6290b4f:	44 8d 80 90 00 00 00                            	lea    r8d,[rax+0x90]
    2989c6290b56:	44 8d 58 70                                     	lea    r11d,[rax+0x70]
    2989c6290b5a:	41 53                                           	push   r11
    2989c6290b5c:	4c 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r8
    2989c6290b63:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290b67:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c6290b6a:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c6290b6d:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    2989c6290b70:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c6290b73:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    2989c6290b77:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    2989c6290b7c:	45 8b c8                                        	mov    r9d,r8d
    2989c6290b7f:	e8 94 a6 ee ff                                  	call   0x2989c617b218
    2989c6290b84:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6290b88:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6290b8f:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    2989c6290b97:	45 85 db                                        	test   r11d,r11d
    2989c6290b9a:	0f 85 62 01 00 00                               	jne    0x2989c6290d02
    2989c6290ba0:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290ba3:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    2989c6290ba8:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    2989c6290bae:	0f 84 43 00 00 00                               	je     0x2989c6290bf7
    2989c6290bb4:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c6290bba:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c6290bbe:	41 53                                           	push   r11
    2989c6290bc0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290bc4:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    2989c6290bca:	33 d2                                           	xor    edx,edx
    2989c6290bcc:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    2989c6290bd3:	e8 68 a6 ee ff                                  	call   0x2989c617b240
    2989c6290bd8:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290bdb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6290bdf:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c6290be6:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c6290bf0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6290bf7:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    2989c6290bfc:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    2989c6290c02:	0f 84 46 00 00 00                               	je     0x2989c6290c4e
    2989c6290c08:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c6290c0e:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c6290c12:	41 53                                           	push   r11
    2989c6290c14:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290c18:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    2989c6290c1e:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c6290c23:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    2989c6290c2a:	e8 11 a6 ee ff                                  	call   0x2989c617b240
    2989c6290c2f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290c32:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6290c36:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c6290c3d:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c6290c47:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6290c4e:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    2989c6290c53:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    2989c6290c59:	0f 84 46 00 00 00                               	je     0x2989c6290ca5
    2989c6290c5f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c6290c65:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c6290c69:	41 53                                           	push   r11
    2989c6290c6b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290c6f:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    2989c6290c75:	ba 02 00 00 00                                  	mov    edx,0x2
    2989c6290c7a:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    2989c6290c81:	e8 ba a5 ee ff                                  	call   0x2989c617b240
    2989c6290c86:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290c89:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6290c8d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    2989c6290c94:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    2989c6290c9e:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6290ca5:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    2989c6290caa:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    2989c6290cb0:	0f 84 79 03 00 00                               	je     0x2989c629102f
    2989c6290cb6:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    2989c6290cbc:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    2989c6290cc0:	41 53                                           	push   r11
    2989c6290cc2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290cc6:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    2989c6290ccc:	ba 03 00 00 00                                  	mov    edx,0x3
    2989c6290cd1:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    2989c6290cd8:	e8 63 a5 ee ff                                  	call   0x2989c617b240
    2989c6290cdd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290ce0:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    2989c6290ce4:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    2989c6290cea:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    2989c6290cf3:	4c 8b c7                                        	mov    r8,rdi
    2989c6290cf6:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6290cfd:	e9 2d 03 00 00                                  	jmp    0x2989c629102f
    2989c6290d02:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    2989c6290d05:	4d 8b e0                                        	mov    r12,r8
    2989c6290d08:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    2989c6290d12:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    2989c6290d18:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c6290d1d:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c6290d21:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    2989c6290d28:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    2989c6290d2c:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c6290d30:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    2989c6290d3a:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    2989c6290d3e:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    2989c6290d44:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    2989c6290d48:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    2989c6290d4d:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    2989c6290d57:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    2989c6290d5b:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    2989c6290d62:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    2989c6290d66:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    2989c6290d6a:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    2989c6290d6e:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c6290d72:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    2989c6290d78:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    2989c6290d7d:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    2989c6290d81:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    2989c6290d85:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    2989c6290d8a:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    2989c6290d8f:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    2989c6290d93:	0f 87 09 00 00 00                               	ja     0x2989c6290da2
    2989c6290d99:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    2989c6290d9d:	e9 04 00 00 00                                  	jmp    0x2989c6290da6
    2989c6290da2:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c6290da6:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6290dab:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    2989c6290daf:	0f 87 09 00 00 00                               	ja     0x2989c6290dbe
    2989c6290db5:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c6290db9:	e9 05 00 00 00                                  	jmp    0x2989c6290dc3
    2989c6290dbe:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    2989c6290dc3:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c6290dc8:	41 83 fb 01                                     	cmp    r11d,0x1
    2989c6290dcc:	0f 84 a1 00 00 00                               	je     0x2989c6290e73
    2989c6290dd2:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    2989c6290dd6:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    2989c6290de0:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6290de4:	0f 87 09 00 00 00                               	ja     0x2989c6290df3
    2989c6290dea:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c6290dee:	e9 04 00 00 00                                  	jmp    0x2989c6290df7
    2989c6290df3:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c6290df7:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c6290dfb:	0f 87 0a 00 00 00                               	ja     0x2989c6290e0b
    2989c6290e01:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c6290e06:	e9 05 00 00 00                                  	jmp    0x2989c6290e10
    2989c6290e0b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c6290e10:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    2989c6290e14:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6290e19:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c6290e1e:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c6290e22:	4c 8b 15 28 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe028]        # 0x2989c628ee51
    2989c6290e29:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c6290e2e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c6290e33:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    2989c6290e37:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    2989c6290e41:	41 83 fb 03                                     	cmp    r11d,0x3
    2989c6290e45:	0f 85 04 00 00 00                               	jne    0x2989c6290e4f
    2989c6290e4b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    2989c6290e4f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    2989c6290e54:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c6290e58:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    2989c6290e5c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    2989c6290e66:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    2989c6290e6b:	4d 8b df                                        	mov    r11,r15
    2989c6290e6e:	e9 cc 00 00 00                                  	jmp    0x2989c6290f3f
    2989c6290e73:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    2989c6290e7a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6290e7e:	0f 87 09 00 00 00                               	ja     0x2989c6290e8d
    2989c6290e84:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    2989c6290e88:	e9 04 00 00 00                                  	jmp    0x2989c6290e91
    2989c6290e8d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    2989c6290e91:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c6290e95:	0f 87 0a 00 00 00                               	ja     0x2989c6290ea5
    2989c6290e9b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    2989c6290ea0:	e9 05 00 00 00                                  	jmp    0x2989c6290eaa
    2989c6290ea5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c6290eaa:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    2989c6290eb4:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    2989c6290eba:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    2989c6290ebf:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    2989c6290ec3:	0f 87 09 00 00 00                               	ja     0x2989c6290ed2
    2989c6290ec9:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c6290ecd:	e9 04 00 00 00                                  	jmp    0x2989c6290ed6
    2989c6290ed2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    2989c6290ed6:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    2989c6290eda:	0f 87 0a 00 00 00                               	ja     0x2989c6290eea
    2989c6290ee0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    2989c6290ee5:	e9 05 00 00 00                                  	jmp    0x2989c6290eef
    2989c6290eea:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    2989c6290eef:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    2989c6290ef9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6290efe:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c6290f02:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    2989c6290f0c:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    2989c6290f11:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c6290f16:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c6290f1a:	4c 8b 15 30 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf30]        # 0x2989c628ee51
    2989c6290f21:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c6290f26:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c6290f2b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c6290f2f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c6290f33:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    2989c6290f37:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    2989c6290f3b:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    2989c6290f3f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c6290f44:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    2989c6290f48:	4c 8b 15 02 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf02]        # 0x2989c628ee51
    2989c6290f4f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6290f54:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6290f59:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    2989c6290f5d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    2989c6290f67:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    2989c6290f71:	4d 8b c4                                        	mov    r8,r12
    2989c6290f74:	e9 b6 00 00 00                                  	jmp    0x2989c629102f
    2989c6290f79:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    2989c6290f80:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    2989c6290f87:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    2989c6290f8b:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    2989c6290f92:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    2989c6290f96:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    2989c6290f9d:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    2989c6290fa4:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    2989c6290fa8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c6290fac:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    2989c6290fb1:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c6290fb5:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    2989c6290fbc:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    2989c6290fc0:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    2989c6290fc7:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    2989c6290fcb:	c5 fb 11 85 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm0
    2989c6290fd3:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    2989c6290fda:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    2989c6290fde:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    2989c6290fe2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c6290fe6:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    2989c6290fec:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6290ff0:	8b c8                                           	mov    ecx,eax
    2989c6290ff2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c6290ff5:	41 8b d0                                        	mov    edx,r8d
    2989c6290ff8:	c5 fb 10 8d a0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x260]
    2989c6291000:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    2989c6291004:	8b df                                           	mov    ebx,edi
    2989c6291006:	e8 25 a5 ee ff                                  	call   0x2989c617b530
    2989c629100b:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    2989c629100e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6291012:	c4 c1 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x90]
    2989c629101c:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    2989c6291026:	8b cb                                           	mov    ecx,ebx
    2989c6291028:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c629102f:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c6291033:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    2989c629103b:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    2989c6291044:	0f 85 2c 00 00 00                               	jne    0x2989c6291076
    2989c629104a:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    2989c6291054:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    2989c629105e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    2989c6291068:	49 8b fb                                        	mov    rdi,r11
    2989c629106b:	8b d9                                           	mov    ebx,ecx
    2989c629106d:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    2989c6291071:	e9 dd 01 00 00                                  	jmp    0x2989c6291253
    2989c6291076:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    2989c629107e:	c5 fa 59 85 30 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1d0]
    2989c6291086:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    2989c629108e:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    2989c6291096:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    2989c629109e:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    2989c62910a6:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    2989c62910aa:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    2989c62910ae:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    2989c62910b6:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    2989c62910ba:	4c 8b 15 6e cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb6e]        # 0x2989c628dc2f
    2989c62910c1:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c62910c6:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    2989c62910ca:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    2989c62910ce:	0f 87 04 00 00 00                               	ja     0x2989c62910d8
    2989c62910d4:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c62910d8:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    2989c62910e0:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    2989c62910e7:	0f 85 28 00 00 00                               	jne    0x2989c6291115
    2989c62910ed:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    2989c62910f7:	4c 8b 15 31 cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb31]        # 0x2989c628dc2f
    2989c62910fe:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c6291103:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    2989c6291107:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629110b:	e8 a8 c4 ee ff                                  	call   0x2989c617d5b8
    2989c6291110:	e9 94 00 00 00                                  	jmp    0x2989c62911a9
    2989c6291115:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c6291119:	0f 84 67 00 00 00                               	je     0x2989c6291186
    2989c629111f:	4d 8b d0                                        	mov    r10,r8
    2989c6291122:	4d 8b c3                                        	mov    r8,r11
    2989c6291125:	4d 8b da                                        	mov    r11,r10
    2989c6291128:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    2989c6291132:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    2989c629113c:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    2989c6291141:	7a 06                                           	jp     0x2989c6291149
    2989c6291143:	0f 84 2a 00 00 00                               	je     0x2989c6291173
    2989c6291149:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    2989c629114d:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    2989c6291152:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    2989c6291156:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    2989c629115a:	0f 86 49 00 00 00                               	jbe    0x2989c62911a9
    2989c6291160:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6291164:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c6291169:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c629116e:	e9 5b 00 00 00                                  	jmp    0x2989c62911ce
    2989c6291173:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c6291177:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c629117c:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c6291181:	e9 44 00 00 00                                  	jmp    0x2989c62911ca
    2989c6291186:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    2989c6291190:	4c 8b 15 98 ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca98]        # 0x2989c628dc2f
    2989c6291197:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    2989c629119c:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    2989c62911a0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62911a4:	e8 0f c4 ee ff                                  	call   0x2989c617d5b8
    2989c62911a9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    2989c62911ad:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    2989c62911b2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    2989c62911b7:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    2989c62911bb:	0f 87 09 00 00 00                               	ja     0x2989c62911ca
    2989c62911c1:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    2989c62911c5:	e9 04 00 00 00                                  	jmp    0x2989c62911ce
    2989c62911ca:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    2989c62911ce:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    2989c62911d1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c62911d5:	c4 c1 42 59 b4 18 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rbx*1+0x190]
    2989c62911df:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    2989c62911e3:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    2989c62911e7:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    2989c62911f1:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    2989c62911f6:	c4 c1 7a 11 b4 18 90 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x190],xmm6
    2989c6291200:	c4 41 42 59 8c 18 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rbx*1+0x194]
    2989c629120a:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    2989c6291214:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    2989c6291219:	c4 41 7a 11 8c 18 94 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x194],xmm9
    2989c6291223:	c4 c1 42 59 bc 18 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rbx*1+0x198]
    2989c629122d:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    2989c6291237:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    2989c629123c:	c4 c1 7a 11 bc 18 98 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x198],xmm7
    2989c6291246:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    2989c629124a:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c629124e:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c6291253:	c4 c1 7a 10 ac 18 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rbx*1+0x19c]
    2989c629125d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6291261:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6291264:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    2989c629126a:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    2989c6291270:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    2989c6291278:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    2989c629127c:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    2989c6291280:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    2989c6291285:	e8 d6 9f ee ff                                  	call   0x2989c617b260
    2989c629128a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c629128e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c6291293:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c6291297:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c629129c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c62912a2:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c62912a8:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c62912ad:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c62912b5:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c62912bd:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c62912c5:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c62912cd:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c62912d3:	e9 12 4d 00 00                                  	jmp    0x2989c6295fea
    2989c62912d8:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    2989c62912dc:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    2989c62912e3:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c62912e7:	4e 89 7c 02 70                                  	mov    QWORD PTR [rdx+r8*1+0x70],r15
    2989c62912ec:	4a 8d 0c 3f                                     	lea    rcx,[rdi+r15*1]
    2989c62912f0:	4a 89 8c 02 80 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x80],rcx
    2989c62912f8:	49 8b df                                        	mov    rbx,r15
    2989c62912fb:	48 2b 9d d0 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x330]
    2989c6291302:	4a 89 5c 02 78                                  	mov    QWORD PTR [rdx+r8*1+0x78],rbx
    2989c6291307:	4c 8d 1c 1f                                     	lea    r11,[rdi+rbx*1]
    2989c629130b:	4e 89 9c 02 88 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x88],r11
    2989c6291313:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    2989c629131a:	4a 89 74 02 50                                  	mov    QWORD PTR [rdx+r8*1+0x50],rsi
    2989c629131f:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    2989c6291326:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    2989c629132a:	4e 89 64 02 60                                  	mov    QWORD PTR [rdx+r8*1+0x60],r12
    2989c629132f:	48 8b c6                                        	mov    rax,rsi
    2989c6291332:	48 2b 85 f0 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x310]
    2989c6291339:	4a 89 44 02 58                                  	mov    QWORD PTR [rdx+r8*1+0x58],rax
    2989c629133e:	4c 8d 0c 07                                     	lea    r9,[rdi+rax*1]
    2989c6291342:	4e 89 4c 02 68                                  	mov    QWORD PTR [rdx+r8*1+0x68],r9
    2989c6291347:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    2989c629134b:	c4 a1 7a 7f 44 02 40                            	vmovdqu XMMWORD PTR [rdx+r8*1+0x40],xmm0
    2989c6291352:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    2989c6291359:	48 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rbx
    2989c6291360:	4c 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r11
    2989c6291367:	4c 89 a5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r12
    2989c629136e:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    2989c6291375:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    2989c629137c:	33 ff                                           	xor    edi,edi
    2989c629137e:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    2989c6291382:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c6291386:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    2989c629138a:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    2989c6291390:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    2989c6291395:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    2989c629139c:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    2989c62913a3:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    2989c62913aa:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    2989c62913af:	e9 10 00 00 00                                  	jmp    0x2989c62913c4
    2989c62913b4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62913bd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    2989c62913c0:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    2989c62913c4:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c62913c9:	0f 85 63 4f 00 00                               	jne    0x2989c6296332
    2989c62913cf:	8b cf                                           	mov    ecx,edi
    2989c62913d1:	41 bf 01 00 00 00                               	mov    r15d,0x1
    2989c62913d7:	41 d3 e7                                        	shl    r15d,cl
    2989c62913da:	44 85 bd 68 fd ff ff                            	test   DWORD PTR [rbp-0x298],r15d
    2989c62913e1:	0f 84 69 01 00 00                               	je     0x2989c6291550
    2989c62913e7:	41 8d 4c b8 40                                  	lea    ecx,[r8+rdi*4+0x40]
    2989c62913ec:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    2989c62913f3:	45 8d 7c f8 70                                  	lea    r15d,[r8+rdi*8+0x70]
    2989c62913f8:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    2989c62913fc:	c4 41 82 2a cf                                  	vcvtsi2ss xmm9,xmm15,r15
    2989c6291401:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    2989c6291406:	c4 41 42 5c d1                                  	vsubss xmm10,xmm7,xmm9
    2989c629140b:	45 8d 7c f8 50                                  	lea    r15d,[r8+rdi*8+0x50]
    2989c6291410:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    2989c6291414:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    2989c6291419:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    2989c629141e:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    2989c6291423:	c4 21 2a 59 54 0a 18                            	vmulss xmm10,xmm10,DWORD PTR [rdx+r9*1+0x18]
    2989c629142a:	c4 21 32 59 4c 22 18                            	vmulss xmm9,xmm9,DWORD PTR [rdx+r12*1+0x18]
    2989c6291431:	c5 22 59 5c 02 18                               	vmulss xmm11,xmm11,DWORD PTR [rdx+rax*1+0x18]
    2989c6291437:	c4 41 32 58 cb                                  	vaddss xmm9,xmm9,xmm11
    2989c629143c:	c4 41 2a 58 c9                                  	vaddss xmm9,xmm10,xmm9
    2989c6291441:	c4 41 72 58 c9                                  	vaddss xmm9,xmm1,xmm9
    2989c6291446:	c5 7a 11 0c 0a                                  	vmovss DWORD PTR [rdx+rcx*1],xmm9
    2989c629144b:	44 8b 7c 32 68                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0x68]
    2989c6291450:	83 7c 32 68 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x68],0x0
    2989c6291455:	0f 84 f5 00 00 00                               	je     0x2989c6291550
    2989c629145b:	44 8b bc 32 a4 00 00 00                         	mov    r15d,DWORD PTR [rdx+rsi*1+0xa4]
    2989c6291463:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    2989c629146b:	0f 85 df 00 00 00                               	jne    0x2989c6291550
    2989c6291471:	44 8b 7c 32 0c                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0xc]
    2989c6291476:	8b 0c 32                                        	mov    ecx,DWORD PTR [rdx+rsi*1]
    2989c6291479:	44 8b c7                                        	mov    r8d,edi
    2989c629147c:	41 d1 e8                                        	shr    r8d,1
    2989c629147f:	45 03 c3                                        	add    r8d,r11d
    2989c6291482:	44 0f af c1                                     	imul   r8d,ecx
    2989c6291486:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    2989c629148a:	45 8d 04 98                                     	lea    r8d,[r8+rbx*4]
    2989c629148e:	44 8b ff                                        	mov    r15d,edi
    2989c6291491:	41 83 e7 01                                     	and    r15d,0x1
    2989c6291495:	47 8d 04 b8                                     	lea    r8d,[r8+r15*4]
    2989c6291499:	c4 21 7a 10 14 02                               	vmovss xmm10,DWORD PTR [rdx+r8*1]
    2989c629149f:	44 8b 44 32 6c                                  	mov    r8d,DWORD PTR [rdx+rsi*1+0x6c]
    2989c62914a4:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    2989c62914ab:	41 83 f8 08                                     	cmp    r8d,0x8
    2989c62914af:	0f 83 0b 00 00 00                               	jae    0x2989c62914c0
    2989c62914b5:	4c 8d 15 2c 51 00 00                            	lea    r10,[rip+0x512c]        # 0x2989c62965e8
    2989c62914bc:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    2989c62914c0:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    2989c62914c5:	0f 87 85 00 00 00                               	ja     0x2989c6291550
    2989c62914cb:	e9 67 00 00 00                                  	jmp    0x2989c6291537
    2989c62914d0:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c62914d5:	0f 83 75 00 00 00                               	jae    0x2989c6291550
    2989c62914db:	e9 57 00 00 00                                  	jmp    0x2989c6291537
    2989c62914e0:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    2989c62914e5:	0f 8a 65 00 00 00                               	jp     0x2989c6291550
    2989c62914eb:	0f 84 46 00 00 00                               	je     0x2989c6291537
    2989c62914f1:	e9 5a 00 00 00                                  	jmp    0x2989c6291550
    2989c62914f6:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    2989c62914fb:	0f 87 4f 00 00 00                               	ja     0x2989c6291550
    2989c6291501:	e9 31 00 00 00                                  	jmp    0x2989c6291537
    2989c6291506:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    2989c629150b:	0f 83 3f 00 00 00                               	jae    0x2989c6291550
    2989c6291511:	e9 21 00 00 00                                  	jmp    0x2989c6291537
    2989c6291516:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    2989c629151b:	0f 8a 16 00 00 00                               	jp     0x2989c6291537
    2989c6291521:	0f 84 29 00 00 00                               	je     0x2989c6291550
    2989c6291527:	e9 0b 00 00 00                                  	jmp    0x2989c6291537
    2989c629152c:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    2989c6291531:	0f 87 19 00 00 00                               	ja     0x2989c6291550
    2989c6291537:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    2989c629153e:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    2989c6291542:	44 23 bd 68 fd ff ff                            	and    r15d,DWORD PTR [rbp-0x298]
    2989c6291549:	4c 89 bd 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r15
    2989c6291550:	83 c7 01                                        	add    edi,0x1
    2989c6291553:	83 ff 04                                        	cmp    edi,0x4
    2989c6291556:	0f 85 64 fe ff ff                               	jne    0x2989c62913c0
    2989c629155c:	8b bd 68 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x298]
    2989c6291562:	85 ff                                           	test   edi,edi
    2989c6291564:	0f 85 1d 00 00 00                               	jne    0x2989c6291587
    2989c629156a:	4c 8b c6                                        	mov    r8,rsi
    2989c629156d:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    2989c6291571:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c6291575:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    2989c6291579:	4c 8b e2                                        	mov    r12,rdx
    2989c629157c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c6291582:	e9 63 4a 00 00                                  	jmp    0x2989c6295fea
    2989c6291587:	c4 61 82 2a 8d 60 ff ff ff                      	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0xa0]
    2989c6291590:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    2989c6291595:	c4 61 82 2a 95 b0 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x150]
    2989c629159e:	c4 43 31 21 ca 10                               	vinsertps xmm9,xmm9,xmm10,0x10
    2989c62915a4:	c4 61 82 2a 95 b8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x148]
    2989c62915ad:	c4 43 31 21 ca 20                               	vinsertps xmm9,xmm9,xmm10,0x20
    2989c62915b3:	c4 61 82 2a 95 c8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x138]
    2989c62915bc:	c4 43 31 21 ca 30                               	vinsertps xmm9,xmm9,xmm10,0x30
    2989c62915c2:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    2989c62915ca:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    2989c62915cf:	4c 8d 42 1c                                     	lea    r8,[rdx+0x1c]
    2989c62915d3:	c4 02 79 18 1c 20                               	vbroadcastss xmm11,DWORD PTR [r8+r12*1]
    2989c62915d9:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    2989c62915de:	c4 e1 82 2a 95 50 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xb0]
    2989c62915e7:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    2989c62915ec:	c4 e1 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0x100]
    2989c62915f5:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    2989c62915fb:	c4 e1 82 2a 9d 18 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe8]
    2989c6291604:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    2989c629160a:	c4 e1 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe0]
    2989c6291613:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    2989c6291619:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    2989c629161d:	c4 c2 79 18 1c 00                               	vbroadcastss xmm3,DWORD PTR [r8+rax*1]
    2989c6291623:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    2989c6291627:	c5 a0 58 e3                                     	vaddps xmm4,xmm11,xmm3
    2989c629162b:	4c 8b 15 1f d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd81f]        # 0x2989c628ee51
    2989c6291632:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6291637:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c629163b:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    2989c6291640:	c5 30 5c ca                                     	vsubps xmm9,xmm9,xmm2
    2989c6291644:	c4 82 79 18 14 08                               	vbroadcastss xmm2,DWORD PTR [r8+r9*1]
    2989c629164a:	c5 30 59 ca                                     	vmulps xmm9,xmm9,xmm2
    2989c629164e:	c4 c1 58 58 d1                                  	vaddps xmm2,xmm4,xmm9
    2989c6291653:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c6291657:	c5 e8 c2 f4 02                                  	vcmpleps xmm6,xmm2,xmm4
    2989c629165c:	c5 78 50 c6                                     	vmovmskps r8d,xmm6
    2989c6291660:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    2989c6291664:	44 23 c7                                        	and    r8d,edi
    2989c6291667:	0f 85 16 00 00 00                               	jne    0x2989c6291683
    2989c629166d:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    2989c6291674:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    2989c6291677:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c629167e:	e9 7c 2a 00 00                                  	jmp    0x2989c62940ff
    2989c6291683:	c5 d0 5e f2                                     	vdivps xmm6,xmm5,xmm2
    2989c6291687:	48 8d 7a 2c                                     	lea    rdi,[rdx+0x2c]
    2989c629168b:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    2989c6291691:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    2989c6291695:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    2989c629169b:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    2989c629169f:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    2989c62916a3:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    2989c62916a9:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    2989c62916ad:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    2989c62916b1:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    2989c62916b5:	48 8d 7a 28                                     	lea    rdi,[rdx+0x28]
    2989c62916b9:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    2989c62916bf:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    2989c62916c3:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    2989c62916cb:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    2989c62916d1:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    2989c62916d5:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    2989c62916d9:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    2989c62916df:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    2989c62916e3:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    2989c62916e7:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    2989c62916eb:	48 8d 7a 24                                     	lea    rdi,[rdx+0x24]
    2989c62916ef:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    2989c62916f5:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    2989c62916f9:	c5 f8 11 bd a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm7
    2989c6291701:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    2989c6291707:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    2989c629170b:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    2989c629170f:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    2989c6291715:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    2989c6291719:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    2989c629171d:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    2989c6291721:	48 8d 7a 20                                     	lea    rdi,[rdx+0x20]
    2989c6291725:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    2989c629172b:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    2989c629172f:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    2989c6291737:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    2989c629173d:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    2989c6291741:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    2989c6291745:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    2989c629174b:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    2989c629174f:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    2989c6291753:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    2989c6291757:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c629175e:	44 8b bc 3a 34 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x134]
    2989c6291766:	41 83 ef 01                                     	sub    r15d,0x1
    2989c629176a:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    2989c6291771:	41 83 ff 01                                     	cmp    r15d,0x1
    2989c6291775:	0f 86 5a 17 00 00                               	jbe    0x2989c6292ed5
    2989c629177b:	44 8b bc 3a 38 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x138]
    2989c6291783:	83 bc 3a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0x138],0x0
    2989c629178b:	0f 85 24 00 00 00                               	jne    0x2989c62917b5
    2989c6291791:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    2989c6291799:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    2989c629179d:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    2989c62917a5:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    2989c62917ad:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    2989c62917b0:	e9 d7 28 00 00                                  	jmp    0x2989c629408c
    2989c62917b5:	4d 8b f8                                        	mov    r15,r8
    2989c62917b8:	41 83 e7 08                                     	and    r15d,0x8
    2989c62917bc:	49 8b c8                                        	mov    rcx,r8
    2989c62917bf:	83 e1 04                                        	and    ecx,0x4
    2989c62917c2:	4c 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r15
    2989c62917c9:	4d 8b f8                                        	mov    r15,r8
    2989c62917cc:	41 83 e7 02                                     	and    r15d,0x2
    2989c62917d0:	41 83 e0 01                                     	and    r8d,0x1
    2989c62917d4:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    2989c62917dc:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    2989c62917e4:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    2989c62917ec:	c5 78 11 8d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm9
    2989c62917f4:	c5 f8 11 9d 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm3
    2989c62917fc:	c5 78 11 9d f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm11
    2989c6291804:	c5 f8 11 ad d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm5
    2989c629180c:	c5 f8 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm4
    2989c6291814:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    2989c629181b:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    2989c6291822:	4c 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r8
    2989c6291829:	45 33 c0                                        	xor    r8d,r8d
    2989c629182c:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c6291830:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    2989c6291838:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    2989c6291840:	e9 6a 00 00 00                                  	jmp    0x2989c62918af
    2989c6291845:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629184e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6291857:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6291860:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6291869:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6291872:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c629187b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    2989c6291880:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    2989c6291888:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    2989c6291890:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6291897:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    2989c629189f:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    2989c62918a7:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    2989c62918af:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c62918b2:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    2989c62918b8:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    2989c62918bf:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    2989c62918c6:	4c 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r8
    2989c62918cd:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c62918d2:	0f 85 e4 4a 00 00                               	jne    0x2989c62963bc
    2989c62918d8:	44 8b 8c 3a 3c 01 00 00                         	mov    r9d,DWORD PTR [rdx+rdi*1+0x13c]
    2989c62918e0:	41 8b c8                                        	mov    ecx,r8d
    2989c62918e3:	41 d3 e9                                        	shr    r9d,cl
    2989c62918e6:	41 f6 c1 01                                     	test   r9b,0x1
    2989c62918ea:	0f 85 2d 00 00 00                               	jne    0x2989c629191d
    2989c62918f0:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    2989c62918f7:	45 8b c8                                        	mov    r9d,r8d
    2989c62918fa:	41 c1 e1 06                                     	shl    r9d,0x6
    2989c62918fe:	41 03 c9                                        	add    ecx,r9d
    2989c6291901:	c5 fa 7f 6c 0a 30                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x30],xmm5
    2989c6291907:	c5 fa 7f 6c 0a 20                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x20],xmm5
    2989c629190d:	c5 fa 7f 6c 0a 10                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x10],xmm5
    2989c6291913:	c5 fa 7f 2c 0a                                  	vmovdqu XMMWORD PTR [rdx+rcx*1],xmm5
    2989c6291918:	e9 11 12 00 00                                  	jmp    0x2989c6292b2e
    2989c629191d:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    2989c6291924:	45 8b c8                                        	mov    r9d,r8d
    2989c6291927:	41 c1 e1 06                                     	shl    r9d,0x6
    2989c629192b:	44 03 c9                                        	add    r9d,ecx
    2989c629192e:	41 6b c8 4c                                     	imul   ecx,r8d,0x4c
    2989c6291932:	03 c8                                           	add    ecx,eax
    2989c6291934:	8b 7c 0a 38                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x38]
    2989c6291938:	83 7c 0a 38 00                                  	cmp    DWORD PTR [rdx+rcx*1+0x38],0x0
    2989c629193d:	0f 85 a2 11 00 00                               	jne    0x2989c6292ae5
    2989c6291943:	41 8b f8                                        	mov    edi,r8d
    2989c6291946:	c1 e7 04                                        	shl    edi,0x4
    2989c6291949:	46 8d 04 27                                     	lea    r8d,[rdi+r12*1]
    2989c629194d:	4c 8d 62 04                                     	lea    r12,[rdx+0x4]
    2989c6291951:	c4 02 79 18 04 04                               	vbroadcastss xmm8,DWORD PTR [r12+r8*1]
    2989c6291957:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    2989c629195c:	41 8d 04 3f                                     	lea    eax,[r15+rdi*1]
    2989c6291960:	c4 42 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+rax*1]
    2989c6291966:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    2989c629196b:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    2989c6291970:	03 fb                                           	add    edi,ebx
    2989c6291972:	c4 42 79 18 14 3c                               	vbroadcastss xmm10,DWORD PTR [r12+rdi*1]
    2989c6291978:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    2989c629197d:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    2989c6291982:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    2989c6291987:	c4 22 79 18 14 02                               	vbroadcastss xmm10,DWORD PTR [rdx+r8*1]
    2989c629198d:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    2989c6291992:	c4 62 79 18 24 02                               	vbroadcastss xmm12,DWORD PTR [rdx+rax*1]
    2989c6291998:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    2989c629199d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    2989c62919a2:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    2989c62919a8:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    2989c62919ad:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    2989c62919b2:	c4 41 48 59 d2                                  	vmulps xmm10,xmm6,xmm10
    2989c62919b7:	44 8b 24 0a                                     	mov    r12d,DWORD PTR [rdx+rcx*1]
    2989c62919bb:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c62919bf:	0f 85 22 0e 00 00                               	jne    0x2989c62927e7
    2989c62919c5:	44 8b 7c 0a 28                                  	mov    r15d,DWORD PTR [rdx+rcx*1+0x28]
    2989c62919ca:	45 85 ff                                        	test   r15d,r15d
    2989c62919cd:	0f 84 14 0e 00 00                               	je     0x2989c62927e7
    2989c62919d3:	8b 5c 0a 1c                                     	mov    ebx,DWORD PTR [rdx+rcx*1+0x1c]
    2989c62919d7:	85 db                                           	test   ebx,ebx
    2989c62919d9:	0f 8e 08 0e 00 00                               	jle    0x2989c62927e7
    2989c62919df:	44 8b 5c 0a 20                                  	mov    r11d,DWORD PTR [rdx+rcx*1+0x20]
    2989c62919e4:	45 85 db                                        	test   r11d,r11d
    2989c62919e7:	0f 8e f6 0d 00 00                               	jle    0x2989c62927e3
    2989c62919ed:	44 8b d3                                        	mov    r10d,ebx
    2989c62919f0:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    2989c62919f5:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    2989c62919fa:	8b 7c 0a 10                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x10]
    2989c62919fe:	45 33 c0                                        	xor    r8d,r8d
    2989c6291a01:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    2989c6291a07:	41 0f 95 c0                                     	setne  r8b
    2989c6291a0b:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    2989c6291a11:	40 0f 95 c7                                     	setne  dil
    2989c6291a15:	40 0f b6 ff                                     	movzx  edi,dil
    2989c6291a19:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    2989c6291a20:	41 23 f8                                        	and    edi,r8d
    2989c6291a23:	0f 85 0f 00 00 00                               	jne    0x2989c6291a38
    2989c6291a29:	c4 41 58 5f d2                                  	vmaxps xmm10,xmm4,xmm10
    2989c6291a2e:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    2989c6291a33:	e9 0b 00 00 00                                  	jmp    0x2989c6291a43
    2989c6291a38:	c4 43 79 08 ea 09                               	vroundps xmm13,xmm10,0x9
    2989c6291a3e:	c4 41 28 5c d5                                  	vsubps xmm10,xmm10,xmm13
    2989c6291a43:	c4 41 18 59 d2                                  	vmulps xmm10,xmm12,xmm10
    2989c6291a48:	45 8b d3                                        	mov    r10d,r11d
    2989c6291a4b:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    2989c6291a50:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    2989c6291a55:	44 8b 44 0a 14                                  	mov    r8d,DWORD PTR [rdx+rcx*1+0x14]
    2989c6291a5a:	45 33 e4                                        	xor    r12d,r12d
    2989c6291a5d:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    2989c6291a64:	41 0f 95 c4                                     	setne  r12b
    2989c6291a68:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    2989c6291a6f:	41 0f 95 c0                                     	setne  r8b
    2989c6291a73:	45 0f b6 c0                                     	movzx  r8d,r8b
    2989c6291a77:	45 23 c4                                        	and    r8d,r12d
    2989c6291a7a:	0f 85 0f 00 00 00                               	jne    0x2989c6291a8f
    2989c6291a80:	c4 41 58 5f c0                                  	vmaxps xmm8,xmm4,xmm8
    2989c6291a85:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    2989c6291a8a:	e9 0b 00 00 00                                  	jmp    0x2989c6291a9a
    2989c6291a8f:	c4 43 79 08 e8 09                               	vroundps xmm13,xmm8,0x9
    2989c6291a95:	c4 41 38 5c c5                                  	vsubps xmm8,xmm8,xmm13
    2989c6291a9a:	c4 41 18 59 c0                                  	vmulps xmm8,xmm12,xmm8
    2989c6291a9f:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    2989c6291aa9:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c6291aae:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c6291ab3:	c4 41 38 58 ec                                  	vaddps xmm13,xmm8,xmm12
    2989c6291ab8:	44 8b 64 0a 0c                                  	mov    r12d,DWORD PTR [rdx+rcx*1+0xc]
    2989c6291abd:	45 33 e4                                        	xor    r12d,r12d
    2989c6291ac0:	81 7c 0a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0xc],0x2600
    2989c6291ac8:	41 0f 94 c4                                     	sete   r12b
    2989c6291acc:	45 85 e4                                        	test   r12d,r12d
    2989c6291acf:	0f 85 66 00 00 00                               	jne    0x2989c6291b3b
    2989c6291ad5:	c4 43 79 08 c5 09                               	vroundps xmm8,xmm13,0x9
    2989c6291adb:	49 ba 50 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b850
    2989c6291ae5:	c4 41 38 54 32                                  	vandps xmm14,xmm8,XMMWORD PTR [r10]
    2989c6291aea:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    2989c6291af4:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c6291af9:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    2989c6291afd:	c5 08 c2 f1 01                                  	vcmpltps xmm14,xmm14,xmm1
    2989c6291b02:	4c 8b 15 95 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd95]        # 0x2989c628d89e
    2989c6291b09:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    2989c6291b0f:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    2989c6291b14:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    2989c6291b1a:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    2989c6291b1e:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    2989c6291b23:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    2989c6291b28:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    2989c6291b2d:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    2989c6291b32:	c5 79 28 ec                                     	vmovapd xmm13,xmm4
    2989c6291b36:	e9 49 00 00 00                                  	jmp    0x2989c6291b84
    2989c6291b3b:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    2989c6291b41:	4c 8b 15 95 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff95]        # 0x2989c6291add
    2989c6291b48:	c4 41 18 54 2a                                  	vandps xmm13,xmm12,XMMWORD PTR [r10]
    2989c6291b4d:	4c 8b 15 98 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff98]        # 0x2989c6291aec
    2989c6291b54:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c6291b59:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    2989c6291b5d:	c5 10 c2 f1 01                                  	vcmpltps xmm14,xmm13,xmm1
    2989c6291b62:	4c 8b 15 35 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd35]        # 0x2989c628d89e
    2989c6291b69:	c4 41 18 c2 fc 00                               	vcmpeqps xmm15,xmm12,xmm12
    2989c6291b6f:	c4 41 18 54 ef                                  	vandps xmm13,xmm12,xmm15
    2989c6291b74:	c4 41 18 c2 3a 0d                               	vcmpgeps xmm15,xmm12,XMMWORD PTR [r10]
    2989c6291b7a:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    2989c6291b7f:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    2989c6291b84:	c4 c3 79 08 e2 09                               	vroundps xmm4,xmm10,0x9
    2989c6291b8a:	4c 8b 15 0d bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd0d]        # 0x2989c628d89e
    2989c6291b91:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    2989c6291b96:	c4 c1 58 54 c7                                  	vandps xmm0,xmm4,xmm15
    2989c6291b9b:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    2989c6291ba1:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    2989c6291ba5:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    2989c6291baa:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    2989c6291bb4:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6291bb9:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6291bbd:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x2989c6291add
    2989c6291bc4:	c4 41 58 54 0a                                  	vandps xmm9,xmm4,XMMWORD PTR [r10]
    2989c6291bc9:	c5 30 c2 c9 01                                  	vcmpltps xmm9,xmm9,xmm1
    2989c6291bce:	c5 31 df fe                                     	vpandn xmm15,xmm9,xmm6
    2989c6291bd2:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    2989c6291bd7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6291bdc:	8d 43 ff                                        	lea    eax,[rbx-0x1]
    2989c6291bdf:	c5 79 6e c8                                     	vmovd  xmm9,eax
    2989c6291be3:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c6291be8:	8b 44 0a 2c                                     	mov    eax,DWORD PTR [rdx+rcx*1+0x2c]
    2989c6291bec:	c4 e2 79 3d ca                                  	vpmaxsd xmm1,xmm0,xmm2
    2989c6291bf1:	c4 c2 71 39 c9                                  	vpminsd xmm1,xmm1,xmm9
    2989c6291bf6:	85 ff                                           	test   edi,edi
    2989c6291bf8:	0f 84 58 00 00 00                               	je     0x2989c6291c56
    2989c6291bfe:	c5 f9 6e c8                                     	vmovd  xmm1,eax
    2989c6291c02:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    2989c6291c07:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    2989c6291c0b:	85 c0                                           	test   eax,eax
    2989c6291c0d:	0f 85 43 00 00 00                               	jne    0x2989c6291c56
    2989c6291c13:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    2989c6291c17:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    2989c6291c1c:	c4 c1 79 66 d9                                  	vpcmpgtd xmm3,xmm0,xmm9
    2989c6291c21:	c5 e1 db d9                                     	vpand  xmm3,xmm3,xmm1
    2989c6291c25:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6291c2a:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    2989c6291c2f:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    2989c6291c33:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    2989c6291c37:	c4 41 71 db db                                  	vpand  xmm11,xmm1,xmm11
    2989c6291c3c:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    2989c6291c41:	c4 c1 79 fe cb                                  	vpaddd xmm1,xmm0,xmm11
    2989c6291c46:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    2989c6291c4e:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    2989c6291c56:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    2989c6291c5a:	c4 c1 11 db f6                                  	vpand  xmm6,xmm13,xmm14
    2989c6291c5f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c6291c64:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    2989c6291c68:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    2989c6291c6d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6291c72:	8b 4c 0a 30                                     	mov    ecx,DWORD PTR [rdx+rcx*1+0x30]
    2989c6291c76:	c4 62 49 3d f2                                  	vpmaxsd xmm14,xmm6,xmm2
    2989c6291c7b:	c4 42 09 39 f5                                  	vpminsd xmm14,xmm14,xmm13
    2989c6291c80:	45 85 c0                                        	test   r8d,r8d
    2989c6291c83:	0f 84 4a 00 00 00                               	je     0x2989c6291cd3
    2989c6291c89:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    2989c6291c8d:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c6291c92:	c5 09 db f6                                     	vpand  xmm14,xmm14,xmm6
    2989c6291c96:	85 c9                                           	test   ecx,ecx
    2989c6291c98:	0f 85 35 00 00 00                               	jne    0x2989c6291cd3
    2989c6291c9e:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    2989c6291ca3:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c6291ca8:	c4 c1 49 66 dd                                  	vpcmpgtd xmm3,xmm6,xmm13
    2989c6291cad:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    2989c6291cb2:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6291cb7:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    2989c6291cbc:	c5 69 66 de                                     	vpcmpgtd xmm11,xmm2,xmm6
    2989c6291cc0:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    2989c6291cc4:	c4 41 09 db db                                  	vpand  xmm11,xmm14,xmm11
    2989c6291cc9:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    2989c6291cce:	c4 41 49 fe f3                                  	vpaddd xmm14,xmm6,xmm11
    2989c6291cd3:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    2989c6291cd7:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c6291cdc:	c4 62 09 40 f3                                  	vpmulld xmm14,xmm14,xmm3
    2989c6291ce1:	c5 09 fe d9                                     	vpaddd xmm11,xmm14,xmm1
    2989c6291ce5:	c4 63 79 16 db 03                               	vpextrd ebx,xmm11,0x3
    2989c6291ceb:	c4 43 79 16 d9 02                               	vpextrd r9d,xmm11,0x2
    2989c6291cf1:	48 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rbx
    2989c6291cf8:	c4 63 79 16 db 01                               	vpextrd ebx,xmm11,0x1
    2989c6291cfe:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    2989c6291d05:	c4 41 79 7e d9                                  	vmovd  r9d,xmm11
    2989c6291d0a:	45 85 e4                                        	test   r12d,r12d
    2989c6291d0d:	0f 85 df 08 00 00                               	jne    0x2989c62925f2
    2989c6291d13:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    2989c6291d17:	c4 62 79 3d da                                  	vpmaxsd xmm11,xmm0,xmm2
    2989c6291d1c:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    2989c6291d21:	85 ff                                           	test   edi,edi
    2989c6291d23:	0f 84 41 00 00 00                               	je     0x2989c6291d6a
    2989c6291d29:	c5 79 6e d8                                     	vmovd  xmm11,eax
    2989c6291d2d:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c6291d32:	c4 41 79 db db                                  	vpand  xmm11,xmm0,xmm11
    2989c6291d37:	85 c0                                           	test   eax,eax
    2989c6291d39:	0f 85 2b 00 00 00                               	jne    0x2989c6291d6a
    2989c6291d3f:	c4 41 79 66 c9                                  	vpcmpgtd xmm9,xmm0,xmm9
    2989c6291d44:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    2989c6291d48:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6291d4d:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    2989c6291d52:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    2989c6291d56:	c4 41 21 df f9                                  	vpandn xmm15,xmm11,xmm9
    2989c6291d5b:	c4 41 61 db cb                                  	vpand  xmm9,xmm3,xmm11
    2989c6291d60:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c6291d65:	c4 41 79 fe d9                                  	vpaddd xmm11,xmm0,xmm9
    2989c6291d6a:	c5 c9 fe c7                                     	vpaddd xmm0,xmm6,xmm7
    2989c6291d6e:	c4 e2 79 3d f2                                  	vpmaxsd xmm6,xmm0,xmm2
    2989c6291d73:	c4 c2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm13
    2989c6291d78:	45 85 c0                                        	test   r8d,r8d
    2989c6291d7b:	0f 84 49 00 00 00                               	je     0x2989c6291dca
    2989c6291d81:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    2989c6291d85:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    2989c6291d8a:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    2989c6291d8e:	85 c9                                           	test   ecx,ecx
    2989c6291d90:	0f 85 34 00 00 00                               	jne    0x2989c6291dca
    2989c6291d96:	c4 c1 79 6e f3                                  	vmovd  xmm6,r11d
    2989c6291d9b:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    2989c6291da0:	c4 41 79 66 cd                                  	vpcmpgtd xmm9,xmm0,xmm13
    2989c6291da5:	c5 31 db ce                                     	vpand  xmm9,xmm9,xmm6
    2989c6291da9:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6291dae:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    2989c6291db3:	c5 69 66 e8                                     	vpcmpgtd xmm13,xmm2,xmm0
    2989c6291db7:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    2989c6291dbc:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    2989c6291dc1:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c6291dc6:	c5 f9 fe f6                                     	vpaddd xmm6,xmm0,xmm6
    2989c6291dca:	c4 e2 49 40 c3                                  	vpmulld xmm0,xmm6,xmm3
    2989c6291dcf:	c5 f9 fe f1                                     	vpaddd xmm6,xmm0,xmm1
    2989c6291dd3:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    2989c6291dda:	0f 84 71 00 00 00                               	je     0x2989c6291e51
    2989c6291de0:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    2989c6291de7:	0f 85 07 00 00 00                               	jne    0x2989c6291df4
    2989c6291ded:	33 ff                                           	xor    edi,edi
    2989c6291def:	e9 07 00 00 00                                  	jmp    0x2989c6291dfb
    2989c6291df4:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    2989c6291df8:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6291dfb:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    2989c6291e02:	0f 85 08 00 00 00                               	jne    0x2989c6291e10
    2989c6291e08:	45 33 c0                                        	xor    r8d,r8d
    2989c6291e0b:	e9 08 00 00 00                                  	jmp    0x2989c6291e18
    2989c6291e10:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    2989c6291e14:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    2989c6291e18:	83 bd 50 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1b0],0x0
    2989c6291e1f:	0f 85 08 00 00 00                               	jne    0x2989c6291e2d
    2989c6291e25:	45 33 db                                        	xor    r11d,r11d
    2989c6291e28:	e9 0f 00 00 00                                  	jmp    0x2989c6291e3c
    2989c6291e2d:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    2989c6291e34:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    2989c6291e38:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c6291e3c:	83 bd b0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x150],0x0
    2989c6291e43:	0f 85 3c 00 00 00                               	jne    0x2989c6291e85
    2989c6291e49:	45 33 e4                                        	xor    r12d,r12d
    2989c6291e4c:	e9 43 00 00 00                                  	jmp    0x2989c6291e94
    2989c6291e51:	c5 71 fe cf                                     	vpaddd xmm9,xmm1,xmm7
    2989c6291e55:	c4 41 21 76 c9                                  	vpcmpeqd xmm9,xmm11,xmm9
    2989c6291e5a:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    2989c6291e5f:	83 ff 0f                                        	cmp    edi,0xf
    2989c6291e62:	0f 84 f8 02 00 00                               	je     0x2989c6292160
    2989c6291e68:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    2989c6291e6e:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c6291e72:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    2989c6291e76:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    2989c6291e7a:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    2989c6291e7e:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    2989c6291e82:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6291e85:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    2989c6291e8c:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    2989c6291e90:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    2989c6291e94:	c4 41 21 fe ce                                  	vpaddd xmm9,xmm11,xmm14
    2989c6291e99:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c6291e9d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6291ea2:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    2989c6291ea9:	0f 84 8a 00 00 00                               	je     0x2989c6291f39
    2989c6291eaf:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    2989c6291eb6:	0f 85 07 00 00 00                               	jne    0x2989c6291ec3
    2989c6291ebc:	33 ff                                           	xor    edi,edi
    2989c6291ebe:	e9 0b 00 00 00                                  	jmp    0x2989c6291ece
    2989c6291ec3:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c6291ec7:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c6291ecb:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6291ece:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    2989c6291ed5:	0f 85 07 00 00 00                               	jne    0x2989c6291ee2
    2989c6291edb:	33 c0                                           	xor    eax,eax
    2989c6291edd:	e9 0d 00 00 00                                  	jmp    0x2989c6291eef
    2989c6291ee2:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    2989c6291ee8:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    2989c6291eec:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    2989c6291eef:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    2989c6291ef6:	0f 85 07 00 00 00                               	jne    0x2989c6291f03
    2989c6291efc:	33 db                                           	xor    ebx,ebx
    2989c6291efe:	e9 0d 00 00 00                                  	jmp    0x2989c6291f10
    2989c6291f03:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    2989c6291f09:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    2989c6291f0d:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    2989c6291f10:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    2989c6291f17:	0f 85 41 00 00 00                               	jne    0x2989c6291f5e
    2989c6291f1d:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    2989c6291f23:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c6291f27:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6291f2c:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    2989c6291f32:	33 c9                                           	xor    ecx,ecx
    2989c6291f34:	e9 54 00 00 00                                  	jmp    0x2989c6291f8d
    2989c6291f39:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c6291f3f:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c6291f43:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    2989c6291f46:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c6291f4a:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c6291f4e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6291f51:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    2989c6291f57:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    2989c6291f5b:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    2989c6291f5e:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    2989c6291f64:	41 8d 0c 8f                                     	lea    ecx,[r15+rcx*4]
    2989c6291f68:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    2989c6291f6b:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    2989c6291f71:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c6291f75:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6291f7a:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    2989c6291f80:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    2989c6291f87:	0f 84 78 00 00 00                               	je     0x2989c6292005
    2989c6291f8d:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    2989c6291f94:	0f 85 07 00 00 00                               	jne    0x2989c6291fa1
    2989c6291f9a:	33 ff                                           	xor    edi,edi
    2989c6291f9c:	e9 0b 00 00 00                                  	jmp    0x2989c6291fac
    2989c6291fa1:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    2989c6291fa5:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c6291fa9:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6291fac:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    2989c6291fb3:	0f 85 08 00 00 00                               	jne    0x2989c6291fc1
    2989c6291fb9:	45 33 c0                                        	xor    r8d,r8d
    2989c6291fbc:	e9 0e 00 00 00                                  	jmp    0x2989c6291fcf
    2989c6291fc1:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    2989c6291fc7:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    2989c6291fcb:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    2989c6291fcf:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    2989c6291fd6:	0f 85 07 00 00 00                               	jne    0x2989c6291fe3
    2989c6291fdc:	33 c0                                           	xor    eax,eax
    2989c6291fde:	e9 0d 00 00 00                                  	jmp    0x2989c6291ff0
    2989c6291fe3:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    2989c6291fe9:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    2989c6291fed:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    2989c6291ff0:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    2989c6291ff7:	0f 85 2e 00 00 00                               	jne    0x2989c629202b
    2989c6291ffd:	45 33 c9                                        	xor    r9d,r9d
    2989c6292000:	e9 34 00 00 00                                  	jmp    0x2989c6292039
    2989c6292005:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    2989c629200b:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c629200f:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    2989c6292013:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    2989c6292017:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c629201b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c629201e:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    2989c6292024:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    2989c6292028:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    2989c629202b:	c4 c3 79 16 f1 03                               	vpextrd r9d,xmm6,0x3
    2989c6292031:	47 8d 0c 8f                                     	lea    r9d,[r15+r9*4]
    2989c6292035:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    2989c6292039:	c4 c3 31 22 f3 02                               	vpinsrd xmm6,xmm9,r11d,0x2
    2989c629203f:	c4 63 11 22 cb 02                               	vpinsrd xmm9,xmm13,ebx,0x2
    2989c6292045:	c4 c1 79 fe c3                                  	vpaddd xmm0,xmm0,xmm11
    2989c629204a:	c5 79 6e df                                     	vmovd  xmm11,edi
    2989c629204e:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c6292053:	c4 43 21 22 d8 01                               	vpinsrd xmm11,xmm11,r8d,0x1
    2989c6292059:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    2989c629205f:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    2989c6292066:	0f 84 7a 00 00 00                               	je     0x2989c62920e6
    2989c629206c:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    2989c6292073:	0f 85 07 00 00 00                               	jne    0x2989c6292080
    2989c6292079:	33 ff                                           	xor    edi,edi
    2989c629207b:	e9 0b 00 00 00                                  	jmp    0x2989c629208b
    2989c6292080:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    2989c6292084:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c6292088:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c629208b:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    2989c6292092:	0f 85 08 00 00 00                               	jne    0x2989c62920a0
    2989c6292098:	45 33 c0                                        	xor    r8d,r8d
    2989c629209b:	e9 0e 00 00 00                                  	jmp    0x2989c62920ae
    2989c62920a0:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    2989c62920a6:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    2989c62920aa:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    2989c62920ae:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    2989c62920b5:	0f 85 08 00 00 00                               	jne    0x2989c62920c3
    2989c62920bb:	45 33 db                                        	xor    r11d,r11d
    2989c62920be:	e9 0e 00 00 00                                  	jmp    0x2989c62920d1
    2989c62920c3:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    2989c62920c9:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    2989c62920cd:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c62920d1:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    2989c62920d8:	0f 85 2f 00 00 00                               	jne    0x2989c629210d
    2989c62920de:	45 33 ff                                        	xor    r15d,r15d
    2989c62920e1:	e9 35 00 00 00                                  	jmp    0x2989c629211b
    2989c62920e6:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    2989c62920ec:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c62920f0:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    2989c62920f4:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    2989c62920f8:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c62920fc:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c62920ff:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    2989c6292105:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    2989c6292109:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c629210d:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    2989c6292113:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    2989c6292117:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    2989c629211b:	c4 c3 49 22 c4 03                               	vpinsrd xmm0,xmm6,r12d,0x3
    2989c6292121:	c4 e3 31 22 f1 03                               	vpinsrd xmm6,xmm9,ecx,0x3
    2989c6292127:	c5 79 6e cf                                     	vmovd  xmm9,edi
    2989c629212b:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c6292130:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    2989c6292136:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    2989c629213c:	c4 43 31 22 cf 03                               	vpinsrd xmm9,xmm9,r15d,0x3
    2989c6292142:	c4 43 21 22 d9 03                               	vpinsrd xmm11,xmm11,r9d,0x3
    2989c6292148:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    2989c629214c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    2989c6292151:	c4 41 79 28 df                                  	vmovapd xmm11,xmm15
    2989c6292156:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    2989c629215b:	e9 95 00 00 00                                  	jmp    0x2989c62921f5
    2989c6292160:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    2989c6292164:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    2989c6292169:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    2989c629216d:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    2989c6292172:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    2989c6292177:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    2989c629217d:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c6292181:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    2989c6292186:	44 8b 85 c8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x138]
    2989c629218d:	43 8d 3c 87                                     	lea    edi,[r15+r8*4]
    2989c6292191:	c5 7b 10 1c 3a                                  	vmovsd xmm11,QWORD PTR [rdx+rdi*1]
    2989c6292196:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    2989c629219b:	c4 41 78 c6 d9 dd                               	vshufps xmm11,xmm0,xmm9,0xdd
    2989c62921a1:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    2989c62921a7:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    2989c62921ac:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    2989c62921b0:	41 03 ff                                        	add    edi,r15d
    2989c62921b3:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    2989c62921b8:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    2989c62921be:	41 03 ff                                        	add    edi,r15d
    2989c62921c1:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    2989c62921c6:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    2989c62921cb:	c4 e3 79 16 f7 02                               	vpextrd edi,xmm6,0x2
    2989c62921d1:	41 03 ff                                        	add    edi,r15d
    2989c62921d4:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    2989c62921d9:	c4 e3 79 16 f7 03                               	vpextrd edi,xmm6,0x3
    2989c62921df:	41 03 ff                                        	add    edi,r15d
    2989c62921e2:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    2989c62921e7:	c5 91 6c f6                                     	vpunpcklqdq xmm6,xmm13,xmm6
    2989c62921eb:	c5 30 c6 ee dd                                  	vshufps xmm13,xmm9,xmm6,0xdd
    2989c62921f0:	c5 b0 c6 f6 88                                  	vshufps xmm6,xmm9,xmm6,0x88
    2989c62921f5:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    2989c62921fa:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    2989c62921ff:	c5 28 5c d4                                     	vsubps xmm10,xmm10,xmm4
    2989c6292203:	c4 41 50 5c e2                                  	vsubps xmm12,xmm5,xmm10
    2989c6292208:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    2989c6292212:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c6292217:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    2989c629221c:	c4 c1 79 db ce                                  	vpand  xmm1,xmm0,xmm14
    2989c6292221:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292226:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c629222c:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c6292231:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6292236:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c629223b:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c629223f:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c6292243:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c6292248:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    2989c629224c:	c4 c1 21 db de                                  	vpand  xmm3,xmm11,xmm14
    2989c6292251:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292256:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c629225c:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c6292261:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6292266:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c629226b:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c629226f:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c6292273:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c6292278:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    2989c629227c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    2989c6292280:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    2989c6292284:	c4 c1 49 db de                                  	vpand  xmm3,xmm6,xmm14
    2989c6292289:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629228e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c6292294:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c6292299:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629229e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c62922a3:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c62922a7:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c62922ab:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c62922b0:	c5 98 59 db                                     	vmulps xmm3,xmm12,xmm3
    2989c62922b4:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    2989c62922b9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62922be:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c62922c4:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c62922c9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62922ce:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c62922d3:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c62922d7:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c62922db:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c62922e0:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    2989c62922e4:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    2989c62922e8:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    2989c62922ec:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    2989c62922f0:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    2989c62922fa:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c62922ff:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c6292303:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    2989c6292307:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    2989c629230e:	c4 a1 7a 7f 0c 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm1
    2989c6292314:	c5 f1 72 d0 10                                  	vpsrld xmm1,xmm0,0x10
    2989c6292319:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    2989c629231e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292323:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c6292329:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c629232e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6292333:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c6292338:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c629233c:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c6292340:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c6292345:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    2989c6292349:	c4 c1 59 72 d3 10                               	vpsrld xmm4,xmm11,0x10
    2989c629234f:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    2989c6292354:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292359:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c629235f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c6292364:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6292369:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c629236e:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c6292372:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c6292376:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c629237b:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    2989c629237f:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    2989c6292383:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    2989c6292387:	c5 d9 72 d6 10                                  	vpsrld xmm4,xmm6,0x10
    2989c629238c:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    2989c6292391:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292396:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c629239c:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c62923a1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62923a6:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c62923ab:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c62923af:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c62923b3:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c62923b8:	c5 98 59 e4                                     	vmulps xmm4,xmm12,xmm4
    2989c62923bc:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    2989c62923c2:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    2989c62923c7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62923cc:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    2989c62923d2:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    2989c62923d7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62923dc:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    2989c62923e1:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    2989c62923e5:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    2989c62923e9:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    2989c62923ee:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    2989c62923f2:	c5 d8 58 d2                                     	vaddps xmm2,xmm4,xmm2
    2989c62923f6:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    2989c62923fa:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c62923fe:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    2989c6292402:	c4 a1 7a 7f 4c 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm1
    2989c6292409:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    2989c629240e:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    2989c6292413:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292418:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c629241e:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c6292423:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6292428:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c629242d:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c6292431:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c6292435:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c629243a:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    2989c629243e:	c4 c1 69 72 d3 08                               	vpsrld xmm2,xmm11,0x8
    2989c6292444:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    2989c6292449:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629244e:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    2989c6292454:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    2989c6292459:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629245e:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    2989c6292463:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    2989c6292467:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    2989c629246b:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    2989c6292470:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    2989c6292474:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    2989c6292478:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    2989c629247c:	c5 e9 72 d6 08                                  	vpsrld xmm2,xmm6,0x8
    2989c6292481:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    2989c6292486:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629248b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    2989c6292491:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    2989c6292496:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629249b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    2989c62924a0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    2989c62924a4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    2989c62924a8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    2989c62924ad:	c5 98 59 d2                                     	vmulps xmm2,xmm12,xmm2
    2989c62924b1:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    2989c62924b7:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    2989c62924bc:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62924c1:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    2989c62924c7:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    2989c62924cc:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62924d1:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    2989c62924d7:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    2989c62924dc:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    2989c62924e1:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    2989c62924e6:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    2989c62924eb:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    2989c62924f0:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    2989c62924f5:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    2989c62924fa:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    2989c62924fe:	c4 21 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm14
    2989c6292505:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    2989c629250a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629250f:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c6292515:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c629251a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629251f:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c6292524:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c6292528:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c629252c:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c6292531:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    2989c6292535:	c4 c1 21 72 d3 18                               	vpsrld xmm11,xmm11,0x18
    2989c629253b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292540:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    2989c6292546:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    2989c629254b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6292550:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    2989c6292556:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    2989c629255b:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    2989c6292560:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    2989c6292565:	c4 41 28 59 db                                  	vmulps xmm11,xmm10,xmm11
    2989c629256a:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    2989c629256f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c6292573:	c5 c9 72 d6 18                                  	vpsrld xmm6,xmm6,0x18
    2989c6292578:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629257d:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c6292583:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c6292588:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c629258d:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c6292592:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c6292596:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c629259a:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c629259f:	c5 98 59 f6                                     	vmulps xmm6,xmm12,xmm6
    2989c62925a3:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    2989c62925a9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62925ae:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    2989c62925b4:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    2989c62925b9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62925be:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    2989c62925c4:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    2989c62925c9:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    2989c62925ce:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    2989c62925d3:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    2989c62925d8:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    2989c62925dd:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    2989c62925e1:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c62925e5:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    2989c62925ed:	e9 cd 01 00 00                                  	jmp    0x2989c62927bf
    2989c62925f2:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    2989c62925f9:	0f 84 71 00 00 00                               	je     0x2989c6292670
    2989c62925ff:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    2989c6292606:	0f 85 07 00 00 00                               	jne    0x2989c6292613
    2989c629260c:	33 ff                                           	xor    edi,edi
    2989c629260e:	e9 07 00 00 00                                  	jmp    0x2989c629261a
    2989c6292613:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    2989c6292617:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c629261a:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    2989c6292621:	0f 85 08 00 00 00                               	jne    0x2989c629262f
    2989c6292627:	45 33 c0                                        	xor    r8d,r8d
    2989c629262a:	e9 08 00 00 00                                  	jmp    0x2989c6292637
    2989c629262f:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    2989c6292633:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    2989c6292637:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    2989c629263e:	0f 85 08 00 00 00                               	jne    0x2989c629264c
    2989c6292644:	45 33 db                                        	xor    r11d,r11d
    2989c6292647:	e9 0f 00 00 00                                  	jmp    0x2989c629265b
    2989c629264c:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    2989c6292653:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    2989c6292657:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c629265b:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    2989c6292662:	0f 85 25 00 00 00                               	jne    0x2989c629268d
    2989c6292668:	45 33 e4                                        	xor    r12d,r12d
    2989c629266b:	e9 2c 00 00 00                                  	jmp    0x2989c629269c
    2989c6292670:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    2989c6292676:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    2989c629267a:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    2989c629267e:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    2989c6292682:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    2989c6292686:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    2989c629268a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c629268d:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    2989c6292694:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    2989c6292698:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    2989c629269c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    2989c62926a0:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c62926a5:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    2989c62926ab:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    2989c62926b1:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    2989c62926b7:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x2989c629220a
    2989c62926be:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c62926c3:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c62926c7:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    2989c62926cb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62926d0:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c62926d6:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c62926db:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62926e0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c62926e6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c62926eb:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c62926f0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c62926f5:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x2989c62922f2
    2989c62926fc:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6292701:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6292706:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c629270b:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    2989c6292712:	c4 21 7a 7f 04 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm8
    2989c6292718:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    2989c629271d:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    2989c6292721:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292726:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c629272c:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c6292731:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6292736:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c629273c:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6292741:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6292746:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c629274b:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c6292750:	c4 21 7a 7f 44 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm8
    2989c6292757:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    2989c629275c:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    2989c6292760:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6292765:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c629276b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c6292770:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6292775:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c629277a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c629277e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c6292782:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c6292787:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    2989c629278c:	c4 a1 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm6
    2989c6292793:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    2989c6292798:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c629279d:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c62927a3:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c62927a8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62927ad:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c62927b2:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c62927b6:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c62927ba:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c62927bf:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x2989c62922f2
    2989c62927c6:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c62927cb:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c62927cf:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c62927d3:	c4 a1 7a 7f 44 1a 30                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x30],xmm0
    2989c62927da:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c62927de:	e9 4b 03 00 00                                  	jmp    0x2989c6292b2e
    2989c62927e3:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c62927e7:	4c 8d 7a 08                                     	lea    r15,[rdx+0x8]
    2989c62927eb:	c4 82 79 18 04 07                               	vbroadcastss xmm0,DWORD PTR [r15+r8*1]
    2989c62927f1:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    2989c62927f5:	c4 42 79 18 24 07                               	vbroadcastss xmm12,DWORD PTR [r15+rax*1]
    2989c62927fb:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    2989c62927ff:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    2989c6292804:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    2989c6292809:	c4 42 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [r15+rdi*1]
    2989c629280f:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    2989c6292814:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    2989c6292819:	c5 c8 59 d8                                     	vmulps xmm3,xmm6,xmm0
    2989c629281d:	41 83 fc 03                                     	cmp    r12d,0x3
    2989c6292821:	0f 84 7a 02 00 00                               	je     0x2989c6292aa1
    2989c6292827:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    2989c629282f:	41 8b fb                                        	mov    edi,r11d
    2989c6292832:	c5 fa 7f 84 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm0
    2989c629283b:	c5 fa 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm0
    2989c6292844:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    2989c629284d:	c5 7a 7f 94 3a f0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1f0],xmm10
    2989c6292856:	c5 7a 7f 84 3a e0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1e0],xmm8
    2989c629285f:	c5 fa 7f 9c 3a d0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1d0],xmm3
    2989c6292868:	c5 fa 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm0
    2989c6292871:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    2989c6292878:	48 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rcx
    2989c629287f:	45 33 c0                                        	xor    r8d,r8d
    2989c6292882:	e9 46 00 00 00                                  	jmp    0x2989c62928cd
    2989c6292887:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6292890:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6292899:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62928a2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62928ab:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62928b4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c62928bd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    2989c62928c0:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    2989c62928c6:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c62928c9:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c62928cd:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    2989c62928d4:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c62928d9:	0f 85 54 3b 00 00                               	jne    0x2989c6296433
    2989c62928df:	8b c1                                           	mov    eax,ecx
    2989c62928e1:	41 8b c8                                        	mov    ecx,r8d
    2989c62928e4:	4c 8b 9d 20 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe0]
    2989c62928eb:	41 d3 eb                                        	shr    r11d,cl
    2989c62928ee:	41 f6 c3 01                                     	test   r11b,0x1
    2989c62928f2:	0f 84 ff 00 00 00                               	je     0x2989c62929f7
    2989c62928f8:	8b 4c 02 10                                     	mov    ecx,DWORD PTR [rdx+rax*1+0x10]
    2989c62928fc:	44 8b 5c 02 0c                                  	mov    r11d,DWORD PTR [rdx+rax*1+0xc]
    2989c6292901:	44 8b 64 02 08                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x8]
    2989c6292906:	44 8b 64 02 04                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x4]
    2989c629290b:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    2989c629290f:	41 83 ff 02                                     	cmp    r15d,0x2
    2989c6292913:	0f 84 89 00 00 00                               	je     0x2989c62929a2
    2989c6292919:	45 85 ff                                        	test   r15d,r15d
    2989c629291c:	0f 85 32 00 00 00                               	jne    0x2989c6292954
    2989c6292922:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    2989c629292a:	c4 a1 7a 10 0c 3a                               	vmovss xmm1,DWORD PTR [rdx+r15*1]
    2989c6292930:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    2989c6292937:	41 8b d8                                        	mov    ebx,r8d
    2989c629293a:	c1 e3 04                                        	shl    ebx,0x4
    2989c629293d:	41 03 df                                        	add    ebx,r15d
    2989c6292940:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6292944:	41 8b c4                                        	mov    eax,r12d
    2989c6292947:	41 8b d3                                        	mov    edx,r11d
    2989c629294a:	e8 d1 88 ee ff                                  	call   0x2989c617b220
    2989c629294f:	e9 a3 00 00 00                                  	jmp    0x2989c62929f7
    2989c6292954:	4c 8b fa                                        	mov    r15,rdx
    2989c6292957:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    2989c629295c:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    2989c6292964:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    2989c629296a:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    2989c6292972:	c4 41 7a 10 04 17                               	vmovss xmm8,DWORD PTR [r15+rdx*1]
    2989c6292978:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    2989c629297e:	41 8b f0                                        	mov    esi,r8d
    2989c6292981:	c1 e6 04                                        	shl    esi,0x4
    2989c6292984:	03 d6                                           	add    edx,esi
    2989c6292986:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629298a:	41 8b c4                                        	mov    eax,r12d
    2989c629298d:	44 8b ca                                        	mov    r9d,edx
    2989c6292990:	41 8b d3                                        	mov    edx,r11d
    2989c6292993:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    2989c6292998:	e8 9b 88 ee ff                                  	call   0x2989c617b238
    2989c629299d:	e9 55 00 00 00                                  	jmp    0x2989c62929f7
    2989c62929a2:	4c 8b fa                                        	mov    r15,rdx
    2989c62929a5:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    2989c62929aa:	45 8b 4c 07 18                                  	mov    r9d,DWORD PTR [r15+rax*1+0x18]
    2989c62929af:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    2989c62929b7:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    2989c62929bd:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    2989c62929c5:	c4 c1 7a 10 14 17                               	vmovss xmm2,DWORD PTR [r15+rdx*1]
    2989c62929cb:	42 8d 94 87 d0 01 00 00                         	lea    edx,[rdi+r8*4+0x1d0]
    2989c62929d3:	c4 c1 7a 10 1c 17                               	vmovss xmm3,DWORD PTR [r15+rdx*1]
    2989c62929d9:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    2989c62929df:	41 8b f0                                        	mov    esi,r8d
    2989c62929e2:	c1 e6 04                                        	shl    esi,0x4
    2989c62929e5:	03 d6                                           	add    edx,esi
    2989c62929e7:	52                                              	push   rdx
    2989c62929e8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62929ec:	41 8b c4                                        	mov    eax,r12d
    2989c62929ef:	41 8b d3                                        	mov    edx,r11d
    2989c62929f2:	e8 31 88 ee ff                                  	call   0x2989c617b228
    2989c62929f7:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    2989c62929fe:	41 83 c0 01                                     	add    r8d,0x1
    2989c6292a02:	41 83 f8 04                                     	cmp    r8d,0x4
    2989c6292a06:	0f 85 b4 fe ff ff                               	jne    0x2989c62928c0
    2989c6292a0c:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    2989c6292a0f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6292a13:	c4 c1 7a 6f 84 18 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x1b0]
    2989c6292a1d:	c4 c1 7a 6f b4 18 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0x1c0]
    2989c6292a27:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    2989c6292a2b:	c4 41 7a 6f 84 18 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x190]
    2989c6292a35:	c4 41 7a 6f 8c 18 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x1a0]
    2989c6292a3f:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    2989c6292a44:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    2989c6292a48:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    2989c6292a4e:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    2989c6292a55:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    2989c6292a59:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    2989c6292a60:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    2989c6292a64:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    2989c6292a69:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    2989c6292a6d:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    2989c6292a74:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    2989c6292a78:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    2989c6292a7e:	44 8b db                                        	mov    r11d,ebx
    2989c6292a81:	49 8b d0                                        	mov    rdx,r8
    2989c6292a84:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    2989c6292a8c:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    2989c6292a94:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    2989c6292a9c:	e9 8d 00 00 00                                  	jmp    0x2989c6292b2e
    2989c6292aa1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6292aa5:	8b c1                                           	mov    eax,ecx
    2989c6292aa7:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    2989c6292aac:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    2989c6292ab1:	41 8b c9                                        	mov    ecx,r9d
    2989c6292ab4:	48 8b 95 20 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe0]
    2989c6292abb:	e8 68 8a ee ff                                  	call   0x2989c617b528
    2989c6292ac0:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c6292ac4:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c6292ac8:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    2989c6292ad0:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    2989c6292ad8:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    2989c6292ae0:	e9 49 00 00 00                                  	jmp    0x2989c6292b2e
    2989c6292ae5:	48 8b fa                                        	mov    rdi,rdx
    2989c6292ae8:	48 8d 57 3c                                     	lea    rdx,[rdi+0x3c]
    2989c6292aec:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    2989c6292af2:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    2989c6292af8:	48 8d 57 40                                     	lea    rdx,[rdi+0x40]
    2989c6292afc:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    2989c6292b02:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    2989c6292b09:	48 8d 57 44                                     	lea    rdx,[rdi+0x44]
    2989c6292b0d:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    2989c6292b13:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    2989c6292b1a:	48 8d 57 48                                     	lea    rdx,[rdi+0x48]
    2989c6292b1e:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    2989c6292b24:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
    2989c6292b2b:	48 8b d7                                        	mov    rdx,rdi
    2989c6292b2e:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    2989c6292b35:	41 83 c0 01                                     	add    r8d,0x1
    2989c6292b39:	41 83 f8 04                                     	cmp    r8d,0x4
    2989c6292b3d:	0f 85 3d ed ff ff                               	jne    0x2989c6291880
    2989c6292b43:	41 8b db                                        	mov    ebx,r11d
    2989c6292b46:	c5 fa 6f 84 1a 90 00 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x90]
    2989c6292b4f:	4c 8b 15 4b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4b]        # 0x2989c6291aa1
    2989c6292b56:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6292b5b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6292b5f:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6292b63:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    2989c6292b6b:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    2989c6292b6f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c6292b74:	c5 7a 6f 84 1a a0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xa0]
    2989c6292b7d:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    2989c6292b81:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    2989c6292b89:	c5 30 58 ce                                     	vaddps xmm9,xmm9,xmm6
    2989c6292b8d:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c6292b92:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    2989c6292b97:	c5 7a 6f 84 1a b0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xb0]
    2989c6292ba0:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    2989c6292ba4:	c5 78 10 95 a0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x160]
    2989c6292bac:	c5 a8 58 f6                                     	vaddps xmm6,xmm10,xmm6
    2989c6292bb0:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    2989c6292bb4:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    2989c6292bb8:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    2989c6292bc2:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6292bc7:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6292bcb:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c6292bcf:	c5 f8 10 b5 c0 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x240]
    2989c6292bd7:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    2989c6292bdb:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    2989c6292bdf:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6292be3:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    2989c6292be7:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    2989c6292bec:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    2989c6292bf1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6292bf8:	44 8b 84 3a 38 01 00 00                         	mov    r8d,DWORD PTR [rdx+rdi*1+0x138]
    2989c6292c00:	4d 8b d8                                        	mov    r11,r8
    2989c6292c03:	41 83 c3 ff                                     	add    r11d,0xffffffff
    2989c6292c07:	0f 85 f3 00 00 00                               	jne    0x2989c6292d00
    2989c6292c0d:	c5 7a 6f 84 1a 70 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0x170]
    2989c6292c16:	c5 7a 6f 8c 1a 30 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x130]
    2989c6292c1f:	4c 8d 82 38 36 00 00                            	lea    r8,[rdx+0x3638]
    2989c6292c26:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    2989c6292c2a:	c4 02 79 18 14 20                               	vbroadcastss xmm10,DWORD PTR [r8+r12*1]
    2989c6292c30:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    2989c6292c35:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    2989c6292c3a:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    2989c6292c3f:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    2989c6292c44:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    2989c6292c49:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    2989c6292c4e:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    2989c6292c53:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    2989c6292c58:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    2989c6292c5d:	c5 7a 6f 8c 1a 60 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x160]
    2989c6292c66:	c5 7a 6f 94 1a 20 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x120]
    2989c6292c6f:	4c 8d 82 34 36 00 00                            	lea    r8,[rdx+0x3634]
    2989c6292c76:	c4 02 79 18 24 20                               	vbroadcastss xmm12,DWORD PTR [r8+r12*1]
    2989c6292c7c:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    2989c6292c81:	c4 41 48 5f e4                                  	vmaxps xmm12,xmm6,xmm12
    2989c6292c86:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    2989c6292c8b:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    2989c6292c90:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    2989c6292c95:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    2989c6292c9a:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    2989c6292c9f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    2989c6292ca4:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    2989c6292ca9:	c5 7a 6f 94 1a 50 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x150]
    2989c6292cb2:	c5 7a 6f a4 1a 10 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x110]
    2989c6292cbb:	4c 8d 82 30 36 00 00                            	lea    r8,[rdx+0x3630]
    2989c6292cc2:	c4 02 79 18 2c 20                               	vbroadcastss xmm13,DWORD PTR [r8+r12*1]
    2989c6292cc8:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    2989c6292ccd:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    2989c6292cd1:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6292cd5:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    2989c6292cd9:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    2989c6292cdd:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6292ce1:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    2989c6292ce5:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    2989c6292ce9:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6292ced:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    2989c6292cf2:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    2989c6292cf6:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    2989c6292cfb:	e9 89 01 00 00                                  	jmp    0x2989c6292e89
    2989c6292d00:	41 83 fb 02                                     	cmp    r11d,0x2
    2989c6292d04:	0f 84 86 00 00 00                               	je     0x2989c6292d90
    2989c6292d0a:	c5 fa 6f 84 1a 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x130]
    2989c6292d13:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    2989c6292d17:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    2989c6292d1b:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6292d1f:	c5 7a 6f 8c 1a 20 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x120]
    2989c6292d28:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    2989c6292d2d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    2989c6292d32:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    2989c6292d37:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    2989c6292d3e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c6292d42:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    2989c6292d48:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    2989c6292d4d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    2989c6292d52:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    2989c6292d57:	c5 7a 6f 94 1a 10 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x110]
    2989c6292d60:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    2989c6292d65:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    2989c6292d6a:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    2989c6292d6f:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    2989c6292d76:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    2989c6292d7c:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    2989c6292d81:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    2989c6292d86:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    2989c6292d8b:	e9 58 00 00 00                                  	jmp    0x2989c6292de8
    2989c6292d90:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    2989c6292d95:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    2989c6292d99:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6292d9d:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    2989c6292da4:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c6292da8:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    2989c6292dae:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    2989c6292db3:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    2989c6292db8:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    2989c6292dbd:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    2989c6292dc4:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    2989c6292dca:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    2989c6292dcf:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    2989c6292dd4:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    2989c6292dd9:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    2989c6292dde:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    2989c6292de3:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    2989c6292de8:	4c 8d a2 20 37 00 00                            	lea    r12,[rdx+0x3720]
    2989c6292def:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    2989c6292df5:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    2989c6292dfa:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    2989c6292dfe:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    2989c6292e02:	41 83 f8 01                                     	cmp    r8d,0x1
    2989c6292e06:	0f 84 7a 00 00 00                               	je     0x2989c6292e86
    2989c6292e0c:	c4 a1 7a 10 b4 1a 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdx+r11*1+0x3724]
    2989c6292e16:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    2989c6292e1b:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    2989c6292e21:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    2989c6292e27:	c4 c1 78 2e f4                                  	vucomiss xmm6,xmm12
    2989c6292e2c:	0f 87 09 00 00 00                               	ja     0x2989c6292e3b
    2989c6292e32:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    2989c6292e36:	e9 05 00 00 00                                  	jmp    0x2989c6292e40
    2989c6292e3b:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    2989c6292e40:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    2989c6292e45:	c5 78 2e ee                                     	vucomiss xmm13,xmm6
    2989c6292e49:	0f 87 0a 00 00 00                               	ja     0x2989c6292e59
    2989c6292e4f:	c4 c1 79 28 f2                                  	vmovapd xmm6,xmm10
    2989c6292e54:	e9 05 00 00 00                                  	jmp    0x2989c6292e5e
    2989c6292e59:	c4 c1 79 28 f5                                  	vmovapd xmm6,xmm13
    2989c6292e5e:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    2989c6292e63:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c6292e67:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6292e6b:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    2989c6292e70:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    2989c6292e75:	8b c3                                           	mov    eax,ebx
    2989c6292e77:	49 8b f3                                        	mov    rsi,r11
    2989c6292e7a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    2989c6292e81:	e9 06 12 00 00                                  	jmp    0x2989c629408c
    2989c6292e86:	4d 8b e3                                        	mov    r12,r11
    2989c6292e89:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    2989c6292e91:	c4 41 48 5f d4                                  	vmaxps xmm10,xmm6,xmm12
    2989c6292e96:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    2989c6292e9b:	c5 7a 6f a4 1a 40 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x140]
    2989c6292ea4:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    2989c6292ea9:	c4 c1 48 5f f2                                  	vmaxps xmm6,xmm6,xmm10
    2989c6292eae:	c5 a0 5d f6                                     	vminps xmm6,xmm11,xmm6
    2989c6292eb2:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c6292eb6:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c6292eba:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    2989c6292ebf:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    2989c6292ec4:	8b c3                                           	mov    eax,ebx
    2989c6292ec6:	49 8b f4                                        	mov    rsi,r12
    2989c6292ec9:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    2989c6292ed0:	e9 b7 11 00 00                                  	jmp    0x2989c629408c
    2989c6292ed5:	44 8b 7c 3a 38                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x38]
    2989c6292eda:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    2989c6292ee2:	83 7c 3a 38 00                                  	cmp    DWORD PTR [rdx+rdi*1+0x38],0x0
    2989c6292ee7:	0f 85 b1 10 00 00                               	jne    0x2989c6293f9e
    2989c6292eed:	4c 8d 7a 54                                     	lea    r15,[rdx+0x54]
    2989c6292ef1:	c4 82 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [r15+r12*1]
    2989c6292ef7:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    2989c6292efb:	c4 c2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [r15+rax*1]
    2989c6292f01:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    2989c6292f05:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    2989c6292f09:	c4 82 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [r15+r9*1]
    2989c6292f0f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    2989c6292f13:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    2989c6292f17:	c5 c8 59 d7                                     	vmulps xmm2,xmm6,xmm7
    2989c6292f1b:	4c 8d 7a 50                                     	lea    r15,[rdx+0x50]
    2989c6292f1f:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    2989c6292f25:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    2989c6292f29:	c4 42 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+rax*1]
    2989c6292f2f:	c4 41 60 59 c0                                  	vmulps xmm8,xmm3,xmm8
    2989c6292f34:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    2989c6292f39:	c4 02 79 18 04 0f                               	vbroadcastss xmm8,DWORD PTR [r15+r9*1]
    2989c6292f3f:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    2989c6292f44:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    2989c6292f49:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    2989c6292f4d:	44 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+rdi*1]
    2989c6292f51:	41 83 ff 01                                     	cmp    r15d,0x1
    2989c6292f55:	0f 85 28 0d 00 00                               	jne    0x2989c6293c83
    2989c6292f5b:	8b 4c 3a 28                                     	mov    ecx,DWORD PTR [rdx+rdi*1+0x28]
    2989c6292f5f:	85 c9                                           	test   ecx,ecx
    2989c6292f61:	0f 84 1c 0d 00 00                               	je     0x2989c6293c83
    2989c6292f67:	44 8b 5c 3a 1c                                  	mov    r11d,DWORD PTR [rdx+rdi*1+0x1c]
    2989c6292f6c:	45 85 db                                        	test   r11d,r11d
    2989c6292f6f:	0f 8e 0e 0d 00 00                               	jle    0x2989c6293c83
    2989c6292f75:	8b 5c 3a 20                                     	mov    ebx,DWORD PTR [rdx+rdi*1+0x20]
    2989c6292f79:	85 db                                           	test   ebx,ebx
    2989c6292f7b:	0f 8e fc 0c 00 00                               	jle    0x2989c6293c7d
    2989c6292f81:	45 8b d3                                        	mov    r10d,r11d
    2989c6292f84:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c6292f89:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c6292f8e:	44 8b 7c 3a 10                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x10]
    2989c6292f93:	33 f6                                           	xor    esi,esi
    2989c6292f95:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    2989c6292f9c:	40 0f 95 c6                                     	setne  sil
    2989c6292fa0:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    2989c6292fa7:	41 0f 95 c7                                     	setne  r15b
    2989c6292fab:	45 0f b6 ff                                     	movzx  r15d,r15b
    2989c6292faf:	44 23 fe                                        	and    r15d,esi
    2989c6292fb2:	0f 85 0d 00 00 00                               	jne    0x2989c6292fc5
    2989c6292fb8:	c5 d8 5f f7                                     	vmaxps xmm6,xmm4,xmm7
    2989c6292fbc:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    2989c6292fc0:	e9 0a 00 00 00                                  	jmp    0x2989c6292fcf
    2989c6292fc5:	c4 e3 79 08 f7 09                               	vroundps xmm6,xmm7,0x9
    2989c6292fcb:	c5 c0 5c f6                                     	vsubps xmm6,xmm7,xmm6
    2989c6292fcf:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c6292fd3:	44 8b d3                                        	mov    r10d,ebx
    2989c6292fd6:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    2989c6292fdb:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    2989c6292fe0:	8b 74 3a 14                                     	mov    esi,DWORD PTR [rdx+rdi*1+0x14]
    2989c6292fe4:	45 33 c9                                        	xor    r9d,r9d
    2989c6292fe7:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    2989c6292fed:	41 0f 95 c1                                     	setne  r9b
    2989c6292ff1:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    2989c6292ff7:	40 0f 95 c6                                     	setne  sil
    2989c6292ffb:	40 0f b6 f6                                     	movzx  esi,sil
    2989c6292fff:	41 23 f1                                        	and    esi,r9d
    2989c6293002:	0f 85 0d 00 00 00                               	jne    0x2989c6293015
    2989c6293008:	c5 d8 5f fa                                     	vmaxps xmm7,xmm4,xmm2
    2989c629300c:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    2989c6293010:	e9 0a 00 00 00                                  	jmp    0x2989c629301f
    2989c6293015:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    2989c629301b:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    2989c629301f:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c6293023:	4c 8b 15 77 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea77]        # 0x2989c6291aa1
    2989c629302a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c629302f:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6293033:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    2989c6293037:	44 8b 4c 3a 0c                                  	mov    r9d,DWORD PTR [rdx+rdi*1+0xc]
    2989c629303c:	45 33 c9                                        	xor    r9d,r9d
    2989c629303f:	81 7c 3a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0xc],0x2600
    2989c6293047:	41 0f 94 c1                                     	sete   r9b
    2989c629304b:	45 85 c9                                        	test   r9d,r9d
    2989c629304e:	0f 85 5b 00 00 00                               	jne    0x2989c62930af
    2989c6293054:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    2989c629305a:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x2989c6291add
    2989c6293061:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    2989c6293066:	4c 8b 15 7f ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7f]        # 0x2989c6291aec
    2989c629306d:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6293072:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c6293077:	c4 41 30 c2 cb 01                               	vcmpltps xmm9,xmm9,xmm11
    2989c629307d:	4c 8b 15 1a a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa81a]        # 0x2989c628d89e
    2989c6293084:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    2989c6293089:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    2989c629308e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    2989c6293094:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    2989c6293098:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    2989c629309d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    2989c62930a1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    2989c62930a5:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    2989c62930aa:	e9 49 00 00 00                                  	jmp    0x2989c62930f8
    2989c62930af:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    2989c62930b5:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x2989c6291add
    2989c62930bc:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    2989c62930c1:	4c 8b 15 24 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea24]        # 0x2989c6291aec
    2989c62930c8:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c62930cd:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c62930d2:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    2989c62930d8:	4c 8b 15 bf a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa7bf]        # 0x2989c628d89e
    2989c62930df:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    2989c62930e4:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    2989c62930e9:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    2989c62930ef:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    2989c62930f3:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    2989c62930f8:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    2989c62930fe:	4c 8b 15 99 a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa799]        # 0x2989c628d89e
    2989c6293105:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    2989c629310b:	c4 c1 38 54 df                                  	vandps xmm3,xmm8,xmm15
    2989c6293110:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    2989c6293116:	c5 fa 5b db                                     	vcvttps2dq xmm3,xmm3
    2989c629311a:	c4 c1 61 ef df                                  	vpxor  xmm3,xmm3,xmm15
    2989c629311f:	4c 8b 15 86 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea86]        # 0x2989c6291bac
    2989c6293126:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c629312b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    2989c629312f:	4c 8b 15 a7 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a7]        # 0x2989c6291add
    2989c6293136:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    2989c629313b:	c4 c1 50 c2 eb 01                               	vcmpltps xmm5,xmm5,xmm11
    2989c6293141:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    2989c6293145:	c5 e1 db dd                                     	vpand  xmm3,xmm3,xmm5
    2989c6293149:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    2989c629314e:	41 8d 43 ff                                     	lea    eax,[r11-0x1]
    2989c6293152:	c5 f9 6e e8                                     	vmovd  xmm5,eax
    2989c6293156:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    2989c629315b:	8b 44 3a 2c                                     	mov    eax,DWORD PTR [rdx+rdi*1+0x2c]
    2989c629315f:	c5 78 10 95 40 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2c0]
    2989c6293167:	c4 42 61 3d e2                                  	vpmaxsd xmm12,xmm3,xmm10
    2989c629316c:	c4 62 19 39 e5                                  	vpminsd xmm12,xmm12,xmm5
    2989c6293171:	45 85 ff                                        	test   r15d,r15d
    2989c6293174:	0f 84 53 00 00 00                               	je     0x2989c62931cd
    2989c629317a:	c5 79 6e e0                                     	vmovd  xmm12,eax
    2989c629317e:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    2989c6293183:	c4 41 61 db e4                                  	vpand  xmm12,xmm3,xmm12
    2989c6293188:	85 c0                                           	test   eax,eax
    2989c629318a:	0f 85 3d 00 00 00                               	jne    0x2989c62931cd
    2989c6293190:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    2989c6293195:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    2989c629319a:	c5 61 66 ed                                     	vpcmpgtd xmm13,xmm3,xmm5
    2989c629319e:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    2989c62931a3:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c62931a8:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    2989c62931ad:	c5 29 66 f3                                     	vpcmpgtd xmm14,xmm10,xmm3
    2989c62931b1:	c4 41 09 df fd                                  	vpandn xmm15,xmm14,xmm13
    2989c62931b6:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    2989c62931bb:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    2989c62931c0:	c4 41 61 fe e4                                  	vpaddd xmm12,xmm3,xmm12
    2989c62931c5:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c62931cd:	c5 31 df fc                                     	vpandn xmm15,xmm9,xmm4
    2989c62931d1:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    2989c62931d6:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    2989c62931db:	44 8d 63 ff                                     	lea    r12d,[rbx-0x1]
    2989c62931df:	c4 c1 79 6e d4                                  	vmovd  xmm2,r12d
    2989c62931e4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c62931e9:	44 8b 64 3a 30                                  	mov    r12d,DWORD PTR [rdx+rdi*1+0x30]
    2989c62931ee:	c4 42 31 3d ea                                  	vpmaxsd xmm13,xmm9,xmm10
    2989c62931f3:	c4 62 11 39 ea                                  	vpminsd xmm13,xmm13,xmm2
    2989c62931f8:	85 f6                                           	test   esi,esi
    2989c62931fa:	0f 84 4c 00 00 00                               	je     0x2989c629324c
    2989c6293200:	c4 41 79 6e ec                                  	vmovd  xmm13,r12d
    2989c6293205:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c629320a:	c4 41 11 db e9                                  	vpand  xmm13,xmm13,xmm9
    2989c629320f:	45 85 e4                                        	test   r12d,r12d
    2989c6293212:	0f 85 34 00 00 00                               	jne    0x2989c629324c
    2989c6293218:	c5 79 6e eb                                     	vmovd  xmm13,ebx
    2989c629321c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6293221:	c5 31 66 f2                                     	vpcmpgtd xmm14,xmm9,xmm2
    2989c6293225:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    2989c629322a:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c629322f:	c4 42 09 0a f7                                  	vpsignd xmm14,xmm14,xmm15
    2989c6293234:	c4 c1 29 66 c9                                  	vpcmpgtd xmm1,xmm10,xmm9
    2989c6293239:	c4 41 71 df fe                                  	vpandn xmm15,xmm1,xmm14
    2989c629323e:	c5 11 db e9                                     	vpand  xmm13,xmm13,xmm1
    2989c6293242:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    2989c6293247:	c4 41 31 fe ed                                  	vpaddd xmm13,xmm9,xmm13
    2989c629324c:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    2989c6293251:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    2989c6293256:	c4 42 11 40 ee                                  	vpmulld xmm13,xmm13,xmm14
    2989c629325b:	c4 c1 11 fe cc                                  	vpaddd xmm1,xmm13,xmm12
    2989c6293260:	c4 c3 79 16 cb 03                               	vpextrd r11d,xmm1,0x3
    2989c6293266:	c4 e3 79 16 cf 02                               	vpextrd edi,xmm1,0x2
    2989c629326c:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    2989c6293273:	c4 c3 79 16 cb 01                               	vpextrd r11d,xmm1,0x1
    2989c6293279:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    2989c6293280:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    2989c6293284:	45 85 c9                                        	test   r9d,r9d
    2989c6293287:	0f 85 19 08 00 00                               	jne    0x2989c6293aa6
    2989c629328d:	c5 f8 10 8d 10 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x3f0]
    2989c6293295:	c5 e1 fe d9                                     	vpaddd xmm3,xmm3,xmm1
    2989c6293299:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    2989c62932a1:	c4 c2 61 3d f2                                  	vpmaxsd xmm6,xmm3,xmm10
    2989c62932a6:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    2989c62932ab:	45 85 ff                                        	test   r15d,r15d
    2989c62932ae:	0f 84 3d 00 00 00                               	je     0x2989c62932f1
    2989c62932b4:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    2989c62932b8:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    2989c62932bd:	c5 e1 db f6                                     	vpand  xmm6,xmm3,xmm6
    2989c62932c1:	85 c0                                           	test   eax,eax
    2989c62932c3:	0f 85 28 00 00 00                               	jne    0x2989c62932f1
    2989c62932c9:	c5 e1 66 f5                                     	vpcmpgtd xmm6,xmm3,xmm5
    2989c62932cd:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    2989c62932d2:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c62932d7:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    2989c62932dc:	c5 a9 66 eb                                     	vpcmpgtd xmm5,xmm10,xmm3
    2989c62932e0:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    2989c62932e4:	c5 89 db f5                                     	vpand  xmm6,xmm14,xmm5
    2989c62932e8:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c62932ed:	c5 e1 fe f6                                     	vpaddd xmm6,xmm3,xmm6
    2989c62932f1:	c5 31 fe c9                                     	vpaddd xmm9,xmm9,xmm1
    2989c62932f5:	c4 c2 31 3d da                                  	vpmaxsd xmm3,xmm9,xmm10
    2989c62932fa:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    2989c62932ff:	85 f6                                           	test   esi,esi
    2989c6293301:	0f 84 49 00 00 00                               	je     0x2989c6293350
    2989c6293307:	c4 c1 79 6e dc                                  	vmovd  xmm3,r12d
    2989c629330c:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c6293311:	c4 c1 61 db d9                                  	vpand  xmm3,xmm3,xmm9
    2989c6293316:	45 85 e4                                        	test   r12d,r12d
    2989c6293319:	0f 85 31 00 00 00                               	jne    0x2989c6293350
    2989c629331f:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    2989c6293323:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c6293328:	c5 b1 66 d2                                     	vpcmpgtd xmm2,xmm9,xmm2
    2989c629332c:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    2989c6293330:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c6293335:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    2989c629333a:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    2989c629333f:	c5 51 df fa                                     	vpandn xmm15,xmm5,xmm2
    2989c6293343:	c5 e1 db d5                                     	vpand  xmm2,xmm3,xmm5
    2989c6293347:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    2989c629334c:	c5 b1 fe da                                     	vpaddd xmm3,xmm9,xmm2
    2989c6293350:	c4 42 61 40 ce                                  	vpmulld xmm9,xmm3,xmm14
    2989c6293355:	c4 41 31 fe f4                                  	vpaddd xmm14,xmm9,xmm12
    2989c629335a:	41 83 f8 0f                                     	cmp    r8d,0xf
    2989c629335e:	0f 85 18 00 00 00                               	jne    0x2989c629337c
    2989c6293364:	c5 19 fe e1                                     	vpaddd xmm12,xmm12,xmm1
    2989c6293368:	c4 41 49 76 e4                                  	vpcmpeqd xmm12,xmm6,xmm12
    2989c629336d:	c4 41 78 50 e4                                  	vmovmskps r12d,xmm12
    2989c6293372:	41 83 fc 0f                                     	cmp    r12d,0xf
    2989c6293376:	0f 84 24 03 00 00                               	je     0x2989c62936a0
    2989c629337c:	4d 8b e0                                        	mov    r12,r8
    2989c629337f:	41 83 e4 08                                     	and    r12d,0x8
    2989c6293383:	4d 8b f8                                        	mov    r15,r8
    2989c6293386:	41 83 e7 04                                     	and    r15d,0x4
    2989c629338a:	49 8b c0                                        	mov    rax,r8
    2989c629338d:	83 e0 02                                        	and    eax,0x2
    2989c6293390:	49 8b d8                                        	mov    rbx,r8
    2989c6293393:	83 e3 01                                        	and    ebx,0x1
    2989c6293396:	41 83 f8 0f                                     	cmp    r8d,0xf
    2989c629339a:	0f 84 6c 00 00 00                               	je     0x2989c629340c
    2989c62933a0:	85 db                                           	test   ebx,ebx
    2989c62933a2:	0f 85 07 00 00 00                               	jne    0x2989c62933af
    2989c62933a8:	33 ff                                           	xor    edi,edi
    2989c62933aa:	e9 06 00 00 00                                  	jmp    0x2989c62933b5
    2989c62933af:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c62933b2:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c62933b5:	85 c0                                           	test   eax,eax
    2989c62933b7:	0f 85 08 00 00 00                               	jne    0x2989c62933c5
    2989c62933bd:	45 33 db                                        	xor    r11d,r11d
    2989c62933c0:	e9 08 00 00 00                                  	jmp    0x2989c62933cd
    2989c62933c5:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    2989c62933c9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c62933cd:	45 85 ff                                        	test   r15d,r15d
    2989c62933d0:	0f 85 08 00 00 00                               	jne    0x2989c62933de
    2989c62933d6:	45 33 ff                                        	xor    r15d,r15d
    2989c62933d9:	e9 0f 00 00 00                                  	jmp    0x2989c62933ed
    2989c62933de:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    2989c62933e5:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    2989c62933e9:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    2989c62933ed:	45 85 e4                                        	test   r12d,r12d
    2989c62933f0:	0f 85 33 00 00 00                               	jne    0x2989c6293429
    2989c62933f6:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    2989c62933fb:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c62933ff:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6293404:	45 33 e4                                        	xor    r12d,r12d
    2989c6293407:	e9 43 00 00 00                                  	jmp    0x2989c629344f
    2989c629340c:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    2989c6293410:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c6293414:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c6293417:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c629341a:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    2989c6293421:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    2989c6293425:	46 8b 3c 22                                     	mov    r15d,DWORD PTR [rdx+r12*1]
    2989c6293429:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    2989c629342f:	44 8d 24 81                                     	lea    r12d,[rcx+rax*4]
    2989c6293433:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    2989c6293437:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    2989c629343c:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c6293440:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6293445:	41 83 f8 0f                                     	cmp    r8d,0xf
    2989c6293449:	0f 84 66 00 00 00                               	je     0x2989c62934b5
    2989c629344f:	41 f6 c0 01                                     	test   r8b,0x1
    2989c6293453:	0f 85 07 00 00 00                               	jne    0x2989c6293460
    2989c6293459:	33 ff                                           	xor    edi,edi
    2989c629345b:	e9 0a 00 00 00                                  	jmp    0x2989c629346a
    2989c6293460:	c5 79 7e e7                                     	vmovd  edi,xmm12
    2989c6293464:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c6293467:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c629346a:	41 f6 c0 02                                     	test   r8b,0x2
    2989c629346e:	0f 85 07 00 00 00                               	jne    0x2989c629347b
    2989c6293474:	33 c0                                           	xor    eax,eax
    2989c6293476:	e9 0c 00 00 00                                  	jmp    0x2989c6293487
    2989c629347b:	c4 63 79 16 e0 01                               	vpextrd eax,xmm12,0x1
    2989c6293481:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    2989c6293484:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    2989c6293487:	41 f6 c0 04                                     	test   r8b,0x4
    2989c629348b:	0f 85 07 00 00 00                               	jne    0x2989c6293498
    2989c6293491:	33 db                                           	xor    ebx,ebx
    2989c6293493:	e9 0c 00 00 00                                  	jmp    0x2989c62934a4
    2989c6293498:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    2989c629349e:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    2989c62934a1:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    2989c62934a4:	41 f6 c0 08                                     	test   r8b,0x8
    2989c62934a8:	0f 85 29 00 00 00                               	jne    0x2989c62934d7
    2989c62934ae:	33 f6                                           	xor    esi,esi
    2989c62934b0:	e9 2e 00 00 00                                  	jmp    0x2989c62934e3
    2989c62934b5:	c4 63 79 16 e7 01                               	vpextrd edi,xmm12,0x1
    2989c62934bb:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c62934be:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    2989c62934c1:	c5 79 7e e7                                     	vmovd  edi,xmm12
    2989c62934c5:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c62934c8:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c62934cb:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    2989c62934d1:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    2989c62934d4:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    2989c62934d7:	c4 63 79 16 e6 03                               	vpextrd esi,xmm12,0x3
    2989c62934dd:	8d 34 b1                                        	lea    esi,[rcx+rsi*4]
    2989c62934e0:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    2989c62934e3:	c4 43 11 22 e3 01                               	vpinsrd xmm12,xmm13,r11d,0x1
    2989c62934e9:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c62934ed:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c62934f2:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    2989c62934f8:	41 83 f8 0f                                     	cmp    r8d,0xf
    2989c62934fc:	0f 84 6a 00 00 00                               	je     0x2989c629356c
    2989c6293502:	41 f6 c0 01                                     	test   r8b,0x1
    2989c6293506:	0f 85 07 00 00 00                               	jne    0x2989c6293513
    2989c629350c:	33 ff                                           	xor    edi,edi
    2989c629350e:	e9 0a 00 00 00                                  	jmp    0x2989c629351d
    2989c6293513:	c5 79 7e f7                                     	vmovd  edi,xmm14
    2989c6293517:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c629351a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c629351d:	41 f6 c0 02                                     	test   r8b,0x2
    2989c6293521:	0f 85 08 00 00 00                               	jne    0x2989c629352f
    2989c6293527:	45 33 db                                        	xor    r11d,r11d
    2989c629352a:	e9 0e 00 00 00                                  	jmp    0x2989c629353d
    2989c629352f:	c4 43 79 16 f3 01                               	vpextrd r11d,xmm14,0x1
    2989c6293535:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    2989c6293539:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c629353d:	41 f6 c0 04                                     	test   r8b,0x4
    2989c6293541:	0f 85 07 00 00 00                               	jne    0x2989c629354e
    2989c6293547:	33 c0                                           	xor    eax,eax
    2989c6293549:	e9 0c 00 00 00                                  	jmp    0x2989c629355a
    2989c629354e:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    2989c6293554:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    2989c6293557:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    2989c629355a:	41 f6 c0 08                                     	test   r8b,0x8
    2989c629355e:	0f 85 2b 00 00 00                               	jne    0x2989c629358f
    2989c6293564:	45 33 c9                                        	xor    r9d,r9d
    2989c6293567:	e9 31 00 00 00                                  	jmp    0x2989c629359d
    2989c629356c:	c4 63 79 16 f7 01                               	vpextrd edi,xmm14,0x1
    2989c6293572:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c6293575:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    2989c6293579:	c5 79 7e f7                                     	vmovd  edi,xmm14
    2989c629357d:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c6293580:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6293583:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    2989c6293589:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    2989c629358c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    2989c629358f:	c4 43 79 16 f1 03                               	vpextrd r9d,xmm14,0x3
    2989c6293595:	46 8d 0c 89                                     	lea    r9d,[rcx+r9*4]
    2989c6293599:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    2989c629359d:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    2989c62935a3:	c4 63 11 22 eb 02                               	vpinsrd xmm13,xmm13,ebx,0x2
    2989c62935a9:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    2989c62935ad:	c5 79 6e cf                                     	vmovd  xmm9,edi
    2989c62935b1:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    2989c62935b6:	c4 43 31 22 cb 01                               	vpinsrd xmm9,xmm9,r11d,0x1
    2989c62935bc:	c4 63 31 22 c8 02                               	vpinsrd xmm9,xmm9,eax,0x2
    2989c62935c2:	41 83 f8 0f                                     	cmp    r8d,0xf
    2989c62935c6:	0f 84 6c 00 00 00                               	je     0x2989c6293638
    2989c62935cc:	41 f6 c0 01                                     	test   r8b,0x1
    2989c62935d0:	0f 85 07 00 00 00                               	jne    0x2989c62935dd
    2989c62935d6:	33 ff                                           	xor    edi,edi
    2989c62935d8:	e9 0a 00 00 00                                  	jmp    0x2989c62935e7
    2989c62935dd:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    2989c62935e1:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c62935e4:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c62935e7:	41 f6 c0 02                                     	test   r8b,0x2
    2989c62935eb:	0f 85 08 00 00 00                               	jne    0x2989c62935f9
    2989c62935f1:	45 33 db                                        	xor    r11d,r11d
    2989c62935f4:	e9 0e 00 00 00                                  	jmp    0x2989c6293607
    2989c62935f9:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    2989c62935ff:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    2989c6293603:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c6293607:	41 f6 c0 04                                     	test   r8b,0x4
    2989c629360b:	0f 85 08 00 00 00                               	jne    0x2989c6293619
    2989c6293611:	45 33 ff                                        	xor    r15d,r15d
    2989c6293614:	e9 0e 00 00 00                                  	jmp    0x2989c6293627
    2989c6293619:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    2989c629361f:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    2989c6293623:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    2989c6293627:	41 f6 c0 08                                     	test   r8b,0x8
    2989c629362b:	0f 85 2c 00 00 00                               	jne    0x2989c629365d
    2989c6293631:	33 c0                                           	xor    eax,eax
    2989c6293633:	e9 31 00 00 00                                  	jmp    0x2989c6293669
    2989c6293638:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    2989c629363e:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c6293641:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    2989c6293645:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    2989c6293649:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c629364c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c629364f:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    2989c6293655:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    2989c6293659:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    2989c629365d:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    2989c6293663:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    2989c6293666:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    2989c6293669:	c4 c3 19 22 f4 03                               	vpinsrd xmm6,xmm12,r12d,0x3
    2989c629366f:	c4 63 11 22 e6 03                               	vpinsrd xmm12,xmm13,esi,0x3
    2989c6293675:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    2989c629367b:	c5 79 6e ef                                     	vmovd  xmm13,edi
    2989c629367f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    2989c6293684:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    2989c629368a:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    2989c6293690:	c4 63 11 22 e8 03                               	vpinsrd xmm13,xmm13,eax,0x3
    2989c6293696:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    2989c629369b:	e9 95 00 00 00                                  	jmp    0x2989c6293735
    2989c62936a0:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c62936a3:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    2989c62936a8:	42 8d 3c 99                                     	lea    edi,[rcx+r11*4]
    2989c62936ac:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    2989c62936b1:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    2989c62936b6:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    2989c62936bd:	42 8d 3c a1                                     	lea    edi,[rcx+r12*4]
    2989c62936c1:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    2989c62936c6:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    2989c62936cd:	42 8d 3c b9                                     	lea    edi,[rcx+r15*4]
    2989c62936d1:	c5 7b 10 24 3a                                  	vmovsd xmm12,QWORD PTR [rdx+rdi*1]
    2989c62936d6:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    2989c62936db:	c4 41 48 c6 e1 dd                               	vshufps xmm12,xmm6,xmm9,0xdd
    2989c62936e1:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    2989c62936e7:	c4 c1 31 72 f6 02                               	vpslld xmm9,xmm14,0x2
    2989c62936ed:	c5 79 7e cf                                     	vmovd  edi,xmm9
    2989c62936f1:	03 f9                                           	add    edi,ecx
    2989c62936f3:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    2989c62936f8:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    2989c62936fe:	03 f9                                           	add    edi,ecx
    2989c6293700:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    2989c6293705:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    2989c629370a:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    2989c6293710:	03 f9                                           	add    edi,ecx
    2989c6293712:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    2989c6293717:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    2989c629371d:	03 f9                                           	add    edi,ecx
    2989c629371f:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    2989c6293724:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    2989c6293729:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    2989c629372f:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    2989c6293735:	c5 91 72 d6 18                                  	vpsrld xmm13,xmm6,0x18
    2989c629373a:	c4 c1 69 72 d4 18                               	vpsrld xmm2,xmm12,0x18
    2989c6293740:	c5 11 6b ea                                     	vpackssdw xmm13,xmm13,xmm2
    2989c6293744:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    2989c6293748:	c4 c3 69 0f dd 08                               	vpalignr xmm3,xmm2,xmm13,0x8
    2989c629374e:	c5 11 61 eb                                     	vpunpcklwd xmm13,xmm13,xmm3
    2989c6293752:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    2989c629375c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6293761:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c6293765:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    2989c629376a:	c5 78 10 85 50 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2b0]
    2989c6293772:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    2989c6293777:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    2989c6293781:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6293786:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c629378a:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    2989c629378e:	4c 8b 15 09 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa109]        # 0x2989c628d89e
    2989c6293795:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c629379a:	c4 c1 78 54 cf                                  	vandps xmm1,xmm0,xmm15
    2989c629379f:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c62937a5:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    2989c62937a9:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    2989c62937ae:	4c 8b 15 28 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe328]        # 0x2989c6291add
    2989c62937b5:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    2989c62937ba:	c4 c1 78 c2 c3 01                               	vcmpltps xmm0,xmm0,xmm11
    2989c62937c0:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    2989c62937c4:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    2989c62937c8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c62937cd:	c5 e1 fa c8                                     	vpsubd xmm1,xmm3,xmm0
    2989c62937d1:	c5 f1 6b c0                                     	vpackssdw xmm0,xmm1,xmm0
    2989c62937d5:	c4 e3 69 0f c8 08                               	vpalignr xmm1,xmm2,xmm0,0x8
    2989c62937db:	c5 f9 61 c1                                     	vpunpcklwd xmm0,xmm0,xmm1
    2989c62937df:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    2989c62937e3:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    2989c62937eb:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    2989c62937ef:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    2989c62937f4:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    2989c62937f8:	4c 8b 15 9f a0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa09f]        # 0x2989c628d89e
    2989c62937ff:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    2989c6293804:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    2989c6293809:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    2989c629380f:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    2989c6293813:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    2989c6293818:	4c 8b 15 be e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe2be]        # 0x2989c6291add
    2989c629381f:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    2989c6293824:	c4 c1 40 c2 fb 01                               	vcmpltps xmm7,xmm7,xmm11
    2989c629382a:	c5 41 df fc                                     	vpandn xmm15,xmm7,xmm4
    2989c629382e:	c5 f1 db ff                                     	vpand  xmm7,xmm1,xmm7
    2989c6293832:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c6293837:	c5 61 fa df                                     	vpsubd xmm11,xmm3,xmm7
    2989c629383b:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    2989c6293840:	c4 c1 71 72 d1 18                               	vpsrld xmm1,xmm9,0x18
    2989c6293846:	c4 c1 61 72 d6 18                               	vpsrld xmm3,xmm14,0x18
    2989c629384c:	c5 f1 6b cb                                     	vpackssdw xmm1,xmm1,xmm3
    2989c6293850:	c4 e3 69 0f d9 08                               	vpalignr xmm3,xmm2,xmm1,0x8
    2989c6293856:	c5 f1 61 cb                                     	vpunpcklwd xmm1,xmm1,xmm3
    2989c629385a:	c5 f1 f5 c8                                     	vpmaddwd xmm1,xmm1,xmm0
    2989c629385e:	c4 e2 71 40 cf                                  	vpmulld xmm1,xmm1,xmm7
    2989c6293863:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    2989c6293867:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    2989c6293871:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c6293876:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    2989c629387a:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    2989c629387e:	c4 c1 11 72 d5 10                               	vpsrld xmm13,xmm13,0x10
    2989c6293884:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6293889:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    2989c629388f:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    2989c6293894:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6293899:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    2989c629389f:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    2989c62938a4:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    2989c62938a9:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    2989c62938ae:	4c 8b 15 3d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea3d]        # 0x2989c62922f2
    2989c62938b5:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c62938ba:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c62938be:	c5 10 59 eb                                     	vmulps xmm13,xmm13,xmm3
    2989c62938c2:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    2989c62938c5:	c5 7a 7f ac 02 c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1c0],xmm13
    2989c62938ce:	c5 91 72 d6 10                                  	vpsrld xmm13,xmm6,0x10
    2989c62938d3:	4c 8b 15 30 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe930]        # 0x2989c629220a
    2989c62938da:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c62938df:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    2989c62938e3:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    2989c62938e7:	c4 c1 51 72 d4 10                               	vpsrld xmm5,xmm12,0x10
    2989c62938ed:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    2989c62938f1:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    2989c62938f5:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    2989c62938fb:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    2989c62938ff:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    2989c6293903:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    2989c6293908:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    2989c629390e:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    2989c6293912:	c4 c1 39 72 d6 10                               	vpsrld xmm8,xmm14,0x10
    2989c6293918:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    2989c629391c:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    2989c6293921:	c4 c3 69 0f e8 08                               	vpalignr xmm5,xmm2,xmm8,0x8
    2989c6293927:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    2989c629392b:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    2989c629392f:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    2989c6293934:	c4 41 11 fe c0                                  	vpaddd xmm8,xmm13,xmm8
    2989c6293939:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    2989c629393d:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    2989c6293943:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6293948:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c629394e:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c6293953:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6293958:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c629395e:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6293963:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6293968:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c629396d:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    2989c6293971:	c5 7a 7f 84 02 b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1b0],xmm8
    2989c629397a:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    2989c629397f:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    2989c6293983:	c4 c1 11 72 d4 08                               	vpsrld xmm13,xmm12,0x8
    2989c6293989:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    2989c629398d:	c4 41 39 6b c5                                  	vpackssdw xmm8,xmm8,xmm13
    2989c6293992:	c4 43 69 0f e8 08                               	vpalignr xmm13,xmm2,xmm8,0x8
    2989c6293998:	c4 41 39 61 c5                                  	vpunpcklwd xmm8,xmm8,xmm13
    2989c629399d:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    2989c62939a1:	c4 42 39 40 c3                                  	vpmulld xmm8,xmm8,xmm11
    2989c62939a6:	c4 c1 11 72 d1 08                               	vpsrld xmm13,xmm9,0x8
    2989c62939ac:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    2989c62939b0:	c4 c1 51 72 d6 08                               	vpsrld xmm5,xmm14,0x8
    2989c62939b6:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    2989c62939ba:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    2989c62939be:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    2989c62939c4:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    2989c62939c8:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    2989c62939cc:	c4 62 11 40 ef                                  	vpmulld xmm13,xmm13,xmm7
    2989c62939d1:	c4 41 39 fe c5                                  	vpaddd xmm8,xmm8,xmm13
    2989c62939d6:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    2989c62939da:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    2989c62939e0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62939e5:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c62939eb:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c62939f0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62939f5:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c62939fb:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6293a00:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6293a05:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c6293a0a:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    2989c6293a0e:	c5 7a 7f 84 02 a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1a0],xmm8
    2989c6293a17:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    2989c6293a1b:	c5 19 db c4                                     	vpand  xmm8,xmm12,xmm4
    2989c6293a1f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    2989c6293a24:	c4 63 69 0f c6 08                               	vpalignr xmm8,xmm2,xmm6,0x8
    2989c6293a2a:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    2989c6293a2f:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    2989c6293a33:	c4 c2 49 40 f3                                  	vpmulld xmm6,xmm6,xmm11
    2989c6293a38:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    2989c6293a3c:	c5 09 db cc                                     	vpand  xmm9,xmm14,xmm4
    2989c6293a40:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    2989c6293a45:	c4 43 69 0f c8 08                               	vpalignr xmm9,xmm2,xmm8,0x8
    2989c6293a4b:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    2989c6293a50:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    2989c6293a54:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    2989c6293a59:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    2989c6293a5d:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    2989c6293a61:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    2989c6293a66:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6293a6b:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c6293a71:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c6293a76:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6293a7b:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c6293a80:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c6293a84:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c6293a88:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c6293a8d:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    2989c6293a91:	c5 fa 7f 84 02 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x190],xmm0
    2989c6293a9a:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6293aa1:	e9 53 05 00 00                                  	jmp    0x2989c6293ff9
    2989c6293aa6:	41 83 f8 0f                                     	cmp    r8d,0xf
    2989c6293aaa:	0f 84 64 00 00 00                               	je     0x2989c6293b14
    2989c6293ab0:	41 f6 c0 01                                     	test   r8b,0x1
    2989c6293ab4:	0f 85 07 00 00 00                               	jne    0x2989c6293ac1
    2989c6293aba:	33 ff                                           	xor    edi,edi
    2989c6293abc:	e9 06 00 00 00                                  	jmp    0x2989c6293ac7
    2989c6293ac1:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c6293ac4:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6293ac7:	41 f6 c0 02                                     	test   r8b,0x2
    2989c6293acb:	0f 85 08 00 00 00                               	jne    0x2989c6293ad9
    2989c6293ad1:	45 33 db                                        	xor    r11d,r11d
    2989c6293ad4:	e9 08 00 00 00                                  	jmp    0x2989c6293ae1
    2989c6293ad9:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    2989c6293add:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c6293ae1:	41 f6 c0 04                                     	test   r8b,0x4
    2989c6293ae5:	0f 85 08 00 00 00                               	jne    0x2989c6293af3
    2989c6293aeb:	45 33 e4                                        	xor    r12d,r12d
    2989c6293aee:	e9 0f 00 00 00                                  	jmp    0x2989c6293b02
    2989c6293af3:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    2989c6293afa:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    2989c6293afe:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    2989c6293b02:	41 f6 c0 08                                     	test   r8b,0x8
    2989c6293b06:	0f 85 25 00 00 00                               	jne    0x2989c6293b31
    2989c6293b0c:	45 33 ff                                        	xor    r15d,r15d
    2989c6293b0f:	e9 2c 00 00 00                                  	jmp    0x2989c6293b40
    2989c6293b14:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    2989c6293b1b:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    2989c6293b1f:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    2989c6293b23:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    2989c6293b27:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    2989c6293b2b:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    2989c6293b2e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    2989c6293b31:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    2989c6293b38:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    2989c6293b3c:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    2989c6293b40:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    2989c6293b44:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c6293b49:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    2989c6293b4f:	c4 c3 79 22 c4 02                               	vpinsrd xmm0,xmm0,r12d,0x2
    2989c6293b55:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    2989c6293b5b:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    2989c6293b60:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6293b65:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c6293b6b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c6293b70:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6293b75:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c6293b7a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c6293b7e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c6293b82:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c6293b87:	4c 8b 15 64 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe764]        # 0x2989c62922f2
    2989c6293b8e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6293b93:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6293b97:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c6293b9b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c6293b9e:	c5 fa 7f b4 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm6
    2989c6293ba7:	4c 8b 15 5c e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe65c]        # 0x2989c629220a
    2989c6293bae:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    2989c6293bb3:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    2989c6293bb7:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    2989c6293bbb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6293bc0:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c6293bc6:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c6293bcb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6293bd0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c6293bd6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6293bdb:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6293be0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c6293be5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    2989c6293be9:	c5 7a 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm8
    2989c6293bf2:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    2989c6293bf7:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    2989c6293bfb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6293c00:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    2989c6293c06:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    2989c6293c0b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6293c10:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    2989c6293c16:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    2989c6293c1b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    2989c6293c20:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    2989c6293c25:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    2989c6293c29:	c5 7a 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm8
    2989c6293c32:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    2989c6293c37:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    2989c6293c3b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6293c40:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c6293c46:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c6293c4b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6293c50:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c6293c55:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c6293c59:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c6293c5d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c6293c62:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    2989c6293c66:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    2989c6293c6f:	8b c7                                           	mov    eax,edi
    2989c6293c71:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6293c78:	e9 7c 03 00 00                                  	jmp    0x2989c6293ff9
    2989c6293c7d:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    2989c6293c83:	4c 8d 5a 58                                     	lea    r11,[rdx+0x58]
    2989c6293c87:	c4 02 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [r11+r12*1]
    2989c6293c8d:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    2989c6293c92:	c4 42 79 18 1c 03                               	vbroadcastss xmm11,DWORD PTR [r11+rax*1]
    2989c6293c98:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    2989c6293c9d:	c4 41 38 58 c3                                  	vaddps xmm8,xmm8,xmm11
    2989c6293ca2:	c4 02 79 18 1c 0b                               	vbroadcastss xmm11,DWORD PTR [r11+r9*1]
    2989c6293ca8:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    2989c6293cad:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    2989c6293cb2:	c4 c1 48 59 d8                                  	vmulps xmm3,xmm6,xmm8
    2989c6293cb7:	41 83 ff 03                                     	cmp    r15d,0x3
    2989c6293cbb:	0f 84 a5 02 00 00                               	je     0x2989c6293f66
    2989c6293cc1:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c6293cc5:	c4 a1 7a 7f 84 1a c0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xc0],xmm0
    2989c6293ccf:	c4 a1 7a 7f 84 1a b0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xb0],xmm0
    2989c6293cd9:	c4 a1 7a 7f 84 1a a0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xa0],xmm0
    2989c6293ce3:	c4 a1 7a 7f bc 1a f0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1f0],xmm7
    2989c6293ced:	c4 a1 7a 7f 94 1a e0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1e0],xmm2
    2989c6293cf7:	c4 a1 7a 7f 9c 1a d0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1d0],xmm3
    2989c6293d01:	c4 a1 7a 7f 84 1a 90 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x90],xmm0
    2989c6293d0b:	4c 8b ff                                        	mov    r15,rdi
    2989c6293d0e:	33 ff                                           	xor    edi,edi
    2989c6293d10:	e9 41 00 00 00                                  	jmp    0x2989c6293d56
    2989c6293d15:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6293d1e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6293d27:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6293d30:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6293d39:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    2989c6293d40:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    2989c6293d47:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c6293d4b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c6293d4f:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    2989c6293d56:	48 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rdi
    2989c6293d5d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6293d62:	0f 85 e9 26 00 00                               	jne    0x2989c6296451
    2989c6293d68:	8b cf                                           	mov    ecx,edi
    2989c6293d6a:	41 d3 e8                                        	shr    r8d,cl
    2989c6293d6d:	41 f6 c0 01                                     	test   r8b,0x1
    2989c6293d71:	0f 84 4c 01 00 00                               	je     0x2989c6293ec3
    2989c6293d77:	42 8b 4c 3a 10                                  	mov    ecx,DWORD PTR [rdx+r15*1+0x10]
    2989c6293d7c:	46 8b 44 3a 0c                                  	mov    r8d,DWORD PTR [rdx+r15*1+0xc]
    2989c6293d81:	4c 89 85 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r8
    2989c6293d88:	46 8b 44 3a 08                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x8]
    2989c6293d8d:	46 8b 44 3a 04                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x4]
    2989c6293d92:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    2989c6293d99:	46 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+r15*1]
    2989c6293d9d:	41 83 f8 02                                     	cmp    r8d,0x2
    2989c6293da1:	0f 84 b2 00 00 00                               	je     0x2989c6293e59
    2989c6293da7:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    2989c6293dae:	45 85 c0                                        	test   r8d,r8d
    2989c6293db1:	0f 85 44 00 00 00                               	jne    0x2989c6293dfb
    2989c6293db7:	45 8d 84 bb f0 01 00 00                         	lea    r8d,[r11+rdi*4+0x1f0]
    2989c6293dbf:	c4 a1 7a 10 34 02                               	vmovss xmm6,DWORD PTR [rdx+r8*1]
    2989c6293dc5:	45 8d 83 90 00 00 00                            	lea    r8d,[r11+0x90]
    2989c6293dcc:	8b cf                                           	mov    ecx,edi
    2989c6293dce:	c1 e1 04                                        	shl    ecx,0x4
    2989c6293dd1:	44 03 c1                                        	add    r8d,ecx
    2989c6293dd4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6293dd8:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    2989c6293dde:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    2989c6293de4:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    2989c6293dea:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c6293dee:	41 8b d8                                        	mov    ebx,r8d
    2989c6293df1:	e8 2a 74 ee ff                                  	call   0x2989c617b220
    2989c6293df6:	e9 c8 00 00 00                                  	jmp    0x2989c6293ec3
    2989c6293dfb:	4c 8b c2                                        	mov    r8,rdx
    2989c6293dfe:	43 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+r15*1+0x14]
    2989c6293e03:	44 8b d7                                        	mov    r10d,edi
    2989c6293e06:	41 8b fb                                        	mov    edi,r11d
    2989c6293e09:	45 8b da                                        	mov    r11d,r10d
    2989c6293e0c:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    2989c6293e14:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    2989c6293e1a:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    2989c6293e22:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    2989c6293e28:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    2989c6293e2e:	41 8b cb                                        	mov    ecx,r11d
    2989c6293e31:	c1 e1 04                                        	shl    ecx,0x4
    2989c6293e34:	03 d1                                           	add    edx,ecx
    2989c6293e36:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6293e3a:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    2989c6293e40:	44 8b ca                                        	mov    r9d,edx
    2989c6293e43:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    2989c6293e49:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    2989c6293e4f:	e8 e4 73 ee ff                                  	call   0x2989c617b238
    2989c6293e54:	e9 6a 00 00 00                                  	jmp    0x2989c6293ec3
    2989c6293e59:	4c 8b c2                                        	mov    r8,rdx
    2989c6293e5c:	4d 8b e7                                        	mov    r12,r15
    2989c6293e5f:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    2989c6293e64:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    2989c6293e69:	44 8b d7                                        	mov    r10d,edi
    2989c6293e6c:	41 8b fb                                        	mov    edi,r11d
    2989c6293e6f:	45 8b da                                        	mov    r11d,r10d
    2989c6293e72:	46 8d bc 9f f0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1f0]
    2989c6293e7a:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    2989c6293e80:	46 8d bc 9f e0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1e0]
    2989c6293e88:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    2989c6293e8e:	46 8d bc 9f d0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1d0]
    2989c6293e96:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    2989c6293e9c:	44 8d bf 90 00 00 00                            	lea    r15d,[rdi+0x90]
    2989c6293ea3:	41 8b c3                                        	mov    eax,r11d
    2989c6293ea6:	c1 e0 04                                        	shl    eax,0x4
    2989c6293ea9:	44 03 f8                                        	add    r15d,eax
    2989c6293eac:	41 57                                           	push   r15
    2989c6293eae:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6293eb2:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    2989c6293eb8:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    2989c6293ebe:	e8 65 73 ee ff                                  	call   0x2989c617b228
    2989c6293ec3:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    2989c6293ec9:	83 c7 01                                        	add    edi,0x1
    2989c6293ecc:	83 ff 04                                        	cmp    edi,0x4
    2989c6293ecf:	0f 85 6b fe ff ff                               	jne    0x2989c6293d40
    2989c6293ed5:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    2989c6293ed8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6293edc:	c4 c1 7a 6f 84 18 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0xb0]
    2989c6293ee6:	c4 c1 7a 6f b4 18 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0xc0]
    2989c6293ef0:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    2989c6293ef4:	c4 41 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x90]
    2989c6293efe:	c4 41 7a 6f 8c 18 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0xa0]
    2989c6293f08:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    2989c6293f0d:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    2989c6293f11:	c4 41 7a 7f 9c 18 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1c0],xmm11
    2989c6293f1b:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    2989c6293f1f:	c4 c1 7a 7f bc 18 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1b0],xmm7
    2989c6293f29:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    2989c6293f2d:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    2989c6293f32:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    2989c6293f36:	c4 c1 7a 7f bc 18 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1a0],xmm7
    2989c6293f40:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    2989c6293f44:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    2989c6293f4e:	8b c3                                           	mov    eax,ebx
    2989c6293f50:	49 8b d0                                        	mov    rdx,r8
    2989c6293f53:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6293f5a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    2989c6293f61:	e9 93 00 00 00                                  	jmp    0x2989c6293ff9
    2989c6293f66:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c6293f6a:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    2989c6293f71:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6293f75:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c6293f78:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    2989c6293f7c:	49 8b d0                                        	mov    rdx,r8
    2989c6293f7f:	e8 a4 75 ee ff                                  	call   0x2989c617b528
    2989c6293f84:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    2989c6293f87:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c6293f8b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c6293f92:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    2989c6293f99:	e9 5b 00 00 00                                  	jmp    0x2989c6293ff9
    2989c6293f9e:	4c 8b fa                                        	mov    r15,rdx
    2989c6293fa1:	49 8d 57 3c                                     	lea    rdx,[r15+0x3c]
    2989c6293fa5:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    2989c6293fab:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    2989c6293fae:	c4 c1 7a 7f 84 17 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x190],xmm0
    2989c6293fb8:	49 8d 4f 40                                     	lea    rcx,[r15+0x40]
    2989c6293fbc:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    2989c6293fc2:	c4 c1 7a 7f 84 17 a0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1a0],xmm0
    2989c6293fcc:	49 8d 4f 44                                     	lea    rcx,[r15+0x44]
    2989c6293fd0:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    2989c6293fd6:	c4 c1 7a 7f 84 17 b0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1b0],xmm0
    2989c6293fe0:	49 8d 4f 48                                     	lea    rcx,[r15+0x48]
    2989c6293fe4:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    2989c6293fea:	c4 c1 7a 7f 84 17 c0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1c0],xmm0
    2989c6293ff4:	8b c2                                           	mov    eax,edx
    2989c6293ff6:	49 8b d7                                        	mov    rdx,r15
    2989c6293ff9:	c5 fa 6f 84 02 90 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rax*1+0x190]
    2989c6294002:	44 8b 9c 3a 34 01 00 00                         	mov    r11d,DWORD PTR [rdx+rdi*1+0x134]
    2989c629400a:	83 bc 3a 34 01 00 00 02                         	cmp    DWORD PTR [rdx+rdi*1+0x134],0x2
    2989c6294012:	0f 84 55 00 00 00                               	je     0x2989c629406d
    2989c6294018:	c5 fa 6f b4 02 c0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1c0]
    2989c6294021:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    2989c6294029:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    2989c629402d:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    2989c6294036:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    2989c629403e:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    2989c6294042:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    2989c629404b:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    2989c6294053:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    2989c6294058:	c5 78 10 8d 90 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x170]
    2989c6294060:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    2989c6294064:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    2989c6294068:	e9 1f 00 00 00                                  	jmp    0x2989c629408c
    2989c629406d:	c5 fa 6f bc 02 c0 01 00 00                      	vmovdqu xmm7,XMMWORD PTR [rdx+rax*1+0x1c0]
    2989c6294076:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    2989c629407f:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    2989c6294088:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    2989c629408c:	c5 49 6a cf                                     	vpunpckhdq xmm9,xmm6,xmm7
    2989c6294090:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    2989c6294095:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    2989c629409a:	c5 7a 7f 5c 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm11
    2989c62940a0:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    2989c62940a5:	c5 7a 7f 4c 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm9
    2989c62940ab:	c5 c9 62 f7                                     	vpunpckldq xmm6,xmm6,xmm7
    2989c62940af:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    2989c62940b4:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    2989c62940b8:	c5 fa 7f 7c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm7
    2989c62940be:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    2989c62940c2:	c5 fa 7f 04 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm0
    2989c62940c7:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    2989c62940cc:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    2989c62940d0:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    2989c62940d5:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    2989c62940da:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c62940df:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    2989c62940e7:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c62940ef:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c62940f7:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c62940ff:	41 f6 c0 01                                     	test   r8b,0x1
    2989c6294103:	0f 84 63 00 00 00                               	je     0x2989c629416c
    2989c6294109:	c5 fa 10 44 02 40                               	vmovss xmm0,DWORD PTR [rdx+rax*1+0x40]
    2989c629410f:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    2989c6294116:	0f 85 35 00 00 00                               	jne    0x2989c6294151
    2989c629411c:	c5 fa 10 14 02                                  	vmovss xmm2,DWORD PTR [rdx+rax*1]
    2989c6294121:	c5 fa 10 5c 02 04                               	vmovss xmm3,DWORD PTR [rdx+rax*1+0x4]
    2989c6294127:	c5 fa 10 64 02 08                               	vmovss xmm4,DWORD PTR [rdx+rax*1+0x8]
    2989c629412d:	c5 fa 10 6c 02 0c                               	vmovss xmm5,DWORD PTR [rdx+rax*1+0xc]
    2989c6294133:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6294137:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c629413a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c6294140:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c6294143:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c6294147:	e8 14 71 ee ff                                  	call   0x2989c617b260
    2989c629414c:	e9 1b 00 00 00                                  	jmp    0x2989c629416c
    2989c6294151:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6294155:	8b d8                                           	mov    ebx,eax
    2989c6294157:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c629415a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c6294160:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c6294163:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c6294167:	e8 0c 71 ee ff                                  	call   0x2989c617b278
    2989c629416c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    2989c6294173:	0f 84 6c 00 00 00                               	je     0x2989c62941e5
    2989c6294179:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629417c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6294180:	c4 c1 7a 10 4c 38 44                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x44]
    2989c6294187:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    2989c629418e:	0f 85 36 00 00 00                               	jne    0x2989c62941ca
    2989c6294194:	c4 c1 7a 10 54 38 10                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x10]
    2989c629419b:	c4 c1 7a 10 5c 38 14                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x14]
    2989c62941a2:	c4 c1 7a 10 64 38 18                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x18]
    2989c62941a9:	c4 c1 7a 10 6c 38 1c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x1c]
    2989c62941b0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62941b4:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c62941b7:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    2989c62941bd:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c62941c0:	e8 9b 70 ee ff                                  	call   0x2989c617b260
    2989c62941c5:	e9 1b 00 00 00                                  	jmp    0x2989c62941e5
    2989c62941ca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62941ce:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c62941d1:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    2989c62941d7:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    2989c62941da:	8b 9d a8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x358]
    2989c62941e0:	e8 93 70 ee ff                                  	call   0x2989c617b278
    2989c62941e5:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    2989c62941ec:	0f 84 72 00 00 00                               	je     0x2989c6294264
    2989c62941f2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c62941f5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c62941f9:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    2989c6294200:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    2989c6294207:	0f 85 39 00 00 00                               	jne    0x2989c6294246
    2989c629420d:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    2989c6294214:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    2989c629421b:	c4 c1 7a 10 64 38 28                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x28]
    2989c6294222:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    2989c6294229:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629422d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6294230:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c6294236:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    2989c629423c:	e8 1f 70 ee ff                                  	call   0x2989c617b260
    2989c6294241:	e9 1e 00 00 00                                  	jmp    0x2989c6294264
    2989c6294246:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629424a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c629424d:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c6294253:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    2989c6294259:	8b 9d b0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x350]
    2989c629425f:	e8 14 70 ee ff                                  	call   0x2989c617b278
    2989c6294264:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    2989c629426b:	0f 85 4e 00 00 00                               	jne    0x2989c62942bf
    2989c6294271:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c6294275:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c629427a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629427e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c6294283:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6294289:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c629428f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6294294:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c629429c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c62942a4:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c62942ac:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c62942b4:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c62942ba:	e9 2b 1d 00 00                                  	jmp    0x2989c6295fea
    2989c62942bf:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c62942c2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c62942c6:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    2989c62942cd:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    2989c62942d4:	0f 85 82 00 00 00                               	jne    0x2989c629435c
    2989c62942da:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    2989c62942e1:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    2989c62942e8:	c4 c1 7a 10 64 38 38                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x38]
    2989c62942ef:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    2989c62942f6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62942fa:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c62942fd:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    2989c6294303:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    2989c6294309:	e8 52 6f ee ff                                  	call   0x2989c617b260
    2989c629430e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c6294312:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c6294317:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c629431b:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c6294320:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6294326:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c629432c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6294331:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c6294339:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c6294341:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c6294349:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c6294351:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c6294357:	e9 8e 1c 00 00                                  	jmp    0x2989c6295fea
    2989c629435c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6294360:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6294363:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    2989c6294369:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    2989c629436f:	8b 9d c8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x338]
    2989c6294375:	e8 fe 6e ee ff                                  	call   0x2989c617b278
    2989c629437a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c629437e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c6294383:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c6294387:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c629438c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6294392:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c6294398:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c629439d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c62943a5:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c62943ad:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c62943b5:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c62943bd:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c62943c3:	e9 22 1c 00 00                                  	jmp    0x2989c6295fea
    2989c62943c8:	44 8b c3                                        	mov    r8d,ebx
    2989c62943cb:	41 83 e0 01                                     	and    r8d,0x1
    2989c62943cf:	41 f7 d8                                        	neg    r8d
    2989c62943d2:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    2989c62943d7:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c62943dc:	44 8b c3                                        	mov    r8d,ebx
    2989c62943df:	41 c1 e0 1e                                     	shl    r8d,0x1e
    2989c62943e3:	41 c1 f8 1f                                     	sar    r8d,0x1f
    2989c62943e7:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    2989c62943ed:	44 8b c3                                        	mov    r8d,ebx
    2989c62943f0:	41 c1 e0 1d                                     	shl    r8d,0x1d
    2989c62943f4:	41 c1 f8 1f                                     	sar    r8d,0x1f
    2989c62943f8:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    2989c62943fe:	44 8b c3                                        	mov    r8d,ebx
    2989c6294401:	41 c1 e0 1c                                     	shl    r8d,0x1c
    2989c6294405:	41 c1 f8 1f                                     	sar    r8d,0x1f
    2989c6294409:	c4 c3 79 22 c0 03                               	vpinsrd xmm0,xmm0,r8d,0x3
    2989c629440f:	c4 e1 82 2a bd 60 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xa0]
    2989c6294418:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    2989c629441d:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    2989c6294424:	4c 2b 85 d0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x330]
    2989c629442b:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    2989c6294430:	c4 c3 41 21 fb 10                               	vinsertps xmm7,xmm7,xmm11,0x10
    2989c6294436:	4c 8b ff                                        	mov    r15,rdi
    2989c6294439:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    2989c6294440:	49 8d 14 3f                                     	lea    rdx,[r15+rdi*1]
    2989c6294444:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    2989c6294449:	c4 c3 41 21 fb 20                               	vinsertps xmm7,xmm7,xmm11,0x20
    2989c629444f:	4d 03 c7                                        	add    r8,r15
    2989c6294452:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    2989c6294457:	c4 c3 41 21 fb 30                               	vinsertps xmm7,xmm7,xmm11,0x30
    2989c629445d:	c5 78 10 9d 00 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x300]
    2989c6294465:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    2989c6294469:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    2989c6294471:	c5 f0 59 d7                                     	vmulps xmm2,xmm1,xmm7
    2989c6294475:	c4 e1 82 2a 9d 50 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xb0]
    2989c629447e:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    2989c6294483:	4c 8b 85 50 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xb0]
    2989c629448a:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    2989c6294491:	c4 c1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,r8
    2989c6294496:	c4 e3 61 21 dc 10                               	vinsertps xmm3,xmm3,xmm4,0x10
    2989c629449c:	48 8b 95 50 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb0]
    2989c62944a3:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    2989c62944aa:	48 8d 3c 11                                     	lea    rdi,[rcx+rdx*1]
    2989c62944ae:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    2989c62944b3:	c4 e3 61 21 dc 20                               	vinsertps xmm3,xmm3,xmm4,0x20
    2989c62944b9:	4a 8d 3c 01                                     	lea    rdi,[rcx+r8*1]
    2989c62944bd:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    2989c62944c2:	c4 e3 61 21 dc 30                               	vinsertps xmm3,xmm3,xmm4,0x30
    2989c62944c8:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c62944cc:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    2989c62944d4:	c5 d8 59 eb                                     	vmulps xmm5,xmm4,xmm3
    2989c62944d8:	c5 e8 58 f5                                     	vaddps xmm6,xmm2,xmm5
    2989c62944dc:	4c 8b 15 6e a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa96e]        # 0x2989c628ee51
    2989c62944e3:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    2989c62944e8:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    2989c62944ed:	c5 38 5c cf                                     	vsubps xmm9,xmm8,xmm7
    2989c62944f1:	c5 30 5c cb                                     	vsubps xmm9,xmm9,xmm3
    2989c62944f5:	c5 78 10 95 20 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2e0]
    2989c62944fd:	c4 41 28 59 d9                                  	vmulps xmm11,xmm10,xmm9
    2989c6294502:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    2989c6294507:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    2989c629450c:	c5 28 c2 e6 01                                  	vcmpltps xmm12,xmm10,xmm6
    2989c6294511:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c6294515:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6294519:	49 8d 78 18                                     	lea    rdi,[r8+0x18]
    2989c629451d:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    2989c6294524:	c4 22 79 18 24 1f                               	vbroadcastss xmm12,DWORD PTR [rdi+r11*1]
    2989c629452a:	c4 c1 40 59 fc                                  	vmulps xmm7,xmm7,xmm12
    2989c629452f:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    2989c6294536:	c4 22 79 18 24 27                               	vbroadcastss xmm12,DWORD PTR [rdi+r12*1]
    2989c629453c:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    2989c6294541:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    2989c6294546:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    2989c629454d:	c4 22 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [rdi+r15*1]
    2989c6294553:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    2989c6294558:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    2989c629455d:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    2989c6294565:	c5 b0 58 ff                                     	vaddps xmm7,xmm9,xmm7
    2989c6294569:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    2989c629456d:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    2989c6294571:	44 8b ce                                        	mov    r9d,esi
    2989c6294574:	44 0f af 8d 28 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xd8]
    2989c629457c:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    2989c6294582:	44 03 cb                                        	add    r9d,ebx
    2989c6294585:	0f af 75 a0                                     	imul   esi,DWORD PTR [rbp-0x60]
    2989c6294589:	03 f3                                           	add    esi,ebx
    2989c629458b:	41 8b 5c 38 04                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x4]
    2989c6294590:	41 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+rdi*1+0x68]
    2989c6294595:	85 c0                                           	test   eax,eax
    2989c6294597:	0f 85 07 00 00 00                               	jne    0x2989c62945a4
    2989c629459d:	33 d2                                           	xor    edx,edx
    2989c629459f:	e9 13 01 00 00                                  	jmp    0x2989c62946b7
    2989c62945a4:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    2989c62945ac:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    2989c62945b5:	75 e6                                           	jne    0x2989c629459d
    2989c62945b7:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    2989c62945bc:	8d 0c b2                                        	lea    ecx,[rdx+rsi*4]
    2989c62945bf:	c4 41 7b 10 24 08                               	vmovsd xmm12,QWORD PTR [r8+rcx*1]
    2989c62945c5:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    2989c62945cb:	3b cb                                           	cmp    ecx,ebx
    2989c62945cd:	0f 8c 0d 00 00 00                               	jl     0x2989c62945e0
    2989c62945d3:	c5 f8 10 9d 40 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2c0]
    2989c62945db:	e9 0a 00 00 00                                  	jmp    0x2989c62945ea
    2989c62945e0:	42 8d 14 8a                                     	lea    edx,[rdx+r9*4]
    2989c62945e4:	c4 c1 7b 10 1c 10                               	vmovsd xmm3,QWORD PTR [r8+rdx*1]
    2989c62945ea:	c5 19 6c e3                                     	vpunpcklqdq xmm12,xmm12,xmm3
    2989c62945ee:	41 8b 54 38 6c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x6c]
    2989c62945f3:	81 ea 00 02 00 00                               	sub    edx,0x200
    2989c62945f9:	83 fa 07                                        	cmp    edx,0x7
    2989c62945fc:	0f 83 0b 00 00 00                               	jae    0x2989c629460d
    2989c6294602:	4c 8d 15 a7 1f 00 00                            	lea    r10,[rip+0x1fa7]        # 0x2989c62965b0
    2989c6294609:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    2989c629460d:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    2989c6294612:	e9 48 00 00 00                                  	jmp    0x2989c629465f
    2989c6294617:	c5 18 c2 e7 02                                  	vcmpleps xmm12,xmm12,xmm7
    2989c629461c:	e9 3e 00 00 00                                  	jmp    0x2989c629465f
    2989c6294621:	c4 41 40 c2 e4 04                               	vcmpneqps xmm12,xmm7,xmm12
    2989c6294627:	e9 33 00 00 00                                  	jmp    0x2989c629465f
    2989c629462c:	c5 18 c2 e7 01                                  	vcmpltps xmm12,xmm12,xmm7
    2989c6294631:	e9 29 00 00 00                                  	jmp    0x2989c629465f
    2989c6294636:	c4 41 40 c2 e4 02                               	vcmpleps xmm12,xmm7,xmm12
    2989c629463c:	e9 1e 00 00 00                                  	jmp    0x2989c629465f
    2989c6294641:	c4 41 40 c2 e4 00                               	vcmpeqps xmm12,xmm7,xmm12
    2989c6294647:	e9 13 00 00 00                                  	jmp    0x2989c629465f
    2989c629464c:	c4 41 40 c2 e4 01                               	vcmpltps xmm12,xmm7,xmm12
    2989c6294652:	e9 08 00 00 00                                  	jmp    0x2989c629465f
    2989c6294657:	c5 78 10 a5 40 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2c0]
    2989c629465f:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    2989c6294663:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    2989c6294667:	85 d2                                           	test   edx,edx
    2989c6294669:	0f 85 3c 00 00 00                               	jne    0x2989c62946ab
    2989c629466f:	4d 8b e0                                        	mov    r12,r8
    2989c6294672:	4c 8b c7                                        	mov    r8,rdi
    2989c6294675:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c629467a:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c629467f:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6294685:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c629468b:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6294690:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c6294698:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c62946a0:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c62946a6:	e9 3f 19 00 00                                  	jmp    0x2989c6295fea
    2989c62946ab:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    2989c62946b2:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c62946b7:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    2989c62946c1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c62946c6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c62946cb:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x2989c62946b9
    2989c62946d2:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c62946d7:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c62946db:	c5 e0 c2 de 01                                  	vcmpltps xmm3,xmm3,xmm6
    2989c62946e0:	c4 41 61 df fc                                  	vpandn xmm15,xmm3,xmm12
    2989c62946e5:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    2989c62946e9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c62946ee:	c5 b8 5e f6                                     	vdivps xmm6,xmm8,xmm6
    2989c62946f2:	48 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rbx
    2989c62946f9:	49 8d 58 2c                                     	lea    rbx,[r8+0x2c]
    2989c62946fd:	c4 22 79 18 24 1b                               	vbroadcastss xmm12,DWORD PTR [rbx+r11*1]
    2989c6294703:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    2989c6294708:	c4 a2 79 18 1c 23                               	vbroadcastss xmm3,DWORD PTR [rbx+r12*1]
    2989c629470e:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    2989c6294712:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    2989c6294716:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    2989c629471c:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c6294720:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    2989c6294724:	c4 41 48 59 e4                                  	vmulps xmm12,xmm6,xmm12
    2989c6294729:	49 8d 58 28                                     	lea    rbx,[r8+0x28]
    2989c629472d:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    2989c6294733:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    2989c6294737:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    2989c629473f:	c4 a2 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [rbx+r12*1]
    2989c6294745:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    2989c6294749:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    2989c629474d:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    2989c6294753:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c6294757:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    2989c629475b:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    2989c629475f:	49 8d 58 24                                     	lea    rbx,[r8+0x24]
    2989c6294763:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    2989c6294769:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    2989c629476d:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    2989c6294775:	c4 a2 79 18 3c 23                               	vbroadcastss xmm7,DWORD PTR [rbx+r12*1]
    2989c629477b:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    2989c629477f:	c5 e0 58 ff                                     	vaddps xmm7,xmm3,xmm7
    2989c6294783:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    2989c6294789:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c629478d:	c5 c0 58 fb                                     	vaddps xmm7,xmm7,xmm3
    2989c6294791:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    2989c6294795:	49 8d 58 20                                     	lea    rbx,[r8+0x20]
    2989c6294799:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    2989c629479f:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    2989c62947a3:	c5 78 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm8
    2989c62947ab:	c4 22 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [rbx+r12*1]
    2989c62947b1:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    2989c62947b6:	c4 41 60 58 c0                                  	vaddps xmm8,xmm3,xmm8
    2989c62947bb:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    2989c62947c1:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    2989c62947c5:	c5 38 58 c3                                     	vaddps xmm8,xmm8,xmm3
    2989c62947c9:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    2989c62947ce:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    2989c62947d5:	48 89 b5 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rsi
    2989c62947dc:	41 8b b4 18 34 01 00 00                         	mov    esi,DWORD PTR [r8+rbx*1+0x134]
    2989c62947e4:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    2989c62947eb:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    2989c62947ef:	c5 78 11 95 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm10
    2989c62947f7:	48 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rax
    2989c62947fe:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    2989c6294805:	41 83 f9 01                                     	cmp    r9d,0x1
    2989c6294809:	0f 87 fd 06 00 00                               	ja     0x2989c6294f0c
    2989c629480f:	45 8b 4c 18 28                                  	mov    r9d,DWORD PTR [r8+rbx*1+0x28]
    2989c6294814:	41 8b 7c 18 20                                  	mov    edi,DWORD PTR [r8+rbx*1+0x20]
    2989c6294819:	48 89 b5 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rsi
    2989c6294820:	49 8d 70 54                                     	lea    rsi,[r8+0x54]
    2989c6294824:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    2989c629482a:	c4 22 79 18 0c 1e                               	vbroadcastss xmm9,DWORD PTR [rsi+r11*1]
    2989c6294830:	c4 22 79 18 2c 26                               	vbroadcastss xmm13,DWORD PTR [rsi+r12*1]
    2989c6294836:	41 8b 74 18 1c                                  	mov    esi,DWORD PTR [r8+rbx*1+0x1c]
    2989c629483b:	c5 02 2a f6                                     	vcvtsi2ss xmm14,xmm15,esi
    2989c629483f:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    2989c6294844:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    2989c629484b:	4d 8d 48 50                                     	lea    r9,[r8+0x50]
    2989c629484f:	c4 82 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+r11*1]
    2989c6294855:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    2989c6294859:	c4 82 79 18 24 21                               	vbroadcastss xmm4,DWORD PTR [r9+r12*1]
    2989c629485f:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    2989c6294863:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    2989c6294867:	c4 82 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [r9+r15*1]
    2989c629486d:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    2989c6294871:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    2989c6294875:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    2989c6294879:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    2989c629487f:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    2989c6294883:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    2989c6294887:	4c 8b 15 13 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd213]        # 0x2989c6291aa1
    2989c629488e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c6294893:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    2989c6294897:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    2989c629489b:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    2989c62948a1:	4c 8b 15 f6 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ff6]        # 0x2989c628d89e
    2989c62948a8:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    2989c62948ad:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    2989c62948b2:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    2989c62948b8:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    2989c62948bd:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    2989c62948c2:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    2989c62948ca:	4c 8b 15 db d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2db]        # 0x2989c6291bac
    2989c62948d1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    2989c62948d6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    2989c62948db:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    2989c62948e3:	4c 8b 15 f3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f3]        # 0x2989c6291add
    2989c62948ea:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    2989c62948ef:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    2989c62948f7:	4c 8b 15 ee d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1ee]        # 0x2989c6291aec
    2989c62948fe:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6294903:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6294907:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    2989c629490c:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    2989c6294911:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    2989c6294915:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c629491a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c629491e:	c4 81 7a 7f 84 08 90 00 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x90],xmm0
    2989c6294928:	c5 82 2a c7                                     	vcvtsi2ss xmm0,xmm15,edi
    2989c629492c:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c6294931:	c4 41 68 59 c9                                  	vmulps xmm9,xmm2,xmm9
    2989c6294936:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    2989c629493b:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    2989c6294940:	c5 20 59 d3                                     	vmulps xmm10,xmm11,xmm3
    2989c6294944:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    2989c6294949:	c4 41 48 59 c9                                  	vmulps xmm9,xmm6,xmm9
    2989c629494e:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    2989c6294954:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    2989c6294959:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    2989c629495e:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    2989c6294962:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    2989c6294968:	4c 8b 15 2f 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8f2f]        # 0x2989c628d89e
    2989c629496f:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    2989c6294975:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    2989c629497a:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    2989c6294980:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    2989c6294985:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    2989c629498a:	4c 8b 15 4c d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd14c]        # 0x2989c6291add
    2989c6294991:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    2989c6294996:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    2989c629499b:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    2989c62949a0:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    2989c62949a5:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    2989c62949aa:	c4 01 7a 7f 94 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x190],xmm10
    2989c62949b4:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    2989c62949b8:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    2989c62949c0:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    2989c62949c5:	4c 8b 15 ad ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffedad]        # 0x2989c6293779
    2989c62949cc:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c62949d1:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    2989c62949d6:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    2989c62949db:	4c 8b 15 bc 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ebc]        # 0x2989c628d89e
    2989c62949e2:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    2989c62949e8:	c4 c1 28 54 cf                                  	vandps xmm1,xmm10,xmm15
    2989c62949ed:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    2989c62949f3:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    2989c62949f7:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    2989c62949fc:	4c 8b 15 da d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0da]        # 0x2989c6291add
    2989c6294a03:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    2989c6294a08:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    2989c6294a0d:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    2989c6294a12:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    2989c6294a17:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    2989c6294a1c:	c4 01 7a 7f 14 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm10
    2989c6294a22:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    2989c6294a27:	c4 c1 78 59 c5                                  	vmulps xmm0,xmm0,xmm13
    2989c6294a2c:	c4 c1 78 58 c6                                  	vaddps xmm0,xmm0,xmm14
    2989c6294a31:	4c 8b 15 66 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8e66]        # 0x2989c628d89e
    2989c6294a38:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c6294a3d:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    2989c6294a42:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c6294a48:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    2989c6294a4d:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    2989c6294a52:	4c 8b 15 84 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd084]        # 0x2989c6291add
    2989c6294a59:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    2989c6294a5e:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    2989c6294a63:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    2989c6294a68:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    2989c6294a6c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6294a71:	c4 81 7a 7f 44 08 70                            	vmovdqu XMMWORD PTR [r8+r9*1+0x70],xmm0
    2989c6294a78:	c4 01 7a 7f 44 08 50                            	vmovdqu XMMWORD PTR [r8+r9*1+0x50],xmm8
    2989c6294a7f:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    2989c6294a87:	c4 81 7a 7f bc 08 f0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1f0],xmm7
    2989c6294a91:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    2989c6294a99:	c4 81 7a 7f 84 08 e0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1e0],xmm0
    2989c6294aa3:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    2989c6294aab:	c4 01 7a 7f a4 08 d0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1d0],xmm12
    2989c6294ab5:	45 8b 7c 18 34                                  	mov    r15d,DWORD PTR [r8+rbx*1+0x34]
    2989c6294aba:	45 8b 64 18 30                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x30]
    2989c6294abf:	45 8b 5c 18 2c                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x2c]
    2989c6294ac4:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    2989c6294acb:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    2989c6294ad2:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    2989c6294ad9:	33 c0                                           	xor    eax,eax
    2989c6294adb:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    2989c6294ae1:	e9 2a 00 00 00                                  	jmp    0x2989c6294b10
    2989c6294ae6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6294aef:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2989c6294af8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    2989c6294b00:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    2989c6294b06:	45 8b cc                                        	mov    r9d,r12d
    2989c6294b09:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    2989c6294b10:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    2989c6294b15:	0f 85 5c 19 00 00                               	jne    0x2989c6296477
    2989c6294b1b:	8b c8                                           	mov    ecx,eax
    2989c6294b1d:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    2989c6294b24:	41 d3 ef                                        	shr    r15d,cl
    2989c6294b27:	41 f6 c7 01                                     	test   r15b,0x1
    2989c6294b2b:	0f 85 0a 00 00 00                               	jne    0x2989c6294b3b
    2989c6294b31:	45 8b e1                                        	mov    r12d,r9d
    2989c6294b34:	8b f8                                           	mov    edi,eax
    2989c6294b36:	e9 3d 03 00 00                                  	jmp    0x2989c6294e78
    2989c6294b3b:	45 8d bc 81 90 01 00 00                         	lea    r15d,[r9+rax*4+0x190]
    2989c6294b43:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    2989c6294b47:	41 8d 8c 81 90 00 00 00                         	lea    ecx,[r9+rax*4+0x90]
    2989c6294b4f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    2989c6294b53:	44 8d 49 01                                     	lea    r9d,[rcx+0x1]
    2989c6294b57:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    2989c6294b5e:	45 85 db                                        	test   r11d,r11d
    2989c6294b61:	0f 85 51 00 00 00                               	jne    0x2989c6294bb8
    2989c6294b67:	85 f6                                           	test   esi,esi
    2989c6294b69:	0f 84 c8 19 00 00                               	je     0x2989c6296537
    2989c6294b6f:	83 fe ff                                        	cmp    esi,0xffffffff
    2989c6294b72:	0f 84 94 19 00 00                               	je     0x2989c629650c
    2989c6294b78:	44 8b d0                                        	mov    r10d,eax
    2989c6294b7b:	8b c1                                           	mov    eax,ecx
    2989c6294b7d:	41 8b ca                                        	mov    ecx,r10d
    2989c6294b80:	99                                              	cdq
    2989c6294b81:	f7 fe                                           	idiv   esi
    2989c6294b83:	8b c2                                           	mov    eax,edx
    2989c6294b85:	c1 f8 1f                                        	sar    eax,0x1f
    2989c6294b88:	23 c6                                           	and    eax,esi
    2989c6294b8a:	03 c2                                           	add    eax,edx
    2989c6294b8c:	83 fe ff                                        	cmp    esi,0xffffffff
    2989c6294b8f:	0f 84 80 19 00 00                               	je     0x2989c6296515
    2989c6294b95:	44 8b d0                                        	mov    r10d,eax
    2989c6294b98:	41 8b c1                                        	mov    eax,r9d
    2989c6294b9b:	45 8b ca                                        	mov    r9d,r10d
    2989c6294b9e:	99                                              	cdq
    2989c6294b9f:	f7 fe                                           	idiv   esi
    2989c6294ba1:	8b c2                                           	mov    eax,edx
    2989c6294ba3:	c1 f8 1f                                        	sar    eax,0x1f
    2989c6294ba6:	23 c6                                           	and    eax,esi
    2989c6294ba8:	03 c2                                           	add    eax,edx
    2989c6294baa:	45 8b d1                                        	mov    r10d,r9d
    2989c6294bad:	44 8b c8                                        	mov    r9d,eax
    2989c6294bb0:	41 8b c2                                        	mov    eax,r10d
    2989c6294bb3:	e9 0e 00 00 00                                  	jmp    0x2989c6294bc6
    2989c6294bb8:	41 23 cb                                        	and    ecx,r11d
    2989c6294bbb:	45 23 cb                                        	and    r9d,r11d
    2989c6294bbe:	44 8b d1                                        	mov    r10d,ecx
    2989c6294bc1:	8b c8                                           	mov    ecx,eax
    2989c6294bc3:	41 8b c2                                        	mov    eax,r10d
    2989c6294bc6:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    2989c6294bca:	45 85 e4                                        	test   r12d,r12d
    2989c6294bcd:	0f 85 47 00 00 00                               	jne    0x2989c6294c1a
    2989c6294bd3:	85 ff                                           	test   edi,edi
    2989c6294bd5:	0f 84 57 19 00 00                               	je     0x2989c6296532
    2989c6294bdb:	83 ff ff                                        	cmp    edi,0xffffffff
    2989c6294bde:	0f 84 3b 19 00 00                               	je     0x2989c629651f
    2989c6294be4:	8b c8                                           	mov    ecx,eax
    2989c6294be6:	8b c2                                           	mov    eax,edx
    2989c6294be8:	99                                              	cdq
    2989c6294be9:	f7 ff                                           	idiv   edi
    2989c6294beb:	8b c2                                           	mov    eax,edx
    2989c6294bed:	c1 f8 1f                                        	sar    eax,0x1f
    2989c6294bf0:	23 c7                                           	and    eax,edi
    2989c6294bf2:	03 c2                                           	add    eax,edx
    2989c6294bf4:	83 ff ff                                        	cmp    edi,0xffffffff
    2989c6294bf7:	0f 84 2b 19 00 00                               	je     0x2989c6296528
    2989c6294bfd:	44 8b d0                                        	mov    r10d,eax
    2989c6294c00:	41 8b c7                                        	mov    eax,r15d
    2989c6294c03:	45 8b fa                                        	mov    r15d,r10d
    2989c6294c06:	99                                              	cdq
    2989c6294c07:	f7 ff                                           	idiv   edi
    2989c6294c09:	8b c2                                           	mov    eax,edx
    2989c6294c0b:	c1 f8 1f                                        	sar    eax,0x1f
    2989c6294c0e:	23 f8                                           	and    edi,eax
    2989c6294c10:	03 fa                                           	add    edi,edx
    2989c6294c12:	41 8b d7                                        	mov    edx,r15d
    2989c6294c15:	e9 0b 00 00 00                                  	jmp    0x2989c6294c25
    2989c6294c1a:	41 23 d4                                        	and    edx,r12d
    2989c6294c1d:	45 23 e7                                        	and    r12d,r15d
    2989c6294c20:	41 8b fc                                        	mov    edi,r12d
    2989c6294c23:	8b c8                                           	mov    ecx,eax
    2989c6294c25:	8b c1                                           	mov    eax,ecx
    2989c6294c27:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    2989c6294c2d:	44 8b ff                                        	mov    r15d,edi
    2989c6294c30:	41 d3 e7                                        	shl    r15d,cl
    2989c6294c33:	0f af fe                                        	imul   edi,esi
    2989c6294c36:	45 85 db                                        	test   r11d,r11d
    2989c6294c39:	41 0f 45 ff                                     	cmovne edi,r15d
    2989c6294c3d:	44 8d 3c 38                                     	lea    r15d,[rax+rdi*1]
    2989c6294c41:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    2989c6294c45:	c4 81 7a 10 04 38                               	vmovss xmm0,DWORD PTR [r8+r15*1]
    2989c6294c4b:	c4 e2 79 30 c0                                  	vpmovzxbw xmm0,xmm0
    2989c6294c50:	41 03 f9                                        	add    edi,r9d
    2989c6294c53:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c6294c56:	c4 c1 7a 10 3c 38                               	vmovss xmm7,DWORD PTR [r8+rdi*1]
    2989c6294c5c:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    2989c6294c61:	c5 f9 61 c7                                     	vpunpcklwd xmm0,xmm0,xmm7
    2989c6294c65:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    2989c6294c6b:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    2989c6294c72:	41 8d 8c bf 00 fe ff ff                         	lea    ecx,[r15+rdi*4-0x200]
    2989c6294c7a:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    2989c6294c7e:	41 bf 00 01 00 00                               	mov    r15d,0x100
    2989c6294c84:	44 8b e1                                        	mov    r12d,ecx
    2989c6294c87:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    2989c6294c8d:	45 0f 4d e7                                     	cmovge r12d,r15d
    2989c6294c91:	33 c9                                           	xor    ecx,ecx
    2989c6294c93:	45 85 e4                                        	test   r12d,r12d
    2989c6294c96:	41 0f 4f cc                                     	cmovg  ecx,r12d
    2989c6294c9a:	44 69 e1 ff ff 00 00                            	imul   r12d,ecx,0xffff
    2989c6294ca1:	41 81 c4 00 01 00 00                            	add    r12d,0x100
    2989c6294ca8:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    2989c6294cad:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    2989c6294cb2:	c5 f9 f5 c7                                     	vpmaddwd xmm0,xmm0,xmm7
    2989c6294cb6:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    2989c6294cba:	41 8d 4c bc 70                                  	lea    ecx,[r12+rdi*4+0x70]
    2989c6294cbf:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    2989c6294cc3:	8b f9                                           	mov    edi,ecx
    2989c6294cc5:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    2989c6294ccb:	41 0f 4d ff                                     	cmovge edi,r15d
    2989c6294ccf:	33 c9                                           	xor    ecx,ecx
    2989c6294cd1:	85 ff                                           	test   edi,edi
    2989c6294cd3:	0f 4f cf                                        	cmovg  ecx,edi
    2989c6294cd6:	44 2b f9                                        	sub    r15d,ecx
    2989c6294cd9:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    2989c6294cde:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    2989c6294ce3:	c4 c2 79 40 c0                                  	vpmulld xmm0,xmm0,xmm8
    2989c6294ce8:	44 8b f9                                        	mov    r15d,ecx
    2989c6294ceb:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    2989c6294cf1:	8b fa                                           	mov    edi,edx
    2989c6294cf3:	d3 e7                                           	shl    edi,cl
    2989c6294cf5:	0f af d6                                        	imul   edx,esi
    2989c6294cf8:	45 85 db                                        	test   r11d,r11d
    2989c6294cfb:	0f 45 d7                                        	cmovne edx,edi
    2989c6294cfe:	8d 3c 10                                        	lea    edi,[rax+rdx*1]
    2989c6294d01:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c6294d04:	c4 41 7a 10 04 38                               	vmovss xmm8,DWORD PTR [r8+rdi*1]
    2989c6294d0a:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    2989c6294d0f:	42 8d 3c 0a                                     	lea    edi,[rdx+r9*1]
    2989c6294d13:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    2989c6294d16:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    2989c6294d1c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    2989c6294d21:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    2989c6294d26:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    2989c6294d2a:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    2989c6294d2f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    2989c6294d34:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    2989c6294d39:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    2989c6294d3d:	4c 8b 15 25 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb25]        # 0x2989c6293869
    2989c6294d44:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    2989c6294d49:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    2989c6294d4d:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    2989c6294d51:	c5 f9 72 e0 10                                  	vpsrad xmm0,xmm0,0x10
    2989c6294d56:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    2989c6294d5b:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    2989c6294d5f:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    2989c6294d63:	44 8b ff                                        	mov    r15d,edi
    2989c6294d66:	41 c1 ef 18                                     	shr    r15d,0x18
    2989c6294d6a:	8b c7                                           	mov    eax,edi
    2989c6294d6c:	c1 e8 10                                        	shr    eax,0x10
    2989c6294d6f:	8b d7                                           	mov    edx,edi
    2989c6294d71:	c1 ea 08                                        	shr    edx,0x8
    2989c6294d74:	40 0f b6 ff                                     	movzx  edi,dil
    2989c6294d78:	44 8b d7                                        	mov    r10d,edi
    2989c6294d7b:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c6294d80:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    2989c6294d86:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    2989c6294d8b:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c6294d8f:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    2989c6294d95:	41 8d 4c bc 50                                  	lea    ecx,[r12+rdi*4+0x50]
    2989c6294d9a:	83 bd 50 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x1b0],0x2
    2989c6294da1:	0f 84 77 00 00 00                               	je     0x2989c6294e1e
    2989c6294da7:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    2989c6294dad:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    2989c6294db3:	41 8d 8c bc f0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1f0]
    2989c6294dbb:	0f b6 d2                                        	movzx  edx,dl
    2989c6294dbe:	44 8b d2                                        	mov    r10d,edx
    2989c6294dc1:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c6294dc6:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c6294dca:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    2989c6294dd0:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    2989c6294dd6:	41 8d 94 bc e0 01 00 00                         	lea    edx,[r12+rdi*4+0x1e0]
    2989c6294dde:	0f b6 c0                                        	movzx  eax,al
    2989c6294de1:	44 8b d0                                        	mov    r10d,eax
    2989c6294de4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c6294de9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c6294ded:	c4 c1 7a 59 04 10                               	vmulss xmm0,xmm0,DWORD PTR [r8+rdx*1]
    2989c6294df3:	c4 c1 7a 11 04 10                               	vmovss DWORD PTR [r8+rdx*1],xmm0
    2989c6294df9:	41 8d 84 bc d0 01 00 00                         	lea    eax,[r12+rdi*4+0x1d0]
    2989c6294e01:	45 8b d7                                        	mov    r10d,r15d
    2989c6294e04:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c6294e09:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c6294e0d:	c4 c1 7a 59 04 00                               	vmulss xmm0,xmm0,DWORD PTR [r8+rax*1]
    2989c6294e13:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    2989c6294e19:	e9 5a 00 00 00                                  	jmp    0x2989c6294e78
    2989c6294e1e:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    2989c6294e24:	41 8d 8c bc d0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1d0]
    2989c6294e2c:	45 8b d7                                        	mov    r10d,r15d
    2989c6294e2f:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c6294e34:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c6294e38:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    2989c6294e3e:	45 8d bc bc e0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1e0]
    2989c6294e46:	0f b6 c0                                        	movzx  eax,al
    2989c6294e49:	44 8b d0                                        	mov    r10d,eax
    2989c6294e4c:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c6294e51:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c6294e55:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    2989c6294e5b:	45 8d bc bc f0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1f0]
    2989c6294e63:	0f b6 c2                                        	movzx  eax,dl
    2989c6294e66:	44 8b d0                                        	mov    r10d,eax
    2989c6294e69:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c6294e6e:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    2989c6294e72:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    2989c6294e78:	8d 47 01                                        	lea    eax,[rdi+0x1]
    2989c6294e7b:	83 f8 04                                        	cmp    eax,0x4
    2989c6294e7e:	0f 85 7c fc ff ff                               	jne    0x2989c6294b00
    2989c6294e84:	c4 01 7a 6f a4 20 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r8+r12*1+0x1d0]
    2989c6294e8e:	c4 81 7a 6f bc 20 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r12*1+0x1f0]
    2989c6294e98:	c4 01 7a 6f 44 20 50                            	vmovdqu xmm8,XMMWORD PTR [r8+r12*1+0x50]
    2989c6294e9f:	c4 81 7a 6f 84 20 e0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+r12*1+0x1e0]
    2989c6294ea9:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c6294eb1:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c6294eb9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    2989c6294ec1:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    2989c6294ec8:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    2989c6294ecc:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    2989c6294ed4:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    2989c6294eda:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    2989c6294ee0:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    2989c6294ee7:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    2989c6294eee:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    2989c6294ef5:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    2989c6294efc:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    2989c6294f04:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    2989c6294f0c:	41 8b b4 38 ec 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xec]
    2989c6294f14:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    2989c6294f1c:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    2989c6294f25:	0f 84 04 04 00 00                               	je     0x2989c629532f
    2989c6294f2b:	49 8d b0 98 00 00 00                            	lea    rsi,[r8+0x98]
    2989c6294f32:	c4 a2 79 18 1c 1e                               	vbroadcastss xmm3,DWORD PTR [rsi+r11*1]
    2989c6294f38:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    2989c6294f3c:	c4 a2 79 18 1c 26                               	vbroadcastss xmm3,DWORD PTR [rsi+r12*1]
    2989c6294f42:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    2989c6294f46:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    2989c6294f4a:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    2989c6294f50:	c5 20 59 db                                     	vmulps xmm11,xmm11,xmm3
    2989c6294f54:	c4 41 68 58 db                                  	vaddps xmm11,xmm2,xmm11
    2989c6294f59:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    2989c6294f5e:	c5 28 5c de                                     	vsubps xmm11,xmm10,xmm6
    2989c6294f62:	c5 a0 c2 d6 01                                  	vcmpltps xmm2,xmm11,xmm6
    2989c6294f67:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    2989c6294f6c:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    2989c6294f70:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c6294f75:	4c 8b 15 d5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed5]        # 0x2989c628ee51
    2989c6294f7c:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6294f81:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    2989c6294f86:	41 8b b4 38 f0 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xf0]
    2989c6294f8e:	81 fe 00 08 00 00                               	cmp    esi,0x800
    2989c6294f94:	0f 84 8d 01 00 00                               	je     0x2989c6295127
    2989c6294f9a:	81 fe 01 26 00 00                               	cmp    esi,0x2601
    2989c6294fa0:	0f 84 23 01 00 00                               	je     0x2989c62950c9
    2989c6294fa6:	c4 c1 7a 10 94 38 f4 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xf4]
    2989c6294fb0:	c5 f8 28 de                                     	vmovaps xmm3,xmm6
    2989c6294fb4:	c5 ea 59 db                                     	vmulss xmm3,xmm2,xmm3
    2989c6294fb8:	4c 8b 15 70 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c70]        # 0x2989c628dc2f
    2989c6294fbf:	c4 c1 60 57 2a                                  	vxorps xmm5,xmm3,XMMWORD PTR [r10]
    2989c6294fc4:	c5 e2 59 dd                                     	vmulss xmm3,xmm3,xmm5
    2989c6294fc8:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    2989c6294fd0:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    2989c6294fd8:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    2989c6294fe0:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    2989c6294fe8:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    2989c6294ff0:	c5 fb 11 95 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm2
    2989c6294ff8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6294ffc:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    2989c6295000:	e8 b3 85 ee ff                                  	call   0x2989c617d5b8
    2989c6295005:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    2989c629500a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    2989c6295012:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    2989c6295016:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    2989c629501e:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    2989c6295022:	4c 8b 15 06 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c06]        # 0x2989c628dc2f
    2989c6295029:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    2989c629502e:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    2989c6295033:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    2989c629503b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629503f:	e8 74 85 ee ff                                  	call   0x2989c617d5b8
    2989c6295044:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    2989c629504c:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    2989c6295052:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    2989c629505a:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    2989c629505f:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    2989c6295067:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    2989c629506b:	4c 8b 15 bd 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8bbd]        # 0x2989c628dc2f
    2989c6295072:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    2989c6295077:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    2989c629507c:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    2989c6295084:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6295088:	e8 2b 85 ee ff                                  	call   0x2989c617d5b8
    2989c629508d:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    2989c6295095:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    2989c629509b:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    2989c62950a3:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    2989c62950a8:	c5 fb 10 bd b0 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x150]
    2989c62950b0:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    2989c62950b4:	4c 8b 15 74 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b74]        # 0x2989c628dc2f
    2989c62950bb:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    2989c62950c0:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    2989c62950c4:	e9 3a 01 00 00                                  	jmp    0x2989c6295203
    2989c62950c9:	c4 c1 7a 10 94 38 fc 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xfc]
    2989c62950d3:	c4 c1 6a 5c 9c 38 f8 00 00 00                   	vsubss xmm3,xmm2,DWORD PTR [r8+rdi*1+0xf8]
    2989c62950dd:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    2989c62950e1:	c5 f8 2e eb                                     	vucomiss xmm5,xmm3
    2989c62950e5:	7a 06                                           	jp     0x2989c62950ed
    2989c62950e7:	0f 84 2d 00 00 00                               	je     0x2989c629511a
    2989c62950ed:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    2989c62950f2:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    2989c62950f6:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    2989c62950fa:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    2989c62950ff:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    2989c6295104:	c5 ea 5e db                                     	vdivss xmm3,xmm2,xmm3
    2989c6295108:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    2989c629510c:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    2989c6295111:	c5 c8 59 f3                                     	vmulps xmm6,xmm6,xmm3
    2989c6295115:	e9 9f 01 00 00                                  	jmp    0x2989c62952b9
    2989c629511a:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    2989c6295122:	e9 92 01 00 00                                  	jmp    0x2989c62952b9
    2989c6295127:	c5 f8 28 d6                                     	vmovaps xmm2,xmm6
    2989c629512b:	c4 c1 7a 10 9c 38 f4 00 00 00                   	vmovss xmm3,DWORD PTR [r8+rdi*1+0xf4]
    2989c6295135:	4c 8b 15 f3 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8af3]        # 0x2989c628dc2f
    2989c629513c:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    2989c6295141:	c5 ea 59 d3                                     	vmulss xmm2,xmm2,xmm3
    2989c6295145:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    2989c629514d:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    2989c6295155:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    2989c629515d:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    2989c6295165:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    2989c629516d:	c5 fb 11 9d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm3
    2989c6295175:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6295179:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    2989c629517d:	e8 36 84 ee ff                                  	call   0x2989c617d5b8
    2989c6295182:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    2989c6295187:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    2989c629518f:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    2989c6295193:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    2989c629519b:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    2989c62951a3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62951a7:	e8 0c 84 ee ff                                  	call   0x2989c617d5b8
    2989c62951ac:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    2989c62951b4:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    2989c62951ba:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    2989c62951c2:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    2989c62951c7:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    2989c62951cf:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    2989c62951d7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62951db:	e8 d8 83 ee ff                                  	call   0x2989c617d5b8
    2989c62951e0:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    2989c62951e8:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    2989c62951ee:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    2989c62951f6:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    2989c62951fb:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    2989c6295203:	c5 f8 11 85 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm0
    2989c629520b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629520f:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c6295213:	e8 a0 83 ee ff                                  	call   0x2989c617d5b8
    2989c6295218:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    2989c6295220:	c4 e3 49 21 f1 30                               	vinsertps xmm6,xmm6,xmm1,0x30
    2989c6295226:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c629522e:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    2989c6295232:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    2989c629523a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c629523e:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    2989c6295246:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    2989c629524c:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    2989c6295252:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    2989c629525a:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    2989c6295262:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    2989c629526a:	c5 78 10 9d 70 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x190]
    2989c6295272:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    2989c6295276:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    2989c629527d:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    2989c6295284:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    2989c629528b:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    2989c6295292:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    2989c629529a:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    2989c62952a2:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    2989c62952a9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    2989c62952b1:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c62952b9:	c5 f8 10 95 80 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x180]
    2989c62952c1:	c5 e8 c2 de 01                                  	vcmpltps xmm3,xmm2,xmm6
    2989c62952c6:	c5 61 df fe                                     	vpandn xmm15,xmm3,xmm6
    2989c62952ca:	c5 a1 db f3                                     	vpand  xmm6,xmm11,xmm3
    2989c62952ce:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c62952d3:	c4 41 48 c2 da 01                               	vcmpltps xmm11,xmm6,xmm10
    2989c62952d9:	c5 a0 55 f6                                     	vandnps xmm6,xmm11,xmm6
    2989c62952dd:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c62952e1:	49 8d b0 08 01 00 00                            	lea    rsi,[r8+0x108]
    2989c62952e8:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    2989c62952ee:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    2989c62952f2:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    2989c62952f6:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    2989c62952fb:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    2989c62952ff:	49 8d b0 04 01 00 00                            	lea    rsi,[r8+0x104]
    2989c6295306:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    2989c629530c:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    2989c6295310:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    2989c6295315:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    2989c6295319:	49 8d b0 00 01 00 00                            	lea    rsi,[r8+0x100]
    2989c6295320:	c4 62 79 18 04 3e                               	vbroadcastss xmm8,DWORD PTR [rsi+rdi*1]
    2989c6295326:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    2989c629532a:	c4 41 48 58 c0                                  	vaddps xmm8,xmm6,xmm8
    2989c629532f:	41 8b b4 38 80 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x80]
    2989c6295337:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    2989c6295340:	0f 85 0d 00 00 00                               	jne    0x2989c6295353
    2989c6295346:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    2989c629534e:	e9 83 00 00 00                                  	jmp    0x2989c62953d6
    2989c6295353:	49 8d b0 88 00 00 00                            	lea    rsi,[r8+0x88]
    2989c629535a:	c4 e2 79 18 34 3e                               	vbroadcastss xmm6,DWORD PTR [rsi+rdi*1]
    2989c6295360:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c6295365:	41 8b b4 38 84 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x84]
    2989c629536d:	81 ee 00 02 00 00                               	sub    esi,0x200
    2989c6295373:	83 fe 07                                        	cmp    esi,0x7
    2989c6295376:	0f 83 0b 00 00 00                               	jae    0x2989c6295387
    2989c629537c:	4c 8d 15 f5 11 00 00                            	lea    r10,[rip+0x11f5]        # 0x2989c6296578
    2989c6295383:	41 ff 24 f2                                     	jmp    QWORD PTR [r10+rsi*8]
    2989c6295387:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    2989c629538c:	e9 39 00 00 00                                  	jmp    0x2989c62953ca
    2989c6295391:	c4 41 48 c2 dc 02                               	vcmpleps xmm11,xmm6,xmm12
    2989c6295397:	e9 2e 00 00 00                                  	jmp    0x2989c62953ca
    2989c629539c:	c5 18 c2 de 04                                  	vcmpneqps xmm11,xmm12,xmm6
    2989c62953a1:	e9 24 00 00 00                                  	jmp    0x2989c62953ca
    2989c62953a6:	c4 41 48 c2 dc 01                               	vcmpltps xmm11,xmm6,xmm12
    2989c62953ac:	e9 19 00 00 00                                  	jmp    0x2989c62953ca
    2989c62953b1:	c5 18 c2 de 02                                  	vcmpleps xmm11,xmm12,xmm6
    2989c62953b6:	e9 0f 00 00 00                                  	jmp    0x2989c62953ca
    2989c62953bb:	c5 18 c2 de 00                                  	vcmpeqps xmm11,xmm12,xmm6
    2989c62953c0:	e9 05 00 00 00                                  	jmp    0x2989c62953ca
    2989c62953c5:	c5 18 c2 de 01                                  	vcmpltps xmm11,xmm12,xmm6
    2989c62953ca:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    2989c62953d2:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    2989c62953d6:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    2989c62953da:	85 f6                                           	test   esi,esi
    2989c62953dc:	0f 84 8d f2 ff ff                               	je     0x2989c629466f
    2989c62953e2:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    2989c62953e7:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    2989c62953ed:	0f 85 15 00 00 00                               	jne    0x2989c6295408
    2989c62953f3:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    2989c62953f9:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c62953ff:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c6295403:	e9 1f 01 00 00                                  	jmp    0x2989c6295527
    2989c6295408:	41 8b 74 38 48                                  	mov    esi,DWORD PTR [r8+rdi*1+0x48]
    2989c629540d:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    2989c6295414:	45 33 db                                        	xor    r11d,r11d
    2989c6295417:	44 3b ce                                        	cmp    r9d,esi
    2989c629541a:	41 0f 9c c3                                     	setl   r11b
    2989c629541e:	45 8b 64 38 50                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x50]
    2989c6295423:	44 03 e6                                        	add    r12d,esi
    2989c6295426:	45 33 ff                                        	xor    r15d,r15d
    2989c6295429:	45 3b e1                                        	cmp    r12d,r9d
    2989c629542c:	41 0f 9e c7                                     	setle  r15b
    2989c6295430:	45 0b fb                                        	or     r15d,r11d
    2989c6295433:	45 8b 5c 38 4c                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x4c]
    2989c6295438:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c629543c:	33 db                                           	xor    ebx,ebx
    2989c629543e:	45 3b cb                                        	cmp    r9d,r11d
    2989c6295441:	0f 9c c3                                        	setl   bl
    2989c6295444:	41 8b cf                                        	mov    ecx,r15d
    2989c6295447:	0b cb                                           	or     ecx,ebx
    2989c6295449:	83 f1 ff                                        	xor    ecx,0xffffffff
    2989c629544c:	41 8b 54 38 54                                  	mov    edx,DWORD PTR [r8+rdi*1+0x54]
    2989c6295451:	41 03 d3                                        	add    edx,r11d
    2989c6295454:	33 ff                                           	xor    edi,edi
    2989c6295456:	44 3b ca                                        	cmp    r9d,edx
    2989c6295459:	40 0f 9c c7                                     	setl   dil
    2989c629545d:	23 cf                                           	and    ecx,edi
    2989c629545f:	f7 d9                                           	neg    ecx
    2989c6295461:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    2989c6295465:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    2989c629546a:	44 3b a5 30 ff ff ff                            	cmp    r12d,DWORD PTR [rbp-0xd0]
    2989c6295471:	41 0f 9e c4                                     	setle  r12b
    2989c6295475:	45 0f b6 e4                                     	movzx  r12d,r12b
    2989c6295479:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    2989c629547f:	3b ce                                           	cmp    ecx,esi
    2989c6295481:	40 0f 9c c6                                     	setl   sil
    2989c6295485:	40 0f b6 f6                                     	movzx  esi,sil
    2989c6295489:	41 0b f4                                        	or     esi,r12d
    2989c629548c:	0b de                                           	or     ebx,esi
    2989c629548e:	83 f3 ff                                        	xor    ebx,0xffffffff
    2989c6295491:	23 fb                                           	and    edi,ebx
    2989c6295493:	f7 df                                           	neg    edi
    2989c6295495:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    2989c629549b:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    2989c62954a1:	45 33 e4                                        	xor    r12d,r12d
    2989c62954a4:	3b fa                                           	cmp    edi,edx
    2989c62954a6:	41 0f 9c c4                                     	setl   r12b
    2989c62954aa:	41 3b fb                                        	cmp    edi,r11d
    2989c62954ad:	41 0f 9c c3                                     	setl   r11b
    2989c62954b1:	45 0f b6 db                                     	movzx  r11d,r11b
    2989c62954b5:	45 0b fb                                        	or     r15d,r11d
    2989c62954b8:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    2989c62954bc:	45 23 fc                                        	and    r15d,r12d
    2989c62954bf:	41 f7 df                                        	neg    r15d
    2989c62954c2:	c4 43 21 22 df 02                               	vpinsrd xmm11,xmm11,r15d,0x2
    2989c62954c8:	41 0b f3                                        	or     esi,r11d
    2989c62954cb:	83 f6 ff                                        	xor    esi,0xffffffff
    2989c62954ce:	44 23 e6                                        	and    r12d,esi
    2989c62954d1:	41 f7 dc                                        	neg    r12d
    2989c62954d4:	c4 43 21 22 dc 03                               	vpinsrd xmm11,xmm11,r12d,0x3
    2989c62954da:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    2989c62954de:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    2989c62954e2:	85 f6                                           	test   esi,esi
    2989c62954e4:	0f 85 3d 00 00 00                               	jne    0x2989c6295527
    2989c62954ea:	4d 8b e0                                        	mov    r12,r8
    2989c62954ed:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c62954f1:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c62954f6:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c62954fb:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6295501:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c6295507:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c629550c:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c6295514:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c629551c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c6295522:	e9 c3 0a 00 00                                  	jmp    0x2989c6295fea
    2989c6295527:	85 c0                                           	test   eax,eax
    2989c6295529:	0f 85 16 00 00 00                               	jne    0x2989c6295545
    2989c629552f:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    2989c6295536:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c629553a:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    2989c6295540:	e9 fe 01 00 00                                  	jmp    0x2989c6295743
    2989c6295545:	83 bd 20 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xe0],0x0
    2989c629554c:	0f 85 42 01 00 00                               	jne    0x2989c6295694
    2989c6295552:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c6295557:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c629555b:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    2989c6295560:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    2989c6295567:	43 8d 04 bc                                     	lea    eax,[r12+r15*4]
    2989c629556b:	c4 c1 7b 10 14 00                               	vmovsd xmm2,QWORD PTR [r8+rax*1]
    2989c6295571:	3b bd 00 ff ff ff                               	cmp    edi,DWORD PTR [rbp-0x100]
    2989c6295577:	0f 8c 10 00 00 00                               	jl     0x2989c629558d
    2989c629557d:	c4 c1 79 28 db                                  	vmovapd xmm3,xmm11
    2989c6295582:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    2989c6295588:	e9 10 00 00 00                                  	jmp    0x2989c629559d
    2989c629558d:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    2989c6295593:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    2989c6295597:	c4 81 7b 10 1c 20                               	vmovsd xmm3,QWORD PTR [r8+r12*1]
    2989c629559d:	c5 e9 6c d3                                     	vpunpcklqdq xmm2,xmm2,xmm3
    2989c62955a1:	47 8b 64 18 6c                                  	mov    r12d,DWORD PTR [r8+r11*1+0x6c]
    2989c62955a6:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    2989c62955ad:	41 83 fc 07                                     	cmp    r12d,0x7
    2989c62955b1:	0f 83 0b 00 00 00                               	jae    0x2989c62955c2
    2989c62955b7:	4c 8d 15 82 0f 00 00                            	lea    r10,[rip+0xf82]        # 0x2989c6296540
    2989c62955be:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    2989c62955c2:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    2989c62955c7:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    2989c62955cf:	e9 74 00 00 00                                  	jmp    0x2989c6295648
    2989c62955d4:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    2989c62955dc:	c5 68 c2 db 02                                  	vcmpleps xmm11,xmm2,xmm3
    2989c62955e1:	e9 62 00 00 00                                  	jmp    0x2989c6295648
    2989c62955e6:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    2989c62955ee:	c5 60 c2 da 04                                  	vcmpneqps xmm11,xmm3,xmm2
    2989c62955f3:	e9 50 00 00 00                                  	jmp    0x2989c6295648
    2989c62955f8:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    2989c6295600:	c5 68 c2 db 01                                  	vcmpltps xmm11,xmm2,xmm3
    2989c6295605:	e9 3e 00 00 00                                  	jmp    0x2989c6295648
    2989c629560a:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    2989c6295612:	c5 60 c2 da 02                                  	vcmpleps xmm11,xmm3,xmm2
    2989c6295617:	e9 2c 00 00 00                                  	jmp    0x2989c6295648
    2989c629561c:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    2989c6295624:	c5 60 c2 da 00                                  	vcmpeqps xmm11,xmm3,xmm2
    2989c6295629:	e9 1a 00 00 00                                  	jmp    0x2989c6295648
    2989c629562e:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    2989c6295636:	c5 60 c2 da 01                                  	vcmpltps xmm11,xmm3,xmm2
    2989c629563b:	e9 08 00 00 00                                  	jmp    0x2989c6295648
    2989c6295640:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    2989c6295648:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    2989c629564c:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    2989c6295650:	85 f6                                           	test   esi,esi
    2989c6295652:	0f 85 4d 00 00 00                               	jne    0x2989c62956a5
    2989c6295658:	4d 8b e0                                        	mov    r12,r8
    2989c629565b:	4d 8b c3                                        	mov    r8,r11
    2989c629565e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c6295663:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c6295668:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c629566e:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c6295674:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6295679:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c6295681:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c6295689:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c629568f:	e9 56 09 00 00                                  	jmp    0x2989c6295fea
    2989c6295694:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    2989c629569b:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c629569f:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    2989c62956a5:	47 8b 64 18 70                                  	mov    r12d,DWORD PTR [r8+r11*1+0x70]
    2989c62956aa:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    2989c62956b0:	0f 84 8d 00 00 00                               	je     0x2989c6295743
    2989c62956b6:	40 f6 c6 01                                     	test   sil,0x1
    2989c62956ba:	0f 85 0d 00 00 00                               	jne    0x2989c62956cd
    2989c62956c0:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    2989c62956c8:	e9 1b 00 00 00                                  	jmp    0x2989c62956e8
    2989c62956cd:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    2989c62956d2:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    2989c62956d6:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    2989c62956de:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    2989c62956e2:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    2989c62956e8:	40 f6 c6 02                                     	test   sil,0x2
    2989c62956ec:	0f 84 14 00 00 00                               	je     0x2989c6295706
    2989c62956f2:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    2989c62956f7:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    2989c62956fb:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    2989c62956ff:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    2989c6295706:	40 f6 c6 04                                     	test   sil,0x4
    2989c629570a:	0f 84 14 00 00 00                               	je     0x2989c6295724
    2989c6295710:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    2989c6295715:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    2989c6295719:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    2989c629571e:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    2989c6295724:	40 f6 c6 08                                     	test   sil,0x8
    2989c6295728:	0f 84 15 00 00 00                               	je     0x2989c6295743
    2989c629572e:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    2989c6295733:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    2989c6295737:	c5 79 70 de 03                                  	vpshufd xmm11,xmm6,0x3
    2989c629573c:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    2989c6295743:	47 8b 64 18 74                                  	mov    r12d,DWORD PTR [r8+r11*1+0x74]
    2989c6295748:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    2989c629574e:	0f 85 0d 00 00 00                               	jne    0x2989c6295761
    2989c6295754:	46 8d 24 bd 00 00 00 00                         	lea    r12d,[r15*4+0x0]
    2989c629575c:	e9 d6 02 00 00                                  	jmp    0x2989c6295a37
    2989c6295761:	47 8b 64 18 78                                  	mov    r12d,DWORD PTR [r8+r11*1+0x78]
    2989c6295766:	41 8d 9c 24 fe fc ff ff                         	lea    ebx,[r12-0x302]
    2989c629576e:	33 d2                                           	xor    edx,edx
    2989c6295770:	83 fb 04                                        	cmp    ebx,0x4
    2989c6295773:	0f 93 c2                                        	setae  dl
    2989c6295776:	33 c9                                           	xor    ecx,ecx
    2989c6295778:	41 83 fc 01                                     	cmp    r12d,0x1
    2989c629577c:	0f 97 c1                                        	seta   cl
    2989c629577f:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    2989c6295786:	85 ca                                           	test   edx,ecx
    2989c6295788:	0f 85 b9 05 00 00                               	jne    0x2989c6295d47
    2989c629578e:	43 8b 54 18 7c                                  	mov    edx,DWORD PTR [r8+r11*1+0x7c]
    2989c6295793:	8d 8a fe fc ff ff                               	lea    ecx,[rdx-0x302]
    2989c6295799:	45 33 c9                                        	xor    r9d,r9d
    2989c629579c:	83 f9 04                                        	cmp    ecx,0x4
    2989c629579f:	41 0f 93 c1                                     	setae  r9b
    2989c62957a3:	33 f6                                           	xor    esi,esi
    2989c62957a5:	83 fa 01                                        	cmp    edx,0x1
    2989c62957a8:	40 0f 97 c6                                     	seta   sil
    2989c62957ac:	41 85 f1                                        	test   r9d,esi
    2989c62957af:	0f 85 88 05 00 00                               	jne    0x2989c6295d3d
    2989c62957b5:	42 8d 34 bd 00 00 00 00                         	lea    esi,[r15*4+0x0]
    2989c62957bd:	47 8b 4c 18 08                                  	mov    r9d,DWORD PTR [r8+r11*1+0x8]
    2989c62957c2:	47 8d 3c b9                                     	lea    r15d,[r9+r15*4]
    2989c62957c6:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    2989c62957cc:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    2989c62957d3:	44 3b ff                                        	cmp    r15d,edi
    2989c62957d6:	0f 8e 0f 00 00 00                               	jle    0x2989c62957eb
    2989c62957dc:	45 8d 0c 81                                     	lea    r9d,[r9+rax*4]
    2989c62957e0:	c4 01 7b 10 1c 08                               	vmovsd xmm11,QWORD PTR [r8+r9*1]
    2989c62957e6:	e9 05 00 00 00                                  	jmp    0x2989c62957f0
    2989c62957eb:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c62957f0:	c4 c1 49 6c f3                                  	vpunpcklqdq xmm6,xmm6,xmm11
    2989c62957f5:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    2989c62957ff:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    2989c6295804:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    2989c629580e:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    2989c6295814:	c4 42 49 00 db                                  	vpshufb xmm11,xmm6,xmm11
    2989c6295819:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    2989c629581e:	4c 8b 15 cd ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcacd]        # 0x2989c62922f2
    2989c6295825:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c629582a:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c629582e:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    2989c6295832:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    2989c629583c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c6295841:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    2989c629584b:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    2989c6295851:	c4 e2 49 00 db                                  	vpshufb xmm3,xmm6,xmm3
    2989c6295856:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c629585a:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    2989c6295864:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c6295869:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    2989c6295873:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    2989c6295879:	c4 e2 49 00 ed                                  	vpshufb xmm5,xmm6,xmm5
    2989c629587e:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c6295882:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    2989c629588c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6295891:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    2989c629589b:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    2989c62958a1:	c4 c2 49 00 f1                                  	vpshufb xmm6,xmm6,xmm9
    2989c62958a6:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c62958aa:	83 fb 02                                        	cmp    ebx,0x2
    2989c62958ad:	0f 8c 14 00 00 00                               	jl     0x2989c62958c7
    2989c62958b3:	0f 84 69 00 00 00                               	je     0x2989c6295922
    2989c62958b9:	83 fb 03                                        	cmp    ebx,0x3
    2989c62958bc:	0f 84 45 00 00 00                               	je     0x2989c6295907
    2989c62958c2:	e9 17 00 00 00                                  	jmp    0x2989c62958de
    2989c62958c7:	83 fb 00                                        	cmp    ebx,0x0
    2989c62958ca:	0f 84 77 00 00 00                               	je     0x2989c6295947
    2989c62958d0:	83 fb 01                                        	cmp    ebx,0x1
    2989c62958d3:	0f 84 53 00 00 00                               	je     0x2989c629592c
    2989c62958d9:	e9 00 00 00 00                                  	jmp    0x2989c62958de
    2989c62958de:	45 85 e4                                        	test   r12d,r12d
    2989c62958e1:	0f 85 0a 00 00 00                               	jne    0x2989c62958f1
    2989c62958e7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    2989c62958ec:	e9 5b 00 00 00                                  	jmp    0x2989c629594c
    2989c62958f1:	4c 8b 15 59 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9559]        # 0x2989c628ee51
    2989c62958f8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c62958fd:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6295902:	e9 45 00 00 00                                  	jmp    0x2989c629594c
    2989c6295907:	4c 8b 15 43 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9543]        # 0x2989c628ee51
    2989c629590e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6295913:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6295918:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    2989c629591d:	e9 2a 00 00 00                                  	jmp    0x2989c629594c
    2989c6295922:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    2989c6295927:	e9 20 00 00 00                                  	jmp    0x2989c629594c
    2989c629592c:	4c 8b 15 1e 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff951e]        # 0x2989c628ee51
    2989c6295933:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6295938:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c629593d:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    2989c6295942:	e9 05 00 00 00                                  	jmp    0x2989c629594c
    2989c6295947:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    2989c629594c:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    2989c6295950:	c5 d0 59 ea                                     	vmulps xmm5,xmm5,xmm2
    2989c6295954:	c5 c8 59 f2                                     	vmulps xmm6,xmm6,xmm2
    2989c6295958:	83 f9 02                                        	cmp    ecx,0x2
    2989c629595b:	0f 8c 14 00 00 00                               	jl     0x2989c6295975
    2989c6295961:	0f 84 5e 00 00 00                               	je     0x2989c62959c5
    2989c6295967:	83 f9 03                                        	cmp    ecx,0x3
    2989c629596a:	0f 84 3a 00 00 00                               	je     0x2989c62959aa
    2989c6295970:	e9 17 00 00 00                                  	jmp    0x2989c629598c
    2989c6295975:	83 f9 00                                        	cmp    ecx,0x0
    2989c6295978:	0f 84 6c 00 00 00                               	je     0x2989c62959ea
    2989c629597e:	83 f9 01                                        	cmp    ecx,0x1
    2989c6295981:	0f 84 48 00 00 00                               	je     0x2989c62959cf
    2989c6295987:	e9 00 00 00 00                                  	jmp    0x2989c629598c
    2989c629598c:	85 d2                                           	test   edx,edx
    2989c629598e:	0f 84 5b 00 00 00                               	je     0x2989c62959ef
    2989c6295994:	4c 8b 15 b6 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94b6]        # 0x2989c628ee51
    2989c629599b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c62959a0:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c62959a5:	e9 45 00 00 00                                  	jmp    0x2989c62959ef
    2989c62959aa:	4c 8b 15 a0 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94a0]        # 0x2989c628ee51
    2989c62959b1:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c62959b6:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c62959bb:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    2989c62959c0:	e9 2a 00 00 00                                  	jmp    0x2989c62959ef
    2989c62959c5:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    2989c62959ca:	e9 20 00 00 00                                  	jmp    0x2989c62959ef
    2989c62959cf:	4c 8b 15 7b 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947b]        # 0x2989c628ee51
    2989c62959d6:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c62959db:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c62959e0:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    2989c62959e5:	e9 05 00 00 00                                  	jmp    0x2989c62959ef
    2989c62959ea:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    2989c62959ef:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    2989c62959f4:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    2989c62959f9:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    2989c62959fe:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    2989c6295a03:	c4 41 60 59 da                                  	vmulps xmm11,xmm3,xmm10
    2989c6295a08:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    2989c6295a0d:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    2989c6295a12:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    2989c6295a17:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    2989c6295a1c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    2989c6295a21:	c4 c1 48 59 f2                                  	vmulps xmm6,xmm6,xmm10
    2989c6295a26:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    2989c6295a2a:	44 8b e6                                        	mov    r12d,esi
    2989c6295a2d:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    2989c6295a33:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c6295a37:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    2989c6295a3b:	4c 8b 15 0f 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff940f]        # 0x2989c628ee51
    2989c6295a42:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    2989c6295a47:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    2989c6295a4c:	4c 8b 15 fe 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff93fe]        # 0x2989c628ee51
    2989c6295a53:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    2989c6295a58:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    2989c6295a5d:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    2989c6295a63:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    2989c6295a68:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    2989c6295a6d:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    2989c6295a72:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    2989c6295a77:	c4 c1 38 c2 d3 01                               	vcmpltps xmm2,xmm8,xmm11
    2989c6295a7d:	c4 41 68 55 c0                                  	vandnps xmm8,xmm2,xmm8
    2989c6295a82:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    2989c6295a8c:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c6295a91:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c6295a95:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    2989c6295a99:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    2989c6295a9f:	4c 8b 15 f8 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7df8]        # 0x2989c628d89e
    2989c6295aa6:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    2989c6295aac:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    2989c6295ab1:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    2989c6295ab7:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    2989c6295abc:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    2989c6295ac1:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    2989c6295ac6:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    2989c6295acb:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    2989c6295ad1:	c5 a8 c2 df 01                                  	vcmpltps xmm3,xmm10,xmm7
    2989c6295ad6:	c5 61 df ff                                     	vpandn xmm15,xmm3,xmm7
    2989c6295ada:	c5 b1 db fb                                     	vpand  xmm7,xmm9,xmm3
    2989c6295ade:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c6295ae3:	c4 c1 40 c2 db 01                               	vcmpltps xmm3,xmm7,xmm11
    2989c6295ae9:	c5 e0 55 ff                                     	vandnps xmm7,xmm3,xmm7
    2989c6295aed:	c5 c0 59 fa                                     	vmulps xmm7,xmm7,xmm2
    2989c6295af1:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    2989c6295af7:	4c 8b 15 a0 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7da0]        # 0x2989c628d89e
    2989c6295afe:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    2989c6295b03:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    2989c6295b08:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    2989c6295b0e:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    2989c6295b12:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    2989c6295b17:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    2989c6295b1b:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    2989c6295b1f:	c4 e3 41 0e fe fc                               	vpblendw xmm7,xmm7,xmm6,0xfc
    2989c6295b25:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    2989c6295b29:	c5 28 c2 c0 01                                  	vcmpltps xmm8,xmm10,xmm0
    2989c6295b2e:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    2989c6295b32:	c4 c1 31 db c0                                  	vpand  xmm0,xmm9,xmm8
    2989c6295b37:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6295b3c:	c4 41 78 c2 c3 01                               	vcmpltps xmm8,xmm0,xmm11
    2989c6295b42:	c5 b8 55 c0                                     	vandnps xmm0,xmm8,xmm0
    2989c6295b46:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    2989c6295b4a:	c4 e3 79 08 c0 08                               	vroundps xmm0,xmm0,0x8
    2989c6295b50:	4c 8b 15 47 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7d47]        # 0x2989c628d89e
    2989c6295b57:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    2989c6295b5c:	c4 c1 78 54 c7                                  	vandps xmm0,xmm0,xmm15
    2989c6295b61:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    2989c6295b67:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    2989c6295b6b:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    2989c6295b70:	c5 f9 6b c0                                     	vpackssdw xmm0,xmm0,xmm0
    2989c6295b74:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    2989c6295b78:	c4 e3 79 0e c6 fc                               	vpblendw xmm0,xmm0,xmm6,0xfc
    2989c6295b7e:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    2989c6295b84:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    2989c6295b89:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    2989c6295b8e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    2989c6295b93:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    2989c6295b99:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    2989c6295b9e:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    2989c6295ba2:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    2989c6295ba8:	4c 8b 15 ef 7c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7cef]        # 0x2989c628d89e
    2989c6295baf:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    2989c6295bb5:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    2989c6295bba:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    2989c6295bc0:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    2989c6295bc5:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    2989c6295bca:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    2989c6295bcf:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    2989c6295bd4:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    2989c6295bda:	c4 c1 79 60 c0                                  	vpunpcklbw xmm0,xmm0,xmm8
    2989c6295bdf:	c5 c1 61 c0                                     	vpunpcklwd xmm0,xmm7,xmm0
    2989c6295be3:	c4 81 7a 6f bc 18 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x520]
    2989c6295bed:	c5 c1 76 fe                                     	vpcmpeqd xmm7,xmm7,xmm6
    2989c6295bf1:	c4 c3 79 16 ff 01                               	vpextrd r15d,xmm7,0x1
    2989c6295bf7:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    2989c6295bfc:	33 d2                                           	xor    edx,edx
    2989c6295bfe:	41 f6 c7 01                                     	test   r15b,0x1
    2989c6295c02:	0f 45 da                                        	cmovne ebx,edx
    2989c6295c05:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    2989c6295c0a:	b9 ff 00 00 00                                  	mov    ecx,0xff
    2989c6295c0f:	41 f6 c7 01                                     	test   r15b,0x1
    2989c6295c13:	0f 45 ca                                        	cmovne ecx,edx
    2989c6295c16:	0b cb                                           	or     ecx,ebx
    2989c6295c18:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    2989c6295c1e:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    2989c6295c23:	41 f6 c7 01                                     	test   r15b,0x1
    2989c6295c27:	0f 45 da                                        	cmovne ebx,edx
    2989c6295c2a:	0b d9                                           	or     ebx,ecx
    2989c6295c2c:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    2989c6295c32:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    2989c6295c37:	41 f6 c7 01                                     	test   r15b,0x1
    2989c6295c3b:	0f 45 ca                                        	cmovne ecx,edx
    2989c6295c3e:	0b cb                                           	or     ecx,ebx
    2989c6295c40:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    2989c6295c44:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    2989c6295c49:	44 8b fe                                        	mov    r15d,esi
    2989c6295c4c:	41 83 e7 01                                     	and    r15d,0x1
    2989c6295c50:	41 f7 df                                        	neg    r15d
    2989c6295c53:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    2989c6295c58:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    2989c6295c5d:	44 8b fe                                        	mov    r15d,esi
    2989c6295c60:	41 c1 e7 1e                                     	shl    r15d,0x1e
    2989c6295c64:	41 c1 ff 1f                                     	sar    r15d,0x1f
    2989c6295c68:	c4 43 39 22 c7 01                               	vpinsrd xmm8,xmm8,r15d,0x1
    2989c6295c6e:	44 8b fe                                        	mov    r15d,esi
    2989c6295c71:	41 c1 e7 1d                                     	shl    r15d,0x1d
    2989c6295c75:	41 c1 ff 1f                                     	sar    r15d,0x1f
    2989c6295c79:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    2989c6295c7f:	44 8b fe                                        	mov    r15d,esi
    2989c6295c82:	41 c1 e7 1c                                     	shl    r15d,0x1c
    2989c6295c86:	41 c1 ff 1f                                     	sar    r15d,0x1f
    2989c6295c8a:	c4 43 39 22 c7 03                               	vpinsrd xmm8,xmm8,r15d,0x3
    2989c6295c90:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    2989c6295c95:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    2989c6295c9a:	45 03 e7                                        	add    r12d,r15d
    2989c6295c9d:	c4 01 7b 10 04 20                               	vmovsd xmm8,QWORD PTR [r8+r12*1]
    2989c6295ca3:	8b 9d 00 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x100]
    2989c6295ca9:	3b df                                           	cmp    ebx,edi
    2989c6295cab:	0f 8e 0a 00 00 00                               	jle    0x2989c6295cbb
    2989c6295cb1:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    2989c6295cb5:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    2989c6295cbb:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    2989c6295cbf:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    2989c6295cc3:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    2989c6295cc7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c6295ccc:	40 f6 c6 03                                     	test   sil,0x3
    2989c6295cd0:	0f 84 06 00 00 00                               	je     0x2989c6295cdc
    2989c6295cd6:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    2989c6295cdc:	3b df                                           	cmp    ebx,edi
    2989c6295cde:	0f 8e 74 f9 ff ff                               	jle    0x2989c6295658
    2989c6295ce4:	40 f6 c6 0c                                     	test   sil,0xc
    2989c6295ce8:	0f 84 6a f9 ff ff                               	je     0x2989c6295658
    2989c6295cee:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    2989c6295cf3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    2989c6295cf7:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    2989c6295cfb:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    2989c6295d01:	4d 8b e0                                        	mov    r12,r8
    2989c6295d04:	4d 8b c3                                        	mov    r8,r11
    2989c6295d07:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c6295d0c:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c6295d11:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6295d17:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c6295d1d:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6295d22:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c6295d2a:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c6295d32:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c6295d38:	e9 ad 02 00 00                                  	jmp    0x2989c6295fea
    2989c6295d3d:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    2989c6295d43:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c6295d47:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    2989c6295d4f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    2989c6295d57:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    2989c6295d5f:	40 f6 c6 01                                     	test   sil,0x1
    2989c6295d63:	0f 84 9d 00 00 00                               	je     0x2989c6295e06
    2989c6295d69:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    2989c6295d71:	c5 78 28 d6                                     	vmovaps xmm10,xmm6
    2989c6295d75:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    2989c6295d7a:	c5 f8 28 df                                     	vmovaps xmm3,xmm7
    2989c6295d7e:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    2989c6295d82:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    2989c6295d87:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6295d8b:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6295d8e:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c6295d94:	41 8b c9                                        	mov    ecx,r9d
    2989c6295d97:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    2989c6295d9c:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    2989c6295da1:	e8 ba 54 ee ff                                  	call   0x2989c617b260
    2989c6295da6:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c6295daa:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c6295dae:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    2989c6295db4:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    2989c6295dbc:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    2989c6295dc4:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    2989c6295dcc:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    2989c6295dd4:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    2989c6295dda:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6295dde:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    2989c6295de6:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    2989c6295dee:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    2989c6295df6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c6295dfe:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c6295e06:	40 f6 c6 02                                     	test   sil,0x2
    2989c6295e0a:	0f 84 9d 00 00 00                               	je     0x2989c6295ead
    2989c6295e10:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    2989c6295e18:	c5 7a 16 d6                                     	vmovshdup xmm10,xmm6
    2989c6295e1c:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    2989c6295e21:	c5 fa 16 df                                     	vmovshdup xmm3,xmm7
    2989c6295e25:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    2989c6295e29:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    2989c6295e2e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6295e32:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6295e35:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    2989c6295e3b:	41 8b c9                                        	mov    ecx,r9d
    2989c6295e3e:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    2989c6295e43:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    2989c6295e48:	e8 13 54 ee ff                                  	call   0x2989c617b260
    2989c6295e4d:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c6295e51:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c6295e55:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    2989c6295e5b:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    2989c6295e63:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    2989c6295e6b:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    2989c6295e73:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    2989c6295e7b:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    2989c6295e81:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6295e85:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    2989c6295e8d:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    2989c6295e95:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    2989c6295e9d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c6295ea5:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c6295ead:	40 f6 c6 04                                     	test   sil,0x4
    2989c6295eb1:	0f 84 a1 00 00 00                               	je     0x2989c6295f58
    2989c6295eb7:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    2989c6295ebf:	c5 79 70 d6 02                                  	vpshufd xmm10,xmm6,0x2
    2989c6295ec4:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    2989c6295eca:	c5 f9 70 df 02                                  	vpshufd xmm3,xmm7,0x2
    2989c6295ecf:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    2989c6295ed4:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    2989c6295eda:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6295ede:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6295ee1:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    2989c6295ee7:	8b cf                                           	mov    ecx,edi
    2989c6295ee9:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    2989c6295eee:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    2989c6295ef3:	e8 68 53 ee ff                                  	call   0x2989c617b260
    2989c6295ef8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    2989c6295efc:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c6295f00:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    2989c6295f06:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    2989c6295f0e:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    2989c6295f16:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    2989c6295f1e:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    2989c6295f26:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    2989c6295f2c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c6295f30:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    2989c6295f38:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    2989c6295f40:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    2989c6295f48:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c6295f50:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c6295f58:	40 f6 c6 08                                     	test   sil,0x8
    2989c6295f5c:	0f 84 f6 f6 ff ff                               	je     0x2989c6295658
    2989c6295f62:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    2989c6295f6a:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    2989c6295f6f:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    2989c6295f75:	c5 f9 70 df 03                                  	vpshufd xmm3,xmm7,0x3
    2989c6295f7a:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    2989c6295f7f:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    2989c6295f85:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6295f89:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6295f8c:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    2989c6295f92:	8b cf                                           	mov    ecx,edi
    2989c6295f94:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c6295f98:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    2989c6295f9c:	e8 bf 52 ee ff                                  	call   0x2989c617b260
    2989c6295fa1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    2989c6295fa5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c6295faa:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    2989c6295fae:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c6295fb3:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c6295fb9:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c6295fbf:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6295fc4:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    2989c6295fcc:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c6295fd4:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c6295fdc:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c6295fe4:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c6295fea:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    2989c6295ff1:	48 2b bd 38 ff ff ff                            	sub    rdi,QWORD PTR [rbp-0xc8]
    2989c6295ff8:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    2989c6295fff:	48 2b b5 48 ff ff ff                            	sub    rsi,QWORD PTR [rbp-0xb8]
    2989c6296006:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    2989c629600d:	48 2b 85 58 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa8]
    2989c6296014:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    2989c629601b:	41 83 c3 02                                     	add    r11d,0x2
    2989c629601f:	44 3b 9d 70 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0x90]
    2989c6296026:	0f 8c 54 85 ff ff                               	jl     0x2989c628e580
    2989c629602c:	48 8b bd 78 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x88]
    2989c6296033:	48 8b b5 38 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3c8]
    2989c629603a:	48 03 f7                                        	add    rsi,rdi
    2989c629603d:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    2989c6296041:	4c 8b bd 10 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xf0]
    2989c6296048:	4d 03 fb                                        	add    r15,r11
    2989c629604b:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
    2989c629604f:	48 8b 9d 80 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x380]
    2989c6296056:	48 03 d8                                        	add    rbx,rax
    2989c6296059:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c629605d:	41 83 c1 02                                     	add    r9d,0x2
    2989c6296061:	44 3b 4d 98                                     	cmp    r9d,DWORD PTR [rbp-0x68]
    2989c6296065:	0f 8c 55 84 ff ff                               	jl     0x2989c628e4c0
    2989c629606b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629606e:	81 c7 00 02 00 00                               	add    edi,0x200
    2989c6296074:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    2989c6296078:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    2989c629607c:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    2989c6296081:	48 8b e5                                        	mov    rsp,rbp
    2989c6296084:	5d                                              	pop    rbp
    2989c6296085:	c2 10 00                                        	ret    0x10
    2989c6296088:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    2989c629608f:	0f 84 17 00 00 00                               	je     0x2989c62960ac
    2989c6296095:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    2989c629609b:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    2989c62960a0:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    2989c62960a6:	0f 85 40 00 00 00                               	jne    0x2989c62960ec
    2989c62960ac:	c5 79 7e df                                     	vmovd  edi,xmm11
    2989c62960b0:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    2989c62960b6:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    2989c62960b9:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    2989c62960bc:	41 51                                           	push   r9
    2989c62960be:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    2989c62960c1:	41 53                                           	push   r11
    2989c62960c3:	57                                              	push   rdi
    2989c62960c4:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    2989c62960c7:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    2989c62960ca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62960ce:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c62960d1:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c62960d4:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    2989c62960d7:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c62960da:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    2989c62960de:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c62960e2:	e8 39 54 ee ff                                  	call   0x2989c617b520
    2989c62960e7:	e9 df 00 00 00                                  	jmp    0x2989c62961cb
    2989c62960ec:	c5 79 7e df                                     	vmovd  edi,xmm11
    2989c62960f0:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    2989c62960f6:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    2989c62960f9:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    2989c62960fc:	41 51                                           	push   r9
    2989c62960fe:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    2989c6296101:	41 53                                           	push   r11
    2989c6296103:	57                                              	push   rdi
    2989c6296104:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    2989c6296107:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    2989c629610a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c629610e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6296111:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c6296114:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    2989c6296117:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c629611a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    2989c629611e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c6296122:	e8 11 54 ee ff                                  	call   0x2989c617b538
    2989c6296127:	e9 9f 00 00 00                                  	jmp    0x2989c62961cb
    2989c629612c:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    2989c6296133:	0f 84 17 00 00 00                               	je     0x2989c6296150
    2989c6296139:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    2989c629613f:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    2989c6296144:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    2989c629614a:	0f 85 40 00 00 00                               	jne    0x2989c6296190
    2989c6296150:	c5 79 7e df                                     	vmovd  edi,xmm11
    2989c6296154:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    2989c629615a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    2989c629615d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    2989c6296160:	41 51                                           	push   r9
    2989c6296162:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    2989c6296165:	41 53                                           	push   r11
    2989c6296167:	57                                              	push   rdi
    2989c6296168:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    2989c629616b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    2989c629616e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6296172:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6296175:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c6296178:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    2989c629617b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c629617e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    2989c6296182:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c6296186:	e8 b5 53 ee ff                                  	call   0x2989c617b540
    2989c629618b:	e9 3b 00 00 00                                  	jmp    0x2989c62961cb
    2989c6296190:	c5 79 7e df                                     	vmovd  edi,xmm11
    2989c6296194:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    2989c629619a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    2989c629619d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    2989c62961a0:	41 51                                           	push   r9
    2989c62961a2:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    2989c62961a5:	41 53                                           	push   r11
    2989c62961a7:	57                                              	push   rdi
    2989c62961a8:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    2989c62961ab:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    2989c62961ae:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c62961b2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c62961b5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c62961b8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    2989c62961bb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c62961be:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    2989c62961c2:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c62961c6:	e8 7d 53 ee ff                                  	call   0x2989c617b548
    2989c62961cb:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c62961cf:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    2989c62961d3:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    2989c62961d8:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    2989c62961de:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    2989c62961e4:	41 0f 45 c3                                     	cmovne eax,r11d
    2989c62961e8:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c62961ec:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    2989c62961f3:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    2989c62961f7:	41 89 7c 24 07                                  	mov    DWORD PTR [r12+0x7],edi
    2989c62961fc:	48 8b e5                                        	mov    rsp,rbp
    2989c62961ff:	5d                                              	pop    rbp
    2989c6296200:	c2 10 00                                        	ret    0x10
    2989c6296203:	43 8b 7c 20 58                                  	mov    edi,DWORD PTR [r8+r12*1+0x58]
    2989c6296208:	bf 01 00 00 00                                  	mov    edi,0x1
    2989c629620d:	41 bf ff ff ff ff                               	mov    r15d,0xffffffff
    2989c6296213:	43 83 7c 20 58 00                               	cmp    DWORD PTR [r8+r12*1+0x58],0x0
    2989c6296219:	41 0f 45 ff                                     	cmovne edi,r15d
    2989c629621d:	45 8d 83 00 02 00 00                            	lea    r8d,[r11+0x200]
    2989c6296224:	44 89 41 07                                     	mov    DWORD PTR [rcx+0x7],r8d
    2989c6296228:	8b c7                                           	mov    eax,edi
    2989c629622a:	48 8b e5                                        	mov    rsp,rbp
    2989c629622d:	5d                                              	pop    rbp
    2989c629622e:	c2 10 00                                        	ret    0x10
    2989c6296231:	41 b8 80 00 00 00                               	mov    r8d,0x80
    2989c6296237:	41 d1 f8                                        	sar    r8d,1
    2989c629623a:	4d 63 c0                                        	movsxd r8,r8d
    2989c629623d:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    2989c6296241:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    2989c6296245:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    2989c6296249:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    2989c629624d:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    2989c6296255:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    2989c6296259:	49 8b c0                                        	mov    rax,r8
    2989c629625c:	e8 cf 7c ee ff                                  	call   0x2989c617df30
    2989c6296261:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c6296265:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    2989c6296268:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    2989c629626b:	8b 7d b8                                        	mov    edi,DWORD PTR [rbp-0x48]
    2989c629626e:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    2989c6296271:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    2989c6296279:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    2989c629627d:	e9 5c 75 ff ff                                  	jmp    0x2989c628d7de
    2989c6296282:	e8 b9 7c ee ff                                  	call   0x2989c617df40
    2989c6296287:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c629628c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    2989c6296290:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c6296295:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c629629b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c62962a1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c62962a6:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    2989c62962ae:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c62962b6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c62962be:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c62962c6:	e9 21 82 ff ff                                  	jmp    0x2989c628e4ec
    2989c62962cb:	e8 70 7c ee ff                                  	call   0x2989c617df40
    2989c62962d0:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    2989c62962d5:	44 8b 85 68 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x98]
    2989c62962dc:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    2989c62962e3:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    2989c62962e8:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    2989c62962ee:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    2989c62962f4:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c62962f9:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    2989c6296300:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    2989c6296308:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c6296310:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c6296318:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c6296320:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    2989c6296327:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    2989c629632d:	e9 8a 82 ff ff                                  	jmp    0x2989c628e5bc
    2989c6296332:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    2989c629633a:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    2989c6296341:	e8 fa 7b ee ff                                  	call   0x2989c617df40
    2989c6296346:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    2989c629634a:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    2989c629634e:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    2989c6296353:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    2989c6296357:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    2989c629635d:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c6296361:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    2989c6296365:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    2989c629636a:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    2989c629636f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    2989c6296374:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    2989c629637b:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    2989c6296382:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    2989c6296389:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    2989c6296391:	8b bd 08 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1f8]
    2989c6296397:	c5 fb 10 b5 28 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x1d8]
    2989c629639f:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    2989c62963a7:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    2989c62963af:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    2989c62963b7:	e9 13 b0 ff ff                                  	jmp    0x2989c62913cf
    2989c62963bc:	e8 7f 7b ee ff                                  	call   0x2989c617df40
    2989c62963c1:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c62963c5:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    2989c62963c8:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c62963cc:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    2989c62963d3:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    2989c62963db:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    2989c62963e3:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    2989c62963eb:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    2989c62963f3:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    2989c62963fb:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    2989c6296403:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    2989c629640b:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    2989c6296413:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    2989c629641a:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    2989c6296420:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    2989c6296427:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    2989c629642e:	e9 a5 b4 ff ff                                  	jmp    0x2989c62918d8
    2989c6296433:	e8 08 7b ee ff                                  	call   0x2989c617df40
    2989c6296438:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    2989c629643b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c629643f:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    2989c6296445:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    2989c629644c:	e9 8e c4 ff ff                                  	jmp    0x2989c62928df
    2989c6296451:	e8 ea 7a ee ff                                  	call   0x2989c617df40
    2989c6296456:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    2989c629645a:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    2989c629645e:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    2989c6296465:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    2989c629646c:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    2989c6296472:	e9 f1 d8 ff ff                                  	jmp    0x2989c6293d68
    2989c6296477:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    2989c629647f:	c5 78 11 9d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm11
    2989c6296487:	c5 f8 11 ad 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm5
    2989c629648f:	c5 f8 11 95 f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm2
    2989c6296497:	4c 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r11
    2989c629649e:	48 89 b5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rsi
    2989c62964a5:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    2989c62964ac:	e8 8f 7a ee ff                                  	call   0x2989c617df40
    2989c62964b1:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    2989c62964b5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    2989c62964b9:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    2989c62964c1:	c5 78 10 9d 60 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x1a0]
    2989c62964c9:	c5 f8 10 ad 40 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1c0]
    2989c62964d1:	c5 f8 10 95 f0 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x210]
    2989c62964d9:	8b 85 b0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x150]
    2989c62964df:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    2989c62964e5:	44 8b 9d 08 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1f8]
    2989c62964ec:	8b b5 a0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x260]
    2989c62964f2:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    2989c62964f9:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    2989c62964ff:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    2989c6296507:	e9 0f e6 ff ff                                  	jmp    0x2989c6294b1b
    2989c629650c:	8b c8                                           	mov    ecx,eax
    2989c629650e:	33 d2                                           	xor    edx,edx
    2989c6296510:	e9 6e e6 ff ff                                  	jmp    0x2989c6294b83
    2989c6296515:	33 d2                                           	xor    edx,edx
    2989c6296517:	44 8b c8                                        	mov    r9d,eax
    2989c629651a:	e9 82 e6 ff ff                                  	jmp    0x2989c6294ba1
    2989c629651f:	33 d2                                           	xor    edx,edx
    2989c6296521:	8b c8                                           	mov    ecx,eax
    2989c6296523:	e9 c3 e6 ff ff                                  	jmp    0x2989c6294beb
    2989c6296528:	33 d2                                           	xor    edx,edx
    2989c629652a:	44 8b f8                                        	mov    r15d,eax
    2989c629652d:	e9 d7 e6 ff ff                                  	jmp    0x2989c6294c09
    2989c6296532:	e8 19 77 ee ff                                  	call   0x2989c617dc50
    2989c6296537:	e8 14 77 ee ff                                  	call   0x2989c617dc50
    2989c629653c:	90                                              	nop
    2989c629653d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    2989c6296540:	40 56                                           	rex push rsi
    2989c6296542:	29 c6                                           	sub    esi,eax
    2989c6296544:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296546:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296548:	2e 56                                           	cs push rsi
    2989c629654a:	29 c6                                           	sub    esi,eax
    2989c629654c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629654e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296550:	1c 56                                           	sbb    al,0x56
    2989c6296552:	29 c6                                           	sub    esi,eax
    2989c6296554:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296556:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296558:	0a 56 29                                        	or     dl,BYTE PTR [rsi+0x29]
    2989c629655b:	c6                                              	(bad)
    2989c629655c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629655e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296560:	f8                                              	clc
    2989c6296561:	55                                              	push   rbp
    2989c6296562:	29 c6                                           	sub    esi,eax
    2989c6296564:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296566:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296568:	e6 55                                           	out    0x55,al
    2989c629656a:	29 c6                                           	sub    esi,eax
    2989c629656c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629656e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296570:	d4                                              	(bad)
    2989c6296571:	55                                              	push   rbp
    2989c6296572:	29 c6                                           	sub    esi,eax
    2989c6296574:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296576:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296578:	ca 53 29                                        	retf   0x2953
    2989c629657b:	c6                                              	(bad)
    2989c629657c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629657e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296580:	c5 53 29                                        	(bad)
    2989c6296583:	c6                                              	(bad)
    2989c6296584:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296586:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296588:	bb 53 29 c6 89                                  	mov    ebx,0x89c62953
    2989c629658d:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c629658f:	00 b1 53 29 c6 89                               	add    BYTE PTR [rcx-0x7639d6ad],dh
    2989c6296595:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c6296597:	00 a6 53 29 c6 89                               	add    BYTE PTR [rsi-0x7639d6ad],ah
    2989c629659d:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c629659f:	00 9c 53 29 c6 89 29                            	add    BYTE PTR [rbx+rdx*2+0x2989c629],bl
    2989c62965a6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965a8:	91                                              	xchg   ecx,eax
    2989c62965a9:	53                                              	push   rbx
    2989c62965aa:	29 c6                                           	sub    esi,eax
    2989c62965ac:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965ae:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965b0:	57                                              	push   rdi
    2989c62965b1:	46 29 c6                                        	rex.RX sub esi,r8d
    2989c62965b4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965b6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965b8:	4c                                              	rex.WR
    2989c62965b9:	46 29 c6                                        	rex.RX sub esi,r8d
    2989c62965bc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965be:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965c0:	41                                              	rex.B
    2989c62965c1:	46 29 c6                                        	rex.RX sub esi,r8d
    2989c62965c4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965c6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965c8:	36 46 29 c6                                     	ss rex.RX sub esi,r8d
    2989c62965cc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965ce:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965d0:	2c 46                                           	sub    al,0x46
    2989c62965d2:	29 c6                                           	sub    esi,eax
    2989c62965d4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965d6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965d8:	21 46 29                                        	and    DWORD PTR [rsi+0x29],eax
    2989c62965db:	c6                                              	(bad)
    2989c62965dc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965de:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965e0:	17                                              	(bad)
    2989c62965e1:	46 29 c6                                        	rex.RX sub esi,r8d
    2989c62965e4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965e6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965e8:	37                                              	(bad)
    2989c62965e9:	15 29 c6 89 29                                  	adc    eax,0x2989c629
    2989c62965ee:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965f0:	2c 15                                           	sub    al,0x15
    2989c62965f2:	29 c6                                           	sub    esi,eax
    2989c62965f4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62965f6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62965f8:	16                                              	(bad)
    2989c62965f9:	15 29 c6 89 29                                  	adc    eax,0x2989c629
    2989c62965fe:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296600:	06                                              	(bad)
    2989c6296601:	15 29 c6 89 29                                  	adc    eax,0x2989c629
    2989c6296606:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296608:	f6 14 29                                        	not    BYTE PTR [rcx+rbp*1]
    2989c629660b:	c6                                              	(bad)
    2989c629660c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629660e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296610:	e0 14                                           	loopne 0x2989c6296626
    2989c6296612:	29 c6                                           	sub    esi,eax
    2989c6296614:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296616:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296618:	d0 14 29                                        	rcl    BYTE PTR [rcx+rbp*1],1
    2989c629661b:	c6                                              	(bad)
    2989c629661c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629661e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296620:	50                                              	push   rax
    2989c6296621:	15 29 c6 89 29                                  	adc    eax,0x2989c629
    2989c6296626:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296628:	97                                              	xchg   edi,eax
    2989c6296629:	08 29                                           	or     BYTE PTR [rcx],ch
    2989c629662b:	c6                                              	(bad)
    2989c629662c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629662e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296630:	4b 0a 29                                        	rex.WXB or bpl,BYTE PTR [r9]
    2989c6296633:	c6                                              	(bad)
    2989c6296634:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296636:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296638:	35 0a 29 c6 89                                  	xor    eax,0x89c6290a
    2989c629663d:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c629663f:	00 26                                           	add    BYTE PTR [rsi],ah
    2989c6296641:	0a 29                                           	or     ch,BYTE PTR [rcx]
    2989c6296643:	c6                                              	(bad)
    2989c6296644:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296646:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296648:	16                                              	(bad)
    2989c6296649:	0a 29                                           	or     ch,BYTE PTR [rcx]
    2989c629664b:	c6                                              	(bad)
    2989c629664c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629664e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296650:	00 0a                                           	add    BYTE PTR [rdx],cl
    2989c6296652:	29 c6                                           	sub    esi,eax
    2989c6296654:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296656:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296658:	f0 09 29                                        	lock or DWORD PTR [rcx],ebp
    2989c629665b:	c6                                              	(bad)
    2989c629665c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629665e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296660:	55                                              	push   rbp
    2989c6296661:	0a 29                                           	or     ch,BYTE PTR [rcx]
    2989c6296663:	c6                                              	(bad)
    2989c6296664:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296666:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296668:	8a 08                                           	mov    cl,BYTE PTR [rax]
    2989c629666a:	29 c6                                           	sub    esi,eax
    2989c629666c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629666e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296670:	d1 ff                                           	sar    edi,1
    2989c6296672:	28 c6                                           	sub    dh,al
    2989c6296674:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296676:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296678:	bb ff 28 c6 89                                  	mov    ebx,0x89c628ff
    2989c629667d:	29 00                                           	sub    DWORD PTR [rax],eax
    2989c629667f:	00 ac ff 28 c6 89 29                            	add    BYTE PTR [rdi+rdi*8+0x2989c628],ch
    2989c6296686:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296688:	9c                                              	pushf
    2989c6296689:	ff 28                                           	jmp    FWORD PTR [rax]
    2989c629668b:	c6                                              	(bad)
    2989c629668c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629668e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296690:	86 ff                                           	xchg   bh,bh
    2989c6296692:	28 c6                                           	sub    dh,al
    2989c6296694:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296696:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296698:	76 ff                                           	jbe    0x2989c6296699
    2989c629669a:	28 c6                                           	sub    dh,al
    2989c629669c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629669e:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966a0:	db ff                                           	(bad)
    2989c62966a2:	28 c6                                           	sub    dh,al
    2989c62966a4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966a6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966a8:	03 fe                                           	add    edi,esi
    2989c62966aa:	28 c6                                           	sub    dh,al
    2989c62966ac:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966ae:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966b0:	46 f5                                           	rex.RX cmc
    2989c62966b2:	28 c6                                           	sub    dh,al
    2989c62966b4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966b6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966b8:	30 f5                                           	xor    ch,dh
    2989c62966ba:	28 c6                                           	sub    dh,al
    2989c62966bc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966be:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966c0:	21 f5                                           	and    ebp,esi
    2989c62966c2:	28 c6                                           	sub    dh,al
    2989c62966c4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966c6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966c8:	11 f5                                           	adc    ebp,esi
    2989c62966ca:	28 c6                                           	sub    dh,al
    2989c62966cc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966ce:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966d0:	fb                                              	sti
    2989c62966d1:	f4                                              	hlt
    2989c62966d2:	28 c6                                           	sub    dh,al
    2989c62966d4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966d6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966d8:	eb f4                                           	jmp    0x2989c62966ce
    2989c62966da:	28 c6                                           	sub    dh,al
    2989c62966dc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966de:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966e0:	50                                              	push   rax
    2989c62966e1:	f5                                              	cmc
    2989c62966e2:	28 c6                                           	sub    dh,al
    2989c62966e4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966e6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966e8:	1f                                              	(bad)
    2989c62966e9:	f3 28 c6                                        	repz sub dh,al
    2989c62966ec:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966ee:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966f0:	6a ea                                           	push   0xffffffffffffffea
    2989c62966f2:	28 c6                                           	sub    dh,al
    2989c62966f4:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966f6:	00 00                                           	add    BYTE PTR [rax],al
    2989c62966f8:	55                                              	push   rbp
    2989c62966f9:	ea                                              	(bad)
    2989c62966fa:	28 c6                                           	sub    dh,al
    2989c62966fc:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c62966fe:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296700:	46 ea                                           	rex.RX (bad)
    2989c6296702:	28 c6                                           	sub    dh,al
    2989c6296704:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296706:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296708:	37                                              	(bad)
    2989c6296709:	ea                                              	(bad)
    2989c629670a:	28 c6                                           	sub    dh,al
    2989c629670c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629670e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296710:	22 ea                                           	and    ch,dl
    2989c6296712:	28 c6                                           	sub    dh,al
    2989c6296714:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296716:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296718:	13 ea                                           	adc    ebp,edx
    2989c629671a:	28 c6                                           	sub    dh,al
    2989c629671c:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c629671e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296720:	74 ea                                           	je     0x2989c629670c
    2989c6296722:	28 c6                                           	sub    dh,al
    2989c6296724:	89 29                                           	mov    DWORD PTR [rcx],ebp
    2989c6296726:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296728:	81 00 00 00 1c 00                               	add    DWORD PTR [rax],0x1c0000
    2989c629672e:	00 00                                           	add    BYTE PTR [rax],al
    2989c6296730:	91                                              	xchg   ecx,eax
    2989c6296731:	01 d7                                           	add    edi,edx
    2989c6296733:	03 05 8f 94 02 d7                               	add    eax,DWORD PTR [rip+0xffffffffd702948f]        # 0x29899d2bfbc8
    2989c6296739:	03 05 26 d7 03 05                               	add    eax,DWORD PTR [rip+0x503d726]        # 0x2989cb2d3e65
    2989c629673f:	b0 05                                           	mov    al,0x5
    2989c6296741:	d7                                              	xlat   BYTE PTR ds:[rbx]
    2989c6296742:	03 05 00 00 00 00                               	add    eax,DWORD PTR [rip+0x0]        # 0x2989c6296748
	...
