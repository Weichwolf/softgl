
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit1-ms2/selected/sg_packet_sample_cube_coherent-liftoff.bin:     file format binary


Disassembly of section .data:

000023a8d34d0e40 <.data>:
    23a8d34d0e40:	41 bc af 00 00 00                               	mov    r12d,0xaf
    23a8d34d0e46:	e8 25 df f7 ff                                  	call   0x23a8d344ed70
    23a8d34d0e4b:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
    23a8d34d0e52:	8b c0                                           	mov    eax,eax
    23a8d34d0e54:	8b d2                                           	mov    edx,edx
    23a8d34d0e56:	8b c9                                           	mov    ecx,ecx
    23a8d34d0e58:	8b db                                           	mov    ebx,ebx
    23a8d34d0e5a:	45 8b c9                                        	mov    r9d,r9d
    23a8d34d0e5d:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    23a8d34d0e60:	50                                              	push   rax
    23a8d34d0e61:	51                                              	push   rcx
    23a8d34d0e62:	57                                              	push   rdi
    23a8d34d0e63:	48 8d bd c4 fe ff ff                            	lea    rdi,[rbp-0x13c]
    23a8d34d0e6a:	33 c0                                           	xor    eax,eax
    23a8d34d0e6c:	b9 41 00 00 00                                  	mov    ecx,0x41
    23a8d34d0e71:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    23a8d34d0e73:	5f                                              	pop    rdi
    23a8d34d0e74:	59                                              	pop    rcx
    23a8d34d0e75:	58                                              	pop    rax
    23a8d34d0e76:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    23a8d34d0e7a:	0f 86 05 1c 00 00                               	jbe    0x23a8d34d2a85
    23a8d34d0e80:	45 85 c9                                        	test   r9d,r9d
    23a8d34d0e83:	0f 85 07 00 00 00                               	jne    0x23a8d34d0e90
    23a8d34d0e89:	33 c0                                           	xor    eax,eax
    23a8d34d0e8b:	e9 d5 1b 00 00                                  	jmp    0x23a8d34d2a65
    23a8d34d0e90:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    23a8d34d0e94:	45 8b 64 00 04                                  	mov    r12d,DWORD PTR [r8+rax*1+0x4]
    23a8d34d0e99:	45 85 e4                                        	test   r12d,r12d
    23a8d34d0e9c:	0f 85 07 00 00 00                               	jne    0x23a8d34d0ea9
    23a8d34d0ea2:	33 c0                                           	xor    eax,eax
    23a8d34d0ea4:	e9 bc 1b 00 00                                  	jmp    0x23a8d34d2a65
    23a8d34d0ea9:	45 8b f9                                        	mov    r15d,r9d
    23a8d34d0eac:	41 83 e7 0f                                     	and    r15d,0xf
    23a8d34d0eb0:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
    23a8d34d0eb6:	49 ba 50 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32850
    23a8d34d0ec0:	c4 c1 78 54 0a                                  	vandps xmm1,xmm0,XMMWORD PTR [r10]
    23a8d34d0ec5:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    23a8d34d0ecf:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d34d0ed4:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d34d0ed8:	c5 f0 c2 da 02                                  	vcmpleps xmm3,xmm1,xmm2
    23a8d34d0edd:	c4 c1 7a 6f 24 10                               	vmovdqu xmm4,XMMWORD PTR [r8+rdx*1]
    23a8d34d0ee3:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x23a8d34d0eb8
    23a8d34d0eea:	c4 c1 58 54 2a                                  	vandps xmm5,xmm4,XMMWORD PTR [r10]
    23a8d34d0eef:	c5 d0 c2 f2 02                                  	vcmpleps xmm6,xmm5,xmm2
    23a8d34d0ef4:	c5 e1 db de                                     	vpand  xmm3,xmm3,xmm6
    23a8d34d0ef8:	c4 c1 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1]
    23a8d34d0efe:	4c 8b 15 b3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb3]        # 0x23a8d34d0eb8
    23a8d34d0f05:	c4 c1 48 54 3a                                  	vandps xmm7,xmm6,XMMWORD PTR [r10]
    23a8d34d0f0a:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    23a8d34d0f0f:	c5 c0 c2 c2 02                                  	vcmpleps xmm0,xmm7,xmm2
    23a8d34d0f14:	c5 e1 db d8                                     	vpand  xmm3,xmm3,xmm0
    23a8d34d0f18:	c5 f8 50 f3                                     	vmovmskps esi,xmm3
    23a8d34d0f1c:	41 23 f7                                        	and    esi,r15d
    23a8d34d0f1f:	44 3b ce                                        	cmp    r9d,esi
    23a8d34d0f22:	0f 84 07 00 00 00                               	je     0x23a8d34d0f2f
    23a8d34d0f28:	33 c0                                           	xor    eax,eax
    23a8d34d0f2a:	e9 36 1b 00 00                                  	jmp    0x23a8d34d2a65
    23a8d34d0f2f:	c5 c0 c2 c5 02                                  	vcmpleps xmm0,xmm7,xmm5
    23a8d34d0f34:	c5 f0 c2 dd 02                                  	vcmpleps xmm3,xmm1,xmm5
    23a8d34d0f39:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    23a8d34d0f3d:	c5 f8 50 f0                                     	vmovmskps esi,xmm0
    23a8d34d0f41:	8b de                                           	mov    ebx,esi
    23a8d34d0f43:	41 23 d9                                        	and    ebx,r9d
    23a8d34d0f46:	44 3b cb                                        	cmp    r9d,ebx
    23a8d34d0f49:	0f 85 32 00 00 00                               	jne    0x23a8d34d0f81
    23a8d34d0f4f:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    23a8d34d0f54:	49 ba 60 28 a3 be 86 62 00 00                   	movabs r10,0x6286bea32860
    23a8d34d0f5e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d34d0f63:	4c 8b 15 ec ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffec]        # 0x23a8d34d0f56
    23a8d34d0f6a:	c4 c1 48 57 12                                  	vxorps xmm2,xmm6,XMMWORD PTR [r10]
    23a8d34d0f6f:	c7 45 d0 00 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x0
    23a8d34d0f76:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    23a8d34d0f7a:	33 f6                                           	xor    esi,esi
    23a8d34d0f7c:	e9 9d 00 00 00                                  	jmp    0x23a8d34d101e
    23a8d34d0f81:	c5 c0 c2 c1 02                                  	vcmpleps xmm0,xmm7,xmm1
    23a8d34d0f86:	c5 d0 c2 d9 02                                  	vcmpleps xmm3,xmm5,xmm1
    23a8d34d0f8b:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    23a8d34d0f8f:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    23a8d34d0f93:	8b ce                                           	mov    ecx,esi
    23a8d34d0f95:	83 f1 ff                                        	xor    ecx,0xffffffff
    23a8d34d0f98:	41 23 c9                                        	and    ecx,r9d
    23a8d34d0f9b:	41 23 c8                                        	and    ecx,r8d
    23a8d34d0f9e:	44 3b c9                                        	cmp    r9d,ecx
    23a8d34d0fa1:	0f 85 29 00 00 00                               	jne    0x23a8d34d0fd0
    23a8d34d0fa7:	c7 45 d0 02 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x2
    23a8d34d0fae:	41 8b c8                                        	mov    ecx,r8d
    23a8d34d0fb1:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    23a8d34d0fb5:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    23a8d34d0fb9:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    23a8d34d0fbd:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    23a8d34d0fc1:	be 01 00 00 00                                  	mov    esi,0x1
    23a8d34d0fc6:	c5 fa 6f 65 98                                  	vmovdqu xmm4,XMMWORD PTR [rbp-0x68]
    23a8d34d0fcb:	e9 4e 00 00 00                                  	jmp    0x23a8d34d101e
    23a8d34d0fd0:	41 8b c8                                        	mov    ecx,r8d
    23a8d34d0fd3:	0b ce                                           	or     ecx,esi
    23a8d34d0fd5:	41 23 c9                                        	and    ecx,r9d
    23a8d34d0fd8:	85 c9                                           	test   ecx,ecx
    23a8d34d0fda:	0f 84 07 00 00 00                               	je     0x23a8d34d0fe7
    23a8d34d0fe0:	33 c9                                           	xor    ecx,ecx
    23a8d34d0fe2:	e9 7c 1a 00 00                                  	jmp    0x23a8d34d2a63
    23a8d34d0fe7:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    23a8d34d0fec:	4c 8b 15 63 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff63]        # 0x23a8d34d0f56
    23a8d34d0ff3:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    23a8d34d0ff8:	c7 45 d0 04 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x4
    23a8d34d0fff:	c7 85 d8 fe ff ff 01 00 00 00                   	mov    DWORD PTR [rbp-0x128],0x1
    23a8d34d1009:	41 8b c8                                        	mov    ecx,r8d
    23a8d34d100c:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    23a8d34d1010:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    23a8d34d1014:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    23a8d34d1018:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    23a8d34d101c:	33 f6                                           	xor    esi,esi
    23a8d34d101e:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    23a8d34d1022:	c5 c8 c2 cc 02                                  	vcmpleps xmm1,xmm6,xmm4
    23a8d34d1027:	c5 f8 50 c9                                     	vmovmskps ecx,xmm1
    23a8d34d102b:	41 23 cf                                        	and    ecx,r15d
    23a8d34d102e:	85 c9                                           	test   ecx,ecx
    23a8d34d1030:	0f 85 75 00 00 00                               	jne    0x23a8d34d10ab
    23a8d34d1036:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x23a8d34d0f56
    23a8d34d103d:	c4 c1 78 57 0a                                  	vxorps xmm1,xmm0,XMMWORD PTR [r10]
    23a8d34d1042:	85 f6                                           	test   esi,esi
    23a8d34d1044:	0f 84 05 00 00 00                               	je     0x23a8d34d104f
    23a8d34d104a:	e9 04 00 00 00                                  	jmp    0x23a8d34d1053
    23a8d34d104f:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d34d1053:	4c 8b 15 fc fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffefc]        # 0x23a8d34d0f56
    23a8d34d105a:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    23a8d34d105f:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    23a8d34d1065:	85 d2                                           	test   edx,edx
    23a8d34d1067:	0f 84 09 00 00 00                               	je     0x23a8d34d1076
    23a8d34d106d:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    23a8d34d1071:	e9 04 00 00 00                                  	jmp    0x23a8d34d107a
    23a8d34d1076:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    23a8d34d107a:	44 3b cb                                        	cmp    r9d,ebx
    23a8d34d107d:	0f 94 c2                                        	sete   dl
    23a8d34d1080:	0f b6 d2                                        	movzx  edx,dl
    23a8d34d1083:	85 d2                                           	test   edx,edx
    23a8d34d1085:	0f 84 09 00 00 00                               	je     0x23a8d34d1094
    23a8d34d108b:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    23a8d34d108f:	e9 00 00 00 00                                  	jmp    0x23a8d34d1094
    23a8d34d1094:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1097:	83 ca 01                                        	or     edx,0x1
    23a8d34d109a:	41 b8 03 00 00 00                               	mov    r8d,0x3
    23a8d34d10a0:	85 f6                                           	test   esi,esi
    23a8d34d10a2:	44 0f 44 c2                                     	cmove  r8d,edx
    23a8d34d10a6:	e9 25 00 00 00                                  	jmp    0x23a8d34d10d0
    23a8d34d10ab:	41 3b c9                                        	cmp    ecx,r9d
    23a8d34d10ae:	0f 85 15 00 00 00                               	jne    0x23a8d34d10c9
    23a8d34d10b4:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    23a8d34d10b8:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    23a8d34d10bc:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    23a8d34d10c0:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    23a8d34d10c4:	e9 07 00 00 00                                  	jmp    0x23a8d34d10d0
    23a8d34d10c9:	33 c0                                           	xor    eax,eax
    23a8d34d10cb:	e9 95 19 00 00                                  	jmp    0x23a8d34d2a65
    23a8d34d10d0:	41 8b d0                                        	mov    edx,r8d
    23a8d34d10d3:	c1 e2 06                                        	shl    edx,0x6
    23a8d34d10d6:	41 8d 14 14                                     	lea    edx,[r12+rdx*1]
    23a8d34d10da:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    23a8d34d10de:	4d 8b 64 24 17                                  	mov    r12,QWORD PTR [r12+0x17]
    23a8d34d10e3:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    23a8d34d10e6:	41 8b 84 14 24 01 00 00                         	mov    eax,DWORD PTR [r12+rdx*1+0x124]
    23a8d34d10ee:	85 c0                                           	test   eax,eax
    23a8d34d10f0:	0f 85 07 00 00 00                               	jne    0x23a8d34d10fd
    23a8d34d10f6:	33 c0                                           	xor    eax,eax
    23a8d34d10f8:	e9 68 19 00 00                                  	jmp    0x23a8d34d2a65
    23a8d34d10fd:	45 8b 84 14 a4 02 00 00                         	mov    r8d,DWORD PTR [r12+rdx*1+0x2a4]
    23a8d34d1105:	41 83 f8 00                                     	cmp    r8d,0x0
    23a8d34d1109:	0f 8f 07 00 00 00                               	jg     0x23a8d34d1116
    23a8d34d110f:	33 c0                                           	xor    eax,eax
    23a8d34d1111:	e9 4f 19 00 00                                  	jmp    0x23a8d34d2a65
    23a8d34d1116:	8d b2 24 04 00 00                               	lea    esi,[rdx+0x424]
    23a8d34d111c:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    23a8d34d111f:	41 8b 0c 34                                     	mov    ecx,DWORD PTR [r12+rsi*1]
    23a8d34d1123:	33 d2                                           	xor    edx,edx
    23a8d34d1125:	3b ca                                           	cmp    ecx,edx
    23a8d34d1127:	0f 8f 27 00 00 00                               	jg     0x23a8d34d1154
    23a8d34d112d:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    23a8d34d1132:	8b f0                                           	mov    esi,eax
    23a8d34d1134:	44 8b e1                                        	mov    r12d,ecx
    23a8d34d1137:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    23a8d34d113b:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d34d113f:	c5 f9 28 f4                                     	vmovapd xmm6,xmm4
    23a8d34d1143:	c5 f9 28 e3                                     	vmovapd xmm4,xmm3
    23a8d34d1147:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    23a8d34d114a:	33 c9                                           	xor    ecx,ecx
    23a8d34d114c:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    23a8d34d114f:	e9 0f 19 00 00                                  	jmp    0x23a8d34d2a63
    23a8d34d1154:	ba 01 00 00 00                                  	mov    edx,0x1
    23a8d34d1159:	f7 da                                           	neg    edx
    23a8d34d115b:	41 03 d0                                        	add    edx,r8d
    23a8d34d115e:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    23a8d34d1168:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d34d116d:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d34d1171:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    23a8d34d1176:	4c 8b 15 e3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe3]        # 0x23a8d34d1160
    23a8d34d117d:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d34d1182:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d34d1186:	c5 d0 c2 c0 01                                  	vcmpltps xmm0,xmm5,xmm0
    23a8d34d118b:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d34d118f:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    23a8d34d1193:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d34d1198:	c5 f0 5e d0                                     	vdivps xmm2,xmm1,xmm0
    23a8d34d119c:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    23a8d34d11a6:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d34d11ab:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d34d11af:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    23a8d34d11b3:	c5 d8 5e c8                                     	vdivps xmm1,xmm4,xmm0
    23a8d34d11b7:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    23a8d34d11bb:	c5 fa 7f 8d b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm1
    23a8d34d11c3:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    23a8d34d11cd:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    23a8d34d11d2:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    23a8d34d11d6:	c5 fa 6f bd b4 fe ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x14c]
    23a8d34d11de:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    23a8d34d11e2:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    23a8d34d11e5:	41 8b 74 1c 14                                  	mov    esi,DWORD PTR [r12+rbx*1+0x14]
    23a8d34d11ea:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    23a8d34d11ed:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    23a8d34d11f3:	41 8b 54 1c 10                                  	mov    edx,DWORD PTR [r12+rbx*1+0x10]
    23a8d34d11f8:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    23a8d34d11fd:	3b d3                                           	cmp    edx,ebx
    23a8d34d11ff:	0f 95 c3                                        	setne  bl
    23a8d34d1202:	0f b6 db                                        	movzx  ebx,bl
    23a8d34d1205:	41 bf 00 29 00 00                               	mov    r15d,0x2900
    23a8d34d120b:	41 3b d7                                        	cmp    edx,r15d
    23a8d34d120e:	41 0f 95 c7                                     	setne  r15b
    23a8d34d1212:	45 0f b6 ff                                     	movzx  r15d,r15b
    23a8d34d1216:	41 23 df                                        	and    ebx,r15d
    23a8d34d1219:	85 db                                           	test   ebx,ebx
    23a8d34d121b:	0f 84 0f 00 00 00                               	je     0x23a8d34d1230
    23a8d34d1221:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    23a8d34d1227:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    23a8d34d122b:	e9 08 00 00 00                                  	jmp    0x23a8d34d1238
    23a8d34d1230:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    23a8d34d1234:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    23a8d34d1238:	c5 e8 59 f9                                     	vmulps xmm7,xmm2,xmm1
    23a8d34d123c:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    23a8d34d123f:	45 8b 7c 1c 0c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0xc]
    23a8d34d1244:	45 8b d0                                        	mov    r10d,r8d
    23a8d34d1247:	c4 c1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,r10
    23a8d34d124c:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    23a8d34d1251:	c5 e8 59 d0                                     	vmulps xmm2,xmm2,xmm0
    23a8d34d1255:	bb 01 00 00 00                                  	mov    ebx,0x1
    23a8d34d125a:	f7 db                                           	neg    ebx
    23a8d34d125c:	03 d9                                           	add    ebx,ecx
    23a8d34d125e:	44 8b e3                                        	mov    r12d,ebx
    23a8d34d1261:	44 23 e1                                        	and    r12d,ecx
    23a8d34d1264:	89 45 d0                                        	mov    DWORD PTR [rbp-0x30],eax
    23a8d34d1267:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    23a8d34d126d:	89 8d dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],ecx
    23a8d34d1273:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    23a8d34d1279:	41 23 c8                                        	and    ecx,r8d
    23a8d34d127c:	89 95 e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],edx
    23a8d34d1282:	33 d2                                           	xor    edx,edx
    23a8d34d1284:	85 c9                                           	test   ecx,ecx
    23a8d34d1286:	0f 44 d0                                        	cmove  edx,eax
    23a8d34d1289:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    23a8d34d128f:	44 8b d0                                        	mov    r10d,eax
    23a8d34d1292:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    23a8d34d1297:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    23a8d34d129c:	b8 2f 81 00 00                                  	mov    eax,0x812f
    23a8d34d12a1:	3b f0                                           	cmp    esi,eax
    23a8d34d12a3:	0f 95 c0                                        	setne  al
    23a8d34d12a6:	0f b6 c0                                        	movzx  eax,al
    23a8d34d12a9:	b9 00 29 00 00                                  	mov    ecx,0x2900
    23a8d34d12ae:	3b f1                                           	cmp    esi,ecx
    23a8d34d12b0:	0f 95 c1                                        	setne  cl
    23a8d34d12b3:	0f b6 c9                                        	movzx  ecx,cl
    23a8d34d12b6:	23 c1                                           	and    eax,ecx
    23a8d34d12b8:	85 c0                                           	test   eax,eax
    23a8d34d12ba:	0f 84 17 00 00 00                               	je     0x23a8d34d12d7
    23a8d34d12c0:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    23a8d34d12c8:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    23a8d34d12ce:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    23a8d34d12d2:	e9 10 00 00 00                                  	jmp    0x23a8d34d12e7
    23a8d34d12d7:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    23a8d34d12df:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    23a8d34d12e3:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    23a8d34d12e7:	c5 fa 7f 8d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm1
    23a8d34d12ef:	c5 fa 6f 8d b4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x14c]
    23a8d34d12f7:	c5 f0 59 c8                                     	vmulps xmm1,xmm1,xmm0
    23a8d34d12fb:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    23a8d34d1305:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d34d130a:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d34d130e:	c5 f0 58 f0                                     	vaddps xmm6,xmm1,xmm0
    23a8d34d1312:	b8 00 26 00 00                                  	mov    eax,0x2600
    23a8d34d1317:	44 3b f8                                        	cmp    r15d,eax
    23a8d34d131a:	0f 94 c0                                        	sete   al
    23a8d34d131d:	0f b6 c0                                        	movzx  eax,al
    23a8d34d1320:	85 c0                                           	test   eax,eax
    23a8d34d1322:	0f 84 09 00 00 00                               	je     0x23a8d34d1331
    23a8d34d1328:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    23a8d34d132c:	e9 00 00 00 00                                  	jmp    0x23a8d34d1331
    23a8d34d1331:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    23a8d34d1337:	4c 8b 15 7a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb7a]        # 0x23a8d34d0eb8
    23a8d34d133e:	c4 c1 40 54 1a                                  	vandps xmm3,xmm7,XMMWORD PTR [r10]
    23a8d34d1343:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    23a8d34d1348:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    23a8d34d1352:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    23a8d34d1357:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    23a8d34d135b:	c5 e0 c2 d8 01                                  	vcmpltps xmm3,xmm3,xmm0
    23a8d34d1360:	49 ba 40 29 a3 be 86 62 00 00                   	movabs r10,0x6286bea32940
    23a8d34d136a:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    23a8d34d136f:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    23a8d34d1374:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    23a8d34d137a:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    23a8d34d137e:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    23a8d34d1383:	c5 fa 7f 95 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm2
    23a8d34d138b:	c5 fa 7f 95 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm2
    23a8d34d1393:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    23a8d34d1398:	c5 fa 6f 55 98                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x68]
    23a8d34d139d:	c5 fa 7f 9d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm3
    23a8d34d13a5:	c5 fa 6f 9d a4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x15c]
    23a8d34d13ad:	c5 e0 58 da                                     	vaddps xmm3,xmm3,xmm2
    23a8d34d13b1:	c5 fa 6f 95 b4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x14c]
    23a8d34d13b9:	85 c0                                           	test   eax,eax
    23a8d34d13bb:	0f 84 05 00 00 00                               	je     0x23a8d34d13c6
    23a8d34d13c1:	e9 04 00 00 00                                  	jmp    0x23a8d34d13ca
    23a8d34d13c6:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    23a8d34d13ca:	c4 e3 79 08 da 09                               	vroundps xmm3,xmm2,0x9
    23a8d34d13d0:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x23a8d34d1362
    23a8d34d13d7:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    23a8d34d13dc:	c4 c1 60 54 e7                                  	vandps xmm4,xmm3,xmm15
    23a8d34d13e1:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    23a8d34d13e7:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    23a8d34d13eb:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    23a8d34d13f0:	c5 fa 7f a5 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm4
    23a8d34d13f8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    23a8d34d1402:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d34d1407:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    23a8d34d140b:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    23a8d34d1410:	4c 8b 15 a1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaa1]        # 0x23a8d34d0eb8
    23a8d34d1417:	c4 c1 60 54 2a                                  	vandps xmm5,xmm3,XMMWORD PTR [r10]
    23a8d34d141c:	c5 d0 c2 e8 01                                  	vcmpltps xmm5,xmm5,xmm0
    23a8d34d1421:	c5 fa 7f b5 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm6
    23a8d34d1429:	c5 fa 6f b5 b4 fe ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x14c]
    23a8d34d1431:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    23a8d34d1435:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    23a8d34d1439:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d34d143e:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    23a8d34d1444:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    23a8d34d1448:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d34d144d:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    23a8d34d1451:	c4 e2 51 3d f6                                  	vpmaxsd xmm6,xmm5,xmm6
    23a8d34d1456:	c4 e2 49 39 f0                                  	vpminsd xmm6,xmm6,xmm0
    23a8d34d145b:	8b 8d e0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x120]
    23a8d34d1461:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    23a8d34d1467:	b8 2f 81 00 00                                  	mov    eax,0x812f
    23a8d34d146c:	3b c8                                           	cmp    ecx,eax
    23a8d34d146e:	0f 95 c1                                        	setne  cl
    23a8d34d1471:	0f b6 c9                                        	movzx  ecx,cl
    23a8d34d1474:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    23a8d34d147a:	89 8d b0 fe ff ff                               	mov    DWORD PTR [rbp-0x150],ecx
    23a8d34d1480:	b9 00 29 00 00                                  	mov    ecx,0x2900
    23a8d34d1485:	3b c1                                           	cmp    eax,ecx
    23a8d34d1487:	0f 95 c0                                        	setne  al
    23a8d34d148a:	0f b6 c0                                        	movzx  eax,al
    23a8d34d148d:	8b 8d b0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x150]
    23a8d34d1493:	23 c8                                           	and    ecx,eax
    23a8d34d1495:	85 c9                                           	test   ecx,ecx
    23a8d34d1497:	0f 85 05 00 00 00                               	jne    0x23a8d34d14a2
    23a8d34d149d:	e9 8f 00 00 00                                  	jmp    0x23a8d34d1531
    23a8d34d14a2:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    23a8d34d14a6:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    23a8d34d14ab:	c5 d1 db f6                                     	vpand  xmm6,xmm5,xmm6
    23a8d34d14af:	8b c2                                           	mov    eax,edx
    23a8d34d14b1:	85 d2                                           	test   edx,edx
    23a8d34d14b3:	0f 84 07 00 00 00                               	je     0x23a8d34d14c0
    23a8d34d14b9:	8b d0                                           	mov    edx,eax
    23a8d34d14bb:	e9 71 00 00 00                                  	jmp    0x23a8d34d1531
    23a8d34d14c0:	c4 c1 79 6e f0                                  	vmovd  xmm6,r8d
    23a8d34d14c5:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    23a8d34d14ca:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    23a8d34d14d2:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    23a8d34d14d6:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    23a8d34d14de:	c5 d1 66 c0                                     	vpcmpgtd xmm0,xmm5,xmm0
    23a8d34d14e2:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    23a8d34d14e6:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    23a8d34d14ea:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d34d14ef:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d34d14f4:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    23a8d34d14f9:	c5 fa 6f bd 28 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xd8]
    23a8d34d1501:	c5 c1 66 fd                                     	vpcmpgtd xmm7,xmm7,xmm5
    23a8d34d1505:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    23a8d34d1509:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    23a8d34d150d:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d34d1512:	c5 d1 fe ff                                     	vpaddd xmm7,xmm5,xmm7
    23a8d34d1516:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    23a8d34d151b:	8b d0                                           	mov    edx,eax
    23a8d34d151d:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    23a8d34d1521:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    23a8d34d1529:	c5 fa 6f bd 48 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xb8]
    23a8d34d1531:	33 c0                                           	xor    eax,eax
    23a8d34d1533:	45 85 e4                                        	test   r12d,r12d
    23a8d34d1536:	0f 44 c3                                        	cmove  eax,ebx
    23a8d34d1539:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    23a8d34d1541:	c5 fa 6f 85 78 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x88]
    23a8d34d1549:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    23a8d34d154d:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    23a8d34d1551:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d34d1556:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    23a8d34d155e:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    23a8d34d1562:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    23a8d34d1567:	c5 fa 7f 95 e8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x118],xmm2
    23a8d34d156f:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    23a8d34d1573:	c4 e2 79 3d d2                                  	vpmaxsd xmm2,xmm0,xmm2
    23a8d34d1578:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
    23a8d34d157d:	b9 2f 81 00 00                                  	mov    ecx,0x812f
    23a8d34d1582:	3b f1                                           	cmp    esi,ecx
    23a8d34d1584:	0f 95 c1                                        	setne  cl
    23a8d34d1587:	0f b6 c9                                        	movzx  ecx,cl
    23a8d34d158a:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    23a8d34d1590:	b8 00 29 00 00                                  	mov    eax,0x2900
    23a8d34d1595:	3b f0                                           	cmp    esi,eax
    23a8d34d1597:	0f 95 c0                                        	setne  al
    23a8d34d159a:	0f b6 c0                                        	movzx  eax,al
    23a8d34d159d:	23 c8                                           	and    ecx,eax
    23a8d34d159f:	85 c9                                           	test   ecx,ecx
    23a8d34d15a1:	0f 85 05 00 00 00                               	jne    0x23a8d34d15ac
    23a8d34d15a7:	e9 95 00 00 00                                  	jmp    0x23a8d34d1641
    23a8d34d15ac:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    23a8d34d15b2:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    23a8d34d15b6:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d34d15bb:	c5 f9 db d2                                     	vpand  xmm2,xmm0,xmm2
    23a8d34d15bf:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    23a8d34d15c5:	85 c0                                           	test   eax,eax
    23a8d34d15c7:	0f 84 05 00 00 00                               	je     0x23a8d34d15d2
    23a8d34d15cd:	e9 6f 00 00 00                                  	jmp    0x23a8d34d1641
    23a8d34d15d2:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    23a8d34d15d8:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    23a8d34d15dc:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d34d15e1:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    23a8d34d15e5:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    23a8d34d15ed:	c5 f9 66 d9                                     	vpcmpgtd xmm3,xmm0,xmm1
    23a8d34d15f1:	c5 61 df fc                                     	vpandn xmm15,xmm3,xmm4
    23a8d34d15f5:	c5 e9 db db                                     	vpand  xmm3,xmm2,xmm3
    23a8d34d15f9:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    23a8d34d15fe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d34d1603:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    23a8d34d1608:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    23a8d34d1610:	c5 d9 66 e0                                     	vpcmpgtd xmm4,xmm4,xmm0
    23a8d34d1614:	c5 59 df fb                                     	vpandn xmm15,xmm4,xmm3
    23a8d34d1618:	c5 e9 db e4                                     	vpand  xmm4,xmm2,xmm4
    23a8d34d161c:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    23a8d34d1621:	c5 f9 fe e4                                     	vpaddd xmm4,xmm0,xmm4
    23a8d34d1625:	c5 fa 7f a5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm4
    23a8d34d162d:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    23a8d34d1631:	c5 fa 6f 95 a4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x15c]
    23a8d34d1639:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    23a8d34d1641:	c5 fa 7f 85 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm0
    23a8d34d1649:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    23a8d34d164e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    23a8d34d1653:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    23a8d34d1658:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    23a8d34d1660:	c5 e9 fe ce                                     	vpaddd xmm1,xmm2,xmm6
    23a8d34d1664:	c4 e3 79 16 c8 03                               	vpextrd eax,xmm1,0x3
    23a8d34d166a:	c4 e3 79 16 c9 02                               	vpextrd ecx,xmm1,0x2
    23a8d34d1670:	c4 e3 79 16 cb 01                               	vpextrd ebx,xmm1,0x1
    23a8d34d1676:	c4 c1 79 7e c8                                  	vmovd  r8d,xmm1
    23a8d34d167b:	41 81 ff 00 26 00 00                            	cmp    r15d,0x2600
    23a8d34d1682:	0f 84 ee 02 00 00                               	je     0x23a8d34d1976
    23a8d34d1688:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    23a8d34d1692:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    23a8d34d1697:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    23a8d34d169b:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    23a8d34d16a3:	c5 d1 fe d4                                     	vpaddd xmm2,xmm5,xmm4
    23a8d34d16a7:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    23a8d34d16ab:	c4 e2 69 3d c9                                  	vpmaxsd xmm1,xmm2,xmm1
    23a8d34d16b0:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    23a8d34d16b8:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    23a8d34d16c0:	c4 e2 71 39 cb                                  	vpminsd xmm1,xmm1,xmm3
    23a8d34d16c5:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    23a8d34d16cc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    23a8d34d16cf:	b8 2f 81 00 00                                  	mov    eax,0x812f
    23a8d34d16d4:	44 3b e0                                        	cmp    r12d,eax
    23a8d34d16d7:	41 0f 95 c4                                     	setne  r12b
    23a8d34d16db:	45 0f b6 e4                                     	movzx  r12d,r12b
    23a8d34d16df:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    23a8d34d16e5:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    23a8d34d16eb:	b9 00 29 00 00                                  	mov    ecx,0x2900
    23a8d34d16f0:	3b c1                                           	cmp    eax,ecx
    23a8d34d16f2:	0f 95 c0                                        	setne  al
    23a8d34d16f5:	0f b6 c0                                        	movzx  eax,al
    23a8d34d16f8:	44 23 e0                                        	and    r12d,eax
    23a8d34d16fb:	45 85 e4                                        	test   r12d,r12d
    23a8d34d16fe:	0f 85 05 00 00 00                               	jne    0x23a8d34d1709
    23a8d34d1704:	e9 70 00 00 00                                  	jmp    0x23a8d34d1779
    23a8d34d1709:	c5 f9 6e ca                                     	vmovd  xmm1,edx
    23a8d34d170d:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    23a8d34d1712:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    23a8d34d1716:	8b c2                                           	mov    eax,edx
    23a8d34d1718:	85 d2                                           	test   edx,edx
    23a8d34d171a:	0f 84 07 00 00 00                               	je     0x23a8d34d1727
    23a8d34d1720:	8b d0                                           	mov    edx,eax
    23a8d34d1722:	e9 52 00 00 00                                  	jmp    0x23a8d34d1779
    23a8d34d1727:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    23a8d34d172b:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    23a8d34d1733:	c5 e9 66 db                                     	vpcmpgtd xmm3,xmm2,xmm3
    23a8d34d1737:	c5 61 df f9                                     	vpandn xmm15,xmm3,xmm1
    23a8d34d173b:	c5 f9 db db                                     	vpand  xmm3,xmm0,xmm3
    23a8d34d173f:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    23a8d34d1744:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d34d1749:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    23a8d34d174e:	c5 f1 66 ea                                     	vpcmpgtd xmm5,xmm1,xmm2
    23a8d34d1752:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    23a8d34d1756:	c5 f9 db ed                                     	vpand  xmm5,xmm0,xmm5
    23a8d34d175a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d34d175f:	c5 e9 fe ed                                     	vpaddd xmm5,xmm2,xmm5
    23a8d34d1763:	8b d0                                           	mov    edx,eax
    23a8d34d1765:	c5 fa 7f ad a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm5
    23a8d34d176d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    23a8d34d1771:	c5 fa 6f 8d a4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x15c]
    23a8d34d1779:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    23a8d34d1781:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    23a8d34d1785:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    23a8d34d1789:	c4 e2 61 3d d2                                  	vpmaxsd xmm2,xmm3,xmm2
    23a8d34d178e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    23a8d34d1796:	c4 e2 69 39 d5                                  	vpminsd xmm2,xmm2,xmm5
    23a8d34d179b:	b8 2f 81 00 00                                  	mov    eax,0x812f
    23a8d34d17a0:	3b f0                                           	cmp    esi,eax
    23a8d34d17a2:	0f 95 c0                                        	setne  al
    23a8d34d17a5:	0f b6 c0                                        	movzx  eax,al
    23a8d34d17a8:	b9 00 29 00 00                                  	mov    ecx,0x2900
    23a8d34d17ad:	3b f1                                           	cmp    esi,ecx
    23a8d34d17af:	0f 95 c1                                        	setne  cl
    23a8d34d17b2:	0f b6 c9                                        	movzx  ecx,cl
    23a8d34d17b5:	23 c1                                           	and    eax,ecx
    23a8d34d17b7:	85 c0                                           	test   eax,eax
    23a8d34d17b9:	0f 85 05 00 00 00                               	jne    0x23a8d34d17c4
    23a8d34d17bf:	e9 9f 00 00 00                                  	jmp    0x23a8d34d1863
    23a8d34d17c4:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    23a8d34d17ca:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    23a8d34d17ce:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d34d17d3:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    23a8d34d17d7:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    23a8d34d17dd:	85 c0                                           	test   eax,eax
    23a8d34d17df:	0f 84 05 00 00 00                               	je     0x23a8d34d17ea
    23a8d34d17e5:	e9 79 00 00 00                                  	jmp    0x23a8d34d1863
    23a8d34d17ea:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    23a8d34d17f0:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    23a8d34d17f4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    23a8d34d17f9:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    23a8d34d17fd:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    23a8d34d1805:	c5 fa 6f 85 38 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc8]
    23a8d34d180d:	c5 e1 66 c0                                     	vpcmpgtd xmm0,xmm3,xmm0
    23a8d34d1811:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    23a8d34d1815:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    23a8d34d1819:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d34d181e:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    23a8d34d1823:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    23a8d34d1828:	c5 fa 7f 4d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm1
    23a8d34d182d:	c5 d1 66 cb                                     	vpcmpgtd xmm1,xmm5,xmm3
    23a8d34d1831:	c5 71 df f8                                     	vpandn xmm15,xmm1,xmm0
    23a8d34d1835:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    23a8d34d1839:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    23a8d34d183e:	c5 e1 fe c9                                     	vpaddd xmm1,xmm3,xmm1
    23a8d34d1842:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    23a8d34d184a:	c5 fa 7f ad 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm5
    23a8d34d1852:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    23a8d34d1856:	c5 fa 6f 85 28 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xd8]
    23a8d34d185e:	c5 fa 6f 4d a8                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x58]
    23a8d34d1863:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    23a8d34d1868:	c5 e9 fe ee                                     	vpaddd xmm5,xmm2,xmm6
    23a8d34d186c:	41 83 f9 0f                                     	cmp    r9d,0xf
    23a8d34d1870:	0f 85 1f 00 00 00                               	jne    0x23a8d34d1895
    23a8d34d1876:	c5 c9 fe dc                                     	vpaddd xmm3,xmm6,xmm4
    23a8d34d187a:	c5 f1 76 db                                     	vpcmpeqd xmm3,xmm1,xmm3
    23a8d34d187e:	c5 f8 50 c3                                     	vmovmskps eax,xmm3
    23a8d34d1882:	83 f8 0f                                        	cmp    eax,0xf
    23a8d34d1885:	0f 85 05 00 00 00                               	jne    0x23a8d34d1890
    23a8d34d188b:	e9 b6 01 00 00                                  	jmp    0x23a8d34d1a46
    23a8d34d1890:	e9 00 00 00 00                                  	jmp    0x23a8d34d1895
    23a8d34d1895:	41 8b c1                                        	mov    eax,r9d
    23a8d34d1898:	83 e0 08                                        	and    eax,0x8
    23a8d34d189b:	41 8b c9                                        	mov    ecx,r9d
    23a8d34d189e:	83 e1 04                                        	and    ecx,0x4
    23a8d34d18a1:	41 8b f1                                        	mov    esi,r9d
    23a8d34d18a4:	83 e6 02                                        	and    esi,0x2
    23a8d34d18a7:	45 8b e1                                        	mov    r12d,r9d
    23a8d34d18aa:	41 83 e4 01                                     	and    r12d,0x1
    23a8d34d18ae:	41 83 f9 0f                                     	cmp    r9d,0xf
    23a8d34d18b2:	0f 85 05 00 00 00                               	jne    0x23a8d34d18bd
    23a8d34d18b8:	e9 46 04 00 00                                  	jmp    0x23a8d34d1d03
    23a8d34d18bd:	45 85 e4                                        	test   r12d,r12d
    23a8d34d18c0:	0f 84 23 00 00 00                               	je     0x23a8d34d18e9
    23a8d34d18c6:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d18c9:	45 8b f8                                        	mov    r15d,r8d
    23a8d34d18cc:	41 c1 e7 02                                     	shl    r15d,0x2
    23a8d34d18d0:	41 03 d7                                        	add    edx,r15d
    23a8d34d18d3:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    23a8d34d18d7:	4d 8b 7f 17                                     	mov    r15,QWORD PTR [r15+0x17]
    23a8d34d18db:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    23a8d34d18de:	41 8b 04 17                                     	mov    eax,DWORD PTR [r15+rdx*1]
    23a8d34d18e2:	33 d2                                           	xor    edx,edx
    23a8d34d18e4:	e9 07 00 00 00                                  	jmp    0x23a8d34d18f0
    23a8d34d18e9:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    23a8d34d18ec:	33 c0                                           	xor    eax,eax
    23a8d34d18ee:	33 d2                                           	xor    edx,edx
    23a8d34d18f0:	85 f6                                           	test   esi,esi
    23a8d34d18f2:	0f 84 26 00 00 00                               	je     0x23a8d34d191e
    23a8d34d18f8:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    23a8d34d18fc:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    23a8d34d1902:	8b c3                                           	mov    eax,ebx
    23a8d34d1904:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d1907:	44 03 f8                                        	add    r15d,eax
    23a8d34d190a:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d190e:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d1912:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    23a8d34d1915:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    23a8d34d1919:	e9 0b 00 00 00                                  	jmp    0x23a8d34d1929
    23a8d34d191e:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    23a8d34d1921:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    23a8d34d1927:	8b ca                                           	mov    ecx,edx
    23a8d34d1929:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    23a8d34d192c:	85 c0                                           	test   eax,eax
    23a8d34d192e:	0f 84 21 00 00 00                               	je     0x23a8d34d1955
    23a8d34d1934:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1937:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    23a8d34d193d:	c1 e2 02                                        	shl    edx,0x2
    23a8d34d1940:	03 c2                                           	add    eax,edx
    23a8d34d1942:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1946:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    23a8d34d194a:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    23a8d34d194e:	33 c0                                           	xor    eax,eax
    23a8d34d1950:	e9 09 00 00 00                                  	jmp    0x23a8d34d195e
    23a8d34d1955:	33 c0                                           	xor    eax,eax
    23a8d34d1957:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    23a8d34d195e:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    23a8d34d1961:	85 d2                                           	test   edx,edx
    23a8d34d1963:	0f 84 08 00 00 00                               	je     0x23a8d34d1971
    23a8d34d1969:	41 8b d7                                        	mov    edx,r15d
    23a8d34d196c:	e9 06 04 00 00                                  	jmp    0x23a8d34d1d77
    23a8d34d1971:	e9 1d 04 00 00                                  	jmp    0x23a8d34d1d93
    23a8d34d1976:	41 83 f9 0f                                     	cmp    r9d,0xf
    23a8d34d197a:	0f 85 05 00 00 00                               	jne    0x23a8d34d1985
    23a8d34d1980:	e9 e7 0d 00 00                                  	jmp    0x23a8d34d276c
    23a8d34d1985:	41 8b f1                                        	mov    esi,r9d
    23a8d34d1988:	83 e6 01                                        	and    esi,0x1
    23a8d34d198b:	85 f6                                           	test   esi,esi
    23a8d34d198d:	0f 84 20 00 00 00                               	je     0x23a8d34d19b3
    23a8d34d1993:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    23a8d34d1996:	45 8b e0                                        	mov    r12d,r8d
    23a8d34d1999:	41 c1 e4 02                                     	shl    r12d,0x2
    23a8d34d199d:	41 03 f4                                        	add    esi,r12d
    23a8d34d19a0:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    23a8d34d19a4:	4d 8b 67 17                                     	mov    r12,QWORD PTR [r15+0x17]
    23a8d34d19a8:	45 8b 3c 34                                     	mov    r15d,DWORD PTR [r12+rsi*1]
    23a8d34d19ac:	33 f6                                           	xor    esi,esi
    23a8d34d19ae:	e9 05 00 00 00                                  	jmp    0x23a8d34d19b8
    23a8d34d19b3:	33 f6                                           	xor    esi,esi
    23a8d34d19b5:	45 33 ff                                        	xor    r15d,r15d
    23a8d34d19b8:	45 8b e1                                        	mov    r12d,r9d
    23a8d34d19bb:	41 83 e4 02                                     	and    r12d,0x2
    23a8d34d19bf:	45 85 e4                                        	test   r12d,r12d
    23a8d34d19c2:	0f 84 26 00 00 00                               	je     0x23a8d34d19ee
    23a8d34d19c8:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d34d19cc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    23a8d34d19cf:	8b c3                                           	mov    eax,ebx
    23a8d34d19d1:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d19d4:	44 03 e0                                        	add    r12d,eax
    23a8d34d19d7:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d19db:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d19df:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    23a8d34d19e5:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    23a8d34d19e9:	e9 0b 00 00 00                                  	jmp    0x23a8d34d19f9
    23a8d34d19ee:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    23a8d34d19f1:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    23a8d34d19f7:	8b ce                                           	mov    ecx,esi
    23a8d34d19f9:	41 8b c1                                        	mov    eax,r9d
    23a8d34d19fc:	83 e0 04                                        	and    eax,0x4
    23a8d34d19ff:	85 c0                                           	test   eax,eax
    23a8d34d1a01:	0f 84 22 00 00 00                               	je     0x23a8d34d1a29
    23a8d34d1a07:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1a0a:	8b b5 d8 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x128]
    23a8d34d1a10:	c1 e6 02                                        	shl    esi,0x2
    23a8d34d1a13:	03 c6                                           	add    eax,esi
    23a8d34d1a15:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    23a8d34d1a19:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    23a8d34d1a1e:	44 8b 24 06                                     	mov    r12d,DWORD PTR [rsi+rax*1]
    23a8d34d1a22:	33 c0                                           	xor    eax,eax
    23a8d34d1a24:	e9 05 00 00 00                                  	jmp    0x23a8d34d1a2e
    23a8d34d1a29:	33 c0                                           	xor    eax,eax
    23a8d34d1a2b:	45 33 e4                                        	xor    r12d,r12d
    23a8d34d1a2e:	41 8b f1                                        	mov    esi,r9d
    23a8d34d1a31:	83 e6 08                                        	and    esi,0x8
    23a8d34d1a34:	85 f6                                           	test   esi,esi
    23a8d34d1a36:	0f 85 05 00 00 00                               	jne    0x23a8d34d1a41
    23a8d34d1a3c:	e9 b1 0d 00 00                                  	jmp    0x23a8d34d27f2
    23a8d34d1a41:	e9 88 0d 00 00                                  	jmp    0x23a8d34d27ce
    23a8d34d1a46:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1a49:	41 8b c8                                        	mov    ecx,r8d
    23a8d34d1a4c:	c1 e1 02                                        	shl    ecx,0x2
    23a8d34d1a4f:	03 c1                                           	add    eax,ecx
    23a8d34d1a51:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    23a8d34d1a55:	49 8b 4c 24 17                                  	mov    rcx,QWORD PTR [r12+0x17]
    23a8d34d1a5a:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    23a8d34d1a5f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1a62:	44 8b e3                                        	mov    r12d,ebx
    23a8d34d1a65:	41 c1 e4 02                                     	shl    r12d,0x2
    23a8d34d1a69:	41 03 c4                                        	add    eax,r12d
    23a8d34d1a6c:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    23a8d34d1a74:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    23a8d34d1a79:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    23a8d34d1a83:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1a88:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    23a8d34d1a92:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1a98:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    23a8d34d1a9d:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x23a8d34d1a8a
    23a8d34d1aa4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1aa9:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x23a8d34d1a7b
    23a8d34d1ab0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1ab6:	c4 c2 79 00 de                                  	vpshufb xmm3,xmm0,xmm14
    23a8d34d1abb:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    23a8d34d1ac0:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1ac3:	44 8b a5 d8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x128]
    23a8d34d1aca:	41 c1 e4 02                                     	shl    r12d,0x2
    23a8d34d1ace:	41 03 c4                                        	add    eax,r12d
    23a8d34d1ad1:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    23a8d34d1ad6:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1ad9:	44 8b 65 d4                                     	mov    r12d,DWORD PTR [rbp-0x2c]
    23a8d34d1add:	41 c1 e4 02                                     	shl    r12d,0x2
    23a8d34d1ae1:	41 03 c4                                        	add    eax,r12d
    23a8d34d1ae4:	c5 fb 10 0c 01                                  	vmovsd xmm1,QWORD PTR [rcx+rax*1]
    23a8d34d1ae9:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x23a8d34d1a7b
    23a8d34d1af0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1af5:	4c 8b 15 8e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8e]        # 0x23a8d34d1a8a
    23a8d34d1afc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1b02:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    23a8d34d1b07:	4c 8b 15 7c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff7c]        # 0x23a8d34d1a8a
    23a8d34d1b0e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1b13:	4c 8b 15 61 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff61]        # 0x23a8d34d1a7b
    23a8d34d1b1a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1b20:	c4 c2 71 00 c6                                  	vpshufb xmm0,xmm1,xmm14
    23a8d34d1b25:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d34d1b2a:	49 ba 04 05 06 07 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c07060504
    23a8d34d1b34:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1b39:	4c 8b 15 4a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff4a]        # 0x23a8d34d1a8a
    23a8d34d1b40:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1b46:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    23a8d34d1b4b:	4c 8b 15 38 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff38]        # 0x23a8d34d1a8a
    23a8d34d1b52:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1b57:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x23a8d34d1b2c
    23a8d34d1b5e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1b64:	c4 c2 79 00 ce                                  	vpshufb xmm1,xmm0,xmm14
    23a8d34d1b69:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    23a8d34d1b6e:	49 ba 00 01 02 03 08 09 0a 0b                   	movabs r10,0xb0a090803020100
    23a8d34d1b78:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1b7d:	4c 8b 15 06 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff06]        # 0x23a8d34d1a8a
    23a8d34d1b84:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1b8a:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    23a8d34d1b8f:	4c 8b 15 f4 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffef4]        # 0x23a8d34d1a8a
    23a8d34d1b96:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1b9b:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x23a8d34d1b70
    23a8d34d1ba2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1ba8:	c4 c2 79 00 d6                                  	vpshufb xmm2,xmm0,xmm14
    23a8d34d1bad:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    23a8d34d1bb2:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1bb5:	c5 f9 72 f5 02                                  	vpslld xmm0,xmm5,0x2
    23a8d34d1bba:	c4 c1 79 7e c4                                  	vmovd  r12d,xmm0
    23a8d34d1bbf:	41 03 c4                                        	add    eax,r12d
    23a8d34d1bc2:	c5 fb 10 2c 01                                  	vmovsd xmm5,QWORD PTR [rcx+rax*1]
    23a8d34d1bc7:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1bca:	c4 c3 79 16 c4 01                               	vpextrd r12d,xmm0,0x1
    23a8d34d1bd0:	41 03 c4                                        	add    eax,r12d
    23a8d34d1bd3:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    23a8d34d1bd8:	4c 8b 15 9c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9c]        # 0x23a8d34d1a7b
    23a8d34d1bdf:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1be4:	4c 8b 15 9f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9f]        # 0x23a8d34d1a8a
    23a8d34d1beb:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1bf1:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    23a8d34d1bf6:	4c 8b 15 8d fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe8d]        # 0x23a8d34d1a8a
    23a8d34d1bfd:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1c02:	4c 8b 15 72 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe72]        # 0x23a8d34d1a7b
    23a8d34d1c09:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1c0f:	c4 c2 49 00 ee                                  	vpshufb xmm5,xmm6,xmm14
    23a8d34d1c14:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    23a8d34d1c19:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1c1c:	c4 c3 79 16 c4 02                               	vpextrd r12d,xmm0,0x2
    23a8d34d1c22:	41 03 c4                                        	add    eax,r12d
    23a8d34d1c25:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    23a8d34d1c2a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1c2d:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    23a8d34d1c33:	41 03 c4                                        	add    eax,r12d
    23a8d34d1c36:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    23a8d34d1c3b:	4c 8b 15 39 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe39]        # 0x23a8d34d1a7b
    23a8d34d1c42:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1c47:	4c 8b 15 3c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe3c]        # 0x23a8d34d1a8a
    23a8d34d1c4e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1c54:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    23a8d34d1c59:	4c 8b 15 2a fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe2a]        # 0x23a8d34d1a8a
    23a8d34d1c60:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1c65:	4c 8b 15 0f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe0f]        # 0x23a8d34d1a7b
    23a8d34d1c6c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1c72:	c4 c2 49 00 de                                  	vpshufb xmm3,xmm6,xmm14
    23a8d34d1c77:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    23a8d34d1c7c:	4c 8b 15 a9 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea9]        # 0x23a8d34d1b2c
    23a8d34d1c83:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1c88:	4c 8b 15 fb fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdfb]        # 0x23a8d34d1a8a
    23a8d34d1c8f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1c95:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    23a8d34d1c9a:	4c 8b 15 e9 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffde9]        # 0x23a8d34d1a8a
    23a8d34d1ca1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1ca6:	4c 8b 15 7f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe7f]        # 0x23a8d34d1b2c
    23a8d34d1cad:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1cb3:	c4 c2 61 00 c6                                  	vpshufb xmm0,xmm3,xmm14
    23a8d34d1cb8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    23a8d34d1cbd:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x23a8d34d1b70
    23a8d34d1cc4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1cc9:	4c 8b 15 ba fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdba]        # 0x23a8d34d1a8a
    23a8d34d1cd0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1cd6:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    23a8d34d1cdb:	4c 8b 15 a8 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffda8]        # 0x23a8d34d1a8a
    23a8d34d1ce2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    23a8d34d1ce7:	4c 8b 15 82 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe82]        # 0x23a8d34d1b70
    23a8d34d1cee:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    23a8d34d1cf4:	c4 c2 61 00 f6                                  	vpshufb xmm6,xmm3,xmm14
    23a8d34d1cf9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    23a8d34d1cfe:	e9 96 05 00 00                                  	jmp    0x23a8d34d2299
    23a8d34d1d03:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    23a8d34d1d07:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    23a8d34d1d0a:	8b c3                                           	mov    eax,ebx
    23a8d34d1d0c:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d1d0f:	44 03 f8                                        	add    r15d,eax
    23a8d34d1d12:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d1d16:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d1d1a:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    23a8d34d1d1d:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    23a8d34d1d21:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    23a8d34d1d25:	41 8b c0                                        	mov    eax,r8d
    23a8d34d1d28:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d1d2b:	44 03 f8                                        	add    r15d,eax
    23a8d34d1d2e:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d1d32:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d1d36:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    23a8d34d1d3c:	42 8b 14 38                                     	mov    edx,DWORD PTR [rax+r15*1]
    23a8d34d1d40:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    23a8d34d1d44:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    23a8d34d1d4a:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d1d4d:	44 03 f8                                        	add    r15d,eax
    23a8d34d1d50:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d1d54:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d1d58:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    23a8d34d1d5e:	42 8b 1c 38                                     	mov    ebx,DWORD PTR [rax+r15*1]
    23a8d34d1d62:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    23a8d34d1d68:	44 8b fb                                        	mov    r15d,ebx
    23a8d34d1d6b:	8b 85 cc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x134]
    23a8d34d1d71:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    23a8d34d1d77:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1d7a:	8b 5d d4                                        	mov    ebx,DWORD PTR [rbp-0x2c]
    23a8d34d1d7d:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d1d80:	03 d3                                           	add    edx,ebx
    23a8d34d1d82:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1d86:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d1d8a:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    23a8d34d1d90:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    23a8d34d1d93:	c5 fa 6f 9d 18 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xe8]
    23a8d34d1d9b:	c5 f1 fe db                                     	vpaddd xmm3,xmm1,xmm3
    23a8d34d1d9f:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    23a8d34d1da5:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    23a8d34d1da9:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    23a8d34d1dae:	41 83 f9 0f                                     	cmp    r9d,0xf
    23a8d34d1db2:	0f 84 c0 00 00 00                               	je     0x23a8d34d1e78
    23a8d34d1db8:	45 85 e4                                        	test   r12d,r12d
    23a8d34d1dbb:	0f 84 24 00 00 00                               	je     0x23a8d34d1de5
    23a8d34d1dc1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1dc4:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    23a8d34d1dc8:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d1dcb:	03 d3                                           	add    edx,ebx
    23a8d34d1dcd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1dd1:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d1dd5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    23a8d34d1ddb:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    23a8d34d1dde:	33 d2                                           	xor    edx,edx
    23a8d34d1de0:	e9 0a 00 00 00                                  	jmp    0x23a8d34d1def
    23a8d34d1de5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    23a8d34d1deb:	33 c0                                           	xor    eax,eax
    23a8d34d1ded:	33 d2                                           	xor    edx,edx
    23a8d34d1def:	85 f6                                           	test   esi,esi
    23a8d34d1df1:	0f 84 2a 00 00 00                               	je     0x23a8d34d1e21
    23a8d34d1df7:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    23a8d34d1dfa:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    23a8d34d1e00:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    23a8d34d1e06:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d1e09:	03 d8                                           	add    ebx,eax
    23a8d34d1e0b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d1e0f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d1e13:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    23a8d34d1e19:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    23a8d34d1e1c:	e9 0e 00 00 00                                  	jmp    0x23a8d34d1e2f
    23a8d34d1e21:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    23a8d34d1e27:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    23a8d34d1e2d:	8b ca                                           	mov    ecx,edx
    23a8d34d1e2f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    23a8d34d1e32:	85 c0                                           	test   eax,eax
    23a8d34d1e34:	0f 84 21 00 00 00                               	je     0x23a8d34d1e5b
    23a8d34d1e3a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1e3d:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    23a8d34d1e43:	c1 e2 02                                        	shl    edx,0x2
    23a8d34d1e46:	03 c2                                           	add    eax,edx
    23a8d34d1e48:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1e4c:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    23a8d34d1e50:	44 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+rax*1]
    23a8d34d1e54:	33 c0                                           	xor    eax,eax
    23a8d34d1e56:	e9 05 00 00 00                                  	jmp    0x23a8d34d1e60
    23a8d34d1e5b:	33 c0                                           	xor    eax,eax
    23a8d34d1e5d:	45 33 c0                                        	xor    r8d,r8d
    23a8d34d1e60:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    23a8d34d1e63:	85 d2                                           	test   edx,edx
    23a8d34d1e65:	0f 84 08 00 00 00                               	je     0x23a8d34d1e73
    23a8d34d1e6b:	41 8b d0                                        	mov    edx,r8d
    23a8d34d1e6e:	e9 7a 00 00 00                                  	jmp    0x23a8d34d1eed
    23a8d34d1e73:	e9 94 00 00 00                                  	jmp    0x23a8d34d1f0c
    23a8d34d1e78:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1e7b:	c4 e3 79 16 db 01                               	vpextrd ebx,xmm3,0x1
    23a8d34d1e81:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d1e84:	03 d3                                           	add    edx,ebx
    23a8d34d1e86:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1e8a:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d1e8e:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    23a8d34d1e94:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    23a8d34d1e97:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1e9a:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    23a8d34d1e9e:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d1ea1:	03 d3                                           	add    edx,ebx
    23a8d34d1ea3:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1ea7:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d1eab:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    23a8d34d1eb1:	8b 0c 13                                        	mov    ecx,DWORD PTR [rbx+rdx*1]
    23a8d34d1eb4:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1eb7:	c4 e3 79 16 db 02                               	vpextrd ebx,xmm3,0x2
    23a8d34d1ebd:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d1ec0:	03 d3                                           	add    edx,ebx
    23a8d34d1ec2:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1ec6:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d1eca:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    23a8d34d1ed0:	8b 34 13                                        	mov    esi,DWORD PTR [rbx+rdx*1]
    23a8d34d1ed3:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    23a8d34d1ed9:	8b c8                                           	mov    ecx,eax
    23a8d34d1edb:	41 8b c0                                        	mov    eax,r8d
    23a8d34d1ede:	44 8b c6                                        	mov    r8d,esi
    23a8d34d1ee1:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    23a8d34d1ee7:	8b b5 dc fe ff ff                               	mov    esi,DWORD PTR [rbp-0x124]
    23a8d34d1eed:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1ef0:	c4 e3 79 16 db 03                               	vpextrd ebx,xmm3,0x3
    23a8d34d1ef6:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d1ef9:	03 d3                                           	add    edx,ebx
    23a8d34d1efb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1eff:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d1f03:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    23a8d34d1f09:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    23a8d34d1f0c:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    23a8d34d1f12:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    23a8d34d1f1a:	c4 e3 49 22 c2 01                               	vpinsrd xmm0,xmm6,edx,0x1
    23a8d34d1f20:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    23a8d34d1f26:	c5 f9 6e da                                     	vmovd  xmm3,edx
    23a8d34d1f2a:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    23a8d34d1f2f:	c4 e3 61 22 d9 01                               	vpinsrd xmm3,xmm3,ecx,0x1
    23a8d34d1f35:	41 83 f9 0f                                     	cmp    r9d,0xf
    23a8d34d1f39:	0f 84 b0 00 00 00                               	je     0x23a8d34d1fef
    23a8d34d1f3f:	45 85 e4                                        	test   r12d,r12d
    23a8d34d1f42:	0f 84 1e 00 00 00                               	je     0x23a8d34d1f66
    23a8d34d1f48:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d34d1f4b:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    23a8d34d1f4f:	c1 e2 02                                        	shl    edx,0x2
    23a8d34d1f52:	03 ca                                           	add    ecx,edx
    23a8d34d1f54:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d1f58:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    23a8d34d1f5c:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    23a8d34d1f5f:	33 c9                                           	xor    ecx,ecx
    23a8d34d1f61:	e9 04 00 00 00                                  	jmp    0x23a8d34d1f6a
    23a8d34d1f66:	33 c9                                           	xor    ecx,ecx
    23a8d34d1f68:	33 db                                           	xor    ebx,ebx
    23a8d34d1f6a:	85 f6                                           	test   esi,esi
    23a8d34d1f6c:	0f 84 27 00 00 00                               	je     0x23a8d34d1f99
    23a8d34d1f72:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1f75:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    23a8d34d1f7b:	c4 e3 79 16 e8 01                               	vpextrd eax,xmm5,0x1
    23a8d34d1f81:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d1f84:	03 d0                                           	add    edx,eax
    23a8d34d1f86:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d1f8a:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d1f8e:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    23a8d34d1f91:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    23a8d34d1f94:	e9 06 00 00 00                                  	jmp    0x23a8d34d1f9f
    23a8d34d1f99:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    23a8d34d1f9f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    23a8d34d1fa2:	85 c0                                           	test   eax,eax
    23a8d34d1fa4:	0f 84 23 00 00 00                               	je     0x23a8d34d1fcd
    23a8d34d1faa:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d1fad:	c4 e3 79 16 ea 02                               	vpextrd edx,xmm5,0x2
    23a8d34d1fb3:	c1 e2 02                                        	shl    edx,0x2
    23a8d34d1fb6:	03 c2                                           	add    eax,edx
    23a8d34d1fb8:	48 8b 55 f0                                     	mov    rdx,QWORD PTR [rbp-0x10]
    23a8d34d1fbc:	48 8b 52 17                                     	mov    rdx,QWORD PTR [rdx+0x17]
    23a8d34d1fc0:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    23a8d34d1fc3:	8b 0c 02                                        	mov    ecx,DWORD PTR [rdx+rax*1]
    23a8d34d1fc6:	33 c0                                           	xor    eax,eax
    23a8d34d1fc8:	e9 0b 00 00 00                                  	jmp    0x23a8d34d1fd8
    23a8d34d1fcd:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    23a8d34d1fd0:	33 c0                                           	xor    eax,eax
    23a8d34d1fd2:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    23a8d34d1fd8:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    23a8d34d1fdb:	85 d2                                           	test   edx,edx
    23a8d34d1fdd:	0f 84 07 00 00 00                               	je     0x23a8d34d1fea
    23a8d34d1fe3:	8b d1                                           	mov    edx,ecx
    23a8d34d1fe5:	e9 69 00 00 00                                  	jmp    0x23a8d34d2053
    23a8d34d1fea:	e9 91 00 00 00                                  	jmp    0x23a8d34d2080
    23a8d34d1fef:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d1ff2:	c4 e3 79 16 eb 01                               	vpextrd ebx,xmm5,0x1
    23a8d34d1ff8:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d1ffb:	03 d3                                           	add    edx,ebx
    23a8d34d1ffd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d2001:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d2005:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    23a8d34d200b:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    23a8d34d200e:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d34d2011:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    23a8d34d2015:	c1 e2 02                                        	shl    edx,0x2
    23a8d34d2018:	03 ca                                           	add    ecx,edx
    23a8d34d201a:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    23a8d34d201d:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    23a8d34d2020:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    23a8d34d2026:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d2029:	03 cb                                           	add    ecx,ebx
    23a8d34d202b:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d202f:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d2033:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    23a8d34d2039:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    23a8d34d203c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    23a8d34d203f:	8b ca                                           	mov    ecx,edx
    23a8d34d2041:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    23a8d34d2047:	8b 95 c4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x13c]
    23a8d34d204d:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    23a8d34d2053:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d2056:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    23a8d34d205c:	c4 e3 79 16 e8 03                               	vpextrd eax,xmm5,0x3
    23a8d34d2062:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d2065:	03 d0                                           	add    edx,eax
    23a8d34d2067:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d206b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d206f:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    23a8d34d2075:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    23a8d34d2078:	8b c1                                           	mov    eax,ecx
    23a8d34d207a:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    23a8d34d2080:	c4 c3 79 22 f7 02                               	vpinsrd xmm6,xmm0,r15d,0x2
    23a8d34d2086:	c4 c3 61 22 c0 02                               	vpinsrd xmm0,xmm3,r8d,0x2
    23a8d34d208c:	c5 e9 fe d9                                     	vpaddd xmm3,xmm2,xmm1
    23a8d34d2090:	c5 f9 6e eb                                     	vmovd  xmm5,ebx
    23a8d34d2094:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    23a8d34d2099:	8b 55 d4                                        	mov    edx,DWORD PTR [rbp-0x2c]
    23a8d34d209c:	c4 e3 51 22 ea 01                               	vpinsrd xmm5,xmm5,edx,0x1
    23a8d34d20a2:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    23a8d34d20a8:	41 83 f9 0f                                     	cmp    r9d,0xf
    23a8d34d20ac:	0f 84 bd 00 00 00                               	je     0x23a8d34d216f
    23a8d34d20b2:	45 85 e4                                        	test   r12d,r12d
    23a8d34d20b5:	0f 84 24 00 00 00                               	je     0x23a8d34d20df
    23a8d34d20bb:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d20be:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    23a8d34d20c2:	c1 e3 02                                        	shl    ebx,0x2
    23a8d34d20c5:	03 d3                                           	add    edx,ebx
    23a8d34d20c7:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    23a8d34d20cb:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    23a8d34d20cf:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    23a8d34d20d5:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    23a8d34d20d8:	33 d2                                           	xor    edx,edx
    23a8d34d20da:	e9 0a 00 00 00                                  	jmp    0x23a8d34d20e9
    23a8d34d20df:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    23a8d34d20e5:	33 c0                                           	xor    eax,eax
    23a8d34d20e7:	33 d2                                           	xor    edx,edx
    23a8d34d20e9:	85 f6                                           	test   esi,esi
    23a8d34d20eb:	0f 84 2a 00 00 00                               	je     0x23a8d34d211b
    23a8d34d20f1:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    23a8d34d20f4:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    23a8d34d20fa:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    23a8d34d2100:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d2103:	03 d8                                           	add    ebx,eax
    23a8d34d2105:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d2109:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d210d:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    23a8d34d2113:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    23a8d34d2116:	e9 0e 00 00 00                                  	jmp    0x23a8d34d2129
    23a8d34d211b:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    23a8d34d2121:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    23a8d34d2127:	8b ca                                           	mov    ecx,edx
    23a8d34d2129:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    23a8d34d212c:	85 c0                                           	test   eax,eax
    23a8d34d212e:	0f 84 20 00 00 00                               	je     0x23a8d34d2154
    23a8d34d2134:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    23a8d34d2137:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    23a8d34d213d:	c1 e2 02                                        	shl    edx,0x2
    23a8d34d2140:	03 c2                                           	add    eax,edx
    23a8d34d2142:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d2146:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    23a8d34d214a:	8b 1c 02                                        	mov    ebx,DWORD PTR [rdx+rax*1]
    23a8d34d214d:	33 c0                                           	xor    eax,eax
    23a8d34d214f:	e9 04 00 00 00                                  	jmp    0x23a8d34d2158
    23a8d34d2154:	33 c0                                           	xor    eax,eax
    23a8d34d2156:	33 db                                           	xor    ebx,ebx
    23a8d34d2158:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    23a8d34d215b:	85 d2                                           	test   edx,edx
    23a8d34d215d:	0f 84 07 00 00 00                               	je     0x23a8d34d216a
    23a8d34d2163:	8b d3                                           	mov    edx,ebx
    23a8d34d2165:	e9 77 00 00 00                                  	jmp    0x23a8d34d21e1
    23a8d34d216a:	e9 90 00 00 00                                  	jmp    0x23a8d34d21ff
    23a8d34d216f:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d2172:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    23a8d34d2178:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    23a8d34d217e:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d2181:	03 d0                                           	add    edx,eax
    23a8d34d2183:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d2187:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d218b:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    23a8d34d2191:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    23a8d34d2194:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d2197:	c5 f9 7e d8                                     	vmovd  eax,xmm3
    23a8d34d219b:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d219e:	03 d0                                           	add    edx,eax
    23a8d34d21a0:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d21a4:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d21a8:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    23a8d34d21ae:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    23a8d34d21b1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d21b4:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    23a8d34d21ba:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d21bd:	03 d0                                           	add    edx,eax
    23a8d34d21bf:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d21c3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d21c7:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    23a8d34d21cd:	8b 34 10                                        	mov    esi,DWORD PTR [rax+rdx*1]
    23a8d34d21d0:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    23a8d34d21d6:	41 8b d4                                        	mov    edx,r12d
    23a8d34d21d9:	8b de                                           	mov    ebx,esi
    23a8d34d21db:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    23a8d34d21e1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    23a8d34d21e4:	c4 e3 79 16 de 03                               	vpextrd esi,xmm3,0x3
    23a8d34d21ea:	c1 e6 02                                        	shl    esi,0x2
    23a8d34d21ed:	03 d6                                           	add    edx,esi
    23a8d34d21ef:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    23a8d34d21f3:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    23a8d34d21f8:	44 8b 24 16                                     	mov    r12d,DWORD PTR [rsi+rdx*1]
    23a8d34d21fc:	41 8b c4                                        	mov    eax,r12d
    23a8d34d21ff:	8b 95 cc fe ff ff                               	mov    edx,DWORD PTR [rbp-0x134]
    23a8d34d2205:	c4 e3 49 22 ca 03                               	vpinsrd xmm1,xmm6,edx,0x3
    23a8d34d220b:	8b 95 d0 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x130]
    23a8d34d2211:	c4 e3 79 22 d2 03                               	vpinsrd xmm2,xmm0,edx,0x3
    23a8d34d2217:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    23a8d34d221d:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    23a8d34d2221:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    23a8d34d2226:	c4 e3 49 22 f1 01                               	vpinsrd xmm6,xmm6,ecx,0x1
    23a8d34d222c:	c4 e3 49 22 f3 02                               	vpinsrd xmm6,xmm6,ebx,0x2
    23a8d34d2232:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    23a8d34d2238:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    23a8d34d223e:	c4 e3 51 22 c2 03                               	vpinsrd xmm0,xmm5,edx,0x3
    23a8d34d2244:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    23a8d34d2247:	89 9d e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],ebx
    23a8d34d224d:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    23a8d34d2253:	44 89 bd c8 fe ff ff                            	mov    DWORD PTR [rbp-0x138],r15d
    23a8d34d225a:	41 8b d0                                        	mov    edx,r8d
    23a8d34d225d:	c5 fa 7f b5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm6
    23a8d34d2265:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    23a8d34d2269:	c5 fa 7f 95 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm2
    23a8d34d2271:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    23a8d34d2275:	8b 9d cc fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x134]
    23a8d34d227b:	8b 75 d8                                        	mov    esi,DWORD PTR [rbp-0x28]
    23a8d34d227e:	44 8b 85 d0 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x130]
    23a8d34d2285:	44 8b 7d dc                                     	mov    r15d,DWORD PTR [rbp-0x24]
    23a8d34d2289:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    23a8d34d2291:	c5 fa 6f 8d 94 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x16c]
    23a8d34d2299:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    23a8d34d22a1:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    23a8d34d22a6:	c5 fa 7f 4d 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm1
    23a8d34d22ab:	c5 fa 6f 8d 08 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xf8]
    23a8d34d22b3:	c5 f0 5c cf                                     	vsubps xmm1,xmm1,xmm7
    23a8d34d22b7:	c5 f8 5c c1                                     	vsubps xmm0,xmm0,xmm1
    23a8d34d22bb:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    23a8d34d22c0:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    23a8d34d22c8:	c5 fa 6f 95 e8 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x118]
    23a8d34d22d0:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    23a8d34d22d5:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    23a8d34d22dd:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    23a8d34d22e1:	c5 c0 5c fa                                     	vsubps xmm7,xmm7,xmm2
    23a8d34d22e5:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    23a8d34d22ed:	c5 e1 72 d3 18                                  	vpsrld xmm3,xmm3,0x18
    23a8d34d22f2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d22f7:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    23a8d34d22fd:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    23a8d34d2302:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d2307:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    23a8d34d230c:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    23a8d34d2310:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    23a8d34d2314:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    23a8d34d2319:	c5 c0 59 db                                     	vmulps xmm3,xmm7,xmm3
    23a8d34d231d:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    23a8d34d2322:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    23a8d34d2327:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d232c:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d34d2332:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d34d2337:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d233c:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d34d2341:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d34d2345:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d34d2349:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d34d234e:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    23a8d34d2352:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    23a8d34d2356:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    23a8d34d235a:	c5 d1 72 d6 18                                  	vpsrld xmm5,xmm6,0x18
    23a8d34d235f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d2364:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d34d236a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d34d236f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d2374:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d34d2379:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d34d237d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d34d2381:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d34d2386:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    23a8d34d238a:	c5 fa 7f a5 f8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x108],xmm4
    23a8d34d2392:	c5 fa 6f a5 68 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x98]
    23a8d34d239a:	c5 d9 72 d4 18                                  	vpsrld xmm4,xmm4,0x18
    23a8d34d239f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d23a4:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d34d23aa:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d34d23af:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d23b4:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d34d23b9:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d34d23bd:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d34d23c1:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d34d23c6:	c5 e8 59 e4                                     	vmulps xmm4,xmm2,xmm4
    23a8d34d23ca:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    23a8d34d23ce:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    23a8d34d23d2:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    23a8d34d23d6:	c5 fa 6f a5 78 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x88]
    23a8d34d23de:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    23a8d34d23e8:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    23a8d34d23ed:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    23a8d34d23f1:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    23a8d34d23f5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d23fa:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    23a8d34d2400:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    23a8d34d2405:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d240a:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    23a8d34d240f:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    23a8d34d2413:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    23a8d34d2417:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    23a8d34d241c:	c5 c0 59 e4                                     	vmulps xmm4,xmm7,xmm4
    23a8d34d2420:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    23a8d34d2425:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    23a8d34d242a:	c5 fa 7f b5 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm6
    23a8d34d2432:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    23a8d34d2437:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    23a8d34d243b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d2440:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d34d2446:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d34d244b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d2450:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d34d2455:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d34d2459:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d34d245d:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d34d2462:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    23a8d34d2466:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    23a8d34d246a:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    23a8d34d246e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    23a8d34d2476:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    23a8d34d247b:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    23a8d34d247f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d2484:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    23a8d34d248a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    23a8d34d248f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d2494:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    23a8d34d2499:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    23a8d34d249d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    23a8d34d24a1:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    23a8d34d24a6:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    23a8d34d24aa:	c5 fa 6f b5 68 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x98]
    23a8d34d24b2:	c5 fa 7f 7d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm7
    23a8d34d24b7:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    23a8d34d24bc:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    23a8d34d24c0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d24c5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d34d24cb:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d34d24d0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d24d5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d34d24da:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d34d24de:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d34d24e2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d34d24e7:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    23a8d34d24eb:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    23a8d34d24ef:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    23a8d34d24f3:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    23a8d34d24f7:	c5 fa 6f 6d a8                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x58]
    23a8d34d24fc:	c5 fa 6f b5 78 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x88]
    23a8d34d2504:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    23a8d34d2509:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    23a8d34d250e:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    23a8d34d2512:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d2517:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d34d251d:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d34d2522:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d2527:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d34d252c:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d34d2530:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d34d2534:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d34d2539:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    23a8d34d253d:	c5 fa 6f 75 98                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x68]
    23a8d34d2542:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    23a8d34d2547:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    23a8d34d254c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    23a8d34d2550:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d2555:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    23a8d34d255b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    23a8d34d2560:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d2565:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    23a8d34d256a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    23a8d34d256e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    23a8d34d2572:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    23a8d34d2577:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    23a8d34d257b:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    23a8d34d257f:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    23a8d34d2583:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    23a8d34d2588:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    23a8d34d2590:	c5 c1 72 d7 10                                  	vpsrld xmm7,xmm7,0x10
    23a8d34d2595:	c5 fa 7f 85 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm0
    23a8d34d259d:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    23a8d34d25a2:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
    23a8d34d25a6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d25ab:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d34d25b1:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d34d25b6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d25bb:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d34d25c0:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d34d25c4:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d34d25c8:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d34d25cd:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d34d25d1:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    23a8d34d25d9:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    23a8d34d25de:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    23a8d34d25e3:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    23a8d34d25e7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d25ec:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d34d25f2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d34d25f7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d25fc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d34d2601:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d34d2605:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d34d2609:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d34d260e:	c5 e8 59 c0                                     	vmulps xmm0,xmm2,xmm0
    23a8d34d2612:	c5 c8 58 f0                                     	vaddps xmm6,xmm6,xmm0
    23a8d34d2616:	c5 f0 59 f6                                     	vmulps xmm6,xmm1,xmm6
    23a8d34d261a:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    23a8d34d261e:	c5 fa 6f 85 18 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xe8]
    23a8d34d2626:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    23a8d34d262b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    23a8d34d2633:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    23a8d34d2638:	c5 fa 7f 8d 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm1
    23a8d34d2640:	c5 fa 6f 4d 88                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x78]
    23a8d34d2645:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    23a8d34d2649:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d264e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d34d2654:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d34d2659:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d265e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d34d2663:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d34d2667:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d34d266b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d34d2670:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d34d2674:	c5 fa 6f 4d 98                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x68]
    23a8d34d2679:	c5 f1 72 d1 08                                  	vpsrld xmm1,xmm1,0x8
    23a8d34d267e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    23a8d34d2683:	c5 f1 db cf                                     	vpand  xmm1,xmm1,xmm7
    23a8d34d2687:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d268c:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d34d2692:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d34d2697:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d269c:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d34d26a1:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d34d26a5:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d34d26a9:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d34d26ae:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    23a8d34d26b2:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    23a8d34d26b6:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    23a8d34d26ba:	c5 fa 6f 8d 48 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xb8]
    23a8d34d26c2:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    23a8d34d26c7:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    23a8d34d26cf:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    23a8d34d26d4:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    23a8d34d26d9:	c5 fa 6f 55 88                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x78]
    23a8d34d26de:	c5 c1 db fa                                     	vpand  xmm7,xmm7,xmm2
    23a8d34d26e2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d26e7:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d34d26ed:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d34d26f2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d26f7:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d34d26fc:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d34d2700:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d34d2704:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d34d2709:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    23a8d34d270d:	c5 fa 6f 55 b8                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x48]
    23a8d34d2712:	c5 fa 6f bd 68 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x98]
    23a8d34d271a:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    23a8d34d271f:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    23a8d34d2727:	c5 fa 6f 5d 88                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x78]
    23a8d34d272c:	c5 c1 db fb                                     	vpand  xmm7,xmm7,xmm3
    23a8d34d2730:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d2735:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    23a8d34d273b:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    23a8d34d2740:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d2745:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    23a8d34d274a:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    23a8d34d274e:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    23a8d34d2752:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    23a8d34d2757:	c5 e8 59 d7                                     	vmulps xmm2,xmm2,xmm7
    23a8d34d275b:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
    23a8d34d275f:	c5 f0 59 ce                                     	vmulps xmm1,xmm1,xmm6
    23a8d34d2763:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    23a8d34d2767:	e9 c8 01 00 00                                  	jmp    0x23a8d34d2934
    23a8d34d276c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d34d2770:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    23a8d34d2773:	8b c1                                           	mov    eax,ecx
    23a8d34d2775:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d2778:	44 03 e0                                        	add    r12d,eax
    23a8d34d277b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d277f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d2783:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    23a8d34d2789:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    23a8d34d278d:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d34d2791:	8b c3                                           	mov    eax,ebx
    23a8d34d2793:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d2796:	44 03 e0                                        	add    r12d,eax
    23a8d34d2799:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d279d:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d27a1:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    23a8d34d27a7:	42 8b 14 20                                     	mov    edx,DWORD PTR [rax+r12*1]
    23a8d34d27ab:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    23a8d34d27af:	45 8b f8                                        	mov    r15d,r8d
    23a8d34d27b2:	41 c1 e7 02                                     	shl    r15d,0x2
    23a8d34d27b6:	45 03 e7                                        	add    r12d,r15d
    23a8d34d27b9:	46 8b 3c 20                                     	mov    r15d,DWORD PTR [rax+r12*1]
    23a8d34d27bd:	44 8b e1                                        	mov    r12d,ecx
    23a8d34d27c0:	8b ca                                           	mov    ecx,edx
    23a8d34d27c2:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    23a8d34d27c8:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    23a8d34d27ce:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    23a8d34d27d1:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    23a8d34d27d7:	8b 45 d4                                        	mov    eax,DWORD PTR [rbp-0x2c]
    23a8d34d27da:	c1 e0 02                                        	shl    eax,0x2
    23a8d34d27dd:	03 f0                                           	add    esi,eax
    23a8d34d27df:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    23a8d34d27e3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    23a8d34d27e7:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    23a8d34d27ea:	8b 0c 30                                        	mov    ecx,DWORD PTR [rax+rsi*1]
    23a8d34d27ed:	8b c1                                           	mov    eax,ecx
    23a8d34d27ef:	8b 4d dc                                        	mov    ecx,DWORD PTR [rbp-0x24]
    23a8d34d27f2:	c4 c1 79 6e e7                                  	vmovd  xmm4,r15d
    23a8d34d27f7:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    23a8d34d27fc:	c4 e3 59 22 e1 01                               	vpinsrd xmm4,xmm4,ecx,0x1
    23a8d34d2802:	c4 c3 59 22 e4 02                               	vpinsrd xmm4,xmm4,r12d,0x2
    23a8d34d2808:	c4 e3 59 22 e0 03                               	vpinsrd xmm4,xmm4,eax,0x3
    23a8d34d280e:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    23a8d34d2816:	c5 f9 72 d4 18                                  	vpsrld xmm0,xmm4,0x18
    23a8d34d281b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d2820:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    23a8d34d2826:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    23a8d34d282b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d2830:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    23a8d34d2835:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    23a8d34d2839:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    23a8d34d283d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    23a8d34d2842:	4c 8b 15 97 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb97]        # 0x23a8d34d23e0
    23a8d34d2849:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    23a8d34d284e:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    23a8d34d2852:	c5 d9 db cb                                     	vpand  xmm1,xmm4,xmm3
    23a8d34d2856:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d285b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d34d2861:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d34d2866:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d286b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d34d2870:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d34d2874:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d34d2878:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d34d287d:	c5 fa 7f 8d 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm1
    23a8d34d2885:	c5 f1 72 d4 10                                  	vpsrld xmm1,xmm4,0x10
    23a8d34d288a:	c5 f1 db cb                                     	vpand  xmm1,xmm1,xmm3
    23a8d34d288e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d2893:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    23a8d34d2899:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    23a8d34d289e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d28a3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    23a8d34d28a8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    23a8d34d28ac:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    23a8d34d28b0:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    23a8d34d28b5:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    23a8d34d28bd:	c5 e9 72 d4 08                                  	vpsrld xmm2,xmm4,0x8
    23a8d34d28c2:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    23a8d34d28c6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    23a8d34d28cb:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    23a8d34d28d1:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    23a8d34d28d6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    23a8d34d28db:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    23a8d34d28e0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    23a8d34d28e4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    23a8d34d28e8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    23a8d34d28ed:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    23a8d34d28f2:	c5 fa 7f 6d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm5
    23a8d34d28f7:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    23a8d34d28fc:	c5 fa 7f 65 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm4
    23a8d34d2901:	c5 fa 7f 85 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm0
    23a8d34d2909:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    23a8d34d2911:	44 89 a5 e0 fe ff ff                            	mov    DWORD PTR [rbp-0x120],r12d
    23a8d34d2918:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    23a8d34d291e:	41 8b f7                                        	mov    esi,r15d
    23a8d34d2921:	44 8b f9                                        	mov    r15d,ecx
    23a8d34d2924:	c5 f9 28 c2                                     	vmovapd xmm0,xmm2
    23a8d34d2928:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    23a8d34d292c:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    23a8d34d2934:	c5 fa 6f 8d 58 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xa8]
    23a8d34d293c:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    23a8d34d2946:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    23a8d34d294b:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    23a8d34d294f:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    23a8d34d2953:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    23a8d34d2957:	41 8b c1                                        	mov    eax,r9d
    23a8d34d295a:	83 e0 01                                        	and    eax,0x1
    23a8d34d295d:	33 c9                                           	xor    ecx,ecx
    23a8d34d295f:	2b c8                                           	sub    ecx,eax
    23a8d34d2961:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    23a8d34d2965:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    23a8d34d296a:	41 8b c1                                        	mov    eax,r9d
    23a8d34d296d:	c1 e0 1e                                        	shl    eax,0x1e
    23a8d34d2970:	c1 f8 1f                                        	sar    eax,0x1f
    23a8d34d2973:	c4 e3 49 22 f0 01                               	vpinsrd xmm6,xmm6,eax,0x1
    23a8d34d2979:	41 8b c1                                        	mov    eax,r9d
    23a8d34d297c:	c1 e0 1d                                        	shl    eax,0x1d
    23a8d34d297f:	c1 f8 1f                                        	sar    eax,0x1f
    23a8d34d2982:	c4 e3 49 22 f0 02                               	vpinsrd xmm6,xmm6,eax,0x2
    23a8d34d2988:	41 8b c1                                        	mov    eax,r9d
    23a8d34d298b:	c1 e0 1c                                        	shl    eax,0x1c
    23a8d34d298e:	c1 f8 1f                                        	sar    eax,0x1f
    23a8d34d2991:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    23a8d34d2997:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    23a8d34d299b:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    23a8d34d299f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d34d29a4:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    23a8d34d29a8:	48 8b 41 17                                     	mov    rax,QWORD PTR [rcx+0x17]
    23a8d34d29ac:	c5 fa 7f 7c 38 30                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x30],xmm7
    23a8d34d29b2:	c5 d0 59 ca                                     	vmulps xmm1,xmm5,xmm2
    23a8d34d29b6:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    23a8d34d29ba:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    23a8d34d29be:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d34d29c3:	c5 fa 7f 7c 38 20                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x20],xmm7
    23a8d34d29c9:	c5 f8 59 ca                                     	vmulps xmm1,xmm0,xmm2
    23a8d34d29cd:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    23a8d34d29d1:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    23a8d34d29d5:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d34d29da:	c5 fa 7f 7c 38 10                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x10],xmm7
    23a8d34d29e0:	c5 d8 59 ca                                     	vmulps xmm1,xmm4,xmm2
    23a8d34d29e4:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    23a8d34d29e8:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    23a8d34d29ec:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    23a8d34d29f1:	c5 fa 7f 3c 38                                  	vmovdqu XMMWORD PTR [rax+rdi*1],xmm7
    23a8d34d29f6:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    23a8d34d29fb:	c5 fa 7f a5 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm4
    23a8d34d2a03:	c5 fa 7f ad 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm5
    23a8d34d2a0b:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    23a8d34d2a11:	44 89 85 d0 fe ff ff                            	mov    DWORD PTR [rbp-0x130],r8d
    23a8d34d2a18:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    23a8d34d2a1e:	41 8b c7                                        	mov    eax,r15d
    23a8d34d2a21:	8b d6                                           	mov    edx,esi
    23a8d34d2a23:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    23a8d34d2a27:	c5 f9 28 eb                                     	vmovapd xmm5,xmm3
    23a8d34d2a2b:	b9 01 00 00 00                                  	mov    ecx,0x1
    23a8d34d2a30:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    23a8d34d2a36:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    23a8d34d2a39:	44 8b 45 d4                                     	mov    r8d,DWORD PTR [rbp-0x2c]
    23a8d34d2a3d:	44 8b a5 dc fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x124]
    23a8d34d2a44:	44 8b bd e0 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x120]
    23a8d34d2a4b:	c5 fa 6f a5 48 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xb8]
    23a8d34d2a53:	c5 fa 6f b5 58 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xa8]
    23a8d34d2a5b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    23a8d34d2a63:	8b c1                                           	mov    eax,ecx
    23a8d34d2a65:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
    23a8d34d2a69:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
    23a8d34d2a6d:	41 81 aa bc 02 00 00 61 1c 00 00                	sub    DWORD PTR [r10+0x2bc],0x1c61
    23a8d34d2a78:	0f 88 25 00 00 00                               	js     0x23a8d34d2aa3
    23a8d34d2a7e:	48 8b e5                                        	mov    rsp,rbp
    23a8d34d2a81:	5d                                              	pop    rbp
    23a8d34d2a82:	c2 08 00                                        	ret    0x8
    23a8d34d2a85:	50                                              	push   rax
    23a8d34d2a86:	51                                              	push   rcx
    23a8d34d2a87:	52                                              	push   rdx
    23a8d34d2a88:	53                                              	push   rbx
    23a8d34d2a89:	57                                              	push   rdi
    23a8d34d2a8a:	41 51                                           	push   r9
    23a8d34d2a8c:	33 c0                                           	xor    eax,eax
    23a8d34d2a8e:	e8 9d c4 f7 ff                                  	call   0x23a8d344ef30
    23a8d34d2a93:	41 59                                           	pop    r9
    23a8d34d2a95:	5f                                              	pop    rdi
    23a8d34d2a96:	5b                                              	pop    rbx
    23a8d34d2a97:	5a                                              	pop    rdx
    23a8d34d2a98:	59                                              	pop    rcx
    23a8d34d2a99:	58                                              	pop    rax
    23a8d34d2a9a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    23a8d34d2a9e:	e9 dd e3 ff ff                                  	jmp    0x23a8d34d0e80
    23a8d34d2aa3:	50                                              	push   rax
    23a8d34d2aa4:	e8 b7 c2 f7 ff                                  	call   0x23a8d344ed60
    23a8d34d2aa9:	58                                              	pop    rax
    23a8d34d2aaa:	eb d2                                           	jmp    0x23a8d34d2a7e
    23a8d34d2aac:	36 00 00                                        	ss add BYTE PTR [rax],al
    23a8d34d2aaf:	00 08                                           	add    BYTE PTR [rax],cl
	...
