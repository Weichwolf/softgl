
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms2/selected/sg_raster_triangle_tile_prepared-turbofan.bin:     file format binary


Disassembly of section .data:

000023a8d353bf00 <.data>:
    23a8d353bf00:	55                                              	push   rbp
    23a8d353bf01:	48 8b ec                                        	mov    rbp,rsp
    23a8d353bf04:	6a 30                                           	push   0x30
    23a8d353bf06:	56                                              	push   rsi
    23a8d353bf07:	48 81 ec e8 03 00 00                            	sub    rsp,0x3e8
    23a8d353bf0e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    23a8d353bf12:	8b f9                                           	mov    edi,ecx
    23a8d353bf14:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    23a8d353bf18:	0f 86 53 8a 00 00                               	jbe    0x23a8d3544971
    23a8d353bf1e:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    23a8d353bf22:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    23a8d353bf26:	4d 0b de                                        	or     r11,r14
    23a8d353bf29:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    23a8d353bf2d:	41 8d 8c 24 00 fe ff ff                         	lea    ecx,[r12-0x200]
    23a8d353bf35:	41 89 4b 07                                     	mov    DWORD PTR [r11+0x7],ecx
    23a8d353bf39:	45 8b 7b 2f                                     	mov    r15d,DWORD PTR [r11+0x2f]
    23a8d353bf3d:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    23a8d353bf41:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    23a8d353bf48:	44 8b e0                                        	mov    r12d,eax
    23a8d353bf4b:	43 8b 74 20 14                                  	mov    esi,DWORD PTR [r8+r12*1+0x14]
    23a8d353bf50:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    23a8d353bf57:	85 f6                                           	test   esi,esi
    23a8d353bf59:	0f 85 4c 00 00 00                               	jne    0x23a8d353bfab
    23a8d353bf5f:	45 85 ff                                        	test   r15d,r15d
    23a8d353bf62:	0f 84 43 00 00 00                               	je     0x23a8d353bfab
    23a8d353bf68:	43 8b 74 38 24                                  	mov    esi,DWORD PTR [r8+r15*1+0x24]
    23a8d353bf6d:	43 83 7c 38 24 00                               	cmp    DWORD PTR [r8+r15*1+0x24],0x0
    23a8d353bf73:	0f 84 32 00 00 00                               	je     0x23a8d353bfab
    23a8d353bf79:	ff 75 18                                        	push   QWORD PTR [rbp+0x18]
    23a8d353bf7c:	ff 75 10                                        	push   QWORD PTR [rbp+0x10]
    23a8d353bf7f:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    23a8d353bf83:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    23a8d353bf87:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353bf8b:	8b cf                                           	mov    ecx,edi
    23a8d353bf8d:	e8 be 05 f1 ff                                  	call   0x23a8d344c550
    23a8d353bf92:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d353bf96:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    23a8d353bf9d:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    23a8d353bfa1:	89 7e 07                                        	mov    DWORD PTR [rsi+0x7],edi
    23a8d353bfa4:	48 8b e5                                        	mov    rsp,rbp
    23a8d353bfa7:	5d                                              	pop    rbp
    23a8d353bfa8:	c2 10 00                                        	ret    0x10
    23a8d353bfab:	4d 8b d3                                        	mov    r10,r11
    23a8d353bfae:	44 8b d9                                        	mov    r11d,ecx
    23a8d353bfb1:	49 8b ca                                        	mov    rcx,r10
    23a8d353bfb4:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    23a8d353bfbb:	44 8b fb                                        	mov    r15d,ebx
    23a8d353bfbe:	c4 81 7a 6f 74 38 10                            	vmovdqu xmm6,XMMWORD PTR [r8+r15*1+0x10]
    23a8d353bfc5:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    23a8d353bfcf:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d353bfd4:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d353bfd8:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    23a8d353bfdc:	49 ba 40 29 a3 be 86 62 00 00                   	movabs r10,0x6286bea32940
    23a8d353bfe6:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    23a8d353bfec:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    23a8d353bff1:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    23a8d353bff7:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    23a8d353bffc:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    23a8d353c001:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    23a8d353c005:	8b da                                           	mov    ebx,edx
    23a8d353c007:	c4 41 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x10]
    23a8d353c00e:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    23a8d353c012:	4c 8b 15 c5 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc5]        # 0x23a8d353bfde
    23a8d353c019:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    23a8d353c01f:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    23a8d353c024:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    23a8d353c02a:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    23a8d353c02f:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    23a8d353c034:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    23a8d353c039:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    23a8d353c03e:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    23a8d353c044:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    23a8d353c048:	8b d7                                           	mov    edx,edi
    23a8d353c04a:	c4 41 7a 6f 64 10 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rdx*1+0x10]
    23a8d353c051:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    23a8d353c055:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x23a8d353bfde
    23a8d353c05c:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    23a8d353c062:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    23a8d353c067:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    23a8d353c06d:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    23a8d353c072:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    23a8d353c077:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    23a8d353c07c:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    23a8d353c081:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    23a8d353c087:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    23a8d353c08b:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    23a8d353c090:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    23a8d353c095:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    23a8d353c099:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    23a8d353c09f:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    23a8d353c0a3:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    23a8d353c0a8:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    23a8d353c0ac:	c4 e3 f9 16 d7 00                               	vpextrq rdi,xmm2,0x0
    23a8d353c0b2:	c4 e3 f9 16 d6 01                               	vpextrq rsi,xmm2,0x1
    23a8d353c0b8:	48 2b fe                                        	sub    rdi,rsi
    23a8d353c0bb:	48 85 ff                                        	test   rdi,rdi
    23a8d353c0be:	0f 8e 7f 88 00 00                               	jle    0x23a8d3544943
    23a8d353c0c4:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    23a8d353c0c9:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    23a8d353c0ce:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    23a8d353c0d4:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    23a8d353c0de:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d353c0e3:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d353c0e7:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    23a8d353c0eb:	8d 70 04                                        	lea    esi,[rax+0x4]
    23a8d353c0ee:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    23a8d353c0f3:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    23a8d353c0f8:	c4 c3 59 22 24 30 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rsi*1],0x1
    23a8d353c0ff:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    23a8d353c104:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    23a8d353c108:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    23a8d353c10d:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    23a8d353c112:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    23a8d353c117:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    23a8d353c11c:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d353c120:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    23a8d353c124:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    23a8d353c12e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d353c133:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d353c137:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    23a8d353c13b:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    23a8d353c13f:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    23a8d353c144:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    23a8d353c14a:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    23a8d353c14f:	43 8b 74 20 58                                  	mov    esi,DWORD PTR [r8+r12*1+0x58]
    23a8d353c154:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    23a8d353c158:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    23a8d353c15c:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    23a8d353c164:	85 f6                                           	test   esi,esi
    23a8d353c166:	0f 84 39 00 00 00                               	je     0x23a8d353c1a5
    23a8d353c16c:	44 8d 48 50                                     	lea    r9d,[rax+0x50]
    23a8d353c170:	49 8d 78 48                                     	lea    rdi,[r8+0x48]
    23a8d353c174:	c4 a1 7b 10 24 27                               	vmovsd xmm4,QWORD PTR [rdi+r12*1]
    23a8d353c17a:	c4 83 59 22 2c 08 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+r9*1],0x0
    23a8d353c181:	8d 78 54                                        	lea    edi,[rax+0x54]
    23a8d353c184:	c4 c3 59 22 04 38 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rdi*1],0x1
    23a8d353c18b:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    23a8d353c18f:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    23a8d353c194:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    23a8d353c199:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    23a8d353c1a1:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    23a8d353c1a5:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    23a8d353c1a9:	c4 c3 f9 16 e1 00                               	vpextrq r9,xmm4,0x0
    23a8d353c1af:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    23a8d353c1b4:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    23a8d353c1ba:	49 23 c1                                        	and    rax,r9
    23a8d353c1bd:	a8 01                                           	test   al,0x1
    23a8d353c1bf:	0f 85 20 00 00 00                               	jne    0x23a8d353c1e5
    23a8d353c1c5:	b8 01 00 00 00                                  	mov    eax,0x1
    23a8d353c1ca:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    23a8d353c1cf:	85 f6                                           	test   esi,esi
    23a8d353c1d1:	0f 45 c7                                        	cmovne eax,edi
    23a8d353c1d4:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    23a8d353c1db:	89 79 07                                        	mov    DWORD PTR [rcx+0x7],edi
    23a8d353c1de:	48 8b e5                                        	mov    rsp,rbp
    23a8d353c1e1:	5d                                              	pop    rbp
    23a8d353c1e2:	c2 10 00                                        	ret    0x10
    23a8d353c1e5:	c4 63 79 16 e8 01                               	vpextrd eax,xmm13,0x1
    23a8d353c1eb:	c4 63 79 16 d6 01                               	vpextrd esi,xmm10,0x1
    23a8d353c1f1:	45 33 c9                                        	xor    r9d,r9d
    23a8d353c1f4:	3b f0                                           	cmp    esi,eax
    23a8d353c1f6:	41 0f 9e c1                                     	setle  r9b
    23a8d353c1fa:	48 89 4d e8                                     	mov    QWORD PTR [rbp-0x18],rcx
    23a8d353c1fe:	33 c9                                           	xor    ecx,ecx
    23a8d353c200:	3b f0                                           	cmp    esi,eax
    23a8d353c202:	0f 95 c1                                        	setne  cl
    23a8d353c205:	4c 89 5d e0                                     	mov    QWORD PTR [rbp-0x20],r11
    23a8d353c209:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    23a8d353c20e:	c5 79 7e d7                                     	vmovd  edi,xmm10
    23a8d353c212:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    23a8d353c219:	45 33 ff                                        	xor    r15d,r15d
    23a8d353c21c:	41 3b fb                                        	cmp    edi,r11d
    23a8d353c21f:	41 0f 9e c7                                     	setle  r15b
    23a8d353c223:	44 0b f9                                        	or     r15d,ecx
    23a8d353c226:	45 23 f9                                        	and    r15d,r9d
    23a8d353c229:	c4 63 79 16 c1 01                               	vpextrd ecx,xmm8,0x1
    23a8d353c22f:	45 33 c9                                        	xor    r9d,r9d
    23a8d353c232:	3b ce                                           	cmp    ecx,esi
    23a8d353c234:	41 0f 9e c1                                     	setle  r9b
    23a8d353c238:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    23a8d353c23f:	45 33 ff                                        	xor    r15d,r15d
    23a8d353c242:	3b ce                                           	cmp    ecx,esi
    23a8d353c244:	41 0f 95 c7                                     	setne  r15b
    23a8d353c248:	48 89 b5 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rsi
    23a8d353c24f:	c5 79 7e c6                                     	vmovd  esi,xmm8
    23a8d353c253:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    23a8d353c25a:	33 db                                           	xor    ebx,ebx
    23a8d353c25c:	3b f7                                           	cmp    esi,edi
    23a8d353c25e:	0f 9e c3                                        	setle  bl
    23a8d353c261:	41 0b df                                        	or     ebx,r15d
    23a8d353c264:	41 23 d9                                        	and    ebx,r9d
    23a8d353c267:	45 33 ff                                        	xor    r15d,r15d
    23a8d353c26a:	3b c8                                           	cmp    ecx,eax
    23a8d353c26c:	41 0f 95 c7                                     	setne  r15b
    23a8d353c270:	45 33 c9                                        	xor    r9d,r9d
    23a8d353c273:	44 3b de                                        	cmp    r11d,esi
    23a8d353c276:	41 0f 9e c1                                     	setle  r9b
    23a8d353c27a:	45 0b cf                                        	or     r9d,r15d
    23a8d353c27d:	45 33 ff                                        	xor    r15d,r15d
    23a8d353c280:	3b c1                                           	cmp    eax,ecx
    23a8d353c282:	41 0f 9e c7                                     	setle  r15b
    23a8d353c286:	45 23 f9                                        	and    r15d,r9d
    23a8d353c289:	47 8b 8c 20 e0 00 00 00                         	mov    r9d,DWORD PTR [r8+r12*1+0xe0]
    23a8d353c291:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    23a8d353c295:	4c 89 65 d0                                     	mov    QWORD PTR [rbp-0x30],r12
    23a8d353c299:	c5 f8 11 bd 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm7
    23a8d353c2a1:	48 89 9d 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rbx
    23a8d353c2a8:	43 83 bc 20 e0 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xe0],0x0
    23a8d353c2b1:	0f 85 0d 00 00 00                               	jne    0x23a8d353c2c4
    23a8d353c2b7:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    23a8d353c2bb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    23a8d353c2bf:	e9 49 01 00 00                                  	jmp    0x23a8d353c40d
    23a8d353c2c4:	c4 01 7a 10 94 20 d8 00 00 00                   	vmovss xmm10,DWORD PTR [r8+r12*1+0xd8]
    23a8d353c2ce:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353c2d3:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    23a8d353c2d8:	0f 8a 1d 00 00 00                               	jp     0x23a8d353c2fb
    23a8d353c2de:	0f 85 17 00 00 00                               	jne    0x23a8d353c2fb
    23a8d353c2e4:	c4 01 7a 10 ac 20 dc 00 00 00                   	vmovss xmm13,DWORD PTR [r8+r12*1+0xdc]
    23a8d353c2ee:	c4 41 78 2e c5                                  	vucomiss xmm8,xmm13
    23a8d353c2f3:	7a 06                                           	jp     0x23a8d353c2fb
    23a8d353c2f5:	0f 84 0d 01 00 00                               	je     0x23a8d353c408
    23a8d353c2fb:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    23a8d353c300:	c4 41 78 28 ec                                  	vmovaps xmm13,xmm12
    23a8d353c305:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    23a8d353c30a:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    23a8d353c30e:	c4 c1 12 59 e1                                  	vmulss xmm4,xmm13,xmm9
    23a8d353c313:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    23a8d353c318:	c4 c1 4a 59 ec                                  	vmulss xmm5,xmm6,xmm12
    23a8d353c31d:	c5 da 5c e5                                     	vsubss xmm4,xmm4,xmm5
    23a8d353c321:	c5 78 2e c4                                     	vucomiss xmm8,xmm4
    23a8d353c325:	7a 06                                           	jp     0x23a8d353c32d
    23a8d353c327:	0f 84 db 00 00 00                               	je     0x23a8d353c408
    23a8d353c32d:	c4 c1 7a 10 6c 10 18                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x18]
    23a8d353c334:	4c 8b 8d e8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x218]
    23a8d353c33b:	c4 81 7a 10 44 08 18                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x18]
    23a8d353c342:	c5 d2 5c e8                                     	vsubss xmm5,xmm5,xmm0
    23a8d353c346:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    23a8d353c34b:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    23a8d353c352:	c4 c1 7a 10 7c 18 18                            	vmovss xmm7,DWORD PTR [r8+rbx*1+0x18]
    23a8d353c359:	c5 c2 5c c0                                     	vsubss xmm0,xmm7,xmm0
    23a8d353c35d:	c5 9a 59 f8                                     	vmulss xmm7,xmm12,xmm0
    23a8d353c361:	c5 b2 5c ff                                     	vsubss xmm7,xmm9,xmm7
    23a8d353c365:	c5 c2 5e fc                                     	vdivss xmm7,xmm7,xmm4
    23a8d353c369:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    23a8d353c36d:	49 ba 60 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32860
    23a8d353c377:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    23a8d353c37c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353c380:	0f 87 04 00 00 00                               	ja     0x23a8d353c38a
    23a8d353c386:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353c38a:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    23a8d353c38f:	c5 ca 59 f5                                     	vmulss xmm6,xmm6,xmm5
    23a8d353c393:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    23a8d353c397:	c5 fa 5e c4                                     	vdivss xmm0,xmm0,xmm4
    23a8d353c39b:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    23a8d353c39f:	4c 8b 15 c9 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc9]        # 0x23a8d353c36f
    23a8d353c3a6:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353c3ab:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    23a8d353c3af:	0f 87 04 00 00 00                               	ja     0x23a8d353c3b9
    23a8d353c3b5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d353c3b9:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    23a8d353c3bd:	0f 87 04 00 00 00                               	ja     0x23a8d353c3c7
    23a8d353c3c3:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353c3c7:	c4 c1 2a 59 c1                                  	vmulss xmm0,xmm10,xmm9
    23a8d353c3cc:	c4 81 7a 10 b4 20 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+r12*1+0xdc]
    23a8d353c3d6:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    23a8d353c3dc:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    23a8d353c3e1:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    23a8d353c3e5:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353c3e9:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d353c3ed:	c5 f8 10 bd 50 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2b0]
    23a8d353c3f5:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    23a8d353c3fd:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    23a8d353c403:	e9 05 00 00 00                                  	jmp    0x23a8d353c40d
    23a8d353c408:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d353c40d:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    23a8d353c412:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    23a8d353c416:	c4 c3 79 16 d9 01                               	vpextrd r9d,xmm3,0x1
    23a8d353c41c:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    23a8d353c420:	44 8b 8d 28 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3d8]
    23a8d353c427:	41 f7 d9                                        	neg    r9d
    23a8d353c42a:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    23a8d353c42e:	44 8b cb                                        	mov    r9d,ebx
    23a8d353c431:	41 f7 d9                                        	neg    r9d
    23a8d353c434:	4c 89 4d 90                                     	mov    QWORD PTR [rbp-0x70],r9
    23a8d353c438:	45 8b cf                                        	mov    r9d,r15d
    23a8d353c43b:	41 f7 d9                                        	neg    r9d
    23a8d353c43e:	83 bd 70 ff ff ff 04                            	cmp    DWORD PTR [rbp-0x90],0x4
    23a8d353c445:	0f 84 21 84 00 00                               	je     0x23a8d354486c
    23a8d353c44b:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    23a8d353c452:	0f 85 70 83 00 00                               	jne    0x23a8d35447c8
    23a8d353c458:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    23a8d353c45c:	41 c1 e1 08                                     	shl    r9d,0x8
    23a8d353c460:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    23a8d353c467:	41 8b d9                                        	mov    ebx,r9d
    23a8d353c46a:	2b de                                           	sub    ebx,esi
    23a8d353c46c:	48 63 db                                        	movsxd rbx,ebx
    23a8d353c46f:	4c 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],r15
    23a8d353c476:	44 8b 7d a0                                     	mov    r15d,DWORD PTR [rbp-0x60]
    23a8d353c47a:	41 c1 e7 08                                     	shl    r15d,0x8
    23a8d353c47e:	41 81 cf 80 00 00 00                            	or     r15d,0x80
    23a8d353c485:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    23a8d353c48c:	41 8b d7                                        	mov    edx,r15d
    23a8d353c48f:	2b d1                                           	sub    edx,ecx
    23a8d353c491:	48 63 d2                                        	movsxd rdx,edx
    23a8d353c494:	48 89 55 88                                     	mov    QWORD PTR [rbp-0x78],rdx
    23a8d353c498:	41 8b d1                                        	mov    edx,r9d
    23a8d353c49b:	41 2b d3                                        	sub    edx,r11d
    23a8d353c49e:	48 63 d2                                        	movsxd rdx,edx
    23a8d353c4a1:	48 89 95 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rdx
    23a8d353c4a8:	41 8b d7                                        	mov    edx,r15d
    23a8d353c4ab:	2b d0                                           	sub    edx,eax
    23a8d353c4ad:	48 63 d2                                        	movsxd rdx,edx
    23a8d353c4b0:	44 2b cf                                        	sub    r9d,edi
    23a8d353c4b3:	4d 63 c9                                        	movsxd r9,r9d
    23a8d353c4b6:	44 2b bd 68 ff ff ff                            	sub    r15d,DWORD PTR [rbp-0x98]
    23a8d353c4bd:	4d 63 ff                                        	movsxd r15,r15d
    23a8d353c4c0:	4c 8b 55 98                                     	mov    r10,QWORD PTR [rbp-0x68]
    23a8d353c4c4:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    23a8d353c4c9:	4d 85 d2                                        	test   r10,r10
    23a8d353c4cc:	79 13                                           	jns    0x23a8d353c4e1
    23a8d353c4ce:	49 d1 ea                                        	shr    r10,1
    23a8d353c4d1:	73 04                                           	jae    0x23a8d353c4d7
    23a8d353c4d3:	49 83 ca 01                                     	or     r10,0x1
    23a8d353c4d7:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    23a8d353c4dc:	c4 41 32 58 c9                                  	vaddss xmm9,xmm9,xmm9
    23a8d353c4e1:	2b fe                                           	sub    edi,esi
    23a8d353c4e3:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    23a8d353c4ea:	4c 63 ff                                        	movsxd r15,edi
    23a8d353c4ed:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    23a8d353c4f4:	4d 8b cf                                        	mov    r9,r15
    23a8d353c4f7:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d353c4fb:	4c 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r15
    23a8d353c502:	45 33 ff                                        	xor    r15d,r15d
    23a8d353c505:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    23a8d353c50c:	85 ff                                           	test   edi,edi
    23a8d353c50e:	4d 0f 4c f9                                     	cmovl  r15,r9
    23a8d353c512:	4c 89 8d f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r9
    23a8d353c519:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    23a8d353c520:	44 2b c9                                        	sub    r9d,ecx
    23a8d353c523:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    23a8d353c52a:	4d 63 f9                                        	movsxd r15,r9d
    23a8d353c52d:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    23a8d353c534:	49 c1 e7 08                                     	shl    r15,0x8
    23a8d353c538:	4c 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r15
    23a8d353c53f:	49 f7 df                                        	neg    r15
    23a8d353c542:	48 89 9d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rbx
    23a8d353c549:	33 db                                           	xor    ebx,ebx
    23a8d353c54b:	45 85 c9                                        	test   r9d,r9d
    23a8d353c54e:	49 0f 4f df                                     	cmovg  rbx,r15
    23a8d353c552:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    23a8d353c559:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    23a8d353c560:	33 d2                                           	xor    edx,edx
    23a8d353c562:	85 ff                                           	test   edi,edi
    23a8d353c564:	48 0f 4c da                                     	cmovl  rbx,rdx
    23a8d353c568:	45 85 c9                                        	test   r9d,r9d
    23a8d353c56b:	4c 0f 4f fa                                     	cmovg  r15,rdx
    23a8d353c56f:	41 2b f3                                        	sub    esi,r11d
    23a8d353c572:	48 63 fe                                        	movsxd rdi,esi
    23a8d353c575:	4c 8b df                                        	mov    r11,rdi
    23a8d353c578:	49 c1 e3 08                                     	shl    r11,0x8
    23a8d353c57c:	4c 8b ca                                        	mov    r9,rdx
    23a8d353c57f:	85 f6                                           	test   esi,esi
    23a8d353c581:	4d 0f 4c cb                                     	cmovl  r9,r11
    23a8d353c585:	2b c8                                           	sub    ecx,eax
    23a8d353c587:	48 63 c1                                        	movsxd rax,ecx
    23a8d353c58a:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    23a8d353c591:	4c 8b d8                                        	mov    r11,rax
    23a8d353c594:	49 c1 e3 08                                     	shl    r11,0x8
    23a8d353c598:	4c 89 9d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r11
    23a8d353c59f:	49 f7 db                                        	neg    r11
    23a8d353c5a2:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    23a8d353c5a9:	4c 8b ca                                        	mov    r9,rdx
    23a8d353c5ac:	85 c9                                           	test   ecx,ecx
    23a8d353c5ae:	4d 0f 4f cb                                     	cmovg  r9,r11
    23a8d353c5b2:	4c 89 8d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r9
    23a8d353c5b9:	4c 8b 8d d8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x328]
    23a8d353c5c0:	85 f6                                           	test   esi,esi
    23a8d353c5c2:	4c 0f 4c ca                                     	cmovl  r9,rdx
    23a8d353c5c6:	85 c9                                           	test   ecx,ecx
    23a8d353c5c8:	4c 0f 4f da                                     	cmovg  r11,rdx
    23a8d353c5cc:	c4 e3 f9 16 c9 00                               	vpextrq rcx,xmm1,0x0
    23a8d353c5d2:	48 8b f1                                        	mov    rsi,rcx
    23a8d353c5d5:	48 c1 e6 08                                     	shl    rsi,0x8
    23a8d353c5d9:	4c 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r11
    23a8d353c5e0:	c4 41 79 7e f3                                  	vmovd  r11d,xmm14
    23a8d353c5e5:	4c 89 4d 98                                     	mov    QWORD PTR [rbp-0x68],r9
    23a8d353c5e9:	4c 8b ca                                        	mov    r9,rdx
    23a8d353c5ec:	45 85 db                                        	test   r11d,r11d
    23a8d353c5ef:	4c 0f 4c ce                                     	cmovl  r9,rsi
    23a8d353c5f3:	48 89 b5 a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rsi
    23a8d353c5fa:	c4 e3 f9 16 ce 01                               	vpextrq rsi,xmm1,0x1
    23a8d353c600:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    23a8d353c607:	4c 8b ce                                        	mov    r9,rsi
    23a8d353c60a:	49 c1 e1 08                                     	shl    r9,0x8
    23a8d353c60e:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    23a8d353c615:	49 f7 d9                                        	neg    r9
    23a8d353c618:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    23a8d353c61f:	c4 43 79 16 f7 01                               	vpextrd r15d,xmm14,0x1
    23a8d353c625:	48 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rbx
    23a8d353c62c:	48 8b da                                        	mov    rbx,rdx
    23a8d353c62f:	45 85 ff                                        	test   r15d,r15d
    23a8d353c632:	49 0f 4f d9                                     	cmovg  rbx,r9
    23a8d353c636:	48 89 9d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rbx
    23a8d353c63d:	48 8b 9d a0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x360]
    23a8d353c644:	45 85 db                                        	test   r11d,r11d
    23a8d353c647:	48 0f 4c da                                     	cmovl  rbx,rdx
    23a8d353c64b:	45 85 ff                                        	test   r15d,r15d
    23a8d353c64e:	4c 0f 4f ca                                     	cmovg  r9,rdx
    23a8d353c652:	47 8b 9c 20 a4 00 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0xa4]
    23a8d353c65a:	c5 fb 11 75 80                                  	vmovsd QWORD PTR [rbp-0x80],xmm6
    23a8d353c65f:	c5 f8 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm2
    23a8d353c667:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    23a8d353c66b:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    23a8d353c672:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    23a8d353c679:	48 89 b5 c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rsi
    23a8d353c680:	45 85 db                                        	test   r11d,r11d
    23a8d353c683:	0f 85 b6 00 00 00                               	jne    0x23a8d353c73f
    23a8d353c689:	47 8b bc 20 30 05 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x530]
    23a8d353c691:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    23a8d353c69a:	0f 85 9f 00 00 00                               	jne    0x23a8d353c73f
    23a8d353c6a0:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    23a8d353c6a8:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    23a8d353c6b1:	0f 85 88 00 00 00                               	jne    0x23a8d353c73f
    23a8d353c6b7:	47 8b bc 20 70 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3770]
    23a8d353c6bf:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    23a8d353c6c8:	0f 85 71 00 00 00                               	jne    0x23a8d353c73f
    23a8d353c6ce:	47 8b bc 20 74 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3774]
    23a8d353c6d6:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    23a8d353c6df:	0f 85 5a 00 00 00                               	jne    0x23a8d353c73f
    23a8d353c6e5:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    23a8d353c6e9:	41 8b d7                                        	mov    edx,r15d
    23a8d353c6ec:	4c 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r11
    23a8d353c6f3:	45 8b 9c 10 30 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x130]
    23a8d353c6fb:	41 83 bc 10 30 01 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x130],0x0
    23a8d353c704:	0f 84 16 00 00 00                               	je     0x23a8d353c720
    23a8d353c70a:	45 8b 9c 10 34 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x134]
    23a8d353c712:	41 83 eb 01                                     	sub    r11d,0x1
    23a8d353c716:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353c71a:	0f 87 11 00 00 00                               	ja     0x23a8d353c731
    23a8d353c720:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d353c725:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    23a8d353c72c:	e9 10 00 00 00                                  	jmp    0x23a8d353c741
    23a8d353c731:	33 d2                                           	xor    edx,edx
    23a8d353c733:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    23a8d353c73a:	e9 02 00 00 00                                  	jmp    0x23a8d353c741
    23a8d353c73f:	33 d2                                           	xor    edx,edx
    23a8d353c741:	4c 8b bd 30 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xd0]
    23a8d353c748:	4c 0f af bd 08 ff ff ff                         	imul   r15,QWORD PTR [rbp-0xf8]
    23a8d353c750:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    23a8d353c757:	48 8b 55 88                                     	mov    rdx,QWORD PTR [rbp-0x78]
    23a8d353c75b:	48 0f af 95 18 ff ff ff                         	imul   rdx,QWORD PTR [rbp-0xe8]
    23a8d353c763:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    23a8d353c76a:	48 8b 95 10 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xf0]
    23a8d353c771:	48 0f af d0                                     	imul   rdx,rax
    23a8d353c775:	48 8b 85 78 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x88]
    23a8d353c77c:	48 0f af c7                                     	imul   rax,rdi
    23a8d353c780:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    23a8d353c787:	48 0f af fe                                     	imul   rdi,rsi
    23a8d353c78b:	48 8b b5 28 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xd8]
    23a8d353c792:	48 0f af f1                                     	imul   rsi,rcx
    23a8d353c796:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d353c79b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d353c7a1:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d353c7a7:	c4 41 2a 5e c9                                  	vdivss xmm9,xmm10,xmm9
    23a8d353c7ac:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    23a8d353c7b1:	48 8b 8d 10 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1f0]
    23a8d353c7b8:	c4 41 7a 10 64 08 1c                            	vmovss xmm12,DWORD PTR [r8+rcx*1+0x1c]
    23a8d353c7bf:	48 89 7d 88                                     	mov    QWORD PTR [rbp-0x78],rdi
    23a8d353c7c3:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    23a8d353c7ca:	c4 41 7a 10 6c 38 1c                            	vmovss xmm13,DWORD PTR [r8+rdi*1+0x1c]
    23a8d353c7d1:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    23a8d353c7d8:	c4 41 7a 10 74 08 1c                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x1c]
    23a8d353c7df:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    23a8d353c7e6:	48 8b bd 58 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa8]
    23a8d353c7ed:	48 03 f9                                        	add    rdi,rcx
    23a8d353c7f0:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    23a8d353c7f7:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    23a8d353c7fe:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    23a8d353c805:	48 03 f9                                        	add    rdi,rcx
    23a8d353c808:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    23a8d353c80f:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    23a8d353c816:	48 8b 8d 48 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb8]
    23a8d353c81d:	48 03 f9                                        	add    rdi,rcx
    23a8d353c820:	48 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rdi
    23a8d353c827:	48 8b bd b0 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x150]
    23a8d353c82e:	48 8b 4d 98                                     	mov    rcx,QWORD PTR [rbp-0x68]
    23a8d353c832:	48 03 f9                                        	add    rdi,rcx
    23a8d353c835:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    23a8d353c839:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    23a8d353c840:	48 8b 8d c8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x138]
    23a8d353c847:	48 03 f9                                        	add    rdi,rcx
    23a8d353c84a:	49 03 d9                                        	add    rbx,r9
    23a8d353c84d:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    23a8d353c851:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    23a8d353c859:	c5 7b 11 8d 28 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d8],xmm9
    23a8d353c861:	c5 7b 11 a5 e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm12
    23a8d353c869:	c5 7b 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm13
    23a8d353c871:	c5 7b 11 b5 18 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1e8],xmm14
    23a8d353c879:	4c 89 8d 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],r9
    23a8d353c880:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    23a8d353c889:	0f 85 0a 00 00 00                               	jne    0x23a8d353c899
    23a8d353c88f:	33 c9                                           	xor    ecx,ecx
    23a8d353c891:	44 8b d9                                        	mov    r11d,ecx
    23a8d353c894:	e9 47 01 00 00                                  	jmp    0x23a8d353c9e0
    23a8d353c899:	43 8b 8c 20 c8 3c 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x3cc8]
    23a8d353c8a1:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    23a8d353c8aa:	75 e3                                           	jne    0x23a8d353c88f
    23a8d353c8ac:	43 8b 8c 20 ec 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xec]
    23a8d353c8b4:	43 83 bc 20 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xec],0x0
    23a8d353c8bd:	75 d0                                           	jne    0x23a8d353c88f
    23a8d353c8bf:	43 8b 8c 20 80 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x80]
    23a8d353c8c7:	47 0b 9c 20 80 00 00 00                         	or     r11d,DWORD PTR [r8+r12*1+0x80]
    23a8d353c8cf:	0f 85 5c 00 00 00                               	jne    0x23a8d353c931
    23a8d353c8d5:	47 8b 9c 20 30 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x530]
    23a8d353c8dd:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    23a8d353c8e6:	0f 85 45 00 00 00                               	jne    0x23a8d353c931
    23a8d353c8ec:	47 8b 9c 20 70 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3770]
    23a8d353c8f4:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    23a8d353c8fd:	0f 85 2e 00 00 00                               	jne    0x23a8d353c931
    23a8d353c903:	47 8b 9c 20 74 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3774]
    23a8d353c90b:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    23a8d353c914:	0f 85 17 00 00 00                               	jne    0x23a8d353c931
    23a8d353c91a:	47 8b 9c 20 20 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x520]
    23a8d353c922:	43 83 bc 20 20 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x520],0x0
    23a8d353c92b:	0f 85 0d 00 00 00                               	jne    0x23a8d353c93e
    23a8d353c931:	b9 01 00 00 00                                  	mov    ecx,0x1
    23a8d353c936:	45 33 db                                        	xor    r11d,r11d
    23a8d353c939:	e9 a2 00 00 00                                  	jmp    0x23a8d353c9e0
    23a8d353c93e:	47 8b 9c 20 24 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x524]
    23a8d353c946:	43 83 bc 20 24 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x524],0x0
    23a8d353c94f:	74 e0                                           	je     0x23a8d353c931
    23a8d353c951:	47 8b 9c 20 28 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x528]
    23a8d353c959:	43 83 bc 20 28 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x528],0x0
    23a8d353c962:	74 cd                                           	je     0x23a8d353c931
    23a8d353c964:	47 8b 9c 20 2c 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x52c]
    23a8d353c96c:	43 83 bc 20 2c 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x52c],0x0
    23a8d353c975:	74 ba                                           	je     0x23a8d353c931
    23a8d353c977:	47 8b 5c 20 74                                  	mov    r11d,DWORD PTR [r8+r12*1+0x74]
    23a8d353c97c:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    23a8d353c982:	0f 85 0d 00 00 00                               	jne    0x23a8d353c995
    23a8d353c988:	b9 01 00 00 00                                  	mov    ecx,0x1
    23a8d353c98d:	44 8b d9                                        	mov    r11d,ecx
    23a8d353c990:	e9 4b 00 00 00                                  	jmp    0x23a8d353c9e0
    23a8d353c995:	47 8b 5c 20 78                                  	mov    r11d,DWORD PTR [r8+r12*1+0x78]
    23a8d353c99a:	33 c9                                           	xor    ecx,ecx
    23a8d353c99c:	41 81 fb 02 03 00 00                            	cmp    r11d,0x302
    23a8d353c9a3:	0f 95 c1                                        	setne  cl
    23a8d353c9a6:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353c9aa:	41 0f 95 c3                                     	setne  r11b
    23a8d353c9ae:	45 0f b6 db                                     	movzx  r11d,r11b
    23a8d353c9b2:	44 85 d9                                        	test   ecx,r11d
    23a8d353c9b5:	0f 85 76 ff ff ff                               	jne    0x23a8d353c931
    23a8d353c9bb:	47 8b 5c 20 7c                                  	mov    r11d,DWORD PTR [r8+r12*1+0x7c]
    23a8d353c9c0:	33 c9                                           	xor    ecx,ecx
    23a8d353c9c2:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353c9c6:	0f 94 c1                                        	sete   cl
    23a8d353c9c9:	41 81 fb 03 03 00 00                            	cmp    r11d,0x303
    23a8d353c9d0:	41 0f 94 c3                                     	sete   r11b
    23a8d353c9d4:	45 0f b6 db                                     	movzx  r11d,r11b
    23a8d353c9d8:	44 0b d9                                        	or     r11d,ecx
    23a8d353c9db:	b9 01 00 00 00                                  	mov    ecx,0x1
    23a8d353c9e0:	4c 8b 85 30 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd0]
    23a8d353c9e7:	4d 2b c7                                        	sub    r8,r15
    23a8d353c9ea:	48 2b c2                                        	sub    rax,rdx
    23a8d353c9ed:	48 2b 75 88                                     	sub    rsi,QWORD PTR [rbp-0x78]
    23a8d353c9f1:	44 8b 7d c8                                     	mov    r15d,DWORD PTR [rbp-0x38]
    23a8d353c9f5:	41 8d 97 dc 36 00 00                            	lea    edx,[r15+0x36dc]
    23a8d353c9fc:	4c 89 9d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],r11
    23a8d353ca03:	45 8d 9f 68 36 00 00                            	lea    r11d,[r15+0x3668]
    23a8d353ca0a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    23a8d353ca11:	41 8d 97 f4 35 00 00                            	lea    edx,[r15+0x35f4]
    23a8d353ca18:	4c 8b 8d 20 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe0]
    23a8d353ca1f:	49 c1 e1 09                                     	shl    r9,0x9
    23a8d353ca23:	48 89 8d 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rcx
    23a8d353ca2a:	48 8b 8d 18 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xe8]
    23a8d353ca31:	48 c1 e1 09                                     	shl    rcx,0x9
    23a8d353ca35:	4c 89 85 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r8
    23a8d353ca3c:	4c 8b 45 90                                     	mov    r8,QWORD PTR [rbp-0x70]
    23a8d353ca40:	49 c1 e0 09                                     	shl    r8,0x9
    23a8d353ca44:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    23a8d353ca4b:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    23a8d353ca52:	48 c1 e6 09                                     	shl    rsi,0x9
    23a8d353ca56:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    23a8d353ca5a:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    23a8d353ca61:	49 c1 e0 09                                     	shl    r8,0x9
    23a8d353ca65:	48 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rax
    23a8d353ca6c:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    23a8d353ca73:	48 c1 e0 09                                     	shl    rax,0x9
    23a8d353ca77:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    23a8d353ca7e:	4c 8b 8d f8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x308]
    23a8d353ca85:	4c 2b 8d f0 fc ff ff                            	sub    r9,QWORD PTR [rbp-0x310]
    23a8d353ca8c:	4c 89 9d 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],r11
    23a8d353ca93:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    23a8d353ca9a:	4c 2b 9d d0 fc ff ff                            	sub    r11,QWORD PTR [rbp-0x330]
    23a8d353caa1:	4c 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r8
    23a8d353caa8:	44 8b 45 b0                                     	mov    r8d,DWORD PTR [rbp-0x50]
    23a8d353caac:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    23a8d353cab3:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    23a8d353cab7:	44 8b 45 b8                                     	mov    r8d,DWORD PTR [rbp-0x48]
    23a8d353cabb:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    23a8d353cac2:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    23a8d353cac6:	44 8b 45 c0                                     	mov    r8d,DWORD PTR [rbp-0x40]
    23a8d353caca:	4c 89 9d 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],r11
    23a8d353cad1:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    23a8d353cad5:	45 8d 87 80 35 00 00                            	lea    r8d,[r15+0x3580]
    23a8d353cadc:	4c 89 85 b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r8
    23a8d353cae3:	45 8d 87 cc 3c 00 00                            	lea    r8d,[r15+0x3ccc]
    23a8d353caea:	48 f7 d7                                        	not    rdi
    23a8d353caed:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    23a8d353caf4:	49 f7 d7                                        	not    r15
    23a8d353caf7:	48 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rdi
    23a8d353cafe:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    23a8d353cb05:	48 f7 d7                                        	not    rdi
    23a8d353cb08:	48 f7 db                                        	neg    rbx
    23a8d353cb0b:	48 89 9d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rbx
    23a8d353cb12:	48 8b 9d 70 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x90]
    23a8d353cb19:	48 f7 db                                        	neg    rbx
    23a8d353cb1c:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    23a8d353cb23:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    23a8d353cb27:	48 f7 df                                        	neg    rdi
    23a8d353cb2a:	48 89 bd 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],rdi
    23a8d353cb31:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d353cb34:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    23a8d353cb3b:	44 8d 47 30                                     	lea    r8d,[rdi+0x30]
    23a8d353cb3f:	4c 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],r8
    23a8d353cb46:	44 8d 47 20                                     	lea    r8d,[rdi+0x20]
    23a8d353cb4a:	4c 89 85 b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r8
    23a8d353cb51:	44 8d 47 10                                     	lea    r8d,[rdi+0x10]
    23a8d353cb55:	c5 79 7e df                                     	vmovd  edi,xmm11
    23a8d353cb59:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    23a8d353cb60:	c4 63 79 16 df 01                               	vpextrd edi,xmm11,0x1
    23a8d353cb66:	c4 62 79 18 de                                  	vbroadcastss xmm11,xmm6
    23a8d353cb6b:	c4 c2 79 18 cc                                  	vbroadcastss xmm1,xmm12
    23a8d353cb70:	c4 c2 79 18 dd                                  	vbroadcastss xmm3,xmm13
    23a8d353cb75:	c4 c2 79 18 e6                                  	vbroadcastss xmm4,xmm14
    23a8d353cb7a:	c4 c2 79 18 e9                                  	vbroadcastss xmm5,xmm9
    23a8d353cb7f:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    23a8d353cb86:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    23a8d353cb8a:	48 89 b5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rsi
    23a8d353cb91:	48 89 85 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rax
    23a8d353cb98:	4c 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r9
    23a8d353cb9f:	4c 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r11
    23a8d353cba6:	4c 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r15
    23a8d353cbad:	48 89 9d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rbx
    23a8d353cbb4:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    23a8d353cbbb:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    23a8d353cbbf:	c5 78 11 9d 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm11
    23a8d353cbc7:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    23a8d353cbcf:	c5 f8 11 9d 10 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2f0],xmm3
    23a8d353cbd7:	c5 f8 11 a5 e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm4
    23a8d353cbdf:	c5 f8 11 ad 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm5
    23a8d353cbe7:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d353cbeb:	e9 2d 00 00 00                                  	jmp    0x23a8d353cc1d
    23a8d353cbf0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353cbf9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    23a8d353cc00:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    23a8d353cc07:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    23a8d353cc0e:	4c 89 bd 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r15
    23a8d353cc15:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353cc19:	4c 89 65 d8                                     	mov    QWORD PTR [rbp-0x28],r12
    23a8d353cc1d:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    23a8d353cc21:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d353cc26:	0f 85 96 7d 00 00                               	jne    0x23a8d35449c2
    23a8d353cc2c:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
    23a8d353cc30:	b8 0f 00 00 00                                  	mov    eax,0xf
    23a8d353cc35:	be 03 00 00 00                                  	mov    esi,0x3
    23a8d353cc3a:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    23a8d353cc3e:	0f 4c f0                                        	cmovl  esi,eax
    23a8d353cc41:	46 8d 1c 8d 00 00 00 00                         	lea    r11d,[r9*4+0x0]
    23a8d353cc49:	41 83 e3 7c                                     	and    r11d,0x7c
    23a8d353cc4d:	46 8d 0c 85 00 00 00 00                         	lea    r9d,[r8*4+0x0]
    23a8d353cc55:	41 83 e1 7c                                     	and    r9d,0x7c
    23a8d353cc59:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    23a8d353cc60:	48 89 b5 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rsi
    23a8d353cc67:	4c 89 9d 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r11
    23a8d353cc6e:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    23a8d353cc75:	4c 8b 95 38 fc ff ff                            	mov    r10,QWORD PTR [rbp-0x3c8]
    23a8d353cc7c:	4c 89 95 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],r10
    23a8d353cc83:	4c 8b 95 10 ff ff ff                            	mov    r10,QWORD PTR [rbp-0xf0]
    23a8d353cc8a:	4c 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r10
    23a8d353cc91:	4c 8b c8                                        	mov    r9,rax
    23a8d353cc94:	48 8b 85 80 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x380]
    23a8d353cc9b:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    23a8d353cc9f:	e9 31 00 00 00                                  	jmp    0x23a8d353ccd5
    23a8d353cca4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ccad:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ccb6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ccbf:	90                                              	nop
    23a8d353ccc0:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    23a8d353ccc7:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    23a8d353ccce:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353ccd2:	45 8b c3                                        	mov    r8d,r11d
    23a8d353ccd5:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    23a8d353ccdc:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    23a8d353cce3:	4c 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r8
    23a8d353ccea:	48 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rax
    23a8d353ccf1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d353ccf6:	0f 85 0f 7d 00 00                               	jne    0x23a8d3544a0b
    23a8d353ccfc:	48 8b f0                                        	mov    rsi,rax
    23a8d353ccff:	48 2b b5 98 fc ff ff                            	sub    rsi,QWORD PTR [rbp-0x368]
    23a8d353cd06:	48 3b b5 20 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x3e0]
    23a8d353cd0d:	0f 8c 4b 02 00 00                               	jl     0x23a8d353cf5e
    23a8d353cd13:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    23a8d353cd1a:	4c 2b a5 30 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x3d0]
    23a8d353cd21:	4c 3b a5 90 fd ff ff                            	cmp    r12,QWORD PTR [rbp-0x270]
    23a8d353cd28:	0f 8c 30 02 00 00                               	jl     0x23a8d353cf5e
    23a8d353cd2e:	4c 8b bd 40 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc0]
    23a8d353cd35:	4c 2b bd 28 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x3d8]
    23a8d353cd3c:	4c 3b bd 48 fc ff ff                            	cmp    r15,QWORD PTR [rbp-0x3b8]
    23a8d353cd43:	0f 8c 15 02 00 00                               	jl     0x23a8d353cf5e
    23a8d353cd49:	41 8d 40 01                                     	lea    eax,[r8+0x1]
    23a8d353cd4d:	41 b8 05 00 00 00                               	mov    r8d,0x5
    23a8d353cd53:	3b 85 70 ff ff ff                               	cmp    eax,DWORD PTR [rbp-0x90]
    23a8d353cd59:	45 0f 4c c1                                     	cmovl  r8d,r9d
    23a8d353cd5d:	8b 9d 60 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a0]
    23a8d353cd63:	41 23 d8                                        	and    ebx,r8d
    23a8d353cd66:	48 3b b5 68 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x398]
    23a8d353cd6d:	0f 8e 29 00 00 00                               	jle    0x23a8d353cd9c
    23a8d353cd73:	4c 3b a5 c0 fe ff ff                            	cmp    r12,QWORD PTR [rbp-0x140]
    23a8d353cd7a:	0f 8e 1c 00 00 00                               	jle    0x23a8d353cd9c
    23a8d353cd80:	4d 3b df                                        	cmp    r11,r15
    23a8d353cd83:	0f 8d 13 00 00 00                               	jge    0x23a8d353cd9c
    23a8d353cd89:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    23a8d353cd90:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    23a8d353cd97:	e9 d7 01 00 00                                  	jmp    0x23a8d353cf73
    23a8d353cd9c:	c4 c1 f9 6e c4                                  	vmovq  xmm0,r12
    23a8d353cda1:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    23a8d353cda5:	4d 8b c4                                        	mov    r8,r12
    23a8d353cda8:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    23a8d353cdaf:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    23a8d353cdb5:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    23a8d353cdb9:	c5 c1 73 f7 1f                                  	vpsllq xmm7,xmm7,0x1f
    23a8d353cdbe:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d353cdc2:	c4 62 79 37 df                                  	vpcmpgtq xmm11,xmm0,xmm7
    23a8d353cdc7:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    23a8d353cdcb:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    23a8d353cdd0:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d353cdd5:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    23a8d353cdda:	c4 c1 21 73 d3 21                               	vpsrlq xmm11,xmm11,0x21
    23a8d353cde0:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d353cde5:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    23a8d353cdea:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    23a8d353cdef:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    23a8d353cdf3:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d353cdf8:	4c 03 e7                                        	add    r12,rdi
    23a8d353cdfb:	c4 c1 f9 6e cc                                  	vmovq  xmm1,r12
    23a8d353ce00:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    23a8d353ce04:	4c 03 c7                                        	add    r8,rdi
    23a8d353ce07:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    23a8d353ce0d:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    23a8d353ce12:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    23a8d353ce16:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    23a8d353ce1a:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    23a8d353ce1f:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    23a8d353ce24:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    23a8d353ce29:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    23a8d353ce2d:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    23a8d353ce32:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    23a8d353ce37:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    23a8d353ce3b:	c4 e1 f9 6e c6                                  	vmovq  xmm0,rsi
    23a8d353ce40:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    23a8d353ce44:	4c 8b e6                                        	mov    r12,rsi
    23a8d353ce47:	4c 2b a5 d0 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x330]
    23a8d353ce4e:	c4 c3 f9 22 c4 01                               	vpinsrq xmm0,xmm0,r12,0x1
    23a8d353ce54:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    23a8d353ce59:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    23a8d353ce5d:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    23a8d353ce61:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d353ce66:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    23a8d353ce6b:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    23a8d353ce70:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    23a8d353ce74:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d353ce79:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    23a8d353ce80:	48 03 f7                                        	add    rsi,rdi
    23a8d353ce83:	c4 e1 f9 6e ce                                  	vmovq  xmm1,rsi
    23a8d353ce88:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    23a8d353ce8c:	4c 03 e7                                        	add    r12,rdi
    23a8d353ce8f:	c4 c3 f1 22 cc 01                               	vpinsrq xmm1,xmm1,r12,0x1
    23a8d353ce95:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    23a8d353ce9a:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    23a8d353ce9e:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    23a8d353cea2:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    23a8d353cea7:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    23a8d353ceac:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    23a8d353ceb1:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    23a8d353ceb5:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    23a8d353ceba:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    23a8d353cebf:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    23a8d353cec3:	45 0b e0                                        	or     r12d,r8d
    23a8d353cec6:	c4 c1 f9 6e c7                                  	vmovq  xmm0,r15
    23a8d353cecb:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    23a8d353cecf:	4d 8b c7                                        	mov    r8,r15
    23a8d353ced2:	4c 2b 85 e8 fe ff ff                            	sub    r8,QWORD PTR [rbp-0x118]
    23a8d353ced9:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    23a8d353cedf:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    23a8d353cee4:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    23a8d353cee8:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    23a8d353ceec:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d353cef1:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    23a8d353cef6:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    23a8d353cefb:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    23a8d353ceff:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d353cf04:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    23a8d353cf0b:	4c 03 fe                                        	add    r15,rsi
    23a8d353cf0e:	c4 c1 f9 6e cf                                  	vmovq  xmm1,r15
    23a8d353cf13:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    23a8d353cf17:	4c 03 c6                                        	add    r8,rsi
    23a8d353cf1a:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    23a8d353cf20:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    23a8d353cf25:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    23a8d353cf29:	c5 f1 db fa                                     	vpand  xmm7,xmm1,xmm2
    23a8d353cf2d:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d353cf32:	c4 e2 21 37 cf                                  	vpcmpgtq xmm1,xmm11,xmm7
    23a8d353cf37:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    23a8d353cf3c:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    23a8d353cf40:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d353cf45:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    23a8d353cf4a:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    23a8d353cf4e:	45 0b c4                                        	or     r8d,r12d
    23a8d353cf51:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    23a8d353cf55:	44 23 c3                                        	and    r8d,ebx
    23a8d353cf58:	0f 85 12 00 00 00                               	jne    0x23a8d353cf70
    23a8d353cf5e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d353cf62:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d353cf66:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353cf6b:	e9 ba 77 00 00                                  	jmp    0x23a8d354472a
    23a8d353cf70:	49 8b d8                                        	mov    rbx,r8
    23a8d353cf73:	45 33 c0                                        	xor    r8d,r8d
    23a8d353cf76:	3b 45 10                                        	cmp    eax,DWORD PTR [rbp+0x10]
    23a8d353cf79:	41 0f 9c c0                                     	setl   r8b
    23a8d353cf7d:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    23a8d353cf84:	48 89 9d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],rbx
    23a8d353cf8b:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    23a8d353cf92:	45 85 e0                                        	test   r8d,r12d
    23a8d353cf95:	0f 85 6d 5b 00 00                               	jne    0x23a8d3542b08
    23a8d353cf9b:	83 bd 78 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x388],0x0
    23a8d353cfa2:	0f 85 70 2a 00 00                               	jne    0x23a8d353fa18
    23a8d353cfa8:	f6 c3 01                                        	test   bl,0x1
    23a8d353cfab:	0f 85 28 00 00 00                               	jne    0x23a8d353cfd9
    23a8d353cfb1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d353cfb5:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    23a8d353cfbb:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    23a8d353cfbf:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    23a8d353cfc6:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    23a8d353cfcd:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    23a8d353cfd4:	e9 86 0a 00 00                                  	jmp    0x23a8d353da5f
    23a8d353cfd9:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d353cfdd:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    23a8d353cfe1:	43 8b bc 07 c8 3c 00 00                         	mov    edi,DWORD PTR [r15+r8*1+0x3cc8]
    23a8d353cfe9:	43 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0x3cc8],0x0
    23a8d353cff2:	0f 84 66 00 00 00                               	je     0x23a8d353d05e
    23a8d353cff8:	8b bd 68 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x98]
    23a8d353cffe:	c1 ef 03                                        	shr    edi,0x3
    23a8d353d001:	83 e7 03                                        	and    edi,0x3
    23a8d353d004:	0b bd 70 fc ff ff                               	or     edi,DWORD PTR [rbp-0x390]
    23a8d353d00a:	44 8b 9d 58 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3a8]
    23a8d353d011:	41 03 fb                                        	add    edi,r11d
    23a8d353d014:	41 0f b6 3c 3f                                  	movzx  edi,BYTE PTR [r15+rdi*1]
    23a8d353d019:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    23a8d353d020:	41 83 e3 07                                     	and    r11d,0x7
    23a8d353d024:	41 8b cb                                        	mov    ecx,r11d
    23a8d353d027:	d3 e7                                           	shl    edi,cl
    23a8d353d029:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    23a8d353d02d:	40 f6 c7 80                                     	test   dil,0x80
    23a8d353d031:	0f 85 20 00 00 00                               	jne    0x23a8d353d057
    23a8d353d037:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    23a8d353d03d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    23a8d353d044:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    23a8d353d04b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    23a8d353d052:	e9 08 0a 00 00                                  	jmp    0x23a8d353da5f
    23a8d353d057:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    23a8d353d05e:	c4 e1 82 2a 85 60 ff ff ff                      	vcvtsi2ss xmm0,xmm15,QWORD PTR [rbp-0xa0]
    23a8d353d067:	c5 b2 59 c0                                     	vmulss xmm0,xmm9,xmm0
    23a8d353d06b:	c5 8a 59 c8                                     	vmulss xmm1,xmm14,xmm0
    23a8d353d06f:	c4 e1 82 2a bd 50 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xb0]
    23a8d353d078:	c5 b2 59 ff                                     	vmulss xmm7,xmm9,xmm7
    23a8d353d07c:	c5 92 59 d7                                     	vmulss xmm2,xmm13,xmm7
    23a8d353d080:	c5 72 58 da                                     	vaddss xmm11,xmm1,xmm2
    23a8d353d084:	c5 2a 5c c8                                     	vsubss xmm9,xmm10,xmm0
    23a8d353d088:	c5 32 5c cf                                     	vsubss xmm9,xmm9,xmm7
    23a8d353d08c:	c4 41 1a 59 e9                                  	vmulss xmm13,xmm12,xmm9
    23a8d353d091:	c4 41 22 58 dd                                  	vaddss xmm11,xmm11,xmm13
    23a8d353d096:	c4 41 78 2e c3                                  	vucomiss xmm8,xmm11
    23a8d353d09b:	73 9a                                           	jae    0x23a8d353d037
    23a8d353d09d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    23a8d353d0a4:	c4 41 32 59 4c 3f 18                            	vmulss xmm9,xmm9,DWORD PTR [r15+rdi*1+0x18]
    23a8d353d0ab:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    23a8d353d0b2:	c4 c1 7a 59 44 0f 18                            	vmulss xmm0,xmm0,DWORD PTR [r15+rcx*1+0x18]
    23a8d353d0b9:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    23a8d353d0c0:	c4 81 42 59 7c 1f 18                            	vmulss xmm7,xmm7,DWORD PTR [r15+r11*1+0x18]
    23a8d353d0c7:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    23a8d353d0cb:	c5 b2 58 c0                                     	vaddss xmm0,xmm9,xmm0
    23a8d353d0cf:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    23a8d353d0d3:	47 8b 64 07 68                                  	mov    r12d,DWORD PTR [r15+r8*1+0x68]
    23a8d353d0d8:	43 83 7c 07 68 00                               	cmp    DWORD PTR [r15+r8*1+0x68],0x0
    23a8d353d0de:	0f 85 0b 00 00 00                               	jne    0x23a8d353d0ef
    23a8d353d0e4:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    23a8d353d0ea:	e9 c5 00 00 00                                  	jmp    0x23a8d353d1b4
    23a8d353d0ef:	47 8b a4 07 a4 00 00 00                         	mov    r12d,DWORD PTR [r15+r8*1+0xa4]
    23a8d353d0f7:	43 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0xa4],0x0
    23a8d353d100:	75 e2                                           	jne    0x23a8d353d0e4
    23a8d353d102:	47 8b 64 07 0c                                  	mov    r12d,DWORD PTR [r15+r8*1+0xc]
    23a8d353d107:	43 8b 04 07                                     	mov    eax,DWORD PTR [r15+r8*1]
    23a8d353d10b:	0f af 45 a0                                     	imul   eax,DWORD PTR [rbp-0x60]
    23a8d353d10f:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    23a8d353d113:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    23a8d353d119:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    23a8d353d11d:	c4 81 7a 10 3c 27                               	vmovss xmm7,DWORD PTR [r15+r12*1]
    23a8d353d123:	47 8b 64 07 6c                                  	mov    r12d,DWORD PTR [r15+r8*1+0x6c]
    23a8d353d128:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    23a8d353d12f:	41 83 fc 08                                     	cmp    r12d,0x8
    23a8d353d133:	0f 83 0b 00 00 00                               	jae    0x23a8d353d144
    23a8d353d139:	4c 8d 15 e8 7c 00 00                            	lea    r10,[rip+0x7ce8]        # 0x23a8d3544e28
    23a8d353d140:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    23a8d353d144:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d353d148:	0f 87 66 00 00 00                               	ja     0x23a8d353d1b4
    23a8d353d14e:	e9 0c 09 00 00                                  	jmp    0x23a8d353da5f
    23a8d353d153:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    23a8d353d157:	0f 83 57 00 00 00                               	jae    0x23a8d353d1b4
    23a8d353d15d:	e9 fd 08 00 00                                  	jmp    0x23a8d353da5f
    23a8d353d162:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    23a8d353d166:	0f 8a 48 00 00 00                               	jp     0x23a8d353d1b4
    23a8d353d16c:	0f 84 ed 08 00 00                               	je     0x23a8d353da5f
    23a8d353d172:	e9 3d 00 00 00                                  	jmp    0x23a8d353d1b4
    23a8d353d177:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    23a8d353d17b:	0f 87 33 00 00 00                               	ja     0x23a8d353d1b4
    23a8d353d181:	e9 d9 08 00 00                                  	jmp    0x23a8d353da5f
    23a8d353d186:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d353d18a:	0f 83 24 00 00 00                               	jae    0x23a8d353d1b4
    23a8d353d190:	e9 ca 08 00 00                                  	jmp    0x23a8d353da5f
    23a8d353d195:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    23a8d353d199:	0f 8a c0 08 00 00                               	jp     0x23a8d353da5f
    23a8d353d19f:	0f 84 0f 00 00 00                               	je     0x23a8d353d1b4
    23a8d353d1a5:	e9 b5 08 00 00                                  	jmp    0x23a8d353da5f
    23a8d353d1aa:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d353d1ae:	0f 86 ab 08 00 00                               	jbe    0x23a8d353da5f
    23a8d353d1b4:	c4 c1 2a 5e fb                                  	vdivss xmm7,xmm10,xmm11
    23a8d353d1b9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    23a8d353d1bd:	c4 62 79 18 cf                                  	vbroadcastss xmm9,xmm7
    23a8d353d1c2:	c4 41 7a 6f 5c 3f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rdi*1+0x20]
    23a8d353d1c9:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    23a8d353d1d1:	c4 c2 79 18 c5                                  	vbroadcastss xmm0,xmm13
    23a8d353d1d6:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    23a8d353d1da:	c4 41 7a 6f 5c 0f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rcx*1+0x20]
    23a8d353d1e1:	c4 e2 79 18 f1                                  	vbroadcastss xmm6,xmm1
    23a8d353d1e6:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    23a8d353d1ea:	c4 62 79 18 da                                  	vbroadcastss xmm11,xmm2
    23a8d353d1ef:	c5 fb 11 bd 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm7
    23a8d353d1f7:	c4 81 7a 6f 7c 1f 20                            	vmovdqu xmm7,XMMWORD PTR [r15+r11*1+0x20]
    23a8d353d1fe:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    23a8d353d202:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    23a8d353d206:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d353d20a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d353d20e:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    23a8d353d212:	c4 81 7a 7f 84 27 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+r12*1+0x190],xmm0
    23a8d353d21c:	c4 c1 7a 10 b4 3f 98 00 00 00                   	vmovss xmm6,DWORD PTR [r15+rdi*1+0x98]
    23a8d353d226:	c4 c1 7a 10 bc 0f 98 00 00 00                   	vmovss xmm7,DWORD PTR [r15+rcx*1+0x98]
    23a8d353d230:	c4 01 7a 10 8c 1f 98 00 00 00                   	vmovss xmm9,DWORD PTR [r15+r11*1+0x98]
    23a8d353d23a:	c4 81 7a 7f 04 27                               	vmovdqu XMMWORD PTR [r15+r12*1],xmm0
    23a8d353d240:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353d247:	45 8b 84 3f 34 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x134]
    23a8d353d24f:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    23a8d353d253:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    23a8d353d25b:	c5 fb 11 8d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm1
    23a8d353d263:	c5 7b 11 ad 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm13
    23a8d353d26b:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    23a8d353d273:	c5 fb 11 bd b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm7
    23a8d353d27b:	c5 7b 11 8d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm9
    23a8d353d283:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353d287:	0f 86 5c 04 00 00                               	jbe    0x23a8d353d6e9
    23a8d353d28d:	45 8b 84 3f 30 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x130]
    23a8d353d295:	41 83 bc 3f 30 01 00 00 00                      	cmp    DWORD PTR [r15+rdi*1+0x130],0x0
    23a8d353d29e:	0f 85 0b 00 00 00                               	jne    0x23a8d353d2af
    23a8d353d2a4:	41 8b cc                                        	mov    ecx,r12d
    23a8d353d2a7:	4d 8b c7                                        	mov    r8,r15
    23a8d353d2aa:	e9 f9 04 00 00                                  	jmp    0x23a8d353d7a8
    23a8d353d2af:	45 8d 84 24 90 00 00 00                         	lea    r8d,[r12+0x90]
    23a8d353d2b7:	45 8d 5c 24 70                                  	lea    r11d,[r12+0x70]
    23a8d353d2bc:	41 53                                           	push   r11
    23a8d353d2be:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    23a8d353d2c5:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    23a8d353d2cc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d2d0:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353d2d3:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d353d2d6:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    23a8d353d2d9:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d353d2dc:	c4 c1 79 28 dd                                  	vmovapd xmm3,xmm13
    23a8d353d2e1:	c5 fb 10 a5 18 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xe8]
    23a8d353d2e9:	45 8b c8                                        	mov    r9d,r8d
    23a8d353d2ec:	e8 27 ef f0 ff                                  	call   0x23a8d344c218
    23a8d353d2f1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353d2f5:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353d2fc:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    23a8d353d304:	45 85 db                                        	test   r11d,r11d
    23a8d353d307:	0f 85 62 01 00 00                               	jne    0x23a8d353d46f
    23a8d353d30d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353d310:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    23a8d353d315:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    23a8d353d31b:	0f 84 43 00 00 00                               	je     0x23a8d353d364
    23a8d353d321:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353d327:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353d32b:	41 53                                           	push   r11
    23a8d353d32d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d331:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    23a8d353d337:	33 d2                                           	xor    edx,edx
    23a8d353d339:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    23a8d353d340:	e8 fb ee f0 ff                                  	call   0x23a8d344c240
    23a8d353d345:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353d348:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353d34c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353d353:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353d35d:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353d364:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    23a8d353d369:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    23a8d353d36f:	0f 84 46 00 00 00                               	je     0x23a8d353d3bb
    23a8d353d375:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353d37b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353d37f:	41 53                                           	push   r11
    23a8d353d381:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d385:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    23a8d353d38b:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d353d390:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    23a8d353d397:	e8 a4 ee f0 ff                                  	call   0x23a8d344c240
    23a8d353d39c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353d39f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353d3a3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353d3aa:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353d3b4:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353d3bb:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    23a8d353d3c0:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    23a8d353d3c6:	0f 84 46 00 00 00                               	je     0x23a8d353d412
    23a8d353d3cc:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353d3d2:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353d3d6:	41 53                                           	push   r11
    23a8d353d3d8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d3dc:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    23a8d353d3e2:	ba 02 00 00 00                                  	mov    edx,0x2
    23a8d353d3e7:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    23a8d353d3ee:	e8 4d ee f0 ff                                  	call   0x23a8d344c240
    23a8d353d3f3:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353d3f6:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353d3fa:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353d401:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353d40b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353d412:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    23a8d353d417:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    23a8d353d41d:	0f 84 85 03 00 00                               	je     0x23a8d353d7a8
    23a8d353d423:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353d429:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353d42d:	41 53                                           	push   r11
    23a8d353d42f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d433:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    23a8d353d439:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d353d43e:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    23a8d353d445:	e8 f6 ed f0 ff                                  	call   0x23a8d344c240
    23a8d353d44a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353d44d:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d353d451:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    23a8d353d457:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    23a8d353d460:	4c 8b c7                                        	mov    r8,rdi
    23a8d353d463:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353d46a:	e9 39 03 00 00                                  	jmp    0x23a8d353d7a8
    23a8d353d46f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353d472:	4d 8b e0                                        	mov    r12,r8
    23a8d353d475:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    23a8d353d47f:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    23a8d353d485:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d353d48a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353d48e:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    23a8d353d495:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    23a8d353d499:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d353d49d:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    23a8d353d4a7:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    23a8d353d4ab:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    23a8d353d4b1:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    23a8d353d4b5:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    23a8d353d4ba:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    23a8d353d4c4:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    23a8d353d4c8:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    23a8d353d4cf:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    23a8d353d4d3:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    23a8d353d4d7:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    23a8d353d4db:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353d4df:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    23a8d353d4e5:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d353d4ea:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    23a8d353d4ee:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    23a8d353d4f2:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    23a8d353d4f7:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    23a8d353d4fc:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    23a8d353d500:	0f 87 09 00 00 00                               	ja     0x23a8d353d50f
    23a8d353d506:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    23a8d353d50a:	e9 04 00 00 00                                  	jmp    0x23a8d353d513
    23a8d353d50f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353d513:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353d518:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    23a8d353d51c:	0f 87 09 00 00 00                               	ja     0x23a8d353d52b
    23a8d353d522:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d353d526:	e9 05 00 00 00                                  	jmp    0x23a8d353d530
    23a8d353d52b:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    23a8d353d530:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d353d535:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353d539:	0f 84 a4 00 00 00                               	je     0x23a8d353d5e3
    23a8d353d53f:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    23a8d353d543:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    23a8d353d54d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353d551:	0f 87 09 00 00 00                               	ja     0x23a8d353d560
    23a8d353d557:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353d55b:	e9 04 00 00 00                                  	jmp    0x23a8d353d564
    23a8d353d560:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353d564:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353d568:	0f 87 0a 00 00 00                               	ja     0x23a8d353d578
    23a8d353d56e:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353d573:	e9 05 00 00 00                                  	jmp    0x23a8d353d57d
    23a8d353d578:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353d57d:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    23a8d353d581:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d353d586:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d353d58b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353d58f:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    23a8d353d599:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d353d59e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d353d5a3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    23a8d353d5a7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    23a8d353d5b1:	41 83 fb 03                                     	cmp    r11d,0x3
    23a8d353d5b5:	0f 85 04 00 00 00                               	jne    0x23a8d353d5bf
    23a8d353d5bb:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    23a8d353d5bf:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    23a8d353d5c4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353d5c8:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    23a8d353d5cc:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    23a8d353d5d6:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    23a8d353d5db:	4d 8b df                                        	mov    r11,r15
    23a8d353d5de:	e9 cc 00 00 00                                  	jmp    0x23a8d353d6af
    23a8d353d5e3:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    23a8d353d5ea:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353d5ee:	0f 87 09 00 00 00                               	ja     0x23a8d353d5fd
    23a8d353d5f4:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353d5f8:	e9 04 00 00 00                                  	jmp    0x23a8d353d601
    23a8d353d5fd:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353d601:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353d605:	0f 87 0a 00 00 00                               	ja     0x23a8d353d615
    23a8d353d60b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353d610:	e9 05 00 00 00                                  	jmp    0x23a8d353d61a
    23a8d353d615:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353d61a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    23a8d353d624:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    23a8d353d62a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    23a8d353d62f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353d633:	0f 87 09 00 00 00                               	ja     0x23a8d353d642
    23a8d353d639:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d353d63d:	e9 04 00 00 00                                  	jmp    0x23a8d353d646
    23a8d353d642:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    23a8d353d646:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353d64a:	0f 87 0a 00 00 00                               	ja     0x23a8d353d65a
    23a8d353d650:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    23a8d353d655:	e9 05 00 00 00                                  	jmp    0x23a8d353d65f
    23a8d353d65a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353d65f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    23a8d353d669:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d353d66e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d353d672:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    23a8d353d67c:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    23a8d353d681:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d353d686:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d353d68a:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x23a8d353d591
    23a8d353d691:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d353d696:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d353d69b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d353d69f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d353d6a3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d353d6a7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d353d6ab:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    23a8d353d6af:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d353d6b4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353d6b8:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x23a8d353d591
    23a8d353d6bf:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d353d6c4:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d353d6c9:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d353d6cd:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    23a8d353d6d7:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    23a8d353d6e1:	4d 8b c4                                        	mov    r8,r12
    23a8d353d6e4:	e9 bf 00 00 00                                  	jmp    0x23a8d353d7a8
    23a8d353d6e9:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    23a8d353d6f0:	c4 81 7a 10 44 1f 50                            	vmovss xmm0,DWORD PTR [r15+r11*1+0x50]
    23a8d353d6f7:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    23a8d353d6fc:	48 8b d1                                        	mov    rdx,rcx
    23a8d353d6ff:	c4 41 7a 10 5c 17 50                            	vmovss xmm11,DWORD PTR [r15+rdx*1+0x50]
    23a8d353d706:	c5 22 59 d9                                     	vmulss xmm11,xmm11,xmm1
    23a8d353d70a:	48 8b 8d 00 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x200]
    23a8d353d711:	c4 c1 6a 59 74 0f 50                            	vmulss xmm6,xmm2,DWORD PTR [r15+rcx*1+0x50]
    23a8d353d718:	c5 a2 58 f6                                     	vaddss xmm6,xmm11,xmm6
    23a8d353d71c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353d720:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    23a8d353d728:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353d72c:	c4 01 7a 10 5c 1f 54                            	vmovss xmm11,DWORD PTR [r15+r11*1+0x54]
    23a8d353d733:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    23a8d353d738:	c5 fb 11 85 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm0
    23a8d353d740:	c4 c1 7a 10 44 17 54                            	vmovss xmm0,DWORD PTR [r15+rdx*1+0x54]
    23a8d353d747:	c5 fa 59 c1                                     	vmulss xmm0,xmm0,xmm1
    23a8d353d74b:	c4 c1 6a 59 7c 0f 54                            	vmulss xmm7,xmm2,DWORD PTR [r15+rcx*1+0x54]
    23a8d353d752:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    23a8d353d756:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    23a8d353d75a:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353d75e:	41 8d bc 24 90 00 00 00                         	lea    edi,[r12+0x90]
    23a8d353d766:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d76a:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353d76d:	41 8b d0                                        	mov    edx,r8d
    23a8d353d770:	c5 fb 10 8d b8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x148]
    23a8d353d778:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    23a8d353d77c:	41 8b cc                                        	mov    ecx,r12d
    23a8d353d77f:	8b df                                           	mov    ebx,edi
    23a8d353d781:	e8 aa ed f0 ff                                  	call   0x23a8d344c530
    23a8d353d786:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353d789:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353d78d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    23a8d353d797:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353d7a1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353d7a8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d353d7ac:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    23a8d353d7b4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    23a8d353d7bd:	0f 85 2a 00 00 00                               	jne    0x23a8d353d7ed
    23a8d353d7c3:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    23a8d353d7cd:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    23a8d353d7d7:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    23a8d353d7e1:	49 8b fb                                        	mov    rdi,r11
    23a8d353d7e4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    23a8d353d7e8:	e9 dd 01 00 00                                  	jmp    0x23a8d353d9ca
    23a8d353d7ed:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    23a8d353d7f5:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    23a8d353d7fd:	c5 fb 10 b5 b0 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x150]
    23a8d353d805:	c5 ca 59 b5 30 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1d0]
    23a8d353d80d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    23a8d353d815:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    23a8d353d81d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    23a8d353d821:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353d825:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    23a8d353d82d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353d831:	4c 8b 15 37 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb37]        # 0x23a8d353c36f
    23a8d353d838:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353d83d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d353d841:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d353d845:	0f 87 04 00 00 00                               	ja     0x23a8d353d84f
    23a8d353d84b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d353d84f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    23a8d353d857:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    23a8d353d85e:	0f 85 28 00 00 00                               	jne    0x23a8d353d88c
    23a8d353d864:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    23a8d353d86e:	4c 8b 15 fa ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeafa]        # 0x23a8d353c36f
    23a8d353d875:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d353d87a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    23a8d353d87e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d882:	e8 31 0d f1 ff                                  	call   0x23a8d344e5b8
    23a8d353d887:	e9 94 00 00 00                                  	jmp    0x23a8d353d920
    23a8d353d88c:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d353d890:	0f 84 67 00 00 00                               	je     0x23a8d353d8fd
    23a8d353d896:	4d 8b d0                                        	mov    r10,r8
    23a8d353d899:	4d 8b c3                                        	mov    r8,r11
    23a8d353d89c:	4d 8b da                                        	mov    r11,r10
    23a8d353d89f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    23a8d353d8a9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    23a8d353d8b3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    23a8d353d8b8:	7a 06                                           	jp     0x23a8d353d8c0
    23a8d353d8ba:	0f 84 2a 00 00 00                               	je     0x23a8d353d8ea
    23a8d353d8c0:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    23a8d353d8c4:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    23a8d353d8c9:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    23a8d353d8cd:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    23a8d353d8d1:	0f 86 49 00 00 00                               	jbe    0x23a8d353d920
    23a8d353d8d7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353d8db:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353d8e0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353d8e5:	e9 5b 00 00 00                                  	jmp    0x23a8d353d945
    23a8d353d8ea:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353d8ee:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353d8f3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353d8f8:	e9 44 00 00 00                                  	jmp    0x23a8d353d941
    23a8d353d8fd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    23a8d353d907:	4c 8b 15 61 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea61]        # 0x23a8d353c36f
    23a8d353d90e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353d913:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    23a8d353d917:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d91b:	e8 98 0c f1 ff                                  	call   0x23a8d344e5b8
    23a8d353d920:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353d924:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353d929:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353d92e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    23a8d353d932:	0f 87 09 00 00 00                               	ja     0x23a8d353d941
    23a8d353d938:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    23a8d353d93c:	e9 04 00 00 00                                  	jmp    0x23a8d353d945
    23a8d353d941:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    23a8d353d945:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353d948:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353d94c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    23a8d353d956:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    23a8d353d95a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    23a8d353d95e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    23a8d353d968:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    23a8d353d96d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    23a8d353d977:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    23a8d353d981:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    23a8d353d98b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    23a8d353d990:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    23a8d353d99a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    23a8d353d9a4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    23a8d353d9ae:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    23a8d353d9b3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    23a8d353d9bd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    23a8d353d9c1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353d9c5:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d353d9ca:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    23a8d353d9d4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353d9d8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d353d9db:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d353d9e1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d353d9e4:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    23a8d353d9ec:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    23a8d353d9f0:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    23a8d353d9f4:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    23a8d353d9f9:	e8 62 e8 f0 ff                                  	call   0x23a8d344c260
    23a8d353d9fe:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d353da02:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d353da07:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    23a8d353da0d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    23a8d353da11:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d353da16:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d353da1c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d353da22:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353da27:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    23a8d353da2e:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    23a8d353da35:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    23a8d353da3c:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    23a8d353da42:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d353da4a:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d353da52:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    23a8d353da59:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d353da5f:	f6 c3 02                                        	test   bl,0x2
    23a8d353da62:	0f 85 26 00 00 00                               	jne    0x23a8d353da8e
    23a8d353da68:	4d 8b e7                                        	mov    r12,r15
    23a8d353da6b:	4c 8b f9                                        	mov    r15,rcx
    23a8d353da6e:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d353da74:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d353da7c:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d353da84:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    23a8d353da89:	e9 b5 0a 00 00                                  	jmp    0x23a8d353e543
    23a8d353da8e:	4d 8b e7                                        	mov    r12,r15
    23a8d353da91:	47 8b bc 04 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x3cc8]
    23a8d353da99:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    23a8d353daa2:	0f 84 75 00 00 00                               	je     0x23a8d353db1d
    23a8d353daa8:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    23a8d353daaf:	41 c1 ef 03                                     	shr    r15d,0x3
    23a8d353dab3:	41 83 e7 03                                     	and    r15d,0x3
    23a8d353dab7:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    23a8d353dabd:	41 0b d7                                        	or     edx,r15d
    23a8d353dac0:	44 8b bd 58 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3a8]
    23a8d353dac7:	41 03 d7                                        	add    edx,r15d
    23a8d353daca:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    23a8d353dacf:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    23a8d353dad5:	83 e0 07                                        	and    eax,0x7
    23a8d353dad8:	4c 8b d1                                        	mov    r10,rcx
    23a8d353dadb:	8b c8                                           	mov    ecx,eax
    23a8d353dadd:	49 8b c2                                        	mov    rax,r10
    23a8d353dae0:	d3 e2                                           	shl    edx,cl
    23a8d353dae2:	f6 c2 80                                        	test   dl,0x80
    23a8d353dae5:	0f 85 29 00 00 00                               	jne    0x23a8d353db14
    23a8d353daeb:	4c 8b f8                                        	mov    r15,rax
    23a8d353daee:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    23a8d353daf4:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d353dafa:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d353db02:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d353db0a:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    23a8d353db0f:	e9 2f 0a 00 00                                  	jmp    0x23a8d353e543
    23a8d353db14:	48 8b c8                                        	mov    rcx,rax
    23a8d353db17:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    23a8d353db1d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    23a8d353db24:	4c 2b bd d0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x330]
    23a8d353db2b:	c4 c1 82 2a c7                                  	vcvtsi2ss xmm0,xmm15,r15
    23a8d353db30:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d353db38:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    23a8d353db3c:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    23a8d353db41:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    23a8d353db45:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    23a8d353db4c:	4c 2b bd f0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x310]
    23a8d353db53:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    23a8d353db58:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    23a8d353db5d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d353db65:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    23a8d353db6a:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    23a8d353db6e:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    23a8d353db72:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    23a8d353db77:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    23a8d353db7b:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    23a8d353db7f:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    23a8d353db84:	0f 83 b0 09 00 00                               	jae    0x23a8d353e53a
    23a8d353db8a:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    23a8d353db91:	4c 8b f9                                        	mov    r15,rcx
    23a8d353db94:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    23a8d353db9b:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    23a8d353dba2:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    23a8d353dba7:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    23a8d353dbab:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    23a8d353dbaf:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    23a8d353dbb4:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    23a8d353dbba:	0f 85 0b 00 00 00                               	jne    0x23a8d353dbcb
    23a8d353dbc0:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d353dbc6:	e9 c5 00 00 00                                  	jmp    0x23a8d353dc90
    23a8d353dbcb:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    23a8d353dbd3:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    23a8d353dbdc:	75 e2                                           	jne    0x23a8d353dbc0
    23a8d353dbde:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    23a8d353dbe3:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    23a8d353dbe7:	0f af 4d a0                                     	imul   ecx,DWORD PTR [rbp-0x60]
    23a8d353dbeb:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    23a8d353dbee:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d353dbf4:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    23a8d353dbf7:	c4 41 7a 10 1c 14                               	vmovss xmm11,DWORD PTR [r12+rdx*1]
    23a8d353dbfd:	43 8b 54 04 6c                                  	mov    edx,DWORD PTR [r12+r8*1+0x6c]
    23a8d353dc02:	81 ea 00 02 00 00                               	sub    edx,0x200
    23a8d353dc08:	83 fa 08                                        	cmp    edx,0x8
    23a8d353dc0b:	0f 83 0b 00 00 00                               	jae    0x23a8d353dc1c
    23a8d353dc11:	4c 8d 15 d0 71 00 00                            	lea    r10,[rip+0x71d0]        # 0x23a8d3544de8
    23a8d353dc18:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    23a8d353dc1c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353dc20:	0f 87 6a 00 00 00                               	ja     0x23a8d353dc90
    23a8d353dc26:	e9 18 09 00 00                                  	jmp    0x23a8d353e543
    23a8d353dc2b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353dc30:	0f 83 5a 00 00 00                               	jae    0x23a8d353dc90
    23a8d353dc36:	e9 08 09 00 00                                  	jmp    0x23a8d353e543
    23a8d353dc3b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353dc40:	0f 8a 4a 00 00 00                               	jp     0x23a8d353dc90
    23a8d353dc46:	0f 84 f7 08 00 00                               	je     0x23a8d353e543
    23a8d353dc4c:	e9 3f 00 00 00                                  	jmp    0x23a8d353dc90
    23a8d353dc51:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353dc56:	0f 87 34 00 00 00                               	ja     0x23a8d353dc90
    23a8d353dc5c:	e9 e2 08 00 00                                  	jmp    0x23a8d353e543
    23a8d353dc61:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353dc65:	0f 83 25 00 00 00                               	jae    0x23a8d353dc90
    23a8d353dc6b:	e9 d3 08 00 00                                  	jmp    0x23a8d353e543
    23a8d353dc70:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353dc75:	0f 8a c8 08 00 00                               	jp     0x23a8d353e543
    23a8d353dc7b:	0f 84 0f 00 00 00                               	je     0x23a8d353dc90
    23a8d353dc81:	e9 bd 08 00 00                                  	jmp    0x23a8d353e543
    23a8d353dc86:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353dc8a:	0f 86 b3 08 00 00                               	jbe    0x23a8d353e543
    23a8d353dc90:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    23a8d353dc95:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    23a8d353dc9a:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    23a8d353dc9f:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    23a8d353dca6:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    23a8d353dcab:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    23a8d353dcaf:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    23a8d353dcb6:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    23a8d353dcbe:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    23a8d353dcc3:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    23a8d353dcc7:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    23a8d353dccc:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    23a8d353dcd3:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    23a8d353dcd7:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d353dcdb:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    23a8d353dcdf:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    23a8d353dce3:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    23a8d353dce6:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    23a8d353dcf0:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    23a8d353dcfa:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    23a8d353dd04:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    23a8d353dd0e:	c4 c1 7a 7f 04 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm0
    23a8d353dd14:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353dd1b:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    23a8d353dd23:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    23a8d353dd27:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    23a8d353dd2f:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    23a8d353dd37:	c5 fb 11 a5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm4
    23a8d353dd3f:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    23a8d353dd47:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    23a8d353dd4f:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    23a8d353dd57:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    23a8d353dd5f:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353dd63:	0f 86 4b 04 00 00                               	jbe    0x23a8d353e1b4
    23a8d353dd69:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    23a8d353dd71:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    23a8d353dd7a:	0f 85 0a 00 00 00                               	jne    0x23a8d353dd8a
    23a8d353dd80:	8b ca                                           	mov    ecx,edx
    23a8d353dd82:	4d 8b c4                                        	mov    r8,r12
    23a8d353dd85:	e9 de 04 00 00                                  	jmp    0x23a8d353e268
    23a8d353dd8a:	44 8d 82 90 00 00 00                            	lea    r8d,[rdx+0x90]
    23a8d353dd91:	44 8d 5a 70                                     	lea    r11d,[rdx+0x70]
    23a8d353dd95:	41 53                                           	push   r11
    23a8d353dd97:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    23a8d353dd9e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353dda2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353dda5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d353dda8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    23a8d353ddab:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d353ddae:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    23a8d353ddb2:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    23a8d353ddb7:	45 8b c8                                        	mov    r9d,r8d
    23a8d353ddba:	e8 59 e4 f0 ff                                  	call   0x23a8d344c218
    23a8d353ddbf:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353ddc3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353ddca:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    23a8d353ddd2:	45 85 db                                        	test   r11d,r11d
    23a8d353ddd5:	0f 85 62 01 00 00                               	jne    0x23a8d353df3d
    23a8d353dddb:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353ddde:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    23a8d353dde3:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    23a8d353dde9:	0f 84 43 00 00 00                               	je     0x23a8d353de32
    23a8d353ddef:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353ddf5:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353ddf9:	41 53                                           	push   r11
    23a8d353ddfb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353ddff:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    23a8d353de05:	33 d2                                           	xor    edx,edx
    23a8d353de07:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    23a8d353de0e:	e8 2d e4 f0 ff                                  	call   0x23a8d344c240
    23a8d353de13:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353de16:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353de1a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353de21:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353de2b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353de32:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    23a8d353de37:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    23a8d353de3d:	0f 84 46 00 00 00                               	je     0x23a8d353de89
    23a8d353de43:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353de49:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353de4d:	41 53                                           	push   r11
    23a8d353de4f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353de53:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    23a8d353de59:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d353de5e:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    23a8d353de65:	e8 d6 e3 f0 ff                                  	call   0x23a8d344c240
    23a8d353de6a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353de6d:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353de71:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353de78:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353de82:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353de89:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    23a8d353de8e:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    23a8d353de94:	0f 84 46 00 00 00                               	je     0x23a8d353dee0
    23a8d353de9a:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353dea0:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353dea4:	41 53                                           	push   r11
    23a8d353dea6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353deaa:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    23a8d353deb0:	ba 02 00 00 00                                  	mov    edx,0x2
    23a8d353deb5:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    23a8d353debc:	e8 7f e3 f0 ff                                  	call   0x23a8d344c240
    23a8d353dec1:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353dec4:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353dec8:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353decf:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353ded9:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353dee0:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    23a8d353dee5:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    23a8d353deeb:	0f 84 77 03 00 00                               	je     0x23a8d353e268
    23a8d353def1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353def7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353defb:	41 53                                           	push   r11
    23a8d353defd:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353df01:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    23a8d353df07:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d353df0c:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    23a8d353df13:	e8 28 e3 f0 ff                                  	call   0x23a8d344c240
    23a8d353df18:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353df1b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d353df1f:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    23a8d353df25:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    23a8d353df2e:	4c 8b c7                                        	mov    r8,rdi
    23a8d353df31:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353df38:	e9 2b 03 00 00                                  	jmp    0x23a8d353e268
    23a8d353df3d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353df40:	4d 8b e0                                        	mov    r12,r8
    23a8d353df43:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    23a8d353df4d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    23a8d353df53:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d353df58:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353df5c:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    23a8d353df63:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    23a8d353df67:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d353df6b:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    23a8d353df75:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    23a8d353df79:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    23a8d353df7f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    23a8d353df83:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    23a8d353df88:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    23a8d353df92:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    23a8d353df96:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    23a8d353df9d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    23a8d353dfa1:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    23a8d353dfa5:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    23a8d353dfa9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353dfad:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    23a8d353dfb3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d353dfb8:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    23a8d353dfbc:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    23a8d353dfc0:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    23a8d353dfc5:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    23a8d353dfca:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    23a8d353dfce:	0f 87 09 00 00 00                               	ja     0x23a8d353dfdd
    23a8d353dfd4:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    23a8d353dfd8:	e9 04 00 00 00                                  	jmp    0x23a8d353dfe1
    23a8d353dfdd:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353dfe1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353dfe6:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    23a8d353dfea:	0f 87 09 00 00 00                               	ja     0x23a8d353dff9
    23a8d353dff0:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d353dff4:	e9 05 00 00 00                                  	jmp    0x23a8d353dffe
    23a8d353dff9:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    23a8d353dffe:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d353e003:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353e007:	0f 84 a1 00 00 00                               	je     0x23a8d353e0ae
    23a8d353e00d:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    23a8d353e011:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    23a8d353e01b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353e01f:	0f 87 09 00 00 00                               	ja     0x23a8d353e02e
    23a8d353e025:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353e029:	e9 04 00 00 00                                  	jmp    0x23a8d353e032
    23a8d353e02e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353e032:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353e036:	0f 87 0a 00 00 00                               	ja     0x23a8d353e046
    23a8d353e03c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353e041:	e9 05 00 00 00                                  	jmp    0x23a8d353e04b
    23a8d353e046:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353e04b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    23a8d353e04f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d353e054:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d353e059:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353e05d:	4c 8b 15 2d f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52d]        # 0x23a8d353d591
    23a8d353e064:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d353e069:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d353e06e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    23a8d353e072:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    23a8d353e07c:	41 83 fb 03                                     	cmp    r11d,0x3
    23a8d353e080:	0f 85 04 00 00 00                               	jne    0x23a8d353e08a
    23a8d353e086:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    23a8d353e08a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    23a8d353e08f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353e093:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    23a8d353e097:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    23a8d353e0a1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    23a8d353e0a6:	4d 8b df                                        	mov    r11,r15
    23a8d353e0a9:	e9 cc 00 00 00                                  	jmp    0x23a8d353e17a
    23a8d353e0ae:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    23a8d353e0b5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353e0b9:	0f 87 09 00 00 00                               	ja     0x23a8d353e0c8
    23a8d353e0bf:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353e0c3:	e9 04 00 00 00                                  	jmp    0x23a8d353e0cc
    23a8d353e0c8:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353e0cc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353e0d0:	0f 87 0a 00 00 00                               	ja     0x23a8d353e0e0
    23a8d353e0d6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353e0db:	e9 05 00 00 00                                  	jmp    0x23a8d353e0e5
    23a8d353e0e0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353e0e5:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    23a8d353e0ef:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    23a8d353e0f5:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    23a8d353e0fa:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353e0fe:	0f 87 09 00 00 00                               	ja     0x23a8d353e10d
    23a8d353e104:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d353e108:	e9 04 00 00 00                                  	jmp    0x23a8d353e111
    23a8d353e10d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    23a8d353e111:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353e115:	0f 87 0a 00 00 00                               	ja     0x23a8d353e125
    23a8d353e11b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    23a8d353e120:	e9 05 00 00 00                                  	jmp    0x23a8d353e12a
    23a8d353e125:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353e12a:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    23a8d353e134:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d353e139:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d353e13d:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    23a8d353e147:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    23a8d353e14c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d353e151:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d353e155:	4c 8b 15 35 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff435]        # 0x23a8d353d591
    23a8d353e15c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d353e161:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d353e166:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d353e16a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d353e16e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d353e172:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d353e176:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    23a8d353e17a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d353e17f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353e183:	4c 8b 15 07 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff407]        # 0x23a8d353d591
    23a8d353e18a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d353e18f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d353e194:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d353e198:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    23a8d353e1a2:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    23a8d353e1ac:	4d 8b c4                                        	mov    r8,r12
    23a8d353e1af:	e9 b4 00 00 00                                  	jmp    0x23a8d353e268
    23a8d353e1b4:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    23a8d353e1bb:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    23a8d353e1c2:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    23a8d353e1c6:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    23a8d353e1cd:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    23a8d353e1d1:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    23a8d353e1d8:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    23a8d353e1df:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    23a8d353e1e3:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353e1e7:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    23a8d353e1ec:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353e1f0:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    23a8d353e1f7:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    23a8d353e1fb:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    23a8d353e202:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    23a8d353e206:	c5 fb 11 85 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm0
    23a8d353e20e:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    23a8d353e215:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    23a8d353e219:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    23a8d353e21d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353e221:	8d ba 90 00 00 00                               	lea    edi,[rdx+0x90]
    23a8d353e227:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e22b:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353e22e:	8b ca                                           	mov    ecx,edx
    23a8d353e230:	41 8b d0                                        	mov    edx,r8d
    23a8d353e233:	c5 fb 10 8d 30 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
    23a8d353e23b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    23a8d353e23f:	8b df                                           	mov    ebx,edi
    23a8d353e241:	e8 ea e2 f0 ff                                  	call   0x23a8d344c530
    23a8d353e246:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353e249:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353e24d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    23a8d353e257:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353e261:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353e268:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d353e26c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    23a8d353e274:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    23a8d353e27d:	0f 85 2a 00 00 00                               	jne    0x23a8d353e2ad
    23a8d353e283:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    23a8d353e28d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    23a8d353e297:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    23a8d353e2a1:	49 8b fb                                        	mov    rdi,r11
    23a8d353e2a4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    23a8d353e2a8:	e9 dd 01 00 00                                  	jmp    0x23a8d353e48a
    23a8d353e2ad:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    23a8d353e2b5:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    23a8d353e2bd:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    23a8d353e2c5:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    23a8d353e2cd:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    23a8d353e2d5:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    23a8d353e2dd:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    23a8d353e2e1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353e2e5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    23a8d353e2ed:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353e2f1:	4c 8b 15 77 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe077]        # 0x23a8d353c36f
    23a8d353e2f8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353e2fd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d353e301:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d353e305:	0f 87 04 00 00 00                               	ja     0x23a8d353e30f
    23a8d353e30b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d353e30f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    23a8d353e317:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    23a8d353e31e:	0f 85 28 00 00 00                               	jne    0x23a8d353e34c
    23a8d353e324:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    23a8d353e32e:	4c 8b 15 3a e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe03a]        # 0x23a8d353c36f
    23a8d353e335:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d353e33a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    23a8d353e33e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e342:	e8 71 02 f1 ff                                  	call   0x23a8d344e5b8
    23a8d353e347:	e9 94 00 00 00                                  	jmp    0x23a8d353e3e0
    23a8d353e34c:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d353e350:	0f 84 67 00 00 00                               	je     0x23a8d353e3bd
    23a8d353e356:	4d 8b d0                                        	mov    r10,r8
    23a8d353e359:	4d 8b c3                                        	mov    r8,r11
    23a8d353e35c:	4d 8b da                                        	mov    r11,r10
    23a8d353e35f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    23a8d353e369:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    23a8d353e373:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    23a8d353e378:	7a 06                                           	jp     0x23a8d353e380
    23a8d353e37a:	0f 84 2a 00 00 00                               	je     0x23a8d353e3aa
    23a8d353e380:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    23a8d353e384:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    23a8d353e389:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    23a8d353e38d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    23a8d353e391:	0f 86 49 00 00 00                               	jbe    0x23a8d353e3e0
    23a8d353e397:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353e39b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353e3a0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353e3a5:	e9 5b 00 00 00                                  	jmp    0x23a8d353e405
    23a8d353e3aa:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353e3ae:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353e3b3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353e3b8:	e9 44 00 00 00                                  	jmp    0x23a8d353e401
    23a8d353e3bd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    23a8d353e3c7:	4c 8b 15 a1 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdfa1]        # 0x23a8d353c36f
    23a8d353e3ce:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353e3d3:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    23a8d353e3d7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e3db:	e8 d8 01 f1 ff                                  	call   0x23a8d344e5b8
    23a8d353e3e0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353e3e4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353e3e9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353e3ee:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    23a8d353e3f2:	0f 87 09 00 00 00                               	ja     0x23a8d353e401
    23a8d353e3f8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    23a8d353e3fc:	e9 04 00 00 00                                  	jmp    0x23a8d353e405
    23a8d353e401:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    23a8d353e405:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353e408:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353e40c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    23a8d353e416:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    23a8d353e41a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    23a8d353e41e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    23a8d353e428:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    23a8d353e42d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    23a8d353e437:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    23a8d353e441:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    23a8d353e44b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    23a8d353e450:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    23a8d353e45a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    23a8d353e464:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    23a8d353e46e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    23a8d353e473:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    23a8d353e47d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    23a8d353e481:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353e485:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d353e48a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    23a8d353e494:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e498:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d353e49b:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    23a8d353e4a1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d353e4a4:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    23a8d353e4ac:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    23a8d353e4b0:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    23a8d353e4b4:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    23a8d353e4b9:	e8 a2 dd f0 ff                                  	call   0x23a8d344c260
    23a8d353e4be:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d353e4c2:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d353e4c7:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    23a8d353e4cd:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d353e4d3:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d353e4d7:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d353e4dc:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d353e4e2:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d353e4e8:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353e4ed:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    23a8d353e4f4:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    23a8d353e4fb:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    23a8d353e502:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    23a8d353e508:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d353e510:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d353e518:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d353e520:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    23a8d353e528:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    23a8d353e52f:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d353e535:	e9 09 00 00 00                                  	jmp    0x23a8d353e543
    23a8d353e53a:	4c 8b f9                                        	mov    r15,rcx
    23a8d353e53d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d353e543:	f6 c3 04                                        	test   bl,0x4
    23a8d353e546:	0f 85 0e 00 00 00                               	jne    0x23a8d353e55a
    23a8d353e54c:	8b d0                                           	mov    edx,eax
    23a8d353e54e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    23a8d353e555:	e9 70 0a 00 00                                  	jmp    0x23a8d353efca
    23a8d353e55a:	43 8b 94 04 c8 3c 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0x3cc8]
    23a8d353e562:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    23a8d353e56b:	0f 84 4d 00 00 00                               	je     0x23a8d353e5be
    23a8d353e571:	8b d0                                           	mov    edx,eax
    23a8d353e573:	c1 ea 03                                        	shr    edx,0x3
    23a8d353e576:	83 e2 03                                        	and    edx,0x3
    23a8d353e579:	0b 95 20 fe ff ff                               	or     edx,DWORD PTR [rbp-0x1e0]
    23a8d353e57f:	8b 9d 58 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a8]
    23a8d353e585:	03 d3                                           	add    edx,ebx
    23a8d353e587:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    23a8d353e58c:	8b d8                                           	mov    ebx,eax
    23a8d353e58e:	83 e3 07                                        	and    ebx,0x7
    23a8d353e591:	44 8b d1                                        	mov    r10d,ecx
    23a8d353e594:	8b cb                                           	mov    ecx,ebx
    23a8d353e596:	49 8b df                                        	mov    rbx,r15
    23a8d353e599:	45 8b fa                                        	mov    r15d,r10d
    23a8d353e59c:	d3 e2                                           	shl    edx,cl
    23a8d353e59e:	f6 c2 80                                        	test   dl,0x80
    23a8d353e5a1:	0f 85 11 00 00 00                               	jne    0x23a8d353e5b8
    23a8d353e5a7:	8b d0                                           	mov    edx,eax
    23a8d353e5a9:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    23a8d353e5b0:	4c 8b fb                                        	mov    r15,rbx
    23a8d353e5b3:	e9 12 0a 00 00                                  	jmp    0x23a8d353efca
    23a8d353e5b8:	41 8b cf                                        	mov    ecx,r15d
    23a8d353e5bb:	4c 8b fb                                        	mov    r15,rbx
    23a8d353e5be:	48 8b 95 60 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa0]
    23a8d353e5c5:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    23a8d353e5cc:	48 8d 0c 13                                     	lea    rcx,[rbx+rdx*1]
    23a8d353e5d0:	c4 e1 82 2a c1                                  	vcvtsi2ss xmm0,xmm15,rcx
    23a8d353e5d5:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    23a8d353e5d9:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    23a8d353e5dd:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    23a8d353e5e4:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    23a8d353e5eb:	48 8d 14 0b                                     	lea    rdx,[rbx+rcx*1]
    23a8d353e5ef:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    23a8d353e5f4:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    23a8d353e5f9:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    23a8d353e5fe:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    23a8d353e602:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    23a8d353e606:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    23a8d353e60b:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    23a8d353e60f:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    23a8d353e613:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    23a8d353e618:	0f 83 aa 09 00 00                               	jae    0x23a8d353efc8
    23a8d353e61e:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    23a8d353e625:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    23a8d353e62c:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    23a8d353e633:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    23a8d353e638:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    23a8d353e63c:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    23a8d353e640:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    23a8d353e645:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    23a8d353e64b:	0f 85 07 00 00 00                               	jne    0x23a8d353e658
    23a8d353e651:	8b d0                                           	mov    edx,eax
    23a8d353e653:	e9 c3 00 00 00                                  	jmp    0x23a8d353e71b
    23a8d353e658:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    23a8d353e660:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    23a8d353e669:	75 e6                                           	jne    0x23a8d353e651
    23a8d353e66b:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    23a8d353e670:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    23a8d353e674:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    23a8d353e67b:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    23a8d353e67e:	8b d0                                           	mov    edx,eax
    23a8d353e680:	8d 04 93                                        	lea    eax,[rbx+rdx*4]
    23a8d353e683:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    23a8d353e689:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    23a8d353e68e:	2d 00 02 00 00                                  	sub    eax,0x200
    23a8d353e693:	83 f8 08                                        	cmp    eax,0x8
    23a8d353e696:	0f 83 0b 00 00 00                               	jae    0x23a8d353e6a7
    23a8d353e69c:	4c 8d 15 05 67 00 00                            	lea    r10,[rip+0x6705]        # 0x23a8d3544da8
    23a8d353e6a3:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    23a8d353e6a7:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353e6ab:	0f 87 6a 00 00 00                               	ja     0x23a8d353e71b
    23a8d353e6b1:	e9 14 09 00 00                                  	jmp    0x23a8d353efca
    23a8d353e6b6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353e6bb:	0f 83 5a 00 00 00                               	jae    0x23a8d353e71b
    23a8d353e6c1:	e9 04 09 00 00                                  	jmp    0x23a8d353efca
    23a8d353e6c6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353e6cb:	0f 8a 4a 00 00 00                               	jp     0x23a8d353e71b
    23a8d353e6d1:	0f 84 f3 08 00 00                               	je     0x23a8d353efca
    23a8d353e6d7:	e9 3f 00 00 00                                  	jmp    0x23a8d353e71b
    23a8d353e6dc:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353e6e1:	0f 87 34 00 00 00                               	ja     0x23a8d353e71b
    23a8d353e6e7:	e9 de 08 00 00                                  	jmp    0x23a8d353efca
    23a8d353e6ec:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353e6f0:	0f 83 25 00 00 00                               	jae    0x23a8d353e71b
    23a8d353e6f6:	e9 cf 08 00 00                                  	jmp    0x23a8d353efca
    23a8d353e6fb:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353e700:	0f 8a c4 08 00 00                               	jp     0x23a8d353efca
    23a8d353e706:	0f 84 0f 00 00 00                               	je     0x23a8d353e71b
    23a8d353e70c:	e9 b9 08 00 00                                  	jmp    0x23a8d353efca
    23a8d353e711:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353e715:	0f 86 af 08 00 00                               	jbe    0x23a8d353efca
    23a8d353e71b:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    23a8d353e720:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    23a8d353e725:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    23a8d353e72a:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    23a8d353e731:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    23a8d353e736:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    23a8d353e73a:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    23a8d353e741:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    23a8d353e749:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    23a8d353e74e:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    23a8d353e752:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    23a8d353e757:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    23a8d353e75e:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    23a8d353e762:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d353e766:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    23a8d353e76a:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    23a8d353e76e:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    23a8d353e771:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    23a8d353e77b:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    23a8d353e785:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    23a8d353e78f:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    23a8d353e799:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    23a8d353e79f:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    23a8d353e7a6:	41 8b bc 1c 34 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x134]
    23a8d353e7ae:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    23a8d353e7b2:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    23a8d353e7ba:	c5 fb 11 8d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm1
    23a8d353e7c2:	c5 fb 11 a5 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm4
    23a8d353e7ca:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    23a8d353e7d2:	c5 fb 11 b5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm6
    23a8d353e7da:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    23a8d353e7e2:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    23a8d353e7ea:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d353e7ee:	0f 86 4d 04 00 00                               	jbe    0x23a8d353ec41
    23a8d353e7f4:	41 8b bc 1c 30 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x130]
    23a8d353e7fc:	41 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x130],0x0
    23a8d353e805:	0f 85 0d 00 00 00                               	jne    0x23a8d353e818
    23a8d353e80b:	8b c8                                           	mov    ecx,eax
    23a8d353e80d:	4d 8b c4                                        	mov    r8,r12
    23a8d353e810:	48 8b fb                                        	mov    rdi,rbx
    23a8d353e813:	e9 e0 04 00 00                                  	jmp    0x23a8d353ecf8
    23a8d353e818:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    23a8d353e81e:	44 8d 40 70                                     	lea    r8d,[rax+0x70]
    23a8d353e822:	41 50                                           	push   r8
    23a8d353e824:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    23a8d353e82b:	44 8b 85 58 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3a8]
    23a8d353e832:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e836:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353e839:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d353e83c:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    23a8d353e83f:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d353e842:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    23a8d353e846:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    23a8d353e84b:	44 8b cf                                        	mov    r9d,edi
    23a8d353e84e:	e8 c5 d9 f0 ff                                  	call   0x23a8d344c218
    23a8d353e853:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353e857:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353e85e:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    23a8d353e866:	45 85 db                                        	test   r11d,r11d
    23a8d353e869:	0f 85 61 01 00 00                               	jne    0x23a8d353e9d0
    23a8d353e86f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353e872:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    23a8d353e877:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    23a8d353e87d:	0f 84 43 00 00 00                               	je     0x23a8d353e8c6
    23a8d353e883:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353e889:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353e88d:	41 53                                           	push   r11
    23a8d353e88f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e893:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    23a8d353e899:	33 d2                                           	xor    edx,edx
    23a8d353e89b:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    23a8d353e8a2:	e8 99 d9 f0 ff                                  	call   0x23a8d344c240
    23a8d353e8a7:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353e8aa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353e8ae:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353e8b5:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353e8bf:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353e8c6:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    23a8d353e8cb:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    23a8d353e8d1:	0f 84 46 00 00 00                               	je     0x23a8d353e91d
    23a8d353e8d7:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353e8dd:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353e8e1:	41 53                                           	push   r11
    23a8d353e8e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e8e7:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    23a8d353e8ed:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d353e8f2:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    23a8d353e8f9:	e8 42 d9 f0 ff                                  	call   0x23a8d344c240
    23a8d353e8fe:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353e901:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353e905:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353e90c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353e916:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353e91d:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    23a8d353e922:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    23a8d353e928:	0f 84 46 00 00 00                               	je     0x23a8d353e974
    23a8d353e92e:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353e934:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353e938:	41 53                                           	push   r11
    23a8d353e93a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e93e:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    23a8d353e944:	ba 02 00 00 00                                  	mov    edx,0x2
    23a8d353e949:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    23a8d353e950:	e8 eb d8 f0 ff                                  	call   0x23a8d344c240
    23a8d353e955:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353e958:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353e95c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353e963:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353e96d:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353e974:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    23a8d353e979:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    23a8d353e97f:	0f 84 73 03 00 00                               	je     0x23a8d353ecf8
    23a8d353e985:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353e98b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353e98f:	41 53                                           	push   r11
    23a8d353e991:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353e995:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    23a8d353e99b:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d353e9a0:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    23a8d353e9a7:	e8 94 d8 f0 ff                                  	call   0x23a8d344c240
    23a8d353e9ac:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353e9af:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353e9b3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353e9ba:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353e9c4:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353e9cb:	e9 28 03 00 00                                  	jmp    0x23a8d353ecf8
    23a8d353e9d0:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353e9d3:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    23a8d353e9dd:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    23a8d353e9e3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d353e9e8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353e9ec:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    23a8d353e9f3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    23a8d353e9f7:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d353e9fb:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    23a8d353ea05:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    23a8d353ea09:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    23a8d353ea0f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    23a8d353ea13:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    23a8d353ea18:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    23a8d353ea22:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    23a8d353ea26:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    23a8d353ea2d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    23a8d353ea31:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    23a8d353ea35:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    23a8d353ea39:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353ea3d:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    23a8d353ea43:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d353ea48:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    23a8d353ea4c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    23a8d353ea50:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    23a8d353ea55:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    23a8d353ea5a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    23a8d353ea5e:	0f 87 09 00 00 00                               	ja     0x23a8d353ea6d
    23a8d353ea64:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    23a8d353ea68:	e9 04 00 00 00                                  	jmp    0x23a8d353ea71
    23a8d353ea6d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353ea71:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353ea76:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    23a8d353ea7a:	0f 87 09 00 00 00                               	ja     0x23a8d353ea89
    23a8d353ea80:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d353ea84:	e9 05 00 00 00                                  	jmp    0x23a8d353ea8e
    23a8d353ea89:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    23a8d353ea8e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d353ea93:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353ea97:	0f 84 a1 00 00 00                               	je     0x23a8d353eb3e
    23a8d353ea9d:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    23a8d353eaa1:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    23a8d353eaab:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353eaaf:	0f 87 09 00 00 00                               	ja     0x23a8d353eabe
    23a8d353eab5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353eab9:	e9 04 00 00 00                                  	jmp    0x23a8d353eac2
    23a8d353eabe:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353eac2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353eac6:	0f 87 0a 00 00 00                               	ja     0x23a8d353ead6
    23a8d353eacc:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353ead1:	e9 05 00 00 00                                  	jmp    0x23a8d353eadb
    23a8d353ead6:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353eadb:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    23a8d353eadf:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d353eae4:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d353eae9:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353eaed:	4c 8b 15 9d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea9d]        # 0x23a8d353d591
    23a8d353eaf4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d353eaf9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d353eafe:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    23a8d353eb02:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    23a8d353eb0c:	41 83 fb 03                                     	cmp    r11d,0x3
    23a8d353eb10:	0f 85 04 00 00 00                               	jne    0x23a8d353eb1a
    23a8d353eb16:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    23a8d353eb1a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    23a8d353eb1f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353eb23:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    23a8d353eb27:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    23a8d353eb31:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    23a8d353eb36:	4d 8b dc                                        	mov    r11,r12
    23a8d353eb39:	e9 cc 00 00 00                                  	jmp    0x23a8d353ec0a
    23a8d353eb3e:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    23a8d353eb45:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353eb49:	0f 87 09 00 00 00                               	ja     0x23a8d353eb58
    23a8d353eb4f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353eb53:	e9 04 00 00 00                                  	jmp    0x23a8d353eb5c
    23a8d353eb58:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353eb5c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353eb60:	0f 87 0a 00 00 00                               	ja     0x23a8d353eb70
    23a8d353eb66:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353eb6b:	e9 05 00 00 00                                  	jmp    0x23a8d353eb75
    23a8d353eb70:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353eb75:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    23a8d353eb7f:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    23a8d353eb85:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    23a8d353eb8a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353eb8e:	0f 87 09 00 00 00                               	ja     0x23a8d353eb9d
    23a8d353eb94:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d353eb98:	e9 04 00 00 00                                  	jmp    0x23a8d353eba1
    23a8d353eb9d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    23a8d353eba1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353eba5:	0f 87 0a 00 00 00                               	ja     0x23a8d353ebb5
    23a8d353ebab:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    23a8d353ebb0:	e9 05 00 00 00                                  	jmp    0x23a8d353ebba
    23a8d353ebb5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353ebba:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    23a8d353ebc4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d353ebc9:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d353ebcd:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    23a8d353ebd7:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    23a8d353ebdc:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d353ebe1:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d353ebe5:	4c 8b 15 a5 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a5]        # 0x23a8d353d591
    23a8d353ebec:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d353ebf1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d353ebf6:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d353ebfa:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d353ebfe:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d353ec02:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d353ec06:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    23a8d353ec0a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d353ec0f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353ec13:	4c 8b 15 77 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe977]        # 0x23a8d353d591
    23a8d353ec1a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d353ec1f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d353ec24:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d353ec28:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353ec32:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    23a8d353ec3c:	e9 b7 00 00 00                                  	jmp    0x23a8d353ecf8
    23a8d353ec41:	4c 8b 85 10 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f0]
    23a8d353ec48:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    23a8d353ec4f:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    23a8d353ec53:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    23a8d353ec5a:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    23a8d353ec5e:	c4 81 6a 59 74 1c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+r11*1+0x50]
    23a8d353ec65:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    23a8d353ec69:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353ec6d:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    23a8d353ec72:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353ec76:	c4 01 7a 10 5c 04 54                            	vmovss xmm11,DWORD PTR [r12+r8*1+0x54]
    23a8d353ec7d:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    23a8d353ec81:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    23a8d353ec88:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    23a8d353ec8c:	c5 fb 11 85 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm0
    23a8d353ec94:	c4 81 6a 59 44 1c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+r11*1+0x54]
    23a8d353ec9b:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    23a8d353ec9f:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    23a8d353eca3:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353eca7:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    23a8d353ecae:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    23a8d353ecb4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353ecb8:	8b c8                                           	mov    ecx,eax
    23a8d353ecba:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353ecbd:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    23a8d353ecc3:	c5 fb 10 8d b0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x150]
    23a8d353eccb:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    23a8d353eccf:	8b df                                           	mov    ebx,edi
    23a8d353ecd1:	e8 5a d8 f0 ff                                  	call   0x23a8d344c530
    23a8d353ecd6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353ecd9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353ecdd:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    23a8d353ece7:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353ecf1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353ecf8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d353ecfc:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    23a8d353ed04:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    23a8d353ed0d:	0f 85 2a 00 00 00                               	jne    0x23a8d353ed3d
    23a8d353ed13:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    23a8d353ed1d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    23a8d353ed27:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    23a8d353ed31:	49 8b fb                                        	mov    rdi,r11
    23a8d353ed34:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    23a8d353ed38:	e9 dd 01 00 00                                  	jmp    0x23a8d353ef1a
    23a8d353ed3d:	c5 fb 10 85 08 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1f8]
    23a8d353ed45:	c5 fa 59 85 a0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x260]
    23a8d353ed4d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    23a8d353ed55:	c5 ca 59 b5 50 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1b0]
    23a8d353ed5d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    23a8d353ed65:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    23a8d353ed6d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    23a8d353ed71:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353ed75:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    23a8d353ed7d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353ed81:	4c 8b 15 e7 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5e7]        # 0x23a8d353c36f
    23a8d353ed88:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353ed8d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d353ed91:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d353ed95:	0f 87 04 00 00 00                               	ja     0x23a8d353ed9f
    23a8d353ed9b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d353ed9f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    23a8d353eda7:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    23a8d353edae:	0f 85 28 00 00 00                               	jne    0x23a8d353eddc
    23a8d353edb4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    23a8d353edbe:	4c 8b 15 aa d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5aa]        # 0x23a8d353c36f
    23a8d353edc5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d353edca:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    23a8d353edce:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353edd2:	e8 e1 f7 f0 ff                                  	call   0x23a8d344e5b8
    23a8d353edd7:	e9 94 00 00 00                                  	jmp    0x23a8d353ee70
    23a8d353eddc:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d353ede0:	0f 84 67 00 00 00                               	je     0x23a8d353ee4d
    23a8d353ede6:	4d 8b d0                                        	mov    r10,r8
    23a8d353ede9:	4d 8b c3                                        	mov    r8,r11
    23a8d353edec:	4d 8b da                                        	mov    r11,r10
    23a8d353edef:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    23a8d353edf9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    23a8d353ee03:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    23a8d353ee08:	7a 06                                           	jp     0x23a8d353ee10
    23a8d353ee0a:	0f 84 2a 00 00 00                               	je     0x23a8d353ee3a
    23a8d353ee10:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    23a8d353ee14:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    23a8d353ee19:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    23a8d353ee1d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    23a8d353ee21:	0f 86 49 00 00 00                               	jbe    0x23a8d353ee70
    23a8d353ee27:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353ee2b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353ee30:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353ee35:	e9 5b 00 00 00                                  	jmp    0x23a8d353ee95
    23a8d353ee3a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353ee3e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353ee43:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353ee48:	e9 44 00 00 00                                  	jmp    0x23a8d353ee91
    23a8d353ee4d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    23a8d353ee57:	4c 8b 15 11 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd511]        # 0x23a8d353c36f
    23a8d353ee5e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353ee63:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    23a8d353ee67:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353ee6b:	e8 48 f7 f0 ff                                  	call   0x23a8d344e5b8
    23a8d353ee70:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353ee74:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353ee79:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353ee7e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    23a8d353ee82:	0f 87 09 00 00 00                               	ja     0x23a8d353ee91
    23a8d353ee88:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    23a8d353ee8c:	e9 04 00 00 00                                  	jmp    0x23a8d353ee95
    23a8d353ee91:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    23a8d353ee95:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353ee98:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353ee9c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    23a8d353eea6:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    23a8d353eeaa:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    23a8d353eeae:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    23a8d353eeb8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    23a8d353eebd:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    23a8d353eec7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    23a8d353eed1:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    23a8d353eedb:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    23a8d353eee0:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    23a8d353eeea:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    23a8d353eef4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    23a8d353eefe:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    23a8d353ef03:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    23a8d353ef0d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    23a8d353ef11:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353ef15:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d353ef1a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    23a8d353ef24:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353ef28:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d353ef2b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d353ef31:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    23a8d353ef37:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    23a8d353ef3f:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    23a8d353ef43:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    23a8d353ef47:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    23a8d353ef4c:	e8 0f d3 f0 ff                                  	call   0x23a8d344c260
    23a8d353ef51:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d353ef55:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d353ef5a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d353ef60:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    23a8d353ef67:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d353ef6b:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d353ef70:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d353ef76:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d353ef7c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353ef81:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    23a8d353ef88:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    23a8d353ef8f:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    23a8d353ef96:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d353ef9e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d353efa6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d353efae:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    23a8d353efb6:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    23a8d353efbd:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d353efc3:	e9 02 00 00 00                                  	jmp    0x23a8d353efca
    23a8d353efc8:	8b d0                                           	mov    edx,eax
    23a8d353efca:	f6 85 68 fd ff ff 08                            	test   BYTE PTR [rbp-0x298],0x8
    23a8d353efd1:	0f 85 0a 00 00 00                               	jne    0x23a8d353efe1
    23a8d353efd7:	c4 41 79 28 f1                                  	vmovapd xmm14,xmm9
    23a8d353efdc:	e9 49 57 00 00                                  	jmp    0x23a8d354472a
    23a8d353efe1:	43 8b 84 04 c8 3c 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0x3cc8]
    23a8d353efe9:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    23a8d353eff2:	0f 84 3c 00 00 00                               	je     0x23a8d353f034
    23a8d353eff8:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    23a8d353effe:	c1 e8 03                                        	shr    eax,0x3
    23a8d353f001:	83 e0 03                                        	and    eax,0x3
    23a8d353f004:	8b 9d 20 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1e0]
    23a8d353f00a:	0b d8                                           	or     ebx,eax
    23a8d353f00c:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    23a8d353f012:	03 d8                                           	add    ebx,eax
    23a8d353f014:	41 0f b6 1c 1c                                  	movzx  ebx,BYTE PTR [r12+rbx*1]
    23a8d353f019:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    23a8d353f01f:	83 e0 07                                        	and    eax,0x7
    23a8d353f022:	4c 8b d1                                        	mov    r10,rcx
    23a8d353f025:	8b c8                                           	mov    ecx,eax
    23a8d353f027:	49 8b c2                                        	mov    rax,r10
    23a8d353f02a:	d3 e3                                           	shl    ebx,cl
    23a8d353f02c:	f6 c3 80                                        	test   bl,0x80
    23a8d353f02f:	74 a6                                           	je     0x23a8d353efd7
    23a8d353f031:	48 8b c8                                        	mov    rcx,rax
    23a8d353f034:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    23a8d353f03b:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    23a8d353f042:	48 8d 14 03                                     	lea    rdx,[rbx+rax*1]
    23a8d353f046:	c4 e1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,rdx
    23a8d353f04b:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    23a8d353f04f:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    23a8d353f053:	48 8b d1                                        	mov    rdx,rcx
    23a8d353f056:	48 8b 8d 50 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3b0]
    23a8d353f05d:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    23a8d353f061:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    23a8d353f066:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    23a8d353f06b:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    23a8d353f070:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    23a8d353f074:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    23a8d353f078:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    23a8d353f07d:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    23a8d353f081:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    23a8d353f085:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    23a8d353f08a:	0f 83 47 ff ff ff                               	jae    0x23a8d353efd7
    23a8d353f090:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    23a8d353f097:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    23a8d353f09e:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    23a8d353f0a5:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    23a8d353f0aa:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    23a8d353f0ae:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    23a8d353f0b2:	43 8b 44 04 68                                  	mov    eax,DWORD PTR [r12+r8*1+0x68]
    23a8d353f0b7:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    23a8d353f0bd:	0f 85 0b 00 00 00                               	jne    0x23a8d353f0ce
    23a8d353f0c3:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    23a8d353f0c9:	e9 c7 00 00 00                                  	jmp    0x23a8d353f195
    23a8d353f0ce:	43 8b 84 04 a4 00 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0xa4]
    23a8d353f0d6:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    23a8d353f0df:	75 e2                                           	jne    0x23a8d353f0c3
    23a8d353f0e1:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    23a8d353f0e6:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    23a8d353f0ea:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    23a8d353f0f1:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    23a8d353f0f4:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    23a8d353f0fa:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    23a8d353f0fd:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    23a8d353f103:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    23a8d353f108:	2d 00 02 00 00                                  	sub    eax,0x200
    23a8d353f10d:	83 f8 08                                        	cmp    eax,0x8
    23a8d353f110:	0f 83 0b 00 00 00                               	jae    0x23a8d353f121
    23a8d353f116:	4c 8d 15 4b 5c 00 00                            	lea    r10,[rip+0x5c4b]        # 0x23a8d3544d68
    23a8d353f11d:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    23a8d353f121:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353f125:	0f 87 6a 00 00 00                               	ja     0x23a8d353f195
    23a8d353f12b:	e9 a7 fe ff ff                                  	jmp    0x23a8d353efd7
    23a8d353f130:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353f135:	0f 83 5a 00 00 00                               	jae    0x23a8d353f195
    23a8d353f13b:	e9 97 fe ff ff                                  	jmp    0x23a8d353efd7
    23a8d353f140:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353f145:	0f 8a 4a 00 00 00                               	jp     0x23a8d353f195
    23a8d353f14b:	0f 84 86 fe ff ff                               	je     0x23a8d353efd7
    23a8d353f151:	e9 3f 00 00 00                                  	jmp    0x23a8d353f195
    23a8d353f156:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353f15b:	0f 87 34 00 00 00                               	ja     0x23a8d353f195
    23a8d353f161:	e9 71 fe ff ff                                  	jmp    0x23a8d353efd7
    23a8d353f166:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353f16a:	0f 83 25 00 00 00                               	jae    0x23a8d353f195
    23a8d353f170:	e9 62 fe ff ff                                  	jmp    0x23a8d353efd7
    23a8d353f175:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    23a8d353f17a:	0f 8a 57 fe ff ff                               	jp     0x23a8d353efd7
    23a8d353f180:	0f 84 0f 00 00 00                               	je     0x23a8d353f195
    23a8d353f186:	e9 4c fe ff ff                                  	jmp    0x23a8d353efd7
    23a8d353f18b:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    23a8d353f18f:	0f 86 42 fe ff ff                               	jbe    0x23a8d353efd7
    23a8d353f195:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    23a8d353f19a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    23a8d353f19f:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    23a8d353f1a4:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    23a8d353f1ab:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    23a8d353f1b0:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    23a8d353f1b4:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    23a8d353f1bb:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    23a8d353f1c3:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    23a8d353f1c8:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    23a8d353f1cc:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    23a8d353f1d1:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    23a8d353f1d8:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    23a8d353f1dc:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d353f1e0:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    23a8d353f1e4:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    23a8d353f1e8:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    23a8d353f1eb:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    23a8d353f1f5:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    23a8d353f1ff:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    23a8d353f209:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    23a8d353f213:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    23a8d353f219:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353f220:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    23a8d353f228:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    23a8d353f22c:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    23a8d353f234:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    23a8d353f23c:	c5 fb 11 a5 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm4
    23a8d353f244:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    23a8d353f24c:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    23a8d353f254:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    23a8d353f25c:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    23a8d353f264:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353f268:	0f 86 4b 04 00 00                               	jbe    0x23a8d353f6b9
    23a8d353f26e:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    23a8d353f276:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    23a8d353f27f:	0f 85 0a 00 00 00                               	jne    0x23a8d353f28f
    23a8d353f285:	8b c8                                           	mov    ecx,eax
    23a8d353f287:	4d 8b c4                                        	mov    r8,r12
    23a8d353f28a:	e9 e0 04 00 00                                  	jmp    0x23a8d353f76f
    23a8d353f28f:	44 8d 80 90 00 00 00                            	lea    r8d,[rax+0x90]
    23a8d353f296:	44 8d 58 70                                     	lea    r11d,[rax+0x70]
    23a8d353f29a:	41 53                                           	push   r11
    23a8d353f29c:	4c 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r8
    23a8d353f2a3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f2a7:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353f2aa:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d353f2ad:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    23a8d353f2b0:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d353f2b3:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    23a8d353f2b7:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    23a8d353f2bc:	45 8b c8                                        	mov    r9d,r8d
    23a8d353f2bf:	e8 54 cf f0 ff                                  	call   0x23a8d344c218
    23a8d353f2c4:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353f2c8:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353f2cf:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    23a8d353f2d7:	45 85 db                                        	test   r11d,r11d
    23a8d353f2da:	0f 85 62 01 00 00                               	jne    0x23a8d353f442
    23a8d353f2e0:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353f2e3:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    23a8d353f2e8:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    23a8d353f2ee:	0f 84 43 00 00 00                               	je     0x23a8d353f337
    23a8d353f2f4:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353f2fa:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353f2fe:	41 53                                           	push   r11
    23a8d353f300:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f304:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    23a8d353f30a:	33 d2                                           	xor    edx,edx
    23a8d353f30c:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    23a8d353f313:	e8 28 cf f0 ff                                  	call   0x23a8d344c240
    23a8d353f318:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353f31b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353f31f:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353f326:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353f330:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353f337:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    23a8d353f33c:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    23a8d353f342:	0f 84 46 00 00 00                               	je     0x23a8d353f38e
    23a8d353f348:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353f34e:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353f352:	41 53                                           	push   r11
    23a8d353f354:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f358:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    23a8d353f35e:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d353f363:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    23a8d353f36a:	e8 d1 ce f0 ff                                  	call   0x23a8d344c240
    23a8d353f36f:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353f372:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353f376:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353f37d:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353f387:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353f38e:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    23a8d353f393:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    23a8d353f399:	0f 84 46 00 00 00                               	je     0x23a8d353f3e5
    23a8d353f39f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353f3a5:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353f3a9:	41 53                                           	push   r11
    23a8d353f3ab:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f3af:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    23a8d353f3b5:	ba 02 00 00 00                                  	mov    edx,0x2
    23a8d353f3ba:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    23a8d353f3c1:	e8 7a ce f0 ff                                  	call   0x23a8d344c240
    23a8d353f3c6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353f3c9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353f3cd:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    23a8d353f3d4:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    23a8d353f3de:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353f3e5:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    23a8d353f3ea:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    23a8d353f3f0:	0f 84 79 03 00 00                               	je     0x23a8d353f76f
    23a8d353f3f6:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    23a8d353f3fc:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    23a8d353f400:	41 53                                           	push   r11
    23a8d353f402:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f406:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    23a8d353f40c:	ba 03 00 00 00                                  	mov    edx,0x3
    23a8d353f411:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    23a8d353f418:	e8 23 ce f0 ff                                  	call   0x23a8d344c240
    23a8d353f41d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353f420:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    23a8d353f424:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    23a8d353f42a:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    23a8d353f433:	4c 8b c7                                        	mov    r8,rdi
    23a8d353f436:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353f43d:	e9 2d 03 00 00                                  	jmp    0x23a8d353f76f
    23a8d353f442:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    23a8d353f445:	4d 8b e0                                        	mov    r12,r8
    23a8d353f448:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    23a8d353f452:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    23a8d353f458:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d353f45d:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353f461:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    23a8d353f468:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    23a8d353f46c:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d353f470:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    23a8d353f47a:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    23a8d353f47e:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    23a8d353f484:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    23a8d353f488:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    23a8d353f48d:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    23a8d353f497:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    23a8d353f49b:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    23a8d353f4a2:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    23a8d353f4a6:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    23a8d353f4aa:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    23a8d353f4ae:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353f4b2:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    23a8d353f4b8:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    23a8d353f4bd:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    23a8d353f4c1:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    23a8d353f4c5:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    23a8d353f4ca:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    23a8d353f4cf:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    23a8d353f4d3:	0f 87 09 00 00 00                               	ja     0x23a8d353f4e2
    23a8d353f4d9:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    23a8d353f4dd:	e9 04 00 00 00                                  	jmp    0x23a8d353f4e6
    23a8d353f4e2:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353f4e6:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353f4eb:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    23a8d353f4ef:	0f 87 09 00 00 00                               	ja     0x23a8d353f4fe
    23a8d353f4f5:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d353f4f9:	e9 05 00 00 00                                  	jmp    0x23a8d353f503
    23a8d353f4fe:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    23a8d353f503:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d353f508:	41 83 fb 01                                     	cmp    r11d,0x1
    23a8d353f50c:	0f 84 a1 00 00 00                               	je     0x23a8d353f5b3
    23a8d353f512:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    23a8d353f516:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    23a8d353f520:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353f524:	0f 87 09 00 00 00                               	ja     0x23a8d353f533
    23a8d353f52a:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353f52e:	e9 04 00 00 00                                  	jmp    0x23a8d353f537
    23a8d353f533:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353f537:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353f53b:	0f 87 0a 00 00 00                               	ja     0x23a8d353f54b
    23a8d353f541:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353f546:	e9 05 00 00 00                                  	jmp    0x23a8d353f550
    23a8d353f54b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353f550:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    23a8d353f554:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d353f559:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d353f55e:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353f562:	4c 8b 15 28 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe028]        # 0x23a8d353d591
    23a8d353f569:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d353f56e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d353f573:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    23a8d353f577:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    23a8d353f581:	41 83 fb 03                                     	cmp    r11d,0x3
    23a8d353f585:	0f 85 04 00 00 00                               	jne    0x23a8d353f58f
    23a8d353f58b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    23a8d353f58f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    23a8d353f594:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353f598:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    23a8d353f59c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    23a8d353f5a6:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    23a8d353f5ab:	4d 8b df                                        	mov    r11,r15
    23a8d353f5ae:	e9 cc 00 00 00                                  	jmp    0x23a8d353f67f
    23a8d353f5b3:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    23a8d353f5ba:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353f5be:	0f 87 09 00 00 00                               	ja     0x23a8d353f5cd
    23a8d353f5c4:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    23a8d353f5c8:	e9 04 00 00 00                                  	jmp    0x23a8d353f5d1
    23a8d353f5cd:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    23a8d353f5d1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353f5d5:	0f 87 0a 00 00 00                               	ja     0x23a8d353f5e5
    23a8d353f5db:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    23a8d353f5e0:	e9 05 00 00 00                                  	jmp    0x23a8d353f5ea
    23a8d353f5e5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353f5ea:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    23a8d353f5f4:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    23a8d353f5fa:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    23a8d353f5ff:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    23a8d353f603:	0f 87 09 00 00 00                               	ja     0x23a8d353f612
    23a8d353f609:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d353f60d:	e9 04 00 00 00                                  	jmp    0x23a8d353f616
    23a8d353f612:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    23a8d353f616:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    23a8d353f61a:	0f 87 0a 00 00 00                               	ja     0x23a8d353f62a
    23a8d353f620:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    23a8d353f625:	e9 05 00 00 00                                  	jmp    0x23a8d353f62f
    23a8d353f62a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    23a8d353f62f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    23a8d353f639:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d353f63e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d353f642:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    23a8d353f64c:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    23a8d353f651:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d353f656:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d353f65a:	4c 8b 15 30 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf30]        # 0x23a8d353d591
    23a8d353f661:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d353f666:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d353f66b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d353f66f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d353f673:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    23a8d353f677:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    23a8d353f67b:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    23a8d353f67f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d353f684:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    23a8d353f688:	4c 8b 15 02 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf02]        # 0x23a8d353d591
    23a8d353f68f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d353f694:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d353f699:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    23a8d353f69d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    23a8d353f6a7:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    23a8d353f6b1:	4d 8b c4                                        	mov    r8,r12
    23a8d353f6b4:	e9 b6 00 00 00                                  	jmp    0x23a8d353f76f
    23a8d353f6b9:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    23a8d353f6c0:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    23a8d353f6c7:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    23a8d353f6cb:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    23a8d353f6d2:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    23a8d353f6d6:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    23a8d353f6dd:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    23a8d353f6e4:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    23a8d353f6e8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353f6ec:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    23a8d353f6f1:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353f6f5:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    23a8d353f6fc:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    23a8d353f700:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    23a8d353f707:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    23a8d353f70b:	c5 fb 11 85 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm0
    23a8d353f713:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    23a8d353f71a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    23a8d353f71e:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    23a8d353f722:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353f726:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    23a8d353f72c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f730:	8b c8                                           	mov    ecx,eax
    23a8d353f732:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353f735:	41 8b d0                                        	mov    edx,r8d
    23a8d353f738:	c5 fb 10 8d a0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x260]
    23a8d353f740:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    23a8d353f744:	8b df                                           	mov    ebx,edi
    23a8d353f746:	e8 e5 cd f0 ff                                  	call   0x23a8d344c530
    23a8d353f74b:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    23a8d353f74e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353f752:	c4 c1 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x90]
    23a8d353f75c:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    23a8d353f766:	8b cb                                           	mov    ecx,ebx
    23a8d353f768:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353f76f:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d353f773:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    23a8d353f77b:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    23a8d353f784:	0f 85 2c 00 00 00                               	jne    0x23a8d353f7b6
    23a8d353f78a:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    23a8d353f794:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    23a8d353f79e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    23a8d353f7a8:	49 8b fb                                        	mov    rdi,r11
    23a8d353f7ab:	8b d9                                           	mov    ebx,ecx
    23a8d353f7ad:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    23a8d353f7b1:	e9 dd 01 00 00                                  	jmp    0x23a8d353f993
    23a8d353f7b6:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    23a8d353f7be:	c5 fa 59 85 30 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1d0]
    23a8d353f7c6:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    23a8d353f7ce:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    23a8d353f7d6:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    23a8d353f7de:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    23a8d353f7e6:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    23a8d353f7ea:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    23a8d353f7ee:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    23a8d353f7f6:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    23a8d353f7fa:	4c 8b 15 6e cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb6e]        # 0x23a8d353c36f
    23a8d353f801:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353f806:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    23a8d353f80a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    23a8d353f80e:	0f 87 04 00 00 00                               	ja     0x23a8d353f818
    23a8d353f814:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d353f818:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    23a8d353f820:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    23a8d353f827:	0f 85 28 00 00 00                               	jne    0x23a8d353f855
    23a8d353f82d:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    23a8d353f837:	4c 8b 15 31 cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb31]        # 0x23a8d353c36f
    23a8d353f83e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d353f843:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    23a8d353f847:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f84b:	e8 68 ed f0 ff                                  	call   0x23a8d344e5b8
    23a8d353f850:	e9 94 00 00 00                                  	jmp    0x23a8d353f8e9
    23a8d353f855:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d353f859:	0f 84 67 00 00 00                               	je     0x23a8d353f8c6
    23a8d353f85f:	4d 8b d0                                        	mov    r10,r8
    23a8d353f862:	4d 8b c3                                        	mov    r8,r11
    23a8d353f865:	4d 8b da                                        	mov    r11,r10
    23a8d353f868:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    23a8d353f872:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    23a8d353f87c:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    23a8d353f881:	7a 06                                           	jp     0x23a8d353f889
    23a8d353f883:	0f 84 2a 00 00 00                               	je     0x23a8d353f8b3
    23a8d353f889:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    23a8d353f88d:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    23a8d353f892:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    23a8d353f896:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    23a8d353f89a:	0f 86 49 00 00 00                               	jbe    0x23a8d353f8e9
    23a8d353f8a0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353f8a4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353f8a9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353f8ae:	e9 5b 00 00 00                                  	jmp    0x23a8d353f90e
    23a8d353f8b3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353f8b7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353f8bc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353f8c1:	e9 44 00 00 00                                  	jmp    0x23a8d353f90a
    23a8d353f8c6:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    23a8d353f8d0:	4c 8b 15 98 ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca98]        # 0x23a8d353c36f
    23a8d353f8d7:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    23a8d353f8dc:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    23a8d353f8e0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f8e4:	e8 cf ec f0 ff                                  	call   0x23a8d344e5b8
    23a8d353f8e9:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    23a8d353f8ed:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    23a8d353f8f2:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    23a8d353f8f7:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    23a8d353f8fb:	0f 87 09 00 00 00                               	ja     0x23a8d353f90a
    23a8d353f901:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    23a8d353f905:	e9 04 00 00 00                                  	jmp    0x23a8d353f90e
    23a8d353f90a:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    23a8d353f90e:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    23a8d353f911:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d353f915:	c4 c1 42 59 b4 18 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rbx*1+0x190]
    23a8d353f91f:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    23a8d353f923:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    23a8d353f927:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    23a8d353f931:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    23a8d353f936:	c4 c1 7a 11 b4 18 90 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x190],xmm6
    23a8d353f940:	c4 41 42 59 8c 18 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rbx*1+0x194]
    23a8d353f94a:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    23a8d353f954:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    23a8d353f959:	c4 41 7a 11 8c 18 94 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x194],xmm9
    23a8d353f963:	c4 c1 42 59 bc 18 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rbx*1+0x198]
    23a8d353f96d:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    23a8d353f977:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    23a8d353f97c:	c4 c1 7a 11 bc 18 98 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x198],xmm7
    23a8d353f986:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    23a8d353f98a:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353f98e:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d353f993:	c4 c1 7a 10 ac 18 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rbx*1+0x19c]
    23a8d353f99d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d353f9a1:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d353f9a4:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    23a8d353f9aa:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    23a8d353f9b0:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    23a8d353f9b8:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    23a8d353f9bc:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    23a8d353f9c0:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    23a8d353f9c5:	e8 96 c8 f0 ff                                  	call   0x23a8d344c260
    23a8d353f9ca:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d353f9ce:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d353f9d3:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d353f9d7:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d353f9dc:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d353f9e2:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d353f9e8:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d353f9ed:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d353f9f5:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d353f9fd:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d353fa05:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d353fa0d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d353fa13:	e9 12 4d 00 00                                  	jmp    0x23a8d354472a
    23a8d353fa18:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    23a8d353fa1c:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    23a8d353fa23:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d353fa27:	4e 89 7c 02 70                                  	mov    QWORD PTR [rdx+r8*1+0x70],r15
    23a8d353fa2c:	4a 8d 0c 3f                                     	lea    rcx,[rdi+r15*1]
    23a8d353fa30:	4a 89 8c 02 80 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x80],rcx
    23a8d353fa38:	49 8b df                                        	mov    rbx,r15
    23a8d353fa3b:	48 2b 9d d0 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x330]
    23a8d353fa42:	4a 89 5c 02 78                                  	mov    QWORD PTR [rdx+r8*1+0x78],rbx
    23a8d353fa47:	4c 8d 1c 1f                                     	lea    r11,[rdi+rbx*1]
    23a8d353fa4b:	4e 89 9c 02 88 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x88],r11
    23a8d353fa53:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    23a8d353fa5a:	4a 89 74 02 50                                  	mov    QWORD PTR [rdx+r8*1+0x50],rsi
    23a8d353fa5f:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    23a8d353fa66:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    23a8d353fa6a:	4e 89 64 02 60                                  	mov    QWORD PTR [rdx+r8*1+0x60],r12
    23a8d353fa6f:	48 8b c6                                        	mov    rax,rsi
    23a8d353fa72:	48 2b 85 f0 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x310]
    23a8d353fa79:	4a 89 44 02 58                                  	mov    QWORD PTR [rdx+r8*1+0x58],rax
    23a8d353fa7e:	4c 8d 0c 07                                     	lea    r9,[rdi+rax*1]
    23a8d353fa82:	4e 89 4c 02 68                                  	mov    QWORD PTR [rdx+r8*1+0x68],r9
    23a8d353fa87:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    23a8d353fa8b:	c4 a1 7a 7f 44 02 40                            	vmovdqu XMMWORD PTR [rdx+r8*1+0x40],xmm0
    23a8d353fa92:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    23a8d353fa99:	48 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rbx
    23a8d353faa0:	4c 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r11
    23a8d353faa7:	4c 89 a5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r12
    23a8d353faae:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    23a8d353fab5:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    23a8d353fabc:	33 ff                                           	xor    edi,edi
    23a8d353fabe:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    23a8d353fac2:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d353fac6:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    23a8d353faca:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    23a8d353fad0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    23a8d353fad5:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    23a8d353fadc:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    23a8d353fae3:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    23a8d353faea:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    23a8d353faef:	e9 10 00 00 00                                  	jmp    0x23a8d353fb04
    23a8d353faf4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353fafd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    23a8d353fb00:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    23a8d353fb04:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d353fb09:	0f 85 63 4f 00 00                               	jne    0x23a8d3544a72
    23a8d353fb0f:	8b cf                                           	mov    ecx,edi
    23a8d353fb11:	41 bf 01 00 00 00                               	mov    r15d,0x1
    23a8d353fb17:	41 d3 e7                                        	shl    r15d,cl
    23a8d353fb1a:	44 85 bd 68 fd ff ff                            	test   DWORD PTR [rbp-0x298],r15d
    23a8d353fb21:	0f 84 69 01 00 00                               	je     0x23a8d353fc90
    23a8d353fb27:	41 8d 4c b8 40                                  	lea    ecx,[r8+rdi*4+0x40]
    23a8d353fb2c:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    23a8d353fb33:	45 8d 7c f8 70                                  	lea    r15d,[r8+rdi*8+0x70]
    23a8d353fb38:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    23a8d353fb3c:	c4 41 82 2a cf                                  	vcvtsi2ss xmm9,xmm15,r15
    23a8d353fb41:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    23a8d353fb46:	c4 41 42 5c d1                                  	vsubss xmm10,xmm7,xmm9
    23a8d353fb4b:	45 8d 7c f8 50                                  	lea    r15d,[r8+rdi*8+0x50]
    23a8d353fb50:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    23a8d353fb54:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    23a8d353fb59:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    23a8d353fb5e:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    23a8d353fb63:	c4 21 2a 59 54 0a 18                            	vmulss xmm10,xmm10,DWORD PTR [rdx+r9*1+0x18]
    23a8d353fb6a:	c4 21 32 59 4c 22 18                            	vmulss xmm9,xmm9,DWORD PTR [rdx+r12*1+0x18]
    23a8d353fb71:	c5 22 59 5c 02 18                               	vmulss xmm11,xmm11,DWORD PTR [rdx+rax*1+0x18]
    23a8d353fb77:	c4 41 32 58 cb                                  	vaddss xmm9,xmm9,xmm11
    23a8d353fb7c:	c4 41 2a 58 c9                                  	vaddss xmm9,xmm10,xmm9
    23a8d353fb81:	c4 41 72 58 c9                                  	vaddss xmm9,xmm1,xmm9
    23a8d353fb86:	c5 7a 11 0c 0a                                  	vmovss DWORD PTR [rdx+rcx*1],xmm9
    23a8d353fb8b:	44 8b 7c 32 68                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0x68]
    23a8d353fb90:	83 7c 32 68 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x68],0x0
    23a8d353fb95:	0f 84 f5 00 00 00                               	je     0x23a8d353fc90
    23a8d353fb9b:	44 8b bc 32 a4 00 00 00                         	mov    r15d,DWORD PTR [rdx+rsi*1+0xa4]
    23a8d353fba3:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    23a8d353fbab:	0f 85 df 00 00 00                               	jne    0x23a8d353fc90
    23a8d353fbb1:	44 8b 7c 32 0c                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0xc]
    23a8d353fbb6:	8b 0c 32                                        	mov    ecx,DWORD PTR [rdx+rsi*1]
    23a8d353fbb9:	44 8b c7                                        	mov    r8d,edi
    23a8d353fbbc:	41 d1 e8                                        	shr    r8d,1
    23a8d353fbbf:	45 03 c3                                        	add    r8d,r11d
    23a8d353fbc2:	44 0f af c1                                     	imul   r8d,ecx
    23a8d353fbc6:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    23a8d353fbca:	45 8d 04 98                                     	lea    r8d,[r8+rbx*4]
    23a8d353fbce:	44 8b ff                                        	mov    r15d,edi
    23a8d353fbd1:	41 83 e7 01                                     	and    r15d,0x1
    23a8d353fbd5:	47 8d 04 b8                                     	lea    r8d,[r8+r15*4]
    23a8d353fbd9:	c4 21 7a 10 14 02                               	vmovss xmm10,DWORD PTR [rdx+r8*1]
    23a8d353fbdf:	44 8b 44 32 6c                                  	mov    r8d,DWORD PTR [rdx+rsi*1+0x6c]
    23a8d353fbe4:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    23a8d353fbeb:	41 83 f8 08                                     	cmp    r8d,0x8
    23a8d353fbef:	0f 83 0b 00 00 00                               	jae    0x23a8d353fc00
    23a8d353fbf5:	4c 8d 15 2c 51 00 00                            	lea    r10,[rip+0x512c]        # 0x23a8d3544d28
    23a8d353fbfc:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    23a8d353fc00:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    23a8d353fc05:	0f 87 85 00 00 00                               	ja     0x23a8d353fc90
    23a8d353fc0b:	e9 67 00 00 00                                  	jmp    0x23a8d353fc77
    23a8d353fc10:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d353fc15:	0f 83 75 00 00 00                               	jae    0x23a8d353fc90
    23a8d353fc1b:	e9 57 00 00 00                                  	jmp    0x23a8d353fc77
    23a8d353fc20:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    23a8d353fc25:	0f 8a 65 00 00 00                               	jp     0x23a8d353fc90
    23a8d353fc2b:	0f 84 46 00 00 00                               	je     0x23a8d353fc77
    23a8d353fc31:	e9 5a 00 00 00                                  	jmp    0x23a8d353fc90
    23a8d353fc36:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    23a8d353fc3b:	0f 87 4f 00 00 00                               	ja     0x23a8d353fc90
    23a8d353fc41:	e9 31 00 00 00                                  	jmp    0x23a8d353fc77
    23a8d353fc46:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    23a8d353fc4b:	0f 83 3f 00 00 00                               	jae    0x23a8d353fc90
    23a8d353fc51:	e9 21 00 00 00                                  	jmp    0x23a8d353fc77
    23a8d353fc56:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    23a8d353fc5b:	0f 8a 16 00 00 00                               	jp     0x23a8d353fc77
    23a8d353fc61:	0f 84 29 00 00 00                               	je     0x23a8d353fc90
    23a8d353fc67:	e9 0b 00 00 00                                  	jmp    0x23a8d353fc77
    23a8d353fc6c:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    23a8d353fc71:	0f 87 19 00 00 00                               	ja     0x23a8d353fc90
    23a8d353fc77:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    23a8d353fc7e:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    23a8d353fc82:	44 23 bd 68 fd ff ff                            	and    r15d,DWORD PTR [rbp-0x298]
    23a8d353fc89:	4c 89 bd 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r15
    23a8d353fc90:	83 c7 01                                        	add    edi,0x1
    23a8d353fc93:	83 ff 04                                        	cmp    edi,0x4
    23a8d353fc96:	0f 85 64 fe ff ff                               	jne    0x23a8d353fb00
    23a8d353fc9c:	8b bd 68 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x298]
    23a8d353fca2:	85 ff                                           	test   edi,edi
    23a8d353fca4:	0f 85 1d 00 00 00                               	jne    0x23a8d353fcc7
    23a8d353fcaa:	4c 8b c6                                        	mov    r8,rsi
    23a8d353fcad:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    23a8d353fcb1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d353fcb5:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    23a8d353fcb9:	4c 8b e2                                        	mov    r12,rdx
    23a8d353fcbc:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d353fcc2:	e9 63 4a 00 00                                  	jmp    0x23a8d354472a
    23a8d353fcc7:	c4 61 82 2a 8d 60 ff ff ff                      	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0xa0]
    23a8d353fcd0:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    23a8d353fcd5:	c4 61 82 2a 95 b0 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x150]
    23a8d353fcde:	c4 43 31 21 ca 10                               	vinsertps xmm9,xmm9,xmm10,0x10
    23a8d353fce4:	c4 61 82 2a 95 b8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x148]
    23a8d353fced:	c4 43 31 21 ca 20                               	vinsertps xmm9,xmm9,xmm10,0x20
    23a8d353fcf3:	c4 61 82 2a 95 c8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x138]
    23a8d353fcfc:	c4 43 31 21 ca 30                               	vinsertps xmm9,xmm9,xmm10,0x30
    23a8d353fd02:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    23a8d353fd0a:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    23a8d353fd0f:	4c 8d 42 1c                                     	lea    r8,[rdx+0x1c]
    23a8d353fd13:	c4 02 79 18 1c 20                               	vbroadcastss xmm11,DWORD PTR [r8+r12*1]
    23a8d353fd19:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    23a8d353fd1e:	c4 e1 82 2a 95 50 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xb0]
    23a8d353fd27:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    23a8d353fd2c:	c4 e1 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0x100]
    23a8d353fd35:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    23a8d353fd3b:	c4 e1 82 2a 9d 18 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe8]
    23a8d353fd44:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    23a8d353fd4a:	c4 e1 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe0]
    23a8d353fd53:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    23a8d353fd59:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    23a8d353fd5d:	c4 c2 79 18 1c 00                               	vbroadcastss xmm3,DWORD PTR [r8+rax*1]
    23a8d353fd63:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    23a8d353fd67:	c5 a0 58 e3                                     	vaddps xmm4,xmm11,xmm3
    23a8d353fd6b:	4c 8b 15 1f d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd81f]        # 0x23a8d353d591
    23a8d353fd72:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d353fd77:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d353fd7b:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    23a8d353fd80:	c5 30 5c ca                                     	vsubps xmm9,xmm9,xmm2
    23a8d353fd84:	c4 82 79 18 14 08                               	vbroadcastss xmm2,DWORD PTR [r8+r9*1]
    23a8d353fd8a:	c5 30 59 ca                                     	vmulps xmm9,xmm9,xmm2
    23a8d353fd8e:	c4 c1 58 58 d1                                  	vaddps xmm2,xmm4,xmm9
    23a8d353fd93:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d353fd97:	c5 e8 c2 f4 02                                  	vcmpleps xmm6,xmm2,xmm4
    23a8d353fd9c:	c5 78 50 c6                                     	vmovmskps r8d,xmm6
    23a8d353fda0:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    23a8d353fda4:	44 23 c7                                        	and    r8d,edi
    23a8d353fda7:	0f 85 16 00 00 00                               	jne    0x23a8d353fdc3
    23a8d353fdad:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    23a8d353fdb4:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    23a8d353fdb7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353fdbe:	e9 7c 2a 00 00                                  	jmp    0x23a8d354283f
    23a8d353fdc3:	c5 d0 5e f2                                     	vdivps xmm6,xmm5,xmm2
    23a8d353fdc7:	48 8d 7a 2c                                     	lea    rdi,[rdx+0x2c]
    23a8d353fdcb:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    23a8d353fdd1:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    23a8d353fdd5:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    23a8d353fddb:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    23a8d353fddf:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    23a8d353fde3:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    23a8d353fde9:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    23a8d353fded:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    23a8d353fdf1:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    23a8d353fdf5:	48 8d 7a 28                                     	lea    rdi,[rdx+0x28]
    23a8d353fdf9:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    23a8d353fdff:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    23a8d353fe03:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    23a8d353fe0b:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    23a8d353fe11:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    23a8d353fe15:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    23a8d353fe19:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    23a8d353fe1f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    23a8d353fe23:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    23a8d353fe27:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    23a8d353fe2b:	48 8d 7a 24                                     	lea    rdi,[rdx+0x24]
    23a8d353fe2f:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    23a8d353fe35:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    23a8d353fe39:	c5 f8 11 bd a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm7
    23a8d353fe41:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    23a8d353fe47:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    23a8d353fe4b:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    23a8d353fe4f:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    23a8d353fe55:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    23a8d353fe59:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    23a8d353fe5d:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    23a8d353fe61:	48 8d 7a 20                                     	lea    rdi,[rdx+0x20]
    23a8d353fe65:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    23a8d353fe6b:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    23a8d353fe6f:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    23a8d353fe77:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    23a8d353fe7d:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    23a8d353fe81:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    23a8d353fe85:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    23a8d353fe8b:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    23a8d353fe8f:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    23a8d353fe93:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    23a8d353fe97:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353fe9e:	44 8b bc 3a 34 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x134]
    23a8d353fea6:	41 83 ef 01                                     	sub    r15d,0x1
    23a8d353feaa:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    23a8d353feb1:	41 83 ff 01                                     	cmp    r15d,0x1
    23a8d353feb5:	0f 86 5a 17 00 00                               	jbe    0x23a8d3541615
    23a8d353febb:	44 8b bc 3a 38 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x138]
    23a8d353fec3:	83 bc 3a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0x138],0x0
    23a8d353fecb:	0f 85 24 00 00 00                               	jne    0x23a8d353fef5
    23a8d353fed1:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    23a8d353fed9:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    23a8d353fedd:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    23a8d353fee5:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    23a8d353feed:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    23a8d353fef0:	e9 d7 28 00 00                                  	jmp    0x23a8d35427cc
    23a8d353fef5:	4d 8b f8                                        	mov    r15,r8
    23a8d353fef8:	41 83 e7 08                                     	and    r15d,0x8
    23a8d353fefc:	49 8b c8                                        	mov    rcx,r8
    23a8d353feff:	83 e1 04                                        	and    ecx,0x4
    23a8d353ff02:	4c 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r15
    23a8d353ff09:	4d 8b f8                                        	mov    r15,r8
    23a8d353ff0c:	41 83 e7 02                                     	and    r15d,0x2
    23a8d353ff10:	41 83 e0 01                                     	and    r8d,0x1
    23a8d353ff14:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    23a8d353ff1c:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    23a8d353ff24:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    23a8d353ff2c:	c5 78 11 8d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm9
    23a8d353ff34:	c5 f8 11 9d 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm3
    23a8d353ff3c:	c5 78 11 9d f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm11
    23a8d353ff44:	c5 f8 11 ad d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm5
    23a8d353ff4c:	c5 f8 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm4
    23a8d353ff54:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    23a8d353ff5b:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    23a8d353ff62:	4c 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r8
    23a8d353ff69:	45 33 c0                                        	xor    r8d,r8d
    23a8d353ff6c:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d353ff70:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    23a8d353ff78:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    23a8d353ff80:	e9 6a 00 00 00                                  	jmp    0x23a8d353ffef
    23a8d353ff85:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ff8e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ff97:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ffa0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ffa9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ffb2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d353ffbb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    23a8d353ffc0:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    23a8d353ffc8:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    23a8d353ffd0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d353ffd7:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    23a8d353ffdf:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    23a8d353ffe7:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    23a8d353ffef:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d353fff2:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    23a8d353fff8:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    23a8d353ffff:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    23a8d3540006:	4c 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r8
    23a8d354000d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3540012:	0f 85 e4 4a 00 00                               	jne    0x23a8d3544afc
    23a8d3540018:	44 8b 8c 3a 3c 01 00 00                         	mov    r9d,DWORD PTR [rdx+rdi*1+0x13c]
    23a8d3540020:	41 8b c8                                        	mov    ecx,r8d
    23a8d3540023:	41 d3 e9                                        	shr    r9d,cl
    23a8d3540026:	41 f6 c1 01                                     	test   r9b,0x1
    23a8d354002a:	0f 85 2d 00 00 00                               	jne    0x23a8d354005d
    23a8d3540030:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    23a8d3540037:	45 8b c8                                        	mov    r9d,r8d
    23a8d354003a:	41 c1 e1 06                                     	shl    r9d,0x6
    23a8d354003e:	41 03 c9                                        	add    ecx,r9d
    23a8d3540041:	c5 fa 7f 6c 0a 30                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x30],xmm5
    23a8d3540047:	c5 fa 7f 6c 0a 20                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x20],xmm5
    23a8d354004d:	c5 fa 7f 6c 0a 10                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x10],xmm5
    23a8d3540053:	c5 fa 7f 2c 0a                                  	vmovdqu XMMWORD PTR [rdx+rcx*1],xmm5
    23a8d3540058:	e9 11 12 00 00                                  	jmp    0x23a8d354126e
    23a8d354005d:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    23a8d3540064:	45 8b c8                                        	mov    r9d,r8d
    23a8d3540067:	41 c1 e1 06                                     	shl    r9d,0x6
    23a8d354006b:	44 03 c9                                        	add    r9d,ecx
    23a8d354006e:	41 6b c8 4c                                     	imul   ecx,r8d,0x4c
    23a8d3540072:	03 c8                                           	add    ecx,eax
    23a8d3540074:	8b 7c 0a 38                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x38]
    23a8d3540078:	83 7c 0a 38 00                                  	cmp    DWORD PTR [rdx+rcx*1+0x38],0x0
    23a8d354007d:	0f 85 a2 11 00 00                               	jne    0x23a8d3541225
    23a8d3540083:	41 8b f8                                        	mov    edi,r8d
    23a8d3540086:	c1 e7 04                                        	shl    edi,0x4
    23a8d3540089:	46 8d 04 27                                     	lea    r8d,[rdi+r12*1]
    23a8d354008d:	4c 8d 62 04                                     	lea    r12,[rdx+0x4]
    23a8d3540091:	c4 02 79 18 04 04                               	vbroadcastss xmm8,DWORD PTR [r12+r8*1]
    23a8d3540097:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    23a8d354009c:	41 8d 04 3f                                     	lea    eax,[r15+rdi*1]
    23a8d35400a0:	c4 42 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+rax*1]
    23a8d35400a6:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    23a8d35400ab:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    23a8d35400b0:	03 fb                                           	add    edi,ebx
    23a8d35400b2:	c4 42 79 18 14 3c                               	vbroadcastss xmm10,DWORD PTR [r12+rdi*1]
    23a8d35400b8:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    23a8d35400bd:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    23a8d35400c2:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    23a8d35400c7:	c4 22 79 18 14 02                               	vbroadcastss xmm10,DWORD PTR [rdx+r8*1]
    23a8d35400cd:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    23a8d35400d2:	c4 62 79 18 24 02                               	vbroadcastss xmm12,DWORD PTR [rdx+rax*1]
    23a8d35400d8:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    23a8d35400dd:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    23a8d35400e2:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    23a8d35400e8:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    23a8d35400ed:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    23a8d35400f2:	c4 41 48 59 d2                                  	vmulps xmm10,xmm6,xmm10
    23a8d35400f7:	44 8b 24 0a                                     	mov    r12d,DWORD PTR [rdx+rcx*1]
    23a8d35400fb:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d35400ff:	0f 85 22 0e 00 00                               	jne    0x23a8d3540f27
    23a8d3540105:	44 8b 7c 0a 28                                  	mov    r15d,DWORD PTR [rdx+rcx*1+0x28]
    23a8d354010a:	45 85 ff                                        	test   r15d,r15d
    23a8d354010d:	0f 84 14 0e 00 00                               	je     0x23a8d3540f27
    23a8d3540113:	8b 5c 0a 1c                                     	mov    ebx,DWORD PTR [rdx+rcx*1+0x1c]
    23a8d3540117:	85 db                                           	test   ebx,ebx
    23a8d3540119:	0f 8e 08 0e 00 00                               	jle    0x23a8d3540f27
    23a8d354011f:	44 8b 5c 0a 20                                  	mov    r11d,DWORD PTR [rdx+rcx*1+0x20]
    23a8d3540124:	45 85 db                                        	test   r11d,r11d
    23a8d3540127:	0f 8e f6 0d 00 00                               	jle    0x23a8d3540f23
    23a8d354012d:	44 8b d3                                        	mov    r10d,ebx
    23a8d3540130:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    23a8d3540135:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    23a8d354013a:	8b 7c 0a 10                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x10]
    23a8d354013e:	45 33 c0                                        	xor    r8d,r8d
    23a8d3540141:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    23a8d3540147:	41 0f 95 c0                                     	setne  r8b
    23a8d354014b:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    23a8d3540151:	40 0f 95 c7                                     	setne  dil
    23a8d3540155:	40 0f b6 ff                                     	movzx  edi,dil
    23a8d3540159:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    23a8d3540160:	41 23 f8                                        	and    edi,r8d
    23a8d3540163:	0f 85 0f 00 00 00                               	jne    0x23a8d3540178
    23a8d3540169:	c4 41 58 5f d2                                  	vmaxps xmm10,xmm4,xmm10
    23a8d354016e:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    23a8d3540173:	e9 0b 00 00 00                                  	jmp    0x23a8d3540183
    23a8d3540178:	c4 43 79 08 ea 09                               	vroundps xmm13,xmm10,0x9
    23a8d354017e:	c4 41 28 5c d5                                  	vsubps xmm10,xmm10,xmm13
    23a8d3540183:	c4 41 18 59 d2                                  	vmulps xmm10,xmm12,xmm10
    23a8d3540188:	45 8b d3                                        	mov    r10d,r11d
    23a8d354018b:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    23a8d3540190:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    23a8d3540195:	44 8b 44 0a 14                                  	mov    r8d,DWORD PTR [rdx+rcx*1+0x14]
    23a8d354019a:	45 33 e4                                        	xor    r12d,r12d
    23a8d354019d:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    23a8d35401a4:	41 0f 95 c4                                     	setne  r12b
    23a8d35401a8:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    23a8d35401af:	41 0f 95 c0                                     	setne  r8b
    23a8d35401b3:	45 0f b6 c0                                     	movzx  r8d,r8b
    23a8d35401b7:	45 23 c4                                        	and    r8d,r12d
    23a8d35401ba:	0f 85 0f 00 00 00                               	jne    0x23a8d35401cf
    23a8d35401c0:	c4 41 58 5f c0                                  	vmaxps xmm8,xmm4,xmm8
    23a8d35401c5:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    23a8d35401ca:	e9 0b 00 00 00                                  	jmp    0x23a8d35401da
    23a8d35401cf:	c4 43 79 08 e8 09                               	vroundps xmm13,xmm8,0x9
    23a8d35401d5:	c4 41 38 5c c5                                  	vsubps xmm8,xmm8,xmm13
    23a8d35401da:	c4 41 18 59 c0                                  	vmulps xmm8,xmm12,xmm8
    23a8d35401df:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    23a8d35401e9:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d35401ee:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d35401f3:	c4 41 38 58 ec                                  	vaddps xmm13,xmm8,xmm12
    23a8d35401f8:	44 8b 64 0a 0c                                  	mov    r12d,DWORD PTR [rdx+rcx*1+0xc]
    23a8d35401fd:	45 33 e4                                        	xor    r12d,r12d
    23a8d3540200:	81 7c 0a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0xc],0x2600
    23a8d3540208:	41 0f 94 c4                                     	sete   r12b
    23a8d354020c:	45 85 e4                                        	test   r12d,r12d
    23a8d354020f:	0f 85 66 00 00 00                               	jne    0x23a8d354027b
    23a8d3540215:	c4 43 79 08 c5 09                               	vroundps xmm8,xmm13,0x9
    23a8d354021b:	49 ba 50 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32850
    23a8d3540225:	c4 41 38 54 32                                  	vandps xmm14,xmm8,XMMWORD PTR [r10]
    23a8d354022a:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    23a8d3540234:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d3540239:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    23a8d354023d:	c5 08 c2 f1 01                                  	vcmpltps xmm14,xmm14,xmm1
    23a8d3540242:	4c 8b 15 95 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd95]        # 0x23a8d353bfde
    23a8d3540249:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    23a8d354024f:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    23a8d3540254:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    23a8d354025a:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    23a8d354025e:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    23a8d3540263:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    23a8d3540268:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    23a8d354026d:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    23a8d3540272:	c5 79 28 ec                                     	vmovapd xmm13,xmm4
    23a8d3540276:	e9 49 00 00 00                                  	jmp    0x23a8d35402c4
    23a8d354027b:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    23a8d3540281:	4c 8b 15 95 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff95]        # 0x23a8d354021d
    23a8d3540288:	c4 41 18 54 2a                                  	vandps xmm13,xmm12,XMMWORD PTR [r10]
    23a8d354028d:	4c 8b 15 98 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff98]        # 0x23a8d354022c
    23a8d3540294:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d3540299:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    23a8d354029d:	c5 10 c2 f1 01                                  	vcmpltps xmm14,xmm13,xmm1
    23a8d35402a2:	4c 8b 15 35 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd35]        # 0x23a8d353bfde
    23a8d35402a9:	c4 41 18 c2 fc 00                               	vcmpeqps xmm15,xmm12,xmm12
    23a8d35402af:	c4 41 18 54 ef                                  	vandps xmm13,xmm12,xmm15
    23a8d35402b4:	c4 41 18 c2 3a 0d                               	vcmpgeps xmm15,xmm12,XMMWORD PTR [r10]
    23a8d35402ba:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    23a8d35402bf:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    23a8d35402c4:	c4 c3 79 08 e2 09                               	vroundps xmm4,xmm10,0x9
    23a8d35402ca:	4c 8b 15 0d bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd0d]        # 0x23a8d353bfde
    23a8d35402d1:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    23a8d35402d6:	c4 c1 58 54 c7                                  	vandps xmm0,xmm4,xmm15
    23a8d35402db:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    23a8d35402e1:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    23a8d35402e5:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    23a8d35402ea:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    23a8d35402f4:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d35402f9:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d35402fd:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x23a8d354021d
    23a8d3540304:	c4 41 58 54 0a                                  	vandps xmm9,xmm4,XMMWORD PTR [r10]
    23a8d3540309:	c5 30 c2 c9 01                                  	vcmpltps xmm9,xmm9,xmm1
    23a8d354030e:	c5 31 df fe                                     	vpandn xmm15,xmm9,xmm6
    23a8d3540312:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    23a8d3540317:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d354031c:	8d 43 ff                                        	lea    eax,[rbx-0x1]
    23a8d354031f:	c5 79 6e c8                                     	vmovd  xmm9,eax
    23a8d3540323:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d3540328:	8b 44 0a 2c                                     	mov    eax,DWORD PTR [rdx+rcx*1+0x2c]
    23a8d354032c:	c4 e2 79 3d ca                                  	vpmaxsd xmm1,xmm0,xmm2
    23a8d3540331:	c4 c2 71 39 c9                                  	vpminsd xmm1,xmm1,xmm9
    23a8d3540336:	85 ff                                           	test   edi,edi
    23a8d3540338:	0f 84 58 00 00 00                               	je     0x23a8d3540396
    23a8d354033e:	c5 f9 6e c8                                     	vmovd  xmm1,eax
    23a8d3540342:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    23a8d3540347:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    23a8d354034b:	85 c0                                           	test   eax,eax
    23a8d354034d:	0f 85 43 00 00 00                               	jne    0x23a8d3540396
    23a8d3540353:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    23a8d3540357:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    23a8d354035c:	c4 c1 79 66 d9                                  	vpcmpgtd xmm3,xmm0,xmm9
    23a8d3540361:	c5 e1 db d9                                     	vpand  xmm3,xmm3,xmm1
    23a8d3540365:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d354036a:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    23a8d354036f:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    23a8d3540373:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    23a8d3540377:	c4 41 71 db db                                  	vpand  xmm11,xmm1,xmm11
    23a8d354037c:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    23a8d3540381:	c4 c1 79 fe cb                                  	vpaddd xmm1,xmm0,xmm11
    23a8d3540386:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    23a8d354038e:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    23a8d3540396:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    23a8d354039a:	c4 c1 11 db f6                                  	vpand  xmm6,xmm13,xmm14
    23a8d354039f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d35403a4:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    23a8d35403a8:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    23a8d35403ad:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d35403b2:	8b 4c 0a 30                                     	mov    ecx,DWORD PTR [rdx+rcx*1+0x30]
    23a8d35403b6:	c4 62 49 3d f2                                  	vpmaxsd xmm14,xmm6,xmm2
    23a8d35403bb:	c4 42 09 39 f5                                  	vpminsd xmm14,xmm14,xmm13
    23a8d35403c0:	45 85 c0                                        	test   r8d,r8d
    23a8d35403c3:	0f 84 4a 00 00 00                               	je     0x23a8d3540413
    23a8d35403c9:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    23a8d35403cd:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d35403d2:	c5 09 db f6                                     	vpand  xmm14,xmm14,xmm6
    23a8d35403d6:	85 c9                                           	test   ecx,ecx
    23a8d35403d8:	0f 85 35 00 00 00                               	jne    0x23a8d3540413
    23a8d35403de:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    23a8d35403e3:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d35403e8:	c4 c1 49 66 dd                                  	vpcmpgtd xmm3,xmm6,xmm13
    23a8d35403ed:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    23a8d35403f2:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d35403f7:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    23a8d35403fc:	c5 69 66 de                                     	vpcmpgtd xmm11,xmm2,xmm6
    23a8d3540400:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    23a8d3540404:	c4 41 09 db db                                  	vpand  xmm11,xmm14,xmm11
    23a8d3540409:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    23a8d354040e:	c4 41 49 fe f3                                  	vpaddd xmm14,xmm6,xmm11
    23a8d3540413:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    23a8d3540417:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d354041c:	c4 62 09 40 f3                                  	vpmulld xmm14,xmm14,xmm3
    23a8d3540421:	c5 09 fe d9                                     	vpaddd xmm11,xmm14,xmm1
    23a8d3540425:	c4 63 79 16 db 03                               	vpextrd ebx,xmm11,0x3
    23a8d354042b:	c4 43 79 16 d9 02                               	vpextrd r9d,xmm11,0x2
    23a8d3540431:	48 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rbx
    23a8d3540438:	c4 63 79 16 db 01                               	vpextrd ebx,xmm11,0x1
    23a8d354043e:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    23a8d3540445:	c4 41 79 7e d9                                  	vmovd  r9d,xmm11
    23a8d354044a:	45 85 e4                                        	test   r12d,r12d
    23a8d354044d:	0f 85 df 08 00 00                               	jne    0x23a8d3540d32
    23a8d3540453:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    23a8d3540457:	c4 62 79 3d da                                  	vpmaxsd xmm11,xmm0,xmm2
    23a8d354045c:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    23a8d3540461:	85 ff                                           	test   edi,edi
    23a8d3540463:	0f 84 41 00 00 00                               	je     0x23a8d35404aa
    23a8d3540469:	c5 79 6e d8                                     	vmovd  xmm11,eax
    23a8d354046d:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d3540472:	c4 41 79 db db                                  	vpand  xmm11,xmm0,xmm11
    23a8d3540477:	85 c0                                           	test   eax,eax
    23a8d3540479:	0f 85 2b 00 00 00                               	jne    0x23a8d35404aa
    23a8d354047f:	c4 41 79 66 c9                                  	vpcmpgtd xmm9,xmm0,xmm9
    23a8d3540484:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    23a8d3540488:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d354048d:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    23a8d3540492:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    23a8d3540496:	c4 41 21 df f9                                  	vpandn xmm15,xmm11,xmm9
    23a8d354049b:	c4 41 61 db cb                                  	vpand  xmm9,xmm3,xmm11
    23a8d35404a0:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d35404a5:	c4 41 79 fe d9                                  	vpaddd xmm11,xmm0,xmm9
    23a8d35404aa:	c5 c9 fe c7                                     	vpaddd xmm0,xmm6,xmm7
    23a8d35404ae:	c4 e2 79 3d f2                                  	vpmaxsd xmm6,xmm0,xmm2
    23a8d35404b3:	c4 c2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm13
    23a8d35404b8:	45 85 c0                                        	test   r8d,r8d
    23a8d35404bb:	0f 84 49 00 00 00                               	je     0x23a8d354050a
    23a8d35404c1:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    23a8d35404c5:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    23a8d35404ca:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    23a8d35404ce:	85 c9                                           	test   ecx,ecx
    23a8d35404d0:	0f 85 34 00 00 00                               	jne    0x23a8d354050a
    23a8d35404d6:	c4 c1 79 6e f3                                  	vmovd  xmm6,r11d
    23a8d35404db:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    23a8d35404e0:	c4 41 79 66 cd                                  	vpcmpgtd xmm9,xmm0,xmm13
    23a8d35404e5:	c5 31 db ce                                     	vpand  xmm9,xmm9,xmm6
    23a8d35404e9:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d35404ee:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    23a8d35404f3:	c5 69 66 e8                                     	vpcmpgtd xmm13,xmm2,xmm0
    23a8d35404f7:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    23a8d35404fc:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    23a8d3540501:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d3540506:	c5 f9 fe f6                                     	vpaddd xmm6,xmm0,xmm6
    23a8d354050a:	c4 e2 49 40 c3                                  	vpmulld xmm0,xmm6,xmm3
    23a8d354050f:	c5 f9 fe f1                                     	vpaddd xmm6,xmm0,xmm1
    23a8d3540513:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    23a8d354051a:	0f 84 71 00 00 00                               	je     0x23a8d3540591
    23a8d3540520:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    23a8d3540527:	0f 85 07 00 00 00                               	jne    0x23a8d3540534
    23a8d354052d:	33 ff                                           	xor    edi,edi
    23a8d354052f:	e9 07 00 00 00                                  	jmp    0x23a8d354053b
    23a8d3540534:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    23a8d3540538:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d354053b:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    23a8d3540542:	0f 85 08 00 00 00                               	jne    0x23a8d3540550
    23a8d3540548:	45 33 c0                                        	xor    r8d,r8d
    23a8d354054b:	e9 08 00 00 00                                  	jmp    0x23a8d3540558
    23a8d3540550:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    23a8d3540554:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    23a8d3540558:	83 bd 50 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1b0],0x0
    23a8d354055f:	0f 85 08 00 00 00                               	jne    0x23a8d354056d
    23a8d3540565:	45 33 db                                        	xor    r11d,r11d
    23a8d3540568:	e9 0f 00 00 00                                  	jmp    0x23a8d354057c
    23a8d354056d:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    23a8d3540574:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    23a8d3540578:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d354057c:	83 bd b0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x150],0x0
    23a8d3540583:	0f 85 3c 00 00 00                               	jne    0x23a8d35405c5
    23a8d3540589:	45 33 e4                                        	xor    r12d,r12d
    23a8d354058c:	e9 43 00 00 00                                  	jmp    0x23a8d35405d4
    23a8d3540591:	c5 71 fe cf                                     	vpaddd xmm9,xmm1,xmm7
    23a8d3540595:	c4 41 21 76 c9                                  	vpcmpeqd xmm9,xmm11,xmm9
    23a8d354059a:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    23a8d354059f:	83 ff 0f                                        	cmp    edi,0xf
    23a8d35405a2:	0f 84 f8 02 00 00                               	je     0x23a8d35408a0
    23a8d35405a8:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    23a8d35405ae:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d35405b2:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    23a8d35405b6:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    23a8d35405ba:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    23a8d35405be:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    23a8d35405c2:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d35405c5:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    23a8d35405cc:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    23a8d35405d0:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    23a8d35405d4:	c4 41 21 fe ce                                  	vpaddd xmm9,xmm11,xmm14
    23a8d35405d9:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d35405dd:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d35405e2:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    23a8d35405e9:	0f 84 8a 00 00 00                               	je     0x23a8d3540679
    23a8d35405ef:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    23a8d35405f6:	0f 85 07 00 00 00                               	jne    0x23a8d3540603
    23a8d35405fc:	33 ff                                           	xor    edi,edi
    23a8d35405fe:	e9 0b 00 00 00                                  	jmp    0x23a8d354060e
    23a8d3540603:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d3540607:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d354060b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d354060e:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    23a8d3540615:	0f 85 07 00 00 00                               	jne    0x23a8d3540622
    23a8d354061b:	33 c0                                           	xor    eax,eax
    23a8d354061d:	e9 0d 00 00 00                                  	jmp    0x23a8d354062f
    23a8d3540622:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    23a8d3540628:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    23a8d354062c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    23a8d354062f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    23a8d3540636:	0f 85 07 00 00 00                               	jne    0x23a8d3540643
    23a8d354063c:	33 db                                           	xor    ebx,ebx
    23a8d354063e:	e9 0d 00 00 00                                  	jmp    0x23a8d3540650
    23a8d3540643:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    23a8d3540649:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    23a8d354064d:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    23a8d3540650:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    23a8d3540657:	0f 85 41 00 00 00                               	jne    0x23a8d354069e
    23a8d354065d:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    23a8d3540663:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d3540667:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d354066c:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    23a8d3540672:	33 c9                                           	xor    ecx,ecx
    23a8d3540674:	e9 54 00 00 00                                  	jmp    0x23a8d35406cd
    23a8d3540679:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d354067f:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d3540683:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    23a8d3540686:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d354068a:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d354068e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3540691:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    23a8d3540697:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    23a8d354069b:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    23a8d354069e:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    23a8d35406a4:	41 8d 0c 8f                                     	lea    ecx,[r15+rcx*4]
    23a8d35406a8:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    23a8d35406ab:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    23a8d35406b1:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d35406b5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d35406ba:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    23a8d35406c0:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    23a8d35406c7:	0f 84 78 00 00 00                               	je     0x23a8d3540745
    23a8d35406cd:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    23a8d35406d4:	0f 85 07 00 00 00                               	jne    0x23a8d35406e1
    23a8d35406da:	33 ff                                           	xor    edi,edi
    23a8d35406dc:	e9 0b 00 00 00                                  	jmp    0x23a8d35406ec
    23a8d35406e1:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    23a8d35406e5:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d35406e9:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d35406ec:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    23a8d35406f3:	0f 85 08 00 00 00                               	jne    0x23a8d3540701
    23a8d35406f9:	45 33 c0                                        	xor    r8d,r8d
    23a8d35406fc:	e9 0e 00 00 00                                  	jmp    0x23a8d354070f
    23a8d3540701:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    23a8d3540707:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    23a8d354070b:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    23a8d354070f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    23a8d3540716:	0f 85 07 00 00 00                               	jne    0x23a8d3540723
    23a8d354071c:	33 c0                                           	xor    eax,eax
    23a8d354071e:	e9 0d 00 00 00                                  	jmp    0x23a8d3540730
    23a8d3540723:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    23a8d3540729:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    23a8d354072d:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    23a8d3540730:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    23a8d3540737:	0f 85 2e 00 00 00                               	jne    0x23a8d354076b
    23a8d354073d:	45 33 c9                                        	xor    r9d,r9d
    23a8d3540740:	e9 34 00 00 00                                  	jmp    0x23a8d3540779
    23a8d3540745:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    23a8d354074b:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d354074f:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    23a8d3540753:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    23a8d3540757:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d354075b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d354075e:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    23a8d3540764:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    23a8d3540768:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    23a8d354076b:	c4 c3 79 16 f1 03                               	vpextrd r9d,xmm6,0x3
    23a8d3540771:	47 8d 0c 8f                                     	lea    r9d,[r15+r9*4]
    23a8d3540775:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    23a8d3540779:	c4 c3 31 22 f3 02                               	vpinsrd xmm6,xmm9,r11d,0x2
    23a8d354077f:	c4 63 11 22 cb 02                               	vpinsrd xmm9,xmm13,ebx,0x2
    23a8d3540785:	c4 c1 79 fe c3                                  	vpaddd xmm0,xmm0,xmm11
    23a8d354078a:	c5 79 6e df                                     	vmovd  xmm11,edi
    23a8d354078e:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d3540793:	c4 43 21 22 d8 01                               	vpinsrd xmm11,xmm11,r8d,0x1
    23a8d3540799:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    23a8d354079f:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    23a8d35407a6:	0f 84 7a 00 00 00                               	je     0x23a8d3540826
    23a8d35407ac:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    23a8d35407b3:	0f 85 07 00 00 00                               	jne    0x23a8d35407c0
    23a8d35407b9:	33 ff                                           	xor    edi,edi
    23a8d35407bb:	e9 0b 00 00 00                                  	jmp    0x23a8d35407cb
    23a8d35407c0:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    23a8d35407c4:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d35407c8:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d35407cb:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    23a8d35407d2:	0f 85 08 00 00 00                               	jne    0x23a8d35407e0
    23a8d35407d8:	45 33 c0                                        	xor    r8d,r8d
    23a8d35407db:	e9 0e 00 00 00                                  	jmp    0x23a8d35407ee
    23a8d35407e0:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    23a8d35407e6:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    23a8d35407ea:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    23a8d35407ee:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    23a8d35407f5:	0f 85 08 00 00 00                               	jne    0x23a8d3540803
    23a8d35407fb:	45 33 db                                        	xor    r11d,r11d
    23a8d35407fe:	e9 0e 00 00 00                                  	jmp    0x23a8d3540811
    23a8d3540803:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    23a8d3540809:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    23a8d354080d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3540811:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    23a8d3540818:	0f 85 2f 00 00 00                               	jne    0x23a8d354084d
    23a8d354081e:	45 33 ff                                        	xor    r15d,r15d
    23a8d3540821:	e9 35 00 00 00                                  	jmp    0x23a8d354085b
    23a8d3540826:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    23a8d354082c:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d3540830:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    23a8d3540834:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    23a8d3540838:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d354083c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d354083f:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    23a8d3540845:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    23a8d3540849:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d354084d:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    23a8d3540853:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    23a8d3540857:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    23a8d354085b:	c4 c3 49 22 c4 03                               	vpinsrd xmm0,xmm6,r12d,0x3
    23a8d3540861:	c4 e3 31 22 f1 03                               	vpinsrd xmm6,xmm9,ecx,0x3
    23a8d3540867:	c5 79 6e cf                                     	vmovd  xmm9,edi
    23a8d354086b:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d3540870:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    23a8d3540876:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    23a8d354087c:	c4 43 31 22 cf 03                               	vpinsrd xmm9,xmm9,r15d,0x3
    23a8d3540882:	c4 43 21 22 d9 03                               	vpinsrd xmm11,xmm11,r9d,0x3
    23a8d3540888:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    23a8d354088c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    23a8d3540891:	c4 41 79 28 df                                  	vmovapd xmm11,xmm15
    23a8d3540896:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    23a8d354089b:	e9 95 00 00 00                                  	jmp    0x23a8d3540935
    23a8d35408a0:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    23a8d35408a4:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    23a8d35408a9:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    23a8d35408ad:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    23a8d35408b2:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    23a8d35408b7:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    23a8d35408bd:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d35408c1:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    23a8d35408c6:	44 8b 85 c8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x138]
    23a8d35408cd:	43 8d 3c 87                                     	lea    edi,[r15+r8*4]
    23a8d35408d1:	c5 7b 10 1c 3a                                  	vmovsd xmm11,QWORD PTR [rdx+rdi*1]
    23a8d35408d6:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    23a8d35408db:	c4 41 78 c6 d9 dd                               	vshufps xmm11,xmm0,xmm9,0xdd
    23a8d35408e1:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    23a8d35408e7:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    23a8d35408ec:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    23a8d35408f0:	41 03 ff                                        	add    edi,r15d
    23a8d35408f3:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    23a8d35408f8:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    23a8d35408fe:	41 03 ff                                        	add    edi,r15d
    23a8d3540901:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    23a8d3540906:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    23a8d354090b:	c4 e3 79 16 f7 02                               	vpextrd edi,xmm6,0x2
    23a8d3540911:	41 03 ff                                        	add    edi,r15d
    23a8d3540914:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    23a8d3540919:	c4 e3 79 16 f7 03                               	vpextrd edi,xmm6,0x3
    23a8d354091f:	41 03 ff                                        	add    edi,r15d
    23a8d3540922:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    23a8d3540927:	c5 91 6c f6                                     	vpunpcklqdq xmm6,xmm13,xmm6
    23a8d354092b:	c5 30 c6 ee dd                                  	vshufps xmm13,xmm9,xmm6,0xdd
    23a8d3540930:	c5 b0 c6 f6 88                                  	vshufps xmm6,xmm9,xmm6,0x88
    23a8d3540935:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    23a8d354093a:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    23a8d354093f:	c5 28 5c d4                                     	vsubps xmm10,xmm10,xmm4
    23a8d3540943:	c4 41 50 5c e2                                  	vsubps xmm12,xmm5,xmm10
    23a8d3540948:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    23a8d3540952:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d3540957:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    23a8d354095c:	c4 c1 79 db ce                                  	vpand  xmm1,xmm0,xmm14
    23a8d3540961:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540966:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d354096c:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d3540971:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540976:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d354097b:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d354097f:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d3540983:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d3540988:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    23a8d354098c:	c4 c1 21 db de                                  	vpand  xmm3,xmm11,xmm14
    23a8d3540991:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540996:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d354099c:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d35409a1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d35409a6:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d35409ab:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d35409af:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d35409b3:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d35409b8:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    23a8d35409bc:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    23a8d35409c0:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    23a8d35409c4:	c4 c1 49 db de                                  	vpand  xmm3,xmm6,xmm14
    23a8d35409c9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d35409ce:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d35409d4:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d35409d9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d35409de:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d35409e3:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d35409e7:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d35409eb:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d35409f0:	c5 98 59 db                                     	vmulps xmm3,xmm12,xmm3
    23a8d35409f4:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    23a8d35409f9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d35409fe:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d3540a04:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d3540a09:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540a0e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d3540a13:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d3540a17:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d3540a1b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d3540a20:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    23a8d3540a24:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    23a8d3540a28:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    23a8d3540a2c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    23a8d3540a30:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    23a8d3540a3a:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3540a3f:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d3540a43:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    23a8d3540a47:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    23a8d3540a4e:	c4 a1 7a 7f 0c 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm1
    23a8d3540a54:	c5 f1 72 d0 10                                  	vpsrld xmm1,xmm0,0x10
    23a8d3540a59:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    23a8d3540a5e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540a63:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d3540a69:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d3540a6e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540a73:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d3540a78:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d3540a7c:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d3540a80:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d3540a85:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    23a8d3540a89:	c4 c1 59 72 d3 10                               	vpsrld xmm4,xmm11,0x10
    23a8d3540a8f:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    23a8d3540a94:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540a99:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d3540a9f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d3540aa4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540aa9:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d3540aae:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d3540ab2:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d3540ab6:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d3540abb:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    23a8d3540abf:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    23a8d3540ac3:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    23a8d3540ac7:	c5 d9 72 d6 10                                  	vpsrld xmm4,xmm6,0x10
    23a8d3540acc:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    23a8d3540ad1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540ad6:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d3540adc:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d3540ae1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540ae6:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d3540aeb:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d3540aef:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d3540af3:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d3540af8:	c5 98 59 e4                                     	vmulps xmm4,xmm12,xmm4
    23a8d3540afc:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    23a8d3540b02:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    23a8d3540b07:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540b0c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    23a8d3540b12:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    23a8d3540b17:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540b1c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    23a8d3540b21:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    23a8d3540b25:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    23a8d3540b29:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    23a8d3540b2e:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    23a8d3540b32:	c5 d8 58 d2                                     	vaddps xmm2,xmm4,xmm2
    23a8d3540b36:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    23a8d3540b3a:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d3540b3e:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    23a8d3540b42:	c4 a1 7a 7f 4c 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm1
    23a8d3540b49:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    23a8d3540b4e:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    23a8d3540b53:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540b58:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d3540b5e:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d3540b63:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540b68:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d3540b6d:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d3540b71:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d3540b75:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d3540b7a:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    23a8d3540b7e:	c4 c1 69 72 d3 08                               	vpsrld xmm2,xmm11,0x8
    23a8d3540b84:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    23a8d3540b89:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540b8e:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    23a8d3540b94:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    23a8d3540b99:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540b9e:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    23a8d3540ba3:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    23a8d3540ba7:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    23a8d3540bab:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    23a8d3540bb0:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    23a8d3540bb4:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    23a8d3540bb8:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    23a8d3540bbc:	c5 e9 72 d6 08                                  	vpsrld xmm2,xmm6,0x8
    23a8d3540bc1:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    23a8d3540bc6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540bcb:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    23a8d3540bd1:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    23a8d3540bd6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540bdb:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    23a8d3540be0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    23a8d3540be4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    23a8d3540be8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    23a8d3540bed:	c5 98 59 d2                                     	vmulps xmm2,xmm12,xmm2
    23a8d3540bf1:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    23a8d3540bf7:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    23a8d3540bfc:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540c01:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    23a8d3540c07:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    23a8d3540c0c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540c11:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    23a8d3540c17:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    23a8d3540c1c:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    23a8d3540c21:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    23a8d3540c26:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    23a8d3540c2b:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    23a8d3540c30:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    23a8d3540c35:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    23a8d3540c3a:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    23a8d3540c3e:	c4 21 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm14
    23a8d3540c45:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    23a8d3540c4a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540c4f:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d3540c55:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d3540c5a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540c5f:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d3540c64:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d3540c68:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d3540c6c:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d3540c71:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    23a8d3540c75:	c4 c1 21 72 d3 18                               	vpsrld xmm11,xmm11,0x18
    23a8d3540c7b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540c80:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    23a8d3540c86:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    23a8d3540c8b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540c90:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    23a8d3540c96:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    23a8d3540c9b:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    23a8d3540ca0:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    23a8d3540ca5:	c4 41 28 59 db                                  	vmulps xmm11,xmm10,xmm11
    23a8d3540caa:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    23a8d3540caf:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d3540cb3:	c5 c9 72 d6 18                                  	vpsrld xmm6,xmm6,0x18
    23a8d3540cb8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540cbd:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d3540cc3:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d3540cc8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540ccd:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d3540cd2:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d3540cd6:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d3540cda:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d3540cdf:	c5 98 59 f6                                     	vmulps xmm6,xmm12,xmm6
    23a8d3540ce3:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    23a8d3540ce9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540cee:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    23a8d3540cf4:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    23a8d3540cf9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540cfe:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    23a8d3540d04:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    23a8d3540d09:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    23a8d3540d0e:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    23a8d3540d13:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    23a8d3540d18:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    23a8d3540d1d:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    23a8d3540d21:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d3540d25:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    23a8d3540d2d:	e9 cd 01 00 00                                  	jmp    0x23a8d3540eff
    23a8d3540d32:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    23a8d3540d39:	0f 84 71 00 00 00                               	je     0x23a8d3540db0
    23a8d3540d3f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    23a8d3540d46:	0f 85 07 00 00 00                               	jne    0x23a8d3540d53
    23a8d3540d4c:	33 ff                                           	xor    edi,edi
    23a8d3540d4e:	e9 07 00 00 00                                  	jmp    0x23a8d3540d5a
    23a8d3540d53:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    23a8d3540d57:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3540d5a:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    23a8d3540d61:	0f 85 08 00 00 00                               	jne    0x23a8d3540d6f
    23a8d3540d67:	45 33 c0                                        	xor    r8d,r8d
    23a8d3540d6a:	e9 08 00 00 00                                  	jmp    0x23a8d3540d77
    23a8d3540d6f:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    23a8d3540d73:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    23a8d3540d77:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    23a8d3540d7e:	0f 85 08 00 00 00                               	jne    0x23a8d3540d8c
    23a8d3540d84:	45 33 db                                        	xor    r11d,r11d
    23a8d3540d87:	e9 0f 00 00 00                                  	jmp    0x23a8d3540d9b
    23a8d3540d8c:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    23a8d3540d93:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    23a8d3540d97:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3540d9b:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    23a8d3540da2:	0f 85 25 00 00 00                               	jne    0x23a8d3540dcd
    23a8d3540da8:	45 33 e4                                        	xor    r12d,r12d
    23a8d3540dab:	e9 2c 00 00 00                                  	jmp    0x23a8d3540ddc
    23a8d3540db0:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    23a8d3540db6:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    23a8d3540dba:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    23a8d3540dbe:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    23a8d3540dc2:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    23a8d3540dc6:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    23a8d3540dca:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3540dcd:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    23a8d3540dd4:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    23a8d3540dd8:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    23a8d3540ddc:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    23a8d3540de0:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d3540de5:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    23a8d3540deb:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    23a8d3540df1:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    23a8d3540df7:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x23a8d354094a
    23a8d3540dfe:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d3540e03:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d3540e07:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    23a8d3540e0b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540e10:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d3540e16:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d3540e1b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540e20:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d3540e26:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d3540e2b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d3540e30:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d3540e35:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x23a8d3540a32
    23a8d3540e3c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d3540e41:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d3540e46:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d3540e4b:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    23a8d3540e52:	c4 21 7a 7f 04 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm8
    23a8d3540e58:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    23a8d3540e5d:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    23a8d3540e61:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540e66:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d3540e6c:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d3540e71:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540e76:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d3540e7c:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d3540e81:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d3540e86:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d3540e8b:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d3540e90:	c4 21 7a 7f 44 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm8
    23a8d3540e97:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    23a8d3540e9c:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    23a8d3540ea0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540ea5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d3540eab:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d3540eb0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540eb5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d3540eba:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d3540ebe:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d3540ec2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d3540ec7:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    23a8d3540ecc:	c4 a1 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm6
    23a8d3540ed3:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    23a8d3540ed8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3540edd:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d3540ee3:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d3540ee8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3540eed:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d3540ef2:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d3540ef6:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d3540efa:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d3540eff:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x23a8d3540a32
    23a8d3540f06:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d3540f0b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d3540f0f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d3540f13:	c4 a1 7a 7f 44 1a 30                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x30],xmm0
    23a8d3540f1a:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d3540f1e:	e9 4b 03 00 00                                  	jmp    0x23a8d354126e
    23a8d3540f23:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d3540f27:	4c 8d 7a 08                                     	lea    r15,[rdx+0x8]
    23a8d3540f2b:	c4 82 79 18 04 07                               	vbroadcastss xmm0,DWORD PTR [r15+r8*1]
    23a8d3540f31:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    23a8d3540f35:	c4 42 79 18 24 07                               	vbroadcastss xmm12,DWORD PTR [r15+rax*1]
    23a8d3540f3b:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    23a8d3540f3f:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    23a8d3540f44:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    23a8d3540f49:	c4 42 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [r15+rdi*1]
    23a8d3540f4f:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    23a8d3540f54:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    23a8d3540f59:	c5 c8 59 d8                                     	vmulps xmm3,xmm6,xmm0
    23a8d3540f5d:	41 83 fc 03                                     	cmp    r12d,0x3
    23a8d3540f61:	0f 84 7a 02 00 00                               	je     0x23a8d35411e1
    23a8d3540f67:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    23a8d3540f6f:	41 8b fb                                        	mov    edi,r11d
    23a8d3540f72:	c5 fa 7f 84 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm0
    23a8d3540f7b:	c5 fa 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm0
    23a8d3540f84:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    23a8d3540f8d:	c5 7a 7f 94 3a f0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1f0],xmm10
    23a8d3540f96:	c5 7a 7f 84 3a e0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1e0],xmm8
    23a8d3540f9f:	c5 fa 7f 9c 3a d0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1d0],xmm3
    23a8d3540fa8:	c5 fa 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm0
    23a8d3540fb1:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    23a8d3540fb8:	48 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rcx
    23a8d3540fbf:	45 33 c0                                        	xor    r8d,r8d
    23a8d3540fc2:	e9 46 00 00 00                                  	jmp    0x23a8d354100d
    23a8d3540fc7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3540fd0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3540fd9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3540fe2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3540feb:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3540ff4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3540ffd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    23a8d3541000:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    23a8d3541006:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3541009:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d354100d:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    23a8d3541014:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3541019:	0f 85 54 3b 00 00                               	jne    0x23a8d3544b73
    23a8d354101f:	8b c1                                           	mov    eax,ecx
    23a8d3541021:	41 8b c8                                        	mov    ecx,r8d
    23a8d3541024:	4c 8b 9d 20 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe0]
    23a8d354102b:	41 d3 eb                                        	shr    r11d,cl
    23a8d354102e:	41 f6 c3 01                                     	test   r11b,0x1
    23a8d3541032:	0f 84 ff 00 00 00                               	je     0x23a8d3541137
    23a8d3541038:	8b 4c 02 10                                     	mov    ecx,DWORD PTR [rdx+rax*1+0x10]
    23a8d354103c:	44 8b 5c 02 0c                                  	mov    r11d,DWORD PTR [rdx+rax*1+0xc]
    23a8d3541041:	44 8b 64 02 08                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x8]
    23a8d3541046:	44 8b 64 02 04                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x4]
    23a8d354104b:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    23a8d354104f:	41 83 ff 02                                     	cmp    r15d,0x2
    23a8d3541053:	0f 84 89 00 00 00                               	je     0x23a8d35410e2
    23a8d3541059:	45 85 ff                                        	test   r15d,r15d
    23a8d354105c:	0f 85 32 00 00 00                               	jne    0x23a8d3541094
    23a8d3541062:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    23a8d354106a:	c4 a1 7a 10 0c 3a                               	vmovss xmm1,DWORD PTR [rdx+r15*1]
    23a8d3541070:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    23a8d3541077:	41 8b d8                                        	mov    ebx,r8d
    23a8d354107a:	c1 e3 04                                        	shl    ebx,0x4
    23a8d354107d:	41 03 df                                        	add    ebx,r15d
    23a8d3541080:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3541084:	41 8b c4                                        	mov    eax,r12d
    23a8d3541087:	41 8b d3                                        	mov    edx,r11d
    23a8d354108a:	e8 91 b1 f0 ff                                  	call   0x23a8d344c220
    23a8d354108f:	e9 a3 00 00 00                                  	jmp    0x23a8d3541137
    23a8d3541094:	4c 8b fa                                        	mov    r15,rdx
    23a8d3541097:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    23a8d354109c:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    23a8d35410a4:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    23a8d35410aa:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    23a8d35410b2:	c4 41 7a 10 04 17                               	vmovss xmm8,DWORD PTR [r15+rdx*1]
    23a8d35410b8:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    23a8d35410be:	41 8b f0                                        	mov    esi,r8d
    23a8d35410c1:	c1 e6 04                                        	shl    esi,0x4
    23a8d35410c4:	03 d6                                           	add    edx,esi
    23a8d35410c6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35410ca:	41 8b c4                                        	mov    eax,r12d
    23a8d35410cd:	44 8b ca                                        	mov    r9d,edx
    23a8d35410d0:	41 8b d3                                        	mov    edx,r11d
    23a8d35410d3:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    23a8d35410d8:	e8 5b b1 f0 ff                                  	call   0x23a8d344c238
    23a8d35410dd:	e9 55 00 00 00                                  	jmp    0x23a8d3541137
    23a8d35410e2:	4c 8b fa                                        	mov    r15,rdx
    23a8d35410e5:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    23a8d35410ea:	45 8b 4c 07 18                                  	mov    r9d,DWORD PTR [r15+rax*1+0x18]
    23a8d35410ef:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    23a8d35410f7:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    23a8d35410fd:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    23a8d3541105:	c4 c1 7a 10 14 17                               	vmovss xmm2,DWORD PTR [r15+rdx*1]
    23a8d354110b:	42 8d 94 87 d0 01 00 00                         	lea    edx,[rdi+r8*4+0x1d0]
    23a8d3541113:	c4 c1 7a 10 1c 17                               	vmovss xmm3,DWORD PTR [r15+rdx*1]
    23a8d3541119:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    23a8d354111f:	41 8b f0                                        	mov    esi,r8d
    23a8d3541122:	c1 e6 04                                        	shl    esi,0x4
    23a8d3541125:	03 d6                                           	add    edx,esi
    23a8d3541127:	52                                              	push   rdx
    23a8d3541128:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354112c:	41 8b c4                                        	mov    eax,r12d
    23a8d354112f:	41 8b d3                                        	mov    edx,r11d
    23a8d3541132:	e8 f1 b0 f0 ff                                  	call   0x23a8d344c228
    23a8d3541137:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    23a8d354113e:	41 83 c0 01                                     	add    r8d,0x1
    23a8d3541142:	41 83 f8 04                                     	cmp    r8d,0x4
    23a8d3541146:	0f 85 b4 fe ff ff                               	jne    0x23a8d3541000
    23a8d354114c:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    23a8d354114f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3541153:	c4 c1 7a 6f 84 18 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x1b0]
    23a8d354115d:	c4 c1 7a 6f b4 18 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0x1c0]
    23a8d3541167:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    23a8d354116b:	c4 41 7a 6f 84 18 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x190]
    23a8d3541175:	c4 41 7a 6f 8c 18 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x1a0]
    23a8d354117f:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    23a8d3541184:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    23a8d3541188:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    23a8d354118e:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    23a8d3541195:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    23a8d3541199:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    23a8d35411a0:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    23a8d35411a4:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    23a8d35411a9:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    23a8d35411ad:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    23a8d35411b4:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    23a8d35411b8:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    23a8d35411be:	44 8b db                                        	mov    r11d,ebx
    23a8d35411c1:	49 8b d0                                        	mov    rdx,r8
    23a8d35411c4:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    23a8d35411cc:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    23a8d35411d4:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    23a8d35411dc:	e9 8d 00 00 00                                  	jmp    0x23a8d354126e
    23a8d35411e1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35411e5:	8b c1                                           	mov    eax,ecx
    23a8d35411e7:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    23a8d35411ec:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    23a8d35411f1:	41 8b c9                                        	mov    ecx,r9d
    23a8d35411f4:	48 8b 95 20 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe0]
    23a8d35411fb:	e8 28 b3 f0 ff                                  	call   0x23a8d344c528
    23a8d3541200:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d3541204:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d3541208:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    23a8d3541210:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    23a8d3541218:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    23a8d3541220:	e9 49 00 00 00                                  	jmp    0x23a8d354126e
    23a8d3541225:	48 8b fa                                        	mov    rdi,rdx
    23a8d3541228:	48 8d 57 3c                                     	lea    rdx,[rdi+0x3c]
    23a8d354122c:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    23a8d3541232:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    23a8d3541238:	48 8d 57 40                                     	lea    rdx,[rdi+0x40]
    23a8d354123c:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    23a8d3541242:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    23a8d3541249:	48 8d 57 44                                     	lea    rdx,[rdi+0x44]
    23a8d354124d:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    23a8d3541253:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    23a8d354125a:	48 8d 57 48                                     	lea    rdx,[rdi+0x48]
    23a8d354125e:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    23a8d3541264:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
    23a8d354126b:	48 8b d7                                        	mov    rdx,rdi
    23a8d354126e:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    23a8d3541275:	41 83 c0 01                                     	add    r8d,0x1
    23a8d3541279:	41 83 f8 04                                     	cmp    r8d,0x4
    23a8d354127d:	0f 85 3d ed ff ff                               	jne    0x23a8d353ffc0
    23a8d3541283:	41 8b db                                        	mov    ebx,r11d
    23a8d3541286:	c5 fa 6f 84 1a 90 00 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x90]
    23a8d354128f:	4c 8b 15 4b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4b]        # 0x23a8d35401e1
    23a8d3541296:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d354129b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d354129f:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d35412a3:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    23a8d35412ab:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    23a8d35412af:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d35412b4:	c5 7a 6f 84 1a a0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xa0]
    23a8d35412bd:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    23a8d35412c1:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    23a8d35412c9:	c5 30 58 ce                                     	vaddps xmm9,xmm9,xmm6
    23a8d35412cd:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d35412d2:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    23a8d35412d7:	c5 7a 6f 84 1a b0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xb0]
    23a8d35412e0:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    23a8d35412e4:	c5 78 10 95 a0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x160]
    23a8d35412ec:	c5 a8 58 f6                                     	vaddps xmm6,xmm10,xmm6
    23a8d35412f0:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    23a8d35412f4:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    23a8d35412f8:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    23a8d3541302:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d3541307:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d354130b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d354130f:	c5 f8 10 b5 c0 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x240]
    23a8d3541317:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    23a8d354131b:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    23a8d354131f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d3541323:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    23a8d3541327:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    23a8d354132c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    23a8d3541331:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d3541338:	44 8b 84 3a 38 01 00 00                         	mov    r8d,DWORD PTR [rdx+rdi*1+0x138]
    23a8d3541340:	4d 8b d8                                        	mov    r11,r8
    23a8d3541343:	41 83 c3 ff                                     	add    r11d,0xffffffff
    23a8d3541347:	0f 85 f3 00 00 00                               	jne    0x23a8d3541440
    23a8d354134d:	c5 7a 6f 84 1a 70 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0x170]
    23a8d3541356:	c5 7a 6f 8c 1a 30 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x130]
    23a8d354135f:	4c 8d 82 38 36 00 00                            	lea    r8,[rdx+0x3638]
    23a8d3541366:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    23a8d354136a:	c4 02 79 18 14 20                               	vbroadcastss xmm10,DWORD PTR [r8+r12*1]
    23a8d3541370:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    23a8d3541375:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    23a8d354137a:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    23a8d354137f:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    23a8d3541384:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    23a8d3541389:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    23a8d354138e:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    23a8d3541393:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    23a8d3541398:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    23a8d354139d:	c5 7a 6f 8c 1a 60 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x160]
    23a8d35413a6:	c5 7a 6f 94 1a 20 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x120]
    23a8d35413af:	4c 8d 82 34 36 00 00                            	lea    r8,[rdx+0x3634]
    23a8d35413b6:	c4 02 79 18 24 20                               	vbroadcastss xmm12,DWORD PTR [r8+r12*1]
    23a8d35413bc:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    23a8d35413c1:	c4 41 48 5f e4                                  	vmaxps xmm12,xmm6,xmm12
    23a8d35413c6:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    23a8d35413cb:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    23a8d35413d0:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    23a8d35413d5:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    23a8d35413da:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    23a8d35413df:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    23a8d35413e4:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    23a8d35413e9:	c5 7a 6f 94 1a 50 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x150]
    23a8d35413f2:	c5 7a 6f a4 1a 10 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x110]
    23a8d35413fb:	4c 8d 82 30 36 00 00                            	lea    r8,[rdx+0x3630]
    23a8d3541402:	c4 02 79 18 2c 20                               	vbroadcastss xmm13,DWORD PTR [r8+r12*1]
    23a8d3541408:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    23a8d354140d:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    23a8d3541411:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d3541415:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    23a8d3541419:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    23a8d354141d:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d3541421:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    23a8d3541425:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    23a8d3541429:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d354142d:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    23a8d3541432:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    23a8d3541436:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    23a8d354143b:	e9 89 01 00 00                                  	jmp    0x23a8d35415c9
    23a8d3541440:	41 83 fb 02                                     	cmp    r11d,0x2
    23a8d3541444:	0f 84 86 00 00 00                               	je     0x23a8d35414d0
    23a8d354144a:	c5 fa 6f 84 1a 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x130]
    23a8d3541453:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    23a8d3541457:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    23a8d354145b:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d354145f:	c5 7a 6f 8c 1a 20 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x120]
    23a8d3541468:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    23a8d354146d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    23a8d3541472:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    23a8d3541477:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    23a8d354147e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d3541482:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    23a8d3541488:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    23a8d354148d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    23a8d3541492:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    23a8d3541497:	c5 7a 6f 94 1a 10 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x110]
    23a8d35414a0:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    23a8d35414a5:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    23a8d35414aa:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    23a8d35414af:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    23a8d35414b6:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    23a8d35414bc:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    23a8d35414c1:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    23a8d35414c6:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    23a8d35414cb:	e9 58 00 00 00                                  	jmp    0x23a8d3541528
    23a8d35414d0:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    23a8d35414d5:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    23a8d35414d9:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d35414dd:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    23a8d35414e4:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d35414e8:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    23a8d35414ee:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    23a8d35414f3:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    23a8d35414f8:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    23a8d35414fd:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    23a8d3541504:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    23a8d354150a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    23a8d354150f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    23a8d3541514:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    23a8d3541519:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    23a8d354151e:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    23a8d3541523:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    23a8d3541528:	4c 8d a2 20 37 00 00                            	lea    r12,[rdx+0x3720]
    23a8d354152f:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    23a8d3541535:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    23a8d354153a:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    23a8d354153e:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    23a8d3541542:	41 83 f8 01                                     	cmp    r8d,0x1
    23a8d3541546:	0f 84 7a 00 00 00                               	je     0x23a8d35415c6
    23a8d354154c:	c4 a1 7a 10 b4 1a 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdx+r11*1+0x3724]
    23a8d3541556:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    23a8d354155b:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    23a8d3541561:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    23a8d3541567:	c4 c1 78 2e f4                                  	vucomiss xmm6,xmm12
    23a8d354156c:	0f 87 09 00 00 00                               	ja     0x23a8d354157b
    23a8d3541572:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    23a8d3541576:	e9 05 00 00 00                                  	jmp    0x23a8d3541580
    23a8d354157b:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    23a8d3541580:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    23a8d3541585:	c5 78 2e ee                                     	vucomiss xmm13,xmm6
    23a8d3541589:	0f 87 0a 00 00 00                               	ja     0x23a8d3541599
    23a8d354158f:	c4 c1 79 28 f2                                  	vmovapd xmm6,xmm10
    23a8d3541594:	e9 05 00 00 00                                  	jmp    0x23a8d354159e
    23a8d3541599:	c4 c1 79 28 f5                                  	vmovapd xmm6,xmm13
    23a8d354159e:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    23a8d35415a3:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d35415a7:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d35415ab:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    23a8d35415b0:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    23a8d35415b5:	8b c3                                           	mov    eax,ebx
    23a8d35415b7:	49 8b f3                                        	mov    rsi,r11
    23a8d35415ba:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    23a8d35415c1:	e9 06 12 00 00                                  	jmp    0x23a8d35427cc
    23a8d35415c6:	4d 8b e3                                        	mov    r12,r11
    23a8d35415c9:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    23a8d35415d1:	c4 41 48 5f d4                                  	vmaxps xmm10,xmm6,xmm12
    23a8d35415d6:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    23a8d35415db:	c5 7a 6f a4 1a 40 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x140]
    23a8d35415e4:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    23a8d35415e9:	c4 c1 48 5f f2                                  	vmaxps xmm6,xmm6,xmm10
    23a8d35415ee:	c5 a0 5d f6                                     	vminps xmm6,xmm11,xmm6
    23a8d35415f2:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d35415f6:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d35415fa:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    23a8d35415ff:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    23a8d3541604:	8b c3                                           	mov    eax,ebx
    23a8d3541606:	49 8b f4                                        	mov    rsi,r12
    23a8d3541609:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    23a8d3541610:	e9 b7 11 00 00                                  	jmp    0x23a8d35427cc
    23a8d3541615:	44 8b 7c 3a 38                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x38]
    23a8d354161a:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    23a8d3541622:	83 7c 3a 38 00                                  	cmp    DWORD PTR [rdx+rdi*1+0x38],0x0
    23a8d3541627:	0f 85 b1 10 00 00                               	jne    0x23a8d35426de
    23a8d354162d:	4c 8d 7a 54                                     	lea    r15,[rdx+0x54]
    23a8d3541631:	c4 82 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [r15+r12*1]
    23a8d3541637:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    23a8d354163b:	c4 c2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [r15+rax*1]
    23a8d3541641:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    23a8d3541645:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    23a8d3541649:	c4 82 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [r15+r9*1]
    23a8d354164f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    23a8d3541653:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    23a8d3541657:	c5 c8 59 d7                                     	vmulps xmm2,xmm6,xmm7
    23a8d354165b:	4c 8d 7a 50                                     	lea    r15,[rdx+0x50]
    23a8d354165f:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    23a8d3541665:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    23a8d3541669:	c4 42 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+rax*1]
    23a8d354166f:	c4 41 60 59 c0                                  	vmulps xmm8,xmm3,xmm8
    23a8d3541674:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    23a8d3541679:	c4 02 79 18 04 0f                               	vbroadcastss xmm8,DWORD PTR [r15+r9*1]
    23a8d354167f:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    23a8d3541684:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    23a8d3541689:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    23a8d354168d:	44 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+rdi*1]
    23a8d3541691:	41 83 ff 01                                     	cmp    r15d,0x1
    23a8d3541695:	0f 85 28 0d 00 00                               	jne    0x23a8d35423c3
    23a8d354169b:	8b 4c 3a 28                                     	mov    ecx,DWORD PTR [rdx+rdi*1+0x28]
    23a8d354169f:	85 c9                                           	test   ecx,ecx
    23a8d35416a1:	0f 84 1c 0d 00 00                               	je     0x23a8d35423c3
    23a8d35416a7:	44 8b 5c 3a 1c                                  	mov    r11d,DWORD PTR [rdx+rdi*1+0x1c]
    23a8d35416ac:	45 85 db                                        	test   r11d,r11d
    23a8d35416af:	0f 8e 0e 0d 00 00                               	jle    0x23a8d35423c3
    23a8d35416b5:	8b 5c 3a 20                                     	mov    ebx,DWORD PTR [rdx+rdi*1+0x20]
    23a8d35416b9:	85 db                                           	test   ebx,ebx
    23a8d35416bb:	0f 8e fc 0c 00 00                               	jle    0x23a8d35423bd
    23a8d35416c1:	45 8b d3                                        	mov    r10d,r11d
    23a8d35416c4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d35416c9:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d35416ce:	44 8b 7c 3a 10                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x10]
    23a8d35416d3:	33 f6                                           	xor    esi,esi
    23a8d35416d5:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    23a8d35416dc:	40 0f 95 c6                                     	setne  sil
    23a8d35416e0:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    23a8d35416e7:	41 0f 95 c7                                     	setne  r15b
    23a8d35416eb:	45 0f b6 ff                                     	movzx  r15d,r15b
    23a8d35416ef:	44 23 fe                                        	and    r15d,esi
    23a8d35416f2:	0f 85 0d 00 00 00                               	jne    0x23a8d3541705
    23a8d35416f8:	c5 d8 5f f7                                     	vmaxps xmm6,xmm4,xmm7
    23a8d35416fc:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    23a8d3541700:	e9 0a 00 00 00                                  	jmp    0x23a8d354170f
    23a8d3541705:	c4 e3 79 08 f7 09                               	vroundps xmm6,xmm7,0x9
    23a8d354170b:	c5 c0 5c f6                                     	vsubps xmm6,xmm7,xmm6
    23a8d354170f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d3541713:	44 8b d3                                        	mov    r10d,ebx
    23a8d3541716:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    23a8d354171b:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    23a8d3541720:	8b 74 3a 14                                     	mov    esi,DWORD PTR [rdx+rdi*1+0x14]
    23a8d3541724:	45 33 c9                                        	xor    r9d,r9d
    23a8d3541727:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    23a8d354172d:	41 0f 95 c1                                     	setne  r9b
    23a8d3541731:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    23a8d3541737:	40 0f 95 c6                                     	setne  sil
    23a8d354173b:	40 0f b6 f6                                     	movzx  esi,sil
    23a8d354173f:	41 23 f1                                        	and    esi,r9d
    23a8d3541742:	0f 85 0d 00 00 00                               	jne    0x23a8d3541755
    23a8d3541748:	c5 d8 5f fa                                     	vmaxps xmm7,xmm4,xmm2
    23a8d354174c:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    23a8d3541750:	e9 0a 00 00 00                                  	jmp    0x23a8d354175f
    23a8d3541755:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    23a8d354175b:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    23a8d354175f:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d3541763:	4c 8b 15 77 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea77]        # 0x23a8d35401e1
    23a8d354176a:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d354176f:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d3541773:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    23a8d3541777:	44 8b 4c 3a 0c                                  	mov    r9d,DWORD PTR [rdx+rdi*1+0xc]
    23a8d354177c:	45 33 c9                                        	xor    r9d,r9d
    23a8d354177f:	81 7c 3a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0xc],0x2600
    23a8d3541787:	41 0f 94 c1                                     	sete   r9b
    23a8d354178b:	45 85 c9                                        	test   r9d,r9d
    23a8d354178e:	0f 85 5b 00 00 00                               	jne    0x23a8d35417ef
    23a8d3541794:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    23a8d354179a:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x23a8d354021d
    23a8d35417a1:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    23a8d35417a6:	4c 8b 15 7f ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7f]        # 0x23a8d354022c
    23a8d35417ad:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d35417b2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d35417b7:	c4 41 30 c2 cb 01                               	vcmpltps xmm9,xmm9,xmm11
    23a8d35417bd:	4c 8b 15 1a a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa81a]        # 0x23a8d353bfde
    23a8d35417c4:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    23a8d35417c9:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    23a8d35417ce:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    23a8d35417d4:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    23a8d35417d8:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    23a8d35417dd:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    23a8d35417e1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    23a8d35417e5:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    23a8d35417ea:	e9 49 00 00 00                                  	jmp    0x23a8d3541838
    23a8d35417ef:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    23a8d35417f5:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x23a8d354021d
    23a8d35417fc:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    23a8d3541801:	4c 8b 15 24 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea24]        # 0x23a8d354022c
    23a8d3541808:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d354180d:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d3541812:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    23a8d3541818:	4c 8b 15 bf a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa7bf]        # 0x23a8d353bfde
    23a8d354181f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    23a8d3541824:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    23a8d3541829:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    23a8d354182f:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    23a8d3541833:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    23a8d3541838:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    23a8d354183e:	4c 8b 15 99 a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa799]        # 0x23a8d353bfde
    23a8d3541845:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    23a8d354184b:	c4 c1 38 54 df                                  	vandps xmm3,xmm8,xmm15
    23a8d3541850:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    23a8d3541856:	c5 fa 5b db                                     	vcvttps2dq xmm3,xmm3
    23a8d354185a:	c4 c1 61 ef df                                  	vpxor  xmm3,xmm3,xmm15
    23a8d354185f:	4c 8b 15 86 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea86]        # 0x23a8d35402ec
    23a8d3541866:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d354186b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    23a8d354186f:	4c 8b 15 a7 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a7]        # 0x23a8d354021d
    23a8d3541876:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    23a8d354187b:	c4 c1 50 c2 eb 01                               	vcmpltps xmm5,xmm5,xmm11
    23a8d3541881:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    23a8d3541885:	c5 e1 db dd                                     	vpand  xmm3,xmm3,xmm5
    23a8d3541889:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    23a8d354188e:	41 8d 43 ff                                     	lea    eax,[r11-0x1]
    23a8d3541892:	c5 f9 6e e8                                     	vmovd  xmm5,eax
    23a8d3541896:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    23a8d354189b:	8b 44 3a 2c                                     	mov    eax,DWORD PTR [rdx+rdi*1+0x2c]
    23a8d354189f:	c5 78 10 95 40 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2c0]
    23a8d35418a7:	c4 42 61 3d e2                                  	vpmaxsd xmm12,xmm3,xmm10
    23a8d35418ac:	c4 62 19 39 e5                                  	vpminsd xmm12,xmm12,xmm5
    23a8d35418b1:	45 85 ff                                        	test   r15d,r15d
    23a8d35418b4:	0f 84 53 00 00 00                               	je     0x23a8d354190d
    23a8d35418ba:	c5 79 6e e0                                     	vmovd  xmm12,eax
    23a8d35418be:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    23a8d35418c3:	c4 41 61 db e4                                  	vpand  xmm12,xmm3,xmm12
    23a8d35418c8:	85 c0                                           	test   eax,eax
    23a8d35418ca:	0f 85 3d 00 00 00                               	jne    0x23a8d354190d
    23a8d35418d0:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    23a8d35418d5:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    23a8d35418da:	c5 61 66 ed                                     	vpcmpgtd xmm13,xmm3,xmm5
    23a8d35418de:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    23a8d35418e3:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d35418e8:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    23a8d35418ed:	c5 29 66 f3                                     	vpcmpgtd xmm14,xmm10,xmm3
    23a8d35418f1:	c4 41 09 df fd                                  	vpandn xmm15,xmm14,xmm13
    23a8d35418f6:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    23a8d35418fb:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    23a8d3541900:	c4 41 61 fe e4                                  	vpaddd xmm12,xmm3,xmm12
    23a8d3541905:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d354190d:	c5 31 df fc                                     	vpandn xmm15,xmm9,xmm4
    23a8d3541911:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    23a8d3541916:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    23a8d354191b:	44 8d 63 ff                                     	lea    r12d,[rbx-0x1]
    23a8d354191f:	c4 c1 79 6e d4                                  	vmovd  xmm2,r12d
    23a8d3541924:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d3541929:	44 8b 64 3a 30                                  	mov    r12d,DWORD PTR [rdx+rdi*1+0x30]
    23a8d354192e:	c4 42 31 3d ea                                  	vpmaxsd xmm13,xmm9,xmm10
    23a8d3541933:	c4 62 11 39 ea                                  	vpminsd xmm13,xmm13,xmm2
    23a8d3541938:	85 f6                                           	test   esi,esi
    23a8d354193a:	0f 84 4c 00 00 00                               	je     0x23a8d354198c
    23a8d3541940:	c4 41 79 6e ec                                  	vmovd  xmm13,r12d
    23a8d3541945:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d354194a:	c4 41 11 db e9                                  	vpand  xmm13,xmm13,xmm9
    23a8d354194f:	45 85 e4                                        	test   r12d,r12d
    23a8d3541952:	0f 85 34 00 00 00                               	jne    0x23a8d354198c
    23a8d3541958:	c5 79 6e eb                                     	vmovd  xmm13,ebx
    23a8d354195c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d3541961:	c5 31 66 f2                                     	vpcmpgtd xmm14,xmm9,xmm2
    23a8d3541965:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    23a8d354196a:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d354196f:	c4 42 09 0a f7                                  	vpsignd xmm14,xmm14,xmm15
    23a8d3541974:	c4 c1 29 66 c9                                  	vpcmpgtd xmm1,xmm10,xmm9
    23a8d3541979:	c4 41 71 df fe                                  	vpandn xmm15,xmm1,xmm14
    23a8d354197e:	c5 11 db e9                                     	vpand  xmm13,xmm13,xmm1
    23a8d3541982:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    23a8d3541987:	c4 41 31 fe ed                                  	vpaddd xmm13,xmm9,xmm13
    23a8d354198c:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    23a8d3541991:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    23a8d3541996:	c4 42 11 40 ee                                  	vpmulld xmm13,xmm13,xmm14
    23a8d354199b:	c4 c1 11 fe cc                                  	vpaddd xmm1,xmm13,xmm12
    23a8d35419a0:	c4 c3 79 16 cb 03                               	vpextrd r11d,xmm1,0x3
    23a8d35419a6:	c4 e3 79 16 cf 02                               	vpextrd edi,xmm1,0x2
    23a8d35419ac:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    23a8d35419b3:	c4 c3 79 16 cb 01                               	vpextrd r11d,xmm1,0x1
    23a8d35419b9:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    23a8d35419c0:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    23a8d35419c4:	45 85 c9                                        	test   r9d,r9d
    23a8d35419c7:	0f 85 19 08 00 00                               	jne    0x23a8d35421e6
    23a8d35419cd:	c5 f8 10 8d 10 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x3f0]
    23a8d35419d5:	c5 e1 fe d9                                     	vpaddd xmm3,xmm3,xmm1
    23a8d35419d9:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    23a8d35419e1:	c4 c2 61 3d f2                                  	vpmaxsd xmm6,xmm3,xmm10
    23a8d35419e6:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    23a8d35419eb:	45 85 ff                                        	test   r15d,r15d
    23a8d35419ee:	0f 84 3d 00 00 00                               	je     0x23a8d3541a31
    23a8d35419f4:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    23a8d35419f8:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    23a8d35419fd:	c5 e1 db f6                                     	vpand  xmm6,xmm3,xmm6
    23a8d3541a01:	85 c0                                           	test   eax,eax
    23a8d3541a03:	0f 85 28 00 00 00                               	jne    0x23a8d3541a31
    23a8d3541a09:	c5 e1 66 f5                                     	vpcmpgtd xmm6,xmm3,xmm5
    23a8d3541a0d:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    23a8d3541a12:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d3541a17:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    23a8d3541a1c:	c5 a9 66 eb                                     	vpcmpgtd xmm5,xmm10,xmm3
    23a8d3541a20:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    23a8d3541a24:	c5 89 db f5                                     	vpand  xmm6,xmm14,xmm5
    23a8d3541a28:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d3541a2d:	c5 e1 fe f6                                     	vpaddd xmm6,xmm3,xmm6
    23a8d3541a31:	c5 31 fe c9                                     	vpaddd xmm9,xmm9,xmm1
    23a8d3541a35:	c4 c2 31 3d da                                  	vpmaxsd xmm3,xmm9,xmm10
    23a8d3541a3a:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    23a8d3541a3f:	85 f6                                           	test   esi,esi
    23a8d3541a41:	0f 84 49 00 00 00                               	je     0x23a8d3541a90
    23a8d3541a47:	c4 c1 79 6e dc                                  	vmovd  xmm3,r12d
    23a8d3541a4c:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d3541a51:	c4 c1 61 db d9                                  	vpand  xmm3,xmm3,xmm9
    23a8d3541a56:	45 85 e4                                        	test   r12d,r12d
    23a8d3541a59:	0f 85 31 00 00 00                               	jne    0x23a8d3541a90
    23a8d3541a5f:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    23a8d3541a63:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d3541a68:	c5 b1 66 d2                                     	vpcmpgtd xmm2,xmm9,xmm2
    23a8d3541a6c:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    23a8d3541a70:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d3541a75:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    23a8d3541a7a:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    23a8d3541a7f:	c5 51 df fa                                     	vpandn xmm15,xmm5,xmm2
    23a8d3541a83:	c5 e1 db d5                                     	vpand  xmm2,xmm3,xmm5
    23a8d3541a87:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    23a8d3541a8c:	c5 b1 fe da                                     	vpaddd xmm3,xmm9,xmm2
    23a8d3541a90:	c4 42 61 40 ce                                  	vpmulld xmm9,xmm3,xmm14
    23a8d3541a95:	c4 41 31 fe f4                                  	vpaddd xmm14,xmm9,xmm12
    23a8d3541a9a:	41 83 f8 0f                                     	cmp    r8d,0xf
    23a8d3541a9e:	0f 85 18 00 00 00                               	jne    0x23a8d3541abc
    23a8d3541aa4:	c5 19 fe e1                                     	vpaddd xmm12,xmm12,xmm1
    23a8d3541aa8:	c4 41 49 76 e4                                  	vpcmpeqd xmm12,xmm6,xmm12
    23a8d3541aad:	c4 41 78 50 e4                                  	vmovmskps r12d,xmm12
    23a8d3541ab2:	41 83 fc 0f                                     	cmp    r12d,0xf
    23a8d3541ab6:	0f 84 24 03 00 00                               	je     0x23a8d3541de0
    23a8d3541abc:	4d 8b e0                                        	mov    r12,r8
    23a8d3541abf:	41 83 e4 08                                     	and    r12d,0x8
    23a8d3541ac3:	4d 8b f8                                        	mov    r15,r8
    23a8d3541ac6:	41 83 e7 04                                     	and    r15d,0x4
    23a8d3541aca:	49 8b c0                                        	mov    rax,r8
    23a8d3541acd:	83 e0 02                                        	and    eax,0x2
    23a8d3541ad0:	49 8b d8                                        	mov    rbx,r8
    23a8d3541ad3:	83 e3 01                                        	and    ebx,0x1
    23a8d3541ad6:	41 83 f8 0f                                     	cmp    r8d,0xf
    23a8d3541ada:	0f 84 6c 00 00 00                               	je     0x23a8d3541b4c
    23a8d3541ae0:	85 db                                           	test   ebx,ebx
    23a8d3541ae2:	0f 85 07 00 00 00                               	jne    0x23a8d3541aef
    23a8d3541ae8:	33 ff                                           	xor    edi,edi
    23a8d3541aea:	e9 06 00 00 00                                  	jmp    0x23a8d3541af5
    23a8d3541aef:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541af2:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3541af5:	85 c0                                           	test   eax,eax
    23a8d3541af7:	0f 85 08 00 00 00                               	jne    0x23a8d3541b05
    23a8d3541afd:	45 33 db                                        	xor    r11d,r11d
    23a8d3541b00:	e9 08 00 00 00                                  	jmp    0x23a8d3541b0d
    23a8d3541b05:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    23a8d3541b09:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3541b0d:	45 85 ff                                        	test   r15d,r15d
    23a8d3541b10:	0f 85 08 00 00 00                               	jne    0x23a8d3541b1e
    23a8d3541b16:	45 33 ff                                        	xor    r15d,r15d
    23a8d3541b19:	e9 0f 00 00 00                                  	jmp    0x23a8d3541b2d
    23a8d3541b1e:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    23a8d3541b25:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    23a8d3541b29:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    23a8d3541b2d:	45 85 e4                                        	test   r12d,r12d
    23a8d3541b30:	0f 85 33 00 00 00                               	jne    0x23a8d3541b69
    23a8d3541b36:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    23a8d3541b3b:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d3541b3f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d3541b44:	45 33 e4                                        	xor    r12d,r12d
    23a8d3541b47:	e9 43 00 00 00                                  	jmp    0x23a8d3541b8f
    23a8d3541b4c:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    23a8d3541b50:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3541b54:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541b57:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3541b5a:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    23a8d3541b61:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    23a8d3541b65:	46 8b 3c 22                                     	mov    r15d,DWORD PTR [rdx+r12*1]
    23a8d3541b69:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    23a8d3541b6f:	44 8d 24 81                                     	lea    r12d,[rcx+rax*4]
    23a8d3541b73:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    23a8d3541b77:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    23a8d3541b7c:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d3541b80:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d3541b85:	41 83 f8 0f                                     	cmp    r8d,0xf
    23a8d3541b89:	0f 84 66 00 00 00                               	je     0x23a8d3541bf5
    23a8d3541b8f:	41 f6 c0 01                                     	test   r8b,0x1
    23a8d3541b93:	0f 85 07 00 00 00                               	jne    0x23a8d3541ba0
    23a8d3541b99:	33 ff                                           	xor    edi,edi
    23a8d3541b9b:	e9 0a 00 00 00                                  	jmp    0x23a8d3541baa
    23a8d3541ba0:	c5 79 7e e7                                     	vmovd  edi,xmm12
    23a8d3541ba4:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541ba7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3541baa:	41 f6 c0 02                                     	test   r8b,0x2
    23a8d3541bae:	0f 85 07 00 00 00                               	jne    0x23a8d3541bbb
    23a8d3541bb4:	33 c0                                           	xor    eax,eax
    23a8d3541bb6:	e9 0c 00 00 00                                  	jmp    0x23a8d3541bc7
    23a8d3541bbb:	c4 63 79 16 e0 01                               	vpextrd eax,xmm12,0x1
    23a8d3541bc1:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    23a8d3541bc4:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    23a8d3541bc7:	41 f6 c0 04                                     	test   r8b,0x4
    23a8d3541bcb:	0f 85 07 00 00 00                               	jne    0x23a8d3541bd8
    23a8d3541bd1:	33 db                                           	xor    ebx,ebx
    23a8d3541bd3:	e9 0c 00 00 00                                  	jmp    0x23a8d3541be4
    23a8d3541bd8:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    23a8d3541bde:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    23a8d3541be1:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    23a8d3541be4:	41 f6 c0 08                                     	test   r8b,0x8
    23a8d3541be8:	0f 85 29 00 00 00                               	jne    0x23a8d3541c17
    23a8d3541bee:	33 f6                                           	xor    esi,esi
    23a8d3541bf0:	e9 2e 00 00 00                                  	jmp    0x23a8d3541c23
    23a8d3541bf5:	c4 63 79 16 e7 01                               	vpextrd edi,xmm12,0x1
    23a8d3541bfb:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541bfe:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    23a8d3541c01:	c5 79 7e e7                                     	vmovd  edi,xmm12
    23a8d3541c05:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541c08:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3541c0b:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    23a8d3541c11:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    23a8d3541c14:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    23a8d3541c17:	c4 63 79 16 e6 03                               	vpextrd esi,xmm12,0x3
    23a8d3541c1d:	8d 34 b1                                        	lea    esi,[rcx+rsi*4]
    23a8d3541c20:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    23a8d3541c23:	c4 43 11 22 e3 01                               	vpinsrd xmm12,xmm13,r11d,0x1
    23a8d3541c29:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d3541c2d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d3541c32:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    23a8d3541c38:	41 83 f8 0f                                     	cmp    r8d,0xf
    23a8d3541c3c:	0f 84 6a 00 00 00                               	je     0x23a8d3541cac
    23a8d3541c42:	41 f6 c0 01                                     	test   r8b,0x1
    23a8d3541c46:	0f 85 07 00 00 00                               	jne    0x23a8d3541c53
    23a8d3541c4c:	33 ff                                           	xor    edi,edi
    23a8d3541c4e:	e9 0a 00 00 00                                  	jmp    0x23a8d3541c5d
    23a8d3541c53:	c5 79 7e f7                                     	vmovd  edi,xmm14
    23a8d3541c57:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541c5a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3541c5d:	41 f6 c0 02                                     	test   r8b,0x2
    23a8d3541c61:	0f 85 08 00 00 00                               	jne    0x23a8d3541c6f
    23a8d3541c67:	45 33 db                                        	xor    r11d,r11d
    23a8d3541c6a:	e9 0e 00 00 00                                  	jmp    0x23a8d3541c7d
    23a8d3541c6f:	c4 43 79 16 f3 01                               	vpextrd r11d,xmm14,0x1
    23a8d3541c75:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    23a8d3541c79:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3541c7d:	41 f6 c0 04                                     	test   r8b,0x4
    23a8d3541c81:	0f 85 07 00 00 00                               	jne    0x23a8d3541c8e
    23a8d3541c87:	33 c0                                           	xor    eax,eax
    23a8d3541c89:	e9 0c 00 00 00                                  	jmp    0x23a8d3541c9a
    23a8d3541c8e:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    23a8d3541c94:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    23a8d3541c97:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    23a8d3541c9a:	41 f6 c0 08                                     	test   r8b,0x8
    23a8d3541c9e:	0f 85 2b 00 00 00                               	jne    0x23a8d3541ccf
    23a8d3541ca4:	45 33 c9                                        	xor    r9d,r9d
    23a8d3541ca7:	e9 31 00 00 00                                  	jmp    0x23a8d3541cdd
    23a8d3541cac:	c4 63 79 16 f7 01                               	vpextrd edi,xmm14,0x1
    23a8d3541cb2:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541cb5:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    23a8d3541cb9:	c5 79 7e f7                                     	vmovd  edi,xmm14
    23a8d3541cbd:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541cc0:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3541cc3:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    23a8d3541cc9:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    23a8d3541ccc:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    23a8d3541ccf:	c4 43 79 16 f1 03                               	vpextrd r9d,xmm14,0x3
    23a8d3541cd5:	46 8d 0c 89                                     	lea    r9d,[rcx+r9*4]
    23a8d3541cd9:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    23a8d3541cdd:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    23a8d3541ce3:	c4 63 11 22 eb 02                               	vpinsrd xmm13,xmm13,ebx,0x2
    23a8d3541ce9:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    23a8d3541ced:	c5 79 6e cf                                     	vmovd  xmm9,edi
    23a8d3541cf1:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    23a8d3541cf6:	c4 43 31 22 cb 01                               	vpinsrd xmm9,xmm9,r11d,0x1
    23a8d3541cfc:	c4 63 31 22 c8 02                               	vpinsrd xmm9,xmm9,eax,0x2
    23a8d3541d02:	41 83 f8 0f                                     	cmp    r8d,0xf
    23a8d3541d06:	0f 84 6c 00 00 00                               	je     0x23a8d3541d78
    23a8d3541d0c:	41 f6 c0 01                                     	test   r8b,0x1
    23a8d3541d10:	0f 85 07 00 00 00                               	jne    0x23a8d3541d1d
    23a8d3541d16:	33 ff                                           	xor    edi,edi
    23a8d3541d18:	e9 0a 00 00 00                                  	jmp    0x23a8d3541d27
    23a8d3541d1d:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    23a8d3541d21:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541d24:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3541d27:	41 f6 c0 02                                     	test   r8b,0x2
    23a8d3541d2b:	0f 85 08 00 00 00                               	jne    0x23a8d3541d39
    23a8d3541d31:	45 33 db                                        	xor    r11d,r11d
    23a8d3541d34:	e9 0e 00 00 00                                  	jmp    0x23a8d3541d47
    23a8d3541d39:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    23a8d3541d3f:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    23a8d3541d43:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3541d47:	41 f6 c0 04                                     	test   r8b,0x4
    23a8d3541d4b:	0f 85 08 00 00 00                               	jne    0x23a8d3541d59
    23a8d3541d51:	45 33 ff                                        	xor    r15d,r15d
    23a8d3541d54:	e9 0e 00 00 00                                  	jmp    0x23a8d3541d67
    23a8d3541d59:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    23a8d3541d5f:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    23a8d3541d63:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    23a8d3541d67:	41 f6 c0 08                                     	test   r8b,0x8
    23a8d3541d6b:	0f 85 2c 00 00 00                               	jne    0x23a8d3541d9d
    23a8d3541d71:	33 c0                                           	xor    eax,eax
    23a8d3541d73:	e9 31 00 00 00                                  	jmp    0x23a8d3541da9
    23a8d3541d78:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    23a8d3541d7e:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541d81:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    23a8d3541d85:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    23a8d3541d89:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541d8c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3541d8f:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    23a8d3541d95:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    23a8d3541d99:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    23a8d3541d9d:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    23a8d3541da3:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    23a8d3541da6:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    23a8d3541da9:	c4 c3 19 22 f4 03                               	vpinsrd xmm6,xmm12,r12d,0x3
    23a8d3541daf:	c4 63 11 22 e6 03                               	vpinsrd xmm12,xmm13,esi,0x3
    23a8d3541db5:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    23a8d3541dbb:	c5 79 6e ef                                     	vmovd  xmm13,edi
    23a8d3541dbf:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    23a8d3541dc4:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    23a8d3541dca:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    23a8d3541dd0:	c4 63 11 22 e8 03                               	vpinsrd xmm13,xmm13,eax,0x3
    23a8d3541dd6:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    23a8d3541ddb:	e9 95 00 00 00                                  	jmp    0x23a8d3541e75
    23a8d3541de0:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3541de3:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    23a8d3541de8:	42 8d 3c 99                                     	lea    edi,[rcx+r11*4]
    23a8d3541dec:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    23a8d3541df1:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    23a8d3541df6:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    23a8d3541dfd:	42 8d 3c a1                                     	lea    edi,[rcx+r12*4]
    23a8d3541e01:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    23a8d3541e06:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    23a8d3541e0d:	42 8d 3c b9                                     	lea    edi,[rcx+r15*4]
    23a8d3541e11:	c5 7b 10 24 3a                                  	vmovsd xmm12,QWORD PTR [rdx+rdi*1]
    23a8d3541e16:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    23a8d3541e1b:	c4 41 48 c6 e1 dd                               	vshufps xmm12,xmm6,xmm9,0xdd
    23a8d3541e21:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    23a8d3541e27:	c4 c1 31 72 f6 02                               	vpslld xmm9,xmm14,0x2
    23a8d3541e2d:	c5 79 7e cf                                     	vmovd  edi,xmm9
    23a8d3541e31:	03 f9                                           	add    edi,ecx
    23a8d3541e33:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    23a8d3541e38:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    23a8d3541e3e:	03 f9                                           	add    edi,ecx
    23a8d3541e40:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    23a8d3541e45:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    23a8d3541e4a:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    23a8d3541e50:	03 f9                                           	add    edi,ecx
    23a8d3541e52:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    23a8d3541e57:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    23a8d3541e5d:	03 f9                                           	add    edi,ecx
    23a8d3541e5f:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    23a8d3541e64:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    23a8d3541e69:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    23a8d3541e6f:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    23a8d3541e75:	c5 91 72 d6 18                                  	vpsrld xmm13,xmm6,0x18
    23a8d3541e7a:	c4 c1 69 72 d4 18                               	vpsrld xmm2,xmm12,0x18
    23a8d3541e80:	c5 11 6b ea                                     	vpackssdw xmm13,xmm13,xmm2
    23a8d3541e84:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    23a8d3541e88:	c4 c3 69 0f dd 08                               	vpalignr xmm3,xmm2,xmm13,0x8
    23a8d3541e8e:	c5 11 61 eb                                     	vpunpcklwd xmm13,xmm13,xmm3
    23a8d3541e92:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    23a8d3541e9c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3541ea1:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d3541ea5:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    23a8d3541eaa:	c5 78 10 85 50 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2b0]
    23a8d3541eb2:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    23a8d3541eb7:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    23a8d3541ec1:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d3541ec6:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d3541eca:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    23a8d3541ece:	4c 8b 15 09 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa109]        # 0x23a8d353bfde
    23a8d3541ed5:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d3541eda:	c4 c1 78 54 cf                                  	vandps xmm1,xmm0,xmm15
    23a8d3541edf:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d3541ee5:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    23a8d3541ee9:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    23a8d3541eee:	4c 8b 15 28 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe328]        # 0x23a8d354021d
    23a8d3541ef5:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d3541efa:	c4 c1 78 c2 c3 01                               	vcmpltps xmm0,xmm0,xmm11
    23a8d3541f00:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    23a8d3541f04:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    23a8d3541f08:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d3541f0d:	c5 e1 fa c8                                     	vpsubd xmm1,xmm3,xmm0
    23a8d3541f11:	c5 f1 6b c0                                     	vpackssdw xmm0,xmm1,xmm0
    23a8d3541f15:	c4 e3 69 0f c8 08                               	vpalignr xmm1,xmm2,xmm0,0x8
    23a8d3541f1b:	c5 f9 61 c1                                     	vpunpcklwd xmm0,xmm0,xmm1
    23a8d3541f1f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    23a8d3541f23:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    23a8d3541f2b:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    23a8d3541f2f:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    23a8d3541f34:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    23a8d3541f38:	4c 8b 15 9f a0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa09f]        # 0x23a8d353bfde
    23a8d3541f3f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    23a8d3541f44:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    23a8d3541f49:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    23a8d3541f4f:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    23a8d3541f53:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    23a8d3541f58:	4c 8b 15 be e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe2be]        # 0x23a8d354021d
    23a8d3541f5f:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    23a8d3541f64:	c4 c1 40 c2 fb 01                               	vcmpltps xmm7,xmm7,xmm11
    23a8d3541f6a:	c5 41 df fc                                     	vpandn xmm15,xmm7,xmm4
    23a8d3541f6e:	c5 f1 db ff                                     	vpand  xmm7,xmm1,xmm7
    23a8d3541f72:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d3541f77:	c5 61 fa df                                     	vpsubd xmm11,xmm3,xmm7
    23a8d3541f7b:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    23a8d3541f80:	c4 c1 71 72 d1 18                               	vpsrld xmm1,xmm9,0x18
    23a8d3541f86:	c4 c1 61 72 d6 18                               	vpsrld xmm3,xmm14,0x18
    23a8d3541f8c:	c5 f1 6b cb                                     	vpackssdw xmm1,xmm1,xmm3
    23a8d3541f90:	c4 e3 69 0f d9 08                               	vpalignr xmm3,xmm2,xmm1,0x8
    23a8d3541f96:	c5 f1 61 cb                                     	vpunpcklwd xmm1,xmm1,xmm3
    23a8d3541f9a:	c5 f1 f5 c8                                     	vpmaddwd xmm1,xmm1,xmm0
    23a8d3541f9e:	c4 e2 71 40 cf                                  	vpmulld xmm1,xmm1,xmm7
    23a8d3541fa3:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    23a8d3541fa7:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    23a8d3541fb1:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d3541fb6:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    23a8d3541fba:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    23a8d3541fbe:	c4 c1 11 72 d5 10                               	vpsrld xmm13,xmm13,0x10
    23a8d3541fc4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3541fc9:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    23a8d3541fcf:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    23a8d3541fd4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3541fd9:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    23a8d3541fdf:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    23a8d3541fe4:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    23a8d3541fe9:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    23a8d3541fee:	4c 8b 15 3d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea3d]        # 0x23a8d3540a32
    23a8d3541ff5:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3541ffa:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d3541ffe:	c5 10 59 eb                                     	vmulps xmm13,xmm13,xmm3
    23a8d3542002:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    23a8d3542005:	c5 7a 7f ac 02 c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1c0],xmm13
    23a8d354200e:	c5 91 72 d6 10                                  	vpsrld xmm13,xmm6,0x10
    23a8d3542013:	4c 8b 15 30 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe930]        # 0x23a8d354094a
    23a8d354201a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d354201f:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    23a8d3542023:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    23a8d3542027:	c4 c1 51 72 d4 10                               	vpsrld xmm5,xmm12,0x10
    23a8d354202d:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    23a8d3542031:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    23a8d3542035:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    23a8d354203b:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    23a8d354203f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    23a8d3542043:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    23a8d3542048:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    23a8d354204e:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    23a8d3542052:	c4 c1 39 72 d6 10                               	vpsrld xmm8,xmm14,0x10
    23a8d3542058:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    23a8d354205c:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    23a8d3542061:	c4 c3 69 0f e8 08                               	vpalignr xmm5,xmm2,xmm8,0x8
    23a8d3542067:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    23a8d354206b:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    23a8d354206f:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    23a8d3542074:	c4 41 11 fe c0                                  	vpaddd xmm8,xmm13,xmm8
    23a8d3542079:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    23a8d354207d:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    23a8d3542083:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3542088:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d354208e:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d3542093:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3542098:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d354209e:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d35420a3:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d35420a8:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d35420ad:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    23a8d35420b1:	c5 7a 7f 84 02 b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1b0],xmm8
    23a8d35420ba:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    23a8d35420bf:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    23a8d35420c3:	c4 c1 11 72 d4 08                               	vpsrld xmm13,xmm12,0x8
    23a8d35420c9:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    23a8d35420cd:	c4 41 39 6b c5                                  	vpackssdw xmm8,xmm8,xmm13
    23a8d35420d2:	c4 43 69 0f e8 08                               	vpalignr xmm13,xmm2,xmm8,0x8
    23a8d35420d8:	c4 41 39 61 c5                                  	vpunpcklwd xmm8,xmm8,xmm13
    23a8d35420dd:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    23a8d35420e1:	c4 42 39 40 c3                                  	vpmulld xmm8,xmm8,xmm11
    23a8d35420e6:	c4 c1 11 72 d1 08                               	vpsrld xmm13,xmm9,0x8
    23a8d35420ec:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    23a8d35420f0:	c4 c1 51 72 d6 08                               	vpsrld xmm5,xmm14,0x8
    23a8d35420f6:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    23a8d35420fa:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    23a8d35420fe:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    23a8d3542104:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    23a8d3542108:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    23a8d354210c:	c4 62 11 40 ef                                  	vpmulld xmm13,xmm13,xmm7
    23a8d3542111:	c4 41 39 fe c5                                  	vpaddd xmm8,xmm8,xmm13
    23a8d3542116:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    23a8d354211a:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    23a8d3542120:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3542125:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d354212b:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d3542130:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3542135:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d354213b:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d3542140:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d3542145:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d354214a:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    23a8d354214e:	c5 7a 7f 84 02 a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1a0],xmm8
    23a8d3542157:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    23a8d354215b:	c5 19 db c4                                     	vpand  xmm8,xmm12,xmm4
    23a8d354215f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    23a8d3542164:	c4 63 69 0f c6 08                               	vpalignr xmm8,xmm2,xmm6,0x8
    23a8d354216a:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    23a8d354216f:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    23a8d3542173:	c4 c2 49 40 f3                                  	vpmulld xmm6,xmm6,xmm11
    23a8d3542178:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    23a8d354217c:	c5 09 db cc                                     	vpand  xmm9,xmm14,xmm4
    23a8d3542180:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    23a8d3542185:	c4 43 69 0f c8 08                               	vpalignr xmm9,xmm2,xmm8,0x8
    23a8d354218b:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    23a8d3542190:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    23a8d3542194:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    23a8d3542199:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    23a8d354219d:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    23a8d35421a1:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    23a8d35421a6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d35421ab:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d35421b1:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d35421b6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d35421bb:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d35421c0:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d35421c4:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d35421c8:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d35421cd:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    23a8d35421d1:	c5 fa 7f 84 02 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x190],xmm0
    23a8d35421da:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d35421e1:	e9 53 05 00 00                                  	jmp    0x23a8d3542739
    23a8d35421e6:	41 83 f8 0f                                     	cmp    r8d,0xf
    23a8d35421ea:	0f 84 64 00 00 00                               	je     0x23a8d3542254
    23a8d35421f0:	41 f6 c0 01                                     	test   r8b,0x1
    23a8d35421f4:	0f 85 07 00 00 00                               	jne    0x23a8d3542201
    23a8d35421fa:	33 ff                                           	xor    edi,edi
    23a8d35421fc:	e9 06 00 00 00                                  	jmp    0x23a8d3542207
    23a8d3542201:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d3542204:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3542207:	41 f6 c0 02                                     	test   r8b,0x2
    23a8d354220b:	0f 85 08 00 00 00                               	jne    0x23a8d3542219
    23a8d3542211:	45 33 db                                        	xor    r11d,r11d
    23a8d3542214:	e9 08 00 00 00                                  	jmp    0x23a8d3542221
    23a8d3542219:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    23a8d354221d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d3542221:	41 f6 c0 04                                     	test   r8b,0x4
    23a8d3542225:	0f 85 08 00 00 00                               	jne    0x23a8d3542233
    23a8d354222b:	45 33 e4                                        	xor    r12d,r12d
    23a8d354222e:	e9 0f 00 00 00                                  	jmp    0x23a8d3542242
    23a8d3542233:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    23a8d354223a:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    23a8d354223e:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    23a8d3542242:	41 f6 c0 08                                     	test   r8b,0x8
    23a8d3542246:	0f 85 25 00 00 00                               	jne    0x23a8d3542271
    23a8d354224c:	45 33 ff                                        	xor    r15d,r15d
    23a8d354224f:	e9 2c 00 00 00                                  	jmp    0x23a8d3542280
    23a8d3542254:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    23a8d354225b:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    23a8d354225f:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    23a8d3542263:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    23a8d3542267:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    23a8d354226b:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    23a8d354226e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    23a8d3542271:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    23a8d3542278:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    23a8d354227c:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    23a8d3542280:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    23a8d3542284:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d3542289:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    23a8d354228f:	c4 c3 79 22 c4 02                               	vpinsrd xmm0,xmm0,r12d,0x2
    23a8d3542295:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    23a8d354229b:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    23a8d35422a0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d35422a5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d35422ab:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d35422b0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d35422b5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d35422ba:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d35422be:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d35422c2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d35422c7:	4c 8b 15 64 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe764]        # 0x23a8d3540a32
    23a8d35422ce:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d35422d3:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d35422d7:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d35422db:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d35422de:	c5 fa 7f b4 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm6
    23a8d35422e7:	4c 8b 15 5c e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe65c]        # 0x23a8d354094a
    23a8d35422ee:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    23a8d35422f3:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    23a8d35422f7:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    23a8d35422fb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3542300:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d3542306:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d354230b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3542310:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d3542316:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d354231b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d3542320:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d3542325:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    23a8d3542329:	c5 7a 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm8
    23a8d3542332:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    23a8d3542337:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    23a8d354233b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3542340:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    23a8d3542346:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    23a8d354234b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3542350:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    23a8d3542356:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    23a8d354235b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    23a8d3542360:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    23a8d3542365:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    23a8d3542369:	c5 7a 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm8
    23a8d3542372:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    23a8d3542377:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    23a8d354237b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d3542380:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d3542386:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d354238b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d3542390:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d3542395:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d3542399:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d354239d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d35423a2:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    23a8d35423a6:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    23a8d35423af:	8b c7                                           	mov    eax,edi
    23a8d35423b1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d35423b8:	e9 7c 03 00 00                                  	jmp    0x23a8d3542739
    23a8d35423bd:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    23a8d35423c3:	4c 8d 5a 58                                     	lea    r11,[rdx+0x58]
    23a8d35423c7:	c4 02 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [r11+r12*1]
    23a8d35423cd:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    23a8d35423d2:	c4 42 79 18 1c 03                               	vbroadcastss xmm11,DWORD PTR [r11+rax*1]
    23a8d35423d8:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    23a8d35423dd:	c4 41 38 58 c3                                  	vaddps xmm8,xmm8,xmm11
    23a8d35423e2:	c4 02 79 18 1c 0b                               	vbroadcastss xmm11,DWORD PTR [r11+r9*1]
    23a8d35423e8:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    23a8d35423ed:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    23a8d35423f2:	c4 c1 48 59 d8                                  	vmulps xmm3,xmm6,xmm8
    23a8d35423f7:	41 83 ff 03                                     	cmp    r15d,0x3
    23a8d35423fb:	0f 84 a5 02 00 00                               	je     0x23a8d35426a6
    23a8d3542401:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d3542405:	c4 a1 7a 7f 84 1a c0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xc0],xmm0
    23a8d354240f:	c4 a1 7a 7f 84 1a b0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xb0],xmm0
    23a8d3542419:	c4 a1 7a 7f 84 1a a0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xa0],xmm0
    23a8d3542423:	c4 a1 7a 7f bc 1a f0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1f0],xmm7
    23a8d354242d:	c4 a1 7a 7f 94 1a e0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1e0],xmm2
    23a8d3542437:	c4 a1 7a 7f 9c 1a d0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1d0],xmm3
    23a8d3542441:	c4 a1 7a 7f 84 1a 90 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x90],xmm0
    23a8d354244b:	4c 8b ff                                        	mov    r15,rdi
    23a8d354244e:	33 ff                                           	xor    edi,edi
    23a8d3542450:	e9 41 00 00 00                                  	jmp    0x23a8d3542496
    23a8d3542455:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d354245e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3542467:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3542470:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3542479:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    23a8d3542480:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    23a8d3542487:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d354248b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d354248f:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    23a8d3542496:	48 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rdi
    23a8d354249d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d35424a2:	0f 85 e9 26 00 00                               	jne    0x23a8d3544b91
    23a8d35424a8:	8b cf                                           	mov    ecx,edi
    23a8d35424aa:	41 d3 e8                                        	shr    r8d,cl
    23a8d35424ad:	41 f6 c0 01                                     	test   r8b,0x1
    23a8d35424b1:	0f 84 4c 01 00 00                               	je     0x23a8d3542603
    23a8d35424b7:	42 8b 4c 3a 10                                  	mov    ecx,DWORD PTR [rdx+r15*1+0x10]
    23a8d35424bc:	46 8b 44 3a 0c                                  	mov    r8d,DWORD PTR [rdx+r15*1+0xc]
    23a8d35424c1:	4c 89 85 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r8
    23a8d35424c8:	46 8b 44 3a 08                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x8]
    23a8d35424cd:	46 8b 44 3a 04                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x4]
    23a8d35424d2:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    23a8d35424d9:	46 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+r15*1]
    23a8d35424dd:	41 83 f8 02                                     	cmp    r8d,0x2
    23a8d35424e1:	0f 84 b2 00 00 00                               	je     0x23a8d3542599
    23a8d35424e7:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    23a8d35424ee:	45 85 c0                                        	test   r8d,r8d
    23a8d35424f1:	0f 85 44 00 00 00                               	jne    0x23a8d354253b
    23a8d35424f7:	45 8d 84 bb f0 01 00 00                         	lea    r8d,[r11+rdi*4+0x1f0]
    23a8d35424ff:	c4 a1 7a 10 34 02                               	vmovss xmm6,DWORD PTR [rdx+r8*1]
    23a8d3542505:	45 8d 83 90 00 00 00                            	lea    r8d,[r11+0x90]
    23a8d354250c:	8b cf                                           	mov    ecx,edi
    23a8d354250e:	c1 e1 04                                        	shl    ecx,0x4
    23a8d3542511:	44 03 c1                                        	add    r8d,ecx
    23a8d3542514:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3542518:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    23a8d354251e:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    23a8d3542524:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    23a8d354252a:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d354252e:	41 8b d8                                        	mov    ebx,r8d
    23a8d3542531:	e8 ea 9c f0 ff                                  	call   0x23a8d344c220
    23a8d3542536:	e9 c8 00 00 00                                  	jmp    0x23a8d3542603
    23a8d354253b:	4c 8b c2                                        	mov    r8,rdx
    23a8d354253e:	43 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+r15*1+0x14]
    23a8d3542543:	44 8b d7                                        	mov    r10d,edi
    23a8d3542546:	41 8b fb                                        	mov    edi,r11d
    23a8d3542549:	45 8b da                                        	mov    r11d,r10d
    23a8d354254c:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    23a8d3542554:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    23a8d354255a:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    23a8d3542562:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    23a8d3542568:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    23a8d354256e:	41 8b cb                                        	mov    ecx,r11d
    23a8d3542571:	c1 e1 04                                        	shl    ecx,0x4
    23a8d3542574:	03 d1                                           	add    edx,ecx
    23a8d3542576:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354257a:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    23a8d3542580:	44 8b ca                                        	mov    r9d,edx
    23a8d3542583:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    23a8d3542589:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    23a8d354258f:	e8 a4 9c f0 ff                                  	call   0x23a8d344c238
    23a8d3542594:	e9 6a 00 00 00                                  	jmp    0x23a8d3542603
    23a8d3542599:	4c 8b c2                                        	mov    r8,rdx
    23a8d354259c:	4d 8b e7                                        	mov    r12,r15
    23a8d354259f:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    23a8d35425a4:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    23a8d35425a9:	44 8b d7                                        	mov    r10d,edi
    23a8d35425ac:	41 8b fb                                        	mov    edi,r11d
    23a8d35425af:	45 8b da                                        	mov    r11d,r10d
    23a8d35425b2:	46 8d bc 9f f0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1f0]
    23a8d35425ba:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    23a8d35425c0:	46 8d bc 9f e0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1e0]
    23a8d35425c8:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    23a8d35425ce:	46 8d bc 9f d0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1d0]
    23a8d35425d6:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    23a8d35425dc:	44 8d bf 90 00 00 00                            	lea    r15d,[rdi+0x90]
    23a8d35425e3:	41 8b c3                                        	mov    eax,r11d
    23a8d35425e6:	c1 e0 04                                        	shl    eax,0x4
    23a8d35425e9:	44 03 f8                                        	add    r15d,eax
    23a8d35425ec:	41 57                                           	push   r15
    23a8d35425ee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35425f2:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    23a8d35425f8:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    23a8d35425fe:	e8 25 9c f0 ff                                  	call   0x23a8d344c228
    23a8d3542603:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    23a8d3542609:	83 c7 01                                        	add    edi,0x1
    23a8d354260c:	83 ff 04                                        	cmp    edi,0x4
    23a8d354260f:	0f 85 6b fe ff ff                               	jne    0x23a8d3542480
    23a8d3542615:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    23a8d3542618:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d354261c:	c4 c1 7a 6f 84 18 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0xb0]
    23a8d3542626:	c4 c1 7a 6f b4 18 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0xc0]
    23a8d3542630:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    23a8d3542634:	c4 41 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x90]
    23a8d354263e:	c4 41 7a 6f 8c 18 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0xa0]
    23a8d3542648:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    23a8d354264d:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    23a8d3542651:	c4 41 7a 7f 9c 18 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1c0],xmm11
    23a8d354265b:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    23a8d354265f:	c4 c1 7a 7f bc 18 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1b0],xmm7
    23a8d3542669:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    23a8d354266d:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    23a8d3542672:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    23a8d3542676:	c4 c1 7a 7f bc 18 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1a0],xmm7
    23a8d3542680:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    23a8d3542684:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    23a8d354268e:	8b c3                                           	mov    eax,ebx
    23a8d3542690:	49 8b d0                                        	mov    rdx,r8
    23a8d3542693:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d354269a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    23a8d35426a1:	e9 93 00 00 00                                  	jmp    0x23a8d3542739
    23a8d35426a6:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d35426aa:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    23a8d35426b1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35426b5:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d35426b8:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    23a8d35426bc:	49 8b d0                                        	mov    rdx,r8
    23a8d35426bf:	e8 64 9e f0 ff                                  	call   0x23a8d344c528
    23a8d35426c4:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    23a8d35426c7:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d35426cb:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d35426d2:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    23a8d35426d9:	e9 5b 00 00 00                                  	jmp    0x23a8d3542739
    23a8d35426de:	4c 8b fa                                        	mov    r15,rdx
    23a8d35426e1:	49 8d 57 3c                                     	lea    rdx,[r15+0x3c]
    23a8d35426e5:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    23a8d35426eb:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    23a8d35426ee:	c4 c1 7a 7f 84 17 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x190],xmm0
    23a8d35426f8:	49 8d 4f 40                                     	lea    rcx,[r15+0x40]
    23a8d35426fc:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    23a8d3542702:	c4 c1 7a 7f 84 17 a0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1a0],xmm0
    23a8d354270c:	49 8d 4f 44                                     	lea    rcx,[r15+0x44]
    23a8d3542710:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    23a8d3542716:	c4 c1 7a 7f 84 17 b0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1b0],xmm0
    23a8d3542720:	49 8d 4f 48                                     	lea    rcx,[r15+0x48]
    23a8d3542724:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    23a8d354272a:	c4 c1 7a 7f 84 17 c0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1c0],xmm0
    23a8d3542734:	8b c2                                           	mov    eax,edx
    23a8d3542736:	49 8b d7                                        	mov    rdx,r15
    23a8d3542739:	c5 fa 6f 84 02 90 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rax*1+0x190]
    23a8d3542742:	44 8b 9c 3a 34 01 00 00                         	mov    r11d,DWORD PTR [rdx+rdi*1+0x134]
    23a8d354274a:	83 bc 3a 34 01 00 00 02                         	cmp    DWORD PTR [rdx+rdi*1+0x134],0x2
    23a8d3542752:	0f 84 55 00 00 00                               	je     0x23a8d35427ad
    23a8d3542758:	c5 fa 6f b4 02 c0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1c0]
    23a8d3542761:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    23a8d3542769:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    23a8d354276d:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    23a8d3542776:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    23a8d354277e:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    23a8d3542782:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    23a8d354278b:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    23a8d3542793:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    23a8d3542798:	c5 78 10 8d 90 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x170]
    23a8d35427a0:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    23a8d35427a4:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    23a8d35427a8:	e9 1f 00 00 00                                  	jmp    0x23a8d35427cc
    23a8d35427ad:	c5 fa 6f bc 02 c0 01 00 00                      	vmovdqu xmm7,XMMWORD PTR [rdx+rax*1+0x1c0]
    23a8d35427b6:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    23a8d35427bf:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    23a8d35427c8:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    23a8d35427cc:	c5 49 6a cf                                     	vpunpckhdq xmm9,xmm6,xmm7
    23a8d35427d0:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    23a8d35427d5:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    23a8d35427da:	c5 7a 7f 5c 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm11
    23a8d35427e0:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    23a8d35427e5:	c5 7a 7f 4c 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm9
    23a8d35427eb:	c5 c9 62 f7                                     	vpunpckldq xmm6,xmm6,xmm7
    23a8d35427ef:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    23a8d35427f4:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    23a8d35427f8:	c5 fa 7f 7c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm7
    23a8d35427fe:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    23a8d3542802:	c5 fa 7f 04 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm0
    23a8d3542807:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    23a8d354280c:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    23a8d3542810:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    23a8d3542815:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    23a8d354281a:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d354281f:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    23a8d3542827:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d354282f:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d3542837:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d354283f:	41 f6 c0 01                                     	test   r8b,0x1
    23a8d3542843:	0f 84 63 00 00 00                               	je     0x23a8d35428ac
    23a8d3542849:	c5 fa 10 44 02 40                               	vmovss xmm0,DWORD PTR [rdx+rax*1+0x40]
    23a8d354284f:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    23a8d3542856:	0f 85 35 00 00 00                               	jne    0x23a8d3542891
    23a8d354285c:	c5 fa 10 14 02                                  	vmovss xmm2,DWORD PTR [rdx+rax*1]
    23a8d3542861:	c5 fa 10 5c 02 04                               	vmovss xmm3,DWORD PTR [rdx+rax*1+0x4]
    23a8d3542867:	c5 fa 10 64 02 08                               	vmovss xmm4,DWORD PTR [rdx+rax*1+0x8]
    23a8d354286d:	c5 fa 10 6c 02 0c                               	vmovss xmm5,DWORD PTR [rdx+rax*1+0xc]
    23a8d3542873:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3542877:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d354287a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d3542880:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d3542883:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d3542887:	e8 d4 99 f0 ff                                  	call   0x23a8d344c260
    23a8d354288c:	e9 1b 00 00 00                                  	jmp    0x23a8d35428ac
    23a8d3542891:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3542895:	8b d8                                           	mov    ebx,eax
    23a8d3542897:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d354289a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d35428a0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d35428a3:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d35428a7:	e8 cc 99 f0 ff                                  	call   0x23a8d344c278
    23a8d35428ac:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    23a8d35428b3:	0f 84 6c 00 00 00                               	je     0x23a8d3542925
    23a8d35428b9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d35428bc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d35428c0:	c4 c1 7a 10 4c 38 44                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x44]
    23a8d35428c7:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    23a8d35428ce:	0f 85 36 00 00 00                               	jne    0x23a8d354290a
    23a8d35428d4:	c4 c1 7a 10 54 38 10                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x10]
    23a8d35428db:	c4 c1 7a 10 5c 38 14                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x14]
    23a8d35428e2:	c4 c1 7a 10 64 38 18                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x18]
    23a8d35428e9:	c4 c1 7a 10 6c 38 1c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x1c]
    23a8d35428f0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35428f4:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d35428f7:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    23a8d35428fd:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d3542900:	e8 5b 99 f0 ff                                  	call   0x23a8d344c260
    23a8d3542905:	e9 1b 00 00 00                                  	jmp    0x23a8d3542925
    23a8d354290a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354290e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3542911:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    23a8d3542917:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    23a8d354291a:	8b 9d a8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x358]
    23a8d3542920:	e8 53 99 f0 ff                                  	call   0x23a8d344c278
    23a8d3542925:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    23a8d354292c:	0f 84 72 00 00 00                               	je     0x23a8d35429a4
    23a8d3542932:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3542935:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3542939:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    23a8d3542940:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    23a8d3542947:	0f 85 39 00 00 00                               	jne    0x23a8d3542986
    23a8d354294d:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    23a8d3542954:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    23a8d354295b:	c4 c1 7a 10 64 38 28                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x28]
    23a8d3542962:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    23a8d3542969:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354296d:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3542970:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d3542976:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    23a8d354297c:	e8 df 98 f0 ff                                  	call   0x23a8d344c260
    23a8d3542981:	e9 1e 00 00 00                                  	jmp    0x23a8d35429a4
    23a8d3542986:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354298a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d354298d:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d3542993:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    23a8d3542999:	8b 9d b0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x350]
    23a8d354299f:	e8 d4 98 f0 ff                                  	call   0x23a8d344c278
    23a8d35429a4:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    23a8d35429ab:	0f 85 4e 00 00 00                               	jne    0x23a8d35429ff
    23a8d35429b1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d35429b5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d35429ba:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d35429be:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d35429c3:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d35429c9:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d35429cf:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d35429d4:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d35429dc:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d35429e4:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d35429ec:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d35429f4:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d35429fa:	e9 2b 1d 00 00                                  	jmp    0x23a8d354472a
    23a8d35429ff:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3542a02:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3542a06:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    23a8d3542a0d:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    23a8d3542a14:	0f 85 82 00 00 00                               	jne    0x23a8d3542a9c
    23a8d3542a1a:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    23a8d3542a21:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    23a8d3542a28:	c4 c1 7a 10 64 38 38                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x38]
    23a8d3542a2f:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    23a8d3542a36:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3542a3a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3542a3d:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    23a8d3542a43:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    23a8d3542a49:	e8 12 98 f0 ff                                  	call   0x23a8d344c260
    23a8d3542a4e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d3542a52:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d3542a57:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3542a5b:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d3542a60:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d3542a66:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d3542a6c:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3542a71:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d3542a79:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3542a81:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d3542a89:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d3542a91:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d3542a97:	e9 8e 1c 00 00                                  	jmp    0x23a8d354472a
    23a8d3542a9c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3542aa0:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3542aa3:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    23a8d3542aa9:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    23a8d3542aaf:	8b 9d c8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x338]
    23a8d3542ab5:	e8 be 97 f0 ff                                  	call   0x23a8d344c278
    23a8d3542aba:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d3542abe:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d3542ac3:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d3542ac7:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d3542acc:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d3542ad2:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d3542ad8:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3542add:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d3542ae5:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3542aed:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d3542af5:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d3542afd:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d3542b03:	e9 22 1c 00 00                                  	jmp    0x23a8d354472a
    23a8d3542b08:	44 8b c3                                        	mov    r8d,ebx
    23a8d3542b0b:	41 83 e0 01                                     	and    r8d,0x1
    23a8d3542b0f:	41 f7 d8                                        	neg    r8d
    23a8d3542b12:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    23a8d3542b17:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d3542b1c:	44 8b c3                                        	mov    r8d,ebx
    23a8d3542b1f:	41 c1 e0 1e                                     	shl    r8d,0x1e
    23a8d3542b23:	41 c1 f8 1f                                     	sar    r8d,0x1f
    23a8d3542b27:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    23a8d3542b2d:	44 8b c3                                        	mov    r8d,ebx
    23a8d3542b30:	41 c1 e0 1d                                     	shl    r8d,0x1d
    23a8d3542b34:	41 c1 f8 1f                                     	sar    r8d,0x1f
    23a8d3542b38:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    23a8d3542b3e:	44 8b c3                                        	mov    r8d,ebx
    23a8d3542b41:	41 c1 e0 1c                                     	shl    r8d,0x1c
    23a8d3542b45:	41 c1 f8 1f                                     	sar    r8d,0x1f
    23a8d3542b49:	c4 c3 79 22 c0 03                               	vpinsrd xmm0,xmm0,r8d,0x3
    23a8d3542b4f:	c4 e1 82 2a bd 60 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xa0]
    23a8d3542b58:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    23a8d3542b5d:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    23a8d3542b64:	4c 2b 85 d0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x330]
    23a8d3542b6b:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    23a8d3542b70:	c4 c3 41 21 fb 10                               	vinsertps xmm7,xmm7,xmm11,0x10
    23a8d3542b76:	4c 8b ff                                        	mov    r15,rdi
    23a8d3542b79:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    23a8d3542b80:	49 8d 14 3f                                     	lea    rdx,[r15+rdi*1]
    23a8d3542b84:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    23a8d3542b89:	c4 c3 41 21 fb 20                               	vinsertps xmm7,xmm7,xmm11,0x20
    23a8d3542b8f:	4d 03 c7                                        	add    r8,r15
    23a8d3542b92:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    23a8d3542b97:	c4 c3 41 21 fb 30                               	vinsertps xmm7,xmm7,xmm11,0x30
    23a8d3542b9d:	c5 78 10 9d 00 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x300]
    23a8d3542ba5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    23a8d3542ba9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    23a8d3542bb1:	c5 f0 59 d7                                     	vmulps xmm2,xmm1,xmm7
    23a8d3542bb5:	c4 e1 82 2a 9d 50 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xb0]
    23a8d3542bbe:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    23a8d3542bc3:	4c 8b 85 50 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xb0]
    23a8d3542bca:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    23a8d3542bd1:	c4 c1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,r8
    23a8d3542bd6:	c4 e3 61 21 dc 10                               	vinsertps xmm3,xmm3,xmm4,0x10
    23a8d3542bdc:	48 8b 95 50 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb0]
    23a8d3542be3:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    23a8d3542bea:	48 8d 3c 11                                     	lea    rdi,[rcx+rdx*1]
    23a8d3542bee:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    23a8d3542bf3:	c4 e3 61 21 dc 20                               	vinsertps xmm3,xmm3,xmm4,0x20
    23a8d3542bf9:	4a 8d 3c 01                                     	lea    rdi,[rcx+r8*1]
    23a8d3542bfd:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    23a8d3542c02:	c4 e3 61 21 dc 30                               	vinsertps xmm3,xmm3,xmm4,0x30
    23a8d3542c08:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d3542c0c:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    23a8d3542c14:	c5 d8 59 eb                                     	vmulps xmm5,xmm4,xmm3
    23a8d3542c18:	c5 e8 58 f5                                     	vaddps xmm6,xmm2,xmm5
    23a8d3542c1c:	4c 8b 15 6e a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa96e]        # 0x23a8d353d591
    23a8d3542c23:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    23a8d3542c28:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    23a8d3542c2d:	c5 38 5c cf                                     	vsubps xmm9,xmm8,xmm7
    23a8d3542c31:	c5 30 5c cb                                     	vsubps xmm9,xmm9,xmm3
    23a8d3542c35:	c5 78 10 95 20 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2e0]
    23a8d3542c3d:	c4 41 28 59 d9                                  	vmulps xmm11,xmm10,xmm9
    23a8d3542c42:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    23a8d3542c47:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    23a8d3542c4c:	c5 28 c2 e6 01                                  	vcmpltps xmm12,xmm10,xmm6
    23a8d3542c51:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d3542c55:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3542c59:	49 8d 78 18                                     	lea    rdi,[r8+0x18]
    23a8d3542c5d:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    23a8d3542c64:	c4 22 79 18 24 1f                               	vbroadcastss xmm12,DWORD PTR [rdi+r11*1]
    23a8d3542c6a:	c4 c1 40 59 fc                                  	vmulps xmm7,xmm7,xmm12
    23a8d3542c6f:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    23a8d3542c76:	c4 22 79 18 24 27                               	vbroadcastss xmm12,DWORD PTR [rdi+r12*1]
    23a8d3542c7c:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    23a8d3542c81:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    23a8d3542c86:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    23a8d3542c8d:	c4 22 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [rdi+r15*1]
    23a8d3542c93:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    23a8d3542c98:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    23a8d3542c9d:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    23a8d3542ca5:	c5 b0 58 ff                                     	vaddps xmm7,xmm9,xmm7
    23a8d3542ca9:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    23a8d3542cad:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    23a8d3542cb1:	44 8b ce                                        	mov    r9d,esi
    23a8d3542cb4:	44 0f af 8d 28 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xd8]
    23a8d3542cbc:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    23a8d3542cc2:	44 03 cb                                        	add    r9d,ebx
    23a8d3542cc5:	0f af 75 a0                                     	imul   esi,DWORD PTR [rbp-0x60]
    23a8d3542cc9:	03 f3                                           	add    esi,ebx
    23a8d3542ccb:	41 8b 5c 38 04                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x4]
    23a8d3542cd0:	41 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+rdi*1+0x68]
    23a8d3542cd5:	85 c0                                           	test   eax,eax
    23a8d3542cd7:	0f 85 07 00 00 00                               	jne    0x23a8d3542ce4
    23a8d3542cdd:	33 d2                                           	xor    edx,edx
    23a8d3542cdf:	e9 13 01 00 00                                  	jmp    0x23a8d3542df7
    23a8d3542ce4:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    23a8d3542cec:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    23a8d3542cf5:	75 e6                                           	jne    0x23a8d3542cdd
    23a8d3542cf7:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    23a8d3542cfc:	8d 0c b2                                        	lea    ecx,[rdx+rsi*4]
    23a8d3542cff:	c4 41 7b 10 24 08                               	vmovsd xmm12,QWORD PTR [r8+rcx*1]
    23a8d3542d05:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    23a8d3542d0b:	3b cb                                           	cmp    ecx,ebx
    23a8d3542d0d:	0f 8c 0d 00 00 00                               	jl     0x23a8d3542d20
    23a8d3542d13:	c5 f8 10 9d 40 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2c0]
    23a8d3542d1b:	e9 0a 00 00 00                                  	jmp    0x23a8d3542d2a
    23a8d3542d20:	42 8d 14 8a                                     	lea    edx,[rdx+r9*4]
    23a8d3542d24:	c4 c1 7b 10 1c 10                               	vmovsd xmm3,QWORD PTR [r8+rdx*1]
    23a8d3542d2a:	c5 19 6c e3                                     	vpunpcklqdq xmm12,xmm12,xmm3
    23a8d3542d2e:	41 8b 54 38 6c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x6c]
    23a8d3542d33:	81 ea 00 02 00 00                               	sub    edx,0x200
    23a8d3542d39:	83 fa 07                                        	cmp    edx,0x7
    23a8d3542d3c:	0f 83 0b 00 00 00                               	jae    0x23a8d3542d4d
    23a8d3542d42:	4c 8d 15 a7 1f 00 00                            	lea    r10,[rip+0x1fa7]        # 0x23a8d3544cf0
    23a8d3542d49:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    23a8d3542d4d:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    23a8d3542d52:	e9 48 00 00 00                                  	jmp    0x23a8d3542d9f
    23a8d3542d57:	c5 18 c2 e7 02                                  	vcmpleps xmm12,xmm12,xmm7
    23a8d3542d5c:	e9 3e 00 00 00                                  	jmp    0x23a8d3542d9f
    23a8d3542d61:	c4 41 40 c2 e4 04                               	vcmpneqps xmm12,xmm7,xmm12
    23a8d3542d67:	e9 33 00 00 00                                  	jmp    0x23a8d3542d9f
    23a8d3542d6c:	c5 18 c2 e7 01                                  	vcmpltps xmm12,xmm12,xmm7
    23a8d3542d71:	e9 29 00 00 00                                  	jmp    0x23a8d3542d9f
    23a8d3542d76:	c4 41 40 c2 e4 02                               	vcmpleps xmm12,xmm7,xmm12
    23a8d3542d7c:	e9 1e 00 00 00                                  	jmp    0x23a8d3542d9f
    23a8d3542d81:	c4 41 40 c2 e4 00                               	vcmpeqps xmm12,xmm7,xmm12
    23a8d3542d87:	e9 13 00 00 00                                  	jmp    0x23a8d3542d9f
    23a8d3542d8c:	c4 41 40 c2 e4 01                               	vcmpltps xmm12,xmm7,xmm12
    23a8d3542d92:	e9 08 00 00 00                                  	jmp    0x23a8d3542d9f
    23a8d3542d97:	c5 78 10 a5 40 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2c0]
    23a8d3542d9f:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    23a8d3542da3:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    23a8d3542da7:	85 d2                                           	test   edx,edx
    23a8d3542da9:	0f 85 3c 00 00 00                               	jne    0x23a8d3542deb
    23a8d3542daf:	4d 8b e0                                        	mov    r12,r8
    23a8d3542db2:	4c 8b c7                                        	mov    r8,rdi
    23a8d3542db5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d3542dba:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d3542dbf:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d3542dc5:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d3542dcb:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3542dd0:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d3542dd8:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3542de0:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d3542de6:	e9 3f 19 00 00                                  	jmp    0x23a8d354472a
    23a8d3542deb:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    23a8d3542df2:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d3542df7:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    23a8d3542e01:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d3542e06:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d3542e0b:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x23a8d3542df9
    23a8d3542e12:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3542e17:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d3542e1b:	c5 e0 c2 de 01                                  	vcmpltps xmm3,xmm3,xmm6
    23a8d3542e20:	c4 41 61 df fc                                  	vpandn xmm15,xmm3,xmm12
    23a8d3542e25:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    23a8d3542e29:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d3542e2e:	c5 b8 5e f6                                     	vdivps xmm6,xmm8,xmm6
    23a8d3542e32:	48 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rbx
    23a8d3542e39:	49 8d 58 2c                                     	lea    rbx,[r8+0x2c]
    23a8d3542e3d:	c4 22 79 18 24 1b                               	vbroadcastss xmm12,DWORD PTR [rbx+r11*1]
    23a8d3542e43:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    23a8d3542e48:	c4 a2 79 18 1c 23                               	vbroadcastss xmm3,DWORD PTR [rbx+r12*1]
    23a8d3542e4e:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    23a8d3542e52:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    23a8d3542e56:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    23a8d3542e5c:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d3542e60:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    23a8d3542e64:	c4 41 48 59 e4                                  	vmulps xmm12,xmm6,xmm12
    23a8d3542e69:	49 8d 58 28                                     	lea    rbx,[r8+0x28]
    23a8d3542e6d:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    23a8d3542e73:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    23a8d3542e77:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    23a8d3542e7f:	c4 a2 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [rbx+r12*1]
    23a8d3542e85:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    23a8d3542e89:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    23a8d3542e8d:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    23a8d3542e93:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d3542e97:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    23a8d3542e9b:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    23a8d3542e9f:	49 8d 58 24                                     	lea    rbx,[r8+0x24]
    23a8d3542ea3:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    23a8d3542ea9:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    23a8d3542ead:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    23a8d3542eb5:	c4 a2 79 18 3c 23                               	vbroadcastss xmm7,DWORD PTR [rbx+r12*1]
    23a8d3542ebb:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    23a8d3542ebf:	c5 e0 58 ff                                     	vaddps xmm7,xmm3,xmm7
    23a8d3542ec3:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    23a8d3542ec9:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d3542ecd:	c5 c0 58 fb                                     	vaddps xmm7,xmm7,xmm3
    23a8d3542ed1:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    23a8d3542ed5:	49 8d 58 20                                     	lea    rbx,[r8+0x20]
    23a8d3542ed9:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    23a8d3542edf:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    23a8d3542ee3:	c5 78 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm8
    23a8d3542eeb:	c4 22 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [rbx+r12*1]
    23a8d3542ef1:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    23a8d3542ef6:	c4 41 60 58 c0                                  	vaddps xmm8,xmm3,xmm8
    23a8d3542efb:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    23a8d3542f01:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    23a8d3542f05:	c5 38 58 c3                                     	vaddps xmm8,xmm8,xmm3
    23a8d3542f09:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    23a8d3542f0e:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    23a8d3542f15:	48 89 b5 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rsi
    23a8d3542f1c:	41 8b b4 18 34 01 00 00                         	mov    esi,DWORD PTR [r8+rbx*1+0x134]
    23a8d3542f24:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    23a8d3542f2b:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    23a8d3542f2f:	c5 78 11 95 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm10
    23a8d3542f37:	48 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rax
    23a8d3542f3e:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    23a8d3542f45:	41 83 f9 01                                     	cmp    r9d,0x1
    23a8d3542f49:	0f 87 fd 06 00 00                               	ja     0x23a8d354364c
    23a8d3542f4f:	45 8b 4c 18 28                                  	mov    r9d,DWORD PTR [r8+rbx*1+0x28]
    23a8d3542f54:	41 8b 7c 18 20                                  	mov    edi,DWORD PTR [r8+rbx*1+0x20]
    23a8d3542f59:	48 89 b5 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rsi
    23a8d3542f60:	49 8d 70 54                                     	lea    rsi,[r8+0x54]
    23a8d3542f64:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    23a8d3542f6a:	c4 22 79 18 0c 1e                               	vbroadcastss xmm9,DWORD PTR [rsi+r11*1]
    23a8d3542f70:	c4 22 79 18 2c 26                               	vbroadcastss xmm13,DWORD PTR [rsi+r12*1]
    23a8d3542f76:	41 8b 74 18 1c                                  	mov    esi,DWORD PTR [r8+rbx*1+0x1c]
    23a8d3542f7b:	c5 02 2a f6                                     	vcvtsi2ss xmm14,xmm15,esi
    23a8d3542f7f:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    23a8d3542f84:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    23a8d3542f8b:	4d 8d 48 50                                     	lea    r9,[r8+0x50]
    23a8d3542f8f:	c4 82 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+r11*1]
    23a8d3542f95:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    23a8d3542f99:	c4 82 79 18 24 21                               	vbroadcastss xmm4,DWORD PTR [r9+r12*1]
    23a8d3542f9f:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    23a8d3542fa3:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    23a8d3542fa7:	c4 82 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [r9+r15*1]
    23a8d3542fad:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    23a8d3542fb1:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    23a8d3542fb5:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    23a8d3542fb9:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    23a8d3542fbf:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    23a8d3542fc3:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    23a8d3542fc7:	4c 8b 15 13 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd213]        # 0x23a8d35401e1
    23a8d3542fce:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d3542fd3:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    23a8d3542fd7:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    23a8d3542fdb:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    23a8d3542fe1:	4c 8b 15 f6 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ff6]        # 0x23a8d353bfde
    23a8d3542fe8:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    23a8d3542fed:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    23a8d3542ff2:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    23a8d3542ff8:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    23a8d3542ffd:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    23a8d3543002:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    23a8d354300a:	4c 8b 15 db d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2db]        # 0x23a8d35402ec
    23a8d3543011:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    23a8d3543016:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    23a8d354301b:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    23a8d3543023:	4c 8b 15 f3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f3]        # 0x23a8d354021d
    23a8d354302a:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    23a8d354302f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    23a8d3543037:	4c 8b 15 ee d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1ee]        # 0x23a8d354022c
    23a8d354303e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d3543043:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d3543047:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    23a8d354304c:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    23a8d3543051:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    23a8d3543055:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d354305a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d354305e:	c4 81 7a 7f 84 08 90 00 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x90],xmm0
    23a8d3543068:	c5 82 2a c7                                     	vcvtsi2ss xmm0,xmm15,edi
    23a8d354306c:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d3543071:	c4 41 68 59 c9                                  	vmulps xmm9,xmm2,xmm9
    23a8d3543076:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    23a8d354307b:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    23a8d3543080:	c5 20 59 d3                                     	vmulps xmm10,xmm11,xmm3
    23a8d3543084:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    23a8d3543089:	c4 41 48 59 c9                                  	vmulps xmm9,xmm6,xmm9
    23a8d354308e:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    23a8d3543094:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    23a8d3543099:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    23a8d354309e:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    23a8d35430a2:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    23a8d35430a8:	4c 8b 15 2f 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8f2f]        # 0x23a8d353bfde
    23a8d35430af:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    23a8d35430b5:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    23a8d35430ba:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    23a8d35430c0:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    23a8d35430c5:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    23a8d35430ca:	4c 8b 15 4c d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd14c]        # 0x23a8d354021d
    23a8d35430d1:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    23a8d35430d6:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    23a8d35430db:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    23a8d35430e0:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    23a8d35430e5:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    23a8d35430ea:	c4 01 7a 7f 94 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x190],xmm10
    23a8d35430f4:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    23a8d35430f8:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    23a8d3543100:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    23a8d3543105:	4c 8b 15 ad ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffedad]        # 0x23a8d3541eb9
    23a8d354310c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d3543111:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    23a8d3543116:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    23a8d354311b:	4c 8b 15 bc 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ebc]        # 0x23a8d353bfde
    23a8d3543122:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    23a8d3543128:	c4 c1 28 54 cf                                  	vandps xmm1,xmm10,xmm15
    23a8d354312d:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    23a8d3543133:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    23a8d3543137:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    23a8d354313c:	4c 8b 15 da d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0da]        # 0x23a8d354021d
    23a8d3543143:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    23a8d3543148:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    23a8d354314d:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    23a8d3543152:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    23a8d3543157:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    23a8d354315c:	c4 01 7a 7f 14 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm10
    23a8d3543162:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    23a8d3543167:	c4 c1 78 59 c5                                  	vmulps xmm0,xmm0,xmm13
    23a8d354316c:	c4 c1 78 58 c6                                  	vaddps xmm0,xmm0,xmm14
    23a8d3543171:	4c 8b 15 66 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8e66]        # 0x23a8d353bfde
    23a8d3543178:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d354317d:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    23a8d3543182:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d3543188:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    23a8d354318d:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    23a8d3543192:	4c 8b 15 84 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd084]        # 0x23a8d354021d
    23a8d3543199:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d354319e:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    23a8d35431a3:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    23a8d35431a8:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    23a8d35431ac:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d35431b1:	c4 81 7a 7f 44 08 70                            	vmovdqu XMMWORD PTR [r8+r9*1+0x70],xmm0
    23a8d35431b8:	c4 01 7a 7f 44 08 50                            	vmovdqu XMMWORD PTR [r8+r9*1+0x50],xmm8
    23a8d35431bf:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    23a8d35431c7:	c4 81 7a 7f bc 08 f0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1f0],xmm7
    23a8d35431d1:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    23a8d35431d9:	c4 81 7a 7f 84 08 e0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1e0],xmm0
    23a8d35431e3:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    23a8d35431eb:	c4 01 7a 7f a4 08 d0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1d0],xmm12
    23a8d35431f5:	45 8b 7c 18 34                                  	mov    r15d,DWORD PTR [r8+rbx*1+0x34]
    23a8d35431fa:	45 8b 64 18 30                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x30]
    23a8d35431ff:	45 8b 5c 18 2c                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x2c]
    23a8d3543204:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    23a8d354320b:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    23a8d3543212:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    23a8d3543219:	33 c0                                           	xor    eax,eax
    23a8d354321b:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    23a8d3543221:	e9 2a 00 00 00                                  	jmp    0x23a8d3543250
    23a8d3543226:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d354322f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    23a8d3543238:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    23a8d3543240:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    23a8d3543246:	45 8b cc                                        	mov    r9d,r12d
    23a8d3543249:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    23a8d3543250:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    23a8d3543255:	0f 85 5c 19 00 00                               	jne    0x23a8d3544bb7
    23a8d354325b:	8b c8                                           	mov    ecx,eax
    23a8d354325d:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    23a8d3543264:	41 d3 ef                                        	shr    r15d,cl
    23a8d3543267:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d354326b:	0f 85 0a 00 00 00                               	jne    0x23a8d354327b
    23a8d3543271:	45 8b e1                                        	mov    r12d,r9d
    23a8d3543274:	8b f8                                           	mov    edi,eax
    23a8d3543276:	e9 3d 03 00 00                                  	jmp    0x23a8d35435b8
    23a8d354327b:	45 8d bc 81 90 01 00 00                         	lea    r15d,[r9+rax*4+0x190]
    23a8d3543283:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    23a8d3543287:	41 8d 8c 81 90 00 00 00                         	lea    ecx,[r9+rax*4+0x90]
    23a8d354328f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    23a8d3543293:	44 8d 49 01                                     	lea    r9d,[rcx+0x1]
    23a8d3543297:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    23a8d354329e:	45 85 db                                        	test   r11d,r11d
    23a8d35432a1:	0f 85 51 00 00 00                               	jne    0x23a8d35432f8
    23a8d35432a7:	85 f6                                           	test   esi,esi
    23a8d35432a9:	0f 84 c8 19 00 00                               	je     0x23a8d3544c77
    23a8d35432af:	83 fe ff                                        	cmp    esi,0xffffffff
    23a8d35432b2:	0f 84 94 19 00 00                               	je     0x23a8d3544c4c
    23a8d35432b8:	44 8b d0                                        	mov    r10d,eax
    23a8d35432bb:	8b c1                                           	mov    eax,ecx
    23a8d35432bd:	41 8b ca                                        	mov    ecx,r10d
    23a8d35432c0:	99                                              	cdq
    23a8d35432c1:	f7 fe                                           	idiv   esi
    23a8d35432c3:	8b c2                                           	mov    eax,edx
    23a8d35432c5:	c1 f8 1f                                        	sar    eax,0x1f
    23a8d35432c8:	23 c6                                           	and    eax,esi
    23a8d35432ca:	03 c2                                           	add    eax,edx
    23a8d35432cc:	83 fe ff                                        	cmp    esi,0xffffffff
    23a8d35432cf:	0f 84 80 19 00 00                               	je     0x23a8d3544c55
    23a8d35432d5:	44 8b d0                                        	mov    r10d,eax
    23a8d35432d8:	41 8b c1                                        	mov    eax,r9d
    23a8d35432db:	45 8b ca                                        	mov    r9d,r10d
    23a8d35432de:	99                                              	cdq
    23a8d35432df:	f7 fe                                           	idiv   esi
    23a8d35432e1:	8b c2                                           	mov    eax,edx
    23a8d35432e3:	c1 f8 1f                                        	sar    eax,0x1f
    23a8d35432e6:	23 c6                                           	and    eax,esi
    23a8d35432e8:	03 c2                                           	add    eax,edx
    23a8d35432ea:	45 8b d1                                        	mov    r10d,r9d
    23a8d35432ed:	44 8b c8                                        	mov    r9d,eax
    23a8d35432f0:	41 8b c2                                        	mov    eax,r10d
    23a8d35432f3:	e9 0e 00 00 00                                  	jmp    0x23a8d3543306
    23a8d35432f8:	41 23 cb                                        	and    ecx,r11d
    23a8d35432fb:	45 23 cb                                        	and    r9d,r11d
    23a8d35432fe:	44 8b d1                                        	mov    r10d,ecx
    23a8d3543301:	8b c8                                           	mov    ecx,eax
    23a8d3543303:	41 8b c2                                        	mov    eax,r10d
    23a8d3543306:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    23a8d354330a:	45 85 e4                                        	test   r12d,r12d
    23a8d354330d:	0f 85 47 00 00 00                               	jne    0x23a8d354335a
    23a8d3543313:	85 ff                                           	test   edi,edi
    23a8d3543315:	0f 84 57 19 00 00                               	je     0x23a8d3544c72
    23a8d354331b:	83 ff ff                                        	cmp    edi,0xffffffff
    23a8d354331e:	0f 84 3b 19 00 00                               	je     0x23a8d3544c5f
    23a8d3543324:	8b c8                                           	mov    ecx,eax
    23a8d3543326:	8b c2                                           	mov    eax,edx
    23a8d3543328:	99                                              	cdq
    23a8d3543329:	f7 ff                                           	idiv   edi
    23a8d354332b:	8b c2                                           	mov    eax,edx
    23a8d354332d:	c1 f8 1f                                        	sar    eax,0x1f
    23a8d3543330:	23 c7                                           	and    eax,edi
    23a8d3543332:	03 c2                                           	add    eax,edx
    23a8d3543334:	83 ff ff                                        	cmp    edi,0xffffffff
    23a8d3543337:	0f 84 2b 19 00 00                               	je     0x23a8d3544c68
    23a8d354333d:	44 8b d0                                        	mov    r10d,eax
    23a8d3543340:	41 8b c7                                        	mov    eax,r15d
    23a8d3543343:	45 8b fa                                        	mov    r15d,r10d
    23a8d3543346:	99                                              	cdq
    23a8d3543347:	f7 ff                                           	idiv   edi
    23a8d3543349:	8b c2                                           	mov    eax,edx
    23a8d354334b:	c1 f8 1f                                        	sar    eax,0x1f
    23a8d354334e:	23 f8                                           	and    edi,eax
    23a8d3543350:	03 fa                                           	add    edi,edx
    23a8d3543352:	41 8b d7                                        	mov    edx,r15d
    23a8d3543355:	e9 0b 00 00 00                                  	jmp    0x23a8d3543365
    23a8d354335a:	41 23 d4                                        	and    edx,r12d
    23a8d354335d:	45 23 e7                                        	and    r12d,r15d
    23a8d3543360:	41 8b fc                                        	mov    edi,r12d
    23a8d3543363:	8b c8                                           	mov    ecx,eax
    23a8d3543365:	8b c1                                           	mov    eax,ecx
    23a8d3543367:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    23a8d354336d:	44 8b ff                                        	mov    r15d,edi
    23a8d3543370:	41 d3 e7                                        	shl    r15d,cl
    23a8d3543373:	0f af fe                                        	imul   edi,esi
    23a8d3543376:	45 85 db                                        	test   r11d,r11d
    23a8d3543379:	41 0f 45 ff                                     	cmovne edi,r15d
    23a8d354337d:	44 8d 3c 38                                     	lea    r15d,[rax+rdi*1]
    23a8d3543381:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    23a8d3543385:	c4 81 7a 10 04 38                               	vmovss xmm0,DWORD PTR [r8+r15*1]
    23a8d354338b:	c4 e2 79 30 c0                                  	vpmovzxbw xmm0,xmm0
    23a8d3543390:	41 03 f9                                        	add    edi,r9d
    23a8d3543393:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d3543396:	c4 c1 7a 10 3c 38                               	vmovss xmm7,DWORD PTR [r8+rdi*1]
    23a8d354339c:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    23a8d35433a1:	c5 f9 61 c7                                     	vpunpcklwd xmm0,xmm0,xmm7
    23a8d35433a5:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    23a8d35433ab:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    23a8d35433b2:	41 8d 8c bf 00 fe ff ff                         	lea    ecx,[r15+rdi*4-0x200]
    23a8d35433ba:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    23a8d35433be:	41 bf 00 01 00 00                               	mov    r15d,0x100
    23a8d35433c4:	44 8b e1                                        	mov    r12d,ecx
    23a8d35433c7:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    23a8d35433cd:	45 0f 4d e7                                     	cmovge r12d,r15d
    23a8d35433d1:	33 c9                                           	xor    ecx,ecx
    23a8d35433d3:	45 85 e4                                        	test   r12d,r12d
    23a8d35433d6:	41 0f 4f cc                                     	cmovg  ecx,r12d
    23a8d35433da:	44 69 e1 ff ff 00 00                            	imul   r12d,ecx,0xffff
    23a8d35433e1:	41 81 c4 00 01 00 00                            	add    r12d,0x100
    23a8d35433e8:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    23a8d35433ed:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    23a8d35433f2:	c5 f9 f5 c7                                     	vpmaddwd xmm0,xmm0,xmm7
    23a8d35433f6:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    23a8d35433fa:	41 8d 4c bc 70                                  	lea    ecx,[r12+rdi*4+0x70]
    23a8d35433ff:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    23a8d3543403:	8b f9                                           	mov    edi,ecx
    23a8d3543405:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    23a8d354340b:	41 0f 4d ff                                     	cmovge edi,r15d
    23a8d354340f:	33 c9                                           	xor    ecx,ecx
    23a8d3543411:	85 ff                                           	test   edi,edi
    23a8d3543413:	0f 4f cf                                        	cmovg  ecx,edi
    23a8d3543416:	44 2b f9                                        	sub    r15d,ecx
    23a8d3543419:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    23a8d354341e:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    23a8d3543423:	c4 c2 79 40 c0                                  	vpmulld xmm0,xmm0,xmm8
    23a8d3543428:	44 8b f9                                        	mov    r15d,ecx
    23a8d354342b:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    23a8d3543431:	8b fa                                           	mov    edi,edx
    23a8d3543433:	d3 e7                                           	shl    edi,cl
    23a8d3543435:	0f af d6                                        	imul   edx,esi
    23a8d3543438:	45 85 db                                        	test   r11d,r11d
    23a8d354343b:	0f 45 d7                                        	cmovne edx,edi
    23a8d354343e:	8d 3c 10                                        	lea    edi,[rax+rdx*1]
    23a8d3543441:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d3543444:	c4 41 7a 10 04 38                               	vmovss xmm8,DWORD PTR [r8+rdi*1]
    23a8d354344a:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    23a8d354344f:	42 8d 3c 0a                                     	lea    edi,[rdx+r9*1]
    23a8d3543453:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    23a8d3543456:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    23a8d354345c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    23a8d3543461:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    23a8d3543466:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    23a8d354346a:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    23a8d354346f:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    23a8d3543474:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    23a8d3543479:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    23a8d354347d:	4c 8b 15 25 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb25]        # 0x23a8d3541fa9
    23a8d3543484:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    23a8d3543489:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    23a8d354348d:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    23a8d3543491:	c5 f9 72 e0 10                                  	vpsrad xmm0,xmm0,0x10
    23a8d3543496:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    23a8d354349b:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    23a8d354349f:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    23a8d35434a3:	44 8b ff                                        	mov    r15d,edi
    23a8d35434a6:	41 c1 ef 18                                     	shr    r15d,0x18
    23a8d35434aa:	8b c7                                           	mov    eax,edi
    23a8d35434ac:	c1 e8 10                                        	shr    eax,0x10
    23a8d35434af:	8b d7                                           	mov    edx,edi
    23a8d35434b1:	c1 ea 08                                        	shr    edx,0x8
    23a8d35434b4:	40 0f b6 ff                                     	movzx  edi,dil
    23a8d35434b8:	44 8b d7                                        	mov    r10d,edi
    23a8d35434bb:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d35434c0:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    23a8d35434c6:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    23a8d35434cb:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d35434cf:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    23a8d35434d5:	41 8d 4c bc 50                                  	lea    ecx,[r12+rdi*4+0x50]
    23a8d35434da:	83 bd 50 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x1b0],0x2
    23a8d35434e1:	0f 84 77 00 00 00                               	je     0x23a8d354355e
    23a8d35434e7:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    23a8d35434ed:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    23a8d35434f3:	41 8d 8c bc f0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1f0]
    23a8d35434fb:	0f b6 d2                                        	movzx  edx,dl
    23a8d35434fe:	44 8b d2                                        	mov    r10d,edx
    23a8d3543501:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d3543506:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d354350a:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    23a8d3543510:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    23a8d3543516:	41 8d 94 bc e0 01 00 00                         	lea    edx,[r12+rdi*4+0x1e0]
    23a8d354351e:	0f b6 c0                                        	movzx  eax,al
    23a8d3543521:	44 8b d0                                        	mov    r10d,eax
    23a8d3543524:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d3543529:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d354352d:	c4 c1 7a 59 04 10                               	vmulss xmm0,xmm0,DWORD PTR [r8+rdx*1]
    23a8d3543533:	c4 c1 7a 11 04 10                               	vmovss DWORD PTR [r8+rdx*1],xmm0
    23a8d3543539:	41 8d 84 bc d0 01 00 00                         	lea    eax,[r12+rdi*4+0x1d0]
    23a8d3543541:	45 8b d7                                        	mov    r10d,r15d
    23a8d3543544:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d3543549:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d354354d:	c4 c1 7a 59 04 00                               	vmulss xmm0,xmm0,DWORD PTR [r8+rax*1]
    23a8d3543553:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    23a8d3543559:	e9 5a 00 00 00                                  	jmp    0x23a8d35435b8
    23a8d354355e:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    23a8d3543564:	41 8d 8c bc d0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1d0]
    23a8d354356c:	45 8b d7                                        	mov    r10d,r15d
    23a8d354356f:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d3543574:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d3543578:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    23a8d354357e:	45 8d bc bc e0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1e0]
    23a8d3543586:	0f b6 c0                                        	movzx  eax,al
    23a8d3543589:	44 8b d0                                        	mov    r10d,eax
    23a8d354358c:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d3543591:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d3543595:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    23a8d354359b:	45 8d bc bc f0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1f0]
    23a8d35435a3:	0f b6 c2                                        	movzx  eax,dl
    23a8d35435a6:	44 8b d0                                        	mov    r10d,eax
    23a8d35435a9:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d35435ae:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    23a8d35435b2:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    23a8d35435b8:	8d 47 01                                        	lea    eax,[rdi+0x1]
    23a8d35435bb:	83 f8 04                                        	cmp    eax,0x4
    23a8d35435be:	0f 85 7c fc ff ff                               	jne    0x23a8d3543240
    23a8d35435c4:	c4 01 7a 6f a4 20 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r8+r12*1+0x1d0]
    23a8d35435ce:	c4 81 7a 6f bc 20 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r12*1+0x1f0]
    23a8d35435d8:	c4 01 7a 6f 44 20 50                            	vmovdqu xmm8,XMMWORD PTR [r8+r12*1+0x50]
    23a8d35435df:	c4 81 7a 6f 84 20 e0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+r12*1+0x1e0]
    23a8d35435e9:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d35435f1:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d35435f9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    23a8d3543601:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    23a8d3543608:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    23a8d354360c:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    23a8d3543614:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    23a8d354361a:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    23a8d3543620:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    23a8d3543627:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    23a8d354362e:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    23a8d3543635:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    23a8d354363c:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    23a8d3543644:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    23a8d354364c:	41 8b b4 38 ec 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xec]
    23a8d3543654:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    23a8d354365c:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    23a8d3543665:	0f 84 04 04 00 00                               	je     0x23a8d3543a6f
    23a8d354366b:	49 8d b0 98 00 00 00                            	lea    rsi,[r8+0x98]
    23a8d3543672:	c4 a2 79 18 1c 1e                               	vbroadcastss xmm3,DWORD PTR [rsi+r11*1]
    23a8d3543678:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    23a8d354367c:	c4 a2 79 18 1c 26                               	vbroadcastss xmm3,DWORD PTR [rsi+r12*1]
    23a8d3543682:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    23a8d3543686:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    23a8d354368a:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    23a8d3543690:	c5 20 59 db                                     	vmulps xmm11,xmm11,xmm3
    23a8d3543694:	c4 41 68 58 db                                  	vaddps xmm11,xmm2,xmm11
    23a8d3543699:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    23a8d354369e:	c5 28 5c de                                     	vsubps xmm11,xmm10,xmm6
    23a8d35436a2:	c5 a0 c2 d6 01                                  	vcmpltps xmm2,xmm11,xmm6
    23a8d35436a7:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    23a8d35436ac:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    23a8d35436b0:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d35436b5:	4c 8b 15 d5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed5]        # 0x23a8d353d591
    23a8d35436bc:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d35436c1:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    23a8d35436c6:	41 8b b4 38 f0 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xf0]
    23a8d35436ce:	81 fe 00 08 00 00                               	cmp    esi,0x800
    23a8d35436d4:	0f 84 8d 01 00 00                               	je     0x23a8d3543867
    23a8d35436da:	81 fe 01 26 00 00                               	cmp    esi,0x2601
    23a8d35436e0:	0f 84 23 01 00 00                               	je     0x23a8d3543809
    23a8d35436e6:	c4 c1 7a 10 94 38 f4 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xf4]
    23a8d35436f0:	c5 f8 28 de                                     	vmovaps xmm3,xmm6
    23a8d35436f4:	c5 ea 59 db                                     	vmulss xmm3,xmm2,xmm3
    23a8d35436f8:	4c 8b 15 70 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c70]        # 0x23a8d353c36f
    23a8d35436ff:	c4 c1 60 57 2a                                  	vxorps xmm5,xmm3,XMMWORD PTR [r10]
    23a8d3543704:	c5 e2 59 dd                                     	vmulss xmm3,xmm3,xmm5
    23a8d3543708:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    23a8d3543710:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    23a8d3543718:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    23a8d3543720:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    23a8d3543728:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    23a8d3543730:	c5 fb 11 95 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm2
    23a8d3543738:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354373c:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    23a8d3543740:	e8 73 ae f0 ff                                  	call   0x23a8d344e5b8
    23a8d3543745:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    23a8d354374a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    23a8d3543752:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    23a8d3543756:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    23a8d354375e:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    23a8d3543762:	4c 8b 15 06 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c06]        # 0x23a8d353c36f
    23a8d3543769:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    23a8d354376e:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    23a8d3543773:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    23a8d354377b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354377f:	e8 34 ae f0 ff                                  	call   0x23a8d344e5b8
    23a8d3543784:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    23a8d354378c:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    23a8d3543792:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    23a8d354379a:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    23a8d354379f:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    23a8d35437a7:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    23a8d35437ab:	4c 8b 15 bd 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8bbd]        # 0x23a8d353c36f
    23a8d35437b2:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    23a8d35437b7:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    23a8d35437bc:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    23a8d35437c4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35437c8:	e8 eb ad f0 ff                                  	call   0x23a8d344e5b8
    23a8d35437cd:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    23a8d35437d5:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    23a8d35437db:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    23a8d35437e3:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    23a8d35437e8:	c5 fb 10 bd b0 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x150]
    23a8d35437f0:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    23a8d35437f4:	4c 8b 15 74 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b74]        # 0x23a8d353c36f
    23a8d35437fb:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    23a8d3543800:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    23a8d3543804:	e9 3a 01 00 00                                  	jmp    0x23a8d3543943
    23a8d3543809:	c4 c1 7a 10 94 38 fc 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xfc]
    23a8d3543813:	c4 c1 6a 5c 9c 38 f8 00 00 00                   	vsubss xmm3,xmm2,DWORD PTR [r8+rdi*1+0xf8]
    23a8d354381d:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    23a8d3543821:	c5 f8 2e eb                                     	vucomiss xmm5,xmm3
    23a8d3543825:	7a 06                                           	jp     0x23a8d354382d
    23a8d3543827:	0f 84 2d 00 00 00                               	je     0x23a8d354385a
    23a8d354382d:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    23a8d3543832:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    23a8d3543836:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    23a8d354383a:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    23a8d354383f:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    23a8d3543844:	c5 ea 5e db                                     	vdivss xmm3,xmm2,xmm3
    23a8d3543848:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    23a8d354384c:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    23a8d3543851:	c5 c8 59 f3                                     	vmulps xmm6,xmm6,xmm3
    23a8d3543855:	e9 9f 01 00 00                                  	jmp    0x23a8d35439f9
    23a8d354385a:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    23a8d3543862:	e9 92 01 00 00                                  	jmp    0x23a8d35439f9
    23a8d3543867:	c5 f8 28 d6                                     	vmovaps xmm2,xmm6
    23a8d354386b:	c4 c1 7a 10 9c 38 f4 00 00 00                   	vmovss xmm3,DWORD PTR [r8+rdi*1+0xf4]
    23a8d3543875:	4c 8b 15 f3 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8af3]        # 0x23a8d353c36f
    23a8d354387c:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    23a8d3543881:	c5 ea 59 d3                                     	vmulss xmm2,xmm2,xmm3
    23a8d3543885:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    23a8d354388d:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    23a8d3543895:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    23a8d354389d:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    23a8d35438a5:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    23a8d35438ad:	c5 fb 11 9d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm3
    23a8d35438b5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35438b9:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    23a8d35438bd:	e8 f6 ac f0 ff                                  	call   0x23a8d344e5b8
    23a8d35438c2:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    23a8d35438c7:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    23a8d35438cf:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    23a8d35438d3:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    23a8d35438db:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    23a8d35438e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35438e7:	e8 cc ac f0 ff                                  	call   0x23a8d344e5b8
    23a8d35438ec:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    23a8d35438f4:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    23a8d35438fa:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    23a8d3543902:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    23a8d3543907:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    23a8d354390f:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    23a8d3543917:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354391b:	e8 98 ac f0 ff                                  	call   0x23a8d344e5b8
    23a8d3543920:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    23a8d3543928:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    23a8d354392e:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    23a8d3543936:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    23a8d354393b:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    23a8d3543943:	c5 f8 11 85 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm0
    23a8d354394b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354394f:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d3543953:	e8 60 ac f0 ff                                  	call   0x23a8d344e5b8
    23a8d3543958:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    23a8d3543960:	c4 e3 49 21 f1 30                               	vinsertps xmm6,xmm6,xmm1,0x30
    23a8d3543966:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d354396e:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    23a8d3543972:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    23a8d354397a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d354397e:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    23a8d3543986:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    23a8d354398c:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    23a8d3543992:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    23a8d354399a:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    23a8d35439a2:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    23a8d35439aa:	c5 78 10 9d 70 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x190]
    23a8d35439b2:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    23a8d35439b6:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    23a8d35439bd:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    23a8d35439c4:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    23a8d35439cb:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    23a8d35439d2:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    23a8d35439da:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    23a8d35439e2:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    23a8d35439e9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    23a8d35439f1:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d35439f9:	c5 f8 10 95 80 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x180]
    23a8d3543a01:	c5 e8 c2 de 01                                  	vcmpltps xmm3,xmm2,xmm6
    23a8d3543a06:	c5 61 df fe                                     	vpandn xmm15,xmm3,xmm6
    23a8d3543a0a:	c5 a1 db f3                                     	vpand  xmm6,xmm11,xmm3
    23a8d3543a0e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d3543a13:	c4 41 48 c2 da 01                               	vcmpltps xmm11,xmm6,xmm10
    23a8d3543a19:	c5 a0 55 f6                                     	vandnps xmm6,xmm11,xmm6
    23a8d3543a1d:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d3543a21:	49 8d b0 08 01 00 00                            	lea    rsi,[r8+0x108]
    23a8d3543a28:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    23a8d3543a2e:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    23a8d3543a32:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    23a8d3543a36:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    23a8d3543a3b:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    23a8d3543a3f:	49 8d b0 04 01 00 00                            	lea    rsi,[r8+0x104]
    23a8d3543a46:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    23a8d3543a4c:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    23a8d3543a50:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    23a8d3543a55:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    23a8d3543a59:	49 8d b0 00 01 00 00                            	lea    rsi,[r8+0x100]
    23a8d3543a60:	c4 62 79 18 04 3e                               	vbroadcastss xmm8,DWORD PTR [rsi+rdi*1]
    23a8d3543a66:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    23a8d3543a6a:	c4 41 48 58 c0                                  	vaddps xmm8,xmm6,xmm8
    23a8d3543a6f:	41 8b b4 38 80 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x80]
    23a8d3543a77:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    23a8d3543a80:	0f 85 0d 00 00 00                               	jne    0x23a8d3543a93
    23a8d3543a86:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    23a8d3543a8e:	e9 83 00 00 00                                  	jmp    0x23a8d3543b16
    23a8d3543a93:	49 8d b0 88 00 00 00                            	lea    rsi,[r8+0x88]
    23a8d3543a9a:	c4 e2 79 18 34 3e                               	vbroadcastss xmm6,DWORD PTR [rsi+rdi*1]
    23a8d3543aa0:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d3543aa5:	41 8b b4 38 84 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x84]
    23a8d3543aad:	81 ee 00 02 00 00                               	sub    esi,0x200
    23a8d3543ab3:	83 fe 07                                        	cmp    esi,0x7
    23a8d3543ab6:	0f 83 0b 00 00 00                               	jae    0x23a8d3543ac7
    23a8d3543abc:	4c 8d 15 f5 11 00 00                            	lea    r10,[rip+0x11f5]        # 0x23a8d3544cb8
    23a8d3543ac3:	41 ff 24 f2                                     	jmp    QWORD PTR [r10+rsi*8]
    23a8d3543ac7:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    23a8d3543acc:	e9 39 00 00 00                                  	jmp    0x23a8d3543b0a
    23a8d3543ad1:	c4 41 48 c2 dc 02                               	vcmpleps xmm11,xmm6,xmm12
    23a8d3543ad7:	e9 2e 00 00 00                                  	jmp    0x23a8d3543b0a
    23a8d3543adc:	c5 18 c2 de 04                                  	vcmpneqps xmm11,xmm12,xmm6
    23a8d3543ae1:	e9 24 00 00 00                                  	jmp    0x23a8d3543b0a
    23a8d3543ae6:	c4 41 48 c2 dc 01                               	vcmpltps xmm11,xmm6,xmm12
    23a8d3543aec:	e9 19 00 00 00                                  	jmp    0x23a8d3543b0a
    23a8d3543af1:	c5 18 c2 de 02                                  	vcmpleps xmm11,xmm12,xmm6
    23a8d3543af6:	e9 0f 00 00 00                                  	jmp    0x23a8d3543b0a
    23a8d3543afb:	c5 18 c2 de 00                                  	vcmpeqps xmm11,xmm12,xmm6
    23a8d3543b00:	e9 05 00 00 00                                  	jmp    0x23a8d3543b0a
    23a8d3543b05:	c5 18 c2 de 01                                  	vcmpltps xmm11,xmm12,xmm6
    23a8d3543b0a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    23a8d3543b12:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    23a8d3543b16:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    23a8d3543b1a:	85 f6                                           	test   esi,esi
    23a8d3543b1c:	0f 84 8d f2 ff ff                               	je     0x23a8d3542daf
    23a8d3543b22:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    23a8d3543b27:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    23a8d3543b2d:	0f 85 15 00 00 00                               	jne    0x23a8d3543b48
    23a8d3543b33:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    23a8d3543b39:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d3543b3f:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d3543b43:	e9 1f 01 00 00                                  	jmp    0x23a8d3543c67
    23a8d3543b48:	41 8b 74 38 48                                  	mov    esi,DWORD PTR [r8+rdi*1+0x48]
    23a8d3543b4d:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    23a8d3543b54:	45 33 db                                        	xor    r11d,r11d
    23a8d3543b57:	44 3b ce                                        	cmp    r9d,esi
    23a8d3543b5a:	41 0f 9c c3                                     	setl   r11b
    23a8d3543b5e:	45 8b 64 38 50                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x50]
    23a8d3543b63:	44 03 e6                                        	add    r12d,esi
    23a8d3543b66:	45 33 ff                                        	xor    r15d,r15d
    23a8d3543b69:	45 3b e1                                        	cmp    r12d,r9d
    23a8d3543b6c:	41 0f 9e c7                                     	setle  r15b
    23a8d3543b70:	45 0b fb                                        	or     r15d,r11d
    23a8d3543b73:	45 8b 5c 38 4c                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x4c]
    23a8d3543b78:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d3543b7c:	33 db                                           	xor    ebx,ebx
    23a8d3543b7e:	45 3b cb                                        	cmp    r9d,r11d
    23a8d3543b81:	0f 9c c3                                        	setl   bl
    23a8d3543b84:	41 8b cf                                        	mov    ecx,r15d
    23a8d3543b87:	0b cb                                           	or     ecx,ebx
    23a8d3543b89:	83 f1 ff                                        	xor    ecx,0xffffffff
    23a8d3543b8c:	41 8b 54 38 54                                  	mov    edx,DWORD PTR [r8+rdi*1+0x54]
    23a8d3543b91:	41 03 d3                                        	add    edx,r11d
    23a8d3543b94:	33 ff                                           	xor    edi,edi
    23a8d3543b96:	44 3b ca                                        	cmp    r9d,edx
    23a8d3543b99:	40 0f 9c c7                                     	setl   dil
    23a8d3543b9d:	23 cf                                           	and    ecx,edi
    23a8d3543b9f:	f7 d9                                           	neg    ecx
    23a8d3543ba1:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    23a8d3543ba5:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    23a8d3543baa:	44 3b a5 30 ff ff ff                            	cmp    r12d,DWORD PTR [rbp-0xd0]
    23a8d3543bb1:	41 0f 9e c4                                     	setle  r12b
    23a8d3543bb5:	45 0f b6 e4                                     	movzx  r12d,r12b
    23a8d3543bb9:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    23a8d3543bbf:	3b ce                                           	cmp    ecx,esi
    23a8d3543bc1:	40 0f 9c c6                                     	setl   sil
    23a8d3543bc5:	40 0f b6 f6                                     	movzx  esi,sil
    23a8d3543bc9:	41 0b f4                                        	or     esi,r12d
    23a8d3543bcc:	0b de                                           	or     ebx,esi
    23a8d3543bce:	83 f3 ff                                        	xor    ebx,0xffffffff
    23a8d3543bd1:	23 fb                                           	and    edi,ebx
    23a8d3543bd3:	f7 df                                           	neg    edi
    23a8d3543bd5:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    23a8d3543bdb:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    23a8d3543be1:	45 33 e4                                        	xor    r12d,r12d
    23a8d3543be4:	3b fa                                           	cmp    edi,edx
    23a8d3543be6:	41 0f 9c c4                                     	setl   r12b
    23a8d3543bea:	41 3b fb                                        	cmp    edi,r11d
    23a8d3543bed:	41 0f 9c c3                                     	setl   r11b
    23a8d3543bf1:	45 0f b6 db                                     	movzx  r11d,r11b
    23a8d3543bf5:	45 0b fb                                        	or     r15d,r11d
    23a8d3543bf8:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    23a8d3543bfc:	45 23 fc                                        	and    r15d,r12d
    23a8d3543bff:	41 f7 df                                        	neg    r15d
    23a8d3543c02:	c4 43 21 22 df 02                               	vpinsrd xmm11,xmm11,r15d,0x2
    23a8d3543c08:	41 0b f3                                        	or     esi,r11d
    23a8d3543c0b:	83 f6 ff                                        	xor    esi,0xffffffff
    23a8d3543c0e:	44 23 e6                                        	and    r12d,esi
    23a8d3543c11:	41 f7 dc                                        	neg    r12d
    23a8d3543c14:	c4 43 21 22 dc 03                               	vpinsrd xmm11,xmm11,r12d,0x3
    23a8d3543c1a:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    23a8d3543c1e:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    23a8d3543c22:	85 f6                                           	test   esi,esi
    23a8d3543c24:	0f 85 3d 00 00 00                               	jne    0x23a8d3543c67
    23a8d3543c2a:	4d 8b e0                                        	mov    r12,r8
    23a8d3543c2d:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d3543c31:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d3543c36:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d3543c3b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d3543c41:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d3543c47:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3543c4c:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d3543c54:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3543c5c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d3543c62:	e9 c3 0a 00 00                                  	jmp    0x23a8d354472a
    23a8d3543c67:	85 c0                                           	test   eax,eax
    23a8d3543c69:	0f 85 16 00 00 00                               	jne    0x23a8d3543c85
    23a8d3543c6f:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    23a8d3543c76:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d3543c7a:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    23a8d3543c80:	e9 fe 01 00 00                                  	jmp    0x23a8d3543e83
    23a8d3543c85:	83 bd 20 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xe0],0x0
    23a8d3543c8c:	0f 85 42 01 00 00                               	jne    0x23a8d3543dd4
    23a8d3543c92:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d3543c97:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d3543c9b:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    23a8d3543ca0:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    23a8d3543ca7:	43 8d 04 bc                                     	lea    eax,[r12+r15*4]
    23a8d3543cab:	c4 c1 7b 10 14 00                               	vmovsd xmm2,QWORD PTR [r8+rax*1]
    23a8d3543cb1:	3b bd 00 ff ff ff                               	cmp    edi,DWORD PTR [rbp-0x100]
    23a8d3543cb7:	0f 8c 10 00 00 00                               	jl     0x23a8d3543ccd
    23a8d3543cbd:	c4 c1 79 28 db                                  	vmovapd xmm3,xmm11
    23a8d3543cc2:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    23a8d3543cc8:	e9 10 00 00 00                                  	jmp    0x23a8d3543cdd
    23a8d3543ccd:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    23a8d3543cd3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    23a8d3543cd7:	c4 81 7b 10 1c 20                               	vmovsd xmm3,QWORD PTR [r8+r12*1]
    23a8d3543cdd:	c5 e9 6c d3                                     	vpunpcklqdq xmm2,xmm2,xmm3
    23a8d3543ce1:	47 8b 64 18 6c                                  	mov    r12d,DWORD PTR [r8+r11*1+0x6c]
    23a8d3543ce6:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    23a8d3543ced:	41 83 fc 07                                     	cmp    r12d,0x7
    23a8d3543cf1:	0f 83 0b 00 00 00                               	jae    0x23a8d3543d02
    23a8d3543cf7:	4c 8d 15 82 0f 00 00                            	lea    r10,[rip+0xf82]        # 0x23a8d3544c80
    23a8d3543cfe:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    23a8d3543d02:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    23a8d3543d07:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    23a8d3543d0f:	e9 74 00 00 00                                  	jmp    0x23a8d3543d88
    23a8d3543d14:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    23a8d3543d1c:	c5 68 c2 db 02                                  	vcmpleps xmm11,xmm2,xmm3
    23a8d3543d21:	e9 62 00 00 00                                  	jmp    0x23a8d3543d88
    23a8d3543d26:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    23a8d3543d2e:	c5 60 c2 da 04                                  	vcmpneqps xmm11,xmm3,xmm2
    23a8d3543d33:	e9 50 00 00 00                                  	jmp    0x23a8d3543d88
    23a8d3543d38:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    23a8d3543d40:	c5 68 c2 db 01                                  	vcmpltps xmm11,xmm2,xmm3
    23a8d3543d45:	e9 3e 00 00 00                                  	jmp    0x23a8d3543d88
    23a8d3543d4a:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    23a8d3543d52:	c5 60 c2 da 02                                  	vcmpleps xmm11,xmm3,xmm2
    23a8d3543d57:	e9 2c 00 00 00                                  	jmp    0x23a8d3543d88
    23a8d3543d5c:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    23a8d3543d64:	c5 60 c2 da 00                                  	vcmpeqps xmm11,xmm3,xmm2
    23a8d3543d69:	e9 1a 00 00 00                                  	jmp    0x23a8d3543d88
    23a8d3543d6e:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    23a8d3543d76:	c5 60 c2 da 01                                  	vcmpltps xmm11,xmm3,xmm2
    23a8d3543d7b:	e9 08 00 00 00                                  	jmp    0x23a8d3543d88
    23a8d3543d80:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    23a8d3543d88:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    23a8d3543d8c:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    23a8d3543d90:	85 f6                                           	test   esi,esi
    23a8d3543d92:	0f 85 4d 00 00 00                               	jne    0x23a8d3543de5
    23a8d3543d98:	4d 8b e0                                        	mov    r12,r8
    23a8d3543d9b:	4d 8b c3                                        	mov    r8,r11
    23a8d3543d9e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d3543da3:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d3543da8:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d3543dae:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d3543db4:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3543db9:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d3543dc1:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3543dc9:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d3543dcf:	e9 56 09 00 00                                  	jmp    0x23a8d354472a
    23a8d3543dd4:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    23a8d3543ddb:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d3543ddf:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    23a8d3543de5:	47 8b 64 18 70                                  	mov    r12d,DWORD PTR [r8+r11*1+0x70]
    23a8d3543dea:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    23a8d3543df0:	0f 84 8d 00 00 00                               	je     0x23a8d3543e83
    23a8d3543df6:	40 f6 c6 01                                     	test   sil,0x1
    23a8d3543dfa:	0f 85 0d 00 00 00                               	jne    0x23a8d3543e0d
    23a8d3543e00:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    23a8d3543e08:	e9 1b 00 00 00                                  	jmp    0x23a8d3543e28
    23a8d3543e0d:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    23a8d3543e12:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    23a8d3543e16:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    23a8d3543e1e:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    23a8d3543e22:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    23a8d3543e28:	40 f6 c6 02                                     	test   sil,0x2
    23a8d3543e2c:	0f 84 14 00 00 00                               	je     0x23a8d3543e46
    23a8d3543e32:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    23a8d3543e37:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    23a8d3543e3b:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    23a8d3543e3f:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    23a8d3543e46:	40 f6 c6 04                                     	test   sil,0x4
    23a8d3543e4a:	0f 84 14 00 00 00                               	je     0x23a8d3543e64
    23a8d3543e50:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    23a8d3543e55:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    23a8d3543e59:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    23a8d3543e5e:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    23a8d3543e64:	40 f6 c6 08                                     	test   sil,0x8
    23a8d3543e68:	0f 84 15 00 00 00                               	je     0x23a8d3543e83
    23a8d3543e6e:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    23a8d3543e73:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    23a8d3543e77:	c5 79 70 de 03                                  	vpshufd xmm11,xmm6,0x3
    23a8d3543e7c:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    23a8d3543e83:	47 8b 64 18 74                                  	mov    r12d,DWORD PTR [r8+r11*1+0x74]
    23a8d3543e88:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    23a8d3543e8e:	0f 85 0d 00 00 00                               	jne    0x23a8d3543ea1
    23a8d3543e94:	46 8d 24 bd 00 00 00 00                         	lea    r12d,[r15*4+0x0]
    23a8d3543e9c:	e9 d6 02 00 00                                  	jmp    0x23a8d3544177
    23a8d3543ea1:	47 8b 64 18 78                                  	mov    r12d,DWORD PTR [r8+r11*1+0x78]
    23a8d3543ea6:	41 8d 9c 24 fe fc ff ff                         	lea    ebx,[r12-0x302]
    23a8d3543eae:	33 d2                                           	xor    edx,edx
    23a8d3543eb0:	83 fb 04                                        	cmp    ebx,0x4
    23a8d3543eb3:	0f 93 c2                                        	setae  dl
    23a8d3543eb6:	33 c9                                           	xor    ecx,ecx
    23a8d3543eb8:	41 83 fc 01                                     	cmp    r12d,0x1
    23a8d3543ebc:	0f 97 c1                                        	seta   cl
    23a8d3543ebf:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    23a8d3543ec6:	85 ca                                           	test   edx,ecx
    23a8d3543ec8:	0f 85 b9 05 00 00                               	jne    0x23a8d3544487
    23a8d3543ece:	43 8b 54 18 7c                                  	mov    edx,DWORD PTR [r8+r11*1+0x7c]
    23a8d3543ed3:	8d 8a fe fc ff ff                               	lea    ecx,[rdx-0x302]
    23a8d3543ed9:	45 33 c9                                        	xor    r9d,r9d
    23a8d3543edc:	83 f9 04                                        	cmp    ecx,0x4
    23a8d3543edf:	41 0f 93 c1                                     	setae  r9b
    23a8d3543ee3:	33 f6                                           	xor    esi,esi
    23a8d3543ee5:	83 fa 01                                        	cmp    edx,0x1
    23a8d3543ee8:	40 0f 97 c6                                     	seta   sil
    23a8d3543eec:	41 85 f1                                        	test   r9d,esi
    23a8d3543eef:	0f 85 88 05 00 00                               	jne    0x23a8d354447d
    23a8d3543ef5:	42 8d 34 bd 00 00 00 00                         	lea    esi,[r15*4+0x0]
    23a8d3543efd:	47 8b 4c 18 08                                  	mov    r9d,DWORD PTR [r8+r11*1+0x8]
    23a8d3543f02:	47 8d 3c b9                                     	lea    r15d,[r9+r15*4]
    23a8d3543f06:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    23a8d3543f0c:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    23a8d3543f13:	44 3b ff                                        	cmp    r15d,edi
    23a8d3543f16:	0f 8e 0f 00 00 00                               	jle    0x23a8d3543f2b
    23a8d3543f1c:	45 8d 0c 81                                     	lea    r9d,[r9+rax*4]
    23a8d3543f20:	c4 01 7b 10 1c 08                               	vmovsd xmm11,QWORD PTR [r8+r9*1]
    23a8d3543f26:	e9 05 00 00 00                                  	jmp    0x23a8d3543f30
    23a8d3543f2b:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d3543f30:	c4 c1 49 6c f3                                  	vpunpcklqdq xmm6,xmm6,xmm11
    23a8d3543f35:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    23a8d3543f3f:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    23a8d3543f44:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    23a8d3543f4e:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    23a8d3543f54:	c4 42 49 00 db                                  	vpshufb xmm11,xmm6,xmm11
    23a8d3543f59:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    23a8d3543f5e:	4c 8b 15 cd ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcacd]        # 0x23a8d3540a32
    23a8d3543f65:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d3543f6a:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d3543f6e:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    23a8d3543f72:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    23a8d3543f7c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d3543f81:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    23a8d3543f8b:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    23a8d3543f91:	c4 e2 49 00 db                                  	vpshufb xmm3,xmm6,xmm3
    23a8d3543f96:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d3543f9a:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    23a8d3543fa4:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d3543fa9:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    23a8d3543fb3:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    23a8d3543fb9:	c4 e2 49 00 ed                                  	vpshufb xmm5,xmm6,xmm5
    23a8d3543fbe:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d3543fc2:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    23a8d3543fcc:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d3543fd1:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    23a8d3543fdb:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    23a8d3543fe1:	c4 c2 49 00 f1                                  	vpshufb xmm6,xmm6,xmm9
    23a8d3543fe6:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d3543fea:	83 fb 02                                        	cmp    ebx,0x2
    23a8d3543fed:	0f 8c 14 00 00 00                               	jl     0x23a8d3544007
    23a8d3543ff3:	0f 84 69 00 00 00                               	je     0x23a8d3544062
    23a8d3543ff9:	83 fb 03                                        	cmp    ebx,0x3
    23a8d3543ffc:	0f 84 45 00 00 00                               	je     0x23a8d3544047
    23a8d3544002:	e9 17 00 00 00                                  	jmp    0x23a8d354401e
    23a8d3544007:	83 fb 00                                        	cmp    ebx,0x0
    23a8d354400a:	0f 84 77 00 00 00                               	je     0x23a8d3544087
    23a8d3544010:	83 fb 01                                        	cmp    ebx,0x1
    23a8d3544013:	0f 84 53 00 00 00                               	je     0x23a8d354406c
    23a8d3544019:	e9 00 00 00 00                                  	jmp    0x23a8d354401e
    23a8d354401e:	45 85 e4                                        	test   r12d,r12d
    23a8d3544021:	0f 85 0a 00 00 00                               	jne    0x23a8d3544031
    23a8d3544027:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    23a8d354402c:	e9 5b 00 00 00                                  	jmp    0x23a8d354408c
    23a8d3544031:	4c 8b 15 59 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9559]        # 0x23a8d353d591
    23a8d3544038:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d354403d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d3544042:	e9 45 00 00 00                                  	jmp    0x23a8d354408c
    23a8d3544047:	4c 8b 15 43 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9543]        # 0x23a8d353d591
    23a8d354404e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d3544053:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d3544058:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    23a8d354405d:	e9 2a 00 00 00                                  	jmp    0x23a8d354408c
    23a8d3544062:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    23a8d3544067:	e9 20 00 00 00                                  	jmp    0x23a8d354408c
    23a8d354406c:	4c 8b 15 1e 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff951e]        # 0x23a8d353d591
    23a8d3544073:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d3544078:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d354407d:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    23a8d3544082:	e9 05 00 00 00                                  	jmp    0x23a8d354408c
    23a8d3544087:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    23a8d354408c:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    23a8d3544090:	c5 d0 59 ea                                     	vmulps xmm5,xmm5,xmm2
    23a8d3544094:	c5 c8 59 f2                                     	vmulps xmm6,xmm6,xmm2
    23a8d3544098:	83 f9 02                                        	cmp    ecx,0x2
    23a8d354409b:	0f 8c 14 00 00 00                               	jl     0x23a8d35440b5
    23a8d35440a1:	0f 84 5e 00 00 00                               	je     0x23a8d3544105
    23a8d35440a7:	83 f9 03                                        	cmp    ecx,0x3
    23a8d35440aa:	0f 84 3a 00 00 00                               	je     0x23a8d35440ea
    23a8d35440b0:	e9 17 00 00 00                                  	jmp    0x23a8d35440cc
    23a8d35440b5:	83 f9 00                                        	cmp    ecx,0x0
    23a8d35440b8:	0f 84 6c 00 00 00                               	je     0x23a8d354412a
    23a8d35440be:	83 f9 01                                        	cmp    ecx,0x1
    23a8d35440c1:	0f 84 48 00 00 00                               	je     0x23a8d354410f
    23a8d35440c7:	e9 00 00 00 00                                  	jmp    0x23a8d35440cc
    23a8d35440cc:	85 d2                                           	test   edx,edx
    23a8d35440ce:	0f 84 5b 00 00 00                               	je     0x23a8d354412f
    23a8d35440d4:	4c 8b 15 b6 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94b6]        # 0x23a8d353d591
    23a8d35440db:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d35440e0:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d35440e5:	e9 45 00 00 00                                  	jmp    0x23a8d354412f
    23a8d35440ea:	4c 8b 15 a0 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94a0]        # 0x23a8d353d591
    23a8d35440f1:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d35440f6:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d35440fb:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    23a8d3544100:	e9 2a 00 00 00                                  	jmp    0x23a8d354412f
    23a8d3544105:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    23a8d354410a:	e9 20 00 00 00                                  	jmp    0x23a8d354412f
    23a8d354410f:	4c 8b 15 7b 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947b]        # 0x23a8d353d591
    23a8d3544116:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d354411b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d3544120:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    23a8d3544125:	e9 05 00 00 00                                  	jmp    0x23a8d354412f
    23a8d354412a:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    23a8d354412f:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    23a8d3544134:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    23a8d3544139:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    23a8d354413e:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    23a8d3544143:	c4 41 60 59 da                                  	vmulps xmm11,xmm3,xmm10
    23a8d3544148:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    23a8d354414d:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    23a8d3544152:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    23a8d3544157:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    23a8d354415c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    23a8d3544161:	c4 c1 48 59 f2                                  	vmulps xmm6,xmm6,xmm10
    23a8d3544166:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    23a8d354416a:	44 8b e6                                        	mov    r12d,esi
    23a8d354416d:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    23a8d3544173:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d3544177:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    23a8d354417b:	4c 8b 15 0f 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff940f]        # 0x23a8d353d591
    23a8d3544182:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    23a8d3544187:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    23a8d354418c:	4c 8b 15 fe 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff93fe]        # 0x23a8d353d591
    23a8d3544193:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    23a8d3544198:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    23a8d354419d:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    23a8d35441a3:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    23a8d35441a8:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    23a8d35441ad:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    23a8d35441b2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    23a8d35441b7:	c4 c1 38 c2 d3 01                               	vcmpltps xmm2,xmm8,xmm11
    23a8d35441bd:	c4 41 68 55 c0                                  	vandnps xmm8,xmm2,xmm8
    23a8d35441c2:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    23a8d35441cc:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d35441d1:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d35441d5:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    23a8d35441d9:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    23a8d35441df:	4c 8b 15 f8 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7df8]        # 0x23a8d353bfde
    23a8d35441e6:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    23a8d35441ec:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    23a8d35441f1:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    23a8d35441f7:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    23a8d35441fc:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    23a8d3544201:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    23a8d3544206:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    23a8d354420b:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    23a8d3544211:	c5 a8 c2 df 01                                  	vcmpltps xmm3,xmm10,xmm7
    23a8d3544216:	c5 61 df ff                                     	vpandn xmm15,xmm3,xmm7
    23a8d354421a:	c5 b1 db fb                                     	vpand  xmm7,xmm9,xmm3
    23a8d354421e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d3544223:	c4 c1 40 c2 db 01                               	vcmpltps xmm3,xmm7,xmm11
    23a8d3544229:	c5 e0 55 ff                                     	vandnps xmm7,xmm3,xmm7
    23a8d354422d:	c5 c0 59 fa                                     	vmulps xmm7,xmm7,xmm2
    23a8d3544231:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    23a8d3544237:	4c 8b 15 a0 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7da0]        # 0x23a8d353bfde
    23a8d354423e:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    23a8d3544243:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    23a8d3544248:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    23a8d354424e:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    23a8d3544252:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    23a8d3544257:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    23a8d354425b:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    23a8d354425f:	c4 e3 41 0e fe fc                               	vpblendw xmm7,xmm7,xmm6,0xfc
    23a8d3544265:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    23a8d3544269:	c5 28 c2 c0 01                                  	vcmpltps xmm8,xmm10,xmm0
    23a8d354426e:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    23a8d3544272:	c4 c1 31 db c0                                  	vpand  xmm0,xmm9,xmm8
    23a8d3544277:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d354427c:	c4 41 78 c2 c3 01                               	vcmpltps xmm8,xmm0,xmm11
    23a8d3544282:	c5 b8 55 c0                                     	vandnps xmm0,xmm8,xmm0
    23a8d3544286:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    23a8d354428a:	c4 e3 79 08 c0 08                               	vroundps xmm0,xmm0,0x8
    23a8d3544290:	4c 8b 15 47 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7d47]        # 0x23a8d353bfde
    23a8d3544297:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    23a8d354429c:	c4 c1 78 54 c7                                  	vandps xmm0,xmm0,xmm15
    23a8d35442a1:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    23a8d35442a7:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    23a8d35442ab:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    23a8d35442b0:	c5 f9 6b c0                                     	vpackssdw xmm0,xmm0,xmm0
    23a8d35442b4:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    23a8d35442b8:	c4 e3 79 0e c6 fc                               	vpblendw xmm0,xmm0,xmm6,0xfc
    23a8d35442be:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    23a8d35442c4:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    23a8d35442c9:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    23a8d35442ce:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    23a8d35442d3:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    23a8d35442d9:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    23a8d35442de:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    23a8d35442e2:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    23a8d35442e8:	4c 8b 15 ef 7c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7cef]        # 0x23a8d353bfde
    23a8d35442ef:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    23a8d35442f5:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    23a8d35442fa:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    23a8d3544300:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    23a8d3544305:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    23a8d354430a:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    23a8d354430f:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    23a8d3544314:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    23a8d354431a:	c4 c1 79 60 c0                                  	vpunpcklbw xmm0,xmm0,xmm8
    23a8d354431f:	c5 c1 61 c0                                     	vpunpcklwd xmm0,xmm7,xmm0
    23a8d3544323:	c4 81 7a 6f bc 18 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x520]
    23a8d354432d:	c5 c1 76 fe                                     	vpcmpeqd xmm7,xmm7,xmm6
    23a8d3544331:	c4 c3 79 16 ff 01                               	vpextrd r15d,xmm7,0x1
    23a8d3544337:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    23a8d354433c:	33 d2                                           	xor    edx,edx
    23a8d354433e:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d3544342:	0f 45 da                                        	cmovne ebx,edx
    23a8d3544345:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    23a8d354434a:	b9 ff 00 00 00                                  	mov    ecx,0xff
    23a8d354434f:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d3544353:	0f 45 ca                                        	cmovne ecx,edx
    23a8d3544356:	0b cb                                           	or     ecx,ebx
    23a8d3544358:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    23a8d354435e:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    23a8d3544363:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d3544367:	0f 45 da                                        	cmovne ebx,edx
    23a8d354436a:	0b d9                                           	or     ebx,ecx
    23a8d354436c:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    23a8d3544372:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    23a8d3544377:	41 f6 c7 01                                     	test   r15b,0x1
    23a8d354437b:	0f 45 ca                                        	cmovne ecx,edx
    23a8d354437e:	0b cb                                           	or     ecx,ebx
    23a8d3544380:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    23a8d3544384:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    23a8d3544389:	44 8b fe                                        	mov    r15d,esi
    23a8d354438c:	41 83 e7 01                                     	and    r15d,0x1
    23a8d3544390:	41 f7 df                                        	neg    r15d
    23a8d3544393:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    23a8d3544398:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    23a8d354439d:	44 8b fe                                        	mov    r15d,esi
    23a8d35443a0:	41 c1 e7 1e                                     	shl    r15d,0x1e
    23a8d35443a4:	41 c1 ff 1f                                     	sar    r15d,0x1f
    23a8d35443a8:	c4 43 39 22 c7 01                               	vpinsrd xmm8,xmm8,r15d,0x1
    23a8d35443ae:	44 8b fe                                        	mov    r15d,esi
    23a8d35443b1:	41 c1 e7 1d                                     	shl    r15d,0x1d
    23a8d35443b5:	41 c1 ff 1f                                     	sar    r15d,0x1f
    23a8d35443b9:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    23a8d35443bf:	44 8b fe                                        	mov    r15d,esi
    23a8d35443c2:	41 c1 e7 1c                                     	shl    r15d,0x1c
    23a8d35443c6:	41 c1 ff 1f                                     	sar    r15d,0x1f
    23a8d35443ca:	c4 43 39 22 c7 03                               	vpinsrd xmm8,xmm8,r15d,0x3
    23a8d35443d0:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    23a8d35443d5:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    23a8d35443da:	45 03 e7                                        	add    r12d,r15d
    23a8d35443dd:	c4 01 7b 10 04 20                               	vmovsd xmm8,QWORD PTR [r8+r12*1]
    23a8d35443e3:	8b 9d 00 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x100]
    23a8d35443e9:	3b df                                           	cmp    ebx,edi
    23a8d35443eb:	0f 8e 0a 00 00 00                               	jle    0x23a8d35443fb
    23a8d35443f1:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    23a8d35443f5:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    23a8d35443fb:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    23a8d35443ff:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    23a8d3544403:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    23a8d3544407:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d354440c:	40 f6 c6 03                                     	test   sil,0x3
    23a8d3544410:	0f 84 06 00 00 00                               	je     0x23a8d354441c
    23a8d3544416:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    23a8d354441c:	3b df                                           	cmp    ebx,edi
    23a8d354441e:	0f 8e 74 f9 ff ff                               	jle    0x23a8d3543d98
    23a8d3544424:	40 f6 c6 0c                                     	test   sil,0xc
    23a8d3544428:	0f 84 6a f9 ff ff                               	je     0x23a8d3543d98
    23a8d354442e:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    23a8d3544433:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    23a8d3544437:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    23a8d354443b:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    23a8d3544441:	4d 8b e0                                        	mov    r12,r8
    23a8d3544444:	4d 8b c3                                        	mov    r8,r11
    23a8d3544447:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d354444c:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d3544451:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d3544457:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d354445d:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3544462:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d354446a:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3544472:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d3544478:	e9 ad 02 00 00                                  	jmp    0x23a8d354472a
    23a8d354447d:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    23a8d3544483:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d3544487:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    23a8d354448f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    23a8d3544497:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    23a8d354449f:	40 f6 c6 01                                     	test   sil,0x1
    23a8d35444a3:	0f 84 9d 00 00 00                               	je     0x23a8d3544546
    23a8d35444a9:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    23a8d35444b1:	c5 78 28 d6                                     	vmovaps xmm10,xmm6
    23a8d35444b5:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    23a8d35444ba:	c5 f8 28 df                                     	vmovaps xmm3,xmm7
    23a8d35444be:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    23a8d35444c2:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    23a8d35444c7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35444cb:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d35444ce:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d35444d4:	41 8b c9                                        	mov    ecx,r9d
    23a8d35444d7:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    23a8d35444dc:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    23a8d35444e1:	e8 7a 7d f0 ff                                  	call   0x23a8d344c260
    23a8d35444e6:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d35444ea:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d35444ee:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    23a8d35444f4:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    23a8d35444fc:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    23a8d3544504:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    23a8d354450c:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    23a8d3544514:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    23a8d354451a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d354451e:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    23a8d3544526:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    23a8d354452e:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    23a8d3544536:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d354453e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d3544546:	40 f6 c6 02                                     	test   sil,0x2
    23a8d354454a:	0f 84 9d 00 00 00                               	je     0x23a8d35445ed
    23a8d3544550:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    23a8d3544558:	c5 7a 16 d6                                     	vmovshdup xmm10,xmm6
    23a8d354455c:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    23a8d3544561:	c5 fa 16 df                                     	vmovshdup xmm3,xmm7
    23a8d3544565:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    23a8d3544569:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    23a8d354456e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d3544572:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3544575:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    23a8d354457b:	41 8b c9                                        	mov    ecx,r9d
    23a8d354457e:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    23a8d3544583:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    23a8d3544588:	e8 d3 7c f0 ff                                  	call   0x23a8d344c260
    23a8d354458d:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d3544591:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d3544595:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    23a8d354459b:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    23a8d35445a3:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    23a8d35445ab:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    23a8d35445b3:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    23a8d35445bb:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    23a8d35445c1:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d35445c5:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    23a8d35445cd:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    23a8d35445d5:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    23a8d35445dd:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d35445e5:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d35445ed:	40 f6 c6 04                                     	test   sil,0x4
    23a8d35445f1:	0f 84 a1 00 00 00                               	je     0x23a8d3544698
    23a8d35445f7:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    23a8d35445ff:	c5 79 70 d6 02                                  	vpshufd xmm10,xmm6,0x2
    23a8d3544604:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    23a8d354460a:	c5 f9 70 df 02                                  	vpshufd xmm3,xmm7,0x2
    23a8d354460f:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    23a8d3544614:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    23a8d354461a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354461e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3544621:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    23a8d3544627:	8b cf                                           	mov    ecx,edi
    23a8d3544629:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    23a8d354462e:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    23a8d3544633:	e8 28 7c f0 ff                                  	call   0x23a8d344c260
    23a8d3544638:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    23a8d354463c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d3544640:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    23a8d3544646:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    23a8d354464e:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    23a8d3544656:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    23a8d354465e:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    23a8d3544666:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    23a8d354466c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3544670:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    23a8d3544678:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    23a8d3544680:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    23a8d3544688:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d3544690:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d3544698:	40 f6 c6 08                                     	test   sil,0x8
    23a8d354469c:	0f 84 f6 f6 ff ff                               	je     0x23a8d3543d98
    23a8d35446a2:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    23a8d35446aa:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    23a8d35446af:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    23a8d35446b5:	c5 f9 70 df 03                                  	vpshufd xmm3,xmm7,0x3
    23a8d35446ba:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    23a8d35446bf:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    23a8d35446c5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35446c9:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d35446cc:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    23a8d35446d2:	8b cf                                           	mov    ecx,edi
    23a8d35446d4:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d35446d8:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    23a8d35446dc:	e8 7f 7b f0 ff                                  	call   0x23a8d344c260
    23a8d35446e1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    23a8d35446e5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d35446ea:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    23a8d35446ee:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d35446f3:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d35446f9:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d35446ff:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3544704:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    23a8d354470c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3544714:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d354471c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d3544724:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d354472a:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    23a8d3544731:	48 2b bd 38 ff ff ff                            	sub    rdi,QWORD PTR [rbp-0xc8]
    23a8d3544738:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    23a8d354473f:	48 2b b5 48 ff ff ff                            	sub    rsi,QWORD PTR [rbp-0xb8]
    23a8d3544746:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    23a8d354474d:	48 2b 85 58 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa8]
    23a8d3544754:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    23a8d354475b:	41 83 c3 02                                     	add    r11d,0x2
    23a8d354475f:	44 3b 9d 70 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0x90]
    23a8d3544766:	0f 8c 54 85 ff ff                               	jl     0x23a8d353ccc0
    23a8d354476c:	48 8b bd 78 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x88]
    23a8d3544773:	48 8b b5 38 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3c8]
    23a8d354477a:	48 03 f7                                        	add    rsi,rdi
    23a8d354477d:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    23a8d3544781:	4c 8b bd 10 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xf0]
    23a8d3544788:	4d 03 fb                                        	add    r15,r11
    23a8d354478b:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
    23a8d354478f:	48 8b 9d 80 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x380]
    23a8d3544796:	48 03 d8                                        	add    rbx,rax
    23a8d3544799:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d354479d:	41 83 c1 02                                     	add    r9d,0x2
    23a8d35447a1:	44 3b 4d 98                                     	cmp    r9d,DWORD PTR [rbp-0x68]
    23a8d35447a5:	0f 8c 55 84 ff ff                               	jl     0x23a8d353cc00
    23a8d35447ab:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d35447ae:	81 c7 00 02 00 00                               	add    edi,0x200
    23a8d35447b4:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    23a8d35447b8:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    23a8d35447bc:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    23a8d35447c1:	48 8b e5                                        	mov    rsp,rbp
    23a8d35447c4:	5d                                              	pop    rbp
    23a8d35447c5:	c2 10 00                                        	ret    0x10
    23a8d35447c8:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    23a8d35447cf:	0f 84 17 00 00 00                               	je     0x23a8d35447ec
    23a8d35447d5:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    23a8d35447db:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    23a8d35447e0:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    23a8d35447e6:	0f 85 40 00 00 00                               	jne    0x23a8d354482c
    23a8d35447ec:	c5 79 7e df                                     	vmovd  edi,xmm11
    23a8d35447f0:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    23a8d35447f6:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    23a8d35447f9:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    23a8d35447fc:	41 51                                           	push   r9
    23a8d35447fe:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    23a8d3544801:	41 53                                           	push   r11
    23a8d3544803:	57                                              	push   rdi
    23a8d3544804:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    23a8d3544807:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    23a8d354480a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354480e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3544811:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d3544814:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    23a8d3544817:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d354481a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    23a8d354481e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d3544822:	e8 f9 7c f0 ff                                  	call   0x23a8d344c520
    23a8d3544827:	e9 df 00 00 00                                  	jmp    0x23a8d354490b
    23a8d354482c:	c5 79 7e df                                     	vmovd  edi,xmm11
    23a8d3544830:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    23a8d3544836:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    23a8d3544839:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    23a8d354483c:	41 51                                           	push   r9
    23a8d354483e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    23a8d3544841:	41 53                                           	push   r11
    23a8d3544843:	57                                              	push   rdi
    23a8d3544844:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    23a8d3544847:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    23a8d354484a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d354484e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d3544851:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d3544854:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    23a8d3544857:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d354485a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    23a8d354485e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d3544862:	e8 d1 7c f0 ff                                  	call   0x23a8d344c538
    23a8d3544867:	e9 9f 00 00 00                                  	jmp    0x23a8d354490b
    23a8d354486c:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    23a8d3544873:	0f 84 17 00 00 00                               	je     0x23a8d3544890
    23a8d3544879:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    23a8d354487f:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    23a8d3544884:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    23a8d354488a:	0f 85 40 00 00 00                               	jne    0x23a8d35448d0
    23a8d3544890:	c5 79 7e df                                     	vmovd  edi,xmm11
    23a8d3544894:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    23a8d354489a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    23a8d354489d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    23a8d35448a0:	41 51                                           	push   r9
    23a8d35448a2:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    23a8d35448a5:	41 53                                           	push   r11
    23a8d35448a7:	57                                              	push   rdi
    23a8d35448a8:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    23a8d35448ab:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    23a8d35448ae:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35448b2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d35448b5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d35448b8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    23a8d35448bb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d35448be:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    23a8d35448c2:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d35448c6:	e8 75 7c f0 ff                                  	call   0x23a8d344c540
    23a8d35448cb:	e9 3b 00 00 00                                  	jmp    0x23a8d354490b
    23a8d35448d0:	c5 79 7e df                                     	vmovd  edi,xmm11
    23a8d35448d4:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    23a8d35448da:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    23a8d35448dd:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    23a8d35448e0:	41 51                                           	push   r9
    23a8d35448e2:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    23a8d35448e5:	41 53                                           	push   r11
    23a8d35448e7:	57                                              	push   rdi
    23a8d35448e8:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    23a8d35448eb:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    23a8d35448ee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35448f2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d35448f5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d35448f8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    23a8d35448fb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d35448fe:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    23a8d3544902:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d3544906:	e8 3d 7c f0 ff                                  	call   0x23a8d344c548
    23a8d354490b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d354490f:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    23a8d3544913:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    23a8d3544918:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    23a8d354491e:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    23a8d3544924:	41 0f 45 c3                                     	cmovne eax,r11d
    23a8d3544928:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d354492c:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    23a8d3544933:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    23a8d3544937:	41 89 7c 24 07                                  	mov    DWORD PTR [r12+0x7],edi
    23a8d354493c:	48 8b e5                                        	mov    rsp,rbp
    23a8d354493f:	5d                                              	pop    rbp
    23a8d3544940:	c2 10 00                                        	ret    0x10
    23a8d3544943:	43 8b 7c 20 58                                  	mov    edi,DWORD PTR [r8+r12*1+0x58]
    23a8d3544948:	bf 01 00 00 00                                  	mov    edi,0x1
    23a8d354494d:	41 bf ff ff ff ff                               	mov    r15d,0xffffffff
    23a8d3544953:	43 83 7c 20 58 00                               	cmp    DWORD PTR [r8+r12*1+0x58],0x0
    23a8d3544959:	41 0f 45 ff                                     	cmovne edi,r15d
    23a8d354495d:	45 8d 83 00 02 00 00                            	lea    r8d,[r11+0x200]
    23a8d3544964:	44 89 41 07                                     	mov    DWORD PTR [rcx+0x7],r8d
    23a8d3544968:	8b c7                                           	mov    eax,edi
    23a8d354496a:	48 8b e5                                        	mov    rsp,rbp
    23a8d354496d:	5d                                              	pop    rbp
    23a8d354496e:	c2 10 00                                        	ret    0x10
    23a8d3544971:	41 b8 80 00 00 00                               	mov    r8d,0x80
    23a8d3544977:	41 d1 f8                                        	sar    r8d,1
    23a8d354497a:	4d 63 c0                                        	movsxd r8,r8d
    23a8d354497d:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    23a8d3544981:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    23a8d3544985:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    23a8d3544989:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    23a8d354498d:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    23a8d3544995:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    23a8d3544999:	49 8b c0                                        	mov    rax,r8
    23a8d354499c:	e8 8f a5 f0 ff                                  	call   0x23a8d344ef30
    23a8d35449a1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d35449a5:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    23a8d35449a8:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    23a8d35449ab:	8b 7d b8                                        	mov    edi,DWORD PTR [rbp-0x48]
    23a8d35449ae:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    23a8d35449b1:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    23a8d35449b9:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    23a8d35449bd:	e9 5c 75 ff ff                                  	jmp    0x23a8d353bf1e
    23a8d35449c2:	e8 79 a5 f0 ff                                  	call   0x23a8d344ef40
    23a8d35449c7:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d35449cc:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    23a8d35449d0:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d35449d5:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d35449db:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d35449e1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d35449e6:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    23a8d35449ee:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d35449f6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d35449fe:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d3544a06:	e9 21 82 ff ff                                  	jmp    0x23a8d353cc2c
    23a8d3544a0b:	e8 30 a5 f0 ff                                  	call   0x23a8d344ef40
    23a8d3544a10:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    23a8d3544a15:	44 8b 85 68 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x98]
    23a8d3544a1c:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    23a8d3544a23:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    23a8d3544a28:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    23a8d3544a2e:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    23a8d3544a34:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3544a39:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    23a8d3544a40:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    23a8d3544a48:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3544a50:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d3544a58:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d3544a60:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    23a8d3544a67:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    23a8d3544a6d:	e9 8a 82 ff ff                                  	jmp    0x23a8d353ccfc
    23a8d3544a72:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    23a8d3544a7a:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    23a8d3544a81:	e8 ba a4 f0 ff                                  	call   0x23a8d344ef40
    23a8d3544a86:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    23a8d3544a8a:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    23a8d3544a8e:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    23a8d3544a93:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    23a8d3544a97:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    23a8d3544a9d:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d3544aa1:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    23a8d3544aa5:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    23a8d3544aaa:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    23a8d3544aaf:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    23a8d3544ab4:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    23a8d3544abb:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    23a8d3544ac2:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    23a8d3544ac9:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    23a8d3544ad1:	8b bd 08 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1f8]
    23a8d3544ad7:	c5 fb 10 b5 28 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x1d8]
    23a8d3544adf:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    23a8d3544ae7:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    23a8d3544aef:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    23a8d3544af7:	e9 13 b0 ff ff                                  	jmp    0x23a8d353fb0f
    23a8d3544afc:	e8 3f a4 f0 ff                                  	call   0x23a8d344ef40
    23a8d3544b01:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d3544b05:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    23a8d3544b08:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d3544b0c:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    23a8d3544b13:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    23a8d3544b1b:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    23a8d3544b23:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    23a8d3544b2b:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    23a8d3544b33:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    23a8d3544b3b:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    23a8d3544b43:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    23a8d3544b4b:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    23a8d3544b53:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    23a8d3544b5a:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    23a8d3544b60:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    23a8d3544b67:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    23a8d3544b6e:	e9 a5 b4 ff ff                                  	jmp    0x23a8d3540018
    23a8d3544b73:	e8 c8 a3 f0 ff                                  	call   0x23a8d344ef40
    23a8d3544b78:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    23a8d3544b7b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d3544b7f:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    23a8d3544b85:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    23a8d3544b8c:	e9 8e c4 ff ff                                  	jmp    0x23a8d354101f
    23a8d3544b91:	e8 aa a3 f0 ff                                  	call   0x23a8d344ef40
    23a8d3544b96:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    23a8d3544b9a:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    23a8d3544b9e:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    23a8d3544ba5:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    23a8d3544bac:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    23a8d3544bb2:	e9 f1 d8 ff ff                                  	jmp    0x23a8d35424a8
    23a8d3544bb7:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    23a8d3544bbf:	c5 78 11 9d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm11
    23a8d3544bc7:	c5 f8 11 ad 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm5
    23a8d3544bcf:	c5 f8 11 95 f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm2
    23a8d3544bd7:	4c 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r11
    23a8d3544bde:	48 89 b5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rsi
    23a8d3544be5:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    23a8d3544bec:	e8 4f a3 f0 ff                                  	call   0x23a8d344ef40
    23a8d3544bf1:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    23a8d3544bf5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    23a8d3544bf9:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    23a8d3544c01:	c5 78 10 9d 60 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x1a0]
    23a8d3544c09:	c5 f8 10 ad 40 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1c0]
    23a8d3544c11:	c5 f8 10 95 f0 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x210]
    23a8d3544c19:	8b 85 b0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x150]
    23a8d3544c1f:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    23a8d3544c25:	44 8b 9d 08 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1f8]
    23a8d3544c2c:	8b b5 a0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x260]
    23a8d3544c32:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    23a8d3544c39:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    23a8d3544c3f:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    23a8d3544c47:	e9 0f e6 ff ff                                  	jmp    0x23a8d354325b
    23a8d3544c4c:	8b c8                                           	mov    ecx,eax
    23a8d3544c4e:	33 d2                                           	xor    edx,edx
    23a8d3544c50:	e9 6e e6 ff ff                                  	jmp    0x23a8d35432c3
    23a8d3544c55:	33 d2                                           	xor    edx,edx
    23a8d3544c57:	44 8b c8                                        	mov    r9d,eax
    23a8d3544c5a:	e9 82 e6 ff ff                                  	jmp    0x23a8d35432e1
    23a8d3544c5f:	33 d2                                           	xor    edx,edx
    23a8d3544c61:	8b c8                                           	mov    ecx,eax
    23a8d3544c63:	e9 c3 e6 ff ff                                  	jmp    0x23a8d354332b
    23a8d3544c68:	33 d2                                           	xor    edx,edx
    23a8d3544c6a:	44 8b f8                                        	mov    r15d,eax
    23a8d3544c6d:	e9 d7 e6 ff ff                                  	jmp    0x23a8d3543349
    23a8d3544c72:	e8 d9 9f f0 ff                                  	call   0x23a8d344ec50
    23a8d3544c77:	e8 d4 9f f0 ff                                  	call   0x23a8d344ec50
    23a8d3544c7c:	90                                              	nop
    23a8d3544c7d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    23a8d3544c80:	80 3d 54 d3 a8 23 00                            	cmp    BYTE PTR [rip+0x23a8d354],0x0        # 0x23a8f6fd1fdb
    23a8d3544c87:	00 6e 3d                                        	add    BYTE PTR [rsi+0x3d],ch
    23a8d3544c8a:	54                                              	push   rsp
    23a8d3544c8b:	d3 a8 23 00 00 5c                               	shr    DWORD PTR [rax+0x5c000023],cl
    23a8d3544c91:	3d 54 d3 a8 23                                  	cmp    eax,0x23a8d354
    23a8d3544c96:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544c98:	4a 3d 54 d3 a8 23                               	rex.WX cmp rax,0x23a8d354
    23a8d3544c9e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544ca0:	38 3d 54 d3 a8 23                               	cmp    BYTE PTR [rip+0x23a8d354],bh        # 0x23a8f6fd1ffa
    23a8d3544ca6:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544ca8:	26 3d 54 d3 a8 23                               	es cmp eax,0x23a8d354
    23a8d3544cae:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544cb0:	14 3d                                           	adc    al,0x3d
    23a8d3544cb2:	54                                              	push   rsp
    23a8d3544cb3:	d3 a8 23 00 00 0a                               	shr    DWORD PTR [rax+0xa000023],cl
    23a8d3544cb9:	3b 54 d3 a8                                     	cmp    edx,DWORD PTR [rbx+rdx*8-0x58]
    23a8d3544cbd:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544cbf:	00 05 3b 54 d3 a8                               	add    BYTE PTR [rip+0xffffffffa8d3543b],al        # 0x23a87c27a100
    23a8d3544cc5:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544cc7:	00 fb                                           	add    bl,bh
    23a8d3544cc9:	3a 54 d3 a8                                     	cmp    dl,BYTE PTR [rbx+rdx*8-0x58]
    23a8d3544ccd:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544ccf:	00 f1                                           	add    cl,dh
    23a8d3544cd1:	3a 54 d3 a8                                     	cmp    dl,BYTE PTR [rbx+rdx*8-0x58]
    23a8d3544cd5:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544cd7:	00 e6                                           	add    dh,ah
    23a8d3544cd9:	3a 54 d3 a8                                     	cmp    dl,BYTE PTR [rbx+rdx*8-0x58]
    23a8d3544cdd:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544cdf:	00 dc                                           	add    ah,bl
    23a8d3544ce1:	3a 54 d3 a8                                     	cmp    dl,BYTE PTR [rbx+rdx*8-0x58]
    23a8d3544ce5:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544ce7:	00 d1                                           	add    cl,dl
    23a8d3544ce9:	3a 54 d3 a8                                     	cmp    dl,BYTE PTR [rbx+rdx*8-0x58]
    23a8d3544ced:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544cef:	00 97 2d 54 d3 a8                               	add    BYTE PTR [rdi-0x572cabd3],dl
    23a8d3544cf5:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544cf7:	00 8c 2d 54 d3 a8 23                            	add    BYTE PTR [rbp+rbp*1+0x23a8d354],cl
    23a8d3544cfe:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544d00:	81 2d 54 d3 a8 23 00 00 76 2d                   	sub    DWORD PTR [rip+0x23a8d354],0x2d760000        # 0x23a8f6fd205e
    23a8d3544d0a:	54                                              	push   rsp
    23a8d3544d0b:	d3 a8 23 00 00 6c                               	shr    DWORD PTR [rax+0x6c000023],cl
    23a8d3544d11:	2d 54 d3 a8 23                                  	sub    eax,0x23a8d354
    23a8d3544d16:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544d18:	61                                              	(bad)
    23a8d3544d19:	2d 54 d3 a8 23                                  	sub    eax,0x23a8d354
    23a8d3544d1e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544d20:	57                                              	push   rdi
    23a8d3544d21:	2d 54 d3 a8 23                                  	sub    eax,0x23a8d354
    23a8d3544d26:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544d28:	77 fc                                           	ja     0x23a8d3544d26
    23a8d3544d2a:	53                                              	push   rbx
    23a8d3544d2b:	d3 a8 23 00 00 6c                               	shr    DWORD PTR [rax+0x6c000023],cl
    23a8d3544d31:	fc                                              	cld
    23a8d3544d32:	53                                              	push   rbx
    23a8d3544d33:	d3 a8 23 00 00 56                               	shr    DWORD PTR [rax+0x56000023],cl
    23a8d3544d39:	fc                                              	cld
    23a8d3544d3a:	53                                              	push   rbx
    23a8d3544d3b:	d3 a8 23 00 00 46                               	shr    DWORD PTR [rax+0x46000023],cl
    23a8d3544d41:	fc                                              	cld
    23a8d3544d42:	53                                              	push   rbx
    23a8d3544d43:	d3 a8 23 00 00 36                               	shr    DWORD PTR [rax+0x36000023],cl
    23a8d3544d49:	fc                                              	cld
    23a8d3544d4a:	53                                              	push   rbx
    23a8d3544d4b:	d3 a8 23 00 00 20                               	shr    DWORD PTR [rax+0x20000023],cl
    23a8d3544d51:	fc                                              	cld
    23a8d3544d52:	53                                              	push   rbx
    23a8d3544d53:	d3 a8 23 00 00 10                               	shr    DWORD PTR [rax+0x10000023],cl
    23a8d3544d59:	fc                                              	cld
    23a8d3544d5a:	53                                              	push   rbx
    23a8d3544d5b:	d3 a8 23 00 00 90                               	shr    DWORD PTR [rax-0x6fffffdd],cl
    23a8d3544d61:	fc                                              	cld
    23a8d3544d62:	53                                              	push   rbx
    23a8d3544d63:	d3 a8 23 00 00 d7                               	shr    DWORD PTR [rax-0x28ffffdd],cl
    23a8d3544d69:	ef                                              	out    dx,eax
    23a8d3544d6a:	53                                              	push   rbx
    23a8d3544d6b:	d3 a8 23 00 00 8b                               	shr    DWORD PTR [rax-0x74ffffdd],cl
    23a8d3544d71:	f1                                              	int1
    23a8d3544d72:	53                                              	push   rbx
    23a8d3544d73:	d3 a8 23 00 00 75                               	shr    DWORD PTR [rax+0x75000023],cl
    23a8d3544d79:	f1                                              	int1
    23a8d3544d7a:	53                                              	push   rbx
    23a8d3544d7b:	d3 a8 23 00 00 66                               	shr    DWORD PTR [rax+0x66000023],cl
    23a8d3544d81:	f1                                              	int1
    23a8d3544d82:	53                                              	push   rbx
    23a8d3544d83:	d3 a8 23 00 00 56                               	shr    DWORD PTR [rax+0x56000023],cl
    23a8d3544d89:	f1                                              	int1
    23a8d3544d8a:	53                                              	push   rbx
    23a8d3544d8b:	d3 a8 23 00 00 40                               	shr    DWORD PTR [rax+0x40000023],cl
    23a8d3544d91:	f1                                              	int1
    23a8d3544d92:	53                                              	push   rbx
    23a8d3544d93:	d3 a8 23 00 00 30                               	shr    DWORD PTR [rax+0x30000023],cl
    23a8d3544d99:	f1                                              	int1
    23a8d3544d9a:	53                                              	push   rbx
    23a8d3544d9b:	d3 a8 23 00 00 95                               	shr    DWORD PTR [rax-0x6affffdd],cl
    23a8d3544da1:	f1                                              	int1
    23a8d3544da2:	53                                              	push   rbx
    23a8d3544da3:	d3 a8 23 00 00 ca                               	shr    DWORD PTR [rax-0x35ffffdd],cl
    23a8d3544da9:	ef                                              	out    dx,eax
    23a8d3544daa:	53                                              	push   rbx
    23a8d3544dab:	d3 a8 23 00 00 11                               	shr    DWORD PTR [rax+0x11000023],cl
    23a8d3544db1:	e7 53                                           	out    0x53,eax
    23a8d3544db3:	d3 a8 23 00 00 fb                               	shr    DWORD PTR [rax-0x4ffffdd],cl
    23a8d3544db9:	e6 53                                           	out    0x53,al
    23a8d3544dbb:	d3 a8 23 00 00 ec                               	shr    DWORD PTR [rax-0x13ffffdd],cl
    23a8d3544dc1:	e6 53                                           	out    0x53,al
    23a8d3544dc3:	d3 a8 23 00 00 dc                               	shr    DWORD PTR [rax-0x23ffffdd],cl
    23a8d3544dc9:	e6 53                                           	out    0x53,al
    23a8d3544dcb:	d3 a8 23 00 00 c6                               	shr    DWORD PTR [rax-0x39ffffdd],cl
    23a8d3544dd1:	e6 53                                           	out    0x53,al
    23a8d3544dd3:	d3 a8 23 00 00 b6                               	shr    DWORD PTR [rax-0x49ffffdd],cl
    23a8d3544dd9:	e6 53                                           	out    0x53,al
    23a8d3544ddb:	d3 a8 23 00 00 1b                               	shr    DWORD PTR [rax+0x1b000023],cl
    23a8d3544de1:	e7 53                                           	out    0x53,eax
    23a8d3544de3:	d3 a8 23 00 00 43                               	shr    DWORD PTR [rax+0x43000023],cl
    23a8d3544de9:	e5 53                                           	in     eax,0x53
    23a8d3544deb:	d3 a8 23 00 00 86                               	shr    DWORD PTR [rax-0x79ffffdd],cl
    23a8d3544df1:	dc 53 d3                                        	fcom   QWORD PTR [rbx-0x2d]
    23a8d3544df4:	a8 23                                           	test   al,0x23
    23a8d3544df6:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544df8:	70 dc                                           	jo     0x23a8d3544dd6
    23a8d3544dfa:	53                                              	push   rbx
    23a8d3544dfb:	d3 a8 23 00 00 61                               	shr    DWORD PTR [rax+0x61000023],cl
    23a8d3544e01:	dc 53 d3                                        	fcom   QWORD PTR [rbx-0x2d]
    23a8d3544e04:	a8 23                                           	test   al,0x23
    23a8d3544e06:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e08:	51                                              	push   rcx
    23a8d3544e09:	dc 53 d3                                        	fcom   QWORD PTR [rbx-0x2d]
    23a8d3544e0c:	a8 23                                           	test   al,0x23
    23a8d3544e0e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e10:	3b dc                                           	cmp    ebx,esp
    23a8d3544e12:	53                                              	push   rbx
    23a8d3544e13:	d3 a8 23 00 00 2b                               	shr    DWORD PTR [rax+0x2b000023],cl
    23a8d3544e19:	dc 53 d3                                        	fcom   QWORD PTR [rbx-0x2d]
    23a8d3544e1c:	a8 23                                           	test   al,0x23
    23a8d3544e1e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e20:	90                                              	nop
    23a8d3544e21:	dc 53 d3                                        	fcom   QWORD PTR [rbx-0x2d]
    23a8d3544e24:	a8 23                                           	test   al,0x23
    23a8d3544e26:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e28:	5f                                              	pop    rdi
    23a8d3544e29:	da 53 d3                                        	ficom  DWORD PTR [rbx-0x2d]
    23a8d3544e2c:	a8 23                                           	test   al,0x23
    23a8d3544e2e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e30:	aa                                              	stos   BYTE PTR es:[rdi],al
    23a8d3544e31:	d1 53 d3                                        	rcl    DWORD PTR [rbx-0x2d],1
    23a8d3544e34:	a8 23                                           	test   al,0x23
    23a8d3544e36:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e38:	95                                              	xchg   ebp,eax
    23a8d3544e39:	d1 53 d3                                        	rcl    DWORD PTR [rbx-0x2d],1
    23a8d3544e3c:	a8 23                                           	test   al,0x23
    23a8d3544e3e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e40:	86 d1                                           	xchg   cl,dl
    23a8d3544e42:	53                                              	push   rbx
    23a8d3544e43:	d3 a8 23 00 00 77                               	shr    DWORD PTR [rax+0x77000023],cl
    23a8d3544e49:	d1 53 d3                                        	rcl    DWORD PTR [rbx-0x2d],1
    23a8d3544e4c:	a8 23                                           	test   al,0x23
    23a8d3544e4e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e50:	62 d1 53 d3 a8                                  	(bad)
    23a8d3544e55:	23 00                                           	and    eax,DWORD PTR [rax]
    23a8d3544e57:	00 53 d1                                        	add    BYTE PTR [rbx-0x2f],dl
    23a8d3544e5a:	53                                              	push   rbx
    23a8d3544e5b:	d3 a8 23 00 00 b4                               	shr    DWORD PTR [rax-0x4bffffdd],cl
    23a8d3544e61:	d1 53 d3                                        	rcl    DWORD PTR [rbx-0x2d],1
    23a8d3544e64:	a8 23                                           	test   al,0x23
    23a8d3544e66:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e68:	81 00 00 00 1c 00                               	add    DWORD PTR [rax],0x1c0000
    23a8d3544e6e:	00 00                                           	add    BYTE PTR [rax],al
    23a8d3544e70:	91                                              	xchg   ecx,eax
    23a8d3544e71:	01 d7                                           	add    edi,edx
    23a8d3544e73:	03 05 8f 94 02 d7                               	add    eax,DWORD PTR [rip+0xffffffffd702948f]        # 0x23a8aa56e308
    23a8d3544e79:	03 05 26 d7 03 05                               	add    eax,DWORD PTR [rip+0x503d726]        # 0x23a8d85825a5
    23a8d3544e7f:	b0 05                                           	mov    al,0x5
    23a8d3544e81:	d7                                              	xlat   BYTE PTR ds:[rbx]
    23a8d3544e82:	03 05 00 00 00 00                               	add    eax,DWORD PTR [rip+0x0]        # 0x23a8d3544e88
	...
