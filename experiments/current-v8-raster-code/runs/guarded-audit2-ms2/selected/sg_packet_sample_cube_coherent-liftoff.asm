
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms2/selected/sg_packet_sample_cube_coherent-liftoff.bin:     file format binary


Disassembly of section .data:

00002989c621e840 <.data>:
    2989c621e840:	41 bc af 00 00 00                               	mov    r12d,0xaf
    2989c621e846:	e8 25 f5 f5 ff                                  	call   0x2989c617dd70
    2989c621e84b:	48 81 ec 58 01 00 00                            	sub    rsp,0x158
    2989c621e852:	8b c0                                           	mov    eax,eax
    2989c621e854:	8b d2                                           	mov    edx,edx
    2989c621e856:	8b c9                                           	mov    ecx,ecx
    2989c621e858:	8b db                                           	mov    ebx,ebx
    2989c621e85a:	45 8b c9                                        	mov    r9d,r9d
    2989c621e85d:	8b 7d 10                                        	mov    edi,DWORD PTR [rbp+0x10]
    2989c621e860:	50                                              	push   rax
    2989c621e861:	51                                              	push   rcx
    2989c621e862:	57                                              	push   rdi
    2989c621e863:	48 8d bd c4 fe ff ff                            	lea    rdi,[rbp-0x13c]
    2989c621e86a:	33 c0                                           	xor    eax,eax
    2989c621e86c:	b9 41 00 00 00                                  	mov    ecx,0x41
    2989c621e871:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    2989c621e873:	5f                                              	pop    rdi
    2989c621e874:	59                                              	pop    rcx
    2989c621e875:	58                                              	pop    rax
    2989c621e876:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    2989c621e87a:	0f 86 05 1c 00 00                               	jbe    0x2989c6220485
    2989c621e880:	45 85 c9                                        	test   r9d,r9d
    2989c621e883:	0f 85 07 00 00 00                               	jne    0x2989c621e890
    2989c621e889:	33 c0                                           	xor    eax,eax
    2989c621e88b:	e9 d5 1b 00 00                                  	jmp    0x2989c6220465
    2989c621e890:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    2989c621e894:	45 8b 64 00 04                                  	mov    r12d,DWORD PTR [r8+rax*1+0x4]
    2989c621e899:	45 85 e4                                        	test   r12d,r12d
    2989c621e89c:	0f 85 07 00 00 00                               	jne    0x2989c621e8a9
    2989c621e8a2:	33 c0                                           	xor    eax,eax
    2989c621e8a4:	e9 bc 1b 00 00                                  	jmp    0x2989c6220465
    2989c621e8a9:	45 8b f9                                        	mov    r15d,r9d
    2989c621e8ac:	41 83 e7 0f                                     	and    r15d,0xf
    2989c621e8b0:	c4 c1 7a 6f 04 08                               	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1]
    2989c621e8b6:	49 ba 50 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b850
    2989c621e8c0:	c4 c1 78 54 0a                                  	vandps xmm1,xmm0,XMMWORD PTR [r10]
    2989c621e8c5:	49 ba ff ff 7f 7f ff ff 7f 7f                   	movabs r10,0x7f7fffff7f7fffff
    2989c621e8cf:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c621e8d4:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c621e8d8:	c5 f0 c2 da 02                                  	vcmpleps xmm3,xmm1,xmm2
    2989c621e8dd:	c4 c1 7a 6f 24 10                               	vmovdqu xmm4,XMMWORD PTR [r8+rdx*1]
    2989c621e8e3:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x2989c621e8b8
    2989c621e8ea:	c4 c1 58 54 2a                                  	vandps xmm5,xmm4,XMMWORD PTR [r10]
    2989c621e8ef:	c5 d0 c2 f2 02                                  	vcmpleps xmm6,xmm5,xmm2
    2989c621e8f4:	c5 e1 db de                                     	vpand  xmm3,xmm3,xmm6
    2989c621e8f8:	c4 c1 7a 6f 34 18                               	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1]
    2989c621e8fe:	4c 8b 15 b3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffb3]        # 0x2989c621e8b8
    2989c621e905:	c4 c1 48 54 3a                                  	vandps xmm7,xmm6,XMMWORD PTR [r10]
    2989c621e90a:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    2989c621e90f:	c5 c0 c2 c2 02                                  	vcmpleps xmm0,xmm7,xmm2
    2989c621e914:	c5 e1 db d8                                     	vpand  xmm3,xmm3,xmm0
    2989c621e918:	c5 f8 50 f3                                     	vmovmskps esi,xmm3
    2989c621e91c:	41 23 f7                                        	and    esi,r15d
    2989c621e91f:	44 3b ce                                        	cmp    r9d,esi
    2989c621e922:	0f 84 07 00 00 00                               	je     0x2989c621e92f
    2989c621e928:	33 c0                                           	xor    eax,eax
    2989c621e92a:	e9 36 1b 00 00                                  	jmp    0x2989c6220465
    2989c621e92f:	c5 c0 c2 c5 02                                  	vcmpleps xmm0,xmm7,xmm5
    2989c621e934:	c5 f0 c2 dd 02                                  	vcmpleps xmm3,xmm1,xmm5
    2989c621e939:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    2989c621e93d:	c5 f8 50 f0                                     	vmovmskps esi,xmm0
    2989c621e941:	8b de                                           	mov    ebx,esi
    2989c621e943:	41 23 d9                                        	and    ebx,r9d
    2989c621e946:	44 3b cb                                        	cmp    r9d,ebx
    2989c621e949:	0f 85 32 00 00 00                               	jne    0x2989c621e981
    2989c621e94f:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    2989c621e954:	49 ba 60 b8 f4 10 58 57 00 00                   	movabs r10,0x575810f4b860
    2989c621e95e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c621e963:	4c 8b 15 ec ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffec]        # 0x2989c621e956
    2989c621e96a:	c4 c1 48 57 12                                  	vxorps xmm2,xmm6,XMMWORD PTR [r10]
    2989c621e96f:	c7 45 d0 00 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x0
    2989c621e976:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    2989c621e97a:	33 f6                                           	xor    esi,esi
    2989c621e97c:	e9 9d 00 00 00                                  	jmp    0x2989c621ea1e
    2989c621e981:	c5 c0 c2 c1 02                                  	vcmpleps xmm0,xmm7,xmm1
    2989c621e986:	c5 d0 c2 d9 02                                  	vcmpleps xmm3,xmm5,xmm1
    2989c621e98b:	c5 f9 db c3                                     	vpand  xmm0,xmm0,xmm3
    2989c621e98f:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    2989c621e993:	8b ce                                           	mov    ecx,esi
    2989c621e995:	83 f1 ff                                        	xor    ecx,0xffffffff
    2989c621e998:	41 23 c9                                        	and    ecx,r9d
    2989c621e99b:	41 23 c8                                        	and    ecx,r8d
    2989c621e99e:	44 3b c9                                        	cmp    r9d,ecx
    2989c621e9a1:	0f 85 29 00 00 00                               	jne    0x2989c621e9d0
    2989c621e9a7:	c7 45 d0 02 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x2
    2989c621e9ae:	41 8b c8                                        	mov    ecx,r8d
    2989c621e9b1:	c5 f9 28 c6                                     	vmovapd xmm0,xmm6
    2989c621e9b5:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    2989c621e9b9:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    2989c621e9bd:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    2989c621e9c1:	be 01 00 00 00                                  	mov    esi,0x1
    2989c621e9c6:	c5 fa 6f 65 98                                  	vmovdqu xmm4,XMMWORD PTR [rbp-0x68]
    2989c621e9cb:	e9 4e 00 00 00                                  	jmp    0x2989c621ea1e
    2989c621e9d0:	41 8b c8                                        	mov    ecx,r8d
    2989c621e9d3:	0b ce                                           	or     ecx,esi
    2989c621e9d5:	41 23 c9                                        	and    ecx,r9d
    2989c621e9d8:	85 c9                                           	test   ecx,ecx
    2989c621e9da:	0f 84 07 00 00 00                               	je     0x2989c621e9e7
    2989c621e9e0:	33 c9                                           	xor    ecx,ecx
    2989c621e9e2:	e9 7c 1a 00 00                                  	jmp    0x2989c6220463
    2989c621e9e7:	c5 fa 6f 45 98                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x68]
    2989c621e9ec:	4c 8b 15 63 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff63]        # 0x2989c621e956
    2989c621e9f3:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    2989c621e9f8:	c7 45 d0 04 00 00 00                            	mov    DWORD PTR [rbp-0x30],0x4
    2989c621e9ff:	c7 85 d8 fe ff ff 01 00 00 00                   	mov    DWORD PTR [rbp-0x128],0x1
    2989c621ea09:	41 8b c8                                        	mov    ecx,r8d
    2989c621ea0c:	c5 f9 28 d4                                     	vmovapd xmm2,xmm4
    2989c621ea10:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    2989c621ea14:	c5 f9 28 e6                                     	vmovapd xmm4,xmm6
    2989c621ea18:	c5 f9 28 ef                                     	vmovapd xmm5,xmm7
    2989c621ea1c:	33 f6                                           	xor    esi,esi
    2989c621ea1e:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    2989c621ea22:	c5 c8 c2 cc 02                                  	vcmpleps xmm1,xmm6,xmm4
    2989c621ea27:	c5 f8 50 c9                                     	vmovmskps ecx,xmm1
    2989c621ea2b:	41 23 cf                                        	and    ecx,r15d
    2989c621ea2e:	85 c9                                           	test   ecx,ecx
    2989c621ea30:	0f 85 75 00 00 00                               	jne    0x2989c621eaab
    2989c621ea36:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x2989c621e956
    2989c621ea3d:	c4 c1 78 57 0a                                  	vxorps xmm1,xmm0,XMMWORD PTR [r10]
    2989c621ea42:	85 f6                                           	test   esi,esi
    2989c621ea44:	0f 84 05 00 00 00                               	je     0x2989c621ea4f
    2989c621ea4a:	e9 04 00 00 00                                  	jmp    0x2989c621ea53
    2989c621ea4f:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c621ea53:	4c 8b 15 fc fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffefc]        # 0x2989c621e956
    2989c621ea5a:	c4 c1 68 57 02                                  	vxorps xmm0,xmm2,XMMWORD PTR [r10]
    2989c621ea5f:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    2989c621ea65:	85 d2                                           	test   edx,edx
    2989c621ea67:	0f 84 09 00 00 00                               	je     0x2989c621ea76
    2989c621ea6d:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    2989c621ea71:	e9 04 00 00 00                                  	jmp    0x2989c621ea7a
    2989c621ea76:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    2989c621ea7a:	44 3b cb                                        	cmp    r9d,ebx
    2989c621ea7d:	0f 94 c2                                        	sete   dl
    2989c621ea80:	0f b6 d2                                        	movzx  edx,dl
    2989c621ea83:	85 d2                                           	test   edx,edx
    2989c621ea85:	0f 84 09 00 00 00                               	je     0x2989c621ea94
    2989c621ea8b:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    2989c621ea8f:	e9 00 00 00 00                                  	jmp    0x2989c621ea94
    2989c621ea94:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621ea97:	83 ca 01                                        	or     edx,0x1
    2989c621ea9a:	41 b8 03 00 00 00                               	mov    r8d,0x3
    2989c621eaa0:	85 f6                                           	test   esi,esi
    2989c621eaa2:	44 0f 44 c2                                     	cmove  r8d,edx
    2989c621eaa6:	e9 25 00 00 00                                  	jmp    0x2989c621ead0
    2989c621eaab:	41 3b c9                                        	cmp    ecx,r9d
    2989c621eaae:	0f 85 15 00 00 00                               	jne    0x2989c621eac9
    2989c621eab4:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    2989c621eab8:	c5 f9 28 c4                                     	vmovapd xmm0,xmm4
    2989c621eabc:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    2989c621eac0:	44 8b 45 d0                                     	mov    r8d,DWORD PTR [rbp-0x30]
    2989c621eac4:	e9 07 00 00 00                                  	jmp    0x2989c621ead0
    2989c621eac9:	33 c0                                           	xor    eax,eax
    2989c621eacb:	e9 95 19 00 00                                  	jmp    0x2989c6220465
    2989c621ead0:	41 8b d0                                        	mov    edx,r8d
    2989c621ead3:	c1 e2 06                                        	shl    edx,0x6
    2989c621ead6:	41 8d 14 14                                     	lea    edx,[r12+rdx*1]
    2989c621eada:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    2989c621eade:	4d 8b 64 24 17                                  	mov    r12,QWORD PTR [r12+0x17]
    2989c621eae3:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    2989c621eae6:	41 8b 84 14 24 01 00 00                         	mov    eax,DWORD PTR [r12+rdx*1+0x124]
    2989c621eaee:	85 c0                                           	test   eax,eax
    2989c621eaf0:	0f 85 07 00 00 00                               	jne    0x2989c621eafd
    2989c621eaf6:	33 c0                                           	xor    eax,eax
    2989c621eaf8:	e9 68 19 00 00                                  	jmp    0x2989c6220465
    2989c621eafd:	45 8b 84 14 a4 02 00 00                         	mov    r8d,DWORD PTR [r12+rdx*1+0x2a4]
    2989c621eb05:	41 83 f8 00                                     	cmp    r8d,0x0
    2989c621eb09:	0f 8f 07 00 00 00                               	jg     0x2989c621eb16
    2989c621eb0f:	33 c0                                           	xor    eax,eax
    2989c621eb11:	e9 4f 19 00 00                                  	jmp    0x2989c6220465
    2989c621eb16:	8d b2 24 04 00 00                               	lea    esi,[rdx+0x424]
    2989c621eb1c:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    2989c621eb1f:	41 8b 0c 34                                     	mov    ecx,DWORD PTR [r12+rsi*1]
    2989c621eb23:	33 d2                                           	xor    edx,edx
    2989c621eb25:	3b ca                                           	cmp    ecx,edx
    2989c621eb27:	0f 8f 27 00 00 00                               	jg     0x2989c621eb54
    2989c621eb2d:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    2989c621eb32:	8b f0                                           	mov    esi,eax
    2989c621eb34:	44 8b e1                                        	mov    r12d,ecx
    2989c621eb37:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    2989c621eb3b:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c621eb3f:	c5 f9 28 f4                                     	vmovapd xmm6,xmm4
    2989c621eb43:	c5 f9 28 e3                                     	vmovapd xmm4,xmm3
    2989c621eb47:	8b 45 dc                                        	mov    eax,DWORD PTR [rbp-0x24]
    2989c621eb4a:	33 c9                                           	xor    ecx,ecx
    2989c621eb4c:	8b 55 d8                                        	mov    edx,DWORD PTR [rbp-0x28]
    2989c621eb4f:	e9 0f 19 00 00                                  	jmp    0x2989c6220463
    2989c621eb54:	ba 01 00 00 00                                  	mov    edx,0x1
    2989c621eb59:	f7 da                                           	neg    edx
    2989c621eb5b:	41 03 d0                                        	add    edx,r8d
    2989c621eb5e:	49 ba 08 e5 3c 1e 08 e5 3c 1e                   	movabs r10,0x1e3ce5081e3ce508
    2989c621eb68:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c621eb6d:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c621eb71:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    2989c621eb76:	4c 8b 15 e3 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe3]        # 0x2989c621eb60
    2989c621eb7d:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c621eb82:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c621eb86:	c5 d0 c2 c0 01                                  	vcmpltps xmm0,xmm5,xmm0
    2989c621eb8b:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c621eb8f:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    2989c621eb93:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c621eb98:	c5 f0 5e d0                                     	vdivps xmm2,xmm1,xmm0
    2989c621eb9c:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    2989c621eba6:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c621ebab:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c621ebaf:	c5 e8 58 d5                                     	vaddps xmm2,xmm2,xmm5
    2989c621ebb3:	c5 d8 5e c8                                     	vdivps xmm1,xmm4,xmm0
    2989c621ebb7:	c5 f0 58 cd                                     	vaddps xmm1,xmm1,xmm5
    2989c621ebbb:	c5 fa 7f 8d b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm1
    2989c621ebc3:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    2989c621ebcd:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    2989c621ebd2:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    2989c621ebd6:	c5 fa 6f bd b4 fe ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x14c]
    2989c621ebde:	c5 c0 59 f9                                     	vmulps xmm7,xmm7,xmm1
    2989c621ebe2:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    2989c621ebe5:	41 8b 74 1c 14                                  	mov    esi,DWORD PTR [r12+rbx*1+0x14]
    2989c621ebea:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    2989c621ebed:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    2989c621ebf3:	41 8b 54 1c 10                                  	mov    edx,DWORD PTR [r12+rbx*1+0x10]
    2989c621ebf8:	bb 2f 81 00 00                                  	mov    ebx,0x812f
    2989c621ebfd:	3b d3                                           	cmp    edx,ebx
    2989c621ebff:	0f 95 c3                                        	setne  bl
    2989c621ec02:	0f b6 db                                        	movzx  ebx,bl
    2989c621ec05:	41 bf 00 29 00 00                               	mov    r15d,0x2900
    2989c621ec0b:	41 3b d7                                        	cmp    edx,r15d
    2989c621ec0e:	41 0f 95 c7                                     	setne  r15b
    2989c621ec12:	45 0f b6 ff                                     	movzx  r15d,r15b
    2989c621ec16:	41 23 df                                        	and    ebx,r15d
    2989c621ec19:	85 db                                           	test   ebx,ebx
    2989c621ec1b:	0f 84 0f 00 00 00                               	je     0x2989c621ec30
    2989c621ec21:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    2989c621ec27:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    2989c621ec2b:	e9 08 00 00 00                                  	jmp    0x2989c621ec38
    2989c621ec30:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    2989c621ec34:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    2989c621ec38:	c5 e8 59 f9                                     	vmulps xmm7,xmm2,xmm1
    2989c621ec3c:	8b 5d dc                                        	mov    ebx,DWORD PTR [rbp-0x24]
    2989c621ec3f:	45 8b 7c 1c 0c                                  	mov    r15d,DWORD PTR [r12+rbx*1+0xc]
    2989c621ec44:	45 8b d0                                        	mov    r10d,r8d
    2989c621ec47:	c4 c1 82 2a d2                                  	vcvtsi2ss xmm2,xmm15,r10
    2989c621ec4c:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    2989c621ec51:	c5 e8 59 d0                                     	vmulps xmm2,xmm2,xmm0
    2989c621ec55:	bb 01 00 00 00                                  	mov    ebx,0x1
    2989c621ec5a:	f7 db                                           	neg    ebx
    2989c621ec5c:	03 d9                                           	add    ebx,ecx
    2989c621ec5e:	44 8b e3                                        	mov    r12d,ebx
    2989c621ec61:	44 23 e1                                        	and    r12d,ecx
    2989c621ec64:	89 45 d0                                        	mov    DWORD PTR [rbp-0x30],eax
    2989c621ec67:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    2989c621ec6d:	89 8d dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],ecx
    2989c621ec73:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    2989c621ec79:	41 23 c8                                        	and    ecx,r8d
    2989c621ec7c:	89 95 e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],edx
    2989c621ec82:	33 d2                                           	xor    edx,edx
    2989c621ec84:	85 c9                                           	test   ecx,ecx
    2989c621ec86:	0f 44 d0                                        	cmove  edx,eax
    2989c621ec89:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    2989c621ec8f:	44 8b d0                                        	mov    r10d,eax
    2989c621ec92:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    2989c621ec97:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    2989c621ec9c:	b8 2f 81 00 00                                  	mov    eax,0x812f
    2989c621eca1:	3b f0                                           	cmp    esi,eax
    2989c621eca3:	0f 95 c0                                        	setne  al
    2989c621eca6:	0f b6 c0                                        	movzx  eax,al
    2989c621eca9:	b9 00 29 00 00                                  	mov    ecx,0x2900
    2989c621ecae:	3b f1                                           	cmp    esi,ecx
    2989c621ecb0:	0f 95 c1                                        	setne  cl
    2989c621ecb3:	0f b6 c9                                        	movzx  ecx,cl
    2989c621ecb6:	23 c1                                           	and    eax,ecx
    2989c621ecb8:	85 c0                                           	test   eax,eax
    2989c621ecba:	0f 84 17 00 00 00                               	je     0x2989c621ecd7
    2989c621ecc0:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    2989c621ecc8:	c4 e3 79 08 c7 09                               	vroundps xmm0,xmm7,0x9
    2989c621ecce:	c5 c0 5c c0                                     	vsubps xmm0,xmm7,xmm0
    2989c621ecd2:	e9 10 00 00 00                                  	jmp    0x2989c621ece7
    2989c621ecd7:	c5 fa 7f 85 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm0
    2989c621ecdf:	c5 c8 5f c7                                     	vmaxps xmm0,xmm6,xmm7
    2989c621ece3:	c5 d0 5d c0                                     	vminps xmm0,xmm5,xmm0
    2989c621ece7:	c5 fa 7f 8d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm1
    2989c621ecef:	c5 fa 6f 8d b4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x14c]
    2989c621ecf7:	c5 f0 59 c8                                     	vmulps xmm1,xmm1,xmm0
    2989c621ecfb:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    2989c621ed05:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c621ed0a:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c621ed0e:	c5 f0 58 f0                                     	vaddps xmm6,xmm1,xmm0
    2989c621ed12:	b8 00 26 00 00                                  	mov    eax,0x2600
    2989c621ed17:	44 3b f8                                        	cmp    r15d,eax
    2989c621ed1a:	0f 94 c0                                        	sete   al
    2989c621ed1d:	0f b6 c0                                        	movzx  eax,al
    2989c621ed20:	85 c0                                           	test   eax,eax
    2989c621ed22:	0f 84 09 00 00 00                               	je     0x2989c621ed31
    2989c621ed28:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    2989c621ed2c:	e9 00 00 00 00                                  	jmp    0x2989c621ed31
    2989c621ed31:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    2989c621ed37:	4c 8b 15 7a fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb7a]        # 0x2989c621e8b8
    2989c621ed3e:	c4 c1 40 54 1a                                  	vandps xmm3,xmm7,XMMWORD PTR [r10]
    2989c621ed43:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    2989c621ed48:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    2989c621ed52:	c4 c1 f9 6e c2                                  	vmovq  xmm0,r10
    2989c621ed57:	c5 f9 6c c0                                     	vpunpcklqdq xmm0,xmm0,xmm0
    2989c621ed5b:	c5 e0 c2 d8 01                                  	vcmpltps xmm3,xmm3,xmm0
    2989c621ed60:	49 ba 40 b9 f4 10 58 57 00 00                   	movabs r10,0x575810f4b940
    2989c621ed6a:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    2989c621ed6f:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    2989c621ed74:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    2989c621ed7a:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    2989c621ed7e:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    2989c621ed83:	c5 fa 7f 95 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm2
    2989c621ed8b:	c5 fa 7f 95 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm2
    2989c621ed93:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    2989c621ed98:	c5 fa 6f 55 98                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x68]
    2989c621ed9d:	c5 fa 7f 9d 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm3
    2989c621eda5:	c5 fa 6f 9d a4 fe ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x15c]
    2989c621edad:	c5 e0 58 da                                     	vaddps xmm3,xmm3,xmm2
    2989c621edb1:	c5 fa 6f 95 b4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x14c]
    2989c621edb9:	85 c0                                           	test   eax,eax
    2989c621edbb:	0f 84 05 00 00 00                               	je     0x2989c621edc6
    2989c621edc1:	e9 04 00 00 00                                  	jmp    0x2989c621edca
    2989c621edc6:	c5 f9 28 d3                                     	vmovapd xmm2,xmm3
    2989c621edca:	c4 e3 79 08 da 09                               	vroundps xmm3,xmm2,0x9
    2989c621edd0:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x2989c621ed62
    2989c621edd7:	c5 60 c2 fb 00                                  	vcmpeqps xmm15,xmm3,xmm3
    2989c621eddc:	c4 c1 60 54 e7                                  	vandps xmm4,xmm3,xmm15
    2989c621ede1:	c4 41 60 c2 3a 0d                               	vcmpgeps xmm15,xmm3,XMMWORD PTR [r10]
    2989c621ede7:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    2989c621edeb:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    2989c621edf0:	c5 fa 7f a5 b4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x14c],xmm4
    2989c621edf8:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    2989c621ee02:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c621ee07:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    2989c621ee0b:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    2989c621ee10:	4c 8b 15 a1 fa ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffaa1]        # 0x2989c621e8b8
    2989c621ee17:	c4 c1 60 54 2a                                  	vandps xmm5,xmm3,XMMWORD PTR [r10]
    2989c621ee1c:	c5 d0 c2 e8 01                                  	vcmpltps xmm5,xmm5,xmm0
    2989c621ee21:	c5 fa 7f b5 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm6
    2989c621ee29:	c5 fa 6f b5 b4 fe ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x14c]
    2989c621ee31:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    2989c621ee35:	c5 c9 db ed                                     	vpand  xmm5,xmm6,xmm5
    2989c621ee39:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c621ee3e:	8b 8d e4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x11c]
    2989c621ee44:	c5 f9 6e c1                                     	vmovd  xmm0,ecx
    2989c621ee48:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c621ee4d:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    2989c621ee51:	c4 e2 51 3d f6                                  	vpmaxsd xmm6,xmm5,xmm6
    2989c621ee56:	c4 e2 49 39 f0                                  	vpminsd xmm6,xmm6,xmm0
    2989c621ee5b:	8b 8d e0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x120]
    2989c621ee61:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    2989c621ee67:	b8 2f 81 00 00                                  	mov    eax,0x812f
    2989c621ee6c:	3b c8                                           	cmp    ecx,eax
    2989c621ee6e:	0f 95 c1                                        	setne  cl
    2989c621ee71:	0f b6 c9                                        	movzx  ecx,cl
    2989c621ee74:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    2989c621ee7a:	89 8d b0 fe ff ff                               	mov    DWORD PTR [rbp-0x150],ecx
    2989c621ee80:	b9 00 29 00 00                                  	mov    ecx,0x2900
    2989c621ee85:	3b c1                                           	cmp    eax,ecx
    2989c621ee87:	0f 95 c0                                        	setne  al
    2989c621ee8a:	0f b6 c0                                        	movzx  eax,al
    2989c621ee8d:	8b 8d b0 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x150]
    2989c621ee93:	23 c8                                           	and    ecx,eax
    2989c621ee95:	85 c9                                           	test   ecx,ecx
    2989c621ee97:	0f 85 05 00 00 00                               	jne    0x2989c621eea2
    2989c621ee9d:	e9 8f 00 00 00                                  	jmp    0x2989c621ef31
    2989c621eea2:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    2989c621eea6:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    2989c621eeab:	c5 d1 db f6                                     	vpand  xmm6,xmm5,xmm6
    2989c621eeaf:	8b c2                                           	mov    eax,edx
    2989c621eeb1:	85 d2                                           	test   edx,edx
    2989c621eeb3:	0f 84 07 00 00 00                               	je     0x2989c621eec0
    2989c621eeb9:	8b d0                                           	mov    edx,eax
    2989c621eebb:	e9 71 00 00 00                                  	jmp    0x2989c621ef31
    2989c621eec0:	c4 c1 79 6e f0                                  	vmovd  xmm6,r8d
    2989c621eec5:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    2989c621eeca:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    2989c621eed2:	c5 c1 ef ff                                     	vpxor  xmm7,xmm7,xmm7
    2989c621eed6:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    2989c621eede:	c5 d1 66 c0                                     	vpcmpgtd xmm0,xmm5,xmm0
    2989c621eee2:	c5 79 df ff                                     	vpandn xmm15,xmm0,xmm7
    2989c621eee6:	c5 c9 db c0                                     	vpand  xmm0,xmm6,xmm0
    2989c621eeea:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c621eeef:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c621eef4:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    2989c621eef9:	c5 fa 6f bd 28 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xd8]
    2989c621ef01:	c5 c1 66 fd                                     	vpcmpgtd xmm7,xmm7,xmm5
    2989c621ef05:	c5 41 df f8                                     	vpandn xmm15,xmm7,xmm0
    2989c621ef09:	c5 c9 db ff                                     	vpand  xmm7,xmm6,xmm7
    2989c621ef0d:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c621ef12:	c5 d1 fe ff                                     	vpaddd xmm7,xmm5,xmm7
    2989c621ef16:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    2989c621ef1b:	8b d0                                           	mov    edx,eax
    2989c621ef1d:	c5 f9 28 f7                                     	vmovapd xmm6,xmm7
    2989c621ef21:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    2989c621ef29:	c5 fa 6f bd 48 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xb8]
    2989c621ef31:	33 c0                                           	xor    eax,eax
    2989c621ef33:	45 85 e4                                        	test   r12d,r12d
    2989c621ef36:	0f 44 c3                                        	cmove  eax,ebx
    2989c621ef39:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    2989c621ef41:	c5 fa 6f 85 78 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x88]
    2989c621ef49:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    2989c621ef4d:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    2989c621ef51:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c621ef56:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    2989c621ef5e:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    2989c621ef62:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    2989c621ef67:	c5 fa 7f 95 e8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x118],xmm2
    2989c621ef6f:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    2989c621ef73:	c4 e2 79 3d d2                                  	vpmaxsd xmm2,xmm0,xmm2
    2989c621ef78:	c4 e2 69 39 d1                                  	vpminsd xmm2,xmm2,xmm1
    2989c621ef7d:	b9 2f 81 00 00                                  	mov    ecx,0x812f
    2989c621ef82:	3b f1                                           	cmp    esi,ecx
    2989c621ef84:	0f 95 c1                                        	setne  cl
    2989c621ef87:	0f b6 c9                                        	movzx  ecx,cl
    2989c621ef8a:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    2989c621ef90:	b8 00 29 00 00                                  	mov    eax,0x2900
    2989c621ef95:	3b f0                                           	cmp    esi,eax
    2989c621ef97:	0f 95 c0                                        	setne  al
    2989c621ef9a:	0f b6 c0                                        	movzx  eax,al
    2989c621ef9d:	23 c8                                           	and    ecx,eax
    2989c621ef9f:	85 c9                                           	test   ecx,ecx
    2989c621efa1:	0f 85 05 00 00 00                               	jne    0x2989c621efac
    2989c621efa7:	e9 95 00 00 00                                  	jmp    0x2989c621f041
    2989c621efac:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    2989c621efb2:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    2989c621efb6:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c621efbb:	c5 f9 db d2                                     	vpand  xmm2,xmm0,xmm2
    2989c621efbf:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    2989c621efc5:	85 c0                                           	test   eax,eax
    2989c621efc7:	0f 84 05 00 00 00                               	je     0x2989c621efd2
    2989c621efcd:	e9 6f 00 00 00                                  	jmp    0x2989c621f041
    2989c621efd2:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    2989c621efd8:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    2989c621efdc:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c621efe1:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    2989c621efe5:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    2989c621efed:	c5 f9 66 d9                                     	vpcmpgtd xmm3,xmm0,xmm1
    2989c621eff1:	c5 61 df fc                                     	vpandn xmm15,xmm3,xmm4
    2989c621eff5:	c5 e9 db db                                     	vpand  xmm3,xmm2,xmm3
    2989c621eff9:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    2989c621effe:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c621f003:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    2989c621f008:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    2989c621f010:	c5 d9 66 e0                                     	vpcmpgtd xmm4,xmm4,xmm0
    2989c621f014:	c5 59 df fb                                     	vpandn xmm15,xmm4,xmm3
    2989c621f018:	c5 e9 db e4                                     	vpand  xmm4,xmm2,xmm4
    2989c621f01c:	c4 c1 59 eb e7                                  	vpor   xmm4,xmm4,xmm15
    2989c621f021:	c5 f9 fe e4                                     	vpaddd xmm4,xmm0,xmm4
    2989c621f025:	c5 fa 7f a5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm4
    2989c621f02d:	c5 f9 28 e2                                     	vmovapd xmm4,xmm2
    2989c621f031:	c5 fa 6f 95 a4 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x15c]
    2989c621f039:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    2989c621f041:	c5 fa 7f 85 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm0
    2989c621f049:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    2989c621f04e:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    2989c621f053:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    2989c621f058:	c5 fa 7f 8d 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm1
    2989c621f060:	c5 e9 fe ce                                     	vpaddd xmm1,xmm2,xmm6
    2989c621f064:	c4 e3 79 16 c8 03                               	vpextrd eax,xmm1,0x3
    2989c621f06a:	c4 e3 79 16 c9 02                               	vpextrd ecx,xmm1,0x2
    2989c621f070:	c4 e3 79 16 cb 01                               	vpextrd ebx,xmm1,0x1
    2989c621f076:	c4 c1 79 7e c8                                  	vmovd  r8d,xmm1
    2989c621f07b:	41 81 ff 00 26 00 00                            	cmp    r15d,0x2600
    2989c621f082:	0f 84 ee 02 00 00                               	je     0x2989c621f376
    2989c621f088:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    2989c621f092:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    2989c621f097:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    2989c621f09b:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    2989c621f0a3:	c5 d1 fe d4                                     	vpaddd xmm2,xmm5,xmm4
    2989c621f0a7:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    2989c621f0ab:	c4 e2 69 3d c9                                  	vpmaxsd xmm1,xmm2,xmm1
    2989c621f0b0:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    2989c621f0b8:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    2989c621f0c0:	c4 e2 71 39 cb                                  	vpminsd xmm1,xmm1,xmm3
    2989c621f0c5:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    2989c621f0cc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    2989c621f0cf:	b8 2f 81 00 00                                  	mov    eax,0x812f
    2989c621f0d4:	44 3b e0                                        	cmp    r12d,eax
    2989c621f0d7:	41 0f 95 c4                                     	setne  r12b
    2989c621f0db:	45 0f b6 e4                                     	movzx  r12d,r12b
    2989c621f0df:	8b 85 e0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x120]
    2989c621f0e5:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    2989c621f0eb:	b9 00 29 00 00                                  	mov    ecx,0x2900
    2989c621f0f0:	3b c1                                           	cmp    eax,ecx
    2989c621f0f2:	0f 95 c0                                        	setne  al
    2989c621f0f5:	0f b6 c0                                        	movzx  eax,al
    2989c621f0f8:	44 23 e0                                        	and    r12d,eax
    2989c621f0fb:	45 85 e4                                        	test   r12d,r12d
    2989c621f0fe:	0f 85 05 00 00 00                               	jne    0x2989c621f109
    2989c621f104:	e9 70 00 00 00                                  	jmp    0x2989c621f179
    2989c621f109:	c5 f9 6e ca                                     	vmovd  xmm1,edx
    2989c621f10d:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    2989c621f112:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    2989c621f116:	8b c2                                           	mov    eax,edx
    2989c621f118:	85 d2                                           	test   edx,edx
    2989c621f11a:	0f 84 07 00 00 00                               	je     0x2989c621f127
    2989c621f120:	8b d0                                           	mov    edx,eax
    2989c621f122:	e9 52 00 00 00                                  	jmp    0x2989c621f179
    2989c621f127:	c5 f1 ef c9                                     	vpxor  xmm1,xmm1,xmm1
    2989c621f12b:	c5 fa 6f 9d 68 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x98]
    2989c621f133:	c5 e9 66 db                                     	vpcmpgtd xmm3,xmm2,xmm3
    2989c621f137:	c5 61 df f9                                     	vpandn xmm15,xmm3,xmm1
    2989c621f13b:	c5 f9 db db                                     	vpand  xmm3,xmm0,xmm3
    2989c621f13f:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    2989c621f144:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c621f149:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    2989c621f14e:	c5 f1 66 ea                                     	vpcmpgtd xmm5,xmm1,xmm2
    2989c621f152:	c5 51 df fb                                     	vpandn xmm15,xmm5,xmm3
    2989c621f156:	c5 f9 db ed                                     	vpand  xmm5,xmm0,xmm5
    2989c621f15a:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c621f15f:	c5 e9 fe ed                                     	vpaddd xmm5,xmm2,xmm5
    2989c621f163:	8b d0                                           	mov    edx,eax
    2989c621f165:	c5 fa 7f ad a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm5
    2989c621f16d:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    2989c621f171:	c5 fa 6f 8d a4 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x15c]
    2989c621f179:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    2989c621f181:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    2989c621f185:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    2989c621f189:	c4 e2 61 3d d2                                  	vpmaxsd xmm2,xmm3,xmm2
    2989c621f18e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    2989c621f196:	c4 e2 69 39 d5                                  	vpminsd xmm2,xmm2,xmm5
    2989c621f19b:	b8 2f 81 00 00                                  	mov    eax,0x812f
    2989c621f1a0:	3b f0                                           	cmp    esi,eax
    2989c621f1a2:	0f 95 c0                                        	setne  al
    2989c621f1a5:	0f b6 c0                                        	movzx  eax,al
    2989c621f1a8:	b9 00 29 00 00                                  	mov    ecx,0x2900
    2989c621f1ad:	3b f1                                           	cmp    esi,ecx
    2989c621f1af:	0f 95 c1                                        	setne  cl
    2989c621f1b2:	0f b6 c9                                        	movzx  ecx,cl
    2989c621f1b5:	23 c1                                           	and    eax,ecx
    2989c621f1b7:	85 c0                                           	test   eax,eax
    2989c621f1b9:	0f 85 05 00 00 00                               	jne    0x2989c621f1c4
    2989c621f1bf:	e9 9f 00 00 00                                  	jmp    0x2989c621f263
    2989c621f1c4:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    2989c621f1ca:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    2989c621f1ce:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c621f1d3:	c5 e1 db d2                                     	vpand  xmm2,xmm3,xmm2
    2989c621f1d7:	8b 85 e4 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x11c]
    2989c621f1dd:	85 c0                                           	test   eax,eax
    2989c621f1df:	0f 84 05 00 00 00                               	je     0x2989c621f1ea
    2989c621f1e5:	e9 79 00 00 00                                  	jmp    0x2989c621f263
    2989c621f1ea:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    2989c621f1f0:	c5 f9 6e d0                                     	vmovd  xmm2,eax
    2989c621f1f4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    2989c621f1f9:	c5 d1 ef ed                                     	vpxor  xmm5,xmm5,xmm5
    2989c621f1fd:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    2989c621f205:	c5 fa 6f 85 38 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xc8]
    2989c621f20d:	c5 e1 66 c0                                     	vpcmpgtd xmm0,xmm3,xmm0
    2989c621f211:	c5 79 df fd                                     	vpandn xmm15,xmm0,xmm5
    2989c621f215:	c5 e9 db c0                                     	vpand  xmm0,xmm2,xmm0
    2989c621f219:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c621f21e:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    2989c621f223:	c4 c2 79 0a c7                                  	vpsignd xmm0,xmm0,xmm15
    2989c621f228:	c5 fa 7f 4d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm1
    2989c621f22d:	c5 d1 66 cb                                     	vpcmpgtd xmm1,xmm5,xmm3
    2989c621f231:	c5 71 df f8                                     	vpandn xmm15,xmm1,xmm0
    2989c621f235:	c5 e9 db c9                                     	vpand  xmm1,xmm2,xmm1
    2989c621f239:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    2989c621f23e:	c5 e1 fe c9                                     	vpaddd xmm1,xmm3,xmm1
    2989c621f242:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    2989c621f24a:	c5 fa 7f ad 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm5
    2989c621f252:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    2989c621f256:	c5 fa 6f 85 28 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xd8]
    2989c621f25e:	c5 fa 6f 4d a8                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x58]
    2989c621f263:	c4 e2 69 40 d0                                  	vpmulld xmm2,xmm2,xmm0
    2989c621f268:	c5 e9 fe ee                                     	vpaddd xmm5,xmm2,xmm6
    2989c621f26c:	41 83 f9 0f                                     	cmp    r9d,0xf
    2989c621f270:	0f 85 1f 00 00 00                               	jne    0x2989c621f295
    2989c621f276:	c5 c9 fe dc                                     	vpaddd xmm3,xmm6,xmm4
    2989c621f27a:	c5 f1 76 db                                     	vpcmpeqd xmm3,xmm1,xmm3
    2989c621f27e:	c5 f8 50 c3                                     	vmovmskps eax,xmm3
    2989c621f282:	83 f8 0f                                        	cmp    eax,0xf
    2989c621f285:	0f 85 05 00 00 00                               	jne    0x2989c621f290
    2989c621f28b:	e9 b6 01 00 00                                  	jmp    0x2989c621f446
    2989c621f290:	e9 00 00 00 00                                  	jmp    0x2989c621f295
    2989c621f295:	41 8b c1                                        	mov    eax,r9d
    2989c621f298:	83 e0 08                                        	and    eax,0x8
    2989c621f29b:	41 8b c9                                        	mov    ecx,r9d
    2989c621f29e:	83 e1 04                                        	and    ecx,0x4
    2989c621f2a1:	41 8b f1                                        	mov    esi,r9d
    2989c621f2a4:	83 e6 02                                        	and    esi,0x2
    2989c621f2a7:	45 8b e1                                        	mov    r12d,r9d
    2989c621f2aa:	41 83 e4 01                                     	and    r12d,0x1
    2989c621f2ae:	41 83 f9 0f                                     	cmp    r9d,0xf
    2989c621f2b2:	0f 85 05 00 00 00                               	jne    0x2989c621f2bd
    2989c621f2b8:	e9 46 04 00 00                                  	jmp    0x2989c621f703
    2989c621f2bd:	45 85 e4                                        	test   r12d,r12d
    2989c621f2c0:	0f 84 23 00 00 00                               	je     0x2989c621f2e9
    2989c621f2c6:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f2c9:	45 8b f8                                        	mov    r15d,r8d
    2989c621f2cc:	41 c1 e7 02                                     	shl    r15d,0x2
    2989c621f2d0:	41 03 d7                                        	add    edx,r15d
    2989c621f2d3:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    2989c621f2d7:	4d 8b 7f 17                                     	mov    r15,QWORD PTR [r15+0x17]
    2989c621f2db:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    2989c621f2de:	41 8b 04 17                                     	mov    eax,DWORD PTR [r15+rdx*1]
    2989c621f2e2:	33 d2                                           	xor    edx,edx
    2989c621f2e4:	e9 07 00 00 00                                  	jmp    0x2989c621f2f0
    2989c621f2e9:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    2989c621f2ec:	33 c0                                           	xor    eax,eax
    2989c621f2ee:	33 d2                                           	xor    edx,edx
    2989c621f2f0:	85 f6                                           	test   esi,esi
    2989c621f2f2:	0f 84 26 00 00 00                               	je     0x2989c621f31e
    2989c621f2f8:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    2989c621f2fc:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    2989c621f302:	8b c3                                           	mov    eax,ebx
    2989c621f304:	c1 e0 02                                        	shl    eax,0x2
    2989c621f307:	44 03 f8                                        	add    r15d,eax
    2989c621f30a:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621f30e:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621f312:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    2989c621f315:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    2989c621f319:	e9 0b 00 00 00                                  	jmp    0x2989c621f329
    2989c621f31e:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    2989c621f321:	89 85 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],eax
    2989c621f327:	8b ca                                           	mov    ecx,edx
    2989c621f329:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    2989c621f32c:	85 c0                                           	test   eax,eax
    2989c621f32e:	0f 84 21 00 00 00                               	je     0x2989c621f355
    2989c621f334:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f337:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    2989c621f33d:	c1 e2 02                                        	shl    edx,0x2
    2989c621f340:	03 c2                                           	add    eax,edx
    2989c621f342:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f346:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    2989c621f34a:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    2989c621f34e:	33 c0                                           	xor    eax,eax
    2989c621f350:	e9 09 00 00 00                                  	jmp    0x2989c621f35e
    2989c621f355:	33 c0                                           	xor    eax,eax
    2989c621f357:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    2989c621f35e:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    2989c621f361:	85 d2                                           	test   edx,edx
    2989c621f363:	0f 84 08 00 00 00                               	je     0x2989c621f371
    2989c621f369:	41 8b d7                                        	mov    edx,r15d
    2989c621f36c:	e9 06 04 00 00                                  	jmp    0x2989c621f777
    2989c621f371:	e9 1d 04 00 00                                  	jmp    0x2989c621f793
    2989c621f376:	41 83 f9 0f                                     	cmp    r9d,0xf
    2989c621f37a:	0f 85 05 00 00 00                               	jne    0x2989c621f385
    2989c621f380:	e9 e7 0d 00 00                                  	jmp    0x2989c622016c
    2989c621f385:	41 8b f1                                        	mov    esi,r9d
    2989c621f388:	83 e6 01                                        	and    esi,0x1
    2989c621f38b:	85 f6                                           	test   esi,esi
    2989c621f38d:	0f 84 20 00 00 00                               	je     0x2989c621f3b3
    2989c621f393:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    2989c621f396:	45 8b e0                                        	mov    r12d,r8d
    2989c621f399:	41 c1 e4 02                                     	shl    r12d,0x2
    2989c621f39d:	41 03 f4                                        	add    esi,r12d
    2989c621f3a0:	4c 8b 7d f0                                     	mov    r15,QWORD PTR [rbp-0x10]
    2989c621f3a4:	4d 8b 67 17                                     	mov    r12,QWORD PTR [r15+0x17]
    2989c621f3a8:	45 8b 3c 34                                     	mov    r15d,DWORD PTR [r12+rsi*1]
    2989c621f3ac:	33 f6                                           	xor    esi,esi
    2989c621f3ae:	e9 05 00 00 00                                  	jmp    0x2989c621f3b8
    2989c621f3b3:	33 f6                                           	xor    esi,esi
    2989c621f3b5:	45 33 ff                                        	xor    r15d,r15d
    2989c621f3b8:	45 8b e1                                        	mov    r12d,r9d
    2989c621f3bb:	41 83 e4 02                                     	and    r12d,0x2
    2989c621f3bf:	45 85 e4                                        	test   r12d,r12d
    2989c621f3c2:	0f 84 26 00 00 00                               	je     0x2989c621f3ee
    2989c621f3c8:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c621f3cc:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    2989c621f3cf:	8b c3                                           	mov    eax,ebx
    2989c621f3d1:	c1 e0 02                                        	shl    eax,0x2
    2989c621f3d4:	44 03 e0                                        	add    r12d,eax
    2989c621f3d7:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621f3db:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621f3df:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    2989c621f3e5:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    2989c621f3e9:	e9 0b 00 00 00                                  	jmp    0x2989c621f3f9
    2989c621f3ee:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    2989c621f3f1:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    2989c621f3f7:	8b ce                                           	mov    ecx,esi
    2989c621f3f9:	41 8b c1                                        	mov    eax,r9d
    2989c621f3fc:	83 e0 04                                        	and    eax,0x4
    2989c621f3ff:	85 c0                                           	test   eax,eax
    2989c621f401:	0f 84 22 00 00 00                               	je     0x2989c621f429
    2989c621f407:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f40a:	8b b5 d8 fe ff ff                               	mov    esi,DWORD PTR [rbp-0x128]
    2989c621f410:	c1 e6 02                                        	shl    esi,0x2
    2989c621f413:	03 c6                                           	add    eax,esi
    2989c621f415:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    2989c621f419:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    2989c621f41e:	44 8b 24 06                                     	mov    r12d,DWORD PTR [rsi+rax*1]
    2989c621f422:	33 c0                                           	xor    eax,eax
    2989c621f424:	e9 05 00 00 00                                  	jmp    0x2989c621f42e
    2989c621f429:	33 c0                                           	xor    eax,eax
    2989c621f42b:	45 33 e4                                        	xor    r12d,r12d
    2989c621f42e:	41 8b f1                                        	mov    esi,r9d
    2989c621f431:	83 e6 08                                        	and    esi,0x8
    2989c621f434:	85 f6                                           	test   esi,esi
    2989c621f436:	0f 85 05 00 00 00                               	jne    0x2989c621f441
    2989c621f43c:	e9 b1 0d 00 00                                  	jmp    0x2989c62201f2
    2989c621f441:	e9 88 0d 00 00                                  	jmp    0x2989c62201ce
    2989c621f446:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f449:	41 8b c8                                        	mov    ecx,r8d
    2989c621f44c:	c1 e1 02                                        	shl    ecx,0x2
    2989c621f44f:	03 c1                                           	add    eax,ecx
    2989c621f451:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    2989c621f455:	49 8b 4c 24 17                                  	mov    rcx,QWORD PTR [r12+0x17]
    2989c621f45a:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    2989c621f45f:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f462:	44 8b e3                                        	mov    r12d,ebx
    2989c621f465:	41 c1 e4 02                                     	shl    r12d,0x2
    2989c621f469:	41 03 c4                                        	add    eax,r12d
    2989c621f46c:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    2989c621f474:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    2989c621f479:	49 ba 00 01 02 03 04 05 06 07                   	movabs r10,0x706050403020100
    2989c621f483:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f488:	49 ba 80 80 80 80 80 80 80 80                   	movabs r10,0x8080808080808080
    2989c621f492:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f498:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    2989c621f49d:	4c 8b 15 e6 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe6]        # 0x2989c621f48a
    2989c621f4a4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f4a9:	4c 8b 15 cb ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffcb]        # 0x2989c621f47b
    2989c621f4b0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f4b6:	c4 c2 79 00 de                                  	vpshufb xmm3,xmm0,xmm14
    2989c621f4bb:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    2989c621f4c0:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f4c3:	44 8b a5 d8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x128]
    2989c621f4ca:	41 c1 e4 02                                     	shl    r12d,0x2
    2989c621f4ce:	41 03 c4                                        	add    eax,r12d
    2989c621f4d1:	c5 fb 10 04 01                                  	vmovsd xmm0,QWORD PTR [rcx+rax*1]
    2989c621f4d6:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f4d9:	44 8b 65 d4                                     	mov    r12d,DWORD PTR [rbp-0x2c]
    2989c621f4dd:	41 c1 e4 02                                     	shl    r12d,0x2
    2989c621f4e1:	41 03 c4                                        	add    eax,r12d
    2989c621f4e4:	c5 fb 10 0c 01                                  	vmovsd xmm1,QWORD PTR [rcx+rax*1]
    2989c621f4e9:	4c 8b 15 8b ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8b]        # 0x2989c621f47b
    2989c621f4f0:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f4f5:	4c 8b 15 8e ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff8e]        # 0x2989c621f48a
    2989c621f4fc:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f502:	c4 42 79 00 fe                                  	vpshufb xmm15,xmm0,xmm14
    2989c621f507:	4c 8b 15 7c ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff7c]        # 0x2989c621f48a
    2989c621f50e:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f513:	4c 8b 15 61 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff61]        # 0x2989c621f47b
    2989c621f51a:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f520:	c4 c2 71 00 c6                                  	vpshufb xmm0,xmm1,xmm14
    2989c621f525:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c621f52a:	49 ba 04 05 06 07 0c 0d 0e 0f                   	movabs r10,0xf0e0d0c07060504
    2989c621f534:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f539:	4c 8b 15 4a ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff4a]        # 0x2989c621f48a
    2989c621f540:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f546:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    2989c621f54b:	4c 8b 15 38 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff38]        # 0x2989c621f48a
    2989c621f552:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f557:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x2989c621f52c
    2989c621f55e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f564:	c4 c2 79 00 ce                                  	vpshufb xmm1,xmm0,xmm14
    2989c621f569:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    2989c621f56e:	49 ba 00 01 02 03 08 09 0a 0b                   	movabs r10,0xb0a090803020100
    2989c621f578:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f57d:	4c 8b 15 06 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff06]        # 0x2989c621f48a
    2989c621f584:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f58a:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    2989c621f58f:	4c 8b 15 f4 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffef4]        # 0x2989c621f48a
    2989c621f596:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f59b:	4c 8b 15 ce ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffce]        # 0x2989c621f570
    2989c621f5a2:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f5a8:	c4 c2 79 00 d6                                  	vpshufb xmm2,xmm0,xmm14
    2989c621f5ad:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    2989c621f5b2:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f5b5:	c5 f9 72 f5 02                                  	vpslld xmm0,xmm5,0x2
    2989c621f5ba:	c4 c1 79 7e c4                                  	vmovd  r12d,xmm0
    2989c621f5bf:	41 03 c4                                        	add    eax,r12d
    2989c621f5c2:	c5 fb 10 2c 01                                  	vmovsd xmm5,QWORD PTR [rcx+rax*1]
    2989c621f5c7:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f5ca:	c4 c3 79 16 c4 01                               	vpextrd r12d,xmm0,0x1
    2989c621f5d0:	41 03 c4                                        	add    eax,r12d
    2989c621f5d3:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    2989c621f5d8:	4c 8b 15 9c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9c]        # 0x2989c621f47b
    2989c621f5df:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f5e4:	4c 8b 15 9f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe9f]        # 0x2989c621f48a
    2989c621f5eb:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f5f1:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    2989c621f5f6:	4c 8b 15 8d fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe8d]        # 0x2989c621f48a
    2989c621f5fd:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f602:	4c 8b 15 72 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe72]        # 0x2989c621f47b
    2989c621f609:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f60f:	c4 c2 49 00 ee                                  	vpshufb xmm5,xmm6,xmm14
    2989c621f614:	c4 c1 51 eb ef                                  	vpor   xmm5,xmm5,xmm15
    2989c621f619:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f61c:	c4 c3 79 16 c4 02                               	vpextrd r12d,xmm0,0x2
    2989c621f622:	41 03 c4                                        	add    eax,r12d
    2989c621f625:	c5 fb 10 1c 01                                  	vmovsd xmm3,QWORD PTR [rcx+rax*1]
    2989c621f62a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f62d:	c4 c3 79 16 c4 03                               	vpextrd r12d,xmm0,0x3
    2989c621f633:	41 03 c4                                        	add    eax,r12d
    2989c621f636:	c5 fb 10 34 01                                  	vmovsd xmm6,QWORD PTR [rcx+rax*1]
    2989c621f63b:	4c 8b 15 39 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe39]        # 0x2989c621f47b
    2989c621f642:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f647:	4c 8b 15 3c fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe3c]        # 0x2989c621f48a
    2989c621f64e:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f654:	c4 42 61 00 fe                                  	vpshufb xmm15,xmm3,xmm14
    2989c621f659:	4c 8b 15 2a fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe2a]        # 0x2989c621f48a
    2989c621f660:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f665:	4c 8b 15 0f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe0f]        # 0x2989c621f47b
    2989c621f66c:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f672:	c4 c2 49 00 de                                  	vpshufb xmm3,xmm6,xmm14
    2989c621f677:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    2989c621f67c:	4c 8b 15 a9 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffea9]        # 0x2989c621f52c
    2989c621f683:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f688:	4c 8b 15 fb fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdfb]        # 0x2989c621f48a
    2989c621f68f:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f695:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    2989c621f69a:	4c 8b 15 e9 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffde9]        # 0x2989c621f48a
    2989c621f6a1:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f6a6:	4c 8b 15 7f fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe7f]        # 0x2989c621f52c
    2989c621f6ad:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f6b3:	c4 c2 61 00 c6                                  	vpshufb xmm0,xmm3,xmm14
    2989c621f6b8:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    2989c621f6bd:	4c 8b 15 ac fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffeac]        # 0x2989c621f570
    2989c621f6c4:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f6c9:	4c 8b 15 ba fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffdba]        # 0x2989c621f48a
    2989c621f6d0:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f6d6:	c4 42 51 00 fe                                  	vpshufb xmm15,xmm5,xmm14
    2989c621f6db:	4c 8b 15 a8 fd ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffda8]        # 0x2989c621f48a
    2989c621f6e2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    2989c621f6e7:	4c 8b 15 82 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffe82]        # 0x2989c621f570
    2989c621f6ee:	c4 43 89 22 f2 01                               	vpinsrq xmm14,xmm14,r10,0x1
    2989c621f6f4:	c4 c2 61 00 f6                                  	vpshufb xmm6,xmm3,xmm14
    2989c621f6f9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    2989c621f6fe:	e9 96 05 00 00                                  	jmp    0x2989c621fc99
    2989c621f703:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    2989c621f707:	89 45 dc                                        	mov    DWORD PTR [rbp-0x24],eax
    2989c621f70a:	8b c3                                           	mov    eax,ebx
    2989c621f70c:	c1 e0 02                                        	shl    eax,0x2
    2989c621f70f:	44 03 f8                                        	add    r15d,eax
    2989c621f712:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621f716:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621f71a:	89 4d d8                                        	mov    DWORD PTR [rbp-0x28],ecx
    2989c621f71d:	42 8b 0c 38                                     	mov    ecx,DWORD PTR [rax+r15*1]
    2989c621f721:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    2989c621f725:	41 8b c0                                        	mov    eax,r8d
    2989c621f728:	c1 e0 02                                        	shl    eax,0x2
    2989c621f72b:	44 03 f8                                        	add    r15d,eax
    2989c621f72e:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621f732:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621f736:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    2989c621f73c:	42 8b 14 38                                     	mov    edx,DWORD PTR [rax+r15*1]
    2989c621f740:	44 8b 7d d0                                     	mov    r15d,DWORD PTR [rbp-0x30]
    2989c621f744:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    2989c621f74a:	c1 e0 02                                        	shl    eax,0x2
    2989c621f74d:	44 03 f8                                        	add    r15d,eax
    2989c621f750:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621f754:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621f758:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    2989c621f75e:	42 8b 1c 38                                     	mov    ebx,DWORD PTR [rax+r15*1]
    2989c621f762:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    2989c621f768:	44 8b fb                                        	mov    r15d,ebx
    2989c621f76b:	8b 85 cc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x134]
    2989c621f771:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    2989c621f777:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f77a:	8b 5d d4                                        	mov    ebx,DWORD PTR [rbp-0x2c]
    2989c621f77d:	c1 e3 02                                        	shl    ebx,0x2
    2989c621f780:	03 d3                                           	add    edx,ebx
    2989c621f782:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f786:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621f78a:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    2989c621f790:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    2989c621f793:	c5 fa 6f 9d 18 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xe8]
    2989c621f79b:	c5 f1 fe db                                     	vpaddd xmm3,xmm1,xmm3
    2989c621f79f:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    2989c621f7a5:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    2989c621f7a9:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    2989c621f7ae:	41 83 f9 0f                                     	cmp    r9d,0xf
    2989c621f7b2:	0f 84 c0 00 00 00                               	je     0x2989c621f878
    2989c621f7b8:	45 85 e4                                        	test   r12d,r12d
    2989c621f7bb:	0f 84 24 00 00 00                               	je     0x2989c621f7e5
    2989c621f7c1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f7c4:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    2989c621f7c8:	c1 e3 02                                        	shl    ebx,0x2
    2989c621f7cb:	03 d3                                           	add    edx,ebx
    2989c621f7cd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f7d1:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621f7d5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    2989c621f7db:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    2989c621f7de:	33 d2                                           	xor    edx,edx
    2989c621f7e0:	e9 0a 00 00 00                                  	jmp    0x2989c621f7ef
    2989c621f7e5:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    2989c621f7eb:	33 c0                                           	xor    eax,eax
    2989c621f7ed:	33 d2                                           	xor    edx,edx
    2989c621f7ef:	85 f6                                           	test   esi,esi
    2989c621f7f1:	0f 84 2a 00 00 00                               	je     0x2989c621f821
    2989c621f7f7:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    2989c621f7fa:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    2989c621f800:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    2989c621f806:	c1 e0 02                                        	shl    eax,0x2
    2989c621f809:	03 d8                                           	add    ebx,eax
    2989c621f80b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621f80f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621f813:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    2989c621f819:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    2989c621f81c:	e9 0e 00 00 00                                  	jmp    0x2989c621f82f
    2989c621f821:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    2989c621f827:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    2989c621f82d:	8b ca                                           	mov    ecx,edx
    2989c621f82f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    2989c621f832:	85 c0                                           	test   eax,eax
    2989c621f834:	0f 84 21 00 00 00                               	je     0x2989c621f85b
    2989c621f83a:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f83d:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    2989c621f843:	c1 e2 02                                        	shl    edx,0x2
    2989c621f846:	03 c2                                           	add    eax,edx
    2989c621f848:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f84c:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    2989c621f850:	44 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+rax*1]
    2989c621f854:	33 c0                                           	xor    eax,eax
    2989c621f856:	e9 05 00 00 00                                  	jmp    0x2989c621f860
    2989c621f85b:	33 c0                                           	xor    eax,eax
    2989c621f85d:	45 33 c0                                        	xor    r8d,r8d
    2989c621f860:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    2989c621f863:	85 d2                                           	test   edx,edx
    2989c621f865:	0f 84 08 00 00 00                               	je     0x2989c621f873
    2989c621f86b:	41 8b d0                                        	mov    edx,r8d
    2989c621f86e:	e9 7a 00 00 00                                  	jmp    0x2989c621f8ed
    2989c621f873:	e9 94 00 00 00                                  	jmp    0x2989c621f90c
    2989c621f878:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f87b:	c4 e3 79 16 db 01                               	vpextrd ebx,xmm3,0x1
    2989c621f881:	c1 e3 02                                        	shl    ebx,0x2
    2989c621f884:	03 d3                                           	add    edx,ebx
    2989c621f886:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f88a:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621f88e:	89 85 cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],eax
    2989c621f894:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    2989c621f897:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f89a:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    2989c621f89e:	c1 e3 02                                        	shl    ebx,0x2
    2989c621f8a1:	03 d3                                           	add    edx,ebx
    2989c621f8a3:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f8a7:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621f8ab:	89 8d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ecx
    2989c621f8b1:	8b 0c 13                                        	mov    ecx,DWORD PTR [rbx+rdx*1]
    2989c621f8b4:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f8b7:	c4 e3 79 16 db 02                               	vpextrd ebx,xmm3,0x2
    2989c621f8bd:	c1 e3 02                                        	shl    ebx,0x2
    2989c621f8c0:	03 d3                                           	add    edx,ebx
    2989c621f8c2:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f8c6:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621f8ca:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    2989c621f8d0:	8b 34 13                                        	mov    esi,DWORD PTR [rbx+rdx*1]
    2989c621f8d3:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    2989c621f8d9:	8b c8                                           	mov    ecx,eax
    2989c621f8db:	41 8b c0                                        	mov    eax,r8d
    2989c621f8de:	44 8b c6                                        	mov    r8d,esi
    2989c621f8e1:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    2989c621f8e7:	8b b5 dc fe ff ff                               	mov    esi,DWORD PTR [rbp-0x124]
    2989c621f8ed:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f8f0:	c4 e3 79 16 db 03                               	vpextrd ebx,xmm3,0x3
    2989c621f8f6:	c1 e3 02                                        	shl    ebx,0x2
    2989c621f8f9:	03 d3                                           	add    edx,ebx
    2989c621f8fb:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f8ff:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621f903:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    2989c621f909:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    2989c621f90c:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    2989c621f912:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    2989c621f91a:	c4 e3 49 22 c2 01                               	vpinsrd xmm0,xmm6,edx,0x1
    2989c621f920:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    2989c621f926:	c5 f9 6e da                                     	vmovd  xmm3,edx
    2989c621f92a:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    2989c621f92f:	c4 e3 61 22 d9 01                               	vpinsrd xmm3,xmm3,ecx,0x1
    2989c621f935:	41 83 f9 0f                                     	cmp    r9d,0xf
    2989c621f939:	0f 84 b0 00 00 00                               	je     0x2989c621f9ef
    2989c621f93f:	45 85 e4                                        	test   r12d,r12d
    2989c621f942:	0f 84 1e 00 00 00                               	je     0x2989c621f966
    2989c621f948:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c621f94b:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    2989c621f94f:	c1 e2 02                                        	shl    edx,0x2
    2989c621f952:	03 ca                                           	add    ecx,edx
    2989c621f954:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621f958:	48 8b 53 17                                     	mov    rdx,QWORD PTR [rbx+0x17]
    2989c621f95c:	8b 1c 0a                                        	mov    ebx,DWORD PTR [rdx+rcx*1]
    2989c621f95f:	33 c9                                           	xor    ecx,ecx
    2989c621f961:	e9 04 00 00 00                                  	jmp    0x2989c621f96a
    2989c621f966:	33 c9                                           	xor    ecx,ecx
    2989c621f968:	33 db                                           	xor    ebx,ebx
    2989c621f96a:	85 f6                                           	test   esi,esi
    2989c621f96c:	0f 84 27 00 00 00                               	je     0x2989c621f999
    2989c621f972:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f975:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    2989c621f97b:	c4 e3 79 16 e8 01                               	vpextrd eax,xmm5,0x1
    2989c621f981:	c1 e0 02                                        	shl    eax,0x2
    2989c621f984:	03 d0                                           	add    edx,eax
    2989c621f986:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621f98a:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621f98e:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    2989c621f991:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    2989c621f994:	e9 06 00 00 00                                  	jmp    0x2989c621f99f
    2989c621f999:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    2989c621f99f:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    2989c621f9a2:	85 c0                                           	test   eax,eax
    2989c621f9a4:	0f 84 23 00 00 00                               	je     0x2989c621f9cd
    2989c621f9aa:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621f9ad:	c4 e3 79 16 ea 02                               	vpextrd edx,xmm5,0x2
    2989c621f9b3:	c1 e2 02                                        	shl    edx,0x2
    2989c621f9b6:	03 c2                                           	add    eax,edx
    2989c621f9b8:	48 8b 55 f0                                     	mov    rdx,QWORD PTR [rbp-0x10]
    2989c621f9bc:	48 8b 52 17                                     	mov    rdx,QWORD PTR [rdx+0x17]
    2989c621f9c0:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    2989c621f9c3:	8b 0c 02                                        	mov    ecx,DWORD PTR [rdx+rax*1]
    2989c621f9c6:	33 c0                                           	xor    eax,eax
    2989c621f9c8:	e9 0b 00 00 00                                  	jmp    0x2989c621f9d8
    2989c621f9cd:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    2989c621f9d0:	33 c0                                           	xor    eax,eax
    2989c621f9d2:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    2989c621f9d8:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    2989c621f9db:	85 d2                                           	test   edx,edx
    2989c621f9dd:	0f 84 07 00 00 00                               	je     0x2989c621f9ea
    2989c621f9e3:	8b d1                                           	mov    edx,ecx
    2989c621f9e5:	e9 69 00 00 00                                  	jmp    0x2989c621fa53
    2989c621f9ea:	e9 91 00 00 00                                  	jmp    0x2989c621fa80
    2989c621f9ef:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621f9f2:	c4 e3 79 16 eb 01                               	vpextrd ebx,xmm5,0x1
    2989c621f9f8:	c1 e3 02                                        	shl    ebx,0x2
    2989c621f9fb:	03 d3                                           	add    edx,ebx
    2989c621f9fd:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621fa01:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621fa05:	89 85 d0 fe ff ff                               	mov    DWORD PTR [rbp-0x130],eax
    2989c621fa0b:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    2989c621fa0e:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c621fa11:	c5 f9 7e ea                                     	vmovd  edx,xmm5
    2989c621fa15:	c1 e2 02                                        	shl    edx,0x2
    2989c621fa18:	03 ca                                           	add    ecx,edx
    2989c621fa1a:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    2989c621fa1d:	8b 4d d0                                        	mov    ecx,DWORD PTR [rbp-0x30]
    2989c621fa20:	c4 e3 79 16 eb 02                               	vpextrd ebx,xmm5,0x2
    2989c621fa26:	c1 e3 02                                        	shl    ebx,0x2
    2989c621fa29:	03 cb                                           	add    ecx,ebx
    2989c621fa2b:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621fa2f:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621fa33:	89 95 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],edx
    2989c621fa39:	8b 14 0b                                        	mov    edx,DWORD PTR [rbx+rcx*1]
    2989c621fa3c:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    2989c621fa3f:	8b ca                                           	mov    ecx,edx
    2989c621fa41:	8b 85 d8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x128]
    2989c621fa47:	8b 95 c4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x13c]
    2989c621fa4d:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    2989c621fa53:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621fa56:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    2989c621fa5c:	c4 e3 79 16 e8 03                               	vpextrd eax,xmm5,0x3
    2989c621fa62:	c1 e0 02                                        	shl    eax,0x2
    2989c621fa65:	03 d0                                           	add    edx,eax
    2989c621fa67:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621fa6b:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621fa6f:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    2989c621fa75:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    2989c621fa78:	8b c1                                           	mov    eax,ecx
    2989c621fa7a:	8b 8d c4 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x13c]
    2989c621fa80:	c4 c3 79 22 f7 02                               	vpinsrd xmm6,xmm0,r15d,0x2
    2989c621fa86:	c4 c3 61 22 c0 02                               	vpinsrd xmm0,xmm3,r8d,0x2
    2989c621fa8c:	c5 e9 fe d9                                     	vpaddd xmm3,xmm2,xmm1
    2989c621fa90:	c5 f9 6e eb                                     	vmovd  xmm5,ebx
    2989c621fa94:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    2989c621fa99:	8b 55 d4                                        	mov    edx,DWORD PTR [rbp-0x2c]
    2989c621fa9c:	c4 e3 51 22 ea 01                               	vpinsrd xmm5,xmm5,edx,0x1
    2989c621faa2:	c4 e3 51 22 e9 02                               	vpinsrd xmm5,xmm5,ecx,0x2
    2989c621faa8:	41 83 f9 0f                                     	cmp    r9d,0xf
    2989c621faac:	0f 84 bd 00 00 00                               	je     0x2989c621fb6f
    2989c621fab2:	45 85 e4                                        	test   r12d,r12d
    2989c621fab5:	0f 84 24 00 00 00                               	je     0x2989c621fadf
    2989c621fabb:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621fabe:	c5 f9 7e db                                     	vmovd  ebx,xmm3
    2989c621fac2:	c1 e3 02                                        	shl    ebx,0x2
    2989c621fac5:	03 d3                                           	add    edx,ebx
    2989c621fac7:	48 8b 5d f0                                     	mov    rbx,QWORD PTR [rbp-0x10]
    2989c621facb:	48 8b 5b 17                                     	mov    rbx,QWORD PTR [rbx+0x17]
    2989c621facf:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    2989c621fad5:	8b 04 13                                        	mov    eax,DWORD PTR [rbx+rdx*1]
    2989c621fad8:	33 d2                                           	xor    edx,edx
    2989c621fada:	e9 0a 00 00 00                                  	jmp    0x2989c621fae9
    2989c621fadf:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    2989c621fae5:	33 c0                                           	xor    eax,eax
    2989c621fae7:	33 d2                                           	xor    edx,edx
    2989c621fae9:	85 f6                                           	test   esi,esi
    2989c621faeb:	0f 84 2a 00 00 00                               	je     0x2989c621fb1b
    2989c621faf1:	8b 5d d0                                        	mov    ebx,DWORD PTR [rbp-0x30]
    2989c621faf4:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    2989c621fafa:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    2989c621fb00:	c1 e0 02                                        	shl    eax,0x2
    2989c621fb03:	03 d8                                           	add    ebx,eax
    2989c621fb05:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621fb09:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621fb0d:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    2989c621fb13:	8b 0c 18                                        	mov    ecx,DWORD PTR [rax+rbx*1]
    2989c621fb16:	e9 0e 00 00 00                                  	jmp    0x2989c621fb29
    2989c621fb1b:	89 85 e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],eax
    2989c621fb21:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    2989c621fb27:	8b ca                                           	mov    ecx,edx
    2989c621fb29:	8b 45 d8                                        	mov    eax,DWORD PTR [rbp-0x28]
    2989c621fb2c:	85 c0                                           	test   eax,eax
    2989c621fb2e:	0f 84 20 00 00 00                               	je     0x2989c621fb54
    2989c621fb34:	8b 45 d0                                        	mov    eax,DWORD PTR [rbp-0x30]
    2989c621fb37:	c4 e3 79 16 da 02                               	vpextrd edx,xmm3,0x2
    2989c621fb3d:	c1 e2 02                                        	shl    edx,0x2
    2989c621fb40:	03 c2                                           	add    eax,edx
    2989c621fb42:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c621fb46:	48 8b 56 17                                     	mov    rdx,QWORD PTR [rsi+0x17]
    2989c621fb4a:	8b 1c 02                                        	mov    ebx,DWORD PTR [rdx+rax*1]
    2989c621fb4d:	33 c0                                           	xor    eax,eax
    2989c621fb4f:	e9 04 00 00 00                                  	jmp    0x2989c621fb58
    2989c621fb54:	33 c0                                           	xor    eax,eax
    2989c621fb56:	33 db                                           	xor    ebx,ebx
    2989c621fb58:	8b 55 dc                                        	mov    edx,DWORD PTR [rbp-0x24]
    2989c621fb5b:	85 d2                                           	test   edx,edx
    2989c621fb5d:	0f 84 07 00 00 00                               	je     0x2989c621fb6a
    2989c621fb63:	8b d3                                           	mov    edx,ebx
    2989c621fb65:	e9 77 00 00 00                                  	jmp    0x2989c621fbe1
    2989c621fb6a:	e9 90 00 00 00                                  	jmp    0x2989c621fbff
    2989c621fb6f:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621fb72:	89 85 d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],eax
    2989c621fb78:	c4 e3 79 16 d8 01                               	vpextrd eax,xmm3,0x1
    2989c621fb7e:	c1 e0 02                                        	shl    eax,0x2
    2989c621fb81:	03 d0                                           	add    edx,eax
    2989c621fb83:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621fb87:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621fb8b:	89 8d c4 fe ff ff                               	mov    DWORD PTR [rbp-0x13c],ecx
    2989c621fb91:	8b 0c 10                                        	mov    ecx,DWORD PTR [rax+rdx*1]
    2989c621fb94:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621fb97:	c5 f9 7e d8                                     	vmovd  eax,xmm3
    2989c621fb9b:	c1 e0 02                                        	shl    eax,0x2
    2989c621fb9e:	03 d0                                           	add    edx,eax
    2989c621fba0:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621fba4:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621fba8:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    2989c621fbae:	8b 1c 10                                        	mov    ebx,DWORD PTR [rax+rdx*1]
    2989c621fbb1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621fbb4:	c4 e3 79 16 d8 02                               	vpextrd eax,xmm3,0x2
    2989c621fbba:	c1 e0 02                                        	shl    eax,0x2
    2989c621fbbd:	03 d0                                           	add    edx,eax
    2989c621fbbf:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c621fbc3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c621fbc7:	89 b5 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],esi
    2989c621fbcd:	8b 34 10                                        	mov    esi,DWORD PTR [rax+rdx*1]
    2989c621fbd0:	89 9d e4 fe ff ff                               	mov    DWORD PTR [rbp-0x11c],ebx
    2989c621fbd6:	41 8b d4                                        	mov    edx,r12d
    2989c621fbd9:	8b de                                           	mov    ebx,esi
    2989c621fbdb:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    2989c621fbe1:	8b 55 d0                                        	mov    edx,DWORD PTR [rbp-0x30]
    2989c621fbe4:	c4 e3 79 16 de 03                               	vpextrd esi,xmm3,0x3
    2989c621fbea:	c1 e6 02                                        	shl    esi,0x2
    2989c621fbed:	03 d6                                           	add    edx,esi
    2989c621fbef:	4c 8b 65 f0                                     	mov    r12,QWORD PTR [rbp-0x10]
    2989c621fbf3:	49 8b 74 24 17                                  	mov    rsi,QWORD PTR [r12+0x17]
    2989c621fbf8:	44 8b 24 16                                     	mov    r12d,DWORD PTR [rsi+rdx*1]
    2989c621fbfc:	41 8b c4                                        	mov    eax,r12d
    2989c621fbff:	8b 95 cc fe ff ff                               	mov    edx,DWORD PTR [rbp-0x134]
    2989c621fc05:	c4 e3 49 22 ca 03                               	vpinsrd xmm1,xmm6,edx,0x3
    2989c621fc0b:	8b 95 d0 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x130]
    2989c621fc11:	c4 e3 79 22 d2 03                               	vpinsrd xmm2,xmm0,edx,0x3
    2989c621fc17:	8b 95 e4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x11c]
    2989c621fc1d:	c5 f9 6e f2                                     	vmovd  xmm6,edx
    2989c621fc21:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    2989c621fc26:	c4 e3 49 22 f1 01                               	vpinsrd xmm6,xmm6,ecx,0x1
    2989c621fc2c:	c4 e3 49 22 f3 02                               	vpinsrd xmm6,xmm6,ebx,0x2
    2989c621fc32:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    2989c621fc38:	8b 95 d8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x128]
    2989c621fc3e:	c4 e3 51 22 c2 03                               	vpinsrd xmm0,xmm5,edx,0x3
    2989c621fc44:	89 4d d4                                        	mov    DWORD PTR [rbp-0x2c],ecx
    2989c621fc47:	89 9d e0 fe ff ff                               	mov    DWORD PTR [rbp-0x120],ebx
    2989c621fc4d:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    2989c621fc53:	44 89 bd c8 fe ff ff                            	mov    DWORD PTR [rbp-0x138],r15d
    2989c621fc5a:	41 8b d0                                        	mov    edx,r8d
    2989c621fc5d:	c5 fa 7f b5 a4 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x15c],xmm6
    2989c621fc65:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    2989c621fc69:	c5 fa 7f 95 94 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x16c],xmm2
    2989c621fc71:	c5 f9 28 d1                                     	vmovapd xmm2,xmm1
    2989c621fc75:	8b 9d cc fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x134]
    2989c621fc7b:	8b 75 d8                                        	mov    esi,DWORD PTR [rbp-0x28]
    2989c621fc7e:	44 8b 85 d0 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x130]
    2989c621fc85:	44 8b 7d dc                                     	mov    r15d,DWORD PTR [rbp-0x24]
    2989c621fc89:	c5 fa 6f 85 a4 fe ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x15c]
    2989c621fc91:	c5 fa 6f 8d 94 fe ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0x16c]
    2989c621fc99:	c5 fa 7f 85 68 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x98],xmm0
    2989c621fca1:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    2989c621fca6:	c5 fa 7f 4d 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm1
    2989c621fcab:	c5 fa 6f 8d 08 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xf8]
    2989c621fcb3:	c5 f0 5c cf                                     	vsubps xmm1,xmm1,xmm7
    2989c621fcb7:	c5 f8 5c c1                                     	vsubps xmm0,xmm0,xmm1
    2989c621fcbb:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    2989c621fcc0:	c5 fa 7f 95 78 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0x88],xmm2
    2989c621fcc8:	c5 fa 6f 95 e8 fe ff ff                         	vmovdqu xmm2,XMMWORD PTR [rbp-0x118]
    2989c621fcd0:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    2989c621fcd5:	c5 fa 6f 9d 58 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0xa8]
    2989c621fcdd:	c5 e8 5c d3                                     	vsubps xmm2,xmm2,xmm3
    2989c621fce1:	c5 c0 5c fa                                     	vsubps xmm7,xmm7,xmm2
    2989c621fce5:	c5 fa 6f 9d 78 ff ff ff                         	vmovdqu xmm3,XMMWORD PTR [rbp-0x88]
    2989c621fced:	c5 e1 72 d3 18                                  	vpsrld xmm3,xmm3,0x18
    2989c621fcf2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621fcf7:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    2989c621fcfd:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    2989c621fd02:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fd07:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    2989c621fd0c:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    2989c621fd10:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    2989c621fd14:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    2989c621fd19:	c5 c0 59 db                                     	vmulps xmm3,xmm7,xmm3
    2989c621fd1d:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    2989c621fd22:	c5 d1 72 d5 18                                  	vpsrld xmm5,xmm5,0x18
    2989c621fd27:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621fd2c:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c621fd32:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c621fd37:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fd3c:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c621fd41:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c621fd45:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c621fd49:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c621fd4e:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    2989c621fd52:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    2989c621fd56:	c5 f8 59 db                                     	vmulps xmm3,xmm0,xmm3
    2989c621fd5a:	c5 d1 72 d6 18                                  	vpsrld xmm5,xmm6,0x18
    2989c621fd5f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621fd64:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c621fd6a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c621fd6f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fd74:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c621fd79:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c621fd7d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c621fd81:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c621fd86:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    2989c621fd8a:	c5 fa 7f a5 f8 fe ff ff                         	vmovdqu XMMWORD PTR [rbp-0x108],xmm4
    2989c621fd92:	c5 fa 6f a5 68 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x98]
    2989c621fd9a:	c5 d9 72 d4 18                                  	vpsrld xmm4,xmm4,0x18
    2989c621fd9f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621fda4:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c621fdaa:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c621fdaf:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fdb4:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c621fdb9:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c621fdbd:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c621fdc1:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c621fdc6:	c5 e8 59 e4                                     	vmulps xmm4,xmm2,xmm4
    2989c621fdca:	c5 d0 58 ec                                     	vaddps xmm5,xmm5,xmm4
    2989c621fdce:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    2989c621fdd2:	c5 e0 58 dd                                     	vaddps xmm3,xmm3,xmm5
    2989c621fdd6:	c5 fa 6f a5 78 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0x88]
    2989c621fdde:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    2989c621fde8:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    2989c621fded:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    2989c621fdf1:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    2989c621fdf5:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621fdfa:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    2989c621fe00:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    2989c621fe05:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fe0a:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    2989c621fe0f:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    2989c621fe13:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    2989c621fe17:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    2989c621fe1c:	c5 c0 59 e4                                     	vmulps xmm4,xmm7,xmm4
    2989c621fe20:	c5 fa 7f 6d 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm5
    2989c621fe25:	c5 fa 6f 6d 98                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x68]
    2989c621fe2a:	c5 fa 7f b5 38 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xc8],xmm6
    2989c621fe32:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    2989c621fe37:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    2989c621fe3b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621fe40:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c621fe46:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c621fe4b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fe50:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c621fe55:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c621fe59:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c621fe5d:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c621fe62:	c5 e8 59 ed                                     	vmulps xmm5,xmm2,xmm5
    2989c621fe66:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    2989c621fe6a:	c5 f8 59 e4                                     	vmulps xmm4,xmm0,xmm4
    2989c621fe6e:	c5 fa 6f ad 38 ff ff ff                         	vmovdqu xmm5,XMMWORD PTR [rbp-0xc8]
    2989c621fe76:	c5 fa 6f 75 88                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x78]
    2989c621fe7b:	c5 d1 db ee                                     	vpand  xmm5,xmm5,xmm6
    2989c621fe7f:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621fe84:	c4 63 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm5,0x55
    2989c621fe8a:	c4 c1 51 fa ef                                  	vpsubd xmm5,xmm5,xmm15
    2989c621fe8f:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fe94:	c5 d1 72 d5 01                                  	vpsrld xmm5,xmm5,0x1
    2989c621fe99:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    2989c621fe9d:	c5 d0 58 ed                                     	vaddps xmm5,xmm5,xmm5
    2989c621fea1:	c4 c1 50 58 ef                                  	vaddps xmm5,xmm5,xmm15
    2989c621fea6:	c5 c0 59 ed                                     	vmulps xmm5,xmm7,xmm5
    2989c621feaa:	c5 fa 6f b5 68 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x98]
    2989c621feb2:	c5 fa 7f 7d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm7
    2989c621feb7:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    2989c621febc:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    2989c621fec0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621fec5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c621fecb:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c621fed0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fed5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c621feda:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c621fede:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c621fee2:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c621fee7:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    2989c621feeb:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    2989c621feef:	c5 f0 59 ed                                     	vmulps xmm5,xmm1,xmm5
    2989c621fef3:	c5 d8 58 e5                                     	vaddps xmm4,xmm4,xmm5
    2989c621fef7:	c5 fa 6f 6d a8                                  	vmovdqu xmm5,XMMWORD PTR [rbp-0x58]
    2989c621fefc:	c5 fa 6f b5 78 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0x88]
    2989c621ff04:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    2989c621ff09:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    2989c621ff0e:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    2989c621ff12:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621ff17:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c621ff1d:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c621ff22:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621ff27:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c621ff2c:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c621ff30:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c621ff34:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c621ff39:	c5 d0 59 ee                                     	vmulps xmm5,xmm5,xmm6
    2989c621ff3d:	c5 fa 6f 75 98                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x68]
    2989c621ff42:	c5 c9 72 d6 10                                  	vpsrld xmm6,xmm6,0x10
    2989c621ff47:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    2989c621ff4c:	c5 c9 db f7                                     	vpand  xmm6,xmm6,xmm7
    2989c621ff50:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621ff55:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    2989c621ff5b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    2989c621ff60:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621ff65:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    2989c621ff6a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    2989c621ff6e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    2989c621ff72:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    2989c621ff77:	c5 e8 59 f6                                     	vmulps xmm6,xmm2,xmm6
    2989c621ff7b:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    2989c621ff7f:	c5 f8 59 ed                                     	vmulps xmm5,xmm0,xmm5
    2989c621ff83:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    2989c621ff88:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    2989c621ff90:	c5 c1 72 d7 10                                  	vpsrld xmm7,xmm7,0x10
    2989c621ff95:	c5 fa 7f 85 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm0
    2989c621ff9d:	c5 fa 6f 45 88                                  	vmovdqu xmm0,XMMWORD PTR [rbp-0x78]
    2989c621ffa2:	c5 c1 db f8                                     	vpand  xmm7,xmm7,xmm0
    2989c621ffa6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621ffab:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c621ffb1:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c621ffb6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621ffbb:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c621ffc0:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c621ffc4:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c621ffc8:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c621ffcd:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c621ffd1:	c5 fa 6f 85 68 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0x98]
    2989c621ffd9:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    2989c621ffde:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    2989c621ffe3:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    2989c621ffe7:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c621ffec:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c621fff2:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c621fff7:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c621fffc:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c6220001:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c6220005:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c6220009:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c622000e:	c5 e8 59 c0                                     	vmulps xmm0,xmm2,xmm0
    2989c6220012:	c5 c8 58 f0                                     	vaddps xmm6,xmm6,xmm0
    2989c6220016:	c5 f0 59 f6                                     	vmulps xmm6,xmm1,xmm6
    2989c622001a:	c5 d0 58 ee                                     	vaddps xmm5,xmm5,xmm6
    2989c622001e:	c5 fa 6f 85 18 ff ff ff                         	vmovdqu xmm0,XMMWORD PTR [rbp-0xe8]
    2989c6220026:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    2989c622002b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    2989c6220033:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    2989c6220038:	c5 fa 7f 8d 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm1
    2989c6220040:	c5 fa 6f 4d 88                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x78]
    2989c6220045:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    2989c6220049:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c622004e:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c6220054:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c6220059:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c622005e:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c6220063:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c6220067:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c622006b:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c6220070:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c6220074:	c5 fa 6f 4d 98                                  	vmovdqu xmm1,XMMWORD PTR [rbp-0x68]
    2989c6220079:	c5 f1 72 d1 08                                  	vpsrld xmm1,xmm1,0x8
    2989c622007e:	c5 fa 6f 7d 88                                  	vmovdqu xmm7,XMMWORD PTR [rbp-0x78]
    2989c6220083:	c5 f1 db cf                                     	vpand  xmm1,xmm1,xmm7
    2989c6220087:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c622008c:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c6220092:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c6220097:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c622009c:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c62200a1:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c62200a5:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c62200a9:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c62200ae:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    2989c62200b2:	c5 c8 58 f1                                     	vaddps xmm6,xmm6,xmm1
    2989c62200b6:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    2989c62200ba:	c5 fa 6f 8d 48 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xb8]
    2989c62200c2:	c5 fa 6f 75 a8                                  	vmovdqu xmm6,XMMWORD PTR [rbp-0x58]
    2989c62200c7:	c5 fa 6f bd 38 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0xc8]
    2989c62200cf:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    2989c62200d4:	c5 fa 7f 55 b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm2
    2989c62200d9:	c5 fa 6f 55 88                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x78]
    2989c62200de:	c5 c1 db fa                                     	vpand  xmm7,xmm7,xmm2
    2989c62200e2:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62200e7:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c62200ed:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c62200f2:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62200f7:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c62200fc:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c6220100:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c6220104:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c6220109:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    2989c622010d:	c5 fa 6f 55 b8                                  	vmovdqu xmm2,XMMWORD PTR [rbp-0x48]
    2989c6220112:	c5 fa 6f bd 68 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x98]
    2989c622011a:	c5 c1 72 d7 08                                  	vpsrld xmm7,xmm7,0x8
    2989c622011f:	c5 fa 7f 9d 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm3
    2989c6220127:	c5 fa 6f 5d 88                                  	vmovdqu xmm3,XMMWORD PTR [rbp-0x78]
    2989c622012c:	c5 c1 db fb                                     	vpand  xmm7,xmm7,xmm3
    2989c6220130:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6220135:	c4 63 01 0e ff 55                               	vpblendw xmm15,xmm15,xmm7,0x55
    2989c622013b:	c4 c1 41 fa ff                                  	vpsubd xmm7,xmm7,xmm15
    2989c6220140:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6220145:	c5 c1 72 d7 01                                  	vpsrld xmm7,xmm7,0x1
    2989c622014a:	c5 f8 5b ff                                     	vcvtdq2ps xmm7,xmm7
    2989c622014e:	c5 c0 58 ff                                     	vaddps xmm7,xmm7,xmm7
    2989c6220152:	c4 c1 40 58 ff                                  	vaddps xmm7,xmm7,xmm15
    2989c6220157:	c5 e8 59 d7                                     	vmulps xmm2,xmm2,xmm7
    2989c622015b:	c5 c8 58 f2                                     	vaddps xmm6,xmm6,xmm2
    2989c622015f:	c5 f0 59 ce                                     	vmulps xmm1,xmm1,xmm6
    2989c6220163:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    2989c6220167:	e9 c8 01 00 00                                  	jmp    0x2989c6220334
    2989c622016c:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c6220170:	89 45 d4                                        	mov    DWORD PTR [rbp-0x2c],eax
    2989c6220173:	8b c1                                           	mov    eax,ecx
    2989c6220175:	c1 e0 02                                        	shl    eax,0x2
    2989c6220178:	44 03 e0                                        	add    r12d,eax
    2989c622017b:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c622017f:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c6220183:	89 8d d8 fe ff ff                               	mov    DWORD PTR [rbp-0x128],ecx
    2989c6220189:	42 8b 0c 20                                     	mov    ecx,DWORD PTR [rax+r12*1]
    2989c622018d:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c6220191:	8b c3                                           	mov    eax,ebx
    2989c6220193:	c1 e0 02                                        	shl    eax,0x2
    2989c6220196:	44 03 e0                                        	add    r12d,eax
    2989c6220199:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c622019d:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c62201a1:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    2989c62201a7:	42 8b 14 20                                     	mov    edx,DWORD PTR [rax+r12*1]
    2989c62201ab:	44 8b 65 d0                                     	mov    r12d,DWORD PTR [rbp-0x30]
    2989c62201af:	45 8b f8                                        	mov    r15d,r8d
    2989c62201b2:	41 c1 e7 02                                     	shl    r15d,0x2
    2989c62201b6:	45 03 e7                                        	add    r12d,r15d
    2989c62201b9:	46 8b 3c 20                                     	mov    r15d,DWORD PTR [rax+r12*1]
    2989c62201bd:	44 8b e1                                        	mov    r12d,ecx
    2989c62201c0:	8b ca                                           	mov    ecx,edx
    2989c62201c2:	8b 85 dc fe ff ff                               	mov    eax,DWORD PTR [rbp-0x124]
    2989c62201c8:	8b 95 d4 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x12c]
    2989c62201ce:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    2989c62201d1:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    2989c62201d7:	8b 45 d4                                        	mov    eax,DWORD PTR [rbp-0x2c]
    2989c62201da:	c1 e0 02                                        	shl    eax,0x2
    2989c62201dd:	03 f0                                           	add    esi,eax
    2989c62201df:	48 8b 45 f0                                     	mov    rax,QWORD PTR [rbp-0x10]
    2989c62201e3:	48 8b 40 17                                     	mov    rax,QWORD PTR [rax+0x17]
    2989c62201e7:	89 4d dc                                        	mov    DWORD PTR [rbp-0x24],ecx
    2989c62201ea:	8b 0c 30                                        	mov    ecx,DWORD PTR [rax+rsi*1]
    2989c62201ed:	8b c1                                           	mov    eax,ecx
    2989c62201ef:	8b 4d dc                                        	mov    ecx,DWORD PTR [rbp-0x24]
    2989c62201f2:	c4 c1 79 6e e7                                  	vmovd  xmm4,r15d
    2989c62201f7:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    2989c62201fc:	c4 e3 59 22 e1 01                               	vpinsrd xmm4,xmm4,ecx,0x1
    2989c6220202:	c4 c3 59 22 e4 02                               	vpinsrd xmm4,xmm4,r12d,0x2
    2989c6220208:	c4 e3 59 22 e0 03                               	vpinsrd xmm4,xmm4,eax,0x3
    2989c622020e:	c5 fa 7f 85 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm0
    2989c6220216:	c5 f9 72 d4 18                                  	vpsrld xmm0,xmm4,0x18
    2989c622021b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6220220:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    2989c6220226:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    2989c622022b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c6220230:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    2989c6220235:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    2989c6220239:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    2989c622023d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    2989c6220242:	4c 8b 15 97 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb97]        # 0x2989c621fde0
    2989c6220249:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    2989c622024e:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    2989c6220252:	c5 d9 db cb                                     	vpand  xmm1,xmm4,xmm3
    2989c6220256:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c622025b:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c6220261:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c6220266:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c622026b:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c6220270:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c6220274:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c6220278:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c622027d:	c5 fa 7f 8d 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm1
    2989c6220285:	c5 f1 72 d4 10                                  	vpsrld xmm1,xmm4,0x10
    2989c622028a:	c5 f1 db cb                                     	vpand  xmm1,xmm1,xmm3
    2989c622028e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c6220293:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    2989c6220299:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    2989c622029e:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62202a3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    2989c62202a8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    2989c62202ac:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    2989c62202b0:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    2989c62202b5:	c5 fa 7f 95 18 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xe8],xmm2
    2989c62202bd:	c5 e9 72 d4 08                                  	vpsrld xmm2,xmm4,0x8
    2989c62202c2:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    2989c62202c6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    2989c62202cb:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    2989c62202d1:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    2989c62202d6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    2989c62202db:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    2989c62202e0:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    2989c62202e4:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    2989c62202e8:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    2989c62202ed:	c5 fa 7f 5d b8                                  	vmovdqu XMMWORD PTR [rbp-0x48],xmm3
    2989c62202f2:	c5 fa 7f 6d a8                                  	vmovdqu XMMWORD PTR [rbp-0x58],xmm5
    2989c62202f7:	c5 fa 7f 75 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm6
    2989c62202fc:	c5 fa 7f 65 88                                  	vmovdqu XMMWORD PTR [rbp-0x78],xmm4
    2989c6220301:	c5 fa 7f 85 58 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xa8],xmm0
    2989c6220309:	c5 fa 7f bd 48 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xb8],xmm7
    2989c6220311:	44 89 a5 e0 fe ff ff                            	mov    DWORD PTR [rbp-0x120],r12d
    2989c6220318:	89 85 dc fe ff ff                               	mov    DWORD PTR [rbp-0x124],eax
    2989c622031e:	41 8b f7                                        	mov    esi,r15d
    2989c6220321:	44 8b f9                                        	mov    r15d,ecx
    2989c6220324:	c5 f9 28 c2                                     	vmovapd xmm0,xmm2
    2989c6220328:	c5 f9 28 e9                                     	vmovapd xmm5,xmm1
    2989c622032c:	c5 fa 6f a5 28 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xd8]
    2989c6220334:	c5 fa 6f 8d 58 ff ff ff                         	vmovdqu xmm1,XMMWORD PTR [rbp-0xa8]
    2989c622033c:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    2989c6220346:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    2989c622034b:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    2989c622034f:	c5 f0 59 ca                                     	vmulps xmm1,xmm1,xmm2
    2989c6220353:	c5 e1 ef db                                     	vpxor  xmm3,xmm3,xmm3
    2989c6220357:	41 8b c1                                        	mov    eax,r9d
    2989c622035a:	83 e0 01                                        	and    eax,0x1
    2989c622035d:	33 c9                                           	xor    ecx,ecx
    2989c622035f:	2b c8                                           	sub    ecx,eax
    2989c6220361:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    2989c6220365:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    2989c622036a:	41 8b c1                                        	mov    eax,r9d
    2989c622036d:	c1 e0 1e                                        	shl    eax,0x1e
    2989c6220370:	c1 f8 1f                                        	sar    eax,0x1f
    2989c6220373:	c4 e3 49 22 f0 01                               	vpinsrd xmm6,xmm6,eax,0x1
    2989c6220379:	41 8b c1                                        	mov    eax,r9d
    2989c622037c:	c1 e0 1d                                        	shl    eax,0x1d
    2989c622037f:	c1 f8 1f                                        	sar    eax,0x1f
    2989c6220382:	c4 e3 49 22 f0 02                               	vpinsrd xmm6,xmm6,eax,0x2
    2989c6220388:	41 8b c1                                        	mov    eax,r9d
    2989c622038b:	c1 e0 1c                                        	shl    eax,0x1c
    2989c622038e:	c1 f8 1f                                        	sar    eax,0x1f
    2989c6220391:	c4 e3 49 22 f0 03                               	vpinsrd xmm6,xmm6,eax,0x3
    2989c6220397:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    2989c622039b:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    2989c622039f:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c62203a4:	48 8b 4d f0                                     	mov    rcx,QWORD PTR [rbp-0x10]
    2989c62203a8:	48 8b 41 17                                     	mov    rax,QWORD PTR [rcx+0x17]
    2989c62203ac:	c5 fa 7f 7c 38 30                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x30],xmm7
    2989c62203b2:	c5 d0 59 ca                                     	vmulps xmm1,xmm5,xmm2
    2989c62203b6:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    2989c62203ba:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    2989c62203be:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c62203c3:	c5 fa 7f 7c 38 20                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x20],xmm7
    2989c62203c9:	c5 f8 59 ca                                     	vmulps xmm1,xmm0,xmm2
    2989c62203cd:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    2989c62203d1:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    2989c62203d5:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c62203da:	c5 fa 7f 7c 38 10                               	vmovdqu XMMWORD PTR [rax+rdi*1+0x10],xmm7
    2989c62203e0:	c5 d8 59 ca                                     	vmulps xmm1,xmm4,xmm2
    2989c62203e4:	c5 49 df fb                                     	vpandn xmm15,xmm6,xmm3
    2989c62203e8:	c5 f1 db fe                                     	vpand  xmm7,xmm1,xmm6
    2989c62203ec:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    2989c62203f1:	c5 fa 7f 3c 38                                  	vmovdqu XMMWORD PTR [rax+rdi*1],xmm7
    2989c62203f6:	c5 fa 7f 45 98                                  	vmovdqu XMMWORD PTR [rbp-0x68],xmm0
    2989c62203fb:	c5 fa 7f a5 28 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xd8],xmm4
    2989c6220403:	c5 fa 7f ad 08 ff ff ff                         	vmovdqu XMMWORD PTR [rbp-0xf8],xmm5
    2989c622040b:	89 95 d4 fe ff ff                               	mov    DWORD PTR [rbp-0x12c],edx
    2989c6220411:	44 89 85 d0 fe ff ff                            	mov    DWORD PTR [rbp-0x130],r8d
    2989c6220418:	89 9d cc fe ff ff                               	mov    DWORD PTR [rbp-0x134],ebx
    2989c622041e:	41 8b c7                                        	mov    eax,r15d
    2989c6220421:	8b d6                                           	mov    edx,esi
    2989c6220423:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    2989c6220427:	c5 f9 28 eb                                     	vmovapd xmm5,xmm3
    2989c622042b:	b9 01 00 00 00                                  	mov    ecx,0x1
    2989c6220430:	8b 9d e4 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x11c]
    2989c6220436:	8b 75 d0                                        	mov    esi,DWORD PTR [rbp-0x30]
    2989c6220439:	44 8b 45 d4                                     	mov    r8d,DWORD PTR [rbp-0x2c]
    2989c622043d:	44 8b a5 dc fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x124]
    2989c6220444:	44 8b bd e0 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x120]
    2989c622044b:	c5 fa 6f a5 48 ff ff ff                         	vmovdqu xmm4,XMMWORD PTR [rbp-0xb8]
    2989c6220453:	c5 fa 6f b5 58 ff ff ff                         	vmovdqu xmm6,XMMWORD PTR [rbp-0xa8]
    2989c622045b:	c5 fa 6f bd 78 ff ff ff                         	vmovdqu xmm7,XMMWORD PTR [rbp-0x88]
    2989c6220463:	8b c1                                           	mov    eax,ecx
    2989c6220465:	4c 8b 55 f0                                     	mov    r10,QWORD PTR [rbp-0x10]
    2989c6220469:	4d 8b 52 37                                     	mov    r10,QWORD PTR [r10+0x37]
    2989c622046d:	41 81 aa bc 02 00 00 61 1c 00 00                	sub    DWORD PTR [r10+0x2bc],0x1c61
    2989c6220478:	0f 88 25 00 00 00                               	js     0x2989c62204a3
    2989c622047e:	48 8b e5                                        	mov    rsp,rbp
    2989c6220481:	5d                                              	pop    rbp
    2989c6220482:	c2 08 00                                        	ret    0x8
    2989c6220485:	50                                              	push   rax
    2989c6220486:	51                                              	push   rcx
    2989c6220487:	52                                              	push   rdx
    2989c6220488:	53                                              	push   rbx
    2989c6220489:	57                                              	push   rdi
    2989c622048a:	41 51                                           	push   r9
    2989c622048c:	33 c0                                           	xor    eax,eax
    2989c622048e:	e8 9d da f5 ff                                  	call   0x2989c617df30
    2989c6220493:	41 59                                           	pop    r9
    2989c6220495:	5f                                              	pop    rdi
    2989c6220496:	5b                                              	pop    rbx
    2989c6220497:	5a                                              	pop    rdx
    2989c6220498:	59                                              	pop    rcx
    2989c6220499:	58                                              	pop    rax
    2989c622049a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    2989c622049e:	e9 dd e3 ff ff                                  	jmp    0x2989c621e880
    2989c62204a3:	50                                              	push   rax
    2989c62204a4:	e8 b7 d8 f5 ff                                  	call   0x2989c617dd60
    2989c62204a9:	58                                              	pop    rax
    2989c62204aa:	eb d2                                           	jmp    0x2989c622047e
    2989c62204ac:	36 00 00                                        	ss add BYTE PTR [rax],al
    2989c62204af:	00 08                                           	add    BYTE PTR [rax],cl
	...
