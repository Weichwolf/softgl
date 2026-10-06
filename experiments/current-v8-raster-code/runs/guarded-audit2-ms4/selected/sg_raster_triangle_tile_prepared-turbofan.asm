
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms4/selected/sg_raster_triangle_tile_prepared-turbofan.bin:     file format binary


Disassembly of section .data:

0000214fa4946e80 <.data>:
    214fa4946e80:	55                                              	push   rbp
    214fa4946e81:	48 8b ec                                        	mov    rbp,rsp
    214fa4946e84:	6a 30                                           	push   0x30
    214fa4946e86:	56                                              	push   rsi
    214fa4946e87:	48 81 ec e8 03 00 00                            	sub    rsp,0x3e8
    214fa4946e8e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    214fa4946e92:	8b f9                                           	mov    edi,ecx
    214fa4946e94:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
    214fa4946e98:	0f 86 53 8a 00 00                               	jbe    0x214fa494f8f1
    214fa4946e9e:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
    214fa4946ea2:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
    214fa4946ea6:	4d 0b de                                        	or     r11,r14
    214fa4946ea9:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
    214fa4946ead:	41 8d 8c 24 00 fe ff ff                         	lea    ecx,[r12-0x200]
    214fa4946eb5:	41 89 4b 07                                     	mov    DWORD PTR [r11+0x7],ecx
    214fa4946eb9:	45 8b 7b 2f                                     	mov    r15d,DWORD PTR [r11+0x2f]
    214fa4946ebd:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa4946ec1:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
    214fa4946ec8:	44 8b e0                                        	mov    r12d,eax
    214fa4946ecb:	43 8b 74 20 14                                  	mov    esi,DWORD PTR [r8+r12*1+0x14]
    214fa4946ed0:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
    214fa4946ed7:	85 f6                                           	test   esi,esi
    214fa4946ed9:	0f 85 4c 00 00 00                               	jne    0x214fa4946f2b
    214fa4946edf:	45 85 ff                                        	test   r15d,r15d
    214fa4946ee2:	0f 84 43 00 00 00                               	je     0x214fa4946f2b
    214fa4946ee8:	43 8b 74 38 24                                  	mov    esi,DWORD PTR [r8+r15*1+0x24]
    214fa4946eed:	43 83 7c 38 24 00                               	cmp    DWORD PTR [r8+r15*1+0x24],0x0
    214fa4946ef3:	0f 84 32 00 00 00                               	je     0x214fa4946f2b
    214fa4946ef9:	ff 75 18                                        	push   QWORD PTR [rbp+0x18]
    214fa4946efc:	ff 75 10                                        	push   QWORD PTR [rbp+0x10]
    214fa4946eff:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
    214fa4946f03:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
    214fa4946f07:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4946f0b:	8b cf                                           	mov    ecx,edi
    214fa4946f0d:	e8 3e 16 ee ff                                  	call   0x214fa4828550
    214fa4946f12:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa4946f16:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    214fa4946f1d:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
    214fa4946f21:	89 7e 07                                        	mov    DWORD PTR [rsi+0x7],edi
    214fa4946f24:	48 8b e5                                        	mov    rsp,rbp
    214fa4946f27:	5d                                              	pop    rbp
    214fa4946f28:	c2 10 00                                        	ret    0x10
    214fa4946f2b:	4d 8b d3                                        	mov    r10,r11
    214fa4946f2e:	44 8b d9                                        	mov    r11d,ecx
    214fa4946f31:	49 8b ca                                        	mov    rcx,r10
    214fa4946f34:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
    214fa4946f3b:	44 8b fb                                        	mov    r15d,ebx
    214fa4946f3e:	c4 81 7a 6f 74 38 10                            	vmovdqu xmm6,XMMWORD PTR [r8+r15*1+0x10]
    214fa4946f45:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
    214fa4946f4f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa4946f54:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa4946f58:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
    214fa4946f5c:	49 ba 40 29 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2940
    214fa4946f66:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    214fa4946f6c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    214fa4946f71:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    214fa4946f77:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    214fa4946f7c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    214fa4946f81:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    214fa4946f85:	8b da                                           	mov    ebx,edx
    214fa4946f87:	c4 41 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x10]
    214fa4946f8e:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
    214fa4946f92:	4c 8b 15 c5 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc5]        # 0x214fa4946f5e
    214fa4946f99:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    214fa4946f9f:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
    214fa4946fa4:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    214fa4946faa:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    214fa4946faf:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    214fa4946fb4:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
    214fa4946fb9:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
    214fa4946fbe:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
    214fa4946fc4:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    214fa4946fc8:	8b d7                                           	mov    edx,edi
    214fa4946fca:	c4 41 7a 6f 64 10 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rdx*1+0x10]
    214fa4946fd1:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
    214fa4946fd5:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x214fa4946f5e
    214fa4946fdc:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
    214fa4946fe2:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
    214fa4946fe7:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
    214fa4946fed:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    214fa4946ff2:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    214fa4946ff7:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
    214fa4946ffc:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
    214fa4947001:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
    214fa4947007:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
    214fa494700b:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
    214fa4947010:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
    214fa4947015:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
    214fa4947019:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
    214fa494701f:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
    214fa4947023:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
    214fa4947028:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    214fa494702c:	c4 e3 f9 16 d7 00                               	vpextrq rdi,xmm2,0x0
    214fa4947032:	c4 e3 f9 16 d6 01                               	vpextrq rsi,xmm2,0x1
    214fa4947038:	48 2b fe                                        	sub    rdi,rsi
    214fa494703b:	48 85 ff                                        	test   rdi,rdi
    214fa494703e:	0f 8e 7f 88 00 00                               	jle    0x214fa494f8c3
    214fa4947044:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
    214fa4947049:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
    214fa494704e:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
    214fa4947054:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
    214fa494705e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa4947063:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa4947067:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
    214fa494706b:	8d 70 04                                        	lea    esi,[rax+0x4]
    214fa494706e:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
    214fa4947073:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
    214fa4947078:	c4 c3 59 22 24 30 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rsi*1],0x1
    214fa494707f:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
    214fa4947084:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
    214fa4947088:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
    214fa494708d:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa4947092:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
    214fa4947097:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
    214fa494709c:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    214fa49470a0:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
    214fa49470a4:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
    214fa49470ae:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa49470b3:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa49470b7:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
    214fa49470bb:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
    214fa49470bf:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
    214fa49470c4:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
    214fa49470ca:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    214fa49470cf:	43 8b 74 20 58                                  	mov    esi,DWORD PTR [r8+r12*1+0x58]
    214fa49470d4:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    214fa49470d8:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    214fa49470dc:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    214fa49470e4:	85 f6                                           	test   esi,esi
    214fa49470e6:	0f 84 39 00 00 00                               	je     0x214fa4947125
    214fa49470ec:	44 8d 48 50                                     	lea    r9d,[rax+0x50]
    214fa49470f0:	49 8d 78 48                                     	lea    rdi,[r8+0x48]
    214fa49470f4:	c4 a1 7b 10 24 27                               	vmovsd xmm4,QWORD PTR [rdi+r12*1]
    214fa49470fa:	c4 83 59 22 2c 08 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+r9*1],0x0
    214fa4947101:	8d 78 54                                        	lea    edi,[rax+0x54]
    214fa4947104:	c4 c3 59 22 04 38 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rdi*1],0x1
    214fa494710b:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
    214fa494710f:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
    214fa4947114:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
    214fa4947119:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    214fa4947121:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    214fa4947125:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
    214fa4947129:	c4 c3 f9 16 e1 00                               	vpextrq r9,xmm4,0x0
    214fa494712f:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
    214fa4947134:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
    214fa494713a:	49 23 c1                                        	and    rax,r9
    214fa494713d:	a8 01                                           	test   al,0x1
    214fa494713f:	0f 85 20 00 00 00                               	jne    0x214fa4947165
    214fa4947145:	b8 01 00 00 00                                  	mov    eax,0x1
    214fa494714a:	bf ff ff ff ff                                  	mov    edi,0xffffffff
    214fa494714f:	85 f6                                           	test   esi,esi
    214fa4947151:	0f 45 c7                                        	cmovne eax,edi
    214fa4947154:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    214fa494715b:	89 79 07                                        	mov    DWORD PTR [rcx+0x7],edi
    214fa494715e:	48 8b e5                                        	mov    rsp,rbp
    214fa4947161:	5d                                              	pop    rbp
    214fa4947162:	c2 10 00                                        	ret    0x10
    214fa4947165:	c4 63 79 16 e8 01                               	vpextrd eax,xmm13,0x1
    214fa494716b:	c4 63 79 16 d6 01                               	vpextrd esi,xmm10,0x1
    214fa4947171:	45 33 c9                                        	xor    r9d,r9d
    214fa4947174:	3b f0                                           	cmp    esi,eax
    214fa4947176:	41 0f 9e c1                                     	setle  r9b
    214fa494717a:	48 89 4d e8                                     	mov    QWORD PTR [rbp-0x18],rcx
    214fa494717e:	33 c9                                           	xor    ecx,ecx
    214fa4947180:	3b f0                                           	cmp    esi,eax
    214fa4947182:	0f 95 c1                                        	setne  cl
    214fa4947185:	4c 89 5d e0                                     	mov    QWORD PTR [rbp-0x20],r11
    214fa4947189:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
    214fa494718e:	c5 79 7e d7                                     	vmovd  edi,xmm10
    214fa4947192:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
    214fa4947199:	45 33 ff                                        	xor    r15d,r15d
    214fa494719c:	41 3b fb                                        	cmp    edi,r11d
    214fa494719f:	41 0f 9e c7                                     	setle  r15b
    214fa49471a3:	44 0b f9                                        	or     r15d,ecx
    214fa49471a6:	45 23 f9                                        	and    r15d,r9d
    214fa49471a9:	c4 63 79 16 c1 01                               	vpextrd ecx,xmm8,0x1
    214fa49471af:	45 33 c9                                        	xor    r9d,r9d
    214fa49471b2:	3b ce                                           	cmp    ecx,esi
    214fa49471b4:	41 0f 9e c1                                     	setle  r9b
    214fa49471b8:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
    214fa49471bf:	45 33 ff                                        	xor    r15d,r15d
    214fa49471c2:	3b ce                                           	cmp    ecx,esi
    214fa49471c4:	41 0f 95 c7                                     	setne  r15b
    214fa49471c8:	48 89 b5 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rsi
    214fa49471cf:	c5 79 7e c6                                     	vmovd  esi,xmm8
    214fa49471d3:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
    214fa49471da:	33 db                                           	xor    ebx,ebx
    214fa49471dc:	3b f7                                           	cmp    esi,edi
    214fa49471de:	0f 9e c3                                        	setle  bl
    214fa49471e1:	41 0b df                                        	or     ebx,r15d
    214fa49471e4:	41 23 d9                                        	and    ebx,r9d
    214fa49471e7:	45 33 ff                                        	xor    r15d,r15d
    214fa49471ea:	3b c8                                           	cmp    ecx,eax
    214fa49471ec:	41 0f 95 c7                                     	setne  r15b
    214fa49471f0:	45 33 c9                                        	xor    r9d,r9d
    214fa49471f3:	44 3b de                                        	cmp    r11d,esi
    214fa49471f6:	41 0f 9e c1                                     	setle  r9b
    214fa49471fa:	45 0b cf                                        	or     r9d,r15d
    214fa49471fd:	45 33 ff                                        	xor    r15d,r15d
    214fa4947200:	3b c1                                           	cmp    eax,ecx
    214fa4947202:	41 0f 9e c7                                     	setle  r15b
    214fa4947206:	45 23 f9                                        	and    r15d,r9d
    214fa4947209:	47 8b 8c 20 e0 00 00 00                         	mov    r9d,DWORD PTR [r8+r12*1+0xe0]
    214fa4947211:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
    214fa4947215:	4c 89 65 d0                                     	mov    QWORD PTR [rbp-0x30],r12
    214fa4947219:	c5 f8 11 bd 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm7
    214fa4947221:	48 89 9d 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rbx
    214fa4947228:	43 83 bc 20 e0 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xe0],0x0
    214fa4947231:	0f 85 0d 00 00 00                               	jne    0x214fa4947244
    214fa4947237:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
    214fa494723b:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
    214fa494723f:	e9 49 01 00 00                                  	jmp    0x214fa494738d
    214fa4947244:	c4 01 7a 10 94 20 d8 00 00 00                   	vmovss xmm10,DWORD PTR [r8+r12*1+0xd8]
    214fa494724e:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa4947253:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
    214fa4947258:	0f 8a 1d 00 00 00                               	jp     0x214fa494727b
    214fa494725e:	0f 85 17 00 00 00                               	jne    0x214fa494727b
    214fa4947264:	c4 01 7a 10 ac 20 dc 00 00 00                   	vmovss xmm13,DWORD PTR [r8+r12*1+0xdc]
    214fa494726e:	c4 41 78 2e c5                                  	vucomiss xmm8,xmm13
    214fa4947273:	7a 06                                           	jp     0x214fa494727b
    214fa4947275:	0f 84 0d 01 00 00                               	je     0x214fa4947388
    214fa494727b:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
    214fa4947280:	c4 41 78 28 ec                                  	vmovaps xmm13,xmm12
    214fa4947285:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
    214fa494728a:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
    214fa494728e:	c4 c1 12 59 e1                                  	vmulss xmm4,xmm13,xmm9
    214fa4947293:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
    214fa4947298:	c4 c1 4a 59 ec                                  	vmulss xmm5,xmm6,xmm12
    214fa494729d:	c5 da 5c e5                                     	vsubss xmm4,xmm4,xmm5
    214fa49472a1:	c5 78 2e c4                                     	vucomiss xmm8,xmm4
    214fa49472a5:	7a 06                                           	jp     0x214fa49472ad
    214fa49472a7:	0f 84 db 00 00 00                               	je     0x214fa4947388
    214fa49472ad:	c4 c1 7a 10 6c 10 18                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x18]
    214fa49472b4:	4c 8b 8d e8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x218]
    214fa49472bb:	c4 81 7a 10 44 08 18                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x18]
    214fa49472c2:	c5 d2 5c e8                                     	vsubss xmm5,xmm5,xmm0
    214fa49472c6:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
    214fa49472cb:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
    214fa49472d2:	c4 c1 7a 10 7c 18 18                            	vmovss xmm7,DWORD PTR [r8+rbx*1+0x18]
    214fa49472d9:	c5 c2 5c c0                                     	vsubss xmm0,xmm7,xmm0
    214fa49472dd:	c5 9a 59 f8                                     	vmulss xmm7,xmm12,xmm0
    214fa49472e1:	c5 b2 5c ff                                     	vsubss xmm7,xmm9,xmm7
    214fa49472e5:	c5 c2 5e fc                                     	vdivss xmm7,xmm7,xmm4
    214fa49472e9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    214fa49472ed:	49 ba 60 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2860
    214fa49472f7:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    214fa49472fc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4947300:	0f 87 04 00 00 00                               	ja     0x214fa494730a
    214fa4947306:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa494730a:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    214fa494730f:	c5 ca 59 f5                                     	vmulss xmm6,xmm6,xmm5
    214fa4947313:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa4947317:	c5 fa 5e c4                                     	vdivss xmm0,xmm0,xmm4
    214fa494731b:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
    214fa494731f:	4c 8b 15 c9 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc9]        # 0x214fa49472ef
    214fa4947326:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa494732b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    214fa494732f:	0f 87 04 00 00 00                               	ja     0x214fa4947339
    214fa4947335:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa4947339:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
    214fa494733d:	0f 87 04 00 00 00                               	ja     0x214fa4947347
    214fa4947343:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa4947347:	c4 c1 2a 59 c1                                  	vmulss xmm0,xmm10,xmm9
    214fa494734c:	c4 81 7a 10 b4 20 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+r12*1+0xdc]
    214fa4947356:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
    214fa494735c:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    214fa4947361:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    214fa4947365:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa4947369:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa494736d:	c5 f8 10 bd 50 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2b0]
    214fa4947375:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    214fa494737d:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
    214fa4947383:	e9 05 00 00 00                                  	jmp    0x214fa494738d
    214fa4947388:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa494738d:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
    214fa4947392:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    214fa4947396:	c4 c3 79 16 d9 01                               	vpextrd r9d,xmm3,0x1
    214fa494739c:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    214fa49473a0:	44 8b 8d 28 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3d8]
    214fa49473a7:	41 f7 d9                                        	neg    r9d
    214fa49473aa:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
    214fa49473ae:	44 8b cb                                        	mov    r9d,ebx
    214fa49473b1:	41 f7 d9                                        	neg    r9d
    214fa49473b4:	4c 89 4d 90                                     	mov    QWORD PTR [rbp-0x70],r9
    214fa49473b8:	45 8b cf                                        	mov    r9d,r15d
    214fa49473bb:	41 f7 d9                                        	neg    r9d
    214fa49473be:	83 bd 70 ff ff ff 04                            	cmp    DWORD PTR [rbp-0x90],0x4
    214fa49473c5:	0f 84 21 84 00 00                               	je     0x214fa494f7ec
    214fa49473cb:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
    214fa49473d2:	0f 85 70 83 00 00                               	jne    0x214fa494f748
    214fa49473d8:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    214fa49473dc:	41 c1 e1 08                                     	shl    r9d,0x8
    214fa49473e0:	41 81 c9 80 00 00 00                            	or     r9d,0x80
    214fa49473e7:	41 8b d9                                        	mov    ebx,r9d
    214fa49473ea:	2b de                                           	sub    ebx,esi
    214fa49473ec:	48 63 db                                        	movsxd rbx,ebx
    214fa49473ef:	4c 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],r15
    214fa49473f6:	44 8b 7d a0                                     	mov    r15d,DWORD PTR [rbp-0x60]
    214fa49473fa:	41 c1 e7 08                                     	shl    r15d,0x8
    214fa49473fe:	41 81 cf 80 00 00 00                            	or     r15d,0x80
    214fa4947405:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
    214fa494740c:	41 8b d7                                        	mov    edx,r15d
    214fa494740f:	2b d1                                           	sub    edx,ecx
    214fa4947411:	48 63 d2                                        	movsxd rdx,edx
    214fa4947414:	48 89 55 88                                     	mov    QWORD PTR [rbp-0x78],rdx
    214fa4947418:	41 8b d1                                        	mov    edx,r9d
    214fa494741b:	41 2b d3                                        	sub    edx,r11d
    214fa494741e:	48 63 d2                                        	movsxd rdx,edx
    214fa4947421:	48 89 95 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rdx
    214fa4947428:	41 8b d7                                        	mov    edx,r15d
    214fa494742b:	2b d0                                           	sub    edx,eax
    214fa494742d:	48 63 d2                                        	movsxd rdx,edx
    214fa4947430:	44 2b cf                                        	sub    r9d,edi
    214fa4947433:	4d 63 c9                                        	movsxd r9,r9d
    214fa4947436:	44 2b bd 68 ff ff ff                            	sub    r15d,DWORD PTR [rbp-0x98]
    214fa494743d:	4d 63 ff                                        	movsxd r15,r15d
    214fa4947440:	4c 8b 55 98                                     	mov    r10,QWORD PTR [rbp-0x68]
    214fa4947444:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    214fa4947449:	4d 85 d2                                        	test   r10,r10
    214fa494744c:	79 13                                           	jns    0x214fa4947461
    214fa494744e:	49 d1 ea                                        	shr    r10,1
    214fa4947451:	73 04                                           	jae    0x214fa4947457
    214fa4947453:	49 83 ca 01                                     	or     r10,0x1
    214fa4947457:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
    214fa494745c:	c4 41 32 58 c9                                  	vaddss xmm9,xmm9,xmm9
    214fa4947461:	2b fe                                           	sub    edi,esi
    214fa4947463:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
    214fa494746a:	4c 63 ff                                        	movsxd r15,edi
    214fa494746d:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
    214fa4947474:	4d 8b cf                                        	mov    r9,r15
    214fa4947477:	49 c1 e1 08                                     	shl    r9,0x8
    214fa494747b:	4c 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r15
    214fa4947482:	45 33 ff                                        	xor    r15d,r15d
    214fa4947485:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
    214fa494748c:	85 ff                                           	test   edi,edi
    214fa494748e:	4d 0f 4c f9                                     	cmovl  r15,r9
    214fa4947492:	4c 89 8d f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r9
    214fa4947499:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    214fa49474a0:	44 2b c9                                        	sub    r9d,ecx
    214fa49474a3:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
    214fa49474aa:	4d 63 f9                                        	movsxd r15,r9d
    214fa49474ad:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
    214fa49474b4:	49 c1 e7 08                                     	shl    r15,0x8
    214fa49474b8:	4c 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r15
    214fa49474bf:	49 f7 df                                        	neg    r15
    214fa49474c2:	48 89 9d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rbx
    214fa49474c9:	33 db                                           	xor    ebx,ebx
    214fa49474cb:	45 85 c9                                        	test   r9d,r9d
    214fa49474ce:	49 0f 4f df                                     	cmovg  rbx,r15
    214fa49474d2:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
    214fa49474d9:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    214fa49474e0:	33 d2                                           	xor    edx,edx
    214fa49474e2:	85 ff                                           	test   edi,edi
    214fa49474e4:	48 0f 4c da                                     	cmovl  rbx,rdx
    214fa49474e8:	45 85 c9                                        	test   r9d,r9d
    214fa49474eb:	4c 0f 4f fa                                     	cmovg  r15,rdx
    214fa49474ef:	41 2b f3                                        	sub    esi,r11d
    214fa49474f2:	48 63 fe                                        	movsxd rdi,esi
    214fa49474f5:	4c 8b df                                        	mov    r11,rdi
    214fa49474f8:	49 c1 e3 08                                     	shl    r11,0x8
    214fa49474fc:	4c 8b ca                                        	mov    r9,rdx
    214fa49474ff:	85 f6                                           	test   esi,esi
    214fa4947501:	4d 0f 4c cb                                     	cmovl  r9,r11
    214fa4947505:	2b c8                                           	sub    ecx,eax
    214fa4947507:	48 63 c1                                        	movsxd rax,ecx
    214fa494750a:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
    214fa4947511:	4c 8b d8                                        	mov    r11,rax
    214fa4947514:	49 c1 e3 08                                     	shl    r11,0x8
    214fa4947518:	4c 89 9d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r11
    214fa494751f:	49 f7 db                                        	neg    r11
    214fa4947522:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    214fa4947529:	4c 8b ca                                        	mov    r9,rdx
    214fa494752c:	85 c9                                           	test   ecx,ecx
    214fa494752e:	4d 0f 4f cb                                     	cmovg  r9,r11
    214fa4947532:	4c 89 8d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r9
    214fa4947539:	4c 8b 8d d8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x328]
    214fa4947540:	85 f6                                           	test   esi,esi
    214fa4947542:	4c 0f 4c ca                                     	cmovl  r9,rdx
    214fa4947546:	85 c9                                           	test   ecx,ecx
    214fa4947548:	4c 0f 4f da                                     	cmovg  r11,rdx
    214fa494754c:	c4 e3 f9 16 c9 00                               	vpextrq rcx,xmm1,0x0
    214fa4947552:	48 8b f1                                        	mov    rsi,rcx
    214fa4947555:	48 c1 e6 08                                     	shl    rsi,0x8
    214fa4947559:	4c 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r11
    214fa4947560:	c4 41 79 7e f3                                  	vmovd  r11d,xmm14
    214fa4947565:	4c 89 4d 98                                     	mov    QWORD PTR [rbp-0x68],r9
    214fa4947569:	4c 8b ca                                        	mov    r9,rdx
    214fa494756c:	45 85 db                                        	test   r11d,r11d
    214fa494756f:	4c 0f 4c ce                                     	cmovl  r9,rsi
    214fa4947573:	48 89 b5 a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rsi
    214fa494757a:	c4 e3 f9 16 ce 01                               	vpextrq rsi,xmm1,0x1
    214fa4947580:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
    214fa4947587:	4c 8b ce                                        	mov    r9,rsi
    214fa494758a:	49 c1 e1 08                                     	shl    r9,0x8
    214fa494758e:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
    214fa4947595:	49 f7 d9                                        	neg    r9
    214fa4947598:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
    214fa494759f:	c4 43 79 16 f7 01                               	vpextrd r15d,xmm14,0x1
    214fa49475a5:	48 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rbx
    214fa49475ac:	48 8b da                                        	mov    rbx,rdx
    214fa49475af:	45 85 ff                                        	test   r15d,r15d
    214fa49475b2:	49 0f 4f d9                                     	cmovg  rbx,r9
    214fa49475b6:	48 89 9d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rbx
    214fa49475bd:	48 8b 9d a0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x360]
    214fa49475c4:	45 85 db                                        	test   r11d,r11d
    214fa49475c7:	48 0f 4c da                                     	cmovl  rbx,rdx
    214fa49475cb:	45 85 ff                                        	test   r15d,r15d
    214fa49475ce:	4c 0f 4f ca                                     	cmovg  r9,rdx
    214fa49475d2:	47 8b 9c 20 a4 00 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0xa4]
    214fa49475da:	c5 fb 11 75 80                                  	vmovsd QWORD PTR [rbp-0x80],xmm6
    214fa49475df:	c5 f8 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm2
    214fa49475e7:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
    214fa49475eb:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    214fa49475f2:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
    214fa49475f9:	48 89 b5 c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rsi
    214fa4947600:	45 85 db                                        	test   r11d,r11d
    214fa4947603:	0f 85 b6 00 00 00                               	jne    0x214fa49476bf
    214fa4947609:	47 8b bc 20 30 05 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x530]
    214fa4947611:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    214fa494761a:	0f 85 9f 00 00 00                               	jne    0x214fa49476bf
    214fa4947620:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
    214fa4947628:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    214fa4947631:	0f 85 88 00 00 00                               	jne    0x214fa49476bf
    214fa4947637:	47 8b bc 20 70 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3770]
    214fa494763f:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    214fa4947648:	0f 85 71 00 00 00                               	jne    0x214fa49476bf
    214fa494764e:	47 8b bc 20 74 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3774]
    214fa4947656:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    214fa494765f:	0f 85 5a 00 00 00                               	jne    0x214fa49476bf
    214fa4947665:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
    214fa4947669:	41 8b d7                                        	mov    edx,r15d
    214fa494766c:	4c 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r11
    214fa4947673:	45 8b 9c 10 30 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x130]
    214fa494767b:	41 83 bc 10 30 01 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x130],0x0
    214fa4947684:	0f 84 16 00 00 00                               	je     0x214fa49476a0
    214fa494768a:	45 8b 9c 10 34 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x134]
    214fa4947692:	41 83 eb 01                                     	sub    r11d,0x1
    214fa4947696:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa494769a:	0f 87 11 00 00 00                               	ja     0x214fa49476b1
    214fa49476a0:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa49476a5:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    214fa49476ac:	e9 10 00 00 00                                  	jmp    0x214fa49476c1
    214fa49476b1:	33 d2                                           	xor    edx,edx
    214fa49476b3:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
    214fa49476ba:	e9 02 00 00 00                                  	jmp    0x214fa49476c1
    214fa49476bf:	33 d2                                           	xor    edx,edx
    214fa49476c1:	4c 8b bd 30 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xd0]
    214fa49476c8:	4c 0f af bd 08 ff ff ff                         	imul   r15,QWORD PTR [rbp-0xf8]
    214fa49476d0:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
    214fa49476d7:	48 8b 55 88                                     	mov    rdx,QWORD PTR [rbp-0x78]
    214fa49476db:	48 0f af 95 18 ff ff ff                         	imul   rdx,QWORD PTR [rbp-0xe8]
    214fa49476e3:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
    214fa49476ea:	48 8b 95 10 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xf0]
    214fa49476f1:	48 0f af d0                                     	imul   rdx,rax
    214fa49476f5:	48 8b 85 78 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x88]
    214fa49476fc:	48 0f af c7                                     	imul   rax,rdi
    214fa4947700:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    214fa4947707:	48 0f af fe                                     	imul   rdi,rsi
    214fa494770b:	48 8b b5 28 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xd8]
    214fa4947712:	48 0f af f1                                     	imul   rsi,rcx
    214fa4947716:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494771b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa4947721:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa4947727:	c4 41 2a 5e c9                                  	vdivss xmm9,xmm10,xmm9
    214fa494772c:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
    214fa4947731:	48 8b 8d 10 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1f0]
    214fa4947738:	c4 41 7a 10 64 08 1c                            	vmovss xmm12,DWORD PTR [r8+rcx*1+0x1c]
    214fa494773f:	48 89 7d 88                                     	mov    QWORD PTR [rbp-0x78],rdi
    214fa4947743:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    214fa494774a:	c4 41 7a 10 6c 38 1c                            	vmovss xmm13,DWORD PTR [r8+rdi*1+0x1c]
    214fa4947751:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    214fa4947758:	c4 41 7a 10 74 08 1c                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x1c]
    214fa494775f:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
    214fa4947766:	48 8b bd 58 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa8]
    214fa494776d:	48 03 f9                                        	add    rdi,rcx
    214fa4947770:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
    214fa4947777:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    214fa494777e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    214fa4947785:	48 03 f9                                        	add    rdi,rcx
    214fa4947788:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    214fa494778f:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
    214fa4947796:	48 8b 8d 48 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb8]
    214fa494779d:	48 03 f9                                        	add    rdi,rcx
    214fa49477a0:	48 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rdi
    214fa49477a7:	48 8b bd b0 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x150]
    214fa49477ae:	48 8b 4d 98                                     	mov    rcx,QWORD PTR [rbp-0x68]
    214fa49477b2:	48 03 f9                                        	add    rdi,rcx
    214fa49477b5:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    214fa49477b9:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    214fa49477c0:	48 8b 8d c8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x138]
    214fa49477c7:	48 03 f9                                        	add    rdi,rcx
    214fa49477ca:	49 03 d9                                        	add    rbx,r9
    214fa49477cd:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa49477d1:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
    214fa49477d9:	c5 7b 11 8d 28 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d8],xmm9
    214fa49477e1:	c5 7b 11 a5 e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm12
    214fa49477e9:	c5 7b 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm13
    214fa49477f1:	c5 7b 11 b5 18 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1e8],xmm14
    214fa49477f9:	4c 89 8d 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],r9
    214fa4947800:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
    214fa4947809:	0f 85 0a 00 00 00                               	jne    0x214fa4947819
    214fa494780f:	33 c9                                           	xor    ecx,ecx
    214fa4947811:	44 8b d9                                        	mov    r11d,ecx
    214fa4947814:	e9 47 01 00 00                                  	jmp    0x214fa4947960
    214fa4947819:	43 8b 8c 20 c8 3c 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x3cc8]
    214fa4947821:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
    214fa494782a:	75 e3                                           	jne    0x214fa494780f
    214fa494782c:	43 8b 8c 20 ec 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xec]
    214fa4947834:	43 83 bc 20 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xec],0x0
    214fa494783d:	75 d0                                           	jne    0x214fa494780f
    214fa494783f:	43 8b 8c 20 80 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x80]
    214fa4947847:	47 0b 9c 20 80 00 00 00                         	or     r11d,DWORD PTR [r8+r12*1+0x80]
    214fa494784f:	0f 85 5c 00 00 00                               	jne    0x214fa49478b1
    214fa4947855:	47 8b 9c 20 30 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x530]
    214fa494785d:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
    214fa4947866:	0f 85 45 00 00 00                               	jne    0x214fa49478b1
    214fa494786c:	47 8b 9c 20 70 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3770]
    214fa4947874:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
    214fa494787d:	0f 85 2e 00 00 00                               	jne    0x214fa49478b1
    214fa4947883:	47 8b 9c 20 74 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3774]
    214fa494788b:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
    214fa4947894:	0f 85 17 00 00 00                               	jne    0x214fa49478b1
    214fa494789a:	47 8b 9c 20 20 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x520]
    214fa49478a2:	43 83 bc 20 20 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x520],0x0
    214fa49478ab:	0f 85 0d 00 00 00                               	jne    0x214fa49478be
    214fa49478b1:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa49478b6:	45 33 db                                        	xor    r11d,r11d
    214fa49478b9:	e9 a2 00 00 00                                  	jmp    0x214fa4947960
    214fa49478be:	47 8b 9c 20 24 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x524]
    214fa49478c6:	43 83 bc 20 24 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x524],0x0
    214fa49478cf:	74 e0                                           	je     0x214fa49478b1
    214fa49478d1:	47 8b 9c 20 28 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x528]
    214fa49478d9:	43 83 bc 20 28 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x528],0x0
    214fa49478e2:	74 cd                                           	je     0x214fa49478b1
    214fa49478e4:	47 8b 9c 20 2c 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x52c]
    214fa49478ec:	43 83 bc 20 2c 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x52c],0x0
    214fa49478f5:	74 ba                                           	je     0x214fa49478b1
    214fa49478f7:	47 8b 5c 20 74                                  	mov    r11d,DWORD PTR [r8+r12*1+0x74]
    214fa49478fc:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
    214fa4947902:	0f 85 0d 00 00 00                               	jne    0x214fa4947915
    214fa4947908:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa494790d:	44 8b d9                                        	mov    r11d,ecx
    214fa4947910:	e9 4b 00 00 00                                  	jmp    0x214fa4947960
    214fa4947915:	47 8b 5c 20 78                                  	mov    r11d,DWORD PTR [r8+r12*1+0x78]
    214fa494791a:	33 c9                                           	xor    ecx,ecx
    214fa494791c:	41 81 fb 02 03 00 00                            	cmp    r11d,0x302
    214fa4947923:	0f 95 c1                                        	setne  cl
    214fa4947926:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa494792a:	41 0f 95 c3                                     	setne  r11b
    214fa494792e:	45 0f b6 db                                     	movzx  r11d,r11b
    214fa4947932:	44 85 d9                                        	test   ecx,r11d
    214fa4947935:	0f 85 76 ff ff ff                               	jne    0x214fa49478b1
    214fa494793b:	47 8b 5c 20 7c                                  	mov    r11d,DWORD PTR [r8+r12*1+0x7c]
    214fa4947940:	33 c9                                           	xor    ecx,ecx
    214fa4947942:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa4947946:	0f 94 c1                                        	sete   cl
    214fa4947949:	41 81 fb 03 03 00 00                            	cmp    r11d,0x303
    214fa4947950:	41 0f 94 c3                                     	sete   r11b
    214fa4947954:	45 0f b6 db                                     	movzx  r11d,r11b
    214fa4947958:	44 0b d9                                        	or     r11d,ecx
    214fa494795b:	b9 01 00 00 00                                  	mov    ecx,0x1
    214fa4947960:	4c 8b 85 30 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd0]
    214fa4947967:	4d 2b c7                                        	sub    r8,r15
    214fa494796a:	48 2b c2                                        	sub    rax,rdx
    214fa494796d:	48 2b 75 88                                     	sub    rsi,QWORD PTR [rbp-0x78]
    214fa4947971:	44 8b 7d c8                                     	mov    r15d,DWORD PTR [rbp-0x38]
    214fa4947975:	41 8d 97 dc 36 00 00                            	lea    edx,[r15+0x36dc]
    214fa494797c:	4c 89 9d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],r11
    214fa4947983:	45 8d 9f 68 36 00 00                            	lea    r11d,[r15+0x3668]
    214fa494798a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
    214fa4947991:	41 8d 97 f4 35 00 00                            	lea    edx,[r15+0x35f4]
    214fa4947998:	4c 8b 8d 20 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe0]
    214fa494799f:	49 c1 e1 09                                     	shl    r9,0x9
    214fa49479a3:	48 89 8d 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rcx
    214fa49479aa:	48 8b 8d 18 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xe8]
    214fa49479b1:	48 c1 e1 09                                     	shl    rcx,0x9
    214fa49479b5:	4c 89 85 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r8
    214fa49479bc:	4c 8b 45 90                                     	mov    r8,QWORD PTR [rbp-0x70]
    214fa49479c0:	49 c1 e0 09                                     	shl    r8,0x9
    214fa49479c4:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    214fa49479cb:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
    214fa49479d2:	48 c1 e6 09                                     	shl    rsi,0x9
    214fa49479d6:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
    214fa49479da:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
    214fa49479e1:	49 c1 e0 09                                     	shl    r8,0x9
    214fa49479e5:	48 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rax
    214fa49479ec:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
    214fa49479f3:	48 c1 e0 09                                     	shl    rax,0x9
    214fa49479f7:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
    214fa49479fe:	4c 8b 8d f8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x308]
    214fa4947a05:	4c 2b 8d f0 fc ff ff                            	sub    r9,QWORD PTR [rbp-0x310]
    214fa4947a0c:	4c 89 9d 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],r11
    214fa4947a13:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
    214fa4947a1a:	4c 2b 9d d0 fc ff ff                            	sub    r11,QWORD PTR [rbp-0x330]
    214fa4947a21:	4c 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r8
    214fa4947a28:	44 8b 45 b0                                     	mov    r8d,DWORD PTR [rbp-0x50]
    214fa4947a2c:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
    214fa4947a33:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    214fa4947a37:	44 8b 45 b8                                     	mov    r8d,DWORD PTR [rbp-0x48]
    214fa4947a3b:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
    214fa4947a42:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    214fa4947a46:	44 8b 45 c0                                     	mov    r8d,DWORD PTR [rbp-0x40]
    214fa4947a4a:	4c 89 9d 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],r11
    214fa4947a51:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
    214fa4947a55:	45 8d 87 80 35 00 00                            	lea    r8d,[r15+0x3580]
    214fa4947a5c:	4c 89 85 b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r8
    214fa4947a63:	45 8d 87 cc 3c 00 00                            	lea    r8d,[r15+0x3ccc]
    214fa4947a6a:	48 f7 d7                                        	not    rdi
    214fa4947a6d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    214fa4947a74:	49 f7 d7                                        	not    r15
    214fa4947a77:	48 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rdi
    214fa4947a7e:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
    214fa4947a85:	48 f7 d7                                        	not    rdi
    214fa4947a88:	48 f7 db                                        	neg    rbx
    214fa4947a8b:	48 89 9d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rbx
    214fa4947a92:	48 8b 9d 70 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x90]
    214fa4947a99:	48 f7 db                                        	neg    rbx
    214fa4947a9c:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
    214fa4947aa3:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
    214fa4947aa7:	48 f7 df                                        	neg    rdi
    214fa4947aaa:	48 89 bd 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],rdi
    214fa4947ab1:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa4947ab4:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
    214fa4947abb:	44 8d 47 30                                     	lea    r8d,[rdi+0x30]
    214fa4947abf:	4c 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],r8
    214fa4947ac6:	44 8d 47 20                                     	lea    r8d,[rdi+0x20]
    214fa4947aca:	4c 89 85 b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r8
    214fa4947ad1:	44 8d 47 10                                     	lea    r8d,[rdi+0x10]
    214fa4947ad5:	c5 79 7e df                                     	vmovd  edi,xmm11
    214fa4947ad9:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
    214fa4947ae0:	c4 63 79 16 df 01                               	vpextrd edi,xmm11,0x1
    214fa4947ae6:	c4 62 79 18 de                                  	vbroadcastss xmm11,xmm6
    214fa4947aeb:	c4 c2 79 18 cc                                  	vbroadcastss xmm1,xmm12
    214fa4947af0:	c4 c2 79 18 dd                                  	vbroadcastss xmm3,xmm13
    214fa4947af5:	c4 c2 79 18 e6                                  	vbroadcastss xmm4,xmm14
    214fa4947afa:	c4 c2 79 18 e9                                  	vbroadcastss xmm5,xmm9
    214fa4947aff:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
    214fa4947b06:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
    214fa4947b0a:	48 89 b5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rsi
    214fa4947b11:	48 89 85 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rax
    214fa4947b18:	4c 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r9
    214fa4947b1f:	4c 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r11
    214fa4947b26:	4c 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r15
    214fa4947b2d:	48 89 9d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rbx
    214fa4947b34:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
    214fa4947b3b:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
    214fa4947b3f:	c5 78 11 9d 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm11
    214fa4947b47:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
    214fa4947b4f:	c5 f8 11 9d 10 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2f0],xmm3
    214fa4947b57:	c5 f8 11 a5 e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm4
    214fa4947b5f:	c5 f8 11 ad 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm5
    214fa4947b67:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa4947b6b:	e9 2d 00 00 00                                  	jmp    0x214fa4947b9d
    214fa4947b70:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4947b79:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    214fa4947b80:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
    214fa4947b87:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
    214fa4947b8e:	4c 89 bd 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r15
    214fa4947b95:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa4947b99:	4c 89 65 d8                                     	mov    QWORD PTR [rbp-0x28],r12
    214fa4947b9d:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
    214fa4947ba1:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa4947ba6:	0f 85 96 7d 00 00                               	jne    0x214fa494f942
    214fa4947bac:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
    214fa4947bb0:	b8 0f 00 00 00                                  	mov    eax,0xf
    214fa4947bb5:	be 03 00 00 00                                  	mov    esi,0x3
    214fa4947bba:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
    214fa4947bbe:	0f 4c f0                                        	cmovl  esi,eax
    214fa4947bc1:	46 8d 1c 8d 00 00 00 00                         	lea    r11d,[r9*4+0x0]
    214fa4947bc9:	41 83 e3 7c                                     	and    r11d,0x7c
    214fa4947bcd:	46 8d 0c 85 00 00 00 00                         	lea    r9d,[r8*4+0x0]
    214fa4947bd5:	41 83 e1 7c                                     	and    r9d,0x7c
    214fa4947bd9:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
    214fa4947be0:	48 89 b5 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rsi
    214fa4947be7:	4c 89 9d 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r11
    214fa4947bee:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
    214fa4947bf5:	4c 8b 95 38 fc ff ff                            	mov    r10,QWORD PTR [rbp-0x3c8]
    214fa4947bfc:	4c 89 95 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],r10
    214fa4947c03:	4c 8b 95 10 ff ff ff                            	mov    r10,QWORD PTR [rbp-0xf0]
    214fa4947c0a:	4c 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r10
    214fa4947c11:	4c 8b c8                                        	mov    r9,rax
    214fa4947c14:	48 8b 85 80 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x380]
    214fa4947c1b:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
    214fa4947c1f:	e9 31 00 00 00                                  	jmp    0x214fa4947c55
    214fa4947c24:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4947c2d:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4947c36:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa4947c3f:	90                                              	nop
    214fa4947c40:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
    214fa4947c47:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
    214fa4947c4e:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa4947c52:	45 8b c3                                        	mov    r8d,r11d
    214fa4947c55:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    214fa4947c5c:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    214fa4947c63:	4c 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r8
    214fa4947c6a:	48 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rax
    214fa4947c71:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa4947c76:	0f 85 0f 7d 00 00                               	jne    0x214fa494f98b
    214fa4947c7c:	48 8b f0                                        	mov    rsi,rax
    214fa4947c7f:	48 2b b5 98 fc ff ff                            	sub    rsi,QWORD PTR [rbp-0x368]
    214fa4947c86:	48 3b b5 20 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x3e0]
    214fa4947c8d:	0f 8c 4b 02 00 00                               	jl     0x214fa4947ede
    214fa4947c93:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
    214fa4947c9a:	4c 2b a5 30 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x3d0]
    214fa4947ca1:	4c 3b a5 90 fd ff ff                            	cmp    r12,QWORD PTR [rbp-0x270]
    214fa4947ca8:	0f 8c 30 02 00 00                               	jl     0x214fa4947ede
    214fa4947cae:	4c 8b bd 40 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc0]
    214fa4947cb5:	4c 2b bd 28 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x3d8]
    214fa4947cbc:	4c 3b bd 48 fc ff ff                            	cmp    r15,QWORD PTR [rbp-0x3b8]
    214fa4947cc3:	0f 8c 15 02 00 00                               	jl     0x214fa4947ede
    214fa4947cc9:	41 8d 40 01                                     	lea    eax,[r8+0x1]
    214fa4947ccd:	41 b8 05 00 00 00                               	mov    r8d,0x5
    214fa4947cd3:	3b 85 70 ff ff ff                               	cmp    eax,DWORD PTR [rbp-0x90]
    214fa4947cd9:	45 0f 4c c1                                     	cmovl  r8d,r9d
    214fa4947cdd:	8b 9d 60 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a0]
    214fa4947ce3:	41 23 d8                                        	and    ebx,r8d
    214fa4947ce6:	48 3b b5 68 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x398]
    214fa4947ced:	0f 8e 29 00 00 00                               	jle    0x214fa4947d1c
    214fa4947cf3:	4c 3b a5 c0 fe ff ff                            	cmp    r12,QWORD PTR [rbp-0x140]
    214fa4947cfa:	0f 8e 1c 00 00 00                               	jle    0x214fa4947d1c
    214fa4947d00:	4d 3b df                                        	cmp    r11,r15
    214fa4947d03:	0f 8d 13 00 00 00                               	jge    0x214fa4947d1c
    214fa4947d09:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    214fa4947d10:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    214fa4947d17:	e9 d7 01 00 00                                  	jmp    0x214fa4947ef3
    214fa4947d1c:	c4 c1 f9 6e c4                                  	vmovq  xmm0,r12
    214fa4947d21:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    214fa4947d25:	4d 8b c4                                        	mov    r8,r12
    214fa4947d28:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    214fa4947d2f:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    214fa4947d35:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    214fa4947d39:	c5 c1 73 f7 1f                                  	vpsllq xmm7,xmm7,0x1f
    214fa4947d3e:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa4947d42:	c4 62 79 37 df                                  	vpcmpgtq xmm11,xmm0,xmm7
    214fa4947d47:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
    214fa4947d4b:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
    214fa4947d50:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4947d55:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    214fa4947d5a:	c4 c1 21 73 d3 21                               	vpsrlq xmm11,xmm11,0x21
    214fa4947d60:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa4947d65:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    214fa4947d6a:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    214fa4947d6f:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    214fa4947d73:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4947d78:	4c 03 e7                                        	add    r12,rdi
    214fa4947d7b:	c4 c1 f9 6e cc                                  	vmovq  xmm1,r12
    214fa4947d80:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    214fa4947d84:	4c 03 c7                                        	add    r8,rdi
    214fa4947d87:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    214fa4947d8d:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    214fa4947d92:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    214fa4947d96:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    214fa4947d9a:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    214fa4947d9f:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    214fa4947da4:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    214fa4947da9:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    214fa4947dad:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    214fa4947db2:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    214fa4947db7:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    214fa4947dbb:	c4 e1 f9 6e c6                                  	vmovq  xmm0,rsi
    214fa4947dc0:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    214fa4947dc4:	4c 8b e6                                        	mov    r12,rsi
    214fa4947dc7:	4c 2b a5 d0 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x330]
    214fa4947dce:	c4 c3 f9 22 c4 01                               	vpinsrq xmm0,xmm0,r12,0x1
    214fa4947dd4:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    214fa4947dd9:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    214fa4947ddd:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    214fa4947de1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4947de6:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    214fa4947deb:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    214fa4947df0:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    214fa4947df4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4947df9:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
    214fa4947e00:	48 03 f7                                        	add    rsi,rdi
    214fa4947e03:	c4 e1 f9 6e ce                                  	vmovq  xmm1,rsi
    214fa4947e08:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    214fa4947e0c:	4c 03 e7                                        	add    r12,rdi
    214fa4947e0f:	c4 c3 f1 22 cc 01                               	vpinsrq xmm1,xmm1,r12,0x1
    214fa4947e15:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    214fa4947e1a:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    214fa4947e1e:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    214fa4947e22:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    214fa4947e27:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
    214fa4947e2c:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    214fa4947e31:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
    214fa4947e35:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
    214fa4947e3a:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
    214fa4947e3f:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
    214fa4947e43:	45 0b e0                                        	or     r12d,r8d
    214fa4947e46:	c4 c1 f9 6e c7                                  	vmovq  xmm0,r15
    214fa4947e4b:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
    214fa4947e4f:	4d 8b c7                                        	mov    r8,r15
    214fa4947e52:	4c 2b 85 e8 fe ff ff                            	sub    r8,QWORD PTR [rbp-0x118]
    214fa4947e59:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
    214fa4947e5f:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
    214fa4947e64:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
    214fa4947e68:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    214fa4947e6c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4947e71:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
    214fa4947e76:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    214fa4947e7b:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
    214fa4947e7f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa4947e84:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    214fa4947e8b:	4c 03 fe                                        	add    r15,rsi
    214fa4947e8e:	c4 c1 f9 6e cf                                  	vmovq  xmm1,r15
    214fa4947e93:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
    214fa4947e97:	4c 03 c6                                        	add    r8,rsi
    214fa4947e9a:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
    214fa4947ea0:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
    214fa4947ea5:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
    214fa4947ea9:	c5 f1 db fa                                     	vpand  xmm7,xmm1,xmm2
    214fa4947ead:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa4947eb2:	c4 e2 21 37 cf                                  	vpcmpgtq xmm1,xmm11,xmm7
    214fa4947eb7:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
    214fa4947ebc:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
    214fa4947ec0:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa4947ec5:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
    214fa4947eca:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
    214fa4947ece:	45 0b c4                                        	or     r8d,r12d
    214fa4947ed1:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    214fa4947ed5:	44 23 c3                                        	and    r8d,ebx
    214fa4947ed8:	0f 85 12 00 00 00                               	jne    0x214fa4947ef0
    214fa4947ede:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa4947ee2:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa4947ee6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa4947eeb:	e9 ba 77 00 00                                  	jmp    0x214fa494f6aa
    214fa4947ef0:	49 8b d8                                        	mov    rbx,r8
    214fa4947ef3:	45 33 c0                                        	xor    r8d,r8d
    214fa4947ef6:	3b 45 10                                        	cmp    eax,DWORD PTR [rbp+0x10]
    214fa4947ef9:	41 0f 9c c0                                     	setl   r8b
    214fa4947efd:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
    214fa4947f04:	48 89 9d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],rbx
    214fa4947f0b:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
    214fa4947f12:	45 85 e0                                        	test   r8d,r12d
    214fa4947f15:	0f 85 6d 5b 00 00                               	jne    0x214fa494da88
    214fa4947f1b:	83 bd 78 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x388],0x0
    214fa4947f22:	0f 85 70 2a 00 00                               	jne    0x214fa494a998
    214fa4947f28:	f6 c3 01                                        	test   bl,0x1
    214fa4947f2b:	0f 85 28 00 00 00                               	jne    0x214fa4947f59
    214fa4947f31:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa4947f35:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    214fa4947f3b:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    214fa4947f3f:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    214fa4947f46:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    214fa4947f4d:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    214fa4947f54:	e9 86 0a 00 00                                  	jmp    0x214fa49489df
    214fa4947f59:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa4947f5d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    214fa4947f61:	43 8b bc 07 c8 3c 00 00                         	mov    edi,DWORD PTR [r15+r8*1+0x3cc8]
    214fa4947f69:	43 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0x3cc8],0x0
    214fa4947f72:	0f 84 66 00 00 00                               	je     0x214fa4947fde
    214fa4947f78:	8b bd 68 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x98]
    214fa4947f7e:	c1 ef 03                                        	shr    edi,0x3
    214fa4947f81:	83 e7 03                                        	and    edi,0x3
    214fa4947f84:	0b bd 70 fc ff ff                               	or     edi,DWORD PTR [rbp-0x390]
    214fa4947f8a:	44 8b 9d 58 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3a8]
    214fa4947f91:	41 03 fb                                        	add    edi,r11d
    214fa4947f94:	41 0f b6 3c 3f                                  	movzx  edi,BYTE PTR [r15+rdi*1]
    214fa4947f99:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    214fa4947fa0:	41 83 e3 07                                     	and    r11d,0x7
    214fa4947fa4:	41 8b cb                                        	mov    ecx,r11d
    214fa4947fa7:	d3 e7                                           	shl    edi,cl
    214fa4947fa9:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    214fa4947fad:	40 f6 c7 80                                     	test   dil,0x80
    214fa4947fb1:	0f 85 20 00 00 00                               	jne    0x214fa4947fd7
    214fa4947fb7:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    214fa4947fbd:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    214fa4947fc4:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    214fa4947fcb:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    214fa4947fd2:	e9 08 0a 00 00                                  	jmp    0x214fa49489df
    214fa4947fd7:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    214fa4947fde:	c4 e1 82 2a 85 60 ff ff ff                      	vcvtsi2ss xmm0,xmm15,QWORD PTR [rbp-0xa0]
    214fa4947fe7:	c5 b2 59 c0                                     	vmulss xmm0,xmm9,xmm0
    214fa4947feb:	c5 8a 59 c8                                     	vmulss xmm1,xmm14,xmm0
    214fa4947fef:	c4 e1 82 2a bd 50 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xb0]
    214fa4947ff8:	c5 b2 59 ff                                     	vmulss xmm7,xmm9,xmm7
    214fa4947ffc:	c5 92 59 d7                                     	vmulss xmm2,xmm13,xmm7
    214fa4948000:	c5 72 58 da                                     	vaddss xmm11,xmm1,xmm2
    214fa4948004:	c5 2a 5c c8                                     	vsubss xmm9,xmm10,xmm0
    214fa4948008:	c5 32 5c cf                                     	vsubss xmm9,xmm9,xmm7
    214fa494800c:	c4 41 1a 59 e9                                  	vmulss xmm13,xmm12,xmm9
    214fa4948011:	c4 41 22 58 dd                                  	vaddss xmm11,xmm11,xmm13
    214fa4948016:	c4 41 78 2e c3                                  	vucomiss xmm8,xmm11
    214fa494801b:	73 9a                                           	jae    0x214fa4947fb7
    214fa494801d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    214fa4948024:	c4 41 32 59 4c 3f 18                            	vmulss xmm9,xmm9,DWORD PTR [r15+rdi*1+0x18]
    214fa494802b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    214fa4948032:	c4 c1 7a 59 44 0f 18                            	vmulss xmm0,xmm0,DWORD PTR [r15+rcx*1+0x18]
    214fa4948039:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    214fa4948040:	c4 81 42 59 7c 1f 18                            	vmulss xmm7,xmm7,DWORD PTR [r15+r11*1+0x18]
    214fa4948047:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    214fa494804b:	c5 b2 58 c0                                     	vaddss xmm0,xmm9,xmm0
    214fa494804f:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    214fa4948053:	47 8b 64 07 68                                  	mov    r12d,DWORD PTR [r15+r8*1+0x68]
    214fa4948058:	43 83 7c 07 68 00                               	cmp    DWORD PTR [r15+r8*1+0x68],0x0
    214fa494805e:	0f 85 0b 00 00 00                               	jne    0x214fa494806f
    214fa4948064:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    214fa494806a:	e9 c5 00 00 00                                  	jmp    0x214fa4948134
    214fa494806f:	47 8b a4 07 a4 00 00 00                         	mov    r12d,DWORD PTR [r15+r8*1+0xa4]
    214fa4948077:	43 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0xa4],0x0
    214fa4948080:	75 e2                                           	jne    0x214fa4948064
    214fa4948082:	47 8b 64 07 0c                                  	mov    r12d,DWORD PTR [r15+r8*1+0xc]
    214fa4948087:	43 8b 04 07                                     	mov    eax,DWORD PTR [r15+r8*1]
    214fa494808b:	0f af 45 a0                                     	imul   eax,DWORD PTR [rbp-0x60]
    214fa494808f:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    214fa4948093:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    214fa4948099:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    214fa494809d:	c4 81 7a 10 3c 27                               	vmovss xmm7,DWORD PTR [r15+r12*1]
    214fa49480a3:	47 8b 64 07 6c                                  	mov    r12d,DWORD PTR [r15+r8*1+0x6c]
    214fa49480a8:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    214fa49480af:	41 83 fc 08                                     	cmp    r12d,0x8
    214fa49480b3:	0f 83 0b 00 00 00                               	jae    0x214fa49480c4
    214fa49480b9:	4c 8d 15 e8 7c 00 00                            	lea    r10,[rip+0x7ce8]        # 0x214fa494fda8
    214fa49480c0:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    214fa49480c4:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa49480c8:	0f 87 66 00 00 00                               	ja     0x214fa4948134
    214fa49480ce:	e9 0c 09 00 00                                  	jmp    0x214fa49489df
    214fa49480d3:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    214fa49480d7:	0f 83 57 00 00 00                               	jae    0x214fa4948134
    214fa49480dd:	e9 fd 08 00 00                                  	jmp    0x214fa49489df
    214fa49480e2:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    214fa49480e6:	0f 8a 48 00 00 00                               	jp     0x214fa4948134
    214fa49480ec:	0f 84 ed 08 00 00                               	je     0x214fa49489df
    214fa49480f2:	e9 3d 00 00 00                                  	jmp    0x214fa4948134
    214fa49480f7:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    214fa49480fb:	0f 87 33 00 00 00                               	ja     0x214fa4948134
    214fa4948101:	e9 d9 08 00 00                                  	jmp    0x214fa49489df
    214fa4948106:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa494810a:	0f 83 24 00 00 00                               	jae    0x214fa4948134
    214fa4948110:	e9 ca 08 00 00                                  	jmp    0x214fa49489df
    214fa4948115:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
    214fa4948119:	0f 8a c0 08 00 00                               	jp     0x214fa49489df
    214fa494811f:	0f 84 0f 00 00 00                               	je     0x214fa4948134
    214fa4948125:	e9 b5 08 00 00                                  	jmp    0x214fa49489df
    214fa494812a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa494812e:	0f 86 ab 08 00 00                               	jbe    0x214fa49489df
    214fa4948134:	c4 c1 2a 5e fb                                  	vdivss xmm7,xmm10,xmm11
    214fa4948139:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
    214fa494813d:	c4 62 79 18 cf                                  	vbroadcastss xmm9,xmm7
    214fa4948142:	c4 41 7a 6f 5c 3f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rdi*1+0x20]
    214fa4948149:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    214fa4948151:	c4 c2 79 18 c5                                  	vbroadcastss xmm0,xmm13
    214fa4948156:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    214fa494815a:	c4 41 7a 6f 5c 0f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rcx*1+0x20]
    214fa4948161:	c4 e2 79 18 f1                                  	vbroadcastss xmm6,xmm1
    214fa4948166:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
    214fa494816a:	c4 62 79 18 da                                  	vbroadcastss xmm11,xmm2
    214fa494816f:	c5 fb 11 bd 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm7
    214fa4948177:	c4 81 7a 6f 7c 1f 20                            	vmovdqu xmm7,XMMWORD PTR [r15+r11*1+0x20]
    214fa494817e:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    214fa4948182:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
    214fa4948186:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa494818a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa494818e:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    214fa4948192:	c4 81 7a 7f 84 27 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+r12*1+0x190],xmm0
    214fa494819c:	c4 c1 7a 10 b4 3f 98 00 00 00                   	vmovss xmm6,DWORD PTR [r15+rdi*1+0x98]
    214fa49481a6:	c4 c1 7a 10 bc 0f 98 00 00 00                   	vmovss xmm7,DWORD PTR [r15+rcx*1+0x98]
    214fa49481b0:	c4 01 7a 10 8c 1f 98 00 00 00                   	vmovss xmm9,DWORD PTR [r15+r11*1+0x98]
    214fa49481ba:	c4 81 7a 7f 04 27                               	vmovdqu XMMWORD PTR [r15+r12*1],xmm0
    214fa49481c0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa49481c7:	45 8b 84 3f 34 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x134]
    214fa49481cf:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    214fa49481d3:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    214fa49481db:	c5 fb 11 8d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm1
    214fa49481e3:	c5 7b 11 ad 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm13
    214fa49481eb:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    214fa49481f3:	c5 fb 11 bd b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm7
    214fa49481fb:	c5 7b 11 8d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm9
    214fa4948203:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa4948207:	0f 86 5c 04 00 00                               	jbe    0x214fa4948669
    214fa494820d:	45 8b 84 3f 30 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x130]
    214fa4948215:	41 83 bc 3f 30 01 00 00 00                      	cmp    DWORD PTR [r15+rdi*1+0x130],0x0
    214fa494821e:	0f 85 0b 00 00 00                               	jne    0x214fa494822f
    214fa4948224:	41 8b cc                                        	mov    ecx,r12d
    214fa4948227:	4d 8b c7                                        	mov    r8,r15
    214fa494822a:	e9 f9 04 00 00                                  	jmp    0x214fa4948728
    214fa494822f:	45 8d 84 24 90 00 00 00                         	lea    r8d,[r12+0x90]
    214fa4948237:	45 8d 5c 24 70                                  	lea    r11d,[r12+0x70]
    214fa494823c:	41 53                                           	push   r11
    214fa494823e:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    214fa4948245:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
    214fa494824c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948250:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa4948253:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa4948256:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    214fa4948259:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa494825c:	c4 c1 79 28 dd                                  	vmovapd xmm3,xmm13
    214fa4948261:	c5 fb 10 a5 18 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xe8]
    214fa4948269:	45 8b c8                                        	mov    r9d,r8d
    214fa494826c:	e8 a7 ff ed ff                                  	call   0x214fa4828218
    214fa4948271:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4948275:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494827c:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    214fa4948284:	45 85 db                                        	test   r11d,r11d
    214fa4948287:	0f 85 62 01 00 00                               	jne    0x214fa49483ef
    214fa494828d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948290:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    214fa4948295:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    214fa494829b:	0f 84 43 00 00 00                               	je     0x214fa49482e4
    214fa49482a1:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa49482a7:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa49482ab:	41 53                                           	push   r11
    214fa49482ad:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49482b1:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    214fa49482b7:	33 d2                                           	xor    edx,edx
    214fa49482b9:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    214fa49482c0:	e8 7b ff ed ff                                  	call   0x214fa4828240
    214fa49482c5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa49482c8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49482cc:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa49482d3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa49482dd:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa49482e4:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    214fa49482e9:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    214fa49482ef:	0f 84 46 00 00 00                               	je     0x214fa494833b
    214fa49482f5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa49482fb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa49482ff:	41 53                                           	push   r11
    214fa4948301:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948305:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    214fa494830b:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa4948310:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    214fa4948317:	e8 24 ff ed ff                                  	call   0x214fa4828240
    214fa494831c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494831f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4948323:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa494832a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4948334:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494833b:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    214fa4948340:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    214fa4948346:	0f 84 46 00 00 00                               	je     0x214fa4948392
    214fa494834c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa4948352:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa4948356:	41 53                                           	push   r11
    214fa4948358:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494835c:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    214fa4948362:	ba 02 00 00 00                                  	mov    edx,0x2
    214fa4948367:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    214fa494836e:	e8 cd fe ed ff                                  	call   0x214fa4828240
    214fa4948373:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948376:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494837a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa4948381:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa494838b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4948392:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    214fa4948397:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    214fa494839d:	0f 84 85 03 00 00                               	je     0x214fa4948728
    214fa49483a3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa49483a9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa49483ad:	41 53                                           	push   r11
    214fa49483af:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49483b3:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    214fa49483b9:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa49483be:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
    214fa49483c5:	e8 76 fe ed ff                                  	call   0x214fa4828240
    214fa49483ca:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa49483cd:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa49483d1:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    214fa49483d7:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    214fa49483e0:	4c 8b c7                                        	mov    r8,rdi
    214fa49483e3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa49483ea:	e9 39 03 00 00                                  	jmp    0x214fa4948728
    214fa49483ef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa49483f2:	4d 8b e0                                        	mov    r12,r8
    214fa49483f5:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    214fa49483ff:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    214fa4948405:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    214fa494840a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa494840e:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    214fa4948415:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    214fa4948419:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494841d:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    214fa4948427:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    214fa494842b:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    214fa4948431:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    214fa4948435:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    214fa494843a:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    214fa4948444:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    214fa4948448:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    214fa494844f:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    214fa4948453:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    214fa4948457:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    214fa494845b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa494845f:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    214fa4948465:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    214fa494846a:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    214fa494846e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa4948472:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa4948477:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa494847c:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    214fa4948480:	0f 87 09 00 00 00                               	ja     0x214fa494848f
    214fa4948486:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa494848a:	e9 04 00 00 00                                  	jmp    0x214fa4948493
    214fa494848f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa4948493:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa4948498:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    214fa494849c:	0f 87 09 00 00 00                               	ja     0x214fa49484ab
    214fa49484a2:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa49484a6:	e9 05 00 00 00                                  	jmp    0x214fa49484b0
    214fa49484ab:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    214fa49484b0:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa49484b5:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa49484b9:	0f 84 a4 00 00 00                               	je     0x214fa4948563
    214fa49484bf:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    214fa49484c3:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    214fa49484cd:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa49484d1:	0f 87 09 00 00 00                               	ja     0x214fa49484e0
    214fa49484d7:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa49484db:	e9 04 00 00 00                                  	jmp    0x214fa49484e4
    214fa49484e0:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa49484e4:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa49484e8:	0f 87 0a 00 00 00                               	ja     0x214fa49484f8
    214fa49484ee:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa49484f3:	e9 05 00 00 00                                  	jmp    0x214fa49484fd
    214fa49484f8:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa49484fd:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    214fa4948501:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4948506:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa494850b:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa494850f:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
    214fa4948519:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa494851e:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa4948523:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa4948527:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    214fa4948531:	41 83 fb 03                                     	cmp    r11d,0x3
    214fa4948535:	0f 85 04 00 00 00                               	jne    0x214fa494853f
    214fa494853b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    214fa494853f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    214fa4948544:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa4948548:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa494854c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    214fa4948556:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    214fa494855b:	4d 8b df                                        	mov    r11,r15
    214fa494855e:	e9 cc 00 00 00                                  	jmp    0x214fa494862f
    214fa4948563:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    214fa494856a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa494856e:	0f 87 09 00 00 00                               	ja     0x214fa494857d
    214fa4948574:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa4948578:	e9 04 00 00 00                                  	jmp    0x214fa4948581
    214fa494857d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa4948581:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4948585:	0f 87 0a 00 00 00                               	ja     0x214fa4948595
    214fa494858b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa4948590:	e9 05 00 00 00                                  	jmp    0x214fa494859a
    214fa4948595:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa494859a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    214fa49485a4:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    214fa49485aa:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    214fa49485af:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa49485b3:	0f 87 09 00 00 00                               	ja     0x214fa49485c2
    214fa49485b9:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    214fa49485bd:	e9 04 00 00 00                                  	jmp    0x214fa49485c6
    214fa49485c2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    214fa49485c6:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa49485ca:	0f 87 0a 00 00 00                               	ja     0x214fa49485da
    214fa49485d0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    214fa49485d5:	e9 05 00 00 00                                  	jmp    0x214fa49485df
    214fa49485da:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa49485df:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    214fa49485e9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa49485ee:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa49485f2:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    214fa49485fc:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa4948601:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa4948606:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa494860a:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x214fa4948511
    214fa4948611:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4948616:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa494861b:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa494861f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa4948623:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa4948627:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa494862b:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    214fa494862f:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa4948634:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa4948638:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x214fa4948511
    214fa494863f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa4948644:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa4948649:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa494864d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    214fa4948657:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    214fa4948661:	4d 8b c4                                        	mov    r8,r12
    214fa4948664:	e9 bf 00 00 00                                  	jmp    0x214fa4948728
    214fa4948669:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    214fa4948670:	c4 81 7a 10 44 1f 50                            	vmovss xmm0,DWORD PTR [r15+r11*1+0x50]
    214fa4948677:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
    214fa494867c:	48 8b d1                                        	mov    rdx,rcx
    214fa494867f:	c4 41 7a 10 5c 17 50                            	vmovss xmm11,DWORD PTR [r15+rdx*1+0x50]
    214fa4948686:	c5 22 59 d9                                     	vmulss xmm11,xmm11,xmm1
    214fa494868a:	48 8b 8d 00 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x200]
    214fa4948691:	c4 c1 6a 59 74 0f 50                            	vmulss xmm6,xmm2,DWORD PTR [r15+rcx*1+0x50]
    214fa4948698:	c5 a2 58 f6                                     	vaddss xmm6,xmm11,xmm6
    214fa494869c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa49486a0:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    214fa49486a8:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa49486ac:	c4 01 7a 10 5c 1f 54                            	vmovss xmm11,DWORD PTR [r15+r11*1+0x54]
    214fa49486b3:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
    214fa49486b8:	c5 fb 11 85 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm0
    214fa49486c0:	c4 c1 7a 10 44 17 54                            	vmovss xmm0,DWORD PTR [r15+rdx*1+0x54]
    214fa49486c7:	c5 fa 59 c1                                     	vmulss xmm0,xmm0,xmm1
    214fa49486cb:	c4 c1 6a 59 7c 0f 54                            	vmulss xmm7,xmm2,DWORD PTR [r15+rcx*1+0x54]
    214fa49486d2:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
    214fa49486d6:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    214fa49486da:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa49486de:	41 8d bc 24 90 00 00 00                         	lea    edi,[r12+0x90]
    214fa49486e6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49486ea:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa49486ed:	41 8b d0                                        	mov    edx,r8d
    214fa49486f0:	c5 fb 10 8d b8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x148]
    214fa49486f8:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa49486fc:	41 8b cc                                        	mov    ecx,r12d
    214fa49486ff:	8b df                                           	mov    ebx,edi
    214fa4948701:	e8 2a fe ed ff                                  	call   0x214fa4828530
    214fa4948706:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948709:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494870d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    214fa4948717:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4948721:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4948728:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494872c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    214fa4948734:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    214fa494873d:	0f 85 2a 00 00 00                               	jne    0x214fa494876d
    214fa4948743:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    214fa494874d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    214fa4948757:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    214fa4948761:	49 8b fb                                        	mov    rdi,r11
    214fa4948764:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    214fa4948768:	e9 dd 01 00 00                                  	jmp    0x214fa494894a
    214fa494876d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    214fa4948775:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    214fa494877d:	c5 fb 10 b5 b0 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x150]
    214fa4948785:	c5 ca 59 b5 30 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1d0]
    214fa494878d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    214fa4948795:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    214fa494879d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    214fa49487a1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa49487a5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    214fa49487ad:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa49487b1:	4c 8b 15 37 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb37]        # 0x214fa49472ef
    214fa49487b8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa49487bd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa49487c1:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa49487c5:	0f 87 04 00 00 00                               	ja     0x214fa49487cf
    214fa49487cb:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa49487cf:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    214fa49487d7:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    214fa49487de:	0f 85 28 00 00 00                               	jne    0x214fa494880c
    214fa49487e4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    214fa49487ee:	4c 8b 15 fa ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeafa]        # 0x214fa49472ef
    214fa49487f5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa49487fa:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    214fa49487fe:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948802:	e8 b1 1d ee ff                                  	call   0x214fa482a5b8
    214fa4948807:	e9 94 00 00 00                                  	jmp    0x214fa49488a0
    214fa494880c:	41 83 fc 01                                     	cmp    r12d,0x1
    214fa4948810:	0f 84 67 00 00 00                               	je     0x214fa494887d
    214fa4948816:	4d 8b d0                                        	mov    r10,r8
    214fa4948819:	4d 8b c3                                        	mov    r8,r11
    214fa494881c:	4d 8b da                                        	mov    r11,r10
    214fa494881f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    214fa4948829:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    214fa4948833:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    214fa4948838:	7a 06                                           	jp     0x214fa4948840
    214fa494883a:	0f 84 2a 00 00 00                               	je     0x214fa494886a
    214fa4948840:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa4948844:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    214fa4948849:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    214fa494884d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    214fa4948851:	0f 86 49 00 00 00                               	jbe    0x214fa49488a0
    214fa4948857:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa494885b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4948860:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4948865:	e9 5b 00 00 00                                  	jmp    0x214fa49488c5
    214fa494886a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa494886e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4948873:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4948878:	e9 44 00 00 00                                  	jmp    0x214fa49488c1
    214fa494887d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    214fa4948887:	4c 8b 15 61 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea61]        # 0x214fa49472ef
    214fa494888e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa4948893:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    214fa4948897:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494889b:	e8 18 1d ee ff                                  	call   0x214fa482a5b8
    214fa49488a0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa49488a4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa49488a9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa49488ae:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    214fa49488b2:	0f 87 09 00 00 00                               	ja     0x214fa49488c1
    214fa49488b8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    214fa49488bc:	e9 04 00 00 00                                  	jmp    0x214fa49488c5
    214fa49488c1:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa49488c5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa49488c8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49488cc:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    214fa49488d6:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    214fa49488da:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    214fa49488de:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    214fa49488e8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    214fa49488ed:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    214fa49488f7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    214fa4948901:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    214fa494890b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    214fa4948910:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    214fa494891a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    214fa4948924:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    214fa494892e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    214fa4948933:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    214fa494893d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    214fa4948941:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa4948945:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa494894a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    214fa4948954:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948958:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494895b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa4948961:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa4948964:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    214fa494896c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    214fa4948970:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    214fa4948974:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    214fa4948979:	e8 e2 f8 ed ff                                  	call   0x214fa4828260
    214fa494897e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa4948982:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa4948987:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    214fa494898d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
    214fa4948991:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa4948996:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494899c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa49489a2:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa49489a7:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    214fa49489ae:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    214fa49489b5:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
    214fa49489bc:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    214fa49489c2:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa49489ca:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa49489d2:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    214fa49489d9:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa49489df:	f6 c3 02                                        	test   bl,0x2
    214fa49489e2:	0f 85 26 00 00 00                               	jne    0x214fa4948a0e
    214fa49489e8:	4d 8b e7                                        	mov    r12,r15
    214fa49489eb:	4c 8b f9                                        	mov    r15,rcx
    214fa49489ee:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    214fa49489f4:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa49489fc:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa4948a04:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    214fa4948a09:	e9 b5 0a 00 00                                  	jmp    0x214fa49494c3
    214fa4948a0e:	4d 8b e7                                        	mov    r12,r15
    214fa4948a11:	47 8b bc 04 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x3cc8]
    214fa4948a19:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    214fa4948a22:	0f 84 75 00 00 00                               	je     0x214fa4948a9d
    214fa4948a28:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
    214fa4948a2f:	41 c1 ef 03                                     	shr    r15d,0x3
    214fa4948a33:	41 83 e7 03                                     	and    r15d,0x3
    214fa4948a37:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
    214fa4948a3d:	41 0b d7                                        	or     edx,r15d
    214fa4948a40:	44 8b bd 58 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3a8]
    214fa4948a47:	41 03 d7                                        	add    edx,r15d
    214fa4948a4a:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    214fa4948a4f:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    214fa4948a55:	83 e0 07                                        	and    eax,0x7
    214fa4948a58:	4c 8b d1                                        	mov    r10,rcx
    214fa4948a5b:	8b c8                                           	mov    ecx,eax
    214fa4948a5d:	49 8b c2                                        	mov    rax,r10
    214fa4948a60:	d3 e2                                           	shl    edx,cl
    214fa4948a62:	f6 c2 80                                        	test   dl,0x80
    214fa4948a65:	0f 85 29 00 00 00                               	jne    0x214fa4948a94
    214fa4948a6b:	4c 8b f8                                        	mov    r15,rax
    214fa4948a6e:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    214fa4948a74:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    214fa4948a7a:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa4948a82:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa4948a8a:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    214fa4948a8f:	e9 2f 0a 00 00                                  	jmp    0x214fa49494c3
    214fa4948a94:	48 8b c8                                        	mov    rcx,rax
    214fa4948a97:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    214fa4948a9d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    214fa4948aa4:	4c 2b bd d0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x330]
    214fa4948aab:	c4 c1 82 2a c7                                  	vcvtsi2ss xmm0,xmm15,r15
    214fa4948ab0:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa4948ab8:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    214fa4948abc:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
    214fa4948ac1:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    214fa4948ac5:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
    214fa4948acc:	4c 2b bd f0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x310]
    214fa4948ad3:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    214fa4948ad8:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    214fa4948add:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa4948ae5:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    214fa4948aea:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    214fa4948aee:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    214fa4948af2:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    214fa4948af7:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    214fa4948afb:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    214fa4948aff:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    214fa4948b04:	0f 83 b0 09 00 00                               	jae    0x214fa49494ba
    214fa4948b0a:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    214fa4948b11:	4c 8b f9                                        	mov    r15,rcx
    214fa4948b14:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    214fa4948b1b:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    214fa4948b22:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    214fa4948b27:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    214fa4948b2b:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    214fa4948b2f:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    214fa4948b34:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    214fa4948b3a:	0f 85 0b 00 00 00                               	jne    0x214fa4948b4b
    214fa4948b40:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    214fa4948b46:	e9 c5 00 00 00                                  	jmp    0x214fa4948c10
    214fa4948b4b:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    214fa4948b53:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    214fa4948b5c:	75 e2                                           	jne    0x214fa4948b40
    214fa4948b5e:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    214fa4948b63:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
    214fa4948b67:	0f af 4d a0                                     	imul   ecx,DWORD PTR [rbp-0x60]
    214fa4948b6b:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    214fa4948b6e:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    214fa4948b74:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
    214fa4948b77:	c4 41 7a 10 1c 14                               	vmovss xmm11,DWORD PTR [r12+rdx*1]
    214fa4948b7d:	43 8b 54 04 6c                                  	mov    edx,DWORD PTR [r12+r8*1+0x6c]
    214fa4948b82:	81 ea 00 02 00 00                               	sub    edx,0x200
    214fa4948b88:	83 fa 08                                        	cmp    edx,0x8
    214fa4948b8b:	0f 83 0b 00 00 00                               	jae    0x214fa4948b9c
    214fa4948b91:	4c 8d 15 d0 71 00 00                            	lea    r10,[rip+0x71d0]        # 0x214fa494fd68
    214fa4948b98:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    214fa4948b9c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa4948ba0:	0f 87 6a 00 00 00                               	ja     0x214fa4948c10
    214fa4948ba6:	e9 18 09 00 00                                  	jmp    0x214fa49494c3
    214fa4948bab:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa4948bb0:	0f 83 5a 00 00 00                               	jae    0x214fa4948c10
    214fa4948bb6:	e9 08 09 00 00                                  	jmp    0x214fa49494c3
    214fa4948bbb:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa4948bc0:	0f 8a 4a 00 00 00                               	jp     0x214fa4948c10
    214fa4948bc6:	0f 84 f7 08 00 00                               	je     0x214fa49494c3
    214fa4948bcc:	e9 3f 00 00 00                                  	jmp    0x214fa4948c10
    214fa4948bd1:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa4948bd6:	0f 87 34 00 00 00                               	ja     0x214fa4948c10
    214fa4948bdc:	e9 e2 08 00 00                                  	jmp    0x214fa49494c3
    214fa4948be1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa4948be5:	0f 83 25 00 00 00                               	jae    0x214fa4948c10
    214fa4948beb:	e9 d3 08 00 00                                  	jmp    0x214fa49494c3
    214fa4948bf0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa4948bf5:	0f 8a c8 08 00 00                               	jp     0x214fa49494c3
    214fa4948bfb:	0f 84 0f 00 00 00                               	je     0x214fa4948c10
    214fa4948c01:	e9 bd 08 00 00                                  	jmp    0x214fa49494c3
    214fa4948c06:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa4948c0a:	0f 86 b3 08 00 00                               	jbe    0x214fa49494c3
    214fa4948c10:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    214fa4948c15:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    214fa4948c1a:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    214fa4948c1f:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    214fa4948c26:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    214fa4948c2b:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    214fa4948c2f:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    214fa4948c36:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    214fa4948c3e:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    214fa4948c43:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    214fa4948c47:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    214fa4948c4c:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    214fa4948c53:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    214fa4948c57:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa4948c5b:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    214fa4948c5f:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa4948c63:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    214fa4948c66:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
    214fa4948c70:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    214fa4948c7a:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    214fa4948c84:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    214fa4948c8e:	c4 c1 7a 7f 04 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm0
    214fa4948c94:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4948c9b:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    214fa4948ca3:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    214fa4948ca7:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    214fa4948caf:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    214fa4948cb7:	c5 fb 11 a5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm4
    214fa4948cbf:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    214fa4948cc7:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    214fa4948ccf:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    214fa4948cd7:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    214fa4948cdf:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa4948ce3:	0f 86 4b 04 00 00                               	jbe    0x214fa4949134
    214fa4948ce9:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    214fa4948cf1:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    214fa4948cfa:	0f 85 0a 00 00 00                               	jne    0x214fa4948d0a
    214fa4948d00:	8b ca                                           	mov    ecx,edx
    214fa4948d02:	4d 8b c4                                        	mov    r8,r12
    214fa4948d05:	e9 de 04 00 00                                  	jmp    0x214fa49491e8
    214fa4948d0a:	44 8d 82 90 00 00 00                            	lea    r8d,[rdx+0x90]
    214fa4948d11:	44 8d 5a 70                                     	lea    r11d,[rdx+0x70]
    214fa4948d15:	41 53                                           	push   r11
    214fa4948d17:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
    214fa4948d1e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948d22:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa4948d25:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa4948d28:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    214fa4948d2b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa4948d2e:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    214fa4948d32:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    214fa4948d37:	45 8b c8                                        	mov    r9d,r8d
    214fa4948d3a:	e8 d9 f4 ed ff                                  	call   0x214fa4828218
    214fa4948d3f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4948d43:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4948d4a:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    214fa4948d52:	45 85 db                                        	test   r11d,r11d
    214fa4948d55:	0f 85 62 01 00 00                               	jne    0x214fa4948ebd
    214fa4948d5b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948d5e:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    214fa4948d63:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    214fa4948d69:	0f 84 43 00 00 00                               	je     0x214fa4948db2
    214fa4948d6f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa4948d75:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa4948d79:	41 53                                           	push   r11
    214fa4948d7b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948d7f:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    214fa4948d85:	33 d2                                           	xor    edx,edx
    214fa4948d87:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa4948d8e:	e8 ad f4 ed ff                                  	call   0x214fa4828240
    214fa4948d93:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948d96:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4948d9a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa4948da1:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4948dab:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4948db2:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    214fa4948db7:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    214fa4948dbd:	0f 84 46 00 00 00                               	je     0x214fa4948e09
    214fa4948dc3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa4948dc9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa4948dcd:	41 53                                           	push   r11
    214fa4948dcf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948dd3:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    214fa4948dd9:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa4948dde:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa4948de5:	e8 56 f4 ed ff                                  	call   0x214fa4828240
    214fa4948dea:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948ded:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4948df1:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa4948df8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4948e02:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4948e09:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    214fa4948e0e:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    214fa4948e14:	0f 84 46 00 00 00                               	je     0x214fa4948e60
    214fa4948e1a:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa4948e20:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa4948e24:	41 53                                           	push   r11
    214fa4948e26:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948e2a:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    214fa4948e30:	ba 02 00 00 00                                  	mov    edx,0x2
    214fa4948e35:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa4948e3c:	e8 ff f3 ed ff                                  	call   0x214fa4828240
    214fa4948e41:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948e44:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4948e48:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa4948e4f:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4948e59:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4948e60:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    214fa4948e65:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    214fa4948e6b:	0f 84 77 03 00 00                               	je     0x214fa49491e8
    214fa4948e71:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa4948e77:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa4948e7b:	41 53                                           	push   r11
    214fa4948e7d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4948e81:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    214fa4948e87:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa4948e8c:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
    214fa4948e93:	e8 a8 f3 ed ff                                  	call   0x214fa4828240
    214fa4948e98:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948e9b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa4948e9f:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    214fa4948ea5:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    214fa4948eae:	4c 8b c7                                        	mov    r8,rdi
    214fa4948eb1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4948eb8:	e9 2b 03 00 00                                  	jmp    0x214fa49491e8
    214fa4948ebd:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4948ec0:	4d 8b e0                                        	mov    r12,r8
    214fa4948ec3:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    214fa4948ecd:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    214fa4948ed3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    214fa4948ed8:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa4948edc:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    214fa4948ee3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    214fa4948ee7:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa4948eeb:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    214fa4948ef5:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    214fa4948ef9:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    214fa4948eff:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    214fa4948f03:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    214fa4948f08:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    214fa4948f12:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    214fa4948f16:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    214fa4948f1d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    214fa4948f21:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    214fa4948f25:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    214fa4948f29:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa4948f2d:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    214fa4948f33:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    214fa4948f38:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    214fa4948f3c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa4948f40:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa4948f45:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa4948f4a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    214fa4948f4e:	0f 87 09 00 00 00                               	ja     0x214fa4948f5d
    214fa4948f54:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa4948f58:	e9 04 00 00 00                                  	jmp    0x214fa4948f61
    214fa4948f5d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa4948f61:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa4948f66:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    214fa4948f6a:	0f 87 09 00 00 00                               	ja     0x214fa4948f79
    214fa4948f70:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa4948f74:	e9 05 00 00 00                                  	jmp    0x214fa4948f7e
    214fa4948f79:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    214fa4948f7e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa4948f83:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa4948f87:	0f 84 a1 00 00 00                               	je     0x214fa494902e
    214fa4948f8d:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    214fa4948f91:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    214fa4948f9b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4948f9f:	0f 87 09 00 00 00                               	ja     0x214fa4948fae
    214fa4948fa5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa4948fa9:	e9 04 00 00 00                                  	jmp    0x214fa4948fb2
    214fa4948fae:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa4948fb2:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4948fb6:	0f 87 0a 00 00 00                               	ja     0x214fa4948fc6
    214fa4948fbc:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa4948fc1:	e9 05 00 00 00                                  	jmp    0x214fa4948fcb
    214fa4948fc6:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa4948fcb:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    214fa4948fcf:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4948fd4:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa4948fd9:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa4948fdd:	4c 8b 15 2d f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52d]        # 0x214fa4948511
    214fa4948fe4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4948fe9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa4948fee:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa4948ff2:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    214fa4948ffc:	41 83 fb 03                                     	cmp    r11d,0x3
    214fa4949000:	0f 85 04 00 00 00                               	jne    0x214fa494900a
    214fa4949006:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    214fa494900a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    214fa494900f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa4949013:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa4949017:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    214fa4949021:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    214fa4949026:	4d 8b df                                        	mov    r11,r15
    214fa4949029:	e9 cc 00 00 00                                  	jmp    0x214fa49490fa
    214fa494902e:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    214fa4949035:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4949039:	0f 87 09 00 00 00                               	ja     0x214fa4949048
    214fa494903f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa4949043:	e9 04 00 00 00                                  	jmp    0x214fa494904c
    214fa4949048:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa494904c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4949050:	0f 87 0a 00 00 00                               	ja     0x214fa4949060
    214fa4949056:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa494905b:	e9 05 00 00 00                                  	jmp    0x214fa4949065
    214fa4949060:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa4949065:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    214fa494906f:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    214fa4949075:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    214fa494907a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa494907e:	0f 87 09 00 00 00                               	ja     0x214fa494908d
    214fa4949084:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    214fa4949088:	e9 04 00 00 00                                  	jmp    0x214fa4949091
    214fa494908d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    214fa4949091:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4949095:	0f 87 0a 00 00 00                               	ja     0x214fa49490a5
    214fa494909b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    214fa49490a0:	e9 05 00 00 00                                  	jmp    0x214fa49490aa
    214fa49490a5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa49490aa:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    214fa49490b4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa49490b9:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa49490bd:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    214fa49490c7:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa49490cc:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa49490d1:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa49490d5:	4c 8b 15 35 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff435]        # 0x214fa4948511
    214fa49490dc:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa49490e1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa49490e6:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa49490ea:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa49490ee:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa49490f2:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa49490f6:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    214fa49490fa:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa49490ff:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa4949103:	4c 8b 15 07 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff407]        # 0x214fa4948511
    214fa494910a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494910f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa4949114:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4949118:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    214fa4949122:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    214fa494912c:	4d 8b c4                                        	mov    r8,r12
    214fa494912f:	e9 b4 00 00 00                                  	jmp    0x214fa49491e8
    214fa4949134:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    214fa494913b:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    214fa4949142:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    214fa4949146:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    214fa494914d:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    214fa4949151:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    214fa4949158:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    214fa494915f:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    214fa4949163:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa4949167:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    214fa494916c:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa4949170:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    214fa4949177:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    214fa494917b:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    214fa4949182:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    214fa4949186:	c5 fb 11 85 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm0
    214fa494918e:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    214fa4949195:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    214fa4949199:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    214fa494919d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa49491a1:	8d ba 90 00 00 00                               	lea    edi,[rdx+0x90]
    214fa49491a7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49491ab:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa49491ae:	8b ca                                           	mov    ecx,edx
    214fa49491b0:	41 8b d0                                        	mov    edx,r8d
    214fa49491b3:	c5 fb 10 8d 30 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
    214fa49491bb:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa49491bf:	8b df                                           	mov    ebx,edi
    214fa49491c1:	e8 6a f3 ed ff                                  	call   0x214fa4828530
    214fa49491c6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa49491c9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49491cd:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    214fa49491d7:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa49491e1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa49491e8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa49491ec:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    214fa49491f4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    214fa49491fd:	0f 85 2a 00 00 00                               	jne    0x214fa494922d
    214fa4949203:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    214fa494920d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    214fa4949217:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    214fa4949221:	49 8b fb                                        	mov    rdi,r11
    214fa4949224:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    214fa4949228:	e9 dd 01 00 00                                  	jmp    0x214fa494940a
    214fa494922d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    214fa4949235:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
    214fa494923d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    214fa4949245:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    214fa494924d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    214fa4949255:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    214fa494925d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    214fa4949261:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa4949265:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    214fa494926d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa4949271:	4c 8b 15 77 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe077]        # 0x214fa49472ef
    214fa4949278:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa494927d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4949281:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa4949285:	0f 87 04 00 00 00                               	ja     0x214fa494928f
    214fa494928b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa494928f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    214fa4949297:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    214fa494929e:	0f 85 28 00 00 00                               	jne    0x214fa49492cc
    214fa49492a4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    214fa49492ae:	4c 8b 15 3a e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe03a]        # 0x214fa49472ef
    214fa49492b5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa49492ba:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    214fa49492be:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49492c2:	e8 f1 12 ee ff                                  	call   0x214fa482a5b8
    214fa49492c7:	e9 94 00 00 00                                  	jmp    0x214fa4949360
    214fa49492cc:	41 83 fc 01                                     	cmp    r12d,0x1
    214fa49492d0:	0f 84 67 00 00 00                               	je     0x214fa494933d
    214fa49492d6:	4d 8b d0                                        	mov    r10,r8
    214fa49492d9:	4d 8b c3                                        	mov    r8,r11
    214fa49492dc:	4d 8b da                                        	mov    r11,r10
    214fa49492df:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    214fa49492e9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    214fa49492f3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    214fa49492f8:	7a 06                                           	jp     0x214fa4949300
    214fa49492fa:	0f 84 2a 00 00 00                               	je     0x214fa494932a
    214fa4949300:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa4949304:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    214fa4949309:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    214fa494930d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    214fa4949311:	0f 86 49 00 00 00                               	jbe    0x214fa4949360
    214fa4949317:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa494931b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4949320:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4949325:	e9 5b 00 00 00                                  	jmp    0x214fa4949385
    214fa494932a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa494932e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4949333:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4949338:	e9 44 00 00 00                                  	jmp    0x214fa4949381
    214fa494933d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    214fa4949347:	4c 8b 15 a1 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdfa1]        # 0x214fa49472ef
    214fa494934e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa4949353:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    214fa4949357:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494935b:	e8 58 12 ee ff                                  	call   0x214fa482a5b8
    214fa4949360:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4949364:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4949369:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa494936e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    214fa4949372:	0f 87 09 00 00 00                               	ja     0x214fa4949381
    214fa4949378:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    214fa494937c:	e9 04 00 00 00                                  	jmp    0x214fa4949385
    214fa4949381:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa4949385:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4949388:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494938c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    214fa4949396:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    214fa494939a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    214fa494939e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    214fa49493a8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    214fa49493ad:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    214fa49493b7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    214fa49493c1:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    214fa49493cb:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    214fa49493d0:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    214fa49493da:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    214fa49493e4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    214fa49493ee:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    214fa49493f3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    214fa49493fd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    214fa4949401:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa4949405:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa494940a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    214fa4949414:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4949418:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494941b:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    214fa4949421:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa4949424:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    214fa494942c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    214fa4949430:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    214fa4949434:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    214fa4949439:	e8 22 ee ed ff                                  	call   0x214fa4828260
    214fa494943e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa4949442:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa4949447:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
    214fa494944d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    214fa4949453:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa4949457:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494945c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa4949462:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa4949468:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494946d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    214fa4949474:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    214fa494947b:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    214fa4949482:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
    214fa4949488:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa4949490:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa4949498:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa49494a0:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    214fa49494a8:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    214fa49494af:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa49494b5:	e9 09 00 00 00                                  	jmp    0x214fa49494c3
    214fa49494ba:	4c 8b f9                                        	mov    r15,rcx
    214fa49494bd:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    214fa49494c3:	f6 c3 04                                        	test   bl,0x4
    214fa49494c6:	0f 85 0e 00 00 00                               	jne    0x214fa49494da
    214fa49494cc:	8b d0                                           	mov    edx,eax
    214fa49494ce:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    214fa49494d5:	e9 70 0a 00 00                                  	jmp    0x214fa4949f4a
    214fa49494da:	43 8b 94 04 c8 3c 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0x3cc8]
    214fa49494e2:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    214fa49494eb:	0f 84 4d 00 00 00                               	je     0x214fa494953e
    214fa49494f1:	8b d0                                           	mov    edx,eax
    214fa49494f3:	c1 ea 03                                        	shr    edx,0x3
    214fa49494f6:	83 e2 03                                        	and    edx,0x3
    214fa49494f9:	0b 95 20 fe ff ff                               	or     edx,DWORD PTR [rbp-0x1e0]
    214fa49494ff:	8b 9d 58 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a8]
    214fa4949505:	03 d3                                           	add    edx,ebx
    214fa4949507:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
    214fa494950c:	8b d8                                           	mov    ebx,eax
    214fa494950e:	83 e3 07                                        	and    ebx,0x7
    214fa4949511:	44 8b d1                                        	mov    r10d,ecx
    214fa4949514:	8b cb                                           	mov    ecx,ebx
    214fa4949516:	49 8b df                                        	mov    rbx,r15
    214fa4949519:	45 8b fa                                        	mov    r15d,r10d
    214fa494951c:	d3 e2                                           	shl    edx,cl
    214fa494951e:	f6 c2 80                                        	test   dl,0x80
    214fa4949521:	0f 85 11 00 00 00                               	jne    0x214fa4949538
    214fa4949527:	8b d0                                           	mov    edx,eax
    214fa4949529:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    214fa4949530:	4c 8b fb                                        	mov    r15,rbx
    214fa4949533:	e9 12 0a 00 00                                  	jmp    0x214fa4949f4a
    214fa4949538:	41 8b cf                                        	mov    ecx,r15d
    214fa494953b:	4c 8b fb                                        	mov    r15,rbx
    214fa494953e:	48 8b 95 60 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa0]
    214fa4949545:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
    214fa494954c:	48 8d 0c 13                                     	lea    rcx,[rbx+rdx*1]
    214fa4949550:	c4 e1 82 2a c1                                  	vcvtsi2ss xmm0,xmm15,rcx
    214fa4949555:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    214fa4949559:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    214fa494955d:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    214fa4949564:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
    214fa494956b:	48 8d 14 0b                                     	lea    rdx,[rbx+rcx*1]
    214fa494956f:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    214fa4949574:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    214fa4949579:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    214fa494957e:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    214fa4949582:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    214fa4949586:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    214fa494958b:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    214fa494958f:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    214fa4949593:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    214fa4949598:	0f 83 aa 09 00 00                               	jae    0x214fa4949f48
    214fa494959e:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    214fa49495a5:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    214fa49495ac:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    214fa49495b3:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    214fa49495b8:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    214fa49495bc:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    214fa49495c0:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
    214fa49495c5:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    214fa49495cb:	0f 85 07 00 00 00                               	jne    0x214fa49495d8
    214fa49495d1:	8b d0                                           	mov    edx,eax
    214fa49495d3:	e9 c3 00 00 00                                  	jmp    0x214fa494969b
    214fa49495d8:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
    214fa49495e0:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    214fa49495e9:	75 e6                                           	jne    0x214fa49495d1
    214fa49495eb:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
    214fa49495f0:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    214fa49495f4:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    214fa49495fb:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
    214fa49495fe:	8b d0                                           	mov    edx,eax
    214fa4949600:	8d 04 93                                        	lea    eax,[rbx+rdx*4]
    214fa4949603:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    214fa4949609:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    214fa494960e:	2d 00 02 00 00                                  	sub    eax,0x200
    214fa4949613:	83 f8 08                                        	cmp    eax,0x8
    214fa4949616:	0f 83 0b 00 00 00                               	jae    0x214fa4949627
    214fa494961c:	4c 8d 15 05 67 00 00                            	lea    r10,[rip+0x6705]        # 0x214fa494fd28
    214fa4949623:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    214fa4949627:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa494962b:	0f 87 6a 00 00 00                               	ja     0x214fa494969b
    214fa4949631:	e9 14 09 00 00                                  	jmp    0x214fa4949f4a
    214fa4949636:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa494963b:	0f 83 5a 00 00 00                               	jae    0x214fa494969b
    214fa4949641:	e9 04 09 00 00                                  	jmp    0x214fa4949f4a
    214fa4949646:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa494964b:	0f 8a 4a 00 00 00                               	jp     0x214fa494969b
    214fa4949651:	0f 84 f3 08 00 00                               	je     0x214fa4949f4a
    214fa4949657:	e9 3f 00 00 00                                  	jmp    0x214fa494969b
    214fa494965c:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa4949661:	0f 87 34 00 00 00                               	ja     0x214fa494969b
    214fa4949667:	e9 de 08 00 00                                  	jmp    0x214fa4949f4a
    214fa494966c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa4949670:	0f 83 25 00 00 00                               	jae    0x214fa494969b
    214fa4949676:	e9 cf 08 00 00                                  	jmp    0x214fa4949f4a
    214fa494967b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa4949680:	0f 8a c4 08 00 00                               	jp     0x214fa4949f4a
    214fa4949686:	0f 84 0f 00 00 00                               	je     0x214fa494969b
    214fa494968c:	e9 b9 08 00 00                                  	jmp    0x214fa4949f4a
    214fa4949691:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa4949695:	0f 86 af 08 00 00                               	jbe    0x214fa4949f4a
    214fa494969b:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    214fa49496a0:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    214fa49496a5:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    214fa49496aa:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    214fa49496b1:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    214fa49496b6:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    214fa49496ba:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    214fa49496c1:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    214fa49496c9:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    214fa49496ce:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    214fa49496d2:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    214fa49496d7:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    214fa49496de:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    214fa49496e2:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa49496e6:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    214fa49496ea:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa49496ee:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    214fa49496f1:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    214fa49496fb:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    214fa4949705:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    214fa494970f:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    214fa4949719:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    214fa494971f:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    214fa4949726:	41 8b bc 1c 34 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x134]
    214fa494972e:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
    214fa4949732:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    214fa494973a:	c5 fb 11 8d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm1
    214fa4949742:	c5 fb 11 a5 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm4
    214fa494974a:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    214fa4949752:	c5 fb 11 b5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm6
    214fa494975a:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    214fa4949762:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    214fa494976a:	41 83 f8 01                                     	cmp    r8d,0x1
    214fa494976e:	0f 86 4d 04 00 00                               	jbe    0x214fa4949bc1
    214fa4949774:	41 8b bc 1c 30 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x130]
    214fa494977c:	41 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x130],0x0
    214fa4949785:	0f 85 0d 00 00 00                               	jne    0x214fa4949798
    214fa494978b:	8b c8                                           	mov    ecx,eax
    214fa494978d:	4d 8b c4                                        	mov    r8,r12
    214fa4949790:	48 8b fb                                        	mov    rdi,rbx
    214fa4949793:	e9 e0 04 00 00                                  	jmp    0x214fa4949c78
    214fa4949798:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    214fa494979e:	44 8d 40 70                                     	lea    r8d,[rax+0x70]
    214fa49497a2:	41 50                                           	push   r8
    214fa49497a4:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
    214fa49497ab:	44 8b 85 58 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3a8]
    214fa49497b2:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49497b6:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa49497b9:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa49497bc:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    214fa49497bf:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa49497c2:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    214fa49497c6:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    214fa49497cb:	44 8b cf                                        	mov    r9d,edi
    214fa49497ce:	e8 45 ea ed ff                                  	call   0x214fa4828218
    214fa49497d3:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49497d7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa49497de:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    214fa49497e6:	45 85 db                                        	test   r11d,r11d
    214fa49497e9:	0f 85 61 01 00 00                               	jne    0x214fa4949950
    214fa49497ef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa49497f2:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    214fa49497f7:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    214fa49497fd:	0f 84 43 00 00 00                               	je     0x214fa4949846
    214fa4949803:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa4949809:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa494980d:	41 53                                           	push   r11
    214fa494980f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4949813:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    214fa4949819:	33 d2                                           	xor    edx,edx
    214fa494981b:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    214fa4949822:	e8 19 ea ed ff                                  	call   0x214fa4828240
    214fa4949827:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494982a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494982e:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa4949835:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa494983f:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4949846:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    214fa494984b:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    214fa4949851:	0f 84 46 00 00 00                               	je     0x214fa494989d
    214fa4949857:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa494985d:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa4949861:	41 53                                           	push   r11
    214fa4949863:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4949867:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    214fa494986d:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa4949872:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    214fa4949879:	e8 c2 e9 ed ff                                  	call   0x214fa4828240
    214fa494987e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4949881:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4949885:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa494988c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4949896:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494989d:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    214fa49498a2:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    214fa49498a8:	0f 84 46 00 00 00                               	je     0x214fa49498f4
    214fa49498ae:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa49498b4:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa49498b8:	41 53                                           	push   r11
    214fa49498ba:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa49498be:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    214fa49498c4:	ba 02 00 00 00                                  	mov    edx,0x2
    214fa49498c9:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    214fa49498d0:	e8 6b e9 ed ff                                  	call   0x214fa4828240
    214fa49498d5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa49498d8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa49498dc:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa49498e3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa49498ed:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa49498f4:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    214fa49498f9:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    214fa49498ff:	0f 84 73 03 00 00                               	je     0x214fa4949c78
    214fa4949905:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa494990b:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa494990f:	41 53                                           	push   r11
    214fa4949911:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4949915:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    214fa494991b:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa4949920:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
    214fa4949927:	e8 14 e9 ed ff                                  	call   0x214fa4828240
    214fa494992c:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494992f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4949933:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa494993a:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4949944:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494994b:	e9 28 03 00 00                                  	jmp    0x214fa4949c78
    214fa4949950:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4949953:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
    214fa494995d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    214fa4949963:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    214fa4949968:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa494996c:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
    214fa4949973:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    214fa4949977:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494997b:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
    214fa4949985:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    214fa4949989:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
    214fa494998f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    214fa4949993:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    214fa4949998:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
    214fa49499a2:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    214fa49499a6:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
    214fa49499ad:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    214fa49499b1:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    214fa49499b5:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    214fa49499b9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa49499bd:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    214fa49499c3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    214fa49499c8:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    214fa49499cc:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa49499d0:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa49499d5:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa49499da:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    214fa49499de:	0f 87 09 00 00 00                               	ja     0x214fa49499ed
    214fa49499e4:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa49499e8:	e9 04 00 00 00                                  	jmp    0x214fa49499f1
    214fa49499ed:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa49499f1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa49499f6:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    214fa49499fa:	0f 87 09 00 00 00                               	ja     0x214fa4949a09
    214fa4949a00:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa4949a04:	e9 05 00 00 00                                  	jmp    0x214fa4949a0e
    214fa4949a09:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    214fa4949a0e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa4949a13:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa4949a17:	0f 84 a1 00 00 00                               	je     0x214fa4949abe
    214fa4949a1d:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    214fa4949a21:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
    214fa4949a2b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4949a2f:	0f 87 09 00 00 00                               	ja     0x214fa4949a3e
    214fa4949a35:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa4949a39:	e9 04 00 00 00                                  	jmp    0x214fa4949a42
    214fa4949a3e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa4949a42:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4949a46:	0f 87 0a 00 00 00                               	ja     0x214fa4949a56
    214fa4949a4c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa4949a51:	e9 05 00 00 00                                  	jmp    0x214fa4949a5b
    214fa4949a56:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa4949a5b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    214fa4949a5f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4949a64:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa4949a69:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa4949a6d:	4c 8b 15 9d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea9d]        # 0x214fa4948511
    214fa4949a74:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa4949a79:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa4949a7e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa4949a82:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
    214fa4949a8c:	41 83 fb 03                                     	cmp    r11d,0x3
    214fa4949a90:	0f 85 04 00 00 00                               	jne    0x214fa4949a9a
    214fa4949a96:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    214fa4949a9a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    214fa4949a9f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa4949aa3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa4949aa7:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
    214fa4949ab1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    214fa4949ab6:	4d 8b dc                                        	mov    r11,r12
    214fa4949ab9:	e9 cc 00 00 00                                  	jmp    0x214fa4949b8a
    214fa4949abe:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
    214fa4949ac5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4949ac9:	0f 87 09 00 00 00                               	ja     0x214fa4949ad8
    214fa4949acf:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa4949ad3:	e9 04 00 00 00                                  	jmp    0x214fa4949adc
    214fa4949ad8:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa4949adc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4949ae0:	0f 87 0a 00 00 00                               	ja     0x214fa4949af0
    214fa4949ae6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa4949aeb:	e9 05 00 00 00                                  	jmp    0x214fa4949af5
    214fa4949af0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa4949af5:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
    214fa4949aff:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    214fa4949b05:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    214fa4949b0a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa4949b0e:	0f 87 09 00 00 00                               	ja     0x214fa4949b1d
    214fa4949b14:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    214fa4949b18:	e9 04 00 00 00                                  	jmp    0x214fa4949b21
    214fa4949b1d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    214fa4949b21:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa4949b25:	0f 87 0a 00 00 00                               	ja     0x214fa4949b35
    214fa4949b2b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    214fa4949b30:	e9 05 00 00 00                                  	jmp    0x214fa4949b3a
    214fa4949b35:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa4949b3a:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
    214fa4949b44:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa4949b49:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa4949b4d:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
    214fa4949b57:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa4949b5c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa4949b61:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa4949b65:	4c 8b 15 a5 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a5]        # 0x214fa4948511
    214fa4949b6c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa4949b71:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa4949b76:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa4949b7a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa4949b7e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa4949b82:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa4949b86:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    214fa4949b8a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa4949b8f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa4949b93:	4c 8b 15 77 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe977]        # 0x214fa4948511
    214fa4949b9a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa4949b9f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa4949ba4:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa4949ba8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4949bb2:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
    214fa4949bbc:	e9 b7 00 00 00                                  	jmp    0x214fa4949c78
    214fa4949bc1:	4c 8b 85 10 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f0]
    214fa4949bc8:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
    214fa4949bcf:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    214fa4949bd3:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    214fa4949bda:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    214fa4949bde:	c4 81 6a 59 74 1c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+r11*1+0x50]
    214fa4949be5:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    214fa4949be9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa4949bed:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    214fa4949bf2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa4949bf6:	c4 01 7a 10 5c 04 54                            	vmovss xmm11,DWORD PTR [r12+r8*1+0x54]
    214fa4949bfd:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    214fa4949c01:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    214fa4949c08:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    214fa4949c0c:	c5 fb 11 85 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm0
    214fa4949c14:	c4 81 6a 59 44 1c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+r11*1+0x54]
    214fa4949c1b:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    214fa4949c1f:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    214fa4949c23:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa4949c27:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
    214fa4949c2e:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    214fa4949c34:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4949c38:	8b c8                                           	mov    ecx,eax
    214fa4949c3a:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa4949c3d:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
    214fa4949c43:	c5 fb 10 8d b0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x150]
    214fa4949c4b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa4949c4f:	8b df                                           	mov    ebx,edi
    214fa4949c51:	e8 da e8 ed ff                                  	call   0x214fa4828530
    214fa4949c56:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4949c59:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4949c5d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
    214fa4949c67:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa4949c71:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa4949c78:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa4949c7c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    214fa4949c84:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    214fa4949c8d:	0f 85 2a 00 00 00                               	jne    0x214fa4949cbd
    214fa4949c93:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    214fa4949c9d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    214fa4949ca7:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    214fa4949cb1:	49 8b fb                                        	mov    rdi,r11
    214fa4949cb4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    214fa4949cb8:	e9 dd 01 00 00                                  	jmp    0x214fa4949e9a
    214fa4949cbd:	c5 fb 10 85 08 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1f8]
    214fa4949cc5:	c5 fa 59 85 a0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x260]
    214fa4949ccd:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    214fa4949cd5:	c5 ca 59 b5 50 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1b0]
    214fa4949cdd:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    214fa4949ce5:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    214fa4949ced:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    214fa4949cf1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa4949cf5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    214fa4949cfd:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa4949d01:	4c 8b 15 e7 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5e7]        # 0x214fa49472ef
    214fa4949d08:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa4949d0d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa4949d11:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa4949d15:	0f 87 04 00 00 00                               	ja     0x214fa4949d1f
    214fa4949d1b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa4949d1f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    214fa4949d27:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    214fa4949d2e:	0f 85 28 00 00 00                               	jne    0x214fa4949d5c
    214fa4949d34:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    214fa4949d3e:	4c 8b 15 aa d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5aa]        # 0x214fa49472ef
    214fa4949d45:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa4949d4a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    214fa4949d4e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4949d52:	e8 61 08 ee ff                                  	call   0x214fa482a5b8
    214fa4949d57:	e9 94 00 00 00                                  	jmp    0x214fa4949df0
    214fa4949d5c:	41 83 fc 01                                     	cmp    r12d,0x1
    214fa4949d60:	0f 84 67 00 00 00                               	je     0x214fa4949dcd
    214fa4949d66:	4d 8b d0                                        	mov    r10,r8
    214fa4949d69:	4d 8b c3                                        	mov    r8,r11
    214fa4949d6c:	4d 8b da                                        	mov    r11,r10
    214fa4949d6f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    214fa4949d79:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    214fa4949d83:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    214fa4949d88:	7a 06                                           	jp     0x214fa4949d90
    214fa4949d8a:	0f 84 2a 00 00 00                               	je     0x214fa4949dba
    214fa4949d90:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa4949d94:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    214fa4949d99:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    214fa4949d9d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    214fa4949da1:	0f 86 49 00 00 00                               	jbe    0x214fa4949df0
    214fa4949da7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4949dab:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4949db0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4949db5:	e9 5b 00 00 00                                  	jmp    0x214fa4949e15
    214fa4949dba:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4949dbe:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4949dc3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4949dc8:	e9 44 00 00 00                                  	jmp    0x214fa4949e11
    214fa4949dcd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    214fa4949dd7:	4c 8b 15 11 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd511]        # 0x214fa49472ef
    214fa4949dde:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa4949de3:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    214fa4949de7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4949deb:	e8 c8 07 ee ff                                  	call   0x214fa482a5b8
    214fa4949df0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa4949df4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa4949df9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa4949dfe:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    214fa4949e02:	0f 87 09 00 00 00                               	ja     0x214fa4949e11
    214fa4949e08:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    214fa4949e0c:	e9 04 00 00 00                                  	jmp    0x214fa4949e15
    214fa4949e11:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa4949e15:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa4949e18:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa4949e1c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
    214fa4949e26:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    214fa4949e2a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    214fa4949e2e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    214fa4949e38:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    214fa4949e3d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
    214fa4949e47:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
    214fa4949e51:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    214fa4949e5b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    214fa4949e60:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
    214fa4949e6a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
    214fa4949e74:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    214fa4949e7e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    214fa4949e83:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
    214fa4949e8d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    214fa4949e91:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa4949e95:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa4949e9a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
    214fa4949ea4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa4949ea8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa4949eab:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa4949eb1:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    214fa4949eb7:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    214fa4949ebf:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    214fa4949ec3:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    214fa4949ec7:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    214fa4949ecc:	e8 8f e3 ed ff                                  	call   0x214fa4828260
    214fa4949ed1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa4949ed5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa4949eda:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa4949ee0:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
    214fa4949ee7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa4949eeb:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa4949ef0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa4949ef6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa4949efc:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa4949f01:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
    214fa4949f08:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
    214fa4949f0f:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
    214fa4949f16:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa4949f1e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa4949f26:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa4949f2e:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
    214fa4949f36:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
    214fa4949f3d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa4949f43:	e9 02 00 00 00                                  	jmp    0x214fa4949f4a
    214fa4949f48:	8b d0                                           	mov    edx,eax
    214fa4949f4a:	f6 85 68 fd ff ff 08                            	test   BYTE PTR [rbp-0x298],0x8
    214fa4949f51:	0f 85 0a 00 00 00                               	jne    0x214fa4949f61
    214fa4949f57:	c4 41 79 28 f1                                  	vmovapd xmm14,xmm9
    214fa4949f5c:	e9 49 57 00 00                                  	jmp    0x214fa494f6aa
    214fa4949f61:	43 8b 84 04 c8 3c 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0x3cc8]
    214fa4949f69:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
    214fa4949f72:	0f 84 3c 00 00 00                               	je     0x214fa4949fb4
    214fa4949f78:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    214fa4949f7e:	c1 e8 03                                        	shr    eax,0x3
    214fa4949f81:	83 e0 03                                        	and    eax,0x3
    214fa4949f84:	8b 9d 20 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1e0]
    214fa4949f8a:	0b d8                                           	or     ebx,eax
    214fa4949f8c:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
    214fa4949f92:	03 d8                                           	add    ebx,eax
    214fa4949f94:	41 0f b6 1c 1c                                  	movzx  ebx,BYTE PTR [r12+rbx*1]
    214fa4949f99:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
    214fa4949f9f:	83 e0 07                                        	and    eax,0x7
    214fa4949fa2:	4c 8b d1                                        	mov    r10,rcx
    214fa4949fa5:	8b c8                                           	mov    ecx,eax
    214fa4949fa7:	49 8b c2                                        	mov    rax,r10
    214fa4949faa:	d3 e3                                           	shl    ebx,cl
    214fa4949fac:	f6 c3 80                                        	test   bl,0x80
    214fa4949faf:	74 a6                                           	je     0x214fa4949f57
    214fa4949fb1:	48 8b c8                                        	mov    rcx,rax
    214fa4949fb4:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    214fa4949fbb:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
    214fa4949fc2:	48 8d 14 03                                     	lea    rdx,[rbx+rax*1]
    214fa4949fc6:	c4 e1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,rdx
    214fa4949fcb:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
    214fa4949fcf:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
    214fa4949fd3:	48 8b d1                                        	mov    rdx,rcx
    214fa4949fd6:	48 8b 8d 50 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3b0]
    214fa4949fdd:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
    214fa4949fe1:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
    214fa4949fe6:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
    214fa4949feb:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
    214fa4949ff0:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
    214fa4949ff4:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
    214fa4949ff8:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
    214fa4949ffd:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
    214fa494a001:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
    214fa494a005:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
    214fa494a00a:	0f 83 47 ff ff ff                               	jae    0x214fa4949f57
    214fa494a010:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
    214fa494a017:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
    214fa494a01e:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
    214fa494a025:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
    214fa494a02a:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
    214fa494a02e:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
    214fa494a032:	43 8b 44 04 68                                  	mov    eax,DWORD PTR [r12+r8*1+0x68]
    214fa494a037:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
    214fa494a03d:	0f 85 0b 00 00 00                               	jne    0x214fa494a04e
    214fa494a043:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    214fa494a049:	e9 c7 00 00 00                                  	jmp    0x214fa494a115
    214fa494a04e:	43 8b 84 04 a4 00 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0xa4]
    214fa494a056:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
    214fa494a05f:	75 e2                                           	jne    0x214fa494a043
    214fa494a061:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
    214fa494a066:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
    214fa494a06a:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
    214fa494a071:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    214fa494a074:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
    214fa494a07a:	8d 04 98                                        	lea    eax,[rax+rbx*4]
    214fa494a07d:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
    214fa494a083:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
    214fa494a088:	2d 00 02 00 00                                  	sub    eax,0x200
    214fa494a08d:	83 f8 08                                        	cmp    eax,0x8
    214fa494a090:	0f 83 0b 00 00 00                               	jae    0x214fa494a0a1
    214fa494a096:	4c 8d 15 4b 5c 00 00                            	lea    r10,[rip+0x5c4b]        # 0x214fa494fce8
    214fa494a09d:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
    214fa494a0a1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa494a0a5:	0f 87 6a 00 00 00                               	ja     0x214fa494a115
    214fa494a0ab:	e9 a7 fe ff ff                                  	jmp    0x214fa4949f57
    214fa494a0b0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa494a0b5:	0f 83 5a 00 00 00                               	jae    0x214fa494a115
    214fa494a0bb:	e9 97 fe ff ff                                  	jmp    0x214fa4949f57
    214fa494a0c0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa494a0c5:	0f 8a 4a 00 00 00                               	jp     0x214fa494a115
    214fa494a0cb:	0f 84 86 fe ff ff                               	je     0x214fa4949f57
    214fa494a0d1:	e9 3f 00 00 00                                  	jmp    0x214fa494a115
    214fa494a0d6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa494a0db:	0f 87 34 00 00 00                               	ja     0x214fa494a115
    214fa494a0e1:	e9 71 fe ff ff                                  	jmp    0x214fa4949f57
    214fa494a0e6:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa494a0ea:	0f 83 25 00 00 00                               	jae    0x214fa494a115
    214fa494a0f0:	e9 62 fe ff ff                                  	jmp    0x214fa4949f57
    214fa494a0f5:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
    214fa494a0fa:	0f 8a 57 fe ff ff                               	jp     0x214fa4949f57
    214fa494a100:	0f 84 0f 00 00 00                               	je     0x214fa494a115
    214fa494a106:	e9 4c fe ff ff                                  	jmp    0x214fa4949f57
    214fa494a10b:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
    214fa494a10f:	0f 86 42 fe ff ff                               	jbe    0x214fa4949f57
    214fa494a115:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
    214fa494a11a:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
    214fa494a11f:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
    214fa494a124:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
    214fa494a12b:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
    214fa494a130:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
    214fa494a134:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
    214fa494a13b:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
    214fa494a143:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    214fa494a148:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    214fa494a14c:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
    214fa494a151:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
    214fa494a158:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
    214fa494a15c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa494a160:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    214fa494a164:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
    214fa494a168:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    214fa494a16b:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
    214fa494a175:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
    214fa494a17f:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
    214fa494a189:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
    214fa494a193:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
    214fa494a199:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494a1a0:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
    214fa494a1a8:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
    214fa494a1ac:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
    214fa494a1b4:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
    214fa494a1bc:	c5 fb 11 a5 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm4
    214fa494a1c4:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
    214fa494a1cc:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
    214fa494a1d4:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
    214fa494a1dc:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
    214fa494a1e4:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa494a1e8:	0f 86 4b 04 00 00                               	jbe    0x214fa494a639
    214fa494a1ee:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
    214fa494a1f6:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
    214fa494a1ff:	0f 85 0a 00 00 00                               	jne    0x214fa494a20f
    214fa494a205:	8b c8                                           	mov    ecx,eax
    214fa494a207:	4d 8b c4                                        	mov    r8,r12
    214fa494a20a:	e9 e0 04 00 00                                  	jmp    0x214fa494a6ef
    214fa494a20f:	44 8d 80 90 00 00 00                            	lea    r8d,[rax+0x90]
    214fa494a216:	44 8d 58 70                                     	lea    r11d,[rax+0x70]
    214fa494a21a:	41 53                                           	push   r11
    214fa494a21c:	4c 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r8
    214fa494a223:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a227:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa494a22a:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa494a22d:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    214fa494a230:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa494a233:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
    214fa494a237:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    214fa494a23c:	45 8b c8                                        	mov    r9d,r8d
    214fa494a23f:	e8 d4 df ed ff                                  	call   0x214fa4828218
    214fa494a244:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494a248:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494a24f:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
    214fa494a257:	45 85 db                                        	test   r11d,r11d
    214fa494a25a:	0f 85 62 01 00 00                               	jne    0x214fa494a3c2
    214fa494a260:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494a263:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
    214fa494a268:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
    214fa494a26e:	0f 84 43 00 00 00                               	je     0x214fa494a2b7
    214fa494a274:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa494a27a:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa494a27e:	41 53                                           	push   r11
    214fa494a280:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a284:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
    214fa494a28a:	33 d2                                           	xor    edx,edx
    214fa494a28c:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    214fa494a293:	e8 a8 df ed ff                                  	call   0x214fa4828240
    214fa494a298:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494a29b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494a29f:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa494a2a6:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa494a2b0:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494a2b7:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
    214fa494a2bc:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
    214fa494a2c2:	0f 84 46 00 00 00                               	je     0x214fa494a30e
    214fa494a2c8:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa494a2ce:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa494a2d2:	41 53                                           	push   r11
    214fa494a2d4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a2d8:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
    214fa494a2de:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa494a2e3:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    214fa494a2ea:	e8 51 df ed ff                                  	call   0x214fa4828240
    214fa494a2ef:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494a2f2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494a2f6:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa494a2fd:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa494a307:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494a30e:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
    214fa494a313:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
    214fa494a319:	0f 84 46 00 00 00                               	je     0x214fa494a365
    214fa494a31f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa494a325:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa494a329:	41 53                                           	push   r11
    214fa494a32b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a32f:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
    214fa494a335:	ba 02 00 00 00                                  	mov    edx,0x2
    214fa494a33a:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    214fa494a341:	e8 fa de ed ff                                  	call   0x214fa4828240
    214fa494a346:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494a349:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494a34d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
    214fa494a354:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
    214fa494a35e:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494a365:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
    214fa494a36a:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
    214fa494a370:	0f 84 79 03 00 00                               	je     0x214fa494a6ef
    214fa494a376:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
    214fa494a37c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
    214fa494a380:	41 53                                           	push   r11
    214fa494a382:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a386:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
    214fa494a38c:	ba 03 00 00 00                                  	mov    edx,0x3
    214fa494a391:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
    214fa494a398:	e8 a3 de ed ff                                  	call   0x214fa4828240
    214fa494a39d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494a3a0:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
    214fa494a3a4:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
    214fa494a3aa:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
    214fa494a3b3:	4c 8b c7                                        	mov    r8,rdi
    214fa494a3b6:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494a3bd:	e9 2d 03 00 00                                  	jmp    0x214fa494a6ef
    214fa494a3c2:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
    214fa494a3c5:	4d 8b e0                                        	mov    r12,r8
    214fa494a3c8:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
    214fa494a3d2:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
    214fa494a3d8:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    214fa494a3dd:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa494a3e1:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
    214fa494a3e8:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    214fa494a3ec:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494a3f0:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
    214fa494a3fa:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
    214fa494a3fe:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
    214fa494a404:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    214fa494a408:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
    214fa494a40d:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
    214fa494a417:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
    214fa494a41b:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
    214fa494a422:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
    214fa494a426:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
    214fa494a42a:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
    214fa494a42e:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa494a432:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
    214fa494a438:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
    214fa494a43d:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
    214fa494a441:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
    214fa494a445:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
    214fa494a44a:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
    214fa494a44f:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
    214fa494a453:	0f 87 09 00 00 00                               	ja     0x214fa494a462
    214fa494a459:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa494a45d:	e9 04 00 00 00                                  	jmp    0x214fa494a466
    214fa494a462:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa494a466:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494a46b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
    214fa494a46f:	0f 87 09 00 00 00                               	ja     0x214fa494a47e
    214fa494a475:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa494a479:	e9 05 00 00 00                                  	jmp    0x214fa494a483
    214fa494a47e:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    214fa494a483:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa494a488:	41 83 fb 01                                     	cmp    r11d,0x1
    214fa494a48c:	0f 84 a1 00 00 00                               	je     0x214fa494a533
    214fa494a492:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
    214fa494a496:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
    214fa494a4a0:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa494a4a4:	0f 87 09 00 00 00                               	ja     0x214fa494a4b3
    214fa494a4aa:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa494a4ae:	e9 04 00 00 00                                  	jmp    0x214fa494a4b7
    214fa494a4b3:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa494a4b7:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa494a4bb:	0f 87 0a 00 00 00                               	ja     0x214fa494a4cb
    214fa494a4c1:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa494a4c6:	e9 05 00 00 00                                  	jmp    0x214fa494a4d0
    214fa494a4cb:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa494a4d0:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
    214fa494a4d4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa494a4d9:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa494a4de:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa494a4e2:	4c 8b 15 28 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe028]        # 0x214fa4948511
    214fa494a4e9:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa494a4ee:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa494a4f3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa494a4f7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
    214fa494a501:	41 83 fb 03                                     	cmp    r11d,0x3
    214fa494a505:	0f 85 04 00 00 00                               	jne    0x214fa494a50f
    214fa494a50b:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
    214fa494a50f:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
    214fa494a514:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa494a518:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
    214fa494a51c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
    214fa494a526:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    214fa494a52b:	4d 8b df                                        	mov    r11,r15
    214fa494a52e:	e9 cc 00 00 00                                  	jmp    0x214fa494a5ff
    214fa494a533:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
    214fa494a53a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa494a53e:	0f 87 09 00 00 00                               	ja     0x214fa494a54d
    214fa494a544:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
    214fa494a548:	e9 04 00 00 00                                  	jmp    0x214fa494a551
    214fa494a54d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
    214fa494a551:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa494a555:	0f 87 0a 00 00 00                               	ja     0x214fa494a565
    214fa494a55b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
    214fa494a560:	e9 05 00 00 00                                  	jmp    0x214fa494a56a
    214fa494a565:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa494a56a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
    214fa494a574:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
    214fa494a57a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
    214fa494a57f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
    214fa494a583:	0f 87 09 00 00 00                               	ja     0x214fa494a592
    214fa494a589:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    214fa494a58d:	e9 04 00 00 00                                  	jmp    0x214fa494a596
    214fa494a592:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    214fa494a596:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
    214fa494a59a:	0f 87 0a 00 00 00                               	ja     0x214fa494a5aa
    214fa494a5a0:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    214fa494a5a5:	e9 05 00 00 00                                  	jmp    0x214fa494a5af
    214fa494a5aa:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
    214fa494a5af:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
    214fa494a5b9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa494a5be:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494a5c2:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
    214fa494a5cc:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa494a5d1:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa494a5d6:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa494a5da:	4c 8b 15 30 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf30]        # 0x214fa4948511
    214fa494a5e1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa494a5e6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa494a5eb:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa494a5ef:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa494a5f3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
    214fa494a5f7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
    214fa494a5fb:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    214fa494a5ff:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa494a604:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
    214fa494a608:	4c 8b 15 02 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf02]        # 0x214fa4948511
    214fa494a60f:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494a614:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa494a619:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
    214fa494a61d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
    214fa494a627:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
    214fa494a631:	4d 8b c4                                        	mov    r8,r12
    214fa494a634:	e9 b6 00 00 00                                  	jmp    0x214fa494a6ef
    214fa494a639:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
    214fa494a640:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
    214fa494a647:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
    214fa494a64b:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
    214fa494a652:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    214fa494a656:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
    214fa494a65d:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
    214fa494a664:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
    214fa494a668:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa494a66c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    214fa494a671:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa494a675:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
    214fa494a67c:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
    214fa494a680:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
    214fa494a687:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
    214fa494a68b:	c5 fb 11 85 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm0
    214fa494a693:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
    214fa494a69a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
    214fa494a69e:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
    214fa494a6a2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa494a6a6:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
    214fa494a6ac:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a6b0:	8b c8                                           	mov    ecx,eax
    214fa494a6b2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa494a6b5:	41 8b d0                                        	mov    edx,r8d
    214fa494a6b8:	c5 fb 10 8d a0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x260]
    214fa494a6c0:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
    214fa494a6c4:	8b df                                           	mov    ebx,edi
    214fa494a6c6:	e8 65 de ed ff                                  	call   0x214fa4828530
    214fa494a6cb:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    214fa494a6ce:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494a6d2:	c4 c1 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x90]
    214fa494a6dc:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    214fa494a6e6:	8b cb                                           	mov    ecx,ebx
    214fa494a6e8:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494a6ef:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494a6f3:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
    214fa494a6fb:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
    214fa494a704:	0f 85 2c 00 00 00                               	jne    0x214fa494a736
    214fa494a70a:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
    214fa494a714:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
    214fa494a71e:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
    214fa494a728:	49 8b fb                                        	mov    rdi,r11
    214fa494a72b:	8b d9                                           	mov    ebx,ecx
    214fa494a72d:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    214fa494a731:	e9 dd 01 00 00                                  	jmp    0x214fa494a913
    214fa494a736:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
    214fa494a73e:	c5 fa 59 85 30 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1d0]
    214fa494a746:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
    214fa494a74e:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    214fa494a756:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
    214fa494a75e:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
    214fa494a766:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
    214fa494a76a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
    214fa494a76e:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
    214fa494a776:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
    214fa494a77a:	4c 8b 15 6e cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb6e]        # 0x214fa49472ef
    214fa494a781:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa494a786:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
    214fa494a78a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
    214fa494a78e:	0f 87 04 00 00 00                               	ja     0x214fa494a798
    214fa494a794:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa494a798:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
    214fa494a7a0:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
    214fa494a7a7:	0f 85 28 00 00 00                               	jne    0x214fa494a7d5
    214fa494a7ad:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
    214fa494a7b7:	4c 8b 15 31 cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb31]        # 0x214fa49472ef
    214fa494a7be:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
    214fa494a7c3:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
    214fa494a7c7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a7cb:	e8 e8 fd ed ff                                  	call   0x214fa482a5b8
    214fa494a7d0:	e9 94 00 00 00                                  	jmp    0x214fa494a869
    214fa494a7d5:	41 83 fc 01                                     	cmp    r12d,0x1
    214fa494a7d9:	0f 84 67 00 00 00                               	je     0x214fa494a846
    214fa494a7df:	4d 8b d0                                        	mov    r10,r8
    214fa494a7e2:	4d 8b c3                                        	mov    r8,r11
    214fa494a7e5:	4d 8b da                                        	mov    r11,r10
    214fa494a7e8:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
    214fa494a7f2:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
    214fa494a7fc:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
    214fa494a801:	7a 06                                           	jp     0x214fa494a809
    214fa494a803:	0f 84 2a 00 00 00                               	je     0x214fa494a833
    214fa494a809:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
    214fa494a80d:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
    214fa494a812:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
    214fa494a816:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
    214fa494a81a:	0f 86 49 00 00 00                               	jbe    0x214fa494a869
    214fa494a820:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa494a824:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa494a829:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa494a82e:	e9 5b 00 00 00                                  	jmp    0x214fa494a88e
    214fa494a833:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa494a837:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa494a83c:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa494a841:	e9 44 00 00 00                                  	jmp    0x214fa494a88a
    214fa494a846:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
    214fa494a850:	4c 8b 15 98 ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca98]        # 0x214fa49472ef
    214fa494a857:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
    214fa494a85c:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
    214fa494a860:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a864:	e8 4f fd ed ff                                  	call   0x214fa482a5b8
    214fa494a869:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
    214fa494a86d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
    214fa494a872:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
    214fa494a877:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
    214fa494a87b:	0f 87 09 00 00 00                               	ja     0x214fa494a88a
    214fa494a881:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
    214fa494a885:	e9 04 00 00 00                                  	jmp    0x214fa494a88e
    214fa494a88a:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
    214fa494a88e:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    214fa494a891:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494a895:	c4 c1 42 59 b4 18 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rbx*1+0x190]
    214fa494a89f:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
    214fa494a8a3:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    214fa494a8a7:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
    214fa494a8b1:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
    214fa494a8b6:	c4 c1 7a 11 b4 18 90 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x190],xmm6
    214fa494a8c0:	c4 41 42 59 8c 18 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rbx*1+0x194]
    214fa494a8ca:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
    214fa494a8d4:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
    214fa494a8d9:	c4 41 7a 11 8c 18 94 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x194],xmm9
    214fa494a8e3:	c4 c1 42 59 bc 18 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rbx*1+0x198]
    214fa494a8ed:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
    214fa494a8f7:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
    214fa494a8fc:	c4 c1 7a 11 bc 18 98 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x198],xmm7
    214fa494a906:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
    214fa494a90a:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa494a90e:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa494a913:	c4 c1 7a 10 ac 18 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rbx*1+0x19c]
    214fa494a91d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494a921:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494a924:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    214fa494a92a:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    214fa494a930:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
    214fa494a938:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
    214fa494a93c:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
    214fa494a940:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
    214fa494a945:	e8 16 d9 ed ff                                  	call   0x214fa4828260
    214fa494a94a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa494a94e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494a953:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa494a957:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494a95c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494a962:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494a968:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494a96d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494a975:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494a97d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494a985:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494a98d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494a993:	e9 12 4d 00 00                                  	jmp    0x214fa494f6aa
    214fa494a998:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    214fa494a99c:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
    214fa494a9a3:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494a9a7:	4e 89 7c 02 70                                  	mov    QWORD PTR [rdx+r8*1+0x70],r15
    214fa494a9ac:	4a 8d 0c 3f                                     	lea    rcx,[rdi+r15*1]
    214fa494a9b0:	4a 89 8c 02 80 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x80],rcx
    214fa494a9b8:	49 8b df                                        	mov    rbx,r15
    214fa494a9bb:	48 2b 9d d0 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x330]
    214fa494a9c2:	4a 89 5c 02 78                                  	mov    QWORD PTR [rdx+r8*1+0x78],rbx
    214fa494a9c7:	4c 8d 1c 1f                                     	lea    r11,[rdi+rbx*1]
    214fa494a9cb:	4e 89 9c 02 88 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x88],r11
    214fa494a9d3:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    214fa494a9da:	4a 89 74 02 50                                  	mov    QWORD PTR [rdx+r8*1+0x50],rsi
    214fa494a9df:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    214fa494a9e6:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
    214fa494a9ea:	4e 89 64 02 60                                  	mov    QWORD PTR [rdx+r8*1+0x60],r12
    214fa494a9ef:	48 8b c6                                        	mov    rax,rsi
    214fa494a9f2:	48 2b 85 f0 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x310]
    214fa494a9f9:	4a 89 44 02 58                                  	mov    QWORD PTR [rdx+r8*1+0x58],rax
    214fa494a9fe:	4c 8d 0c 07                                     	lea    r9,[rdi+rax*1]
    214fa494aa02:	4e 89 4c 02 68                                  	mov    QWORD PTR [rdx+r8*1+0x68],r9
    214fa494aa07:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
    214fa494aa0b:	c4 a1 7a 7f 44 02 40                            	vmovdqu XMMWORD PTR [rdx+r8*1+0x40],xmm0
    214fa494aa12:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    214fa494aa19:	48 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rbx
    214fa494aa20:	4c 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r11
    214fa494aa27:	4c 89 a5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r12
    214fa494aa2e:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
    214fa494aa35:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
    214fa494aa3c:	33 ff                                           	xor    edi,edi
    214fa494aa3e:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    214fa494aa42:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa494aa46:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    214fa494aa4a:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    214fa494aa50:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
    214fa494aa55:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    214fa494aa5c:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    214fa494aa63:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    214fa494aa6a:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
    214fa494aa6f:	e9 10 00 00 00                                  	jmp    0x214fa494aa84
    214fa494aa74:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494aa7d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    214fa494aa80:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    214fa494aa84:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa494aa89:	0f 85 63 4f 00 00                               	jne    0x214fa494f9f2
    214fa494aa8f:	8b cf                                           	mov    ecx,edi
    214fa494aa91:	41 bf 01 00 00 00                               	mov    r15d,0x1
    214fa494aa97:	41 d3 e7                                        	shl    r15d,cl
    214fa494aa9a:	44 85 bd 68 fd ff ff                            	test   DWORD PTR [rbp-0x298],r15d
    214fa494aaa1:	0f 84 69 01 00 00                               	je     0x214fa494ac10
    214fa494aaa7:	41 8d 4c b8 40                                  	lea    ecx,[r8+rdi*4+0x40]
    214fa494aaac:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    214fa494aab3:	45 8d 7c f8 70                                  	lea    r15d,[r8+rdi*8+0x70]
    214fa494aab8:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    214fa494aabc:	c4 41 82 2a cf                                  	vcvtsi2ss xmm9,xmm15,r15
    214fa494aac1:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
    214fa494aac6:	c4 41 42 5c d1                                  	vsubss xmm10,xmm7,xmm9
    214fa494aacb:	45 8d 7c f8 50                                  	lea    r15d,[r8+rdi*8+0x50]
    214fa494aad0:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
    214fa494aad4:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
    214fa494aad9:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
    214fa494aade:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
    214fa494aae3:	c4 21 2a 59 54 0a 18                            	vmulss xmm10,xmm10,DWORD PTR [rdx+r9*1+0x18]
    214fa494aaea:	c4 21 32 59 4c 22 18                            	vmulss xmm9,xmm9,DWORD PTR [rdx+r12*1+0x18]
    214fa494aaf1:	c5 22 59 5c 02 18                               	vmulss xmm11,xmm11,DWORD PTR [rdx+rax*1+0x18]
    214fa494aaf7:	c4 41 32 58 cb                                  	vaddss xmm9,xmm9,xmm11
    214fa494aafc:	c4 41 2a 58 c9                                  	vaddss xmm9,xmm10,xmm9
    214fa494ab01:	c4 41 72 58 c9                                  	vaddss xmm9,xmm1,xmm9
    214fa494ab06:	c5 7a 11 0c 0a                                  	vmovss DWORD PTR [rdx+rcx*1],xmm9
    214fa494ab0b:	44 8b 7c 32 68                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0x68]
    214fa494ab10:	83 7c 32 68 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x68],0x0
    214fa494ab15:	0f 84 f5 00 00 00                               	je     0x214fa494ac10
    214fa494ab1b:	44 8b bc 32 a4 00 00 00                         	mov    r15d,DWORD PTR [rdx+rsi*1+0xa4]
    214fa494ab23:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
    214fa494ab2b:	0f 85 df 00 00 00                               	jne    0x214fa494ac10
    214fa494ab31:	44 8b 7c 32 0c                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0xc]
    214fa494ab36:	8b 0c 32                                        	mov    ecx,DWORD PTR [rdx+rsi*1]
    214fa494ab39:	44 8b c7                                        	mov    r8d,edi
    214fa494ab3c:	41 d1 e8                                        	shr    r8d,1
    214fa494ab3f:	45 03 c3                                        	add    r8d,r11d
    214fa494ab42:	44 0f af c1                                     	imul   r8d,ecx
    214fa494ab46:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    214fa494ab4a:	45 8d 04 98                                     	lea    r8d,[r8+rbx*4]
    214fa494ab4e:	44 8b ff                                        	mov    r15d,edi
    214fa494ab51:	41 83 e7 01                                     	and    r15d,0x1
    214fa494ab55:	47 8d 04 b8                                     	lea    r8d,[r8+r15*4]
    214fa494ab59:	c4 21 7a 10 14 02                               	vmovss xmm10,DWORD PTR [rdx+r8*1]
    214fa494ab5f:	44 8b 44 32 6c                                  	mov    r8d,DWORD PTR [rdx+rsi*1+0x6c]
    214fa494ab64:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
    214fa494ab6b:	41 83 f8 08                                     	cmp    r8d,0x8
    214fa494ab6f:	0f 83 0b 00 00 00                               	jae    0x214fa494ab80
    214fa494ab75:	4c 8d 15 2c 51 00 00                            	lea    r10,[rip+0x512c]        # 0x214fa494fca8
    214fa494ab7c:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
    214fa494ab80:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    214fa494ab85:	0f 87 85 00 00 00                               	ja     0x214fa494ac10
    214fa494ab8b:	e9 67 00 00 00                                  	jmp    0x214fa494abf7
    214fa494ab90:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    214fa494ab95:	0f 83 75 00 00 00                               	jae    0x214fa494ac10
    214fa494ab9b:	e9 57 00 00 00                                  	jmp    0x214fa494abf7
    214fa494aba0:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    214fa494aba5:	0f 8a 65 00 00 00                               	jp     0x214fa494ac10
    214fa494abab:	0f 84 46 00 00 00                               	je     0x214fa494abf7
    214fa494abb1:	e9 5a 00 00 00                                  	jmp    0x214fa494ac10
    214fa494abb6:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
    214fa494abbb:	0f 87 4f 00 00 00                               	ja     0x214fa494ac10
    214fa494abc1:	e9 31 00 00 00                                  	jmp    0x214fa494abf7
    214fa494abc6:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    214fa494abcb:	0f 83 3f 00 00 00                               	jae    0x214fa494ac10
    214fa494abd1:	e9 21 00 00 00                                  	jmp    0x214fa494abf7
    214fa494abd6:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    214fa494abdb:	0f 8a 16 00 00 00                               	jp     0x214fa494abf7
    214fa494abe1:	0f 84 29 00 00 00                               	je     0x214fa494ac10
    214fa494abe7:	e9 0b 00 00 00                                  	jmp    0x214fa494abf7
    214fa494abec:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
    214fa494abf1:	0f 87 19 00 00 00                               	ja     0x214fa494ac10
    214fa494abf7:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
    214fa494abfe:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    214fa494ac02:	44 23 bd 68 fd ff ff                            	and    r15d,DWORD PTR [rbp-0x298]
    214fa494ac09:	4c 89 bd 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r15
    214fa494ac10:	83 c7 01                                        	add    edi,0x1
    214fa494ac13:	83 ff 04                                        	cmp    edi,0x4
    214fa494ac16:	0f 85 64 fe ff ff                               	jne    0x214fa494aa80
    214fa494ac1c:	8b bd 68 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x298]
    214fa494ac22:	85 ff                                           	test   edi,edi
    214fa494ac24:	0f 85 1d 00 00 00                               	jne    0x214fa494ac47
    214fa494ac2a:	4c 8b c6                                        	mov    r8,rsi
    214fa494ac2d:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
    214fa494ac31:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa494ac35:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
    214fa494ac39:	4c 8b e2                                        	mov    r12,rdx
    214fa494ac3c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494ac42:	e9 63 4a 00 00                                  	jmp    0x214fa494f6aa
    214fa494ac47:	c4 61 82 2a 8d 60 ff ff ff                      	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0xa0]
    214fa494ac50:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
    214fa494ac55:	c4 61 82 2a 95 b0 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x150]
    214fa494ac5e:	c4 43 31 21 ca 10                               	vinsertps xmm9,xmm9,xmm10,0x10
    214fa494ac64:	c4 61 82 2a 95 b8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x148]
    214fa494ac6d:	c4 43 31 21 ca 20                               	vinsertps xmm9,xmm9,xmm10,0x20
    214fa494ac73:	c4 61 82 2a 95 c8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x138]
    214fa494ac7c:	c4 43 31 21 ca 30                               	vinsertps xmm9,xmm9,xmm10,0x30
    214fa494ac82:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    214fa494ac8a:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    214fa494ac8f:	4c 8d 42 1c                                     	lea    r8,[rdx+0x1c]
    214fa494ac93:	c4 02 79 18 1c 20                               	vbroadcastss xmm11,DWORD PTR [r8+r12*1]
    214fa494ac99:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
    214fa494ac9e:	c4 e1 82 2a 95 50 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xb0]
    214fa494aca7:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    214fa494acac:	c4 e1 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0x100]
    214fa494acb5:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
    214fa494acbb:	c4 e1 82 2a 9d 18 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe8]
    214fa494acc4:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
    214fa494acca:	c4 e1 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe0]
    214fa494acd3:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
    214fa494acd9:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    214fa494acdd:	c4 c2 79 18 1c 00                               	vbroadcastss xmm3,DWORD PTR [r8+rax*1]
    214fa494ace3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    214fa494ace7:	c5 a0 58 e3                                     	vaddps xmm4,xmm11,xmm3
    214fa494aceb:	4c 8b 15 1f d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd81f]        # 0x214fa4948511
    214fa494acf2:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa494acf7:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa494acfb:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
    214fa494ad00:	c5 30 5c ca                                     	vsubps xmm9,xmm9,xmm2
    214fa494ad04:	c4 82 79 18 14 08                               	vbroadcastss xmm2,DWORD PTR [r8+r9*1]
    214fa494ad0a:	c5 30 59 ca                                     	vmulps xmm9,xmm9,xmm2
    214fa494ad0e:	c4 c1 58 58 d1                                  	vaddps xmm2,xmm4,xmm9
    214fa494ad13:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
    214fa494ad17:	c5 e8 c2 f4 02                                  	vcmpleps xmm6,xmm2,xmm4
    214fa494ad1c:	c5 78 50 c6                                     	vmovmskps r8d,xmm6
    214fa494ad20:	41 83 f0 ff                                     	xor    r8d,0xffffffff
    214fa494ad24:	44 23 c7                                        	and    r8d,edi
    214fa494ad27:	0f 85 16 00 00 00                               	jne    0x214fa494ad43
    214fa494ad2d:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    214fa494ad34:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    214fa494ad37:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494ad3e:	e9 7c 2a 00 00                                  	jmp    0x214fa494d7bf
    214fa494ad43:	c5 d0 5e f2                                     	vdivps xmm6,xmm5,xmm2
    214fa494ad47:	48 8d 7a 2c                                     	lea    rdi,[rdx+0x2c]
    214fa494ad4b:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    214fa494ad51:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    214fa494ad55:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    214fa494ad5b:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    214fa494ad5f:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    214fa494ad63:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    214fa494ad69:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    214fa494ad6d:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    214fa494ad71:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    214fa494ad75:	48 8d 7a 28                                     	lea    rdi,[rdx+0x28]
    214fa494ad79:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    214fa494ad7f:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    214fa494ad83:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
    214fa494ad8b:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    214fa494ad91:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    214fa494ad95:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    214fa494ad99:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    214fa494ad9f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    214fa494ada3:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    214fa494ada7:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    214fa494adab:	48 8d 7a 24                                     	lea    rdi,[rdx+0x24]
    214fa494adaf:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    214fa494adb5:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    214fa494adb9:	c5 f8 11 bd a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm7
    214fa494adc1:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    214fa494adc7:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    214fa494adcb:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    214fa494adcf:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    214fa494add5:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    214fa494add9:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    214fa494addd:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    214fa494ade1:	48 8d 7a 20                                     	lea    rdi,[rdx+0x20]
    214fa494ade5:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
    214fa494adeb:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    214fa494adef:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    214fa494adf7:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
    214fa494adfd:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    214fa494ae01:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    214fa494ae05:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
    214fa494ae0b:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    214fa494ae0f:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    214fa494ae13:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    214fa494ae17:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494ae1e:	44 8b bc 3a 34 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x134]
    214fa494ae26:	41 83 ef 01                                     	sub    r15d,0x1
    214fa494ae2a:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
    214fa494ae31:	41 83 ff 01                                     	cmp    r15d,0x1
    214fa494ae35:	0f 86 5a 17 00 00                               	jbe    0x214fa494c595
    214fa494ae3b:	44 8b bc 3a 38 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x138]
    214fa494ae43:	83 bc 3a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0x138],0x0
    214fa494ae4b:	0f 85 24 00 00 00                               	jne    0x214fa494ae75
    214fa494ae51:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
    214fa494ae59:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
    214fa494ae5d:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    214fa494ae65:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    214fa494ae6d:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    214fa494ae70:	e9 d7 28 00 00                                  	jmp    0x214fa494d74c
    214fa494ae75:	4d 8b f8                                        	mov    r15,r8
    214fa494ae78:	41 83 e7 08                                     	and    r15d,0x8
    214fa494ae7c:	49 8b c8                                        	mov    rcx,r8
    214fa494ae7f:	83 e1 04                                        	and    ecx,0x4
    214fa494ae82:	4c 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r15
    214fa494ae89:	4d 8b f8                                        	mov    r15,r8
    214fa494ae8c:	41 83 e7 02                                     	and    r15d,0x2
    214fa494ae90:	41 83 e0 01                                     	and    r8d,0x1
    214fa494ae94:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    214fa494ae9c:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    214fa494aea4:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    214fa494aeac:	c5 78 11 8d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm9
    214fa494aeb4:	c5 f8 11 9d 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm3
    214fa494aebc:	c5 78 11 9d f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm11
    214fa494aec4:	c5 f8 11 ad d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm5
    214fa494aecc:	c5 f8 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm4
    214fa494aed4:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
    214fa494aedb:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
    214fa494aee2:	4c 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r8
    214fa494aee9:	45 33 c0                                        	xor    r8d,r8d
    214fa494aeec:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494aef0:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    214fa494aef8:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    214fa494af00:	e9 6a 00 00 00                                  	jmp    0x214fa494af6f
    214fa494af05:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494af0e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494af17:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494af20:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494af29:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494af32:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494af3b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    214fa494af40:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    214fa494af48:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    214fa494af50:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494af57:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    214fa494af5f:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    214fa494af67:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    214fa494af6f:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa494af72:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    214fa494af78:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    214fa494af7f:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    214fa494af86:	4c 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r8
    214fa494af8d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa494af92:	0f 85 e4 4a 00 00                               	jne    0x214fa494fa7c
    214fa494af98:	44 8b 8c 3a 3c 01 00 00                         	mov    r9d,DWORD PTR [rdx+rdi*1+0x13c]
    214fa494afa0:	41 8b c8                                        	mov    ecx,r8d
    214fa494afa3:	41 d3 e9                                        	shr    r9d,cl
    214fa494afa6:	41 f6 c1 01                                     	test   r9b,0x1
    214fa494afaa:	0f 85 2d 00 00 00                               	jne    0x214fa494afdd
    214fa494afb0:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    214fa494afb7:	45 8b c8                                        	mov    r9d,r8d
    214fa494afba:	41 c1 e1 06                                     	shl    r9d,0x6
    214fa494afbe:	41 03 c9                                        	add    ecx,r9d
    214fa494afc1:	c5 fa 7f 6c 0a 30                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x30],xmm5
    214fa494afc7:	c5 fa 7f 6c 0a 20                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x20],xmm5
    214fa494afcd:	c5 fa 7f 6c 0a 10                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x10],xmm5
    214fa494afd3:	c5 fa 7f 2c 0a                                  	vmovdqu XMMWORD PTR [rdx+rcx*1],xmm5
    214fa494afd8:	e9 11 12 00 00                                  	jmp    0x214fa494c1ee
    214fa494afdd:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
    214fa494afe4:	45 8b c8                                        	mov    r9d,r8d
    214fa494afe7:	41 c1 e1 06                                     	shl    r9d,0x6
    214fa494afeb:	44 03 c9                                        	add    r9d,ecx
    214fa494afee:	41 6b c8 4c                                     	imul   ecx,r8d,0x4c
    214fa494aff2:	03 c8                                           	add    ecx,eax
    214fa494aff4:	8b 7c 0a 38                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x38]
    214fa494aff8:	83 7c 0a 38 00                                  	cmp    DWORD PTR [rdx+rcx*1+0x38],0x0
    214fa494affd:	0f 85 a2 11 00 00                               	jne    0x214fa494c1a5
    214fa494b003:	41 8b f8                                        	mov    edi,r8d
    214fa494b006:	c1 e7 04                                        	shl    edi,0x4
    214fa494b009:	46 8d 04 27                                     	lea    r8d,[rdi+r12*1]
    214fa494b00d:	4c 8d 62 04                                     	lea    r12,[rdx+0x4]
    214fa494b011:	c4 02 79 18 04 04                               	vbroadcastss xmm8,DWORD PTR [r12+r8*1]
    214fa494b017:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    214fa494b01c:	41 8d 04 3f                                     	lea    eax,[r15+rdi*1]
    214fa494b020:	c4 42 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+rax*1]
    214fa494b026:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
    214fa494b02b:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    214fa494b030:	03 fb                                           	add    edi,ebx
    214fa494b032:	c4 42 79 18 14 3c                               	vbroadcastss xmm10,DWORD PTR [r12+rdi*1]
    214fa494b038:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
    214fa494b03d:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
    214fa494b042:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    214fa494b047:	c4 22 79 18 14 02                               	vbroadcastss xmm10,DWORD PTR [rdx+r8*1]
    214fa494b04d:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
    214fa494b052:	c4 62 79 18 24 02                               	vbroadcastss xmm12,DWORD PTR [rdx+rax*1]
    214fa494b058:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    214fa494b05d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    214fa494b062:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
    214fa494b068:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    214fa494b06d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    214fa494b072:	c4 41 48 59 d2                                  	vmulps xmm10,xmm6,xmm10
    214fa494b077:	44 8b 24 0a                                     	mov    r12d,DWORD PTR [rdx+rcx*1]
    214fa494b07b:	41 83 fc 01                                     	cmp    r12d,0x1
    214fa494b07f:	0f 85 22 0e 00 00                               	jne    0x214fa494bea7
    214fa494b085:	44 8b 7c 0a 28                                  	mov    r15d,DWORD PTR [rdx+rcx*1+0x28]
    214fa494b08a:	45 85 ff                                        	test   r15d,r15d
    214fa494b08d:	0f 84 14 0e 00 00                               	je     0x214fa494bea7
    214fa494b093:	8b 5c 0a 1c                                     	mov    ebx,DWORD PTR [rdx+rcx*1+0x1c]
    214fa494b097:	85 db                                           	test   ebx,ebx
    214fa494b099:	0f 8e 08 0e 00 00                               	jle    0x214fa494bea7
    214fa494b09f:	44 8b 5c 0a 20                                  	mov    r11d,DWORD PTR [rdx+rcx*1+0x20]
    214fa494b0a4:	45 85 db                                        	test   r11d,r11d
    214fa494b0a7:	0f 8e f6 0d 00 00                               	jle    0x214fa494bea3
    214fa494b0ad:	44 8b d3                                        	mov    r10d,ebx
    214fa494b0b0:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    214fa494b0b5:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    214fa494b0ba:	8b 7c 0a 10                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x10]
    214fa494b0be:	45 33 c0                                        	xor    r8d,r8d
    214fa494b0c1:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
    214fa494b0c7:	41 0f 95 c0                                     	setne  r8b
    214fa494b0cb:	81 ff 00 29 00 00                               	cmp    edi,0x2900
    214fa494b0d1:	40 0f 95 c7                                     	setne  dil
    214fa494b0d5:	40 0f b6 ff                                     	movzx  edi,dil
    214fa494b0d9:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    214fa494b0e0:	41 23 f8                                        	and    edi,r8d
    214fa494b0e3:	0f 85 0f 00 00 00                               	jne    0x214fa494b0f8
    214fa494b0e9:	c4 41 58 5f d2                                  	vmaxps xmm10,xmm4,xmm10
    214fa494b0ee:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
    214fa494b0f3:	e9 0b 00 00 00                                  	jmp    0x214fa494b103
    214fa494b0f8:	c4 43 79 08 ea 09                               	vroundps xmm13,xmm10,0x9
    214fa494b0fe:	c4 41 28 5c d5                                  	vsubps xmm10,xmm10,xmm13
    214fa494b103:	c4 41 18 59 d2                                  	vmulps xmm10,xmm12,xmm10
    214fa494b108:	45 8b d3                                        	mov    r10d,r11d
    214fa494b10b:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
    214fa494b110:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
    214fa494b115:	44 8b 44 0a 14                                  	mov    r8d,DWORD PTR [rdx+rcx*1+0x14]
    214fa494b11a:	45 33 e4                                        	xor    r12d,r12d
    214fa494b11d:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
    214fa494b124:	41 0f 95 c4                                     	setne  r12b
    214fa494b128:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
    214fa494b12f:	41 0f 95 c0                                     	setne  r8b
    214fa494b133:	45 0f b6 c0                                     	movzx  r8d,r8b
    214fa494b137:	45 23 c4                                        	and    r8d,r12d
    214fa494b13a:	0f 85 0f 00 00 00                               	jne    0x214fa494b14f
    214fa494b140:	c4 41 58 5f c0                                  	vmaxps xmm8,xmm4,xmm8
    214fa494b145:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
    214fa494b14a:	e9 0b 00 00 00                                  	jmp    0x214fa494b15a
    214fa494b14f:	c4 43 79 08 e8 09                               	vroundps xmm13,xmm8,0x9
    214fa494b155:	c4 41 38 5c c5                                  	vsubps xmm8,xmm8,xmm13
    214fa494b15a:	c4 41 18 59 c0                                  	vmulps xmm8,xmm12,xmm8
    214fa494b15f:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
    214fa494b169:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa494b16e:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa494b173:	c4 41 38 58 ec                                  	vaddps xmm13,xmm8,xmm12
    214fa494b178:	44 8b 64 0a 0c                                  	mov    r12d,DWORD PTR [rdx+rcx*1+0xc]
    214fa494b17d:	45 33 e4                                        	xor    r12d,r12d
    214fa494b180:	81 7c 0a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0xc],0x2600
    214fa494b188:	41 0f 94 c4                                     	sete   r12b
    214fa494b18c:	45 85 e4                                        	test   r12d,r12d
    214fa494b18f:	0f 85 66 00 00 00                               	jne    0x214fa494b1fb
    214fa494b195:	c4 43 79 08 c5 09                               	vroundps xmm8,xmm13,0x9
    214fa494b19b:	49 ba 50 28 ea 5e 84 5c 00 00                   	movabs r10,0x5c845eea2850
    214fa494b1a5:	c4 41 38 54 32                                  	vandps xmm14,xmm8,XMMWORD PTR [r10]
    214fa494b1aa:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
    214fa494b1b4:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    214fa494b1b9:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    214fa494b1bd:	c5 08 c2 f1 01                                  	vcmpltps xmm14,xmm14,xmm1
    214fa494b1c2:	4c 8b 15 95 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd95]        # 0x214fa4946f5e
    214fa494b1c9:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    214fa494b1cf:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
    214fa494b1d4:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    214fa494b1da:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
    214fa494b1de:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
    214fa494b1e3:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
    214fa494b1e8:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
    214fa494b1ed:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
    214fa494b1f2:	c5 79 28 ec                                     	vmovapd xmm13,xmm4
    214fa494b1f6:	e9 49 00 00 00                                  	jmp    0x214fa494b244
    214fa494b1fb:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
    214fa494b201:	4c 8b 15 95 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff95]        # 0x214fa494b19d
    214fa494b208:	c4 41 18 54 2a                                  	vandps xmm13,xmm12,XMMWORD PTR [r10]
    214fa494b20d:	4c 8b 15 98 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff98]        # 0x214fa494b1ac
    214fa494b214:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    214fa494b219:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    214fa494b21d:	c5 10 c2 f1 01                                  	vcmpltps xmm14,xmm13,xmm1
    214fa494b222:	4c 8b 15 35 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd35]        # 0x214fa4946f5e
    214fa494b229:	c4 41 18 c2 fc 00                               	vcmpeqps xmm15,xmm12,xmm12
    214fa494b22f:	c4 41 18 54 ef                                  	vandps xmm13,xmm12,xmm15
    214fa494b234:	c4 41 18 c2 3a 0d                               	vcmpgeps xmm15,xmm12,XMMWORD PTR [r10]
    214fa494b23a:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
    214fa494b23f:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
    214fa494b244:	c4 c3 79 08 e2 09                               	vroundps xmm4,xmm10,0x9
    214fa494b24a:	4c 8b 15 0d bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd0d]        # 0x214fa4946f5e
    214fa494b251:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    214fa494b256:	c4 c1 58 54 c7                                  	vandps xmm0,xmm4,xmm15
    214fa494b25b:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    214fa494b261:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    214fa494b265:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    214fa494b26a:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
    214fa494b274:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa494b279:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa494b27d:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x214fa494b19d
    214fa494b284:	c4 41 58 54 0a                                  	vandps xmm9,xmm4,XMMWORD PTR [r10]
    214fa494b289:	c5 30 c2 c9 01                                  	vcmpltps xmm9,xmm9,xmm1
    214fa494b28e:	c5 31 df fe                                     	vpandn xmm15,xmm9,xmm6
    214fa494b292:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
    214fa494b297:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494b29c:	8d 43 ff                                        	lea    eax,[rbx-0x1]
    214fa494b29f:	c5 79 6e c8                                     	vmovd  xmm9,eax
    214fa494b2a3:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa494b2a8:	8b 44 0a 2c                                     	mov    eax,DWORD PTR [rdx+rcx*1+0x2c]
    214fa494b2ac:	c4 e2 79 3d ca                                  	vpmaxsd xmm1,xmm0,xmm2
    214fa494b2b1:	c4 c2 71 39 c9                                  	vpminsd xmm1,xmm1,xmm9
    214fa494b2b6:	85 ff                                           	test   edi,edi
    214fa494b2b8:	0f 84 58 00 00 00                               	je     0x214fa494b316
    214fa494b2be:	c5 f9 6e c8                                     	vmovd  xmm1,eax
    214fa494b2c2:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    214fa494b2c7:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
    214fa494b2cb:	85 c0                                           	test   eax,eax
    214fa494b2cd:	0f 85 43 00 00 00                               	jne    0x214fa494b316
    214fa494b2d3:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
    214fa494b2d7:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
    214fa494b2dc:	c4 c1 79 66 d9                                  	vpcmpgtd xmm3,xmm0,xmm9
    214fa494b2e1:	c5 e1 db d9                                     	vpand  xmm3,xmm3,xmm1
    214fa494b2e5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa494b2ea:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    214fa494b2ef:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    214fa494b2f3:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    214fa494b2f7:	c4 41 71 db db                                  	vpand  xmm11,xmm1,xmm11
    214fa494b2fc:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa494b301:	c4 c1 79 fe cb                                  	vpaddd xmm1,xmm0,xmm11
    214fa494b306:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    214fa494b30e:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    214fa494b316:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
    214fa494b31a:	c4 c1 11 db f6                                  	vpand  xmm6,xmm13,xmm14
    214fa494b31f:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa494b324:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
    214fa494b328:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
    214fa494b32d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494b332:	8b 4c 0a 30                                     	mov    ecx,DWORD PTR [rdx+rcx*1+0x30]
    214fa494b336:	c4 62 49 3d f2                                  	vpmaxsd xmm14,xmm6,xmm2
    214fa494b33b:	c4 42 09 39 f5                                  	vpminsd xmm14,xmm14,xmm13
    214fa494b340:	45 85 c0                                        	test   r8d,r8d
    214fa494b343:	0f 84 4a 00 00 00                               	je     0x214fa494b393
    214fa494b349:	c5 79 6e f1                                     	vmovd  xmm14,ecx
    214fa494b34d:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    214fa494b352:	c5 09 db f6                                     	vpand  xmm14,xmm14,xmm6
    214fa494b356:	85 c9                                           	test   ecx,ecx
    214fa494b358:	0f 85 35 00 00 00                               	jne    0x214fa494b393
    214fa494b35e:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    214fa494b363:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    214fa494b368:	c4 c1 49 66 dd                                  	vpcmpgtd xmm3,xmm6,xmm13
    214fa494b36d:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
    214fa494b372:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa494b377:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
    214fa494b37c:	c5 69 66 de                                     	vpcmpgtd xmm11,xmm2,xmm6
    214fa494b380:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
    214fa494b384:	c4 41 09 db db                                  	vpand  xmm11,xmm14,xmm11
    214fa494b389:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
    214fa494b38e:	c4 41 49 fe f3                                  	vpaddd xmm14,xmm6,xmm11
    214fa494b393:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    214fa494b397:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa494b39c:	c4 62 09 40 f3                                  	vpmulld xmm14,xmm14,xmm3
    214fa494b3a1:	c5 09 fe d9                                     	vpaddd xmm11,xmm14,xmm1
    214fa494b3a5:	c4 63 79 16 db 03                               	vpextrd ebx,xmm11,0x3
    214fa494b3ab:	c4 43 79 16 d9 02                               	vpextrd r9d,xmm11,0x2
    214fa494b3b1:	48 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rbx
    214fa494b3b8:	c4 63 79 16 db 01                               	vpextrd ebx,xmm11,0x1
    214fa494b3be:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
    214fa494b3c5:	c4 41 79 7e d9                                  	vmovd  r9d,xmm11
    214fa494b3ca:	45 85 e4                                        	test   r12d,r12d
    214fa494b3cd:	0f 85 df 08 00 00                               	jne    0x214fa494bcb2
    214fa494b3d3:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    214fa494b3d7:	c4 62 79 3d da                                  	vpmaxsd xmm11,xmm0,xmm2
    214fa494b3dc:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
    214fa494b3e1:	85 ff                                           	test   edi,edi
    214fa494b3e3:	0f 84 41 00 00 00                               	je     0x214fa494b42a
    214fa494b3e9:	c5 79 6e d8                                     	vmovd  xmm11,eax
    214fa494b3ed:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa494b3f2:	c4 41 79 db db                                  	vpand  xmm11,xmm0,xmm11
    214fa494b3f7:	85 c0                                           	test   eax,eax
    214fa494b3f9:	0f 85 2b 00 00 00                               	jne    0x214fa494b42a
    214fa494b3ff:	c4 41 79 66 c9                                  	vpcmpgtd xmm9,xmm0,xmm9
    214fa494b404:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
    214fa494b408:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa494b40d:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    214fa494b412:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
    214fa494b416:	c4 41 21 df f9                                  	vpandn xmm15,xmm11,xmm9
    214fa494b41b:	c4 41 61 db cb                                  	vpand  xmm9,xmm3,xmm11
    214fa494b420:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa494b425:	c4 41 79 fe d9                                  	vpaddd xmm11,xmm0,xmm9
    214fa494b42a:	c5 c9 fe c7                                     	vpaddd xmm0,xmm6,xmm7
    214fa494b42e:	c4 e2 79 3d f2                                  	vpmaxsd xmm6,xmm0,xmm2
    214fa494b433:	c4 c2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm13
    214fa494b438:	45 85 c0                                        	test   r8d,r8d
    214fa494b43b:	0f 84 49 00 00 00                               	je     0x214fa494b48a
    214fa494b441:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
    214fa494b445:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa494b44a:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
    214fa494b44e:	85 c9                                           	test   ecx,ecx
    214fa494b450:	0f 85 34 00 00 00                               	jne    0x214fa494b48a
    214fa494b456:	c4 c1 79 6e f3                                  	vmovd  xmm6,r11d
    214fa494b45b:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa494b460:	c4 41 79 66 cd                                  	vpcmpgtd xmm9,xmm0,xmm13
    214fa494b465:	c5 31 db ce                                     	vpand  xmm9,xmm9,xmm6
    214fa494b469:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa494b46e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
    214fa494b473:	c5 69 66 e8                                     	vpcmpgtd xmm13,xmm2,xmm0
    214fa494b477:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
    214fa494b47c:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
    214fa494b481:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa494b486:	c5 f9 fe f6                                     	vpaddd xmm6,xmm0,xmm6
    214fa494b48a:	c4 e2 49 40 c3                                  	vpmulld xmm0,xmm6,xmm3
    214fa494b48f:	c5 f9 fe f1                                     	vpaddd xmm6,xmm0,xmm1
    214fa494b493:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    214fa494b49a:	0f 84 71 00 00 00                               	je     0x214fa494b511
    214fa494b4a0:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
    214fa494b4a7:	0f 85 07 00 00 00                               	jne    0x214fa494b4b4
    214fa494b4ad:	33 ff                                           	xor    edi,edi
    214fa494b4af:	e9 07 00 00 00                                  	jmp    0x214fa494b4bb
    214fa494b4b4:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    214fa494b4b8:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494b4bb:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
    214fa494b4c2:	0f 85 08 00 00 00                               	jne    0x214fa494b4d0
    214fa494b4c8:	45 33 c0                                        	xor    r8d,r8d
    214fa494b4cb:	e9 08 00 00 00                                  	jmp    0x214fa494b4d8
    214fa494b4d0:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    214fa494b4d4:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    214fa494b4d8:	83 bd 50 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1b0],0x0
    214fa494b4df:	0f 85 08 00 00 00                               	jne    0x214fa494b4ed
    214fa494b4e5:	45 33 db                                        	xor    r11d,r11d
    214fa494b4e8:	e9 0f 00 00 00                                  	jmp    0x214fa494b4fc
    214fa494b4ed:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    214fa494b4f4:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    214fa494b4f8:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494b4fc:	83 bd b0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x150],0x0
    214fa494b503:	0f 85 3c 00 00 00                               	jne    0x214fa494b545
    214fa494b509:	45 33 e4                                        	xor    r12d,r12d
    214fa494b50c:	e9 43 00 00 00                                  	jmp    0x214fa494b554
    214fa494b511:	c5 71 fe cf                                     	vpaddd xmm9,xmm1,xmm7
    214fa494b515:	c4 41 21 76 c9                                  	vpcmpeqd xmm9,xmm11,xmm9
    214fa494b51a:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
    214fa494b51f:	83 ff 0f                                        	cmp    edi,0xf
    214fa494b522:	0f 84 f8 02 00 00                               	je     0x214fa494b820
    214fa494b528:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    214fa494b52e:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b532:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    214fa494b536:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    214fa494b53a:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    214fa494b53e:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    214fa494b542:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494b545:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    214fa494b54c:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    214fa494b550:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    214fa494b554:	c4 41 21 fe ce                                  	vpaddd xmm9,xmm11,xmm14
    214fa494b559:	c5 79 6e ef                                     	vmovd  xmm13,edi
    214fa494b55d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494b562:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    214fa494b569:	0f 84 8a 00 00 00                               	je     0x214fa494b5f9
    214fa494b56f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    214fa494b576:	0f 85 07 00 00 00                               	jne    0x214fa494b583
    214fa494b57c:	33 ff                                           	xor    edi,edi
    214fa494b57e:	e9 0b 00 00 00                                  	jmp    0x214fa494b58e
    214fa494b583:	c5 79 7e cf                                     	vmovd  edi,xmm9
    214fa494b587:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b58b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494b58e:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    214fa494b595:	0f 85 07 00 00 00                               	jne    0x214fa494b5a2
    214fa494b59b:	33 c0                                           	xor    eax,eax
    214fa494b59d:	e9 0d 00 00 00                                  	jmp    0x214fa494b5af
    214fa494b5a2:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
    214fa494b5a8:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    214fa494b5ac:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    214fa494b5af:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    214fa494b5b6:	0f 85 07 00 00 00                               	jne    0x214fa494b5c3
    214fa494b5bc:	33 db                                           	xor    ebx,ebx
    214fa494b5be:	e9 0d 00 00 00                                  	jmp    0x214fa494b5d0
    214fa494b5c3:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    214fa494b5c9:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    214fa494b5cd:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    214fa494b5d0:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    214fa494b5d7:	0f 85 41 00 00 00                               	jne    0x214fa494b61e
    214fa494b5dd:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    214fa494b5e3:	c5 79 6e ef                                     	vmovd  xmm13,edi
    214fa494b5e7:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494b5ec:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    214fa494b5f2:	33 c9                                           	xor    ecx,ecx
    214fa494b5f4:	e9 54 00 00 00                                  	jmp    0x214fa494b64d
    214fa494b5f9:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    214fa494b5ff:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b603:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    214fa494b606:	c5 79 7e cf                                     	vmovd  edi,xmm9
    214fa494b60a:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b60e:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494b611:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
    214fa494b617:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
    214fa494b61b:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    214fa494b61e:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
    214fa494b624:	41 8d 0c 8f                                     	lea    ecx,[r15+rcx*4]
    214fa494b628:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
    214fa494b62b:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
    214fa494b631:	c5 79 6e ef                                     	vmovd  xmm13,edi
    214fa494b635:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494b63a:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    214fa494b640:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    214fa494b647:	0f 84 78 00 00 00                               	je     0x214fa494b6c5
    214fa494b64d:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    214fa494b654:	0f 85 07 00 00 00                               	jne    0x214fa494b661
    214fa494b65a:	33 ff                                           	xor    edi,edi
    214fa494b65c:	e9 0b 00 00 00                                  	jmp    0x214fa494b66c
    214fa494b661:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    214fa494b665:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b669:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494b66c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    214fa494b673:	0f 85 08 00 00 00                               	jne    0x214fa494b681
    214fa494b679:	45 33 c0                                        	xor    r8d,r8d
    214fa494b67c:	e9 0e 00 00 00                                  	jmp    0x214fa494b68f
    214fa494b681:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
    214fa494b687:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    214fa494b68b:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    214fa494b68f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    214fa494b696:	0f 85 07 00 00 00                               	jne    0x214fa494b6a3
    214fa494b69c:	33 c0                                           	xor    eax,eax
    214fa494b69e:	e9 0d 00 00 00                                  	jmp    0x214fa494b6b0
    214fa494b6a3:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    214fa494b6a9:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    214fa494b6ad:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    214fa494b6b0:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    214fa494b6b7:	0f 85 2e 00 00 00                               	jne    0x214fa494b6eb
    214fa494b6bd:	45 33 c9                                        	xor    r9d,r9d
    214fa494b6c0:	e9 34 00 00 00                                  	jmp    0x214fa494b6f9
    214fa494b6c5:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    214fa494b6cb:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b6cf:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    214fa494b6d3:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    214fa494b6d7:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b6db:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494b6de:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
    214fa494b6e4:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
    214fa494b6e8:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    214fa494b6eb:	c4 c3 79 16 f1 03                               	vpextrd r9d,xmm6,0x3
    214fa494b6f1:	47 8d 0c 8f                                     	lea    r9d,[r15+r9*4]
    214fa494b6f5:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    214fa494b6f9:	c4 c3 31 22 f3 02                               	vpinsrd xmm6,xmm9,r11d,0x2
    214fa494b6ff:	c4 63 11 22 cb 02                               	vpinsrd xmm9,xmm13,ebx,0x2
    214fa494b705:	c4 c1 79 fe c3                                  	vpaddd xmm0,xmm0,xmm11
    214fa494b70a:	c5 79 6e df                                     	vmovd  xmm11,edi
    214fa494b70e:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa494b713:	c4 43 21 22 d8 01                               	vpinsrd xmm11,xmm11,r8d,0x1
    214fa494b719:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
    214fa494b71f:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    214fa494b726:	0f 84 7a 00 00 00                               	je     0x214fa494b7a6
    214fa494b72c:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    214fa494b733:	0f 85 07 00 00 00                               	jne    0x214fa494b740
    214fa494b739:	33 ff                                           	xor    edi,edi
    214fa494b73b:	e9 0b 00 00 00                                  	jmp    0x214fa494b74b
    214fa494b740:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    214fa494b744:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b748:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494b74b:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    214fa494b752:	0f 85 08 00 00 00                               	jne    0x214fa494b760
    214fa494b758:	45 33 c0                                        	xor    r8d,r8d
    214fa494b75b:	e9 0e 00 00 00                                  	jmp    0x214fa494b76e
    214fa494b760:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
    214fa494b766:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
    214fa494b76a:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    214fa494b76e:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    214fa494b775:	0f 85 08 00 00 00                               	jne    0x214fa494b783
    214fa494b77b:	45 33 db                                        	xor    r11d,r11d
    214fa494b77e:	e9 0e 00 00 00                                  	jmp    0x214fa494b791
    214fa494b783:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    214fa494b789:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    214fa494b78d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494b791:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    214fa494b798:	0f 85 2f 00 00 00                               	jne    0x214fa494b7cd
    214fa494b79e:	45 33 ff                                        	xor    r15d,r15d
    214fa494b7a1:	e9 35 00 00 00                                  	jmp    0x214fa494b7db
    214fa494b7a6:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
    214fa494b7ac:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b7b0:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    214fa494b7b4:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    214fa494b7b8:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b7bc:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494b7bf:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
    214fa494b7c5:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    214fa494b7c9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494b7cd:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
    214fa494b7d3:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    214fa494b7d7:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    214fa494b7db:	c4 c3 49 22 c4 03                               	vpinsrd xmm0,xmm6,r12d,0x3
    214fa494b7e1:	c4 e3 31 22 f1 03                               	vpinsrd xmm6,xmm9,ecx,0x3
    214fa494b7e7:	c5 79 6e cf                                     	vmovd  xmm9,edi
    214fa494b7eb:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa494b7f0:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
    214fa494b7f6:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
    214fa494b7fc:	c4 43 31 22 cf 03                               	vpinsrd xmm9,xmm9,r15d,0x3
    214fa494b802:	c4 43 21 22 d9 03                               	vpinsrd xmm11,xmm11,r9d,0x3
    214fa494b808:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
    214fa494b80c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
    214fa494b811:	c4 41 79 28 df                                  	vmovapd xmm11,xmm15
    214fa494b816:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
    214fa494b81b:	e9 95 00 00 00                                  	jmp    0x214fa494b8b5
    214fa494b820:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    214fa494b824:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
    214fa494b829:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    214fa494b82d:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    214fa494b832:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
    214fa494b837:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    214fa494b83d:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494b841:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    214fa494b846:	44 8b 85 c8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x138]
    214fa494b84d:	43 8d 3c 87                                     	lea    edi,[r15+r8*4]
    214fa494b851:	c5 7b 10 1c 3a                                  	vmovsd xmm11,QWORD PTR [rdx+rdi*1]
    214fa494b856:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
    214fa494b85b:	c4 41 78 c6 d9 dd                               	vshufps xmm11,xmm0,xmm9,0xdd
    214fa494b861:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
    214fa494b867:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
    214fa494b86c:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    214fa494b870:	41 03 ff                                        	add    edi,r15d
    214fa494b873:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    214fa494b878:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    214fa494b87e:	41 03 ff                                        	add    edi,r15d
    214fa494b881:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    214fa494b886:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
    214fa494b88b:	c4 e3 79 16 f7 02                               	vpextrd edi,xmm6,0x2
    214fa494b891:	41 03 ff                                        	add    edi,r15d
    214fa494b894:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    214fa494b899:	c4 e3 79 16 f7 03                               	vpextrd edi,xmm6,0x3
    214fa494b89f:	41 03 ff                                        	add    edi,r15d
    214fa494b8a2:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    214fa494b8a7:	c5 91 6c f6                                     	vpunpcklqdq xmm6,xmm13,xmm6
    214fa494b8ab:	c5 30 c6 ee dd                                  	vshufps xmm13,xmm9,xmm6,0xdd
    214fa494b8b0:	c5 b0 c6 f6 88                                  	vshufps xmm6,xmm9,xmm6,0x88
    214fa494b8b5:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
    214fa494b8ba:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
    214fa494b8bf:	c5 28 5c d4                                     	vsubps xmm10,xmm10,xmm4
    214fa494b8c3:	c4 41 50 5c e2                                  	vsubps xmm12,xmm5,xmm10
    214fa494b8c8:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
    214fa494b8d2:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa494b8d7:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa494b8dc:	c4 c1 79 db ce                                  	vpand  xmm1,xmm0,xmm14
    214fa494b8e1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494b8e6:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa494b8ec:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa494b8f1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494b8f6:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa494b8fb:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa494b8ff:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa494b903:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa494b908:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    214fa494b90c:	c4 c1 21 db de                                  	vpand  xmm3,xmm11,xmm14
    214fa494b911:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494b916:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa494b91c:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa494b921:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494b926:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa494b92b:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa494b92f:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa494b933:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa494b938:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
    214fa494b93c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    214fa494b940:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    214fa494b944:	c4 c1 49 db de                                  	vpand  xmm3,xmm6,xmm14
    214fa494b949:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494b94e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
    214fa494b954:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
    214fa494b959:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494b95e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
    214fa494b963:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa494b967:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
    214fa494b96b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
    214fa494b970:	c5 98 59 db                                     	vmulps xmm3,xmm12,xmm3
    214fa494b974:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
    214fa494b979:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494b97e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa494b984:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa494b989:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494b98e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa494b993:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa494b997:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa494b99b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa494b9a0:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    214fa494b9a4:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
    214fa494b9a8:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
    214fa494b9ac:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
    214fa494b9b0:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
    214fa494b9ba:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa494b9bf:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa494b9c3:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    214fa494b9c7:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    214fa494b9ce:	c4 a1 7a 7f 0c 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm1
    214fa494b9d4:	c5 f1 72 d0 10                                  	vpsrld xmm1,xmm0,0x10
    214fa494b9d9:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    214fa494b9de:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494b9e3:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa494b9e9:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa494b9ee:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494b9f3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa494b9f8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa494b9fc:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa494ba00:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa494ba05:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    214fa494ba09:	c4 c1 59 72 d3 10                               	vpsrld xmm4,xmm11,0x10
    214fa494ba0f:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    214fa494ba14:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494ba19:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa494ba1f:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa494ba24:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494ba29:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa494ba2e:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa494ba32:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa494ba36:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa494ba3b:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
    214fa494ba3f:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    214fa494ba43:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    214fa494ba47:	c5 d9 72 d6 10                                  	vpsrld xmm4,xmm6,0x10
    214fa494ba4c:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
    214fa494ba51:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494ba56:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
    214fa494ba5c:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
    214fa494ba61:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494ba66:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
    214fa494ba6b:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
    214fa494ba6f:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
    214fa494ba73:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
    214fa494ba78:	c5 98 59 e4                                     	vmulps xmm4,xmm12,xmm4
    214fa494ba7c:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
    214fa494ba82:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa494ba87:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494ba8c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    214fa494ba92:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    214fa494ba97:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494ba9c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    214fa494baa1:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    214fa494baa5:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    214fa494baa9:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    214fa494baae:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    214fa494bab2:	c5 d8 58 d2                                     	vaddps xmm2,xmm4,xmm2
    214fa494bab6:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
    214fa494baba:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    214fa494babe:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
    214fa494bac2:	c4 a1 7a 7f 4c 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm1
    214fa494bac9:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
    214fa494bace:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
    214fa494bad3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bad8:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
    214fa494bade:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
    214fa494bae3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bae8:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
    214fa494baed:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
    214fa494baf1:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
    214fa494baf5:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
    214fa494bafa:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
    214fa494bafe:	c4 c1 69 72 d3 08                               	vpsrld xmm2,xmm11,0x8
    214fa494bb04:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa494bb09:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bb0e:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    214fa494bb14:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    214fa494bb19:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bb1e:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    214fa494bb23:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    214fa494bb27:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    214fa494bb2b:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    214fa494bb30:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
    214fa494bb34:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
    214fa494bb38:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
    214fa494bb3c:	c5 e9 72 d6 08                                  	vpsrld xmm2,xmm6,0x8
    214fa494bb41:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
    214fa494bb46:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bb4b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
    214fa494bb51:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
    214fa494bb56:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bb5b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
    214fa494bb60:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
    214fa494bb64:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
    214fa494bb68:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
    214fa494bb6d:	c5 98 59 d2                                     	vmulps xmm2,xmm12,xmm2
    214fa494bb71:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
    214fa494bb77:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
    214fa494bb7c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bb81:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
    214fa494bb87:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
    214fa494bb8c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bb91:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
    214fa494bb97:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
    214fa494bb9c:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
    214fa494bba1:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
    214fa494bba6:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
    214fa494bbab:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
    214fa494bbb0:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
    214fa494bbb5:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
    214fa494bbba:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
    214fa494bbbe:	c4 21 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm14
    214fa494bbc5:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    214fa494bbca:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bbcf:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa494bbd5:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa494bbda:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bbdf:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa494bbe4:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa494bbe8:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa494bbec:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa494bbf1:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    214fa494bbf5:	c4 c1 21 72 d3 18                               	vpsrld xmm11,xmm11,0x18
    214fa494bbfb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bc00:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
    214fa494bc06:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
    214fa494bc0b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bc10:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
    214fa494bc16:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    214fa494bc1b:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
    214fa494bc20:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
    214fa494bc25:	c4 41 28 59 db                                  	vmulps xmm11,xmm10,xmm11
    214fa494bc2a:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa494bc2f:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa494bc33:	c5 c9 72 d6 18                                  	vpsrld xmm6,xmm6,0x18
    214fa494bc38:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bc3d:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa494bc43:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa494bc48:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bc4d:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa494bc52:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa494bc56:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa494bc5a:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa494bc5f:	c5 98 59 f6                                     	vmulps xmm6,xmm12,xmm6
    214fa494bc63:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
    214fa494bc69:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bc6e:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
    214fa494bc74:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
    214fa494bc79:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bc7e:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
    214fa494bc84:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
    214fa494bc89:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
    214fa494bc8e:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
    214fa494bc93:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
    214fa494bc98:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
    214fa494bc9d:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    214fa494bca1:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa494bca5:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    214fa494bcad:	e9 cd 01 00 00                                  	jmp    0x214fa494be7f
    214fa494bcb2:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
    214fa494bcb9:	0f 84 71 00 00 00                               	je     0x214fa494bd30
    214fa494bcbf:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
    214fa494bcc6:	0f 85 07 00 00 00                               	jne    0x214fa494bcd3
    214fa494bccc:	33 ff                                           	xor    edi,edi
    214fa494bcce:	e9 07 00 00 00                                  	jmp    0x214fa494bcda
    214fa494bcd3:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    214fa494bcd7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494bcda:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    214fa494bce1:	0f 85 08 00 00 00                               	jne    0x214fa494bcef
    214fa494bce7:	45 33 c0                                        	xor    r8d,r8d
    214fa494bcea:	e9 08 00 00 00                                  	jmp    0x214fa494bcf7
    214fa494bcef:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
    214fa494bcf3:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
    214fa494bcf7:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    214fa494bcfe:	0f 85 08 00 00 00                               	jne    0x214fa494bd0c
    214fa494bd04:	45 33 db                                        	xor    r11d,r11d
    214fa494bd07:	e9 0f 00 00 00                                  	jmp    0x214fa494bd1b
    214fa494bd0c:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
    214fa494bd13:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
    214fa494bd17:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494bd1b:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    214fa494bd22:	0f 85 25 00 00 00                               	jne    0x214fa494bd4d
    214fa494bd28:	45 33 e4                                        	xor    r12d,r12d
    214fa494bd2b:	e9 2c 00 00 00                                  	jmp    0x214fa494bd5c
    214fa494bd30:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
    214fa494bd36:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
    214fa494bd3a:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    214fa494bd3e:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
    214fa494bd42:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
    214fa494bd46:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
    214fa494bd4a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494bd4d:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
    214fa494bd54:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
    214fa494bd58:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    214fa494bd5c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    214fa494bd60:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa494bd65:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    214fa494bd6b:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
    214fa494bd71:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
    214fa494bd77:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x214fa494b8ca
    214fa494bd7e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa494bd83:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa494bd87:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    214fa494bd8b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bd90:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa494bd96:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa494bd9b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bda0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa494bda6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa494bdab:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa494bdb0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa494bdb5:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x214fa494b9b2
    214fa494bdbc:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494bdc1:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa494bdc6:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    214fa494bdcb:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
    214fa494bdd2:	c4 21 7a 7f 04 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm8
    214fa494bdd8:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    214fa494bddd:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    214fa494bde1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494bde6:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa494bdec:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa494bdf1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494bdf6:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa494bdfc:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa494be01:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa494be06:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa494be0b:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    214fa494be10:	c4 21 7a 7f 44 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm8
    214fa494be17:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
    214fa494be1c:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
    214fa494be20:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494be25:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa494be2b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa494be30:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494be35:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa494be3a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa494be3e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa494be42:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa494be47:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
    214fa494be4c:	c4 a1 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm6
    214fa494be53:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
    214fa494be58:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494be5d:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa494be63:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa494be68:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494be6d:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa494be72:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa494be76:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa494be7a:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa494be7f:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x214fa494b9b2
    214fa494be86:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa494be8b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa494be8f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa494be93:	c4 a1 7a 7f 44 1a 30                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x30],xmm0
    214fa494be9a:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494be9e:	e9 4b 03 00 00                                  	jmp    0x214fa494c1ee
    214fa494bea3:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494bea7:	4c 8d 7a 08                                     	lea    r15,[rdx+0x8]
    214fa494beab:	c4 82 79 18 04 07                               	vbroadcastss xmm0,DWORD PTR [r15+r8*1]
    214fa494beb1:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
    214fa494beb5:	c4 42 79 18 24 07                               	vbroadcastss xmm12,DWORD PTR [r15+rax*1]
    214fa494bebb:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
    214fa494bebf:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
    214fa494bec4:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    214fa494bec9:	c4 42 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [r15+rdi*1]
    214fa494becf:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
    214fa494bed4:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
    214fa494bed9:	c5 c8 59 d8                                     	vmulps xmm3,xmm6,xmm0
    214fa494bedd:	41 83 fc 03                                     	cmp    r12d,0x3
    214fa494bee1:	0f 84 7a 02 00 00                               	je     0x214fa494c161
    214fa494bee7:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    214fa494beef:	41 8b fb                                        	mov    edi,r11d
    214fa494bef2:	c5 fa 7f 84 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm0
    214fa494befb:	c5 fa 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm0
    214fa494bf04:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    214fa494bf0d:	c5 7a 7f 94 3a f0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1f0],xmm10
    214fa494bf16:	c5 7a 7f 84 3a e0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1e0],xmm8
    214fa494bf1f:	c5 fa 7f 9c 3a d0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1d0],xmm3
    214fa494bf28:	c5 fa 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm0
    214fa494bf31:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
    214fa494bf38:	48 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rcx
    214fa494bf3f:	45 33 c0                                        	xor    r8d,r8d
    214fa494bf42:	e9 46 00 00 00                                  	jmp    0x214fa494bf8d
    214fa494bf47:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494bf50:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494bf59:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494bf62:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494bf6b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494bf74:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494bf7d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    214fa494bf80:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    214fa494bf86:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494bf89:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494bf8d:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
    214fa494bf94:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa494bf99:	0f 85 54 3b 00 00                               	jne    0x214fa494faf3
    214fa494bf9f:	8b c1                                           	mov    eax,ecx
    214fa494bfa1:	41 8b c8                                        	mov    ecx,r8d
    214fa494bfa4:	4c 8b 9d 20 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe0]
    214fa494bfab:	41 d3 eb                                        	shr    r11d,cl
    214fa494bfae:	41 f6 c3 01                                     	test   r11b,0x1
    214fa494bfb2:	0f 84 ff 00 00 00                               	je     0x214fa494c0b7
    214fa494bfb8:	8b 4c 02 10                                     	mov    ecx,DWORD PTR [rdx+rax*1+0x10]
    214fa494bfbc:	44 8b 5c 02 0c                                  	mov    r11d,DWORD PTR [rdx+rax*1+0xc]
    214fa494bfc1:	44 8b 64 02 08                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x8]
    214fa494bfc6:	44 8b 64 02 04                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x4]
    214fa494bfcb:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
    214fa494bfcf:	41 83 ff 02                                     	cmp    r15d,0x2
    214fa494bfd3:	0f 84 89 00 00 00                               	je     0x214fa494c062
    214fa494bfd9:	45 85 ff                                        	test   r15d,r15d
    214fa494bfdc:	0f 85 32 00 00 00                               	jne    0x214fa494c014
    214fa494bfe2:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
    214fa494bfea:	c4 a1 7a 10 0c 3a                               	vmovss xmm1,DWORD PTR [rdx+r15*1]
    214fa494bff0:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
    214fa494bff7:	41 8b d8                                        	mov    ebx,r8d
    214fa494bffa:	c1 e3 04                                        	shl    ebx,0x4
    214fa494bffd:	41 03 df                                        	add    ebx,r15d
    214fa494c000:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494c004:	41 8b c4                                        	mov    eax,r12d
    214fa494c007:	41 8b d3                                        	mov    edx,r11d
    214fa494c00a:	e8 11 c2 ed ff                                  	call   0x214fa4828220
    214fa494c00f:	e9 a3 00 00 00                                  	jmp    0x214fa494c0b7
    214fa494c014:	4c 8b fa                                        	mov    r15,rdx
    214fa494c017:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    214fa494c01c:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    214fa494c024:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    214fa494c02a:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    214fa494c032:	c4 41 7a 10 04 17                               	vmovss xmm8,DWORD PTR [r15+rdx*1]
    214fa494c038:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    214fa494c03e:	41 8b f0                                        	mov    esi,r8d
    214fa494c041:	c1 e6 04                                        	shl    esi,0x4
    214fa494c044:	03 d6                                           	add    edx,esi
    214fa494c046:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494c04a:	41 8b c4                                        	mov    eax,r12d
    214fa494c04d:	44 8b ca                                        	mov    r9d,edx
    214fa494c050:	41 8b d3                                        	mov    edx,r11d
    214fa494c053:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    214fa494c058:	e8 db c1 ed ff                                  	call   0x214fa4828238
    214fa494c05d:	e9 55 00 00 00                                  	jmp    0x214fa494c0b7
    214fa494c062:	4c 8b fa                                        	mov    r15,rdx
    214fa494c065:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
    214fa494c06a:	45 8b 4c 07 18                                  	mov    r9d,DWORD PTR [r15+rax*1+0x18]
    214fa494c06f:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
    214fa494c077:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
    214fa494c07d:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
    214fa494c085:	c4 c1 7a 10 14 17                               	vmovss xmm2,DWORD PTR [r15+rdx*1]
    214fa494c08b:	42 8d 94 87 d0 01 00 00                         	lea    edx,[rdi+r8*4+0x1d0]
    214fa494c093:	c4 c1 7a 10 1c 17                               	vmovss xmm3,DWORD PTR [r15+rdx*1]
    214fa494c099:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
    214fa494c09f:	41 8b f0                                        	mov    esi,r8d
    214fa494c0a2:	c1 e6 04                                        	shl    esi,0x4
    214fa494c0a5:	03 d6                                           	add    edx,esi
    214fa494c0a7:	52                                              	push   rdx
    214fa494c0a8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494c0ac:	41 8b c4                                        	mov    eax,r12d
    214fa494c0af:	41 8b d3                                        	mov    edx,r11d
    214fa494c0b2:	e8 71 c1 ed ff                                  	call   0x214fa4828228
    214fa494c0b7:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    214fa494c0be:	41 83 c0 01                                     	add    r8d,0x1
    214fa494c0c2:	41 83 f8 04                                     	cmp    r8d,0x4
    214fa494c0c6:	0f 85 b4 fe ff ff                               	jne    0x214fa494bf80
    214fa494c0cc:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    214fa494c0cf:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494c0d3:	c4 c1 7a 6f 84 18 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x1b0]
    214fa494c0dd:	c4 c1 7a 6f b4 18 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0x1c0]
    214fa494c0e7:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    214fa494c0eb:	c4 41 7a 6f 84 18 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x190]
    214fa494c0f5:	c4 41 7a 6f 8c 18 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x1a0]
    214fa494c0ff:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    214fa494c104:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    214fa494c108:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
    214fa494c10e:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
    214fa494c115:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    214fa494c119:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
    214fa494c120:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    214fa494c124:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    214fa494c129:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    214fa494c12d:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
    214fa494c134:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    214fa494c138:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
    214fa494c13e:	44 8b db                                        	mov    r11d,ebx
    214fa494c141:	49 8b d0                                        	mov    rdx,r8
    214fa494c144:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    214fa494c14c:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    214fa494c154:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    214fa494c15c:	e9 8d 00 00 00                                  	jmp    0x214fa494c1ee
    214fa494c161:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494c165:	8b c1                                           	mov    eax,ecx
    214fa494c167:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    214fa494c16c:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
    214fa494c171:	41 8b c9                                        	mov    ecx,r9d
    214fa494c174:	48 8b 95 20 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe0]
    214fa494c17b:	e8 a8 c3 ed ff                                  	call   0x214fa4828528
    214fa494c180:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494c184:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494c188:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    214fa494c190:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    214fa494c198:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    214fa494c1a0:	e9 49 00 00 00                                  	jmp    0x214fa494c1ee
    214fa494c1a5:	48 8b fa                                        	mov    rdi,rdx
    214fa494c1a8:	48 8d 57 3c                                     	lea    rdx,[rdi+0x3c]
    214fa494c1ac:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    214fa494c1b2:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
    214fa494c1b8:	48 8d 57 40                                     	lea    rdx,[rdi+0x40]
    214fa494c1bc:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    214fa494c1c2:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
    214fa494c1c9:	48 8d 57 44                                     	lea    rdx,[rdi+0x44]
    214fa494c1cd:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    214fa494c1d3:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
    214fa494c1da:	48 8d 57 48                                     	lea    rdx,[rdi+0x48]
    214fa494c1de:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
    214fa494c1e4:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
    214fa494c1eb:	48 8b d7                                        	mov    rdx,rdi
    214fa494c1ee:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    214fa494c1f5:	41 83 c0 01                                     	add    r8d,0x1
    214fa494c1f9:	41 83 f8 04                                     	cmp    r8d,0x4
    214fa494c1fd:	0f 85 3d ed ff ff                               	jne    0x214fa494af40
    214fa494c203:	41 8b db                                        	mov    ebx,r11d
    214fa494c206:	c5 fa 6f 84 1a 90 00 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x90]
    214fa494c20f:	4c 8b 15 4b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4b]        # 0x214fa494b161
    214fa494c216:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa494c21b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa494c21f:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa494c223:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa494c22b:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    214fa494c22f:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    214fa494c234:	c5 7a 6f 84 1a a0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xa0]
    214fa494c23d:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    214fa494c241:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    214fa494c249:	c5 30 58 ce                                     	vaddps xmm9,xmm9,xmm6
    214fa494c24d:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    214fa494c252:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
    214fa494c257:	c5 7a 6f 84 1a b0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xb0]
    214fa494c260:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    214fa494c264:	c5 78 10 95 a0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x160]
    214fa494c26c:	c5 a8 58 f6                                     	vaddps xmm6,xmm10,xmm6
    214fa494c270:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    214fa494c274:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
    214fa494c278:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
    214fa494c282:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa494c287:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa494c28b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa494c28f:	c5 f8 10 b5 c0 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x240]
    214fa494c297:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    214fa494c29b:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
    214fa494c29f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa494c2a3:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
    214fa494c2a7:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    214fa494c2ac:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    214fa494c2b1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494c2b8:	44 8b 84 3a 38 01 00 00                         	mov    r8d,DWORD PTR [rdx+rdi*1+0x138]
    214fa494c2c0:	4d 8b d8                                        	mov    r11,r8
    214fa494c2c3:	41 83 c3 ff                                     	add    r11d,0xffffffff
    214fa494c2c7:	0f 85 f3 00 00 00                               	jne    0x214fa494c3c0
    214fa494c2cd:	c5 7a 6f 84 1a 70 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0x170]
    214fa494c2d6:	c5 7a 6f 8c 1a 30 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x130]
    214fa494c2df:	4c 8d 82 38 36 00 00                            	lea    r8,[rdx+0x3638]
    214fa494c2e6:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
    214fa494c2ea:	c4 02 79 18 14 20                               	vbroadcastss xmm10,DWORD PTR [r8+r12*1]
    214fa494c2f0:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
    214fa494c2f5:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    214fa494c2fa:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    214fa494c2ff:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    214fa494c304:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    214fa494c309:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    214fa494c30e:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    214fa494c313:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    214fa494c318:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    214fa494c31d:	c5 7a 6f 8c 1a 60 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x160]
    214fa494c326:	c5 7a 6f 94 1a 20 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x120]
    214fa494c32f:	4c 8d 82 34 36 00 00                            	lea    r8,[rdx+0x3634]
    214fa494c336:	c4 02 79 18 24 20                               	vbroadcastss xmm12,DWORD PTR [r8+r12*1]
    214fa494c33c:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
    214fa494c341:	c4 41 48 5f e4                                  	vmaxps xmm12,xmm6,xmm12
    214fa494c346:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
    214fa494c34b:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    214fa494c350:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
    214fa494c355:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    214fa494c35a:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    214fa494c35f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    214fa494c364:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    214fa494c369:	c5 7a 6f 94 1a 50 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x150]
    214fa494c372:	c5 7a 6f a4 1a 10 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x110]
    214fa494c37b:	4c 8d 82 30 36 00 00                            	lea    r8,[rdx+0x3630]
    214fa494c382:	c4 02 79 18 2c 20                               	vbroadcastss xmm13,DWORD PTR [r8+r12*1]
    214fa494c388:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
    214fa494c38d:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    214fa494c391:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa494c395:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
    214fa494c399:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    214fa494c39d:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa494c3a1:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
    214fa494c3a5:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    214fa494c3a9:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa494c3ad:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    214fa494c3b2:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
    214fa494c3b6:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
    214fa494c3bb:	e9 89 01 00 00                                  	jmp    0x214fa494c549
    214fa494c3c0:	41 83 fb 02                                     	cmp    r11d,0x2
    214fa494c3c4:	0f 84 86 00 00 00                               	je     0x214fa494c450
    214fa494c3ca:	c5 fa 6f 84 1a 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x130]
    214fa494c3d3:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
    214fa494c3d7:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    214fa494c3db:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa494c3df:	c5 7a 6f 8c 1a 20 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x120]
    214fa494c3e8:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
    214fa494c3ed:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    214fa494c3f2:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    214fa494c3f7:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    214fa494c3fe:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494c402:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    214fa494c408:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
    214fa494c40d:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    214fa494c412:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    214fa494c417:	c5 7a 6f 94 1a 10 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x110]
    214fa494c420:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    214fa494c425:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    214fa494c42a:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    214fa494c42f:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    214fa494c436:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    214fa494c43c:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
    214fa494c441:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    214fa494c446:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    214fa494c44b:	e9 58 00 00 00                                  	jmp    0x214fa494c4a8
    214fa494c450:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
    214fa494c455:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    214fa494c459:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa494c45d:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
    214fa494c464:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494c468:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
    214fa494c46e:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
    214fa494c473:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
    214fa494c478:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
    214fa494c47d:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
    214fa494c484:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
    214fa494c48a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
    214fa494c48f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
    214fa494c494:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
    214fa494c499:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
    214fa494c49e:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    214fa494c4a3:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
    214fa494c4a8:	4c 8d a2 20 37 00 00                            	lea    r12,[rdx+0x3720]
    214fa494c4af:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
    214fa494c4b5:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
    214fa494c4ba:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
    214fa494c4be:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
    214fa494c4c2:	41 83 f8 01                                     	cmp    r8d,0x1
    214fa494c4c6:	0f 84 7a 00 00 00                               	je     0x214fa494c546
    214fa494c4cc:	c4 a1 7a 10 b4 1a 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdx+r11*1+0x3724]
    214fa494c4d6:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    214fa494c4db:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
    214fa494c4e1:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
    214fa494c4e7:	c4 c1 78 2e f4                                  	vucomiss xmm6,xmm12
    214fa494c4ec:	0f 87 09 00 00 00                               	ja     0x214fa494c4fb
    214fa494c4f2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
    214fa494c4f6:	e9 05 00 00 00                                  	jmp    0x214fa494c500
    214fa494c4fb:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    214fa494c500:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
    214fa494c505:	c5 78 2e ee                                     	vucomiss xmm13,xmm6
    214fa494c509:	0f 87 0a 00 00 00                               	ja     0x214fa494c519
    214fa494c50f:	c4 c1 79 28 f2                                  	vmovapd xmm6,xmm10
    214fa494c514:	e9 05 00 00 00                                  	jmp    0x214fa494c51e
    214fa494c519:	c4 c1 79 28 f5                                  	vmovapd xmm6,xmm13
    214fa494c51e:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    214fa494c523:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa494c527:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa494c52b:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    214fa494c530:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    214fa494c535:	8b c3                                           	mov    eax,ebx
    214fa494c537:	49 8b f3                                        	mov    rsi,r11
    214fa494c53a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    214fa494c541:	e9 06 12 00 00                                  	jmp    0x214fa494d74c
    214fa494c546:	4d 8b e3                                        	mov    r12,r11
    214fa494c549:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
    214fa494c551:	c4 41 48 5f d4                                  	vmaxps xmm10,xmm6,xmm12
    214fa494c556:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
    214fa494c55b:	c5 7a 6f a4 1a 40 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x140]
    214fa494c564:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
    214fa494c569:	c4 c1 48 5f f2                                  	vmaxps xmm6,xmm6,xmm10
    214fa494c56e:	c5 a0 5d f6                                     	vminps xmm6,xmm11,xmm6
    214fa494c572:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa494c576:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
    214fa494c57a:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
    214fa494c57f:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
    214fa494c584:	8b c3                                           	mov    eax,ebx
    214fa494c586:	49 8b f4                                        	mov    rsi,r12
    214fa494c589:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    214fa494c590:	e9 b7 11 00 00                                  	jmp    0x214fa494d74c
    214fa494c595:	44 8b 7c 3a 38                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x38]
    214fa494c59a:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
    214fa494c5a2:	83 7c 3a 38 00                                  	cmp    DWORD PTR [rdx+rdi*1+0x38],0x0
    214fa494c5a7:	0f 85 b1 10 00 00                               	jne    0x214fa494d65e
    214fa494c5ad:	4c 8d 7a 54                                     	lea    r15,[rdx+0x54]
    214fa494c5b1:	c4 82 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [r15+r12*1]
    214fa494c5b7:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
    214fa494c5bb:	c4 c2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [r15+rax*1]
    214fa494c5c1:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
    214fa494c5c5:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
    214fa494c5c9:	c4 82 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [r15+r9*1]
    214fa494c5cf:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
    214fa494c5d3:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
    214fa494c5d7:	c5 c8 59 d7                                     	vmulps xmm2,xmm6,xmm7
    214fa494c5db:	4c 8d 7a 50                                     	lea    r15,[rdx+0x50]
    214fa494c5df:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
    214fa494c5e5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    214fa494c5e9:	c4 42 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+rax*1]
    214fa494c5ef:	c4 41 60 59 c0                                  	vmulps xmm8,xmm3,xmm8
    214fa494c5f4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    214fa494c5f9:	c4 02 79 18 04 0f                               	vbroadcastss xmm8,DWORD PTR [r15+r9*1]
    214fa494c5ff:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    214fa494c604:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
    214fa494c609:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    214fa494c60d:	44 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+rdi*1]
    214fa494c611:	41 83 ff 01                                     	cmp    r15d,0x1
    214fa494c615:	0f 85 28 0d 00 00                               	jne    0x214fa494d343
    214fa494c61b:	8b 4c 3a 28                                     	mov    ecx,DWORD PTR [rdx+rdi*1+0x28]
    214fa494c61f:	85 c9                                           	test   ecx,ecx
    214fa494c621:	0f 84 1c 0d 00 00                               	je     0x214fa494d343
    214fa494c627:	44 8b 5c 3a 1c                                  	mov    r11d,DWORD PTR [rdx+rdi*1+0x1c]
    214fa494c62c:	45 85 db                                        	test   r11d,r11d
    214fa494c62f:	0f 8e 0e 0d 00 00                               	jle    0x214fa494d343
    214fa494c635:	8b 5c 3a 20                                     	mov    ebx,DWORD PTR [rdx+rdi*1+0x20]
    214fa494c639:	85 db                                           	test   ebx,ebx
    214fa494c63b:	0f 8e fc 0c 00 00                               	jle    0x214fa494d33d
    214fa494c641:	45 8b d3                                        	mov    r10d,r11d
    214fa494c644:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa494c649:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa494c64e:	44 8b 7c 3a 10                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x10]
    214fa494c653:	33 f6                                           	xor    esi,esi
    214fa494c655:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
    214fa494c65c:	40 0f 95 c6                                     	setne  sil
    214fa494c660:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
    214fa494c667:	41 0f 95 c7                                     	setne  r15b
    214fa494c66b:	45 0f b6 ff                                     	movzx  r15d,r15b
    214fa494c66f:	44 23 fe                                        	and    r15d,esi
    214fa494c672:	0f 85 0d 00 00 00                               	jne    0x214fa494c685
    214fa494c678:	c5 d8 5f f7                                     	vmaxps xmm6,xmm4,xmm7
    214fa494c67c:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
    214fa494c680:	e9 0a 00 00 00                                  	jmp    0x214fa494c68f
    214fa494c685:	c4 e3 79 08 f7 09                               	vroundps xmm6,xmm7,0x9
    214fa494c68b:	c5 c0 5c f6                                     	vsubps xmm6,xmm7,xmm6
    214fa494c68f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa494c693:	44 8b d3                                        	mov    r10d,ebx
    214fa494c696:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
    214fa494c69b:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
    214fa494c6a0:	8b 74 3a 14                                     	mov    esi,DWORD PTR [rdx+rdi*1+0x14]
    214fa494c6a4:	45 33 c9                                        	xor    r9d,r9d
    214fa494c6a7:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
    214fa494c6ad:	41 0f 95 c1                                     	setne  r9b
    214fa494c6b1:	81 fe 00 29 00 00                               	cmp    esi,0x2900
    214fa494c6b7:	40 0f 95 c6                                     	setne  sil
    214fa494c6bb:	40 0f b6 f6                                     	movzx  esi,sil
    214fa494c6bf:	41 23 f1                                        	and    esi,r9d
    214fa494c6c2:	0f 85 0d 00 00 00                               	jne    0x214fa494c6d5
    214fa494c6c8:	c5 d8 5f fa                                     	vmaxps xmm7,xmm4,xmm2
    214fa494c6cc:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
    214fa494c6d0:	e9 0a 00 00 00                                  	jmp    0x214fa494c6df
    214fa494c6d5:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
    214fa494c6db:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
    214fa494c6df:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa494c6e3:	4c 8b 15 77 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea77]        # 0x214fa494b161
    214fa494c6ea:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa494c6ef:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa494c6f3:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
    214fa494c6f7:	44 8b 4c 3a 0c                                  	mov    r9d,DWORD PTR [rdx+rdi*1+0xc]
    214fa494c6fc:	45 33 c9                                        	xor    r9d,r9d
    214fa494c6ff:	81 7c 3a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0xc],0x2600
    214fa494c707:	41 0f 94 c1                                     	sete   r9b
    214fa494c70b:	45 85 c9                                        	test   r9d,r9d
    214fa494c70e:	0f 85 5b 00 00 00                               	jne    0x214fa494c76f
    214fa494c714:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
    214fa494c71a:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x214fa494b19d
    214fa494c721:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
    214fa494c726:	4c 8b 15 7f ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7f]        # 0x214fa494b1ac
    214fa494c72d:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa494c732:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa494c737:	c4 41 30 c2 cb 01                               	vcmpltps xmm9,xmm9,xmm11
    214fa494c73d:	4c 8b 15 1a a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa81a]        # 0x214fa4946f5e
    214fa494c744:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
    214fa494c749:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
    214fa494c74e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
    214fa494c754:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    214fa494c758:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    214fa494c75d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
    214fa494c761:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
    214fa494c765:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
    214fa494c76a:	e9 49 00 00 00                                  	jmp    0x214fa494c7b8
    214fa494c76f:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
    214fa494c775:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x214fa494b19d
    214fa494c77c:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
    214fa494c781:	4c 8b 15 24 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea24]        # 0x214fa494b1ac
    214fa494c788:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa494c78d:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa494c792:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    214fa494c798:	4c 8b 15 bf a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa7bf]        # 0x214fa4946f5e
    214fa494c79f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    214fa494c7a4:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
    214fa494c7a9:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    214fa494c7af:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
    214fa494c7b3:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
    214fa494c7b8:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
    214fa494c7be:	4c 8b 15 99 a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa799]        # 0x214fa4946f5e
    214fa494c7c5:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    214fa494c7cb:	c4 c1 38 54 df                                  	vandps xmm3,xmm8,xmm15
    214fa494c7d0:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    214fa494c7d6:	c5 fa 5b db                                     	vcvttps2dq xmm3,xmm3
    214fa494c7da:	c4 c1 61 ef df                                  	vpxor  xmm3,xmm3,xmm15
    214fa494c7df:	4c 8b 15 86 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea86]        # 0x214fa494b26c
    214fa494c7e6:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa494c7eb:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    214fa494c7ef:	4c 8b 15 a7 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a7]        # 0x214fa494b19d
    214fa494c7f6:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
    214fa494c7fb:	c4 c1 50 c2 eb 01                               	vcmpltps xmm5,xmm5,xmm11
    214fa494c801:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
    214fa494c805:	c5 e1 db dd                                     	vpand  xmm3,xmm3,xmm5
    214fa494c809:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
    214fa494c80e:	41 8d 43 ff                                     	lea    eax,[r11-0x1]
    214fa494c812:	c5 f9 6e e8                                     	vmovd  xmm5,eax
    214fa494c816:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
    214fa494c81b:	8b 44 3a 2c                                     	mov    eax,DWORD PTR [rdx+rdi*1+0x2c]
    214fa494c81f:	c5 78 10 95 40 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2c0]
    214fa494c827:	c4 42 61 3d e2                                  	vpmaxsd xmm12,xmm3,xmm10
    214fa494c82c:	c4 62 19 39 e5                                  	vpminsd xmm12,xmm12,xmm5
    214fa494c831:	45 85 ff                                        	test   r15d,r15d
    214fa494c834:	0f 84 53 00 00 00                               	je     0x214fa494c88d
    214fa494c83a:	c5 79 6e e0                                     	vmovd  xmm12,eax
    214fa494c83e:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa494c843:	c4 41 61 db e4                                  	vpand  xmm12,xmm3,xmm12
    214fa494c848:	85 c0                                           	test   eax,eax
    214fa494c84a:	0f 85 3d 00 00 00                               	jne    0x214fa494c88d
    214fa494c850:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
    214fa494c855:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
    214fa494c85a:	c5 61 66 ed                                     	vpcmpgtd xmm13,xmm3,xmm5
    214fa494c85e:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
    214fa494c863:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa494c868:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
    214fa494c86d:	c5 29 66 f3                                     	vpcmpgtd xmm14,xmm10,xmm3
    214fa494c871:	c4 41 09 df fd                                  	vpandn xmm15,xmm14,xmm13
    214fa494c876:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
    214fa494c87b:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
    214fa494c880:	c4 41 61 fe e4                                  	vpaddd xmm12,xmm3,xmm12
    214fa494c885:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494c88d:	c5 31 df fc                                     	vpandn xmm15,xmm9,xmm4
    214fa494c891:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
    214fa494c896:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
    214fa494c89b:	44 8d 63 ff                                     	lea    r12d,[rbx-0x1]
    214fa494c89f:	c4 c1 79 6e d4                                  	vmovd  xmm2,r12d
    214fa494c8a4:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
    214fa494c8a9:	44 8b 64 3a 30                                  	mov    r12d,DWORD PTR [rdx+rdi*1+0x30]
    214fa494c8ae:	c4 42 31 3d ea                                  	vpmaxsd xmm13,xmm9,xmm10
    214fa494c8b3:	c4 62 11 39 ea                                  	vpminsd xmm13,xmm13,xmm2
    214fa494c8b8:	85 f6                                           	test   esi,esi
    214fa494c8ba:	0f 84 4c 00 00 00                               	je     0x214fa494c90c
    214fa494c8c0:	c4 41 79 6e ec                                  	vmovd  xmm13,r12d
    214fa494c8c5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494c8ca:	c4 41 11 db e9                                  	vpand  xmm13,xmm13,xmm9
    214fa494c8cf:	45 85 e4                                        	test   r12d,r12d
    214fa494c8d2:	0f 85 34 00 00 00                               	jne    0x214fa494c90c
    214fa494c8d8:	c5 79 6e eb                                     	vmovd  xmm13,ebx
    214fa494c8dc:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494c8e1:	c5 31 66 f2                                     	vpcmpgtd xmm14,xmm9,xmm2
    214fa494c8e5:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
    214fa494c8ea:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa494c8ef:	c4 42 09 0a f7                                  	vpsignd xmm14,xmm14,xmm15
    214fa494c8f4:	c4 c1 29 66 c9                                  	vpcmpgtd xmm1,xmm10,xmm9
    214fa494c8f9:	c4 41 71 df fe                                  	vpandn xmm15,xmm1,xmm14
    214fa494c8fe:	c5 11 db e9                                     	vpand  xmm13,xmm13,xmm1
    214fa494c902:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
    214fa494c907:	c4 41 31 fe ed                                  	vpaddd xmm13,xmm9,xmm13
    214fa494c90c:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
    214fa494c911:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
    214fa494c916:	c4 42 11 40 ee                                  	vpmulld xmm13,xmm13,xmm14
    214fa494c91b:	c4 c1 11 fe cc                                  	vpaddd xmm1,xmm13,xmm12
    214fa494c920:	c4 c3 79 16 cb 03                               	vpextrd r11d,xmm1,0x3
    214fa494c926:	c4 e3 79 16 cf 02                               	vpextrd edi,xmm1,0x2
    214fa494c92c:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
    214fa494c933:	c4 c3 79 16 cb 01                               	vpextrd r11d,xmm1,0x1
    214fa494c939:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
    214fa494c940:	c5 f9 7e cf                                     	vmovd  edi,xmm1
    214fa494c944:	45 85 c9                                        	test   r9d,r9d
    214fa494c947:	0f 85 19 08 00 00                               	jne    0x214fa494d166
    214fa494c94d:	c5 f8 10 8d 10 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x3f0]
    214fa494c955:	c5 e1 fe d9                                     	vpaddd xmm3,xmm3,xmm1
    214fa494c959:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
    214fa494c961:	c4 c2 61 3d f2                                  	vpmaxsd xmm6,xmm3,xmm10
    214fa494c966:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
    214fa494c96b:	45 85 ff                                        	test   r15d,r15d
    214fa494c96e:	0f 84 3d 00 00 00                               	je     0x214fa494c9b1
    214fa494c974:	c5 f9 6e f0                                     	vmovd  xmm6,eax
    214fa494c978:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
    214fa494c97d:	c5 e1 db f6                                     	vpand  xmm6,xmm3,xmm6
    214fa494c981:	85 c0                                           	test   eax,eax
    214fa494c983:	0f 85 28 00 00 00                               	jne    0x214fa494c9b1
    214fa494c989:	c5 e1 66 f5                                     	vpcmpgtd xmm6,xmm3,xmm5
    214fa494c98d:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
    214fa494c992:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa494c997:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
    214fa494c99c:	c5 a9 66 eb                                     	vpcmpgtd xmm5,xmm10,xmm3
    214fa494c9a0:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
    214fa494c9a4:	c5 89 db f5                                     	vpand  xmm6,xmm14,xmm5
    214fa494c9a8:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa494c9ad:	c5 e1 fe f6                                     	vpaddd xmm6,xmm3,xmm6
    214fa494c9b1:	c5 31 fe c9                                     	vpaddd xmm9,xmm9,xmm1
    214fa494c9b5:	c4 c2 31 3d da                                  	vpmaxsd xmm3,xmm9,xmm10
    214fa494c9ba:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
    214fa494c9bf:	85 f6                                           	test   esi,esi
    214fa494c9c1:	0f 84 49 00 00 00                               	je     0x214fa494ca10
    214fa494c9c7:	c4 c1 79 6e dc                                  	vmovd  xmm3,r12d
    214fa494c9cc:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa494c9d1:	c4 c1 61 db d9                                  	vpand  xmm3,xmm3,xmm9
    214fa494c9d6:	45 85 e4                                        	test   r12d,r12d
    214fa494c9d9:	0f 85 31 00 00 00                               	jne    0x214fa494ca10
    214fa494c9df:	c5 f9 6e db                                     	vmovd  xmm3,ebx
    214fa494c9e3:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
    214fa494c9e8:	c5 b1 66 d2                                     	vpcmpgtd xmm2,xmm9,xmm2
    214fa494c9ec:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
    214fa494c9f0:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
    214fa494c9f5:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
    214fa494c9fa:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
    214fa494c9ff:	c5 51 df fa                                     	vpandn xmm15,xmm5,xmm2
    214fa494ca03:	c5 e1 db d5                                     	vpand  xmm2,xmm3,xmm5
    214fa494ca07:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
    214fa494ca0c:	c5 b1 fe da                                     	vpaddd xmm3,xmm9,xmm2
    214fa494ca10:	c4 42 61 40 ce                                  	vpmulld xmm9,xmm3,xmm14
    214fa494ca15:	c4 41 31 fe f4                                  	vpaddd xmm14,xmm9,xmm12
    214fa494ca1a:	41 83 f8 0f                                     	cmp    r8d,0xf
    214fa494ca1e:	0f 85 18 00 00 00                               	jne    0x214fa494ca3c
    214fa494ca24:	c5 19 fe e1                                     	vpaddd xmm12,xmm12,xmm1
    214fa494ca28:	c4 41 49 76 e4                                  	vpcmpeqd xmm12,xmm6,xmm12
    214fa494ca2d:	c4 41 78 50 e4                                  	vmovmskps r12d,xmm12
    214fa494ca32:	41 83 fc 0f                                     	cmp    r12d,0xf
    214fa494ca36:	0f 84 24 03 00 00                               	je     0x214fa494cd60
    214fa494ca3c:	4d 8b e0                                        	mov    r12,r8
    214fa494ca3f:	41 83 e4 08                                     	and    r12d,0x8
    214fa494ca43:	4d 8b f8                                        	mov    r15,r8
    214fa494ca46:	41 83 e7 04                                     	and    r15d,0x4
    214fa494ca4a:	49 8b c0                                        	mov    rax,r8
    214fa494ca4d:	83 e0 02                                        	and    eax,0x2
    214fa494ca50:	49 8b d8                                        	mov    rbx,r8
    214fa494ca53:	83 e3 01                                        	and    ebx,0x1
    214fa494ca56:	41 83 f8 0f                                     	cmp    r8d,0xf
    214fa494ca5a:	0f 84 6c 00 00 00                               	je     0x214fa494cacc
    214fa494ca60:	85 db                                           	test   ebx,ebx
    214fa494ca62:	0f 85 07 00 00 00                               	jne    0x214fa494ca6f
    214fa494ca68:	33 ff                                           	xor    edi,edi
    214fa494ca6a:	e9 06 00 00 00                                  	jmp    0x214fa494ca75
    214fa494ca6f:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494ca72:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494ca75:	85 c0                                           	test   eax,eax
    214fa494ca77:	0f 85 08 00 00 00                               	jne    0x214fa494ca85
    214fa494ca7d:	45 33 db                                        	xor    r11d,r11d
    214fa494ca80:	e9 08 00 00 00                                  	jmp    0x214fa494ca8d
    214fa494ca85:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    214fa494ca89:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494ca8d:	45 85 ff                                        	test   r15d,r15d
    214fa494ca90:	0f 85 08 00 00 00                               	jne    0x214fa494ca9e
    214fa494ca96:	45 33 ff                                        	xor    r15d,r15d
    214fa494ca99:	e9 0f 00 00 00                                  	jmp    0x214fa494caad
    214fa494ca9e:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    214fa494caa5:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    214fa494caa9:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    214fa494caad:	45 85 e4                                        	test   r12d,r12d
    214fa494cab0:	0f 85 33 00 00 00                               	jne    0x214fa494cae9
    214fa494cab6:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    214fa494cabb:	c5 79 6e ef                                     	vmovd  xmm13,edi
    214fa494cabf:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494cac4:	45 33 e4                                        	xor    r12d,r12d
    214fa494cac7:	e9 43 00 00 00                                  	jmp    0x214fa494cb0f
    214fa494cacc:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    214fa494cad0:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494cad4:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cad7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494cada:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    214fa494cae1:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    214fa494cae5:	46 8b 3c 22                                     	mov    r15d,DWORD PTR [rdx+r12*1]
    214fa494cae9:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    214fa494caef:	44 8d 24 81                                     	lea    r12d,[rcx+rax*4]
    214fa494caf3:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    214fa494caf7:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
    214fa494cafc:	c5 79 6e ef                                     	vmovd  xmm13,edi
    214fa494cb00:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494cb05:	41 83 f8 0f                                     	cmp    r8d,0xf
    214fa494cb09:	0f 84 66 00 00 00                               	je     0x214fa494cb75
    214fa494cb0f:	41 f6 c0 01                                     	test   r8b,0x1
    214fa494cb13:	0f 85 07 00 00 00                               	jne    0x214fa494cb20
    214fa494cb19:	33 ff                                           	xor    edi,edi
    214fa494cb1b:	e9 0a 00 00 00                                  	jmp    0x214fa494cb2a
    214fa494cb20:	c5 79 7e e7                                     	vmovd  edi,xmm12
    214fa494cb24:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cb27:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494cb2a:	41 f6 c0 02                                     	test   r8b,0x2
    214fa494cb2e:	0f 85 07 00 00 00                               	jne    0x214fa494cb3b
    214fa494cb34:	33 c0                                           	xor    eax,eax
    214fa494cb36:	e9 0c 00 00 00                                  	jmp    0x214fa494cb47
    214fa494cb3b:	c4 63 79 16 e0 01                               	vpextrd eax,xmm12,0x1
    214fa494cb41:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    214fa494cb44:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    214fa494cb47:	41 f6 c0 04                                     	test   r8b,0x4
    214fa494cb4b:	0f 85 07 00 00 00                               	jne    0x214fa494cb58
    214fa494cb51:	33 db                                           	xor    ebx,ebx
    214fa494cb53:	e9 0c 00 00 00                                  	jmp    0x214fa494cb64
    214fa494cb58:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    214fa494cb5e:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    214fa494cb61:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    214fa494cb64:	41 f6 c0 08                                     	test   r8b,0x8
    214fa494cb68:	0f 85 29 00 00 00                               	jne    0x214fa494cb97
    214fa494cb6e:	33 f6                                           	xor    esi,esi
    214fa494cb70:	e9 2e 00 00 00                                  	jmp    0x214fa494cba3
    214fa494cb75:	c4 63 79 16 e7 01                               	vpextrd edi,xmm12,0x1
    214fa494cb7b:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cb7e:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
    214fa494cb81:	c5 79 7e e7                                     	vmovd  edi,xmm12
    214fa494cb85:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cb88:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494cb8b:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
    214fa494cb91:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
    214fa494cb94:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
    214fa494cb97:	c4 63 79 16 e6 03                               	vpextrd esi,xmm12,0x3
    214fa494cb9d:	8d 34 b1                                        	lea    esi,[rcx+rsi*4]
    214fa494cba0:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
    214fa494cba3:	c4 43 11 22 e3 01                               	vpinsrd xmm12,xmm13,r11d,0x1
    214fa494cba9:	c5 79 6e ef                                     	vmovd  xmm13,edi
    214fa494cbad:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494cbb2:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
    214fa494cbb8:	41 83 f8 0f                                     	cmp    r8d,0xf
    214fa494cbbc:	0f 84 6a 00 00 00                               	je     0x214fa494cc2c
    214fa494cbc2:	41 f6 c0 01                                     	test   r8b,0x1
    214fa494cbc6:	0f 85 07 00 00 00                               	jne    0x214fa494cbd3
    214fa494cbcc:	33 ff                                           	xor    edi,edi
    214fa494cbce:	e9 0a 00 00 00                                  	jmp    0x214fa494cbdd
    214fa494cbd3:	c5 79 7e f7                                     	vmovd  edi,xmm14
    214fa494cbd7:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cbda:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494cbdd:	41 f6 c0 02                                     	test   r8b,0x2
    214fa494cbe1:	0f 85 08 00 00 00                               	jne    0x214fa494cbef
    214fa494cbe7:	45 33 db                                        	xor    r11d,r11d
    214fa494cbea:	e9 0e 00 00 00                                  	jmp    0x214fa494cbfd
    214fa494cbef:	c4 43 79 16 f3 01                               	vpextrd r11d,xmm14,0x1
    214fa494cbf5:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    214fa494cbf9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494cbfd:	41 f6 c0 04                                     	test   r8b,0x4
    214fa494cc01:	0f 85 07 00 00 00                               	jne    0x214fa494cc0e
    214fa494cc07:	33 c0                                           	xor    eax,eax
    214fa494cc09:	e9 0c 00 00 00                                  	jmp    0x214fa494cc1a
    214fa494cc0e:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    214fa494cc14:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    214fa494cc17:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    214fa494cc1a:	41 f6 c0 08                                     	test   r8b,0x8
    214fa494cc1e:	0f 85 2b 00 00 00                               	jne    0x214fa494cc4f
    214fa494cc24:	45 33 c9                                        	xor    r9d,r9d
    214fa494cc27:	e9 31 00 00 00                                  	jmp    0x214fa494cc5d
    214fa494cc2c:	c4 63 79 16 f7 01                               	vpextrd edi,xmm14,0x1
    214fa494cc32:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cc35:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    214fa494cc39:	c5 79 7e f7                                     	vmovd  edi,xmm14
    214fa494cc3d:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cc40:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494cc43:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
    214fa494cc49:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    214fa494cc4c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    214fa494cc4f:	c4 43 79 16 f1 03                               	vpextrd r9d,xmm14,0x3
    214fa494cc55:	46 8d 0c 89                                     	lea    r9d,[rcx+r9*4]
    214fa494cc59:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
    214fa494cc5d:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
    214fa494cc63:	c4 63 11 22 eb 02                               	vpinsrd xmm13,xmm13,ebx,0x2
    214fa494cc69:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
    214fa494cc6d:	c5 79 6e cf                                     	vmovd  xmm9,edi
    214fa494cc71:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
    214fa494cc76:	c4 43 31 22 cb 01                               	vpinsrd xmm9,xmm9,r11d,0x1
    214fa494cc7c:	c4 63 31 22 c8 02                               	vpinsrd xmm9,xmm9,eax,0x2
    214fa494cc82:	41 83 f8 0f                                     	cmp    r8d,0xf
    214fa494cc86:	0f 84 6c 00 00 00                               	je     0x214fa494ccf8
    214fa494cc8c:	41 f6 c0 01                                     	test   r8b,0x1
    214fa494cc90:	0f 85 07 00 00 00                               	jne    0x214fa494cc9d
    214fa494cc96:	33 ff                                           	xor    edi,edi
    214fa494cc98:	e9 0a 00 00 00                                  	jmp    0x214fa494cca7
    214fa494cc9d:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    214fa494cca1:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cca4:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494cca7:	41 f6 c0 02                                     	test   r8b,0x2
    214fa494ccab:	0f 85 08 00 00 00                               	jne    0x214fa494ccb9
    214fa494ccb1:	45 33 db                                        	xor    r11d,r11d
    214fa494ccb4:	e9 0e 00 00 00                                  	jmp    0x214fa494ccc7
    214fa494ccb9:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
    214fa494ccbf:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    214fa494ccc3:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494ccc7:	41 f6 c0 04                                     	test   r8b,0x4
    214fa494cccb:	0f 85 08 00 00 00                               	jne    0x214fa494ccd9
    214fa494ccd1:	45 33 ff                                        	xor    r15d,r15d
    214fa494ccd4:	e9 0e 00 00 00                                  	jmp    0x214fa494cce7
    214fa494ccd9:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    214fa494ccdf:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    214fa494cce3:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    214fa494cce7:	41 f6 c0 08                                     	test   r8b,0x8
    214fa494cceb:	0f 85 2c 00 00 00                               	jne    0x214fa494cd1d
    214fa494ccf1:	33 c0                                           	xor    eax,eax
    214fa494ccf3:	e9 31 00 00 00                                  	jmp    0x214fa494cd29
    214fa494ccf8:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
    214fa494ccfe:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cd01:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
    214fa494cd05:	c5 f9 7e f7                                     	vmovd  edi,xmm6
    214fa494cd09:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cd0c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494cd0f:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
    214fa494cd15:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    214fa494cd19:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    214fa494cd1d:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
    214fa494cd23:	8d 04 81                                        	lea    eax,[rcx+rax*4]
    214fa494cd26:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
    214fa494cd29:	c4 c3 19 22 f4 03                               	vpinsrd xmm6,xmm12,r12d,0x3
    214fa494cd2f:	c4 63 11 22 e6 03                               	vpinsrd xmm12,xmm13,esi,0x3
    214fa494cd35:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
    214fa494cd3b:	c5 79 6e ef                                     	vmovd  xmm13,edi
    214fa494cd3f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
    214fa494cd44:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
    214fa494cd4a:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
    214fa494cd50:	c4 63 11 22 e8 03                               	vpinsrd xmm13,xmm13,eax,0x3
    214fa494cd56:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
    214fa494cd5b:	e9 95 00 00 00                                  	jmp    0x214fa494cdf5
    214fa494cd60:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494cd63:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
    214fa494cd68:	42 8d 3c 99                                     	lea    edi,[rcx+r11*4]
    214fa494cd6c:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    214fa494cd71:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
    214fa494cd76:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    214fa494cd7d:	42 8d 3c a1                                     	lea    edi,[rcx+r12*4]
    214fa494cd81:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    214fa494cd86:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    214fa494cd8d:	42 8d 3c b9                                     	lea    edi,[rcx+r15*4]
    214fa494cd91:	c5 7b 10 24 3a                                  	vmovsd xmm12,QWORD PTR [rdx+rdi*1]
    214fa494cd96:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
    214fa494cd9b:	c4 41 48 c6 e1 dd                               	vshufps xmm12,xmm6,xmm9,0xdd
    214fa494cda1:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
    214fa494cda7:	c4 c1 31 72 f6 02                               	vpslld xmm9,xmm14,0x2
    214fa494cdad:	c5 79 7e cf                                     	vmovd  edi,xmm9
    214fa494cdb1:	03 f9                                           	add    edi,ecx
    214fa494cdb3:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
    214fa494cdb8:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
    214fa494cdbe:	03 f9                                           	add    edi,ecx
    214fa494cdc0:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    214fa494cdc5:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
    214fa494cdca:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
    214fa494cdd0:	03 f9                                           	add    edi,ecx
    214fa494cdd2:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
    214fa494cdd7:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
    214fa494cddd:	03 f9                                           	add    edi,ecx
    214fa494cddf:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
    214fa494cde4:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
    214fa494cde9:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
    214fa494cdef:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
    214fa494cdf5:	c5 91 72 d6 18                                  	vpsrld xmm13,xmm6,0x18
    214fa494cdfa:	c4 c1 69 72 d4 18                               	vpsrld xmm2,xmm12,0x18
    214fa494ce00:	c5 11 6b ea                                     	vpackssdw xmm13,xmm13,xmm2
    214fa494ce04:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
    214fa494ce08:	c4 c3 69 0f dd 08                               	vpalignr xmm3,xmm2,xmm13,0x8
    214fa494ce0e:	c5 11 61 eb                                     	vpunpcklwd xmm13,xmm13,xmm3
    214fa494ce12:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
    214fa494ce1c:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa494ce21:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa494ce25:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
    214fa494ce2a:	c5 78 10 85 50 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2b0]
    214fa494ce32:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
    214fa494ce37:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
    214fa494ce41:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa494ce46:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
    214fa494ce4a:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
    214fa494ce4e:	4c 8b 15 09 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa109]        # 0x214fa4946f5e
    214fa494ce55:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa494ce5a:	c4 c1 78 54 cf                                  	vandps xmm1,xmm0,xmm15
    214fa494ce5f:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa494ce65:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    214fa494ce69:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    214fa494ce6e:	4c 8b 15 28 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe328]        # 0x214fa494b19d
    214fa494ce75:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    214fa494ce7a:	c4 c1 78 c2 c3 01                               	vcmpltps xmm0,xmm0,xmm11
    214fa494ce80:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
    214fa494ce84:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
    214fa494ce88:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494ce8d:	c5 e1 fa c8                                     	vpsubd xmm1,xmm3,xmm0
    214fa494ce91:	c5 f1 6b c0                                     	vpackssdw xmm0,xmm1,xmm0
    214fa494ce95:	c4 e3 69 0f c8 08                               	vpalignr xmm1,xmm2,xmm0,0x8
    214fa494ce9b:	c5 f9 61 c1                                     	vpunpcklwd xmm0,xmm0,xmm1
    214fa494ce9f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    214fa494cea3:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
    214fa494ceab:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
    214fa494ceaf:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
    214fa494ceb4:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
    214fa494ceb8:	4c 8b 15 9f a0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa09f]        # 0x214fa4946f5e
    214fa494cebf:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    214fa494cec4:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
    214fa494cec9:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    214fa494cecf:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    214fa494ced3:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    214fa494ced8:	4c 8b 15 be e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe2be]        # 0x214fa494b19d
    214fa494cedf:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
    214fa494cee4:	c4 c1 40 c2 fb 01                               	vcmpltps xmm7,xmm7,xmm11
    214fa494ceea:	c5 41 df fc                                     	vpandn xmm15,xmm7,xmm4
    214fa494ceee:	c5 f1 db ff                                     	vpand  xmm7,xmm1,xmm7
    214fa494cef2:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa494cef7:	c5 61 fa df                                     	vpsubd xmm11,xmm3,xmm7
    214fa494cefb:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    214fa494cf00:	c4 c1 71 72 d1 18                               	vpsrld xmm1,xmm9,0x18
    214fa494cf06:	c4 c1 61 72 d6 18                               	vpsrld xmm3,xmm14,0x18
    214fa494cf0c:	c5 f1 6b cb                                     	vpackssdw xmm1,xmm1,xmm3
    214fa494cf10:	c4 e3 69 0f d9 08                               	vpalignr xmm3,xmm2,xmm1,0x8
    214fa494cf16:	c5 f1 61 cb                                     	vpunpcklwd xmm1,xmm1,xmm3
    214fa494cf1a:	c5 f1 f5 c8                                     	vpmaddwd xmm1,xmm1,xmm0
    214fa494cf1e:	c4 e2 71 40 cf                                  	vpmulld xmm1,xmm1,xmm7
    214fa494cf23:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    214fa494cf27:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
    214fa494cf31:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    214fa494cf36:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    214fa494cf3a:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
    214fa494cf3e:	c4 c1 11 72 d5 10                               	vpsrld xmm13,xmm13,0x10
    214fa494cf44:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494cf49:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
    214fa494cf4f:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
    214fa494cf54:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494cf59:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
    214fa494cf5f:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
    214fa494cf64:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
    214fa494cf69:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
    214fa494cf6e:	4c 8b 15 3d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea3d]        # 0x214fa494b9b2
    214fa494cf75:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa494cf7a:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa494cf7e:	c5 10 59 eb                                     	vmulps xmm13,xmm13,xmm3
    214fa494cf82:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    214fa494cf85:	c5 7a 7f ac 02 c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1c0],xmm13
    214fa494cf8e:	c5 91 72 d6 10                                  	vpsrld xmm13,xmm6,0x10
    214fa494cf93:	4c 8b 15 30 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe930]        # 0x214fa494b8ca
    214fa494cf9a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
    214fa494cf9f:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
    214fa494cfa3:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    214fa494cfa7:	c4 c1 51 72 d4 10                               	vpsrld xmm5,xmm12,0x10
    214fa494cfad:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa494cfb1:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    214fa494cfb5:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    214fa494cfbb:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    214fa494cfbf:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    214fa494cfc3:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
    214fa494cfc8:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
    214fa494cfce:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa494cfd2:	c4 c1 39 72 d6 10                               	vpsrld xmm8,xmm14,0x10
    214fa494cfd8:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    214fa494cfdc:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
    214fa494cfe1:	c4 c3 69 0f e8 08                               	vpalignr xmm5,xmm2,xmm8,0x8
    214fa494cfe7:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
    214fa494cfeb:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    214fa494cfef:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
    214fa494cff4:	c4 41 11 fe c0                                  	vpaddd xmm8,xmm13,xmm8
    214fa494cff9:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    214fa494cffd:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    214fa494d003:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494d008:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa494d00e:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa494d013:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494d018:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa494d01e:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa494d023:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa494d028:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa494d02d:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    214fa494d031:	c5 7a 7f 84 02 b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1b0],xmm8
    214fa494d03a:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
    214fa494d03f:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
    214fa494d043:	c4 c1 11 72 d4 08                               	vpsrld xmm13,xmm12,0x8
    214fa494d049:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    214fa494d04d:	c4 41 39 6b c5                                  	vpackssdw xmm8,xmm8,xmm13
    214fa494d052:	c4 43 69 0f e8 08                               	vpalignr xmm13,xmm2,xmm8,0x8
    214fa494d058:	c4 41 39 61 c5                                  	vpunpcklwd xmm8,xmm8,xmm13
    214fa494d05d:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
    214fa494d061:	c4 42 39 40 c3                                  	vpmulld xmm8,xmm8,xmm11
    214fa494d066:	c4 c1 11 72 d1 08                               	vpsrld xmm13,xmm9,0x8
    214fa494d06c:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
    214fa494d070:	c4 c1 51 72 d6 08                               	vpsrld xmm5,xmm14,0x8
    214fa494d076:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
    214fa494d07a:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
    214fa494d07e:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
    214fa494d084:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
    214fa494d088:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
    214fa494d08c:	c4 62 11 40 ef                                  	vpmulld xmm13,xmm13,xmm7
    214fa494d091:	c4 41 39 fe c5                                  	vpaddd xmm8,xmm8,xmm13
    214fa494d096:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
    214fa494d09a:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
    214fa494d0a0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494d0a5:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa494d0ab:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa494d0b0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494d0b5:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa494d0bb:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa494d0c0:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa494d0c5:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa494d0ca:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
    214fa494d0ce:	c5 7a 7f 84 02 a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1a0],xmm8
    214fa494d0d7:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
    214fa494d0db:	c5 19 db c4                                     	vpand  xmm8,xmm12,xmm4
    214fa494d0df:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
    214fa494d0e4:	c4 63 69 0f c6 08                               	vpalignr xmm8,xmm2,xmm6,0x8
    214fa494d0ea:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
    214fa494d0ef:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
    214fa494d0f3:	c4 c2 49 40 f3                                  	vpmulld xmm6,xmm6,xmm11
    214fa494d0f8:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
    214fa494d0fc:	c5 09 db cc                                     	vpand  xmm9,xmm14,xmm4
    214fa494d100:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
    214fa494d105:	c4 43 69 0f c8 08                               	vpalignr xmm9,xmm2,xmm8,0x8
    214fa494d10b:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    214fa494d110:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
    214fa494d114:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
    214fa494d119:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
    214fa494d11d:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
    214fa494d121:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
    214fa494d126:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494d12b:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa494d131:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa494d136:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494d13b:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa494d140:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa494d144:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa494d148:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa494d14d:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
    214fa494d151:	c5 fa 7f 84 02 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x190],xmm0
    214fa494d15a:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494d161:	e9 53 05 00 00                                  	jmp    0x214fa494d6b9
    214fa494d166:	41 83 f8 0f                                     	cmp    r8d,0xf
    214fa494d16a:	0f 84 64 00 00 00                               	je     0x214fa494d1d4
    214fa494d170:	41 f6 c0 01                                     	test   r8b,0x1
    214fa494d174:	0f 85 07 00 00 00                               	jne    0x214fa494d181
    214fa494d17a:	33 ff                                           	xor    edi,edi
    214fa494d17c:	e9 06 00 00 00                                  	jmp    0x214fa494d187
    214fa494d181:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494d184:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494d187:	41 f6 c0 02                                     	test   r8b,0x2
    214fa494d18b:	0f 85 08 00 00 00                               	jne    0x214fa494d199
    214fa494d191:	45 33 db                                        	xor    r11d,r11d
    214fa494d194:	e9 08 00 00 00                                  	jmp    0x214fa494d1a1
    214fa494d199:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    214fa494d19d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494d1a1:	41 f6 c0 04                                     	test   r8b,0x4
    214fa494d1a5:	0f 85 08 00 00 00                               	jne    0x214fa494d1b3
    214fa494d1ab:	45 33 e4                                        	xor    r12d,r12d
    214fa494d1ae:	e9 0f 00 00 00                                  	jmp    0x214fa494d1c2
    214fa494d1b3:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    214fa494d1ba:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    214fa494d1be:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    214fa494d1c2:	41 f6 c0 08                                     	test   r8b,0x8
    214fa494d1c6:	0f 85 25 00 00 00                               	jne    0x214fa494d1f1
    214fa494d1cc:	45 33 ff                                        	xor    r15d,r15d
    214fa494d1cf:	e9 2c 00 00 00                                  	jmp    0x214fa494d200
    214fa494d1d4:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
    214fa494d1db:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
    214fa494d1df:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
    214fa494d1e3:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
    214fa494d1e7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
    214fa494d1eb:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
    214fa494d1ee:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
    214fa494d1f1:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
    214fa494d1f8:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
    214fa494d1fc:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
    214fa494d200:	c5 f9 6e c7                                     	vmovd  xmm0,edi
    214fa494d204:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa494d209:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
    214fa494d20f:	c4 c3 79 22 c4 02                               	vpinsrd xmm0,xmm0,r12d,0x2
    214fa494d215:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
    214fa494d21b:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
    214fa494d220:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494d225:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
    214fa494d22b:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
    214fa494d230:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494d235:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
    214fa494d23a:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa494d23e:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
    214fa494d242:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
    214fa494d247:	4c 8b 15 64 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe764]        # 0x214fa494b9b2
    214fa494d24e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa494d253:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa494d257:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
    214fa494d25b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494d25e:	c5 fa 7f b4 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm6
    214fa494d267:	4c 8b 15 5c e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe65c]        # 0x214fa494b8ca
    214fa494d26e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
    214fa494d273:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
    214fa494d277:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
    214fa494d27b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494d280:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa494d286:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa494d28b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494d290:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa494d296:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa494d29b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa494d2a0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa494d2a5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    214fa494d2a9:	c5 7a 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm8
    214fa494d2b2:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
    214fa494d2b7:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
    214fa494d2bb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494d2c0:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
    214fa494d2c6:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
    214fa494d2cb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494d2d0:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
    214fa494d2d6:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
    214fa494d2db:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
    214fa494d2e0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
    214fa494d2e5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
    214fa494d2e9:	c5 7a 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm8
    214fa494d2f2:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
    214fa494d2f7:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
    214fa494d2fb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
    214fa494d300:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
    214fa494d306:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
    214fa494d30b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
    214fa494d310:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
    214fa494d315:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
    214fa494d319:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
    214fa494d31d:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
    214fa494d322:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
    214fa494d326:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
    214fa494d32f:	8b c7                                           	mov    eax,edi
    214fa494d331:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494d338:	e9 7c 03 00 00                                  	jmp    0x214fa494d6b9
    214fa494d33d:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    214fa494d343:	4c 8d 5a 58                                     	lea    r11,[rdx+0x58]
    214fa494d347:	c4 02 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [r11+r12*1]
    214fa494d34d:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
    214fa494d352:	c4 42 79 18 1c 03                               	vbroadcastss xmm11,DWORD PTR [r11+rax*1]
    214fa494d358:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
    214fa494d35d:	c4 41 38 58 c3                                  	vaddps xmm8,xmm8,xmm11
    214fa494d362:	c4 02 79 18 1c 0b                               	vbroadcastss xmm11,DWORD PTR [r11+r9*1]
    214fa494d368:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
    214fa494d36d:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
    214fa494d372:	c4 c1 48 59 d8                                  	vmulps xmm3,xmm6,xmm8
    214fa494d377:	41 83 ff 03                                     	cmp    r15d,0x3
    214fa494d37b:	0f 84 a5 02 00 00                               	je     0x214fa494d626
    214fa494d381:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494d385:	c4 a1 7a 7f 84 1a c0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xc0],xmm0
    214fa494d38f:	c4 a1 7a 7f 84 1a b0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xb0],xmm0
    214fa494d399:	c4 a1 7a 7f 84 1a a0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xa0],xmm0
    214fa494d3a3:	c4 a1 7a 7f bc 1a f0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1f0],xmm7
    214fa494d3ad:	c4 a1 7a 7f 94 1a e0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1e0],xmm2
    214fa494d3b7:	c4 a1 7a 7f 9c 1a d0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1d0],xmm3
    214fa494d3c1:	c4 a1 7a 7f 84 1a 90 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x90],xmm0
    214fa494d3cb:	4c 8b ff                                        	mov    r15,rdi
    214fa494d3ce:	33 ff                                           	xor    edi,edi
    214fa494d3d0:	e9 41 00 00 00                                  	jmp    0x214fa494d416
    214fa494d3d5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494d3de:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494d3e7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494d3f0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494d3f9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    214fa494d400:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    214fa494d407:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494d40b:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494d40f:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    214fa494d416:	48 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rdi
    214fa494d41d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa494d422:	0f 85 e9 26 00 00                               	jne    0x214fa494fb11
    214fa494d428:	8b cf                                           	mov    ecx,edi
    214fa494d42a:	41 d3 e8                                        	shr    r8d,cl
    214fa494d42d:	41 f6 c0 01                                     	test   r8b,0x1
    214fa494d431:	0f 84 4c 01 00 00                               	je     0x214fa494d583
    214fa494d437:	42 8b 4c 3a 10                                  	mov    ecx,DWORD PTR [rdx+r15*1+0x10]
    214fa494d43c:	46 8b 44 3a 0c                                  	mov    r8d,DWORD PTR [rdx+r15*1+0xc]
    214fa494d441:	4c 89 85 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r8
    214fa494d448:	46 8b 44 3a 08                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x8]
    214fa494d44d:	46 8b 44 3a 04                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x4]
    214fa494d452:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
    214fa494d459:	46 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+r15*1]
    214fa494d45d:	41 83 f8 02                                     	cmp    r8d,0x2
    214fa494d461:	0f 84 b2 00 00 00                               	je     0x214fa494d519
    214fa494d467:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
    214fa494d46e:	45 85 c0                                        	test   r8d,r8d
    214fa494d471:	0f 85 44 00 00 00                               	jne    0x214fa494d4bb
    214fa494d477:	45 8d 84 bb f0 01 00 00                         	lea    r8d,[r11+rdi*4+0x1f0]
    214fa494d47f:	c4 a1 7a 10 34 02                               	vmovss xmm6,DWORD PTR [rdx+r8*1]
    214fa494d485:	45 8d 83 90 00 00 00                            	lea    r8d,[r11+0x90]
    214fa494d48c:	8b cf                                           	mov    ecx,edi
    214fa494d48e:	c1 e1 04                                        	shl    ecx,0x4
    214fa494d491:	44 03 c1                                        	add    r8d,ecx
    214fa494d494:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d498:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    214fa494d49e:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    214fa494d4a4:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    214fa494d4aa:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa494d4ae:	41 8b d8                                        	mov    ebx,r8d
    214fa494d4b1:	e8 6a ad ed ff                                  	call   0x214fa4828220
    214fa494d4b6:	e9 c8 00 00 00                                  	jmp    0x214fa494d583
    214fa494d4bb:	4c 8b c2                                        	mov    r8,rdx
    214fa494d4be:	43 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+r15*1+0x14]
    214fa494d4c3:	44 8b d7                                        	mov    r10d,edi
    214fa494d4c6:	41 8b fb                                        	mov    edi,r11d
    214fa494d4c9:	45 8b da                                        	mov    r11d,r10d
    214fa494d4cc:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
    214fa494d4d4:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
    214fa494d4da:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
    214fa494d4e2:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
    214fa494d4e8:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
    214fa494d4ee:	41 8b cb                                        	mov    ecx,r11d
    214fa494d4f1:	c1 e1 04                                        	shl    ecx,0x4
    214fa494d4f4:	03 d1                                           	add    edx,ecx
    214fa494d4f6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d4fa:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    214fa494d500:	44 8b ca                                        	mov    r9d,edx
    214fa494d503:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    214fa494d509:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
    214fa494d50f:	e8 24 ad ed ff                                  	call   0x214fa4828238
    214fa494d514:	e9 6a 00 00 00                                  	jmp    0x214fa494d583
    214fa494d519:	4c 8b c2                                        	mov    r8,rdx
    214fa494d51c:	4d 8b e7                                        	mov    r12,r15
    214fa494d51f:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
    214fa494d524:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
    214fa494d529:	44 8b d7                                        	mov    r10d,edi
    214fa494d52c:	41 8b fb                                        	mov    edi,r11d
    214fa494d52f:	45 8b da                                        	mov    r11d,r10d
    214fa494d532:	46 8d bc 9f f0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1f0]
    214fa494d53a:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
    214fa494d540:	46 8d bc 9f e0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1e0]
    214fa494d548:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
    214fa494d54e:	46 8d bc 9f d0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1d0]
    214fa494d556:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
    214fa494d55c:	44 8d bf 90 00 00 00                            	lea    r15d,[rdi+0x90]
    214fa494d563:	41 8b c3                                        	mov    eax,r11d
    214fa494d566:	c1 e0 04                                        	shl    eax,0x4
    214fa494d569:	44 03 f8                                        	add    r15d,eax
    214fa494d56c:	41 57                                           	push   r15
    214fa494d56e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d572:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
    214fa494d578:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
    214fa494d57e:	e8 a5 ac ed ff                                  	call   0x214fa4828228
    214fa494d583:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    214fa494d589:	83 c7 01                                        	add    edi,0x1
    214fa494d58c:	83 ff 04                                        	cmp    edi,0x4
    214fa494d58f:	0f 85 6b fe ff ff                               	jne    0x214fa494d400
    214fa494d595:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
    214fa494d598:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494d59c:	c4 c1 7a 6f 84 18 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0xb0]
    214fa494d5a6:	c4 c1 7a 6f b4 18 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0xc0]
    214fa494d5b0:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
    214fa494d5b4:	c4 41 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x90]
    214fa494d5be:	c4 41 7a 6f 8c 18 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0xa0]
    214fa494d5c8:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
    214fa494d5cd:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
    214fa494d5d1:	c4 41 7a 7f 9c 18 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1c0],xmm11
    214fa494d5db:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
    214fa494d5df:	c4 c1 7a 7f bc 18 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1b0],xmm7
    214fa494d5e9:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
    214fa494d5ed:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
    214fa494d5f2:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
    214fa494d5f6:	c4 c1 7a 7f bc 18 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1a0],xmm7
    214fa494d600:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
    214fa494d604:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
    214fa494d60e:	8b c3                                           	mov    eax,ebx
    214fa494d610:	49 8b d0                                        	mov    rdx,r8
    214fa494d613:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494d61a:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    214fa494d621:	e9 93 00 00 00                                  	jmp    0x214fa494d6b9
    214fa494d626:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494d62a:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
    214fa494d631:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d635:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa494d638:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
    214fa494d63c:	49 8b d0                                        	mov    rdx,r8
    214fa494d63f:	e8 e4 ae ed ff                                  	call   0x214fa4828528
    214fa494d644:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
    214fa494d647:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494d64b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494d652:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    214fa494d659:	e9 5b 00 00 00                                  	jmp    0x214fa494d6b9
    214fa494d65e:	4c 8b fa                                        	mov    r15,rdx
    214fa494d661:	49 8d 57 3c                                     	lea    rdx,[r15+0x3c]
    214fa494d665:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
    214fa494d66b:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
    214fa494d66e:	c4 c1 7a 7f 84 17 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x190],xmm0
    214fa494d678:	49 8d 4f 40                                     	lea    rcx,[r15+0x40]
    214fa494d67c:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    214fa494d682:	c4 c1 7a 7f 84 17 a0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1a0],xmm0
    214fa494d68c:	49 8d 4f 44                                     	lea    rcx,[r15+0x44]
    214fa494d690:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    214fa494d696:	c4 c1 7a 7f 84 17 b0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1b0],xmm0
    214fa494d6a0:	49 8d 4f 48                                     	lea    rcx,[r15+0x48]
    214fa494d6a4:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
    214fa494d6aa:	c4 c1 7a 7f 84 17 c0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1c0],xmm0
    214fa494d6b4:	8b c2                                           	mov    eax,edx
    214fa494d6b6:	49 8b d7                                        	mov    rdx,r15
    214fa494d6b9:	c5 fa 6f 84 02 90 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rax*1+0x190]
    214fa494d6c2:	44 8b 9c 3a 34 01 00 00                         	mov    r11d,DWORD PTR [rdx+rdi*1+0x134]
    214fa494d6ca:	83 bc 3a 34 01 00 00 02                         	cmp    DWORD PTR [rdx+rdi*1+0x134],0x2
    214fa494d6d2:	0f 84 55 00 00 00                               	je     0x214fa494d72d
    214fa494d6d8:	c5 fa 6f b4 02 c0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1c0]
    214fa494d6e1:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
    214fa494d6e9:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    214fa494d6ed:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    214fa494d6f6:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
    214fa494d6fe:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    214fa494d702:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    214fa494d70b:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
    214fa494d713:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
    214fa494d718:	c5 78 10 8d 90 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x170]
    214fa494d720:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
    214fa494d724:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    214fa494d728:	e9 1f 00 00 00                                  	jmp    0x214fa494d74c
    214fa494d72d:	c5 fa 6f bc 02 c0 01 00 00                      	vmovdqu xmm7,XMMWORD PTR [rdx+rax*1+0x1c0]
    214fa494d736:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
    214fa494d73f:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
    214fa494d748:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    214fa494d74c:	c5 49 6a cf                                     	vpunpckhdq xmm9,xmm6,xmm7
    214fa494d750:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
    214fa494d755:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
    214fa494d75a:	c5 7a 7f 5c 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm11
    214fa494d760:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
    214fa494d765:	c5 7a 7f 4c 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm9
    214fa494d76b:	c5 c9 62 f7                                     	vpunpckldq xmm6,xmm6,xmm7
    214fa494d76f:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
    214fa494d774:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
    214fa494d778:	c5 fa 7f 7c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm7
    214fa494d77e:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
    214fa494d782:	c5 fa 7f 04 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm0
    214fa494d787:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    214fa494d78c:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    214fa494d790:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    214fa494d795:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    214fa494d79a:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494d79f:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
    214fa494d7a7:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494d7af:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494d7b7:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494d7bf:	41 f6 c0 01                                     	test   r8b,0x1
    214fa494d7c3:	0f 84 63 00 00 00                               	je     0x214fa494d82c
    214fa494d7c9:	c5 fa 10 44 02 40                               	vmovss xmm0,DWORD PTR [rdx+rax*1+0x40]
    214fa494d7cf:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    214fa494d7d6:	0f 85 35 00 00 00                               	jne    0x214fa494d811
    214fa494d7dc:	c5 fa 10 14 02                                  	vmovss xmm2,DWORD PTR [rdx+rax*1]
    214fa494d7e1:	c5 fa 10 5c 02 04                               	vmovss xmm3,DWORD PTR [rdx+rax*1+0x4]
    214fa494d7e7:	c5 fa 10 64 02 08                               	vmovss xmm4,DWORD PTR [rdx+rax*1+0x8]
    214fa494d7ed:	c5 fa 10 6c 02 0c                               	vmovss xmm5,DWORD PTR [rdx+rax*1+0xc]
    214fa494d7f3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d7f7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494d7fa:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa494d800:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa494d803:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    214fa494d807:	e8 54 aa ed ff                                  	call   0x214fa4828260
    214fa494d80c:	e9 1b 00 00 00                                  	jmp    0x214fa494d82c
    214fa494d811:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d815:	8b d8                                           	mov    ebx,eax
    214fa494d817:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494d81a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa494d820:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa494d823:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
    214fa494d827:	e8 4c aa ed ff                                  	call   0x214fa4828278
    214fa494d82c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
    214fa494d833:	0f 84 6c 00 00 00                               	je     0x214fa494d8a5
    214fa494d839:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494d83c:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494d840:	c4 c1 7a 10 4c 38 44                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x44]
    214fa494d847:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    214fa494d84e:	0f 85 36 00 00 00                               	jne    0x214fa494d88a
    214fa494d854:	c4 c1 7a 10 54 38 10                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x10]
    214fa494d85b:	c4 c1 7a 10 5c 38 14                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x14]
    214fa494d862:	c4 c1 7a 10 64 38 18                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x18]
    214fa494d869:	c4 c1 7a 10 6c 38 1c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x1c]
    214fa494d870:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d874:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494d877:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    214fa494d87d:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa494d880:	e8 db a9 ed ff                                  	call   0x214fa4828260
    214fa494d885:	e9 1b 00 00 00                                  	jmp    0x214fa494d8a5
    214fa494d88a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d88e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494d891:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    214fa494d897:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
    214fa494d89a:	8b 9d a8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x358]
    214fa494d8a0:	e8 d3 a9 ed ff                                  	call   0x214fa4828278
    214fa494d8a5:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
    214fa494d8ac:	0f 84 72 00 00 00                               	je     0x214fa494d924
    214fa494d8b2:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494d8b5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494d8b9:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
    214fa494d8c0:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    214fa494d8c7:	0f 85 39 00 00 00                               	jne    0x214fa494d906
    214fa494d8cd:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
    214fa494d8d4:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
    214fa494d8db:	c4 c1 7a 10 64 38 28                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x28]
    214fa494d8e2:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
    214fa494d8e9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d8ed:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494d8f0:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa494d8f6:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    214fa494d8fc:	e8 5f a9 ed ff                                  	call   0x214fa4828260
    214fa494d901:	e9 1e 00 00 00                                  	jmp    0x214fa494d924
    214fa494d906:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d90a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494d90d:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa494d913:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    214fa494d919:	8b 9d b0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x350]
    214fa494d91f:	e8 54 a9 ed ff                                  	call   0x214fa4828278
    214fa494d924:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
    214fa494d92b:	0f 85 4e 00 00 00                               	jne    0x214fa494d97f
    214fa494d931:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa494d935:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494d93a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa494d93e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494d943:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494d949:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494d94f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494d954:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494d95c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494d964:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494d96c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494d974:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494d97a:	e9 2b 1d 00 00                                  	jmp    0x214fa494f6aa
    214fa494d97f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494d982:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494d986:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
    214fa494d98d:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
    214fa494d994:	0f 85 82 00 00 00                               	jne    0x214fa494da1c
    214fa494d99a:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
    214fa494d9a1:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
    214fa494d9a8:	c4 c1 7a 10 64 38 38                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x38]
    214fa494d9af:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
    214fa494d9b6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494d9ba:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494d9bd:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    214fa494d9c3:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    214fa494d9c9:	e8 92 a8 ed ff                                  	call   0x214fa4828260
    214fa494d9ce:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa494d9d2:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494d9d7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa494d9db:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494d9e0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494d9e6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494d9ec:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494d9f1:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494d9f9:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494da01:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494da09:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494da11:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494da17:	e9 8e 1c 00 00                                  	jmp    0x214fa494f6aa
    214fa494da1c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494da20:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494da23:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    214fa494da29:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    214fa494da2f:	8b 9d c8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x338]
    214fa494da35:	e8 3e a8 ed ff                                  	call   0x214fa4828278
    214fa494da3a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa494da3e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494da43:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa494da47:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494da4c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494da52:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494da58:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494da5d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494da65:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494da6d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494da75:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494da7d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494da83:	e9 22 1c 00 00                                  	jmp    0x214fa494f6aa
    214fa494da88:	44 8b c3                                        	mov    r8d,ebx
    214fa494da8b:	41 83 e0 01                                     	and    r8d,0x1
    214fa494da8f:	41 f7 d8                                        	neg    r8d
    214fa494da92:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
    214fa494da97:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
    214fa494da9c:	44 8b c3                                        	mov    r8d,ebx
    214fa494da9f:	41 c1 e0 1e                                     	shl    r8d,0x1e
    214fa494daa3:	41 c1 f8 1f                                     	sar    r8d,0x1f
    214fa494daa7:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
    214fa494daad:	44 8b c3                                        	mov    r8d,ebx
    214fa494dab0:	41 c1 e0 1d                                     	shl    r8d,0x1d
    214fa494dab4:	41 c1 f8 1f                                     	sar    r8d,0x1f
    214fa494dab8:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
    214fa494dabe:	44 8b c3                                        	mov    r8d,ebx
    214fa494dac1:	41 c1 e0 1c                                     	shl    r8d,0x1c
    214fa494dac5:	41 c1 f8 1f                                     	sar    r8d,0x1f
    214fa494dac9:	c4 c3 79 22 c0 03                               	vpinsrd xmm0,xmm0,r8d,0x3
    214fa494dacf:	c4 e1 82 2a bd 60 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xa0]
    214fa494dad8:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
    214fa494dadd:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
    214fa494dae4:	4c 2b 85 d0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x330]
    214fa494daeb:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    214fa494daf0:	c4 c3 41 21 fb 10                               	vinsertps xmm7,xmm7,xmm11,0x10
    214fa494daf6:	4c 8b ff                                        	mov    r15,rdi
    214fa494daf9:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
    214fa494db00:	49 8d 14 3f                                     	lea    rdx,[r15+rdi*1]
    214fa494db04:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
    214fa494db09:	c4 c3 41 21 fb 20                               	vinsertps xmm7,xmm7,xmm11,0x20
    214fa494db0f:	4d 03 c7                                        	add    r8,r15
    214fa494db12:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
    214fa494db17:	c4 c3 41 21 fb 30                               	vinsertps xmm7,xmm7,xmm11,0x30
    214fa494db1d:	c5 78 10 9d 00 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x300]
    214fa494db25:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
    214fa494db29:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    214fa494db31:	c5 f0 59 d7                                     	vmulps xmm2,xmm1,xmm7
    214fa494db35:	c4 e1 82 2a 9d 50 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xb0]
    214fa494db3e:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    214fa494db43:	4c 8b 85 50 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xb0]
    214fa494db4a:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
    214fa494db51:	c4 c1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,r8
    214fa494db56:	c4 e3 61 21 dc 10                               	vinsertps xmm3,xmm3,xmm4,0x10
    214fa494db5c:	48 8b 95 50 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb0]
    214fa494db63:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    214fa494db6a:	48 8d 3c 11                                     	lea    rdi,[rcx+rdx*1]
    214fa494db6e:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    214fa494db73:	c4 e3 61 21 dc 20                               	vinsertps xmm3,xmm3,xmm4,0x20
    214fa494db79:	4a 8d 3c 01                                     	lea    rdi,[rcx+r8*1]
    214fa494db7d:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
    214fa494db82:	c4 e3 61 21 dc 30                               	vinsertps xmm3,xmm3,xmm4,0x30
    214fa494db88:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    214fa494db8c:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    214fa494db94:	c5 d8 59 eb                                     	vmulps xmm5,xmm4,xmm3
    214fa494db98:	c5 e8 58 f5                                     	vaddps xmm6,xmm2,xmm5
    214fa494db9c:	4c 8b 15 6e a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa96e]        # 0x214fa4948511
    214fa494dba3:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
    214fa494dba8:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
    214fa494dbad:	c5 38 5c cf                                     	vsubps xmm9,xmm8,xmm7
    214fa494dbb1:	c5 30 5c cb                                     	vsubps xmm9,xmm9,xmm3
    214fa494dbb5:	c5 78 10 95 20 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2e0]
    214fa494dbbd:	c4 41 28 59 d9                                  	vmulps xmm11,xmm10,xmm9
    214fa494dbc2:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
    214fa494dbc7:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
    214fa494dbcc:	c5 28 c2 e6 01                                  	vcmpltps xmm12,xmm10,xmm6
    214fa494dbd1:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    214fa494dbd5:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494dbd9:	49 8d 78 18                                     	lea    rdi,[r8+0x18]
    214fa494dbdd:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    214fa494dbe4:	c4 22 79 18 24 1f                               	vbroadcastss xmm12,DWORD PTR [rdi+r11*1]
    214fa494dbea:	c4 c1 40 59 fc                                  	vmulps xmm7,xmm7,xmm12
    214fa494dbef:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    214fa494dbf6:	c4 22 79 18 24 27                               	vbroadcastss xmm12,DWORD PTR [rdi+r12*1]
    214fa494dbfc:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
    214fa494dc01:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
    214fa494dc06:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    214fa494dc0d:	c4 22 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [rdi+r15*1]
    214fa494dc13:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
    214fa494dc18:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
    214fa494dc1d:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    214fa494dc25:	c5 b0 58 ff                                     	vaddps xmm7,xmm9,xmm7
    214fa494dc29:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    214fa494dc2d:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
    214fa494dc31:	44 8b ce                                        	mov    r9d,esi
    214fa494dc34:	44 0f af 8d 28 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xd8]
    214fa494dc3c:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    214fa494dc42:	44 03 cb                                        	add    r9d,ebx
    214fa494dc45:	0f af 75 a0                                     	imul   esi,DWORD PTR [rbp-0x60]
    214fa494dc49:	03 f3                                           	add    esi,ebx
    214fa494dc4b:	41 8b 5c 38 04                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x4]
    214fa494dc50:	41 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+rdi*1+0x68]
    214fa494dc55:	85 c0                                           	test   eax,eax
    214fa494dc57:	0f 85 07 00 00 00                               	jne    0x214fa494dc64
    214fa494dc5d:	33 d2                                           	xor    edx,edx
    214fa494dc5f:	e9 13 01 00 00                                  	jmp    0x214fa494dd77
    214fa494dc64:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
    214fa494dc6c:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    214fa494dc75:	75 e6                                           	jne    0x214fa494dc5d
    214fa494dc77:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
    214fa494dc7c:	8d 0c b2                                        	lea    ecx,[rdx+rsi*4]
    214fa494dc7f:	c4 41 7b 10 24 08                               	vmovsd xmm12,QWORD PTR [r8+rcx*1]
    214fa494dc85:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
    214fa494dc8b:	3b cb                                           	cmp    ecx,ebx
    214fa494dc8d:	0f 8c 0d 00 00 00                               	jl     0x214fa494dca0
    214fa494dc93:	c5 f8 10 9d 40 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2c0]
    214fa494dc9b:	e9 0a 00 00 00                                  	jmp    0x214fa494dcaa
    214fa494dca0:	42 8d 14 8a                                     	lea    edx,[rdx+r9*4]
    214fa494dca4:	c4 c1 7b 10 1c 10                               	vmovsd xmm3,QWORD PTR [r8+rdx*1]
    214fa494dcaa:	c5 19 6c e3                                     	vpunpcklqdq xmm12,xmm12,xmm3
    214fa494dcae:	41 8b 54 38 6c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x6c]
    214fa494dcb3:	81 ea 00 02 00 00                               	sub    edx,0x200
    214fa494dcb9:	83 fa 07                                        	cmp    edx,0x7
    214fa494dcbc:	0f 83 0b 00 00 00                               	jae    0x214fa494dccd
    214fa494dcc2:	4c 8d 15 a7 1f 00 00                            	lea    r10,[rip+0x1fa7]        # 0x214fa494fc70
    214fa494dcc9:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
    214fa494dccd:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
    214fa494dcd2:	e9 48 00 00 00                                  	jmp    0x214fa494dd1f
    214fa494dcd7:	c5 18 c2 e7 02                                  	vcmpleps xmm12,xmm12,xmm7
    214fa494dcdc:	e9 3e 00 00 00                                  	jmp    0x214fa494dd1f
    214fa494dce1:	c4 41 40 c2 e4 04                               	vcmpneqps xmm12,xmm7,xmm12
    214fa494dce7:	e9 33 00 00 00                                  	jmp    0x214fa494dd1f
    214fa494dcec:	c5 18 c2 e7 01                                  	vcmpltps xmm12,xmm12,xmm7
    214fa494dcf1:	e9 29 00 00 00                                  	jmp    0x214fa494dd1f
    214fa494dcf6:	c4 41 40 c2 e4 02                               	vcmpleps xmm12,xmm7,xmm12
    214fa494dcfc:	e9 1e 00 00 00                                  	jmp    0x214fa494dd1f
    214fa494dd01:	c4 41 40 c2 e4 00                               	vcmpeqps xmm12,xmm7,xmm12
    214fa494dd07:	e9 13 00 00 00                                  	jmp    0x214fa494dd1f
    214fa494dd0c:	c4 41 40 c2 e4 01                               	vcmpltps xmm12,xmm7,xmm12
    214fa494dd12:	e9 08 00 00 00                                  	jmp    0x214fa494dd1f
    214fa494dd17:	c5 78 10 a5 40 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2c0]
    214fa494dd1f:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
    214fa494dd23:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
    214fa494dd27:	85 d2                                           	test   edx,edx
    214fa494dd29:	0f 85 3c 00 00 00                               	jne    0x214fa494dd6b
    214fa494dd2f:	4d 8b e0                                        	mov    r12,r8
    214fa494dd32:	4c 8b c7                                        	mov    r8,rdi
    214fa494dd35:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494dd3a:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494dd3f:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494dd45:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494dd4b:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494dd50:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494dd58:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494dd60:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494dd66:	e9 3f 19 00 00                                  	jmp    0x214fa494f6aa
    214fa494dd6b:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    214fa494dd72:	ba 01 00 00 00                                  	mov    edx,0x1
    214fa494dd77:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
    214fa494dd81:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa494dd86:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa494dd8b:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x214fa494dd79
    214fa494dd92:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa494dd97:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
    214fa494dd9b:	c5 e0 c2 de 01                                  	vcmpltps xmm3,xmm3,xmm6
    214fa494dda0:	c4 41 61 df fc                                  	vpandn xmm15,xmm3,xmm12
    214fa494dda5:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
    214fa494dda9:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa494ddae:	c5 b8 5e f6                                     	vdivps xmm6,xmm8,xmm6
    214fa494ddb2:	48 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rbx
    214fa494ddb9:	49 8d 58 2c                                     	lea    rbx,[r8+0x2c]
    214fa494ddbd:	c4 22 79 18 24 1b                               	vbroadcastss xmm12,DWORD PTR [rbx+r11*1]
    214fa494ddc3:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
    214fa494ddc8:	c4 a2 79 18 1c 23                               	vbroadcastss xmm3,DWORD PTR [rbx+r12*1]
    214fa494ddce:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    214fa494ddd2:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    214fa494ddd6:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    214fa494dddc:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    214fa494dde0:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
    214fa494dde4:	c4 41 48 59 e4                                  	vmulps xmm12,xmm6,xmm12
    214fa494dde9:	49 8d 58 28                                     	lea    rbx,[r8+0x28]
    214fa494dded:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    214fa494ddf3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    214fa494ddf7:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
    214fa494ddff:	c4 a2 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [rbx+r12*1]
    214fa494de05:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
    214fa494de09:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
    214fa494de0d:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    214fa494de13:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    214fa494de17:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
    214fa494de1b:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
    214fa494de1f:	49 8d 58 24                                     	lea    rbx,[r8+0x24]
    214fa494de23:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    214fa494de29:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    214fa494de2d:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
    214fa494de35:	c4 a2 79 18 3c 23                               	vbroadcastss xmm7,DWORD PTR [rbx+r12*1]
    214fa494de3b:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
    214fa494de3f:	c5 e0 58 ff                                     	vaddps xmm7,xmm3,xmm7
    214fa494de43:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    214fa494de49:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    214fa494de4d:	c5 c0 58 fb                                     	vaddps xmm7,xmm7,xmm3
    214fa494de51:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
    214fa494de55:	49 8d 58 20                                     	lea    rbx,[r8+0x20]
    214fa494de59:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
    214fa494de5f:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
    214fa494de63:	c5 78 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm8
    214fa494de6b:	c4 22 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [rbx+r12*1]
    214fa494de71:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
    214fa494de76:	c4 41 60 58 c0                                  	vaddps xmm8,xmm3,xmm8
    214fa494de7b:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
    214fa494de81:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
    214fa494de85:	c5 38 58 c3                                     	vaddps xmm8,xmm8,xmm3
    214fa494de89:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
    214fa494de8e:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    214fa494de95:	48 89 b5 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rsi
    214fa494de9c:	41 8b b4 18 34 01 00 00                         	mov    esi,DWORD PTR [r8+rbx*1+0x134]
    214fa494dea4:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
    214fa494deab:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
    214fa494deaf:	c5 78 11 95 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm10
    214fa494deb7:	48 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rax
    214fa494debe:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
    214fa494dec5:	41 83 f9 01                                     	cmp    r9d,0x1
    214fa494dec9:	0f 87 fd 06 00 00                               	ja     0x214fa494e5cc
    214fa494decf:	45 8b 4c 18 28                                  	mov    r9d,DWORD PTR [r8+rbx*1+0x28]
    214fa494ded4:	41 8b 7c 18 20                                  	mov    edi,DWORD PTR [r8+rbx*1+0x20]
    214fa494ded9:	48 89 b5 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rsi
    214fa494dee0:	49 8d 70 54                                     	lea    rsi,[r8+0x54]
    214fa494dee4:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    214fa494deea:	c4 22 79 18 0c 1e                               	vbroadcastss xmm9,DWORD PTR [rsi+r11*1]
    214fa494def0:	c4 22 79 18 2c 26                               	vbroadcastss xmm13,DWORD PTR [rsi+r12*1]
    214fa494def6:	41 8b 74 18 1c                                  	mov    esi,DWORD PTR [r8+rbx*1+0x1c]
    214fa494defb:	c5 02 2a f6                                     	vcvtsi2ss xmm14,xmm15,esi
    214fa494deff:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
    214fa494df04:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
    214fa494df0b:	4d 8d 48 50                                     	lea    r9,[r8+0x50]
    214fa494df0f:	c4 82 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+r11*1]
    214fa494df15:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
    214fa494df19:	c4 82 79 18 24 21                               	vbroadcastss xmm4,DWORD PTR [r9+r12*1]
    214fa494df1f:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
    214fa494df23:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    214fa494df27:	c4 82 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [r9+r15*1]
    214fa494df2d:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
    214fa494df31:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
    214fa494df35:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
    214fa494df39:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
    214fa494df3f:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
    214fa494df43:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
    214fa494df47:	4c 8b 15 13 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd213]        # 0x214fa494b161
    214fa494df4e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
    214fa494df53:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
    214fa494df57:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
    214fa494df5b:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
    214fa494df61:	4c 8b 15 f6 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ff6]        # 0x214fa4946f5e
    214fa494df68:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
    214fa494df6d:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
    214fa494df72:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
    214fa494df78:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    214fa494df7d:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    214fa494df82:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    214fa494df8a:	4c 8b 15 db d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2db]        # 0x214fa494b26c
    214fa494df91:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
    214fa494df96:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
    214fa494df9b:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    214fa494dfa3:	4c 8b 15 f3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f3]        # 0x214fa494b19d
    214fa494dfaa:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
    214fa494dfaf:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    214fa494dfb7:	4c 8b 15 ee d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1ee]        # 0x214fa494b1ac
    214fa494dfbe:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa494dfc3:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa494dfc7:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    214fa494dfcc:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    214fa494dfd1:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
    214fa494dfd5:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494dfda:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa494dfde:	c4 81 7a 7f 84 08 90 00 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x90],xmm0
    214fa494dfe8:	c5 82 2a c7                                     	vcvtsi2ss xmm0,xmm15,edi
    214fa494dfec:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
    214fa494dff1:	c4 41 68 59 c9                                  	vmulps xmm9,xmm2,xmm9
    214fa494dff6:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
    214fa494dffb:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    214fa494e000:	c5 20 59 d3                                     	vmulps xmm10,xmm11,xmm3
    214fa494e004:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
    214fa494e009:	c4 41 48 59 c9                                  	vmulps xmm9,xmm6,xmm9
    214fa494e00e:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
    214fa494e014:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
    214fa494e019:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    214fa494e01e:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
    214fa494e022:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
    214fa494e028:	4c 8b 15 2f 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8f2f]        # 0x214fa4946f5e
    214fa494e02f:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
    214fa494e035:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
    214fa494e03a:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
    214fa494e040:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
    214fa494e045:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
    214fa494e04a:	4c 8b 15 4c d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd14c]        # 0x214fa494b19d
    214fa494e051:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
    214fa494e056:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
    214fa494e05b:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
    214fa494e060:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
    214fa494e065:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    214fa494e06a:	c4 01 7a 7f 94 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x190],xmm10
    214fa494e074:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
    214fa494e078:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    214fa494e080:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
    214fa494e085:	4c 8b 15 ad ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffedad]        # 0x214fa494ce39
    214fa494e08c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
    214fa494e091:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
    214fa494e096:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
    214fa494e09b:	4c 8b 15 bc 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ebc]        # 0x214fa4946f5e
    214fa494e0a2:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
    214fa494e0a8:	c4 c1 28 54 cf                                  	vandps xmm1,xmm10,xmm15
    214fa494e0ad:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
    214fa494e0b3:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
    214fa494e0b7:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
    214fa494e0bc:	4c 8b 15 da d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0da]        # 0x214fa494b19d
    214fa494e0c3:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
    214fa494e0c8:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
    214fa494e0cd:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
    214fa494e0d2:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
    214fa494e0d7:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
    214fa494e0dc:	c4 01 7a 7f 14 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm10
    214fa494e0e2:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
    214fa494e0e7:	c4 c1 78 59 c5                                  	vmulps xmm0,xmm0,xmm13
    214fa494e0ec:	c4 c1 78 58 c6                                  	vaddps xmm0,xmm0,xmm14
    214fa494e0f1:	4c 8b 15 66 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8e66]        # 0x214fa4946f5e
    214fa494e0f8:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa494e0fd:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
    214fa494e102:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa494e108:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
    214fa494e10d:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
    214fa494e112:	4c 8b 15 84 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd084]        # 0x214fa494b19d
    214fa494e119:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
    214fa494e11e:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
    214fa494e123:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
    214fa494e128:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
    214fa494e12c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494e131:	c4 81 7a 7f 44 08 70                            	vmovdqu XMMWORD PTR [r8+r9*1+0x70],xmm0
    214fa494e138:	c4 01 7a 7f 44 08 50                            	vmovdqu XMMWORD PTR [r8+r9*1+0x50],xmm8
    214fa494e13f:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    214fa494e147:	c4 81 7a 7f bc 08 f0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1f0],xmm7
    214fa494e151:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    214fa494e159:	c4 81 7a 7f 84 08 e0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1e0],xmm0
    214fa494e163:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    214fa494e16b:	c4 01 7a 7f a4 08 d0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1d0],xmm12
    214fa494e175:	45 8b 7c 18 34                                  	mov    r15d,DWORD PTR [r8+rbx*1+0x34]
    214fa494e17a:	45 8b 64 18 30                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x30]
    214fa494e17f:	45 8b 5c 18 2c                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x2c]
    214fa494e184:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
    214fa494e18b:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
    214fa494e192:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
    214fa494e199:	33 c0                                           	xor    eax,eax
    214fa494e19b:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    214fa494e1a1:	e9 2a 00 00 00                                  	jmp    0x214fa494e1d0
    214fa494e1a6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494e1af:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    214fa494e1b8:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    214fa494e1c0:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    214fa494e1c6:	45 8b cc                                        	mov    r9d,r12d
    214fa494e1c9:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    214fa494e1d0:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
    214fa494e1d5:	0f 85 5c 19 00 00                               	jne    0x214fa494fb37
    214fa494e1db:	8b c8                                           	mov    ecx,eax
    214fa494e1dd:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
    214fa494e1e4:	41 d3 ef                                        	shr    r15d,cl
    214fa494e1e7:	41 f6 c7 01                                     	test   r15b,0x1
    214fa494e1eb:	0f 85 0a 00 00 00                               	jne    0x214fa494e1fb
    214fa494e1f1:	45 8b e1                                        	mov    r12d,r9d
    214fa494e1f4:	8b f8                                           	mov    edi,eax
    214fa494e1f6:	e9 3d 03 00 00                                  	jmp    0x214fa494e538
    214fa494e1fb:	45 8d bc 81 90 01 00 00                         	lea    r15d,[r9+rax*4+0x190]
    214fa494e203:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
    214fa494e207:	41 8d 8c 81 90 00 00 00                         	lea    ecx,[r9+rax*4+0x90]
    214fa494e20f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa494e213:	44 8d 49 01                                     	lea    r9d,[rcx+0x1]
    214fa494e217:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    214fa494e21e:	45 85 db                                        	test   r11d,r11d
    214fa494e221:	0f 85 51 00 00 00                               	jne    0x214fa494e278
    214fa494e227:	85 f6                                           	test   esi,esi
    214fa494e229:	0f 84 c8 19 00 00                               	je     0x214fa494fbf7
    214fa494e22f:	83 fe ff                                        	cmp    esi,0xffffffff
    214fa494e232:	0f 84 94 19 00 00                               	je     0x214fa494fbcc
    214fa494e238:	44 8b d0                                        	mov    r10d,eax
    214fa494e23b:	8b c1                                           	mov    eax,ecx
    214fa494e23d:	41 8b ca                                        	mov    ecx,r10d
    214fa494e240:	99                                              	cdq
    214fa494e241:	f7 fe                                           	idiv   esi
    214fa494e243:	8b c2                                           	mov    eax,edx
    214fa494e245:	c1 f8 1f                                        	sar    eax,0x1f
    214fa494e248:	23 c6                                           	and    eax,esi
    214fa494e24a:	03 c2                                           	add    eax,edx
    214fa494e24c:	83 fe ff                                        	cmp    esi,0xffffffff
    214fa494e24f:	0f 84 80 19 00 00                               	je     0x214fa494fbd5
    214fa494e255:	44 8b d0                                        	mov    r10d,eax
    214fa494e258:	41 8b c1                                        	mov    eax,r9d
    214fa494e25b:	45 8b ca                                        	mov    r9d,r10d
    214fa494e25e:	99                                              	cdq
    214fa494e25f:	f7 fe                                           	idiv   esi
    214fa494e261:	8b c2                                           	mov    eax,edx
    214fa494e263:	c1 f8 1f                                        	sar    eax,0x1f
    214fa494e266:	23 c6                                           	and    eax,esi
    214fa494e268:	03 c2                                           	add    eax,edx
    214fa494e26a:	45 8b d1                                        	mov    r10d,r9d
    214fa494e26d:	44 8b c8                                        	mov    r9d,eax
    214fa494e270:	41 8b c2                                        	mov    eax,r10d
    214fa494e273:	e9 0e 00 00 00                                  	jmp    0x214fa494e286
    214fa494e278:	41 23 cb                                        	and    ecx,r11d
    214fa494e27b:	45 23 cb                                        	and    r9d,r11d
    214fa494e27e:	44 8b d1                                        	mov    r10d,ecx
    214fa494e281:	8b c8                                           	mov    ecx,eax
    214fa494e283:	41 8b c2                                        	mov    eax,r10d
    214fa494e286:	41 8d 57 01                                     	lea    edx,[r15+0x1]
    214fa494e28a:	45 85 e4                                        	test   r12d,r12d
    214fa494e28d:	0f 85 47 00 00 00                               	jne    0x214fa494e2da
    214fa494e293:	85 ff                                           	test   edi,edi
    214fa494e295:	0f 84 57 19 00 00                               	je     0x214fa494fbf2
    214fa494e29b:	83 ff ff                                        	cmp    edi,0xffffffff
    214fa494e29e:	0f 84 3b 19 00 00                               	je     0x214fa494fbdf
    214fa494e2a4:	8b c8                                           	mov    ecx,eax
    214fa494e2a6:	8b c2                                           	mov    eax,edx
    214fa494e2a8:	99                                              	cdq
    214fa494e2a9:	f7 ff                                           	idiv   edi
    214fa494e2ab:	8b c2                                           	mov    eax,edx
    214fa494e2ad:	c1 f8 1f                                        	sar    eax,0x1f
    214fa494e2b0:	23 c7                                           	and    eax,edi
    214fa494e2b2:	03 c2                                           	add    eax,edx
    214fa494e2b4:	83 ff ff                                        	cmp    edi,0xffffffff
    214fa494e2b7:	0f 84 2b 19 00 00                               	je     0x214fa494fbe8
    214fa494e2bd:	44 8b d0                                        	mov    r10d,eax
    214fa494e2c0:	41 8b c7                                        	mov    eax,r15d
    214fa494e2c3:	45 8b fa                                        	mov    r15d,r10d
    214fa494e2c6:	99                                              	cdq
    214fa494e2c7:	f7 ff                                           	idiv   edi
    214fa494e2c9:	8b c2                                           	mov    eax,edx
    214fa494e2cb:	c1 f8 1f                                        	sar    eax,0x1f
    214fa494e2ce:	23 f8                                           	and    edi,eax
    214fa494e2d0:	03 fa                                           	add    edi,edx
    214fa494e2d2:	41 8b d7                                        	mov    edx,r15d
    214fa494e2d5:	e9 0b 00 00 00                                  	jmp    0x214fa494e2e5
    214fa494e2da:	41 23 d4                                        	and    edx,r12d
    214fa494e2dd:	45 23 e7                                        	and    r12d,r15d
    214fa494e2e0:	41 8b fc                                        	mov    edi,r12d
    214fa494e2e3:	8b c8                                           	mov    ecx,eax
    214fa494e2e5:	8b c1                                           	mov    eax,ecx
    214fa494e2e7:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    214fa494e2ed:	44 8b ff                                        	mov    r15d,edi
    214fa494e2f0:	41 d3 e7                                        	shl    r15d,cl
    214fa494e2f3:	0f af fe                                        	imul   edi,esi
    214fa494e2f6:	45 85 db                                        	test   r11d,r11d
    214fa494e2f9:	41 0f 45 ff                                     	cmovne edi,r15d
    214fa494e2fd:	44 8d 3c 38                                     	lea    r15d,[rax+rdi*1]
    214fa494e301:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
    214fa494e305:	c4 81 7a 10 04 38                               	vmovss xmm0,DWORD PTR [r8+r15*1]
    214fa494e30b:	c4 e2 79 30 c0                                  	vpmovzxbw xmm0,xmm0
    214fa494e310:	41 03 f9                                        	add    edi,r9d
    214fa494e313:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    214fa494e316:	c4 c1 7a 10 3c 38                               	vmovss xmm7,DWORD PTR [r8+rdi*1]
    214fa494e31c:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
    214fa494e321:	c5 f9 61 c7                                     	vpunpcklwd xmm0,xmm0,xmm7
    214fa494e325:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    214fa494e32b:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
    214fa494e332:	41 8d 8c bf 00 fe ff ff                         	lea    ecx,[r15+rdi*4-0x200]
    214fa494e33a:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa494e33e:	41 bf 00 01 00 00                               	mov    r15d,0x100
    214fa494e344:	44 8b e1                                        	mov    r12d,ecx
    214fa494e347:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    214fa494e34d:	45 0f 4d e7                                     	cmovge r12d,r15d
    214fa494e351:	33 c9                                           	xor    ecx,ecx
    214fa494e353:	45 85 e4                                        	test   r12d,r12d
    214fa494e356:	41 0f 4f cc                                     	cmovg  ecx,r12d
    214fa494e35a:	44 69 e1 ff ff 00 00                            	imul   r12d,ecx,0xffff
    214fa494e361:	41 81 c4 00 01 00 00                            	add    r12d,0x100
    214fa494e368:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
    214fa494e36d:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    214fa494e372:	c5 f9 f5 c7                                     	vpmaddwd xmm0,xmm0,xmm7
    214fa494e376:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
    214fa494e37a:	41 8d 4c bc 70                                  	lea    ecx,[r12+rdi*4+0x70]
    214fa494e37f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
    214fa494e383:	8b f9                                           	mov    edi,ecx
    214fa494e385:	81 f9 00 01 00 00                               	cmp    ecx,0x100
    214fa494e38b:	41 0f 4d ff                                     	cmovge edi,r15d
    214fa494e38f:	33 c9                                           	xor    ecx,ecx
    214fa494e391:	85 ff                                           	test   edi,edi
    214fa494e393:	0f 4f cf                                        	cmovg  ecx,edi
    214fa494e396:	44 2b f9                                        	sub    r15d,ecx
    214fa494e399:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    214fa494e39e:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa494e3a3:	c4 c2 79 40 c0                                  	vpmulld xmm0,xmm0,xmm8
    214fa494e3a8:	44 8b f9                                        	mov    r15d,ecx
    214fa494e3ab:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
    214fa494e3b1:	8b fa                                           	mov    edi,edx
    214fa494e3b3:	d3 e7                                           	shl    edi,cl
    214fa494e3b5:	0f af d6                                        	imul   edx,esi
    214fa494e3b8:	45 85 db                                        	test   r11d,r11d
    214fa494e3bb:	0f 45 d7                                        	cmovne edx,edi
    214fa494e3be:	8d 3c 10                                        	lea    edi,[rax+rdx*1]
    214fa494e3c1:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    214fa494e3c4:	c4 41 7a 10 04 38                               	vmovss xmm8,DWORD PTR [r8+rdi*1]
    214fa494e3ca:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
    214fa494e3cf:	42 8d 3c 0a                                     	lea    edi,[rdx+r9*1]
    214fa494e3d3:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
    214fa494e3d6:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
    214fa494e3dc:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
    214fa494e3e1:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
    214fa494e3e6:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
    214fa494e3ea:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    214fa494e3ef:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa494e3f4:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
    214fa494e3f9:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    214fa494e3fd:	4c 8b 15 25 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb25]        # 0x214fa494cf29
    214fa494e404:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
    214fa494e409:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
    214fa494e40d:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
    214fa494e411:	c5 f9 72 e0 10                                  	vpsrad xmm0,xmm0,0x10
    214fa494e416:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
    214fa494e41b:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    214fa494e41f:	c5 f9 7e c7                                     	vmovd  edi,xmm0
    214fa494e423:	44 8b ff                                        	mov    r15d,edi
    214fa494e426:	41 c1 ef 18                                     	shr    r15d,0x18
    214fa494e42a:	8b c7                                           	mov    eax,edi
    214fa494e42c:	c1 e8 10                                        	shr    eax,0x10
    214fa494e42f:	8b d7                                           	mov    edx,edi
    214fa494e431:	c1 ea 08                                        	shr    edx,0x8
    214fa494e434:	40 0f b6 ff                                     	movzx  edi,dil
    214fa494e438:	44 8b d7                                        	mov    r10d,edi
    214fa494e43b:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa494e440:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
    214fa494e446:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
    214fa494e44b:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494e44f:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
    214fa494e455:	41 8d 4c bc 50                                  	lea    ecx,[r12+rdi*4+0x50]
    214fa494e45a:	83 bd 50 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x1b0],0x2
    214fa494e461:	0f 84 77 00 00 00                               	je     0x214fa494e4de
    214fa494e467:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    214fa494e46d:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    214fa494e473:	41 8d 8c bc f0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1f0]
    214fa494e47b:	0f b6 d2                                        	movzx  edx,dl
    214fa494e47e:	44 8b d2                                        	mov    r10d,edx
    214fa494e481:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa494e486:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494e48a:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
    214fa494e490:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    214fa494e496:	41 8d 94 bc e0 01 00 00                         	lea    edx,[r12+rdi*4+0x1e0]
    214fa494e49e:	0f b6 c0                                        	movzx  eax,al
    214fa494e4a1:	44 8b d0                                        	mov    r10d,eax
    214fa494e4a4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa494e4a9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494e4ad:	c4 c1 7a 59 04 10                               	vmulss xmm0,xmm0,DWORD PTR [r8+rdx*1]
    214fa494e4b3:	c4 c1 7a 11 04 10                               	vmovss DWORD PTR [r8+rdx*1],xmm0
    214fa494e4b9:	41 8d 84 bc d0 01 00 00                         	lea    eax,[r12+rdi*4+0x1d0]
    214fa494e4c1:	45 8b d7                                        	mov    r10d,r15d
    214fa494e4c4:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa494e4c9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494e4cd:	c4 c1 7a 59 04 00                               	vmulss xmm0,xmm0,DWORD PTR [r8+rax*1]
    214fa494e4d3:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
    214fa494e4d9:	e9 5a 00 00 00                                  	jmp    0x214fa494e538
    214fa494e4de:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    214fa494e4e4:	41 8d 8c bc d0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1d0]
    214fa494e4ec:	45 8b d7                                        	mov    r10d,r15d
    214fa494e4ef:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa494e4f4:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494e4f8:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
    214fa494e4fe:	45 8d bc bc e0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1e0]
    214fa494e506:	0f b6 c0                                        	movzx  eax,al
    214fa494e509:	44 8b d0                                        	mov    r10d,eax
    214fa494e50c:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa494e511:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494e515:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    214fa494e51b:	45 8d bc bc f0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1f0]
    214fa494e523:	0f b6 c2                                        	movzx  eax,dl
    214fa494e526:	44 8b d0                                        	mov    r10d,eax
    214fa494e529:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
    214fa494e52e:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
    214fa494e532:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
    214fa494e538:	8d 47 01                                        	lea    eax,[rdi+0x1]
    214fa494e53b:	83 f8 04                                        	cmp    eax,0x4
    214fa494e53e:	0f 85 7c fc ff ff                               	jne    0x214fa494e1c0
    214fa494e544:	c4 01 7a 6f a4 20 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r8+r12*1+0x1d0]
    214fa494e54e:	c4 81 7a 6f bc 20 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r12*1+0x1f0]
    214fa494e558:	c4 01 7a 6f 44 20 50                            	vmovdqu xmm8,XMMWORD PTR [r8+r12*1+0x50]
    214fa494e55f:	c4 81 7a 6f 84 20 e0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+r12*1+0x1e0]
    214fa494e569:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494e571:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494e579:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    214fa494e581:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    214fa494e588:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    214fa494e58c:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    214fa494e594:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    214fa494e59a:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    214fa494e5a0:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    214fa494e5a7:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    214fa494e5ae:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    214fa494e5b5:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    214fa494e5bc:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    214fa494e5c4:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    214fa494e5cc:	41 8b b4 38 ec 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xec]
    214fa494e5d4:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
    214fa494e5dc:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
    214fa494e5e5:	0f 84 04 04 00 00                               	je     0x214fa494e9ef
    214fa494e5eb:	49 8d b0 98 00 00 00                            	lea    rsi,[r8+0x98]
    214fa494e5f2:	c4 a2 79 18 1c 1e                               	vbroadcastss xmm3,DWORD PTR [rsi+r11*1]
    214fa494e5f8:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
    214fa494e5fc:	c4 a2 79 18 1c 26                               	vbroadcastss xmm3,DWORD PTR [rsi+r12*1]
    214fa494e602:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
    214fa494e606:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
    214fa494e60a:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
    214fa494e610:	c5 20 59 db                                     	vmulps xmm11,xmm11,xmm3
    214fa494e614:	c4 41 68 58 db                                  	vaddps xmm11,xmm2,xmm11
    214fa494e619:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
    214fa494e61e:	c5 28 5c de                                     	vsubps xmm11,xmm10,xmm6
    214fa494e622:	c5 a0 c2 d6 01                                  	vcmpltps xmm2,xmm11,xmm6
    214fa494e627:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
    214fa494e62c:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
    214fa494e630:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa494e635:	4c 8b 15 d5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed5]        # 0x214fa4948511
    214fa494e63c:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa494e641:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
    214fa494e646:	41 8b b4 38 f0 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xf0]
    214fa494e64e:	81 fe 00 08 00 00                               	cmp    esi,0x800
    214fa494e654:	0f 84 8d 01 00 00                               	je     0x214fa494e7e7
    214fa494e65a:	81 fe 01 26 00 00                               	cmp    esi,0x2601
    214fa494e660:	0f 84 23 01 00 00                               	je     0x214fa494e789
    214fa494e666:	c4 c1 7a 10 94 38 f4 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xf4]
    214fa494e670:	c5 f8 28 de                                     	vmovaps xmm3,xmm6
    214fa494e674:	c5 ea 59 db                                     	vmulss xmm3,xmm2,xmm3
    214fa494e678:	4c 8b 15 70 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c70]        # 0x214fa49472ef
    214fa494e67f:	c4 c1 60 57 2a                                  	vxorps xmm5,xmm3,XMMWORD PTR [r10]
    214fa494e684:	c5 e2 59 dd                                     	vmulss xmm3,xmm3,xmm5
    214fa494e688:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    214fa494e690:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    214fa494e698:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    214fa494e6a0:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    214fa494e6a8:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    214fa494e6b0:	c5 fb 11 95 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm2
    214fa494e6b8:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494e6bc:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
    214fa494e6c0:	e8 f3 be ed ff                                  	call   0x214fa482a5b8
    214fa494e6c5:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    214fa494e6ca:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    214fa494e6d2:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    214fa494e6d6:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    214fa494e6de:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    214fa494e6e2:	4c 8b 15 06 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c06]        # 0x214fa49472ef
    214fa494e6e9:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    214fa494e6ee:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    214fa494e6f3:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    214fa494e6fb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494e6ff:	e8 b4 be ed ff                                  	call   0x214fa482a5b8
    214fa494e704:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    214fa494e70c:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    214fa494e712:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    214fa494e71a:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    214fa494e71f:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
    214fa494e727:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
    214fa494e72b:	4c 8b 15 bd 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8bbd]        # 0x214fa49472ef
    214fa494e732:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
    214fa494e737:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
    214fa494e73c:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    214fa494e744:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494e748:	e8 6b be ed ff                                  	call   0x214fa482a5b8
    214fa494e74d:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    214fa494e755:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    214fa494e75b:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    214fa494e763:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    214fa494e768:	c5 fb 10 bd b0 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x150]
    214fa494e770:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
    214fa494e774:	4c 8b 15 74 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b74]        # 0x214fa49472ef
    214fa494e77b:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
    214fa494e780:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
    214fa494e784:	e9 3a 01 00 00                                  	jmp    0x214fa494e8c3
    214fa494e789:	c4 c1 7a 10 94 38 fc 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xfc]
    214fa494e793:	c4 c1 6a 5c 9c 38 f8 00 00 00                   	vsubss xmm3,xmm2,DWORD PTR [r8+rdi*1+0xf8]
    214fa494e79d:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    214fa494e7a1:	c5 f8 2e eb                                     	vucomiss xmm5,xmm3
    214fa494e7a5:	7a 06                                           	jp     0x214fa494e7ad
    214fa494e7a7:	0f 84 2d 00 00 00                               	je     0x214fa494e7da
    214fa494e7ad:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
    214fa494e7b2:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
    214fa494e7b6:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
    214fa494e7ba:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
    214fa494e7bf:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
    214fa494e7c4:	c5 ea 5e db                                     	vdivss xmm3,xmm2,xmm3
    214fa494e7c8:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
    214fa494e7cc:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
    214fa494e7d1:	c5 c8 59 f3                                     	vmulps xmm6,xmm6,xmm3
    214fa494e7d5:	e9 9f 01 00 00                                  	jmp    0x214fa494e979
    214fa494e7da:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
    214fa494e7e2:	e9 92 01 00 00                                  	jmp    0x214fa494e979
    214fa494e7e7:	c5 f8 28 d6                                     	vmovaps xmm2,xmm6
    214fa494e7eb:	c4 c1 7a 10 9c 38 f4 00 00 00                   	vmovss xmm3,DWORD PTR [r8+rdi*1+0xf4]
    214fa494e7f5:	4c 8b 15 f3 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8af3]        # 0x214fa49472ef
    214fa494e7fc:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
    214fa494e801:	c5 ea 59 d3                                     	vmulss xmm2,xmm2,xmm3
    214fa494e805:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    214fa494e80d:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    214fa494e815:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    214fa494e81d:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
    214fa494e825:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
    214fa494e82d:	c5 fb 11 9d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm3
    214fa494e835:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494e839:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
    214fa494e83d:	e8 76 bd ed ff                                  	call   0x214fa482a5b8
    214fa494e842:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
    214fa494e847:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    214fa494e84f:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
    214fa494e853:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    214fa494e85b:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    214fa494e863:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494e867:	e8 4c bd ed ff                                  	call   0x214fa482a5b8
    214fa494e86c:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    214fa494e874:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
    214fa494e87a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    214fa494e882:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
    214fa494e887:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
    214fa494e88f:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
    214fa494e897:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494e89b:	e8 18 bd ed ff                                  	call   0x214fa482a5b8
    214fa494e8a0:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
    214fa494e8a8:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
    214fa494e8ae:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    214fa494e8b6:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    214fa494e8bb:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
    214fa494e8c3:	c5 f8 11 85 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm0
    214fa494e8cb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494e8cf:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa494e8d3:	e8 e0 bc ed ff                                  	call   0x214fa482a5b8
    214fa494e8d8:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
    214fa494e8e0:	c4 e3 49 21 f1 30                               	vinsertps xmm6,xmm6,xmm1,0x30
    214fa494e8e6:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494e8ee:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    214fa494e8f2:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    214fa494e8fa:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494e8fe:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
    214fa494e906:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
    214fa494e90c:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
    214fa494e912:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    214fa494e91a:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa494e922:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    214fa494e92a:	c5 78 10 9d 70 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x190]
    214fa494e932:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
    214fa494e936:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
    214fa494e93d:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
    214fa494e944:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
    214fa494e94b:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
    214fa494e952:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    214fa494e95a:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    214fa494e962:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
    214fa494e969:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    214fa494e971:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494e979:	c5 f8 10 95 80 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x180]
    214fa494e981:	c5 e8 c2 de 01                                  	vcmpltps xmm3,xmm2,xmm6
    214fa494e986:	c5 61 df fe                                     	vpandn xmm15,xmm3,xmm6
    214fa494e98a:	c5 a1 db f3                                     	vpand  xmm6,xmm11,xmm3
    214fa494e98e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
    214fa494e993:	c4 41 48 c2 da 01                               	vcmpltps xmm11,xmm6,xmm10
    214fa494e999:	c5 a0 55 f6                                     	vandnps xmm6,xmm11,xmm6
    214fa494e99d:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
    214fa494e9a1:	49 8d b0 08 01 00 00                            	lea    rsi,[r8+0x108]
    214fa494e9a8:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    214fa494e9ae:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
    214fa494e9b2:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    214fa494e9b6:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa494e9bb:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
    214fa494e9bf:	49 8d b0 04 01 00 00                            	lea    rsi,[r8+0x104]
    214fa494e9c6:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
    214fa494e9cc:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    214fa494e9d0:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    214fa494e9d5:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
    214fa494e9d9:	49 8d b0 00 01 00 00                            	lea    rsi,[r8+0x100]
    214fa494e9e0:	c4 62 79 18 04 3e                               	vbroadcastss xmm8,DWORD PTR [rsi+rdi*1]
    214fa494e9e6:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    214fa494e9ea:	c4 41 48 58 c0                                  	vaddps xmm8,xmm6,xmm8
    214fa494e9ef:	41 8b b4 38 80 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x80]
    214fa494e9f7:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
    214fa494ea00:	0f 85 0d 00 00 00                               	jne    0x214fa494ea13
    214fa494ea06:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    214fa494ea0e:	e9 83 00 00 00                                  	jmp    0x214fa494ea96
    214fa494ea13:	49 8d b0 88 00 00 00                            	lea    rsi,[r8+0x88]
    214fa494ea1a:	c4 e2 79 18 34 3e                               	vbroadcastss xmm6,DWORD PTR [rsi+rdi*1]
    214fa494ea20:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa494ea25:	41 8b b4 38 84 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x84]
    214fa494ea2d:	81 ee 00 02 00 00                               	sub    esi,0x200
    214fa494ea33:	83 fe 07                                        	cmp    esi,0x7
    214fa494ea36:	0f 83 0b 00 00 00                               	jae    0x214fa494ea47
    214fa494ea3c:	4c 8d 15 f5 11 00 00                            	lea    r10,[rip+0x11f5]        # 0x214fa494fc38
    214fa494ea43:	41 ff 24 f2                                     	jmp    QWORD PTR [r10+rsi*8]
    214fa494ea47:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    214fa494ea4c:	e9 39 00 00 00                                  	jmp    0x214fa494ea8a
    214fa494ea51:	c4 41 48 c2 dc 02                               	vcmpleps xmm11,xmm6,xmm12
    214fa494ea57:	e9 2e 00 00 00                                  	jmp    0x214fa494ea8a
    214fa494ea5c:	c5 18 c2 de 04                                  	vcmpneqps xmm11,xmm12,xmm6
    214fa494ea61:	e9 24 00 00 00                                  	jmp    0x214fa494ea8a
    214fa494ea66:	c4 41 48 c2 dc 01                               	vcmpltps xmm11,xmm6,xmm12
    214fa494ea6c:	e9 19 00 00 00                                  	jmp    0x214fa494ea8a
    214fa494ea71:	c5 18 c2 de 02                                  	vcmpleps xmm11,xmm12,xmm6
    214fa494ea76:	e9 0f 00 00 00                                  	jmp    0x214fa494ea8a
    214fa494ea7b:	c5 18 c2 de 00                                  	vcmpeqps xmm11,xmm12,xmm6
    214fa494ea80:	e9 05 00 00 00                                  	jmp    0x214fa494ea8a
    214fa494ea85:	c5 18 c2 de 01                                  	vcmpltps xmm11,xmm12,xmm6
    214fa494ea8a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
    214fa494ea92:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    214fa494ea96:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    214fa494ea9a:	85 f6                                           	test   esi,esi
    214fa494ea9c:	0f 84 8d f2 ff ff                               	je     0x214fa494dd2f
    214fa494eaa2:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
    214fa494eaa7:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    214fa494eaad:	0f 85 15 00 00 00                               	jne    0x214fa494eac8
    214fa494eab3:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    214fa494eab9:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    214fa494eabf:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494eac3:	e9 1f 01 00 00                                  	jmp    0x214fa494ebe7
    214fa494eac8:	41 8b 74 38 48                                  	mov    esi,DWORD PTR [r8+rdi*1+0x48]
    214fa494eacd:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
    214fa494ead4:	45 33 db                                        	xor    r11d,r11d
    214fa494ead7:	44 3b ce                                        	cmp    r9d,esi
    214fa494eada:	41 0f 9c c3                                     	setl   r11b
    214fa494eade:	45 8b 64 38 50                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x50]
    214fa494eae3:	44 03 e6                                        	add    r12d,esi
    214fa494eae6:	45 33 ff                                        	xor    r15d,r15d
    214fa494eae9:	45 3b e1                                        	cmp    r12d,r9d
    214fa494eaec:	41 0f 9e c7                                     	setle  r15b
    214fa494eaf0:	45 0b fb                                        	or     r15d,r11d
    214fa494eaf3:	45 8b 5c 38 4c                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x4c]
    214fa494eaf8:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494eafc:	33 db                                           	xor    ebx,ebx
    214fa494eafe:	45 3b cb                                        	cmp    r9d,r11d
    214fa494eb01:	0f 9c c3                                        	setl   bl
    214fa494eb04:	41 8b cf                                        	mov    ecx,r15d
    214fa494eb07:	0b cb                                           	or     ecx,ebx
    214fa494eb09:	83 f1 ff                                        	xor    ecx,0xffffffff
    214fa494eb0c:	41 8b 54 38 54                                  	mov    edx,DWORD PTR [r8+rdi*1+0x54]
    214fa494eb11:	41 03 d3                                        	add    edx,r11d
    214fa494eb14:	33 ff                                           	xor    edi,edi
    214fa494eb16:	44 3b ca                                        	cmp    r9d,edx
    214fa494eb19:	40 0f 9c c7                                     	setl   dil
    214fa494eb1d:	23 cf                                           	and    ecx,edi
    214fa494eb1f:	f7 d9                                           	neg    ecx
    214fa494eb21:	c5 79 6e d9                                     	vmovd  xmm11,ecx
    214fa494eb25:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
    214fa494eb2a:	44 3b a5 30 ff ff ff                            	cmp    r12d,DWORD PTR [rbp-0xd0]
    214fa494eb31:	41 0f 9e c4                                     	setle  r12b
    214fa494eb35:	45 0f b6 e4                                     	movzx  r12d,r12b
    214fa494eb39:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
    214fa494eb3f:	3b ce                                           	cmp    ecx,esi
    214fa494eb41:	40 0f 9c c6                                     	setl   sil
    214fa494eb45:	40 0f b6 f6                                     	movzx  esi,sil
    214fa494eb49:	41 0b f4                                        	or     esi,r12d
    214fa494eb4c:	0b de                                           	or     ebx,esi
    214fa494eb4e:	83 f3 ff                                        	xor    ebx,0xffffffff
    214fa494eb51:	23 fb                                           	and    edi,ebx
    214fa494eb53:	f7 df                                           	neg    edi
    214fa494eb55:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
    214fa494eb5b:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    214fa494eb61:	45 33 e4                                        	xor    r12d,r12d
    214fa494eb64:	3b fa                                           	cmp    edi,edx
    214fa494eb66:	41 0f 9c c4                                     	setl   r12b
    214fa494eb6a:	41 3b fb                                        	cmp    edi,r11d
    214fa494eb6d:	41 0f 9c c3                                     	setl   r11b
    214fa494eb71:	45 0f b6 db                                     	movzx  r11d,r11b
    214fa494eb75:	45 0b fb                                        	or     r15d,r11d
    214fa494eb78:	41 83 f7 ff                                     	xor    r15d,0xffffffff
    214fa494eb7c:	45 23 fc                                        	and    r15d,r12d
    214fa494eb7f:	41 f7 df                                        	neg    r15d
    214fa494eb82:	c4 43 21 22 df 02                               	vpinsrd xmm11,xmm11,r15d,0x2
    214fa494eb88:	41 0b f3                                        	or     esi,r11d
    214fa494eb8b:	83 f6 ff                                        	xor    esi,0xffffffff
    214fa494eb8e:	44 23 e6                                        	and    r12d,esi
    214fa494eb91:	41 f7 dc                                        	neg    r12d
    214fa494eb94:	c4 43 21 22 dc 03                               	vpinsrd xmm11,xmm11,r12d,0x3
    214fa494eb9a:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    214fa494eb9e:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    214fa494eba2:	85 f6                                           	test   esi,esi
    214fa494eba4:	0f 85 3d 00 00 00                               	jne    0x214fa494ebe7
    214fa494ebaa:	4d 8b e0                                        	mov    r12,r8
    214fa494ebad:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa494ebb1:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494ebb6:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494ebbb:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494ebc1:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494ebc7:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494ebcc:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494ebd4:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494ebdc:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494ebe2:	e9 c3 0a 00 00                                  	jmp    0x214fa494f6aa
    214fa494ebe7:	85 c0                                           	test   eax,eax
    214fa494ebe9:	0f 85 16 00 00 00                               	jne    0x214fa494ec05
    214fa494ebef:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    214fa494ebf6:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494ebfa:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    214fa494ec00:	e9 fe 01 00 00                                  	jmp    0x214fa494ee03
    214fa494ec05:	83 bd 20 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xe0],0x0
    214fa494ec0c:	0f 85 42 01 00 00                               	jne    0x214fa494ed54
    214fa494ec12:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa494ec17:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494ec1b:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    214fa494ec20:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    214fa494ec27:	43 8d 04 bc                                     	lea    eax,[r12+r15*4]
    214fa494ec2b:	c4 c1 7b 10 14 00                               	vmovsd xmm2,QWORD PTR [r8+rax*1]
    214fa494ec31:	3b bd 00 ff ff ff                               	cmp    edi,DWORD PTR [rbp-0x100]
    214fa494ec37:	0f 8c 10 00 00 00                               	jl     0x214fa494ec4d
    214fa494ec3d:	c4 c1 79 28 db                                  	vmovapd xmm3,xmm11
    214fa494ec42:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    214fa494ec48:	e9 10 00 00 00                                  	jmp    0x214fa494ec5d
    214fa494ec4d:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    214fa494ec53:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    214fa494ec57:	c4 81 7b 10 1c 20                               	vmovsd xmm3,QWORD PTR [r8+r12*1]
    214fa494ec5d:	c5 e9 6c d3                                     	vpunpcklqdq xmm2,xmm2,xmm3
    214fa494ec61:	47 8b 64 18 6c                                  	mov    r12d,DWORD PTR [r8+r11*1+0x6c]
    214fa494ec66:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
    214fa494ec6d:	41 83 fc 07                                     	cmp    r12d,0x7
    214fa494ec71:	0f 83 0b 00 00 00                               	jae    0x214fa494ec82
    214fa494ec77:	4c 8d 15 82 0f 00 00                            	lea    r10,[rip+0xf82]        # 0x214fa494fc00
    214fa494ec7e:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
    214fa494ec82:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
    214fa494ec87:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    214fa494ec8f:	e9 74 00 00 00                                  	jmp    0x214fa494ed08
    214fa494ec94:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    214fa494ec9c:	c5 68 c2 db 02                                  	vcmpleps xmm11,xmm2,xmm3
    214fa494eca1:	e9 62 00 00 00                                  	jmp    0x214fa494ed08
    214fa494eca6:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    214fa494ecae:	c5 60 c2 da 04                                  	vcmpneqps xmm11,xmm3,xmm2
    214fa494ecb3:	e9 50 00 00 00                                  	jmp    0x214fa494ed08
    214fa494ecb8:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    214fa494ecc0:	c5 68 c2 db 01                                  	vcmpltps xmm11,xmm2,xmm3
    214fa494ecc5:	e9 3e 00 00 00                                  	jmp    0x214fa494ed08
    214fa494ecca:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    214fa494ecd2:	c5 60 c2 da 02                                  	vcmpleps xmm11,xmm3,xmm2
    214fa494ecd7:	e9 2c 00 00 00                                  	jmp    0x214fa494ed08
    214fa494ecdc:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    214fa494ece4:	c5 60 c2 da 00                                  	vcmpeqps xmm11,xmm3,xmm2
    214fa494ece9:	e9 1a 00 00 00                                  	jmp    0x214fa494ed08
    214fa494ecee:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    214fa494ecf6:	c5 60 c2 da 01                                  	vcmpltps xmm11,xmm3,xmm2
    214fa494ecfb:	e9 08 00 00 00                                  	jmp    0x214fa494ed08
    214fa494ed00:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
    214fa494ed08:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
    214fa494ed0c:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
    214fa494ed10:	85 f6                                           	test   esi,esi
    214fa494ed12:	0f 85 4d 00 00 00                               	jne    0x214fa494ed65
    214fa494ed18:	4d 8b e0                                        	mov    r12,r8
    214fa494ed1b:	4d 8b c3                                        	mov    r8,r11
    214fa494ed1e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494ed23:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494ed28:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494ed2e:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494ed34:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494ed39:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494ed41:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494ed49:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494ed4f:	e9 56 09 00 00                                  	jmp    0x214fa494f6aa
    214fa494ed54:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
    214fa494ed5b:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494ed5f:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
    214fa494ed65:	47 8b 64 18 70                                  	mov    r12d,DWORD PTR [r8+r11*1+0x70]
    214fa494ed6a:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
    214fa494ed70:	0f 84 8d 00 00 00                               	je     0x214fa494ee03
    214fa494ed76:	40 f6 c6 01                                     	test   sil,0x1
    214fa494ed7a:	0f 85 0d 00 00 00                               	jne    0x214fa494ed8d
    214fa494ed80:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    214fa494ed88:	e9 1b 00 00 00                                  	jmp    0x214fa494eda8
    214fa494ed8d:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    214fa494ed92:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    214fa494ed96:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    214fa494ed9e:	c5 78 28 de                                     	vmovaps xmm11,xmm6
    214fa494eda2:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    214fa494eda8:	40 f6 c6 02                                     	test   sil,0x2
    214fa494edac:	0f 84 14 00 00 00                               	je     0x214fa494edc6
    214fa494edb2:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    214fa494edb7:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
    214fa494edbb:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
    214fa494edbf:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    214fa494edc6:	40 f6 c6 04                                     	test   sil,0x4
    214fa494edca:	0f 84 14 00 00 00                               	je     0x214fa494ede4
    214fa494edd0:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    214fa494edd5:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    214fa494edd9:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
    214fa494edde:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
    214fa494ede4:	40 f6 c6 08                                     	test   sil,0x8
    214fa494ede8:	0f 84 15 00 00 00                               	je     0x214fa494ee03
    214fa494edee:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
    214fa494edf3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    214fa494edf7:	c5 79 70 de 03                                  	vpshufd xmm11,xmm6,0x3
    214fa494edfc:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
    214fa494ee03:	47 8b 64 18 74                                  	mov    r12d,DWORD PTR [r8+r11*1+0x74]
    214fa494ee08:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
    214fa494ee0e:	0f 85 0d 00 00 00                               	jne    0x214fa494ee21
    214fa494ee14:	46 8d 24 bd 00 00 00 00                         	lea    r12d,[r15*4+0x0]
    214fa494ee1c:	e9 d6 02 00 00                                  	jmp    0x214fa494f0f7
    214fa494ee21:	47 8b 64 18 78                                  	mov    r12d,DWORD PTR [r8+r11*1+0x78]
    214fa494ee26:	41 8d 9c 24 fe fc ff ff                         	lea    ebx,[r12-0x302]
    214fa494ee2e:	33 d2                                           	xor    edx,edx
    214fa494ee30:	83 fb 04                                        	cmp    ebx,0x4
    214fa494ee33:	0f 93 c2                                        	setae  dl
    214fa494ee36:	33 c9                                           	xor    ecx,ecx
    214fa494ee38:	41 83 fc 01                                     	cmp    r12d,0x1
    214fa494ee3c:	0f 97 c1                                        	seta   cl
    214fa494ee3f:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
    214fa494ee46:	85 ca                                           	test   edx,ecx
    214fa494ee48:	0f 85 b9 05 00 00                               	jne    0x214fa494f407
    214fa494ee4e:	43 8b 54 18 7c                                  	mov    edx,DWORD PTR [r8+r11*1+0x7c]
    214fa494ee53:	8d 8a fe fc ff ff                               	lea    ecx,[rdx-0x302]
    214fa494ee59:	45 33 c9                                        	xor    r9d,r9d
    214fa494ee5c:	83 f9 04                                        	cmp    ecx,0x4
    214fa494ee5f:	41 0f 93 c1                                     	setae  r9b
    214fa494ee63:	33 f6                                           	xor    esi,esi
    214fa494ee65:	83 fa 01                                        	cmp    edx,0x1
    214fa494ee68:	40 0f 97 c6                                     	seta   sil
    214fa494ee6c:	41 85 f1                                        	test   r9d,esi
    214fa494ee6f:	0f 85 88 05 00 00                               	jne    0x214fa494f3fd
    214fa494ee75:	42 8d 34 bd 00 00 00 00                         	lea    esi,[r15*4+0x0]
    214fa494ee7d:	47 8b 4c 18 08                                  	mov    r9d,DWORD PTR [r8+r11*1+0x8]
    214fa494ee82:	47 8d 3c b9                                     	lea    r15d,[r9+r15*4]
    214fa494ee86:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    214fa494ee8c:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
    214fa494ee93:	44 3b ff                                        	cmp    r15d,edi
    214fa494ee96:	0f 8e 0f 00 00 00                               	jle    0x214fa494eeab
    214fa494ee9c:	45 8d 0c 81                                     	lea    r9d,[r9+rax*4]
    214fa494eea0:	c4 01 7b 10 1c 08                               	vmovsd xmm11,QWORD PTR [r8+r9*1]
    214fa494eea6:	e9 05 00 00 00                                  	jmp    0x214fa494eeb0
    214fa494eeab:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa494eeb0:	c4 c1 49 6c f3                                  	vpunpcklqdq xmm6,xmm6,xmm11
    214fa494eeb5:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
    214fa494eebf:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
    214fa494eec4:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
    214fa494eece:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
    214fa494eed4:	c4 42 49 00 db                                  	vpshufb xmm11,xmm6,xmm11
    214fa494eed9:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
    214fa494eede:	4c 8b 15 cd ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcacd]        # 0x214fa494b9b2
    214fa494eee5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa494eeea:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa494eeee:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
    214fa494eef2:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
    214fa494eefc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
    214fa494ef01:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
    214fa494ef0b:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
    214fa494ef11:	c4 e2 49 00 db                                  	vpshufb xmm3,xmm6,xmm3
    214fa494ef16:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
    214fa494ef1a:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
    214fa494ef24:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
    214fa494ef29:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
    214fa494ef33:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
    214fa494ef39:	c4 e2 49 00 ed                                  	vpshufb xmm5,xmm6,xmm5
    214fa494ef3e:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
    214fa494ef42:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
    214fa494ef4c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494ef51:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
    214fa494ef5b:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
    214fa494ef61:	c4 c2 49 00 f1                                  	vpshufb xmm6,xmm6,xmm9
    214fa494ef66:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
    214fa494ef6a:	83 fb 02                                        	cmp    ebx,0x2
    214fa494ef6d:	0f 8c 14 00 00 00                               	jl     0x214fa494ef87
    214fa494ef73:	0f 84 69 00 00 00                               	je     0x214fa494efe2
    214fa494ef79:	83 fb 03                                        	cmp    ebx,0x3
    214fa494ef7c:	0f 84 45 00 00 00                               	je     0x214fa494efc7
    214fa494ef82:	e9 17 00 00 00                                  	jmp    0x214fa494ef9e
    214fa494ef87:	83 fb 00                                        	cmp    ebx,0x0
    214fa494ef8a:	0f 84 77 00 00 00                               	je     0x214fa494f007
    214fa494ef90:	83 fb 01                                        	cmp    ebx,0x1
    214fa494ef93:	0f 84 53 00 00 00                               	je     0x214fa494efec
    214fa494ef99:	e9 00 00 00 00                                  	jmp    0x214fa494ef9e
    214fa494ef9e:	45 85 e4                                        	test   r12d,r12d
    214fa494efa1:	0f 85 0a 00 00 00                               	jne    0x214fa494efb1
    214fa494efa7:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
    214fa494efac:	e9 5b 00 00 00                                  	jmp    0x214fa494f00c
    214fa494efb1:	4c 8b 15 59 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9559]        # 0x214fa4948511
    214fa494efb8:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494efbd:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa494efc2:	e9 45 00 00 00                                  	jmp    0x214fa494f00c
    214fa494efc7:	4c 8b 15 43 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9543]        # 0x214fa4948511
    214fa494efce:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494efd3:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa494efd8:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
    214fa494efdd:	e9 2a 00 00 00                                  	jmp    0x214fa494f00c
    214fa494efe2:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
    214fa494efe7:	e9 20 00 00 00                                  	jmp    0x214fa494f00c
    214fa494efec:	4c 8b 15 1e 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff951e]        # 0x214fa4948511
    214fa494eff3:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494eff8:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa494effd:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
    214fa494f002:	e9 05 00 00 00                                  	jmp    0x214fa494f00c
    214fa494f007:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
    214fa494f00c:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
    214fa494f010:	c5 d0 59 ea                                     	vmulps xmm5,xmm5,xmm2
    214fa494f014:	c5 c8 59 f2                                     	vmulps xmm6,xmm6,xmm2
    214fa494f018:	83 f9 02                                        	cmp    ecx,0x2
    214fa494f01b:	0f 8c 14 00 00 00                               	jl     0x214fa494f035
    214fa494f021:	0f 84 5e 00 00 00                               	je     0x214fa494f085
    214fa494f027:	83 f9 03                                        	cmp    ecx,0x3
    214fa494f02a:	0f 84 3a 00 00 00                               	je     0x214fa494f06a
    214fa494f030:	e9 17 00 00 00                                  	jmp    0x214fa494f04c
    214fa494f035:	83 f9 00                                        	cmp    ecx,0x0
    214fa494f038:	0f 84 6c 00 00 00                               	je     0x214fa494f0aa
    214fa494f03e:	83 f9 01                                        	cmp    ecx,0x1
    214fa494f041:	0f 84 48 00 00 00                               	je     0x214fa494f08f
    214fa494f047:	e9 00 00 00 00                                  	jmp    0x214fa494f04c
    214fa494f04c:	85 d2                                           	test   edx,edx
    214fa494f04e:	0f 84 5b 00 00 00                               	je     0x214fa494f0af
    214fa494f054:	4c 8b 15 b6 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94b6]        # 0x214fa4948511
    214fa494f05b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa494f060:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa494f065:	e9 45 00 00 00                                  	jmp    0x214fa494f0af
    214fa494f06a:	4c 8b 15 a0 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94a0]        # 0x214fa4948511
    214fa494f071:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa494f076:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa494f07b:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
    214fa494f080:	e9 2a 00 00 00                                  	jmp    0x214fa494f0af
    214fa494f085:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
    214fa494f08a:	e9 20 00 00 00                                  	jmp    0x214fa494f0af
    214fa494f08f:	4c 8b 15 7b 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947b]        # 0x214fa4948511
    214fa494f096:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa494f09b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa494f0a0:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
    214fa494f0a5:	e9 05 00 00 00                                  	jmp    0x214fa494f0af
    214fa494f0aa:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
    214fa494f0af:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
    214fa494f0b4:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
    214fa494f0b9:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
    214fa494f0be:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
    214fa494f0c3:	c4 41 60 59 da                                  	vmulps xmm11,xmm3,xmm10
    214fa494f0c8:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
    214fa494f0cd:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
    214fa494f0d2:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
    214fa494f0d7:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
    214fa494f0dc:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
    214fa494f0e1:	c4 c1 48 59 f2                                  	vmulps xmm6,xmm6,xmm10
    214fa494f0e6:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
    214fa494f0ea:	44 8b e6                                        	mov    r12d,esi
    214fa494f0ed:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    214fa494f0f3:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494f0f7:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
    214fa494f0fb:	4c 8b 15 0f 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff940f]        # 0x214fa4948511
    214fa494f102:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
    214fa494f107:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
    214fa494f10c:	4c 8b 15 fe 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff93fe]        # 0x214fa4948511
    214fa494f113:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
    214fa494f118:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
    214fa494f11d:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
    214fa494f123:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
    214fa494f128:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
    214fa494f12d:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa494f132:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
    214fa494f137:	c4 c1 38 c2 d3 01                               	vcmpltps xmm2,xmm8,xmm11
    214fa494f13d:	c4 41 68 55 c0                                  	vandnps xmm8,xmm2,xmm8
    214fa494f142:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
    214fa494f14c:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
    214fa494f151:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
    214fa494f155:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    214fa494f159:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    214fa494f15f:	4c 8b 15 f8 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7df8]        # 0x214fa4946f5e
    214fa494f166:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    214fa494f16c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    214fa494f171:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    214fa494f177:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    214fa494f17c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    214fa494f181:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    214fa494f186:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    214fa494f18b:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    214fa494f191:	c5 a8 c2 df 01                                  	vcmpltps xmm3,xmm10,xmm7
    214fa494f196:	c5 61 df ff                                     	vpandn xmm15,xmm3,xmm7
    214fa494f19a:	c5 b1 db fb                                     	vpand  xmm7,xmm9,xmm3
    214fa494f19e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
    214fa494f1a3:	c4 c1 40 c2 db 01                               	vcmpltps xmm3,xmm7,xmm11
    214fa494f1a9:	c5 e0 55 ff                                     	vandnps xmm7,xmm3,xmm7
    214fa494f1ad:	c5 c0 59 fa                                     	vmulps xmm7,xmm7,xmm2
    214fa494f1b1:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
    214fa494f1b7:	4c 8b 15 a0 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7da0]        # 0x214fa4946f5e
    214fa494f1be:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
    214fa494f1c3:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
    214fa494f1c8:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
    214fa494f1ce:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
    214fa494f1d2:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
    214fa494f1d7:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
    214fa494f1db:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
    214fa494f1df:	c4 e3 41 0e fe fc                               	vpblendw xmm7,xmm7,xmm6,0xfc
    214fa494f1e5:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
    214fa494f1e9:	c5 28 c2 c0 01                                  	vcmpltps xmm8,xmm10,xmm0
    214fa494f1ee:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
    214fa494f1f2:	c4 c1 31 db c0                                  	vpand  xmm0,xmm9,xmm8
    214fa494f1f7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494f1fc:	c4 41 78 c2 c3 01                               	vcmpltps xmm8,xmm0,xmm11
    214fa494f202:	c5 b8 55 c0                                     	vandnps xmm0,xmm8,xmm0
    214fa494f206:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
    214fa494f20a:	c4 e3 79 08 c0 08                               	vroundps xmm0,xmm0,0x8
    214fa494f210:	4c 8b 15 47 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7d47]        # 0x214fa4946f5e
    214fa494f217:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
    214fa494f21c:	c4 c1 78 54 c7                                  	vandps xmm0,xmm0,xmm15
    214fa494f221:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
    214fa494f227:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
    214fa494f22b:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
    214fa494f230:	c5 f9 6b c0                                     	vpackssdw xmm0,xmm0,xmm0
    214fa494f234:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
    214fa494f238:	c4 e3 79 0e c6 fc                               	vpblendw xmm0,xmm0,xmm6,0xfc
    214fa494f23e:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
    214fa494f244:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
    214fa494f249:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
    214fa494f24e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
    214fa494f253:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
    214fa494f259:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
    214fa494f25e:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
    214fa494f262:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
    214fa494f268:	4c 8b 15 ef 7c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7cef]        # 0x214fa4946f5e
    214fa494f26f:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
    214fa494f275:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
    214fa494f27a:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
    214fa494f280:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
    214fa494f285:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
    214fa494f28a:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
    214fa494f28f:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
    214fa494f294:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
    214fa494f29a:	c4 c1 79 60 c0                                  	vpunpcklbw xmm0,xmm0,xmm8
    214fa494f29f:	c5 c1 61 c0                                     	vpunpcklwd xmm0,xmm7,xmm0
    214fa494f2a3:	c4 81 7a 6f bc 18 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x520]
    214fa494f2ad:	c5 c1 76 fe                                     	vpcmpeqd xmm7,xmm7,xmm6
    214fa494f2b1:	c4 c3 79 16 ff 01                               	vpextrd r15d,xmm7,0x1
    214fa494f2b7:	bb 00 ff 00 00                                  	mov    ebx,0xff00
    214fa494f2bc:	33 d2                                           	xor    edx,edx
    214fa494f2be:	41 f6 c7 01                                     	test   r15b,0x1
    214fa494f2c2:	0f 45 da                                        	cmovne ebx,edx
    214fa494f2c5:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
    214fa494f2ca:	b9 ff 00 00 00                                  	mov    ecx,0xff
    214fa494f2cf:	41 f6 c7 01                                     	test   r15b,0x1
    214fa494f2d3:	0f 45 ca                                        	cmovne ecx,edx
    214fa494f2d6:	0b cb                                           	or     ecx,ebx
    214fa494f2d8:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
    214fa494f2de:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
    214fa494f2e3:	41 f6 c7 01                                     	test   r15b,0x1
    214fa494f2e7:	0f 45 da                                        	cmovne ebx,edx
    214fa494f2ea:	0b d9                                           	or     ebx,ecx
    214fa494f2ec:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
    214fa494f2f2:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
    214fa494f2f7:	41 f6 c7 01                                     	test   r15b,0x1
    214fa494f2fb:	0f 45 ca                                        	cmovne ecx,edx
    214fa494f2fe:	0b cb                                           	or     ecx,ebx
    214fa494f300:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
    214fa494f304:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
    214fa494f309:	44 8b fe                                        	mov    r15d,esi
    214fa494f30c:	41 83 e7 01                                     	and    r15d,0x1
    214fa494f310:	41 f7 df                                        	neg    r15d
    214fa494f313:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
    214fa494f318:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
    214fa494f31d:	44 8b fe                                        	mov    r15d,esi
    214fa494f320:	41 c1 e7 1e                                     	shl    r15d,0x1e
    214fa494f324:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa494f328:	c4 43 39 22 c7 01                               	vpinsrd xmm8,xmm8,r15d,0x1
    214fa494f32e:	44 8b fe                                        	mov    r15d,esi
    214fa494f331:	41 c1 e7 1d                                     	shl    r15d,0x1d
    214fa494f335:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa494f339:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
    214fa494f33f:	44 8b fe                                        	mov    r15d,esi
    214fa494f342:	41 c1 e7 1c                                     	shl    r15d,0x1c
    214fa494f346:	41 c1 ff 1f                                     	sar    r15d,0x1f
    214fa494f34a:	c4 43 39 22 c7 03                               	vpinsrd xmm8,xmm8,r15d,0x3
    214fa494f350:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
    214fa494f355:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
    214fa494f35a:	45 03 e7                                        	add    r12d,r15d
    214fa494f35d:	c4 01 7b 10 04 20                               	vmovsd xmm8,QWORD PTR [r8+r12*1]
    214fa494f363:	8b 9d 00 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x100]
    214fa494f369:	3b df                                           	cmp    ebx,edi
    214fa494f36b:	0f 8e 0a 00 00 00                               	jle    0x214fa494f37b
    214fa494f371:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
    214fa494f375:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
    214fa494f37b:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
    214fa494f37f:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
    214fa494f383:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
    214fa494f387:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
    214fa494f38c:	40 f6 c6 03                                     	test   sil,0x3
    214fa494f390:	0f 84 06 00 00 00                               	je     0x214fa494f39c
    214fa494f396:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    214fa494f39c:	3b df                                           	cmp    ebx,edi
    214fa494f39e:	0f 8e 74 f9 ff ff                               	jle    0x214fa494ed18
    214fa494f3a4:	40 f6 c6 0c                                     	test   sil,0xc
    214fa494f3a8:	0f 84 6a f9 ff ff                               	je     0x214fa494ed18
    214fa494f3ae:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
    214fa494f3b3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
    214fa494f3b7:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
    214fa494f3bb:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
    214fa494f3c1:	4d 8b e0                                        	mov    r12,r8
    214fa494f3c4:	4d 8b c3                                        	mov    r8,r11
    214fa494f3c7:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494f3cc:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494f3d1:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494f3d7:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494f3dd:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494f3e2:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494f3ea:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494f3f2:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494f3f8:	e9 ad 02 00 00                                  	jmp    0x214fa494f6aa
    214fa494f3fd:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    214fa494f403:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494f407:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
    214fa494f40f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
    214fa494f417:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
    214fa494f41f:	40 f6 c6 01                                     	test   sil,0x1
    214fa494f423:	0f 84 9d 00 00 00                               	je     0x214fa494f4c6
    214fa494f429:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    214fa494f431:	c5 78 28 d6                                     	vmovaps xmm10,xmm6
    214fa494f435:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
    214fa494f43a:	c5 f8 28 df                                     	vmovaps xmm3,xmm7
    214fa494f43e:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
    214fa494f442:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
    214fa494f447:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f44b:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f44e:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa494f454:	41 8b c9                                        	mov    ecx,r9d
    214fa494f457:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    214fa494f45c:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    214fa494f461:	e8 fa 8d ed ff                                  	call   0x214fa4828260
    214fa494f466:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494f46a:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494f46e:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    214fa494f474:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    214fa494f47c:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    214fa494f484:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    214fa494f48c:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa494f494:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    214fa494f49a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494f49e:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    214fa494f4a6:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    214fa494f4ae:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    214fa494f4b6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494f4be:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494f4c6:	40 f6 c6 02                                     	test   sil,0x2
    214fa494f4ca:	0f 84 9d 00 00 00                               	je     0x214fa494f56d
    214fa494f4d0:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    214fa494f4d8:	c5 7a 16 d6                                     	vmovshdup xmm10,xmm6
    214fa494f4dc:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
    214fa494f4e1:	c5 fa 16 df                                     	vmovshdup xmm3,xmm7
    214fa494f4e5:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
    214fa494f4e9:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
    214fa494f4ee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f4f2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f4f5:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    214fa494f4fb:	41 8b c9                                        	mov    ecx,r9d
    214fa494f4fe:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    214fa494f503:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    214fa494f508:	e8 53 8d ed ff                                  	call   0x214fa4828260
    214fa494f50d:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494f511:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494f515:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    214fa494f51b:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    214fa494f523:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    214fa494f52b:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    214fa494f533:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa494f53b:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    214fa494f541:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494f545:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    214fa494f54d:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    214fa494f555:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    214fa494f55d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494f565:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494f56d:	40 f6 c6 04                                     	test   sil,0x4
    214fa494f571:	0f 84 a1 00 00 00                               	je     0x214fa494f618
    214fa494f577:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    214fa494f57f:	c5 79 70 d6 02                                  	vpshufd xmm10,xmm6,0x2
    214fa494f584:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
    214fa494f58a:	c5 f9 70 df 02                                  	vpshufd xmm3,xmm7,0x2
    214fa494f58f:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
    214fa494f594:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
    214fa494f59a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f59e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f5a1:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
    214fa494f5a7:	8b cf                                           	mov    ecx,edi
    214fa494f5a9:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
    214fa494f5ae:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
    214fa494f5b3:	e8 a8 8c ed ff                                  	call   0x214fa4828260
    214fa494f5b8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
    214fa494f5bc:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494f5c0:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
    214fa494f5c6:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
    214fa494f5ce:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
    214fa494f5d6:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
    214fa494f5de:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
    214fa494f5e6:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
    214fa494f5ec:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494f5f0:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
    214fa494f5f8:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
    214fa494f600:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
    214fa494f608:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494f610:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494f618:	40 f6 c6 08                                     	test   sil,0x8
    214fa494f61c:	0f 84 f6 f6 ff ff                               	je     0x214fa494ed18
    214fa494f622:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
    214fa494f62a:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
    214fa494f62f:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
    214fa494f635:	c5 f9 70 df 03                                  	vpshufd xmm3,xmm7,0x3
    214fa494f63a:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
    214fa494f63f:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
    214fa494f645:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f649:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f64c:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
    214fa494f652:	8b cf                                           	mov    ecx,edi
    214fa494f654:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa494f658:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
    214fa494f65c:	e8 ff 8b ed ff                                  	call   0x214fa4828260
    214fa494f661:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
    214fa494f665:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494f66a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
    214fa494f66e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494f673:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494f679:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494f67f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494f684:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
    214fa494f68c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494f694:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494f69c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494f6a4:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494f6aa:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
    214fa494f6b1:	48 2b bd 38 ff ff ff                            	sub    rdi,QWORD PTR [rbp-0xc8]
    214fa494f6b8:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
    214fa494f6bf:	48 2b b5 48 ff ff ff                            	sub    rsi,QWORD PTR [rbp-0xb8]
    214fa494f6c6:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    214fa494f6cd:	48 2b 85 58 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa8]
    214fa494f6d4:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
    214fa494f6db:	41 83 c3 02                                     	add    r11d,0x2
    214fa494f6df:	44 3b 9d 70 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0x90]
    214fa494f6e6:	0f 8c 54 85 ff ff                               	jl     0x214fa4947c40
    214fa494f6ec:	48 8b bd 78 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x88]
    214fa494f6f3:	48 8b b5 38 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3c8]
    214fa494f6fa:	48 03 f7                                        	add    rsi,rdi
    214fa494f6fd:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
    214fa494f701:	4c 8b bd 10 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xf0]
    214fa494f708:	4d 03 fb                                        	add    r15,r11
    214fa494f70b:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
    214fa494f70f:	48 8b 9d 80 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x380]
    214fa494f716:	48 03 d8                                        	add    rbx,rax
    214fa494f719:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494f71d:	41 83 c1 02                                     	add    r9d,0x2
    214fa494f721:	44 3b 4d 98                                     	cmp    r9d,DWORD PTR [rbp-0x68]
    214fa494f725:	0f 8c 55 84 ff ff                               	jl     0x214fa4947b80
    214fa494f72b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494f72e:	81 c7 00 02 00 00                               	add    edi,0x200
    214fa494f734:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
    214fa494f738:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
    214fa494f73c:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
    214fa494f741:	48 8b e5                                        	mov    rsp,rbp
    214fa494f744:	5d                                              	pop    rbp
    214fa494f745:	c2 10 00                                        	ret    0x10
    214fa494f748:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    214fa494f74f:	0f 84 17 00 00 00                               	je     0x214fa494f76c
    214fa494f755:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    214fa494f75b:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    214fa494f760:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    214fa494f766:	0f 85 40 00 00 00                               	jne    0x214fa494f7ac
    214fa494f76c:	c5 79 7e df                                     	vmovd  edi,xmm11
    214fa494f770:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    214fa494f776:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    214fa494f779:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    214fa494f77c:	41 51                                           	push   r9
    214fa494f77e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    214fa494f781:	41 53                                           	push   r11
    214fa494f783:	57                                              	push   rdi
    214fa494f784:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    214fa494f787:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    214fa494f78a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f78e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f791:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa494f794:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    214fa494f797:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa494f79a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa494f79e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa494f7a2:	e8 79 8d ed ff                                  	call   0x214fa4828520
    214fa494f7a7:	e9 df 00 00 00                                  	jmp    0x214fa494f88b
    214fa494f7ac:	c5 79 7e df                                     	vmovd  edi,xmm11
    214fa494f7b0:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    214fa494f7b6:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    214fa494f7b9:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    214fa494f7bc:	41 51                                           	push   r9
    214fa494f7be:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    214fa494f7c1:	41 53                                           	push   r11
    214fa494f7c3:	57                                              	push   rdi
    214fa494f7c4:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    214fa494f7c7:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    214fa494f7ca:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f7ce:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f7d1:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa494f7d4:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    214fa494f7d7:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa494f7da:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa494f7de:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa494f7e2:	e8 51 8d ed ff                                  	call   0x214fa4828538
    214fa494f7e7:	e9 9f 00 00 00                                  	jmp    0x214fa494f88b
    214fa494f7ec:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
    214fa494f7f3:	0f 84 17 00 00 00                               	je     0x214fa494f810
    214fa494f7f9:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
    214fa494f7ff:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
    214fa494f804:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
    214fa494f80a:	0f 85 40 00 00 00                               	jne    0x214fa494f850
    214fa494f810:	c5 79 7e df                                     	vmovd  edi,xmm11
    214fa494f814:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    214fa494f81a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    214fa494f81d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    214fa494f820:	41 51                                           	push   r9
    214fa494f822:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    214fa494f825:	41 53                                           	push   r11
    214fa494f827:	57                                              	push   rdi
    214fa494f828:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    214fa494f82b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    214fa494f82e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f832:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f835:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa494f838:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    214fa494f83b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa494f83e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa494f842:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa494f846:	e8 f5 8c ed ff                                  	call   0x214fa4828540
    214fa494f84b:	e9 3b 00 00 00                                  	jmp    0x214fa494f88b
    214fa494f850:	c5 79 7e df                                     	vmovd  edi,xmm11
    214fa494f854:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
    214fa494f85a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
    214fa494f85d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
    214fa494f860:	41 51                                           	push   r9
    214fa494f862:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
    214fa494f865:	41 53                                           	push   r11
    214fa494f867:	57                                              	push   rdi
    214fa494f868:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
    214fa494f86b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
    214fa494f86e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f872:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f875:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa494f878:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
    214fa494f87b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa494f87e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
    214fa494f882:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
    214fa494f886:	e8 bd 8c ed ff                                  	call   0x214fa4828548
    214fa494f88b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494f88f:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
    214fa494f893:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
    214fa494f898:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
    214fa494f89e:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
    214fa494f8a4:	41 0f 45 c3                                     	cmovne eax,r11d
    214fa494f8a8:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494f8ac:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
    214fa494f8b3:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
    214fa494f8b7:	41 89 7c 24 07                                  	mov    DWORD PTR [r12+0x7],edi
    214fa494f8bc:	48 8b e5                                        	mov    rsp,rbp
    214fa494f8bf:	5d                                              	pop    rbp
    214fa494f8c0:	c2 10 00                                        	ret    0x10
    214fa494f8c3:	43 8b 7c 20 58                                  	mov    edi,DWORD PTR [r8+r12*1+0x58]
    214fa494f8c8:	bf 01 00 00 00                                  	mov    edi,0x1
    214fa494f8cd:	41 bf ff ff ff ff                               	mov    r15d,0xffffffff
    214fa494f8d3:	43 83 7c 20 58 00                               	cmp    DWORD PTR [r8+r12*1+0x58],0x0
    214fa494f8d9:	41 0f 45 ff                                     	cmovne edi,r15d
    214fa494f8dd:	45 8d 83 00 02 00 00                            	lea    r8d,[r11+0x200]
    214fa494f8e4:	44 89 41 07                                     	mov    DWORD PTR [rcx+0x7],r8d
    214fa494f8e8:	8b c7                                           	mov    eax,edi
    214fa494f8ea:	48 8b e5                                        	mov    rsp,rbp
    214fa494f8ed:	5d                                              	pop    rbp
    214fa494f8ee:	c2 10 00                                        	ret    0x10
    214fa494f8f1:	41 b8 80 00 00 00                               	mov    r8d,0x80
    214fa494f8f7:	41 d1 f8                                        	sar    r8d,1
    214fa494f8fa:	4d 63 c0                                        	movsxd r8,r8d
    214fa494f8fd:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
    214fa494f901:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
    214fa494f905:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
    214fa494f909:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
    214fa494f90d:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
    214fa494f915:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
    214fa494f919:	49 8b c0                                        	mov    rax,r8
    214fa494f91c:	e8 0f b6 ed ff                                  	call   0x214fa482af30
    214fa494f921:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
    214fa494f925:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
    214fa494f928:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
    214fa494f92b:	8b 7d b8                                        	mov    edi,DWORD PTR [rbp-0x48]
    214fa494f92e:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
    214fa494f931:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
    214fa494f939:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
    214fa494f93d:	e9 5c 75 ff ff                                  	jmp    0x214fa4946e9e
    214fa494f942:	e8 f9 b5 ed ff                                  	call   0x214fa482af40
    214fa494f947:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494f94c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
    214fa494f950:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494f955:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494f95b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494f961:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494f966:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    214fa494f96e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494f976:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494f97e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494f986:	e9 21 82 ff ff                                  	jmp    0x214fa4947bac
    214fa494f98b:	e8 b0 b5 ed ff                                  	call   0x214fa482af40
    214fa494f990:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
    214fa494f995:	44 8b 85 68 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x98]
    214fa494f99c:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
    214fa494f9a3:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
    214fa494f9a8:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
    214fa494f9ae:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
    214fa494f9b4:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494f9b9:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
    214fa494f9c0:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
    214fa494f9c8:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494f9d0:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494f9d8:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494f9e0:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
    214fa494f9e7:	41 b9 0f 00 00 00                               	mov    r9d,0xf
    214fa494f9ed:	e9 8a 82 ff ff                                  	jmp    0x214fa4947c7c
    214fa494f9f2:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
    214fa494f9fa:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
    214fa494fa01:	e8 3a b5 ed ff                                  	call   0x214fa482af40
    214fa494fa06:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
    214fa494fa0a:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
    214fa494fa0e:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
    214fa494fa13:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
    214fa494fa17:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
    214fa494fa1d:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494fa21:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
    214fa494fa25:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
    214fa494fa2a:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
    214fa494fa2f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
    214fa494fa34:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
    214fa494fa3b:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
    214fa494fa42:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
    214fa494fa49:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
    214fa494fa51:	8b bd 08 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1f8]
    214fa494fa57:	c5 fb 10 b5 28 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x1d8]
    214fa494fa5f:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
    214fa494fa67:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
    214fa494fa6f:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
    214fa494fa77:	e9 13 b0 ff ff                                  	jmp    0x214fa494aa8f
    214fa494fa7c:	e8 bf b4 ed ff                                  	call   0x214fa482af40
    214fa494fa81:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494fa85:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
    214fa494fa88:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494fa8c:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
    214fa494fa93:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
    214fa494fa9b:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    214fa494faa3:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
    214fa494faab:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
    214fa494fab3:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
    214fa494fabb:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
    214fa494fac3:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
    214fa494facb:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
    214fa494fad3:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
    214fa494fada:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
    214fa494fae0:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
    214fa494fae7:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
    214fa494faee:	e9 a5 b4 ff ff                                  	jmp    0x214fa494af98
    214fa494faf3:	e8 48 b4 ed ff                                  	call   0x214fa482af40
    214fa494faf8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
    214fa494fafb:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494faff:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
    214fa494fb05:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
    214fa494fb0c:	e9 8e c4 ff ff                                  	jmp    0x214fa494bf9f
    214fa494fb11:	e8 2a b4 ed ff                                  	call   0x214fa482af40
    214fa494fb16:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
    214fa494fb1a:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
    214fa494fb1e:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
    214fa494fb25:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
    214fa494fb2c:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
    214fa494fb32:	e9 f1 d8 ff ff                                  	jmp    0x214fa494d428
    214fa494fb37:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
    214fa494fb3f:	c5 78 11 9d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm11
    214fa494fb47:	c5 f8 11 ad 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm5
    214fa494fb4f:	c5 f8 11 95 f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm2
    214fa494fb57:	4c 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r11
    214fa494fb5e:	48 89 b5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rsi
    214fa494fb65:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
    214fa494fb6c:	e8 cf b3 ed ff                                  	call   0x214fa482af40
    214fa494fb71:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
    214fa494fb75:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
    214fa494fb79:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
    214fa494fb81:	c5 78 10 9d 60 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x1a0]
    214fa494fb89:	c5 f8 10 ad 40 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1c0]
    214fa494fb91:	c5 f8 10 95 f0 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x210]
    214fa494fb99:	8b 85 b0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x150]
    214fa494fb9f:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
    214fa494fba5:	44 8b 9d 08 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1f8]
    214fa494fbac:	8b b5 a0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x260]
    214fa494fbb2:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
    214fa494fbb9:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
    214fa494fbbf:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
    214fa494fbc7:	e9 0f e6 ff ff                                  	jmp    0x214fa494e1db
    214fa494fbcc:	8b c8                                           	mov    ecx,eax
    214fa494fbce:	33 d2                                           	xor    edx,edx
    214fa494fbd0:	e9 6e e6 ff ff                                  	jmp    0x214fa494e243
    214fa494fbd5:	33 d2                                           	xor    edx,edx
    214fa494fbd7:	44 8b c8                                        	mov    r9d,eax
    214fa494fbda:	e9 82 e6 ff ff                                  	jmp    0x214fa494e261
    214fa494fbdf:	33 d2                                           	xor    edx,edx
    214fa494fbe1:	8b c8                                           	mov    ecx,eax
    214fa494fbe3:	e9 c3 e6 ff ff                                  	jmp    0x214fa494e2ab
    214fa494fbe8:	33 d2                                           	xor    edx,edx
    214fa494fbea:	44 8b f8                                        	mov    r15d,eax
    214fa494fbed:	e9 d7 e6 ff ff                                  	jmp    0x214fa494e2c9
    214fa494fbf2:	e8 59 b0 ed ff                                  	call   0x214fa482ac50
    214fa494fbf7:	e8 54 b0 ed ff                                  	call   0x214fa482ac50
    214fa494fbfc:	90                                              	nop
    214fa494fbfd:	0f 1f 00                                        	nop    DWORD PTR [rax]
    214fa494fc00:	00 ed                                           	add    ch,ch
    214fa494fc02:	94                                              	xchg   esp,eax
    214fa494fc03:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc04:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc07:	00 ee                                           	add    dh,ch
    214fa494fc09:	ec                                              	in     al,dx
    214fa494fc0a:	94                                              	xchg   esp,eax
    214fa494fc0b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc0c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc0f:	00 dc                                           	add    ah,bl
    214fa494fc11:	ec                                              	in     al,dx
    214fa494fc12:	94                                              	xchg   esp,eax
    214fa494fc13:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc14:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc17:	00 ca                                           	add    dl,cl
    214fa494fc19:	ec                                              	in     al,dx
    214fa494fc1a:	94                                              	xchg   esp,eax
    214fa494fc1b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc1c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc1f:	00 b8 ec 94 a4 4f                               	add    BYTE PTR [rax+0x4fa494ec],bh
    214fa494fc25:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fc27:	00 a6 ec 94 a4 4f                               	add    BYTE PTR [rsi+0x4fa494ec],ah
    214fa494fc2d:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fc2f:	00 94 ec 94 a4 4f 21                            	add    BYTE PTR [rsp+rbp*8+0x214fa494],dl
    214fa494fc36:	00 00                                           	add    BYTE PTR [rax],al
    214fa494fc38:	8a ea                                           	mov    ch,dl
    214fa494fc3a:	94                                              	xchg   esp,eax
    214fa494fc3b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc3c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc3f:	00 85 ea 94 a4 4f                               	add    BYTE PTR [rbp+0x4fa494ea],al
    214fa494fc45:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fc47:	00 7b ea                                        	add    BYTE PTR [rbx-0x16],bh
    214fa494fc4a:	94                                              	xchg   esp,eax
    214fa494fc4b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc4c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc4f:	00 71 ea                                        	add    BYTE PTR [rcx-0x16],dh
    214fa494fc52:	94                                              	xchg   esp,eax
    214fa494fc53:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc54:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc57:	00 66 ea                                        	add    BYTE PTR [rsi-0x16],ah
    214fa494fc5a:	94                                              	xchg   esp,eax
    214fa494fc5b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc5c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc5f:	00 5c ea 94                                     	add    BYTE PTR [rdx+rbp*8-0x6c],bl
    214fa494fc63:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc64:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc67:	00 51 ea                                        	add    BYTE PTR [rcx-0x16],dl
    214fa494fc6a:	94                                              	xchg   esp,eax
    214fa494fc6b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc6c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc6f:	00 17                                           	add    BYTE PTR [rdi],dl
    214fa494fc71:	dd 94 a4 4f 21 00 00                            	fst    QWORD PTR [rsp+riz*4+0x214f]
    214fa494fc78:	0c dd                                           	or     al,0xdd
    214fa494fc7a:	94                                              	xchg   esp,eax
    214fa494fc7b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc7c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc7f:	00 01                                           	add    BYTE PTR [rcx],al
    214fa494fc81:	dd 94 a4 4f 21 00 00                            	fst    QWORD PTR [rsp+riz*4+0x214f]
    214fa494fc88:	f6 dc                                           	neg    ah
    214fa494fc8a:	94                                              	xchg   esp,eax
    214fa494fc8b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc8c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc8f:	00 ec                                           	add    ah,ch
    214fa494fc91:	dc 94 a4 4f 21 00 00                            	fcom   QWORD PTR [rsp+riz*4+0x214f]
    214fa494fc98:	e1 dc                                           	loope  0x214fa494fc76
    214fa494fc9a:	94                                              	xchg   esp,eax
    214fa494fc9b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fc9c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fc9f:	00 d7                                           	add    bh,dl
    214fa494fca1:	dc 94 a4 4f 21 00 00                            	fcom   QWORD PTR [rsp+riz*4+0x214f]
    214fa494fca8:	f7 ab 94 a4 4f 21                               	imul   DWORD PTR [rbx+0x214fa494]
    214fa494fcae:	00 00                                           	add    BYTE PTR [rax],al
    214fa494fcb0:	ec                                              	in     al,dx
    214fa494fcb1:	ab                                              	stos   DWORD PTR es:[rdi],eax
    214fa494fcb2:	94                                              	xchg   esp,eax
    214fa494fcb3:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fcb4:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fcb7:	00 d6                                           	add    dh,dl
    214fa494fcb9:	ab                                              	stos   DWORD PTR es:[rdi],eax
    214fa494fcba:	94                                              	xchg   esp,eax
    214fa494fcbb:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fcbc:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fcbf:	00 c6                                           	add    dh,al
    214fa494fcc1:	ab                                              	stos   DWORD PTR es:[rdi],eax
    214fa494fcc2:	94                                              	xchg   esp,eax
    214fa494fcc3:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fcc4:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fcc7:	00 b6 ab 94 a4 4f                               	add    BYTE PTR [rsi+0x4fa494ab],dh
    214fa494fccd:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fccf:	00 a0 ab 94 a4 4f                               	add    BYTE PTR [rax+0x4fa494ab],ah
    214fa494fcd5:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fcd7:	00 90 ab 94 a4 4f                               	add    BYTE PTR [rax+0x4fa494ab],dl
    214fa494fcdd:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fcdf:	00 10                                           	add    BYTE PTR [rax],dl
    214fa494fce1:	ac                                              	lods   al,BYTE PTR ds:[rsi]
    214fa494fce2:	94                                              	xchg   esp,eax
    214fa494fce3:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fce4:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fce7:	00 57 9f                                        	add    BYTE PTR [rdi-0x61],dl
    214fa494fcea:	94                                              	xchg   esp,eax
    214fa494fceb:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fcec:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fcef:	00 0b                                           	add    BYTE PTR [rbx],cl
    214fa494fcf1:	a1 94 a4 4f 21 00 00 f5 a0                      	movabs eax,ds:0xa0f50000214fa494
    214fa494fcfa:	94                                              	xchg   esp,eax
    214fa494fcfb:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fcfc:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fcff:	00 e6                                           	add    dh,ah
    214fa494fd01:	a0 94 a4 4f 21 00 00 d6 a0                      	movabs al,ds:0xa0d60000214fa494
    214fa494fd0a:	94                                              	xchg   esp,eax
    214fa494fd0b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd0c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd0f:	00 c0                                           	add    al,al
    214fa494fd11:	a0 94 a4 4f 21 00 00 b0 a0                      	movabs al,ds:0xa0b00000214fa494
    214fa494fd1a:	94                                              	xchg   esp,eax
    214fa494fd1b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd1c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd1f:	00 15 a1 94 a4 4f                               	add    BYTE PTR [rip+0x4fa494a1],dl        # 0x214ff43991c6
    214fa494fd25:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fd27:	00 4a 9f                                        	add    BYTE PTR [rdx-0x61],cl
    214fa494fd2a:	94                                              	xchg   esp,eax
    214fa494fd2b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd2c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd2f:	00 91 96 94 a4 4f                               	add    BYTE PTR [rcx+0x4fa49496],dl
    214fa494fd35:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fd37:	00 7b 96                                        	add    BYTE PTR [rbx-0x6a],bh
    214fa494fd3a:	94                                              	xchg   esp,eax
    214fa494fd3b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd3c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd3f:	00 6c 96 94                                     	add    BYTE PTR [rsi+rdx*4-0x6c],ch
    214fa494fd43:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd44:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd47:	00 5c 96 94                                     	add    BYTE PTR [rsi+rdx*4-0x6c],bl
    214fa494fd4b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd4c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd4f:	00 46 96                                        	add    BYTE PTR [rsi-0x6a],al
    214fa494fd52:	94                                              	xchg   esp,eax
    214fa494fd53:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd54:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd57:	00 36                                           	add    BYTE PTR [rsi],dh
    214fa494fd59:	96                                              	xchg   esi,eax
    214fa494fd5a:	94                                              	xchg   esp,eax
    214fa494fd5b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd5c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd5f:	00 9b 96 94 a4 4f                               	add    BYTE PTR [rbx+0x4fa49496],bl
    214fa494fd65:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fd67:	00 c3                                           	add    bl,al
    214fa494fd69:	94                                              	xchg   esp,eax
    214fa494fd6a:	94                                              	xchg   esp,eax
    214fa494fd6b:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd6c:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd6f:	00 06                                           	add    BYTE PTR [rsi],al
    214fa494fd71:	8c 94 a4 4f 21 00 00                            	mov    WORD PTR [rsp+riz*4+0x214f],ss
    214fa494fd78:	f0 8b 94 a4 4f 21 00 00                         	lock mov edx,DWORD PTR [rsp+riz*4+0x214f]
    214fa494fd80:	e1 8b                                           	loope  0x214fa494fd0d
    214fa494fd82:	94                                              	xchg   esp,eax
    214fa494fd83:	a4                                              	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    214fa494fd84:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fd87:	00 d1                                           	add    cl,dl
    214fa494fd89:	8b 94 a4 4f 21 00 00                            	mov    edx,DWORD PTR [rsp+riz*4+0x214f]
    214fa494fd90:	bb 8b 94 a4 4f                                  	mov    ebx,0x4fa4948b
    214fa494fd95:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fd97:	00 ab 8b 94 a4 4f                               	add    BYTE PTR [rbx+0x4fa4948b],ch
    214fa494fd9d:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fd9f:	00 10                                           	add    BYTE PTR [rax],dl
    214fa494fda1:	8c 94 a4 4f 21 00 00                            	mov    WORD PTR [rsp+riz*4+0x214f],ss
    214fa494fda8:	df 89 94 a4 4f 21                               	fisttp WORD PTR [rcx+0x214fa494]
    214fa494fdae:	00 00                                           	add    BYTE PTR [rax],al
    214fa494fdb0:	2a 81 94 a4 4f 21                               	sub    al,BYTE PTR [rcx+0x214fa494]
    214fa494fdb6:	00 00                                           	add    BYTE PTR [rax],al
    214fa494fdb8:	15 81 94 a4 4f                                  	adc    eax,0x4fa49481
    214fa494fdbd:	21 00                                           	and    DWORD PTR [rax],eax
    214fa494fdbf:	00 06                                           	add    BYTE PTR [rsi],al
    214fa494fdc1:	81 94 a4 4f 21 00 00 f7 80 94 a4                	adc    DWORD PTR [rsp+riz*4+0x214f],0xa49480f7
    214fa494fdcc:	4f 21 00                                        	rex.WRXB and QWORD PTR [r8],r8
    214fa494fdcf:	00 e2                                           	add    dl,ah
    214fa494fdd1:	80 94 a4 4f 21 00 00 d3                         	adc    BYTE PTR [rsp+riz*4+0x214f],0xd3
    214fa494fdd9:	80 94 a4 4f 21 00 00 34                         	adc    BYTE PTR [rsp+riz*4+0x214f],0x34
    214fa494fde1:	81 94 a4 4f 21 00 00 81 00 00 00                	adc    DWORD PTR [rsp+riz*4+0x214f],0x81
    214fa494fdec:	1c 00                                           	sbb    al,0x0
    214fa494fdee:	00 00                                           	add    BYTE PTR [rax],al
    214fa494fdf0:	91                                              	xchg   ecx,eax
    214fa494fdf1:	01 d7                                           	add    edi,edx
    214fa494fdf3:	03 05 8f 94 02 d7                               	add    eax,DWORD PTR [rip+0xffffffffd702948f]        # 0x214f7b979288
    214fa494fdf9:	03 05 26 d7 03 05                               	add    eax,DWORD PTR [rip+0x503d726]        # 0x214fa998d525
    214fa494fdff:	b0 05                                           	mov    al,0x5
    214fa494fe01:	d7                                              	xlat   BYTE PTR ds:[rbx]
    214fa494fe02:	03 05 00 00 00 00                               	add    eax,DWORD PTR [rip+0x0]        # 0x214fa494fe08
	...
