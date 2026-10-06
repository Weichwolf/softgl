
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms0/selected/sg_packet_sample_cube_coherent-turbofan.bin:     file format binary


Disassembly of section .data:

000005b2ff0a6d00 <.data>:
 5b2ff0a6d00:	55                                              	push   rbp
 5b2ff0a6d01:	48 8b ec                                        	mov    rbp,rsp
 5b2ff0a6d04:	6a 30                                           	push   0x30
 5b2ff0a6d06:	56                                              	push   rsi
 5b2ff0a6d07:	48 83 ec 18                                     	sub    rsp,0x18
 5b2ff0a6d0b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
 5b2ff0a6d0f:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
 5b2ff0a6d13:	45 85 c9                                        	test   r9d,r9d
 5b2ff0a6d16:	0f 85 09 00 00 00                               	jne    0x5b2ff0a6d25
 5b2ff0a6d1c:	33 c0                                           	xor    eax,eax
 5b2ff0a6d1e:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6d21:	5d                                              	pop    rbp
 5b2ff0a6d22:	c2 08 00                                        	ret    0x8
 5b2ff0a6d25:	8b f8                                           	mov    edi,eax
 5b2ff0a6d27:	44 8b 44 3e 04                                  	mov    r8d,DWORD PTR [rsi+rdi*1+0x4]
 5b2ff0a6d2c:	45 85 c0                                        	test   r8d,r8d
 5b2ff0a6d2f:	0f 85 04 00 00 00                               	jne    0x5b2ff0a6d39
 5b2ff0a6d35:	33 c0                                           	xor    eax,eax
 5b2ff0a6d37:	eb e5                                           	jmp    0x5b2ff0a6d1e
 5b2ff0a6d39:	45 8b d9                                        	mov    r11d,r9d
 5b2ff0a6d3c:	41 83 e3 0f                                     	and    r11d,0xf
 5b2ff0a6d40:	8b c9                                           	mov    ecx,ecx
 5b2ff0a6d42:	c5 fa 6f 0c 0e                                  	vmovdqu xmm1,XMMWORD PTR [rsi+rcx*1]
 5b2ff0a6d47:	49 ba 50 08 09 67 4c 63 00 00                   	movabs r10,0x634c67090850
 5b2ff0a6d51:	c4 c1 70 54 12                                  	vandps xmm2,xmm1,XMMWORD PTR [r10]
 5b2ff0a6d56:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
 5b2ff0a6d60:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0a6d65:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0a6d69:	c5 e8 c2 e3 02                                  	vcmpleps xmm4,xmm2,xmm3
 5b2ff0a6d6e:	8b d2                                           	mov    edx,edx
 5b2ff0a6d70:	c5 fa 6f 2c 16                                  	vmovdqu xmm5,XMMWORD PTR [rsi+rdx*1]
 5b2ff0a6d75:	4c 8b 15 cd ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcd]        # 0x5b2ff0a6d49
 5b2ff0a6d7c:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
 5b2ff0a6d81:	c5 c8 c2 fb 02                                  	vcmpleps xmm7,xmm6,xmm3
 5b2ff0a6d86:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
 5b2ff0a6d8a:	8b db                                           	mov    ebx,ebx
 5b2ff0a6d8c:	c5 fa 6f 3c 1e                                  	vmovdqu xmm7,XMMWORD PTR [rsi+rbx*1]
 5b2ff0a6d91:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x5b2ff0a6d49
 5b2ff0a6d98:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
 5b2ff0a6d9d:	c5 b8 c2 db 02                                  	vcmpleps xmm3,xmm8,xmm3
 5b2ff0a6da2:	c5 d9 db db                                     	vpand  xmm3,xmm4,xmm3
 5b2ff0a6da6:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
 5b2ff0a6daa:	41 23 db                                        	and    ebx,r11d
 5b2ff0a6dad:	41 3b d9                                        	cmp    ebx,r9d
 5b2ff0a6db0:	0f 84 09 00 00 00                               	je     0x5b2ff0a6dbf
 5b2ff0a6db6:	33 c0                                           	xor    eax,eax
 5b2ff0a6db8:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6dbb:	5d                                              	pop    rbp
 5b2ff0a6dbc:	c2 08 00                                        	ret    0x8
 5b2ff0a6dbf:	c5 b8 c2 de 02                                  	vcmpleps xmm3,xmm8,xmm6
 5b2ff0a6dc4:	c5 e8 c2 e6 02                                  	vcmpleps xmm4,xmm2,xmm6
 5b2ff0a6dc9:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
 5b2ff0a6dcd:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
 5b2ff0a6dd1:	8b d3                                           	mov    edx,ebx
 5b2ff0a6dd3:	41 23 d1                                        	and    edx,r9d
 5b2ff0a6dd6:	44 3b ca                                        	cmp    r9d,edx
 5b2ff0a6dd9:	0f 84 8c 00 00 00                               	je     0x5b2ff0a6e6b
 5b2ff0a6ddf:	c5 b8 c2 da 02                                  	vcmpleps xmm3,xmm8,xmm2
 5b2ff0a6de4:	c5 c8 c2 e2 02                                  	vcmpleps xmm4,xmm6,xmm2
 5b2ff0a6de9:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
 5b2ff0a6ded:	c5 f8 50 cb                                     	vmovmskps ecx,xmm3
 5b2ff0a6df1:	44 8b e3                                        	mov    r12d,ebx
 5b2ff0a6df4:	41 83 f4 ff                                     	xor    r12d,0xffffffff
 5b2ff0a6df8:	45 23 e1                                        	and    r12d,r9d
 5b2ff0a6dfb:	44 23 e1                                        	and    r12d,ecx
 5b2ff0a6dfe:	45 3b e1                                        	cmp    r12d,r9d
 5b2ff0a6e01:	0f 84 42 00 00 00                               	je     0x5b2ff0a6e49
 5b2ff0a6e07:	0b d9                                           	or     ebx,ecx
 5b2ff0a6e09:	41 85 d9                                        	test   r9d,ebx
 5b2ff0a6e0c:	0f 85 2e 00 00 00                               	jne    0x5b2ff0a6e40
 5b2ff0a6e12:	49 ba 60 08 09 67 4c 63 00 00                   	movabs r10,0x634c67090860
 5b2ff0a6e1c:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
 5b2ff0a6e21:	bb 04 00 00 00                                  	mov    ebx,0x4
 5b2ff0a6e26:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
 5b2ff0a6e2b:	33 c9                                           	xor    ecx,ecx
 5b2ff0a6e2d:	41 bc 01 00 00 00                               	mov    r12d,0x1
 5b2ff0a6e33:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
 5b2ff0a6e37:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
 5b2ff0a6e3b:	e9 4a 00 00 00                                  	jmp    0x5b2ff0a6e8a
 5b2ff0a6e40:	33 c0                                           	xor    eax,eax
 5b2ff0a6e42:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6e45:	5d                                              	pop    rbp
 5b2ff0a6e46:	c2 08 00                                        	ret    0x8
 5b2ff0a6e49:	bb 02 00 00 00                                  	mov    ebx,0x2
 5b2ff0a6e4e:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
 5b2ff0a6e52:	b9 01 00 00 00                                  	mov    ecx,0x1
 5b2ff0a6e57:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0a6e5a:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
 5b2ff0a6e5e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
 5b2ff0a6e62:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
 5b2ff0a6e66:	e9 1f 00 00 00                                  	jmp    0x5b2ff0a6e8a
 5b2ff0a6e6b:	4c 8b 15 a2 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa2]        # 0x5b2ff0a6e14
 5b2ff0a6e72:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
 5b2ff0a6e77:	4c 8b 15 96 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff96]        # 0x5b2ff0a6e14
 5b2ff0a6e7e:	c4 c1 40 57 12                                  	vxorps xmm2,xmm7,XMMWORD PTR [r10]
 5b2ff0a6e83:	33 c9                                           	xor    ecx,ecx
 5b2ff0a6e85:	8b d9                                           	mov    ebx,ecx
 5b2ff0a6e87:	44 8b e1                                        	mov    r12d,ecx
 5b2ff0a6e8a:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
 5b2ff0a6e8e:	c5 e0 c2 e5 02                                  	vcmpleps xmm4,xmm3,xmm5
 5b2ff0a6e93:	c5 78 50 fc                                     	vmovmskps r15d,xmm4
 5b2ff0a6e97:	45 23 fb                                        	and    r15d,r11d
 5b2ff0a6e9a:	0f 85 58 00 00 00                               	jne    0x5b2ff0a6ef8
 5b2ff0a6ea0:	4c 8b 15 6d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff6d]        # 0x5b2ff0a6e14
 5b2ff0a6ea7:	c4 c1 70 57 22                                  	vxorps xmm4,xmm1,XMMWORD PTR [r10]
 5b2ff0a6eac:	85 c9                                           	test   ecx,ecx
 5b2ff0a6eae:	0f 85 04 00 00 00                               	jne    0x5b2ff0a6eb8
 5b2ff0a6eb4:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
 5b2ff0a6eb8:	4c 8b 15 55 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff55]        # 0x5b2ff0a6e14
 5b2ff0a6ebf:	c4 c1 68 57 0a                                  	vxorps xmm1,xmm2,XMMWORD PTR [r10]
 5b2ff0a6ec4:	45 85 e4                                        	test   r12d,r12d
 5b2ff0a6ec7:	0f 84 04 00 00 00                               	je     0x5b2ff0a6ed1
 5b2ff0a6ecd:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
 5b2ff0a6ed1:	41 3b d1                                        	cmp    edx,r9d
 5b2ff0a6ed4:	0f 84 04 00 00 00                               	je     0x5b2ff0a6ede
 5b2ff0a6eda:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
 5b2ff0a6ede:	83 cb 01                                        	or     ebx,0x1
 5b2ff0a6ee1:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff0a6ee6:	85 c9                                           	test   ecx,ecx
 5b2ff0a6ee8:	0f 45 da                                        	cmovne ebx,edx
 5b2ff0a6eeb:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
 5b2ff0a6eef:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
 5b2ff0a6ef3:	e9 12 00 00 00                                  	jmp    0x5b2ff0a6f0a
 5b2ff0a6ef8:	45 3b f9                                        	cmp    r15d,r9d
 5b2ff0a6efb:	0f 84 09 00 00 00                               	je     0x5b2ff0a6f0a
 5b2ff0a6f01:	33 c0                                           	xor    eax,eax
 5b2ff0a6f03:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6f06:	5d                                              	pop    rbp
 5b2ff0a6f07:	c2 08 00                                        	ret    0x8
 5b2ff0a6f0a:	c1 e3 06                                        	shl    ebx,0x6
 5b2ff0a6f0d:	41 03 d8                                        	add    ebx,r8d
 5b2ff0a6f10:	8b 94 1e 24 01 00 00                            	mov    edx,DWORD PTR [rsi+rbx*1+0x124]
 5b2ff0a6f17:	85 d2                                           	test   edx,edx
 5b2ff0a6f19:	0f 85 09 00 00 00                               	jne    0x5b2ff0a6f28
 5b2ff0a6f1f:	33 c0                                           	xor    eax,eax
 5b2ff0a6f21:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a6f24:	5d                                              	pop    rbp
 5b2ff0a6f25:	c2 08 00                                        	ret    0x8
 5b2ff0a6f28:	8b 8c 1e a4 02 00 00                            	mov    ecx,DWORD PTR [rsi+rbx*1+0x2a4]
 5b2ff0a6f2f:	85 c9                                           	test   ecx,ecx
 5b2ff0a6f31:	0f 8e a2 0e 00 00                               	jle    0x5b2ff0a7dd9
 5b2ff0a6f37:	81 c3 24 04 00 00                               	add    ebx,0x424
 5b2ff0a6f3d:	8b 1c 1e                                        	mov    ebx,DWORD PTR [rsi+rbx*1]
 5b2ff0a6f40:	85 db                                           	test   ebx,ebx
 5b2ff0a6f42:	0f 8e 88 0e 00 00                               	jle    0x5b2ff0a7dd0
 5b2ff0a6f48:	44 8d 41 ff                                     	lea    r8d,[rcx-0x1]
 5b2ff0a6f4c:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
 5b2ff0a6f56:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
 5b2ff0a6f5b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
 5b2ff0a6f5f:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x5b2ff0a6f4e
 5b2ff0a6f66:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0a6f6b:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff0a6f6f:	c5 c8 c2 ed 01                                  	vcmpltps xmm5,xmm6,xmm5
 5b2ff0a6f74:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
 5b2ff0a6f78:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
 5b2ff0a6f7c:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
 5b2ff0a6f81:	c5 f0 5e cc                                     	vdivps xmm1,xmm1,xmm4
 5b2ff0a6f85:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
 5b2ff0a6f8f:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0a6f94:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff0a6f98:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
 5b2ff0a6f9c:	c5 e8 5e d4                                     	vdivps xmm2,xmm2,xmm4
 5b2ff0a6fa0:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
 5b2ff0a6fa4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
 5b2ff0a6fae:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
 5b2ff0a6fb3:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
 5b2ff0a6fb7:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
 5b2ff0a6fbb:	44 8b 5c 3e 14                                  	mov    r11d,DWORD PTR [rsi+rdi*1+0x14]
 5b2ff0a6fc0:	44 8b 64 3e 10                                  	mov    r12d,DWORD PTR [rsi+rdi*1+0x10]
 5b2ff0a6fc5:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0a6fc8:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
 5b2ff0a6fcf:	41 0f 95 c7                                     	setne  r15b
 5b2ff0a6fd3:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
 5b2ff0a6fda:	41 0f 95 c4                                     	setne  r12b
 5b2ff0a6fde:	45 0f b6 e4                                     	movzx  r12d,r12b
 5b2ff0a6fe2:	48 89 75 e8                                     	mov    QWORD PTR [rbp-0x18],rsi
 5b2ff0a6fe6:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
 5b2ff0a6fea:	48 89 55 d8                                     	mov    QWORD PTR [rbp-0x28],rdx
 5b2ff0a6fee:	45 23 e7                                        	and    r12d,r15d
 5b2ff0a6ff1:	0f 85 0d 00 00 00                               	jne    0x5b2ff0a7004
 5b2ff0a6ff7:	c5 e0 5f d2                                     	vmaxps xmm2,xmm3,xmm2
 5b2ff0a6ffb:	c5 d0 5d d2                                     	vminps xmm2,xmm5,xmm2
 5b2ff0a6fff:	e9 0a 00 00 00                                  	jmp    0x5b2ff0a700e
 5b2ff0a7004:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
 5b2ff0a700a:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
 5b2ff0a700e:	c5 f0 59 cc                                     	vmulps xmm1,xmm1,xmm4
 5b2ff0a7012:	8b 7c 3e 0c                                     	mov    edi,DWORD PTR [rsi+rdi*1+0xc]
 5b2ff0a7016:	44 8b d1                                        	mov    r10d,ecx
 5b2ff0a7019:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
 5b2ff0a701e:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
 5b2ff0a7023:	c5 d8 59 d2                                     	vmulps xmm2,xmm4,xmm2
 5b2ff0a7027:	44 8d 7b ff                                     	lea    r15d,[rbx-0x1]
 5b2ff0a702b:	41 8b f7                                        	mov    esi,r15d
 5b2ff0a702e:	23 f3                                           	and    esi,ebx
 5b2ff0a7030:	33 c0                                           	xor    eax,eax
 5b2ff0a7032:	41 8b d0                                        	mov    edx,r8d
 5b2ff0a7035:	41 85 c8                                        	test   r8d,ecx
 5b2ff0a7038:	0f 45 d0                                        	cmovne edx,eax
 5b2ff0a703b:	44 8b d3                                        	mov    r10d,ebx
 5b2ff0a703e:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
 5b2ff0a7043:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
 5b2ff0a7048:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0a704b:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
 5b2ff0a7052:	41 0f 95 c1                                     	setne  r9b
 5b2ff0a7056:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
 5b2ff0a705d:	41 0f 95 c3                                     	setne  r11b
 5b2ff0a7061:	45 0f b6 db                                     	movzx  r11d,r11b
 5b2ff0a7065:	45 23 d9                                        	and    r11d,r9d
 5b2ff0a7068:	0f 85 0d 00 00 00                               	jne    0x5b2ff0a707b
 5b2ff0a706e:	c5 e0 5f c9                                     	vmaxps xmm1,xmm3,xmm1
 5b2ff0a7072:	c5 d0 5d c9                                     	vminps xmm1,xmm5,xmm1
 5b2ff0a7076:	e9 0a 00 00 00                                  	jmp    0x5b2ff0a7085
 5b2ff0a707b:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
 5b2ff0a7081:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
 5b2ff0a7085:	c5 d8 59 c9                                     	vmulps xmm1,xmm4,xmm1
 5b2ff0a7089:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
 5b2ff0a7093:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0a7098:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0a709c:	c5 f0 58 e3                                     	vaddps xmm4,xmm1,xmm3
 5b2ff0a70a0:	81 ff 00 26 00 00                               	cmp    edi,0x2600
 5b2ff0a70a6:	0f 84 5f 00 00 00                               	je     0x5b2ff0a710b
 5b2ff0a70ac:	c4 e3 79 08 cc 09                               	vroundps xmm1,xmm4,0x9
 5b2ff0a70b2:	4c 8b 15 90 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc90]        # 0x5b2ff0a6d49
 5b2ff0a70b9:	c4 c1 70 54 32                                  	vandps xmm6,xmm1,XMMWORD PTR [r10]
 5b2ff0a70be:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
 5b2ff0a70c8:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a70cd:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a70d1:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
 5b2ff0a70d6:	49 ba 40 09 09 67 4c 63 00 00                   	movabs r10,0x634c67090940
 5b2ff0a70e0:	c5 70 c2 f9 00                                  	vcmpeqps xmm15,xmm1,xmm1
 5b2ff0a70e5:	c4 41 70 54 c7                                  	vandps xmm8,xmm1,xmm15
 5b2ff0a70ea:	c4 41 70 c2 3a 0d                               	vcmpgeps xmm15,xmm1,XMMWORD PTR [r10]
 5b2ff0a70f0:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
 5b2ff0a70f5:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
 5b2ff0a70fa:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
 5b2ff0a70fe:	c5 f9 28 d9                                     	vmovapd xmm3,xmm1
 5b2ff0a7102:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
 5b2ff0a7106:	e9 48 00 00 00                                  	jmp    0x5b2ff0a7153
 5b2ff0a710b:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
 5b2ff0a7111:	4c 8b 15 31 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc31]        # 0x5b2ff0a6d49
 5b2ff0a7118:	c4 c1 60 54 22                                  	vandps xmm4,xmm3,XMMWORD PTR [r10]
 5b2ff0a711d:	4c 8b 15 9c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9c]        # 0x5b2ff0a70c0
 5b2ff0a7124:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a7129:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a712d:	c5 d8 c2 f7 01                                  	vcmpltps xmm6,xmm4,xmm7
 5b2ff0a7132:	4c 8b 15 9f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9f]        # 0x5b2ff0a70d8
 5b2ff0a7139:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
 5b2ff0a713e:	c4 41 60 54 c7                                  	vandps xmm8,xmm3,xmm15
 5b2ff0a7143:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
 5b2ff0a7149:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
 5b2ff0a714e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
 5b2ff0a7153:	c4 e3 79 08 e2 09                               	vroundps xmm4,xmm2,0x9
 5b2ff0a7159:	4c 8b 15 78 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff78]        # 0x5b2ff0a70d8
 5b2ff0a7160:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
 5b2ff0a7165:	c4 41 58 54 cf                                  	vandps xmm9,xmm4,xmm15
 5b2ff0a716a:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
 5b2ff0a7170:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
 5b2ff0a7175:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
 5b2ff0a717a:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
 5b2ff0a7184:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0a7189:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0a718e:	4c 8b 15 b4 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb4]        # 0x5b2ff0a6d49
 5b2ff0a7195:	c4 41 58 54 1a                                  	vandps xmm11,xmm4,XMMWORD PTR [r10]
 5b2ff0a719a:	c5 a0 c2 ff 01                                  	vcmpltps xmm7,xmm11,xmm7
 5b2ff0a719f:	c4 41 41 df fa                                  	vpandn xmm15,xmm7,xmm10
 5b2ff0a71a4:	c5 b1 db ff                                     	vpand  xmm7,xmm9,xmm7
 5b2ff0a71a8:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0a71ad:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
 5b2ff0a71b2:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
 5b2ff0a71b7:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0a71bc:	c4 42 41 3d db                                  	vpmaxsd xmm11,xmm7,xmm11
 5b2ff0a71c1:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
 5b2ff0a71c6:	45 85 e4                                        	test   r12d,r12d
 5b2ff0a71c9:	0f 84 4b 00 00 00                               	je     0x5b2ff0a721a
 5b2ff0a71cf:	c5 79 6e da                                     	vmovd  xmm11,edx
 5b2ff0a71d3:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
 5b2ff0a71d8:	c4 41 41 db db                                  	vpand  xmm11,xmm7,xmm11
 5b2ff0a71dd:	85 d2                                           	test   edx,edx
 5b2ff0a71df:	0f 85 35 00 00 00                               	jne    0x5b2ff0a721a
 5b2ff0a71e5:	c5 79 6e d9                                     	vmovd  xmm11,ecx
 5b2ff0a71e9:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
 5b2ff0a71ee:	c4 41 41 66 e1                                  	vpcmpgtd xmm12,xmm7,xmm9
 5b2ff0a71f3:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
 5b2ff0a71f8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a71fd:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
 5b2ff0a7202:	c5 79 66 ef                                     	vpcmpgtd xmm13,xmm0,xmm7
 5b2ff0a7206:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
 5b2ff0a720b:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
 5b2ff0a7210:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
 5b2ff0a7215:	c4 41 41 fe db                                  	vpaddd xmm11,xmm7,xmm11
 5b2ff0a721a:	45 8b c7                                        	mov    r8d,r15d
 5b2ff0a721d:	85 f6                                           	test   esi,esi
 5b2ff0a721f:	44 0f 45 c0                                     	cmovne r8d,eax
 5b2ff0a7223:	c4 41 49 df fa                                  	vpandn xmm15,xmm6,xmm10
 5b2ff0a7228:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
 5b2ff0a722c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0a7231:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
 5b2ff0a7236:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0a723b:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
 5b2ff0a7240:	c4 42 49 3d d2                                  	vpmaxsd xmm10,xmm6,xmm10
 5b2ff0a7245:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
 5b2ff0a724a:	45 85 db                                        	test   r11d,r11d
 5b2ff0a724d:	0f 84 4b 00 00 00                               	je     0x5b2ff0a729e
 5b2ff0a7253:	c4 41 79 6e d0                                  	vmovd  xmm10,r8d
 5b2ff0a7258:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
 5b2ff0a725d:	c4 41 49 db d2                                  	vpand  xmm10,xmm6,xmm10
 5b2ff0a7262:	45 85 c0                                        	test   r8d,r8d
 5b2ff0a7265:	0f 85 33 00 00 00                               	jne    0x5b2ff0a729e
 5b2ff0a726b:	c5 79 6e d3                                     	vmovd  xmm10,ebx
 5b2ff0a726f:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
 5b2ff0a7274:	c4 41 49 66 e0                                  	vpcmpgtd xmm12,xmm6,xmm8
 5b2ff0a7279:	c4 41 19 db e2                                  	vpand  xmm12,xmm12,xmm10
 5b2ff0a727e:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a7283:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
 5b2ff0a7288:	c5 f9 66 c6                                     	vpcmpgtd xmm0,xmm0,xmm6
 5b2ff0a728c:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
 5b2ff0a7291:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
 5b2ff0a7295:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0a729a:	c5 49 fe d0                                     	vpaddd xmm10,xmm6,xmm0
 5b2ff0a729e:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
 5b2ff0a72a2:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0a72a7:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
 5b2ff0a72ac:	c4 41 29 fe e3                                  	vpaddd xmm12,xmm10,xmm11
 5b2ff0a72b1:	c4 63 79 16 e1 03                               	vpextrd ecx,xmm12,0x3
 5b2ff0a72b7:	c4 63 79 16 e6 02                               	vpextrd esi,xmm12,0x2
 5b2ff0a72bd:	c4 43 79 16 e1 01                               	vpextrd r9d,xmm12,0x1
 5b2ff0a72c3:	c4 41 79 7e e7                                  	vmovd  r15d,xmm12
 5b2ff0a72c8:	81 ff 00 26 00 00                               	cmp    edi,0x2600
 5b2ff0a72ce:	0f 84 d2 08 00 00                               	je     0x5b2ff0a7ba6
 5b2ff0a72d4:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
 5b2ff0a72de:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0a72e3:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0a72e8:	c4 c1 41 fe fc                                  	vpaddd xmm7,xmm7,xmm12
 5b2ff0a72ed:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
 5b2ff0a72f2:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
 5b2ff0a72f7:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
 5b2ff0a72fc:	45 85 e4                                        	test   r12d,r12d
 5b2ff0a72ff:	0f 84 46 00 00 00                               	je     0x5b2ff0a734b
 5b2ff0a7305:	c5 79 6e ea                                     	vmovd  xmm13,edx
 5b2ff0a7309:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0a730e:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
 5b2ff0a7313:	85 d2                                           	test   edx,edx
 5b2ff0a7315:	0f 85 30 00 00 00                               	jne    0x5b2ff0a734b
 5b2ff0a731b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
 5b2ff0a7320:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
 5b2ff0a7325:	c5 31 db c8                                     	vpand  xmm9,xmm9,xmm0
 5b2ff0a7329:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a732e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
 5b2ff0a7333:	c5 11 66 ef                                     	vpcmpgtd xmm13,xmm13,xmm7
 5b2ff0a7337:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
 5b2ff0a733c:	c4 41 79 db cd                                  	vpand  xmm9,xmm0,xmm13
 5b2ff0a7341:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff0a7346:	c4 41 41 fe e9                                  	vpaddd xmm13,xmm7,xmm9
 5b2ff0a734b:	c4 c1 49 fe f4                                  	vpaddd xmm6,xmm6,xmm12
 5b2ff0a7350:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
 5b2ff0a7354:	c4 e2 49 3d ff                                  	vpmaxsd xmm7,xmm6,xmm7
 5b2ff0a7359:	c4 c2 41 39 f8                                  	vpminsd xmm7,xmm7,xmm8
 5b2ff0a735e:	45 85 db                                        	test   r11d,r11d
 5b2ff0a7361:	0f 84 4f 00 00 00                               	je     0x5b2ff0a73b6
 5b2ff0a7367:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
 5b2ff0a736c:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0a7371:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
 5b2ff0a7375:	45 85 c0                                        	test   r8d,r8d
 5b2ff0a7378:	0f 85 38 00 00 00                               	jne    0x5b2ff0a73b6
 5b2ff0a737e:	c5 f9 6e fb                                     	vmovd  xmm7,ebx
 5b2ff0a7382:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0a7387:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0a738c:	c4 41 49 66 c0                                  	vpcmpgtd xmm8,xmm6,xmm8
 5b2ff0a7391:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
 5b2ff0a7395:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0a739a:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
 5b2ff0a739f:	c5 31 66 ce                                     	vpcmpgtd xmm9,xmm9,xmm6
 5b2ff0a73a3:	c4 41 31 df f8                                  	vpandn xmm15,xmm9,xmm8
 5b2ff0a73a8:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
 5b2ff0a73ad:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0a73b2:	c5 c9 fe ff                                     	vpaddd xmm7,xmm6,xmm7
 5b2ff0a73b6:	c4 e2 41 40 c0                                  	vpmulld xmm0,xmm7,xmm0
 5b2ff0a73bb:	c4 c1 79 fe f3                                  	vpaddd xmm6,xmm0,xmm11
 5b2ff0a73c0:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
 5b2ff0a73c4:	0f 85 16 00 00 00                               	jne    0x5b2ff0a73e0
 5b2ff0a73ca:	c4 c1 21 fe fc                                  	vpaddd xmm7,xmm11,xmm12
 5b2ff0a73cf:	c5 91 76 ff                                     	vpcmpeqd xmm7,xmm13,xmm7
 5b2ff0a73d3:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
 5b2ff0a73d7:	83 fb 0f                                        	cmp    ebx,0xf
 5b2ff0a73da:	0f 84 72 03 00 00                               	je     0x5b2ff0a7752
 5b2ff0a73e0:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
 5b2ff0a73e3:	83 e3 08                                        	and    ebx,0x8
 5b2ff0a73e6:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
 5b2ff0a73e9:	83 e2 04                                        	and    edx,0x4
 5b2ff0a73ec:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0a73ef:	83 e7 02                                        	and    edi,0x2
 5b2ff0a73f2:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
 5b2ff0a73f6:	41 83 e0 01                                     	and    r8d,0x1
 5b2ff0a73fa:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
 5b2ff0a73fe:	0f 84 7e 00 00 00                               	je     0x5b2ff0a7482
 5b2ff0a7404:	45 85 c0                                        	test   r8d,r8d
 5b2ff0a7407:	0f 85 10 00 00 00                               	jne    0x5b2ff0a741d
 5b2ff0a740d:	4c 8b d8                                        	mov    r11,rax
 5b2ff0a7410:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
 5b2ff0a7414:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
 5b2ff0a7418:	e9 10 00 00 00                                  	jmp    0x5b2ff0a742d
 5b2ff0a741d:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
 5b2ff0a7421:	47 8d 1c b8                                     	lea    r11d,[r8+r15*4]
 5b2ff0a7425:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
 5b2ff0a7429:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
 5b2ff0a742d:	85 ff                                           	test   edi,edi
 5b2ff0a742f:	0f 85 08 00 00 00                               	jne    0x5b2ff0a743d
 5b2ff0a7435:	48 8b f8                                        	mov    rdi,rax
 5b2ff0a7438:	e9 08 00 00 00                                  	jmp    0x5b2ff0a7445
 5b2ff0a743d:	43 8d 3c 88                                     	lea    edi,[r8+r9*4]
 5b2ff0a7441:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
 5b2ff0a7445:	85 d2                                           	test   edx,edx
 5b2ff0a7447:	0f 85 08 00 00 00                               	jne    0x5b2ff0a7455
 5b2ff0a744d:	48 8b d0                                        	mov    rdx,rax
 5b2ff0a7450:	e9 08 00 00 00                                  	jmp    0x5b2ff0a745d
 5b2ff0a7455:	41 8d 14 b0                                     	lea    edx,[r8+rsi*4]
 5b2ff0a7459:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
 5b2ff0a745d:	85 db                                           	test   ebx,ebx
 5b2ff0a745f:	0f 85 10 00 00 00                               	jne    0x5b2ff0a7475
 5b2ff0a7465:	8b f2                                           	mov    esi,edx
 5b2ff0a7467:	48 8b c8                                        	mov    rcx,rax
 5b2ff0a746a:	41 8b d8                                        	mov    ebx,r8d
 5b2ff0a746d:	49 8b d4                                        	mov    rdx,r12
 5b2ff0a7470:	e9 2f 00 00 00                                  	jmp    0x5b2ff0a74a4
 5b2ff0a7475:	8b f2                                           	mov    esi,edx
 5b2ff0a7477:	41 8b d8                                        	mov    ebx,r8d
 5b2ff0a747a:	49 8b d4                                        	mov    rdx,r12
 5b2ff0a747d:	e9 1c 00 00 00                                  	jmp    0x5b2ff0a749e
 5b2ff0a7482:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
 5b2ff0a7485:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
 5b2ff0a7489:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
 5b2ff0a748d:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0a7490:	46 8d 04 bb                                     	lea    r8d,[rbx+r15*4]
 5b2ff0a7494:	46 8b 1c 02                                     	mov    r11d,DWORD PTR [rdx+r8*1]
 5b2ff0a7498:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
 5b2ff0a749b:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
 5b2ff0a749e:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
 5b2ff0a74a1:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
 5b2ff0a74a4:	c4 c1 11 fe fa                                  	vpaddd xmm7,xmm13,xmm10
 5b2ff0a74a9:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
 5b2ff0a74ae:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0a74b3:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
 5b2ff0a74b7:	0f 84 74 00 00 00                               	je     0x5b2ff0a7531
 5b2ff0a74bd:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
 5b2ff0a74c1:	0f 85 08 00 00 00                               	jne    0x5b2ff0a74cf
 5b2ff0a74c7:	4c 8b c0                                        	mov    r8,rax
 5b2ff0a74ca:	e9 0d 00 00 00                                  	jmp    0x5b2ff0a74dc
 5b2ff0a74cf:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
 5b2ff0a74d4:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
 5b2ff0a74d8:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
 5b2ff0a74dc:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
 5b2ff0a74e0:	0f 85 08 00 00 00                               	jne    0x5b2ff0a74ee
 5b2ff0a74e6:	4c 8b c8                                        	mov    r9,rax
 5b2ff0a74e9:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a74fc
 5b2ff0a74ee:	c4 c3 79 16 f9 01                               	vpextrd r9d,xmm7,0x1
 5b2ff0a74f4:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
 5b2ff0a74f8:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
 5b2ff0a74fc:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
 5b2ff0a7500:	0f 85 08 00 00 00                               	jne    0x5b2ff0a750e
 5b2ff0a7506:	4c 8b d8                                        	mov    r11,rax
 5b2ff0a7509:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a751c
 5b2ff0a750e:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
 5b2ff0a7514:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a7518:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0a751c:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
 5b2ff0a7520:	0f 85 34 00 00 00                               	jne    0x5b2ff0a755a
 5b2ff0a7526:	45 8b e0                                        	mov    r12d,r8d
 5b2ff0a7529:	4c 8b c0                                        	mov    r8,rax
 5b2ff0a752c:	e9 40 00 00 00                                  	jmp    0x5b2ff0a7571
 5b2ff0a7531:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
 5b2ff0a7537:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
 5b2ff0a753b:	46 8b 0c 02                                     	mov    r9d,DWORD PTR [rdx+r8*1]
 5b2ff0a753f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
 5b2ff0a7544:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
 5b2ff0a7548:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
 5b2ff0a754c:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
 5b2ff0a7552:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a7556:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0a755a:	c4 c3 79 16 fc 03                               	vpextrd r12d,xmm7,0x3
 5b2ff0a7560:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
 5b2ff0a7564:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
 5b2ff0a7568:	45 8b d0                                        	mov    r10d,r8d
 5b2ff0a756b:	45 8b c4                                        	mov    r8d,r12d
 5b2ff0a756e:	45 8b e2                                        	mov    r12d,r10d
 5b2ff0a7571:	c4 e3 39 22 ff 01                               	vpinsrd xmm7,xmm8,edi,0x1
 5b2ff0a7577:	c4 41 79 6e c4                                  	vmovd  xmm8,r12d
 5b2ff0a757c:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0a7581:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
 5b2ff0a7587:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
 5b2ff0a758b:	0f 84 71 00 00 00                               	je     0x5b2ff0a7602
 5b2ff0a7591:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
 5b2ff0a7595:	0f 85 08 00 00 00                               	jne    0x5b2ff0a75a3
 5b2ff0a759b:	48 8b f8                                        	mov    rdi,rax
 5b2ff0a759e:	e9 0a 00 00 00                                  	jmp    0x5b2ff0a75ad
 5b2ff0a75a3:	c5 f9 7e f7                                     	vmovd  edi,xmm6
 5b2ff0a75a7:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a75aa:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0a75ad:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
 5b2ff0a75b1:	0f 85 08 00 00 00                               	jne    0x5b2ff0a75bf
 5b2ff0a75b7:	4c 8b c8                                        	mov    r9,rax
 5b2ff0a75ba:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a75cd
 5b2ff0a75bf:	c4 c3 79 16 f1 01                               	vpextrd r9d,xmm6,0x1
 5b2ff0a75c5:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
 5b2ff0a75c9:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
 5b2ff0a75cd:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
 5b2ff0a75d1:	0f 85 08 00 00 00                               	jne    0x5b2ff0a75df
 5b2ff0a75d7:	4c 8b e0                                        	mov    r12,rax
 5b2ff0a75da:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a75ed
 5b2ff0a75df:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
 5b2ff0a75e5:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
 5b2ff0a75e9:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
 5b2ff0a75ed:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
 5b2ff0a75f1:	0f 85 30 00 00 00                               	jne    0x5b2ff0a7627
 5b2ff0a75f7:	44 8b ff                                        	mov    r15d,edi
 5b2ff0a75fa:	48 8b f8                                        	mov    rdi,rax
 5b2ff0a75fd:	e9 3c 00 00 00                                  	jmp    0x5b2ff0a763e
 5b2ff0a7602:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
 5b2ff0a7608:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a760b:	44 8b 0c 3a                                     	mov    r9d,DWORD PTR [rdx+rdi*1]
 5b2ff0a760f:	c5 f9 7e f7                                     	vmovd  edi,xmm6
 5b2ff0a7613:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0a7616:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0a7619:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
 5b2ff0a761f:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
 5b2ff0a7623:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
 5b2ff0a7627:	c4 c3 79 16 f7 03                               	vpextrd r15d,xmm6,0x3
 5b2ff0a762d:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
 5b2ff0a7631:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
 5b2ff0a7635:	45 8b d7                                        	mov    r10d,r15d
 5b2ff0a7638:	44 8b ff                                        	mov    r15d,edi
 5b2ff0a763b:	41 8b fa                                        	mov    edi,r10d
 5b2ff0a763e:	c4 e3 41 22 f6 02                               	vpinsrd xmm6,xmm7,esi,0x2
 5b2ff0a7644:	c4 c3 39 22 fb 02                               	vpinsrd xmm7,xmm8,r11d,0x2
 5b2ff0a764a:	c4 c1 79 fe c5                                  	vpaddd xmm0,xmm0,xmm13
 5b2ff0a764f:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
 5b2ff0a7654:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0a7659:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
 5b2ff0a765f:	c4 43 39 22 c4 02                               	vpinsrd xmm8,xmm8,r12d,0x2
 5b2ff0a7665:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
 5b2ff0a7669:	0f 84 6b 00 00 00                               	je     0x5b2ff0a76da
 5b2ff0a766f:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
 5b2ff0a7673:	0f 85 08 00 00 00                               	jne    0x5b2ff0a7681
 5b2ff0a7679:	48 8b f0                                        	mov    rsi,rax
 5b2ff0a767c:	e9 0a 00 00 00                                  	jmp    0x5b2ff0a768b
 5b2ff0a7681:	c5 f9 7e c6                                     	vmovd  esi,xmm0
 5b2ff0a7685:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
 5b2ff0a7688:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
 5b2ff0a768b:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
 5b2ff0a768f:	0f 85 08 00 00 00                               	jne    0x5b2ff0a769d
 5b2ff0a7695:	4c 8b c8                                        	mov    r9,rax
 5b2ff0a7698:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a76ab
 5b2ff0a769d:	c4 c3 79 16 c1 01                               	vpextrd r9d,xmm0,0x1
 5b2ff0a76a3:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
 5b2ff0a76a7:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
 5b2ff0a76ab:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
 5b2ff0a76af:	0f 85 08 00 00 00                               	jne    0x5b2ff0a76bd
 5b2ff0a76b5:	4c 8b d8                                        	mov    r11,rax
 5b2ff0a76b8:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a76cb
 5b2ff0a76bd:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
 5b2ff0a76c3:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a76c7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0a76cb:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
 5b2ff0a76cf:	0f 85 2a 00 00 00                               	jne    0x5b2ff0a76ff
 5b2ff0a76d5:	e9 34 00 00 00                                  	jmp    0x5b2ff0a770e
 5b2ff0a76da:	c4 e3 79 16 c6 01                               	vpextrd esi,xmm0,0x1
 5b2ff0a76e0:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
 5b2ff0a76e3:	44 8b 0c 32                                     	mov    r9d,DWORD PTR [rdx+rsi*1]
 5b2ff0a76e7:	c5 f9 7e c6                                     	vmovd  esi,xmm0
 5b2ff0a76eb:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
 5b2ff0a76ee:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
 5b2ff0a76f1:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
 5b2ff0a76f7:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
 5b2ff0a76fb:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0a76ff:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
 5b2ff0a7705:	42 8d 1c a3                                     	lea    ebx,[rbx+r12*4]
 5b2ff0a7709:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
 5b2ff0a770c:	8b c3                                           	mov    eax,ebx
 5b2ff0a770e:	c4 e3 49 22 c1 03                               	vpinsrd xmm0,xmm6,ecx,0x3
 5b2ff0a7714:	c4 c3 41 22 f0 03                               	vpinsrd xmm6,xmm7,r8d,0x3
 5b2ff0a771a:	c5 f9 6e fe                                     	vmovd  xmm7,esi
 5b2ff0a771e:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0a7723:	c4 c3 41 22 f9 01                               	vpinsrd xmm7,xmm7,r9d,0x1
 5b2ff0a7729:	c4 c3 41 22 fb 02                               	vpinsrd xmm7,xmm7,r11d,0x2
 5b2ff0a772f:	c4 e3 41 22 f8 03                               	vpinsrd xmm7,xmm7,eax,0x3
 5b2ff0a7735:	c4 63 39 22 c7 03                               	vpinsrd xmm8,xmm8,edi,0x3
 5b2ff0a773b:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
 5b2ff0a773f:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
 5b2ff0a7744:	c4 41 79 28 c7                                  	vmovapd xmm8,xmm15
 5b2ff0a7749:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0a774d:	e9 86 00 00 00                                  	jmp    0x5b2ff0a77d8
 5b2ff0a7752:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
 5b2ff0a7755:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
 5b2ff0a7759:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
 5b2ff0a775d:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
 5b2ff0a7762:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
 5b2ff0a7766:	c5 fb 10 3c 3a                                  	vmovsd xmm7,QWORD PTR [rdx+rdi*1]
 5b2ff0a776b:	c5 f9 6c c7                                     	vpunpcklqdq xmm0,xmm0,xmm7
 5b2ff0a776f:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
 5b2ff0a7772:	c5 fb 10 3c 32                                  	vmovsd xmm7,QWORD PTR [rdx+rsi*1]
 5b2ff0a7777:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
 5b2ff0a777a:	c5 7b 10 04 0a                                  	vmovsd xmm8,QWORD PTR [rdx+rcx*1]
 5b2ff0a777f:	c4 c1 41 6c f8                                  	vpunpcklqdq xmm7,xmm7,xmm8
 5b2ff0a7784:	c5 78 c6 c7 dd                                  	vshufps xmm8,xmm0,xmm7,0xdd
 5b2ff0a7789:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
 5b2ff0a778e:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
 5b2ff0a7793:	c5 f9 7e f1                                     	vmovd  ecx,xmm6
 5b2ff0a7797:	03 cb                                           	add    ecx,ebx
 5b2ff0a7799:	c5 fb 10 3c 0a                                  	vmovsd xmm7,QWORD PTR [rdx+rcx*1]
 5b2ff0a779e:	c4 e3 79 16 f1 01                               	vpextrd ecx,xmm6,0x1
 5b2ff0a77a4:	03 cb                                           	add    ecx,ebx
 5b2ff0a77a6:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
 5b2ff0a77ab:	c4 c1 41 6c f9                                  	vpunpcklqdq xmm7,xmm7,xmm9
 5b2ff0a77b0:	c4 e3 79 16 f1 02                               	vpextrd ecx,xmm6,0x2
 5b2ff0a77b6:	03 cb                                           	add    ecx,ebx
 5b2ff0a77b8:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
 5b2ff0a77bd:	c4 e3 79 16 f1 03                               	vpextrd ecx,xmm6,0x3
 5b2ff0a77c3:	03 d9                                           	add    ebx,ecx
 5b2ff0a77c5:	c5 fb 10 34 1a                                  	vmovsd xmm6,QWORD PTR [rdx+rbx*1]
 5b2ff0a77ca:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
 5b2ff0a77ce:	c5 40 c6 ce dd                                  	vshufps xmm9,xmm7,xmm6,0xdd
 5b2ff0a77d3:	c5 c0 c6 f6 88                                  	vshufps xmm6,xmm7,xmm6,0x88
 5b2ff0a77d8:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
 5b2ff0a77dc:	c5 d0 5c d9                                     	vsubps xmm3,xmm5,xmm1
 5b2ff0a77e0:	c5 e8 5c d4                                     	vsubps xmm2,xmm2,xmm4
 5b2ff0a77e4:	c5 d0 5c e2                                     	vsubps xmm4,xmm5,xmm2
 5b2ff0a77e8:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
 5b2ff0a77ed:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a77f2:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
 5b2ff0a77f8:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
 5b2ff0a77fd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7802:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
 5b2ff0a7807:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
 5b2ff0a780b:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
 5b2ff0a780f:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
 5b2ff0a7814:	c5 d8 59 ed                                     	vmulps xmm5,xmm4,xmm5
 5b2ff0a7818:	c4 c1 41 72 d0 18                               	vpsrld xmm7,xmm8,0x18
 5b2ff0a781e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7823:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
 5b2ff0a7829:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
 5b2ff0a782e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7833:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
 5b2ff0a7838:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
 5b2ff0a783c:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
 5b2ff0a7840:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
 5b2ff0a7845:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
 5b2ff0a7849:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
 5b2ff0a784d:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
 5b2ff0a7851:	c5 c1 72 d6 18                                  	vpsrld xmm7,xmm6,0x18
 5b2ff0a7856:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a785b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
 5b2ff0a7861:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
 5b2ff0a7866:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a786b:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
 5b2ff0a7870:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
 5b2ff0a7874:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
 5b2ff0a7878:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
 5b2ff0a787d:	c5 d8 59 ff                                     	vmulps xmm7,xmm4,xmm7
 5b2ff0a7881:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
 5b2ff0a7887:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a788c:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
 5b2ff0a7892:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
 5b2ff0a7897:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a789c:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
 5b2ff0a78a2:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
 5b2ff0a78a7:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
 5b2ff0a78ac:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
 5b2ff0a78b1:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
 5b2ff0a78b6:	c4 c1 40 58 fa                                  	vaddps xmm7,xmm7,xmm10
 5b2ff0a78bb:	c5 f0 59 ff                                     	vmulps xmm7,xmm1,xmm7
 5b2ff0a78bf:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
 5b2ff0a78c3:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
 5b2ff0a78cd:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0a78d2:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0a78d6:	c5 79 db d7                                     	vpand  xmm10,xmm0,xmm7
 5b2ff0a78da:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a78df:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
 5b2ff0a78e5:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
 5b2ff0a78ea:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a78ef:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
 5b2ff0a78f5:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
 5b2ff0a78fa:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
 5b2ff0a78ff:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
 5b2ff0a7904:	c4 41 58 59 d2                                  	vmulps xmm10,xmm4,xmm10
 5b2ff0a7909:	c5 39 db df                                     	vpand  xmm11,xmm8,xmm7
 5b2ff0a790d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7912:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
 5b2ff0a7918:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
 5b2ff0a791d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7922:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
 5b2ff0a7928:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
 5b2ff0a792d:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
 5b2ff0a7932:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
 5b2ff0a7937:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
 5b2ff0a793c:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
 5b2ff0a7941:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
 5b2ff0a7946:	c5 49 db df                                     	vpand  xmm11,xmm6,xmm7
 5b2ff0a794a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a794f:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
 5b2ff0a7955:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
 5b2ff0a795a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a795f:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
 5b2ff0a7965:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
 5b2ff0a796a:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
 5b2ff0a796f:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
 5b2ff0a7974:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
 5b2ff0a7979:	c5 31 db e7                                     	vpand  xmm12,xmm9,xmm7
 5b2ff0a797d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7982:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
 5b2ff0a7988:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
 5b2ff0a798d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7992:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
 5b2ff0a7998:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
 5b2ff0a799d:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
 5b2ff0a79a2:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
 5b2ff0a79a7:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
 5b2ff0a79ac:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
 5b2ff0a79b1:	c4 41 70 59 db                                  	vmulps xmm11,xmm1,xmm11
 5b2ff0a79b6:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
 5b2ff0a79bb:	c5 a1 72 d0 10                                  	vpsrld xmm11,xmm0,0x10
 5b2ff0a79c0:	c5 21 db df                                     	vpand  xmm11,xmm11,xmm7
 5b2ff0a79c4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a79c9:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
 5b2ff0a79cf:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
 5b2ff0a79d4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a79d9:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
 5b2ff0a79df:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
 5b2ff0a79e4:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
 5b2ff0a79e9:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
 5b2ff0a79ee:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
 5b2ff0a79f3:	c4 c1 19 72 d0 10                               	vpsrld xmm12,xmm8,0x10
 5b2ff0a79f9:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
 5b2ff0a79fd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7a02:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
 5b2ff0a7a08:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
 5b2ff0a7a0d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7a12:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
 5b2ff0a7a18:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
 5b2ff0a7a1d:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
 5b2ff0a7a22:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
 5b2ff0a7a27:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
 5b2ff0a7a2c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
 5b2ff0a7a31:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
 5b2ff0a7a36:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
 5b2ff0a7a3b:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
 5b2ff0a7a3f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7a44:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
 5b2ff0a7a4a:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
 5b2ff0a7a4f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7a54:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
 5b2ff0a7a5a:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
 5b2ff0a7a5f:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
 5b2ff0a7a64:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
 5b2ff0a7a69:	c4 41 58 59 e4                                  	vmulps xmm12,xmm4,xmm12
 5b2ff0a7a6e:	c4 c1 11 72 d1 10                               	vpsrld xmm13,xmm9,0x10
 5b2ff0a7a74:	c5 11 db ef                                     	vpand  xmm13,xmm13,xmm7
 5b2ff0a7a78:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7a7d:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
 5b2ff0a7a83:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
 5b2ff0a7a88:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7a8d:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
 5b2ff0a7a93:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
 5b2ff0a7a98:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
 5b2ff0a7a9d:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
 5b2ff0a7aa2:	c4 41 68 59 ed                                  	vmulps xmm13,xmm2,xmm13
 5b2ff0a7aa7:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
 5b2ff0a7aac:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
 5b2ff0a7ab1:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
 5b2ff0a7ab6:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
 5b2ff0a7abb:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
 5b2ff0a7abf:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7ac4:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0a7aca:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0a7acf:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7ad4:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0a7ad9:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0a7add:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0a7ae1:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0a7ae6:	c5 d8 59 c0                                     	vmulps xmm0,xmm4,xmm0
 5b2ff0a7aea:	c4 c1 39 72 d0 08                               	vpsrld xmm8,xmm8,0x8
 5b2ff0a7af0:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
 5b2ff0a7af4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7af9:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0a7aff:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0a7b04:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7b09:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0a7b0f:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0a7b14:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0a7b19:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0a7b1e:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
 5b2ff0a7b23:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
 5b2ff0a7b28:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
 5b2ff0a7b2c:	c5 e1 72 d6 08                                  	vpsrld xmm3,xmm6,0x8
 5b2ff0a7b31:	c5 e1 db df                                     	vpand  xmm3,xmm3,xmm7
 5b2ff0a7b35:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7b3a:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
 5b2ff0a7b40:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
 5b2ff0a7b45:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7b4a:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
 5b2ff0a7b4f:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
 5b2ff0a7b53:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
 5b2ff0a7b57:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
 5b2ff0a7b5c:	c5 d8 59 db                                     	vmulps xmm3,xmm4,xmm3
 5b2ff0a7b60:	c4 c1 59 72 d1 08                               	vpsrld xmm4,xmm9,0x8
 5b2ff0a7b66:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
 5b2ff0a7b6a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7b6f:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff0a7b75:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff0a7b7a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7b7f:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff0a7b84:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff0a7b88:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff0a7b8c:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff0a7b91:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
 5b2ff0a7b95:	c5 e0 58 d2                                     	vaddps xmm2,xmm3,xmm2
 5b2ff0a7b99:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
 5b2ff0a7b9d:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
 5b2ff0a7ba1:	e9 84 01 00 00                                  	jmp    0x5b2ff0a7d2a
 5b2ff0a7ba6:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
 5b2ff0a7baa:	0f 84 68 00 00 00                               	je     0x5b2ff0a7c18
 5b2ff0a7bb0:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
 5b2ff0a7bb4:	0f 85 0f 00 00 00                               	jne    0x5b2ff0a7bc9
 5b2ff0a7bba:	48 8b f8                                        	mov    rdi,rax
 5b2ff0a7bbd:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
 5b2ff0a7bc1:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
 5b2ff0a7bc4:	e9 0e 00 00 00                                  	jmp    0x5b2ff0a7bd7
 5b2ff0a7bc9:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
 5b2ff0a7bcc:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
 5b2ff0a7bd0:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
 5b2ff0a7bd4:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0a7bd7:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
 5b2ff0a7bdb:	0f 85 08 00 00 00                               	jne    0x5b2ff0a7be9
 5b2ff0a7be1:	4c 8b c0                                        	mov    r8,rax
 5b2ff0a7be4:	e9 08 00 00 00                                  	jmp    0x5b2ff0a7bf1
 5b2ff0a7be9:	46 8d 04 8b                                     	lea    r8d,[rbx+r9*4]
 5b2ff0a7bed:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
 5b2ff0a7bf1:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
 5b2ff0a7bf5:	0f 85 08 00 00 00                               	jne    0x5b2ff0a7c03
 5b2ff0a7bfb:	48 8b f0                                        	mov    rsi,rax
 5b2ff0a7bfe:	e9 06 00 00 00                                  	jmp    0x5b2ff0a7c09
 5b2ff0a7c03:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
 5b2ff0a7c06:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
 5b2ff0a7c09:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
 5b2ff0a7c0d:	0f 85 21 00 00 00                               	jne    0x5b2ff0a7c34
 5b2ff0a7c13:	e9 24 00 00 00                                  	jmp    0x5b2ff0a7c3c
 5b2ff0a7c18:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
 5b2ff0a7c1b:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
 5b2ff0a7c1e:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
 5b2ff0a7c22:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
 5b2ff0a7c25:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
 5b2ff0a7c29:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
 5b2ff0a7c2d:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
 5b2ff0a7c31:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0a7c34:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
 5b2ff0a7c37:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
 5b2ff0a7c3a:	8b c3                                           	mov    eax,ebx
 5b2ff0a7c3c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
 5b2ff0a7c40:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0a7c45:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
 5b2ff0a7c4b:	c4 e3 79 22 c6 02                               	vpinsrd xmm0,xmm0,esi,0x2
 5b2ff0a7c51:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
 5b2ff0a7c57:	c5 f1 72 d0 18                                  	vpsrld xmm1,xmm0,0x18
 5b2ff0a7c5c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7c61:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff0a7c67:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff0a7c6c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7c71:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff0a7c76:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff0a7c7a:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff0a7c7e:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff0a7c83:	4c 8b 15 3b fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc3b]        # 0x5b2ff0a78c5
 5b2ff0a7c8a:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff0a7c8f:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff0a7c93:	c5 f9 db da                                     	vpand  xmm3,xmm0,xmm2
 5b2ff0a7c97:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7c9c:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
 5b2ff0a7ca2:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
 5b2ff0a7ca7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7cac:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
 5b2ff0a7cb1:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
 5b2ff0a7cb5:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
 5b2ff0a7cb9:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
 5b2ff0a7cbe:	c5 d9 72 d0 10                                  	vpsrld xmm4,xmm0,0x10
 5b2ff0a7cc3:	c5 d9 db e2                                     	vpand  xmm4,xmm4,xmm2
 5b2ff0a7cc7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7ccc:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff0a7cd2:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff0a7cd7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7cdc:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff0a7ce1:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff0a7ce5:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff0a7ce9:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff0a7cee:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
 5b2ff0a7cf3:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
 5b2ff0a7cf7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0a7cfc:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0a7d02:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0a7d07:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0a7d0c:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0a7d11:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0a7d15:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0a7d19:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0a7d1e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
 5b2ff0a7d22:	c5 79 28 dc                                     	vmovapd xmm11,xmm4
 5b2ff0a7d26:	c5 79 28 d3                                     	vmovapd xmm10,xmm3
 5b2ff0a7d2a:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
 5b2ff0a7d34:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
 5b2ff0a7d39:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
 5b2ff0a7d3d:	c5 d0 59 d1                                     	vmulps xmm2,xmm5,xmm1
 5b2ff0a7d41:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
 5b2ff0a7d45:	41 83 e1 01                                     	and    r9d,0x1
 5b2ff0a7d49:	41 f7 d9                                        	neg    r9d
 5b2ff0a7d4c:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
 5b2ff0a7d51:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
 5b2ff0a7d56:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
 5b2ff0a7d5a:	41 c1 e1 1e                                     	shl    r9d,0x1e
 5b2ff0a7d5e:	41 c1 f9 1f                                     	sar    r9d,0x1f
 5b2ff0a7d62:	c4 c3 61 22 d9 01                               	vpinsrd xmm3,xmm3,r9d,0x1
 5b2ff0a7d68:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
 5b2ff0a7d6c:	41 c1 e1 1d                                     	shl    r9d,0x1d
 5b2ff0a7d70:	41 c1 f9 1f                                     	sar    r9d,0x1f
 5b2ff0a7d74:	c4 c3 61 22 d9 02                               	vpinsrd xmm3,xmm3,r9d,0x2
 5b2ff0a7d7a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
 5b2ff0a7d7e:	41 c1 e1 1c                                     	shl    r9d,0x1c
 5b2ff0a7d82:	41 c1 f9 1f                                     	sar    r9d,0x1f
 5b2ff0a7d86:	c4 c3 61 22 d9 03                               	vpinsrd xmm3,xmm3,r9d,0x3
 5b2ff0a7d8c:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
 5b2ff0a7d90:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
 5b2ff0a7d93:	8b db                                           	mov    ebx,ebx
 5b2ff0a7d95:	c5 fa 7f 54 1a 30                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x30],xmm2
 5b2ff0a7d9b:	c5 a0 59 d1                                     	vmulps xmm2,xmm11,xmm1
 5b2ff0a7d9f:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
 5b2ff0a7da3:	c5 fa 7f 54 1a 20                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x20],xmm2
 5b2ff0a7da9:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
 5b2ff0a7dad:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
 5b2ff0a7db1:	c5 fa 7f 44 1a 10                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x10],xmm0
 5b2ff0a7db7:	c5 a8 59 c1                                     	vmulps xmm0,xmm10,xmm1
 5b2ff0a7dbb:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
 5b2ff0a7dbf:	c5 fa 7f 04 1a                                  	vmovdqu XMMWORD PTR [rdx+rbx*1],xmm0
 5b2ff0a7dc4:	b8 01 00 00 00                                  	mov    eax,0x1
 5b2ff0a7dc9:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a7dcc:	5d                                              	pop    rbp
 5b2ff0a7dcd:	c2 08 00                                        	ret    0x8
 5b2ff0a7dd0:	33 c0                                           	xor    eax,eax
 5b2ff0a7dd2:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a7dd5:	5d                                              	pop    rbp
 5b2ff0a7dd6:	c2 08 00                                        	ret    0x8
 5b2ff0a7dd9:	33 c0                                           	xor    eax,eax
 5b2ff0a7ddb:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0a7dde:	5d                                              	pop    rbp
 5b2ff0a7ddf:	c2 08 00                                        	ret    0x8
 5b2ff0a7de2:	90                                              	nop
 5b2ff0a7de3:	90                                              	nop
 5b2ff0a7de4:	07                                              	(bad)
 5b2ff0a7de5:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0a7de7:	00 08                                           	add    BYTE PTR [rax],cl
	...
