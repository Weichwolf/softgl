
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms0/selected/sg_packet_sample_cube_coherent-turbofan.bin:     file format binary


Disassembly of section .data:

00001d2b7c491d40 <.data>:
    1d2b7c491d40:	55                                              	push   rbp
    1d2b7c491d41:	48 8b ec                                        	mov    rbp,rsp
    1d2b7c491d44:	6a 30                                           	push   0x30
    1d2b7c491d46:	56                                              	push   rsi
    1d2b7c491d47:	48 83 ec 18                                     	sub    rsp,0x18
    1d2b7c491d4b:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    1d2b7c491d4f:	48 8b 76 17                                     	mov    rsi,QWORD PTR [rsi+0x17]
    1d2b7c491d53:	45 85 c9                                        	test   r9d,r9d
    1d2b7c491d56:	0f 85 09 00 00 00                               	jne    0x1d2b7c491d65
    1d2b7c491d5c:	33 c0                                           	xor    eax,eax
    1d2b7c491d5e:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c491d61:	5d                                              	pop    rbp
    1d2b7c491d62:	c2 08 00                                        	ret    0x8
    1d2b7c491d65:	8b f8                                           	mov    edi,eax
    1d2b7c491d67:	44 8b 44 3e 04                                  	mov    r8d,DWORD PTR [rsi+rdi*1+0x4]
    1d2b7c491d6c:	45 85 c0                                        	test   r8d,r8d
    1d2b7c491d6f:	0f 85 04 00 00 00                               	jne    0x1d2b7c491d79
    1d2b7c491d75:	33 c0                                           	xor    eax,eax
    1d2b7c491d77:	eb e5                                           	jmp    0x1d2b7c491d5e
    1d2b7c491d79:	45 8b d9                                        	mov    r11d,r9d
    1d2b7c491d7c:	41 83 e3 0f                                     	and    r11d,0xf
    1d2b7c491d80:	8b c9                                           	mov    ecx,ecx
    1d2b7c491d82:	c5 fa 6f 0c 0e                                  	vmovdqu xmm1,XMMWORD PTR [rsi+rcx*1]
    1d2b7c491d87:	49 ba 50 78 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7850
    1d2b7c491d91:	c4 c1 70 54 12                                  	vandps xmm2,xmm1,XMMWORD PTR [r10]
    1d2b7c491d96:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    1d2b7c491da0:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c491da5:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c491da9:	c5 e8 c2 e3 02                                  	vcmpleps xmm4,xmm2,xmm3
    1d2b7c491dae:	8b d2                                           	mov    edx,edx
    1d2b7c491db0:	c5 fa 6f 2c 16                                  	vmovdqu xmm5,XMMWORD PTR [rsi+rdx*1]
    1d2b7c491db5:	4c 8b 15 cd ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcd]        # 0x1d2b7c491d89
    1d2b7c491dbc:	c4 c1 50 54 32                                  	vandps xmm6,xmm5,XMMWORD PTR [r10]
    1d2b7c491dc1:	c5 c8 c2 fb 02                                  	vcmpleps xmm7,xmm6,xmm3
    1d2b7c491dc6:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    1d2b7c491dca:	8b db                                           	mov    ebx,ebx
    1d2b7c491dcc:	c5 fa 6f 3c 1e                                  	vmovdqu xmm7,XMMWORD PTR [rsi+rbx*1]
    1d2b7c491dd1:	4c 8b 15 b1 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb1]        # 0x1d2b7c491d89
    1d2b7c491dd8:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    1d2b7c491ddd:	c5 b8 c2 db 02                                  	vcmpleps xmm3,xmm8,xmm3
    1d2b7c491de2:	c5 d9 db db                                     	vpand  xmm3,xmm4,xmm3
    1d2b7c491de6:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    1d2b7c491dea:	41 23 db                                        	and    ebx,r11d
    1d2b7c491ded:	41 3b d9                                        	cmp    ebx,r9d
    1d2b7c491df0:	0f 84 09 00 00 00                               	je     0x1d2b7c491dff
    1d2b7c491df6:	33 c0                                           	xor    eax,eax
    1d2b7c491df8:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c491dfb:	5d                                              	pop    rbp
    1d2b7c491dfc:	c2 08 00                                        	ret    0x8
    1d2b7c491dff:	c5 b8 c2 de 02                                  	vcmpleps xmm3,xmm8,xmm6
    1d2b7c491e04:	c5 e8 c2 e6 02                                  	vcmpleps xmm4,xmm2,xmm6
    1d2b7c491e09:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    1d2b7c491e0d:	c5 f8 50 db                                     	vmovmskps ebx,xmm3
    1d2b7c491e11:	8b d3                                           	mov    edx,ebx
    1d2b7c491e13:	41 23 d1                                        	and    edx,r9d
    1d2b7c491e16:	44 3b ca                                        	cmp    r9d,edx
    1d2b7c491e19:	0f 84 8c 00 00 00                               	je     0x1d2b7c491eab
    1d2b7c491e1f:	c5 b8 c2 da 02                                  	vcmpleps xmm3,xmm8,xmm2
    1d2b7c491e24:	c5 c8 c2 e2 02                                  	vcmpleps xmm4,xmm6,xmm2
    1d2b7c491e29:	c5 e1 db dc                                     	vpand  xmm3,xmm3,xmm4
    1d2b7c491e2d:	c5 f8 50 cb                                     	vmovmskps ecx,xmm3
    1d2b7c491e31:	44 8b e3                                        	mov    r12d,ebx
    1d2b7c491e34:	41 83 f4 ff                                     	xor    r12d,0xffffffff
    1d2b7c491e38:	45 23 e1                                        	and    r12d,r9d
    1d2b7c491e3b:	44 23 e1                                        	and    r12d,ecx
    1d2b7c491e3e:	45 3b e1                                        	cmp    r12d,r9d
    1d2b7c491e41:	0f 84 42 00 00 00                               	je     0x1d2b7c491e89
    1d2b7c491e47:	0b d9                                           	or     ebx,ecx
    1d2b7c491e49:	41 85 d9                                        	test   r9d,ebx
    1d2b7c491e4c:	0f 85 2e 00 00 00                               	jne    0x1d2b7c491e80
    1d2b7c491e52:	49 ba 60 78 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7860
    1d2b7c491e5c:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    1d2b7c491e61:	bb 04 00 00 00                                  	mov    ebx,0x4
    1d2b7c491e66:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    1d2b7c491e6b:	33 c9                                           	xor    ecx,ecx
    1d2b7c491e6d:	41 bc 01 00 00 00                               	mov    r12d,0x1
    1d2b7c491e73:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    1d2b7c491e77:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    1d2b7c491e7b:	e9 4a 00 00 00                                  	jmp    0x1d2b7c491eca
    1d2b7c491e80:	33 c0                                           	xor    eax,eax
    1d2b7c491e82:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c491e85:	5d                                              	pop    rbp
    1d2b7c491e86:	c2 08 00                                        	ret    0x8
    1d2b7c491e89:	bb 02 00 00 00                                  	mov    ebx,0x2
    1d2b7c491e8e:	c5 f9 28 f2                                     	vmovapd xmm6,xmm2
    1d2b7c491e92:	b9 01 00 00 00                                  	mov    ecx,0x1
    1d2b7c491e97:	45 33 e4                                        	xor    r12d,r12d
    1d2b7c491e9a:	c5 f9 28 d5                                     	vmovapd xmm2,xmm5
    1d2b7c491e9e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    1d2b7c491ea2:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    1d2b7c491ea6:	e9 1f 00 00 00                                  	jmp    0x1d2b7c491eca
    1d2b7c491eab:	4c 8b 15 a2 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffa2]        # 0x1d2b7c491e54
    1d2b7c491eb2:	c4 c1 70 57 0a                                  	vxorps xmm1,xmm1,XMMWORD PTR [r10]
    1d2b7c491eb7:	4c 8b 15 96 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff96]        # 0x1d2b7c491e54
    1d2b7c491ebe:	c4 c1 40 57 12                                  	vxorps xmm2,xmm7,XMMWORD PTR [r10]
    1d2b7c491ec3:	33 c9                                           	xor    ecx,ecx
    1d2b7c491ec5:	8b d9                                           	mov    ebx,ecx
    1d2b7c491ec7:	44 8b e1                                        	mov    r12d,ecx
    1d2b7c491eca:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    1d2b7c491ece:	c5 e0 c2 e5 02                                  	vcmpleps xmm4,xmm3,xmm5
    1d2b7c491ed3:	c5 78 50 fc                                     	vmovmskps r15d,xmm4
    1d2b7c491ed7:	45 23 fb                                        	and    r15d,r11d
    1d2b7c491eda:	0f 85 58 00 00 00                               	jne    0x1d2b7c491f38
    1d2b7c491ee0:	4c 8b 15 6d ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff6d]        # 0x1d2b7c491e54
    1d2b7c491ee7:	c4 c1 70 57 22                                  	vxorps xmm4,xmm1,XMMWORD PTR [r10]
    1d2b7c491eec:	85 c9                                           	test   ecx,ecx
    1d2b7c491eee:	0f 85 04 00 00 00                               	jne    0x1d2b7c491ef8
    1d2b7c491ef4:	c5 f9 28 e1                                     	vmovapd xmm4,xmm1
    1d2b7c491ef8:	4c 8b 15 55 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff55]        # 0x1d2b7c491e54
    1d2b7c491eff:	c4 c1 68 57 0a                                  	vxorps xmm1,xmm2,XMMWORD PTR [r10]
    1d2b7c491f04:	45 85 e4                                        	test   r12d,r12d
    1d2b7c491f07:	0f 84 04 00 00 00                               	je     0x1d2b7c491f11
    1d2b7c491f0d:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    1d2b7c491f11:	41 3b d1                                        	cmp    edx,r9d
    1d2b7c491f14:	0f 84 04 00 00 00                               	je     0x1d2b7c491f1e
    1d2b7c491f1a:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    1d2b7c491f1e:	83 cb 01                                        	or     ebx,0x1
    1d2b7c491f21:	ba 03 00 00 00                                  	mov    edx,0x3
    1d2b7c491f26:	85 c9                                           	test   ecx,ecx
    1d2b7c491f28:	0f 45 da                                        	cmovne ebx,edx
    1d2b7c491f2b:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    1d2b7c491f2f:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    1d2b7c491f33:	e9 12 00 00 00                                  	jmp    0x1d2b7c491f4a
    1d2b7c491f38:	45 3b f9                                        	cmp    r15d,r9d
    1d2b7c491f3b:	0f 84 09 00 00 00                               	je     0x1d2b7c491f4a
    1d2b7c491f41:	33 c0                                           	xor    eax,eax
    1d2b7c491f43:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c491f46:	5d                                              	pop    rbp
    1d2b7c491f47:	c2 08 00                                        	ret    0x8
    1d2b7c491f4a:	c1 e3 06                                        	shl    ebx,0x6
    1d2b7c491f4d:	41 03 d8                                        	add    ebx,r8d
    1d2b7c491f50:	8b 94 1e 24 01 00 00                            	mov    edx,DWORD PTR [rsi+rbx*1+0x124]
    1d2b7c491f57:	85 d2                                           	test   edx,edx
    1d2b7c491f59:	0f 85 09 00 00 00                               	jne    0x1d2b7c491f68
    1d2b7c491f5f:	33 c0                                           	xor    eax,eax
    1d2b7c491f61:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c491f64:	5d                                              	pop    rbp
    1d2b7c491f65:	c2 08 00                                        	ret    0x8
    1d2b7c491f68:	8b 8c 1e a4 02 00 00                            	mov    ecx,DWORD PTR [rsi+rbx*1+0x2a4]
    1d2b7c491f6f:	85 c9                                           	test   ecx,ecx
    1d2b7c491f71:	0f 8e a2 0e 00 00                               	jle    0x1d2b7c492e19
    1d2b7c491f77:	81 c3 24 04 00 00                               	add    ebx,0x424
    1d2b7c491f7d:	8b 1c 1e                                        	mov    ebx,DWORD PTR [rsi+rbx*1]
    1d2b7c491f80:	85 db                                           	test   ebx,ebx
    1d2b7c491f82:	0f 8e 88 0e 00 00                               	jle    0x1d2b7c492e10
    1d2b7c491f88:	44 8d 41 ff                                     	lea    r8d,[rcx-0x1]
    1d2b7c491f8c:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    1d2b7c491f96:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    1d2b7c491f9b:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    1d2b7c491f9f:	4c 8b 15 e8 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe8]        # 0x1d2b7c491f8e
    1d2b7c491fa6:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c491fab:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c491faf:	c5 c8 c2 ed 01                                  	vcmpltps xmm5,xmm6,xmm5
    1d2b7c491fb4:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    1d2b7c491fb8:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    1d2b7c491fbc:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    1d2b7c491fc1:	c5 f0 5e cc                                     	vdivps xmm1,xmm1,xmm4
    1d2b7c491fc5:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    1d2b7c491fcf:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    1d2b7c491fd4:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    1d2b7c491fd8:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    1d2b7c491fdc:	c5 e8 5e d4                                     	vdivps xmm2,xmm2,xmm4
    1d2b7c491fe0:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    1d2b7c491fe4:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    1d2b7c491fee:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    1d2b7c491ff3:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    1d2b7c491ff7:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    1d2b7c491ffb:	44 8b 5c 3e 14                                  	mov    r11d,DWORD PTR [rsi+rdi*1+0x14]
    1d2b7c492000:	44 8b 64 3e 10                                  	mov    r12d,DWORD PTR [rsi+rdi*1+0x10]
    1d2b7c492005:	45 33 ff                                        	xor    r15d,r15d
    1d2b7c492008:	41 81 fc 2f 81 00 00                            	cmp    r12d,0x812f
    1d2b7c49200f:	41 0f 95 c7                                     	setne  r15b
    1d2b7c492013:	41 81 fc 00 29 00 00                            	cmp    r12d,0x2900
    1d2b7c49201a:	41 0f 95 c4                                     	setne  r12b
    1d2b7c49201e:	45 0f b6 e4                                     	movzx  r12d,r12b
    1d2b7c492022:	48 89 75 e8                                     	mov    QWORD PTR [rbp-0x18],rsi
    1d2b7c492026:	4c 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],r9
    1d2b7c49202a:	48 89 55 d8                                     	mov    QWORD PTR [rbp-0x28],rdx
    1d2b7c49202e:	45 23 e7                                        	and    r12d,r15d
    1d2b7c492031:	0f 85 0d 00 00 00                               	jne    0x1d2b7c492044
    1d2b7c492037:	c5 e0 5f d2                                     	vmaxps xmm2,xmm3,xmm2
    1d2b7c49203b:	c5 d0 5d d2                                     	vminps xmm2,xmm5,xmm2
    1d2b7c49203f:	e9 0a 00 00 00                                  	jmp    0x1d2b7c49204e
    1d2b7c492044:	c4 e3 79 08 f2 09                               	vroundps xmm6,xmm2,0x9
    1d2b7c49204a:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    1d2b7c49204e:	c5 f0 59 cc                                     	vmulps xmm1,xmm1,xmm4
    1d2b7c492052:	8b 7c 3e 0c                                     	mov    edi,DWORD PTR [rsi+rdi*1+0xc]
    1d2b7c492056:	44 8b d1                                        	mov    r10d,ecx
    1d2b7c492059:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    1d2b7c49205e:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    1d2b7c492063:	c5 d8 59 d2                                     	vmulps xmm2,xmm4,xmm2
    1d2b7c492067:	44 8d 7b ff                                     	lea    r15d,[rbx-0x1]
    1d2b7c49206b:	41 8b f7                                        	mov    esi,r15d
    1d2b7c49206e:	23 f3                                           	and    esi,ebx
    1d2b7c492070:	33 c0                                           	xor    eax,eax
    1d2b7c492072:	41 8b d0                                        	mov    edx,r8d
    1d2b7c492075:	41 85 c8                                        	test   r8d,ecx
    1d2b7c492078:	0f 45 d0                                        	cmovne edx,eax
    1d2b7c49207b:	44 8b d3                                        	mov    r10d,ebx
    1d2b7c49207e:	c4 c1 82 2a e2                                  	vcvtsi2ss xmm4,xmm15,r10
    1d2b7c492083:	c4 e2 79 18 e4                                  	vbroadcastss xmm4,xmm4
    1d2b7c492088:	45 33 c9                                        	xor    r9d,r9d
    1d2b7c49208b:	41 81 fb 2f 81 00 00                            	cmp    r11d,0x812f
    1d2b7c492092:	41 0f 95 c1                                     	setne  r9b
    1d2b7c492096:	41 81 fb 00 29 00 00                            	cmp    r11d,0x2900
    1d2b7c49209d:	41 0f 95 c3                                     	setne  r11b
    1d2b7c4920a1:	45 0f b6 db                                     	movzx  r11d,r11b
    1d2b7c4920a5:	45 23 d9                                        	and    r11d,r9d
    1d2b7c4920a8:	0f 85 0d 00 00 00                               	jne    0x1d2b7c4920bb
    1d2b7c4920ae:	c5 e0 5f c9                                     	vmaxps xmm1,xmm3,xmm1
    1d2b7c4920b2:	c5 d0 5d c9                                     	vminps xmm1,xmm5,xmm1
    1d2b7c4920b6:	e9 0a 00 00 00                                  	jmp    0x1d2b7c4920c5
    1d2b7c4920bb:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    1d2b7c4920c1:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    1d2b7c4920c5:	c5 d8 59 c9                                     	vmulps xmm1,xmm4,xmm1
    1d2b7c4920c9:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    1d2b7c4920d3:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    1d2b7c4920d8:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    1d2b7c4920dc:	c5 f0 58 e3                                     	vaddps xmm4,xmm1,xmm3
    1d2b7c4920e0:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    1d2b7c4920e6:	0f 84 5f 00 00 00                               	je     0x1d2b7c49214b
    1d2b7c4920ec:	c4 e3 79 08 cc 09                               	vroundps xmm1,xmm4,0x9
    1d2b7c4920f2:	4c 8b 15 90 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc90]        # 0x1d2b7c491d89
    1d2b7c4920f9:	c4 c1 70 54 32                                  	vandps xmm6,xmm1,XMMWORD PTR [r10]
    1d2b7c4920fe:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    1d2b7c492108:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c49210d:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c492111:	c5 c8 c2 f7 01                                  	vcmpltps xmm6,xmm6,xmm7
    1d2b7c492116:	49 ba 40 79 db 07 50 5d 00 00                   	movabs r10,0x5d5007db7940
    1d2b7c492120:	c5 70 c2 f9 00                                  	vcmpeqps xmm15,xmm1,xmm1
    1d2b7c492125:	c4 41 70 54 c7                                  	vandps xmm8,xmm1,xmm15
    1d2b7c49212a:	c4 41 70 c2 3a 0d                               	vcmpgeps xmm15,xmm1,XMMWORD PTR [r10]
    1d2b7c492130:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    1d2b7c492135:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    1d2b7c49213a:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    1d2b7c49213e:	c5 f9 28 d9                                     	vmovapd xmm3,xmm1
    1d2b7c492142:	c5 f9 28 cc                                     	vmovapd xmm1,xmm4
    1d2b7c492146:	e9 48 00 00 00                                  	jmp    0x1d2b7c492193
    1d2b7c49214b:	c4 e3 79 08 d9 09                               	vroundps xmm3,xmm1,0x9
    1d2b7c492151:	4c 8b 15 31 fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc31]        # 0x1d2b7c491d89
    1d2b7c492158:	c4 c1 60 54 22                                  	vandps xmm4,xmm3,XMMWORD PTR [r10]
    1d2b7c49215d:	4c 8b 15 9c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9c]        # 0x1d2b7c492100
    1d2b7c492164:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c492169:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c49216d:	c5 d8 c2 f7 01                                  	vcmpltps xmm6,xmm4,xmm7
    1d2b7c492172:	4c 8b 15 9f ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff9f]        # 0x1d2b7c492118
    1d2b7c492179:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    1d2b7c49217e:	c4 41 60 54 c7                                  	vandps xmm8,xmm3,xmm15
    1d2b7c492183:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    1d2b7c492189:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    1d2b7c49218e:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    1d2b7c492193:	c4 e3 79 08 e2 09                               	vroundps xmm4,xmm2,0x9
    1d2b7c492199:	4c 8b 15 78 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff78]        # 0x1d2b7c492118
    1d2b7c4921a0:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    1d2b7c4921a5:	c4 41 58 54 cf                                  	vandps xmm9,xmm4,xmm15
    1d2b7c4921aa:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    1d2b7c4921b0:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    1d2b7c4921b5:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    1d2b7c4921ba:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    1d2b7c4921c4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    1d2b7c4921c9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    1d2b7c4921ce:	4c 8b 15 b4 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbb4]        # 0x1d2b7c491d89
    1d2b7c4921d5:	c4 41 58 54 1a                                  	vandps xmm11,xmm4,XMMWORD PTR [r10]
    1d2b7c4921da:	c5 a0 c2 ff 01                                  	vcmpltps xmm7,xmm11,xmm7
    1d2b7c4921df:	c4 41 41 df fa                                  	vpandn xmm15,xmm7,xmm10
    1d2b7c4921e4:	c5 b1 db ff                                     	vpand  xmm7,xmm9,xmm7
    1d2b7c4921e8:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4921ed:	c4 41 79 6e c8                                  	vmovd  xmm9,r8d
    1d2b7c4921f2:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    1d2b7c4921f7:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    1d2b7c4921fc:	c4 42 41 3d db                                  	vpmaxsd xmm11,xmm7,xmm11
    1d2b7c492201:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    1d2b7c492206:	45 85 e4                                        	test   r12d,r12d
    1d2b7c492209:	0f 84 4b 00 00 00                               	je     0x1d2b7c49225a
    1d2b7c49220f:	c5 79 6e da                                     	vmovd  xmm11,edx
    1d2b7c492213:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    1d2b7c492218:	c4 41 41 db db                                  	vpand  xmm11,xmm7,xmm11
    1d2b7c49221d:	85 d2                                           	test   edx,edx
    1d2b7c49221f:	0f 85 35 00 00 00                               	jne    0x1d2b7c49225a
    1d2b7c492225:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    1d2b7c492229:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    1d2b7c49222e:	c4 41 41 66 e1                                  	vpcmpgtd xmm12,xmm7,xmm9
    1d2b7c492233:	c4 41 19 db e3                                  	vpand  xmm12,xmm12,xmm11
    1d2b7c492238:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c49223d:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    1d2b7c492242:	c5 79 66 ef                                     	vpcmpgtd xmm13,xmm0,xmm7
    1d2b7c492246:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    1d2b7c49224b:	c4 41 21 db dd                                  	vpand  xmm11,xmm11,xmm13
    1d2b7c492250:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    1d2b7c492255:	c4 41 41 fe db                                  	vpaddd xmm11,xmm7,xmm11
    1d2b7c49225a:	45 8b c7                                        	mov    r8d,r15d
    1d2b7c49225d:	85 f6                                           	test   esi,esi
    1d2b7c49225f:	44 0f 45 c0                                     	cmovne r8d,eax
    1d2b7c492263:	c4 41 49 df fa                                  	vpandn xmm15,xmm6,xmm10
    1d2b7c492268:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    1d2b7c49226c:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    1d2b7c492271:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    1d2b7c492276:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c49227b:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    1d2b7c492280:	c4 42 49 3d d2                                  	vpmaxsd xmm10,xmm6,xmm10
    1d2b7c492285:	c4 42 29 39 d0                                  	vpminsd xmm10,xmm10,xmm8
    1d2b7c49228a:	45 85 db                                        	test   r11d,r11d
    1d2b7c49228d:	0f 84 4b 00 00 00                               	je     0x1d2b7c4922de
    1d2b7c492293:	c4 41 79 6e d0                                  	vmovd  xmm10,r8d
    1d2b7c492298:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    1d2b7c49229d:	c4 41 49 db d2                                  	vpand  xmm10,xmm6,xmm10
    1d2b7c4922a2:	45 85 c0                                        	test   r8d,r8d
    1d2b7c4922a5:	0f 85 33 00 00 00                               	jne    0x1d2b7c4922de
    1d2b7c4922ab:	c5 79 6e d3                                     	vmovd  xmm10,ebx
    1d2b7c4922af:	c4 42 79 58 d2                                  	vpbroadcastd xmm10,xmm10
    1d2b7c4922b4:	c4 41 49 66 e0                                  	vpcmpgtd xmm12,xmm6,xmm8
    1d2b7c4922b9:	c4 41 19 db e2                                  	vpand  xmm12,xmm12,xmm10
    1d2b7c4922be:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4922c3:	c4 42 19 0a e7                                  	vpsignd xmm12,xmm12,xmm15
    1d2b7c4922c8:	c5 f9 66 c6                                     	vpcmpgtd xmm0,xmm0,xmm6
    1d2b7c4922cc:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    1d2b7c4922d1:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    1d2b7c4922d5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    1d2b7c4922da:	c5 49 fe d0                                     	vpaddd xmm10,xmm6,xmm0
    1d2b7c4922de:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    1d2b7c4922e2:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c4922e7:	c4 62 29 40 d0                                  	vpmulld xmm10,xmm10,xmm0
    1d2b7c4922ec:	c4 41 29 fe e3                                  	vpaddd xmm12,xmm10,xmm11
    1d2b7c4922f1:	c4 63 79 16 e1 03                               	vpextrd ecx,xmm12,0x3
    1d2b7c4922f7:	c4 63 79 16 e6 02                               	vpextrd esi,xmm12,0x2
    1d2b7c4922fd:	c4 43 79 16 e1 01                               	vpextrd r9d,xmm12,0x1
    1d2b7c492303:	c4 41 79 7e e7                                  	vmovd  r15d,xmm12
    1d2b7c492308:	81 ff 00 26 00 00                               	cmp    edi,0x2600
    1d2b7c49230e:	0f 84 d2 08 00 00                               	je     0x1d2b7c492be6
    1d2b7c492314:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    1d2b7c49231e:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    1d2b7c492323:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    1d2b7c492328:	c4 c1 41 fe fc                                  	vpaddd xmm7,xmm7,xmm12
    1d2b7c49232d:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    1d2b7c492332:	c4 42 41 3d ed                                  	vpmaxsd xmm13,xmm7,xmm13
    1d2b7c492337:	c4 42 11 39 e9                                  	vpminsd xmm13,xmm13,xmm9
    1d2b7c49233c:	45 85 e4                                        	test   r12d,r12d
    1d2b7c49233f:	0f 84 46 00 00 00                               	je     0x1d2b7c49238b
    1d2b7c492345:	c5 79 6e ea                                     	vmovd  xmm13,edx
    1d2b7c492349:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    1d2b7c49234e:	c4 41 41 db ed                                  	vpand  xmm13,xmm7,xmm13
    1d2b7c492353:	85 d2                                           	test   edx,edx
    1d2b7c492355:	0f 85 30 00 00 00                               	jne    0x1d2b7c49238b
    1d2b7c49235b:	c4 41 11 ef ed                                  	vpxor  xmm13,xmm13,xmm13
    1d2b7c492360:	c4 41 41 66 c9                                  	vpcmpgtd xmm9,xmm7,xmm9
    1d2b7c492365:	c5 31 db c8                                     	vpand  xmm9,xmm9,xmm0
    1d2b7c492369:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c49236e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    1d2b7c492373:	c5 11 66 ef                                     	vpcmpgtd xmm13,xmm13,xmm7
    1d2b7c492377:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    1d2b7c49237c:	c4 41 79 db cd                                  	vpand  xmm9,xmm0,xmm13
    1d2b7c492381:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    1d2b7c492386:	c4 41 41 fe e9                                  	vpaddd xmm13,xmm7,xmm9
    1d2b7c49238b:	c4 c1 49 fe f4                                  	vpaddd xmm6,xmm6,xmm12
    1d2b7c492390:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    1d2b7c492394:	c4 e2 49 3d ff                                  	vpmaxsd xmm7,xmm6,xmm7
    1d2b7c492399:	c4 c2 41 39 f8                                  	vpminsd xmm7,xmm7,xmm8
    1d2b7c49239e:	45 85 db                                        	test   r11d,r11d
    1d2b7c4923a1:	0f 84 4f 00 00 00                               	je     0x1d2b7c4923f6
    1d2b7c4923a7:	c4 c1 79 6e f8                                  	vmovd  xmm7,r8d
    1d2b7c4923ac:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c4923b1:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    1d2b7c4923b5:	45 85 c0                                        	test   r8d,r8d
    1d2b7c4923b8:	0f 85 38 00 00 00                               	jne    0x1d2b7c4923f6
    1d2b7c4923be:	c5 f9 6e fb                                     	vmovd  xmm7,ebx
    1d2b7c4923c2:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c4923c7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    1d2b7c4923cc:	c4 41 49 66 c0                                  	vpcmpgtd xmm8,xmm6,xmm8
    1d2b7c4923d1:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    1d2b7c4923d5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    1d2b7c4923da:	c4 42 39 0a c7                                  	vpsignd xmm8,xmm8,xmm15
    1d2b7c4923df:	c5 31 66 ce                                     	vpcmpgtd xmm9,xmm9,xmm6
    1d2b7c4923e3:	c4 41 31 df f8                                  	vpandn xmm15,xmm9,xmm8
    1d2b7c4923e8:	c4 c1 41 db f9                                  	vpand  xmm7,xmm7,xmm9
    1d2b7c4923ed:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    1d2b7c4923f2:	c5 c9 fe ff                                     	vpaddd xmm7,xmm6,xmm7
    1d2b7c4923f6:	c4 e2 41 40 c0                                  	vpmulld xmm0,xmm7,xmm0
    1d2b7c4923fb:	c4 c1 79 fe f3                                  	vpaddd xmm6,xmm0,xmm11
    1d2b7c492400:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    1d2b7c492404:	0f 85 16 00 00 00                               	jne    0x1d2b7c492420
    1d2b7c49240a:	c4 c1 21 fe fc                                  	vpaddd xmm7,xmm11,xmm12
    1d2b7c49240f:	c5 91 76 ff                                     	vpcmpeqd xmm7,xmm13,xmm7
    1d2b7c492413:	c5 f8 50 df                                     	vmovmskps ebx,xmm7
    1d2b7c492417:	83 fb 0f                                        	cmp    ebx,0xf
    1d2b7c49241a:	0f 84 72 03 00 00                               	je     0x1d2b7c492792
    1d2b7c492420:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    1d2b7c492423:	83 e3 08                                        	and    ebx,0x8
    1d2b7c492426:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    1d2b7c492429:	83 e2 04                                        	and    edx,0x4
    1d2b7c49242c:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    1d2b7c49242f:	83 e7 02                                        	and    edi,0x2
    1d2b7c492432:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    1d2b7c492436:	41 83 e0 01                                     	and    r8d,0x1
    1d2b7c49243a:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    1d2b7c49243e:	0f 84 7e 00 00 00                               	je     0x1d2b7c4924c2
    1d2b7c492444:	45 85 c0                                        	test   r8d,r8d
    1d2b7c492447:	0f 85 10 00 00 00                               	jne    0x1d2b7c49245d
    1d2b7c49244d:	4c 8b d8                                        	mov    r11,rax
    1d2b7c492450:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    1d2b7c492454:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    1d2b7c492458:	e9 10 00 00 00                                  	jmp    0x1d2b7c49246d
    1d2b7c49245d:	44 8b 45 d8                                     	mov    r8d,DWORD PTR [rbp-0x28]
    1d2b7c492461:	47 8d 1c b8                                     	lea    r11d,[r8+r15*4]
    1d2b7c492465:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    1d2b7c492469:	47 8b 1c 1c                                     	mov    r11d,DWORD PTR [r12+r11*1]
    1d2b7c49246d:	85 ff                                           	test   edi,edi
    1d2b7c49246f:	0f 85 08 00 00 00                               	jne    0x1d2b7c49247d
    1d2b7c492475:	48 8b f8                                        	mov    rdi,rax
    1d2b7c492478:	e9 08 00 00 00                                  	jmp    0x1d2b7c492485
    1d2b7c49247d:	43 8d 3c 88                                     	lea    edi,[r8+r9*4]
    1d2b7c492481:	41 8b 3c 3c                                     	mov    edi,DWORD PTR [r12+rdi*1]
    1d2b7c492485:	85 d2                                           	test   edx,edx
    1d2b7c492487:	0f 85 08 00 00 00                               	jne    0x1d2b7c492495
    1d2b7c49248d:	48 8b d0                                        	mov    rdx,rax
    1d2b7c492490:	e9 08 00 00 00                                  	jmp    0x1d2b7c49249d
    1d2b7c492495:	41 8d 14 b0                                     	lea    edx,[r8+rsi*4]
    1d2b7c492499:	41 8b 14 14                                     	mov    edx,DWORD PTR [r12+rdx*1]
    1d2b7c49249d:	85 db                                           	test   ebx,ebx
    1d2b7c49249f:	0f 85 10 00 00 00                               	jne    0x1d2b7c4924b5
    1d2b7c4924a5:	8b f2                                           	mov    esi,edx
    1d2b7c4924a7:	48 8b c8                                        	mov    rcx,rax
    1d2b7c4924aa:	41 8b d8                                        	mov    ebx,r8d
    1d2b7c4924ad:	49 8b d4                                        	mov    rdx,r12
    1d2b7c4924b0:	e9 2f 00 00 00                                  	jmp    0x1d2b7c4924e4
    1d2b7c4924b5:	8b f2                                           	mov    esi,edx
    1d2b7c4924b7:	41 8b d8                                        	mov    ebx,r8d
    1d2b7c4924ba:	49 8b d4                                        	mov    rdx,r12
    1d2b7c4924bd:	e9 1c 00 00 00                                  	jmp    0x1d2b7c4924de
    1d2b7c4924c2:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    1d2b7c4924c5:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    1d2b7c4924c9:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    1d2b7c4924cd:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c4924d0:	46 8d 04 bb                                     	lea    r8d,[rbx+r15*4]
    1d2b7c4924d4:	46 8b 1c 02                                     	mov    r11d,DWORD PTR [rdx+r8*1]
    1d2b7c4924d8:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    1d2b7c4924db:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    1d2b7c4924de:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    1d2b7c4924e1:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    1d2b7c4924e4:	c4 c1 11 fe fa                                  	vpaddd xmm7,xmm13,xmm10
    1d2b7c4924e9:	c4 41 79 6e c3                                  	vmovd  xmm8,r11d
    1d2b7c4924ee:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c4924f3:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    1d2b7c4924f7:	0f 84 74 00 00 00                               	je     0x1d2b7c492571
    1d2b7c4924fd:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    1d2b7c492501:	0f 85 08 00 00 00                               	jne    0x1d2b7c49250f
    1d2b7c492507:	4c 8b c0                                        	mov    r8,rax
    1d2b7c49250a:	e9 0d 00 00 00                                  	jmp    0x1d2b7c49251c
    1d2b7c49250f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    1d2b7c492514:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    1d2b7c492518:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    1d2b7c49251c:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    1d2b7c492520:	0f 85 08 00 00 00                               	jne    0x1d2b7c49252e
    1d2b7c492526:	4c 8b c8                                        	mov    r9,rax
    1d2b7c492529:	e9 0e 00 00 00                                  	jmp    0x1d2b7c49253c
    1d2b7c49252e:	c4 c3 79 16 f9 01                               	vpextrd r9d,xmm7,0x1
    1d2b7c492534:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    1d2b7c492538:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    1d2b7c49253c:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    1d2b7c492540:	0f 85 08 00 00 00                               	jne    0x1d2b7c49254e
    1d2b7c492546:	4c 8b d8                                        	mov    r11,rax
    1d2b7c492549:	e9 0e 00 00 00                                  	jmp    0x1d2b7c49255c
    1d2b7c49254e:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    1d2b7c492554:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c492558:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c49255c:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    1d2b7c492560:	0f 85 34 00 00 00                               	jne    0x1d2b7c49259a
    1d2b7c492566:	45 8b e0                                        	mov    r12d,r8d
    1d2b7c492569:	4c 8b c0                                        	mov    r8,rax
    1d2b7c49256c:	e9 40 00 00 00                                  	jmp    0x1d2b7c4925b1
    1d2b7c492571:	c4 c3 79 16 f8 01                               	vpextrd r8d,xmm7,0x1
    1d2b7c492577:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    1d2b7c49257b:	46 8b 0c 02                                     	mov    r9d,DWORD PTR [rdx+r8*1]
    1d2b7c49257f:	c4 c1 79 7e f8                                  	vmovd  r8d,xmm7
    1d2b7c492584:	46 8d 04 83                                     	lea    r8d,[rbx+r8*4]
    1d2b7c492588:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    1d2b7c49258c:	c4 c3 79 16 fb 02                               	vpextrd r11d,xmm7,0x2
    1d2b7c492592:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c492596:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c49259a:	c4 c3 79 16 fc 03                               	vpextrd r12d,xmm7,0x3
    1d2b7c4925a0:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    1d2b7c4925a4:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    1d2b7c4925a8:	45 8b d0                                        	mov    r10d,r8d
    1d2b7c4925ab:	45 8b c4                                        	mov    r8d,r12d
    1d2b7c4925ae:	45 8b e2                                        	mov    r12d,r10d
    1d2b7c4925b1:	c4 e3 39 22 ff 01                               	vpinsrd xmm7,xmm8,edi,0x1
    1d2b7c4925b7:	c4 41 79 6e c4                                  	vmovd  xmm8,r12d
    1d2b7c4925bc:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c4925c1:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    1d2b7c4925c7:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    1d2b7c4925cb:	0f 84 71 00 00 00                               	je     0x1d2b7c492642
    1d2b7c4925d1:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    1d2b7c4925d5:	0f 85 08 00 00 00                               	jne    0x1d2b7c4925e3
    1d2b7c4925db:	48 8b f8                                        	mov    rdi,rax
    1d2b7c4925de:	e9 0a 00 00 00                                  	jmp    0x1d2b7c4925ed
    1d2b7c4925e3:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    1d2b7c4925e7:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c4925ea:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c4925ed:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    1d2b7c4925f1:	0f 85 08 00 00 00                               	jne    0x1d2b7c4925ff
    1d2b7c4925f7:	4c 8b c8                                        	mov    r9,rax
    1d2b7c4925fa:	e9 0e 00 00 00                                  	jmp    0x1d2b7c49260d
    1d2b7c4925ff:	c4 c3 79 16 f1 01                               	vpextrd r9d,xmm6,0x1
    1d2b7c492605:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    1d2b7c492609:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    1d2b7c49260d:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    1d2b7c492611:	0f 85 08 00 00 00                               	jne    0x1d2b7c49261f
    1d2b7c492617:	4c 8b e0                                        	mov    r12,rax
    1d2b7c49261a:	e9 0e 00 00 00                                  	jmp    0x1d2b7c49262d
    1d2b7c49261f:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    1d2b7c492625:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    1d2b7c492629:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    1d2b7c49262d:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    1d2b7c492631:	0f 85 30 00 00 00                               	jne    0x1d2b7c492667
    1d2b7c492637:	44 8b ff                                        	mov    r15d,edi
    1d2b7c49263a:	48 8b f8                                        	mov    rdi,rax
    1d2b7c49263d:	e9 3c 00 00 00                                  	jmp    0x1d2b7c49267e
    1d2b7c492642:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    1d2b7c492648:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c49264b:	44 8b 0c 3a                                     	mov    r9d,DWORD PTR [rdx+rdi*1]
    1d2b7c49264f:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    1d2b7c492653:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    1d2b7c492656:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c492659:	c4 c3 79 16 f4 02                               	vpextrd r12d,xmm6,0x2
    1d2b7c49265f:	46 8d 24 a3                                     	lea    r12d,[rbx+r12*4]
    1d2b7c492663:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    1d2b7c492667:	c4 c3 79 16 f7 03                               	vpextrd r15d,xmm6,0x3
    1d2b7c49266d:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    1d2b7c492671:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    1d2b7c492675:	45 8b d7                                        	mov    r10d,r15d
    1d2b7c492678:	44 8b ff                                        	mov    r15d,edi
    1d2b7c49267b:	41 8b fa                                        	mov    edi,r10d
    1d2b7c49267e:	c4 e3 41 22 f6 02                               	vpinsrd xmm6,xmm7,esi,0x2
    1d2b7c492684:	c4 c3 39 22 fb 02                               	vpinsrd xmm7,xmm8,r11d,0x2
    1d2b7c49268a:	c4 c1 79 fe c5                                  	vpaddd xmm0,xmm0,xmm13
    1d2b7c49268f:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    1d2b7c492694:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    1d2b7c492699:	c4 43 39 22 c1 01                               	vpinsrd xmm8,xmm8,r9d,0x1
    1d2b7c49269f:	c4 43 39 22 c4 02                               	vpinsrd xmm8,xmm8,r12d,0x2
    1d2b7c4926a5:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    1d2b7c4926a9:	0f 84 6b 00 00 00                               	je     0x1d2b7c49271a
    1d2b7c4926af:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    1d2b7c4926b3:	0f 85 08 00 00 00                               	jne    0x1d2b7c4926c1
    1d2b7c4926b9:	48 8b f0                                        	mov    rsi,rax
    1d2b7c4926bc:	e9 0a 00 00 00                                  	jmp    0x1d2b7c4926cb
    1d2b7c4926c1:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    1d2b7c4926c5:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    1d2b7c4926c8:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    1d2b7c4926cb:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    1d2b7c4926cf:	0f 85 08 00 00 00                               	jne    0x1d2b7c4926dd
    1d2b7c4926d5:	4c 8b c8                                        	mov    r9,rax
    1d2b7c4926d8:	e9 0e 00 00 00                                  	jmp    0x1d2b7c4926eb
    1d2b7c4926dd:	c4 c3 79 16 c1 01                               	vpextrd r9d,xmm0,0x1
    1d2b7c4926e3:	46 8d 0c 8b                                     	lea    r9d,[rbx+r9*4]
    1d2b7c4926e7:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    1d2b7c4926eb:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    1d2b7c4926ef:	0f 85 08 00 00 00                               	jne    0x1d2b7c4926fd
    1d2b7c4926f5:	4c 8b d8                                        	mov    r11,rax
    1d2b7c4926f8:	e9 0e 00 00 00                                  	jmp    0x1d2b7c49270b
    1d2b7c4926fd:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    1d2b7c492703:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c492707:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c49270b:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    1d2b7c49270f:	0f 85 2a 00 00 00                               	jne    0x1d2b7c49273f
    1d2b7c492715:	e9 34 00 00 00                                  	jmp    0x1d2b7c49274e
    1d2b7c49271a:	c4 e3 79 16 c6 01                               	vpextrd esi,xmm0,0x1
    1d2b7c492720:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    1d2b7c492723:	44 8b 0c 32                                     	mov    r9d,DWORD PTR [rdx+rsi*1]
    1d2b7c492727:	c5 f9 7e c6                                     	vmovd  esi,xmm0
    1d2b7c49272b:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    1d2b7c49272e:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    1d2b7c492731:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    1d2b7c492737:	46 8d 1c 9b                                     	lea    r11d,[rbx+r11*4]
    1d2b7c49273b:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    1d2b7c49273f:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    1d2b7c492745:	42 8d 1c a3                                     	lea    ebx,[rbx+r12*4]
    1d2b7c492749:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    1d2b7c49274c:	8b c3                                           	mov    eax,ebx
    1d2b7c49274e:	c4 e3 49 22 c1 03                               	vpinsrd xmm0,xmm6,ecx,0x3
    1d2b7c492754:	c4 c3 41 22 f0 03                               	vpinsrd xmm6,xmm7,r8d,0x3
    1d2b7c49275a:	c5 f9 6e fe                                     	vmovd  xmm7,esi
    1d2b7c49275e:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    1d2b7c492763:	c4 c3 41 22 f9 01                               	vpinsrd xmm7,xmm7,r9d,0x1
    1d2b7c492769:	c4 c3 41 22 fb 02                               	vpinsrd xmm7,xmm7,r11d,0x2
    1d2b7c49276f:	c4 e3 41 22 f8 03                               	vpinsrd xmm7,xmm7,eax,0x3
    1d2b7c492775:	c4 63 39 22 c7 03                               	vpinsrd xmm8,xmm8,edi,0x3
    1d2b7c49277b:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    1d2b7c49277f:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    1d2b7c492784:	c4 41 79 28 c7                                  	vmovapd xmm8,xmm15
    1d2b7c492789:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    1d2b7c49278d:	e9 86 00 00 00                                  	jmp    0x1d2b7c492818
    1d2b7c492792:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    1d2b7c492795:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    1d2b7c492799:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    1d2b7c49279d:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    1d2b7c4927a2:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    1d2b7c4927a6:	c5 fb 10 3c 3a                                  	vmovsd xmm7,QWORD PTR [rdx+rdi*1]
    1d2b7c4927ab:	c5 f9 6c c7                                     	vpunpcklqdq xmm0,xmm0,xmm7
    1d2b7c4927af:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    1d2b7c4927b2:	c5 fb 10 3c 32                                  	vmovsd xmm7,QWORD PTR [rdx+rsi*1]
    1d2b7c4927b7:	8d 0c 8b                                        	lea    ecx,[rbx+rcx*4]
    1d2b7c4927ba:	c5 7b 10 04 0a                                  	vmovsd xmm8,QWORD PTR [rdx+rcx*1]
    1d2b7c4927bf:	c4 c1 41 6c f8                                  	vpunpcklqdq xmm7,xmm7,xmm8
    1d2b7c4927c4:	c5 78 c6 c7 dd                                  	vshufps xmm8,xmm0,xmm7,0xdd
    1d2b7c4927c9:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    1d2b7c4927ce:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    1d2b7c4927d3:	c5 f9 7e f1                                     	vmovd  ecx,xmm6
    1d2b7c4927d7:	03 cb                                           	add    ecx,ebx
    1d2b7c4927d9:	c5 fb 10 3c 0a                                  	vmovsd xmm7,QWORD PTR [rdx+rcx*1]
    1d2b7c4927de:	c4 e3 79 16 f1 01                               	vpextrd ecx,xmm6,0x1
    1d2b7c4927e4:	03 cb                                           	add    ecx,ebx
    1d2b7c4927e6:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    1d2b7c4927eb:	c4 c1 41 6c f9                                  	vpunpcklqdq xmm7,xmm7,xmm9
    1d2b7c4927f0:	c4 e3 79 16 f1 02                               	vpextrd ecx,xmm6,0x2
    1d2b7c4927f6:	03 cb                                           	add    ecx,ebx
    1d2b7c4927f8:	c5 7b 10 0c 0a                                  	vmovsd xmm9,QWORD PTR [rdx+rcx*1]
    1d2b7c4927fd:	c4 e3 79 16 f1 03                               	vpextrd ecx,xmm6,0x3
    1d2b7c492803:	03 d9                                           	add    ebx,ecx
    1d2b7c492805:	c5 fb 10 34 1a                                  	vmovsd xmm6,QWORD PTR [rdx+rbx*1]
    1d2b7c49280a:	c5 b1 6c f6                                     	vpunpcklqdq xmm6,xmm9,xmm6
    1d2b7c49280e:	c5 40 c6 ce dd                                  	vshufps xmm9,xmm7,xmm6,0xdd
    1d2b7c492813:	c5 c0 c6 f6 88                                  	vshufps xmm6,xmm7,xmm6,0x88
    1d2b7c492818:	c5 f0 5c cb                                     	vsubps xmm1,xmm1,xmm3
    1d2b7c49281c:	c5 d0 5c d9                                     	vsubps xmm3,xmm5,xmm1
    1d2b7c492820:	c5 e8 5c d4                                     	vsubps xmm2,xmm2,xmm4
    1d2b7c492824:	c5 d0 5c e2                                     	vsubps xmm4,xmm5,xmm2
    1d2b7c492828:	c5 d1 72 d0 18                                  	vpsrld xmm5,xmm0,0x18
    1d2b7c49282d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492832:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    1d2b7c492838:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    1d2b7c49283d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492842:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    1d2b7c492847:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    1d2b7c49284b:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    1d2b7c49284f:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    1d2b7c492854:	c5 d8 59 ed                                     	vmulps xmm5,xmm4,xmm5
    1d2b7c492858:	c4 c1 41 72 d0 18                               	vpsrld xmm7,xmm8,0x18
    1d2b7c49285e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492863:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    1d2b7c492869:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    1d2b7c49286e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492873:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    1d2b7c492878:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    1d2b7c49287c:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    1d2b7c492880:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    1d2b7c492885:	c5 e8 59 ff                                     	vmulps xmm7,xmm2,xmm7
    1d2b7c492889:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    1d2b7c49288d:	c5 e0 59 ed                                     	vmulps xmm5,xmm3,xmm5
    1d2b7c492891:	c5 c1 72 d6 18                                  	vpsrld xmm7,xmm6,0x18
    1d2b7c492896:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c49289b:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    1d2b7c4928a1:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    1d2b7c4928a6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4928ab:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    1d2b7c4928b0:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    1d2b7c4928b4:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    1d2b7c4928b8:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    1d2b7c4928bd:	c5 d8 59 ff                                     	vmulps xmm7,xmm4,xmm7
    1d2b7c4928c1:	c4 c1 29 72 d1 18                               	vpsrld xmm10,xmm9,0x18
    1d2b7c4928c7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4928cc:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    1d2b7c4928d2:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    1d2b7c4928d7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4928dc:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    1d2b7c4928e2:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    1d2b7c4928e7:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    1d2b7c4928ec:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    1d2b7c4928f1:	c4 41 68 59 d2                                  	vmulps xmm10,xmm2,xmm10
    1d2b7c4928f6:	c4 c1 40 58 fa                                  	vaddps xmm7,xmm7,xmm10
    1d2b7c4928fb:	c5 f0 59 ff                                     	vmulps xmm7,xmm1,xmm7
    1d2b7c4928ff:	c5 d0 58 ef                                     	vaddps xmm5,xmm5,xmm7
    1d2b7c492903:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    1d2b7c49290d:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    1d2b7c492912:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    1d2b7c492916:	c5 79 db d7                                     	vpand  xmm10,xmm0,xmm7
    1d2b7c49291a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c49291f:	c4 43 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm10,0x55
    1d2b7c492925:	c4 41 29 fa d7                                  	vpsubd xmm10,xmm10,xmm15
    1d2b7c49292a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c49292f:	c4 c1 29 72 d2 01                               	vpsrld xmm10,xmm10,0x1
    1d2b7c492935:	c4 41 78 5b d2                                  	vcvtdq2ps xmm10,xmm10
    1d2b7c49293a:	c4 41 28 58 d2                                  	vaddps xmm10,xmm10,xmm10
    1d2b7c49293f:	c4 41 28 58 d7                                  	vaddps xmm10,xmm10,xmm15
    1d2b7c492944:	c4 41 58 59 d2                                  	vmulps xmm10,xmm4,xmm10
    1d2b7c492949:	c5 39 db df                                     	vpand  xmm11,xmm8,xmm7
    1d2b7c49294d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492952:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    1d2b7c492958:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    1d2b7c49295d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492962:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    1d2b7c492968:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    1d2b7c49296d:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    1d2b7c492972:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    1d2b7c492977:	c4 41 68 59 db                                  	vmulps xmm11,xmm2,xmm11
    1d2b7c49297c:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    1d2b7c492981:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    1d2b7c492986:	c5 49 db df                                     	vpand  xmm11,xmm6,xmm7
    1d2b7c49298a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c49298f:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    1d2b7c492995:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    1d2b7c49299a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c49299f:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    1d2b7c4929a5:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    1d2b7c4929aa:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    1d2b7c4929af:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    1d2b7c4929b4:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    1d2b7c4929b9:	c5 31 db e7                                     	vpand  xmm12,xmm9,xmm7
    1d2b7c4929bd:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c4929c2:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    1d2b7c4929c8:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    1d2b7c4929cd:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c4929d2:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    1d2b7c4929d8:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    1d2b7c4929dd:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    1d2b7c4929e2:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    1d2b7c4929e7:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    1d2b7c4929ec:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    1d2b7c4929f1:	c4 41 70 59 db                                  	vmulps xmm11,xmm1,xmm11
    1d2b7c4929f6:	c4 41 28 58 d3                                  	vaddps xmm10,xmm10,xmm11
    1d2b7c4929fb:	c5 a1 72 d0 10                                  	vpsrld xmm11,xmm0,0x10
    1d2b7c492a00:	c5 21 db df                                     	vpand  xmm11,xmm11,xmm7
    1d2b7c492a04:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492a09:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    1d2b7c492a0f:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    1d2b7c492a14:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492a19:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    1d2b7c492a1f:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    1d2b7c492a24:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    1d2b7c492a29:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    1d2b7c492a2e:	c4 41 58 59 db                                  	vmulps xmm11,xmm4,xmm11
    1d2b7c492a33:	c4 c1 19 72 d0 10                               	vpsrld xmm12,xmm8,0x10
    1d2b7c492a39:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    1d2b7c492a3d:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492a42:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    1d2b7c492a48:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    1d2b7c492a4d:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492a52:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    1d2b7c492a58:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    1d2b7c492a5d:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    1d2b7c492a62:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    1d2b7c492a67:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    1d2b7c492a6c:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    1d2b7c492a71:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    1d2b7c492a76:	c5 99 72 d6 10                                  	vpsrld xmm12,xmm6,0x10
    1d2b7c492a7b:	c5 19 db e7                                     	vpand  xmm12,xmm12,xmm7
    1d2b7c492a7f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492a84:	c4 43 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm12,0x55
    1d2b7c492a8a:	c4 41 19 fa e7                                  	vpsubd xmm12,xmm12,xmm15
    1d2b7c492a8f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492a94:	c4 c1 19 72 d4 01                               	vpsrld xmm12,xmm12,0x1
    1d2b7c492a9a:	c4 41 78 5b e4                                  	vcvtdq2ps xmm12,xmm12
    1d2b7c492a9f:	c4 41 18 58 e4                                  	vaddps xmm12,xmm12,xmm12
    1d2b7c492aa4:	c4 41 18 58 e7                                  	vaddps xmm12,xmm12,xmm15
    1d2b7c492aa9:	c4 41 58 59 e4                                  	vmulps xmm12,xmm4,xmm12
    1d2b7c492aae:	c4 c1 11 72 d1 10                               	vpsrld xmm13,xmm9,0x10
    1d2b7c492ab4:	c5 11 db ef                                     	vpand  xmm13,xmm13,xmm7
    1d2b7c492ab8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492abd:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    1d2b7c492ac3:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    1d2b7c492ac8:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492acd:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    1d2b7c492ad3:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    1d2b7c492ad8:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    1d2b7c492add:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    1d2b7c492ae2:	c4 41 68 59 ed                                  	vmulps xmm13,xmm2,xmm13
    1d2b7c492ae7:	c4 41 18 58 e5                                  	vaddps xmm12,xmm12,xmm13
    1d2b7c492aec:	c4 41 70 59 e4                                  	vmulps xmm12,xmm1,xmm12
    1d2b7c492af1:	c4 41 20 58 dc                                  	vaddps xmm11,xmm11,xmm12
    1d2b7c492af6:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    1d2b7c492afb:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    1d2b7c492aff:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492b04:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c492b0a:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c492b0f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492b14:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c492b19:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c492b1d:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c492b21:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c492b26:	c5 d8 59 c0                                     	vmulps xmm0,xmm4,xmm0
    1d2b7c492b2a:	c4 c1 39 72 d0 08                               	vpsrld xmm8,xmm8,0x8
    1d2b7c492b30:	c5 39 db c7                                     	vpand  xmm8,xmm8,xmm7
    1d2b7c492b34:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492b39:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    1d2b7c492b3f:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    1d2b7c492b44:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492b49:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    1d2b7c492b4f:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    1d2b7c492b54:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    1d2b7c492b59:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    1d2b7c492b5e:	c4 41 68 59 c0                                  	vmulps xmm8,xmm2,xmm8
    1d2b7c492b63:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    1d2b7c492b68:	c5 e0 59 c0                                     	vmulps xmm0,xmm3,xmm0
    1d2b7c492b6c:	c5 e1 72 d6 08                                  	vpsrld xmm3,xmm6,0x8
    1d2b7c492b71:	c5 e1 db df                                     	vpand  xmm3,xmm3,xmm7
    1d2b7c492b75:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492b7a:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    1d2b7c492b80:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    1d2b7c492b85:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492b8a:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    1d2b7c492b8f:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    1d2b7c492b93:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    1d2b7c492b97:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    1d2b7c492b9c:	c5 d8 59 db                                     	vmulps xmm3,xmm4,xmm3
    1d2b7c492ba0:	c4 c1 59 72 d1 08                               	vpsrld xmm4,xmm9,0x8
    1d2b7c492ba6:	c5 d9 db e7                                     	vpand  xmm4,xmm4,xmm7
    1d2b7c492baa:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492baf:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c492bb5:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c492bba:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492bbf:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c492bc4:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c492bc8:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c492bcc:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c492bd1:	c5 e8 59 d4                                     	vmulps xmm2,xmm2,xmm4
    1d2b7c492bd5:	c5 e0 58 d2                                     	vaddps xmm2,xmm3,xmm2
    1d2b7c492bd9:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    1d2b7c492bdd:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    1d2b7c492be1:	e9 84 01 00 00                                  	jmp    0x1d2b7c492d6a
    1d2b7c492be6:	83 7d e0 0f                                     	cmp    DWORD PTR [rbp-0x20],0xf
    1d2b7c492bea:	0f 84 68 00 00 00                               	je     0x1d2b7c492c58
    1d2b7c492bf0:	f6 45 e0 01                                     	test   BYTE PTR [rbp-0x20],0x1
    1d2b7c492bf4:	0f 85 0f 00 00 00                               	jne    0x1d2b7c492c09
    1d2b7c492bfa:	48 8b f8                                        	mov    rdi,rax
    1d2b7c492bfd:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    1d2b7c492c01:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    1d2b7c492c04:	e9 0e 00 00 00                                  	jmp    0x1d2b7c492c17
    1d2b7c492c09:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    1d2b7c492c0c:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    1d2b7c492c10:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    1d2b7c492c14:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c492c17:	f6 45 e0 02                                     	test   BYTE PTR [rbp-0x20],0x2
    1d2b7c492c1b:	0f 85 08 00 00 00                               	jne    0x1d2b7c492c29
    1d2b7c492c21:	4c 8b c0                                        	mov    r8,rax
    1d2b7c492c24:	e9 08 00 00 00                                  	jmp    0x1d2b7c492c31
    1d2b7c492c29:	46 8d 04 8b                                     	lea    r8d,[rbx+r9*4]
    1d2b7c492c2d:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    1d2b7c492c31:	f6 45 e0 04                                     	test   BYTE PTR [rbp-0x20],0x4
    1d2b7c492c35:	0f 85 08 00 00 00                               	jne    0x1d2b7c492c43
    1d2b7c492c3b:	48 8b f0                                        	mov    rsi,rax
    1d2b7c492c3e:	e9 06 00 00 00                                  	jmp    0x1d2b7c492c49
    1d2b7c492c43:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    1d2b7c492c46:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    1d2b7c492c49:	f6 45 e0 08                                     	test   BYTE PTR [rbp-0x20],0x8
    1d2b7c492c4d:	0f 85 21 00 00 00                               	jne    0x1d2b7c492c74
    1d2b7c492c53:	e9 24 00 00 00                                  	jmp    0x1d2b7c492c7c
    1d2b7c492c58:	8b 5d d8                                        	mov    ebx,DWORD PTR [rbp-0x28]
    1d2b7c492c5b:	8d 34 b3                                        	lea    esi,[rbx+rsi*4]
    1d2b7c492c5e:	48 8b 55 e8                                     	mov    rdx,QWORD PTR [rbp-0x18]
    1d2b7c492c62:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    1d2b7c492c65:	42 8d 3c 8b                                     	lea    edi,[rbx+r9*4]
    1d2b7c492c69:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    1d2b7c492c6d:	42 8d 3c bb                                     	lea    edi,[rbx+r15*4]
    1d2b7c492c71:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    1d2b7c492c74:	8d 1c 8b                                        	lea    ebx,[rbx+rcx*4]
    1d2b7c492c77:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    1d2b7c492c7a:	8b c3                                           	mov    eax,ebx
    1d2b7c492c7c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    1d2b7c492c80:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    1d2b7c492c85:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    1d2b7c492c8b:	c4 e3 79 22 c6 02                               	vpinsrd xmm0,xmm0,esi,0x2
    1d2b7c492c91:	c4 e3 79 22 c0 03                               	vpinsrd xmm0,xmm0,eax,0x3
    1d2b7c492c97:	c5 f1 72 d0 18                                  	vpsrld xmm1,xmm0,0x18
    1d2b7c492c9c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492ca1:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    1d2b7c492ca7:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    1d2b7c492cac:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492cb1:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    1d2b7c492cb6:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    1d2b7c492cba:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    1d2b7c492cbe:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    1d2b7c492cc3:	4c 8b 15 3b fc ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffc3b]        # 0x1d2b7c492905
    1d2b7c492cca:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    1d2b7c492ccf:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    1d2b7c492cd3:	c5 f9 db da                                     	vpand  xmm3,xmm0,xmm2
    1d2b7c492cd7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492cdc:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    1d2b7c492ce2:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    1d2b7c492ce7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492cec:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    1d2b7c492cf1:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    1d2b7c492cf5:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    1d2b7c492cf9:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    1d2b7c492cfe:	c5 d9 72 d0 10                                  	vpsrld xmm4,xmm0,0x10
    1d2b7c492d03:	c5 d9 db e2                                     	vpand  xmm4,xmm4,xmm2
    1d2b7c492d07:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492d0c:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    1d2b7c492d12:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    1d2b7c492d17:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492d1c:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    1d2b7c492d21:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    1d2b7c492d25:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    1d2b7c492d29:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    1d2b7c492d2e:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    1d2b7c492d33:	c5 f9 db c2                                     	vpand  xmm0,xmm0,xmm2
    1d2b7c492d37:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    1d2b7c492d3c:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    1d2b7c492d42:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    1d2b7c492d47:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    1d2b7c492d4c:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    1d2b7c492d51:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    1d2b7c492d55:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    1d2b7c492d59:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    1d2b7c492d5e:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    1d2b7c492d62:	c5 79 28 dc                                     	vmovapd xmm11,xmm4
    1d2b7c492d66:	c5 79 28 d3                                     	vmovapd xmm10,xmm3
    1d2b7c492d6a:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    1d2b7c492d74:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    1d2b7c492d79:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    1d2b7c492d7d:	c5 d0 59 d1                                     	vmulps xmm2,xmm5,xmm1
    1d2b7c492d81:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    1d2b7c492d85:	41 83 e1 01                                     	and    r9d,0x1
    1d2b7c492d89:	41 f7 d9                                        	neg    r9d
    1d2b7c492d8c:	c4 c1 79 6e d9                                  	vmovd  xmm3,r9d
    1d2b7c492d91:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    1d2b7c492d96:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    1d2b7c492d9a:	41 c1 e1 1e                                     	shl    r9d,0x1e
    1d2b7c492d9e:	41 c1 f9 1f                                     	sar    r9d,0x1f
    1d2b7c492da2:	c4 c3 61 22 d9 01                               	vpinsrd xmm3,xmm3,r9d,0x1
    1d2b7c492da8:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    1d2b7c492dac:	41 c1 e1 1d                                     	shl    r9d,0x1d
    1d2b7c492db0:	41 c1 f9 1f                                     	sar    r9d,0x1f
    1d2b7c492db4:	c4 c3 61 22 d9 02                               	vpinsrd xmm3,xmm3,r9d,0x2
    1d2b7c492dba:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    1d2b7c492dbe:	41 c1 e1 1c                                     	shl    r9d,0x1c
    1d2b7c492dc2:	41 c1 f9 1f                                     	sar    r9d,0x1f
    1d2b7c492dc6:	c4 c3 61 22 d9 03                               	vpinsrd xmm3,xmm3,r9d,0x3
    1d2b7c492dcc:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    1d2b7c492dd0:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
    1d2b7c492dd3:	8b db                                           	mov    ebx,ebx
    1d2b7c492dd5:	c5 fa 7f 54 1a 30                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x30],xmm2
    1d2b7c492ddb:	c5 a0 59 d1                                     	vmulps xmm2,xmm11,xmm1
    1d2b7c492ddf:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    1d2b7c492de3:	c5 fa 7f 54 1a 20                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x20],xmm2
    1d2b7c492de9:	c5 f8 59 c1                                     	vmulps xmm0,xmm0,xmm1
    1d2b7c492ded:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    1d2b7c492df1:	c5 fa 7f 44 1a 10                               	vmovdqu XMMWORD PTR [rdx+rbx*1+0x10],xmm0
    1d2b7c492df7:	c5 a8 59 c1                                     	vmulps xmm0,xmm10,xmm1
    1d2b7c492dfb:	c5 e1 db c0                                     	vpand  xmm0,xmm3,xmm0
    1d2b7c492dff:	c5 fa 7f 04 1a                                  	vmovdqu XMMWORD PTR [rdx+rbx*1],xmm0
    1d2b7c492e04:	b8 01 00 00 00                                  	mov    eax,0x1
    1d2b7c492e09:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c492e0c:	5d                                              	pop    rbp
    1d2b7c492e0d:	c2 08 00                                        	ret    0x8
    1d2b7c492e10:	33 c0                                           	xor    eax,eax
    1d2b7c492e12:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c492e15:	5d                                              	pop    rbp
    1d2b7c492e16:	c2 08 00                                        	ret    0x8
    1d2b7c492e19:	33 c0                                           	xor    eax,eax
    1d2b7c492e1b:	48 8b e5                                        	mov    rsp,rbp
    1d2b7c492e1e:	5d                                              	pop    rbp
    1d2b7c492e1f:	c2 08 00                                        	ret    0x8
    1d2b7c492e22:	90                                              	nop
    1d2b7c492e23:	90                                              	nop
    1d2b7c492e24:	07                                              	(bad)
    1d2b7c492e25:	00 00                                           	add    BYTE PTR [rax],al
    1d2b7c492e27:	00 08                                           	add    BYTE PTR [rax],cl
	...
