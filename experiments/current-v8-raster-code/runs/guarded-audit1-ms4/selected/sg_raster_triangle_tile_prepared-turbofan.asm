
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms4/selected/sg_raster_triangle_tile_prepared-turbofan.bin:     file format binary


Disassembly of section .data:

000010402e8b5900 <.data>:
    10402e8b5900:	55                                              	push   rbp
    10402e8b5901:	48 8b ec                                        	mov    rbp,rsp
    10402e8b5904:	6a 30                                           	push   0x30
    10402e8b5906:	56                                              	push   rsi
    10402e8b5907:	48 81 ec e8 03 00 00                            	sub    rsp,0x3e8
    10402e8b590e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    10402e8b5912:	8b f9                                           	mov    edi,ecx
    10402e8b5914:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    10402e8b5918:	0f 86 53 8a 00 00                               	jbe    0x10402e8be371
    10402e8b591e:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    10402e8b5922:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    10402e8b5926:	4d 0b de                                        	or     r11,r14
    10402e8b5929:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    10402e8b592d:	41 8d 8c 24 00 fe ff ff                         	lea    ecx,[r12-0x200]
    10402e8b5935:	41 89 4b 07                                     	mov    DWORD PTR [r11+0x7],ecx
    10402e8b5939:	45 8b 7b 2f                                     	mov    r15d,DWORD PTR [r11+0x2f]
    10402e8b593d:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8b5941:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    10402e8b5948:	44 8b e0                                        	mov    r12d,eax
    10402e8b594b:	43 8b 74 20 14                                  	mov    esi,DWORD PTR [r8+r12*1+0x14]
    10402e8b5950:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    10402e8b5957:	85 f6                                           	test   esi,esi
    10402e8b5959:	0f 85 4c 00 00 00                               	jne    0x10402e8b59ab
    10402e8b595f:	45 85 ff                                        	test   r15d,r15d
    10402e8b5962:	0f 84 43 00 00 00                               	je     0x10402e8b59ab
    10402e8b5968:	43 8b 74 38 24                                  	mov    esi,DWORD PTR [r8+r15*1+0x24]
    10402e8b596d:	43 83 7c 38 24 00                               	cmp    DWORD PTR [r8+r15*1+0x24],0x0
    10402e8b5973:	0f 84 32 00 00 00                               	je     0x10402e8b59ab
    10402e8b5979:	ff 75 18                                        	push   QWORD PTR [rbp+0x18]
    10402e8b597c:	ff 75 10                                        	push   QWORD PTR [rbp+0x10]
    10402e8b597f:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    10402e8b5983:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    10402e8b5987:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b598b:	8b cf                                           	mov    ecx,edi
    10402e8b598d:	e8 be 0b ee ff                                  	call   0x10402e796550
    10402e8b5992:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8b5996:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    10402e8b599d:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    10402e8b59a1:	89 7e 07                                        	mov    DWORD PTR [rsi+0x7],edi
    10402e8b59a4:	48 8b e5                                        	mov    rsp,rbp
    10402e8b59a7:	5d                                              	pop    rbp
    10402e8b59a8:	c2 10 00                                        	ret    0x10
    10402e8b59ab:	4d 8b d3                                        	mov    r10,r11
    10402e8b59ae:	44 8b d9                                        	mov    r11d,ecx
    10402e8b59b1:	49 8b ca                                        	mov    rcx,r10
    10402e8b59b4:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    10402e8b59bb:	44 8b fb                                        	mov    r15d,ebx
    10402e8b59be:	c4 81 7a 6f 74 38 10                            	vmovdqu xmm6,XMMWORD PTR [r8+r15*1+0x10]
    10402e8b59c5:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    10402e8b59cf:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8b59d4:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8b59d8:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    10402e8b59dc:	49 ba 40 b9 70 c9 23 63 00 00                   	movabs r10,0x6323c970b940
    10402e8b59e6:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    10402e8b59ec:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    10402e8b59f1:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    10402e8b59f7:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    10402e8b59fc:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    10402e8b5a01:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    10402e8b5a05:	8b da                                           	mov    ebx,edx
    10402e8b5a07:	c4 41 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x10]
    10402e8b5a0e:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    10402e8b5a12:	4c 8b 15 c5 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc5]        # 0x10402e8b59de
    10402e8b5a19:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    10402e8b5a1f:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    10402e8b5a24:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    10402e8b5a2a:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    10402e8b5a2f:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    10402e8b5a34:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    10402e8b5a39:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    10402e8b5a3e:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    10402e8b5a44:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    10402e8b5a48:	8b d7                                           	mov    edx,edi
    10402e8b5a4a:	c4 41 7a 6f 64 10 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rdx*1+0x10]
    10402e8b5a51:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    10402e8b5a55:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x10402e8b59de
    10402e8b5a5c:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    10402e8b5a62:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    10402e8b5a67:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    10402e8b5a6d:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    10402e8b5a72:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    10402e8b5a77:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    10402e8b5a7c:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    10402e8b5a81:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    10402e8b5a87:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    10402e8b5a8b:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    10402e8b5a90:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    10402e8b5a95:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    10402e8b5a99:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    10402e8b5a9f:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    10402e8b5aa3:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    10402e8b5aa8:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    10402e8b5aac:	c4 e3 f9 16 d7 00                               	vpextrq rdi,xmm2,0x0
    10402e8b5ab2:	c4 e3 f9 16 d6 01                               	vpextrq rsi,xmm2,0x1
    10402e8b5ab8:	48 2b fe                                        	sub    rdi,rsi
    10402e8b5abb:	48 85 ff                                        	test   rdi,rdi
    10402e8b5abe:	0f 8e 7f 88 00 00                               	jle    0x10402e8be343
    10402e8b5ac4:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    10402e8b5ac9:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    10402e8b5ace:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    10402e8b5ad4:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    10402e8b5ade:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8b5ae3:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8b5ae7:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    10402e8b5aeb:	8d 70 04                                        	lea    esi,[rax+0x4]
    10402e8b5aee:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    10402e8b5af3:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    10402e8b5af8:	c4 c3 59 22 24 30 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rsi*1],0x1
    10402e8b5aff:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    10402e8b5b04:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    10402e8b5b08:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    10402e8b5b0d:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8b5b12:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    10402e8b5b17:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    10402e8b5b1c:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    10402e8b5b20:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    10402e8b5b24:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    10402e8b5b2e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8b5b33:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8b5b37:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    10402e8b5b3b:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    10402e8b5b3f:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    10402e8b5b44:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    10402e8b5b4a:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    10402e8b5b4f:	43 8b 74 20 58                                  	mov    esi,DWORD PTR [r8+r12*1+0x58]
    10402e8b5b54:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    10402e8b5b58:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    10402e8b5b5c:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    10402e8b5b64:	85 f6                                           	test   esi,esi
    10402e8b5b66:	0f 84 39 00 00 00                               	je     0x10402e8b5ba5
    10402e8b5b6c:	44 8d 48 50                                     	lea    r9d,[rax+0x50]
    10402e8b5b70:	49 8d 78 48                                     	lea    rdi,[r8+0x48]
    10402e8b5b74:	c4 a1 7b 10 24 27                               	vmovsd xmm4,QWORD PTR [rdi+r12*1]
    10402e8b5b7a:	c4 83 59 22 2c 08 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+r9*1],0x0
    10402e8b5b81:	8d 78 54                                        	lea    edi,[rax+0x54]
    10402e8b5b84:	c4 c3 59 22 04 38 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rdi*1],0x1
    10402e8b5b8b:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    10402e8b5b8f:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    10402e8b5b94:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    10402e8b5b99:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    10402e8b5ba1:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    10402e8b5ba5:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    10402e8b5ba9:	c4 c3 f9 16 e1 00                               	vpextrq r9,xmm4,0x0
    10402e8b5baf:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    10402e8b5bb4:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    10402e8b5bba:	49 23 c1                                        	and    rax,r9
    10402e8b5bbd:	a8 01                                           	test   al,0x1
    10402e8b5bbf:	0f 85 20 00 00 00                               	jne    0x10402e8b5be5
    10402e8b5bc5:	b8 01 00 00 00                                  	mov    eax,0x1
    10402e8b5bca:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    10402e8b5bcf:	85 f6                                           	test   esi,esi
    10402e8b5bd1:	0f 45 c7                                        	cmovne eax,edi
    10402e8b5bd4:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    10402e8b5bdb:	89 79 07                                        	mov    DWORD PTR [rcx+0x7],edi
    10402e8b5bde:	48 8b e5                                        	mov    rsp,rbp
    10402e8b5be1:	5d                                              	pop    rbp
    10402e8b5be2:	c2 10 00                                        	ret    0x10
    10402e8b5be5:	c4 63 79 16 e8 01                               	vpextrd eax,xmm13,0x1
    10402e8b5beb:	c4 63 79 16 d6 01                               	vpextrd esi,xmm10,0x1
    10402e8b5bf1:	45 33 c9                                        	xor    r9d,r9d
    10402e8b5bf4:	3b f0                                           	cmp    esi,eax
    10402e8b5bf6:	41 0f 9e c1                                     	setle  r9b
    10402e8b5bfa:	48 89 4d e8                                     	mov    QWORD PTR [rbp-0x18],rcx
    10402e8b5bfe:	33 c9                                           	xor    ecx,ecx
    10402e8b5c00:	3b f0                                           	cmp    esi,eax
    10402e8b5c02:	0f 95 c1                                        	setne  cl
    10402e8b5c05:	4c 89 5d e0                                     	mov    QWORD PTR [rbp-0x20],r11
    10402e8b5c09:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    10402e8b5c0e:	c5 79 7e d7                                     	vmovd  edi,xmm10
    10402e8b5c12:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    10402e8b5c19:	45 33 ff                                        	xor    r15d,r15d
    10402e8b5c1c:	41 3b fb                                        	cmp    edi,r11d
    10402e8b5c1f:	41 0f 9e c7                                     	setle  r15b
    10402e8b5c23:	44 0b f9                                        	or     r15d,ecx
    10402e8b5c26:	45 23 f9                                        	and    r15d,r9d
    10402e8b5c29:	c4 63 79 16 c1 01                               	vpextrd ecx,xmm8,0x1
    10402e8b5c2f:	45 33 c9                                        	xor    r9d,r9d
    10402e8b5c32:	3b ce                                           	cmp    ecx,esi
    10402e8b5c34:	41 0f 9e c1                                     	setle  r9b
    10402e8b5c38:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    10402e8b5c3f:	45 33 ff                                        	xor    r15d,r15d
    10402e8b5c42:	3b ce                                           	cmp    ecx,esi
    10402e8b5c44:	41 0f 95 c7                                     	setne  r15b
    10402e8b5c48:	48 89 b5 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rsi
    10402e8b5c4f:	c5 79 7e c6                                     	vmovd  esi,xmm8
    10402e8b5c53:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    10402e8b5c5a:	33 db                                           	xor    ebx,ebx
    10402e8b5c5c:	3b f7                                           	cmp    esi,edi
    10402e8b5c5e:	0f 9e c3                                        	setle  bl
    10402e8b5c61:	41 0b df                                        	or     ebx,r15d
    10402e8b5c64:	41 23 d9                                        	and    ebx,r9d
    10402e8b5c67:	45 33 ff                                        	xor    r15d,r15d
    10402e8b5c6a:	3b c8                                           	cmp    ecx,eax
    10402e8b5c6c:	41 0f 95 c7                                     	setne  r15b
    10402e8b5c70:	45 33 c9                                        	xor    r9d,r9d
    10402e8b5c73:	44 3b de                                        	cmp    r11d,esi
    10402e8b5c76:	41 0f 9e c1                                     	setle  r9b
    10402e8b5c7a:	45 0b cf                                        	or     r9d,r15d
    10402e8b5c7d:	45 33 ff                                        	xor    r15d,r15d
    10402e8b5c80:	3b c1                                           	cmp    eax,ecx
    10402e8b5c82:	41 0f 9e c7                                     	setle  r15b
    10402e8b5c86:	45 23 f9                                        	and    r15d,r9d
    10402e8b5c89:	47 8b 8c 20 e0 00 00 00                         	mov    r9d,DWORD PTR [r8+r12*1+0xe0]
    10402e8b5c91:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    10402e8b5c95:	4c 89 65 d0                                     	mov    QWORD PTR [rbp-0x30],r12
    10402e8b5c99:	c5 f8 11 bd 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm7
    10402e8b5ca1:	48 89 9d 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rbx
    10402e8b5ca8:	43 83 bc 20 e0 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xe0],0x0
    10402e8b5cb1:	0f 85 0d 00 00 00                               	jne    0x10402e8b5cc4
    10402e8b5cb7:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    10402e8b5cbb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    10402e8b5cbf:	e9 49 01 00 00                                  	jmp    0x10402e8b5e0d
    10402e8b5cc4:	c4 01 7a 10 94 20 d8 00 00 00                   	vmovss xmm10,DWORD PTR [r8+r12*1+0xd8]
    10402e8b5cce:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b5cd3:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    10402e8b5cd8:	0f 8a 1d 00 00 00                               	jp     0x10402e8b5cfb
    10402e8b5cde:	0f 85 17 00 00 00                               	jne    0x10402e8b5cfb
    10402e8b5ce4:	c4 01 7a 10 ac 20 dc 00 00 00                   	vmovss xmm13,DWORD PTR [r8+r12*1+0xdc]
    10402e8b5cee:	c4 41 78 2e c5                                  	vucomiss xmm8,xmm13
    10402e8b5cf3:	7a 06                                           	jp     0x10402e8b5cfb
    10402e8b5cf5:	0f 84 0d 01 00 00                               	je     0x10402e8b5e08
    10402e8b5cfb:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    10402e8b5d00:	c4 41 78 28 ec                                  	vmovaps xmm13,xmm12
    10402e8b5d05:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    10402e8b5d0a:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    10402e8b5d0e:	c4 c1 12 59 e1                                  	vmulss xmm4,xmm13,xmm9
    10402e8b5d13:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    10402e8b5d18:	c4 c1 4a 59 ec                                  	vmulss xmm5,xmm6,xmm12
    10402e8b5d1d:	c5 da 5c e5                                     	vsubss xmm4,xmm4,xmm5
    10402e8b5d21:	c5 78 2e c4                                     	vucomiss xmm8,xmm4
    10402e8b5d25:	7a 06                                           	jp     0x10402e8b5d2d
    10402e8b5d27:	0f 84 db 00 00 00                               	je     0x10402e8b5e08
    10402e8b5d2d:	c4 c1 7a 10 6c 10 18                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x18]
    10402e8b5d34:	4c 8b 8d e8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x218]
    10402e8b5d3b:	c4 81 7a 10 44 08 18                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x18]
    10402e8b5d42:	c5 d2 5c e8                                     	vsubss xmm5,xmm5,xmm0
    10402e8b5d46:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    10402e8b5d4b:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    10402e8b5d52:	c4 c1 7a 10 7c 18 18                            	vmovss xmm7,DWORD PTR [r8+rbx*1+0x18]
    10402e8b5d59:	c5 c2 5c c0                                     	vsubss xmm0,xmm7,xmm0
    10402e8b5d5d:	c5 9a 59 f8                                     	vmulss xmm7,xmm12,xmm0
    10402e8b5d61:	c5 b2 5c ff                                     	vsubss xmm7,xmm9,xmm7
    10402e8b5d65:	c5 c2 5e fc                                     	vdivss xmm7,xmm7,xmm4
    10402e8b5d69:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    10402e8b5d6d:	49 ba 60 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b860
    10402e8b5d77:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    10402e8b5d7c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b5d80:	0f 87 04 00 00 00                               	ja     0x10402e8b5d8a
    10402e8b5d86:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b5d8a:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    10402e8b5d8f:	c5 ca 59 f5                                     	vmulss xmm6,xmm6,xmm5
    10402e8b5d93:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8b5d97:	c5 fa 5e c4                                     	vdivss xmm0,xmm0,xmm4
    10402e8b5d9b:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    10402e8b5d9f:	4c 8b 15 c9 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc9]        # 0x10402e8b5d6f
    10402e8b5da6:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b5dab:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    10402e8b5daf:	0f 87 04 00 00 00                               	ja     0x10402e8b5db9
    10402e8b5db5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8b5db9:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    10402e8b5dbd:	0f 87 04 00 00 00                               	ja     0x10402e8b5dc7
    10402e8b5dc3:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b5dc7:	c4 c1 2a 59 c1                                  	vmulss xmm0,xmm10,xmm9
    10402e8b5dcc:	c4 81 7a 10 b4 20 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+r12*1+0xdc]
    10402e8b5dd6:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    10402e8b5ddc:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    10402e8b5de1:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    10402e8b5de5:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b5de9:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8b5ded:	c5 f8 10 bd 50 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2b0]
    10402e8b5df5:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    10402e8b5dfd:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    10402e8b5e03:	e9 05 00 00 00                                  	jmp    0x10402e8b5e0d
    10402e8b5e08:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8b5e0d:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    10402e8b5e12:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    10402e8b5e16:	c4 c3 79 16 d9 01                               	vpextrd r9d,xmm3,0x1
    10402e8b5e1c:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    10402e8b5e20:	44 8b 8d 28 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3d8]
    10402e8b5e27:	41 f7 d9                                        	neg    r9d
    10402e8b5e2a:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    10402e8b5e2e:	44 8b cb                                        	mov    r9d,ebx
    10402e8b5e31:	41 f7 d9                                        	neg    r9d
    10402e8b5e34:	4c 89 4d 90                                     	mov    QWORD PTR [rbp-0x70],r9
    10402e8b5e38:	45 8b cf                                        	mov    r9d,r15d
    10402e8b5e3b:	41 f7 d9                                        	neg    r9d
    10402e8b5e3e:	83 bd 70 ff ff ff 04                            	cmp    DWORD PTR [rbp-0x90],0x4
    10402e8b5e45:	0f 84 21 84 00 00                               	je     0x10402e8be26c
    10402e8b5e4b:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    10402e8b5e52:	0f 85 70 83 00 00                               	jne    0x10402e8be1c8
    10402e8b5e58:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    10402e8b5e5c:	41 c1 e1 08                                     	shl    r9d,0x8
    10402e8b5e60:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    10402e8b5e67:	41 8b d9                                        	mov    ebx,r9d
    10402e8b5e6a:	2b de                                           	sub    ebx,esi
    10402e8b5e6c:	48 63 db                                        	movsxd rbx,ebx
    10402e8b5e6f:	4c 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],r15
    10402e8b5e76:	44 8b 7d a0                                     	mov    r15d,DWORD PTR [rbp-0x60]
    10402e8b5e7a:	41 c1 e7 08                                     	shl    r15d,0x8
    10402e8b5e7e:	41 81 cf 80 00 00 00                            	or     r15d,0x80
    10402e8b5e85:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    10402e8b5e8c:	41 8b d7                                        	mov    edx,r15d
    10402e8b5e8f:	2b d1                                           	sub    edx,ecx
    10402e8b5e91:	48 63 d2                                        	movsxd rdx,edx
    10402e8b5e94:	48 89 55 88                                     	mov    QWORD PTR [rbp-0x78],rdx
    10402e8b5e98:	41 8b d1                                        	mov    edx,r9d
    10402e8b5e9b:	41 2b d3                                        	sub    edx,r11d
    10402e8b5e9e:	48 63 d2                                        	movsxd rdx,edx
    10402e8b5ea1:	48 89 95 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rdx
    10402e8b5ea8:	41 8b d7                                        	mov    edx,r15d
    10402e8b5eab:	2b d0                                           	sub    edx,eax
    10402e8b5ead:	48 63 d2                                        	movsxd rdx,edx
    10402e8b5eb0:	44 2b cf                                        	sub    r9d,edi
    10402e8b5eb3:	4d 63 c9                                        	movsxd r9,r9d
    10402e8b5eb6:	44 2b bd 68 ff ff ff                            	sub    r15d,DWORD PTR [rbp-0x98]
    10402e8b5ebd:	4d 63 ff                                        	movsxd r15,r15d
    10402e8b5ec0:	4c 8b 55 98                                     	mov    r10,QWORD PTR [rbp-0x68]
    10402e8b5ec4:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    10402e8b5ec9:	4d 85 d2                                        	test   r10,r10
    10402e8b5ecc:	79 13                                           	jns    0x10402e8b5ee1
    10402e8b5ece:	49 d1 ea                                        	shr    r10,1
    10402e8b5ed1:	73 04                                           	jae    0x10402e8b5ed7
    10402e8b5ed3:	49 83 ca 01                                     	or     r10,0x1
    10402e8b5ed7:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    10402e8b5edc:	c4 41 32 58 c9                                  	vaddss xmm9,xmm9,xmm9
    10402e8b5ee1:	2b fe                                           	sub    edi,esi
    10402e8b5ee3:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    10402e8b5eea:	4c 63 ff                                        	movsxd r15,edi
    10402e8b5eed:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    10402e8b5ef4:	4d 8b cf                                        	mov    r9,r15
    10402e8b5ef7:	49 c1 e1 08                                     	shl    r9,0x8
    10402e8b5efb:	4c 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r15
    10402e8b5f02:	45 33 ff                                        	xor    r15d,r15d
    10402e8b5f05:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    10402e8b5f0c:	85 ff                                           	test   edi,edi
    10402e8b5f0e:	4d 0f 4c f9                                     	cmovl  r15,r9
    10402e8b5f12:	4c 89 8d f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r9
    10402e8b5f19:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    10402e8b5f20:	44 2b c9                                        	sub    r9d,ecx
    10402e8b5f23:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    10402e8b5f2a:	4d 63 f9                                        	movsxd r15,r9d
    10402e8b5f2d:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    10402e8b5f34:	49 c1 e7 08                                     	shl    r15,0x8
    10402e8b5f38:	4c 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r15
    10402e8b5f3f:	49 f7 df                                        	neg    r15
    10402e8b5f42:	48 89 9d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rbx
    10402e8b5f49:	33 db                                           	xor    ebx,ebx
    10402e8b5f4b:	45 85 c9                                        	test   r9d,r9d
    10402e8b5f4e:	49 0f 4f df                                     	cmovg  rbx,r15
    10402e8b5f52:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    10402e8b5f59:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    10402e8b5f60:	33 d2                                           	xor    edx,edx
    10402e8b5f62:	85 ff                                           	test   edi,edi
    10402e8b5f64:	48 0f 4c da                                     	cmovl  rbx,rdx
    10402e8b5f68:	45 85 c9                                        	test   r9d,r9d
    10402e8b5f6b:	4c 0f 4f fa                                     	cmovg  r15,rdx
    10402e8b5f6f:	41 2b f3                                        	sub    esi,r11d
    10402e8b5f72:	48 63 fe                                        	movsxd rdi,esi
    10402e8b5f75:	4c 8b df                                        	mov    r11,rdi
    10402e8b5f78:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8b5f7c:	4c 8b ca                                        	mov    r9,rdx
    10402e8b5f7f:	85 f6                                           	test   esi,esi
    10402e8b5f81:	4d 0f 4c cb                                     	cmovl  r9,r11
    10402e8b5f85:	2b c8                                           	sub    ecx,eax
    10402e8b5f87:	48 63 c1                                        	movsxd rax,ecx
    10402e8b5f8a:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    10402e8b5f91:	4c 8b d8                                        	mov    r11,rax
    10402e8b5f94:	49 c1 e3 08                                     	shl    r11,0x8
    10402e8b5f98:	4c 89 9d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r11
    10402e8b5f9f:	49 f7 db                                        	neg    r11
    10402e8b5fa2:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    10402e8b5fa9:	4c 8b ca                                        	mov    r9,rdx
    10402e8b5fac:	85 c9                                           	test   ecx,ecx
    10402e8b5fae:	4d 0f 4f cb                                     	cmovg  r9,r11
    10402e8b5fb2:	4c 89 8d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r9
    10402e8b5fb9:	4c 8b 8d d8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x328]
    10402e8b5fc0:	85 f6                                           	test   esi,esi
    10402e8b5fc2:	4c 0f 4c ca                                     	cmovl  r9,rdx
    10402e8b5fc6:	85 c9                                           	test   ecx,ecx
    10402e8b5fc8:	4c 0f 4f da                                     	cmovg  r11,rdx
    10402e8b5fcc:	c4 e3 f9 16 c9 00                               	vpextrq rcx,xmm1,0x0
    10402e8b5fd2:	48 8b f1                                        	mov    rsi,rcx
    10402e8b5fd5:	48 c1 e6 08                                     	shl    rsi,0x8
    10402e8b5fd9:	4c 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r11
    10402e8b5fe0:	c4 41 79 7e f3                                  	vmovd  r11d,xmm14
    10402e8b5fe5:	4c 89 4d 98                                     	mov    QWORD PTR [rbp-0x68],r9
    10402e8b5fe9:	4c 8b ca                                        	mov    r9,rdx
    10402e8b5fec:	45 85 db                                        	test   r11d,r11d
    10402e8b5fef:	4c 0f 4c ce                                     	cmovl  r9,rsi
    10402e8b5ff3:	48 89 b5 a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rsi
    10402e8b5ffa:	c4 e3 f9 16 ce 01                               	vpextrq rsi,xmm1,0x1
    10402e8b6000:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    10402e8b6007:	4c 8b ce                                        	mov    r9,rsi
    10402e8b600a:	49 c1 e1 08                                     	shl    r9,0x8
    10402e8b600e:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    10402e8b6015:	49 f7 d9                                        	neg    r9
    10402e8b6018:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    10402e8b601f:	c4 43 79 16 f7 01                               	vpextrd r15d,xmm14,0x1
    10402e8b6025:	48 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rbx
    10402e8b602c:	48 8b da                                        	mov    rbx,rdx
    10402e8b602f:	45 85 ff                                        	test   r15d,r15d
    10402e8b6032:	49 0f 4f d9                                     	cmovg  rbx,r9
    10402e8b6036:	48 89 9d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rbx
    10402e8b603d:	48 8b 9d a0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x360]
    10402e8b6044:	45 85 db                                        	test   r11d,r11d
    10402e8b6047:	48 0f 4c da                                     	cmovl  rbx,rdx
    10402e8b604b:	45 85 ff                                        	test   r15d,r15d
    10402e8b604e:	4c 0f 4f ca                                     	cmovg  r9,rdx
    10402e8b6052:	47 8b 9c 20 a4 00 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0xa4]
    10402e8b605a:	c5 fb 11 75 80                                  	vmovsd QWORD PTR [rbp-0x80],xmm6
    10402e8b605f:	c5 f8 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm2
    10402e8b6067:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    10402e8b606b:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    10402e8b6072:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    10402e8b6079:	48 89 b5 c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rsi
    10402e8b6080:	45 85 db                                        	test   r11d,r11d
    10402e8b6083:	0f 85 b6 00 00 00                               	jne    0x10402e8b613f
    10402e8b6089:	47 8b bc 20 30 05 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x530]
    10402e8b6091:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    10402e8b609a:	0f 85 9f 00 00 00                               	jne    0x10402e8b613f
    10402e8b60a0:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    10402e8b60a8:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    10402e8b60b1:	0f 85 88 00 00 00                               	jne    0x10402e8b613f
    10402e8b60b7:	47 8b bc 20 70 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3770]
    10402e8b60bf:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    10402e8b60c8:	0f 85 71 00 00 00                               	jne    0x10402e8b613f
    10402e8b60ce:	47 8b bc 20 74 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3774]
    10402e8b60d6:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    10402e8b60df:	0f 85 5a 00 00 00                               	jne    0x10402e8b613f
    10402e8b60e5:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    10402e8b60e9:	41 8b d7                                        	mov    edx,r15d
    10402e8b60ec:	4c 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r11
    10402e8b60f3:	45 8b 9c 10 30 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x130]
    10402e8b60fb:	41 83 bc 10 30 01 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x130],0x0
    10402e8b6104:	0f 84 16 00 00 00                               	je     0x10402e8b6120
    10402e8b610a:	45 8b 9c 10 34 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x134]
    10402e8b6112:	41 83 eb 01                                     	sub    r11d,0x1
    10402e8b6116:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b611a:	0f 87 11 00 00 00                               	ja     0x10402e8b6131
    10402e8b6120:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8b6125:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    10402e8b612c:	e9 10 00 00 00                                  	jmp    0x10402e8b6141
    10402e8b6131:	33 d2                                           	xor    edx,edx
    10402e8b6133:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    10402e8b613a:	e9 02 00 00 00                                  	jmp    0x10402e8b6141
    10402e8b613f:	33 d2                                           	xor    edx,edx
    10402e8b6141:	4c 8b bd 30 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xd0]
    10402e8b6148:	4c 0f af bd 08 ff ff ff                         	imul   r15,QWORD PTR [rbp-0xf8]
    10402e8b6150:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    10402e8b6157:	48 8b 55 88                                     	mov    rdx,QWORD PTR [rbp-0x78]
    10402e8b615b:	48 0f af 95 18 ff ff ff                         	imul   rdx,QWORD PTR [rbp-0xe8]
    10402e8b6163:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    10402e8b616a:	48 8b 95 10 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xf0]
    10402e8b6171:	48 0f af d0                                     	imul   rdx,rax
    10402e8b6175:	48 8b 85 78 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x88]
    10402e8b617c:	48 0f af c7                                     	imul   rax,rdi
    10402e8b6180:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    10402e8b6187:	48 0f af fe                                     	imul   rdi,rsi
    10402e8b618b:	48 8b b5 28 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xd8]
    10402e8b6192:	48 0f af f1                                     	imul   rsi,rcx
    10402e8b6196:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8b619b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8b61a1:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8b61a7:	c4 41 2a 5e c9                                  	vdivss xmm9,xmm10,xmm9
    10402e8b61ac:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    10402e8b61b1:	48 8b 8d 10 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1f0]
    10402e8b61b8:	c4 41 7a 10 64 08 1c                            	vmovss xmm12,DWORD PTR [r8+rcx*1+0x1c]
    10402e8b61bf:	48 89 7d 88                                     	mov    QWORD PTR [rbp-0x78],rdi
    10402e8b61c3:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    10402e8b61ca:	c4 41 7a 10 6c 38 1c                            	vmovss xmm13,DWORD PTR [r8+rdi*1+0x1c]
    10402e8b61d1:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    10402e8b61d8:	c4 41 7a 10 74 08 1c                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x1c]
    10402e8b61df:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    10402e8b61e6:	48 8b bd 58 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa8]
    10402e8b61ed:	48 03 f9                                        	add    rdi,rcx
    10402e8b61f0:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    10402e8b61f7:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    10402e8b61fe:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    10402e8b6205:	48 03 f9                                        	add    rdi,rcx
    10402e8b6208:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    10402e8b620f:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    10402e8b6216:	48 8b 8d 48 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb8]
    10402e8b621d:	48 03 f9                                        	add    rdi,rcx
    10402e8b6220:	48 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rdi
    10402e8b6227:	48 8b bd b0 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x150]
    10402e8b622e:	48 8b 4d 98                                     	mov    rcx,QWORD PTR [rbp-0x68]
    10402e8b6232:	48 03 f9                                        	add    rdi,rcx
    10402e8b6235:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    10402e8b6239:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    10402e8b6240:	48 8b 8d c8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x138]
    10402e8b6247:	48 03 f9                                        	add    rdi,rcx
    10402e8b624a:	49 03 d9                                        	add    rbx,r9
    10402e8b624d:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8b6251:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    10402e8b6259:	c5 7b 11 8d 28 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d8],xmm9
    10402e8b6261:	c5 7b 11 a5 e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm12
    10402e8b6269:	c5 7b 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm13
    10402e8b6271:	c5 7b 11 b5 18 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1e8],xmm14
    10402e8b6279:	4c 89 8d 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],r9
    10402e8b6280:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    10402e8b6289:	0f 85 0a 00 00 00                               	jne    0x10402e8b6299
    10402e8b628f:	33 c9                                           	xor    ecx,ecx
    10402e8b6291:	44 8b d9                                        	mov    r11d,ecx
    10402e8b6294:	e9 47 01 00 00                                  	jmp    0x10402e8b63e0
    10402e8b6299:	43 8b 8c 20 c8 3c 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x3cc8]
    10402e8b62a1:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    10402e8b62aa:	75 e3                                           	jne    0x10402e8b628f
    10402e8b62ac:	43 8b 8c 20 ec 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xec]
    10402e8b62b4:	43 83 bc 20 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xec],0x0
    10402e8b62bd:	75 d0                                           	jne    0x10402e8b628f
    10402e8b62bf:	43 8b 8c 20 80 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x80]
    10402e8b62c7:	47 0b 9c 20 80 00 00 00                         	or     r11d,DWORD PTR [r8+r12*1+0x80]
    10402e8b62cf:	0f 85 5c 00 00 00                               	jne    0x10402e8b6331
    10402e8b62d5:	47 8b 9c 20 30 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x530]
    10402e8b62dd:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    10402e8b62e6:	0f 85 45 00 00 00                               	jne    0x10402e8b6331
    10402e8b62ec:	47 8b 9c 20 70 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3770]
    10402e8b62f4:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    10402e8b62fd:	0f 85 2e 00 00 00                               	jne    0x10402e8b6331
    10402e8b6303:	47 8b 9c 20 74 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3774]
    10402e8b630b:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    10402e8b6314:	0f 85 17 00 00 00                               	jne    0x10402e8b6331
    10402e8b631a:	47 8b 9c 20 20 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x520]
    10402e8b6322:	43 83 bc 20 20 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x520],0x0
    10402e8b632b:	0f 85 0d 00 00 00                               	jne    0x10402e8b633e
    10402e8b6331:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e8b6336:	45 33 db                                        	xor    r11d,r11d
    10402e8b6339:	e9 a2 00 00 00                                  	jmp    0x10402e8b63e0
    10402e8b633e:	47 8b 9c 20 24 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x524]
    10402e8b6346:	43 83 bc 20 24 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x524],0x0
    10402e8b634f:	74 e0                                           	je     0x10402e8b6331
    10402e8b6351:	47 8b 9c 20 28 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x528]
    10402e8b6359:	43 83 bc 20 28 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x528],0x0
    10402e8b6362:	74 cd                                           	je     0x10402e8b6331
    10402e8b6364:	47 8b 9c 20 2c 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x52c]
    10402e8b636c:	43 83 bc 20 2c 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x52c],0x0
    10402e8b6375:	74 ba                                           	je     0x10402e8b6331
    10402e8b6377:	47 8b 5c 20 74                                  	mov    r11d,DWORD PTR [r8+r12*1+0x74]
    10402e8b637c:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    10402e8b6382:	0f 85 0d 00 00 00                               	jne    0x10402e8b6395
    10402e8b6388:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e8b638d:	44 8b d9                                        	mov    r11d,ecx
    10402e8b6390:	e9 4b 00 00 00                                  	jmp    0x10402e8b63e0
    10402e8b6395:	47 8b 5c 20 78                                  	mov    r11d,DWORD PTR [r8+r12*1+0x78]
    10402e8b639a:	33 c9                                           	xor    ecx,ecx
    10402e8b639c:	41 81 fb 02 03 00 00                            	cmp    r11d,0x302
    10402e8b63a3:	0f 95 c1                                        	setne  cl
    10402e8b63a6:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b63aa:	41 0f 95 c3                                     	setne  r11b
    10402e8b63ae:	45 0f b6 db                                     	movzx  r11d,r11b
    10402e8b63b2:	44 85 d9                                        	test   ecx,r11d
    10402e8b63b5:	0f 85 76 ff ff ff                               	jne    0x10402e8b6331
    10402e8b63bb:	47 8b 5c 20 7c                                  	mov    r11d,DWORD PTR [r8+r12*1+0x7c]
    10402e8b63c0:	33 c9                                           	xor    ecx,ecx
    10402e8b63c2:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b63c6:	0f 94 c1                                        	sete   cl
    10402e8b63c9:	41 81 fb 03 03 00 00                            	cmp    r11d,0x303
    10402e8b63d0:	41 0f 94 c3                                     	sete   r11b
    10402e8b63d4:	45 0f b6 db                                     	movzx  r11d,r11b
    10402e8b63d8:	44 0b d9                                        	or     r11d,ecx
    10402e8b63db:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e8b63e0:	4c 8b 85 30 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd0]
    10402e8b63e7:	4d 2b c7                                        	sub    r8,r15
    10402e8b63ea:	48 2b c2                                        	sub    rax,rdx
    10402e8b63ed:	48 2b 75 88                                     	sub    rsi,QWORD PTR [rbp-0x78]
    10402e8b63f1:	44 8b 7d c8                                     	mov    r15d,DWORD PTR [rbp-0x38]
    10402e8b63f5:	41 8d 97 dc 36 00 00                            	lea    edx,[r15+0x36dc]
    10402e8b63fc:	4c 89 9d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],r11
    10402e8b6403:	45 8d 9f 68 36 00 00                            	lea    r11d,[r15+0x3668]
    10402e8b640a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    10402e8b6411:	41 8d 97 f4 35 00 00                            	lea    edx,[r15+0x35f4]
    10402e8b6418:	4c 8b 8d 20 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe0]
    10402e8b641f:	49 c1 e1 09                                     	shl    r9,0x9
    10402e8b6423:	48 89 8d 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rcx
    10402e8b642a:	48 8b 8d 18 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xe8]
    10402e8b6431:	48 c1 e1 09                                     	shl    rcx,0x9
    10402e8b6435:	4c 89 85 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r8
    10402e8b643c:	4c 8b 45 90                                     	mov    r8,QWORD PTR [rbp-0x70]
    10402e8b6440:	49 c1 e0 09                                     	shl    r8,0x9
    10402e8b6444:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    10402e8b644b:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    10402e8b6452:	48 c1 e6 09                                     	shl    rsi,0x9
    10402e8b6456:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    10402e8b645a:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    10402e8b6461:	49 c1 e0 09                                     	shl    r8,0x9
    10402e8b6465:	48 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rax
    10402e8b646c:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    10402e8b6473:	48 c1 e0 09                                     	shl    rax,0x9
    10402e8b6477:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    10402e8b647e:	4c 8b 8d f8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x308]
    10402e8b6485:	4c 2b 8d f0 fc ff ff                            	sub    r9,QWORD PTR [rbp-0x310]
    10402e8b648c:	4c 89 9d 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],r11
    10402e8b6493:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    10402e8b649a:	4c 2b 9d d0 fc ff ff                            	sub    r11,QWORD PTR [rbp-0x330]
    10402e8b64a1:	4c 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r8
    10402e8b64a8:	44 8b 45 b0                                     	mov    r8d,DWORD PTR [rbp-0x50]
    10402e8b64ac:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    10402e8b64b3:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    10402e8b64b7:	44 8b 45 b8                                     	mov    r8d,DWORD PTR [rbp-0x48]
    10402e8b64bb:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    10402e8b64c2:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    10402e8b64c6:	44 8b 45 c0                                     	mov    r8d,DWORD PTR [rbp-0x40]
    10402e8b64ca:	4c 89 9d 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],r11
    10402e8b64d1:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    10402e8b64d5:	45 8d 87 80 35 00 00                            	lea    r8d,[r15+0x3580]
    10402e8b64dc:	4c 89 85 b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r8
    10402e8b64e3:	45 8d 87 cc 3c 00 00                            	lea    r8d,[r15+0x3ccc]
    10402e8b64ea:	48 f7 d7                                        	not    rdi
    10402e8b64ed:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    10402e8b64f4:	49 f7 d7                                        	not    r15
    10402e8b64f7:	48 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rdi
    10402e8b64fe:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    10402e8b6505:	48 f7 d7                                        	not    rdi
    10402e8b6508:	48 f7 db                                        	neg    rbx
    10402e8b650b:	48 89 9d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rbx
    10402e8b6512:	48 8b 9d 70 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x90]
    10402e8b6519:	48 f7 db                                        	neg    rbx
    10402e8b651c:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    10402e8b6523:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    10402e8b6527:	48 f7 df                                        	neg    rdi
    10402e8b652a:	48 89 bd 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],rdi
    10402e8b6531:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8b6534:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    10402e8b653b:	44 8d 47 30                                     	lea    r8d,[rdi+0x30]
    10402e8b653f:	4c 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],r8
    10402e8b6546:	44 8d 47 20                                     	lea    r8d,[rdi+0x20]
    10402e8b654a:	4c 89 85 b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r8
    10402e8b6551:	44 8d 47 10                                     	lea    r8d,[rdi+0x10]
    10402e8b6555:	c5 79 7e df                                     	vmovd  edi,xmm11
    10402e8b6559:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    10402e8b6560:	c4 63 79 16 df 01                               	vpextrd edi,xmm11,0x1
    10402e8b6566:	c4 62 79 18 de                                  	vbroadcastss xmm11,xmm6
    10402e8b656b:	c4 c2 79 18 cc                                  	vbroadcastss xmm1,xmm12
    10402e8b6570:	c4 c2 79 18 dd                                  	vbroadcastss xmm3,xmm13
    10402e8b6575:	c4 c2 79 18 e6                                  	vbroadcastss xmm4,xmm14
    10402e8b657a:	c4 c2 79 18 e9                                  	vbroadcastss xmm5,xmm9
    10402e8b657f:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    10402e8b6586:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    10402e8b658a:	48 89 b5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rsi
    10402e8b6591:	48 89 85 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rax
    10402e8b6598:	4c 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r9
    10402e8b659f:	4c 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r11
    10402e8b65a6:	4c 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r15
    10402e8b65ad:	48 89 9d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rbx
    10402e8b65b4:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    10402e8b65bb:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    10402e8b65bf:	c5 78 11 9d 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm11
    10402e8b65c7:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    10402e8b65cf:	c5 f8 11 9d 10 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2f0],xmm3
    10402e8b65d7:	c5 f8 11 a5 e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm4
    10402e8b65df:	c5 f8 11 ad 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm5
    10402e8b65e7:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8b65eb:	e9 2d 00 00 00                                  	jmp    0x10402e8b661d
    10402e8b65f0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b65f9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    10402e8b6600:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    10402e8b6607:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    10402e8b660e:	4c 89 bd 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r15
    10402e8b6615:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b6619:	4c 89 65 d8                                     	mov    QWORD PTR [rbp-0x28],r12
    10402e8b661d:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    10402e8b6621:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8b6626:	0f 85 96 7d 00 00                               	jne    0x10402e8be3c2
    10402e8b662c:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
    10402e8b6630:	b8 0f 00 00 00                                  	mov    eax,0xf
    10402e8b6635:	be 03 00 00 00                                  	mov    esi,0x3
    10402e8b663a:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    10402e8b663e:	0f 4c f0                                        	cmovl  esi,eax
    10402e8b6641:	46 8d 1c 8d 00 00 00 00                         	lea    r11d,[r9*4+0x0]
    10402e8b6649:	41 83 e3 7c                                     	and    r11d,0x7c
    10402e8b664d:	46 8d 0c 85 00 00 00 00                         	lea    r9d,[r8*4+0x0]
    10402e8b6655:	41 83 e1 7c                                     	and    r9d,0x7c
    10402e8b6659:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    10402e8b6660:	48 89 b5 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rsi
    10402e8b6667:	4c 89 9d 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r11
    10402e8b666e:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    10402e8b6675:	4c 8b 95 38 fc ff ff                            	mov    r10,QWORD PTR [rbp-0x3c8]
    10402e8b667c:	4c 89 95 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],r10
    10402e8b6683:	4c 8b 95 10 ff ff ff                            	mov    r10,QWORD PTR [rbp-0xf0]
    10402e8b668a:	4c 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r10
    10402e8b6691:	4c 8b c8                                        	mov    r9,rax
    10402e8b6694:	48 8b 85 80 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x380]
    10402e8b669b:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    10402e8b669f:	e9 31 00 00 00                                  	jmp    0x10402e8b66d5
    10402e8b66a4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b66ad:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b66b6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b66bf:	90                                              	nop
    10402e8b66c0:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    10402e8b66c7:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    10402e8b66ce:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b66d2:	45 8b c3                                        	mov    r8d,r11d
    10402e8b66d5:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    10402e8b66dc:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    10402e8b66e3:	4c 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r8
    10402e8b66ea:	48 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rax
    10402e8b66f1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8b66f6:	0f 85 0f 7d 00 00                               	jne    0x10402e8be40b
    10402e8b66fc:	48 8b f0                                        	mov    rsi,rax
    10402e8b66ff:	48 2b b5 98 fc ff ff                            	sub    rsi,QWORD PTR [rbp-0x368]
    10402e8b6706:	48 3b b5 20 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x3e0]
    10402e8b670d:	0f 8c 4b 02 00 00                               	jl     0x10402e8b695e
    10402e8b6713:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    10402e8b671a:	4c 2b a5 30 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x3d0]
    10402e8b6721:	4c 3b a5 90 fd ff ff                            	cmp    r12,QWORD PTR [rbp-0x270]
    10402e8b6728:	0f 8c 30 02 00 00                               	jl     0x10402e8b695e
    10402e8b672e:	4c 8b bd 40 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc0]
    10402e8b6735:	4c 2b bd 28 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x3d8]
    10402e8b673c:	4c 3b bd 48 fc ff ff                            	cmp    r15,QWORD PTR [rbp-0x3b8]
    10402e8b6743:	0f 8c 15 02 00 00                               	jl     0x10402e8b695e
    10402e8b6749:	41 8d 40 01                                     	lea    eax,[r8+0x1]
    10402e8b674d:	41 b8 05 00 00 00                               	mov    r8d,0x5
    10402e8b6753:	3b 85 70 ff ff ff                               	cmp    eax,DWORD PTR [rbp-0x90]
    10402e8b6759:	45 0f 4c c1                                     	cmovl  r8d,r9d
    10402e8b675d:	8b 9d 60 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a0]
    10402e8b6763:	41 23 d8                                        	and    ebx,r8d
    10402e8b6766:	48 3b b5 68 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x398]
    10402e8b676d:	0f 8e 29 00 00 00                               	jle    0x10402e8b679c
    10402e8b6773:	4c 3b a5 c0 fe ff ff                            	cmp    r12,QWORD PTR [rbp-0x140]
    10402e8b677a:	0f 8e 1c 00 00 00                               	jle    0x10402e8b679c
    10402e8b6780:	4d 3b df                                        	cmp    r11,r15
    10402e8b6783:	0f 8d 13 00 00 00                               	jge    0x10402e8b679c
    10402e8b6789:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    10402e8b6790:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    10402e8b6797:	e9 d7 01 00 00                                  	jmp    0x10402e8b6973
    10402e8b679c:	c4 c1 f9 6e c4                                  	vmovq  xmm0,r12
    10402e8b67a1:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    10402e8b67a5:	4d 8b c4                                        	mov    r8,r12
    10402e8b67a8:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    10402e8b67af:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    10402e8b67b5:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    10402e8b67b9:	c5 c1 73 f7 1f                                  	vpsllq xmm7,xmm7,0x1f
    10402e8b67be:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8b67c2:	c4 62 79 37 df                                  	vpcmpgtq xmm11,xmm0,xmm7
    10402e8b67c7:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    10402e8b67cb:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    10402e8b67d0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8b67d5:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    10402e8b67da:	c4 c1 21 73 d3 21                               	vpsrlq xmm11,xmm11,0x21
    10402e8b67e0:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8b67e5:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    10402e8b67ea:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    10402e8b67ef:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    10402e8b67f3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8b67f8:	4c 03 e7                                        	add    r12,rdi
    10402e8b67fb:	c4 c1 f9 6e cc                                  	vmovq  xmm1,r12
    10402e8b6800:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    10402e8b6804:	4c 03 c7                                        	add    r8,rdi
    10402e8b6807:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    10402e8b680d:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    10402e8b6812:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    10402e8b6816:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    10402e8b681a:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    10402e8b681f:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    10402e8b6824:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    10402e8b6829:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    10402e8b682d:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    10402e8b6832:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    10402e8b6837:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    10402e8b683b:	c4 e1 f9 6e c6                                  	vmovq  xmm0,rsi
    10402e8b6840:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    10402e8b6844:	4c 8b e6                                        	mov    r12,rsi
    10402e8b6847:	4c 2b a5 d0 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x330]
    10402e8b684e:	c4 c3 f9 22 c4 01                               	vpinsrq xmm0,xmm0,r12,0x1
    10402e8b6854:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    10402e8b6859:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    10402e8b685d:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    10402e8b6861:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8b6866:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    10402e8b686b:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    10402e8b6870:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    10402e8b6874:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8b6879:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    10402e8b6880:	48 03 f7                                        	add    rsi,rdi
    10402e8b6883:	c4 e1 f9 6e ce                                  	vmovq  xmm1,rsi
    10402e8b6888:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    10402e8b688c:	4c 03 e7                                        	add    r12,rdi
    10402e8b688f:	c4 c3 f1 22 cc 01                               	vpinsrq xmm1,xmm1,r12,0x1
    10402e8b6895:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    10402e8b689a:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    10402e8b689e:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    10402e8b68a2:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    10402e8b68a7:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    10402e8b68ac:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    10402e8b68b1:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    10402e8b68b5:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    10402e8b68ba:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    10402e8b68bf:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    10402e8b68c3:	45 0b e0                                        	or     r12d,r8d
    10402e8b68c6:	c4 c1 f9 6e c7                                  	vmovq  xmm0,r15
    10402e8b68cb:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    10402e8b68cf:	4d 8b c7                                        	mov    r8,r15
    10402e8b68d2:	4c 2b 85 e8 fe ff ff                            	sub    r8,QWORD PTR [rbp-0x118]
    10402e8b68d9:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    10402e8b68df:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    10402e8b68e4:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    10402e8b68e8:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    10402e8b68ec:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8b68f1:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    10402e8b68f6:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    10402e8b68fb:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    10402e8b68ff:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8b6904:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    10402e8b690b:	4c 03 fe                                        	add    r15,rsi
    10402e8b690e:	c4 c1 f9 6e cf                                  	vmovq  xmm1,r15
    10402e8b6913:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    10402e8b6917:	4c 03 c6                                        	add    r8,rsi
    10402e8b691a:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    10402e8b6920:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    10402e8b6925:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    10402e8b6929:	c5 f1 db fa                                     	vpand  xmm7,xmm1,xmm2
    10402e8b692d:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8b6932:	c4 e2 21 37 cf                                  	vpcmpgtq xmm1,xmm11,xmm7
    10402e8b6937:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    10402e8b693c:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    10402e8b6940:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8b6945:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    10402e8b694a:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    10402e8b694e:	45 0b c4                                        	or     r8d,r12d
    10402e8b6951:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    10402e8b6955:	44 23 c3                                        	and    r8d,ebx
    10402e8b6958:	0f 85 12 00 00 00                               	jne    0x10402e8b6970
    10402e8b695e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8b6962:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8b6966:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b696b:	e9 ba 77 00 00                                  	jmp    0x10402e8be12a
    10402e8b6970:	49 8b d8                                        	mov    rbx,r8
    10402e8b6973:	45 33 c0                                        	xor    r8d,r8d
    10402e8b6976:	3b 45 10                                        	cmp    eax,DWORD PTR [rbp+0x10]
    10402e8b6979:	41 0f 9c c0                                     	setl   r8b
    10402e8b697d:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    10402e8b6984:	48 89 9d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],rbx
    10402e8b698b:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    10402e8b6992:	45 85 e0                                        	test   r8d,r12d
    10402e8b6995:	0f 85 6d 5b 00 00                               	jne    0x10402e8bc508
    10402e8b699b:	83 bd 78 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x388],0x0
    10402e8b69a2:	0f 85 70 2a 00 00                               	jne    0x10402e8b9418
    10402e8b69a8:	f6 c3 01                                        	test   bl,0x1
    10402e8b69ab:	0f 85 28 00 00 00                               	jne    0x10402e8b69d9
    10402e8b69b1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8b69b5:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    10402e8b69bb:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    10402e8b69bf:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    10402e8b69c6:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    10402e8b69cd:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    10402e8b69d4:	e9 86 0a 00 00                                  	jmp    0x10402e8b745f
    10402e8b69d9:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8b69dd:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    10402e8b69e1:	43 8b bc 07 c8 3c 00 00                         	mov    edi,DWORD PTR [r15+r8*1+0x3cc8]
    10402e8b69e9:	43 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0x3cc8],0x0
    10402e8b69f2:	0f 84 66 00 00 00                               	je     0x10402e8b6a5e
    10402e8b69f8:	8b bd 68 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x98]
    10402e8b69fe:	c1 ef 03                                        	shr    edi,0x3
    10402e8b6a01:	83 e7 03                                        	and    edi,0x3
    10402e8b6a04:	0b bd 70 fc ff ff                               	or     edi,DWORD PTR [rbp-0x390]
    10402e8b6a0a:	44 8b 9d 58 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3a8]
    10402e8b6a11:	41 03 fb                                        	add    edi,r11d
    10402e8b6a14:	41 0f b6 3c 3f                                  	movzx  edi,BYTE PTR [r15+rdi*1]
    10402e8b6a19:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    10402e8b6a20:	41 83 e3 07                                     	and    r11d,0x7
    10402e8b6a24:	41 8b cb                                        	mov    ecx,r11d
    10402e8b6a27:	d3 e7                                           	shl    edi,cl
    10402e8b6a29:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    10402e8b6a2d:	40 f6 c7 80                                     	test   dil,0x80
    10402e8b6a31:	0f 85 20 00 00 00                               	jne    0x10402e8b6a57
    10402e8b6a37:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    10402e8b6a3d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    10402e8b6a44:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    10402e8b6a4b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    10402e8b6a52:	e9 08 0a 00 00                                  	jmp    0x10402e8b745f
    10402e8b6a57:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    10402e8b6a5e:	c4 e1 82 2a 85 60 ff ff ff                      	vcvtsi2ss xmm0,xmm15,QWORD PTR [rbp-0xa0]
    10402e8b6a67:	c5 b2 59 c0                                     	vmulss xmm0,xmm9,xmm0
    10402e8b6a6b:	c5 8a 59 c8                                     	vmulss xmm1,xmm14,xmm0
    10402e8b6a6f:	c4 e1 82 2a bd 50 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xb0]
    10402e8b6a78:	c5 b2 59 ff                                     	vmulss xmm7,xmm9,xmm7
    10402e8b6a7c:	c5 92 59 d7                                     	vmulss xmm2,xmm13,xmm7
    10402e8b6a80:	c5 72 58 da                                     	vaddss xmm11,xmm1,xmm2
    10402e8b6a84:	c5 2a 5c c8                                     	vsubss xmm9,xmm10,xmm0
    10402e8b6a88:	c5 32 5c cf                                     	vsubss xmm9,xmm9,xmm7
    10402e8b6a8c:	c4 41 1a 59 e9                                  	vmulss xmm13,xmm12,xmm9
    10402e8b6a91:	c4 41 22 58 dd                                  	vaddss xmm11,xmm11,xmm13
    10402e8b6a96:	c4 41 78 2e c3                                  	vucomiss xmm8,xmm11
    10402e8b6a9b:	73 9a                                           	jae    0x10402e8b6a37
    10402e8b6a9d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    10402e8b6aa4:	c4 41 32 59 4c 3f 18                            	vmulss xmm9,xmm9,DWORD PTR [r15+rdi*1+0x18]
    10402e8b6aab:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    10402e8b6ab2:	c4 c1 7a 59 44 0f 18                            	vmulss xmm0,xmm0,DWORD PTR [r15+rcx*1+0x18]
    10402e8b6ab9:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    10402e8b6ac0:	c4 81 42 59 7c 1f 18                            	vmulss xmm7,xmm7,DWORD PTR [r15+r11*1+0x18]
    10402e8b6ac7:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    10402e8b6acb:	c5 b2 58 c0                                     	vaddss xmm0,xmm9,xmm0
    10402e8b6acf:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    10402e8b6ad3:	47 8b 64 07 68                                  	mov    r12d,DWORD PTR [r15+r8*1+0x68]
    10402e8b6ad8:	43 83 7c 07 68 00                               	cmp    DWORD PTR [r15+r8*1+0x68],0x0
    10402e8b6ade:	0f 85 0b 00 00 00                               	jne    0x10402e8b6aef
    10402e8b6ae4:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    10402e8b6aea:	e9 c5 00 00 00                                  	jmp    0x10402e8b6bb4
    10402e8b6aef:	47 8b a4 07 a4 00 00 00                         	mov    r12d,DWORD PTR [r15+r8*1+0xa4]
    10402e8b6af7:	43 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0xa4],0x0
    10402e8b6b00:	75 e2                                           	jne    0x10402e8b6ae4
    10402e8b6b02:	47 8b 64 07 0c                                  	mov    r12d,DWORD PTR [r15+r8*1+0xc]
    10402e8b6b07:	43 8b 04 07                                     	mov    eax,DWORD PTR [r15+r8*1]
    10402e8b6b0b:	0f af 45 a0                                     	imul   eax,DWORD PTR [rbp-0x60]
    10402e8b6b0f:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    10402e8b6b13:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    10402e8b6b19:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    10402e8b6b1d:	c4 81 7a 10 3c 27                               	vmovss xmm7,DWORD PTR [r15+r12*1]
    10402e8b6b23:	47 8b 64 07 6c                                  	mov    r12d,DWORD PTR [r15+r8*1+0x6c]
    10402e8b6b28:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    10402e8b6b2f:	41 83 fc 08                                     	cmp    r12d,0x8
    10402e8b6b33:	0f 83 0b 00 00 00                               	jae    0x10402e8b6b44
    10402e8b6b39:	4c 8d 15 e8 7c 00 00                            	lea    r10,[rip+0x7ce8]        # 0x10402e8be828
    10402e8b6b40:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    10402e8b6b44:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8b6b48:	0f 87 66 00 00 00                               	ja     0x10402e8b6bb4
    10402e8b6b4e:	e9 0c 09 00 00                                  	jmp    0x10402e8b745f
    10402e8b6b53:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    10402e8b6b57:	0f 83 57 00 00 00                               	jae    0x10402e8b6bb4
    10402e8b6b5d:	e9 fd 08 00 00                                  	jmp    0x10402e8b745f
    10402e8b6b62:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    10402e8b6b66:	0f 8a 48 00 00 00                               	jp     0x10402e8b6bb4
    10402e8b6b6c:	0f 84 ed 08 00 00                               	je     0x10402e8b745f
    10402e8b6b72:	e9 3d 00 00 00                                  	jmp    0x10402e8b6bb4
    10402e8b6b77:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    10402e8b6b7b:	0f 87 33 00 00 00                               	ja     0x10402e8b6bb4
    10402e8b6b81:	e9 d9 08 00 00                                  	jmp    0x10402e8b745f
    10402e8b6b86:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8b6b8a:	0f 83 24 00 00 00                               	jae    0x10402e8b6bb4
    10402e8b6b90:	e9 ca 08 00 00                                  	jmp    0x10402e8b745f
    10402e8b6b95:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    10402e8b6b99:	0f 8a c0 08 00 00                               	jp     0x10402e8b745f
    10402e8b6b9f:	0f 84 0f 00 00 00                               	je     0x10402e8b6bb4
    10402e8b6ba5:	e9 b5 08 00 00                                  	jmp    0x10402e8b745f
    10402e8b6baa:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8b6bae:	0f 86 ab 08 00 00                               	jbe    0x10402e8b745f
    10402e8b6bb4:	c4 c1 2a 5e fb                                  	vdivss xmm7,xmm10,xmm11
    10402e8b6bb9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    10402e8b6bbd:	c4 62 79 18 cf                                  	vbroadcastss xmm9,xmm7
    10402e8b6bc2:	c4 41 7a 6f 5c 3f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rdi*1+0x20]
    10402e8b6bc9:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    10402e8b6bd1:	c4 c2 79 18 c5                                  	vbroadcastss xmm0,xmm13
    10402e8b6bd6:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    10402e8b6bda:	c4 41 7a 6f 5c 0f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rcx*1+0x20]
    10402e8b6be1:	c4 e2 79 18 f1                                  	vbroadcastss xmm6,xmm1
    10402e8b6be6:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    10402e8b6bea:	c4 62 79 18 da                                  	vbroadcastss xmm11,xmm2
    10402e8b6bef:	c5 fb 11 bd 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm7
    10402e8b6bf7:	c4 81 7a 6f 7c 1f 20                            	vmovdqu xmm7,XMMWORD PTR [r15+r11*1+0x20]
    10402e8b6bfe:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    10402e8b6c02:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    10402e8b6c06:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8b6c0a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8b6c0e:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    10402e8b6c12:	c4 81 7a 7f 84 27 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+r12*1+0x190],xmm0
    10402e8b6c1c:	c4 c1 7a 10 b4 3f 98 00 00 00                   	vmovss xmm6,DWORD PTR [r15+rdi*1+0x98]
    10402e8b6c26:	c4 c1 7a 10 bc 0f 98 00 00 00                   	vmovss xmm7,DWORD PTR [r15+rcx*1+0x98]
    10402e8b6c30:	c4 01 7a 10 8c 1f 98 00 00 00                   	vmovss xmm9,DWORD PTR [r15+r11*1+0x98]
    10402e8b6c3a:	c4 81 7a 7f 04 27                               	vmovdqu XMMWORD PTR [r15+r12*1],xmm0
    10402e8b6c40:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b6c47:	45 8b 84 3f 34 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x134]
    10402e8b6c4f:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    10402e8b6c53:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    10402e8b6c5b:	c5 fb 11 8d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm1
    10402e8b6c63:	c5 7b 11 ad 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm13
    10402e8b6c6b:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    10402e8b6c73:	c5 fb 11 bd b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm7
    10402e8b6c7b:	c5 7b 11 8d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm9
    10402e8b6c83:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b6c87:	0f 86 5c 04 00 00                               	jbe    0x10402e8b70e9
    10402e8b6c8d:	45 8b 84 3f 30 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x130]
    10402e8b6c95:	41 83 bc 3f 30 01 00 00 00                      	cmp    DWORD PTR [r15+rdi*1+0x130],0x0
    10402e8b6c9e:	0f 85 0b 00 00 00                               	jne    0x10402e8b6caf
    10402e8b6ca4:	41 8b cc                                        	mov    ecx,r12d
    10402e8b6ca7:	4d 8b c7                                        	mov    r8,r15
    10402e8b6caa:	e9 f9 04 00 00                                  	jmp    0x10402e8b71a8
    10402e8b6caf:	45 8d 84 24 90 00 00 00                         	lea    r8d,[r12+0x90]
    10402e8b6cb7:	45 8d 5c 24 70                                  	lea    r11d,[r12+0x70]
    10402e8b6cbc:	41 53                                           	push   r11
    10402e8b6cbe:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    10402e8b6cc5:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    10402e8b6ccc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b6cd0:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b6cd3:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8b6cd6:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    10402e8b6cd9:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8b6cdc:	c4 c1 79 28 dd                                  	vmovapd xmm3,xmm13
    10402e8b6ce1:	c5 fb 10 a5 18 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xe8]
    10402e8b6ce9:	45 8b c8                                        	mov    r9d,r8d
    10402e8b6cec:	e8 27 f5 ed ff                                  	call   0x10402e796218
    10402e8b6cf1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b6cf5:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b6cfc:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    10402e8b6d04:	45 85 db                                        	test   r11d,r11d
    10402e8b6d07:	0f 85 62 01 00 00                               	jne    0x10402e8b6e6f
    10402e8b6d0d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b6d10:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    10402e8b6d15:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    10402e8b6d1b:	0f 84 43 00 00 00                               	je     0x10402e8b6d64
    10402e8b6d21:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b6d27:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b6d2b:	41 53                                           	push   r11
    10402e8b6d2d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b6d31:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    10402e8b6d37:	33 d2                                           	xor    edx,edx
    10402e8b6d39:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    10402e8b6d40:	e8 fb f4 ed ff                                  	call   0x10402e796240
    10402e8b6d45:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b6d48:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b6d4c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b6d53:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b6d5d:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b6d64:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    10402e8b6d69:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    10402e8b6d6f:	0f 84 46 00 00 00                               	je     0x10402e8b6dbb
    10402e8b6d75:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b6d7b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b6d7f:	41 53                                           	push   r11
    10402e8b6d81:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b6d85:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    10402e8b6d8b:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8b6d90:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    10402e8b6d97:	e8 a4 f4 ed ff                                  	call   0x10402e796240
    10402e8b6d9c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b6d9f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b6da3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b6daa:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b6db4:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b6dbb:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    10402e8b6dc0:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    10402e8b6dc6:	0f 84 46 00 00 00                               	je     0x10402e8b6e12
    10402e8b6dcc:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b6dd2:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b6dd6:	41 53                                           	push   r11
    10402e8b6dd8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b6ddc:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    10402e8b6de2:	ba 02 00 00 00                                  	mov    edx,0x2
    10402e8b6de7:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    10402e8b6dee:	e8 4d f4 ed ff                                  	call   0x10402e796240
    10402e8b6df3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b6df6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b6dfa:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b6e01:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b6e0b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b6e12:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    10402e8b6e17:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    10402e8b6e1d:	0f 84 85 03 00 00                               	je     0x10402e8b71a8
    10402e8b6e23:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b6e29:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b6e2d:	41 53                                           	push   r11
    10402e8b6e2f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b6e33:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    10402e8b6e39:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8b6e3e:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    10402e8b6e45:	e8 f6 f3 ed ff                                  	call   0x10402e796240
    10402e8b6e4a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b6e4d:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8b6e51:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    10402e8b6e57:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    10402e8b6e60:	4c 8b c7                                        	mov    r8,rdi
    10402e8b6e63:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b6e6a:	e9 39 03 00 00                                  	jmp    0x10402e8b71a8
    10402e8b6e6f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b6e72:	4d 8b e0                                        	mov    r12,r8
    10402e8b6e75:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    10402e8b6e7f:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    10402e8b6e85:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    10402e8b6e8a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b6e8e:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    10402e8b6e95:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    10402e8b6e99:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8b6e9d:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    10402e8b6ea7:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    10402e8b6eab:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    10402e8b6eb1:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    10402e8b6eb5:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    10402e8b6eba:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    10402e8b6ec4:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    10402e8b6ec8:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    10402e8b6ecf:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    10402e8b6ed3:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    10402e8b6ed7:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    10402e8b6edb:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b6edf:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    10402e8b6ee5:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    10402e8b6eea:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    10402e8b6eee:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8b6ef2:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8b6ef7:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8b6efc:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    10402e8b6f00:	0f 87 09 00 00 00                               	ja     0x10402e8b6f0f
    10402e8b6f06:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8b6f0a:	e9 04 00 00 00                                  	jmp    0x10402e8b6f13
    10402e8b6f0f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b6f13:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b6f18:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    10402e8b6f1c:	0f 87 09 00 00 00                               	ja     0x10402e8b6f2b
    10402e8b6f22:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8b6f26:	e9 05 00 00 00                                  	jmp    0x10402e8b6f30
    10402e8b6f2b:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    10402e8b6f30:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8b6f35:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b6f39:	0f 84 a4 00 00 00                               	je     0x10402e8b6fe3
    10402e8b6f3f:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    10402e8b6f43:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    10402e8b6f4d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b6f51:	0f 87 09 00 00 00                               	ja     0x10402e8b6f60
    10402e8b6f57:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b6f5b:	e9 04 00 00 00                                  	jmp    0x10402e8b6f64
    10402e8b6f60:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b6f64:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b6f68:	0f 87 0a 00 00 00                               	ja     0x10402e8b6f78
    10402e8b6f6e:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b6f73:	e9 05 00 00 00                                  	jmp    0x10402e8b6f7d
    10402e8b6f78:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b6f7d:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    10402e8b6f81:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8b6f86:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8b6f8b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b6f8f:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    10402e8b6f99:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8b6f9e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8b6fa3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8b6fa7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    10402e8b6fb1:	41 83 fb 03                                     	cmp    r11d,0x3
    10402e8b6fb5:	0f 85 04 00 00 00                               	jne    0x10402e8b6fbf
    10402e8b6fbb:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    10402e8b6fbf:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    10402e8b6fc4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b6fc8:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8b6fcc:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    10402e8b6fd6:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    10402e8b6fdb:	4d 8b df                                        	mov    r11,r15
    10402e8b6fde:	e9 cc 00 00 00                                  	jmp    0x10402e8b70af
    10402e8b6fe3:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    10402e8b6fea:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b6fee:	0f 87 09 00 00 00                               	ja     0x10402e8b6ffd
    10402e8b6ff4:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b6ff8:	e9 04 00 00 00                                  	jmp    0x10402e8b7001
    10402e8b6ffd:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b7001:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b7005:	0f 87 0a 00 00 00                               	ja     0x10402e8b7015
    10402e8b700b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b7010:	e9 05 00 00 00                                  	jmp    0x10402e8b701a
    10402e8b7015:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b701a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    10402e8b7024:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    10402e8b702a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    10402e8b702f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b7033:	0f 87 09 00 00 00                               	ja     0x10402e8b7042
    10402e8b7039:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    10402e8b703d:	e9 04 00 00 00                                  	jmp    0x10402e8b7046
    10402e8b7042:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    10402e8b7046:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b704a:	0f 87 0a 00 00 00                               	ja     0x10402e8b705a
    10402e8b7050:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    10402e8b7055:	e9 05 00 00 00                                  	jmp    0x10402e8b705f
    10402e8b705a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b705f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    10402e8b7069:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8b706e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8b7072:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    10402e8b707c:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8b7081:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8b7086:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8b708a:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x10402e8b6f91
    10402e8b7091:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8b7096:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8b709b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8b709f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8b70a3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8b70a7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8b70ab:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    10402e8b70af:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8b70b4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b70b8:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x10402e8b6f91
    10402e8b70bf:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8b70c4:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8b70c9:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8b70cd:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    10402e8b70d7:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    10402e8b70e1:	4d 8b c4                                        	mov    r8,r12
    10402e8b70e4:	e9 bf 00 00 00                                  	jmp    0x10402e8b71a8
    10402e8b70e9:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    10402e8b70f0:	c4 81 7a 10 44 1f 50                            	vmovss xmm0,DWORD PTR [r15+r11*1+0x50]
    10402e8b70f7:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    10402e8b70fc:	48 8b d1                                        	mov    rdx,rcx
    10402e8b70ff:	c4 41 7a 10 5c 17 50                            	vmovss xmm11,DWORD PTR [r15+rdx*1+0x50]
    10402e8b7106:	c5 22 59 d9                                     	vmulss xmm11,xmm11,xmm1
    10402e8b710a:	48 8b 8d 00 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x200]
    10402e8b7111:	c4 c1 6a 59 74 0f 50                            	vmulss xmm6,xmm2,DWORD PTR [r15+rcx*1+0x50]
    10402e8b7118:	c5 a2 58 f6                                     	vaddss xmm6,xmm11,xmm6
    10402e8b711c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b7120:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    10402e8b7128:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b712c:	c4 01 7a 10 5c 1f 54                            	vmovss xmm11,DWORD PTR [r15+r11*1+0x54]
    10402e8b7133:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    10402e8b7138:	c5 fb 11 85 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm0
    10402e8b7140:	c4 c1 7a 10 44 17 54                            	vmovss xmm0,DWORD PTR [r15+rdx*1+0x54]
    10402e8b7147:	c5 fa 59 c1                                     	vmulss xmm0,xmm0,xmm1
    10402e8b714b:	c4 c1 6a 59 7c 0f 54                            	vmulss xmm7,xmm2,DWORD PTR [r15+rcx*1+0x54]
    10402e8b7152:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    10402e8b7156:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    10402e8b715a:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b715e:	41 8d bc 24 90 00 00 00                         	lea    edi,[r12+0x90]
    10402e8b7166:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b716a:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b716d:	41 8b d0                                        	mov    edx,r8d
    10402e8b7170:	c5 fb 10 8d b8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x148]
    10402e8b7178:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8b717c:	41 8b cc                                        	mov    ecx,r12d
    10402e8b717f:	8b df                                           	mov    ebx,edi
    10402e8b7181:	e8 aa f3 ed ff                                  	call   0x10402e796530
    10402e8b7186:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b7189:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b718d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    10402e8b7197:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b71a1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b71a8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8b71ac:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    10402e8b71b4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    10402e8b71bd:	0f 85 2a 00 00 00                               	jne    0x10402e8b71ed
    10402e8b71c3:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    10402e8b71cd:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    10402e8b71d7:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    10402e8b71e1:	49 8b fb                                        	mov    rdi,r11
    10402e8b71e4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    10402e8b71e8:	e9 dd 01 00 00                                  	jmp    0x10402e8b73ca
    10402e8b71ed:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    10402e8b71f5:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    10402e8b71fd:	c5 fb 10 b5 b0 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x150]
    10402e8b7205:	c5 ca 59 b5 30 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1d0]
    10402e8b720d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    10402e8b7215:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    10402e8b721d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    10402e8b7221:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b7225:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    10402e8b722d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b7231:	4c 8b 15 37 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb37]        # 0x10402e8b5d6f
    10402e8b7238:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b723d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8b7241:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8b7245:	0f 87 04 00 00 00                               	ja     0x10402e8b724f
    10402e8b724b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8b724f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    10402e8b7257:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    10402e8b725e:	0f 85 28 00 00 00                               	jne    0x10402e8b728c
    10402e8b7264:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    10402e8b726e:	4c 8b 15 fa ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeafa]        # 0x10402e8b5d6f
    10402e8b7275:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8b727a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    10402e8b727e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b7282:	e8 31 13 ee ff                                  	call   0x10402e7985b8
    10402e8b7287:	e9 94 00 00 00                                  	jmp    0x10402e8b7320
    10402e8b728c:	41 83 fc 01                                     	cmp    r12d,0x1
    10402e8b7290:	0f 84 67 00 00 00                               	je     0x10402e8b72fd
    10402e8b7296:	4d 8b d0                                        	mov    r10,r8
    10402e8b7299:	4d 8b c3                                        	mov    r8,r11
    10402e8b729c:	4d 8b da                                        	mov    r11,r10
    10402e8b729f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    10402e8b72a9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    10402e8b72b3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    10402e8b72b8:	7a 06                                           	jp     0x10402e8b72c0
    10402e8b72ba:	0f 84 2a 00 00 00                               	je     0x10402e8b72ea
    10402e8b72c0:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8b72c4:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    10402e8b72c9:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    10402e8b72cd:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    10402e8b72d1:	0f 86 49 00 00 00                               	jbe    0x10402e8b7320
    10402e8b72d7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b72db:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b72e0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b72e5:	e9 5b 00 00 00                                  	jmp    0x10402e8b7345
    10402e8b72ea:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b72ee:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b72f3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b72f8:	e9 44 00 00 00                                  	jmp    0x10402e8b7341
    10402e8b72fd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    10402e8b7307:	4c 8b 15 61 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea61]        # 0x10402e8b5d6f
    10402e8b730e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b7313:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    10402e8b7317:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b731b:	e8 98 12 ee ff                                  	call   0x10402e7985b8
    10402e8b7320:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b7324:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b7329:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b732e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    10402e8b7332:	0f 87 09 00 00 00                               	ja     0x10402e8b7341
    10402e8b7338:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    10402e8b733c:	e9 04 00 00 00                                  	jmp    0x10402e8b7345
    10402e8b7341:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8b7345:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b7348:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b734c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    10402e8b7356:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    10402e8b735a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    10402e8b735e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    10402e8b7368:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    10402e8b736d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    10402e8b7377:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    10402e8b7381:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    10402e8b738b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    10402e8b7390:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    10402e8b739a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    10402e8b73a4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    10402e8b73ae:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    10402e8b73b3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    10402e8b73bd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    10402e8b73c1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b73c5:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8b73ca:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    10402e8b73d4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b73d8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8b73db:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8b73e1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e8b73e4:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    10402e8b73ec:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    10402e8b73f0:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    10402e8b73f4:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    10402e8b73f9:	e8 62 ee ed ff                                  	call   0x10402e796260
    10402e8b73fe:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8b7402:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8b7407:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    10402e8b740d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    10402e8b7411:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8b7416:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8b741c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8b7422:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b7427:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    10402e8b742e:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    10402e8b7435:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    10402e8b743c:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    10402e8b7442:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8b744a:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8b7452:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    10402e8b7459:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8b745f:	f6 c3 02                                        	test   bl,0x2
    10402e8b7462:	0f 85 26 00 00 00                               	jne    0x10402e8b748e
    10402e8b7468:	4d 8b e7                                        	mov    r12,r15
    10402e8b746b:	4c 8b f9                                        	mov    r15,rcx
    10402e8b746e:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    10402e8b7474:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8b747c:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8b7484:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    10402e8b7489:	e9 b5 0a 00 00                                  	jmp    0x10402e8b7f43
    10402e8b748e:	4d 8b e7                                        	mov    r12,r15
    10402e8b7491:	47 8b bc 04 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x3cc8]
    10402e8b7499:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    10402e8b74a2:	0f 84 75 00 00 00                               	je     0x10402e8b751d
    10402e8b74a8:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    10402e8b74af:	41 c1 ef 03                                     	shr    r15d,0x3
    10402e8b74b3:	41 83 e7 03                                     	and    r15d,0x3
    10402e8b74b7:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    10402e8b74bd:	41 0b d7                                        	or     edx,r15d
    10402e8b74c0:	44 8b bd 58 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3a8]
    10402e8b74c7:	41 03 d7                                        	add    edx,r15d
    10402e8b74ca:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    10402e8b74cf:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    10402e8b74d5:	83 e0 07                                        	and    eax,0x7
    10402e8b74d8:	4c 8b d1                                        	mov    r10,rcx
    10402e8b74db:	8b c8                                           	mov    ecx,eax
    10402e8b74dd:	49 8b c2                                        	mov    rax,r10
    10402e8b74e0:	d3 e2                                           	shl    edx,cl
    10402e8b74e2:	f6 c2 80                                        	test   dl,0x80
    10402e8b74e5:	0f 85 29 00 00 00                               	jne    0x10402e8b7514
    10402e8b74eb:	4c 8b f8                                        	mov    r15,rax
    10402e8b74ee:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    10402e8b74f4:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    10402e8b74fa:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8b7502:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8b750a:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    10402e8b750f:	e9 2f 0a 00 00                                  	jmp    0x10402e8b7f43
    10402e8b7514:	48 8b c8                                        	mov    rcx,rax
    10402e8b7517:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    10402e8b751d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    10402e8b7524:	4c 2b bd d0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x330]
    10402e8b752b:	c4 c1 82 2a c7                                  	vcvtsi2ss xmm0,xmm15,r15
    10402e8b7530:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8b7538:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    10402e8b753c:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    10402e8b7541:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    10402e8b7545:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    10402e8b754c:	4c 2b bd f0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x310]
    10402e8b7553:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    10402e8b7558:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    10402e8b755d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8b7565:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    10402e8b756a:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    10402e8b756e:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    10402e8b7572:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    10402e8b7577:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    10402e8b757b:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    10402e8b757f:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    10402e8b7584:	0f 83 b0 09 00 00                               	jae    0x10402e8b7f3a
    10402e8b758a:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    10402e8b7591:	4c 8b f9                                        	mov    r15,rcx
    10402e8b7594:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    10402e8b759b:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    10402e8b75a2:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    10402e8b75a7:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    10402e8b75ab:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    10402e8b75af:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    10402e8b75b4:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    10402e8b75ba:	0f 85 0b 00 00 00                               	jne    0x10402e8b75cb
    10402e8b75c0:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    10402e8b75c6:	e9 c5 00 00 00                                  	jmp    0x10402e8b7690
    10402e8b75cb:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    10402e8b75d3:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    10402e8b75dc:	75 e2                                           	jne    0x10402e8b75c0
    10402e8b75de:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    10402e8b75e3:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    10402e8b75e7:	0f af 4d a0                                     	imul   ecx,DWORD PTR [rbp-0x60]
    10402e8b75eb:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    10402e8b75ee:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    10402e8b75f4:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    10402e8b75f7:	c4 41 7a 10 1c 14                               	vmovss xmm11,DWORD PTR [r12+rdx*1]
    10402e8b75fd:	43 8b 54 04 6c                                  	mov    edx,DWORD PTR [r12+r8*1+0x6c]
    10402e8b7602:	81 ea 00 02 00 00                               	sub    edx,0x200
    10402e8b7608:	83 fa 08                                        	cmp    edx,0x8
    10402e8b760b:	0f 83 0b 00 00 00                               	jae    0x10402e8b761c
    10402e8b7611:	4c 8d 15 d0 71 00 00                            	lea    r10,[rip+0x71d0]        # 0x10402e8be7e8
    10402e8b7618:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    10402e8b761c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b7620:	0f 87 6a 00 00 00                               	ja     0x10402e8b7690
    10402e8b7626:	e9 18 09 00 00                                  	jmp    0x10402e8b7f43
    10402e8b762b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b7630:	0f 83 5a 00 00 00                               	jae    0x10402e8b7690
    10402e8b7636:	e9 08 09 00 00                                  	jmp    0x10402e8b7f43
    10402e8b763b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b7640:	0f 8a 4a 00 00 00                               	jp     0x10402e8b7690
    10402e8b7646:	0f 84 f7 08 00 00                               	je     0x10402e8b7f43
    10402e8b764c:	e9 3f 00 00 00                                  	jmp    0x10402e8b7690
    10402e8b7651:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b7656:	0f 87 34 00 00 00                               	ja     0x10402e8b7690
    10402e8b765c:	e9 e2 08 00 00                                  	jmp    0x10402e8b7f43
    10402e8b7661:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b7665:	0f 83 25 00 00 00                               	jae    0x10402e8b7690
    10402e8b766b:	e9 d3 08 00 00                                  	jmp    0x10402e8b7f43
    10402e8b7670:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b7675:	0f 8a c8 08 00 00                               	jp     0x10402e8b7f43
    10402e8b767b:	0f 84 0f 00 00 00                               	je     0x10402e8b7690
    10402e8b7681:	e9 bd 08 00 00                                  	jmp    0x10402e8b7f43
    10402e8b7686:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b768a:	0f 86 b3 08 00 00                               	jbe    0x10402e8b7f43
    10402e8b7690:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    10402e8b7695:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    10402e8b769a:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    10402e8b769f:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    10402e8b76a6:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    10402e8b76ab:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    10402e8b76af:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    10402e8b76b6:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    10402e8b76be:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    10402e8b76c3:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    10402e8b76c7:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    10402e8b76cc:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    10402e8b76d3:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    10402e8b76d7:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8b76db:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    10402e8b76df:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8b76e3:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    10402e8b76e6:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    10402e8b76f0:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    10402e8b76fa:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    10402e8b7704:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    10402e8b770e:	c4 c1 7a 7f 04 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm0
    10402e8b7714:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b771b:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    10402e8b7723:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    10402e8b7727:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    10402e8b772f:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    10402e8b7737:	c5 fb 11 a5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm4
    10402e8b773f:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    10402e8b7747:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    10402e8b774f:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    10402e8b7757:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    10402e8b775f:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b7763:	0f 86 4b 04 00 00                               	jbe    0x10402e8b7bb4
    10402e8b7769:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    10402e8b7771:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    10402e8b777a:	0f 85 0a 00 00 00                               	jne    0x10402e8b778a
    10402e8b7780:	8b ca                                           	mov    ecx,edx
    10402e8b7782:	4d 8b c4                                        	mov    r8,r12
    10402e8b7785:	e9 de 04 00 00                                  	jmp    0x10402e8b7c68
    10402e8b778a:	44 8d 82 90 00 00 00                            	lea    r8d,[rdx+0x90]
    10402e8b7791:	44 8d 5a 70                                     	lea    r11d,[rdx+0x70]
    10402e8b7795:	41 53                                           	push   r11
    10402e8b7797:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    10402e8b779e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b77a2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b77a5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8b77a8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    10402e8b77ab:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8b77ae:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    10402e8b77b2:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    10402e8b77b7:	45 8b c8                                        	mov    r9d,r8d
    10402e8b77ba:	e8 59 ea ed ff                                  	call   0x10402e796218
    10402e8b77bf:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b77c3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b77ca:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    10402e8b77d2:	45 85 db                                        	test   r11d,r11d
    10402e8b77d5:	0f 85 62 01 00 00                               	jne    0x10402e8b793d
    10402e8b77db:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b77de:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    10402e8b77e3:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    10402e8b77e9:	0f 84 43 00 00 00                               	je     0x10402e8b7832
    10402e8b77ef:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b77f5:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b77f9:	41 53                                           	push   r11
    10402e8b77fb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b77ff:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    10402e8b7805:	33 d2                                           	xor    edx,edx
    10402e8b7807:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8b780e:	e8 2d ea ed ff                                  	call   0x10402e796240
    10402e8b7813:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b7816:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b781a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b7821:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b782b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b7832:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    10402e8b7837:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    10402e8b783d:	0f 84 46 00 00 00                               	je     0x10402e8b7889
    10402e8b7843:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b7849:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b784d:	41 53                                           	push   r11
    10402e8b784f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b7853:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    10402e8b7859:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8b785e:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8b7865:	e8 d6 e9 ed ff                                  	call   0x10402e796240
    10402e8b786a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b786d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b7871:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b7878:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b7882:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b7889:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    10402e8b788e:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    10402e8b7894:	0f 84 46 00 00 00                               	je     0x10402e8b78e0
    10402e8b789a:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b78a0:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b78a4:	41 53                                           	push   r11
    10402e8b78a6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b78aa:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    10402e8b78b0:	ba 02 00 00 00                                  	mov    edx,0x2
    10402e8b78b5:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8b78bc:	e8 7f e9 ed ff                                  	call   0x10402e796240
    10402e8b78c1:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b78c4:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b78c8:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b78cf:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b78d9:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b78e0:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    10402e8b78e5:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    10402e8b78eb:	0f 84 77 03 00 00                               	je     0x10402e8b7c68
    10402e8b78f1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b78f7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b78fb:	41 53                                           	push   r11
    10402e8b78fd:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b7901:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    10402e8b7907:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8b790c:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    10402e8b7913:	e8 28 e9 ed ff                                  	call   0x10402e796240
    10402e8b7918:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b791b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8b791f:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    10402e8b7925:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    10402e8b792e:	4c 8b c7                                        	mov    r8,rdi
    10402e8b7931:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b7938:	e9 2b 03 00 00                                  	jmp    0x10402e8b7c68
    10402e8b793d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b7940:	4d 8b e0                                        	mov    r12,r8
    10402e8b7943:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    10402e8b794d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    10402e8b7953:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    10402e8b7958:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b795c:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    10402e8b7963:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    10402e8b7967:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8b796b:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    10402e8b7975:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    10402e8b7979:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    10402e8b797f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    10402e8b7983:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    10402e8b7988:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    10402e8b7992:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    10402e8b7996:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    10402e8b799d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    10402e8b79a1:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    10402e8b79a5:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    10402e8b79a9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b79ad:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    10402e8b79b3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    10402e8b79b8:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    10402e8b79bc:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8b79c0:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8b79c5:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8b79ca:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    10402e8b79ce:	0f 87 09 00 00 00                               	ja     0x10402e8b79dd
    10402e8b79d4:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8b79d8:	e9 04 00 00 00                                  	jmp    0x10402e8b79e1
    10402e8b79dd:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b79e1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b79e6:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    10402e8b79ea:	0f 87 09 00 00 00                               	ja     0x10402e8b79f9
    10402e8b79f0:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8b79f4:	e9 05 00 00 00                                  	jmp    0x10402e8b79fe
    10402e8b79f9:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    10402e8b79fe:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8b7a03:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b7a07:	0f 84 a1 00 00 00                               	je     0x10402e8b7aae
    10402e8b7a0d:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    10402e8b7a11:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    10402e8b7a1b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b7a1f:	0f 87 09 00 00 00                               	ja     0x10402e8b7a2e
    10402e8b7a25:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b7a29:	e9 04 00 00 00                                  	jmp    0x10402e8b7a32
    10402e8b7a2e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b7a32:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b7a36:	0f 87 0a 00 00 00                               	ja     0x10402e8b7a46
    10402e8b7a3c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b7a41:	e9 05 00 00 00                                  	jmp    0x10402e8b7a4b
    10402e8b7a46:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b7a4b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    10402e8b7a4f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8b7a54:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8b7a59:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b7a5d:	4c 8b 15 2d f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52d]        # 0x10402e8b6f91
    10402e8b7a64:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8b7a69:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8b7a6e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8b7a72:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    10402e8b7a7c:	41 83 fb 03                                     	cmp    r11d,0x3
    10402e8b7a80:	0f 85 04 00 00 00                               	jne    0x10402e8b7a8a
    10402e8b7a86:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    10402e8b7a8a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    10402e8b7a8f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b7a93:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8b7a97:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    10402e8b7aa1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    10402e8b7aa6:	4d 8b df                                        	mov    r11,r15
    10402e8b7aa9:	e9 cc 00 00 00                                  	jmp    0x10402e8b7b7a
    10402e8b7aae:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    10402e8b7ab5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b7ab9:	0f 87 09 00 00 00                               	ja     0x10402e8b7ac8
    10402e8b7abf:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b7ac3:	e9 04 00 00 00                                  	jmp    0x10402e8b7acc
    10402e8b7ac8:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b7acc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b7ad0:	0f 87 0a 00 00 00                               	ja     0x10402e8b7ae0
    10402e8b7ad6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b7adb:	e9 05 00 00 00                                  	jmp    0x10402e8b7ae5
    10402e8b7ae0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b7ae5:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    10402e8b7aef:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    10402e8b7af5:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    10402e8b7afa:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b7afe:	0f 87 09 00 00 00                               	ja     0x10402e8b7b0d
    10402e8b7b04:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    10402e8b7b08:	e9 04 00 00 00                                  	jmp    0x10402e8b7b11
    10402e8b7b0d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    10402e8b7b11:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b7b15:	0f 87 0a 00 00 00                               	ja     0x10402e8b7b25
    10402e8b7b1b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    10402e8b7b20:	e9 05 00 00 00                                  	jmp    0x10402e8b7b2a
    10402e8b7b25:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b7b2a:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    10402e8b7b34:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8b7b39:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8b7b3d:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    10402e8b7b47:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8b7b4c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8b7b51:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8b7b55:	4c 8b 15 35 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff435]        # 0x10402e8b6f91
    10402e8b7b5c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8b7b61:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8b7b66:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8b7b6a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8b7b6e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8b7b72:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8b7b76:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    10402e8b7b7a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8b7b7f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b7b83:	4c 8b 15 07 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff407]        # 0x10402e8b6f91
    10402e8b7b8a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8b7b8f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8b7b94:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8b7b98:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    10402e8b7ba2:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    10402e8b7bac:	4d 8b c4                                        	mov    r8,r12
    10402e8b7baf:	e9 b4 00 00 00                                  	jmp    0x10402e8b7c68
    10402e8b7bb4:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    10402e8b7bbb:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    10402e8b7bc2:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    10402e8b7bc6:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    10402e8b7bcd:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    10402e8b7bd1:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    10402e8b7bd8:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    10402e8b7bdf:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    10402e8b7be3:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b7be7:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    10402e8b7bec:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b7bf0:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    10402e8b7bf7:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    10402e8b7bfb:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    10402e8b7c02:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    10402e8b7c06:	c5 fb 11 85 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm0
    10402e8b7c0e:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    10402e8b7c15:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    10402e8b7c19:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    10402e8b7c1d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b7c21:	8d ba 90 00 00 00                               	lea    edi,[rdx+0x90]
    10402e8b7c27:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b7c2b:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b7c2e:	8b ca                                           	mov    ecx,edx
    10402e8b7c30:	41 8b d0                                        	mov    edx,r8d
    10402e8b7c33:	c5 fb 10 8d 30 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
    10402e8b7c3b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8b7c3f:	8b df                                           	mov    ebx,edi
    10402e8b7c41:	e8 ea e8 ed ff                                  	call   0x10402e796530
    10402e8b7c46:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b7c49:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b7c4d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    10402e8b7c57:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b7c61:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b7c68:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8b7c6c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    10402e8b7c74:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    10402e8b7c7d:	0f 85 2a 00 00 00                               	jne    0x10402e8b7cad
    10402e8b7c83:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    10402e8b7c8d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    10402e8b7c97:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    10402e8b7ca1:	49 8b fb                                        	mov    rdi,r11
    10402e8b7ca4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    10402e8b7ca8:	e9 dd 01 00 00                                  	jmp    0x10402e8b7e8a
    10402e8b7cad:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    10402e8b7cb5:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    10402e8b7cbd:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    10402e8b7cc5:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    10402e8b7ccd:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    10402e8b7cd5:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    10402e8b7cdd:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    10402e8b7ce1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b7ce5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    10402e8b7ced:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b7cf1:	4c 8b 15 77 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe077]        # 0x10402e8b5d6f
    10402e8b7cf8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b7cfd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8b7d01:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8b7d05:	0f 87 04 00 00 00                               	ja     0x10402e8b7d0f
    10402e8b7d0b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8b7d0f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    10402e8b7d17:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    10402e8b7d1e:	0f 85 28 00 00 00                               	jne    0x10402e8b7d4c
    10402e8b7d24:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    10402e8b7d2e:	4c 8b 15 3a e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe03a]        # 0x10402e8b5d6f
    10402e8b7d35:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8b7d3a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    10402e8b7d3e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b7d42:	e8 71 08 ee ff                                  	call   0x10402e7985b8
    10402e8b7d47:	e9 94 00 00 00                                  	jmp    0x10402e8b7de0
    10402e8b7d4c:	41 83 fc 01                                     	cmp    r12d,0x1
    10402e8b7d50:	0f 84 67 00 00 00                               	je     0x10402e8b7dbd
    10402e8b7d56:	4d 8b d0                                        	mov    r10,r8
    10402e8b7d59:	4d 8b c3                                        	mov    r8,r11
    10402e8b7d5c:	4d 8b da                                        	mov    r11,r10
    10402e8b7d5f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    10402e8b7d69:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    10402e8b7d73:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    10402e8b7d78:	7a 06                                           	jp     0x10402e8b7d80
    10402e8b7d7a:	0f 84 2a 00 00 00                               	je     0x10402e8b7daa
    10402e8b7d80:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8b7d84:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    10402e8b7d89:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    10402e8b7d8d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    10402e8b7d91:	0f 86 49 00 00 00                               	jbe    0x10402e8b7de0
    10402e8b7d97:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b7d9b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b7da0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b7da5:	e9 5b 00 00 00                                  	jmp    0x10402e8b7e05
    10402e8b7daa:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b7dae:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b7db3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b7db8:	e9 44 00 00 00                                  	jmp    0x10402e8b7e01
    10402e8b7dbd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    10402e8b7dc7:	4c 8b 15 a1 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdfa1]        # 0x10402e8b5d6f
    10402e8b7dce:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b7dd3:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    10402e8b7dd7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b7ddb:	e8 d8 07 ee ff                                  	call   0x10402e7985b8
    10402e8b7de0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b7de4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b7de9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b7dee:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    10402e8b7df2:	0f 87 09 00 00 00                               	ja     0x10402e8b7e01
    10402e8b7df8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    10402e8b7dfc:	e9 04 00 00 00                                  	jmp    0x10402e8b7e05
    10402e8b7e01:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8b7e05:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b7e08:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b7e0c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    10402e8b7e16:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    10402e8b7e1a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    10402e8b7e1e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    10402e8b7e28:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    10402e8b7e2d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    10402e8b7e37:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    10402e8b7e41:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    10402e8b7e4b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    10402e8b7e50:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    10402e8b7e5a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    10402e8b7e64:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    10402e8b7e6e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    10402e8b7e73:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    10402e8b7e7d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    10402e8b7e81:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b7e85:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8b7e8a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    10402e8b7e94:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b7e98:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8b7e9b:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    10402e8b7ea1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e8b7ea4:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    10402e8b7eac:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    10402e8b7eb0:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    10402e8b7eb4:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    10402e8b7eb9:	e8 a2 e3 ed ff                                  	call   0x10402e796260
    10402e8b7ebe:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8b7ec2:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8b7ec7:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    10402e8b7ecd:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    10402e8b7ed3:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8b7ed7:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8b7edc:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8b7ee2:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8b7ee8:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b7eed:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    10402e8b7ef4:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    10402e8b7efb:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    10402e8b7f02:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    10402e8b7f08:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8b7f10:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8b7f18:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8b7f20:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    10402e8b7f28:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    10402e8b7f2f:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8b7f35:	e9 09 00 00 00                                  	jmp    0x10402e8b7f43
    10402e8b7f3a:	4c 8b f9                                        	mov    r15,rcx
    10402e8b7f3d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    10402e8b7f43:	f6 c3 04                                        	test   bl,0x4
    10402e8b7f46:	0f 85 0e 00 00 00                               	jne    0x10402e8b7f5a
    10402e8b7f4c:	8b d0                                           	mov    edx,eax
    10402e8b7f4e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    10402e8b7f55:	e9 70 0a 00 00                                  	jmp    0x10402e8b89ca
    10402e8b7f5a:	43 8b 94 04 c8 3c 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0x3cc8]
    10402e8b7f62:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    10402e8b7f6b:	0f 84 4d 00 00 00                               	je     0x10402e8b7fbe
    10402e8b7f71:	8b d0                                           	mov    edx,eax
    10402e8b7f73:	c1 ea 03                                        	shr    edx,0x3
    10402e8b7f76:	83 e2 03                                        	and    edx,0x3
    10402e8b7f79:	0b 95 20 fe ff ff                               	or     edx,DWORD PTR [rbp-0x1e0]
    10402e8b7f7f:	8b 9d 58 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a8]
    10402e8b7f85:	03 d3                                           	add    edx,ebx
    10402e8b7f87:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    10402e8b7f8c:	8b d8                                           	mov    ebx,eax
    10402e8b7f8e:	83 e3 07                                        	and    ebx,0x7
    10402e8b7f91:	44 8b d1                                        	mov    r10d,ecx
    10402e8b7f94:	8b cb                                           	mov    ecx,ebx
    10402e8b7f96:	49 8b df                                        	mov    rbx,r15
    10402e8b7f99:	45 8b fa                                        	mov    r15d,r10d
    10402e8b7f9c:	d3 e2                                           	shl    edx,cl
    10402e8b7f9e:	f6 c2 80                                        	test   dl,0x80
    10402e8b7fa1:	0f 85 11 00 00 00                               	jne    0x10402e8b7fb8
    10402e8b7fa7:	8b d0                                           	mov    edx,eax
    10402e8b7fa9:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    10402e8b7fb0:	4c 8b fb                                        	mov    r15,rbx
    10402e8b7fb3:	e9 12 0a 00 00                                  	jmp    0x10402e8b89ca
    10402e8b7fb8:	41 8b cf                                        	mov    ecx,r15d
    10402e8b7fbb:	4c 8b fb                                        	mov    r15,rbx
    10402e8b7fbe:	48 8b 95 60 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa0]
    10402e8b7fc5:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    10402e8b7fcc:	48 8d 0c 13                                     	lea    rcx,[rbx+rdx*1]
    10402e8b7fd0:	c4 e1 82 2a c1                                  	vcvtsi2ss xmm0,xmm15,rcx
    10402e8b7fd5:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    10402e8b7fd9:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    10402e8b7fdd:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    10402e8b7fe4:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    10402e8b7feb:	48 8d 14 0b                                     	lea    rdx,[rbx+rcx*1]
    10402e8b7fef:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    10402e8b7ff4:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    10402e8b7ff9:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    10402e8b7ffe:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    10402e8b8002:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    10402e8b8006:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    10402e8b800b:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    10402e8b800f:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    10402e8b8013:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    10402e8b8018:	0f 83 aa 09 00 00                               	jae    0x10402e8b89c8
    10402e8b801e:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    10402e8b8025:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    10402e8b802c:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    10402e8b8033:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    10402e8b8038:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    10402e8b803c:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    10402e8b8040:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    10402e8b8045:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    10402e8b804b:	0f 85 07 00 00 00                               	jne    0x10402e8b8058
    10402e8b8051:	8b d0                                           	mov    edx,eax
    10402e8b8053:	e9 c3 00 00 00                                  	jmp    0x10402e8b811b
    10402e8b8058:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    10402e8b8060:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    10402e8b8069:	75 e6                                           	jne    0x10402e8b8051
    10402e8b806b:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    10402e8b8070:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    10402e8b8074:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    10402e8b807b:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    10402e8b807e:	8b d0                                           	mov    edx,eax
    10402e8b8080:	8d 04 93                                        	lea    eax,[rbx+rdx*4]
    10402e8b8083:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    10402e8b8089:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    10402e8b808e:	2d 00 02 00 00                                  	sub    eax,0x200
    10402e8b8093:	83 f8 08                                        	cmp    eax,0x8
    10402e8b8096:	0f 83 0b 00 00 00                               	jae    0x10402e8b80a7
    10402e8b809c:	4c 8d 15 05 67 00 00                            	lea    r10,[rip+0x6705]        # 0x10402e8be7a8
    10402e8b80a3:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    10402e8b80a7:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b80ab:	0f 87 6a 00 00 00                               	ja     0x10402e8b811b
    10402e8b80b1:	e9 14 09 00 00                                  	jmp    0x10402e8b89ca
    10402e8b80b6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b80bb:	0f 83 5a 00 00 00                               	jae    0x10402e8b811b
    10402e8b80c1:	e9 04 09 00 00                                  	jmp    0x10402e8b89ca
    10402e8b80c6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b80cb:	0f 8a 4a 00 00 00                               	jp     0x10402e8b811b
    10402e8b80d1:	0f 84 f3 08 00 00                               	je     0x10402e8b89ca
    10402e8b80d7:	e9 3f 00 00 00                                  	jmp    0x10402e8b811b
    10402e8b80dc:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b80e1:	0f 87 34 00 00 00                               	ja     0x10402e8b811b
    10402e8b80e7:	e9 de 08 00 00                                  	jmp    0x10402e8b89ca
    10402e8b80ec:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b80f0:	0f 83 25 00 00 00                               	jae    0x10402e8b811b
    10402e8b80f6:	e9 cf 08 00 00                                  	jmp    0x10402e8b89ca
    10402e8b80fb:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b8100:	0f 8a c4 08 00 00                               	jp     0x10402e8b89ca
    10402e8b8106:	0f 84 0f 00 00 00                               	je     0x10402e8b811b
    10402e8b810c:	e9 b9 08 00 00                                  	jmp    0x10402e8b89ca
    10402e8b8111:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b8115:	0f 86 af 08 00 00                               	jbe    0x10402e8b89ca
    10402e8b811b:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    10402e8b8120:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    10402e8b8125:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    10402e8b812a:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    10402e8b8131:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    10402e8b8136:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    10402e8b813a:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    10402e8b8141:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    10402e8b8149:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    10402e8b814e:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    10402e8b8152:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    10402e8b8157:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    10402e8b815e:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    10402e8b8162:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8b8166:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    10402e8b816a:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8b816e:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    10402e8b8171:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    10402e8b817b:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    10402e8b8185:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    10402e8b818f:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    10402e8b8199:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    10402e8b819f:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    10402e8b81a6:	41 8b bc 1c 34 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x134]
    10402e8b81ae:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    10402e8b81b2:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    10402e8b81ba:	c5 fb 11 8d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm1
    10402e8b81c2:	c5 fb 11 a5 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm4
    10402e8b81ca:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    10402e8b81d2:	c5 fb 11 b5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm6
    10402e8b81da:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    10402e8b81e2:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    10402e8b81ea:	41 83 f8 01                                     	cmp    r8d,0x1
    10402e8b81ee:	0f 86 4d 04 00 00                               	jbe    0x10402e8b8641
    10402e8b81f4:	41 8b bc 1c 30 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x130]
    10402e8b81fc:	41 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x130],0x0
    10402e8b8205:	0f 85 0d 00 00 00                               	jne    0x10402e8b8218
    10402e8b820b:	8b c8                                           	mov    ecx,eax
    10402e8b820d:	4d 8b c4                                        	mov    r8,r12
    10402e8b8210:	48 8b fb                                        	mov    rdi,rbx
    10402e8b8213:	e9 e0 04 00 00                                  	jmp    0x10402e8b86f8
    10402e8b8218:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    10402e8b821e:	44 8d 40 70                                     	lea    r8d,[rax+0x70]
    10402e8b8222:	41 50                                           	push   r8
    10402e8b8224:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    10402e8b822b:	44 8b 85 58 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3a8]
    10402e8b8232:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8236:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b8239:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8b823c:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    10402e8b823f:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8b8242:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    10402e8b8246:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    10402e8b824b:	44 8b cf                                        	mov    r9d,edi
    10402e8b824e:	e8 c5 df ed ff                                  	call   0x10402e796218
    10402e8b8253:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b8257:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b825e:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    10402e8b8266:	45 85 db                                        	test   r11d,r11d
    10402e8b8269:	0f 85 61 01 00 00                               	jne    0x10402e8b83d0
    10402e8b826f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8272:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    10402e8b8277:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    10402e8b827d:	0f 84 43 00 00 00                               	je     0x10402e8b82c6
    10402e8b8283:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b8289:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b828d:	41 53                                           	push   r11
    10402e8b828f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8293:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    10402e8b8299:	33 d2                                           	xor    edx,edx
    10402e8b829b:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    10402e8b82a2:	e8 99 df ed ff                                  	call   0x10402e796240
    10402e8b82a7:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b82aa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b82ae:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b82b5:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b82bf:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b82c6:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    10402e8b82cb:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    10402e8b82d1:	0f 84 46 00 00 00                               	je     0x10402e8b831d
    10402e8b82d7:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b82dd:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b82e1:	41 53                                           	push   r11
    10402e8b82e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b82e7:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    10402e8b82ed:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8b82f2:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    10402e8b82f9:	e8 42 df ed ff                                  	call   0x10402e796240
    10402e8b82fe:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8301:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b8305:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b830c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b8316:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b831d:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    10402e8b8322:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    10402e8b8328:	0f 84 46 00 00 00                               	je     0x10402e8b8374
    10402e8b832e:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b8334:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b8338:	41 53                                           	push   r11
    10402e8b833a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b833e:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    10402e8b8344:	ba 02 00 00 00                                  	mov    edx,0x2
    10402e8b8349:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    10402e8b8350:	e8 eb de ed ff                                  	call   0x10402e796240
    10402e8b8355:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8358:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b835c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b8363:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b836d:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b8374:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    10402e8b8379:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    10402e8b837f:	0f 84 73 03 00 00                               	je     0x10402e8b86f8
    10402e8b8385:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b838b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b838f:	41 53                                           	push   r11
    10402e8b8391:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8395:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    10402e8b839b:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8b83a0:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    10402e8b83a7:	e8 94 de ed ff                                  	call   0x10402e796240
    10402e8b83ac:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b83af:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b83b3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b83ba:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b83c4:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b83cb:	e9 28 03 00 00                                  	jmp    0x10402e8b86f8
    10402e8b83d0:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b83d3:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    10402e8b83dd:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    10402e8b83e3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    10402e8b83e8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b83ec:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    10402e8b83f3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    10402e8b83f7:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8b83fb:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    10402e8b8405:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    10402e8b8409:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    10402e8b840f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    10402e8b8413:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    10402e8b8418:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    10402e8b8422:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    10402e8b8426:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    10402e8b842d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    10402e8b8431:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    10402e8b8435:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    10402e8b8439:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b843d:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    10402e8b8443:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    10402e8b8448:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    10402e8b844c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8b8450:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8b8455:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8b845a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    10402e8b845e:	0f 87 09 00 00 00                               	ja     0x10402e8b846d
    10402e8b8464:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8b8468:	e9 04 00 00 00                                  	jmp    0x10402e8b8471
    10402e8b846d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b8471:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b8476:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    10402e8b847a:	0f 87 09 00 00 00                               	ja     0x10402e8b8489
    10402e8b8480:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8b8484:	e9 05 00 00 00                                  	jmp    0x10402e8b848e
    10402e8b8489:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    10402e8b848e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8b8493:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b8497:	0f 84 a1 00 00 00                               	je     0x10402e8b853e
    10402e8b849d:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    10402e8b84a1:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    10402e8b84ab:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b84af:	0f 87 09 00 00 00                               	ja     0x10402e8b84be
    10402e8b84b5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b84b9:	e9 04 00 00 00                                  	jmp    0x10402e8b84c2
    10402e8b84be:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b84c2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b84c6:	0f 87 0a 00 00 00                               	ja     0x10402e8b84d6
    10402e8b84cc:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b84d1:	e9 05 00 00 00                                  	jmp    0x10402e8b84db
    10402e8b84d6:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b84db:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    10402e8b84df:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8b84e4:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8b84e9:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b84ed:	4c 8b 15 9d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea9d]        # 0x10402e8b6f91
    10402e8b84f4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8b84f9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8b84fe:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8b8502:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    10402e8b850c:	41 83 fb 03                                     	cmp    r11d,0x3
    10402e8b8510:	0f 85 04 00 00 00                               	jne    0x10402e8b851a
    10402e8b8516:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    10402e8b851a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    10402e8b851f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b8523:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8b8527:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    10402e8b8531:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    10402e8b8536:	4d 8b dc                                        	mov    r11,r12
    10402e8b8539:	e9 cc 00 00 00                                  	jmp    0x10402e8b860a
    10402e8b853e:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    10402e8b8545:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b8549:	0f 87 09 00 00 00                               	ja     0x10402e8b8558
    10402e8b854f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b8553:	e9 04 00 00 00                                  	jmp    0x10402e8b855c
    10402e8b8558:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b855c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b8560:	0f 87 0a 00 00 00                               	ja     0x10402e8b8570
    10402e8b8566:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b856b:	e9 05 00 00 00                                  	jmp    0x10402e8b8575
    10402e8b8570:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b8575:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    10402e8b857f:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    10402e8b8585:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    10402e8b858a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b858e:	0f 87 09 00 00 00                               	ja     0x10402e8b859d
    10402e8b8594:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    10402e8b8598:	e9 04 00 00 00                                  	jmp    0x10402e8b85a1
    10402e8b859d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    10402e8b85a1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b85a5:	0f 87 0a 00 00 00                               	ja     0x10402e8b85b5
    10402e8b85ab:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    10402e8b85b0:	e9 05 00 00 00                                  	jmp    0x10402e8b85ba
    10402e8b85b5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b85ba:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    10402e8b85c4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8b85c9:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8b85cd:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    10402e8b85d7:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8b85dc:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8b85e1:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8b85e5:	4c 8b 15 a5 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a5]        # 0x10402e8b6f91
    10402e8b85ec:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8b85f1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8b85f6:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8b85fa:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8b85fe:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8b8602:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8b8606:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    10402e8b860a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8b860f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b8613:	4c 8b 15 77 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe977]        # 0x10402e8b6f91
    10402e8b861a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8b861f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8b8624:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8b8628:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b8632:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    10402e8b863c:	e9 b7 00 00 00                                  	jmp    0x10402e8b86f8
    10402e8b8641:	4c 8b 85 10 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f0]
    10402e8b8648:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    10402e8b864f:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    10402e8b8653:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    10402e8b865a:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    10402e8b865e:	c4 81 6a 59 74 1c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+r11*1+0x50]
    10402e8b8665:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    10402e8b8669:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b866d:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    10402e8b8672:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b8676:	c4 01 7a 10 5c 04 54                            	vmovss xmm11,DWORD PTR [r12+r8*1+0x54]
    10402e8b867d:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    10402e8b8681:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    10402e8b8688:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    10402e8b868c:	c5 fb 11 85 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm0
    10402e8b8694:	c4 81 6a 59 44 1c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+r11*1+0x54]
    10402e8b869b:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    10402e8b869f:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    10402e8b86a3:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b86a7:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    10402e8b86ae:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    10402e8b86b4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b86b8:	8b c8                                           	mov    ecx,eax
    10402e8b86ba:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b86bd:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    10402e8b86c3:	c5 fb 10 8d b0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x150]
    10402e8b86cb:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8b86cf:	8b df                                           	mov    ebx,edi
    10402e8b86d1:	e8 5a de ed ff                                  	call   0x10402e796530
    10402e8b86d6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b86d9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b86dd:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    10402e8b86e7:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b86f1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b86f8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8b86fc:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    10402e8b8704:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    10402e8b870d:	0f 85 2a 00 00 00                               	jne    0x10402e8b873d
    10402e8b8713:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    10402e8b871d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    10402e8b8727:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    10402e8b8731:	49 8b fb                                        	mov    rdi,r11
    10402e8b8734:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    10402e8b8738:	e9 dd 01 00 00                                  	jmp    0x10402e8b891a
    10402e8b873d:	c5 fb 10 85 08 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1f8]
    10402e8b8745:	c5 fa 59 85 a0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x260]
    10402e8b874d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    10402e8b8755:	c5 ca 59 b5 50 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1b0]
    10402e8b875d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    10402e8b8765:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    10402e8b876d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    10402e8b8771:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b8775:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    10402e8b877d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b8781:	4c 8b 15 e7 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5e7]        # 0x10402e8b5d6f
    10402e8b8788:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b878d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8b8791:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8b8795:	0f 87 04 00 00 00                               	ja     0x10402e8b879f
    10402e8b879b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8b879f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    10402e8b87a7:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    10402e8b87ae:	0f 85 28 00 00 00                               	jne    0x10402e8b87dc
    10402e8b87b4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    10402e8b87be:	4c 8b 15 aa d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5aa]        # 0x10402e8b5d6f
    10402e8b87c5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8b87ca:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    10402e8b87ce:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b87d2:	e8 e1 fd ed ff                                  	call   0x10402e7985b8
    10402e8b87d7:	e9 94 00 00 00                                  	jmp    0x10402e8b8870
    10402e8b87dc:	41 83 fc 01                                     	cmp    r12d,0x1
    10402e8b87e0:	0f 84 67 00 00 00                               	je     0x10402e8b884d
    10402e8b87e6:	4d 8b d0                                        	mov    r10,r8
    10402e8b87e9:	4d 8b c3                                        	mov    r8,r11
    10402e8b87ec:	4d 8b da                                        	mov    r11,r10
    10402e8b87ef:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    10402e8b87f9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    10402e8b8803:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    10402e8b8808:	7a 06                                           	jp     0x10402e8b8810
    10402e8b880a:	0f 84 2a 00 00 00                               	je     0x10402e8b883a
    10402e8b8810:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8b8814:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    10402e8b8819:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    10402e8b881d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    10402e8b8821:	0f 86 49 00 00 00                               	jbe    0x10402e8b8870
    10402e8b8827:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b882b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b8830:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b8835:	e9 5b 00 00 00                                  	jmp    0x10402e8b8895
    10402e8b883a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b883e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b8843:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b8848:	e9 44 00 00 00                                  	jmp    0x10402e8b8891
    10402e8b884d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    10402e8b8857:	4c 8b 15 11 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd511]        # 0x10402e8b5d6f
    10402e8b885e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b8863:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    10402e8b8867:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b886b:	e8 48 fd ed ff                                  	call   0x10402e7985b8
    10402e8b8870:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b8874:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b8879:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b887e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    10402e8b8882:	0f 87 09 00 00 00                               	ja     0x10402e8b8891
    10402e8b8888:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    10402e8b888c:	e9 04 00 00 00                                  	jmp    0x10402e8b8895
    10402e8b8891:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8b8895:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8898:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b889c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    10402e8b88a6:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    10402e8b88aa:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    10402e8b88ae:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    10402e8b88b8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    10402e8b88bd:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    10402e8b88c7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    10402e8b88d1:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    10402e8b88db:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    10402e8b88e0:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    10402e8b88ea:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    10402e8b88f4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    10402e8b88fe:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    10402e8b8903:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    10402e8b890d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    10402e8b8911:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b8915:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8b891a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    10402e8b8924:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8928:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8b892b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8b8931:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    10402e8b8937:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    10402e8b893f:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    10402e8b8943:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    10402e8b8947:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    10402e8b894c:	e8 0f d9 ed ff                                  	call   0x10402e796260
    10402e8b8951:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8b8955:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8b895a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8b8960:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    10402e8b8967:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8b896b:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8b8970:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8b8976:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8b897c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b8981:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    10402e8b8988:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    10402e8b898f:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    10402e8b8996:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8b899e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8b89a6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8b89ae:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    10402e8b89b6:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    10402e8b89bd:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8b89c3:	e9 02 00 00 00                                  	jmp    0x10402e8b89ca
    10402e8b89c8:	8b d0                                           	mov    edx,eax
    10402e8b89ca:	f6 85 68 fd ff ff 08                            	test   BYTE PTR [rbp-0x298],0x8
    10402e8b89d1:	0f 85 0a 00 00 00                               	jne    0x10402e8b89e1
    10402e8b89d7:	c4 41 79 28 f1                                  	vmovapd xmm14,xmm9
    10402e8b89dc:	e9 49 57 00 00                                  	jmp    0x10402e8be12a
    10402e8b89e1:	43 8b 84 04 c8 3c 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0x3cc8]
    10402e8b89e9:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    10402e8b89f2:	0f 84 3c 00 00 00                               	je     0x10402e8b8a34
    10402e8b89f8:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    10402e8b89fe:	c1 e8 03                                        	shr    eax,0x3
    10402e8b8a01:	83 e0 03                                        	and    eax,0x3
    10402e8b8a04:	8b 9d 20 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1e0]
    10402e8b8a0a:	0b d8                                           	or     ebx,eax
    10402e8b8a0c:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    10402e8b8a12:	03 d8                                           	add    ebx,eax
    10402e8b8a14:	41 0f b6 1c 1c                                  	movzx  ebx,BYTE PTR [r12+rbx*1]
    10402e8b8a19:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    10402e8b8a1f:	83 e0 07                                        	and    eax,0x7
    10402e8b8a22:	4c 8b d1                                        	mov    r10,rcx
    10402e8b8a25:	8b c8                                           	mov    ecx,eax
    10402e8b8a27:	49 8b c2                                        	mov    rax,r10
    10402e8b8a2a:	d3 e3                                           	shl    ebx,cl
    10402e8b8a2c:	f6 c3 80                                        	test   bl,0x80
    10402e8b8a2f:	74 a6                                           	je     0x10402e8b89d7
    10402e8b8a31:	48 8b c8                                        	mov    rcx,rax
    10402e8b8a34:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    10402e8b8a3b:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    10402e8b8a42:	48 8d 14 03                                     	lea    rdx,[rbx+rax*1]
    10402e8b8a46:	c4 e1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,rdx
    10402e8b8a4b:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    10402e8b8a4f:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    10402e8b8a53:	48 8b d1                                        	mov    rdx,rcx
    10402e8b8a56:	48 8b 8d 50 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3b0]
    10402e8b8a5d:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    10402e8b8a61:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    10402e8b8a66:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    10402e8b8a6b:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    10402e8b8a70:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    10402e8b8a74:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    10402e8b8a78:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    10402e8b8a7d:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    10402e8b8a81:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    10402e8b8a85:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    10402e8b8a8a:	0f 83 47 ff ff ff                               	jae    0x10402e8b89d7
    10402e8b8a90:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    10402e8b8a97:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    10402e8b8a9e:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    10402e8b8aa5:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    10402e8b8aaa:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    10402e8b8aae:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    10402e8b8ab2:	43 8b 44 04 68                                  	mov    eax,DWORD PTR [r12+r8*1+0x68]
    10402e8b8ab7:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    10402e8b8abd:	0f 85 0b 00 00 00                               	jne    0x10402e8b8ace
    10402e8b8ac3:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    10402e8b8ac9:	e9 c7 00 00 00                                  	jmp    0x10402e8b8b95
    10402e8b8ace:	43 8b 84 04 a4 00 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0xa4]
    10402e8b8ad6:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    10402e8b8adf:	75 e2                                           	jne    0x10402e8b8ac3
    10402e8b8ae1:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    10402e8b8ae6:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    10402e8b8aea:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    10402e8b8af1:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    10402e8b8af4:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    10402e8b8afa:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    10402e8b8afd:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    10402e8b8b03:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    10402e8b8b08:	2d 00 02 00 00                                  	sub    eax,0x200
    10402e8b8b0d:	83 f8 08                                        	cmp    eax,0x8
    10402e8b8b10:	0f 83 0b 00 00 00                               	jae    0x10402e8b8b21
    10402e8b8b16:	4c 8d 15 4b 5c 00 00                            	lea    r10,[rip+0x5c4b]        # 0x10402e8be768
    10402e8b8b1d:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    10402e8b8b21:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b8b25:	0f 87 6a 00 00 00                               	ja     0x10402e8b8b95
    10402e8b8b2b:	e9 a7 fe ff ff                                  	jmp    0x10402e8b89d7
    10402e8b8b30:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b8b35:	0f 83 5a 00 00 00                               	jae    0x10402e8b8b95
    10402e8b8b3b:	e9 97 fe ff ff                                  	jmp    0x10402e8b89d7
    10402e8b8b40:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b8b45:	0f 8a 4a 00 00 00                               	jp     0x10402e8b8b95
    10402e8b8b4b:	0f 84 86 fe ff ff                               	je     0x10402e8b89d7
    10402e8b8b51:	e9 3f 00 00 00                                  	jmp    0x10402e8b8b95
    10402e8b8b56:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b8b5b:	0f 87 34 00 00 00                               	ja     0x10402e8b8b95
    10402e8b8b61:	e9 71 fe ff ff                                  	jmp    0x10402e8b89d7
    10402e8b8b66:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b8b6a:	0f 83 25 00 00 00                               	jae    0x10402e8b8b95
    10402e8b8b70:	e9 62 fe ff ff                                  	jmp    0x10402e8b89d7
    10402e8b8b75:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    10402e8b8b7a:	0f 8a 57 fe ff ff                               	jp     0x10402e8b89d7
    10402e8b8b80:	0f 84 0f 00 00 00                               	je     0x10402e8b8b95
    10402e8b8b86:	e9 4c fe ff ff                                  	jmp    0x10402e8b89d7
    10402e8b8b8b:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    10402e8b8b8f:	0f 86 42 fe ff ff                               	jbe    0x10402e8b89d7
    10402e8b8b95:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    10402e8b8b9a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    10402e8b8b9f:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    10402e8b8ba4:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    10402e8b8bab:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    10402e8b8bb0:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    10402e8b8bb4:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    10402e8b8bbb:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    10402e8b8bc3:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    10402e8b8bc8:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    10402e8b8bcc:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    10402e8b8bd1:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    10402e8b8bd8:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    10402e8b8bdc:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8b8be0:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    10402e8b8be4:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    10402e8b8be8:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    10402e8b8beb:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    10402e8b8bf5:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    10402e8b8bff:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    10402e8b8c09:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    10402e8b8c13:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    10402e8b8c19:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b8c20:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    10402e8b8c28:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    10402e8b8c2c:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    10402e8b8c34:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    10402e8b8c3c:	c5 fb 11 a5 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm4
    10402e8b8c44:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    10402e8b8c4c:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    10402e8b8c54:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    10402e8b8c5c:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    10402e8b8c64:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b8c68:	0f 86 4b 04 00 00                               	jbe    0x10402e8b90b9
    10402e8b8c6e:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    10402e8b8c76:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    10402e8b8c7f:	0f 85 0a 00 00 00                               	jne    0x10402e8b8c8f
    10402e8b8c85:	8b c8                                           	mov    ecx,eax
    10402e8b8c87:	4d 8b c4                                        	mov    r8,r12
    10402e8b8c8a:	e9 e0 04 00 00                                  	jmp    0x10402e8b916f
    10402e8b8c8f:	44 8d 80 90 00 00 00                            	lea    r8d,[rax+0x90]
    10402e8b8c96:	44 8d 58 70                                     	lea    r11d,[rax+0x70]
    10402e8b8c9a:	41 53                                           	push   r11
    10402e8b8c9c:	4c 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r8
    10402e8b8ca3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8ca7:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b8caa:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8b8cad:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    10402e8b8cb0:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8b8cb3:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    10402e8b8cb7:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    10402e8b8cbc:	45 8b c8                                        	mov    r9d,r8d
    10402e8b8cbf:	e8 54 d5 ed ff                                  	call   0x10402e796218
    10402e8b8cc4:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b8cc8:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b8ccf:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    10402e8b8cd7:	45 85 db                                        	test   r11d,r11d
    10402e8b8cda:	0f 85 62 01 00 00                               	jne    0x10402e8b8e42
    10402e8b8ce0:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8ce3:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    10402e8b8ce8:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    10402e8b8cee:	0f 84 43 00 00 00                               	je     0x10402e8b8d37
    10402e8b8cf4:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b8cfa:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b8cfe:	41 53                                           	push   r11
    10402e8b8d00:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8d04:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    10402e8b8d0a:	33 d2                                           	xor    edx,edx
    10402e8b8d0c:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    10402e8b8d13:	e8 28 d5 ed ff                                  	call   0x10402e796240
    10402e8b8d18:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8d1b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b8d1f:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b8d26:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b8d30:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b8d37:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    10402e8b8d3c:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    10402e8b8d42:	0f 84 46 00 00 00                               	je     0x10402e8b8d8e
    10402e8b8d48:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b8d4e:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b8d52:	41 53                                           	push   r11
    10402e8b8d54:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8d58:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    10402e8b8d5e:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8b8d63:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    10402e8b8d6a:	e8 d1 d4 ed ff                                  	call   0x10402e796240
    10402e8b8d6f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8d72:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b8d76:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b8d7d:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b8d87:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b8d8e:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    10402e8b8d93:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    10402e8b8d99:	0f 84 46 00 00 00                               	je     0x10402e8b8de5
    10402e8b8d9f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b8da5:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b8da9:	41 53                                           	push   r11
    10402e8b8dab:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8daf:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    10402e8b8db5:	ba 02 00 00 00                                  	mov    edx,0x2
    10402e8b8dba:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    10402e8b8dc1:	e8 7a d4 ed ff                                  	call   0x10402e796240
    10402e8b8dc6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8dc9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b8dcd:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    10402e8b8dd4:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    10402e8b8dde:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b8de5:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    10402e8b8dea:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    10402e8b8df0:	0f 84 79 03 00 00                               	je     0x10402e8b916f
    10402e8b8df6:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    10402e8b8dfc:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    10402e8b8e00:	41 53                                           	push   r11
    10402e8b8e02:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b8e06:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    10402e8b8e0c:	ba 03 00 00 00                                  	mov    edx,0x3
    10402e8b8e11:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    10402e8b8e18:	e8 23 d4 ed ff                                  	call   0x10402e796240
    10402e8b8e1d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8e20:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    10402e8b8e24:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    10402e8b8e2a:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    10402e8b8e33:	4c 8b c7                                        	mov    r8,rdi
    10402e8b8e36:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b8e3d:	e9 2d 03 00 00                                  	jmp    0x10402e8b916f
    10402e8b8e42:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    10402e8b8e45:	4d 8b e0                                        	mov    r12,r8
    10402e8b8e48:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    10402e8b8e52:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    10402e8b8e58:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    10402e8b8e5d:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b8e61:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    10402e8b8e68:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    10402e8b8e6c:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8b8e70:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    10402e8b8e7a:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    10402e8b8e7e:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    10402e8b8e84:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    10402e8b8e88:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    10402e8b8e8d:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    10402e8b8e97:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    10402e8b8e9b:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    10402e8b8ea2:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    10402e8b8ea6:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    10402e8b8eaa:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    10402e8b8eae:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b8eb2:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    10402e8b8eb8:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    10402e8b8ebd:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    10402e8b8ec1:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    10402e8b8ec5:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    10402e8b8eca:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    10402e8b8ecf:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    10402e8b8ed3:	0f 87 09 00 00 00                               	ja     0x10402e8b8ee2
    10402e8b8ed9:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8b8edd:	e9 04 00 00 00                                  	jmp    0x10402e8b8ee6
    10402e8b8ee2:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b8ee6:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b8eeb:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    10402e8b8eef:	0f 87 09 00 00 00                               	ja     0x10402e8b8efe
    10402e8b8ef5:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8b8ef9:	e9 05 00 00 00                                  	jmp    0x10402e8b8f03
    10402e8b8efe:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    10402e8b8f03:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8b8f08:	41 83 fb 01                                     	cmp    r11d,0x1
    10402e8b8f0c:	0f 84 a1 00 00 00                               	je     0x10402e8b8fb3
    10402e8b8f12:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    10402e8b8f16:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    10402e8b8f20:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b8f24:	0f 87 09 00 00 00                               	ja     0x10402e8b8f33
    10402e8b8f2a:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b8f2e:	e9 04 00 00 00                                  	jmp    0x10402e8b8f37
    10402e8b8f33:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b8f37:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b8f3b:	0f 87 0a 00 00 00                               	ja     0x10402e8b8f4b
    10402e8b8f41:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b8f46:	e9 05 00 00 00                                  	jmp    0x10402e8b8f50
    10402e8b8f4b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b8f50:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    10402e8b8f54:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8b8f59:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8b8f5e:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b8f62:	4c 8b 15 28 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe028]        # 0x10402e8b6f91
    10402e8b8f69:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8b8f6e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8b8f73:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8b8f77:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    10402e8b8f81:	41 83 fb 03                                     	cmp    r11d,0x3
    10402e8b8f85:	0f 85 04 00 00 00                               	jne    0x10402e8b8f8f
    10402e8b8f8b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    10402e8b8f8f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    10402e8b8f94:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b8f98:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    10402e8b8f9c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    10402e8b8fa6:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    10402e8b8fab:	4d 8b df                                        	mov    r11,r15
    10402e8b8fae:	e9 cc 00 00 00                                  	jmp    0x10402e8b907f
    10402e8b8fb3:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    10402e8b8fba:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b8fbe:	0f 87 09 00 00 00                               	ja     0x10402e8b8fcd
    10402e8b8fc4:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    10402e8b8fc8:	e9 04 00 00 00                                  	jmp    0x10402e8b8fd1
    10402e8b8fcd:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    10402e8b8fd1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b8fd5:	0f 87 0a 00 00 00                               	ja     0x10402e8b8fe5
    10402e8b8fdb:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    10402e8b8fe0:	e9 05 00 00 00                                  	jmp    0x10402e8b8fea
    10402e8b8fe5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b8fea:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    10402e8b8ff4:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    10402e8b8ffa:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    10402e8b8fff:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    10402e8b9003:	0f 87 09 00 00 00                               	ja     0x10402e8b9012
    10402e8b9009:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    10402e8b900d:	e9 04 00 00 00                                  	jmp    0x10402e8b9016
    10402e8b9012:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    10402e8b9016:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    10402e8b901a:	0f 87 0a 00 00 00                               	ja     0x10402e8b902a
    10402e8b9020:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    10402e8b9025:	e9 05 00 00 00                                  	jmp    0x10402e8b902f
    10402e8b902a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    10402e8b902f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    10402e8b9039:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8b903e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8b9042:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    10402e8b904c:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8b9051:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8b9056:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8b905a:	4c 8b 15 30 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf30]        # 0x10402e8b6f91
    10402e8b9061:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8b9066:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8b906b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8b906f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8b9073:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    10402e8b9077:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    10402e8b907b:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    10402e8b907f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8b9084:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    10402e8b9088:	4c 8b 15 02 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf02]        # 0x10402e8b6f91
    10402e8b908f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8b9094:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8b9099:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    10402e8b909d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    10402e8b90a7:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    10402e8b90b1:	4d 8b c4                                        	mov    r8,r12
    10402e8b90b4:	e9 b6 00 00 00                                  	jmp    0x10402e8b916f
    10402e8b90b9:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    10402e8b90c0:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    10402e8b90c7:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    10402e8b90cb:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    10402e8b90d2:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    10402e8b90d6:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    10402e8b90dd:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    10402e8b90e4:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    10402e8b90e8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b90ec:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    10402e8b90f1:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b90f5:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    10402e8b90fc:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    10402e8b9100:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    10402e8b9107:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    10402e8b910b:	c5 fb 11 85 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm0
    10402e8b9113:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    10402e8b911a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    10402e8b911e:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    10402e8b9122:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b9126:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    10402e8b912c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b9130:	8b c8                                           	mov    ecx,eax
    10402e8b9132:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b9135:	41 8b d0                                        	mov    edx,r8d
    10402e8b9138:	c5 fb 10 8d a0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x260]
    10402e8b9140:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    10402e8b9144:	8b df                                           	mov    ebx,edi
    10402e8b9146:	e8 e5 d3 ed ff                                  	call   0x10402e796530
    10402e8b914b:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    10402e8b914e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b9152:	c4 c1 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x90]
    10402e8b915c:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    10402e8b9166:	8b cb                                           	mov    ecx,ebx
    10402e8b9168:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b916f:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8b9173:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    10402e8b917b:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    10402e8b9184:	0f 85 2c 00 00 00                               	jne    0x10402e8b91b6
    10402e8b918a:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    10402e8b9194:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    10402e8b919e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    10402e8b91a8:	49 8b fb                                        	mov    rdi,r11
    10402e8b91ab:	8b d9                                           	mov    ebx,ecx
    10402e8b91ad:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    10402e8b91b1:	e9 dd 01 00 00                                  	jmp    0x10402e8b9393
    10402e8b91b6:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    10402e8b91be:	c5 fa 59 85 30 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1d0]
    10402e8b91c6:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    10402e8b91ce:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    10402e8b91d6:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    10402e8b91de:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    10402e8b91e6:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    10402e8b91ea:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    10402e8b91ee:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    10402e8b91f6:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    10402e8b91fa:	4c 8b 15 6e cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb6e]        # 0x10402e8b5d6f
    10402e8b9201:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b9206:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    10402e8b920a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    10402e8b920e:	0f 87 04 00 00 00                               	ja     0x10402e8b9218
    10402e8b9214:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8b9218:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    10402e8b9220:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    10402e8b9227:	0f 85 28 00 00 00                               	jne    0x10402e8b9255
    10402e8b922d:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    10402e8b9237:	4c 8b 15 31 cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb31]        # 0x10402e8b5d6f
    10402e8b923e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8b9243:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    10402e8b9247:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b924b:	e8 68 f3 ed ff                                  	call   0x10402e7985b8
    10402e8b9250:	e9 94 00 00 00                                  	jmp    0x10402e8b92e9
    10402e8b9255:	41 83 fc 01                                     	cmp    r12d,0x1
    10402e8b9259:	0f 84 67 00 00 00                               	je     0x10402e8b92c6
    10402e8b925f:	4d 8b d0                                        	mov    r10,r8
    10402e8b9262:	4d 8b c3                                        	mov    r8,r11
    10402e8b9265:	4d 8b da                                        	mov    r11,r10
    10402e8b9268:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    10402e8b9272:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    10402e8b927c:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    10402e8b9281:	7a 06                                           	jp     0x10402e8b9289
    10402e8b9283:	0f 84 2a 00 00 00                               	je     0x10402e8b92b3
    10402e8b9289:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    10402e8b928d:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    10402e8b9292:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    10402e8b9296:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    10402e8b929a:	0f 86 49 00 00 00                               	jbe    0x10402e8b92e9
    10402e8b92a0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b92a4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b92a9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b92ae:	e9 5b 00 00 00                                  	jmp    0x10402e8b930e
    10402e8b92b3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b92b7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b92bc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b92c1:	e9 44 00 00 00                                  	jmp    0x10402e8b930a
    10402e8b92c6:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    10402e8b92d0:	4c 8b 15 98 ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca98]        # 0x10402e8b5d6f
    10402e8b92d7:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    10402e8b92dc:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    10402e8b92e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b92e4:	e8 cf f2 ed ff                                  	call   0x10402e7985b8
    10402e8b92e9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    10402e8b92ed:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    10402e8b92f2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    10402e8b92f7:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    10402e8b92fb:	0f 87 09 00 00 00                               	ja     0x10402e8b930a
    10402e8b9301:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    10402e8b9305:	e9 04 00 00 00                                  	jmp    0x10402e8b930e
    10402e8b930a:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    10402e8b930e:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    10402e8b9311:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8b9315:	c4 c1 42 59 b4 18 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rbx*1+0x190]
    10402e8b931f:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    10402e8b9323:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    10402e8b9327:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    10402e8b9331:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    10402e8b9336:	c4 c1 7a 11 b4 18 90 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x190],xmm6
    10402e8b9340:	c4 41 42 59 8c 18 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rbx*1+0x194]
    10402e8b934a:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    10402e8b9354:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    10402e8b9359:	c4 41 7a 11 8c 18 94 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x194],xmm9
    10402e8b9363:	c4 c1 42 59 bc 18 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rbx*1+0x198]
    10402e8b936d:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    10402e8b9377:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    10402e8b937c:	c4 c1 7a 11 bc 18 98 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x198],xmm7
    10402e8b9386:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    10402e8b938a:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b938e:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8b9393:	c4 c1 7a 10 ac 18 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rbx*1+0x19c]
    10402e8b939d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8b93a1:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8b93a4:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    10402e8b93aa:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    10402e8b93b0:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    10402e8b93b8:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    10402e8b93bc:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    10402e8b93c0:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    10402e8b93c5:	e8 96 ce ed ff                                  	call   0x10402e796260
    10402e8b93ca:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8b93ce:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8b93d3:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8b93d7:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8b93dc:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8b93e2:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8b93e8:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8b93ed:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8b93f5:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8b93fd:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8b9405:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8b940d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8b9413:	e9 12 4d 00 00                                  	jmp    0x10402e8be12a
    10402e8b9418:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    10402e8b941c:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    10402e8b9423:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8b9427:	4e 89 7c 02 70                                  	mov    QWORD PTR [rdx+r8*1+0x70],r15
    10402e8b942c:	4a 8d 0c 3f                                     	lea    rcx,[rdi+r15*1]
    10402e8b9430:	4a 89 8c 02 80 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x80],rcx
    10402e8b9438:	49 8b df                                        	mov    rbx,r15
    10402e8b943b:	48 2b 9d d0 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x330]
    10402e8b9442:	4a 89 5c 02 78                                  	mov    QWORD PTR [rdx+r8*1+0x78],rbx
    10402e8b9447:	4c 8d 1c 1f                                     	lea    r11,[rdi+rbx*1]
    10402e8b944b:	4e 89 9c 02 88 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x88],r11
    10402e8b9453:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    10402e8b945a:	4a 89 74 02 50                                  	mov    QWORD PTR [rdx+r8*1+0x50],rsi
    10402e8b945f:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    10402e8b9466:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    10402e8b946a:	4e 89 64 02 60                                  	mov    QWORD PTR [rdx+r8*1+0x60],r12
    10402e8b946f:	48 8b c6                                        	mov    rax,rsi
    10402e8b9472:	48 2b 85 f0 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x310]
    10402e8b9479:	4a 89 44 02 58                                  	mov    QWORD PTR [rdx+r8*1+0x58],rax
    10402e8b947e:	4c 8d 0c 07                                     	lea    r9,[rdi+rax*1]
    10402e8b9482:	4e 89 4c 02 68                                  	mov    QWORD PTR [rdx+r8*1+0x68],r9
    10402e8b9487:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    10402e8b948b:	c4 a1 7a 7f 44 02 40                            	vmovdqu XMMWORD PTR [rdx+r8*1+0x40],xmm0
    10402e8b9492:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    10402e8b9499:	48 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rbx
    10402e8b94a0:	4c 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r11
    10402e8b94a7:	4c 89 a5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r12
    10402e8b94ae:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    10402e8b94b5:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    10402e8b94bc:	33 ff                                           	xor    edi,edi
    10402e8b94be:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    10402e8b94c2:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8b94c6:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    10402e8b94ca:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    10402e8b94d0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    10402e8b94d5:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    10402e8b94dc:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    10402e8b94e3:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    10402e8b94ea:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    10402e8b94ef:	e9 10 00 00 00                                  	jmp    0x10402e8b9504
    10402e8b94f4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b94fd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    10402e8b9500:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    10402e8b9504:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8b9509:	0f 85 63 4f 00 00                               	jne    0x10402e8be472
    10402e8b950f:	8b cf                                           	mov    ecx,edi
    10402e8b9511:	41 bf 01 00 00 00                               	mov    r15d,0x1
    10402e8b9517:	41 d3 e7                                        	shl    r15d,cl
    10402e8b951a:	44 85 bd 68 fd ff ff                            	test   DWORD PTR [rbp-0x298],r15d
    10402e8b9521:	0f 84 69 01 00 00                               	je     0x10402e8b9690
    10402e8b9527:	41 8d 4c b8 40                                  	lea    ecx,[r8+rdi*4+0x40]
    10402e8b952c:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    10402e8b9533:	45 8d 7c f8 70                                  	lea    r15d,[r8+rdi*8+0x70]
    10402e8b9538:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    10402e8b953c:	c4 41 82 2a cf                                  	vcvtsi2ss xmm9,xmm15,r15
    10402e8b9541:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    10402e8b9546:	c4 41 42 5c d1                                  	vsubss xmm10,xmm7,xmm9
    10402e8b954b:	45 8d 7c f8 50                                  	lea    r15d,[r8+rdi*8+0x50]
    10402e8b9550:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    10402e8b9554:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    10402e8b9559:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    10402e8b955e:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    10402e8b9563:	c4 21 2a 59 54 0a 18                            	vmulss xmm10,xmm10,DWORD PTR [rdx+r9*1+0x18]
    10402e8b956a:	c4 21 32 59 4c 22 18                            	vmulss xmm9,xmm9,DWORD PTR [rdx+r12*1+0x18]
    10402e8b9571:	c5 22 59 5c 02 18                               	vmulss xmm11,xmm11,DWORD PTR [rdx+rax*1+0x18]
    10402e8b9577:	c4 41 32 58 cb                                  	vaddss xmm9,xmm9,xmm11
    10402e8b957c:	c4 41 2a 58 c9                                  	vaddss xmm9,xmm10,xmm9
    10402e8b9581:	c4 41 72 58 c9                                  	vaddss xmm9,xmm1,xmm9
    10402e8b9586:	c5 7a 11 0c 0a                                  	vmovss DWORD PTR [rdx+rcx*1],xmm9
    10402e8b958b:	44 8b 7c 32 68                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0x68]
    10402e8b9590:	83 7c 32 68 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x68],0x0
    10402e8b9595:	0f 84 f5 00 00 00                               	je     0x10402e8b9690
    10402e8b959b:	44 8b bc 32 a4 00 00 00                         	mov    r15d,DWORD PTR [rdx+rsi*1+0xa4]
    10402e8b95a3:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    10402e8b95ab:	0f 85 df 00 00 00                               	jne    0x10402e8b9690
    10402e8b95b1:	44 8b 7c 32 0c                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0xc]
    10402e8b95b6:	8b 0c 32                                        	mov    ecx,DWORD PTR [rdx+rsi*1]
    10402e8b95b9:	44 8b c7                                        	mov    r8d,edi
    10402e8b95bc:	41 d1 e8                                        	shr    r8d,1
    10402e8b95bf:	45 03 c3                                        	add    r8d,r11d
    10402e8b95c2:	44 0f af c1                                     	imul   r8d,ecx
    10402e8b95c6:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    10402e8b95ca:	45 8d 04 98                                     	lea    r8d,[r8+rbx*4]
    10402e8b95ce:	44 8b ff                                        	mov    r15d,edi
    10402e8b95d1:	41 83 e7 01                                     	and    r15d,0x1
    10402e8b95d5:	47 8d 04 b8                                     	lea    r8d,[r8+r15*4]
    10402e8b95d9:	c4 21 7a 10 14 02                               	vmovss xmm10,DWORD PTR [rdx+r8*1]
    10402e8b95df:	44 8b 44 32 6c                                  	mov    r8d,DWORD PTR [rdx+rsi*1+0x6c]
    10402e8b95e4:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    10402e8b95eb:	41 83 f8 08                                     	cmp    r8d,0x8
    10402e8b95ef:	0f 83 0b 00 00 00                               	jae    0x10402e8b9600
    10402e8b95f5:	4c 8d 15 2c 51 00 00                            	lea    r10,[rip+0x512c]        # 0x10402e8be728
    10402e8b95fc:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    10402e8b9600:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    10402e8b9605:	0f 87 85 00 00 00                               	ja     0x10402e8b9690
    10402e8b960b:	e9 67 00 00 00                                  	jmp    0x10402e8b9677
    10402e8b9610:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    10402e8b9615:	0f 83 75 00 00 00                               	jae    0x10402e8b9690
    10402e8b961b:	e9 57 00 00 00                                  	jmp    0x10402e8b9677
    10402e8b9620:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    10402e8b9625:	0f 8a 65 00 00 00                               	jp     0x10402e8b9690
    10402e8b962b:	0f 84 46 00 00 00                               	je     0x10402e8b9677
    10402e8b9631:	e9 5a 00 00 00                                  	jmp    0x10402e8b9690
    10402e8b9636:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    10402e8b963b:	0f 87 4f 00 00 00                               	ja     0x10402e8b9690
    10402e8b9641:	e9 31 00 00 00                                  	jmp    0x10402e8b9677
    10402e8b9646:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    10402e8b964b:	0f 83 3f 00 00 00                               	jae    0x10402e8b9690
    10402e8b9651:	e9 21 00 00 00                                  	jmp    0x10402e8b9677
    10402e8b9656:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    10402e8b965b:	0f 8a 16 00 00 00                               	jp     0x10402e8b9677
    10402e8b9661:	0f 84 29 00 00 00                               	je     0x10402e8b9690
    10402e8b9667:	e9 0b 00 00 00                                  	jmp    0x10402e8b9677
    10402e8b966c:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    10402e8b9671:	0f 87 19 00 00 00                               	ja     0x10402e8b9690
    10402e8b9677:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    10402e8b967e:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    10402e8b9682:	44 23 bd 68 fd ff ff                            	and    r15d,DWORD PTR [rbp-0x298]
    10402e8b9689:	4c 89 bd 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r15
    10402e8b9690:	83 c7 01                                        	add    edi,0x1
    10402e8b9693:	83 ff 04                                        	cmp    edi,0x4
    10402e8b9696:	0f 85 64 fe ff ff                               	jne    0x10402e8b9500
    10402e8b969c:	8b bd 68 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x298]
    10402e8b96a2:	85 ff                                           	test   edi,edi
    10402e8b96a4:	0f 85 1d 00 00 00                               	jne    0x10402e8b96c7
    10402e8b96aa:	4c 8b c6                                        	mov    r8,rsi
    10402e8b96ad:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    10402e8b96b1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8b96b5:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    10402e8b96b9:	4c 8b e2                                        	mov    r12,rdx
    10402e8b96bc:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8b96c2:	e9 63 4a 00 00                                  	jmp    0x10402e8be12a
    10402e8b96c7:	c4 61 82 2a 8d 60 ff ff ff                      	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0xa0]
    10402e8b96d0:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    10402e8b96d5:	c4 61 82 2a 95 b0 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x150]
    10402e8b96de:	c4 43 31 21 ca 10                               	vinsertps xmm9,xmm9,xmm10,0x10
    10402e8b96e4:	c4 61 82 2a 95 b8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x148]
    10402e8b96ed:	c4 43 31 21 ca 20                               	vinsertps xmm9,xmm9,xmm10,0x20
    10402e8b96f3:	c4 61 82 2a 95 c8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x138]
    10402e8b96fc:	c4 43 31 21 ca 30                               	vinsertps xmm9,xmm9,xmm10,0x30
    10402e8b9702:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    10402e8b970a:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    10402e8b970f:	4c 8d 42 1c                                     	lea    r8,[rdx+0x1c]
    10402e8b9713:	c4 02 79 18 1c 20                               	vbroadcastss xmm11,DWORD PTR [r8+r12*1]
    10402e8b9719:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    10402e8b971e:	c4 e1 82 2a 95 50 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xb0]
    10402e8b9727:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    10402e8b972c:	c4 e1 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0x100]
    10402e8b9735:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    10402e8b973b:	c4 e1 82 2a 9d 18 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe8]
    10402e8b9744:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    10402e8b974a:	c4 e1 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe0]
    10402e8b9753:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    10402e8b9759:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    10402e8b975d:	c4 c2 79 18 1c 00                               	vbroadcastss xmm3,DWORD PTR [r8+rax*1]
    10402e8b9763:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    10402e8b9767:	c5 a0 58 e3                                     	vaddps xmm4,xmm11,xmm3
    10402e8b976b:	4c 8b 15 1f d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd81f]        # 0x10402e8b6f91
    10402e8b9772:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8b9777:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8b977b:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    10402e8b9780:	c5 30 5c ca                                     	vsubps xmm9,xmm9,xmm2
    10402e8b9784:	c4 82 79 18 14 08                               	vbroadcastss xmm2,DWORD PTR [r8+r9*1]
    10402e8b978a:	c5 30 59 ca                                     	vmulps xmm9,xmm9,xmm2
    10402e8b978e:	c4 c1 58 58 d1                                  	vaddps xmm2,xmm4,xmm9
    10402e8b9793:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    10402e8b9797:	c5 e8 c2 f4 02                                  	vcmpleps xmm6,xmm2,xmm4
    10402e8b979c:	c5 78 50 c6                                     	vmovmskps r8d,xmm6
    10402e8b97a0:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    10402e8b97a4:	44 23 c7                                        	and    r8d,edi
    10402e8b97a7:	0f 85 16 00 00 00                               	jne    0x10402e8b97c3
    10402e8b97ad:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    10402e8b97b4:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    10402e8b97b7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b97be:	e9 7c 2a 00 00                                  	jmp    0x10402e8bc23f
    10402e8b97c3:	c5 d0 5e f2                                     	vdivps xmm6,xmm5,xmm2
    10402e8b97c7:	48 8d 7a 2c                                     	lea    rdi,[rdx+0x2c]
    10402e8b97cb:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    10402e8b97d1:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    10402e8b97d5:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    10402e8b97db:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    10402e8b97df:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    10402e8b97e3:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    10402e8b97e9:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    10402e8b97ed:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    10402e8b97f1:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    10402e8b97f5:	48 8d 7a 28                                     	lea    rdi,[rdx+0x28]
    10402e8b97f9:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    10402e8b97ff:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    10402e8b9803:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    10402e8b980b:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    10402e8b9811:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    10402e8b9815:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    10402e8b9819:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    10402e8b981f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    10402e8b9823:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    10402e8b9827:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    10402e8b982b:	48 8d 7a 24                                     	lea    rdi,[rdx+0x24]
    10402e8b982f:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    10402e8b9835:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    10402e8b9839:	c5 f8 11 bd a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm7
    10402e8b9841:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    10402e8b9847:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    10402e8b984b:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    10402e8b984f:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    10402e8b9855:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    10402e8b9859:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    10402e8b985d:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    10402e8b9861:	48 8d 7a 20                                     	lea    rdi,[rdx+0x20]
    10402e8b9865:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    10402e8b986b:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    10402e8b986f:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    10402e8b9877:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    10402e8b987d:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    10402e8b9881:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    10402e8b9885:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    10402e8b988b:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    10402e8b988f:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    10402e8b9893:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    10402e8b9897:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b989e:	44 8b bc 3a 34 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x134]
    10402e8b98a6:	41 83 ef 01                                     	sub    r15d,0x1
    10402e8b98aa:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    10402e8b98b1:	41 83 ff 01                                     	cmp    r15d,0x1
    10402e8b98b5:	0f 86 5a 17 00 00                               	jbe    0x10402e8bb015
    10402e8b98bb:	44 8b bc 3a 38 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x138]
    10402e8b98c3:	83 bc 3a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0x138],0x0
    10402e8b98cb:	0f 85 24 00 00 00                               	jne    0x10402e8b98f5
    10402e8b98d1:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    10402e8b98d9:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    10402e8b98dd:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    10402e8b98e5:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    10402e8b98ed:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    10402e8b98f0:	e9 d7 28 00 00                                  	jmp    0x10402e8bc1cc
    10402e8b98f5:	4d 8b f8                                        	mov    r15,r8
    10402e8b98f8:	41 83 e7 08                                     	and    r15d,0x8
    10402e8b98fc:	49 8b c8                                        	mov    rcx,r8
    10402e8b98ff:	83 e1 04                                        	and    ecx,0x4
    10402e8b9902:	4c 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r15
    10402e8b9909:	4d 8b f8                                        	mov    r15,r8
    10402e8b990c:	41 83 e7 02                                     	and    r15d,0x2
    10402e8b9910:	41 83 e0 01                                     	and    r8d,0x1
    10402e8b9914:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    10402e8b991c:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    10402e8b9924:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    10402e8b992c:	c5 78 11 8d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm9
    10402e8b9934:	c5 f8 11 9d 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm3
    10402e8b993c:	c5 78 11 9d f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm11
    10402e8b9944:	c5 f8 11 ad d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm5
    10402e8b994c:	c5 f8 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm4
    10402e8b9954:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    10402e8b995b:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    10402e8b9962:	4c 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r8
    10402e8b9969:	45 33 c0                                        	xor    r8d,r8d
    10402e8b996c:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8b9970:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    10402e8b9978:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    10402e8b9980:	e9 6a 00 00 00                                  	jmp    0x10402e8b99ef
    10402e8b9985:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b998e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b9997:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b99a0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b99a9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b99b2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8b99bb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    10402e8b99c0:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    10402e8b99c8:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    10402e8b99d0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8b99d7:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    10402e8b99df:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    10402e8b99e7:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    10402e8b99ef:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8b99f2:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    10402e8b99f8:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    10402e8b99ff:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    10402e8b9a06:	4c 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r8
    10402e8b9a0d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8b9a12:	0f 85 e4 4a 00 00                               	jne    0x10402e8be4fc
    10402e8b9a18:	44 8b 8c 3a 3c 01 00 00                         	mov    r9d,DWORD PTR [rdx+rdi*1+0x13c]
    10402e8b9a20:	41 8b c8                                        	mov    ecx,r8d
    10402e8b9a23:	41 d3 e9                                        	shr    r9d,cl
    10402e8b9a26:	41 f6 c1 01                                     	test   r9b,0x1
    10402e8b9a2a:	0f 85 2d 00 00 00                               	jne    0x10402e8b9a5d
    10402e8b9a30:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    10402e8b9a37:	45 8b c8                                        	mov    r9d,r8d
    10402e8b9a3a:	41 c1 e1 06                                     	shl    r9d,0x6
    10402e8b9a3e:	41 03 c9                                        	add    ecx,r9d
    10402e8b9a41:	c5 fa 7f 6c 0a 30                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x30],xmm5
    10402e8b9a47:	c5 fa 7f 6c 0a 20                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x20],xmm5
    10402e8b9a4d:	c5 fa 7f 6c 0a 10                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x10],xmm5
    10402e8b9a53:	c5 fa 7f 2c 0a                                  	vmovdqu XMMWORD PTR [rdx+rcx*1],xmm5
    10402e8b9a58:	e9 11 12 00 00                                  	jmp    0x10402e8bac6e
    10402e8b9a5d:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    10402e8b9a64:	45 8b c8                                        	mov    r9d,r8d
    10402e8b9a67:	41 c1 e1 06                                     	shl    r9d,0x6
    10402e8b9a6b:	44 03 c9                                        	add    r9d,ecx
    10402e8b9a6e:	41 6b c8 4c                                     	imul   ecx,r8d,0x4c
    10402e8b9a72:	03 c8                                           	add    ecx,eax
    10402e8b9a74:	8b 7c 0a 38                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x38]
    10402e8b9a78:	83 7c 0a 38 00                                  	cmp    DWORD PTR [rdx+rcx*1+0x38],0x0
    10402e8b9a7d:	0f 85 a2 11 00 00                               	jne    0x10402e8bac25
    10402e8b9a83:	41 8b f8                                        	mov    edi,r8d
    10402e8b9a86:	c1 e7 04                                        	shl    edi,0x4
    10402e8b9a89:	46 8d 04 27                                     	lea    r8d,[rdi+r12*1]
    10402e8b9a8d:	4c 8d 62 04                                     	lea    r12,[rdx+0x4]
    10402e8b9a91:	c4 02 79 18 04 04                               	vbroadcastss xmm8,DWORD PTR [r12+r8*1]
    10402e8b9a97:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    10402e8b9a9c:	41 8d 04 3f                                     	lea    eax,[r15+rdi*1]
    10402e8b9aa0:	c4 42 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+rax*1]
    10402e8b9aa6:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    10402e8b9aab:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    10402e8b9ab0:	03 fb                                           	add    edi,ebx
    10402e8b9ab2:	c4 42 79 18 14 3c                               	vbroadcastss xmm10,DWORD PTR [r12+rdi*1]
    10402e8b9ab8:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    10402e8b9abd:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    10402e8b9ac2:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    10402e8b9ac7:	c4 22 79 18 14 02                               	vbroadcastss xmm10,DWORD PTR [rdx+r8*1]
    10402e8b9acd:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    10402e8b9ad2:	c4 62 79 18 24 02                               	vbroadcastss xmm12,DWORD PTR [rdx+rax*1]
    10402e8b9ad8:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    10402e8b9add:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    10402e8b9ae2:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    10402e8b9ae8:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    10402e8b9aed:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    10402e8b9af2:	c4 41 48 59 d2                                  	vmulps xmm10,xmm6,xmm10
    10402e8b9af7:	44 8b 24 0a                                     	mov    r12d,DWORD PTR [rdx+rcx*1]
    10402e8b9afb:	41 83 fc 01                                     	cmp    r12d,0x1
    10402e8b9aff:	0f 85 22 0e 00 00                               	jne    0x10402e8ba927
    10402e8b9b05:	44 8b 7c 0a 28                                  	mov    r15d,DWORD PTR [rdx+rcx*1+0x28]
    10402e8b9b0a:	45 85 ff                                        	test   r15d,r15d
    10402e8b9b0d:	0f 84 14 0e 00 00                               	je     0x10402e8ba927
    10402e8b9b13:	8b 5c 0a 1c                                     	mov    ebx,DWORD PTR [rdx+rcx*1+0x1c]
    10402e8b9b17:	85 db                                           	test   ebx,ebx
    10402e8b9b19:	0f 8e 08 0e 00 00                               	jle    0x10402e8ba927
    10402e8b9b1f:	44 8b 5c 0a 20                                  	mov    r11d,DWORD PTR [rdx+rcx*1+0x20]
    10402e8b9b24:	45 85 db                                        	test   r11d,r11d
    10402e8b9b27:	0f 8e f6 0d 00 00                               	jle    0x10402e8ba923
    10402e8b9b2d:	44 8b d3                                        	mov    r10d,ebx
    10402e8b9b30:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    10402e8b9b35:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    10402e8b9b3a:	8b 7c 0a 10                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x10]
    10402e8b9b3e:	45 33 c0                                        	xor    r8d,r8d
    10402e8b9b41:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    10402e8b9b47:	41 0f 95 c0                                     	setne  r8b
    10402e8b9b4b:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    10402e8b9b51:	40 0f 95 c7                                     	setne  dil
    10402e8b9b55:	40 0f b6 ff                                     	movzx  edi,dil
    10402e8b9b59:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    10402e8b9b60:	41 23 f8                                        	and    edi,r8d
    10402e8b9b63:	0f 85 0f 00 00 00                               	jne    0x10402e8b9b78
    10402e8b9b69:	c4 41 58 5f d2                                  	vmaxps xmm10,xmm4,xmm10
    10402e8b9b6e:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    10402e8b9b73:	e9 0b 00 00 00                                  	jmp    0x10402e8b9b83
    10402e8b9b78:	c4 43 79 08 ea 09                               	vroundps xmm13,xmm10,0x9
    10402e8b9b7e:	c4 41 28 5c d5                                  	vsubps xmm10,xmm10,xmm13
    10402e8b9b83:	c4 41 18 59 d2                                  	vmulps xmm10,xmm12,xmm10
    10402e8b9b88:	45 8b d3                                        	mov    r10d,r11d
    10402e8b9b8b:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    10402e8b9b90:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    10402e8b9b95:	44 8b 44 0a 14                                  	mov    r8d,DWORD PTR [rdx+rcx*1+0x14]
    10402e8b9b9a:	45 33 e4                                        	xor    r12d,r12d
    10402e8b9b9d:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    10402e8b9ba4:	41 0f 95 c4                                     	setne  r12b
    10402e8b9ba8:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    10402e8b9baf:	41 0f 95 c0                                     	setne  r8b
    10402e8b9bb3:	45 0f b6 c0                                     	movzx  r8d,r8b
    10402e8b9bb7:	45 23 c4                                        	and    r8d,r12d
    10402e8b9bba:	0f 85 0f 00 00 00                               	jne    0x10402e8b9bcf
    10402e8b9bc0:	c4 41 58 5f c0                                  	vmaxps xmm8,xmm4,xmm8
    10402e8b9bc5:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    10402e8b9bca:	e9 0b 00 00 00                                  	jmp    0x10402e8b9bda
    10402e8b9bcf:	c4 43 79 08 e8 09                               	vroundps xmm13,xmm8,0x9
    10402e8b9bd5:	c4 41 38 5c c5                                  	vsubps xmm8,xmm8,xmm13
    10402e8b9bda:	c4 41 18 59 c0                                  	vmulps xmm8,xmm12,xmm8
    10402e8b9bdf:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    10402e8b9be9:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8b9bee:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8b9bf3:	c4 41 38 58 ec                                  	vaddps xmm13,xmm8,xmm12
    10402e8b9bf8:	44 8b 64 0a 0c                                  	mov    r12d,DWORD PTR [rdx+rcx*1+0xc]
    10402e8b9bfd:	45 33 e4                                        	xor    r12d,r12d
    10402e8b9c00:	81 7c 0a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0xc],0x2600
    10402e8b9c08:	41 0f 94 c4                                     	sete   r12b
    10402e8b9c0c:	45 85 e4                                        	test   r12d,r12d
    10402e8b9c0f:	0f 85 66 00 00 00                               	jne    0x10402e8b9c7b
    10402e8b9c15:	c4 43 79 08 c5 09                               	vroundps xmm8,xmm13,0x9
    10402e8b9c1b:	49 ba 50 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b850
    10402e8b9c25:	c4 41 38 54 32                                  	vandps xmm14,xmm8,XMMWORD PTR [r10]
    10402e8b9c2a:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    10402e8b9c34:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    10402e8b9c39:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    10402e8b9c3d:	c5 08 c2 f1 01                                  	vcmpltps xmm14,xmm14,xmm1
    10402e8b9c42:	4c 8b 15 95 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd95]        # 0x10402e8b59de
    10402e8b9c49:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    10402e8b9c4f:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    10402e8b9c54:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    10402e8b9c5a:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e8b9c5e:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e8b9c63:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    10402e8b9c68:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    10402e8b9c6d:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    10402e8b9c72:	c5 79 28 ec                                     	vmovapd xmm13,xmm4
    10402e8b9c76:	e9 49 00 00 00                                  	jmp    0x10402e8b9cc4
    10402e8b9c7b:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    10402e8b9c81:	4c 8b 15 95 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff95]        # 0x10402e8b9c1d
    10402e8b9c88:	c4 41 18 54 2a                                  	vandps xmm13,xmm12,XMMWORD PTR [r10]
    10402e8b9c8d:	4c 8b 15 98 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff98]        # 0x10402e8b9c2c
    10402e8b9c94:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    10402e8b9c99:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    10402e8b9c9d:	c5 10 c2 f1 01                                  	vcmpltps xmm14,xmm13,xmm1
    10402e8b9ca2:	4c 8b 15 35 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd35]        # 0x10402e8b59de
    10402e8b9ca9:	c4 41 18 c2 fc 00                               	vcmpeqps xmm15,xmm12,xmm12
    10402e8b9caf:	c4 41 18 54 ef                                  	vandps xmm13,xmm12,xmm15
    10402e8b9cb4:	c4 41 18 c2 3a 0d                               	vcmpgeps xmm15,xmm12,XMMWORD PTR [r10]
    10402e8b9cba:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    10402e8b9cbf:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    10402e8b9cc4:	c4 c3 79 08 e2 09                               	vroundps xmm4,xmm10,0x9
    10402e8b9cca:	4c 8b 15 0d bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd0d]        # 0x10402e8b59de
    10402e8b9cd1:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    10402e8b9cd6:	c4 c1 58 54 c7                                  	vandps xmm0,xmm4,xmm15
    10402e8b9cdb:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    10402e8b9ce1:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    10402e8b9ce5:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    10402e8b9cea:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    10402e8b9cf4:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8b9cf9:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8b9cfd:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x10402e8b9c1d
    10402e8b9d04:	c4 41 58 54 0a                                  	vandps xmm9,xmm4,XMMWORD PTR [r10]
    10402e8b9d09:	c5 30 c2 c9 01                                  	vcmpltps xmm9,xmm9,xmm1
    10402e8b9d0e:	c5 31 df fe                                     	vpandn xmm15,xmm9,xmm6
    10402e8b9d12:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    10402e8b9d17:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8b9d1c:	8d 43 ff                                        	lea    eax,[rbx-0x1]
    10402e8b9d1f:	c5 79 6e c8                                     	vmovd  xmm9,eax
    10402e8b9d23:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8b9d28:	8b 44 0a 2c                                     	mov    eax,DWORD PTR [rdx+rcx*1+0x2c]
    10402e8b9d2c:	c4 e2 79 3d ca                                  	vpmaxsd xmm1,xmm0,xmm2
    10402e8b9d31:	c4 c2 71 39 c9                                  	vpminsd xmm1,xmm1,xmm9
    10402e8b9d36:	85 ff                                           	test   edi,edi
    10402e8b9d38:	0f 84 58 00 00 00                               	je     0x10402e8b9d96
    10402e8b9d3e:	c5 f9 6e c8                                     	vmovd  xmm1,eax
    10402e8b9d42:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    10402e8b9d47:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    10402e8b9d4b:	85 c0                                           	test   eax,eax
    10402e8b9d4d:	0f 85 43 00 00 00                               	jne    0x10402e8b9d96
    10402e8b9d53:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    10402e8b9d57:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    10402e8b9d5c:	c4 c1 79 66 d9                                  	vpcmpgtd xmm3,xmm0,xmm9
    10402e8b9d61:	c5 e1 db d9                                     	vpand  xmm3,xmm3,xmm1
    10402e8b9d65:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8b9d6a:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    10402e8b9d6f:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    10402e8b9d73:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    10402e8b9d77:	c4 41 71 db db                                  	vpand  xmm11,xmm1,xmm11
    10402e8b9d7c:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8b9d81:	c4 c1 79 fe cb                                  	vpaddd xmm1,xmm0,xmm11
    10402e8b9d86:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    10402e8b9d8e:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    10402e8b9d96:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    10402e8b9d9a:	c4 c1 11 db f6                                  	vpand  xmm6,xmm13,xmm14
    10402e8b9d9f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8b9da4:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    10402e8b9da8:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    10402e8b9dad:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8b9db2:	8b 4c 0a 30                                     	mov    ecx,DWORD PTR [rdx+rcx*1+0x30]
    10402e8b9db6:	c4 62 49 3d f2                                  	vpmaxsd xmm14,xmm6,xmm2
    10402e8b9dbb:	c4 42 09 39 f5                                  	vpminsd xmm14,xmm14,xmm13
    10402e8b9dc0:	45 85 c0                                        	test   r8d,r8d
    10402e8b9dc3:	0f 84 4a 00 00 00                               	je     0x10402e8b9e13
    10402e8b9dc9:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    10402e8b9dcd:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    10402e8b9dd2:	c5 09 db f6                                     	vpand  xmm14,xmm14,xmm6
    10402e8b9dd6:	85 c9                                           	test   ecx,ecx
    10402e8b9dd8:	0f 85 35 00 00 00                               	jne    0x10402e8b9e13
    10402e8b9dde:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    10402e8b9de3:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    10402e8b9de8:	c4 c1 49 66 dd                                  	vpcmpgtd xmm3,xmm6,xmm13
    10402e8b9ded:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    10402e8b9df2:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8b9df7:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    10402e8b9dfc:	c5 69 66 de                                     	vpcmpgtd xmm11,xmm2,xmm6
    10402e8b9e00:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    10402e8b9e04:	c4 41 09 db db                                  	vpand  xmm11,xmm14,xmm11
    10402e8b9e09:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    10402e8b9e0e:	c4 41 49 fe f3                                  	vpaddd xmm14,xmm6,xmm11
    10402e8b9e13:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    10402e8b9e17:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8b9e1c:	c4 62 09 40 f3                                  	vpmulld xmm14,xmm14,xmm3
    10402e8b9e21:	c5 09 fe d9                                     	vpaddd xmm11,xmm14,xmm1
    10402e8b9e25:	c4 63 79 16 db 03                               	vpextrd ebx,xmm11,0x3
    10402e8b9e2b:	c4 43 79 16 d9 02                               	vpextrd r9d,xmm11,0x2
    10402e8b9e31:	48 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rbx
    10402e8b9e38:	c4 63 79 16 db 01                               	vpextrd ebx,xmm11,0x1
    10402e8b9e3e:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    10402e8b9e45:	c4 41 79 7e d9                                  	vmovd  r9d,xmm11
    10402e8b9e4a:	45 85 e4                                        	test   r12d,r12d
    10402e8b9e4d:	0f 85 df 08 00 00                               	jne    0x10402e8ba732
    10402e8b9e53:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    10402e8b9e57:	c4 62 79 3d da                                  	vpmaxsd xmm11,xmm0,xmm2
    10402e8b9e5c:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    10402e8b9e61:	85 ff                                           	test   edi,edi
    10402e8b9e63:	0f 84 41 00 00 00                               	je     0x10402e8b9eaa
    10402e8b9e69:	c5 79 6e d8                                     	vmovd  xmm11,eax
    10402e8b9e6d:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8b9e72:	c4 41 79 db db                                  	vpand  xmm11,xmm0,xmm11
    10402e8b9e77:	85 c0                                           	test   eax,eax
    10402e8b9e79:	0f 85 2b 00 00 00                               	jne    0x10402e8b9eaa
    10402e8b9e7f:	c4 41 79 66 c9                                  	vpcmpgtd xmm9,xmm0,xmm9
    10402e8b9e84:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    10402e8b9e88:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8b9e8d:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    10402e8b9e92:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    10402e8b9e96:	c4 41 21 df f9                                  	vpandn xmm15,xmm11,xmm9
    10402e8b9e9b:	c4 41 61 db cb                                  	vpand  xmm9,xmm3,xmm11
    10402e8b9ea0:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8b9ea5:	c4 41 79 fe d9                                  	vpaddd xmm11,xmm0,xmm9
    10402e8b9eaa:	c5 c9 fe c7                                     	vpaddd xmm0,xmm6,xmm7
    10402e8b9eae:	c4 e2 79 3d f2                                  	vpmaxsd xmm6,xmm0,xmm2
    10402e8b9eb3:	c4 c2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm13
    10402e8b9eb8:	45 85 c0                                        	test   r8d,r8d
    10402e8b9ebb:	0f 84 49 00 00 00                               	je     0x10402e8b9f0a
    10402e8b9ec1:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    10402e8b9ec5:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e8b9eca:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    10402e8b9ece:	85 c9                                           	test   ecx,ecx
    10402e8b9ed0:	0f 85 34 00 00 00                               	jne    0x10402e8b9f0a
    10402e8b9ed6:	c4 c1 79 6e f3                                  	vmovd  xmm6,r11d
    10402e8b9edb:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e8b9ee0:	c4 41 79 66 cd                                  	vpcmpgtd xmm9,xmm0,xmm13
    10402e8b9ee5:	c5 31 db ce                                     	vpand  xmm9,xmm9,xmm6
    10402e8b9ee9:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8b9eee:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    10402e8b9ef3:	c5 69 66 e8                                     	vpcmpgtd xmm13,xmm2,xmm0
    10402e8b9ef7:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    10402e8b9efc:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    10402e8b9f01:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8b9f06:	c5 f9 fe f6                                     	vpaddd xmm6,xmm0,xmm6
    10402e8b9f0a:	c4 e2 49 40 c3                                  	vpmulld xmm0,xmm6,xmm3
    10402e8b9f0f:	c5 f9 fe f1                                     	vpaddd xmm6,xmm0,xmm1
    10402e8b9f13:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    10402e8b9f1a:	0f 84 71 00 00 00                               	je     0x10402e8b9f91
    10402e8b9f20:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    10402e8b9f27:	0f 85 07 00 00 00                               	jne    0x10402e8b9f34
    10402e8b9f2d:	33 ff                                           	xor    edi,edi
    10402e8b9f2f:	e9 07 00 00 00                                  	jmp    0x10402e8b9f3b
    10402e8b9f34:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    10402e8b9f38:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8b9f3b:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    10402e8b9f42:	0f 85 08 00 00 00                               	jne    0x10402e8b9f50
    10402e8b9f48:	45 33 c0                                        	xor    r8d,r8d
    10402e8b9f4b:	e9 08 00 00 00                                  	jmp    0x10402e8b9f58
    10402e8b9f50:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    10402e8b9f54:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    10402e8b9f58:	83 bd 50 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1b0],0x0
    10402e8b9f5f:	0f 85 08 00 00 00                               	jne    0x10402e8b9f6d
    10402e8b9f65:	45 33 db                                        	xor    r11d,r11d
    10402e8b9f68:	e9 0f 00 00 00                                  	jmp    0x10402e8b9f7c
    10402e8b9f6d:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    10402e8b9f74:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    10402e8b9f78:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8b9f7c:	83 bd b0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x150],0x0
    10402e8b9f83:	0f 85 3c 00 00 00                               	jne    0x10402e8b9fc5
    10402e8b9f89:	45 33 e4                                        	xor    r12d,r12d
    10402e8b9f8c:	e9 43 00 00 00                                  	jmp    0x10402e8b9fd4
    10402e8b9f91:	c5 71 fe cf                                     	vpaddd xmm9,xmm1,xmm7
    10402e8b9f95:	c4 41 21 76 c9                                  	vpcmpeqd xmm9,xmm11,xmm9
    10402e8b9f9a:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    10402e8b9f9f:	83 ff 0f                                        	cmp    edi,0xf
    10402e8b9fa2:	0f 84 f8 02 00 00                               	je     0x10402e8ba2a0
    10402e8b9fa8:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    10402e8b9fae:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8b9fb2:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    10402e8b9fb6:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    10402e8b9fba:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    10402e8b9fbe:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    10402e8b9fc2:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8b9fc5:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    10402e8b9fcc:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    10402e8b9fd0:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    10402e8b9fd4:	c4 41 21 fe ce                                  	vpaddd xmm9,xmm11,xmm14
    10402e8b9fd9:	c5 79 6e ef                                     	vmovd  xmm13,edi
    10402e8b9fdd:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8b9fe2:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    10402e8b9fe9:	0f 84 8a 00 00 00                               	je     0x10402e8ba079
    10402e8b9fef:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    10402e8b9ff6:	0f 85 07 00 00 00                               	jne    0x10402e8ba003
    10402e8b9ffc:	33 ff                                           	xor    edi,edi
    10402e8b9ffe:	e9 0b 00 00 00                                  	jmp    0x10402e8ba00e
    10402e8ba003:	c5 79 7e cf                                     	vmovd  edi,xmm9
    10402e8ba007:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba00b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8ba00e:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    10402e8ba015:	0f 85 07 00 00 00                               	jne    0x10402e8ba022
    10402e8ba01b:	33 c0                                           	xor    eax,eax
    10402e8ba01d:	e9 0d 00 00 00                                  	jmp    0x10402e8ba02f
    10402e8ba022:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    10402e8ba028:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    10402e8ba02c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    10402e8ba02f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    10402e8ba036:	0f 85 07 00 00 00                               	jne    0x10402e8ba043
    10402e8ba03c:	33 db                                           	xor    ebx,ebx
    10402e8ba03e:	e9 0d 00 00 00                                  	jmp    0x10402e8ba050
    10402e8ba043:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    10402e8ba049:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    10402e8ba04d:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    10402e8ba050:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    10402e8ba057:	0f 85 41 00 00 00                               	jne    0x10402e8ba09e
    10402e8ba05d:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    10402e8ba063:	c5 79 6e ef                                     	vmovd  xmm13,edi
    10402e8ba067:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8ba06c:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    10402e8ba072:	33 c9                                           	xor    ecx,ecx
    10402e8ba074:	e9 54 00 00 00                                  	jmp    0x10402e8ba0cd
    10402e8ba079:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    10402e8ba07f:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba083:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    10402e8ba086:	c5 79 7e cf                                     	vmovd  edi,xmm9
    10402e8ba08a:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba08e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8ba091:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    10402e8ba097:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    10402e8ba09b:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    10402e8ba09e:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    10402e8ba0a4:	41 8d 0c 8f                                     	lea    ecx,[r15+rcx*4]
    10402e8ba0a8:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    10402e8ba0ab:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    10402e8ba0b1:	c5 79 6e ef                                     	vmovd  xmm13,edi
    10402e8ba0b5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8ba0ba:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    10402e8ba0c0:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    10402e8ba0c7:	0f 84 78 00 00 00                               	je     0x10402e8ba145
    10402e8ba0cd:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    10402e8ba0d4:	0f 85 07 00 00 00                               	jne    0x10402e8ba0e1
    10402e8ba0da:	33 ff                                           	xor    edi,edi
    10402e8ba0dc:	e9 0b 00 00 00                                  	jmp    0x10402e8ba0ec
    10402e8ba0e1:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    10402e8ba0e5:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba0e9:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8ba0ec:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    10402e8ba0f3:	0f 85 08 00 00 00                               	jne    0x10402e8ba101
    10402e8ba0f9:	45 33 c0                                        	xor    r8d,r8d
    10402e8ba0fc:	e9 0e 00 00 00                                  	jmp    0x10402e8ba10f
    10402e8ba101:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    10402e8ba107:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    10402e8ba10b:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    10402e8ba10f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    10402e8ba116:	0f 85 07 00 00 00                               	jne    0x10402e8ba123
    10402e8ba11c:	33 c0                                           	xor    eax,eax
    10402e8ba11e:	e9 0d 00 00 00                                  	jmp    0x10402e8ba130
    10402e8ba123:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    10402e8ba129:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    10402e8ba12d:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    10402e8ba130:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    10402e8ba137:	0f 85 2e 00 00 00                               	jne    0x10402e8ba16b
    10402e8ba13d:	45 33 c9                                        	xor    r9d,r9d
    10402e8ba140:	e9 34 00 00 00                                  	jmp    0x10402e8ba179
    10402e8ba145:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    10402e8ba14b:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba14f:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    10402e8ba153:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    10402e8ba157:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba15b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8ba15e:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    10402e8ba164:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    10402e8ba168:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    10402e8ba16b:	c4 c3 79 16 f1 03                               	vpextrd r9d,xmm6,0x3
    10402e8ba171:	47 8d 0c 8f                                     	lea    r9d,[r15+r9*4]
    10402e8ba175:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    10402e8ba179:	c4 c3 31 22 f3 02                               	vpinsrd xmm6,xmm9,r11d,0x2
    10402e8ba17f:	c4 63 11 22 cb 02                               	vpinsrd xmm9,xmm13,ebx,0x2
    10402e8ba185:	c4 c1 79 fe c3                                  	vpaddd xmm0,xmm0,xmm11
    10402e8ba18a:	c5 79 6e df                                     	vmovd  xmm11,edi
    10402e8ba18e:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8ba193:	c4 43 21 22 d8 01                               	vpinsrd xmm11,xmm11,r8d,0x1
    10402e8ba199:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    10402e8ba19f:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    10402e8ba1a6:	0f 84 7a 00 00 00                               	je     0x10402e8ba226
    10402e8ba1ac:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    10402e8ba1b3:	0f 85 07 00 00 00                               	jne    0x10402e8ba1c0
    10402e8ba1b9:	33 ff                                           	xor    edi,edi
    10402e8ba1bb:	e9 0b 00 00 00                                  	jmp    0x10402e8ba1cb
    10402e8ba1c0:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    10402e8ba1c4:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba1c8:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8ba1cb:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    10402e8ba1d2:	0f 85 08 00 00 00                               	jne    0x10402e8ba1e0
    10402e8ba1d8:	45 33 c0                                        	xor    r8d,r8d
    10402e8ba1db:	e9 0e 00 00 00                                  	jmp    0x10402e8ba1ee
    10402e8ba1e0:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    10402e8ba1e6:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    10402e8ba1ea:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    10402e8ba1ee:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    10402e8ba1f5:	0f 85 08 00 00 00                               	jne    0x10402e8ba203
    10402e8ba1fb:	45 33 db                                        	xor    r11d,r11d
    10402e8ba1fe:	e9 0e 00 00 00                                  	jmp    0x10402e8ba211
    10402e8ba203:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    10402e8ba209:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    10402e8ba20d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8ba211:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    10402e8ba218:	0f 85 2f 00 00 00                               	jne    0x10402e8ba24d
    10402e8ba21e:	45 33 ff                                        	xor    r15d,r15d
    10402e8ba221:	e9 35 00 00 00                                  	jmp    0x10402e8ba25b
    10402e8ba226:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    10402e8ba22c:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba230:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    10402e8ba234:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    10402e8ba238:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba23c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8ba23f:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    10402e8ba245:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    10402e8ba249:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8ba24d:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    10402e8ba253:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    10402e8ba257:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    10402e8ba25b:	c4 c3 49 22 c4 03                               	vpinsrd xmm0,xmm6,r12d,0x3
    10402e8ba261:	c4 e3 31 22 f1 03                               	vpinsrd xmm6,xmm9,ecx,0x3
    10402e8ba267:	c5 79 6e cf                                     	vmovd  xmm9,edi
    10402e8ba26b:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8ba270:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    10402e8ba276:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    10402e8ba27c:	c4 43 31 22 cf 03                               	vpinsrd xmm9,xmm9,r15d,0x3
    10402e8ba282:	c4 43 21 22 d9 03                               	vpinsrd xmm11,xmm11,r9d,0x3
    10402e8ba288:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    10402e8ba28c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    10402e8ba291:	c4 41 79 28 df                                  	vmovapd xmm11,xmm15
    10402e8ba296:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    10402e8ba29b:	e9 95 00 00 00                                  	jmp    0x10402e8ba335
    10402e8ba2a0:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    10402e8ba2a4:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    10402e8ba2a9:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    10402e8ba2ad:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    10402e8ba2b2:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    10402e8ba2b7:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    10402e8ba2bd:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba2c1:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    10402e8ba2c6:	44 8b 85 c8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x138]
    10402e8ba2cd:	43 8d 3c 87                                     	lea    edi,[r15+r8*4]
    10402e8ba2d1:	c5 7b 10 1c 3a                                  	vmovsd xmm11,QWORD PTR [rdx+rdi*1]
    10402e8ba2d6:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    10402e8ba2db:	c4 41 78 c6 d9 dd                               	vshufps xmm11,xmm0,xmm9,0xdd
    10402e8ba2e1:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    10402e8ba2e7:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    10402e8ba2ec:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    10402e8ba2f0:	41 03 ff                                        	add    edi,r15d
    10402e8ba2f3:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    10402e8ba2f8:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    10402e8ba2fe:	41 03 ff                                        	add    edi,r15d
    10402e8ba301:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    10402e8ba306:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    10402e8ba30b:	c4 e3 79 16 f7 02                               	vpextrd edi,xmm6,0x2
    10402e8ba311:	41 03 ff                                        	add    edi,r15d
    10402e8ba314:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    10402e8ba319:	c4 e3 79 16 f7 03                               	vpextrd edi,xmm6,0x3
    10402e8ba31f:	41 03 ff                                        	add    edi,r15d
    10402e8ba322:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    10402e8ba327:	c5 91 6c f6                                     	vpunpcklqdq xmm6,xmm13,xmm6
    10402e8ba32b:	c5 30 c6 ee dd                                  	vshufps xmm13,xmm9,xmm6,0xdd
    10402e8ba330:	c5 b0 c6 f6 88                                  	vshufps xmm6,xmm9,xmm6,0x88
    10402e8ba335:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    10402e8ba33a:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    10402e8ba33f:	c5 28 5c d4                                     	vsubps xmm10,xmm10,xmm4
    10402e8ba343:	c4 41 50 5c e2                                  	vsubps xmm12,xmm5,xmm10
    10402e8ba348:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    10402e8ba352:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8ba357:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8ba35c:	c4 c1 79 db ce                                  	vpand  xmm1,xmm0,xmm14
    10402e8ba361:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba366:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8ba36c:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8ba371:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba376:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8ba37b:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8ba37f:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8ba383:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8ba388:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    10402e8ba38c:	c4 c1 21 db de                                  	vpand  xmm3,xmm11,xmm14
    10402e8ba391:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba396:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8ba39c:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8ba3a1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba3a6:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8ba3ab:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8ba3af:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8ba3b3:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8ba3b8:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    10402e8ba3bc:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    10402e8ba3c0:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    10402e8ba3c4:	c4 c1 49 db de                                  	vpand  xmm3,xmm6,xmm14
    10402e8ba3c9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba3ce:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e8ba3d4:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e8ba3d9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba3de:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e8ba3e3:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8ba3e7:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e8ba3eb:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e8ba3f0:	c5 98 59 db                                     	vmulps xmm3,xmm12,xmm3
    10402e8ba3f4:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    10402e8ba3f9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba3fe:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e8ba404:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e8ba409:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba40e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e8ba413:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e8ba417:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e8ba41b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e8ba420:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    10402e8ba424:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    10402e8ba428:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    10402e8ba42c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    10402e8ba430:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    10402e8ba43a:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8ba43f:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e8ba443:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    10402e8ba447:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    10402e8ba44e:	c4 a1 7a 7f 0c 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm1
    10402e8ba454:	c5 f1 72 d0 10                                  	vpsrld xmm1,xmm0,0x10
    10402e8ba459:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    10402e8ba45e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba463:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8ba469:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8ba46e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba473:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8ba478:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8ba47c:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8ba480:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8ba485:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    10402e8ba489:	c4 c1 59 72 d3 10                               	vpsrld xmm4,xmm11,0x10
    10402e8ba48f:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    10402e8ba494:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba499:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e8ba49f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e8ba4a4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba4a9:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e8ba4ae:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e8ba4b2:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e8ba4b6:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e8ba4bb:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    10402e8ba4bf:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    10402e8ba4c3:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    10402e8ba4c7:	c5 d9 72 d6 10                                  	vpsrld xmm4,xmm6,0x10
    10402e8ba4cc:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    10402e8ba4d1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba4d6:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e8ba4dc:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e8ba4e1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba4e6:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e8ba4eb:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e8ba4ef:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e8ba4f3:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e8ba4f8:	c5 98 59 e4                                     	vmulps xmm4,xmm12,xmm4
    10402e8ba4fc:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    10402e8ba502:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8ba507:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba50c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    10402e8ba512:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    10402e8ba517:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba51c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    10402e8ba521:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    10402e8ba525:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    10402e8ba529:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    10402e8ba52e:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    10402e8ba532:	c5 d8 58 d2                                     	vaddps xmm2,xmm4,xmm2
    10402e8ba536:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    10402e8ba53a:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    10402e8ba53e:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    10402e8ba542:	c4 a1 7a 7f 4c 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm1
    10402e8ba549:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    10402e8ba54e:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    10402e8ba553:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba558:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e8ba55e:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e8ba563:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba568:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8ba56d:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8ba571:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8ba575:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8ba57a:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    10402e8ba57e:	c4 c1 69 72 d3 08                               	vpsrld xmm2,xmm11,0x8
    10402e8ba584:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8ba589:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba58e:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    10402e8ba594:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    10402e8ba599:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba59e:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    10402e8ba5a3:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    10402e8ba5a7:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    10402e8ba5ab:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    10402e8ba5b0:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    10402e8ba5b4:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    10402e8ba5b8:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    10402e8ba5bc:	c5 e9 72 d6 08                                  	vpsrld xmm2,xmm6,0x8
    10402e8ba5c1:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    10402e8ba5c6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba5cb:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    10402e8ba5d1:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    10402e8ba5d6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba5db:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    10402e8ba5e0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    10402e8ba5e4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    10402e8ba5e8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    10402e8ba5ed:	c5 98 59 d2                                     	vmulps xmm2,xmm12,xmm2
    10402e8ba5f1:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    10402e8ba5f7:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    10402e8ba5fc:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba601:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    10402e8ba607:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    10402e8ba60c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba611:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    10402e8ba617:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    10402e8ba61c:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    10402e8ba621:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    10402e8ba626:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    10402e8ba62b:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    10402e8ba630:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    10402e8ba635:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    10402e8ba63a:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    10402e8ba63e:	c4 21 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm14
    10402e8ba645:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    10402e8ba64a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba64f:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8ba655:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8ba65a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba65f:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8ba664:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8ba668:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8ba66c:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8ba671:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    10402e8ba675:	c4 c1 21 72 d3 18                               	vpsrld xmm11,xmm11,0x18
    10402e8ba67b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba680:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    10402e8ba686:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    10402e8ba68b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba690:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    10402e8ba696:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    10402e8ba69b:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    10402e8ba6a0:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    10402e8ba6a5:	c4 41 28 59 db                                  	vmulps xmm11,xmm10,xmm11
    10402e8ba6aa:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8ba6af:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8ba6b3:	c5 c9 72 d6 18                                  	vpsrld xmm6,xmm6,0x18
    10402e8ba6b8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba6bd:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e8ba6c3:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e8ba6c8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba6cd:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e8ba6d2:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8ba6d6:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e8ba6da:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e8ba6df:	c5 98 59 f6                                     	vmulps xmm6,xmm12,xmm6
    10402e8ba6e3:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    10402e8ba6e9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba6ee:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    10402e8ba6f4:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    10402e8ba6f9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba6fe:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    10402e8ba704:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    10402e8ba709:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    10402e8ba70e:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    10402e8ba713:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    10402e8ba718:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    10402e8ba71d:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    10402e8ba721:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8ba725:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    10402e8ba72d:	e9 cd 01 00 00                                  	jmp    0x10402e8ba8ff
    10402e8ba732:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    10402e8ba739:	0f 84 71 00 00 00                               	je     0x10402e8ba7b0
    10402e8ba73f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    10402e8ba746:	0f 85 07 00 00 00                               	jne    0x10402e8ba753
    10402e8ba74c:	33 ff                                           	xor    edi,edi
    10402e8ba74e:	e9 07 00 00 00                                  	jmp    0x10402e8ba75a
    10402e8ba753:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    10402e8ba757:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8ba75a:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    10402e8ba761:	0f 85 08 00 00 00                               	jne    0x10402e8ba76f
    10402e8ba767:	45 33 c0                                        	xor    r8d,r8d
    10402e8ba76a:	e9 08 00 00 00                                  	jmp    0x10402e8ba777
    10402e8ba76f:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    10402e8ba773:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    10402e8ba777:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    10402e8ba77e:	0f 85 08 00 00 00                               	jne    0x10402e8ba78c
    10402e8ba784:	45 33 db                                        	xor    r11d,r11d
    10402e8ba787:	e9 0f 00 00 00                                  	jmp    0x10402e8ba79b
    10402e8ba78c:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    10402e8ba793:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    10402e8ba797:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8ba79b:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    10402e8ba7a2:	0f 85 25 00 00 00                               	jne    0x10402e8ba7cd
    10402e8ba7a8:	45 33 e4                                        	xor    r12d,r12d
    10402e8ba7ab:	e9 2c 00 00 00                                  	jmp    0x10402e8ba7dc
    10402e8ba7b0:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    10402e8ba7b6:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    10402e8ba7ba:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    10402e8ba7be:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    10402e8ba7c2:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    10402e8ba7c6:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    10402e8ba7ca:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8ba7cd:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    10402e8ba7d4:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    10402e8ba7d8:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    10402e8ba7dc:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    10402e8ba7e0:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8ba7e5:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    10402e8ba7eb:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    10402e8ba7f1:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    10402e8ba7f7:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x10402e8ba34a
    10402e8ba7fe:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8ba803:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8ba807:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    10402e8ba80b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba810:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8ba816:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8ba81b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba820:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8ba826:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8ba82b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8ba830:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8ba835:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x10402e8ba432
    10402e8ba83c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8ba841:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8ba846:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    10402e8ba84b:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    10402e8ba852:	c4 21 7a 7f 04 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm8
    10402e8ba858:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    10402e8ba85d:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    10402e8ba861:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba866:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8ba86c:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8ba871:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba876:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8ba87c:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8ba881:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8ba886:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8ba88b:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    10402e8ba890:	c4 21 7a 7f 44 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm8
    10402e8ba897:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    10402e8ba89c:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    10402e8ba8a0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba8a5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e8ba8ab:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e8ba8b0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba8b5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e8ba8ba:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8ba8be:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e8ba8c2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e8ba8c7:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    10402e8ba8cc:	c4 a1 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm6
    10402e8ba8d3:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    10402e8ba8d8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8ba8dd:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8ba8e3:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8ba8e8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8ba8ed:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8ba8f2:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8ba8f6:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8ba8fa:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8ba8ff:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x10402e8ba432
    10402e8ba906:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8ba90b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8ba90f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8ba913:	c4 a1 7a 7f 44 1a 30                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x30],xmm0
    10402e8ba91a:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8ba91e:	e9 4b 03 00 00                                  	jmp    0x10402e8bac6e
    10402e8ba923:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8ba927:	4c 8d 7a 08                                     	lea    r15,[rdx+0x8]
    10402e8ba92b:	c4 82 79 18 04 07                               	vbroadcastss xmm0,DWORD PTR [r15+r8*1]
    10402e8ba931:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    10402e8ba935:	c4 42 79 18 24 07                               	vbroadcastss xmm12,DWORD PTR [r15+rax*1]
    10402e8ba93b:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    10402e8ba93f:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    10402e8ba944:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    10402e8ba949:	c4 42 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [r15+rdi*1]
    10402e8ba94f:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    10402e8ba954:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    10402e8ba959:	c5 c8 59 d8                                     	vmulps xmm3,xmm6,xmm0
    10402e8ba95d:	41 83 fc 03                                     	cmp    r12d,0x3
    10402e8ba961:	0f 84 7a 02 00 00                               	je     0x10402e8babe1
    10402e8ba967:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    10402e8ba96f:	41 8b fb                                        	mov    edi,r11d
    10402e8ba972:	c5 fa 7f 84 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm0
    10402e8ba97b:	c5 fa 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm0
    10402e8ba984:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    10402e8ba98d:	c5 7a 7f 94 3a f0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1f0],xmm10
    10402e8ba996:	c5 7a 7f 84 3a e0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1e0],xmm8
    10402e8ba99f:	c5 fa 7f 9c 3a d0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1d0],xmm3
    10402e8ba9a8:	c5 fa 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm0
    10402e8ba9b1:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    10402e8ba9b8:	48 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rcx
    10402e8ba9bf:	45 33 c0                                        	xor    r8d,r8d
    10402e8ba9c2:	e9 46 00 00 00                                  	jmp    0x10402e8baa0d
    10402e8ba9c7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8ba9d0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8ba9d9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8ba9e2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8ba9eb:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8ba9f4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8ba9fd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    10402e8baa00:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    10402e8baa06:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8baa09:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8baa0d:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    10402e8baa14:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8baa19:	0f 85 54 3b 00 00                               	jne    0x10402e8be573
    10402e8baa1f:	8b c1                                           	mov    eax,ecx
    10402e8baa21:	41 8b c8                                        	mov    ecx,r8d
    10402e8baa24:	4c 8b 9d 20 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe0]
    10402e8baa2b:	41 d3 eb                                        	shr    r11d,cl
    10402e8baa2e:	41 f6 c3 01                                     	test   r11b,0x1
    10402e8baa32:	0f 84 ff 00 00 00                               	je     0x10402e8bab37
    10402e8baa38:	8b 4c 02 10                                     	mov    ecx,DWORD PTR [rdx+rax*1+0x10]
    10402e8baa3c:	44 8b 5c 02 0c                                  	mov    r11d,DWORD PTR [rdx+rax*1+0xc]
    10402e8baa41:	44 8b 64 02 08                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x8]
    10402e8baa46:	44 8b 64 02 04                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x4]
    10402e8baa4b:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    10402e8baa4f:	41 83 ff 02                                     	cmp    r15d,0x2
    10402e8baa53:	0f 84 89 00 00 00                               	je     0x10402e8baae2
    10402e8baa59:	45 85 ff                                        	test   r15d,r15d
    10402e8baa5c:	0f 85 32 00 00 00                               	jne    0x10402e8baa94
    10402e8baa62:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    10402e8baa6a:	c4 a1 7a 10 0c 3a                               	vmovss xmm1,DWORD PTR [rdx+r15*1]
    10402e8baa70:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    10402e8baa77:	41 8b d8                                        	mov    ebx,r8d
    10402e8baa7a:	c1 e3 04                                        	shl    ebx,0x4
    10402e8baa7d:	41 03 df                                        	add    ebx,r15d
    10402e8baa80:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8baa84:	41 8b c4                                        	mov    eax,r12d
    10402e8baa87:	41 8b d3                                        	mov    edx,r11d
    10402e8baa8a:	e8 91 b7 ed ff                                  	call   0x10402e796220
    10402e8baa8f:	e9 a3 00 00 00                                  	jmp    0x10402e8bab37
    10402e8baa94:	4c 8b fa                                        	mov    r15,rdx
    10402e8baa97:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    10402e8baa9c:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    10402e8baaa4:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    10402e8baaaa:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    10402e8baab2:	c4 41 7a 10 04 17                               	vmovss xmm8,DWORD PTR [r15+rdx*1]
    10402e8baab8:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    10402e8baabe:	41 8b f0                                        	mov    esi,r8d
    10402e8baac1:	c1 e6 04                                        	shl    esi,0x4
    10402e8baac4:	03 d6                                           	add    edx,esi
    10402e8baac6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8baaca:	41 8b c4                                        	mov    eax,r12d
    10402e8baacd:	44 8b ca                                        	mov    r9d,edx
    10402e8baad0:	41 8b d3                                        	mov    edx,r11d
    10402e8baad3:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    10402e8baad8:	e8 5b b7 ed ff                                  	call   0x10402e796238
    10402e8baadd:	e9 55 00 00 00                                  	jmp    0x10402e8bab37
    10402e8baae2:	4c 8b fa                                        	mov    r15,rdx
    10402e8baae5:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    10402e8baaea:	45 8b 4c 07 18                                  	mov    r9d,DWORD PTR [r15+rax*1+0x18]
    10402e8baaef:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    10402e8baaf7:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    10402e8baafd:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    10402e8bab05:	c4 c1 7a 10 14 17                               	vmovss xmm2,DWORD PTR [r15+rdx*1]
    10402e8bab0b:	42 8d 94 87 d0 01 00 00                         	lea    edx,[rdi+r8*4+0x1d0]
    10402e8bab13:	c4 c1 7a 10 1c 17                               	vmovss xmm3,DWORD PTR [r15+rdx*1]
    10402e8bab19:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    10402e8bab1f:	41 8b f0                                        	mov    esi,r8d
    10402e8bab22:	c1 e6 04                                        	shl    esi,0x4
    10402e8bab25:	03 d6                                           	add    edx,esi
    10402e8bab27:	52                                              	push   rdx
    10402e8bab28:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bab2c:	41 8b c4                                        	mov    eax,r12d
    10402e8bab2f:	41 8b d3                                        	mov    edx,r11d
    10402e8bab32:	e8 f1 b6 ed ff                                  	call   0x10402e796228
    10402e8bab37:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    10402e8bab3e:	41 83 c0 01                                     	add    r8d,0x1
    10402e8bab42:	41 83 f8 04                                     	cmp    r8d,0x4
    10402e8bab46:	0f 85 b4 fe ff ff                               	jne    0x10402e8baa00
    10402e8bab4c:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    10402e8bab4f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bab53:	c4 c1 7a 6f 84 18 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x1b0]
    10402e8bab5d:	c4 c1 7a 6f b4 18 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0x1c0]
    10402e8bab67:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    10402e8bab6b:	c4 41 7a 6f 84 18 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x190]
    10402e8bab75:	c4 41 7a 6f 8c 18 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x1a0]
    10402e8bab7f:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    10402e8bab84:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    10402e8bab88:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    10402e8bab8e:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    10402e8bab95:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    10402e8bab99:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    10402e8baba0:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    10402e8baba4:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    10402e8baba9:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    10402e8babad:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    10402e8babb4:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    10402e8babb8:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    10402e8babbe:	44 8b db                                        	mov    r11d,ebx
    10402e8babc1:	49 8b d0                                        	mov    rdx,r8
    10402e8babc4:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    10402e8babcc:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    10402e8babd4:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    10402e8babdc:	e9 8d 00 00 00                                  	jmp    0x10402e8bac6e
    10402e8babe1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8babe5:	8b c1                                           	mov    eax,ecx
    10402e8babe7:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    10402e8babec:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    10402e8babf1:	41 8b c9                                        	mov    ecx,r9d
    10402e8babf4:	48 8b 95 20 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe0]
    10402e8babfb:	e8 28 b9 ed ff                                  	call   0x10402e796528
    10402e8bac00:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8bac04:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8bac08:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    10402e8bac10:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    10402e8bac18:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    10402e8bac20:	e9 49 00 00 00                                  	jmp    0x10402e8bac6e
    10402e8bac25:	48 8b fa                                        	mov    rdi,rdx
    10402e8bac28:	48 8d 57 3c                                     	lea    rdx,[rdi+0x3c]
    10402e8bac2c:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    10402e8bac32:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    10402e8bac38:	48 8d 57 40                                     	lea    rdx,[rdi+0x40]
    10402e8bac3c:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    10402e8bac42:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    10402e8bac49:	48 8d 57 44                                     	lea    rdx,[rdi+0x44]
    10402e8bac4d:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    10402e8bac53:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    10402e8bac5a:	48 8d 57 48                                     	lea    rdx,[rdi+0x48]
    10402e8bac5e:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    10402e8bac64:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
    10402e8bac6b:	48 8b d7                                        	mov    rdx,rdi
    10402e8bac6e:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    10402e8bac75:	41 83 c0 01                                     	add    r8d,0x1
    10402e8bac79:	41 83 f8 04                                     	cmp    r8d,0x4
    10402e8bac7d:	0f 85 3d ed ff ff                               	jne    0x10402e8b99c0
    10402e8bac83:	41 8b db                                        	mov    ebx,r11d
    10402e8bac86:	c5 fa 6f 84 1a 90 00 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x90]
    10402e8bac8f:	4c 8b 15 4b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4b]        # 0x10402e8b9be1
    10402e8bac96:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8bac9b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8bac9f:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8baca3:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8bacab:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    10402e8bacaf:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    10402e8bacb4:	c5 7a 6f 84 1a a0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xa0]
    10402e8bacbd:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    10402e8bacc1:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    10402e8bacc9:	c5 30 58 ce                                     	vaddps xmm9,xmm9,xmm6
    10402e8baccd:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    10402e8bacd2:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    10402e8bacd7:	c5 7a 6f 84 1a b0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xb0]
    10402e8bace0:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    10402e8bace4:	c5 78 10 95 a0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x160]
    10402e8bacec:	c5 a8 58 f6                                     	vaddps xmm6,xmm10,xmm6
    10402e8bacf0:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    10402e8bacf4:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    10402e8bacf8:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    10402e8bad02:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8bad07:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8bad0b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8bad0f:	c5 f8 10 b5 c0 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x240]
    10402e8bad17:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    10402e8bad1b:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    10402e8bad1f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8bad23:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    10402e8bad27:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    10402e8bad2c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    10402e8bad31:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8bad38:	44 8b 84 3a 38 01 00 00                         	mov    r8d,DWORD PTR [rdx+rdi*1+0x138]
    10402e8bad40:	4d 8b d8                                        	mov    r11,r8
    10402e8bad43:	41 83 c3 ff                                     	add    r11d,0xffffffff
    10402e8bad47:	0f 85 f3 00 00 00                               	jne    0x10402e8bae40
    10402e8bad4d:	c5 7a 6f 84 1a 70 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0x170]
    10402e8bad56:	c5 7a 6f 8c 1a 30 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x130]
    10402e8bad5f:	4c 8d 82 38 36 00 00                            	lea    r8,[rdx+0x3638]
    10402e8bad66:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    10402e8bad6a:	c4 02 79 18 14 20                               	vbroadcastss xmm10,DWORD PTR [r8+r12*1]
    10402e8bad70:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    10402e8bad75:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    10402e8bad7a:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    10402e8bad7f:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    10402e8bad84:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    10402e8bad89:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    10402e8bad8e:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    10402e8bad93:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    10402e8bad98:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    10402e8bad9d:	c5 7a 6f 8c 1a 60 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x160]
    10402e8bada6:	c5 7a 6f 94 1a 20 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x120]
    10402e8badaf:	4c 8d 82 34 36 00 00                            	lea    r8,[rdx+0x3634]
    10402e8badb6:	c4 02 79 18 24 20                               	vbroadcastss xmm12,DWORD PTR [r8+r12*1]
    10402e8badbc:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    10402e8badc1:	c4 41 48 5f e4                                  	vmaxps xmm12,xmm6,xmm12
    10402e8badc6:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    10402e8badcb:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    10402e8badd0:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    10402e8badd5:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    10402e8badda:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    10402e8baddf:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    10402e8bade4:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    10402e8bade9:	c5 7a 6f 94 1a 50 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x150]
    10402e8badf2:	c5 7a 6f a4 1a 10 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x110]
    10402e8badfb:	4c 8d 82 30 36 00 00                            	lea    r8,[rdx+0x3630]
    10402e8bae02:	c4 02 79 18 2c 20                               	vbroadcastss xmm13,DWORD PTR [r8+r12*1]
    10402e8bae08:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    10402e8bae0d:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    10402e8bae11:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8bae15:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    10402e8bae19:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    10402e8bae1d:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8bae21:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    10402e8bae25:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    10402e8bae29:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8bae2d:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    10402e8bae32:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    10402e8bae36:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    10402e8bae3b:	e9 89 01 00 00                                  	jmp    0x10402e8bafc9
    10402e8bae40:	41 83 fb 02                                     	cmp    r11d,0x2
    10402e8bae44:	0f 84 86 00 00 00                               	je     0x10402e8baed0
    10402e8bae4a:	c5 fa 6f 84 1a 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x130]
    10402e8bae53:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    10402e8bae57:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    10402e8bae5b:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8bae5f:	c5 7a 6f 8c 1a 20 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x120]
    10402e8bae68:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    10402e8bae6d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    10402e8bae72:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    10402e8bae77:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    10402e8bae7e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8bae82:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    10402e8bae88:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    10402e8bae8d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    10402e8bae92:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    10402e8bae97:	c5 7a 6f 94 1a 10 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x110]
    10402e8baea0:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    10402e8baea5:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    10402e8baeaa:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    10402e8baeaf:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    10402e8baeb6:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    10402e8baebc:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    10402e8baec1:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    10402e8baec6:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    10402e8baecb:	e9 58 00 00 00                                  	jmp    0x10402e8baf28
    10402e8baed0:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    10402e8baed5:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    10402e8baed9:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8baedd:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    10402e8baee4:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8baee8:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    10402e8baeee:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    10402e8baef3:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    10402e8baef8:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    10402e8baefd:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    10402e8baf04:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    10402e8baf0a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    10402e8baf0f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    10402e8baf14:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    10402e8baf19:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    10402e8baf1e:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    10402e8baf23:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    10402e8baf28:	4c 8d a2 20 37 00 00                            	lea    r12,[rdx+0x3720]
    10402e8baf2f:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    10402e8baf35:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    10402e8baf3a:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    10402e8baf3e:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    10402e8baf42:	41 83 f8 01                                     	cmp    r8d,0x1
    10402e8baf46:	0f 84 7a 00 00 00                               	je     0x10402e8bafc6
    10402e8baf4c:	c4 a1 7a 10 b4 1a 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdx+r11*1+0x3724]
    10402e8baf56:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    10402e8baf5b:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    10402e8baf61:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    10402e8baf67:	c4 c1 78 2e f4                                  	vucomiss xmm6,xmm12
    10402e8baf6c:	0f 87 09 00 00 00                               	ja     0x10402e8baf7b
    10402e8baf72:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    10402e8baf76:	e9 05 00 00 00                                  	jmp    0x10402e8baf80
    10402e8baf7b:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    10402e8baf80:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    10402e8baf85:	c5 78 2e ee                                     	vucomiss xmm13,xmm6
    10402e8baf89:	0f 87 0a 00 00 00                               	ja     0x10402e8baf99
    10402e8baf8f:	c4 c1 79 28 f2                                  	vmovapd xmm6,xmm10
    10402e8baf94:	e9 05 00 00 00                                  	jmp    0x10402e8baf9e
    10402e8baf99:	c4 c1 79 28 f5                                  	vmovapd xmm6,xmm13
    10402e8baf9e:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    10402e8bafa3:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8bafa7:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8bafab:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    10402e8bafb0:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    10402e8bafb5:	8b c3                                           	mov    eax,ebx
    10402e8bafb7:	49 8b f3                                        	mov    rsi,r11
    10402e8bafba:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    10402e8bafc1:	e9 06 12 00 00                                  	jmp    0x10402e8bc1cc
    10402e8bafc6:	4d 8b e3                                        	mov    r12,r11
    10402e8bafc9:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    10402e8bafd1:	c4 41 48 5f d4                                  	vmaxps xmm10,xmm6,xmm12
    10402e8bafd6:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    10402e8bafdb:	c5 7a 6f a4 1a 40 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x140]
    10402e8bafe4:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    10402e8bafe9:	c4 c1 48 5f f2                                  	vmaxps xmm6,xmm6,xmm10
    10402e8bafee:	c5 a0 5d f6                                     	vminps xmm6,xmm11,xmm6
    10402e8baff2:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8baff6:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e8baffa:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    10402e8bafff:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    10402e8bb004:	8b c3                                           	mov    eax,ebx
    10402e8bb006:	49 8b f4                                        	mov    rsi,r12
    10402e8bb009:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    10402e8bb010:	e9 b7 11 00 00                                  	jmp    0x10402e8bc1cc
    10402e8bb015:	44 8b 7c 3a 38                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x38]
    10402e8bb01a:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    10402e8bb022:	83 7c 3a 38 00                                  	cmp    DWORD PTR [rdx+rdi*1+0x38],0x0
    10402e8bb027:	0f 85 b1 10 00 00                               	jne    0x10402e8bc0de
    10402e8bb02d:	4c 8d 7a 54                                     	lea    r15,[rdx+0x54]
    10402e8bb031:	c4 82 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [r15+r12*1]
    10402e8bb037:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    10402e8bb03b:	c4 c2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [r15+rax*1]
    10402e8bb041:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    10402e8bb045:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    10402e8bb049:	c4 82 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [r15+r9*1]
    10402e8bb04f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    10402e8bb053:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    10402e8bb057:	c5 c8 59 d7                                     	vmulps xmm2,xmm6,xmm7
    10402e8bb05b:	4c 8d 7a 50                                     	lea    r15,[rdx+0x50]
    10402e8bb05f:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    10402e8bb065:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    10402e8bb069:	c4 42 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+rax*1]
    10402e8bb06f:	c4 41 60 59 c0                                  	vmulps xmm8,xmm3,xmm8
    10402e8bb074:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    10402e8bb079:	c4 02 79 18 04 0f                               	vbroadcastss xmm8,DWORD PTR [r15+r9*1]
    10402e8bb07f:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    10402e8bb084:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    10402e8bb089:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    10402e8bb08d:	44 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+rdi*1]
    10402e8bb091:	41 83 ff 01                                     	cmp    r15d,0x1
    10402e8bb095:	0f 85 28 0d 00 00                               	jne    0x10402e8bbdc3
    10402e8bb09b:	8b 4c 3a 28                                     	mov    ecx,DWORD PTR [rdx+rdi*1+0x28]
    10402e8bb09f:	85 c9                                           	test   ecx,ecx
    10402e8bb0a1:	0f 84 1c 0d 00 00                               	je     0x10402e8bbdc3
    10402e8bb0a7:	44 8b 5c 3a 1c                                  	mov    r11d,DWORD PTR [rdx+rdi*1+0x1c]
    10402e8bb0ac:	45 85 db                                        	test   r11d,r11d
    10402e8bb0af:	0f 8e 0e 0d 00 00                               	jle    0x10402e8bbdc3
    10402e8bb0b5:	8b 5c 3a 20                                     	mov    ebx,DWORD PTR [rdx+rdi*1+0x20]
    10402e8bb0b9:	85 db                                           	test   ebx,ebx
    10402e8bb0bb:	0f 8e fc 0c 00 00                               	jle    0x10402e8bbdbd
    10402e8bb0c1:	45 8b d3                                        	mov    r10d,r11d
    10402e8bb0c4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e8bb0c9:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8bb0ce:	44 8b 7c 3a 10                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x10]
    10402e8bb0d3:	33 f6                                           	xor    esi,esi
    10402e8bb0d5:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    10402e8bb0dc:	40 0f 95 c6                                     	setne  sil
    10402e8bb0e0:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    10402e8bb0e7:	41 0f 95 c7                                     	setne  r15b
    10402e8bb0eb:	45 0f b6 ff                                     	movzx  r15d,r15b
    10402e8bb0ef:	44 23 fe                                        	and    r15d,esi
    10402e8bb0f2:	0f 85 0d 00 00 00                               	jne    0x10402e8bb105
    10402e8bb0f8:	c5 d8 5f f7                                     	vmaxps xmm6,xmm4,xmm7
    10402e8bb0fc:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    10402e8bb100:	e9 0a 00 00 00                                  	jmp    0x10402e8bb10f
    10402e8bb105:	c4 e3 79 08 f7 09                               	vroundps xmm6,xmm7,0x9
    10402e8bb10b:	c5 c0 5c f6                                     	vsubps xmm6,xmm7,xmm6
    10402e8bb10f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8bb113:	44 8b d3                                        	mov    r10d,ebx
    10402e8bb116:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    10402e8bb11b:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    10402e8bb120:	8b 74 3a 14                                     	mov    esi,DWORD PTR [rdx+rdi*1+0x14]
    10402e8bb124:	45 33 c9                                        	xor    r9d,r9d
    10402e8bb127:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    10402e8bb12d:	41 0f 95 c1                                     	setne  r9b
    10402e8bb131:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    10402e8bb137:	40 0f 95 c6                                     	setne  sil
    10402e8bb13b:	40 0f b6 f6                                     	movzx  esi,sil
    10402e8bb13f:	41 23 f1                                        	and    esi,r9d
    10402e8bb142:	0f 85 0d 00 00 00                               	jne    0x10402e8bb155
    10402e8bb148:	c5 d8 5f fa                                     	vmaxps xmm7,xmm4,xmm2
    10402e8bb14c:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    10402e8bb150:	e9 0a 00 00 00                                  	jmp    0x10402e8bb15f
    10402e8bb155:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    10402e8bb15b:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    10402e8bb15f:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8bb163:	4c 8b 15 77 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea77]        # 0x10402e8b9be1
    10402e8bb16a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8bb16f:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8bb173:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    10402e8bb177:	44 8b 4c 3a 0c                                  	mov    r9d,DWORD PTR [rdx+rdi*1+0xc]
    10402e8bb17c:	45 33 c9                                        	xor    r9d,r9d
    10402e8bb17f:	81 7c 3a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0xc],0x2600
    10402e8bb187:	41 0f 94 c1                                     	sete   r9b
    10402e8bb18b:	45 85 c9                                        	test   r9d,r9d
    10402e8bb18e:	0f 85 5b 00 00 00                               	jne    0x10402e8bb1ef
    10402e8bb194:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    10402e8bb19a:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x10402e8b9c1d
    10402e8bb1a1:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    10402e8bb1a6:	4c 8b 15 7f ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7f]        # 0x10402e8b9c2c
    10402e8bb1ad:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8bb1b2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8bb1b7:	c4 41 30 c2 cb 01                               	vcmpltps xmm9,xmm9,xmm11
    10402e8bb1bd:	4c 8b 15 1a a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa81a]        # 0x10402e8b59de
    10402e8bb1c4:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    10402e8bb1c9:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    10402e8bb1ce:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    10402e8bb1d4:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    10402e8bb1d8:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    10402e8bb1dd:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    10402e8bb1e1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    10402e8bb1e5:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    10402e8bb1ea:	e9 49 00 00 00                                  	jmp    0x10402e8bb238
    10402e8bb1ef:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    10402e8bb1f5:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x10402e8b9c1d
    10402e8bb1fc:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    10402e8bb201:	4c 8b 15 24 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea24]        # 0x10402e8b9c2c
    10402e8bb208:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8bb20d:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8bb212:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    10402e8bb218:	4c 8b 15 bf a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa7bf]        # 0x10402e8b59de
    10402e8bb21f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    10402e8bb224:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    10402e8bb229:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    10402e8bb22f:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    10402e8bb233:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    10402e8bb238:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    10402e8bb23e:	4c 8b 15 99 a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa799]        # 0x10402e8b59de
    10402e8bb245:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    10402e8bb24b:	c4 c1 38 54 df                                  	vandps xmm3,xmm8,xmm15
    10402e8bb250:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    10402e8bb256:	c5 fa 5b db                                     	vcvttps2dq xmm3,xmm3
    10402e8bb25a:	c4 c1 61 ef df                                  	vpxor  xmm3,xmm3,xmm15
    10402e8bb25f:	4c 8b 15 86 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea86]        # 0x10402e8b9cec
    10402e8bb266:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e8bb26b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    10402e8bb26f:	4c 8b 15 a7 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a7]        # 0x10402e8b9c1d
    10402e8bb276:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    10402e8bb27b:	c4 c1 50 c2 eb 01                               	vcmpltps xmm5,xmm5,xmm11
    10402e8bb281:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    10402e8bb285:	c5 e1 db dd                                     	vpand  xmm3,xmm3,xmm5
    10402e8bb289:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    10402e8bb28e:	41 8d 43 ff                                     	lea    eax,[r11-0x1]
    10402e8bb292:	c5 f9 6e e8                                     	vmovd  xmm5,eax
    10402e8bb296:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    10402e8bb29b:	8b 44 3a 2c                                     	mov    eax,DWORD PTR [rdx+rdi*1+0x2c]
    10402e8bb29f:	c5 78 10 95 40 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2c0]
    10402e8bb2a7:	c4 42 61 3d e2                                  	vpmaxsd xmm12,xmm3,xmm10
    10402e8bb2ac:	c4 62 19 39 e5                                  	vpminsd xmm12,xmm12,xmm5
    10402e8bb2b1:	45 85 ff                                        	test   r15d,r15d
    10402e8bb2b4:	0f 84 53 00 00 00                               	je     0x10402e8bb30d
    10402e8bb2ba:	c5 79 6e e0                                     	vmovd  xmm12,eax
    10402e8bb2be:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8bb2c3:	c4 41 61 db e4                                  	vpand  xmm12,xmm3,xmm12
    10402e8bb2c8:	85 c0                                           	test   eax,eax
    10402e8bb2ca:	0f 85 3d 00 00 00                               	jne    0x10402e8bb30d
    10402e8bb2d0:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    10402e8bb2d5:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    10402e8bb2da:	c5 61 66 ed                                     	vpcmpgtd xmm13,xmm3,xmm5
    10402e8bb2de:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    10402e8bb2e3:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8bb2e8:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    10402e8bb2ed:	c5 29 66 f3                                     	vpcmpgtd xmm14,xmm10,xmm3
    10402e8bb2f1:	c4 41 09 df fd                                  	vpandn xmm15,xmm14,xmm13
    10402e8bb2f6:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    10402e8bb2fb:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    10402e8bb300:	c4 41 61 fe e4                                  	vpaddd xmm12,xmm3,xmm12
    10402e8bb305:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bb30d:	c5 31 df fc                                     	vpandn xmm15,xmm9,xmm4
    10402e8bb311:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    10402e8bb316:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    10402e8bb31b:	44 8d 63 ff                                     	lea    r12d,[rbx-0x1]
    10402e8bb31f:	c4 c1 79 6e d4                                  	vmovd  xmm2,r12d
    10402e8bb324:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    10402e8bb329:	44 8b 64 3a 30                                  	mov    r12d,DWORD PTR [rdx+rdi*1+0x30]
    10402e8bb32e:	c4 42 31 3d ea                                  	vpmaxsd xmm13,xmm9,xmm10
    10402e8bb333:	c4 62 11 39 ea                                  	vpminsd xmm13,xmm13,xmm2
    10402e8bb338:	85 f6                                           	test   esi,esi
    10402e8bb33a:	0f 84 4c 00 00 00                               	je     0x10402e8bb38c
    10402e8bb340:	c4 41 79 6e ec                                  	vmovd  xmm13,r12d
    10402e8bb345:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8bb34a:	c4 41 11 db e9                                  	vpand  xmm13,xmm13,xmm9
    10402e8bb34f:	45 85 e4                                        	test   r12d,r12d
    10402e8bb352:	0f 85 34 00 00 00                               	jne    0x10402e8bb38c
    10402e8bb358:	c5 79 6e eb                                     	vmovd  xmm13,ebx
    10402e8bb35c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8bb361:	c5 31 66 f2                                     	vpcmpgtd xmm14,xmm9,xmm2
    10402e8bb365:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    10402e8bb36a:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8bb36f:	c4 42 09 0a f7                                  	vpsignd xmm14,xmm14,xmm15
    10402e8bb374:	c4 c1 29 66 c9                                  	vpcmpgtd xmm1,xmm10,xmm9
    10402e8bb379:	c4 41 71 df fe                                  	vpandn xmm15,xmm1,xmm14
    10402e8bb37e:	c5 11 db e9                                     	vpand  xmm13,xmm13,xmm1
    10402e8bb382:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    10402e8bb387:	c4 41 31 fe ed                                  	vpaddd xmm13,xmm9,xmm13
    10402e8bb38c:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    10402e8bb391:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    10402e8bb396:	c4 42 11 40 ee                                  	vpmulld xmm13,xmm13,xmm14
    10402e8bb39b:	c4 c1 11 fe cc                                  	vpaddd xmm1,xmm13,xmm12
    10402e8bb3a0:	c4 c3 79 16 cb 03                               	vpextrd r11d,xmm1,0x3
    10402e8bb3a6:	c4 e3 79 16 cf 02                               	vpextrd edi,xmm1,0x2
    10402e8bb3ac:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    10402e8bb3b3:	c4 c3 79 16 cb 01                               	vpextrd r11d,xmm1,0x1
    10402e8bb3b9:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    10402e8bb3c0:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    10402e8bb3c4:	45 85 c9                                        	test   r9d,r9d
    10402e8bb3c7:	0f 85 19 08 00 00                               	jne    0x10402e8bbbe6
    10402e8bb3cd:	c5 f8 10 8d 10 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x3f0]
    10402e8bb3d5:	c5 e1 fe d9                                     	vpaddd xmm3,xmm3,xmm1
    10402e8bb3d9:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    10402e8bb3e1:	c4 c2 61 3d f2                                  	vpmaxsd xmm6,xmm3,xmm10
    10402e8bb3e6:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    10402e8bb3eb:	45 85 ff                                        	test   r15d,r15d
    10402e8bb3ee:	0f 84 3d 00 00 00                               	je     0x10402e8bb431
    10402e8bb3f4:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    10402e8bb3f8:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e8bb3fd:	c5 e1 db f6                                     	vpand  xmm6,xmm3,xmm6
    10402e8bb401:	85 c0                                           	test   eax,eax
    10402e8bb403:	0f 85 28 00 00 00                               	jne    0x10402e8bb431
    10402e8bb409:	c5 e1 66 f5                                     	vpcmpgtd xmm6,xmm3,xmm5
    10402e8bb40d:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    10402e8bb412:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8bb417:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    10402e8bb41c:	c5 a9 66 eb                                     	vpcmpgtd xmm5,xmm10,xmm3
    10402e8bb420:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    10402e8bb424:	c5 89 db f5                                     	vpand  xmm6,xmm14,xmm5
    10402e8bb428:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8bb42d:	c5 e1 fe f6                                     	vpaddd xmm6,xmm3,xmm6
    10402e8bb431:	c5 31 fe c9                                     	vpaddd xmm9,xmm9,xmm1
    10402e8bb435:	c4 c2 31 3d da                                  	vpmaxsd xmm3,xmm9,xmm10
    10402e8bb43a:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    10402e8bb43f:	85 f6                                           	test   esi,esi
    10402e8bb441:	0f 84 49 00 00 00                               	je     0x10402e8bb490
    10402e8bb447:	c4 c1 79 6e dc                                  	vmovd  xmm3,r12d
    10402e8bb44c:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8bb451:	c4 c1 61 db d9                                  	vpand  xmm3,xmm3,xmm9
    10402e8bb456:	45 85 e4                                        	test   r12d,r12d
    10402e8bb459:	0f 85 31 00 00 00                               	jne    0x10402e8bb490
    10402e8bb45f:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    10402e8bb463:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e8bb468:	c5 b1 66 d2                                     	vpcmpgtd xmm2,xmm9,xmm2
    10402e8bb46c:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    10402e8bb470:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8bb475:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    10402e8bb47a:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    10402e8bb47f:	c5 51 df fa                                     	vpandn xmm15,xmm5,xmm2
    10402e8bb483:	c5 e1 db d5                                     	vpand  xmm2,xmm3,xmm5
    10402e8bb487:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    10402e8bb48c:	c5 b1 fe da                                     	vpaddd xmm3,xmm9,xmm2
    10402e8bb490:	c4 42 61 40 ce                                  	vpmulld xmm9,xmm3,xmm14
    10402e8bb495:	c4 41 31 fe f4                                  	vpaddd xmm14,xmm9,xmm12
    10402e8bb49a:	41 83 f8 0f                                     	cmp    r8d,0xf
    10402e8bb49e:	0f 85 18 00 00 00                               	jne    0x10402e8bb4bc
    10402e8bb4a4:	c5 19 fe e1                                     	vpaddd xmm12,xmm12,xmm1
    10402e8bb4a8:	c4 41 49 76 e4                                  	vpcmpeqd xmm12,xmm6,xmm12
    10402e8bb4ad:	c4 41 78 50 e4                                  	vmovmskps r12d,xmm12
    10402e8bb4b2:	41 83 fc 0f                                     	cmp    r12d,0xf
    10402e8bb4b6:	0f 84 24 03 00 00                               	je     0x10402e8bb7e0
    10402e8bb4bc:	4d 8b e0                                        	mov    r12,r8
    10402e8bb4bf:	41 83 e4 08                                     	and    r12d,0x8
    10402e8bb4c3:	4d 8b f8                                        	mov    r15,r8
    10402e8bb4c6:	41 83 e7 04                                     	and    r15d,0x4
    10402e8bb4ca:	49 8b c0                                        	mov    rax,r8
    10402e8bb4cd:	83 e0 02                                        	and    eax,0x2
    10402e8bb4d0:	49 8b d8                                        	mov    rbx,r8
    10402e8bb4d3:	83 e3 01                                        	and    ebx,0x1
    10402e8bb4d6:	41 83 f8 0f                                     	cmp    r8d,0xf
    10402e8bb4da:	0f 84 6c 00 00 00                               	je     0x10402e8bb54c
    10402e8bb4e0:	85 db                                           	test   ebx,ebx
    10402e8bb4e2:	0f 85 07 00 00 00                               	jne    0x10402e8bb4ef
    10402e8bb4e8:	33 ff                                           	xor    edi,edi
    10402e8bb4ea:	e9 06 00 00 00                                  	jmp    0x10402e8bb4f5
    10402e8bb4ef:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb4f2:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bb4f5:	85 c0                                           	test   eax,eax
    10402e8bb4f7:	0f 85 08 00 00 00                               	jne    0x10402e8bb505
    10402e8bb4fd:	45 33 db                                        	xor    r11d,r11d
    10402e8bb500:	e9 08 00 00 00                                  	jmp    0x10402e8bb50d
    10402e8bb505:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    10402e8bb509:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8bb50d:	45 85 ff                                        	test   r15d,r15d
    10402e8bb510:	0f 85 08 00 00 00                               	jne    0x10402e8bb51e
    10402e8bb516:	45 33 ff                                        	xor    r15d,r15d
    10402e8bb519:	e9 0f 00 00 00                                  	jmp    0x10402e8bb52d
    10402e8bb51e:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    10402e8bb525:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    10402e8bb529:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    10402e8bb52d:	45 85 e4                                        	test   r12d,r12d
    10402e8bb530:	0f 85 33 00 00 00                               	jne    0x10402e8bb569
    10402e8bb536:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    10402e8bb53b:	c5 79 6e ef                                     	vmovd  xmm13,edi
    10402e8bb53f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8bb544:	45 33 e4                                        	xor    r12d,r12d
    10402e8bb547:	e9 43 00 00 00                                  	jmp    0x10402e8bb58f
    10402e8bb54c:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    10402e8bb550:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8bb554:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb557:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bb55a:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    10402e8bb561:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    10402e8bb565:	46 8b 3c 22                                     	mov    r15d,DWORD PTR [rdx+r12*1]
    10402e8bb569:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    10402e8bb56f:	44 8d 24 81                                     	lea    r12d,[rcx+rax*4]
    10402e8bb573:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    10402e8bb577:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    10402e8bb57c:	c5 79 6e ef                                     	vmovd  xmm13,edi
    10402e8bb580:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8bb585:	41 83 f8 0f                                     	cmp    r8d,0xf
    10402e8bb589:	0f 84 66 00 00 00                               	je     0x10402e8bb5f5
    10402e8bb58f:	41 f6 c0 01                                     	test   r8b,0x1
    10402e8bb593:	0f 85 07 00 00 00                               	jne    0x10402e8bb5a0
    10402e8bb599:	33 ff                                           	xor    edi,edi
    10402e8bb59b:	e9 0a 00 00 00                                  	jmp    0x10402e8bb5aa
    10402e8bb5a0:	c5 79 7e e7                                     	vmovd  edi,xmm12
    10402e8bb5a4:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb5a7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bb5aa:	41 f6 c0 02                                     	test   r8b,0x2
    10402e8bb5ae:	0f 85 07 00 00 00                               	jne    0x10402e8bb5bb
    10402e8bb5b4:	33 c0                                           	xor    eax,eax
    10402e8bb5b6:	e9 0c 00 00 00                                  	jmp    0x10402e8bb5c7
    10402e8bb5bb:	c4 63 79 16 e0 01                               	vpextrd eax,xmm12,0x1
    10402e8bb5c1:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    10402e8bb5c4:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    10402e8bb5c7:	41 f6 c0 04                                     	test   r8b,0x4
    10402e8bb5cb:	0f 85 07 00 00 00                               	jne    0x10402e8bb5d8
    10402e8bb5d1:	33 db                                           	xor    ebx,ebx
    10402e8bb5d3:	e9 0c 00 00 00                                  	jmp    0x10402e8bb5e4
    10402e8bb5d8:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    10402e8bb5de:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    10402e8bb5e1:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    10402e8bb5e4:	41 f6 c0 08                                     	test   r8b,0x8
    10402e8bb5e8:	0f 85 29 00 00 00                               	jne    0x10402e8bb617
    10402e8bb5ee:	33 f6                                           	xor    esi,esi
    10402e8bb5f0:	e9 2e 00 00 00                                  	jmp    0x10402e8bb623
    10402e8bb5f5:	c4 63 79 16 e7 01                               	vpextrd edi,xmm12,0x1
    10402e8bb5fb:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb5fe:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    10402e8bb601:	c5 79 7e e7                                     	vmovd  edi,xmm12
    10402e8bb605:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb608:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bb60b:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    10402e8bb611:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    10402e8bb614:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    10402e8bb617:	c4 63 79 16 e6 03                               	vpextrd esi,xmm12,0x3
    10402e8bb61d:	8d 34 b1                                        	lea    esi,[rcx+rsi*4]
    10402e8bb620:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    10402e8bb623:	c4 43 11 22 e3 01                               	vpinsrd xmm12,xmm13,r11d,0x1
    10402e8bb629:	c5 79 6e ef                                     	vmovd  xmm13,edi
    10402e8bb62d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8bb632:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    10402e8bb638:	41 83 f8 0f                                     	cmp    r8d,0xf
    10402e8bb63c:	0f 84 6a 00 00 00                               	je     0x10402e8bb6ac
    10402e8bb642:	41 f6 c0 01                                     	test   r8b,0x1
    10402e8bb646:	0f 85 07 00 00 00                               	jne    0x10402e8bb653
    10402e8bb64c:	33 ff                                           	xor    edi,edi
    10402e8bb64e:	e9 0a 00 00 00                                  	jmp    0x10402e8bb65d
    10402e8bb653:	c5 79 7e f7                                     	vmovd  edi,xmm14
    10402e8bb657:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb65a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bb65d:	41 f6 c0 02                                     	test   r8b,0x2
    10402e8bb661:	0f 85 08 00 00 00                               	jne    0x10402e8bb66f
    10402e8bb667:	45 33 db                                        	xor    r11d,r11d
    10402e8bb66a:	e9 0e 00 00 00                                  	jmp    0x10402e8bb67d
    10402e8bb66f:	c4 43 79 16 f3 01                               	vpextrd r11d,xmm14,0x1
    10402e8bb675:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    10402e8bb679:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8bb67d:	41 f6 c0 04                                     	test   r8b,0x4
    10402e8bb681:	0f 85 07 00 00 00                               	jne    0x10402e8bb68e
    10402e8bb687:	33 c0                                           	xor    eax,eax
    10402e8bb689:	e9 0c 00 00 00                                  	jmp    0x10402e8bb69a
    10402e8bb68e:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    10402e8bb694:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    10402e8bb697:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    10402e8bb69a:	41 f6 c0 08                                     	test   r8b,0x8
    10402e8bb69e:	0f 85 2b 00 00 00                               	jne    0x10402e8bb6cf
    10402e8bb6a4:	45 33 c9                                        	xor    r9d,r9d
    10402e8bb6a7:	e9 31 00 00 00                                  	jmp    0x10402e8bb6dd
    10402e8bb6ac:	c4 63 79 16 f7 01                               	vpextrd edi,xmm14,0x1
    10402e8bb6b2:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb6b5:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    10402e8bb6b9:	c5 79 7e f7                                     	vmovd  edi,xmm14
    10402e8bb6bd:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb6c0:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bb6c3:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    10402e8bb6c9:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    10402e8bb6cc:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    10402e8bb6cf:	c4 43 79 16 f1 03                               	vpextrd r9d,xmm14,0x3
    10402e8bb6d5:	46 8d 0c 89                                     	lea    r9d,[rcx+r9*4]
    10402e8bb6d9:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    10402e8bb6dd:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    10402e8bb6e3:	c4 63 11 22 eb 02                               	vpinsrd xmm13,xmm13,ebx,0x2
    10402e8bb6e9:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    10402e8bb6ed:	c5 79 6e cf                                     	vmovd  xmm9,edi
    10402e8bb6f1:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    10402e8bb6f6:	c4 43 31 22 cb 01                               	vpinsrd xmm9,xmm9,r11d,0x1
    10402e8bb6fc:	c4 63 31 22 c8 02                               	vpinsrd xmm9,xmm9,eax,0x2
    10402e8bb702:	41 83 f8 0f                                     	cmp    r8d,0xf
    10402e8bb706:	0f 84 6c 00 00 00                               	je     0x10402e8bb778
    10402e8bb70c:	41 f6 c0 01                                     	test   r8b,0x1
    10402e8bb710:	0f 85 07 00 00 00                               	jne    0x10402e8bb71d
    10402e8bb716:	33 ff                                           	xor    edi,edi
    10402e8bb718:	e9 0a 00 00 00                                  	jmp    0x10402e8bb727
    10402e8bb71d:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    10402e8bb721:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb724:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bb727:	41 f6 c0 02                                     	test   r8b,0x2
    10402e8bb72b:	0f 85 08 00 00 00                               	jne    0x10402e8bb739
    10402e8bb731:	45 33 db                                        	xor    r11d,r11d
    10402e8bb734:	e9 0e 00 00 00                                  	jmp    0x10402e8bb747
    10402e8bb739:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    10402e8bb73f:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    10402e8bb743:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8bb747:	41 f6 c0 04                                     	test   r8b,0x4
    10402e8bb74b:	0f 85 08 00 00 00                               	jne    0x10402e8bb759
    10402e8bb751:	45 33 ff                                        	xor    r15d,r15d
    10402e8bb754:	e9 0e 00 00 00                                  	jmp    0x10402e8bb767
    10402e8bb759:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    10402e8bb75f:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    10402e8bb763:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    10402e8bb767:	41 f6 c0 08                                     	test   r8b,0x8
    10402e8bb76b:	0f 85 2c 00 00 00                               	jne    0x10402e8bb79d
    10402e8bb771:	33 c0                                           	xor    eax,eax
    10402e8bb773:	e9 31 00 00 00                                  	jmp    0x10402e8bb7a9
    10402e8bb778:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    10402e8bb77e:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb781:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    10402e8bb785:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    10402e8bb789:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb78c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bb78f:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    10402e8bb795:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    10402e8bb799:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    10402e8bb79d:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    10402e8bb7a3:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    10402e8bb7a6:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    10402e8bb7a9:	c4 c3 19 22 f4 03                               	vpinsrd xmm6,xmm12,r12d,0x3
    10402e8bb7af:	c4 63 11 22 e6 03                               	vpinsrd xmm12,xmm13,esi,0x3
    10402e8bb7b5:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    10402e8bb7bb:	c5 79 6e ef                                     	vmovd  xmm13,edi
    10402e8bb7bf:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    10402e8bb7c4:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    10402e8bb7ca:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    10402e8bb7d0:	c4 63 11 22 e8 03                               	vpinsrd xmm13,xmm13,eax,0x3
    10402e8bb7d6:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    10402e8bb7db:	e9 95 00 00 00                                  	jmp    0x10402e8bb875
    10402e8bb7e0:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bb7e3:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    10402e8bb7e8:	42 8d 3c 99                                     	lea    edi,[rcx+r11*4]
    10402e8bb7ec:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    10402e8bb7f1:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    10402e8bb7f6:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    10402e8bb7fd:	42 8d 3c a1                                     	lea    edi,[rcx+r12*4]
    10402e8bb801:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    10402e8bb806:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    10402e8bb80d:	42 8d 3c b9                                     	lea    edi,[rcx+r15*4]
    10402e8bb811:	c5 7b 10 24 3a                                  	vmovsd xmm12,QWORD PTR [rdx+rdi*1]
    10402e8bb816:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    10402e8bb81b:	c4 41 48 c6 e1 dd                               	vshufps xmm12,xmm6,xmm9,0xdd
    10402e8bb821:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    10402e8bb827:	c4 c1 31 72 f6 02                               	vpslld xmm9,xmm14,0x2
    10402e8bb82d:	c5 79 7e cf                                     	vmovd  edi,xmm9
    10402e8bb831:	03 f9                                           	add    edi,ecx
    10402e8bb833:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    10402e8bb838:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    10402e8bb83e:	03 f9                                           	add    edi,ecx
    10402e8bb840:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    10402e8bb845:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    10402e8bb84a:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    10402e8bb850:	03 f9                                           	add    edi,ecx
    10402e8bb852:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    10402e8bb857:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    10402e8bb85d:	03 f9                                           	add    edi,ecx
    10402e8bb85f:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    10402e8bb864:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    10402e8bb869:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    10402e8bb86f:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    10402e8bb875:	c5 91 72 d6 18                                  	vpsrld xmm13,xmm6,0x18
    10402e8bb87a:	c4 c1 69 72 d4 18                               	vpsrld xmm2,xmm12,0x18
    10402e8bb880:	c5 11 6b ea                                     	vpackssdw xmm13,xmm13,xmm2
    10402e8bb884:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    10402e8bb888:	c4 c3 69 0f dd 08                               	vpalignr xmm3,xmm2,xmm13,0x8
    10402e8bb88e:	c5 11 61 eb                                     	vpunpcklwd xmm13,xmm13,xmm3
    10402e8bb892:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    10402e8bb89c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8bb8a1:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e8bb8a5:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    10402e8bb8aa:	c5 78 10 85 50 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2b0]
    10402e8bb8b2:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    10402e8bb8b7:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    10402e8bb8c1:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8bb8c6:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e8bb8ca:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    10402e8bb8ce:	4c 8b 15 09 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa109]        # 0x10402e8b59de
    10402e8bb8d5:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8bb8da:	c4 c1 78 54 cf                                  	vandps xmm1,xmm0,xmm15
    10402e8bb8df:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8bb8e5:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    10402e8bb8e9:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    10402e8bb8ee:	4c 8b 15 28 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe328]        # 0x10402e8b9c1d
    10402e8bb8f5:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8bb8fa:	c4 c1 78 c2 c3 01                               	vcmpltps xmm0,xmm0,xmm11
    10402e8bb900:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    10402e8bb904:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    10402e8bb908:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8bb90d:	c5 e1 fa c8                                     	vpsubd xmm1,xmm3,xmm0
    10402e8bb911:	c5 f1 6b c0                                     	vpackssdw xmm0,xmm1,xmm0
    10402e8bb915:	c4 e3 69 0f c8 08                               	vpalignr xmm1,xmm2,xmm0,0x8
    10402e8bb91b:	c5 f9 61 c1                                     	vpunpcklwd xmm0,xmm0,xmm1
    10402e8bb91f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    10402e8bb923:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    10402e8bb92b:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    10402e8bb92f:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    10402e8bb934:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    10402e8bb938:	4c 8b 15 9f a0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa09f]        # 0x10402e8b59de
    10402e8bb93f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    10402e8bb944:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    10402e8bb949:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    10402e8bb94f:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    10402e8bb953:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    10402e8bb958:	4c 8b 15 be e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe2be]        # 0x10402e8b9c1d
    10402e8bb95f:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    10402e8bb964:	c4 c1 40 c2 fb 01                               	vcmpltps xmm7,xmm7,xmm11
    10402e8bb96a:	c5 41 df fc                                     	vpandn xmm15,xmm7,xmm4
    10402e8bb96e:	c5 f1 db ff                                     	vpand  xmm7,xmm1,xmm7
    10402e8bb972:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8bb977:	c5 61 fa df                                     	vpsubd xmm11,xmm3,xmm7
    10402e8bb97b:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    10402e8bb980:	c4 c1 71 72 d1 18                               	vpsrld xmm1,xmm9,0x18
    10402e8bb986:	c4 c1 61 72 d6 18                               	vpsrld xmm3,xmm14,0x18
    10402e8bb98c:	c5 f1 6b cb                                     	vpackssdw xmm1,xmm1,xmm3
    10402e8bb990:	c4 e3 69 0f d9 08                               	vpalignr xmm3,xmm2,xmm1,0x8
    10402e8bb996:	c5 f1 61 cb                                     	vpunpcklwd xmm1,xmm1,xmm3
    10402e8bb99a:	c5 f1 f5 c8                                     	vpmaddwd xmm1,xmm1,xmm0
    10402e8bb99e:	c4 e2 71 40 cf                                  	vpmulld xmm1,xmm1,xmm7
    10402e8bb9a3:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    10402e8bb9a7:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    10402e8bb9b1:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    10402e8bb9b6:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    10402e8bb9ba:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    10402e8bb9be:	c4 c1 11 72 d5 10                               	vpsrld xmm13,xmm13,0x10
    10402e8bb9c4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8bb9c9:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    10402e8bb9cf:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    10402e8bb9d4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8bb9d9:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    10402e8bb9df:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    10402e8bb9e4:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    10402e8bb9e9:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    10402e8bb9ee:	4c 8b 15 3d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea3d]        # 0x10402e8ba432
    10402e8bb9f5:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8bb9fa:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e8bb9fe:	c5 10 59 eb                                     	vmulps xmm13,xmm13,xmm3
    10402e8bba02:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    10402e8bba05:	c5 7a 7f ac 02 c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1c0],xmm13
    10402e8bba0e:	c5 91 72 d6 10                                  	vpsrld xmm13,xmm6,0x10
    10402e8bba13:	4c 8b 15 30 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe930]        # 0x10402e8ba34a
    10402e8bba1a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e8bba1f:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    10402e8bba23:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    10402e8bba27:	c4 c1 51 72 d4 10                               	vpsrld xmm5,xmm12,0x10
    10402e8bba2d:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8bba31:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    10402e8bba35:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    10402e8bba3b:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    10402e8bba3f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    10402e8bba43:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    10402e8bba48:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    10402e8bba4e:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8bba52:	c4 c1 39 72 d6 10                               	vpsrld xmm8,xmm14,0x10
    10402e8bba58:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    10402e8bba5c:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    10402e8bba61:	c4 c3 69 0f e8 08                               	vpalignr xmm5,xmm2,xmm8,0x8
    10402e8bba67:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    10402e8bba6b:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    10402e8bba6f:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    10402e8bba74:	c4 41 11 fe c0                                  	vpaddd xmm8,xmm13,xmm8
    10402e8bba79:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    10402e8bba7d:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    10402e8bba83:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8bba88:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8bba8e:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8bba93:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8bba98:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8bba9e:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8bbaa3:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8bbaa8:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8bbaad:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    10402e8bbab1:	c5 7a 7f 84 02 b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1b0],xmm8
    10402e8bbaba:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    10402e8bbabf:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    10402e8bbac3:	c4 c1 11 72 d4 08                               	vpsrld xmm13,xmm12,0x8
    10402e8bbac9:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    10402e8bbacd:	c4 41 39 6b c5                                  	vpackssdw xmm8,xmm8,xmm13
    10402e8bbad2:	c4 43 69 0f e8 08                               	vpalignr xmm13,xmm2,xmm8,0x8
    10402e8bbad8:	c4 41 39 61 c5                                  	vpunpcklwd xmm8,xmm8,xmm13
    10402e8bbadd:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    10402e8bbae1:	c4 42 39 40 c3                                  	vpmulld xmm8,xmm8,xmm11
    10402e8bbae6:	c4 c1 11 72 d1 08                               	vpsrld xmm13,xmm9,0x8
    10402e8bbaec:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    10402e8bbaf0:	c4 c1 51 72 d6 08                               	vpsrld xmm5,xmm14,0x8
    10402e8bbaf6:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    10402e8bbafa:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    10402e8bbafe:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    10402e8bbb04:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    10402e8bbb08:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    10402e8bbb0c:	c4 62 11 40 ef                                  	vpmulld xmm13,xmm13,xmm7
    10402e8bbb11:	c4 41 39 fe c5                                  	vpaddd xmm8,xmm8,xmm13
    10402e8bbb16:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    10402e8bbb1a:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    10402e8bbb20:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8bbb25:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8bbb2b:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8bbb30:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8bbb35:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8bbb3b:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8bbb40:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8bbb45:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8bbb4a:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    10402e8bbb4e:	c5 7a 7f 84 02 a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1a0],xmm8
    10402e8bbb57:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    10402e8bbb5b:	c5 19 db c4                                     	vpand  xmm8,xmm12,xmm4
    10402e8bbb5f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    10402e8bbb64:	c4 63 69 0f c6 08                               	vpalignr xmm8,xmm2,xmm6,0x8
    10402e8bbb6a:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    10402e8bbb6f:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    10402e8bbb73:	c4 c2 49 40 f3                                  	vpmulld xmm6,xmm6,xmm11
    10402e8bbb78:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    10402e8bbb7c:	c5 09 db cc                                     	vpand  xmm9,xmm14,xmm4
    10402e8bbb80:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    10402e8bbb85:	c4 43 69 0f c8 08                               	vpalignr xmm9,xmm2,xmm8,0x8
    10402e8bbb8b:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    10402e8bbb90:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    10402e8bbb94:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    10402e8bbb99:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    10402e8bbb9d:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    10402e8bbba1:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    10402e8bbba6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8bbbab:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8bbbb1:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8bbbb6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8bbbbb:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8bbbc0:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8bbbc4:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8bbbc8:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8bbbcd:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    10402e8bbbd1:	c5 fa 7f 84 02 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x190],xmm0
    10402e8bbbda:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8bbbe1:	e9 53 05 00 00                                  	jmp    0x10402e8bc139
    10402e8bbbe6:	41 83 f8 0f                                     	cmp    r8d,0xf
    10402e8bbbea:	0f 84 64 00 00 00                               	je     0x10402e8bbc54
    10402e8bbbf0:	41 f6 c0 01                                     	test   r8b,0x1
    10402e8bbbf4:	0f 85 07 00 00 00                               	jne    0x10402e8bbc01
    10402e8bbbfa:	33 ff                                           	xor    edi,edi
    10402e8bbbfc:	e9 06 00 00 00                                  	jmp    0x10402e8bbc07
    10402e8bbc01:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bbc04:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bbc07:	41 f6 c0 02                                     	test   r8b,0x2
    10402e8bbc0b:	0f 85 08 00 00 00                               	jne    0x10402e8bbc19
    10402e8bbc11:	45 33 db                                        	xor    r11d,r11d
    10402e8bbc14:	e9 08 00 00 00                                  	jmp    0x10402e8bbc21
    10402e8bbc19:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    10402e8bbc1d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8bbc21:	41 f6 c0 04                                     	test   r8b,0x4
    10402e8bbc25:	0f 85 08 00 00 00                               	jne    0x10402e8bbc33
    10402e8bbc2b:	45 33 e4                                        	xor    r12d,r12d
    10402e8bbc2e:	e9 0f 00 00 00                                  	jmp    0x10402e8bbc42
    10402e8bbc33:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    10402e8bbc3a:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    10402e8bbc3e:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    10402e8bbc42:	41 f6 c0 08                                     	test   r8b,0x8
    10402e8bbc46:	0f 85 25 00 00 00                               	jne    0x10402e8bbc71
    10402e8bbc4c:	45 33 ff                                        	xor    r15d,r15d
    10402e8bbc4f:	e9 2c 00 00 00                                  	jmp    0x10402e8bbc80
    10402e8bbc54:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    10402e8bbc5b:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    10402e8bbc5f:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    10402e8bbc63:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    10402e8bbc67:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    10402e8bbc6b:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    10402e8bbc6e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    10402e8bbc71:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    10402e8bbc78:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    10402e8bbc7c:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    10402e8bbc80:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    10402e8bbc84:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8bbc89:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    10402e8bbc8f:	c4 c3 79 22 c4 02                               	vpinsrd xmm0,xmm0,r12d,0x2
    10402e8bbc95:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    10402e8bbc9b:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    10402e8bbca0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8bbca5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e8bbcab:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e8bbcb0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8bbcb5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e8bbcba:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8bbcbe:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e8bbcc2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e8bbcc7:	4c 8b 15 64 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe764]        # 0x10402e8ba432
    10402e8bbcce:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8bbcd3:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8bbcd7:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8bbcdb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8bbcde:	c5 fa 7f b4 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm6
    10402e8bbce7:	4c 8b 15 5c e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe65c]        # 0x10402e8ba34a
    10402e8bbcee:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    10402e8bbcf3:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    10402e8bbcf7:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    10402e8bbcfb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8bbd00:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8bbd06:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8bbd0b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8bbd10:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8bbd16:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8bbd1b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8bbd20:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8bbd25:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    10402e8bbd29:	c5 7a 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm8
    10402e8bbd32:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    10402e8bbd37:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    10402e8bbd3b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8bbd40:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    10402e8bbd46:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    10402e8bbd4b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8bbd50:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    10402e8bbd56:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    10402e8bbd5b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    10402e8bbd60:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    10402e8bbd65:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    10402e8bbd69:	c5 7a 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm8
    10402e8bbd72:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    10402e8bbd77:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    10402e8bbd7b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8bbd80:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8bbd86:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8bbd8b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8bbd90:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e8bbd95:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e8bbd99:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e8bbd9d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e8bbda2:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    10402e8bbda6:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    10402e8bbdaf:	8b c7                                           	mov    eax,edi
    10402e8bbdb1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8bbdb8:	e9 7c 03 00 00                                  	jmp    0x10402e8bc139
    10402e8bbdbd:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    10402e8bbdc3:	4c 8d 5a 58                                     	lea    r11,[rdx+0x58]
    10402e8bbdc7:	c4 02 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [r11+r12*1]
    10402e8bbdcd:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    10402e8bbdd2:	c4 42 79 18 1c 03                               	vbroadcastss xmm11,DWORD PTR [r11+rax*1]
    10402e8bbdd8:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    10402e8bbddd:	c4 41 38 58 c3                                  	vaddps xmm8,xmm8,xmm11
    10402e8bbde2:	c4 02 79 18 1c 0b                               	vbroadcastss xmm11,DWORD PTR [r11+r9*1]
    10402e8bbde8:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    10402e8bbded:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    10402e8bbdf2:	c4 c1 48 59 d8                                  	vmulps xmm3,xmm6,xmm8
    10402e8bbdf7:	41 83 ff 03                                     	cmp    r15d,0x3
    10402e8bbdfb:	0f 84 a5 02 00 00                               	je     0x10402e8bc0a6
    10402e8bbe01:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8bbe05:	c4 a1 7a 7f 84 1a c0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xc0],xmm0
    10402e8bbe0f:	c4 a1 7a 7f 84 1a b0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xb0],xmm0
    10402e8bbe19:	c4 a1 7a 7f 84 1a a0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xa0],xmm0
    10402e8bbe23:	c4 a1 7a 7f bc 1a f0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1f0],xmm7
    10402e8bbe2d:	c4 a1 7a 7f 94 1a e0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1e0],xmm2
    10402e8bbe37:	c4 a1 7a 7f 9c 1a d0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1d0],xmm3
    10402e8bbe41:	c4 a1 7a 7f 84 1a 90 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x90],xmm0
    10402e8bbe4b:	4c 8b ff                                        	mov    r15,rdi
    10402e8bbe4e:	33 ff                                           	xor    edi,edi
    10402e8bbe50:	e9 41 00 00 00                                  	jmp    0x10402e8bbe96
    10402e8bbe55:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8bbe5e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8bbe67:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8bbe70:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8bbe79:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    10402e8bbe80:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    10402e8bbe87:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8bbe8b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8bbe8f:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    10402e8bbe96:	48 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rdi
    10402e8bbe9d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8bbea2:	0f 85 e9 26 00 00                               	jne    0x10402e8be591
    10402e8bbea8:	8b cf                                           	mov    ecx,edi
    10402e8bbeaa:	41 d3 e8                                        	shr    r8d,cl
    10402e8bbead:	41 f6 c0 01                                     	test   r8b,0x1
    10402e8bbeb1:	0f 84 4c 01 00 00                               	je     0x10402e8bc003
    10402e8bbeb7:	42 8b 4c 3a 10                                  	mov    ecx,DWORD PTR [rdx+r15*1+0x10]
    10402e8bbebc:	46 8b 44 3a 0c                                  	mov    r8d,DWORD PTR [rdx+r15*1+0xc]
    10402e8bbec1:	4c 89 85 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r8
    10402e8bbec8:	46 8b 44 3a 08                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x8]
    10402e8bbecd:	46 8b 44 3a 04                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x4]
    10402e8bbed2:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    10402e8bbed9:	46 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+r15*1]
    10402e8bbedd:	41 83 f8 02                                     	cmp    r8d,0x2
    10402e8bbee1:	0f 84 b2 00 00 00                               	je     0x10402e8bbf99
    10402e8bbee7:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    10402e8bbeee:	45 85 c0                                        	test   r8d,r8d
    10402e8bbef1:	0f 85 44 00 00 00                               	jne    0x10402e8bbf3b
    10402e8bbef7:	45 8d 84 bb f0 01 00 00                         	lea    r8d,[r11+rdi*4+0x1f0]
    10402e8bbeff:	c4 a1 7a 10 34 02                               	vmovss xmm6,DWORD PTR [rdx+r8*1]
    10402e8bbf05:	45 8d 83 90 00 00 00                            	lea    r8d,[r11+0x90]
    10402e8bbf0c:	8b cf                                           	mov    ecx,edi
    10402e8bbf0e:	c1 e1 04                                        	shl    ecx,0x4
    10402e8bbf11:	44 03 c1                                        	add    r8d,ecx
    10402e8bbf14:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bbf18:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    10402e8bbf1e:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    10402e8bbf24:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    10402e8bbf2a:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8bbf2e:	41 8b d8                                        	mov    ebx,r8d
    10402e8bbf31:	e8 ea a2 ed ff                                  	call   0x10402e796220
    10402e8bbf36:	e9 c8 00 00 00                                  	jmp    0x10402e8bc003
    10402e8bbf3b:	4c 8b c2                                        	mov    r8,rdx
    10402e8bbf3e:	43 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+r15*1+0x14]
    10402e8bbf43:	44 8b d7                                        	mov    r10d,edi
    10402e8bbf46:	41 8b fb                                        	mov    edi,r11d
    10402e8bbf49:	45 8b da                                        	mov    r11d,r10d
    10402e8bbf4c:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    10402e8bbf54:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    10402e8bbf5a:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    10402e8bbf62:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    10402e8bbf68:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    10402e8bbf6e:	41 8b cb                                        	mov    ecx,r11d
    10402e8bbf71:	c1 e1 04                                        	shl    ecx,0x4
    10402e8bbf74:	03 d1                                           	add    edx,ecx
    10402e8bbf76:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bbf7a:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    10402e8bbf80:	44 8b ca                                        	mov    r9d,edx
    10402e8bbf83:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    10402e8bbf89:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    10402e8bbf8f:	e8 a4 a2 ed ff                                  	call   0x10402e796238
    10402e8bbf94:	e9 6a 00 00 00                                  	jmp    0x10402e8bc003
    10402e8bbf99:	4c 8b c2                                        	mov    r8,rdx
    10402e8bbf9c:	4d 8b e7                                        	mov    r12,r15
    10402e8bbf9f:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    10402e8bbfa4:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    10402e8bbfa9:	44 8b d7                                        	mov    r10d,edi
    10402e8bbfac:	41 8b fb                                        	mov    edi,r11d
    10402e8bbfaf:	45 8b da                                        	mov    r11d,r10d
    10402e8bbfb2:	46 8d bc 9f f0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1f0]
    10402e8bbfba:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    10402e8bbfc0:	46 8d bc 9f e0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1e0]
    10402e8bbfc8:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    10402e8bbfce:	46 8d bc 9f d0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1d0]
    10402e8bbfd6:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    10402e8bbfdc:	44 8d bf 90 00 00 00                            	lea    r15d,[rdi+0x90]
    10402e8bbfe3:	41 8b c3                                        	mov    eax,r11d
    10402e8bbfe6:	c1 e0 04                                        	shl    eax,0x4
    10402e8bbfe9:	44 03 f8                                        	add    r15d,eax
    10402e8bbfec:	41 57                                           	push   r15
    10402e8bbfee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bbff2:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    10402e8bbff8:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    10402e8bbffe:	e8 25 a2 ed ff                                  	call   0x10402e796228
    10402e8bc003:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    10402e8bc009:	83 c7 01                                        	add    edi,0x1
    10402e8bc00c:	83 ff 04                                        	cmp    edi,0x4
    10402e8bc00f:	0f 85 6b fe ff ff                               	jne    0x10402e8bbe80
    10402e8bc015:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    10402e8bc018:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bc01c:	c4 c1 7a 6f 84 18 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0xb0]
    10402e8bc026:	c4 c1 7a 6f b4 18 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0xc0]
    10402e8bc030:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    10402e8bc034:	c4 41 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x90]
    10402e8bc03e:	c4 41 7a 6f 8c 18 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0xa0]
    10402e8bc048:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    10402e8bc04d:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    10402e8bc051:	c4 41 7a 7f 9c 18 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1c0],xmm11
    10402e8bc05b:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    10402e8bc05f:	c4 c1 7a 7f bc 18 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1b0],xmm7
    10402e8bc069:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    10402e8bc06d:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    10402e8bc072:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    10402e8bc076:	c4 c1 7a 7f bc 18 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1a0],xmm7
    10402e8bc080:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    10402e8bc084:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    10402e8bc08e:	8b c3                                           	mov    eax,ebx
    10402e8bc090:	49 8b d0                                        	mov    rdx,r8
    10402e8bc093:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8bc09a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    10402e8bc0a1:	e9 93 00 00 00                                  	jmp    0x10402e8bc139
    10402e8bc0a6:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8bc0aa:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    10402e8bc0b1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc0b5:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8bc0b8:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    10402e8bc0bc:	49 8b d0                                        	mov    rdx,r8
    10402e8bc0bf:	e8 64 a4 ed ff                                  	call   0x10402e796528
    10402e8bc0c4:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    10402e8bc0c7:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8bc0cb:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8bc0d2:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    10402e8bc0d9:	e9 5b 00 00 00                                  	jmp    0x10402e8bc139
    10402e8bc0de:	4c 8b fa                                        	mov    r15,rdx
    10402e8bc0e1:	49 8d 57 3c                                     	lea    rdx,[r15+0x3c]
    10402e8bc0e5:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    10402e8bc0eb:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    10402e8bc0ee:	c4 c1 7a 7f 84 17 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x190],xmm0
    10402e8bc0f8:	49 8d 4f 40                                     	lea    rcx,[r15+0x40]
    10402e8bc0fc:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    10402e8bc102:	c4 c1 7a 7f 84 17 a0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1a0],xmm0
    10402e8bc10c:	49 8d 4f 44                                     	lea    rcx,[r15+0x44]
    10402e8bc110:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    10402e8bc116:	c4 c1 7a 7f 84 17 b0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1b0],xmm0
    10402e8bc120:	49 8d 4f 48                                     	lea    rcx,[r15+0x48]
    10402e8bc124:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    10402e8bc12a:	c4 c1 7a 7f 84 17 c0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1c0],xmm0
    10402e8bc134:	8b c2                                           	mov    eax,edx
    10402e8bc136:	49 8b d7                                        	mov    rdx,r15
    10402e8bc139:	c5 fa 6f 84 02 90 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rax*1+0x190]
    10402e8bc142:	44 8b 9c 3a 34 01 00 00                         	mov    r11d,DWORD PTR [rdx+rdi*1+0x134]
    10402e8bc14a:	83 bc 3a 34 01 00 00 02                         	cmp    DWORD PTR [rdx+rdi*1+0x134],0x2
    10402e8bc152:	0f 84 55 00 00 00                               	je     0x10402e8bc1ad
    10402e8bc158:	c5 fa 6f b4 02 c0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1c0]
    10402e8bc161:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    10402e8bc169:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    10402e8bc16d:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    10402e8bc176:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    10402e8bc17e:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    10402e8bc182:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    10402e8bc18b:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    10402e8bc193:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    10402e8bc198:	c5 78 10 8d 90 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x170]
    10402e8bc1a0:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    10402e8bc1a4:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    10402e8bc1a8:	e9 1f 00 00 00                                  	jmp    0x10402e8bc1cc
    10402e8bc1ad:	c5 fa 6f bc 02 c0 01 00 00                      	vmovdqu xmm7,XMMWORD PTR [rdx+rax*1+0x1c0]
    10402e8bc1b6:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    10402e8bc1bf:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    10402e8bc1c8:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    10402e8bc1cc:	c5 49 6a cf                                     	vpunpckhdq xmm9,xmm6,xmm7
    10402e8bc1d0:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    10402e8bc1d5:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    10402e8bc1da:	c5 7a 7f 5c 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm11
    10402e8bc1e0:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    10402e8bc1e5:	c5 7a 7f 4c 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm9
    10402e8bc1eb:	c5 c9 62 f7                                     	vpunpckldq xmm6,xmm6,xmm7
    10402e8bc1ef:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    10402e8bc1f4:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    10402e8bc1f8:	c5 fa 7f 7c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm7
    10402e8bc1fe:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    10402e8bc202:	c5 fa 7f 04 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm0
    10402e8bc207:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    10402e8bc20c:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    10402e8bc210:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    10402e8bc215:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    10402e8bc21a:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8bc21f:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    10402e8bc227:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8bc22f:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8bc237:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bc23f:	41 f6 c0 01                                     	test   r8b,0x1
    10402e8bc243:	0f 84 63 00 00 00                               	je     0x10402e8bc2ac
    10402e8bc249:	c5 fa 10 44 02 40                               	vmovss xmm0,DWORD PTR [rdx+rax*1+0x40]
    10402e8bc24f:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    10402e8bc256:	0f 85 35 00 00 00                               	jne    0x10402e8bc291
    10402e8bc25c:	c5 fa 10 14 02                                  	vmovss xmm2,DWORD PTR [rdx+rax*1]
    10402e8bc261:	c5 fa 10 5c 02 04                               	vmovss xmm3,DWORD PTR [rdx+rax*1+0x4]
    10402e8bc267:	c5 fa 10 64 02 08                               	vmovss xmm4,DWORD PTR [rdx+rax*1+0x8]
    10402e8bc26d:	c5 fa 10 6c 02 0c                               	vmovss xmm5,DWORD PTR [rdx+rax*1+0xc]
    10402e8bc273:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc277:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bc27a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8bc280:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e8bc283:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    10402e8bc287:	e8 d4 9f ed ff                                  	call   0x10402e796260
    10402e8bc28c:	e9 1b 00 00 00                                  	jmp    0x10402e8bc2ac
    10402e8bc291:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc295:	8b d8                                           	mov    ebx,eax
    10402e8bc297:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bc29a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8bc2a0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e8bc2a3:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    10402e8bc2a7:	e8 cc 9f ed ff                                  	call   0x10402e796278
    10402e8bc2ac:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    10402e8bc2b3:	0f 84 6c 00 00 00                               	je     0x10402e8bc325
    10402e8bc2b9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8bc2bc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bc2c0:	c4 c1 7a 10 4c 38 44                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x44]
    10402e8bc2c7:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    10402e8bc2ce:	0f 85 36 00 00 00                               	jne    0x10402e8bc30a
    10402e8bc2d4:	c4 c1 7a 10 54 38 10                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x10]
    10402e8bc2db:	c4 c1 7a 10 5c 38 14                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x14]
    10402e8bc2e2:	c4 c1 7a 10 64 38 18                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x18]
    10402e8bc2e9:	c4 c1 7a 10 6c 38 1c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x1c]
    10402e8bc2f0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc2f4:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bc2f7:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    10402e8bc2fd:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e8bc300:	e8 5b 9f ed ff                                  	call   0x10402e796260
    10402e8bc305:	e9 1b 00 00 00                                  	jmp    0x10402e8bc325
    10402e8bc30a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc30e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bc311:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    10402e8bc317:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    10402e8bc31a:	8b 9d a8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x358]
    10402e8bc320:	e8 53 9f ed ff                                  	call   0x10402e796278
    10402e8bc325:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    10402e8bc32c:	0f 84 72 00 00 00                               	je     0x10402e8bc3a4
    10402e8bc332:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8bc335:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bc339:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    10402e8bc340:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    10402e8bc347:	0f 85 39 00 00 00                               	jne    0x10402e8bc386
    10402e8bc34d:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    10402e8bc354:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    10402e8bc35b:	c4 c1 7a 10 64 38 28                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x28]
    10402e8bc362:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    10402e8bc369:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc36d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bc370:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8bc376:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    10402e8bc37c:	e8 df 9e ed ff                                  	call   0x10402e796260
    10402e8bc381:	e9 1e 00 00 00                                  	jmp    0x10402e8bc3a4
    10402e8bc386:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc38a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bc38d:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8bc393:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    10402e8bc399:	8b 9d b0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x350]
    10402e8bc39f:	e8 d4 9e ed ff                                  	call   0x10402e796278
    10402e8bc3a4:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    10402e8bc3ab:	0f 85 4e 00 00 00                               	jne    0x10402e8bc3ff
    10402e8bc3b1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8bc3b5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8bc3ba:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8bc3be:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8bc3c3:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8bc3c9:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8bc3cf:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8bc3d4:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8bc3dc:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8bc3e4:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8bc3ec:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bc3f4:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8bc3fa:	e9 2b 1d 00 00                                  	jmp    0x10402e8be12a
    10402e8bc3ff:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8bc402:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bc406:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    10402e8bc40d:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    10402e8bc414:	0f 85 82 00 00 00                               	jne    0x10402e8bc49c
    10402e8bc41a:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    10402e8bc421:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    10402e8bc428:	c4 c1 7a 10 64 38 38                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x38]
    10402e8bc42f:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    10402e8bc436:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc43a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bc43d:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    10402e8bc443:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    10402e8bc449:	e8 12 9e ed ff                                  	call   0x10402e796260
    10402e8bc44e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8bc452:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8bc457:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8bc45b:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8bc460:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8bc466:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8bc46c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8bc471:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8bc479:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8bc481:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8bc489:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bc491:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8bc497:	e9 8e 1c 00 00                                  	jmp    0x10402e8be12a
    10402e8bc49c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bc4a0:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bc4a3:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    10402e8bc4a9:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    10402e8bc4af:	8b 9d c8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x338]
    10402e8bc4b5:	e8 be 9d ed ff                                  	call   0x10402e796278
    10402e8bc4ba:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8bc4be:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8bc4c3:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8bc4c7:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8bc4cc:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8bc4d2:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8bc4d8:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8bc4dd:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8bc4e5:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8bc4ed:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8bc4f5:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bc4fd:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8bc503:	e9 22 1c 00 00                                  	jmp    0x10402e8be12a
    10402e8bc508:	44 8b c3                                        	mov    r8d,ebx
    10402e8bc50b:	41 83 e0 01                                     	and    r8d,0x1
    10402e8bc50f:	41 f7 d8                                        	neg    r8d
    10402e8bc512:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    10402e8bc517:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e8bc51c:	44 8b c3                                        	mov    r8d,ebx
    10402e8bc51f:	41 c1 e0 1e                                     	shl    r8d,0x1e
    10402e8bc523:	41 c1 f8 1f                                     	sar    r8d,0x1f
    10402e8bc527:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    10402e8bc52d:	44 8b c3                                        	mov    r8d,ebx
    10402e8bc530:	41 c1 e0 1d                                     	shl    r8d,0x1d
    10402e8bc534:	41 c1 f8 1f                                     	sar    r8d,0x1f
    10402e8bc538:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    10402e8bc53e:	44 8b c3                                        	mov    r8d,ebx
    10402e8bc541:	41 c1 e0 1c                                     	shl    r8d,0x1c
    10402e8bc545:	41 c1 f8 1f                                     	sar    r8d,0x1f
    10402e8bc549:	c4 c3 79 22 c0 03                               	vpinsrd xmm0,xmm0,r8d,0x3
    10402e8bc54f:	c4 e1 82 2a bd 60 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xa0]
    10402e8bc558:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    10402e8bc55d:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    10402e8bc564:	4c 2b 85 d0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x330]
    10402e8bc56b:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    10402e8bc570:	c4 c3 41 21 fb 10                               	vinsertps xmm7,xmm7,xmm11,0x10
    10402e8bc576:	4c 8b ff                                        	mov    r15,rdi
    10402e8bc579:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    10402e8bc580:	49 8d 14 3f                                     	lea    rdx,[r15+rdi*1]
    10402e8bc584:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    10402e8bc589:	c4 c3 41 21 fb 20                               	vinsertps xmm7,xmm7,xmm11,0x20
    10402e8bc58f:	4d 03 c7                                        	add    r8,r15
    10402e8bc592:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    10402e8bc597:	c4 c3 41 21 fb 30                               	vinsertps xmm7,xmm7,xmm11,0x30
    10402e8bc59d:	c5 78 10 9d 00 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x300]
    10402e8bc5a5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    10402e8bc5a9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    10402e8bc5b1:	c5 f0 59 d7                                     	vmulps xmm2,xmm1,xmm7
    10402e8bc5b5:	c4 e1 82 2a 9d 50 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xb0]
    10402e8bc5be:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    10402e8bc5c3:	4c 8b 85 50 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xb0]
    10402e8bc5ca:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    10402e8bc5d1:	c4 c1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,r8
    10402e8bc5d6:	c4 e3 61 21 dc 10                               	vinsertps xmm3,xmm3,xmm4,0x10
    10402e8bc5dc:	48 8b 95 50 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb0]
    10402e8bc5e3:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    10402e8bc5ea:	48 8d 3c 11                                     	lea    rdi,[rcx+rdx*1]
    10402e8bc5ee:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    10402e8bc5f3:	c4 e3 61 21 dc 20                               	vinsertps xmm3,xmm3,xmm4,0x20
    10402e8bc5f9:	4a 8d 3c 01                                     	lea    rdi,[rcx+r8*1]
    10402e8bc5fd:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    10402e8bc602:	c4 e3 61 21 dc 30                               	vinsertps xmm3,xmm3,xmm4,0x30
    10402e8bc608:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    10402e8bc60c:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    10402e8bc614:	c5 d8 59 eb                                     	vmulps xmm5,xmm4,xmm3
    10402e8bc618:	c5 e8 58 f5                                     	vaddps xmm6,xmm2,xmm5
    10402e8bc61c:	4c 8b 15 6e a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa96e]        # 0x10402e8b6f91
    10402e8bc623:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    10402e8bc628:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    10402e8bc62d:	c5 38 5c cf                                     	vsubps xmm9,xmm8,xmm7
    10402e8bc631:	c5 30 5c cb                                     	vsubps xmm9,xmm9,xmm3
    10402e8bc635:	c5 78 10 95 20 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2e0]
    10402e8bc63d:	c4 41 28 59 d9                                  	vmulps xmm11,xmm10,xmm9
    10402e8bc642:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    10402e8bc647:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    10402e8bc64c:	c5 28 c2 e6 01                                  	vcmpltps xmm12,xmm10,xmm6
    10402e8bc651:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    10402e8bc655:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bc659:	49 8d 78 18                                     	lea    rdi,[r8+0x18]
    10402e8bc65d:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    10402e8bc664:	c4 22 79 18 24 1f                               	vbroadcastss xmm12,DWORD PTR [rdi+r11*1]
    10402e8bc66a:	c4 c1 40 59 fc                                  	vmulps xmm7,xmm7,xmm12
    10402e8bc66f:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    10402e8bc676:	c4 22 79 18 24 27                               	vbroadcastss xmm12,DWORD PTR [rdi+r12*1]
    10402e8bc67c:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    10402e8bc681:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    10402e8bc686:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    10402e8bc68d:	c4 22 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [rdi+r15*1]
    10402e8bc693:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    10402e8bc698:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    10402e8bc69d:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    10402e8bc6a5:	c5 b0 58 ff                                     	vaddps xmm7,xmm9,xmm7
    10402e8bc6a9:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    10402e8bc6ad:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    10402e8bc6b1:	44 8b ce                                        	mov    r9d,esi
    10402e8bc6b4:	44 0f af 8d 28 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xd8]
    10402e8bc6bc:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    10402e8bc6c2:	44 03 cb                                        	add    r9d,ebx
    10402e8bc6c5:	0f af 75 a0                                     	imul   esi,DWORD PTR [rbp-0x60]
    10402e8bc6c9:	03 f3                                           	add    esi,ebx
    10402e8bc6cb:	41 8b 5c 38 04                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x4]
    10402e8bc6d0:	41 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+rdi*1+0x68]
    10402e8bc6d5:	85 c0                                           	test   eax,eax
    10402e8bc6d7:	0f 85 07 00 00 00                               	jne    0x10402e8bc6e4
    10402e8bc6dd:	33 d2                                           	xor    edx,edx
    10402e8bc6df:	e9 13 01 00 00                                  	jmp    0x10402e8bc7f7
    10402e8bc6e4:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    10402e8bc6ec:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    10402e8bc6f5:	75 e6                                           	jne    0x10402e8bc6dd
    10402e8bc6f7:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    10402e8bc6fc:	8d 0c b2                                        	lea    ecx,[rdx+rsi*4]
    10402e8bc6ff:	c4 41 7b 10 24 08                               	vmovsd xmm12,QWORD PTR [r8+rcx*1]
    10402e8bc705:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    10402e8bc70b:	3b cb                                           	cmp    ecx,ebx
    10402e8bc70d:	0f 8c 0d 00 00 00                               	jl     0x10402e8bc720
    10402e8bc713:	c5 f8 10 9d 40 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2c0]
    10402e8bc71b:	e9 0a 00 00 00                                  	jmp    0x10402e8bc72a
    10402e8bc720:	42 8d 14 8a                                     	lea    edx,[rdx+r9*4]
    10402e8bc724:	c4 c1 7b 10 1c 10                               	vmovsd xmm3,QWORD PTR [r8+rdx*1]
    10402e8bc72a:	c5 19 6c e3                                     	vpunpcklqdq xmm12,xmm12,xmm3
    10402e8bc72e:	41 8b 54 38 6c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x6c]
    10402e8bc733:	81 ea 00 02 00 00                               	sub    edx,0x200
    10402e8bc739:	83 fa 07                                        	cmp    edx,0x7
    10402e8bc73c:	0f 83 0b 00 00 00                               	jae    0x10402e8bc74d
    10402e8bc742:	4c 8d 15 a7 1f 00 00                            	lea    r10,[rip+0x1fa7]        # 0x10402e8be6f0
    10402e8bc749:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    10402e8bc74d:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    10402e8bc752:	e9 48 00 00 00                                  	jmp    0x10402e8bc79f
    10402e8bc757:	c5 18 c2 e7 02                                  	vcmpleps xmm12,xmm12,xmm7
    10402e8bc75c:	e9 3e 00 00 00                                  	jmp    0x10402e8bc79f
    10402e8bc761:	c4 41 40 c2 e4 04                               	vcmpneqps xmm12,xmm7,xmm12
    10402e8bc767:	e9 33 00 00 00                                  	jmp    0x10402e8bc79f
    10402e8bc76c:	c5 18 c2 e7 01                                  	vcmpltps xmm12,xmm12,xmm7
    10402e8bc771:	e9 29 00 00 00                                  	jmp    0x10402e8bc79f
    10402e8bc776:	c4 41 40 c2 e4 02                               	vcmpleps xmm12,xmm7,xmm12
    10402e8bc77c:	e9 1e 00 00 00                                  	jmp    0x10402e8bc79f
    10402e8bc781:	c4 41 40 c2 e4 00                               	vcmpeqps xmm12,xmm7,xmm12
    10402e8bc787:	e9 13 00 00 00                                  	jmp    0x10402e8bc79f
    10402e8bc78c:	c4 41 40 c2 e4 01                               	vcmpltps xmm12,xmm7,xmm12
    10402e8bc792:	e9 08 00 00 00                                  	jmp    0x10402e8bc79f
    10402e8bc797:	c5 78 10 a5 40 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2c0]
    10402e8bc79f:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    10402e8bc7a3:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    10402e8bc7a7:	85 d2                                           	test   edx,edx
    10402e8bc7a9:	0f 85 3c 00 00 00                               	jne    0x10402e8bc7eb
    10402e8bc7af:	4d 8b e0                                        	mov    r12,r8
    10402e8bc7b2:	4c 8b c7                                        	mov    r8,rdi
    10402e8bc7b5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8bc7ba:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8bc7bf:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8bc7c5:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8bc7cb:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8bc7d0:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8bc7d8:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8bc7e0:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8bc7e6:	e9 3f 19 00 00                                  	jmp    0x10402e8be12a
    10402e8bc7eb:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    10402e8bc7f2:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e8bc7f7:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    10402e8bc801:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8bc806:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8bc80b:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x10402e8bc7f9
    10402e8bc812:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8bc817:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e8bc81b:	c5 e0 c2 de 01                                  	vcmpltps xmm3,xmm3,xmm6
    10402e8bc820:	c4 41 61 df fc                                  	vpandn xmm15,xmm3,xmm12
    10402e8bc825:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    10402e8bc829:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8bc82e:	c5 b8 5e f6                                     	vdivps xmm6,xmm8,xmm6
    10402e8bc832:	48 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rbx
    10402e8bc839:	49 8d 58 2c                                     	lea    rbx,[r8+0x2c]
    10402e8bc83d:	c4 22 79 18 24 1b                               	vbroadcastss xmm12,DWORD PTR [rbx+r11*1]
    10402e8bc843:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    10402e8bc848:	c4 a2 79 18 1c 23                               	vbroadcastss xmm3,DWORD PTR [rbx+r12*1]
    10402e8bc84e:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    10402e8bc852:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    10402e8bc856:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    10402e8bc85c:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    10402e8bc860:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    10402e8bc864:	c4 41 48 59 e4                                  	vmulps xmm12,xmm6,xmm12
    10402e8bc869:	49 8d 58 28                                     	lea    rbx,[r8+0x28]
    10402e8bc86d:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    10402e8bc873:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    10402e8bc877:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    10402e8bc87f:	c4 a2 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [rbx+r12*1]
    10402e8bc885:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    10402e8bc889:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    10402e8bc88d:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    10402e8bc893:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    10402e8bc897:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    10402e8bc89b:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    10402e8bc89f:	49 8d 58 24                                     	lea    rbx,[r8+0x24]
    10402e8bc8a3:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    10402e8bc8a9:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    10402e8bc8ad:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    10402e8bc8b5:	c4 a2 79 18 3c 23                               	vbroadcastss xmm7,DWORD PTR [rbx+r12*1]
    10402e8bc8bb:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    10402e8bc8bf:	c5 e0 58 ff                                     	vaddps xmm7,xmm3,xmm7
    10402e8bc8c3:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    10402e8bc8c9:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    10402e8bc8cd:	c5 c0 58 fb                                     	vaddps xmm7,xmm7,xmm3
    10402e8bc8d1:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    10402e8bc8d5:	49 8d 58 20                                     	lea    rbx,[r8+0x20]
    10402e8bc8d9:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    10402e8bc8df:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    10402e8bc8e3:	c5 78 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm8
    10402e8bc8eb:	c4 22 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [rbx+r12*1]
    10402e8bc8f1:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    10402e8bc8f6:	c4 41 60 58 c0                                  	vaddps xmm8,xmm3,xmm8
    10402e8bc8fb:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    10402e8bc901:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    10402e8bc905:	c5 38 58 c3                                     	vaddps xmm8,xmm8,xmm3
    10402e8bc909:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    10402e8bc90e:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    10402e8bc915:	48 89 b5 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rsi
    10402e8bc91c:	41 8b b4 18 34 01 00 00                         	mov    esi,DWORD PTR [r8+rbx*1+0x134]
    10402e8bc924:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    10402e8bc92b:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    10402e8bc92f:	c5 78 11 95 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm10
    10402e8bc937:	48 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rax
    10402e8bc93e:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    10402e8bc945:	41 83 f9 01                                     	cmp    r9d,0x1
    10402e8bc949:	0f 87 fd 06 00 00                               	ja     0x10402e8bd04c
    10402e8bc94f:	45 8b 4c 18 28                                  	mov    r9d,DWORD PTR [r8+rbx*1+0x28]
    10402e8bc954:	41 8b 7c 18 20                                  	mov    edi,DWORD PTR [r8+rbx*1+0x20]
    10402e8bc959:	48 89 b5 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rsi
    10402e8bc960:	49 8d 70 54                                     	lea    rsi,[r8+0x54]
    10402e8bc964:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    10402e8bc96a:	c4 22 79 18 0c 1e                               	vbroadcastss xmm9,DWORD PTR [rsi+r11*1]
    10402e8bc970:	c4 22 79 18 2c 26                               	vbroadcastss xmm13,DWORD PTR [rsi+r12*1]
    10402e8bc976:	41 8b 74 18 1c                                  	mov    esi,DWORD PTR [r8+rbx*1+0x1c]
    10402e8bc97b:	c5 02 2a f6                                     	vcvtsi2ss xmm14,xmm15,esi
    10402e8bc97f:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    10402e8bc984:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    10402e8bc98b:	4d 8d 48 50                                     	lea    r9,[r8+0x50]
    10402e8bc98f:	c4 82 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+r11*1]
    10402e8bc995:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    10402e8bc999:	c4 82 79 18 24 21                               	vbroadcastss xmm4,DWORD PTR [r9+r12*1]
    10402e8bc99f:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    10402e8bc9a3:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    10402e8bc9a7:	c4 82 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [r9+r15*1]
    10402e8bc9ad:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    10402e8bc9b1:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    10402e8bc9b5:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    10402e8bc9b9:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    10402e8bc9bf:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    10402e8bc9c3:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    10402e8bc9c7:	4c 8b 15 13 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd213]        # 0x10402e8b9be1
    10402e8bc9ce:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    10402e8bc9d3:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    10402e8bc9d7:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    10402e8bc9db:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    10402e8bc9e1:	4c 8b 15 f6 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ff6]        # 0x10402e8b59de
    10402e8bc9e8:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    10402e8bc9ed:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    10402e8bc9f2:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    10402e8bc9f8:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    10402e8bc9fd:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    10402e8bca02:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    10402e8bca0a:	4c 8b 15 db d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2db]        # 0x10402e8b9cec
    10402e8bca11:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    10402e8bca16:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    10402e8bca1b:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    10402e8bca23:	4c 8b 15 f3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f3]        # 0x10402e8b9c1d
    10402e8bca2a:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    10402e8bca2f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    10402e8bca37:	4c 8b 15 ee d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1ee]        # 0x10402e8b9c2c
    10402e8bca3e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8bca43:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8bca47:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    10402e8bca4c:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    10402e8bca51:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    10402e8bca55:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8bca5a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8bca5e:	c4 81 7a 7f 84 08 90 00 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x90],xmm0
    10402e8bca68:	c5 82 2a c7                                     	vcvtsi2ss xmm0,xmm15,edi
    10402e8bca6c:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e8bca71:	c4 41 68 59 c9                                  	vmulps xmm9,xmm2,xmm9
    10402e8bca76:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    10402e8bca7b:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    10402e8bca80:	c5 20 59 d3                                     	vmulps xmm10,xmm11,xmm3
    10402e8bca84:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    10402e8bca89:	c4 41 48 59 c9                                  	vmulps xmm9,xmm6,xmm9
    10402e8bca8e:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    10402e8bca94:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    10402e8bca99:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    10402e8bca9e:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    10402e8bcaa2:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    10402e8bcaa8:	4c 8b 15 2f 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8f2f]        # 0x10402e8b59de
    10402e8bcaaf:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    10402e8bcab5:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    10402e8bcaba:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    10402e8bcac0:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    10402e8bcac5:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    10402e8bcaca:	4c 8b 15 4c d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd14c]        # 0x10402e8b9c1d
    10402e8bcad1:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    10402e8bcad6:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    10402e8bcadb:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    10402e8bcae0:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    10402e8bcae5:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    10402e8bcaea:	c4 01 7a 7f 94 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x190],xmm10
    10402e8bcaf4:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    10402e8bcaf8:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    10402e8bcb00:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    10402e8bcb05:	4c 8b 15 ad ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffedad]        # 0x10402e8bb8b9
    10402e8bcb0c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8bcb11:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    10402e8bcb16:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    10402e8bcb1b:	4c 8b 15 bc 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ebc]        # 0x10402e8b59de
    10402e8bcb22:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    10402e8bcb28:	c4 c1 28 54 cf                                  	vandps xmm1,xmm10,xmm15
    10402e8bcb2d:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    10402e8bcb33:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    10402e8bcb37:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    10402e8bcb3c:	4c 8b 15 da d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0da]        # 0x10402e8b9c1d
    10402e8bcb43:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    10402e8bcb48:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    10402e8bcb4d:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    10402e8bcb52:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    10402e8bcb57:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    10402e8bcb5c:	c4 01 7a 7f 14 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm10
    10402e8bcb62:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    10402e8bcb67:	c4 c1 78 59 c5                                  	vmulps xmm0,xmm0,xmm13
    10402e8bcb6c:	c4 c1 78 58 c6                                  	vaddps xmm0,xmm0,xmm14
    10402e8bcb71:	4c 8b 15 66 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8e66]        # 0x10402e8b59de
    10402e8bcb78:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8bcb7d:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    10402e8bcb82:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8bcb88:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    10402e8bcb8d:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    10402e8bcb92:	4c 8b 15 84 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd084]        # 0x10402e8b9c1d
    10402e8bcb99:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    10402e8bcb9e:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    10402e8bcba3:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    10402e8bcba8:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    10402e8bcbac:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8bcbb1:	c4 81 7a 7f 44 08 70                            	vmovdqu XMMWORD PTR [r8+r9*1+0x70],xmm0
    10402e8bcbb8:	c4 01 7a 7f 44 08 50                            	vmovdqu XMMWORD PTR [r8+r9*1+0x50],xmm8
    10402e8bcbbf:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    10402e8bcbc7:	c4 81 7a 7f bc 08 f0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1f0],xmm7
    10402e8bcbd1:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    10402e8bcbd9:	c4 81 7a 7f 84 08 e0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1e0],xmm0
    10402e8bcbe3:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    10402e8bcbeb:	c4 01 7a 7f a4 08 d0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1d0],xmm12
    10402e8bcbf5:	45 8b 7c 18 34                                  	mov    r15d,DWORD PTR [r8+rbx*1+0x34]
    10402e8bcbfa:	45 8b 64 18 30                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x30]
    10402e8bcbff:	45 8b 5c 18 2c                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x2c]
    10402e8bcc04:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    10402e8bcc0b:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    10402e8bcc12:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    10402e8bcc19:	33 c0                                           	xor    eax,eax
    10402e8bcc1b:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    10402e8bcc21:	e9 2a 00 00 00                                  	jmp    0x10402e8bcc50
    10402e8bcc26:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8bcc2f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    10402e8bcc38:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    10402e8bcc40:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    10402e8bcc46:	45 8b cc                                        	mov    r9d,r12d
    10402e8bcc49:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    10402e8bcc50:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    10402e8bcc55:	0f 85 5c 19 00 00                               	jne    0x10402e8be5b7
    10402e8bcc5b:	8b c8                                           	mov    ecx,eax
    10402e8bcc5d:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    10402e8bcc64:	41 d3 ef                                        	shr    r15d,cl
    10402e8bcc67:	41 f6 c7 01                                     	test   r15b,0x1
    10402e8bcc6b:	0f 85 0a 00 00 00                               	jne    0x10402e8bcc7b
    10402e8bcc71:	45 8b e1                                        	mov    r12d,r9d
    10402e8bcc74:	8b f8                                           	mov    edi,eax
    10402e8bcc76:	e9 3d 03 00 00                                  	jmp    0x10402e8bcfb8
    10402e8bcc7b:	45 8d bc 81 90 01 00 00                         	lea    r15d,[r9+rax*4+0x190]
    10402e8bcc83:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    10402e8bcc87:	41 8d 8c 81 90 00 00 00                         	lea    ecx,[r9+rax*4+0x90]
    10402e8bcc8f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8bcc93:	44 8d 49 01                                     	lea    r9d,[rcx+0x1]
    10402e8bcc97:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    10402e8bcc9e:	45 85 db                                        	test   r11d,r11d
    10402e8bcca1:	0f 85 51 00 00 00                               	jne    0x10402e8bccf8
    10402e8bcca7:	85 f6                                           	test   esi,esi
    10402e8bcca9:	0f 84 c8 19 00 00                               	je     0x10402e8be677
    10402e8bccaf:	83 fe ff                                        	cmp    esi,0xffffffff
    10402e8bccb2:	0f 84 94 19 00 00                               	je     0x10402e8be64c
    10402e8bccb8:	44 8b d0                                        	mov    r10d,eax
    10402e8bccbb:	8b c1                                           	mov    eax,ecx
    10402e8bccbd:	41 8b ca                                        	mov    ecx,r10d
    10402e8bccc0:	99                                              	cdq
    10402e8bccc1:	f7 fe                                           	idiv   esi
    10402e8bccc3:	8b c2                                           	mov    eax,edx
    10402e8bccc5:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8bccc8:	23 c6                                           	and    eax,esi
    10402e8bccca:	03 c2                                           	add    eax,edx
    10402e8bcccc:	83 fe ff                                        	cmp    esi,0xffffffff
    10402e8bcccf:	0f 84 80 19 00 00                               	je     0x10402e8be655
    10402e8bccd5:	44 8b d0                                        	mov    r10d,eax
    10402e8bccd8:	41 8b c1                                        	mov    eax,r9d
    10402e8bccdb:	45 8b ca                                        	mov    r9d,r10d
    10402e8bccde:	99                                              	cdq
    10402e8bccdf:	f7 fe                                           	idiv   esi
    10402e8bcce1:	8b c2                                           	mov    eax,edx
    10402e8bcce3:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8bcce6:	23 c6                                           	and    eax,esi
    10402e8bcce8:	03 c2                                           	add    eax,edx
    10402e8bccea:	45 8b d1                                        	mov    r10d,r9d
    10402e8bcced:	44 8b c8                                        	mov    r9d,eax
    10402e8bccf0:	41 8b c2                                        	mov    eax,r10d
    10402e8bccf3:	e9 0e 00 00 00                                  	jmp    0x10402e8bcd06
    10402e8bccf8:	41 23 cb                                        	and    ecx,r11d
    10402e8bccfb:	45 23 cb                                        	and    r9d,r11d
    10402e8bccfe:	44 8b d1                                        	mov    r10d,ecx
    10402e8bcd01:	8b c8                                           	mov    ecx,eax
    10402e8bcd03:	41 8b c2                                        	mov    eax,r10d
    10402e8bcd06:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    10402e8bcd0a:	45 85 e4                                        	test   r12d,r12d
    10402e8bcd0d:	0f 85 47 00 00 00                               	jne    0x10402e8bcd5a
    10402e8bcd13:	85 ff                                           	test   edi,edi
    10402e8bcd15:	0f 84 57 19 00 00                               	je     0x10402e8be672
    10402e8bcd1b:	83 ff ff                                        	cmp    edi,0xffffffff
    10402e8bcd1e:	0f 84 3b 19 00 00                               	je     0x10402e8be65f
    10402e8bcd24:	8b c8                                           	mov    ecx,eax
    10402e8bcd26:	8b c2                                           	mov    eax,edx
    10402e8bcd28:	99                                              	cdq
    10402e8bcd29:	f7 ff                                           	idiv   edi
    10402e8bcd2b:	8b c2                                           	mov    eax,edx
    10402e8bcd2d:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8bcd30:	23 c7                                           	and    eax,edi
    10402e8bcd32:	03 c2                                           	add    eax,edx
    10402e8bcd34:	83 ff ff                                        	cmp    edi,0xffffffff
    10402e8bcd37:	0f 84 2b 19 00 00                               	je     0x10402e8be668
    10402e8bcd3d:	44 8b d0                                        	mov    r10d,eax
    10402e8bcd40:	41 8b c7                                        	mov    eax,r15d
    10402e8bcd43:	45 8b fa                                        	mov    r15d,r10d
    10402e8bcd46:	99                                              	cdq
    10402e8bcd47:	f7 ff                                           	idiv   edi
    10402e8bcd49:	8b c2                                           	mov    eax,edx
    10402e8bcd4b:	c1 f8 1f                                        	sar    eax,0x1f
    10402e8bcd4e:	23 f8                                           	and    edi,eax
    10402e8bcd50:	03 fa                                           	add    edi,edx
    10402e8bcd52:	41 8b d7                                        	mov    edx,r15d
    10402e8bcd55:	e9 0b 00 00 00                                  	jmp    0x10402e8bcd65
    10402e8bcd5a:	41 23 d4                                        	and    edx,r12d
    10402e8bcd5d:	45 23 e7                                        	and    r12d,r15d
    10402e8bcd60:	41 8b fc                                        	mov    edi,r12d
    10402e8bcd63:	8b c8                                           	mov    ecx,eax
    10402e8bcd65:	8b c1                                           	mov    eax,ecx
    10402e8bcd67:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    10402e8bcd6d:	44 8b ff                                        	mov    r15d,edi
    10402e8bcd70:	41 d3 e7                                        	shl    r15d,cl
    10402e8bcd73:	0f af fe                                        	imul   edi,esi
    10402e8bcd76:	45 85 db                                        	test   r11d,r11d
    10402e8bcd79:	41 0f 45 ff                                     	cmovne edi,r15d
    10402e8bcd7d:	44 8d 3c 38                                     	lea    r15d,[rax+rdi*1]
    10402e8bcd81:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    10402e8bcd85:	c4 81 7a 10 04 38                               	vmovss xmm0,DWORD PTR [r8+r15*1]
    10402e8bcd8b:	c4 e2 79 30 c0                                  	vpmovzxbw xmm0,xmm0
    10402e8bcd90:	41 03 f9                                        	add    edi,r9d
    10402e8bcd93:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    10402e8bcd96:	c4 c1 7a 10 3c 38                               	vmovss xmm7,DWORD PTR [r8+rdi*1]
    10402e8bcd9c:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    10402e8bcda1:	c5 f9 61 c7                                     	vpunpcklwd xmm0,xmm0,xmm7
    10402e8bcda5:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    10402e8bcdab:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    10402e8bcdb2:	41 8d 8c bf 00 fe ff ff                         	lea    ecx,[r15+rdi*4-0x200]
    10402e8bcdba:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8bcdbe:	41 bf 00 01 00 00                               	mov    r15d,0x100
    10402e8bcdc4:	44 8b e1                                        	mov    r12d,ecx
    10402e8bcdc7:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    10402e8bcdcd:	45 0f 4d e7                                     	cmovge r12d,r15d
    10402e8bcdd1:	33 c9                                           	xor    ecx,ecx
    10402e8bcdd3:	45 85 e4                                        	test   r12d,r12d
    10402e8bcdd6:	41 0f 4f cc                                     	cmovg  ecx,r12d
    10402e8bcdda:	44 69 e1 ff ff 00 00                            	imul   r12d,ecx,0xffff
    10402e8bcde1:	41 81 c4 00 01 00 00                            	add    r12d,0x100
    10402e8bcde8:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    10402e8bcded:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    10402e8bcdf2:	c5 f9 f5 c7                                     	vpmaddwd xmm0,xmm0,xmm7
    10402e8bcdf6:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    10402e8bcdfa:	41 8d 4c bc 70                                  	lea    ecx,[r12+rdi*4+0x70]
    10402e8bcdff:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    10402e8bce03:	8b f9                                           	mov    edi,ecx
    10402e8bce05:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    10402e8bce0b:	41 0f 4d ff                                     	cmovge edi,r15d
    10402e8bce0f:	33 c9                                           	xor    ecx,ecx
    10402e8bce11:	85 ff                                           	test   edi,edi
    10402e8bce13:	0f 4f cf                                        	cmovg  ecx,edi
    10402e8bce16:	44 2b f9                                        	sub    r15d,ecx
    10402e8bce19:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    10402e8bce1e:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8bce23:	c4 c2 79 40 c0                                  	vpmulld xmm0,xmm0,xmm8
    10402e8bce28:	44 8b f9                                        	mov    r15d,ecx
    10402e8bce2b:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    10402e8bce31:	8b fa                                           	mov    edi,edx
    10402e8bce33:	d3 e7                                           	shl    edi,cl
    10402e8bce35:	0f af d6                                        	imul   edx,esi
    10402e8bce38:	45 85 db                                        	test   r11d,r11d
    10402e8bce3b:	0f 45 d7                                        	cmovne edx,edi
    10402e8bce3e:	8d 3c 10                                        	lea    edi,[rax+rdx*1]
    10402e8bce41:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    10402e8bce44:	c4 41 7a 10 04 38                               	vmovss xmm8,DWORD PTR [r8+rdi*1]
    10402e8bce4a:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    10402e8bce4f:	42 8d 3c 0a                                     	lea    edi,[rdx+r9*1]
    10402e8bce53:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    10402e8bce56:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    10402e8bce5c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    10402e8bce61:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    10402e8bce66:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    10402e8bce6a:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    10402e8bce6f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8bce74:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    10402e8bce79:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    10402e8bce7d:	4c 8b 15 25 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb25]        # 0x10402e8bb9a9
    10402e8bce84:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    10402e8bce89:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    10402e8bce8d:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    10402e8bce91:	c5 f9 72 e0 10                                  	vpsrad xmm0,xmm0,0x10
    10402e8bce96:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    10402e8bce9b:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    10402e8bce9f:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    10402e8bcea3:	44 8b ff                                        	mov    r15d,edi
    10402e8bcea6:	41 c1 ef 18                                     	shr    r15d,0x18
    10402e8bceaa:	8b c7                                           	mov    eax,edi
    10402e8bceac:	c1 e8 10                                        	shr    eax,0x10
    10402e8bceaf:	8b d7                                           	mov    edx,edi
    10402e8bceb1:	c1 ea 08                                        	shr    edx,0x8
    10402e8bceb4:	40 0f b6 ff                                     	movzx  edi,dil
    10402e8bceb8:	44 8b d7                                        	mov    r10d,edi
    10402e8bcebb:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e8bcec0:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    10402e8bcec6:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    10402e8bcecb:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8bcecf:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    10402e8bced5:	41 8d 4c bc 50                                  	lea    ecx,[r12+rdi*4+0x50]
    10402e8bceda:	83 bd 50 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x1b0],0x2
    10402e8bcee1:	0f 84 77 00 00 00                               	je     0x10402e8bcf5e
    10402e8bcee7:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    10402e8bceed:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    10402e8bcef3:	41 8d 8c bc f0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1f0]
    10402e8bcefb:	0f b6 d2                                        	movzx  edx,dl
    10402e8bcefe:	44 8b d2                                        	mov    r10d,edx
    10402e8bcf01:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e8bcf06:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8bcf0a:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    10402e8bcf10:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    10402e8bcf16:	41 8d 94 bc e0 01 00 00                         	lea    edx,[r12+rdi*4+0x1e0]
    10402e8bcf1e:	0f b6 c0                                        	movzx  eax,al
    10402e8bcf21:	44 8b d0                                        	mov    r10d,eax
    10402e8bcf24:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e8bcf29:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8bcf2d:	c4 c1 7a 59 04 10                               	vmulss xmm0,xmm0,DWORD PTR [r8+rdx*1]
    10402e8bcf33:	c4 c1 7a 11 04 10                               	vmovss DWORD PTR [r8+rdx*1],xmm0
    10402e8bcf39:	41 8d 84 bc d0 01 00 00                         	lea    eax,[r12+rdi*4+0x1d0]
    10402e8bcf41:	45 8b d7                                        	mov    r10d,r15d
    10402e8bcf44:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e8bcf49:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8bcf4d:	c4 c1 7a 59 04 00                               	vmulss xmm0,xmm0,DWORD PTR [r8+rax*1]
    10402e8bcf53:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    10402e8bcf59:	e9 5a 00 00 00                                  	jmp    0x10402e8bcfb8
    10402e8bcf5e:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    10402e8bcf64:	41 8d 8c bc d0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1d0]
    10402e8bcf6c:	45 8b d7                                        	mov    r10d,r15d
    10402e8bcf6f:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e8bcf74:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8bcf78:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    10402e8bcf7e:	45 8d bc bc e0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1e0]
    10402e8bcf86:	0f b6 c0                                        	movzx  eax,al
    10402e8bcf89:	44 8b d0                                        	mov    r10d,eax
    10402e8bcf8c:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e8bcf91:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8bcf95:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    10402e8bcf9b:	45 8d bc bc f0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1f0]
    10402e8bcfa3:	0f b6 c2                                        	movzx  eax,dl
    10402e8bcfa6:	44 8b d0                                        	mov    r10d,eax
    10402e8bcfa9:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e8bcfae:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    10402e8bcfb2:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    10402e8bcfb8:	8d 47 01                                        	lea    eax,[rdi+0x1]
    10402e8bcfbb:	83 f8 04                                        	cmp    eax,0x4
    10402e8bcfbe:	0f 85 7c fc ff ff                               	jne    0x10402e8bcc40
    10402e8bcfc4:	c4 01 7a 6f a4 20 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r8+r12*1+0x1d0]
    10402e8bcfce:	c4 81 7a 6f bc 20 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r12*1+0x1f0]
    10402e8bcfd8:	c4 01 7a 6f 44 20 50                            	vmovdqu xmm8,XMMWORD PTR [r8+r12*1+0x50]
    10402e8bcfdf:	c4 81 7a 6f 84 20 e0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+r12*1+0x1e0]
    10402e8bcfe9:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bcff1:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8bcff9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    10402e8bd001:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    10402e8bd008:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    10402e8bd00c:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    10402e8bd014:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    10402e8bd01a:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    10402e8bd020:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    10402e8bd027:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    10402e8bd02e:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    10402e8bd035:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    10402e8bd03c:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    10402e8bd044:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    10402e8bd04c:	41 8b b4 38 ec 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xec]
    10402e8bd054:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    10402e8bd05c:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    10402e8bd065:	0f 84 04 04 00 00                               	je     0x10402e8bd46f
    10402e8bd06b:	49 8d b0 98 00 00 00                            	lea    rsi,[r8+0x98]
    10402e8bd072:	c4 a2 79 18 1c 1e                               	vbroadcastss xmm3,DWORD PTR [rsi+r11*1]
    10402e8bd078:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    10402e8bd07c:	c4 a2 79 18 1c 26                               	vbroadcastss xmm3,DWORD PTR [rsi+r12*1]
    10402e8bd082:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    10402e8bd086:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    10402e8bd08a:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    10402e8bd090:	c5 20 59 db                                     	vmulps xmm11,xmm11,xmm3
    10402e8bd094:	c4 41 68 58 db                                  	vaddps xmm11,xmm2,xmm11
    10402e8bd099:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    10402e8bd09e:	c5 28 5c de                                     	vsubps xmm11,xmm10,xmm6
    10402e8bd0a2:	c5 a0 c2 d6 01                                  	vcmpltps xmm2,xmm11,xmm6
    10402e8bd0a7:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    10402e8bd0ac:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    10402e8bd0b0:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8bd0b5:	4c 8b 15 d5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed5]        # 0x10402e8b6f91
    10402e8bd0bc:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8bd0c1:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    10402e8bd0c6:	41 8b b4 38 f0 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xf0]
    10402e8bd0ce:	81 fe 00 08 00 00                               	cmp    esi,0x800
    10402e8bd0d4:	0f 84 8d 01 00 00                               	je     0x10402e8bd267
    10402e8bd0da:	81 fe 01 26 00 00                               	cmp    esi,0x2601
    10402e8bd0e0:	0f 84 23 01 00 00                               	je     0x10402e8bd209
    10402e8bd0e6:	c4 c1 7a 10 94 38 f4 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xf4]
    10402e8bd0f0:	c5 f8 28 de                                     	vmovaps xmm3,xmm6
    10402e8bd0f4:	c5 ea 59 db                                     	vmulss xmm3,xmm2,xmm3
    10402e8bd0f8:	4c 8b 15 70 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c70]        # 0x10402e8b5d6f
    10402e8bd0ff:	c4 c1 60 57 2a                                  	vxorps xmm5,xmm3,XMMWORD PTR [r10]
    10402e8bd104:	c5 e2 59 dd                                     	vmulss xmm3,xmm3,xmm5
    10402e8bd108:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    10402e8bd110:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    10402e8bd118:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    10402e8bd120:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    10402e8bd128:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    10402e8bd130:	c5 fb 11 95 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm2
    10402e8bd138:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bd13c:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    10402e8bd140:	e8 73 b4 ed ff                                  	call   0x10402e7985b8
    10402e8bd145:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    10402e8bd14a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    10402e8bd152:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    10402e8bd156:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    10402e8bd15e:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    10402e8bd162:	4c 8b 15 06 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c06]        # 0x10402e8b5d6f
    10402e8bd169:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    10402e8bd16e:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    10402e8bd173:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    10402e8bd17b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bd17f:	e8 34 b4 ed ff                                  	call   0x10402e7985b8
    10402e8bd184:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    10402e8bd18c:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    10402e8bd192:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    10402e8bd19a:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    10402e8bd19f:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    10402e8bd1a7:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    10402e8bd1ab:	4c 8b 15 bd 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8bbd]        # 0x10402e8b5d6f
    10402e8bd1b2:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    10402e8bd1b7:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    10402e8bd1bc:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    10402e8bd1c4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bd1c8:	e8 eb b3 ed ff                                  	call   0x10402e7985b8
    10402e8bd1cd:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    10402e8bd1d5:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    10402e8bd1db:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    10402e8bd1e3:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    10402e8bd1e8:	c5 fb 10 bd b0 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x150]
    10402e8bd1f0:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    10402e8bd1f4:	4c 8b 15 74 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b74]        # 0x10402e8b5d6f
    10402e8bd1fb:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    10402e8bd200:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    10402e8bd204:	e9 3a 01 00 00                                  	jmp    0x10402e8bd343
    10402e8bd209:	c4 c1 7a 10 94 38 fc 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xfc]
    10402e8bd213:	c4 c1 6a 5c 9c 38 f8 00 00 00                   	vsubss xmm3,xmm2,DWORD PTR [r8+rdi*1+0xf8]
    10402e8bd21d:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    10402e8bd221:	c5 f8 2e eb                                     	vucomiss xmm5,xmm3
    10402e8bd225:	7a 06                                           	jp     0x10402e8bd22d
    10402e8bd227:	0f 84 2d 00 00 00                               	je     0x10402e8bd25a
    10402e8bd22d:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    10402e8bd232:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    10402e8bd236:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    10402e8bd23a:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    10402e8bd23f:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    10402e8bd244:	c5 ea 5e db                                     	vdivss xmm3,xmm2,xmm3
    10402e8bd248:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    10402e8bd24c:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    10402e8bd251:	c5 c8 59 f3                                     	vmulps xmm6,xmm6,xmm3
    10402e8bd255:	e9 9f 01 00 00                                  	jmp    0x10402e8bd3f9
    10402e8bd25a:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    10402e8bd262:	e9 92 01 00 00                                  	jmp    0x10402e8bd3f9
    10402e8bd267:	c5 f8 28 d6                                     	vmovaps xmm2,xmm6
    10402e8bd26b:	c4 c1 7a 10 9c 38 f4 00 00 00                   	vmovss xmm3,DWORD PTR [r8+rdi*1+0xf4]
    10402e8bd275:	4c 8b 15 f3 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8af3]        # 0x10402e8b5d6f
    10402e8bd27c:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    10402e8bd281:	c5 ea 59 d3                                     	vmulss xmm2,xmm2,xmm3
    10402e8bd285:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    10402e8bd28d:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    10402e8bd295:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    10402e8bd29d:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    10402e8bd2a5:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    10402e8bd2ad:	c5 fb 11 9d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm3
    10402e8bd2b5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bd2b9:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    10402e8bd2bd:	e8 f6 b2 ed ff                                  	call   0x10402e7985b8
    10402e8bd2c2:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    10402e8bd2c7:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    10402e8bd2cf:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    10402e8bd2d3:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    10402e8bd2db:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    10402e8bd2e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bd2e7:	e8 cc b2 ed ff                                  	call   0x10402e7985b8
    10402e8bd2ec:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    10402e8bd2f4:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    10402e8bd2fa:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    10402e8bd302:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    10402e8bd307:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    10402e8bd30f:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    10402e8bd317:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bd31b:	e8 98 b2 ed ff                                  	call   0x10402e7985b8
    10402e8bd320:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    10402e8bd328:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    10402e8bd32e:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    10402e8bd336:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    10402e8bd33b:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    10402e8bd343:	c5 f8 11 85 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm0
    10402e8bd34b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bd34f:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8bd353:	e8 60 b2 ed ff                                  	call   0x10402e7985b8
    10402e8bd358:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    10402e8bd360:	c4 e3 49 21 f1 30                               	vinsertps xmm6,xmm6,xmm1,0x30
    10402e8bd366:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bd36e:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    10402e8bd372:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    10402e8bd37a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bd37e:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    10402e8bd386:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    10402e8bd38c:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    10402e8bd392:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    10402e8bd39a:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8bd3a2:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    10402e8bd3aa:	c5 78 10 9d 70 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x190]
    10402e8bd3b2:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    10402e8bd3b6:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    10402e8bd3bd:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    10402e8bd3c4:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    10402e8bd3cb:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    10402e8bd3d2:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    10402e8bd3da:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    10402e8bd3e2:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    10402e8bd3e9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    10402e8bd3f1:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8bd3f9:	c5 f8 10 95 80 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x180]
    10402e8bd401:	c5 e8 c2 de 01                                  	vcmpltps xmm3,xmm2,xmm6
    10402e8bd406:	c5 61 df fe                                     	vpandn xmm15,xmm3,xmm6
    10402e8bd40a:	c5 a1 db f3                                     	vpand  xmm6,xmm11,xmm3
    10402e8bd40e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8bd413:	c4 41 48 c2 da 01                               	vcmpltps xmm11,xmm6,xmm10
    10402e8bd419:	c5 a0 55 f6                                     	vandnps xmm6,xmm11,xmm6
    10402e8bd41d:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8bd421:	49 8d b0 08 01 00 00                            	lea    rsi,[r8+0x108]
    10402e8bd428:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    10402e8bd42e:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    10402e8bd432:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    10402e8bd436:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8bd43b:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    10402e8bd43f:	49 8d b0 04 01 00 00                            	lea    rsi,[r8+0x104]
    10402e8bd446:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    10402e8bd44c:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    10402e8bd450:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    10402e8bd455:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    10402e8bd459:	49 8d b0 00 01 00 00                            	lea    rsi,[r8+0x100]
    10402e8bd460:	c4 62 79 18 04 3e                               	vbroadcastss xmm8,DWORD PTR [rsi+rdi*1]
    10402e8bd466:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    10402e8bd46a:	c4 41 48 58 c0                                  	vaddps xmm8,xmm6,xmm8
    10402e8bd46f:	41 8b b4 38 80 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x80]
    10402e8bd477:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    10402e8bd480:	0f 85 0d 00 00 00                               	jne    0x10402e8bd493
    10402e8bd486:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    10402e8bd48e:	e9 83 00 00 00                                  	jmp    0x10402e8bd516
    10402e8bd493:	49 8d b0 88 00 00 00                            	lea    rsi,[r8+0x88]
    10402e8bd49a:	c4 e2 79 18 34 3e                               	vbroadcastss xmm6,DWORD PTR [rsi+rdi*1]
    10402e8bd4a0:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8bd4a5:	41 8b b4 38 84 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x84]
    10402e8bd4ad:	81 ee 00 02 00 00                               	sub    esi,0x200
    10402e8bd4b3:	83 fe 07                                        	cmp    esi,0x7
    10402e8bd4b6:	0f 83 0b 00 00 00                               	jae    0x10402e8bd4c7
    10402e8bd4bc:	4c 8d 15 f5 11 00 00                            	lea    r10,[rip+0x11f5]        # 0x10402e8be6b8
    10402e8bd4c3:	41 ff 24 f2                                     	jmp    QWORD PTR [r10+rsi*8]
    10402e8bd4c7:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    10402e8bd4cc:	e9 39 00 00 00                                  	jmp    0x10402e8bd50a
    10402e8bd4d1:	c4 41 48 c2 dc 02                               	vcmpleps xmm11,xmm6,xmm12
    10402e8bd4d7:	e9 2e 00 00 00                                  	jmp    0x10402e8bd50a
    10402e8bd4dc:	c5 18 c2 de 04                                  	vcmpneqps xmm11,xmm12,xmm6
    10402e8bd4e1:	e9 24 00 00 00                                  	jmp    0x10402e8bd50a
    10402e8bd4e6:	c4 41 48 c2 dc 01                               	vcmpltps xmm11,xmm6,xmm12
    10402e8bd4ec:	e9 19 00 00 00                                  	jmp    0x10402e8bd50a
    10402e8bd4f1:	c5 18 c2 de 02                                  	vcmpleps xmm11,xmm12,xmm6
    10402e8bd4f6:	e9 0f 00 00 00                                  	jmp    0x10402e8bd50a
    10402e8bd4fb:	c5 18 c2 de 00                                  	vcmpeqps xmm11,xmm12,xmm6
    10402e8bd500:	e9 05 00 00 00                                  	jmp    0x10402e8bd50a
    10402e8bd505:	c5 18 c2 de 01                                  	vcmpltps xmm11,xmm12,xmm6
    10402e8bd50a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    10402e8bd512:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    10402e8bd516:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    10402e8bd51a:	85 f6                                           	test   esi,esi
    10402e8bd51c:	0f 84 8d f2 ff ff                               	je     0x10402e8bc7af
    10402e8bd522:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    10402e8bd527:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    10402e8bd52d:	0f 85 15 00 00 00                               	jne    0x10402e8bd548
    10402e8bd533:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    10402e8bd539:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    10402e8bd53f:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8bd543:	e9 1f 01 00 00                                  	jmp    0x10402e8bd667
    10402e8bd548:	41 8b 74 38 48                                  	mov    esi,DWORD PTR [r8+rdi*1+0x48]
    10402e8bd54d:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    10402e8bd554:	45 33 db                                        	xor    r11d,r11d
    10402e8bd557:	44 3b ce                                        	cmp    r9d,esi
    10402e8bd55a:	41 0f 9c c3                                     	setl   r11b
    10402e8bd55e:	45 8b 64 38 50                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x50]
    10402e8bd563:	44 03 e6                                        	add    r12d,esi
    10402e8bd566:	45 33 ff                                        	xor    r15d,r15d
    10402e8bd569:	45 3b e1                                        	cmp    r12d,r9d
    10402e8bd56c:	41 0f 9e c7                                     	setle  r15b
    10402e8bd570:	45 0b fb                                        	or     r15d,r11d
    10402e8bd573:	45 8b 5c 38 4c                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x4c]
    10402e8bd578:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8bd57c:	33 db                                           	xor    ebx,ebx
    10402e8bd57e:	45 3b cb                                        	cmp    r9d,r11d
    10402e8bd581:	0f 9c c3                                        	setl   bl
    10402e8bd584:	41 8b cf                                        	mov    ecx,r15d
    10402e8bd587:	0b cb                                           	or     ecx,ebx
    10402e8bd589:	83 f1 ff                                        	xor    ecx,0xffffffff
    10402e8bd58c:	41 8b 54 38 54                                  	mov    edx,DWORD PTR [r8+rdi*1+0x54]
    10402e8bd591:	41 03 d3                                        	add    edx,r11d
    10402e8bd594:	33 ff                                           	xor    edi,edi
    10402e8bd596:	44 3b ca                                        	cmp    r9d,edx
    10402e8bd599:	40 0f 9c c7                                     	setl   dil
    10402e8bd59d:	23 cf                                           	and    ecx,edi
    10402e8bd59f:	f7 d9                                           	neg    ecx
    10402e8bd5a1:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    10402e8bd5a5:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    10402e8bd5aa:	44 3b a5 30 ff ff ff                            	cmp    r12d,DWORD PTR [rbp-0xd0]
    10402e8bd5b1:	41 0f 9e c4                                     	setle  r12b
    10402e8bd5b5:	45 0f b6 e4                                     	movzx  r12d,r12b
    10402e8bd5b9:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    10402e8bd5bf:	3b ce                                           	cmp    ecx,esi
    10402e8bd5c1:	40 0f 9c c6                                     	setl   sil
    10402e8bd5c5:	40 0f b6 f6                                     	movzx  esi,sil
    10402e8bd5c9:	41 0b f4                                        	or     esi,r12d
    10402e8bd5cc:	0b de                                           	or     ebx,esi
    10402e8bd5ce:	83 f3 ff                                        	xor    ebx,0xffffffff
    10402e8bd5d1:	23 fb                                           	and    edi,ebx
    10402e8bd5d3:	f7 df                                           	neg    edi
    10402e8bd5d5:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    10402e8bd5db:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    10402e8bd5e1:	45 33 e4                                        	xor    r12d,r12d
    10402e8bd5e4:	3b fa                                           	cmp    edi,edx
    10402e8bd5e6:	41 0f 9c c4                                     	setl   r12b
    10402e8bd5ea:	41 3b fb                                        	cmp    edi,r11d
    10402e8bd5ed:	41 0f 9c c3                                     	setl   r11b
    10402e8bd5f1:	45 0f b6 db                                     	movzx  r11d,r11b
    10402e8bd5f5:	45 0b fb                                        	or     r15d,r11d
    10402e8bd5f8:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    10402e8bd5fc:	45 23 fc                                        	and    r15d,r12d
    10402e8bd5ff:	41 f7 df                                        	neg    r15d
    10402e8bd602:	c4 43 21 22 df 02                               	vpinsrd xmm11,xmm11,r15d,0x2
    10402e8bd608:	41 0b f3                                        	or     esi,r11d
    10402e8bd60b:	83 f6 ff                                        	xor    esi,0xffffffff
    10402e8bd60e:	44 23 e6                                        	and    r12d,esi
    10402e8bd611:	41 f7 dc                                        	neg    r12d
    10402e8bd614:	c4 43 21 22 dc 03                               	vpinsrd xmm11,xmm11,r12d,0x3
    10402e8bd61a:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    10402e8bd61e:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    10402e8bd622:	85 f6                                           	test   esi,esi
    10402e8bd624:	0f 85 3d 00 00 00                               	jne    0x10402e8bd667
    10402e8bd62a:	4d 8b e0                                        	mov    r12,r8
    10402e8bd62d:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8bd631:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8bd636:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8bd63b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8bd641:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8bd647:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8bd64c:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8bd654:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8bd65c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8bd662:	e9 c3 0a 00 00                                  	jmp    0x10402e8be12a
    10402e8bd667:	85 c0                                           	test   eax,eax
    10402e8bd669:	0f 85 16 00 00 00                               	jne    0x10402e8bd685
    10402e8bd66f:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    10402e8bd676:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8bd67a:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    10402e8bd680:	e9 fe 01 00 00                                  	jmp    0x10402e8bd883
    10402e8bd685:	83 bd 20 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xe0],0x0
    10402e8bd68c:	0f 85 42 01 00 00                               	jne    0x10402e8bd7d4
    10402e8bd692:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8bd697:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8bd69b:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    10402e8bd6a0:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    10402e8bd6a7:	43 8d 04 bc                                     	lea    eax,[r12+r15*4]
    10402e8bd6ab:	c4 c1 7b 10 14 00                               	vmovsd xmm2,QWORD PTR [r8+rax*1]
    10402e8bd6b1:	3b bd 00 ff ff ff                               	cmp    edi,DWORD PTR [rbp-0x100]
    10402e8bd6b7:	0f 8c 10 00 00 00                               	jl     0x10402e8bd6cd
    10402e8bd6bd:	c4 c1 79 28 db                                  	vmovapd xmm3,xmm11
    10402e8bd6c2:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    10402e8bd6c8:	e9 10 00 00 00                                  	jmp    0x10402e8bd6dd
    10402e8bd6cd:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    10402e8bd6d3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    10402e8bd6d7:	c4 81 7b 10 1c 20                               	vmovsd xmm3,QWORD PTR [r8+r12*1]
    10402e8bd6dd:	c5 e9 6c d3                                     	vpunpcklqdq xmm2,xmm2,xmm3
    10402e8bd6e1:	47 8b 64 18 6c                                  	mov    r12d,DWORD PTR [r8+r11*1+0x6c]
    10402e8bd6e6:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    10402e8bd6ed:	41 83 fc 07                                     	cmp    r12d,0x7
    10402e8bd6f1:	0f 83 0b 00 00 00                               	jae    0x10402e8bd702
    10402e8bd6f7:	4c 8d 15 82 0f 00 00                            	lea    r10,[rip+0xf82]        # 0x10402e8be680
    10402e8bd6fe:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    10402e8bd702:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    10402e8bd707:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    10402e8bd70f:	e9 74 00 00 00                                  	jmp    0x10402e8bd788
    10402e8bd714:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    10402e8bd71c:	c5 68 c2 db 02                                  	vcmpleps xmm11,xmm2,xmm3
    10402e8bd721:	e9 62 00 00 00                                  	jmp    0x10402e8bd788
    10402e8bd726:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    10402e8bd72e:	c5 60 c2 da 04                                  	vcmpneqps xmm11,xmm3,xmm2
    10402e8bd733:	e9 50 00 00 00                                  	jmp    0x10402e8bd788
    10402e8bd738:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    10402e8bd740:	c5 68 c2 db 01                                  	vcmpltps xmm11,xmm2,xmm3
    10402e8bd745:	e9 3e 00 00 00                                  	jmp    0x10402e8bd788
    10402e8bd74a:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    10402e8bd752:	c5 60 c2 da 02                                  	vcmpleps xmm11,xmm3,xmm2
    10402e8bd757:	e9 2c 00 00 00                                  	jmp    0x10402e8bd788
    10402e8bd75c:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    10402e8bd764:	c5 60 c2 da 00                                  	vcmpeqps xmm11,xmm3,xmm2
    10402e8bd769:	e9 1a 00 00 00                                  	jmp    0x10402e8bd788
    10402e8bd76e:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    10402e8bd776:	c5 60 c2 da 01                                  	vcmpltps xmm11,xmm3,xmm2
    10402e8bd77b:	e9 08 00 00 00                                  	jmp    0x10402e8bd788
    10402e8bd780:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    10402e8bd788:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    10402e8bd78c:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    10402e8bd790:	85 f6                                           	test   esi,esi
    10402e8bd792:	0f 85 4d 00 00 00                               	jne    0x10402e8bd7e5
    10402e8bd798:	4d 8b e0                                        	mov    r12,r8
    10402e8bd79b:	4d 8b c3                                        	mov    r8,r11
    10402e8bd79e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8bd7a3:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8bd7a8:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8bd7ae:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8bd7b4:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8bd7b9:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8bd7c1:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8bd7c9:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8bd7cf:	e9 56 09 00 00                                  	jmp    0x10402e8be12a
    10402e8bd7d4:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    10402e8bd7db:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8bd7df:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    10402e8bd7e5:	47 8b 64 18 70                                  	mov    r12d,DWORD PTR [r8+r11*1+0x70]
    10402e8bd7ea:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    10402e8bd7f0:	0f 84 8d 00 00 00                               	je     0x10402e8bd883
    10402e8bd7f6:	40 f6 c6 01                                     	test   sil,0x1
    10402e8bd7fa:	0f 85 0d 00 00 00                               	jne    0x10402e8bd80d
    10402e8bd800:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    10402e8bd808:	e9 1b 00 00 00                                  	jmp    0x10402e8bd828
    10402e8bd80d:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    10402e8bd812:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    10402e8bd816:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    10402e8bd81e:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    10402e8bd822:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    10402e8bd828:	40 f6 c6 02                                     	test   sil,0x2
    10402e8bd82c:	0f 84 14 00 00 00                               	je     0x10402e8bd846
    10402e8bd832:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    10402e8bd837:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    10402e8bd83b:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    10402e8bd83f:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    10402e8bd846:	40 f6 c6 04                                     	test   sil,0x4
    10402e8bd84a:	0f 84 14 00 00 00                               	je     0x10402e8bd864
    10402e8bd850:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    10402e8bd855:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    10402e8bd859:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    10402e8bd85e:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    10402e8bd864:	40 f6 c6 08                                     	test   sil,0x8
    10402e8bd868:	0f 84 15 00 00 00                               	je     0x10402e8bd883
    10402e8bd86e:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    10402e8bd873:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    10402e8bd877:	c5 79 70 de 03                                  	vpshufd xmm11,xmm6,0x3
    10402e8bd87c:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    10402e8bd883:	47 8b 64 18 74                                  	mov    r12d,DWORD PTR [r8+r11*1+0x74]
    10402e8bd888:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    10402e8bd88e:	0f 85 0d 00 00 00                               	jne    0x10402e8bd8a1
    10402e8bd894:	46 8d 24 bd 00 00 00 00                         	lea    r12d,[r15*4+0x0]
    10402e8bd89c:	e9 d6 02 00 00                                  	jmp    0x10402e8bdb77
    10402e8bd8a1:	47 8b 64 18 78                                  	mov    r12d,DWORD PTR [r8+r11*1+0x78]
    10402e8bd8a6:	41 8d 9c 24 fe fc ff ff                         	lea    ebx,[r12-0x302]
    10402e8bd8ae:	33 d2                                           	xor    edx,edx
    10402e8bd8b0:	83 fb 04                                        	cmp    ebx,0x4
    10402e8bd8b3:	0f 93 c2                                        	setae  dl
    10402e8bd8b6:	33 c9                                           	xor    ecx,ecx
    10402e8bd8b8:	41 83 fc 01                                     	cmp    r12d,0x1
    10402e8bd8bc:	0f 97 c1                                        	seta   cl
    10402e8bd8bf:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    10402e8bd8c6:	85 ca                                           	test   edx,ecx
    10402e8bd8c8:	0f 85 b9 05 00 00                               	jne    0x10402e8bde87
    10402e8bd8ce:	43 8b 54 18 7c                                  	mov    edx,DWORD PTR [r8+r11*1+0x7c]
    10402e8bd8d3:	8d 8a fe fc ff ff                               	lea    ecx,[rdx-0x302]
    10402e8bd8d9:	45 33 c9                                        	xor    r9d,r9d
    10402e8bd8dc:	83 f9 04                                        	cmp    ecx,0x4
    10402e8bd8df:	41 0f 93 c1                                     	setae  r9b
    10402e8bd8e3:	33 f6                                           	xor    esi,esi
    10402e8bd8e5:	83 fa 01                                        	cmp    edx,0x1
    10402e8bd8e8:	40 0f 97 c6                                     	seta   sil
    10402e8bd8ec:	41 85 f1                                        	test   r9d,esi
    10402e8bd8ef:	0f 85 88 05 00 00                               	jne    0x10402e8bde7d
    10402e8bd8f5:	42 8d 34 bd 00 00 00 00                         	lea    esi,[r15*4+0x0]
    10402e8bd8fd:	47 8b 4c 18 08                                  	mov    r9d,DWORD PTR [r8+r11*1+0x8]
    10402e8bd902:	47 8d 3c b9                                     	lea    r15d,[r9+r15*4]
    10402e8bd906:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    10402e8bd90c:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    10402e8bd913:	44 3b ff                                        	cmp    r15d,edi
    10402e8bd916:	0f 8e 0f 00 00 00                               	jle    0x10402e8bd92b
    10402e8bd91c:	45 8d 0c 81                                     	lea    r9d,[r9+rax*4]
    10402e8bd920:	c4 01 7b 10 1c 08                               	vmovsd xmm11,QWORD PTR [r8+r9*1]
    10402e8bd926:	e9 05 00 00 00                                  	jmp    0x10402e8bd930
    10402e8bd92b:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8bd930:	c4 c1 49 6c f3                                  	vpunpcklqdq xmm6,xmm6,xmm11
    10402e8bd935:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    10402e8bd93f:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    10402e8bd944:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    10402e8bd94e:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    10402e8bd954:	c4 42 49 00 db                                  	vpshufb xmm11,xmm6,xmm11
    10402e8bd959:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    10402e8bd95e:	4c 8b 15 cd ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcacd]        # 0x10402e8ba432
    10402e8bd965:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8bd96a:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8bd96e:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    10402e8bd972:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    10402e8bd97c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e8bd981:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    10402e8bd98b:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    10402e8bd991:	c4 e2 49 00 db                                  	vpshufb xmm3,xmm6,xmm3
    10402e8bd996:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e8bd99a:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    10402e8bd9a4:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e8bd9a9:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    10402e8bd9b3:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    10402e8bd9b9:	c4 e2 49 00 ed                                  	vpshufb xmm5,xmm6,xmm5
    10402e8bd9be:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e8bd9c2:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    10402e8bd9cc:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8bd9d1:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    10402e8bd9db:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    10402e8bd9e1:	c4 c2 49 00 f1                                  	vpshufb xmm6,xmm6,xmm9
    10402e8bd9e6:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8bd9ea:	83 fb 02                                        	cmp    ebx,0x2
    10402e8bd9ed:	0f 8c 14 00 00 00                               	jl     0x10402e8bda07
    10402e8bd9f3:	0f 84 69 00 00 00                               	je     0x10402e8bda62
    10402e8bd9f9:	83 fb 03                                        	cmp    ebx,0x3
    10402e8bd9fc:	0f 84 45 00 00 00                               	je     0x10402e8bda47
    10402e8bda02:	e9 17 00 00 00                                  	jmp    0x10402e8bda1e
    10402e8bda07:	83 fb 00                                        	cmp    ebx,0x0
    10402e8bda0a:	0f 84 77 00 00 00                               	je     0x10402e8bda87
    10402e8bda10:	83 fb 01                                        	cmp    ebx,0x1
    10402e8bda13:	0f 84 53 00 00 00                               	je     0x10402e8bda6c
    10402e8bda19:	e9 00 00 00 00                                  	jmp    0x10402e8bda1e
    10402e8bda1e:	45 85 e4                                        	test   r12d,r12d
    10402e8bda21:	0f 85 0a 00 00 00                               	jne    0x10402e8bda31
    10402e8bda27:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    10402e8bda2c:	e9 5b 00 00 00                                  	jmp    0x10402e8bda8c
    10402e8bda31:	4c 8b 15 59 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9559]        # 0x10402e8b6f91
    10402e8bda38:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8bda3d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8bda42:	e9 45 00 00 00                                  	jmp    0x10402e8bda8c
    10402e8bda47:	4c 8b 15 43 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9543]        # 0x10402e8b6f91
    10402e8bda4e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8bda53:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8bda58:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    10402e8bda5d:	e9 2a 00 00 00                                  	jmp    0x10402e8bda8c
    10402e8bda62:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    10402e8bda67:	e9 20 00 00 00                                  	jmp    0x10402e8bda8c
    10402e8bda6c:	4c 8b 15 1e 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff951e]        # 0x10402e8b6f91
    10402e8bda73:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8bda78:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8bda7d:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    10402e8bda82:	e9 05 00 00 00                                  	jmp    0x10402e8bda8c
    10402e8bda87:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    10402e8bda8c:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    10402e8bda90:	c5 d0 59 ea                                     	vmulps xmm5,xmm5,xmm2
    10402e8bda94:	c5 c8 59 f2                                     	vmulps xmm6,xmm6,xmm2
    10402e8bda98:	83 f9 02                                        	cmp    ecx,0x2
    10402e8bda9b:	0f 8c 14 00 00 00                               	jl     0x10402e8bdab5
    10402e8bdaa1:	0f 84 5e 00 00 00                               	je     0x10402e8bdb05
    10402e8bdaa7:	83 f9 03                                        	cmp    ecx,0x3
    10402e8bdaaa:	0f 84 3a 00 00 00                               	je     0x10402e8bdaea
    10402e8bdab0:	e9 17 00 00 00                                  	jmp    0x10402e8bdacc
    10402e8bdab5:	83 f9 00                                        	cmp    ecx,0x0
    10402e8bdab8:	0f 84 6c 00 00 00                               	je     0x10402e8bdb2a
    10402e8bdabe:	83 f9 01                                        	cmp    ecx,0x1
    10402e8bdac1:	0f 84 48 00 00 00                               	je     0x10402e8bdb0f
    10402e8bdac7:	e9 00 00 00 00                                  	jmp    0x10402e8bdacc
    10402e8bdacc:	85 d2                                           	test   edx,edx
    10402e8bdace:	0f 84 5b 00 00 00                               	je     0x10402e8bdb2f
    10402e8bdad4:	4c 8b 15 b6 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94b6]        # 0x10402e8b6f91
    10402e8bdadb:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8bdae0:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8bdae5:	e9 45 00 00 00                                  	jmp    0x10402e8bdb2f
    10402e8bdaea:	4c 8b 15 a0 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94a0]        # 0x10402e8b6f91
    10402e8bdaf1:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8bdaf6:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8bdafb:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    10402e8bdb00:	e9 2a 00 00 00                                  	jmp    0x10402e8bdb2f
    10402e8bdb05:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    10402e8bdb0a:	e9 20 00 00 00                                  	jmp    0x10402e8bdb2f
    10402e8bdb0f:	4c 8b 15 7b 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947b]        # 0x10402e8b6f91
    10402e8bdb16:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8bdb1b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8bdb20:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    10402e8bdb25:	e9 05 00 00 00                                  	jmp    0x10402e8bdb2f
    10402e8bdb2a:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    10402e8bdb2f:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    10402e8bdb34:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    10402e8bdb39:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    10402e8bdb3e:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    10402e8bdb43:	c4 41 60 59 da                                  	vmulps xmm11,xmm3,xmm10
    10402e8bdb48:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    10402e8bdb4d:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    10402e8bdb52:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    10402e8bdb57:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    10402e8bdb5c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    10402e8bdb61:	c4 c1 48 59 f2                                  	vmulps xmm6,xmm6,xmm10
    10402e8bdb66:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    10402e8bdb6a:	44 8b e6                                        	mov    r12d,esi
    10402e8bdb6d:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    10402e8bdb73:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8bdb77:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    10402e8bdb7b:	4c 8b 15 0f 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff940f]        # 0x10402e8b6f91
    10402e8bdb82:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    10402e8bdb87:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    10402e8bdb8c:	4c 8b 15 fe 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff93fe]        # 0x10402e8b6f91
    10402e8bdb93:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    10402e8bdb98:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    10402e8bdb9d:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    10402e8bdba3:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    10402e8bdba8:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    10402e8bdbad:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8bdbb2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    10402e8bdbb7:	c4 c1 38 c2 d3 01                               	vcmpltps xmm2,xmm8,xmm11
    10402e8bdbbd:	c4 41 68 55 c0                                  	vandnps xmm8,xmm2,xmm8
    10402e8bdbc2:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    10402e8bdbcc:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e8bdbd1:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e8bdbd5:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    10402e8bdbd9:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    10402e8bdbdf:	4c 8b 15 f8 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7df8]        # 0x10402e8b59de
    10402e8bdbe6:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    10402e8bdbec:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    10402e8bdbf1:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    10402e8bdbf7:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    10402e8bdbfc:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    10402e8bdc01:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    10402e8bdc06:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    10402e8bdc0b:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    10402e8bdc11:	c5 a8 c2 df 01                                  	vcmpltps xmm3,xmm10,xmm7
    10402e8bdc16:	c5 61 df ff                                     	vpandn xmm15,xmm3,xmm7
    10402e8bdc1a:	c5 b1 db fb                                     	vpand  xmm7,xmm9,xmm3
    10402e8bdc1e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8bdc23:	c4 c1 40 c2 db 01                               	vcmpltps xmm3,xmm7,xmm11
    10402e8bdc29:	c5 e0 55 ff                                     	vandnps xmm7,xmm3,xmm7
    10402e8bdc2d:	c5 c0 59 fa                                     	vmulps xmm7,xmm7,xmm2
    10402e8bdc31:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    10402e8bdc37:	4c 8b 15 a0 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7da0]        # 0x10402e8b59de
    10402e8bdc3e:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    10402e8bdc43:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    10402e8bdc48:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    10402e8bdc4e:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    10402e8bdc52:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    10402e8bdc57:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    10402e8bdc5b:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    10402e8bdc5f:	c4 e3 41 0e fe fc                               	vpblendw xmm7,xmm7,xmm6,0xfc
    10402e8bdc65:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    10402e8bdc69:	c5 28 c2 c0 01                                  	vcmpltps xmm8,xmm10,xmm0
    10402e8bdc6e:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    10402e8bdc72:	c4 c1 31 db c0                                  	vpand  xmm0,xmm9,xmm8
    10402e8bdc77:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8bdc7c:	c4 41 78 c2 c3 01                               	vcmpltps xmm8,xmm0,xmm11
    10402e8bdc82:	c5 b8 55 c0                                     	vandnps xmm0,xmm8,xmm0
    10402e8bdc86:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    10402e8bdc8a:	c4 e3 79 08 c0 08                               	vroundps xmm0,xmm0,0x8
    10402e8bdc90:	4c 8b 15 47 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7d47]        # 0x10402e8b59de
    10402e8bdc97:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    10402e8bdc9c:	c4 c1 78 54 c7                                  	vandps xmm0,xmm0,xmm15
    10402e8bdca1:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    10402e8bdca7:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    10402e8bdcab:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    10402e8bdcb0:	c5 f9 6b c0                                     	vpackssdw xmm0,xmm0,xmm0
    10402e8bdcb4:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    10402e8bdcb8:	c4 e3 79 0e c6 fc                               	vpblendw xmm0,xmm0,xmm6,0xfc
    10402e8bdcbe:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    10402e8bdcc4:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    10402e8bdcc9:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    10402e8bdcce:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    10402e8bdcd3:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    10402e8bdcd9:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    10402e8bdcde:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    10402e8bdce2:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    10402e8bdce8:	4c 8b 15 ef 7c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7cef]        # 0x10402e8b59de
    10402e8bdcef:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    10402e8bdcf5:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    10402e8bdcfa:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    10402e8bdd00:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    10402e8bdd05:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    10402e8bdd0a:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    10402e8bdd0f:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    10402e8bdd14:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    10402e8bdd1a:	c4 c1 79 60 c0                                  	vpunpcklbw xmm0,xmm0,xmm8
    10402e8bdd1f:	c5 c1 61 c0                                     	vpunpcklwd xmm0,xmm7,xmm0
    10402e8bdd23:	c4 81 7a 6f bc 18 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x520]
    10402e8bdd2d:	c5 c1 76 fe                                     	vpcmpeqd xmm7,xmm7,xmm6
    10402e8bdd31:	c4 c3 79 16 ff 01                               	vpextrd r15d,xmm7,0x1
    10402e8bdd37:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    10402e8bdd3c:	33 d2                                           	xor    edx,edx
    10402e8bdd3e:	41 f6 c7 01                                     	test   r15b,0x1
    10402e8bdd42:	0f 45 da                                        	cmovne ebx,edx
    10402e8bdd45:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    10402e8bdd4a:	b9 ff 00 00 00                                  	mov    ecx,0xff
    10402e8bdd4f:	41 f6 c7 01                                     	test   r15b,0x1
    10402e8bdd53:	0f 45 ca                                        	cmovne ecx,edx
    10402e8bdd56:	0b cb                                           	or     ecx,ebx
    10402e8bdd58:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    10402e8bdd5e:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    10402e8bdd63:	41 f6 c7 01                                     	test   r15b,0x1
    10402e8bdd67:	0f 45 da                                        	cmovne ebx,edx
    10402e8bdd6a:	0b d9                                           	or     ebx,ecx
    10402e8bdd6c:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    10402e8bdd72:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    10402e8bdd77:	41 f6 c7 01                                     	test   r15b,0x1
    10402e8bdd7b:	0f 45 ca                                        	cmovne ecx,edx
    10402e8bdd7e:	0b cb                                           	or     ecx,ebx
    10402e8bdd80:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    10402e8bdd84:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    10402e8bdd89:	44 8b fe                                        	mov    r15d,esi
    10402e8bdd8c:	41 83 e7 01                                     	and    r15d,0x1
    10402e8bdd90:	41 f7 df                                        	neg    r15d
    10402e8bdd93:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    10402e8bdd98:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    10402e8bdd9d:	44 8b fe                                        	mov    r15d,esi
    10402e8bdda0:	41 c1 e7 1e                                     	shl    r15d,0x1e
    10402e8bdda4:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8bdda8:	c4 43 39 22 c7 01                               	vpinsrd xmm8,xmm8,r15d,0x1
    10402e8bddae:	44 8b fe                                        	mov    r15d,esi
    10402e8bddb1:	41 c1 e7 1d                                     	shl    r15d,0x1d
    10402e8bddb5:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8bddb9:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    10402e8bddbf:	44 8b fe                                        	mov    r15d,esi
    10402e8bddc2:	41 c1 e7 1c                                     	shl    r15d,0x1c
    10402e8bddc6:	41 c1 ff 1f                                     	sar    r15d,0x1f
    10402e8bddca:	c4 43 39 22 c7 03                               	vpinsrd xmm8,xmm8,r15d,0x3
    10402e8bddd0:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    10402e8bddd5:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    10402e8bddda:	45 03 e7                                        	add    r12d,r15d
    10402e8bdddd:	c4 01 7b 10 04 20                               	vmovsd xmm8,QWORD PTR [r8+r12*1]
    10402e8bdde3:	8b 9d 00 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x100]
    10402e8bdde9:	3b df                                           	cmp    ebx,edi
    10402e8bddeb:	0f 8e 0a 00 00 00                               	jle    0x10402e8bddfb
    10402e8bddf1:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    10402e8bddf5:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    10402e8bddfb:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    10402e8bddff:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    10402e8bde03:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8bde07:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8bde0c:	40 f6 c6 03                                     	test   sil,0x3
    10402e8bde10:	0f 84 06 00 00 00                               	je     0x10402e8bde1c
    10402e8bde16:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    10402e8bde1c:	3b df                                           	cmp    ebx,edi
    10402e8bde1e:	0f 8e 74 f9 ff ff                               	jle    0x10402e8bd798
    10402e8bde24:	40 f6 c6 0c                                     	test   sil,0xc
    10402e8bde28:	0f 84 6a f9 ff ff                               	je     0x10402e8bd798
    10402e8bde2e:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    10402e8bde33:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    10402e8bde37:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    10402e8bde3b:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    10402e8bde41:	4d 8b e0                                        	mov    r12,r8
    10402e8bde44:	4d 8b c3                                        	mov    r8,r11
    10402e8bde47:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8bde4c:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8bde51:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8bde57:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8bde5d:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8bde62:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8bde6a:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8bde72:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8bde78:	e9 ad 02 00 00                                  	jmp    0x10402e8be12a
    10402e8bde7d:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    10402e8bde83:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8bde87:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    10402e8bde8f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    10402e8bde97:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    10402e8bde9f:	40 f6 c6 01                                     	test   sil,0x1
    10402e8bdea3:	0f 84 9d 00 00 00                               	je     0x10402e8bdf46
    10402e8bdea9:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    10402e8bdeb1:	c5 78 28 d6                                     	vmovaps xmm10,xmm6
    10402e8bdeb5:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    10402e8bdeba:	c5 f8 28 df                                     	vmovaps xmm3,xmm7
    10402e8bdebe:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    10402e8bdec2:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    10402e8bdec7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bdecb:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bdece:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8bded4:	41 8b c9                                        	mov    ecx,r9d
    10402e8bded7:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    10402e8bdedc:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    10402e8bdee1:	e8 7a 83 ed ff                                  	call   0x10402e796260
    10402e8bdee6:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8bdeea:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8bdeee:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    10402e8bdef4:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    10402e8bdefc:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    10402e8bdf04:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    10402e8bdf0c:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8bdf14:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    10402e8bdf1a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bdf1e:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    10402e8bdf26:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    10402e8bdf2e:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    10402e8bdf36:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8bdf3e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bdf46:	40 f6 c6 02                                     	test   sil,0x2
    10402e8bdf4a:	0f 84 9d 00 00 00                               	je     0x10402e8bdfed
    10402e8bdf50:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    10402e8bdf58:	c5 7a 16 d6                                     	vmovshdup xmm10,xmm6
    10402e8bdf5c:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    10402e8bdf61:	c5 fa 16 df                                     	vmovshdup xmm3,xmm7
    10402e8bdf65:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    10402e8bdf69:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    10402e8bdf6e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8bdf72:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8bdf75:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    10402e8bdf7b:	41 8b c9                                        	mov    ecx,r9d
    10402e8bdf7e:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    10402e8bdf83:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    10402e8bdf88:	e8 d3 82 ed ff                                  	call   0x10402e796260
    10402e8bdf8d:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8bdf91:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8bdf95:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    10402e8bdf9b:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    10402e8bdfa3:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    10402e8bdfab:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    10402e8bdfb3:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8bdfbb:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    10402e8bdfc1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8bdfc5:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    10402e8bdfcd:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    10402e8bdfd5:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    10402e8bdfdd:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8bdfe5:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8bdfed:	40 f6 c6 04                                     	test   sil,0x4
    10402e8bdff1:	0f 84 a1 00 00 00                               	je     0x10402e8be098
    10402e8bdff7:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    10402e8bdfff:	c5 79 70 d6 02                                  	vpshufd xmm10,xmm6,0x2
    10402e8be004:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    10402e8be00a:	c5 f9 70 df 02                                  	vpshufd xmm3,xmm7,0x2
    10402e8be00f:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    10402e8be014:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    10402e8be01a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8be01e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8be021:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    10402e8be027:	8b cf                                           	mov    ecx,edi
    10402e8be029:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    10402e8be02e:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    10402e8be033:	e8 28 82 ed ff                                  	call   0x10402e796260
    10402e8be038:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    10402e8be03c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8be040:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    10402e8be046:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    10402e8be04e:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    10402e8be056:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    10402e8be05e:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    10402e8be066:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    10402e8be06c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8be070:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    10402e8be078:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    10402e8be080:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    10402e8be088:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8be090:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8be098:	40 f6 c6 08                                     	test   sil,0x8
    10402e8be09c:	0f 84 f6 f6 ff ff                               	je     0x10402e8bd798
    10402e8be0a2:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    10402e8be0aa:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    10402e8be0af:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    10402e8be0b5:	c5 f9 70 df 03                                  	vpshufd xmm3,xmm7,0x3
    10402e8be0ba:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    10402e8be0bf:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    10402e8be0c5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8be0c9:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8be0cc:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    10402e8be0d2:	8b cf                                           	mov    ecx,edi
    10402e8be0d4:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8be0d8:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    10402e8be0dc:	e8 7f 81 ed ff                                  	call   0x10402e796260
    10402e8be0e1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    10402e8be0e5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8be0ea:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    10402e8be0ee:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8be0f3:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8be0f9:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8be0ff:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8be104:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    10402e8be10c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8be114:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8be11c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8be124:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8be12a:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    10402e8be131:	48 2b bd 38 ff ff ff                            	sub    rdi,QWORD PTR [rbp-0xc8]
    10402e8be138:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    10402e8be13f:	48 2b b5 48 ff ff ff                            	sub    rsi,QWORD PTR [rbp-0xb8]
    10402e8be146:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    10402e8be14d:	48 2b 85 58 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa8]
    10402e8be154:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    10402e8be15b:	41 83 c3 02                                     	add    r11d,0x2
    10402e8be15f:	44 3b 9d 70 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0x90]
    10402e8be166:	0f 8c 54 85 ff ff                               	jl     0x10402e8b66c0
    10402e8be16c:	48 8b bd 78 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x88]
    10402e8be173:	48 8b b5 38 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3c8]
    10402e8be17a:	48 03 f7                                        	add    rsi,rdi
    10402e8be17d:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    10402e8be181:	4c 8b bd 10 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xf0]
    10402e8be188:	4d 03 fb                                        	add    r15,r11
    10402e8be18b:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
    10402e8be18f:	48 8b 9d 80 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x380]
    10402e8be196:	48 03 d8                                        	add    rbx,rax
    10402e8be199:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8be19d:	41 83 c1 02                                     	add    r9d,0x2
    10402e8be1a1:	44 3b 4d 98                                     	cmp    r9d,DWORD PTR [rbp-0x68]
    10402e8be1a5:	0f 8c 55 84 ff ff                               	jl     0x10402e8b6600
    10402e8be1ab:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8be1ae:	81 c7 00 02 00 00                               	add    edi,0x200
    10402e8be1b4:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    10402e8be1b8:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    10402e8be1bc:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    10402e8be1c1:	48 8b e5                                        	mov    rsp,rbp
    10402e8be1c4:	5d                                              	pop    rbp
    10402e8be1c5:	c2 10 00                                        	ret    0x10
    10402e8be1c8:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    10402e8be1cf:	0f 84 17 00 00 00                               	je     0x10402e8be1ec
    10402e8be1d5:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    10402e8be1db:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    10402e8be1e0:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    10402e8be1e6:	0f 85 40 00 00 00                               	jne    0x10402e8be22c
    10402e8be1ec:	c5 79 7e df                                     	vmovd  edi,xmm11
    10402e8be1f0:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    10402e8be1f6:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    10402e8be1f9:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    10402e8be1fc:	41 51                                           	push   r9
    10402e8be1fe:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    10402e8be201:	41 53                                           	push   r11
    10402e8be203:	57                                              	push   rdi
    10402e8be204:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    10402e8be207:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    10402e8be20a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8be20e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8be211:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8be214:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    10402e8be217:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8be21a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8be21e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8be222:	e8 f9 82 ed ff                                  	call   0x10402e796520
    10402e8be227:	e9 df 00 00 00                                  	jmp    0x10402e8be30b
    10402e8be22c:	c5 79 7e df                                     	vmovd  edi,xmm11
    10402e8be230:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    10402e8be236:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    10402e8be239:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    10402e8be23c:	41 51                                           	push   r9
    10402e8be23e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    10402e8be241:	41 53                                           	push   r11
    10402e8be243:	57                                              	push   rdi
    10402e8be244:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    10402e8be247:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    10402e8be24a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8be24e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8be251:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8be254:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    10402e8be257:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8be25a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8be25e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8be262:	e8 d1 82 ed ff                                  	call   0x10402e796538
    10402e8be267:	e9 9f 00 00 00                                  	jmp    0x10402e8be30b
    10402e8be26c:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    10402e8be273:	0f 84 17 00 00 00                               	je     0x10402e8be290
    10402e8be279:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    10402e8be27f:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    10402e8be284:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    10402e8be28a:	0f 85 40 00 00 00                               	jne    0x10402e8be2d0
    10402e8be290:	c5 79 7e df                                     	vmovd  edi,xmm11
    10402e8be294:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    10402e8be29a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    10402e8be29d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    10402e8be2a0:	41 51                                           	push   r9
    10402e8be2a2:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    10402e8be2a5:	41 53                                           	push   r11
    10402e8be2a7:	57                                              	push   rdi
    10402e8be2a8:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    10402e8be2ab:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    10402e8be2ae:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8be2b2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8be2b5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8be2b8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    10402e8be2bb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8be2be:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8be2c2:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8be2c6:	e8 75 82 ed ff                                  	call   0x10402e796540
    10402e8be2cb:	e9 3b 00 00 00                                  	jmp    0x10402e8be30b
    10402e8be2d0:	c5 79 7e df                                     	vmovd  edi,xmm11
    10402e8be2d4:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    10402e8be2da:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    10402e8be2dd:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    10402e8be2e0:	41 51                                           	push   r9
    10402e8be2e2:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    10402e8be2e5:	41 53                                           	push   r11
    10402e8be2e7:	57                                              	push   rdi
    10402e8be2e8:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    10402e8be2eb:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    10402e8be2ee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8be2f2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8be2f5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8be2f8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    10402e8be2fb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8be2fe:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    10402e8be302:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e8be306:	e8 3d 82 ed ff                                  	call   0x10402e796548
    10402e8be30b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8be30f:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    10402e8be313:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    10402e8be318:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    10402e8be31e:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    10402e8be324:	41 0f 45 c3                                     	cmovne eax,r11d
    10402e8be328:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8be32c:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    10402e8be333:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    10402e8be337:	41 89 7c 24 07                                  	mov    DWORD PTR [r12+0x7],edi
    10402e8be33c:	48 8b e5                                        	mov    rsp,rbp
    10402e8be33f:	5d                                              	pop    rbp
    10402e8be340:	c2 10 00                                        	ret    0x10
    10402e8be343:	43 8b 7c 20 58                                  	mov    edi,DWORD PTR [r8+r12*1+0x58]
    10402e8be348:	bf 01 00 00 00                                  	mov    edi,0x1
    10402e8be34d:	41 bf ff ff ff ff                               	mov    r15d,0xffffffff
    10402e8be353:	43 83 7c 20 58 00                               	cmp    DWORD PTR [r8+r12*1+0x58],0x0
    10402e8be359:	41 0f 45 ff                                     	cmovne edi,r15d
    10402e8be35d:	45 8d 83 00 02 00 00                            	lea    r8d,[r11+0x200]
    10402e8be364:	44 89 41 07                                     	mov    DWORD PTR [rcx+0x7],r8d
    10402e8be368:	8b c7                                           	mov    eax,edi
    10402e8be36a:	48 8b e5                                        	mov    rsp,rbp
    10402e8be36d:	5d                                              	pop    rbp
    10402e8be36e:	c2 10 00                                        	ret    0x10
    10402e8be371:	41 b8 80 00 00 00                               	mov    r8d,0x80
    10402e8be377:	41 d1 f8                                        	sar    r8d,1
    10402e8be37a:	4d 63 c0                                        	movsxd r8,r8d
    10402e8be37d:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    10402e8be381:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    10402e8be385:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    10402e8be389:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    10402e8be38d:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    10402e8be395:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    10402e8be399:	49 8b c0                                        	mov    rax,r8
    10402e8be39c:	e8 8f ab ed ff                                  	call   0x10402e798f30
    10402e8be3a1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e8be3a5:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    10402e8be3a8:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    10402e8be3ab:	8b 7d b8                                        	mov    edi,DWORD PTR [rbp-0x48]
    10402e8be3ae:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    10402e8be3b1:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    10402e8be3b9:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    10402e8be3bd:	e9 5c 75 ff ff                                  	jmp    0x10402e8b591e
    10402e8be3c2:	e8 79 ab ed ff                                  	call   0x10402e798f40
    10402e8be3c7:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8be3cc:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    10402e8be3d0:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8be3d5:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8be3db:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8be3e1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8be3e6:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    10402e8be3ee:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8be3f6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8be3fe:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8be406:	e9 21 82 ff ff                                  	jmp    0x10402e8b662c
    10402e8be40b:	e8 30 ab ed ff                                  	call   0x10402e798f40
    10402e8be410:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    10402e8be415:	44 8b 85 68 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x98]
    10402e8be41c:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    10402e8be423:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    10402e8be428:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    10402e8be42e:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    10402e8be434:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8be439:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    10402e8be440:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    10402e8be448:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8be450:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8be458:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8be460:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    10402e8be467:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    10402e8be46d:	e9 8a 82 ff ff                                  	jmp    0x10402e8b66fc
    10402e8be472:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    10402e8be47a:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    10402e8be481:	e8 ba aa ed ff                                  	call   0x10402e798f40
    10402e8be486:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    10402e8be48a:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    10402e8be48e:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    10402e8be493:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    10402e8be497:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    10402e8be49d:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8be4a1:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    10402e8be4a5:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    10402e8be4aa:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    10402e8be4af:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    10402e8be4b4:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    10402e8be4bb:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    10402e8be4c2:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    10402e8be4c9:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    10402e8be4d1:	8b bd 08 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1f8]
    10402e8be4d7:	c5 fb 10 b5 28 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x1d8]
    10402e8be4df:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    10402e8be4e7:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    10402e8be4ef:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    10402e8be4f7:	e9 13 b0 ff ff                                  	jmp    0x10402e8b950f
    10402e8be4fc:	e8 3f aa ed ff                                  	call   0x10402e798f40
    10402e8be501:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8be505:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    10402e8be508:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8be50c:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    10402e8be513:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    10402e8be51b:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    10402e8be523:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    10402e8be52b:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    10402e8be533:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    10402e8be53b:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    10402e8be543:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    10402e8be54b:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    10402e8be553:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    10402e8be55a:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    10402e8be560:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    10402e8be567:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    10402e8be56e:	e9 a5 b4 ff ff                                  	jmp    0x10402e8b9a18
    10402e8be573:	e8 c8 a9 ed ff                                  	call   0x10402e798f40
    10402e8be578:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    10402e8be57b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8be57f:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    10402e8be585:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    10402e8be58c:	e9 8e c4 ff ff                                  	jmp    0x10402e8baa1f
    10402e8be591:	e8 aa a9 ed ff                                  	call   0x10402e798f40
    10402e8be596:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    10402e8be59a:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    10402e8be59e:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    10402e8be5a5:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    10402e8be5ac:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    10402e8be5b2:	e9 f1 d8 ff ff                                  	jmp    0x10402e8bbea8
    10402e8be5b7:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    10402e8be5bf:	c5 78 11 9d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm11
    10402e8be5c7:	c5 f8 11 ad 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm5
    10402e8be5cf:	c5 f8 11 95 f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm2
    10402e8be5d7:	4c 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r11
    10402e8be5de:	48 89 b5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rsi
    10402e8be5e5:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    10402e8be5ec:	e8 4f a9 ed ff                                  	call   0x10402e798f40
    10402e8be5f1:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    10402e8be5f5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    10402e8be5f9:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    10402e8be601:	c5 78 10 9d 60 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x1a0]
    10402e8be609:	c5 f8 10 ad 40 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1c0]
    10402e8be611:	c5 f8 10 95 f0 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x210]
    10402e8be619:	8b 85 b0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x150]
    10402e8be61f:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    10402e8be625:	44 8b 9d 08 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1f8]
    10402e8be62c:	8b b5 a0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x260]
    10402e8be632:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    10402e8be639:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    10402e8be63f:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    10402e8be647:	e9 0f e6 ff ff                                  	jmp    0x10402e8bcc5b
    10402e8be64c:	8b c8                                           	mov    ecx,eax
    10402e8be64e:	33 d2                                           	xor    edx,edx
    10402e8be650:	e9 6e e6 ff ff                                  	jmp    0x10402e8bccc3
    10402e8be655:	33 d2                                           	xor    edx,edx
    10402e8be657:	44 8b c8                                        	mov    r9d,eax
    10402e8be65a:	e9 82 e6 ff ff                                  	jmp    0x10402e8bcce1
    10402e8be65f:	33 d2                                           	xor    edx,edx
    10402e8be661:	8b c8                                           	mov    ecx,eax
    10402e8be663:	e9 c3 e6 ff ff                                  	jmp    0x10402e8bcd2b
    10402e8be668:	33 d2                                           	xor    edx,edx
    10402e8be66a:	44 8b f8                                        	mov    r15d,eax
    10402e8be66d:	e9 d7 e6 ff ff                                  	jmp    0x10402e8bcd49
    10402e8be672:	e8 d9 a5 ed ff                                  	call   0x10402e798c50
    10402e8be677:	e8 d4 a5 ed ff                                  	call   0x10402e798c50
    10402e8be67c:	90                                              	nop
    10402e8be67d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    10402e8be680:	80 d7 8b                                        	adc    bh,0x8b
    10402e8be683:	2e 40 10 00                                     	cs rex adc BYTE PTR [rax],al
    10402e8be687:	00 6e d7                                        	add    BYTE PTR [rsi-0x29],ch
    10402e8be68a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be68c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be68f:	00 5c d7 8b                                     	add    BYTE PTR [rdi+rdx*8-0x75],bl
    10402e8be693:	2e 40 10 00                                     	cs rex adc BYTE PTR [rax],al
    10402e8be697:	00 4a d7                                        	add    BYTE PTR [rdx-0x29],cl
    10402e8be69a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be69c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be69f:	00 38                                           	add    BYTE PTR [rax],bh
    10402e8be6a1:	d7                                              	xlat   BYTE PTR ds:[rbx]
    10402e8be6a2:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be6a4:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be6a7:	00 26                                           	add    BYTE PTR [rsi],ah
    10402e8be6a9:	d7                                              	xlat   BYTE PTR ds:[rbx]
    10402e8be6aa:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be6ac:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be6af:	00 14 d7                                        	add    BYTE PTR [rdi+rdx*8],dl
    10402e8be6b2:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be6b4:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be6b7:	00 0a                                           	add    BYTE PTR [rdx],cl
    10402e8be6b9:	d5 8b 2e 40 10                                  	{rex2 0x8b} ucomiss xmm0,DWORD PTR [r8+0x10]
    10402e8be6be:	00 00                                           	add    BYTE PTR [rax],al
    10402e8be6c0:	05 d5 8b 2e 40                                  	add    eax,0x402e8bd5
    10402e8be6c5:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be6c7:	00 fb                                           	add    bl,bh
    10402e8be6c9:	d4                                              	(bad)
    10402e8be6ca:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be6cc:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be6cf:	00 f1                                           	add    cl,dh
    10402e8be6d1:	d4                                              	(bad)
    10402e8be6d2:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be6d4:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be6d7:	00 e6                                           	add    dh,ah
    10402e8be6d9:	d4                                              	(bad)
    10402e8be6da:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be6dc:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be6df:	00 dc                                           	add    ah,bl
    10402e8be6e1:	d4                                              	(bad)
    10402e8be6e2:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be6e4:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be6e7:	00 d1                                           	add    cl,dl
    10402e8be6e9:	d4                                              	(bad)
    10402e8be6ea:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be6ec:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be6ef:	00 97 c7 8b 2e 40                               	add    BYTE PTR [rdi+0x402e8bc7],dl
    10402e8be6f5:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be6f7:	00 8c c7 8b 2e 40 10                            	add    BYTE PTR [rdi+rax*8+0x10402e8b],cl
    10402e8be6fe:	00 00                                           	add    BYTE PTR [rax],al
    10402e8be700:	81 c7 8b 2e 40 10                               	add    edi,0x10402e8b
    10402e8be706:	00 00                                           	add    BYTE PTR [rax],al
    10402e8be708:	76 c7                                           	jbe    0x10402e8be6d1
    10402e8be70a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be70c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be70f:	00 6c c7 8b                                     	add    BYTE PTR [rdi+rax*8-0x75],ch
    10402e8be713:	2e 40 10 00                                     	cs rex adc BYTE PTR [rax],al
    10402e8be717:	00 61 c7                                        	add    BYTE PTR [rcx-0x39],ah
    10402e8be71a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be71c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be71f:	00 57 c7                                        	add    BYTE PTR [rdi-0x39],dl
    10402e8be722:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be724:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be727:	00 77 96                                        	add    BYTE PTR [rdi-0x6a],dh
    10402e8be72a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be72c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be72f:	00 6c 96 8b                                     	add    BYTE PTR [rsi+rdx*4-0x75],ch
    10402e8be733:	2e 40 10 00                                     	cs rex adc BYTE PTR [rax],al
    10402e8be737:	00 56 96                                        	add    BYTE PTR [rsi-0x6a],dl
    10402e8be73a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be73c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be73f:	00 46 96                                        	add    BYTE PTR [rsi-0x6a],al
    10402e8be742:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be744:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be747:	00 36                                           	add    BYTE PTR [rsi],dh
    10402e8be749:	96                                              	xchg   esi,eax
    10402e8be74a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be74c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be74f:	00 20                                           	add    BYTE PTR [rax],ah
    10402e8be751:	96                                              	xchg   esi,eax
    10402e8be752:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be754:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be757:	00 10                                           	add    BYTE PTR [rax],dl
    10402e8be759:	96                                              	xchg   esi,eax
    10402e8be75a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be75c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be75f:	00 90 96 8b 2e 40                               	add    BYTE PTR [rax+0x402e8b96],dl
    10402e8be765:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be767:	00 d7                                           	add    bh,dl
    10402e8be769:	89 8b 2e 40 10 00                               	mov    DWORD PTR [rbx+0x10402e],ecx
    10402e8be76f:	00 8b 8b 8b 2e 40                               	add    BYTE PTR [rbx+0x402e8b8b],cl
    10402e8be775:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be777:	00 75 8b                                        	add    BYTE PTR [rbp-0x75],dh
    10402e8be77a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be77c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be77f:	00 66 8b                                        	add    BYTE PTR [rsi-0x75],ah
    10402e8be782:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be784:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be787:	00 56 8b                                        	add    BYTE PTR [rsi-0x75],dl
    10402e8be78a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be78c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be78f:	00 40 8b                                        	add    BYTE PTR [rax-0x75],al
    10402e8be792:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be794:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be797:	00 30                                           	add    BYTE PTR [rax],dh
    10402e8be799:	8b 8b 2e 40 10 00                               	mov    ecx,DWORD PTR [rbx+0x10402e]
    10402e8be79f:	00 95 8b 8b 2e 40                               	add    BYTE PTR [rbp+0x402e8b8b],dl
    10402e8be7a5:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be7a7:	00 ca                                           	add    dl,cl
    10402e8be7a9:	89 8b 2e 40 10 00                               	mov    DWORD PTR [rbx+0x10402e],ecx
    10402e8be7af:	00 11                                           	add    BYTE PTR [rcx],dl
    10402e8be7b1:	81 8b 2e 40 10 00 00 fb 80 8b                   	or     DWORD PTR [rbx+0x10402e],0x8b80fb00
    10402e8be7bb:	2e 40 10 00                                     	cs rex adc BYTE PTR [rax],al
    10402e8be7bf:	00 ec                                           	add    ah,ch
    10402e8be7c1:	80 8b 2e 40 10 00 00                            	or     BYTE PTR [rbx+0x10402e],0x0
    10402e8be7c8:	dc 80 8b 2e 40 10                               	fadd   QWORD PTR [rax+0x10402e8b]
    10402e8be7ce:	00 00                                           	add    BYTE PTR [rax],al
    10402e8be7d0:	c6 80 8b 2e 40 10 00                            	mov    BYTE PTR [rax+0x10402e8b],0x0
    10402e8be7d7:	00 b6 80 8b 2e 40                               	add    BYTE PTR [rsi+0x402e8b80],dh
    10402e8be7dd:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be7df:	00 1b                                           	add    BYTE PTR [rbx],bl
    10402e8be7e1:	81 8b 2e 40 10 00 00 43 7f 8b                   	or     DWORD PTR [rbx+0x10402e],0x8b7f4300
    10402e8be7eb:	2e 40 10 00                                     	cs rex adc BYTE PTR [rax],al
    10402e8be7ef:	00 86 76 8b 2e 40                               	add    BYTE PTR [rsi+0x402e8b76],al
    10402e8be7f5:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be7f7:	00 70 76                                        	add    BYTE PTR [rax+0x76],dh
    10402e8be7fa:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be7fc:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be7ff:	00 61 76                                        	add    BYTE PTR [rcx+0x76],ah
    10402e8be802:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be804:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be807:	00 51 76                                        	add    BYTE PTR [rcx+0x76],dl
    10402e8be80a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be80c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be80f:	00 3b                                           	add    BYTE PTR [rbx],bh
    10402e8be811:	76 8b                                           	jbe    0x10402e8be79e
    10402e8be813:	2e 40 10 00                                     	cs rex adc BYTE PTR [rax],al
    10402e8be817:	00 2b                                           	add    BYTE PTR [rbx],ch
    10402e8be819:	76 8b                                           	jbe    0x10402e8be7a6
    10402e8be81b:	2e 40 10 00                                     	cs rex adc BYTE PTR [rax],al
    10402e8be81f:	00 90 76 8b 2e 40                               	add    BYTE PTR [rax+0x402e8b76],dl
    10402e8be825:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be827:	00 5f 74                                        	add    BYTE PTR [rdi+0x74],bl
    10402e8be82a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be82c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be82f:	00 aa 6b 8b 2e 40                               	add    BYTE PTR [rdx+0x402e8b6b],ch
    10402e8be835:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be837:	00 95 6b 8b 2e 40                               	add    BYTE PTR [rbp+0x402e8b6b],dl
    10402e8be83d:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be83f:	00 86 6b 8b 2e 40                               	add    BYTE PTR [rsi+0x402e8b6b],al
    10402e8be845:	10 00                                           	adc    BYTE PTR [rax],al
    10402e8be847:	00 77 6b                                        	add    BYTE PTR [rdi+0x6b],dh
    10402e8be84a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be84c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be84f:	00 62 6b                                        	add    BYTE PTR [rdx+0x6b],ah
    10402e8be852:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be854:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be857:	00 53 6b                                        	add    BYTE PTR [rbx+0x6b],dl
    10402e8be85a:	8b 2e                                           	mov    ebp,DWORD PTR [rsi]
    10402e8be85c:	40 10 00                                        	rex adc BYTE PTR [rax],al
    10402e8be85f:	00 b4 6b 8b 2e 40 10                            	add    BYTE PTR [rbx+rbp*2+0x10402e8b],dh
    10402e8be866:	00 00                                           	add    BYTE PTR [rax],al
    10402e8be868:	81 00 00 00 1c 00                               	add    DWORD PTR [rax],0x1c0000
    10402e8be86e:	00 00                                           	add    BYTE PTR [rax],al
    10402e8be870:	91                                              	xchg   ecx,eax
    10402e8be871:	01 d7                                           	add    edi,edx
    10402e8be873:	03 05 8f 94 02 d7                               	add    eax,DWORD PTR [rip+0xffffffffd702948f]        # 0x1040058e7d08
    10402e8be879:	03 05 26 d7 03 05                               	add    eax,DWORD PTR [rip+0x503d726]        # 0x1040338fbfa5
    10402e8be87f:	b0 05                                           	mov    al,0x5
    10402e8be881:	d7                                              	xlat   BYTE PTR ds:[rbx]
    10402e8be882:	03 05 00 00 00 00                               	add    eax,DWORD PTR [rip+0x0]        # 0x10402e8be888
	...
