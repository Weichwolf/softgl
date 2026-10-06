
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms4/selected/sg_packet_sample_cube_coherent-liftoff.bin:     file format binary


Disassembly of section .data:

000010402e83fa40 <.data>:
    10402e83fa40:	41 bc af 00 00 00                               	mov    r12d,0xaf
    10402e83fa46:	e8 25 93 f5 ff                                  	call   0x10402e798d70
    10402e83fa4b:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
    10402e83fa52:	8b c0                                           	mov    eax,eax
    10402e83fa54:	8b d2                                           	mov    edx,edx
    10402e83fa56:	8b c9                                           	mov    ecx,ecx
    10402e83fa58:	8b db                                           	mov    ebx,ebx
    10402e83fa5a:	45 8b c9                                        	mov    r9d,r9d
    10402e83fa5d:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    10402e83fa60:	50                                              	push   rax
    10402e83fa61:	51                                              	push   rcx
    10402e83fa62:	57                                              	push   rdi
    10402e83fa63:	48 8d bd c4 fe ff ff                            	lea    rdi,[rbp-0x13c]
    10402e83fa6a:	33 c0                                           	xor    eax,eax
    10402e83fa6c:	b9 41 00 00 00                                  	mov    ecx,0x41
    10402e83fa71:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    10402e83fa73:	5f                                              	pop    rdi
    10402e83fa74:	59                                              	pop    rcx
    10402e83fa75:	58                                              	pop    rax
    10402e83fa76:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    10402e83fa7a:	0f 86 05 1c 00 00                               	jbe    0x10402e841685
    10402e83fa80:	45 85 c9                                        	test   r9d,r9d
    10402e83fa83:	0f 85 07 00 00 00                               	jne    0x10402e83fa90
    10402e83fa89:	33 c0                                           	xor    eax,eax
    10402e83fa8b:	e9 d5 1b 00 00                                  	jmp    0x10402e841665
    10402e83fa90:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    10402e83fa94:	45 8b 64 00 04                                  	mov    r12d,DWORD PTR [r8+rax*1+0x4]
    10402e83fa99:	45 85 e4                                        	test   r12d,r12d
    10402e83fa9c:	0f 85 07 00 00 00                               	jne    0x10402e83faa9
    10402e83faa2:	33 c0                                           	xor    eax,eax
    10402e83faa4:	e9 bc 1b 00 00                                  	jmp    0x10402e841665
    10402e83faa9:	45 8b f9                                        	mov    r15d,r9d
    10402e83faac:	41 83 e7 0f                                     	and    r15d,0xf
    10402e83fab0:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
    10402e83fab6:	49 ba 50 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b850
    10402e83fac0:	c4 c1 78 54 0a                                  	vandps xmm1,xmm0,XMMWORD PTR [r10]
    10402e83fac5:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    10402e83facf:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e83fad4:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e83fad8:	c5 f0 c2 da 02                                  	vcmpleps xmm3,xmm1,xmm2
    10402e83fadd:	c4 c1 7a 6f 24 10                               	vmovdqu xmm4,XMMWORD PTR [r8+rdx*1]
    10402e83fae3:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x10402e83fab8
    10402e83faea:	c4 c1 58 54 2a                                  	vandps xmm5,xmm4,XMMWORD PTR [r10]
    10402e83faef:	c5 d0 c2 f2 02                                  	vcmpleps xmm6,xmm5,xmm2
    10402e83faf4:	c5 e1 db de                                     	vpand  xmm3,xmm3,xmm6
    10402e83faf8:	c4 c1 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1]
    10402e83fafe:	4c 8b 15 b3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb3]        # 0x10402e83fab8
    10402e83fb05:	c4 c1 48 54 3a                                  	vandps xmm7,xmm6,XMMWORD PTR [r10]
    10402e83fb0a:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    10402e83fb0f:	c5 c0 c2 c2 02                                  	vcmpleps xmm0,xmm7,xmm2
    10402e83fb14:	c5 e1 db d8                                     	vpand  xmm3,xmm3,xmm0
    10402e83fb18:	c5 f8 50 f3                                     	vmovmskps esi,xmm3
    10402e83fb1c:	41 23 f7                                        	and    esi,r15d
    10402e83fb1f:	44 3b ce                                        	cmp    r9d,esi
    10402e83fb22:	0f 84 07 00 00 00                               	je     0x10402e83fb2f
    10402e83fb28:	33 c0                                           	xor    eax,eax
    10402e83fb2a:	e9 36 1b 00 00                                  	jmp    0x10402e841665
    10402e83fb2f:	c5 c0 c2 c5 02                                  	vcmpleps xmm0,xmm7,xmm5
    10402e83fb34:	c5 f0 c2 dd 02                                  	vcmpleps xmm3,xmm1,xmm5
    10402e83fb39:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    10402e83fb3d:	c5 f8 50 f0                                     	vmovmskps esi,xmm0
    10402e83fb41:	8b de                                           	mov    ebx,esi
    10402e83fb43:	41 23 d9                                        	and    ebx,r9d
    10402e83fb46:	44 3b cb                                        	cmp    r9d,ebx
    10402e83fb49:	0f 85 32 00 00 00                               	jne    0x10402e83fb81
    10402e83fb4f:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    10402e83fb54:	49 ba 60 b8 70 c9 23 63 00 00                   	movabs r10,0x6323c970b860
    10402e83fb5e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e83fb63:	4c 8b 15 ec ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffec]        # 0x10402e83fb56
    10402e83fb6a:	c4 c1 48 57 12                                  	vxorps xmm2,xmm6,XMMWORD PTR [r10]
    10402e83fb6f:	c7 45 d0 00 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x0
    10402e83fb76:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    10402e83fb7a:	33 f6                                           	xor    esi,esi
    10402e83fb7c:	e9 9d 00 00 00                                  	jmp    0x10402e83fc1e
    10402e83fb81:	c5 c0 c2 c1 02                                  	vcmpleps xmm0,xmm7,xmm1
    10402e83fb86:	c5 d0 c2 d9 02                                  	vcmpleps xmm3,xmm5,xmm1
    10402e83fb8b:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    10402e83fb8f:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    10402e83fb93:	8b ce                                           	mov    ecx,esi
    10402e83fb95:	83 f1 ff                                        	xor    ecx,0xffffffff
    10402e83fb98:	41 23 c9                                        	and    ecx,r9d
    10402e83fb9b:	41 23 c8                                        	and    ecx,r8d
    10402e83fb9e:	44 3b c9                                        	cmp    r9d,ecx
    10402e83fba1:	0f 85 29 00 00 00                               	jne    0x10402e83fbd0
    10402e83fba7:	c7 45 d0 02 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x2
    10402e83fbae:	41 8b c8                                        	mov    ecx,r8d
    10402e83fbb1:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    10402e83fbb5:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    10402e83fbb9:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    10402e83fbbd:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    10402e83fbc1:	be 01 00 00 00                                  	mov    esi,0x1
    10402e83fbc6:	c5 fa 6f 65 98                                  	vmovdqu xmm4,XMMWORD PTR [rbp-0x68]
    10402e83fbcb:	e9 4e 00 00 00                                  	jmp    0x10402e83fc1e
    10402e83fbd0:	41 8b c8                                        	mov    ecx,r8d
    10402e83fbd3:	0b ce                                           	or     ecx,esi
    10402e83fbd5:	41 23 c9                                        	and    ecx,r9d
    10402e83fbd8:	85 c9                                           	test   ecx,ecx
    10402e83fbda:	0f 84 07 00 00 00                               	je     0x10402e83fbe7
    10402e83fbe0:	33 c9                                           	xor    ecx,ecx
    10402e83fbe2:	e9 7c 1a 00 00                                  	jmp    0x10402e841663
    10402e83fbe7:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    10402e83fbec:	4c 8b 15 63 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff63]        # 0x10402e83fb56
    10402e83fbf3:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    10402e83fbf8:	c7 45 d0 04 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x4
    10402e83fbff:	c7 85 d8 fe ff ff 01 00 00 00                   	mov    DWORD PTR [rbp-0x128],0x1
    10402e83fc09:	41 8b c8                                        	mov    ecx,r8d
    10402e83fc0c:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    10402e83fc10:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    10402e83fc14:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    10402e83fc18:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    10402e83fc1c:	33 f6                                           	xor    esi,esi
    10402e83fc1e:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    10402e83fc22:	c5 c8 c2 cc 02                                  	vcmpleps xmm1,xmm6,xmm4
    10402e83fc27:	c5 f8 50 c9                                     	vmovmskps ecx,xmm1
    10402e83fc2b:	41 23 cf                                        	and    ecx,r15d
    10402e83fc2e:	85 c9                                           	test   ecx,ecx
    10402e83fc30:	0f 85 75 00 00 00                               	jne    0x10402e83fcab
    10402e83fc36:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x10402e83fb56
    10402e83fc3d:	c4 c1 78 57 0a                                  	vxorps xmm1,xmm0,XMMWORD PTR [r10]
    10402e83fc42:	85 f6                                           	test   esi,esi
    10402e83fc44:	0f 84 05 00 00 00                               	je     0x10402e83fc4f
    10402e83fc4a:	e9 04 00 00 00                                  	jmp    0x10402e83fc53
    10402e83fc4f:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    10402e83fc53:	4c 8b 15 fc fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffefc]        # 0x10402e83fb56
    10402e83fc5a:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    10402e83fc5f:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    10402e83fc65:	85 d2                                           	test   edx,edx
    10402e83fc67:	0f 84 09 00 00 00                               	je     0x10402e83fc76
    10402e83fc6d:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    10402e83fc71:	e9 04 00 00 00                                  	jmp    0x10402e83fc7a
    10402e83fc76:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    10402e83fc7a:	44 3b cb                                        	cmp    r9d,ebx
    10402e83fc7d:	0f 94 c2                                        	sete   dl
    10402e83fc80:	0f b6 d2                                        	movzx  edx,dl
    10402e83fc83:	85 d2                                           	test   edx,edx
    10402e83fc85:	0f 84 09 00 00 00                               	je     0x10402e83fc94
    10402e83fc8b:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    10402e83fc8f:	e9 00 00 00 00                                  	jmp    0x10402e83fc94
    10402e83fc94:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e83fc97:	83 ca 01                                        	or     edx,0x1
    10402e83fc9a:	41 b8 03 00 00 00                               	mov    r8d,0x3
    10402e83fca0:	85 f6                                           	test   esi,esi
    10402e83fca2:	44 0f 44 c2                                     	cmove  r8d,edx
    10402e83fca6:	e9 25 00 00 00                                  	jmp    0x10402e83fcd0
    10402e83fcab:	41 3b c9                                        	cmp    ecx,r9d
    10402e83fcae:	0f 85 15 00 00 00                               	jne    0x10402e83fcc9
    10402e83fcb4:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    10402e83fcb8:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    10402e83fcbc:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    10402e83fcc0:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    10402e83fcc4:	e9 07 00 00 00                                  	jmp    0x10402e83fcd0
    10402e83fcc9:	33 c0                                           	xor    eax,eax
    10402e83fccb:	e9 95 19 00 00                                  	jmp    0x10402e841665
    10402e83fcd0:	41 8b d0                                        	mov    edx,r8d
    10402e83fcd3:	c1 e2 06                                        	shl    edx,0x6
    10402e83fcd6:	41 8d 14 14                                     	lea    edx,[r12+rdx*1]
    10402e83fcda:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    10402e83fcde:	4d 8b 64 24 17                                  	mov    r12,QWORD PTR [r12+0x17]
    10402e83fce3:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    10402e83fce6:	41 8b 84 14 24 01 00 00                         	mov    eax,DWORD PTR [r12+rdx*1+0x124]
    10402e83fcee:	85 c0                                           	test   eax,eax
    10402e83fcf0:	0f 85 07 00 00 00                               	jne    0x10402e83fcfd
    10402e83fcf6:	33 c0                                           	xor    eax,eax
    10402e83fcf8:	e9 68 19 00 00                                  	jmp    0x10402e841665
    10402e83fcfd:	45 8b 84 14 a4 02 00 00                         	mov    r8d,DWORD PTR [r12+rdx*1+0x2a4]
    10402e83fd05:	41 83 f8 00                                     	cmp    r8d,0x0
    10402e83fd09:	0f 8f 07 00 00 00                               	jg     0x10402e83fd16
    10402e83fd0f:	33 c0                                           	xor    eax,eax
    10402e83fd11:	e9 4f 19 00 00                                  	jmp    0x10402e841665
    10402e83fd16:	8d b2 24 04 00 00                               	lea    esi,[rdx+0x424]
    10402e83fd1c:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    10402e83fd1f:	41 8b 0c 34                                     	mov    ecx,DWORD PTR [r12+rsi*1]
    10402e83fd23:	33 d2                                           	xor    edx,edx
    10402e83fd25:	3b ca                                           	cmp    ecx,edx
    10402e83fd27:	0f 8f 27 00 00 00                               	jg     0x10402e83fd54
    10402e83fd2d:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    10402e83fd32:	8b f0                                           	mov    esi,eax
    10402e83fd34:	44 8b e1                                        	mov    r12d,ecx
    10402e83fd37:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    10402e83fd3b:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e83fd3f:	c5 f9 28 f4                                     	vmovapd xmm6,xmm4
    10402e83fd43:	c5 f9 28 e3                                     	vmovapd xmm4,xmm3
    10402e83fd47:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    10402e83fd4a:	33 c9                                           	xor    ecx,ecx
    10402e83fd4c:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    10402e83fd4f:	e9 0f 19 00 00                                  	jmp    0x10402e841663
    10402e83fd54:	ba 01 00 00 00                                  	mov    edx,0x1
    10402e83fd59:	f7 da                                           	neg    edx
    10402e83fd5b:	41 03 d0                                        	add    edx,r8d
    10402e83fd5e:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    10402e83fd68:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e83fd6d:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e83fd71:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    10402e83fd76:	4c 8b 15 e3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe3]        # 0x10402e83fd60
    10402e83fd7d:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e83fd82:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    10402e83fd86:	c5 d0 c2 c0 01                                  	vcmpltps xmm0,xmm5,xmm0
    10402e83fd8b:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    10402e83fd8f:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    10402e83fd93:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e83fd98:	c5 f0 5e d0                                     	vdivps xmm2,xmm1,xmm0
    10402e83fd9c:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    10402e83fda6:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e83fdab:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e83fdaf:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    10402e83fdb3:	c5 d8 5e c8                                     	vdivps xmm1,xmm4,xmm0
    10402e83fdb7:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    10402e83fdbb:	c5 fa 7f 8d b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm1
    10402e83fdc3:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    10402e83fdcd:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    10402e83fdd2:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    10402e83fdd6:	c5 fa 6f bd b4 fe ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x14c]
    10402e83fdde:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    10402e83fde2:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    10402e83fde5:	41 8b 74 1c 14                                  	mov    esi,DWORD PTR [r12+rbx*1+0x14]
    10402e83fdea:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    10402e83fded:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    10402e83fdf3:	41 8b 54 1c 10                                  	mov    edx,DWORD PTR [r12+rbx*1+0x10]
    10402e83fdf8:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    10402e83fdfd:	3b d3                                           	cmp    edx,ebx
    10402e83fdff:	0f 95 c3                                        	setne  bl
    10402e83fe02:	0f b6 db                                        	movzx  ebx,bl
    10402e83fe05:	41 bf 00 29 00 00                               	mov    r15d,0x2900
    10402e83fe0b:	41 3b d7                                        	cmp    edx,r15d
    10402e83fe0e:	41 0f 95 c7                                     	setne  r15b
    10402e83fe12:	45 0f b6 ff                                     	movzx  r15d,r15b
    10402e83fe16:	41 23 df                                        	and    ebx,r15d
    10402e83fe19:	85 db                                           	test   ebx,ebx
    10402e83fe1b:	0f 84 0f 00 00 00                               	je     0x10402e83fe30
    10402e83fe21:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    10402e83fe27:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    10402e83fe2b:	e9 08 00 00 00                                  	jmp    0x10402e83fe38
    10402e83fe30:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    10402e83fe34:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    10402e83fe38:	c5 e8 59 f9                                     	vmulps xmm7,xmm2,xmm1
    10402e83fe3c:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    10402e83fe3f:	45 8b 7c 1c 0c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0xc]
    10402e83fe44:	45 8b d0                                        	mov    r10d,r8d
    10402e83fe47:	c4 c1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,r10
    10402e83fe4c:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    10402e83fe51:	c5 e8 59 d0                                     	vmulps xmm2,xmm2,xmm0
    10402e83fe55:	bb 01 00 00 00                                  	mov    ebx,0x1
    10402e83fe5a:	f7 db                                           	neg    ebx
    10402e83fe5c:	03 d9                                           	add    ebx,ecx
    10402e83fe5e:	44 8b e3                                        	mov    r12d,ebx
    10402e83fe61:	44 23 e1                                        	and    r12d,ecx
    10402e83fe64:	89 45 d0                                        	mov    DWORD PTR [rbp-0x30],eax
    10402e83fe67:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    10402e83fe6d:	89 8d dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],ecx
    10402e83fe73:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    10402e83fe79:	41 23 c8                                        	and    ecx,r8d
    10402e83fe7c:	89 95 e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],edx
    10402e83fe82:	33 d2                                           	xor    edx,edx
    10402e83fe84:	85 c9                                           	test   ecx,ecx
    10402e83fe86:	0f 44 d0                                        	cmove  edx,eax
    10402e83fe89:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    10402e83fe8f:	44 8b d0                                        	mov    r10d,eax
    10402e83fe92:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    10402e83fe97:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    10402e83fe9c:	b8 2f 81 00 00                                  	mov    eax,0x812f
    10402e83fea1:	3b f0                                           	cmp    esi,eax
    10402e83fea3:	0f 95 c0                                        	setne  al
    10402e83fea6:	0f b6 c0                                        	movzx  eax,al
    10402e83fea9:	b9 00 29 00 00                                  	mov    ecx,0x2900
    10402e83feae:	3b f1                                           	cmp    esi,ecx
    10402e83feb0:	0f 95 c1                                        	setne  cl
    10402e83feb3:	0f b6 c9                                        	movzx  ecx,cl
    10402e83feb6:	23 c1                                           	and    eax,ecx
    10402e83feb8:	85 c0                                           	test   eax,eax
    10402e83feba:	0f 84 17 00 00 00                               	je     0x10402e83fed7
    10402e83fec0:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    10402e83fec8:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    10402e83fece:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    10402e83fed2:	e9 10 00 00 00                                  	jmp    0x10402e83fee7
    10402e83fed7:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    10402e83fedf:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    10402e83fee3:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    10402e83fee7:	c5 fa 7f 8d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm1
    10402e83feef:	c5 fa 6f 8d b4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x14c]
    10402e83fef7:	c5 f0 59 c8                                     	vmulps xmm1,xmm1,xmm0
    10402e83fefb:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    10402e83ff05:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e83ff0a:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    10402e83ff0e:	c5 f0 58 f0                                     	vaddps xmm6,xmm1,xmm0
    10402e83ff12:	b8 00 26 00 00                                  	mov    eax,0x2600
    10402e83ff17:	44 3b f8                                        	cmp    r15d,eax
    10402e83ff1a:	0f 94 c0                                        	sete   al
    10402e83ff1d:	0f b6 c0                                        	movzx  eax,al
    10402e83ff20:	85 c0                                           	test   eax,eax
    10402e83ff22:	0f 84 09 00 00 00                               	je     0x10402e83ff31
    10402e83ff28:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    10402e83ff2c:	e9 00 00 00 00                                  	jmp    0x10402e83ff31
    10402e83ff31:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    10402e83ff37:	4c 8b 15 7a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb7a]        # 0x10402e83fab8
    10402e83ff3e:	c4 c1 40 54 1a                                  	vandps xmm3,xmm7,XMMWORD PTR [r10]
    10402e83ff43:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    10402e83ff48:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    10402e83ff52:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    10402e83ff57:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    10402e83ff5b:	c5 e0 c2 d8 01                                  	vcmpltps xmm3,xmm3,xmm0
    10402e83ff60:	49 ba 40 b9 70 c9 23 63 00 00                   	movabs r10,0x6323c970b940
    10402e83ff6a:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    10402e83ff6f:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    10402e83ff74:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    10402e83ff7a:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    10402e83ff7e:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    10402e83ff83:	c5 fa 7f 95 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm2
    10402e83ff8b:	c5 fa 7f 95 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm2
    10402e83ff93:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    10402e83ff98:	c5 fa 6f 55 98                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x68]
    10402e83ff9d:	c5 fa 7f 9d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm3
    10402e83ffa5:	c5 fa 6f 9d a4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x15c]
    10402e83ffad:	c5 e0 58 da                                     	vaddps xmm3,xmm3,xmm2
    10402e83ffb1:	c5 fa 6f 95 b4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x14c]
    10402e83ffb9:	85 c0                                           	test   eax,eax
    10402e83ffbb:	0f 84 05 00 00 00                               	je     0x10402e83ffc6
    10402e83ffc1:	e9 04 00 00 00                                  	jmp    0x10402e83ffca
    10402e83ffc6:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    10402e83ffca:	c4 e3 79 08 da 09                               	vroundps xmm3,xmm2,0x9
    10402e83ffd0:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x10402e83ff62
    10402e83ffd7:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    10402e83ffdc:	c4 c1 60 54 e7                                  	vandps xmm4,xmm3,xmm15
    10402e83ffe1:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    10402e83ffe7:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    10402e83ffeb:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    10402e83fff0:	c5 fa 7f a5 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm4
    10402e83fff8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    10402e840002:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e840007:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    10402e84000b:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    10402e840010:	4c 8b 15 a1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaa1]        # 0x10402e83fab8
    10402e840017:	c4 c1 60 54 2a                                  	vandps xmm5,xmm3,XMMWORD PTR [r10]
    10402e84001c:	c5 d0 c2 e8 01                                  	vcmpltps xmm5,xmm5,xmm0
    10402e840021:	c5 fa 7f b5 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm6
    10402e840029:	c5 fa 6f b5 b4 fe ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x14c]
    10402e840031:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    10402e840035:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    10402e840039:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e84003e:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    10402e840044:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    10402e840048:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e84004d:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    10402e840051:	c4 e2 51 3d f6                                  	vpmaxsd xmm6,xmm5,xmm6
    10402e840056:	c4 e2 49 39 f0                                  	vpminsd xmm6,xmm6,xmm0
    10402e84005b:	8b 8d e0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x120]
    10402e840061:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    10402e840067:	b8 2f 81 00 00                                  	mov    eax,0x812f
    10402e84006c:	3b c8                                           	cmp    ecx,eax
    10402e84006e:	0f 95 c1                                        	setne  cl
    10402e840071:	0f b6 c9                                        	movzx  ecx,cl
    10402e840074:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    10402e84007a:	89 8d b0 fe ff ff                               	mov    DWORD PTR [rbp-0x150],ecx
    10402e840080:	b9 00 29 00 00                                  	mov    ecx,0x2900
    10402e840085:	3b c1                                           	cmp    eax,ecx
    10402e840087:	0f 95 c0                                        	setne  al
    10402e84008a:	0f b6 c0                                        	movzx  eax,al
    10402e84008d:	8b 8d b0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x150]
    10402e840093:	23 c8                                           	and    ecx,eax
    10402e840095:	85 c9                                           	test   ecx,ecx
    10402e840097:	0f 85 05 00 00 00                               	jne    0x10402e8400a2
    10402e84009d:	e9 8f 00 00 00                                  	jmp    0x10402e840131
    10402e8400a2:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    10402e8400a6:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e8400ab:	c5 d1 db f6                                     	vpand  xmm6,xmm5,xmm6
    10402e8400af:	8b c2                                           	mov    eax,edx
    10402e8400b1:	85 d2                                           	test   edx,edx
    10402e8400b3:	0f 84 07 00 00 00                               	je     0x10402e8400c0
    10402e8400b9:	8b d0                                           	mov    edx,eax
    10402e8400bb:	e9 71 00 00 00                                  	jmp    0x10402e840131
    10402e8400c0:	c4 c1 79 6e f0                                  	vmovd  xmm6,r8d
    10402e8400c5:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e8400ca:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    10402e8400d2:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    10402e8400d6:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    10402e8400de:	c5 d1 66 c0                                     	vpcmpgtd xmm0,xmm5,xmm0
    10402e8400e2:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    10402e8400e6:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    10402e8400ea:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8400ef:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e8400f4:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    10402e8400f9:	c5 fa 6f bd 28 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xd8]
    10402e840101:	c5 c1 66 fd                                     	vpcmpgtd xmm7,xmm7,xmm5
    10402e840105:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    10402e840109:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    10402e84010d:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e840112:	c5 d1 fe ff                                     	vpaddd xmm7,xmm5,xmm7
    10402e840116:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    10402e84011b:	8b d0                                           	mov    edx,eax
    10402e84011d:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    10402e840121:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    10402e840129:	c5 fa 6f bd 48 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xb8]
    10402e840131:	33 c0                                           	xor    eax,eax
    10402e840133:	45 85 e4                                        	test   r12d,r12d
    10402e840136:	0f 44 c3                                        	cmove  eax,ebx
    10402e840139:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    10402e840141:	c5 fa 6f 85 78 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x88]
    10402e840149:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    10402e84014d:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    10402e840151:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e840156:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    10402e84015e:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    10402e840162:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    10402e840167:	c5 fa 7f 95 e8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x118],xmm2
    10402e84016f:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    10402e840173:	c4 e2 79 3d d2                                  	vpmaxsd xmm2,xmm0,xmm2
    10402e840178:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
    10402e84017d:	b9 2f 81 00 00                                  	mov    ecx,0x812f
    10402e840182:	3b f1                                           	cmp    esi,ecx
    10402e840184:	0f 95 c1                                        	setne  cl
    10402e840187:	0f b6 c9                                        	movzx  ecx,cl
    10402e84018a:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    10402e840190:	b8 00 29 00 00                                  	mov    eax,0x2900
    10402e840195:	3b f0                                           	cmp    esi,eax
    10402e840197:	0f 95 c0                                        	setne  al
    10402e84019a:	0f b6 c0                                        	movzx  eax,al
    10402e84019d:	23 c8                                           	and    ecx,eax
    10402e84019f:	85 c9                                           	test   ecx,ecx
    10402e8401a1:	0f 85 05 00 00 00                               	jne    0x10402e8401ac
    10402e8401a7:	e9 95 00 00 00                                  	jmp    0x10402e840241
    10402e8401ac:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    10402e8401b2:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    10402e8401b6:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    10402e8401bb:	c5 f9 db d2                                     	vpand  xmm2,xmm0,xmm2
    10402e8401bf:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    10402e8401c5:	85 c0                                           	test   eax,eax
    10402e8401c7:	0f 84 05 00 00 00                               	je     0x10402e8401d2
    10402e8401cd:	e9 6f 00 00 00                                  	jmp    0x10402e840241
    10402e8401d2:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    10402e8401d8:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    10402e8401dc:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    10402e8401e1:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    10402e8401e5:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    10402e8401ed:	c5 f9 66 d9                                     	vpcmpgtd xmm3,xmm0,xmm1
    10402e8401f1:	c5 61 df fc                                     	vpandn xmm15,xmm3,xmm4
    10402e8401f5:	c5 e9 db db                                     	vpand  xmm3,xmm2,xmm3
    10402e8401f9:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    10402e8401fe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e840203:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    10402e840208:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    10402e840210:	c5 d9 66 e0                                     	vpcmpgtd xmm4,xmm4,xmm0
    10402e840214:	c5 59 df fb                                     	vpandn xmm15,xmm4,xmm3
    10402e840218:	c5 e9 db e4                                     	vpand  xmm4,xmm2,xmm4
    10402e84021c:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    10402e840221:	c5 f9 fe e4                                     	vpaddd xmm4,xmm0,xmm4
    10402e840225:	c5 fa 7f a5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm4
    10402e84022d:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    10402e840231:	c5 fa 6f 95 a4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x15c]
    10402e840239:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    10402e840241:	c5 fa 7f 85 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm0
    10402e840249:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    10402e84024e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    10402e840253:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    10402e840258:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    10402e840260:	c5 e9 fe ce                                     	vpaddd xmm1,xmm2,xmm6
    10402e840264:	c4 e3 79 16 c8 03                               	vpextrd eax,xmm1,0x3
    10402e84026a:	c4 e3 79 16 c9 02                               	vpextrd ecx,xmm1,0x2
    10402e840270:	c4 e3 79 16 cb 01                               	vpextrd ebx,xmm1,0x1
    10402e840276:	c4 c1 79 7e c8                                  	vmovd  r8d,xmm1
    10402e84027b:	41 81 ff 00 26 00 00                            	cmp    r15d,0x2600
    10402e840282:	0f 84 ee 02 00 00                               	je     0x10402e840576
    10402e840288:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    10402e840292:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    10402e840297:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    10402e84029b:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    10402e8402a3:	c5 d1 fe d4                                     	vpaddd xmm2,xmm5,xmm4
    10402e8402a7:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    10402e8402ab:	c4 e2 69 3d c9                                  	vpmaxsd xmm1,xmm2,xmm1
    10402e8402b0:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    10402e8402b8:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    10402e8402c0:	c4 e2 71 39 cb                                  	vpminsd xmm1,xmm1,xmm3
    10402e8402c5:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    10402e8402cc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    10402e8402cf:	b8 2f 81 00 00                                  	mov    eax,0x812f
    10402e8402d4:	44 3b e0                                        	cmp    r12d,eax
    10402e8402d7:	41 0f 95 c4                                     	setne  r12b
    10402e8402db:	45 0f b6 e4                                     	movzx  r12d,r12b
    10402e8402df:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    10402e8402e5:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    10402e8402eb:	b9 00 29 00 00                                  	mov    ecx,0x2900
    10402e8402f0:	3b c1                                           	cmp    eax,ecx
    10402e8402f2:	0f 95 c0                                        	setne  al
    10402e8402f5:	0f b6 c0                                        	movzx  eax,al
    10402e8402f8:	44 23 e0                                        	and    r12d,eax
    10402e8402fb:	45 85 e4                                        	test   r12d,r12d
    10402e8402fe:	0f 85 05 00 00 00                               	jne    0x10402e840309
    10402e840304:	e9 70 00 00 00                                  	jmp    0x10402e840379
    10402e840309:	c5 f9 6e ca                                     	vmovd  xmm1,edx
    10402e84030d:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    10402e840312:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    10402e840316:	8b c2                                           	mov    eax,edx
    10402e840318:	85 d2                                           	test   edx,edx
    10402e84031a:	0f 84 07 00 00 00                               	je     0x10402e840327
    10402e840320:	8b d0                                           	mov    edx,eax
    10402e840322:	e9 52 00 00 00                                  	jmp    0x10402e840379
    10402e840327:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    10402e84032b:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    10402e840333:	c5 e9 66 db                                     	vpcmpgtd xmm3,xmm2,xmm3
    10402e840337:	c5 61 df f9                                     	vpandn xmm15,xmm3,xmm1
    10402e84033b:	c5 f9 db db                                     	vpand  xmm3,xmm0,xmm3
    10402e84033f:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    10402e840344:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e840349:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    10402e84034e:	c5 f1 66 ea                                     	vpcmpgtd xmm5,xmm1,xmm2
    10402e840352:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    10402e840356:	c5 f9 db ed                                     	vpand  xmm5,xmm0,xmm5
    10402e84035a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e84035f:	c5 e9 fe ed                                     	vpaddd xmm5,xmm2,xmm5
    10402e840363:	8b d0                                           	mov    edx,eax
    10402e840365:	c5 fa 7f ad a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm5
    10402e84036d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    10402e840371:	c5 fa 6f 8d a4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x15c]
    10402e840379:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    10402e840381:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    10402e840385:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    10402e840389:	c4 e2 61 3d d2                                  	vpmaxsd xmm2,xmm3,xmm2
    10402e84038e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    10402e840396:	c4 e2 69 39 d5                                  	vpminsd xmm2,xmm2,xmm5
    10402e84039b:	b8 2f 81 00 00                                  	mov    eax,0x812f
    10402e8403a0:	3b f0                                           	cmp    esi,eax
    10402e8403a2:	0f 95 c0                                        	setne  al
    10402e8403a5:	0f b6 c0                                        	movzx  eax,al
    10402e8403a8:	b9 00 29 00 00                                  	mov    ecx,0x2900
    10402e8403ad:	3b f1                                           	cmp    esi,ecx
    10402e8403af:	0f 95 c1                                        	setne  cl
    10402e8403b2:	0f b6 c9                                        	movzx  ecx,cl
    10402e8403b5:	23 c1                                           	and    eax,ecx
    10402e8403b7:	85 c0                                           	test   eax,eax
    10402e8403b9:	0f 85 05 00 00 00                               	jne    0x10402e8403c4
    10402e8403bf:	e9 9f 00 00 00                                  	jmp    0x10402e840463
    10402e8403c4:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    10402e8403ca:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    10402e8403ce:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    10402e8403d3:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    10402e8403d7:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    10402e8403dd:	85 c0                                           	test   eax,eax
    10402e8403df:	0f 84 05 00 00 00                               	je     0x10402e8403ea
    10402e8403e5:	e9 79 00 00 00                                  	jmp    0x10402e840463
    10402e8403ea:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    10402e8403f0:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    10402e8403f4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    10402e8403f9:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    10402e8403fd:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    10402e840405:	c5 fa 6f 85 38 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc8]
    10402e84040d:	c5 e1 66 c0                                     	vpcmpgtd xmm0,xmm3,xmm0
    10402e840411:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    10402e840415:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    10402e840419:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e84041e:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    10402e840423:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    10402e840428:	c5 fa 7f 4d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm1
    10402e84042d:	c5 d1 66 cb                                     	vpcmpgtd xmm1,xmm5,xmm3
    10402e840431:	c5 71 df f8                                     	vpandn xmm15,xmm1,xmm0
    10402e840435:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    10402e840439:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    10402e84043e:	c5 e1 fe c9                                     	vpaddd xmm1,xmm3,xmm1
    10402e840442:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    10402e84044a:	c5 fa 7f ad 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm5
    10402e840452:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    10402e840456:	c5 fa 6f 85 28 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xd8]
    10402e84045e:	c5 fa 6f 4d a8                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x58]
    10402e840463:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    10402e840468:	c5 e9 fe ee                                     	vpaddd xmm5,xmm2,xmm6
    10402e84046c:	41 83 f9 0f                                     	cmp    r9d,0xf
    10402e840470:	0f 85 1f 00 00 00                               	jne    0x10402e840495
    10402e840476:	c5 c9 fe dc                                     	vpaddd xmm3,xmm6,xmm4
    10402e84047a:	c5 f1 76 db                                     	vpcmpeqd xmm3,xmm1,xmm3
    10402e84047e:	c5 f8 50 c3                                     	vmovmskps eax,xmm3
    10402e840482:	83 f8 0f                                        	cmp    eax,0xf
    10402e840485:	0f 85 05 00 00 00                               	jne    0x10402e840490
    10402e84048b:	e9 b6 01 00 00                                  	jmp    0x10402e840646
    10402e840490:	e9 00 00 00 00                                  	jmp    0x10402e840495
    10402e840495:	41 8b c1                                        	mov    eax,r9d
    10402e840498:	83 e0 08                                        	and    eax,0x8
    10402e84049b:	41 8b c9                                        	mov    ecx,r9d
    10402e84049e:	83 e1 04                                        	and    ecx,0x4
    10402e8404a1:	41 8b f1                                        	mov    esi,r9d
    10402e8404a4:	83 e6 02                                        	and    esi,0x2
    10402e8404a7:	45 8b e1                                        	mov    r12d,r9d
    10402e8404aa:	41 83 e4 01                                     	and    r12d,0x1
    10402e8404ae:	41 83 f9 0f                                     	cmp    r9d,0xf
    10402e8404b2:	0f 85 05 00 00 00                               	jne    0x10402e8404bd
    10402e8404b8:	e9 46 04 00 00                                  	jmp    0x10402e840903
    10402e8404bd:	45 85 e4                                        	test   r12d,r12d
    10402e8404c0:	0f 84 23 00 00 00                               	je     0x10402e8404e9
    10402e8404c6:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e8404c9:	45 8b f8                                        	mov    r15d,r8d
    10402e8404cc:	41 c1 e7 02                                     	shl    r15d,0x2
    10402e8404d0:	41 03 d7                                        	add    edx,r15d
    10402e8404d3:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    10402e8404d7:	4d 8b 7f 17                                     	mov    r15,QWORD PTR [r15+0x17]
    10402e8404db:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    10402e8404de:	41 8b 04 17                                     	mov    eax,DWORD PTR [r15+rdx*1]
    10402e8404e2:	33 d2                                           	xor    edx,edx
    10402e8404e4:	e9 07 00 00 00                                  	jmp    0x10402e8404f0
    10402e8404e9:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    10402e8404ec:	33 c0                                           	xor    eax,eax
    10402e8404ee:	33 d2                                           	xor    edx,edx
    10402e8404f0:	85 f6                                           	test   esi,esi
    10402e8404f2:	0f 84 26 00 00 00                               	je     0x10402e84051e
    10402e8404f8:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    10402e8404fc:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    10402e840502:	8b c3                                           	mov    eax,ebx
    10402e840504:	c1 e0 02                                        	shl    eax,0x2
    10402e840507:	44 03 f8                                        	add    r15d,eax
    10402e84050a:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e84050e:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840512:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    10402e840515:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    10402e840519:	e9 0b 00 00 00                                  	jmp    0x10402e840529
    10402e84051e:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    10402e840521:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    10402e840527:	8b ca                                           	mov    ecx,edx
    10402e840529:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    10402e84052c:	85 c0                                           	test   eax,eax
    10402e84052e:	0f 84 21 00 00 00                               	je     0x10402e840555
    10402e840534:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e840537:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    10402e84053d:	c1 e2 02                                        	shl    edx,0x2
    10402e840540:	03 c2                                           	add    eax,edx
    10402e840542:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840546:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    10402e84054a:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    10402e84054e:	33 c0                                           	xor    eax,eax
    10402e840550:	e9 09 00 00 00                                  	jmp    0x10402e84055e
    10402e840555:	33 c0                                           	xor    eax,eax
    10402e840557:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    10402e84055e:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    10402e840561:	85 d2                                           	test   edx,edx
    10402e840563:	0f 84 08 00 00 00                               	je     0x10402e840571
    10402e840569:	41 8b d7                                        	mov    edx,r15d
    10402e84056c:	e9 06 04 00 00                                  	jmp    0x10402e840977
    10402e840571:	e9 1d 04 00 00                                  	jmp    0x10402e840993
    10402e840576:	41 83 f9 0f                                     	cmp    r9d,0xf
    10402e84057a:	0f 85 05 00 00 00                               	jne    0x10402e840585
    10402e840580:	e9 e7 0d 00 00                                  	jmp    0x10402e84136c
    10402e840585:	41 8b f1                                        	mov    esi,r9d
    10402e840588:	83 e6 01                                        	and    esi,0x1
    10402e84058b:	85 f6                                           	test   esi,esi
    10402e84058d:	0f 84 20 00 00 00                               	je     0x10402e8405b3
    10402e840593:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    10402e840596:	45 8b e0                                        	mov    r12d,r8d
    10402e840599:	41 c1 e4 02                                     	shl    r12d,0x2
    10402e84059d:	41 03 f4                                        	add    esi,r12d
    10402e8405a0:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    10402e8405a4:	4d 8b 67 17                                     	mov    r12,QWORD PTR [r15+0x17]
    10402e8405a8:	45 8b 3c 34                                     	mov    r15d,DWORD PTR [r12+rsi*1]
    10402e8405ac:	33 f6                                           	xor    esi,esi
    10402e8405ae:	e9 05 00 00 00                                  	jmp    0x10402e8405b8
    10402e8405b3:	33 f6                                           	xor    esi,esi
    10402e8405b5:	45 33 ff                                        	xor    r15d,r15d
    10402e8405b8:	45 8b e1                                        	mov    r12d,r9d
    10402e8405bb:	41 83 e4 02                                     	and    r12d,0x2
    10402e8405bf:	45 85 e4                                        	test   r12d,r12d
    10402e8405c2:	0f 84 26 00 00 00                               	je     0x10402e8405ee
    10402e8405c8:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8405cc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    10402e8405cf:	8b c3                                           	mov    eax,ebx
    10402e8405d1:	c1 e0 02                                        	shl    eax,0x2
    10402e8405d4:	44 03 e0                                        	add    r12d,eax
    10402e8405d7:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e8405db:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e8405df:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    10402e8405e5:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    10402e8405e9:	e9 0b 00 00 00                                  	jmp    0x10402e8405f9
    10402e8405ee:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    10402e8405f1:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    10402e8405f7:	8b ce                                           	mov    ecx,esi
    10402e8405f9:	41 8b c1                                        	mov    eax,r9d
    10402e8405fc:	83 e0 04                                        	and    eax,0x4
    10402e8405ff:	85 c0                                           	test   eax,eax
    10402e840601:	0f 84 22 00 00 00                               	je     0x10402e840629
    10402e840607:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e84060a:	8b b5 d8 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x128]
    10402e840610:	c1 e6 02                                        	shl    esi,0x2
    10402e840613:	03 c6                                           	add    eax,esi
    10402e840615:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    10402e840619:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    10402e84061e:	44 8b 24 06                                     	mov    r12d,DWORD PTR [rsi+rax*1]
    10402e840622:	33 c0                                           	xor    eax,eax
    10402e840624:	e9 05 00 00 00                                  	jmp    0x10402e84062e
    10402e840629:	33 c0                                           	xor    eax,eax
    10402e84062b:	45 33 e4                                        	xor    r12d,r12d
    10402e84062e:	41 8b f1                                        	mov    esi,r9d
    10402e840631:	83 e6 08                                        	and    esi,0x8
    10402e840634:	85 f6                                           	test   esi,esi
    10402e840636:	0f 85 05 00 00 00                               	jne    0x10402e840641
    10402e84063c:	e9 b1 0d 00 00                                  	jmp    0x10402e8413f2
    10402e840641:	e9 88 0d 00 00                                  	jmp    0x10402e8413ce
    10402e840646:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e840649:	41 8b c8                                        	mov    ecx,r8d
    10402e84064c:	c1 e1 02                                        	shl    ecx,0x2
    10402e84064f:	03 c1                                           	add    eax,ecx
    10402e840651:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    10402e840655:	49 8b 4c 24 17                                  	mov    rcx,QWORD PTR [r12+0x17]
    10402e84065a:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    10402e84065f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e840662:	44 8b e3                                        	mov    r12d,ebx
    10402e840665:	41 c1 e4 02                                     	shl    r12d,0x2
    10402e840669:	41 03 c4                                        	add    eax,r12d
    10402e84066c:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    10402e840674:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    10402e840679:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    10402e840683:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e840688:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    10402e840692:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e840698:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    10402e84069d:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x10402e84068a
    10402e8406a4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8406a9:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x10402e84067b
    10402e8406b0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8406b6:	c4 c2 79 00 de                                  	vpshufb xmm3,xmm0,xmm14
    10402e8406bb:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    10402e8406c0:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e8406c3:	44 8b a5 d8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x128]
    10402e8406ca:	41 c1 e4 02                                     	shl    r12d,0x2
    10402e8406ce:	41 03 c4                                        	add    eax,r12d
    10402e8406d1:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    10402e8406d6:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e8406d9:	44 8b 65 d4                                     	mov    r12d,DWORD PTR [rbp-0x2c]
    10402e8406dd:	41 c1 e4 02                                     	shl    r12d,0x2
    10402e8406e1:	41 03 c4                                        	add    eax,r12d
    10402e8406e4:	c5 fb 10 0c 01                                  	vmovsd xmm1,QWORD PTR [rcx+rax*1]
    10402e8406e9:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x10402e84067b
    10402e8406f0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8406f5:	4c 8b 15 8e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8e]        # 0x10402e84068a
    10402e8406fc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e840702:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    10402e840707:	4c 8b 15 7c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff7c]        # 0x10402e84068a
    10402e84070e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e840713:	4c 8b 15 61 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff61]        # 0x10402e84067b
    10402e84071a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e840720:	c4 c2 71 00 c6                                  	vpshufb xmm0,xmm1,xmm14
    10402e840725:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e84072a:	49 ba 04 05 06 07 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c07060504
    10402e840734:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e840739:	4c 8b 15 4a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff4a]        # 0x10402e84068a
    10402e840740:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e840746:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    10402e84074b:	4c 8b 15 38 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff38]        # 0x10402e84068a
    10402e840752:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e840757:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x10402e84072c
    10402e84075e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e840764:	c4 c2 79 00 ce                                  	vpshufb xmm1,xmm0,xmm14
    10402e840769:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    10402e84076e:	49 ba 00 01 02 03 08 09 0a 0b                   	movabs r10,0xb0a090803020100
    10402e840778:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e84077d:	4c 8b 15 06 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff06]        # 0x10402e84068a
    10402e840784:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e84078a:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    10402e84078f:	4c 8b 15 f4 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffef4]        # 0x10402e84068a
    10402e840796:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e84079b:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x10402e840770
    10402e8407a2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8407a8:	c4 c2 79 00 d6                                  	vpshufb xmm2,xmm0,xmm14
    10402e8407ad:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    10402e8407b2:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e8407b5:	c5 f9 72 f5 02                                  	vpslld xmm0,xmm5,0x2
    10402e8407ba:	c4 c1 79 7e c4                                  	vmovd  r12d,xmm0
    10402e8407bf:	41 03 c4                                        	add    eax,r12d
    10402e8407c2:	c5 fb 10 2c 01                                  	vmovsd xmm5,QWORD PTR [rcx+rax*1]
    10402e8407c7:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e8407ca:	c4 c3 79 16 c4 01                               	vpextrd r12d,xmm0,0x1
    10402e8407d0:	41 03 c4                                        	add    eax,r12d
    10402e8407d3:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    10402e8407d8:	4c 8b 15 9c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9c]        # 0x10402e84067b
    10402e8407df:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8407e4:	4c 8b 15 9f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9f]        # 0x10402e84068a
    10402e8407eb:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8407f1:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    10402e8407f6:	4c 8b 15 8d fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe8d]        # 0x10402e84068a
    10402e8407fd:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e840802:	4c 8b 15 72 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe72]        # 0x10402e84067b
    10402e840809:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e84080f:	c4 c2 49 00 ee                                  	vpshufb xmm5,xmm6,xmm14
    10402e840814:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    10402e840819:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e84081c:	c4 c3 79 16 c4 02                               	vpextrd r12d,xmm0,0x2
    10402e840822:	41 03 c4                                        	add    eax,r12d
    10402e840825:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    10402e84082a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e84082d:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    10402e840833:	41 03 c4                                        	add    eax,r12d
    10402e840836:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    10402e84083b:	4c 8b 15 39 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe39]        # 0x10402e84067b
    10402e840842:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e840847:	4c 8b 15 3c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe3c]        # 0x10402e84068a
    10402e84084e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e840854:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    10402e840859:	4c 8b 15 2a fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe2a]        # 0x10402e84068a
    10402e840860:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e840865:	4c 8b 15 0f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe0f]        # 0x10402e84067b
    10402e84086c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e840872:	c4 c2 49 00 de                                  	vpshufb xmm3,xmm6,xmm14
    10402e840877:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    10402e84087c:	4c 8b 15 a9 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea9]        # 0x10402e84072c
    10402e840883:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e840888:	4c 8b 15 fb fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdfb]        # 0x10402e84068a
    10402e84088f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e840895:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    10402e84089a:	4c 8b 15 e9 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffde9]        # 0x10402e84068a
    10402e8408a1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8408a6:	4c 8b 15 7f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe7f]        # 0x10402e84072c
    10402e8408ad:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8408b3:	c4 c2 61 00 c6                                  	vpshufb xmm0,xmm3,xmm14
    10402e8408b8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    10402e8408bd:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x10402e840770
    10402e8408c4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8408c9:	4c 8b 15 ba fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdba]        # 0x10402e84068a
    10402e8408d0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8408d6:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    10402e8408db:	4c 8b 15 a8 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffda8]        # 0x10402e84068a
    10402e8408e2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    10402e8408e7:	4c 8b 15 82 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe82]        # 0x10402e840770
    10402e8408ee:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    10402e8408f4:	c4 c2 61 00 f6                                  	vpshufb xmm6,xmm3,xmm14
    10402e8408f9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    10402e8408fe:	e9 96 05 00 00                                  	jmp    0x10402e840e99
    10402e840903:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    10402e840907:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    10402e84090a:	8b c3                                           	mov    eax,ebx
    10402e84090c:	c1 e0 02                                        	shl    eax,0x2
    10402e84090f:	44 03 f8                                        	add    r15d,eax
    10402e840912:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840916:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e84091a:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    10402e84091d:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    10402e840921:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    10402e840925:	41 8b c0                                        	mov    eax,r8d
    10402e840928:	c1 e0 02                                        	shl    eax,0x2
    10402e84092b:	44 03 f8                                        	add    r15d,eax
    10402e84092e:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840932:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840936:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    10402e84093c:	42 8b 14 38                                     	mov    edx,DWORD PTR [rax+r15*1]
    10402e840940:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    10402e840944:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    10402e84094a:	c1 e0 02                                        	shl    eax,0x2
    10402e84094d:	44 03 f8                                        	add    r15d,eax
    10402e840950:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840954:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840958:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    10402e84095e:	42 8b 1c 38                                     	mov    ebx,DWORD PTR [rax+r15*1]
    10402e840962:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    10402e840968:	44 8b fb                                        	mov    r15d,ebx
    10402e84096b:	8b 85 cc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x134]
    10402e840971:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    10402e840977:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e84097a:	8b 5d d4                                        	mov    ebx,DWORD PTR [rbp-0x2c]
    10402e84097d:	c1 e3 02                                        	shl    ebx,0x2
    10402e840980:	03 d3                                           	add    edx,ebx
    10402e840982:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840986:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e84098a:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    10402e840990:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    10402e840993:	c5 fa 6f 9d 18 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xe8]
    10402e84099b:	c5 f1 fe db                                     	vpaddd xmm3,xmm1,xmm3
    10402e84099f:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    10402e8409a5:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    10402e8409a9:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e8409ae:	41 83 f9 0f                                     	cmp    r9d,0xf
    10402e8409b2:	0f 84 c0 00 00 00                               	je     0x10402e840a78
    10402e8409b8:	45 85 e4                                        	test   r12d,r12d
    10402e8409bb:	0f 84 24 00 00 00                               	je     0x10402e8409e5
    10402e8409c1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e8409c4:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    10402e8409c8:	c1 e3 02                                        	shl    ebx,0x2
    10402e8409cb:	03 d3                                           	add    edx,ebx
    10402e8409cd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e8409d1:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e8409d5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    10402e8409db:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    10402e8409de:	33 d2                                           	xor    edx,edx
    10402e8409e0:	e9 0a 00 00 00                                  	jmp    0x10402e8409ef
    10402e8409e5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    10402e8409eb:	33 c0                                           	xor    eax,eax
    10402e8409ed:	33 d2                                           	xor    edx,edx
    10402e8409ef:	85 f6                                           	test   esi,esi
    10402e8409f1:	0f 84 2a 00 00 00                               	je     0x10402e840a21
    10402e8409f7:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    10402e8409fa:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    10402e840a00:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    10402e840a06:	c1 e0 02                                        	shl    eax,0x2
    10402e840a09:	03 d8                                           	add    ebx,eax
    10402e840a0b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840a0f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840a13:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    10402e840a19:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    10402e840a1c:	e9 0e 00 00 00                                  	jmp    0x10402e840a2f
    10402e840a21:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    10402e840a27:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    10402e840a2d:	8b ca                                           	mov    ecx,edx
    10402e840a2f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    10402e840a32:	85 c0                                           	test   eax,eax
    10402e840a34:	0f 84 21 00 00 00                               	je     0x10402e840a5b
    10402e840a3a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e840a3d:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    10402e840a43:	c1 e2 02                                        	shl    edx,0x2
    10402e840a46:	03 c2                                           	add    eax,edx
    10402e840a48:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840a4c:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    10402e840a50:	44 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+rax*1]
    10402e840a54:	33 c0                                           	xor    eax,eax
    10402e840a56:	e9 05 00 00 00                                  	jmp    0x10402e840a60
    10402e840a5b:	33 c0                                           	xor    eax,eax
    10402e840a5d:	45 33 c0                                        	xor    r8d,r8d
    10402e840a60:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    10402e840a63:	85 d2                                           	test   edx,edx
    10402e840a65:	0f 84 08 00 00 00                               	je     0x10402e840a73
    10402e840a6b:	41 8b d0                                        	mov    edx,r8d
    10402e840a6e:	e9 7a 00 00 00                                  	jmp    0x10402e840aed
    10402e840a73:	e9 94 00 00 00                                  	jmp    0x10402e840b0c
    10402e840a78:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840a7b:	c4 e3 79 16 db 01                               	vpextrd ebx,xmm3,0x1
    10402e840a81:	c1 e3 02                                        	shl    ebx,0x2
    10402e840a84:	03 d3                                           	add    edx,ebx
    10402e840a86:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840a8a:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e840a8e:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    10402e840a94:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    10402e840a97:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840a9a:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    10402e840a9e:	c1 e3 02                                        	shl    ebx,0x2
    10402e840aa1:	03 d3                                           	add    edx,ebx
    10402e840aa3:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840aa7:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e840aab:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    10402e840ab1:	8b 0c 13                                        	mov    ecx,DWORD PTR [rbx+rdx*1]
    10402e840ab4:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840ab7:	c4 e3 79 16 db 02                               	vpextrd ebx,xmm3,0x2
    10402e840abd:	c1 e3 02                                        	shl    ebx,0x2
    10402e840ac0:	03 d3                                           	add    edx,ebx
    10402e840ac2:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840ac6:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e840aca:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    10402e840ad0:	8b 34 13                                        	mov    esi,DWORD PTR [rbx+rdx*1]
    10402e840ad3:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    10402e840ad9:	8b c8                                           	mov    ecx,eax
    10402e840adb:	41 8b c0                                        	mov    eax,r8d
    10402e840ade:	44 8b c6                                        	mov    r8d,esi
    10402e840ae1:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    10402e840ae7:	8b b5 dc fe ff ff                               	mov    esi,DWORD PTR [rbp-0x124]
    10402e840aed:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840af0:	c4 e3 79 16 db 03                               	vpextrd ebx,xmm3,0x3
    10402e840af6:	c1 e3 02                                        	shl    ebx,0x2
    10402e840af9:	03 d3                                           	add    edx,ebx
    10402e840afb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840aff:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e840b03:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    10402e840b09:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    10402e840b0c:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    10402e840b12:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    10402e840b1a:	c4 e3 49 22 c2 01                               	vpinsrd xmm0,xmm6,edx,0x1
    10402e840b20:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    10402e840b26:	c5 f9 6e da                                     	vmovd  xmm3,edx
    10402e840b2a:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    10402e840b2f:	c4 e3 61 22 d9 01                               	vpinsrd xmm3,xmm3,ecx,0x1
    10402e840b35:	41 83 f9 0f                                     	cmp    r9d,0xf
    10402e840b39:	0f 84 b0 00 00 00                               	je     0x10402e840bef
    10402e840b3f:	45 85 e4                                        	test   r12d,r12d
    10402e840b42:	0f 84 1e 00 00 00                               	je     0x10402e840b66
    10402e840b48:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    10402e840b4b:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    10402e840b4f:	c1 e2 02                                        	shl    edx,0x2
    10402e840b52:	03 ca                                           	add    ecx,edx
    10402e840b54:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840b58:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    10402e840b5c:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    10402e840b5f:	33 c9                                           	xor    ecx,ecx
    10402e840b61:	e9 04 00 00 00                                  	jmp    0x10402e840b6a
    10402e840b66:	33 c9                                           	xor    ecx,ecx
    10402e840b68:	33 db                                           	xor    ebx,ebx
    10402e840b6a:	85 f6                                           	test   esi,esi
    10402e840b6c:	0f 84 27 00 00 00                               	je     0x10402e840b99
    10402e840b72:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840b75:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    10402e840b7b:	c4 e3 79 16 e8 01                               	vpextrd eax,xmm5,0x1
    10402e840b81:	c1 e0 02                                        	shl    eax,0x2
    10402e840b84:	03 d0                                           	add    edx,eax
    10402e840b86:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840b8a:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840b8e:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    10402e840b91:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    10402e840b94:	e9 06 00 00 00                                  	jmp    0x10402e840b9f
    10402e840b99:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    10402e840b9f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    10402e840ba2:	85 c0                                           	test   eax,eax
    10402e840ba4:	0f 84 23 00 00 00                               	je     0x10402e840bcd
    10402e840baa:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e840bad:	c4 e3 79 16 ea 02                               	vpextrd edx,xmm5,0x2
    10402e840bb3:	c1 e2 02                                        	shl    edx,0x2
    10402e840bb6:	03 c2                                           	add    eax,edx
    10402e840bb8:	48 8b 55 f0                                     	mov    rdx,QWORD PTR [rbp-0x10]
    10402e840bbc:	48 8b 52 17                                     	mov    rdx,QWORD PTR [rdx+0x17]
    10402e840bc0:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    10402e840bc3:	8b 0c 02                                        	mov    ecx,DWORD PTR [rdx+rax*1]
    10402e840bc6:	33 c0                                           	xor    eax,eax
    10402e840bc8:	e9 0b 00 00 00                                  	jmp    0x10402e840bd8
    10402e840bcd:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    10402e840bd0:	33 c0                                           	xor    eax,eax
    10402e840bd2:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    10402e840bd8:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    10402e840bdb:	85 d2                                           	test   edx,edx
    10402e840bdd:	0f 84 07 00 00 00                               	je     0x10402e840bea
    10402e840be3:	8b d1                                           	mov    edx,ecx
    10402e840be5:	e9 69 00 00 00                                  	jmp    0x10402e840c53
    10402e840bea:	e9 91 00 00 00                                  	jmp    0x10402e840c80
    10402e840bef:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840bf2:	c4 e3 79 16 eb 01                               	vpextrd ebx,xmm5,0x1
    10402e840bf8:	c1 e3 02                                        	shl    ebx,0x2
    10402e840bfb:	03 d3                                           	add    edx,ebx
    10402e840bfd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840c01:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e840c05:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    10402e840c0b:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    10402e840c0e:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    10402e840c11:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    10402e840c15:	c1 e2 02                                        	shl    edx,0x2
    10402e840c18:	03 ca                                           	add    ecx,edx
    10402e840c1a:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    10402e840c1d:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    10402e840c20:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    10402e840c26:	c1 e3 02                                        	shl    ebx,0x2
    10402e840c29:	03 cb                                           	add    ecx,ebx
    10402e840c2b:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840c2f:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e840c33:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    10402e840c39:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    10402e840c3c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    10402e840c3f:	8b ca                                           	mov    ecx,edx
    10402e840c41:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    10402e840c47:	8b 95 c4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x13c]
    10402e840c4d:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    10402e840c53:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840c56:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    10402e840c5c:	c4 e3 79 16 e8 03                               	vpextrd eax,xmm5,0x3
    10402e840c62:	c1 e0 02                                        	shl    eax,0x2
    10402e840c65:	03 d0                                           	add    edx,eax
    10402e840c67:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840c6b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840c6f:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    10402e840c75:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    10402e840c78:	8b c1                                           	mov    eax,ecx
    10402e840c7a:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    10402e840c80:	c4 c3 79 22 f7 02                               	vpinsrd xmm6,xmm0,r15d,0x2
    10402e840c86:	c4 c3 61 22 c0 02                               	vpinsrd xmm0,xmm3,r8d,0x2
    10402e840c8c:	c5 e9 fe d9                                     	vpaddd xmm3,xmm2,xmm1
    10402e840c90:	c5 f9 6e eb                                     	vmovd  xmm5,ebx
    10402e840c94:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    10402e840c99:	8b 55 d4                                        	mov    edx,DWORD PTR [rbp-0x2c]
    10402e840c9c:	c4 e3 51 22 ea 01                               	vpinsrd xmm5,xmm5,edx,0x1
    10402e840ca2:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    10402e840ca8:	41 83 f9 0f                                     	cmp    r9d,0xf
    10402e840cac:	0f 84 bd 00 00 00                               	je     0x10402e840d6f
    10402e840cb2:	45 85 e4                                        	test   r12d,r12d
    10402e840cb5:	0f 84 24 00 00 00                               	je     0x10402e840cdf
    10402e840cbb:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840cbe:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    10402e840cc2:	c1 e3 02                                        	shl    ebx,0x2
    10402e840cc5:	03 d3                                           	add    edx,ebx
    10402e840cc7:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    10402e840ccb:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    10402e840ccf:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    10402e840cd5:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    10402e840cd8:	33 d2                                           	xor    edx,edx
    10402e840cda:	e9 0a 00 00 00                                  	jmp    0x10402e840ce9
    10402e840cdf:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    10402e840ce5:	33 c0                                           	xor    eax,eax
    10402e840ce7:	33 d2                                           	xor    edx,edx
    10402e840ce9:	85 f6                                           	test   esi,esi
    10402e840ceb:	0f 84 2a 00 00 00                               	je     0x10402e840d1b
    10402e840cf1:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    10402e840cf4:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    10402e840cfa:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    10402e840d00:	c1 e0 02                                        	shl    eax,0x2
    10402e840d03:	03 d8                                           	add    ebx,eax
    10402e840d05:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840d09:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840d0d:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    10402e840d13:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    10402e840d16:	e9 0e 00 00 00                                  	jmp    0x10402e840d29
    10402e840d1b:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    10402e840d21:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    10402e840d27:	8b ca                                           	mov    ecx,edx
    10402e840d29:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    10402e840d2c:	85 c0                                           	test   eax,eax
    10402e840d2e:	0f 84 20 00 00 00                               	je     0x10402e840d54
    10402e840d34:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    10402e840d37:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    10402e840d3d:	c1 e2 02                                        	shl    edx,0x2
    10402e840d40:	03 c2                                           	add    eax,edx
    10402e840d42:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e840d46:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    10402e840d4a:	8b 1c 02                                        	mov    ebx,DWORD PTR [rdx+rax*1]
    10402e840d4d:	33 c0                                           	xor    eax,eax
    10402e840d4f:	e9 04 00 00 00                                  	jmp    0x10402e840d58
    10402e840d54:	33 c0                                           	xor    eax,eax
    10402e840d56:	33 db                                           	xor    ebx,ebx
    10402e840d58:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    10402e840d5b:	85 d2                                           	test   edx,edx
    10402e840d5d:	0f 84 07 00 00 00                               	je     0x10402e840d6a
    10402e840d63:	8b d3                                           	mov    edx,ebx
    10402e840d65:	e9 77 00 00 00                                  	jmp    0x10402e840de1
    10402e840d6a:	e9 90 00 00 00                                  	jmp    0x10402e840dff
    10402e840d6f:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840d72:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    10402e840d78:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    10402e840d7e:	c1 e0 02                                        	shl    eax,0x2
    10402e840d81:	03 d0                                           	add    edx,eax
    10402e840d83:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840d87:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840d8b:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    10402e840d91:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    10402e840d94:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840d97:	c5 f9 7e d8                                     	vmovd  eax,xmm3
    10402e840d9b:	c1 e0 02                                        	shl    eax,0x2
    10402e840d9e:	03 d0                                           	add    edx,eax
    10402e840da0:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840da4:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840da8:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    10402e840dae:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    10402e840db1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840db4:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    10402e840dba:	c1 e0 02                                        	shl    eax,0x2
    10402e840dbd:	03 d0                                           	add    edx,eax
    10402e840dbf:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e840dc3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e840dc7:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    10402e840dcd:	8b 34 10                                        	mov    esi,DWORD PTR [rax+rdx*1]
    10402e840dd0:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    10402e840dd6:	41 8b d4                                        	mov    edx,r12d
    10402e840dd9:	8b de                                           	mov    ebx,esi
    10402e840ddb:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    10402e840de1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    10402e840de4:	c4 e3 79 16 de 03                               	vpextrd esi,xmm3,0x3
    10402e840dea:	c1 e6 02                                        	shl    esi,0x2
    10402e840ded:	03 d6                                           	add    edx,esi
    10402e840def:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    10402e840df3:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    10402e840df8:	44 8b 24 16                                     	mov    r12d,DWORD PTR [rsi+rdx*1]
    10402e840dfc:	41 8b c4                                        	mov    eax,r12d
    10402e840dff:	8b 95 cc fe ff ff                               	mov    edx,DWORD PTR [rbp-0x134]
    10402e840e05:	c4 e3 49 22 ca 03                               	vpinsrd xmm1,xmm6,edx,0x3
    10402e840e0b:	8b 95 d0 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x130]
    10402e840e11:	c4 e3 79 22 d2 03                               	vpinsrd xmm2,xmm0,edx,0x3
    10402e840e17:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    10402e840e1d:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    10402e840e21:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e840e26:	c4 e3 49 22 f1 01                               	vpinsrd xmm6,xmm6,ecx,0x1
    10402e840e2c:	c4 e3 49 22 f3 02                               	vpinsrd xmm6,xmm6,ebx,0x2
    10402e840e32:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    10402e840e38:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    10402e840e3e:	c4 e3 51 22 c2 03                               	vpinsrd xmm0,xmm5,edx,0x3
    10402e840e44:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    10402e840e47:	89 9d e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],ebx
    10402e840e4d:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    10402e840e53:	44 89 bd c8 fe ff ff                            	mov    DWORD PTR [rbp-0x138],r15d
    10402e840e5a:	41 8b d0                                        	mov    edx,r8d
    10402e840e5d:	c5 fa 7f b5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm6
    10402e840e65:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    10402e840e69:	c5 fa 7f 95 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm2
    10402e840e71:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    10402e840e75:	8b 9d cc fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x134]
    10402e840e7b:	8b 75 d8                                        	mov    esi,DWORD PTR [rbp-0x28]
    10402e840e7e:	44 8b 85 d0 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x130]
    10402e840e85:	44 8b 7d dc                                     	mov    r15d,DWORD PTR [rbp-0x24]
    10402e840e89:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    10402e840e91:	c5 fa 6f 8d 94 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x16c]
    10402e840e99:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    10402e840ea1:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    10402e840ea6:	c5 fa 7f 4d 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm1
    10402e840eab:	c5 fa 6f 8d 08 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xf8]
    10402e840eb3:	c5 f0 5c cf                                     	vsubps xmm1,xmm1,xmm7
    10402e840eb7:	c5 f8 5c c1                                     	vsubps xmm0,xmm0,xmm1
    10402e840ebb:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    10402e840ec0:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    10402e840ec8:	c5 fa 6f 95 e8 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x118]
    10402e840ed0:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    10402e840ed5:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    10402e840edd:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    10402e840ee1:	c5 c0 5c fa                                     	vsubps xmm7,xmm7,xmm2
    10402e840ee5:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    10402e840eed:	c5 e1 72 d3 18                                  	vpsrld xmm3,xmm3,0x18
    10402e840ef2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e840ef7:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    10402e840efd:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    10402e840f02:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e840f07:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    10402e840f0c:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    10402e840f10:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    10402e840f14:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    10402e840f19:	c5 c0 59 db                                     	vmulps xmm3,xmm7,xmm3
    10402e840f1d:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    10402e840f22:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    10402e840f27:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e840f2c:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e840f32:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e840f37:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e840f3c:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e840f41:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e840f45:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e840f49:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e840f4e:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    10402e840f52:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    10402e840f56:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    10402e840f5a:	c5 d1 72 d6 18                                  	vpsrld xmm5,xmm6,0x18
    10402e840f5f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e840f64:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e840f6a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e840f6f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e840f74:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e840f79:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e840f7d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e840f81:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e840f86:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    10402e840f8a:	c5 fa 7f a5 f8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x108],xmm4
    10402e840f92:	c5 fa 6f a5 68 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x98]
    10402e840f9a:	c5 d9 72 d4 18                                  	vpsrld xmm4,xmm4,0x18
    10402e840f9f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e840fa4:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e840faa:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e840faf:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e840fb4:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e840fb9:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e840fbd:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e840fc1:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e840fc6:	c5 e8 59 e4                                     	vmulps xmm4,xmm2,xmm4
    10402e840fca:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    10402e840fce:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    10402e840fd2:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    10402e840fd6:	c5 fa 6f a5 78 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x88]
    10402e840fde:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    10402e840fe8:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    10402e840fed:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    10402e840ff1:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    10402e840ff5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e840ffa:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    10402e841000:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    10402e841005:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e84100a:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    10402e84100f:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    10402e841013:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    10402e841017:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    10402e84101c:	c5 c0 59 e4                                     	vmulps xmm4,xmm7,xmm4
    10402e841020:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    10402e841025:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    10402e84102a:	c5 fa 7f b5 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm6
    10402e841032:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    10402e841037:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    10402e84103b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e841040:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e841046:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e84104b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e841050:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e841055:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e841059:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e84105d:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e841062:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    10402e841066:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    10402e84106a:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    10402e84106e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    10402e841076:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    10402e84107b:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    10402e84107f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e841084:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    10402e84108a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    10402e84108f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e841094:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    10402e841099:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    10402e84109d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    10402e8410a1:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    10402e8410a6:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    10402e8410aa:	c5 fa 6f b5 68 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x98]
    10402e8410b2:	c5 fa 7f 7d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm7
    10402e8410b7:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    10402e8410bc:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e8410c0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8410c5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e8410cb:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e8410d0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8410d5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e8410da:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e8410de:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e8410e2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e8410e7:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    10402e8410eb:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    10402e8410ef:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    10402e8410f3:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    10402e8410f7:	c5 fa 6f 6d a8                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x58]
    10402e8410fc:	c5 fa 6f b5 78 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x88]
    10402e841104:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    10402e841109:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    10402e84110e:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e841112:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e841117:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e84111d:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e841122:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e841127:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e84112c:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e841130:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e841134:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e841139:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    10402e84113d:	c5 fa 6f 75 98                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x68]
    10402e841142:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    10402e841147:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    10402e84114c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    10402e841150:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e841155:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    10402e84115b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    10402e841160:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e841165:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    10402e84116a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    10402e84116e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    10402e841172:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    10402e841177:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    10402e84117b:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    10402e84117f:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    10402e841183:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    10402e841188:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    10402e841190:	c5 c1 72 d7 10                                  	vpsrld xmm7,xmm7,0x10
    10402e841195:	c5 fa 7f 85 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm0
    10402e84119d:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    10402e8411a2:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
    10402e8411a6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8411ab:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e8411b1:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e8411b6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8411bb:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e8411c0:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e8411c4:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e8411c8:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e8411cd:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e8411d1:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    10402e8411d9:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    10402e8411de:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    10402e8411e3:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    10402e8411e7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8411ec:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e8411f2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e8411f7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8411fc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e841201:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e841205:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e841209:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e84120e:	c5 e8 59 c0                                     	vmulps xmm0,xmm2,xmm0
    10402e841212:	c5 c8 58 f0                                     	vaddps xmm6,xmm6,xmm0
    10402e841216:	c5 f0 59 f6                                     	vmulps xmm6,xmm1,xmm6
    10402e84121a:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    10402e84121e:	c5 fa 6f 85 18 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xe8]
    10402e841226:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    10402e84122b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    10402e841233:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    10402e841238:	c5 fa 7f 8d 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm1
    10402e841240:	c5 fa 6f 4d 88                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x78]
    10402e841245:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    10402e841249:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e84124e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e841254:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e841259:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e84125e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e841263:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e841267:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e84126b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e841270:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e841274:	c5 fa 6f 4d 98                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x68]
    10402e841279:	c5 f1 72 d1 08                                  	vpsrld xmm1,xmm1,0x8
    10402e84127e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    10402e841283:	c5 f1 db cf                                     	vpand  xmm1,xmm1,xmm7
    10402e841287:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e84128c:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e841292:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e841297:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e84129c:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8412a1:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8412a5:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8412a9:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8412ae:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    10402e8412b2:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    10402e8412b6:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    10402e8412ba:	c5 fa 6f 8d 48 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xb8]
    10402e8412c2:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    10402e8412c7:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    10402e8412cf:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    10402e8412d4:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    10402e8412d9:	c5 fa 6f 55 88                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x78]
    10402e8412de:	c5 c1 db fa                                     	vpand  xmm7,xmm7,xmm2
    10402e8412e2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8412e7:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e8412ed:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e8412f2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8412f7:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e8412fc:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e841300:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e841304:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e841309:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    10402e84130d:	c5 fa 6f 55 b8                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x48]
    10402e841312:	c5 fa 6f bd 68 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x98]
    10402e84131a:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    10402e84131f:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    10402e841327:	c5 fa 6f 5d 88                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x78]
    10402e84132c:	c5 c1 db fb                                     	vpand  xmm7,xmm7,xmm3
    10402e841330:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e841335:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    10402e84133b:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    10402e841340:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e841345:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    10402e84134a:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    10402e84134e:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    10402e841352:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    10402e841357:	c5 e8 59 d7                                     	vmulps xmm2,xmm2,xmm7
    10402e84135b:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
    10402e84135f:	c5 f0 59 ce                                     	vmulps xmm1,xmm1,xmm6
    10402e841363:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    10402e841367:	e9 c8 01 00 00                                  	jmp    0x10402e841534
    10402e84136c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e841370:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    10402e841373:	8b c1                                           	mov    eax,ecx
    10402e841375:	c1 e0 02                                        	shl    eax,0x2
    10402e841378:	44 03 e0                                        	add    r12d,eax
    10402e84137b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e84137f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e841383:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    10402e841389:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    10402e84138d:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e841391:	8b c3                                           	mov    eax,ebx
    10402e841393:	c1 e0 02                                        	shl    eax,0x2
    10402e841396:	44 03 e0                                        	add    r12d,eax
    10402e841399:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e84139d:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e8413a1:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    10402e8413a7:	42 8b 14 20                                     	mov    edx,DWORD PTR [rax+r12*1]
    10402e8413ab:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    10402e8413af:	45 8b f8                                        	mov    r15d,r8d
    10402e8413b2:	41 c1 e7 02                                     	shl    r15d,0x2
    10402e8413b6:	45 03 e7                                        	add    r12d,r15d
    10402e8413b9:	46 8b 3c 20                                     	mov    r15d,DWORD PTR [rax+r12*1]
    10402e8413bd:	44 8b e1                                        	mov    r12d,ecx
    10402e8413c0:	8b ca                                           	mov    ecx,edx
    10402e8413c2:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    10402e8413c8:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    10402e8413ce:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    10402e8413d1:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    10402e8413d7:	8b 45 d4                                        	mov    eax,DWORD PTR [rbp-0x2c]
    10402e8413da:	c1 e0 02                                        	shl    eax,0x2
    10402e8413dd:	03 f0                                           	add    esi,eax
    10402e8413df:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    10402e8413e3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    10402e8413e7:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    10402e8413ea:	8b 0c 30                                        	mov    ecx,DWORD PTR [rax+rsi*1]
    10402e8413ed:	8b c1                                           	mov    eax,ecx
    10402e8413ef:	8b 4d dc                                        	mov    ecx,DWORD PTR [rbp-0x24]
    10402e8413f2:	c4 c1 79 6e e7                                  	vmovd  xmm4,r15d
    10402e8413f7:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    10402e8413fc:	c4 e3 59 22 e1 01                               	vpinsrd xmm4,xmm4,ecx,0x1
    10402e841402:	c4 c3 59 22 e4 02                               	vpinsrd xmm4,xmm4,r12d,0x2
    10402e841408:	c4 e3 59 22 e0 03                               	vpinsrd xmm4,xmm4,eax,0x3
    10402e84140e:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    10402e841416:	c5 f9 72 d4 18                                  	vpsrld xmm0,xmm4,0x18
    10402e84141b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e841420:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    10402e841426:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    10402e84142b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e841430:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    10402e841435:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    10402e841439:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    10402e84143d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    10402e841442:	4c 8b 15 97 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb97]        # 0x10402e840fe0
    10402e841449:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    10402e84144e:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    10402e841452:	c5 d9 db cb                                     	vpand  xmm1,xmm4,xmm3
    10402e841456:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e84145b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e841461:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e841466:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e84146b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e841470:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e841474:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e841478:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e84147d:	c5 fa 7f 8d 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm1
    10402e841485:	c5 f1 72 d4 10                                  	vpsrld xmm1,xmm4,0x10
    10402e84148a:	c5 f1 db cb                                     	vpand  xmm1,xmm1,xmm3
    10402e84148e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e841493:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    10402e841499:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    10402e84149e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8414a3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    10402e8414a8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    10402e8414ac:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    10402e8414b0:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    10402e8414b5:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    10402e8414bd:	c5 e9 72 d4 08                                  	vpsrld xmm2,xmm4,0x8
    10402e8414c2:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    10402e8414c6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    10402e8414cb:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    10402e8414d1:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    10402e8414d6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    10402e8414db:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    10402e8414e0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    10402e8414e4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    10402e8414e8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    10402e8414ed:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    10402e8414f2:	c5 fa 7f 6d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm5
    10402e8414f7:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    10402e8414fc:	c5 fa 7f 65 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm4
    10402e841501:	c5 fa 7f 85 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm0
    10402e841509:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    10402e841511:	44 89 a5 e0 fe ff ff                            	mov    DWORD PTR [rbp-0x120],r12d
    10402e841518:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    10402e84151e:	41 8b f7                                        	mov    esi,r15d
    10402e841521:	44 8b f9                                        	mov    r15d,ecx
    10402e841524:	c5 f9 28 c2                                     	vmovapd xmm0,xmm2
    10402e841528:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    10402e84152c:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    10402e841534:	c5 fa 6f 8d 58 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xa8]
    10402e84153c:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    10402e841546:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    10402e84154b:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    10402e84154f:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    10402e841553:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    10402e841557:	41 8b c1                                        	mov    eax,r9d
    10402e84155a:	83 e0 01                                        	and    eax,0x1
    10402e84155d:	33 c9                                           	xor    ecx,ecx
    10402e84155f:	2b c8                                           	sub    ecx,eax
    10402e841561:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    10402e841565:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    10402e84156a:	41 8b c1                                        	mov    eax,r9d
    10402e84156d:	c1 e0 1e                                        	shl    eax,0x1e
    10402e841570:	c1 f8 1f                                        	sar    eax,0x1f
    10402e841573:	c4 e3 49 22 f0 01                               	vpinsrd xmm6,xmm6,eax,0x1
    10402e841579:	41 8b c1                                        	mov    eax,r9d
    10402e84157c:	c1 e0 1d                                        	shl    eax,0x1d
    10402e84157f:	c1 f8 1f                                        	sar    eax,0x1f
    10402e841582:	c4 e3 49 22 f0 02                               	vpinsrd xmm6,xmm6,eax,0x2
    10402e841588:	41 8b c1                                        	mov    eax,r9d
    10402e84158b:	c1 e0 1c                                        	shl    eax,0x1c
    10402e84158e:	c1 f8 1f                                        	sar    eax,0x1f
    10402e841591:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    10402e841597:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    10402e84159b:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    10402e84159f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8415a4:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    10402e8415a8:	48 8b 41 17                                     	mov    rax,QWORD PTR [rcx+0x17]
    10402e8415ac:	c5 fa 7f 7c 38 30                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x30],xmm7
    10402e8415b2:	c5 d0 59 ca                                     	vmulps xmm1,xmm5,xmm2
    10402e8415b6:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    10402e8415ba:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    10402e8415be:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8415c3:	c5 fa 7f 7c 38 20                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x20],xmm7
    10402e8415c9:	c5 f8 59 ca                                     	vmulps xmm1,xmm0,xmm2
    10402e8415cd:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    10402e8415d1:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    10402e8415d5:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8415da:	c5 fa 7f 7c 38 10                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x10],xmm7
    10402e8415e0:	c5 d8 59 ca                                     	vmulps xmm1,xmm4,xmm2
    10402e8415e4:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    10402e8415e8:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    10402e8415ec:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    10402e8415f1:	c5 fa 7f 3c 38                                  	vmovdqu XMMWORD PTR [rax+rdi*1],xmm7
    10402e8415f6:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    10402e8415fb:	c5 fa 7f a5 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm4
    10402e841603:	c5 fa 7f ad 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm5
    10402e84160b:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    10402e841611:	44 89 85 d0 fe ff ff                            	mov    DWORD PTR [rbp-0x130],r8d
    10402e841618:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    10402e84161e:	41 8b c7                                        	mov    eax,r15d
    10402e841621:	8b d6                                           	mov    edx,esi
    10402e841623:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    10402e841627:	c5 f9 28 eb                                     	vmovapd xmm5,xmm3
    10402e84162b:	b9 01 00 00 00                                  	mov    ecx,0x1
    10402e841630:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    10402e841636:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    10402e841639:	44 8b 45 d4                                     	mov    r8d,DWORD PTR [rbp-0x2c]
    10402e84163d:	44 8b a5 dc fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x124]
    10402e841644:	44 8b bd e0 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x120]
    10402e84164b:	c5 fa 6f a5 48 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xb8]
    10402e841653:	c5 fa 6f b5 58 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xa8]
    10402e84165b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    10402e841663:	8b c1                                           	mov    eax,ecx
    10402e841665:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
    10402e841669:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
    10402e84166d:	41 81 aa bc 02 00 00 61 1c 00 00                	sub    DWORD PTR [r10+0x2bc],0x1c61
    10402e841678:	0f 88 25 00 00 00                               	js     0x10402e8416a3
    10402e84167e:	48 8b e5                                        	mov    rsp,rbp
    10402e841681:	5d                                              	pop    rbp
    10402e841682:	c2 08 00                                        	ret    0x8
    10402e841685:	50                                              	push   rax
    10402e841686:	51                                              	push   rcx
    10402e841687:	52                                              	push   rdx
    10402e841688:	53                                              	push   rbx
    10402e841689:	57                                              	push   rdi
    10402e84168a:	41 51                                           	push   r9
    10402e84168c:	33 c0                                           	xor    eax,eax
    10402e84168e:	e8 9d 78 f5 ff                                  	call   0x10402e798f30
    10402e841693:	41 59                                           	pop    r9
    10402e841695:	5f                                              	pop    rdi
    10402e841696:	5b                                              	pop    rbx
    10402e841697:	5a                                              	pop    rdx
    10402e841698:	59                                              	pop    rcx
    10402e841699:	58                                              	pop    rax
    10402e84169a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    10402e84169e:	e9 dd e3 ff ff                                  	jmp    0x10402e83fa80
    10402e8416a3:	50                                              	push   rax
    10402e8416a4:	e8 b7 76 f5 ff                                  	call   0x10402e798d60
    10402e8416a9:	58                                              	pop    rax
    10402e8416aa:	eb d2                                           	jmp    0x10402e84167e
    10402e8416ac:	36 00 00                                        	ss add BYTE PTR [rax],al
    10402e8416af:	00 08                                           	add    BYTE PTR [rax],cl
	...
