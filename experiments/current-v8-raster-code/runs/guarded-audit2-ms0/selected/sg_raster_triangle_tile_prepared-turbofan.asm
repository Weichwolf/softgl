
/home/cosmo/Git/softgl/build/diagnostics/current-v8-raster-code/runs/guarded-audit2-ms0/selected/sg_raster_triangle_tile_prepared-turbofan.bin:     file format binary


Disassembly of section .data:

000005b2ff0b8f40 <.data>:
 5b2ff0b8f40:	55                                              	push   rbp
 5b2ff0b8f41:	48 8b ec                                        	mov    rbp,rsp
 5b2ff0b8f44:	6a 30                                           	push   0x30
 5b2ff0b8f46:	56                                              	push   rsi
 5b2ff0b8f47:	48 81 ec e8 03 00 00                            	sub    rsp,0x3e8
 5b2ff0b8f4e:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
 5b2ff0b8f52:	8b f9                                           	mov    edi,ecx
 5b2ff0b8f54:	49 3b 65 a0                                     	cmp    rsp,QWORD PTR [r13-0x60]
 5b2ff0b8f58:	0f 86 53 8a 00 00                               	jbe    0x5b2ff0c19b1
 5b2ff0b8f5e:	4c 8b 46 17                                     	mov    r8,QWORD PTR [rsi+0x17]
 5b2ff0b8f62:	44 8b 5e 57                                     	mov    r11d,DWORD PTR [rsi+0x57]
 5b2ff0b8f66:	4d 0b de                                        	or     r11,r14
 5b2ff0b8f69:	45 8b 63 07                                     	mov    r12d,DWORD PTR [r11+0x7]
 5b2ff0b8f6d:	41 8d 8c 24 00 fe ff ff                         	lea    ecx,[r12-0x200]
 5b2ff0b8f75:	41 89 4b 07                                     	mov    DWORD PTR [r11+0x7],ecx
 5b2ff0b8f79:	45 8b 7b 2f                                     	mov    r15d,DWORD PTR [r11+0x2f]
 5b2ff0b8f7d:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
 5b2ff0b8f81:	4c 89 a5 80 fd ff ff                            	mov    QWORD PTR [rbp-0x280],r12
 5b2ff0b8f88:	44 8b e0                                        	mov    r12d,eax
 5b2ff0b8f8b:	43 8b 74 20 14                                  	mov    esi,DWORD PTR [r8+r12*1+0x14]
 5b2ff0b8f90:	48 89 b5 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rsi
 5b2ff0b8f97:	85 f6                                           	test   esi,esi
 5b2ff0b8f99:	0f 85 4c 00 00 00                               	jne    0x5b2ff0b8feb
 5b2ff0b8f9f:	45 85 ff                                        	test   r15d,r15d
 5b2ff0b8fa2:	0f 84 43 00 00 00                               	je     0x5b2ff0b8feb
 5b2ff0b8fa8:	43 8b 74 38 24                                  	mov    esi,DWORD PTR [r8+r15*1+0x24]
 5b2ff0b8fad:	43 83 7c 38 24 00                               	cmp    DWORD PTR [r8+r15*1+0x24],0x0
 5b2ff0b8fb3:	0f 84 32 00 00 00                               	je     0x5b2ff0b8feb
 5b2ff0b8fb9:	ff 75 18                                        	push   QWORD PTR [rbp+0x18]
 5b2ff0b8fbc:	ff 75 10                                        	push   QWORD PTR [rbp+0x10]
 5b2ff0b8fbf:	4c 89 5d e8                                     	mov    QWORD PTR [rbp-0x18],r11
 5b2ff0b8fc3:	48 89 4d e0                                     	mov    QWORD PTR [rbp-0x20],rcx
 5b2ff0b8fc7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0b8fcb:	8b cf                                           	mov    ecx,edi
 5b2ff0b8fcd:	e8 7e 25 f1 ff                                  	call   0x5b2fefcb550
 5b2ff0b8fd2:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0b8fd6:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
 5b2ff0b8fdd:	48 8b 75 e8                                     	mov    rsi,QWORD PTR [rbp-0x18]
 5b2ff0b8fe1:	89 7e 07                                        	mov    DWORD PTR [rsi+0x7],edi
 5b2ff0b8fe4:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0b8fe7:	5d                                              	pop    rbp
 5b2ff0b8fe8:	c2 10 00                                        	ret    0x10
 5b2ff0b8feb:	4d 8b d3                                        	mov    r10,r11
 5b2ff0b8fee:	44 8b d9                                        	mov    r11d,ecx
 5b2ff0b8ff1:	49 8b ca                                        	mov    rcx,r10
 5b2ff0b8ff4:	4c 89 bd 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r15
 5b2ff0b8ffb:	44 8b fb                                        	mov    r15d,ebx
 5b2ff0b8ffe:	c4 81 7a 6f 74 38 10                            	vmovdqu xmm6,XMMWORD PTR [r8+r15*1+0x10]
 5b2ff0b9005:	49 ba 00 00 80 43 00 00 80 43                   	movabs r10,0x4380000043800000
 5b2ff0b900f:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0b9014:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0b9018:	c5 48 59 c7                                     	vmulps xmm8,xmm6,xmm7
 5b2ff0b901c:	49 ba 40 09 09 67 4c 63 00 00                   	movabs r10,0x634c67090940
 5b2ff0b9026:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0b902c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
 5b2ff0b9031:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0b9037:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
 5b2ff0b903c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
 5b2ff0b9041:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
 5b2ff0b9045:	8b da                                           	mov    ebx,edx
 5b2ff0b9047:	c4 41 7a 6f 4c 18 10                            	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x10]
 5b2ff0b904e:	c5 30 59 d7                                     	vmulps xmm10,xmm9,xmm7
 5b2ff0b9052:	4c 8b 15 c5 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc5]        # 0x5b2ff0b901e
 5b2ff0b9059:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
 5b2ff0b905f:	c4 41 28 54 d7                                  	vandps xmm10,xmm10,xmm15
 5b2ff0b9064:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
 5b2ff0b906a:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
 5b2ff0b906f:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
 5b2ff0b9074:	c4 41 39 fa da                                  	vpsubd xmm11,xmm8,xmm10
 5b2ff0b9079:	c4 42 79 25 db                                  	vpmovsxdq xmm11,xmm11
 5b2ff0b907e:	c4 41 20 c6 db 4e                               	vshufps xmm11,xmm11,xmm11,0x4e
 5b2ff0b9084:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
 5b2ff0b9088:	8b d7                                           	mov    edx,edi
 5b2ff0b908a:	c4 41 7a 6f 64 10 10                            	vmovdqu xmm12,XMMWORD PTR [r8+rdx*1+0x10]
 5b2ff0b9091:	c5 18 59 ef                                     	vmulps xmm13,xmm12,xmm7
 5b2ff0b9095:	4c 8b 15 82 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff82]        # 0x5b2ff0b901e
 5b2ff0b909c:	c4 41 10 c2 fd 00                               	vcmpeqps xmm15,xmm13,xmm13
 5b2ff0b90a2:	c4 41 10 54 ef                                  	vandps xmm13,xmm13,xmm15
 5b2ff0b90a7:	c4 41 10 c2 3a 0d                               	vcmpgeps xmm15,xmm13,XMMWORD PTR [r10]
 5b2ff0b90ad:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
 5b2ff0b90b2:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
 5b2ff0b90b7:	c4 41 11 fa f2                                  	vpsubd xmm14,xmm13,xmm10
 5b2ff0b90bc:	c4 c2 79 25 ce                                  	vpmovsxdq xmm1,xmm14
 5b2ff0b90c1:	c4 c1 61 73 d3 20                               	vpsrlq xmm3,xmm11,0x20
 5b2ff0b90c7:	c5 e1 f4 d9                                     	vpmuludq xmm3,xmm3,xmm1
 5b2ff0b90cb:	c5 81 73 d1 20                                  	vpsrlq xmm15,xmm1,0x20
 5b2ff0b90d0:	c4 41 01 f4 fb                                  	vpmuludq xmm15,xmm15,xmm11
 5b2ff0b90d5:	c5 01 d4 fb                                     	vpaddq xmm15,xmm15,xmm3
 5b2ff0b90d9:	c4 c1 01 73 f7 20                               	vpsllq xmm15,xmm15,0x20
 5b2ff0b90df:	c5 a1 f4 d1                                     	vpmuludq xmm2,xmm11,xmm1
 5b2ff0b90e3:	c4 c1 69 d4 d7                                  	vpaddq xmm2,xmm2,xmm15
 5b2ff0b90e8:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
 5b2ff0b90ec:	c4 e3 f9 16 d7 00                               	vpextrq rdi,xmm2,0x0
 5b2ff0b90f2:	c4 e3 f9 16 d6 01                               	vpextrq rsi,xmm2,0x1
 5b2ff0b90f8:	48 2b fe                                        	sub    rdi,rsi
 5b2ff0b90fb:	48 85 ff                                        	test   rdi,rdi
 5b2ff0b90fe:	0f 8e 7f 88 00 00                               	jle    0x5b2ff0c1983
 5b2ff0b9104:	c4 42 11 3d da                                  	vpmaxsd xmm11,xmm13,xmm10
 5b2ff0b9109:	c4 42 21 3d d8                                  	vpmaxsd xmm11,xmm11,xmm8
 5b2ff0b910e:	c4 c1 21 72 e3 08                               	vpsrad xmm11,xmm11,0x8
 5b2ff0b9114:	49 ba 01 00 00 00 01 00 00 00                   	movabs r10,0x100000001
 5b2ff0b911e:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff0b9123:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff0b9127:	c5 a1 fe da                                     	vpaddd xmm3,xmm11,xmm2
 5b2ff0b912b:	8d 70 04                                        	lea    esi,[rax+0x4]
 5b2ff0b912e:	c5 f9 6e 65 10                                  	vmovd  xmm4,DWORD PTR [rbp+0x10]
 5b2ff0b9133:	c5 f9 70 e4 00                                  	vpshufd xmm4,xmm4,0x0
 5b2ff0b9138:	c4 c3 59 22 24 30 01                            	vpinsrd xmm4,xmm4,DWORD PTR [r8+rsi*1],0x1
 5b2ff0b913f:	c4 41 59 66 db                                  	vpcmpgtd xmm11,xmm4,xmm11
 5b2ff0b9144:	c5 21 df fc                                     	vpandn xmm15,xmm11,xmm4
 5b2ff0b9148:	c4 41 61 db db                                  	vpand  xmm11,xmm3,xmm11
 5b2ff0b914d:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
 5b2ff0b9152:	c4 c2 11 39 da                                  	vpminsd xmm3,xmm13,xmm10
 5b2ff0b9157:	c4 c2 61 39 d8                                  	vpminsd xmm3,xmm3,xmm8
 5b2ff0b915c:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
 5b2ff0b9160:	c5 d9 66 e3                                     	vpcmpgtd xmm4,xmm4,xmm3
 5b2ff0b9164:	49 ba 01 ff ff ff 01 ff ff ff                   	movabs r10,0xffffff01ffffff01
 5b2ff0b916e:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0b9173:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff0b9177:	c5 d9 db e5                                     	vpand  xmm4,xmm4,xmm5
 5b2ff0b917b:	c5 e1 fe dc                                     	vpaddd xmm3,xmm3,xmm4
 5b2ff0b917f:	c5 e1 72 e3 08                                  	vpsrad xmm3,xmm3,0x8
 5b2ff0b9184:	c4 c3 79 22 e1 00                               	vpinsrd xmm4,xmm0,r9d,0x0
 5b2ff0b918a:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
 5b2ff0b918f:	43 8b 74 20 58                                  	mov    esi,DWORD PTR [r8+r12*1+0x58]
 5b2ff0b9194:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
 5b2ff0b9198:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
 5b2ff0b919c:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
 5b2ff0b91a4:	85 f6                                           	test   esi,esi
 5b2ff0b91a6:	0f 84 39 00 00 00                               	je     0x5b2ff0b91e5
 5b2ff0b91ac:	44 8d 48 50                                     	lea    r9d,[rax+0x50]
 5b2ff0b91b0:	49 8d 78 48                                     	lea    rdi,[r8+0x48]
 5b2ff0b91b4:	c4 a1 7b 10 24 27                               	vmovsd xmm4,QWORD PTR [rdi+r12*1]
 5b2ff0b91ba:	c4 83 59 22 2c 08 00                            	vpinsrd xmm5,xmm4,DWORD PTR [r8+r9*1],0x0
 5b2ff0b91c1:	8d 78 54                                        	lea    edi,[rax+0x54]
 5b2ff0b91c4:	c4 c3 59 22 04 38 01                            	vpinsrd xmm0,xmm4,DWORD PTR [r8+rdi*1],0x1
 5b2ff0b91cb:	c5 d1 fe c0                                     	vpaddd xmm0,xmm5,xmm0
 5b2ff0b91cf:	c4 62 21 39 d8                                  	vpminsd xmm11,xmm11,xmm0
 5b2ff0b91d4:	c4 e2 61 3d dc                                  	vpmaxsd xmm3,xmm3,xmm4
 5b2ff0b91d9:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
 5b2ff0b91e1:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
 5b2ff0b91e5:	c5 a1 66 e3                                     	vpcmpgtd xmm4,xmm11,xmm3
 5b2ff0b91e9:	c4 c3 f9 16 e1 00                               	vpextrq r9,xmm4,0x0
 5b2ff0b91ef:	c4 e2 79 25 e4                                  	vpmovsxdq xmm4,xmm4
 5b2ff0b91f4:	c4 e3 f9 16 e0 01                               	vpextrq rax,xmm4,0x1
 5b2ff0b91fa:	49 23 c1                                        	and    rax,r9
 5b2ff0b91fd:	a8 01                                           	test   al,0x1
 5b2ff0b91ff:	0f 85 20 00 00 00                               	jne    0x5b2ff0b9225
 5b2ff0b9205:	b8 01 00 00 00                                  	mov    eax,0x1
 5b2ff0b920a:	bf ff ff ff ff                                  	mov    edi,0xffffffff
 5b2ff0b920f:	85 f6                                           	test   esi,esi
 5b2ff0b9211:	0f 45 c7                                        	cmovne eax,edi
 5b2ff0b9214:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
 5b2ff0b921b:	89 79 07                                        	mov    DWORD PTR [rcx+0x7],edi
 5b2ff0b921e:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0b9221:	5d                                              	pop    rbp
 5b2ff0b9222:	c2 10 00                                        	ret    0x10
 5b2ff0b9225:	c4 63 79 16 e8 01                               	vpextrd eax,xmm13,0x1
 5b2ff0b922b:	c4 63 79 16 d6 01                               	vpextrd esi,xmm10,0x1
 5b2ff0b9231:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0b9234:	3b f0                                           	cmp    esi,eax
 5b2ff0b9236:	41 0f 9e c1                                     	setle  r9b
 5b2ff0b923a:	48 89 4d e8                                     	mov    QWORD PTR [rbp-0x18],rcx
 5b2ff0b923e:	33 c9                                           	xor    ecx,ecx
 5b2ff0b9240:	3b f0                                           	cmp    esi,eax
 5b2ff0b9242:	0f 95 c1                                        	setne  cl
 5b2ff0b9245:	4c 89 5d e0                                     	mov    QWORD PTR [rbp-0x20],r11
 5b2ff0b9249:	c4 41 79 7e eb                                  	vmovd  r11d,xmm13
 5b2ff0b924e:	c5 79 7e d7                                     	vmovd  edi,xmm10
 5b2ff0b9252:	4c 89 bd 10 fe ff ff                            	mov    QWORD PTR [rbp-0x1f0],r15
 5b2ff0b9259:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0b925c:	41 3b fb                                        	cmp    edi,r11d
 5b2ff0b925f:	41 0f 9e c7                                     	setle  r15b
 5b2ff0b9263:	44 0b f9                                        	or     r15d,ecx
 5b2ff0b9266:	45 23 f9                                        	and    r15d,r9d
 5b2ff0b9269:	c4 63 79 16 c1 01                               	vpextrd ecx,xmm8,0x1
 5b2ff0b926f:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0b9272:	3b ce                                           	cmp    ecx,esi
 5b2ff0b9274:	41 0f 9e c1                                     	setle  r9b
 5b2ff0b9278:	4c 89 bd 28 fc ff ff                            	mov    QWORD PTR [rbp-0x3d8],r15
 5b2ff0b927f:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0b9282:	3b ce                                           	cmp    ecx,esi
 5b2ff0b9284:	41 0f 95 c7                                     	setne  r15b
 5b2ff0b9288:	48 89 b5 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rsi
 5b2ff0b928f:	c5 79 7e c6                                     	vmovd  esi,xmm8
 5b2ff0b9293:	48 89 9d e8 fd ff ff                            	mov    QWORD PTR [rbp-0x218],rbx
 5b2ff0b929a:	33 db                                           	xor    ebx,ebx
 5b2ff0b929c:	3b f7                                           	cmp    esi,edi
 5b2ff0b929e:	0f 9e c3                                        	setle  bl
 5b2ff0b92a1:	41 0b df                                        	or     ebx,r15d
 5b2ff0b92a4:	41 23 d9                                        	and    ebx,r9d
 5b2ff0b92a7:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0b92aa:	3b c8                                           	cmp    ecx,eax
 5b2ff0b92ac:	41 0f 95 c7                                     	setne  r15b
 5b2ff0b92b0:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0b92b3:	44 3b de                                        	cmp    r11d,esi
 5b2ff0b92b6:	41 0f 9e c1                                     	setle  r9b
 5b2ff0b92ba:	45 0b cf                                        	or     r9d,r15d
 5b2ff0b92bd:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0b92c0:	3b c1                                           	cmp    eax,ecx
 5b2ff0b92c2:	41 0f 9e c7                                     	setle  r15b
 5b2ff0b92c6:	45 23 f9                                        	and    r15d,r9d
 5b2ff0b92c9:	47 8b 8c 20 e0 00 00 00                         	mov    r9d,DWORD PTR [r8+r12*1+0xe0]
 5b2ff0b92d1:	4c 89 45 d8                                     	mov    QWORD PTR [rbp-0x28],r8
 5b2ff0b92d5:	4c 89 65 d0                                     	mov    QWORD PTR [rbp-0x30],r12
 5b2ff0b92d9:	c5 f8 11 bd 50 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2b0],xmm7
 5b2ff0b92e1:	48 89 9d 30 fc ff ff                            	mov    QWORD PTR [rbp-0x3d0],rbx
 5b2ff0b92e8:	43 83 bc 20 e0 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xe0],0x0
 5b2ff0b92f1:	0f 85 0d 00 00 00                               	jne    0x5b2ff0b9304
 5b2ff0b92f7:	c5 c8 57 f6                                     	vxorps xmm6,xmm6,xmm6
 5b2ff0b92fb:	c5 79 28 c6                                     	vmovapd xmm8,xmm6
 5b2ff0b92ff:	e9 49 01 00 00                                  	jmp    0x5b2ff0b944d
 5b2ff0b9304:	c4 01 7a 10 94 20 d8 00 00 00                   	vmovss xmm10,DWORD PTR [r8+r12*1+0xd8]
 5b2ff0b930e:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0b9313:	c4 41 78 2e c2                                  	vucomiss xmm8,xmm10
 5b2ff0b9318:	0f 8a 1d 00 00 00                               	jp     0x5b2ff0b933b
 5b2ff0b931e:	0f 85 17 00 00 00                               	jne    0x5b2ff0b933b
 5b2ff0b9324:	c4 01 7a 10 ac 20 dc 00 00 00                   	vmovss xmm13,DWORD PTR [r8+r12*1+0xdc]
 5b2ff0b932e:	c4 41 78 2e c5                                  	vucomiss xmm8,xmm13
 5b2ff0b9333:	7a 06                                           	jp     0x5b2ff0b933b
 5b2ff0b9335:	0f 84 0d 01 00 00                               	je     0x5b2ff0b9448
 5b2ff0b933b:	c4 41 18 5c e1                                  	vsubps xmm12,xmm12,xmm9
 5b2ff0b9340:	c4 41 78 28 ec                                  	vmovaps xmm13,xmm12
 5b2ff0b9345:	c4 c1 48 5c f1                                  	vsubps xmm6,xmm6,xmm9
 5b2ff0b934a:	c5 7a 16 ce                                     	vmovshdup xmm9,xmm6
 5b2ff0b934e:	c4 c1 12 59 e1                                  	vmulss xmm4,xmm13,xmm9
 5b2ff0b9353:	c4 41 7a 16 e4                                  	vmovshdup xmm12,xmm12
 5b2ff0b9358:	c4 c1 4a 59 ec                                  	vmulss xmm5,xmm6,xmm12
 5b2ff0b935d:	c5 da 5c e5                                     	vsubss xmm4,xmm4,xmm5
 5b2ff0b9361:	c5 78 2e c4                                     	vucomiss xmm8,xmm4
 5b2ff0b9365:	7a 06                                           	jp     0x5b2ff0b936d
 5b2ff0b9367:	0f 84 db 00 00 00                               	je     0x5b2ff0b9448
 5b2ff0b936d:	c4 c1 7a 10 6c 10 18                            	vmovss xmm5,DWORD PTR [r8+rdx*1+0x18]
 5b2ff0b9374:	4c 8b 8d e8 fd ff ff                            	mov    r9,QWORD PTR [rbp-0x218]
 5b2ff0b937b:	c4 81 7a 10 44 08 18                            	vmovss xmm0,DWORD PTR [r8+r9*1+0x18]
 5b2ff0b9382:	c5 d2 5c e8                                     	vsubss xmm5,xmm5,xmm0
 5b2ff0b9386:	c4 41 52 59 c9                                  	vmulss xmm9,xmm5,xmm9
 5b2ff0b938b:	48 8b 9d 10 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1f0]
 5b2ff0b9392:	c4 c1 7a 10 7c 18 18                            	vmovss xmm7,DWORD PTR [r8+rbx*1+0x18]
 5b2ff0b9399:	c5 c2 5c c0                                     	vsubss xmm0,xmm7,xmm0
 5b2ff0b939d:	c5 9a 59 f8                                     	vmulss xmm7,xmm12,xmm0
 5b2ff0b93a1:	c5 b2 5c ff                                     	vsubss xmm7,xmm9,xmm7
 5b2ff0b93a5:	c5 c2 5e fc                                     	vdivss xmm7,xmm7,xmm4
 5b2ff0b93a9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
 5b2ff0b93ad:	49 ba 60 08 09 67 4c 63 00 00                   	movabs r10,0x634c67090860
 5b2ff0b93b7:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
 5b2ff0b93bc:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0b93c0:	0f 87 04 00 00 00                               	ja     0x5b2ff0b93ca
 5b2ff0b93c6:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0b93ca:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
 5b2ff0b93cf:	c5 ca 59 f5                                     	vmulss xmm6,xmm6,xmm5
 5b2ff0b93d3:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff0b93d7:	c5 fa 5e c4                                     	vdivss xmm0,xmm0,xmm4
 5b2ff0b93db:	c5 f8 28 c0                                     	vmovaps xmm0,xmm0
 5b2ff0b93df:	4c 8b 15 c9 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffc9]        # 0x5b2ff0b93af
 5b2ff0b93e6:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0b93eb:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff0b93ef:	0f 87 04 00 00 00                               	ja     0x5b2ff0b93f9
 5b2ff0b93f5:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0b93f9:	c5 78 2e ce                                     	vucomiss xmm9,xmm6
 5b2ff0b93fd:	0f 87 04 00 00 00                               	ja     0x5b2ff0b9407
 5b2ff0b9403:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0b9407:	c4 c1 2a 59 c1                                  	vmulss xmm0,xmm10,xmm9
 5b2ff0b940c:	c4 81 7a 10 b4 20 dc 00 00 00                   	vmovss xmm6,DWORD PTR [r8+r12*1+0xdc]
 5b2ff0b9416:	41 ba bd 37 86 35                               	mov    r10d,0x358637bd
 5b2ff0b941c:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
 5b2ff0b9421:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0b9425:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0b9429:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0b942d:	c5 f8 10 bd 50 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x2b0]
 5b2ff0b9435:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
 5b2ff0b943d:	8b 9d 30 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3d0]
 5b2ff0b9443:	e9 05 00 00 00                                  	jmp    0x5b2ff0b944d
 5b2ff0b9448:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
 5b2ff0b944d:	c4 c1 79 7e d9                                  	vmovd  r9d,xmm3
 5b2ff0b9452:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
 5b2ff0b9456:	c4 c3 79 16 d9 01                               	vpextrd r9d,xmm3,0x1
 5b2ff0b945c:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
 5b2ff0b9460:	44 8b 8d 28 fc ff ff                            	mov    r9d,DWORD PTR [rbp-0x3d8]
 5b2ff0b9467:	41 f7 d9                                        	neg    r9d
 5b2ff0b946a:	4c 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],r9
 5b2ff0b946e:	44 8b cb                                        	mov    r9d,ebx
 5b2ff0b9471:	41 f7 d9                                        	neg    r9d
 5b2ff0b9474:	4c 89 4d 90                                     	mov    QWORD PTR [rbp-0x70],r9
 5b2ff0b9478:	45 8b cf                                        	mov    r9d,r15d
 5b2ff0b947b:	41 f7 d9                                        	neg    r9d
 5b2ff0b947e:	83 bd 70 ff ff ff 04                            	cmp    DWORD PTR [rbp-0x90],0x4
 5b2ff0b9485:	0f 84 21 84 00 00                               	je     0x5b2ff0c18ac
 5b2ff0b948b:	83 bd 70 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x90],0x0
 5b2ff0b9492:	0f 85 70 83 00 00                               	jne    0x5b2ff0c1808
 5b2ff0b9498:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
 5b2ff0b949c:	41 c1 e1 08                                     	shl    r9d,0x8
 5b2ff0b94a0:	41 81 c9 80 00 00 00                            	or     r9d,0x80
 5b2ff0b94a7:	41 8b d9                                        	mov    ebx,r9d
 5b2ff0b94aa:	2b de                                           	sub    ebx,esi
 5b2ff0b94ac:	48 63 db                                        	movsxd rbx,ebx
 5b2ff0b94af:	4c 89 bd 98 fc ff ff                            	mov    QWORD PTR [rbp-0x368],r15
 5b2ff0b94b6:	44 8b 7d a0                                     	mov    r15d,DWORD PTR [rbp-0x60]
 5b2ff0b94ba:	41 c1 e7 08                                     	shl    r15d,0x8
 5b2ff0b94be:	41 81 cf 80 00 00 00                            	or     r15d,0x80
 5b2ff0b94c5:	48 89 95 00 fe ff ff                            	mov    QWORD PTR [rbp-0x200],rdx
 5b2ff0b94cc:	41 8b d7                                        	mov    edx,r15d
 5b2ff0b94cf:	2b d1                                           	sub    edx,ecx
 5b2ff0b94d1:	48 63 d2                                        	movsxd rdx,edx
 5b2ff0b94d4:	48 89 55 88                                     	mov    QWORD PTR [rbp-0x78],rdx
 5b2ff0b94d8:	41 8b d1                                        	mov    edx,r9d
 5b2ff0b94db:	41 2b d3                                        	sub    edx,r11d
 5b2ff0b94de:	48 63 d2                                        	movsxd rdx,edx
 5b2ff0b94e1:	48 89 95 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],rdx
 5b2ff0b94e8:	41 8b d7                                        	mov    edx,r15d
 5b2ff0b94eb:	2b d0                                           	sub    edx,eax
 5b2ff0b94ed:	48 63 d2                                        	movsxd rdx,edx
 5b2ff0b94f0:	44 2b cf                                        	sub    r9d,edi
 5b2ff0b94f3:	4d 63 c9                                        	movsxd r9,r9d
 5b2ff0b94f6:	44 2b bd 68 ff ff ff                            	sub    r15d,DWORD PTR [rbp-0x98]
 5b2ff0b94fd:	4d 63 ff                                        	movsxd r15,r15d
 5b2ff0b9500:	4c 8b 55 98                                     	mov    r10,QWORD PTR [rbp-0x68]
 5b2ff0b9504:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
 5b2ff0b9509:	4d 85 d2                                        	test   r10,r10
 5b2ff0b950c:	79 13                                           	jns    0x5b2ff0b9521
 5b2ff0b950e:	49 d1 ea                                        	shr    r10,1
 5b2ff0b9511:	73 04                                           	jae    0x5b2ff0b9517
 5b2ff0b9513:	49 83 ca 01                                     	or     r10,0x1
 5b2ff0b9517:	c4 41 82 2a ca                                  	vcvtsi2ss xmm9,xmm15,r10
 5b2ff0b951c:	c4 41 32 58 c9                                  	vaddss xmm9,xmm9,xmm9
 5b2ff0b9521:	2b fe                                           	sub    edi,esi
 5b2ff0b9523:	4c 89 bd 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r15
 5b2ff0b952a:	4c 63 ff                                        	movsxd r15,edi
 5b2ff0b952d:	4c 89 8d 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],r9
 5b2ff0b9534:	4d 8b cf                                        	mov    r9,r15
 5b2ff0b9537:	49 c1 e1 08                                     	shl    r9,0x8
 5b2ff0b953b:	4c 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r15
 5b2ff0b9542:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0b9545:	48 89 95 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],rdx
 5b2ff0b954c:	85 ff                                           	test   edi,edi
 5b2ff0b954e:	4d 0f 4c f9                                     	cmovl  r15,r9
 5b2ff0b9552:	4c 89 8d f8 fc ff ff                            	mov    QWORD PTR [rbp-0x308],r9
 5b2ff0b9559:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
 5b2ff0b9560:	44 2b c9                                        	sub    r9d,ecx
 5b2ff0b9563:	4c 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],r15
 5b2ff0b956a:	4d 63 f9                                        	movsxd r15,r9d
 5b2ff0b956d:	4c 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],r15
 5b2ff0b9574:	49 c1 e7 08                                     	shl    r15,0x8
 5b2ff0b9578:	4c 89 bd f0 fc ff ff                            	mov    QWORD PTR [rbp-0x310],r15
 5b2ff0b957f:	49 f7 df                                        	neg    r15
 5b2ff0b9582:	48 89 9d 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rbx
 5b2ff0b9589:	33 db                                           	xor    ebx,ebx
 5b2ff0b958b:	45 85 c9                                        	test   r9d,r9d
 5b2ff0b958e:	49 0f 4f df                                     	cmovg  rbx,r15
 5b2ff0b9592:	48 89 9d 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rbx
 5b2ff0b9599:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
 5b2ff0b95a0:	33 d2                                           	xor    edx,edx
 5b2ff0b95a2:	85 ff                                           	test   edi,edi
 5b2ff0b95a4:	48 0f 4c da                                     	cmovl  rbx,rdx
 5b2ff0b95a8:	45 85 c9                                        	test   r9d,r9d
 5b2ff0b95ab:	4c 0f 4f fa                                     	cmovg  r15,rdx
 5b2ff0b95af:	41 2b f3                                        	sub    esi,r11d
 5b2ff0b95b2:	48 63 fe                                        	movsxd rdi,esi
 5b2ff0b95b5:	4c 8b df                                        	mov    r11,rdi
 5b2ff0b95b8:	49 c1 e3 08                                     	shl    r11,0x8
 5b2ff0b95bc:	4c 8b ca                                        	mov    r9,rdx
 5b2ff0b95bf:	85 f6                                           	test   esi,esi
 5b2ff0b95c1:	4d 0f 4c cb                                     	cmovl  r9,r11
 5b2ff0b95c5:	2b c8                                           	sub    ecx,eax
 5b2ff0b95c7:	48 63 c1                                        	movsxd rax,ecx
 5b2ff0b95ca:	4c 89 9d d8 fc ff ff                            	mov    QWORD PTR [rbp-0x328],r11
 5b2ff0b95d1:	4c 8b d8                                        	mov    r11,rax
 5b2ff0b95d4:	49 c1 e3 08                                     	shl    r11,0x8
 5b2ff0b95d8:	4c 89 9d d0 fc ff ff                            	mov    QWORD PTR [rbp-0x330],r11
 5b2ff0b95df:	49 f7 db                                        	neg    r11
 5b2ff0b95e2:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
 5b2ff0b95e9:	4c 8b ca                                        	mov    r9,rdx
 5b2ff0b95ec:	85 c9                                           	test   ecx,ecx
 5b2ff0b95ee:	4d 0f 4f cb                                     	cmovg  r9,r11
 5b2ff0b95f2:	4c 89 8d 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r9
 5b2ff0b95f9:	4c 8b 8d d8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x328]
 5b2ff0b9600:	85 f6                                           	test   esi,esi
 5b2ff0b9602:	4c 0f 4c ca                                     	cmovl  r9,rdx
 5b2ff0b9606:	85 c9                                           	test   ecx,ecx
 5b2ff0b9608:	4c 0f 4f da                                     	cmovg  r11,rdx
 5b2ff0b960c:	c4 e3 f9 16 c9 00                               	vpextrq rcx,xmm1,0x0
 5b2ff0b9612:	48 8b f1                                        	mov    rsi,rcx
 5b2ff0b9615:	48 c1 e6 08                                     	shl    rsi,0x8
 5b2ff0b9619:	4c 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r11
 5b2ff0b9620:	c4 41 79 7e f3                                  	vmovd  r11d,xmm14
 5b2ff0b9625:	4c 89 4d 98                                     	mov    QWORD PTR [rbp-0x68],r9
 5b2ff0b9629:	4c 8b ca                                        	mov    r9,rdx
 5b2ff0b962c:	45 85 db                                        	test   r11d,r11d
 5b2ff0b962f:	4c 0f 4c ce                                     	cmovl  r9,rsi
 5b2ff0b9633:	48 89 b5 a0 fc ff ff                            	mov    QWORD PTR [rbp-0x360],rsi
 5b2ff0b963a:	c4 e3 f9 16 ce 01                               	vpextrq rsi,xmm1,0x1
 5b2ff0b9640:	4c 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r9
 5b2ff0b9647:	4c 8b ce                                        	mov    r9,rsi
 5b2ff0b964a:	49 c1 e1 08                                     	shl    r9,0x8
 5b2ff0b964e:	4c 89 8d e8 fe ff ff                            	mov    QWORD PTR [rbp-0x118],r9
 5b2ff0b9655:	49 f7 d9                                        	neg    r9
 5b2ff0b9658:	4c 89 bd 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r15
 5b2ff0b965f:	c4 43 79 16 f7 01                               	vpextrd r15d,xmm14,0x1
 5b2ff0b9665:	48 89 9d 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rbx
 5b2ff0b966c:	48 8b da                                        	mov    rbx,rdx
 5b2ff0b966f:	45 85 ff                                        	test   r15d,r15d
 5b2ff0b9672:	49 0f 4f d9                                     	cmovg  rbx,r9
 5b2ff0b9676:	48 89 9d 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rbx
 5b2ff0b967d:	48 8b 9d a0 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x360]
 5b2ff0b9684:	45 85 db                                        	test   r11d,r11d
 5b2ff0b9687:	48 0f 4c da                                     	cmovl  rbx,rdx
 5b2ff0b968b:	45 85 ff                                        	test   r15d,r15d
 5b2ff0b968e:	4c 0f 4f ca                                     	cmovg  r9,rdx
 5b2ff0b9692:	47 8b 9c 20 a4 00 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0xa4]
 5b2ff0b969a:	c5 fb 11 75 80                                  	vmovsd QWORD PTR [rbp-0x80],xmm6
 5b2ff0b969f:	c5 f8 11 95 10 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x3f0],xmm2
 5b2ff0b96a7:	48 89 7d 90                                     	mov    QWORD PTR [rbp-0x70],rdi
 5b2ff0b96ab:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
 5b2ff0b96b2:	48 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rcx
 5b2ff0b96b9:	48 89 b5 c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],rsi
 5b2ff0b96c0:	45 85 db                                        	test   r11d,r11d
 5b2ff0b96c3:	0f 85 b6 00 00 00                               	jne    0x5b2ff0b977f
 5b2ff0b96c9:	47 8b bc 20 30 05 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x530]
 5b2ff0b96d1:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
 5b2ff0b96da:	0f 85 9f 00 00 00                               	jne    0x5b2ff0b977f
 5b2ff0b96e0:	47 8b bc 20 c8 3c 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3cc8]
 5b2ff0b96e8:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
 5b2ff0b96f1:	0f 85 88 00 00 00                               	jne    0x5b2ff0b977f
 5b2ff0b96f7:	47 8b bc 20 70 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3770]
 5b2ff0b96ff:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
 5b2ff0b9708:	0f 85 71 00 00 00                               	jne    0x5b2ff0b977f
 5b2ff0b970e:	47 8b bc 20 74 37 00 00                         	mov    r15d,DWORD PTR [r8+r12*1+0x3774]
 5b2ff0b9716:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
 5b2ff0b971f:	0f 85 5a 00 00 00                               	jne    0x5b2ff0b977f
 5b2ff0b9725:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
 5b2ff0b9729:	41 8b d7                                        	mov    edx,r15d
 5b2ff0b972c:	4c 89 9d 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],r11
 5b2ff0b9733:	45 8b 9c 10 30 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x130]
 5b2ff0b973b:	41 83 bc 10 30 01 00 00 00                      	cmp    DWORD PTR [r8+rdx*1+0x130],0x0
 5b2ff0b9744:	0f 84 16 00 00 00                               	je     0x5b2ff0b9760
 5b2ff0b974a:	45 8b 9c 10 34 01 00 00                         	mov    r11d,DWORD PTR [r8+rdx*1+0x134]
 5b2ff0b9752:	41 83 eb 01                                     	sub    r11d,0x1
 5b2ff0b9756:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0b975a:	0f 87 11 00 00 00                               	ja     0x5b2ff0b9771
 5b2ff0b9760:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff0b9765:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
 5b2ff0b976c:	e9 10 00 00 00                                  	jmp    0x5b2ff0b9781
 5b2ff0b9771:	33 d2                                           	xor    edx,edx
 5b2ff0b9773:	44 8b 9d 38 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xc8]
 5b2ff0b977a:	e9 02 00 00 00                                  	jmp    0x5b2ff0b9781
 5b2ff0b977f:	33 d2                                           	xor    edx,edx
 5b2ff0b9781:	4c 8b bd 30 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xd0]
 5b2ff0b9788:	4c 0f af bd 08 ff ff ff                         	imul   r15,QWORD PTR [rbp-0xf8]
 5b2ff0b9790:	48 89 95 e0 fe ff ff                            	mov    QWORD PTR [rbp-0x120],rdx
 5b2ff0b9797:	48 8b 55 88                                     	mov    rdx,QWORD PTR [rbp-0x78]
 5b2ff0b979b:	48 0f af 95 18 ff ff ff                         	imul   rdx,QWORD PTR [rbp-0xe8]
 5b2ff0b97a3:	48 89 95 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rdx
 5b2ff0b97aa:	48 8b 95 10 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xf0]
 5b2ff0b97b1:	48 0f af d0                                     	imul   rdx,rax
 5b2ff0b97b5:	48 8b 85 78 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x88]
 5b2ff0b97bc:	48 0f af c7                                     	imul   rax,rdi
 5b2ff0b97c0:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
 5b2ff0b97c7:	48 0f af fe                                     	imul   rdi,rsi
 5b2ff0b97cb:	48 8b b5 28 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xd8]
 5b2ff0b97d2:	48 0f af f1                                     	imul   rsi,rcx
 5b2ff0b97d6:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0b97db:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0b97e1:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0b97e7:	c4 41 2a 5e c9                                  	vdivss xmm9,xmm10,xmm9
 5b2ff0b97ec:	c4 41 78 28 c9                                  	vmovaps xmm9,xmm9
 5b2ff0b97f1:	48 8b 8d 10 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x1f0]
 5b2ff0b97f8:	c4 41 7a 10 64 08 1c                            	vmovss xmm12,DWORD PTR [r8+rcx*1+0x1c]
 5b2ff0b97ff:	48 89 7d 88                                     	mov    QWORD PTR [rbp-0x78],rdi
 5b2ff0b9803:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
 5b2ff0b980a:	c4 41 7a 10 6c 38 1c                            	vmovss xmm13,DWORD PTR [r8+rdi*1+0x1c]
 5b2ff0b9811:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
 5b2ff0b9818:	c4 41 7a 10 74 08 1c                            	vmovss xmm14,DWORD PTR [r8+rcx*1+0x1c]
 5b2ff0b981f:	48 8b 8d 70 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0x90]
 5b2ff0b9826:	48 8b bd 58 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa8]
 5b2ff0b982d:	48 03 f9                                        	add    rdi,rcx
 5b2ff0b9830:	48 89 bd 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rdi
 5b2ff0b9837:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
 5b2ff0b983e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
 5b2ff0b9845:	48 03 f9                                        	add    rdi,rcx
 5b2ff0b9848:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
 5b2ff0b984f:	48 8b bd b8 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x148]
 5b2ff0b9856:	48 8b 8d 48 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb8]
 5b2ff0b985d:	48 03 f9                                        	add    rdi,rcx
 5b2ff0b9860:	48 89 bd 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],rdi
 5b2ff0b9867:	48 8b bd b0 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x150]
 5b2ff0b986e:	48 8b 4d 98                                     	mov    rcx,QWORD PTR [rbp-0x68]
 5b2ff0b9872:	48 03 f9                                        	add    rdi,rcx
 5b2ff0b9875:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
 5b2ff0b9879:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
 5b2ff0b9880:	48 8b 8d c8 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x138]
 5b2ff0b9887:	48 03 f9                                        	add    rdi,rcx
 5b2ff0b988a:	49 03 d9                                        	add    rbx,r9
 5b2ff0b988d:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
 5b2ff0b9891:	43 8b 8c 08 38 01 00 00                         	mov    ecx,DWORD PTR [r8+r9*1+0x138]
 5b2ff0b9899:	c5 7b 11 8d 28 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d8],xmm9
 5b2ff0b98a1:	c5 7b 11 a5 e0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x220],xmm12
 5b2ff0b98a9:	c5 7b 11 ad 38 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1c8],xmm13
 5b2ff0b98b1:	c5 7b 11 b5 18 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1e8],xmm14
 5b2ff0b98b9:	4c 89 8d 60 fd ff ff                            	mov    QWORD PTR [rbp-0x2a0],r9
 5b2ff0b98c0:	43 83 bc 08 38 01 00 00 00                      	cmp    DWORD PTR [r8+r9*1+0x138],0x0
 5b2ff0b98c9:	0f 85 0a 00 00 00                               	jne    0x5b2ff0b98d9
 5b2ff0b98cf:	33 c9                                           	xor    ecx,ecx
 5b2ff0b98d1:	44 8b d9                                        	mov    r11d,ecx
 5b2ff0b98d4:	e9 47 01 00 00                                  	jmp    0x5b2ff0b9a20
 5b2ff0b98d9:	43 8b 8c 20 c8 3c 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x3cc8]
 5b2ff0b98e1:	43 83 bc 20 c8 3c 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3cc8],0x0
 5b2ff0b98ea:	75 e3                                           	jne    0x5b2ff0b98cf
 5b2ff0b98ec:	43 8b 8c 20 ec 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0xec]
 5b2ff0b98f4:	43 83 bc 20 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0xec],0x0
 5b2ff0b98fd:	75 d0                                           	jne    0x5b2ff0b98cf
 5b2ff0b98ff:	43 8b 8c 20 80 00 00 00                         	mov    ecx,DWORD PTR [r8+r12*1+0x80]
 5b2ff0b9907:	47 0b 9c 20 80 00 00 00                         	or     r11d,DWORD PTR [r8+r12*1+0x80]
 5b2ff0b990f:	0f 85 5c 00 00 00                               	jne    0x5b2ff0b9971
 5b2ff0b9915:	47 8b 9c 20 30 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x530]
 5b2ff0b991d:	43 83 bc 20 30 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x530],0x0
 5b2ff0b9926:	0f 85 45 00 00 00                               	jne    0x5b2ff0b9971
 5b2ff0b992c:	47 8b 9c 20 70 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3770]
 5b2ff0b9934:	43 83 bc 20 70 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3770],0x0
 5b2ff0b993d:	0f 85 2e 00 00 00                               	jne    0x5b2ff0b9971
 5b2ff0b9943:	47 8b 9c 20 74 37 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x3774]
 5b2ff0b994b:	43 83 bc 20 74 37 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x3774],0x0
 5b2ff0b9954:	0f 85 17 00 00 00                               	jne    0x5b2ff0b9971
 5b2ff0b995a:	47 8b 9c 20 20 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x520]
 5b2ff0b9962:	43 83 bc 20 20 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x520],0x0
 5b2ff0b996b:	0f 85 0d 00 00 00                               	jne    0x5b2ff0b997e
 5b2ff0b9971:	b9 01 00 00 00                                  	mov    ecx,0x1
 5b2ff0b9976:	45 33 db                                        	xor    r11d,r11d
 5b2ff0b9979:	e9 a2 00 00 00                                  	jmp    0x5b2ff0b9a20
 5b2ff0b997e:	47 8b 9c 20 24 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x524]
 5b2ff0b9986:	43 83 bc 20 24 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x524],0x0
 5b2ff0b998f:	74 e0                                           	je     0x5b2ff0b9971
 5b2ff0b9991:	47 8b 9c 20 28 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x528]
 5b2ff0b9999:	43 83 bc 20 28 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x528],0x0
 5b2ff0b99a2:	74 cd                                           	je     0x5b2ff0b9971
 5b2ff0b99a4:	47 8b 9c 20 2c 05 00 00                         	mov    r11d,DWORD PTR [r8+r12*1+0x52c]
 5b2ff0b99ac:	43 83 bc 20 2c 05 00 00 00                      	cmp    DWORD PTR [r8+r12*1+0x52c],0x0
 5b2ff0b99b5:	74 ba                                           	je     0x5b2ff0b9971
 5b2ff0b99b7:	47 8b 5c 20 74                                  	mov    r11d,DWORD PTR [r8+r12*1+0x74]
 5b2ff0b99bc:	43 83 7c 20 74 00                               	cmp    DWORD PTR [r8+r12*1+0x74],0x0
 5b2ff0b99c2:	0f 85 0d 00 00 00                               	jne    0x5b2ff0b99d5
 5b2ff0b99c8:	b9 01 00 00 00                                  	mov    ecx,0x1
 5b2ff0b99cd:	44 8b d9                                        	mov    r11d,ecx
 5b2ff0b99d0:	e9 4b 00 00 00                                  	jmp    0x5b2ff0b9a20
 5b2ff0b99d5:	47 8b 5c 20 78                                  	mov    r11d,DWORD PTR [r8+r12*1+0x78]
 5b2ff0b99da:	33 c9                                           	xor    ecx,ecx
 5b2ff0b99dc:	41 81 fb 02 03 00 00                            	cmp    r11d,0x302
 5b2ff0b99e3:	0f 95 c1                                        	setne  cl
 5b2ff0b99e6:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0b99ea:	41 0f 95 c3                                     	setne  r11b
 5b2ff0b99ee:	45 0f b6 db                                     	movzx  r11d,r11b
 5b2ff0b99f2:	44 85 d9                                        	test   ecx,r11d
 5b2ff0b99f5:	0f 85 76 ff ff ff                               	jne    0x5b2ff0b9971
 5b2ff0b99fb:	47 8b 5c 20 7c                                  	mov    r11d,DWORD PTR [r8+r12*1+0x7c]
 5b2ff0b9a00:	33 c9                                           	xor    ecx,ecx
 5b2ff0b9a02:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0b9a06:	0f 94 c1                                        	sete   cl
 5b2ff0b9a09:	41 81 fb 03 03 00 00                            	cmp    r11d,0x303
 5b2ff0b9a10:	41 0f 94 c3                                     	sete   r11b
 5b2ff0b9a14:	45 0f b6 db                                     	movzx  r11d,r11b
 5b2ff0b9a18:	44 0b d9                                        	or     r11d,ecx
 5b2ff0b9a1b:	b9 01 00 00 00                                  	mov    ecx,0x1
 5b2ff0b9a20:	4c 8b 85 30 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xd0]
 5b2ff0b9a27:	4d 2b c7                                        	sub    r8,r15
 5b2ff0b9a2a:	48 2b c2                                        	sub    rax,rdx
 5b2ff0b9a2d:	48 2b 75 88                                     	sub    rsi,QWORD PTR [rbp-0x78]
 5b2ff0b9a31:	44 8b 7d c8                                     	mov    r15d,DWORD PTR [rbp-0x38]
 5b2ff0b9a35:	41 8d 97 dc 36 00 00                            	lea    edx,[r15+0x36dc]
 5b2ff0b9a3c:	4c 89 9d c0 fc ff ff                            	mov    QWORD PTR [rbp-0x340],r11
 5b2ff0b9a43:	45 8d 9f 68 36 00 00                            	lea    r11d,[r15+0x3668]
 5b2ff0b9a4a:	48 89 95 08 fc ff ff                            	mov    QWORD PTR [rbp-0x3f8],rdx
 5b2ff0b9a51:	41 8d 97 f4 35 00 00                            	lea    edx,[r15+0x35f4]
 5b2ff0b9a58:	4c 8b 8d 20 ff ff ff                            	mov    r9,QWORD PTR [rbp-0xe0]
 5b2ff0b9a5f:	49 c1 e1 09                                     	shl    r9,0x9
 5b2ff0b9a63:	48 89 8d 78 fc ff ff                            	mov    QWORD PTR [rbp-0x388],rcx
 5b2ff0b9a6a:	48 8b 8d 18 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xe8]
 5b2ff0b9a71:	48 c1 e1 09                                     	shl    rcx,0x9
 5b2ff0b9a75:	4c 89 85 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r8
 5b2ff0b9a7c:	4c 8b 45 90                                     	mov    r8,QWORD PTR [rbp-0x70]
 5b2ff0b9a80:	49 c1 e0 09                                     	shl    r8,0x9
 5b2ff0b9a84:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
 5b2ff0b9a8b:	48 8b b5 c0 fe ff ff                            	mov    rsi,QWORD PTR [rbp-0x140]
 5b2ff0b9a92:	48 c1 e6 09                                     	shl    rsi,0x9
 5b2ff0b9a96:	4c 89 45 90                                     	mov    QWORD PTR [rbp-0x70],r8
 5b2ff0b9a9a:	4c 8b 85 08 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xf8]
 5b2ff0b9aa1:	49 c1 e0 09                                     	shl    r8,0x9
 5b2ff0b9aa5:	48 89 85 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rax
 5b2ff0b9aac:	48 8b 85 00 ff ff ff                            	mov    rax,QWORD PTR [rbp-0x100]
 5b2ff0b9ab3:	48 c1 e0 09                                     	shl    rax,0x9
 5b2ff0b9ab7:	4c 89 8d 78 ff ff ff                            	mov    QWORD PTR [rbp-0x88],r9
 5b2ff0b9abe:	4c 8b 8d f8 fc ff ff                            	mov    r9,QWORD PTR [rbp-0x308]
 5b2ff0b9ac5:	4c 2b 8d f0 fc ff ff                            	sub    r9,QWORD PTR [rbp-0x310]
 5b2ff0b9acc:	4c 89 9d 88 fc ff ff                            	mov    QWORD PTR [rbp-0x378],r11
 5b2ff0b9ad3:	4c 8b 9d d8 fc ff ff                            	mov    r11,QWORD PTR [rbp-0x328]
 5b2ff0b9ada:	4c 2b 9d d0 fc ff ff                            	sub    r11,QWORD PTR [rbp-0x330]
 5b2ff0b9ae1:	4c 89 85 48 ff ff ff                            	mov    QWORD PTR [rbp-0xb8],r8
 5b2ff0b9ae8:	44 8b 45 b0                                     	mov    r8d,DWORD PTR [rbp-0x50]
 5b2ff0b9aec:	4c 89 9d 58 fe ff ff                            	mov    QWORD PTR [rbp-0x1a8],r11
 5b2ff0b9af3:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
 5b2ff0b9af7:	44 8b 45 b8                                     	mov    r8d,DWORD PTR [rbp-0x48]
 5b2ff0b9afb:	4c 89 9d a8 fd ff ff                            	mov    QWORD PTR [rbp-0x258],r11
 5b2ff0b9b02:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
 5b2ff0b9b06:	44 8b 45 c0                                     	mov    r8d,DWORD PTR [rbp-0x40]
 5b2ff0b9b0a:	4c 89 9d 98 fd ff ff                            	mov    QWORD PTR [rbp-0x268],r11
 5b2ff0b9b11:	45 8d 58 50                                     	lea    r11d,[r8+0x50]
 5b2ff0b9b15:	45 8d 87 80 35 00 00                            	lea    r8d,[r15+0x3580]
 5b2ff0b9b1c:	4c 89 85 b8 fc ff ff                            	mov    QWORD PTR [rbp-0x348],r8
 5b2ff0b9b23:	45 8d 87 cc 3c 00 00                            	lea    r8d,[r15+0x3ccc]
 5b2ff0b9b2a:	48 f7 d7                                        	not    rdi
 5b2ff0b9b2d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
 5b2ff0b9b34:	49 f7 d7                                        	not    r15
 5b2ff0b9b37:	48 89 bd 08 ff ff ff                            	mov    QWORD PTR [rbp-0xf8],rdi
 5b2ff0b9b3e:	48 8b bd 68 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x98]
 5b2ff0b9b45:	48 f7 d7                                        	not    rdi
 5b2ff0b9b48:	48 f7 db                                        	neg    rbx
 5b2ff0b9b4b:	48 89 9d 48 fc ff ff                            	mov    QWORD PTR [rbp-0x3b8],rbx
 5b2ff0b9b52:	48 8b 9d 70 ff ff ff                            	mov    rbx,QWORD PTR [rbp-0x90]
 5b2ff0b9b59:	48 f7 db                                        	neg    rbx
 5b2ff0b9b5c:	48 89 bd 68 fc ff ff                            	mov    QWORD PTR [rbp-0x398],rdi
 5b2ff0b9b63:	48 8b 7d 98                                     	mov    rdi,QWORD PTR [rbp-0x68]
 5b2ff0b9b67:	48 f7 df                                        	neg    rdi
 5b2ff0b9b6a:	48 89 bd 20 fc ff ff                            	mov    QWORD PTR [rbp-0x3e0],rdi
 5b2ff0b9b71:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0b9b74:	4c 89 85 58 fc ff ff                            	mov    QWORD PTR [rbp-0x3a8],r8
 5b2ff0b9b7b:	44 8d 47 30                                     	lea    r8d,[rdi+0x30]
 5b2ff0b9b7f:	4c 89 85 c8 fc ff ff                            	mov    QWORD PTR [rbp-0x338],r8
 5b2ff0b9b86:	44 8d 47 20                                     	lea    r8d,[rdi+0x20]
 5b2ff0b9b8a:	4c 89 85 b0 fc ff ff                            	mov    QWORD PTR [rbp-0x350],r8
 5b2ff0b9b91:	44 8d 47 10                                     	lea    r8d,[rdi+0x10]
 5b2ff0b9b95:	c5 79 7e df                                     	vmovd  edi,xmm11
 5b2ff0b9b99:	48 89 bd 70 ff ff ff                            	mov    QWORD PTR [rbp-0x90],rdi
 5b2ff0b9ba0:	c4 63 79 16 df 01                               	vpextrd edi,xmm11,0x1
 5b2ff0b9ba6:	c4 62 79 18 de                                  	vbroadcastss xmm11,xmm6
 5b2ff0b9bab:	c4 c2 79 18 cc                                  	vbroadcastss xmm1,xmm12
 5b2ff0b9bb0:	c4 c2 79 18 dd                                  	vbroadcastss xmm3,xmm13
 5b2ff0b9bb5:	c4 c2 79 18 e6                                  	vbroadcastss xmm4,xmm14
 5b2ff0b9bba:	c4 c2 79 18 e9                                  	vbroadcastss xmm5,xmm9
 5b2ff0b9bbf:	48 89 95 90 fc ff ff                            	mov    QWORD PTR [rbp-0x370],rdx
 5b2ff0b9bc6:	48 89 4d 88                                     	mov    QWORD PTR [rbp-0x78],rcx
 5b2ff0b9bca:	48 89 b5 38 ff ff ff                            	mov    QWORD PTR [rbp-0xc8],rsi
 5b2ff0b9bd1:	48 89 85 58 ff ff ff                            	mov    QWORD PTR [rbp-0xa8],rax
 5b2ff0b9bd8:	4c 89 8d 50 fc ff ff                            	mov    QWORD PTR [rbp-0x3b0],r9
 5b2ff0b9bdf:	4c 89 9d 40 fc ff ff                            	mov    QWORD PTR [rbp-0x3c0],r11
 5b2ff0b9be6:	4c 89 bd c0 fe ff ff                            	mov    QWORD PTR [rbp-0x140],r15
 5b2ff0b9bed:	48 89 9d 90 fd ff ff                            	mov    QWORD PTR [rbp-0x270],rbx
 5b2ff0b9bf4:	4c 89 85 a8 fc ff ff                            	mov    QWORD PTR [rbp-0x358],r8
 5b2ff0b9bfb:	48 89 7d 98                                     	mov    QWORD PTR [rbp-0x68],rdi
 5b2ff0b9bff:	c5 78 11 9d 30 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2d0],xmm11
 5b2ff0b9c07:	c5 f8 11 8d 20 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2e0],xmm1
 5b2ff0b9c0f:	c5 f8 11 9d 10 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2f0],xmm3
 5b2ff0b9c17:	c5 f8 11 a5 e0 fc ff ff                         	vmovups XMMWORD PTR [rbp-0x320],xmm4
 5b2ff0b9c1f:	c5 f8 11 ad 00 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x300],xmm5
 5b2ff0b9c27:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0b9c2b:	e9 2d 00 00 00                                  	jmp    0x5b2ff0b9c5d
 5b2ff0b9c30:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0b9c39:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
 5b2ff0b9c40:	48 89 b5 38 fc ff ff                            	mov    QWORD PTR [rbp-0x3c8],rsi
 5b2ff0b9c47:	48 89 9d 80 fc ff ff                            	mov    QWORD PTR [rbp-0x380],rbx
 5b2ff0b9c4e:	4c 89 bd 10 ff ff ff                            	mov    QWORD PTR [rbp-0xf0],r15
 5b2ff0b9c55:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0b9c59:	4c 89 65 d8                                     	mov    QWORD PTR [rbp-0x28],r12
 5b2ff0b9c5d:	4c 89 4d a0                                     	mov    QWORD PTR [rbp-0x60],r9
 5b2ff0b9c61:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0b9c66:	0f 85 96 7d 00 00                               	jne    0x5b2ff0c1a02
 5b2ff0b9c6c:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
 5b2ff0b9c70:	b8 0f 00 00 00                                  	mov    eax,0xf
 5b2ff0b9c75:	be 03 00 00 00                                  	mov    esi,0x3
 5b2ff0b9c7a:	44 3b 45 98                                     	cmp    r8d,DWORD PTR [rbp-0x68]
 5b2ff0b9c7e:	0f 4c f0                                        	cmovl  esi,eax
 5b2ff0b9c81:	46 8d 1c 8d 00 00 00 00                         	lea    r11d,[r9*4+0x0]
 5b2ff0b9c89:	41 83 e3 7c                                     	and    r11d,0x7c
 5b2ff0b9c8d:	46 8d 0c 85 00 00 00 00                         	lea    r9d,[r8*4+0x0]
 5b2ff0b9c95:	41 83 e1 7c                                     	and    r9d,0x7c
 5b2ff0b9c99:	4c 89 85 28 ff ff ff                            	mov    QWORD PTR [rbp-0xd8],r8
 5b2ff0b9ca0:	48 89 b5 60 fc ff ff                            	mov    QWORD PTR [rbp-0x3a0],rsi
 5b2ff0b9ca7:	4c 89 9d 70 fc ff ff                            	mov    QWORD PTR [rbp-0x390],r11
 5b2ff0b9cae:	4c 89 8d 20 fe ff ff                            	mov    QWORD PTR [rbp-0x1e0],r9
 5b2ff0b9cb5:	4c 8b 95 38 fc ff ff                            	mov    r10,QWORD PTR [rbp-0x3c8]
 5b2ff0b9cbc:	4c 89 95 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],r10
 5b2ff0b9cc3:	4c 8b 95 10 ff ff ff                            	mov    r10,QWORD PTR [rbp-0xf0]
 5b2ff0b9cca:	4c 89 95 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],r10
 5b2ff0b9cd1:	4c 8b c8                                        	mov    r9,rax
 5b2ff0b9cd4:	48 8b 85 80 fc ff ff                            	mov    rax,QWORD PTR [rbp-0x380]
 5b2ff0b9cdb:	44 8b 45 a8                                     	mov    r8d,DWORD PTR [rbp-0x58]
 5b2ff0b9cdf:	e9 31 00 00 00                                  	jmp    0x5b2ff0b9d15
 5b2ff0b9ce4:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0b9ced:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0b9cf6:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0b9cff:	90                                              	nop
 5b2ff0b9d00:	48 89 bd 40 ff ff ff                            	mov    QWORD PTR [rbp-0xc0],rdi
 5b2ff0b9d07:	48 89 b5 50 ff ff ff                            	mov    QWORD PTR [rbp-0xb0],rsi
 5b2ff0b9d0e:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0b9d12:	45 8b c3                                        	mov    r8d,r11d
 5b2ff0b9d15:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
 5b2ff0b9d1c:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
 5b2ff0b9d23:	4c 89 85 68 ff ff ff                            	mov    QWORD PTR [rbp-0x98],r8
 5b2ff0b9d2a:	48 89 85 60 ff ff ff                            	mov    QWORD PTR [rbp-0xa0],rax
 5b2ff0b9d31:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0b9d36:	0f 85 0f 7d 00 00                               	jne    0x5b2ff0c1a4b
 5b2ff0b9d3c:	48 8b f0                                        	mov    rsi,rax
 5b2ff0b9d3f:	48 2b b5 98 fc ff ff                            	sub    rsi,QWORD PTR [rbp-0x368]
 5b2ff0b9d46:	48 3b b5 20 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x3e0]
 5b2ff0b9d4d:	0f 8c 4b 02 00 00                               	jl     0x5b2ff0b9f9e
 5b2ff0b9d53:	4c 8b a5 50 ff ff ff                            	mov    r12,QWORD PTR [rbp-0xb0]
 5b2ff0b9d5a:	4c 2b a5 30 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x3d0]
 5b2ff0b9d61:	4c 3b a5 90 fd ff ff                            	cmp    r12,QWORD PTR [rbp-0x270]
 5b2ff0b9d68:	0f 8c 30 02 00 00                               	jl     0x5b2ff0b9f9e
 5b2ff0b9d6e:	4c 8b bd 40 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xc0]
 5b2ff0b9d75:	4c 2b bd 28 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x3d8]
 5b2ff0b9d7c:	4c 3b bd 48 fc ff ff                            	cmp    r15,QWORD PTR [rbp-0x3b8]
 5b2ff0b9d83:	0f 8c 15 02 00 00                               	jl     0x5b2ff0b9f9e
 5b2ff0b9d89:	41 8d 40 01                                     	lea    eax,[r8+0x1]
 5b2ff0b9d8d:	41 b8 05 00 00 00                               	mov    r8d,0x5
 5b2ff0b9d93:	3b 85 70 ff ff ff                               	cmp    eax,DWORD PTR [rbp-0x90]
 5b2ff0b9d99:	45 0f 4c c1                                     	cmovl  r8d,r9d
 5b2ff0b9d9d:	8b 9d 60 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a0]
 5b2ff0b9da3:	41 23 d8                                        	and    ebx,r8d
 5b2ff0b9da6:	48 3b b5 68 fc ff ff                            	cmp    rsi,QWORD PTR [rbp-0x398]
 5b2ff0b9dad:	0f 8e 29 00 00 00                               	jle    0x5b2ff0b9ddc
 5b2ff0b9db3:	4c 3b a5 c0 fe ff ff                            	cmp    r12,QWORD PTR [rbp-0x140]
 5b2ff0b9dba:	0f 8e 1c 00 00 00                               	jle    0x5b2ff0b9ddc
 5b2ff0b9dc0:	4d 3b df                                        	cmp    r11,r15
 5b2ff0b9dc3:	0f 8d 13 00 00 00                               	jge    0x5b2ff0b9ddc
 5b2ff0b9dc9:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
 5b2ff0b9dd0:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
 5b2ff0b9dd7:	e9 d7 01 00 00                                  	jmp    0x5b2ff0b9fb3
 5b2ff0b9ddc:	c4 c1 f9 6e c4                                  	vmovq  xmm0,r12
 5b2ff0b9de1:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
 5b2ff0b9de5:	4d 8b c4                                        	mov    r8,r12
 5b2ff0b9de8:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
 5b2ff0b9def:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
 5b2ff0b9df5:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
 5b2ff0b9df9:	c5 c1 73 f7 1f                                  	vpsllq xmm7,xmm7,0x1f
 5b2ff0b9dfe:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0b9e02:	c4 62 79 37 df                                  	vpcmpgtq xmm11,xmm0,xmm7
 5b2ff0b9e07:	c5 21 df ff                                     	vpandn xmm15,xmm11,xmm7
 5b2ff0b9e0b:	c4 c1 79 db c3                                  	vpand  xmm0,xmm0,xmm11
 5b2ff0b9e10:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0b9e15:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
 5b2ff0b9e1a:	c4 c1 21 73 d3 21                               	vpsrlq xmm11,xmm11,0x21
 5b2ff0b9e20:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
 5b2ff0b9e25:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
 5b2ff0b9e2a:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
 5b2ff0b9e2f:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
 5b2ff0b9e33:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0b9e38:	4c 03 e7                                        	add    r12,rdi
 5b2ff0b9e3b:	c4 c1 f9 6e cc                                  	vmovq  xmm1,r12
 5b2ff0b9e40:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
 5b2ff0b9e44:	4c 03 c7                                        	add    r8,rdi
 5b2ff0b9e47:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
 5b2ff0b9e4d:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
 5b2ff0b9e52:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
 5b2ff0b9e56:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
 5b2ff0b9e5a:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff0b9e5f:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
 5b2ff0b9e64:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
 5b2ff0b9e69:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
 5b2ff0b9e6d:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff0b9e72:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
 5b2ff0b9e77:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
 5b2ff0b9e7b:	c4 e1 f9 6e c6                                  	vmovq  xmm0,rsi
 5b2ff0b9e80:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
 5b2ff0b9e84:	4c 8b e6                                        	mov    r12,rsi
 5b2ff0b9e87:	4c 2b a5 d0 fc ff ff                            	sub    r12,QWORD PTR [rbp-0x330]
 5b2ff0b9e8e:	c4 c3 f9 22 c4 01                               	vpinsrq xmm0,xmm0,r12,0x1
 5b2ff0b9e94:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
 5b2ff0b9e99:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
 5b2ff0b9e9d:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
 5b2ff0b9ea1:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0b9ea6:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
 5b2ff0b9eab:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
 5b2ff0b9eb0:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
 5b2ff0b9eb4:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0b9eb9:	48 8b bd d8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x328]
 5b2ff0b9ec0:	48 03 f7                                        	add    rsi,rdi
 5b2ff0b9ec3:	c4 e1 f9 6e ce                                  	vmovq  xmm1,rsi
 5b2ff0b9ec8:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
 5b2ff0b9ecc:	4c 03 e7                                        	add    r12,rdi
 5b2ff0b9ecf:	c4 c3 f1 22 cc 01                               	vpinsrq xmm1,xmm1,r12,0x1
 5b2ff0b9ed5:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
 5b2ff0b9eda:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
 5b2ff0b9ede:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
 5b2ff0b9ee2:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff0b9ee7:	c4 e2 21 37 d1                                  	vpcmpgtq xmm2,xmm11,xmm1
 5b2ff0b9eec:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
 5b2ff0b9ef1:	c5 f1 db ca                                     	vpand  xmm1,xmm1,xmm2
 5b2ff0b9ef5:	c4 c1 71 eb cf                                  	vpor   xmm1,xmm1,xmm15
 5b2ff0b9efa:	c5 f8 c6 c1 88                                  	vshufps xmm0,xmm0,xmm1,0x88
 5b2ff0b9eff:	c5 78 50 e0                                     	vmovmskps r12d,xmm0
 5b2ff0b9f03:	45 0b e0                                        	or     r12d,r8d
 5b2ff0b9f06:	c4 c1 f9 6e c7                                  	vmovq  xmm0,r15
 5b2ff0b9f0b:	c5 fb 12 c0                                     	vmovddup xmm0,xmm0
 5b2ff0b9f0f:	4d 8b c7                                        	mov    r8,r15
 5b2ff0b9f12:	4c 2b 85 e8 fe ff ff                            	sub    r8,QWORD PTR [rbp-0x118]
 5b2ff0b9f19:	c4 c3 f9 22 c0 01                               	vpinsrq xmm0,xmm0,r8,0x1
 5b2ff0b9f1f:	c4 e2 79 37 cf                                  	vpcmpgtq xmm1,xmm0,xmm7
 5b2ff0b9f24:	c5 71 df ff                                     	vpandn xmm15,xmm1,xmm7
 5b2ff0b9f28:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
 5b2ff0b9f2c:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0b9f31:	c4 e2 21 37 c8                                  	vpcmpgtq xmm1,xmm11,xmm0
 5b2ff0b9f36:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
 5b2ff0b9f3b:	c5 f9 db c1                                     	vpand  xmm0,xmm0,xmm1
 5b2ff0b9f3f:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0b9f44:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
 5b2ff0b9f4b:	4c 03 fe                                        	add    r15,rsi
 5b2ff0b9f4e:	c4 c1 f9 6e cf                                  	vmovq  xmm1,r15
 5b2ff0b9f53:	c5 fb 12 c9                                     	vmovddup xmm1,xmm1
 5b2ff0b9f57:	4c 03 c6                                        	add    r8,rsi
 5b2ff0b9f5a:	c4 c3 f1 22 c8 01                               	vpinsrq xmm1,xmm1,r8,0x1
 5b2ff0b9f60:	c4 e2 71 37 d7                                  	vpcmpgtq xmm2,xmm1,xmm7
 5b2ff0b9f65:	c5 69 df ff                                     	vpandn xmm15,xmm2,xmm7
 5b2ff0b9f69:	c5 f1 db fa                                     	vpand  xmm7,xmm1,xmm2
 5b2ff0b9f6d:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0b9f72:	c4 e2 21 37 cf                                  	vpcmpgtq xmm1,xmm11,xmm7
 5b2ff0b9f77:	c4 41 71 df fb                                  	vpandn xmm15,xmm1,xmm11
 5b2ff0b9f7c:	c5 c1 db f9                                     	vpand  xmm7,xmm7,xmm1
 5b2ff0b9f80:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0b9f85:	c5 f8 c6 c7 88                                  	vshufps xmm0,xmm0,xmm7,0x88
 5b2ff0b9f8a:	c5 78 50 c0                                     	vmovmskps r8d,xmm0
 5b2ff0b9f8e:	45 0b c4                                        	or     r8d,r12d
 5b2ff0b9f91:	41 83 f0 ff                                     	xor    r8d,0xffffffff
 5b2ff0b9f95:	44 23 c3                                        	and    r8d,ebx
 5b2ff0b9f98:	0f 85 12 00 00 00                               	jne    0x5b2ff0b9fb0
 5b2ff0b9f9e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0b9fa2:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0b9fa6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0b9fab:	e9 ba 77 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0b9fb0:	49 8b d8                                        	mov    rbx,r8
 5b2ff0b9fb3:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0b9fb6:	3b 45 10                                        	cmp    eax,DWORD PTR [rbp+0x10]
 5b2ff0b9fb9:	41 0f 9c c0                                     	setl   r8b
 5b2ff0b9fbd:	48 89 85 30 ff ff ff                            	mov    QWORD PTR [rbp-0xd0],rax
 5b2ff0b9fc4:	48 89 9d 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],rbx
 5b2ff0b9fcb:	44 8b a5 e0 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x120]
 5b2ff0b9fd2:	45 85 e0                                        	test   r8d,r12d
 5b2ff0b9fd5:	0f 85 6d 5b 00 00                               	jne    0x5b2ff0bfb48
 5b2ff0b9fdb:	83 bd 78 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x388],0x0
 5b2ff0b9fe2:	0f 85 70 2a 00 00                               	jne    0x5b2ff0bca58
 5b2ff0b9fe8:	f6 c3 01                                        	test   bl,0x1
 5b2ff0b9feb:	0f 85 28 00 00 00                               	jne    0x5b2ff0ba019
 5b2ff0b9ff1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0b9ff5:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
 5b2ff0b9ffb:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
 5b2ff0b9fff:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
 5b2ff0ba006:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
 5b2ff0ba00d:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
 5b2ff0ba014:	e9 86 0a 00 00                                  	jmp    0x5b2ff0baa9f
 5b2ff0ba019:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0ba01d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
 5b2ff0ba021:	43 8b bc 07 c8 3c 00 00                         	mov    edi,DWORD PTR [r15+r8*1+0x3cc8]
 5b2ff0ba029:	43 83 bc 07 c8 3c 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0x3cc8],0x0
 5b2ff0ba032:	0f 84 66 00 00 00                               	je     0x5b2ff0ba09e
 5b2ff0ba038:	8b bd 68 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x98]
 5b2ff0ba03e:	c1 ef 03                                        	shr    edi,0x3
 5b2ff0ba041:	83 e7 03                                        	and    edi,0x3
 5b2ff0ba044:	0b bd 70 fc ff ff                               	or     edi,DWORD PTR [rbp-0x390]
 5b2ff0ba04a:	44 8b 9d 58 fc ff ff                            	mov    r11d,DWORD PTR [rbp-0x3a8]
 5b2ff0ba051:	41 03 fb                                        	add    edi,r11d
 5b2ff0ba054:	41 0f b6 3c 3f                                  	movzx  edi,BYTE PTR [r15+rdi*1]
 5b2ff0ba059:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
 5b2ff0ba060:	41 83 e3 07                                     	and    r11d,0x7
 5b2ff0ba064:	41 8b cb                                        	mov    ecx,r11d
 5b2ff0ba067:	d3 e7                                           	shl    edi,cl
 5b2ff0ba069:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
 5b2ff0ba06d:	40 f6 c7 80                                     	test   dil,0x80
 5b2ff0ba071:	0f 85 20 00 00 00                               	jne    0x5b2ff0ba097
 5b2ff0ba077:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
 5b2ff0ba07d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
 5b2ff0ba084:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
 5b2ff0ba08b:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
 5b2ff0ba092:	e9 08 0a 00 00                                  	jmp    0x5b2ff0baa9f
 5b2ff0ba097:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
 5b2ff0ba09e:	c4 e1 82 2a 85 60 ff ff ff                      	vcvtsi2ss xmm0,xmm15,QWORD PTR [rbp-0xa0]
 5b2ff0ba0a7:	c5 b2 59 c0                                     	vmulss xmm0,xmm9,xmm0
 5b2ff0ba0ab:	c5 8a 59 c8                                     	vmulss xmm1,xmm14,xmm0
 5b2ff0ba0af:	c4 e1 82 2a bd 50 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xb0]
 5b2ff0ba0b8:	c5 b2 59 ff                                     	vmulss xmm7,xmm9,xmm7
 5b2ff0ba0bc:	c5 92 59 d7                                     	vmulss xmm2,xmm13,xmm7
 5b2ff0ba0c0:	c5 72 58 da                                     	vaddss xmm11,xmm1,xmm2
 5b2ff0ba0c4:	c5 2a 5c c8                                     	vsubss xmm9,xmm10,xmm0
 5b2ff0ba0c8:	c5 32 5c cf                                     	vsubss xmm9,xmm9,xmm7
 5b2ff0ba0cc:	c4 41 1a 59 e9                                  	vmulss xmm13,xmm12,xmm9
 5b2ff0ba0d1:	c4 41 22 58 dd                                  	vaddss xmm11,xmm11,xmm13
 5b2ff0ba0d6:	c4 41 78 2e c3                                  	vucomiss xmm8,xmm11
 5b2ff0ba0db:	73 9a                                           	jae    0x5b2ff0ba077
 5b2ff0ba0dd:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
 5b2ff0ba0e4:	c4 41 32 59 4c 3f 18                            	vmulss xmm9,xmm9,DWORD PTR [r15+rdi*1+0x18]
 5b2ff0ba0eb:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
 5b2ff0ba0f2:	c4 c1 7a 59 44 0f 18                            	vmulss xmm0,xmm0,DWORD PTR [r15+rcx*1+0x18]
 5b2ff0ba0f9:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
 5b2ff0ba100:	c4 81 42 59 7c 1f 18                            	vmulss xmm7,xmm7,DWORD PTR [r15+r11*1+0x18]
 5b2ff0ba107:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
 5b2ff0ba10b:	c5 b2 58 c0                                     	vaddss xmm0,xmm9,xmm0
 5b2ff0ba10f:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
 5b2ff0ba113:	47 8b 64 07 68                                  	mov    r12d,DWORD PTR [r15+r8*1+0x68]
 5b2ff0ba118:	43 83 7c 07 68 00                               	cmp    DWORD PTR [r15+r8*1+0x68],0x0
 5b2ff0ba11e:	0f 85 0b 00 00 00                               	jne    0x5b2ff0ba12f
 5b2ff0ba124:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
 5b2ff0ba12a:	e9 c5 00 00 00                                  	jmp    0x5b2ff0ba1f4
 5b2ff0ba12f:	47 8b a4 07 a4 00 00 00                         	mov    r12d,DWORD PTR [r15+r8*1+0xa4]
 5b2ff0ba137:	43 83 bc 07 a4 00 00 00 00                      	cmp    DWORD PTR [r15+r8*1+0xa4],0x0
 5b2ff0ba140:	75 e2                                           	jne    0x5b2ff0ba124
 5b2ff0ba142:	47 8b 64 07 0c                                  	mov    r12d,DWORD PTR [r15+r8*1+0xc]
 5b2ff0ba147:	43 8b 04 07                                     	mov    eax,DWORD PTR [r15+r8*1]
 5b2ff0ba14b:	0f af 45 a0                                     	imul   eax,DWORD PTR [rbp-0x60]
 5b2ff0ba14f:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
 5b2ff0ba153:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
 5b2ff0ba159:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
 5b2ff0ba15d:	c4 81 7a 10 3c 27                               	vmovss xmm7,DWORD PTR [r15+r12*1]
 5b2ff0ba163:	47 8b 64 07 6c                                  	mov    r12d,DWORD PTR [r15+r8*1+0x6c]
 5b2ff0ba168:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
 5b2ff0ba16f:	41 83 fc 08                                     	cmp    r12d,0x8
 5b2ff0ba173:	0f 83 0b 00 00 00                               	jae    0x5b2ff0ba184
 5b2ff0ba179:	4c 8d 15 e8 7c 00 00                            	lea    r10,[rip+0x7ce8]        # 0x5b2ff0c1e68
 5b2ff0ba180:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
 5b2ff0ba184:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0ba188:	0f 87 66 00 00 00                               	ja     0x5b2ff0ba1f4
 5b2ff0ba18e:	e9 0c 09 00 00                                  	jmp    0x5b2ff0baa9f
 5b2ff0ba193:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
 5b2ff0ba197:	0f 83 57 00 00 00                               	jae    0x5b2ff0ba1f4
 5b2ff0ba19d:	e9 fd 08 00 00                                  	jmp    0x5b2ff0baa9f
 5b2ff0ba1a2:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
 5b2ff0ba1a6:	0f 8a 48 00 00 00                               	jp     0x5b2ff0ba1f4
 5b2ff0ba1ac:	0f 84 ed 08 00 00                               	je     0x5b2ff0baa9f
 5b2ff0ba1b2:	e9 3d 00 00 00                                  	jmp    0x5b2ff0ba1f4
 5b2ff0ba1b7:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
 5b2ff0ba1bb:	0f 87 33 00 00 00                               	ja     0x5b2ff0ba1f4
 5b2ff0ba1c1:	e9 d9 08 00 00                                  	jmp    0x5b2ff0baa9f
 5b2ff0ba1c6:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0ba1ca:	0f 83 24 00 00 00                               	jae    0x5b2ff0ba1f4
 5b2ff0ba1d0:	e9 ca 08 00 00                                  	jmp    0x5b2ff0baa9f
 5b2ff0ba1d5:	c5 f8 2e c7                                     	vucomiss xmm0,xmm7
 5b2ff0ba1d9:	0f 8a c0 08 00 00                               	jp     0x5b2ff0baa9f
 5b2ff0ba1df:	0f 84 0f 00 00 00                               	je     0x5b2ff0ba1f4
 5b2ff0ba1e5:	e9 b5 08 00 00                                  	jmp    0x5b2ff0baa9f
 5b2ff0ba1ea:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0ba1ee:	0f 86 ab 08 00 00                               	jbe    0x5b2ff0baa9f
 5b2ff0ba1f4:	c4 c1 2a 5e fb                                  	vdivss xmm7,xmm10,xmm11
 5b2ff0ba1f9:	c5 f8 28 ff                                     	vmovaps xmm7,xmm7
 5b2ff0ba1fd:	c4 62 79 18 cf                                  	vbroadcastss xmm9,xmm7
 5b2ff0ba202:	c4 41 7a 6f 5c 3f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rdi*1+0x20]
 5b2ff0ba209:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
 5b2ff0ba211:	c4 c2 79 18 c5                                  	vbroadcastss xmm0,xmm13
 5b2ff0ba216:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
 5b2ff0ba21a:	c4 41 7a 6f 5c 0f 20                            	vmovdqu xmm11,XMMWORD PTR [r15+rcx*1+0x20]
 5b2ff0ba221:	c4 e2 79 18 f1                                  	vbroadcastss xmm6,xmm1
 5b2ff0ba226:	c5 a0 59 f6                                     	vmulps xmm6,xmm11,xmm6
 5b2ff0ba22a:	c4 62 79 18 da                                  	vbroadcastss xmm11,xmm2
 5b2ff0ba22f:	c5 fb 11 bd 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm7
 5b2ff0ba237:	c4 81 7a 6f 7c 1f 20                            	vmovdqu xmm7,XMMWORD PTR [r15+r11*1+0x20]
 5b2ff0ba23e:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
 5b2ff0ba242:	c5 c8 58 f7                                     	vaddps xmm6,xmm6,xmm7
 5b2ff0ba246:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff0ba24a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0ba24e:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
 5b2ff0ba252:	c4 81 7a 7f 84 27 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+r12*1+0x190],xmm0
 5b2ff0ba25c:	c4 c1 7a 10 b4 3f 98 00 00 00                   	vmovss xmm6,DWORD PTR [r15+rdi*1+0x98]
 5b2ff0ba266:	c4 c1 7a 10 bc 0f 98 00 00 00                   	vmovss xmm7,DWORD PTR [r15+rcx*1+0x98]
 5b2ff0ba270:	c4 01 7a 10 8c 1f 98 00 00 00                   	vmovss xmm9,DWORD PTR [r15+r11*1+0x98]
 5b2ff0ba27a:	c4 81 7a 7f 04 27                               	vmovdqu XMMWORD PTR [r15+r12*1],xmm0
 5b2ff0ba280:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0ba287:	45 8b 84 3f 34 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x134]
 5b2ff0ba28f:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
 5b2ff0ba293:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
 5b2ff0ba29b:	c5 fb 11 8d 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm1
 5b2ff0ba2a3:	c5 7b 11 ad 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm13
 5b2ff0ba2ab:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
 5b2ff0ba2b3:	c5 fb 11 bd b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm7
 5b2ff0ba2bb:	c5 7b 11 8d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm9
 5b2ff0ba2c3:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0ba2c7:	0f 86 5c 04 00 00                               	jbe    0x5b2ff0ba729
 5b2ff0ba2cd:	45 8b 84 3f 30 01 00 00                         	mov    r8d,DWORD PTR [r15+rdi*1+0x130]
 5b2ff0ba2d5:	41 83 bc 3f 30 01 00 00 00                      	cmp    DWORD PTR [r15+rdi*1+0x130],0x0
 5b2ff0ba2de:	0f 85 0b 00 00 00                               	jne    0x5b2ff0ba2ef
 5b2ff0ba2e4:	41 8b cc                                        	mov    ecx,r12d
 5b2ff0ba2e7:	4d 8b c7                                        	mov    r8,r15
 5b2ff0ba2ea:	e9 f9 04 00 00                                  	jmp    0x5b2ff0ba7e8
 5b2ff0ba2ef:	45 8d 84 24 90 00 00 00                         	lea    r8d,[r12+0x90]
 5b2ff0ba2f7:	45 8d 5c 24 70                                  	lea    r11d,[r12+0x70]
 5b2ff0ba2fc:	41 53                                           	push   r11
 5b2ff0ba2fe:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
 5b2ff0ba305:	44 8b 9d 30 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0xd0]
 5b2ff0ba30c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0ba310:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0ba313:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0ba316:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
 5b2ff0ba319:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0ba31c:	c4 c1 79 28 dd                                  	vmovapd xmm3,xmm13
 5b2ff0ba321:	c5 fb 10 a5 18 ff ff ff                         	vmovsd xmm4,QWORD PTR [rbp-0xe8]
 5b2ff0ba329:	45 8b c8                                        	mov    r9d,r8d
 5b2ff0ba32c:	e8 e7 0e f1 ff                                  	call   0x5b2fefcb218
 5b2ff0ba331:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0ba335:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0ba33c:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
 5b2ff0ba344:	45 85 db                                        	test   r11d,r11d
 5b2ff0ba347:	0f 85 62 01 00 00                               	jne    0x5b2ff0ba4af
 5b2ff0ba34d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0ba350:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
 5b2ff0ba355:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
 5b2ff0ba35b:	0f 84 43 00 00 00                               	je     0x5b2ff0ba3a4
 5b2ff0ba361:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0ba367:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0ba36b:	41 53                                           	push   r11
 5b2ff0ba36d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0ba371:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
 5b2ff0ba377:	33 d2                                           	xor    edx,edx
 5b2ff0ba379:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
 5b2ff0ba380:	e8 bb 0e f1 ff                                  	call   0x5b2fefcb240
 5b2ff0ba385:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0ba388:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0ba38c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0ba393:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0ba39d:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0ba3a4:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
 5b2ff0ba3a9:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
 5b2ff0ba3af:	0f 84 46 00 00 00                               	je     0x5b2ff0ba3fb
 5b2ff0ba3b5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0ba3bb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0ba3bf:	41 53                                           	push   r11
 5b2ff0ba3c1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0ba3c5:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
 5b2ff0ba3cb:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff0ba3d0:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
 5b2ff0ba3d7:	e8 64 0e f1 ff                                  	call   0x5b2fefcb240
 5b2ff0ba3dc:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0ba3df:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0ba3e3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0ba3ea:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0ba3f4:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0ba3fb:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
 5b2ff0ba400:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
 5b2ff0ba406:	0f 84 46 00 00 00                               	je     0x5b2ff0ba452
 5b2ff0ba40c:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0ba412:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0ba416:	41 53                                           	push   r11
 5b2ff0ba418:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0ba41c:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
 5b2ff0ba422:	ba 02 00 00 00                                  	mov    edx,0x2
 5b2ff0ba427:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
 5b2ff0ba42e:	e8 0d 0e f1 ff                                  	call   0x5b2fefcb240
 5b2ff0ba433:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0ba436:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0ba43a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0ba441:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0ba44b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0ba452:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
 5b2ff0ba457:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
 5b2ff0ba45d:	0f 84 85 03 00 00                               	je     0x5b2ff0ba7e8
 5b2ff0ba463:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0ba469:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0ba46d:	41 53                                           	push   r11
 5b2ff0ba46f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0ba473:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
 5b2ff0ba479:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff0ba47e:	44 8b 8d b8 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x148]
 5b2ff0ba485:	e8 b6 0d f1 ff                                  	call   0x5b2fefcb240
 5b2ff0ba48a:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0ba48d:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
 5b2ff0ba491:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
 5b2ff0ba497:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
 5b2ff0ba4a0:	4c 8b c7                                        	mov    r8,rdi
 5b2ff0ba4a3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0ba4aa:	e9 39 03 00 00                                  	jmp    0x5b2ff0ba7e8
 5b2ff0ba4af:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0ba4b2:	4d 8b e0                                        	mov    r12,r8
 5b2ff0ba4b5:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
 5b2ff0ba4bf:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
 5b2ff0ba4c5:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0ba4ca:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0ba4ce:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
 5b2ff0ba4d5:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0ba4d9:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0ba4dd:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
 5b2ff0ba4e7:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0ba4eb:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
 5b2ff0ba4f1:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0ba4f5:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
 5b2ff0ba4fa:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
 5b2ff0ba504:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0ba508:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
 5b2ff0ba50f:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
 5b2ff0ba513:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
 5b2ff0ba517:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
 5b2ff0ba51b:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0ba51f:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
 5b2ff0ba525:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0ba52a:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
 5b2ff0ba52e:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0ba532:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0ba537:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0ba53c:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
 5b2ff0ba540:	0f 87 09 00 00 00                               	ja     0x5b2ff0ba54f
 5b2ff0ba546:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0ba54a:	e9 04 00 00 00                                  	jmp    0x5b2ff0ba553
 5b2ff0ba54f:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0ba553:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0ba558:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff0ba55c:	0f 87 09 00 00 00                               	ja     0x5b2ff0ba56b
 5b2ff0ba562:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff0ba566:	e9 05 00 00 00                                  	jmp    0x5b2ff0ba570
 5b2ff0ba56b:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0ba570:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff0ba575:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0ba579:	0f 84 a4 00 00 00                               	je     0x5b2ff0ba623
 5b2ff0ba57f:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
 5b2ff0ba583:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
 5b2ff0ba58d:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0ba591:	0f 87 09 00 00 00                               	ja     0x5b2ff0ba5a0
 5b2ff0ba597:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0ba59b:	e9 04 00 00 00                                  	jmp    0x5b2ff0ba5a4
 5b2ff0ba5a0:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0ba5a4:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0ba5a8:	0f 87 0a 00 00 00                               	ja     0x5b2ff0ba5b8
 5b2ff0ba5ae:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0ba5b3:	e9 05 00 00 00                                  	jmp    0x5b2ff0ba5bd
 5b2ff0ba5b8:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0ba5bd:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
 5b2ff0ba5c1:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0ba5c6:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0ba5cb:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0ba5cf:	49 ba 00 00 80 3f 00 00 80 3f                   	movabs r10,0x3f8000003f800000
 5b2ff0ba5d9:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0ba5de:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0ba5e3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0ba5e7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
 5b2ff0ba5f1:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff0ba5f5:	0f 85 04 00 00 00                               	jne    0x5b2ff0ba5ff
 5b2ff0ba5fb:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
 5b2ff0ba5ff:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff0ba604:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0ba608:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0ba60c:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
 5b2ff0ba616:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0ba61b:	4d 8b df                                        	mov    r11,r15
 5b2ff0ba61e:	e9 cc 00 00 00                                  	jmp    0x5b2ff0ba6ef
 5b2ff0ba623:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
 5b2ff0ba62a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0ba62e:	0f 87 09 00 00 00                               	ja     0x5b2ff0ba63d
 5b2ff0ba634:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0ba638:	e9 04 00 00 00                                  	jmp    0x5b2ff0ba641
 5b2ff0ba63d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0ba641:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0ba645:	0f 87 0a 00 00 00                               	ja     0x5b2ff0ba655
 5b2ff0ba64b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0ba650:	e9 05 00 00 00                                  	jmp    0x5b2ff0ba65a
 5b2ff0ba655:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0ba65a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
 5b2ff0ba664:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
 5b2ff0ba66a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
 5b2ff0ba66f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0ba673:	0f 87 09 00 00 00                               	ja     0x5b2ff0ba682
 5b2ff0ba679:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff0ba67d:	e9 04 00 00 00                                  	jmp    0x5b2ff0ba686
 5b2ff0ba682:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff0ba686:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0ba68a:	0f 87 0a 00 00 00                               	ja     0x5b2ff0ba69a
 5b2ff0ba690:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff0ba695:	e9 05 00 00 00                                  	jmp    0x5b2ff0ba69f
 5b2ff0ba69a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0ba69f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
 5b2ff0ba6a9:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0ba6ae:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0ba6b2:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
 5b2ff0ba6bc:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0ba6c1:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0ba6c6:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0ba6ca:	4c 8b 15 00 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff00]        # 0x5b2ff0ba5d1
 5b2ff0ba6d1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0ba6d6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0ba6db:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0ba6df:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0ba6e3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0ba6e7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0ba6eb:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff0ba6ef:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0ba6f4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0ba6f8:	4c 8b 15 d2 fe ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffed2]        # 0x5b2ff0ba5d1
 5b2ff0ba6ff:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0ba704:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0ba709:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
 5b2ff0ba70d:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
 5b2ff0ba717:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
 5b2ff0ba721:	4d 8b c4                                        	mov    r8,r12
 5b2ff0ba724:	e9 bf 00 00 00                                  	jmp    0x5b2ff0ba7e8
 5b2ff0ba729:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
 5b2ff0ba730:	c4 81 7a 10 44 1f 50                            	vmovss xmm0,DWORD PTR [r15+r11*1+0x50]
 5b2ff0ba737:	c4 c1 7a 59 c5                                  	vmulss xmm0,xmm0,xmm13
 5b2ff0ba73c:	48 8b d1                                        	mov    rdx,rcx
 5b2ff0ba73f:	c4 41 7a 10 5c 17 50                            	vmovss xmm11,DWORD PTR [r15+rdx*1+0x50]
 5b2ff0ba746:	c5 22 59 d9                                     	vmulss xmm11,xmm11,xmm1
 5b2ff0ba74a:	48 8b 8d 00 fe ff ff                            	mov    rcx,QWORD PTR [rbp-0x200]
 5b2ff0ba751:	c4 c1 6a 59 74 0f 50                            	vmulss xmm6,xmm2,DWORD PTR [r15+rcx*1+0x50]
 5b2ff0ba758:	c5 a2 58 f6                                     	vaddss xmm6,xmm11,xmm6
 5b2ff0ba75c:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0ba760:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
 5b2ff0ba768:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0ba76c:	c4 01 7a 10 5c 1f 54                            	vmovss xmm11,DWORD PTR [r15+r11*1+0x54]
 5b2ff0ba773:	c4 41 22 59 dd                                  	vmulss xmm11,xmm11,xmm13
 5b2ff0ba778:	c5 fb 11 85 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm0
 5b2ff0ba780:	c4 c1 7a 10 44 17 54                            	vmovss xmm0,DWORD PTR [r15+rdx*1+0x54]
 5b2ff0ba787:	c5 fa 59 c1                                     	vmulss xmm0,xmm0,xmm1
 5b2ff0ba78b:	c4 c1 6a 59 7c 0f 54                            	vmulss xmm7,xmm2,DWORD PTR [r15+rcx*1+0x54]
 5b2ff0ba792:	c5 fa 58 c7                                     	vaddss xmm0,xmm0,xmm7
 5b2ff0ba796:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
 5b2ff0ba79a:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0ba79e:	41 8d bc 24 90 00 00 00                         	lea    edi,[r12+0x90]
 5b2ff0ba7a6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0ba7aa:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0ba7ad:	41 8b d0                                        	mov    edx,r8d
 5b2ff0ba7b0:	c5 fb 10 8d b8 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x148]
 5b2ff0ba7b8:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
 5b2ff0ba7bc:	41 8b cc                                        	mov    ecx,r12d
 5b2ff0ba7bf:	8b df                                           	mov    ebx,edi
 5b2ff0ba7c1:	e8 6a 0d f1 ff                                  	call   0x5b2fefcb530
 5b2ff0ba7c6:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0ba7c9:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0ba7cd:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
 5b2ff0ba7d7:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0ba7e1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0ba7e8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0ba7ec:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
 5b2ff0ba7f4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
 5b2ff0ba7fd:	0f 85 2a 00 00 00                               	jne    0x5b2ff0ba82d
 5b2ff0ba803:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0ba80d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0ba817:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0ba821:	49 8b fb                                        	mov    rdi,r11
 5b2ff0ba824:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0ba828:	e9 dd 01 00 00                                  	jmp    0x5b2ff0baa0a
 5b2ff0ba82d:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
 5b2ff0ba835:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
 5b2ff0ba83d:	c5 fb 10 b5 b0 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x150]
 5b2ff0ba845:	c5 ca 59 b5 30 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1d0]
 5b2ff0ba84d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
 5b2ff0ba855:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
 5b2ff0ba85d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff0ba861:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0ba865:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
 5b2ff0ba86d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0ba871:	4c 8b 15 37 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb37]        # 0x5b2ff0b93af
 5b2ff0ba878:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0ba87d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
 5b2ff0ba881:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0ba885:	0f 87 04 00 00 00                               	ja     0x5b2ff0ba88f
 5b2ff0ba88b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0ba88f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
 5b2ff0ba897:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
 5b2ff0ba89e:	0f 85 28 00 00 00                               	jne    0x5b2ff0ba8cc
 5b2ff0ba8a4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0ba8ae:	4c 8b 15 fa ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeafa]        # 0x5b2ff0b93af
 5b2ff0ba8b5:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0ba8ba:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
 5b2ff0ba8be:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0ba8c2:	e8 f1 2c f1 ff                                  	call   0x5b2fefcd5b8
 5b2ff0ba8c7:	e9 94 00 00 00                                  	jmp    0x5b2ff0ba960
 5b2ff0ba8cc:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0ba8d0:	0f 84 67 00 00 00                               	je     0x5b2ff0ba93d
 5b2ff0ba8d6:	4d 8b d0                                        	mov    r10,r8
 5b2ff0ba8d9:	4d 8b c3                                        	mov    r8,r11
 5b2ff0ba8dc:	4d 8b da                                        	mov    r11,r10
 5b2ff0ba8df:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
 5b2ff0ba8e9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
 5b2ff0ba8f3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
 5b2ff0ba8f8:	7a 06                                           	jp     0x5b2ff0ba900
 5b2ff0ba8fa:	0f 84 2a 00 00 00                               	je     0x5b2ff0ba92a
 5b2ff0ba900:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff0ba904:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
 5b2ff0ba909:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
 5b2ff0ba90d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
 5b2ff0ba911:	0f 86 49 00 00 00                               	jbe    0x5b2ff0ba960
 5b2ff0ba917:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0ba91b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0ba920:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0ba925:	e9 5b 00 00 00                                  	jmp    0x5b2ff0ba985
 5b2ff0ba92a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0ba92e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0ba933:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0ba938:	e9 44 00 00 00                                  	jmp    0x5b2ff0ba981
 5b2ff0ba93d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0ba947:	4c 8b 15 61 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea61]        # 0x5b2ff0b93af
 5b2ff0ba94e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0ba953:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
 5b2ff0ba957:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0ba95b:	e8 58 2c f1 ff                                  	call   0x5b2fefcd5b8
 5b2ff0ba960:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0ba964:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0ba969:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0ba96e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
 5b2ff0ba972:	0f 87 09 00 00 00                               	ja     0x5b2ff0ba981
 5b2ff0ba978:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
 5b2ff0ba97c:	e9 04 00 00 00                                  	jmp    0x5b2ff0ba985
 5b2ff0ba981:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0ba985:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0ba988:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0ba98c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0ba996:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
 5b2ff0ba99a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
 5b2ff0ba99e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
 5b2ff0ba9a8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
 5b2ff0ba9ad:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
 5b2ff0ba9b7:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0ba9c1:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
 5b2ff0ba9cb:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
 5b2ff0ba9d0:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
 5b2ff0ba9da:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0ba9e4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
 5b2ff0ba9ee:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
 5b2ff0ba9f3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
 5b2ff0ba9fd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff0baa01:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0baa05:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff0baa0a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
 5b2ff0baa14:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0baa18:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0baa1b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0baa21:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff0baa24:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
 5b2ff0baa2c:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
 5b2ff0baa30:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
 5b2ff0baa34:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
 5b2ff0baa39:	e8 22 08 f1 ff                                  	call   0x5b2fefcb260
 5b2ff0baa3e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0baa42:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0baa47:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
 5b2ff0baa4d:	4c 8b 7d d8                                     	mov    r15,QWORD PTR [rbp-0x28]
 5b2ff0baa51:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0baa56:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0baa5c:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0baa62:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0baa67:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
 5b2ff0baa6e:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
 5b2ff0baa75:	48 8b 8d e8 fd ff ff                            	mov    rcx,QWORD PTR [rbp-0x218]
 5b2ff0baa7c:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
 5b2ff0baa82:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0baa8a:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0baa92:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
 5b2ff0baa99:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0baa9f:	f6 c3 02                                        	test   bl,0x2
 5b2ff0baaa2:	0f 85 26 00 00 00                               	jne    0x5b2ff0baace
 5b2ff0baaa8:	4d 8b e7                                        	mov    r12,r15
 5b2ff0baaab:	4c 8b f9                                        	mov    r15,rcx
 5b2ff0baaae:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
 5b2ff0baab4:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0baabc:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0baac4:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
 5b2ff0baac9:	e9 b5 0a 00 00                                  	jmp    0x5b2ff0bb583
 5b2ff0baace:	4d 8b e7                                        	mov    r12,r15
 5b2ff0baad1:	47 8b bc 04 c8 3c 00 00                         	mov    r15d,DWORD PTR [r12+r8*1+0x3cc8]
 5b2ff0baad9:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
 5b2ff0baae2:	0f 84 75 00 00 00                               	je     0x5b2ff0bab5d
 5b2ff0baae8:	44 8b bd 30 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xd0]
 5b2ff0baaef:	41 c1 ef 03                                     	shr    r15d,0x3
 5b2ff0baaf3:	41 83 e7 03                                     	and    r15d,0x3
 5b2ff0baaf7:	8b 95 70 fc ff ff                               	mov    edx,DWORD PTR [rbp-0x390]
 5b2ff0baafd:	41 0b d7                                        	or     edx,r15d
 5b2ff0bab00:	44 8b bd 58 fc ff ff                            	mov    r15d,DWORD PTR [rbp-0x3a8]
 5b2ff0bab07:	41 03 d7                                        	add    edx,r15d
 5b2ff0bab0a:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
 5b2ff0bab0f:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
 5b2ff0bab15:	83 e0 07                                        	and    eax,0x7
 5b2ff0bab18:	4c 8b d1                                        	mov    r10,rcx
 5b2ff0bab1b:	8b c8                                           	mov    ecx,eax
 5b2ff0bab1d:	49 8b c2                                        	mov    rax,r10
 5b2ff0bab20:	d3 e2                                           	shl    edx,cl
 5b2ff0bab22:	f6 c2 80                                        	test   dl,0x80
 5b2ff0bab25:	0f 85 29 00 00 00                               	jne    0x5b2ff0bab54
 5b2ff0bab2b:	4c 8b f8                                        	mov    r15,rax
 5b2ff0bab2e:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
 5b2ff0bab34:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
 5b2ff0bab3a:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bab42:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0bab4a:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
 5b2ff0bab4f:	e9 2f 0a 00 00                                  	jmp    0x5b2ff0bb583
 5b2ff0bab54:	48 8b c8                                        	mov    rcx,rax
 5b2ff0bab57:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
 5b2ff0bab5d:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
 5b2ff0bab64:	4c 2b bd d0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x330]
 5b2ff0bab6b:	c4 c1 82 2a c7                                  	vcvtsi2ss xmm0,xmm15,r15
 5b2ff0bab70:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bab78:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
 5b2ff0bab7c:	c4 41 79 28 ce                                  	vmovapd xmm9,xmm14
 5b2ff0bab81:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
 5b2ff0bab85:	4c 8b bd 50 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xb0]
 5b2ff0bab8c:	4c 2b bd f0 fc ff ff                            	sub    r15,QWORD PTR [rbp-0x310]
 5b2ff0bab93:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
 5b2ff0bab98:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
 5b2ff0bab9d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0baba5:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
 5b2ff0babaa:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
 5b2ff0babae:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
 5b2ff0babb2:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
 5b2ff0babb7:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
 5b2ff0babbb:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
 5b2ff0babbf:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
 5b2ff0babc4:	0f 83 b0 09 00 00                               	jae    0x5b2ff0bb57a
 5b2ff0babca:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
 5b2ff0babd1:	4c 8b f9                                        	mov    r15,rcx
 5b2ff0babd4:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
 5b2ff0babdb:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
 5b2ff0babe2:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
 5b2ff0babe7:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
 5b2ff0babeb:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
 5b2ff0babef:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
 5b2ff0babf4:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
 5b2ff0babfa:	0f 85 0b 00 00 00                               	jne    0x5b2ff0bac0b
 5b2ff0bac00:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
 5b2ff0bac06:	e9 c5 00 00 00                                  	jmp    0x5b2ff0bacd0
 5b2ff0bac0b:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
 5b2ff0bac13:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
 5b2ff0bac1c:	75 e2                                           	jne    0x5b2ff0bac00
 5b2ff0bac1e:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
 5b2ff0bac23:	43 8b 0c 04                                     	mov    ecx,DWORD PTR [r12+r8*1]
 5b2ff0bac27:	0f af 4d a0                                     	imul   ecx,DWORD PTR [rbp-0x60]
 5b2ff0bac2b:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
 5b2ff0bac2e:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
 5b2ff0bac34:	8d 14 8a                                        	lea    edx,[rdx+rcx*4]
 5b2ff0bac37:	c4 41 7a 10 1c 14                               	vmovss xmm11,DWORD PTR [r12+rdx*1]
 5b2ff0bac3d:	43 8b 54 04 6c                                  	mov    edx,DWORD PTR [r12+r8*1+0x6c]
 5b2ff0bac42:	81 ea 00 02 00 00                               	sub    edx,0x200
 5b2ff0bac48:	83 fa 08                                        	cmp    edx,0x8
 5b2ff0bac4b:	0f 83 0b 00 00 00                               	jae    0x5b2ff0bac5c
 5b2ff0bac51:	4c 8d 15 d0 71 00 00                            	lea    r10,[rip+0x71d0]        # 0x5b2ff0c1e28
 5b2ff0bac58:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
 5b2ff0bac5c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0bac60:	0f 87 6a 00 00 00                               	ja     0x5b2ff0bacd0
 5b2ff0bac66:	e9 18 09 00 00                                  	jmp    0x5b2ff0bb583
 5b2ff0bac6b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bac70:	0f 83 5a 00 00 00                               	jae    0x5b2ff0bacd0
 5b2ff0bac76:	e9 08 09 00 00                                  	jmp    0x5b2ff0bb583
 5b2ff0bac7b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bac80:	0f 8a 4a 00 00 00                               	jp     0x5b2ff0bacd0
 5b2ff0bac86:	0f 84 f7 08 00 00                               	je     0x5b2ff0bb583
 5b2ff0bac8c:	e9 3f 00 00 00                                  	jmp    0x5b2ff0bacd0
 5b2ff0bac91:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bac96:	0f 87 34 00 00 00                               	ja     0x5b2ff0bacd0
 5b2ff0bac9c:	e9 e2 08 00 00                                  	jmp    0x5b2ff0bb583
 5b2ff0baca1:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0baca5:	0f 83 25 00 00 00                               	jae    0x5b2ff0bacd0
 5b2ff0bacab:	e9 d3 08 00 00                                  	jmp    0x5b2ff0bb583
 5b2ff0bacb0:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bacb5:	0f 8a c8 08 00 00                               	jp     0x5b2ff0bb583
 5b2ff0bacbb:	0f 84 0f 00 00 00                               	je     0x5b2ff0bacd0
 5b2ff0bacc1:	e9 bd 08 00 00                                  	jmp    0x5b2ff0bb583
 5b2ff0bacc6:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0bacca:	0f 86 b3 08 00 00                               	jbe    0x5b2ff0bb583
 5b2ff0bacd0:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
 5b2ff0bacd5:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
 5b2ff0bacda:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
 5b2ff0bacdf:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
 5b2ff0bace6:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
 5b2ff0baceb:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
 5b2ff0bacef:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
 5b2ff0bacf6:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
 5b2ff0bacfe:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff0bad03:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
 5b2ff0bad07:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
 5b2ff0bad0c:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
 5b2ff0bad13:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
 5b2ff0bad17:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff0bad1b:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
 5b2ff0bad1f:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
 5b2ff0bad23:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
 5b2ff0bad26:	c4 c1 7a 7f 84 14 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rdx*1+0x190],xmm0
 5b2ff0bad30:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
 5b2ff0bad3a:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
 5b2ff0bad44:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
 5b2ff0bad4e:	c4 c1 7a 7f 04 14                               	vmovdqu XMMWORD PTR [r12+rdx*1],xmm0
 5b2ff0bad54:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bad5b:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
 5b2ff0bad63:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
 5b2ff0bad67:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
 5b2ff0bad6f:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
 5b2ff0bad77:	c5 fb 11 a5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm4
 5b2ff0bad7f:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
 5b2ff0bad87:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
 5b2ff0bad8f:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
 5b2ff0bad97:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
 5b2ff0bad9f:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0bada3:	0f 86 4b 04 00 00                               	jbe    0x5b2ff0bb1f4
 5b2ff0bada9:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
 5b2ff0badb1:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
 5b2ff0badba:	0f 85 0a 00 00 00                               	jne    0x5b2ff0badca
 5b2ff0badc0:	8b ca                                           	mov    ecx,edx
 5b2ff0badc2:	4d 8b c4                                        	mov    r8,r12
 5b2ff0badc5:	e9 de 04 00 00                                  	jmp    0x5b2ff0bb2a8
 5b2ff0badca:	44 8d 82 90 00 00 00                            	lea    r8d,[rdx+0x90]
 5b2ff0badd1:	44 8d 5a 70                                     	lea    r11d,[rdx+0x70]
 5b2ff0badd5:	41 53                                           	push   r11
 5b2ff0badd7:	4c 89 85 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r8
 5b2ff0badde:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bade2:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0bade5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0bade8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
 5b2ff0badeb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0badee:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
 5b2ff0badf2:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0badf7:	45 8b c8                                        	mov    r9d,r8d
 5b2ff0badfa:	e8 19 04 f1 ff                                  	call   0x5b2fefcb218
 5b2ff0badff:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bae03:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bae0a:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
 5b2ff0bae12:	45 85 db                                        	test   r11d,r11d
 5b2ff0bae15:	0f 85 62 01 00 00                               	jne    0x5b2ff0baf7d
 5b2ff0bae1b:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bae1e:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
 5b2ff0bae23:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
 5b2ff0bae29:	0f 84 43 00 00 00                               	je     0x5b2ff0bae72
 5b2ff0bae2f:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bae35:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bae39:	41 53                                           	push   r11
 5b2ff0bae3b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bae3f:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
 5b2ff0bae45:	33 d2                                           	xor    edx,edx
 5b2ff0bae47:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
 5b2ff0bae4e:	e8 ed 03 f1 ff                                  	call   0x5b2fefcb240
 5b2ff0bae53:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bae56:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bae5a:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0bae61:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bae6b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bae72:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
 5b2ff0bae77:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
 5b2ff0bae7d:	0f 84 46 00 00 00                               	je     0x5b2ff0baec9
 5b2ff0bae83:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bae89:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bae8d:	41 53                                           	push   r11
 5b2ff0bae8f:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bae93:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
 5b2ff0bae99:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff0bae9e:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
 5b2ff0baea5:	e8 96 03 f1 ff                                  	call   0x5b2fefcb240
 5b2ff0baeaa:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0baead:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0baeb1:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0baeb8:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0baec2:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0baec9:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
 5b2ff0baece:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
 5b2ff0baed4:	0f 84 46 00 00 00                               	je     0x5b2ff0baf20
 5b2ff0baeda:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0baee0:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0baee4:	41 53                                           	push   r11
 5b2ff0baee6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0baeea:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
 5b2ff0baef0:	ba 02 00 00 00                                  	mov    edx,0x2
 5b2ff0baef5:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
 5b2ff0baefc:	e8 3f 03 f1 ff                                  	call   0x5b2fefcb240
 5b2ff0baf01:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0baf04:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0baf08:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0baf0f:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0baf19:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0baf20:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
 5b2ff0baf25:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
 5b2ff0baf2b:	0f 84 77 03 00 00                               	je     0x5b2ff0bb2a8
 5b2ff0baf31:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0baf37:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0baf3b:	41 53                                           	push   r11
 5b2ff0baf3d:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0baf41:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
 5b2ff0baf47:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff0baf4c:	44 8b 8d 30 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1d0]
 5b2ff0baf53:	e8 e8 02 f1 ff                                  	call   0x5b2fefcb240
 5b2ff0baf58:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0baf5b:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
 5b2ff0baf5f:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
 5b2ff0baf65:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
 5b2ff0baf6e:	4c 8b c7                                        	mov    r8,rdi
 5b2ff0baf71:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0baf78:	e9 2b 03 00 00                                  	jmp    0x5b2ff0bb2a8
 5b2ff0baf7d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0baf80:	4d 8b e0                                        	mov    r12,r8
 5b2ff0baf83:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
 5b2ff0baf8d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
 5b2ff0baf93:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0baf98:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0baf9c:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
 5b2ff0bafa3:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0bafa7:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0bafab:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
 5b2ff0bafb5:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0bafb9:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
 5b2ff0bafbf:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0bafc3:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
 5b2ff0bafc8:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
 5b2ff0bafd2:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0bafd6:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
 5b2ff0bafdd:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
 5b2ff0bafe1:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
 5b2ff0bafe5:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
 5b2ff0bafe9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bafed:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
 5b2ff0baff3:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0baff8:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
 5b2ff0baffc:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0bb000:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0bb005:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0bb00a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
 5b2ff0bb00e:	0f 87 09 00 00 00                               	ja     0x5b2ff0bb01d
 5b2ff0bb014:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0bb018:	e9 04 00 00 00                                  	jmp    0x5b2ff0bb021
 5b2ff0bb01d:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0bb021:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bb026:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff0bb02a:	0f 87 09 00 00 00                               	ja     0x5b2ff0bb039
 5b2ff0bb030:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff0bb034:	e9 05 00 00 00                                  	jmp    0x5b2ff0bb03e
 5b2ff0bb039:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0bb03e:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff0bb043:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0bb047:	0f 84 a1 00 00 00                               	je     0x5b2ff0bb0ee
 5b2ff0bb04d:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
 5b2ff0bb051:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
 5b2ff0bb05b:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bb05f:	0f 87 09 00 00 00                               	ja     0x5b2ff0bb06e
 5b2ff0bb065:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0bb069:	e9 04 00 00 00                                  	jmp    0x5b2ff0bb072
 5b2ff0bb06e:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0bb072:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bb076:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bb086
 5b2ff0bb07c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0bb081:	e9 05 00 00 00                                  	jmp    0x5b2ff0bb08b
 5b2ff0bb086:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bb08b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
 5b2ff0bb08f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bb094:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0bb099:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bb09d:	4c 8b 15 2d f5 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff52d]        # 0x5b2ff0ba5d1
 5b2ff0bb0a4:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0bb0a9:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0bb0ae:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0bb0b2:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
 5b2ff0bb0bc:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff0bb0c0:	0f 85 04 00 00 00                               	jne    0x5b2ff0bb0ca
 5b2ff0bb0c6:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
 5b2ff0bb0ca:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff0bb0cf:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bb0d3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0bb0d7:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
 5b2ff0bb0e1:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0bb0e6:	4d 8b df                                        	mov    r11,r15
 5b2ff0bb0e9:	e9 cc 00 00 00                                  	jmp    0x5b2ff0bb1ba
 5b2ff0bb0ee:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
 5b2ff0bb0f5:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bb0f9:	0f 87 09 00 00 00                               	ja     0x5b2ff0bb108
 5b2ff0bb0ff:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0bb103:	e9 04 00 00 00                                  	jmp    0x5b2ff0bb10c
 5b2ff0bb108:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0bb10c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bb110:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bb120
 5b2ff0bb116:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0bb11b:	e9 05 00 00 00                                  	jmp    0x5b2ff0bb125
 5b2ff0bb120:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bb125:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
 5b2ff0bb12f:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
 5b2ff0bb135:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
 5b2ff0bb13a:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bb13e:	0f 87 09 00 00 00                               	ja     0x5b2ff0bb14d
 5b2ff0bb144:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff0bb148:	e9 04 00 00 00                                  	jmp    0x5b2ff0bb151
 5b2ff0bb14d:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff0bb151:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bb155:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bb165
 5b2ff0bb15b:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff0bb160:	e9 05 00 00 00                                  	jmp    0x5b2ff0bb16a
 5b2ff0bb165:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bb16a:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
 5b2ff0bb174:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bb179:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0bb17d:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
 5b2ff0bb187:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0bb18c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0bb191:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0bb195:	4c 8b 15 35 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff435]        # 0x5b2ff0ba5d1
 5b2ff0bb19c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0bb1a1:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0bb1a6:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0bb1aa:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0bb1ae:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0bb1b2:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0bb1b6:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff0bb1ba:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0bb1bf:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bb1c3:	4c 8b 15 07 f4 ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffff407]        # 0x5b2ff0ba5d1
 5b2ff0bb1ca:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0bb1cf:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0bb1d4:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
 5b2ff0bb1d8:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
 5b2ff0bb1e2:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
 5b2ff0bb1ec:	4d 8b c4                                        	mov    r8,r12
 5b2ff0bb1ef:	e9 b4 00 00 00                                  	jmp    0x5b2ff0bb2a8
 5b2ff0bb1f4:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
 5b2ff0bb1fb:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
 5b2ff0bb202:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
 5b2ff0bb206:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
 5b2ff0bb20d:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0bb211:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
 5b2ff0bb218:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
 5b2ff0bb21f:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
 5b2ff0bb223:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bb227:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
 5b2ff0bb22c:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bb230:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
 5b2ff0bb237:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
 5b2ff0bb23b:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
 5b2ff0bb242:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0bb246:	c5 fb 11 85 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm0
 5b2ff0bb24e:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
 5b2ff0bb255:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
 5b2ff0bb259:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
 5b2ff0bb25d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bb261:	8d ba 90 00 00 00                               	lea    edi,[rdx+0x90]
 5b2ff0bb267:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb26b:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0bb26e:	8b ca                                           	mov    ecx,edx
 5b2ff0bb270:	41 8b d0                                        	mov    edx,r8d
 5b2ff0bb273:	c5 fb 10 8d 30 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x1d0]
 5b2ff0bb27b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
 5b2ff0bb27f:	8b df                                           	mov    ebx,edi
 5b2ff0bb281:	e8 aa 02 f1 ff                                  	call   0x5b2fefcb530
 5b2ff0bb286:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bb289:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bb28d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
 5b2ff0bb297:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bb2a1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bb2a8:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0bb2ac:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
 5b2ff0bb2b4:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
 5b2ff0bb2bd:	0f 85 2a 00 00 00                               	jne    0x5b2ff0bb2ed
 5b2ff0bb2c3:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0bb2cd:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0bb2d7:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0bb2e1:	49 8b fb                                        	mov    rdi,r11
 5b2ff0bb2e4:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0bb2e8:	e9 dd 01 00 00                                  	jmp    0x5b2ff0bb4ca
 5b2ff0bb2ed:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
 5b2ff0bb2f5:	c5 fa 59 85 08 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1f8]
 5b2ff0bb2fd:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
 5b2ff0bb305:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
 5b2ff0bb30d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
 5b2ff0bb315:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
 5b2ff0bb31d:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff0bb321:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bb325:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
 5b2ff0bb32d:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bb331:	4c 8b 15 77 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe077]        # 0x5b2ff0b93af
 5b2ff0bb338:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0bb33d:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
 5b2ff0bb341:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0bb345:	0f 87 04 00 00 00                               	ja     0x5b2ff0bb34f
 5b2ff0bb34b:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0bb34f:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
 5b2ff0bb357:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
 5b2ff0bb35e:	0f 85 28 00 00 00                               	jne    0x5b2ff0bb38c
 5b2ff0bb364:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0bb36e:	4c 8b 15 3a e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe03a]        # 0x5b2ff0b93af
 5b2ff0bb375:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0bb37a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
 5b2ff0bb37e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb382:	e8 31 22 f1 ff                                  	call   0x5b2fefcd5b8
 5b2ff0bb387:	e9 94 00 00 00                                  	jmp    0x5b2ff0bb420
 5b2ff0bb38c:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0bb390:	0f 84 67 00 00 00                               	je     0x5b2ff0bb3fd
 5b2ff0bb396:	4d 8b d0                                        	mov    r10,r8
 5b2ff0bb399:	4d 8b c3                                        	mov    r8,r11
 5b2ff0bb39c:	4d 8b da                                        	mov    r11,r10
 5b2ff0bb39f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
 5b2ff0bb3a9:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
 5b2ff0bb3b3:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
 5b2ff0bb3b8:	7a 06                                           	jp     0x5b2ff0bb3c0
 5b2ff0bb3ba:	0f 84 2a 00 00 00                               	je     0x5b2ff0bb3ea
 5b2ff0bb3c0:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff0bb3c4:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
 5b2ff0bb3c9:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
 5b2ff0bb3cd:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
 5b2ff0bb3d1:	0f 86 49 00 00 00                               	jbe    0x5b2ff0bb420
 5b2ff0bb3d7:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bb3db:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bb3e0:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bb3e5:	e9 5b 00 00 00                                  	jmp    0x5b2ff0bb445
 5b2ff0bb3ea:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bb3ee:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bb3f3:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bb3f8:	e9 44 00 00 00                                  	jmp    0x5b2ff0bb441
 5b2ff0bb3fd:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0bb407:	4c 8b 15 a1 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdfa1]        # 0x5b2ff0b93af
 5b2ff0bb40e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0bb413:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
 5b2ff0bb417:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb41b:	e8 98 21 f1 ff                                  	call   0x5b2fefcd5b8
 5b2ff0bb420:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bb424:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bb429:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bb42e:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
 5b2ff0bb432:	0f 87 09 00 00 00                               	ja     0x5b2ff0bb441
 5b2ff0bb438:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
 5b2ff0bb43c:	e9 04 00 00 00                                  	jmp    0x5b2ff0bb445
 5b2ff0bb441:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0bb445:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bb448:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bb44c:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0bb456:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
 5b2ff0bb45a:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
 5b2ff0bb45e:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
 5b2ff0bb468:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
 5b2ff0bb46d:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
 5b2ff0bb477:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0bb481:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
 5b2ff0bb48b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
 5b2ff0bb490:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
 5b2ff0bb49a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0bb4a4:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
 5b2ff0bb4ae:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
 5b2ff0bb4b3:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
 5b2ff0bb4bd:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff0bb4c1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0bb4c5:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff0bb4ca:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
 5b2ff0bb4d4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb4d8:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bb4db:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0bb4e1:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff0bb4e4:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
 5b2ff0bb4ec:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
 5b2ff0bb4f0:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
 5b2ff0bb4f4:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
 5b2ff0bb4f9:	e8 62 fd f0 ff                                  	call   0x5b2fefcb260
 5b2ff0bb4fe:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0bb502:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0bb507:	8b 85 68 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x98]
 5b2ff0bb50d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
 5b2ff0bb513:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0bb517:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0bb51c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0bb522:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0bb528:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bb52d:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
 5b2ff0bb534:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
 5b2ff0bb53b:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
 5b2ff0bb542:	8b 9d 68 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x298]
 5b2ff0bb548:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bb550:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0bb558:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0bb560:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
 5b2ff0bb568:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
 5b2ff0bb56f:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0bb575:	e9 09 00 00 00                                  	jmp    0x5b2ff0bb583
 5b2ff0bb57a:	4c 8b f9                                        	mov    r15,rcx
 5b2ff0bb57d:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
 5b2ff0bb583:	f6 c3 04                                        	test   bl,0x4
 5b2ff0bb586:	0f 85 0e 00 00 00                               	jne    0x5b2ff0bb59a
 5b2ff0bb58c:	8b d0                                           	mov    edx,eax
 5b2ff0bb58e:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
 5b2ff0bb595:	e9 70 0a 00 00                                  	jmp    0x5b2ff0bc00a
 5b2ff0bb59a:	43 8b 94 04 c8 3c 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0x3cc8]
 5b2ff0bb5a2:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
 5b2ff0bb5ab:	0f 84 4d 00 00 00                               	je     0x5b2ff0bb5fe
 5b2ff0bb5b1:	8b d0                                           	mov    edx,eax
 5b2ff0bb5b3:	c1 ea 03                                        	shr    edx,0x3
 5b2ff0bb5b6:	83 e2 03                                        	and    edx,0x3
 5b2ff0bb5b9:	0b 95 20 fe ff ff                               	or     edx,DWORD PTR [rbp-0x1e0]
 5b2ff0bb5bf:	8b 9d 58 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x3a8]
 5b2ff0bb5c5:	03 d3                                           	add    edx,ebx
 5b2ff0bb5c7:	41 0f b6 14 14                                  	movzx  edx,BYTE PTR [r12+rdx*1]
 5b2ff0bb5cc:	8b d8                                           	mov    ebx,eax
 5b2ff0bb5ce:	83 e3 07                                        	and    ebx,0x7
 5b2ff0bb5d1:	44 8b d1                                        	mov    r10d,ecx
 5b2ff0bb5d4:	8b cb                                           	mov    ecx,ebx
 5b2ff0bb5d6:	49 8b df                                        	mov    rbx,r15
 5b2ff0bb5d9:	45 8b fa                                        	mov    r15d,r10d
 5b2ff0bb5dc:	d3 e2                                           	shl    edx,cl
 5b2ff0bb5de:	f6 c2 80                                        	test   dl,0x80
 5b2ff0bb5e1:	0f 85 11 00 00 00                               	jne    0x5b2ff0bb5f8
 5b2ff0bb5e7:	8b d0                                           	mov    edx,eax
 5b2ff0bb5e9:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
 5b2ff0bb5f0:	4c 8b fb                                        	mov    r15,rbx
 5b2ff0bb5f3:	e9 12 0a 00 00                                  	jmp    0x5b2ff0bc00a
 5b2ff0bb5f8:	41 8b cf                                        	mov    ecx,r15d
 5b2ff0bb5fb:	4c 8b fb                                        	mov    r15,rbx
 5b2ff0bb5fe:	48 8b 95 60 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xa0]
 5b2ff0bb605:	48 8b 9d d8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x328]
 5b2ff0bb60c:	48 8d 0c 13                                     	lea    rcx,[rbx+rdx*1]
 5b2ff0bb610:	c4 e1 82 2a c1                                  	vcvtsi2ss xmm0,xmm15,rcx
 5b2ff0bb615:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
 5b2ff0bb619:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
 5b2ff0bb61d:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
 5b2ff0bb624:	48 8b 9d f8 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x308]
 5b2ff0bb62b:	48 8d 14 0b                                     	lea    rdx,[rbx+rcx*1]
 5b2ff0bb62f:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
 5b2ff0bb634:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
 5b2ff0bb639:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
 5b2ff0bb63e:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
 5b2ff0bb642:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
 5b2ff0bb646:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
 5b2ff0bb64b:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
 5b2ff0bb64f:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
 5b2ff0bb653:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
 5b2ff0bb658:	0f 83 aa 09 00 00                               	jae    0x5b2ff0bc008
 5b2ff0bb65e:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
 5b2ff0bb665:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
 5b2ff0bb66c:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
 5b2ff0bb673:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
 5b2ff0bb678:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
 5b2ff0bb67c:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
 5b2ff0bb680:	43 8b 54 04 68                                  	mov    edx,DWORD PTR [r12+r8*1+0x68]
 5b2ff0bb685:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
 5b2ff0bb68b:	0f 85 07 00 00 00                               	jne    0x5b2ff0bb698
 5b2ff0bb691:	8b d0                                           	mov    edx,eax
 5b2ff0bb693:	e9 c3 00 00 00                                  	jmp    0x5b2ff0bb75b
 5b2ff0bb698:	43 8b 94 04 a4 00 00 00                         	mov    edx,DWORD PTR [r12+r8*1+0xa4]
 5b2ff0bb6a0:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
 5b2ff0bb6a9:	75 e6                                           	jne    0x5b2ff0bb691
 5b2ff0bb6ab:	43 8b 54 04 0c                                  	mov    edx,DWORD PTR [r12+r8*1+0xc]
 5b2ff0bb6b0:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
 5b2ff0bb6b4:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
 5b2ff0bb6bb:	8d 1c 9a                                        	lea    ebx,[rdx+rbx*4]
 5b2ff0bb6be:	8b d0                                           	mov    edx,eax
 5b2ff0bb6c0:	8d 04 93                                        	lea    eax,[rbx+rdx*4]
 5b2ff0bb6c3:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
 5b2ff0bb6c9:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
 5b2ff0bb6ce:	2d 00 02 00 00                                  	sub    eax,0x200
 5b2ff0bb6d3:	83 f8 08                                        	cmp    eax,0x8
 5b2ff0bb6d6:	0f 83 0b 00 00 00                               	jae    0x5b2ff0bb6e7
 5b2ff0bb6dc:	4c 8d 15 05 67 00 00                            	lea    r10,[rip+0x6705]        # 0x5b2ff0c1de8
 5b2ff0bb6e3:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
 5b2ff0bb6e7:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0bb6eb:	0f 87 6a 00 00 00                               	ja     0x5b2ff0bb75b
 5b2ff0bb6f1:	e9 14 09 00 00                                  	jmp    0x5b2ff0bc00a
 5b2ff0bb6f6:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bb6fb:	0f 83 5a 00 00 00                               	jae    0x5b2ff0bb75b
 5b2ff0bb701:	e9 04 09 00 00                                  	jmp    0x5b2ff0bc00a
 5b2ff0bb706:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bb70b:	0f 8a 4a 00 00 00                               	jp     0x5b2ff0bb75b
 5b2ff0bb711:	0f 84 f3 08 00 00                               	je     0x5b2ff0bc00a
 5b2ff0bb717:	e9 3f 00 00 00                                  	jmp    0x5b2ff0bb75b
 5b2ff0bb71c:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bb721:	0f 87 34 00 00 00                               	ja     0x5b2ff0bb75b
 5b2ff0bb727:	e9 de 08 00 00                                  	jmp    0x5b2ff0bc00a
 5b2ff0bb72c:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0bb730:	0f 83 25 00 00 00                               	jae    0x5b2ff0bb75b
 5b2ff0bb736:	e9 cf 08 00 00                                  	jmp    0x5b2ff0bc00a
 5b2ff0bb73b:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bb740:	0f 8a c4 08 00 00                               	jp     0x5b2ff0bc00a
 5b2ff0bb746:	0f 84 0f 00 00 00                               	je     0x5b2ff0bb75b
 5b2ff0bb74c:	e9 b9 08 00 00                                  	jmp    0x5b2ff0bc00a
 5b2ff0bb751:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0bb755:	0f 86 af 08 00 00                               	jbe    0x5b2ff0bc00a
 5b2ff0bb75b:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
 5b2ff0bb760:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
 5b2ff0bb765:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
 5b2ff0bb76a:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
 5b2ff0bb771:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
 5b2ff0bb776:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
 5b2ff0bb77a:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
 5b2ff0bb781:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
 5b2ff0bb789:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff0bb78e:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
 5b2ff0bb792:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
 5b2ff0bb797:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
 5b2ff0bb79e:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
 5b2ff0bb7a2:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff0bb7a6:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
 5b2ff0bb7aa:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
 5b2ff0bb7ae:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
 5b2ff0bb7b1:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
 5b2ff0bb7bb:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
 5b2ff0bb7c5:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
 5b2ff0bb7cf:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
 5b2ff0bb7d9:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
 5b2ff0bb7df:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
 5b2ff0bb7e6:	41 8b bc 1c 34 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x134]
 5b2ff0bb7ee:	44 8d 47 ff                                     	lea    r8d,[rdi-0x1]
 5b2ff0bb7f2:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
 5b2ff0bb7fa:	c5 fb 11 8d 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm1
 5b2ff0bb802:	c5 fb 11 a5 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm4
 5b2ff0bb80a:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
 5b2ff0bb812:	c5 fb 11 b5 08 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1f8],xmm6
 5b2ff0bb81a:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
 5b2ff0bb822:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
 5b2ff0bb82a:	41 83 f8 01                                     	cmp    r8d,0x1
 5b2ff0bb82e:	0f 86 4d 04 00 00                               	jbe    0x5b2ff0bbc81
 5b2ff0bb834:	41 8b bc 1c 30 01 00 00                         	mov    edi,DWORD PTR [r12+rbx*1+0x130]
 5b2ff0bb83c:	41 83 bc 1c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rbx*1+0x130],0x0
 5b2ff0bb845:	0f 85 0d 00 00 00                               	jne    0x5b2ff0bb858
 5b2ff0bb84b:	8b c8                                           	mov    ecx,eax
 5b2ff0bb84d:	4d 8b c4                                        	mov    r8,r12
 5b2ff0bb850:	48 8b fb                                        	mov    rdi,rbx
 5b2ff0bb853:	e9 e0 04 00 00                                  	jmp    0x5b2ff0bbd38
 5b2ff0bb858:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
 5b2ff0bb85e:	44 8d 40 70                                     	lea    r8d,[rax+0x70]
 5b2ff0bb862:	41 50                                           	push   r8
 5b2ff0bb864:	48 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rdi
 5b2ff0bb86b:	44 8b 85 58 fc ff ff                            	mov    r8d,DWORD PTR [rbp-0x3a8]
 5b2ff0bb872:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb876:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0bb879:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0bb87c:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
 5b2ff0bb87f:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0bb882:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
 5b2ff0bb886:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0bb88b:	44 8b cf                                        	mov    r9d,edi
 5b2ff0bb88e:	e8 85 f9 f0 ff                                  	call   0x5b2fefcb218
 5b2ff0bb893:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bb897:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bb89e:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
 5b2ff0bb8a6:	45 85 db                                        	test   r11d,r11d
 5b2ff0bb8a9:	0f 85 61 01 00 00                               	jne    0x5b2ff0bba10
 5b2ff0bb8af:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bb8b2:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
 5b2ff0bb8b7:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
 5b2ff0bb8bd:	0f 84 43 00 00 00                               	je     0x5b2ff0bb906
 5b2ff0bb8c3:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bb8c9:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bb8cd:	41 53                                           	push   r11
 5b2ff0bb8cf:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb8d3:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
 5b2ff0bb8d9:	33 d2                                           	xor    edx,edx
 5b2ff0bb8db:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
 5b2ff0bb8e2:	e8 59 f9 f0 ff                                  	call   0x5b2fefcb240
 5b2ff0bb8e7:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bb8ea:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bb8ee:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0bb8f5:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bb8ff:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bb906:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
 5b2ff0bb90b:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
 5b2ff0bb911:	0f 84 46 00 00 00                               	je     0x5b2ff0bb95d
 5b2ff0bb917:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bb91d:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bb921:	41 53                                           	push   r11
 5b2ff0bb923:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb927:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
 5b2ff0bb92d:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff0bb932:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
 5b2ff0bb939:	e8 02 f9 f0 ff                                  	call   0x5b2fefcb240
 5b2ff0bb93e:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bb941:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bb945:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0bb94c:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bb956:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bb95d:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
 5b2ff0bb962:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
 5b2ff0bb968:	0f 84 46 00 00 00                               	je     0x5b2ff0bb9b4
 5b2ff0bb96e:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bb974:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bb978:	41 53                                           	push   r11
 5b2ff0bb97a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb97e:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
 5b2ff0bb984:	ba 02 00 00 00                                  	mov    edx,0x2
 5b2ff0bb989:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
 5b2ff0bb990:	e8 ab f8 f0 ff                                  	call   0x5b2fefcb240
 5b2ff0bb995:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bb998:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bb99c:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0bb9a3:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bb9ad:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bb9b4:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
 5b2ff0bb9b9:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
 5b2ff0bb9bf:	0f 84 73 03 00 00                               	je     0x5b2ff0bbd38
 5b2ff0bb9c5:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bb9cb:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bb9cf:	41 53                                           	push   r11
 5b2ff0bb9d1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bb9d5:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
 5b2ff0bb9db:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff0bb9e0:	44 8b 8d b0 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x150]
 5b2ff0bb9e7:	e8 54 f8 f0 ff                                  	call   0x5b2fefcb240
 5b2ff0bb9ec:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bb9ef:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bb9f3:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0bb9fa:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bba04:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bba0b:	e9 28 03 00 00                                  	jmp    0x5b2ff0bbd38
 5b2ff0bba10:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bba13:	c4 c1 7a 10 84 08 98 00 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x98]
 5b2ff0bba1d:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
 5b2ff0bba23:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0bba28:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bba2c:	c4 c1 7a 10 7c 08 08                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0x8]
 5b2ff0bba33:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0bba37:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0bba3b:	c4 c1 7a 10 bc 08 90 00 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x90]
 5b2ff0bba45:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0bba49:	c4 41 7a 10 04 08                               	vmovss xmm8,DWORD PTR [r8+rcx*1]
 5b2ff0bba4f:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0bba53:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
 5b2ff0bba58:	c4 41 7a 10 84 08 94 00 00 00                   	vmovss xmm8,DWORD PTR [r8+rcx*1+0x94]
 5b2ff0bba62:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0bba66:	c4 41 7a 10 4c 08 04                            	vmovss xmm9,DWORD PTR [r8+rcx*1+0x4]
 5b2ff0bba6d:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
 5b2ff0bba71:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
 5b2ff0bba75:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
 5b2ff0bba79:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bba7d:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
 5b2ff0bba83:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0bba88:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
 5b2ff0bba8c:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0bba90:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0bba95:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0bba9a:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
 5b2ff0bba9e:	0f 87 09 00 00 00                               	ja     0x5b2ff0bbaad
 5b2ff0bbaa4:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0bbaa8:	e9 04 00 00 00                                  	jmp    0x5b2ff0bbab1
 5b2ff0bbaad:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0bbab1:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bbab6:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff0bbaba:	0f 87 09 00 00 00                               	ja     0x5b2ff0bbac9
 5b2ff0bbac0:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff0bbac4:	e9 05 00 00 00                                  	jmp    0x5b2ff0bbace
 5b2ff0bbac9:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0bbace:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff0bbad3:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0bbad7:	0f 84 a1 00 00 00                               	je     0x5b2ff0bbb7e
 5b2ff0bbadd:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
 5b2ff0bbae1:	c4 81 7a 10 bc 20 24 37 00 00                   	vmovss xmm7,DWORD PTR [r8+r12*1+0x3724]
 5b2ff0bbaeb:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bbaef:	0f 87 09 00 00 00                               	ja     0x5b2ff0bbafe
 5b2ff0bbaf5:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0bbaf9:	e9 04 00 00 00                                  	jmp    0x5b2ff0bbb02
 5b2ff0bbafe:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0bbb02:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bbb06:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bbb16
 5b2ff0bbb0c:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0bbb11:	e9 05 00 00 00                                  	jmp    0x5b2ff0bbb1b
 5b2ff0bbb16:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bbb1b:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
 5b2ff0bbb1f:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bbb24:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0bbb29:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bbb2d:	4c 8b 15 9d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea9d]        # 0x5b2ff0ba5d1
 5b2ff0bbb34:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0bbb39:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0bbb3e:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0bbb42:	c4 41 7a 6f 9c 08 b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+rcx*1+0xb0]
 5b2ff0bbb4c:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff0bbb50:	0f 85 04 00 00 00                               	jne    0x5b2ff0bbb5a
 5b2ff0bbb56:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
 5b2ff0bbb5a:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff0bbb5f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bbb63:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0bbb67:	c4 01 7a 6f 8c 20 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+r12*1+0x3718]
 5b2ff0bbb71:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0bbb76:	4d 8b dc                                        	mov    r11,r12
 5b2ff0bbb79:	e9 cc 00 00 00                                  	jmp    0x5b2ff0bbc4a
 5b2ff0bbb7e:	c4 c1 7a 10 7c 08 0c                            	vmovss xmm7,DWORD PTR [r8+rcx*1+0xc]
 5b2ff0bbb85:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bbb89:	0f 87 09 00 00 00                               	ja     0x5b2ff0bbb98
 5b2ff0bbb8f:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0bbb93:	e9 04 00 00 00                                  	jmp    0x5b2ff0bbb9c
 5b2ff0bbb98:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0bbb9c:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bbba0:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bbbb0
 5b2ff0bbba6:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0bbbab:	e9 05 00 00 00                                  	jmp    0x5b2ff0bbbb5
 5b2ff0bbbb0:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bbbb5:	c4 41 7a 6f 8c 08 b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rcx*1+0xb0]
 5b2ff0bbbbf:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
 5b2ff0bbbc5:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
 5b2ff0bbbca:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bbbce:	0f 87 09 00 00 00                               	ja     0x5b2ff0bbbdd
 5b2ff0bbbd4:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff0bbbd8:	e9 04 00 00 00                                  	jmp    0x5b2ff0bbbe1
 5b2ff0bbbdd:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff0bbbe1:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bbbe5:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bbbf5
 5b2ff0bbbeb:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff0bbbf0:	e9 05 00 00 00                                  	jmp    0x5b2ff0bbbfa
 5b2ff0bbbf5:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bbbfa:	c4 41 7a 6f 94 08 c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r8+rcx*1+0xc0]
 5b2ff0bbc04:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bbc09:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0bbc0d:	c4 01 7a 6f 9c 18 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r8+r11*1+0x3630]
 5b2ff0bbc17:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0bbc1c:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0bbc21:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0bbc25:	4c 8b 15 a5 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a5]        # 0x5b2ff0ba5d1
 5b2ff0bbc2c:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0bbc31:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0bbc36:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0bbc3a:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0bbc3e:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0bbc42:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0bbc46:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff0bbc4a:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0bbc4f:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bbc53:	4c 8b 15 77 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe977]        # 0x5b2ff0ba5d1
 5b2ff0bbc5a:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0bbc5f:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0bbc64:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
 5b2ff0bbc68:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bbc72:	c4 c1 7a 11 bc 08 9c 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x19c],xmm7
 5b2ff0bbc7c:	e9 b7 00 00 00                                  	jmp    0x5b2ff0bbd38
 5b2ff0bbc81:	4c 8b 85 10 fe ff ff                            	mov    r8,QWORD PTR [rbp-0x1f0]
 5b2ff0bbc88:	c4 81 7a 10 44 04 50                            	vmovss xmm0,DWORD PTR [r12+r8*1+0x50]
 5b2ff0bbc8f:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
 5b2ff0bbc93:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
 5b2ff0bbc9a:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0bbc9e:	c4 81 6a 59 74 1c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+r11*1+0x50]
 5b2ff0bbca5:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
 5b2ff0bbca9:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bbcad:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
 5b2ff0bbcb2:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bbcb6:	c4 01 7a 10 5c 04 54                            	vmovss xmm11,DWORD PTR [r12+r8*1+0x54]
 5b2ff0bbcbd:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
 5b2ff0bbcc1:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
 5b2ff0bbcc8:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0bbccc:	c5 fb 11 85 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm0
 5b2ff0bbcd4:	c4 81 6a 59 44 1c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+r11*1+0x54]
 5b2ff0bbcdb:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
 5b2ff0bbcdf:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
 5b2ff0bbce3:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bbce7:	48 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],rdi
 5b2ff0bbcee:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
 5b2ff0bbcf4:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bbcf8:	8b c8                                           	mov    ecx,eax
 5b2ff0bbcfa:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0bbcfd:	8b 95 30 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x1d0]
 5b2ff0bbd03:	c5 fb 10 8d b0 fe ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x150]
 5b2ff0bbd0b:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
 5b2ff0bbd0f:	8b df                                           	mov    ebx,edi
 5b2ff0bbd11:	e8 1a f8 f0 ff                                  	call   0x5b2fefcb530
 5b2ff0bbd16:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bbd19:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bbd1d:	c4 c1 7a 6f 84 08 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x90]
 5b2ff0bbd27:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bbd31:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bbd38:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0bbd3c:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
 5b2ff0bbd44:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
 5b2ff0bbd4d:	0f 85 2a 00 00 00                               	jne    0x5b2ff0bbd7d
 5b2ff0bbd53:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0bbd5d:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0bbd67:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0bbd71:	49 8b fb                                        	mov    rdi,r11
 5b2ff0bbd74:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0bbd78:	e9 dd 01 00 00                                  	jmp    0x5b2ff0bbf5a
 5b2ff0bbd7d:	c5 fb 10 85 08 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1f8]
 5b2ff0bbd85:	c5 fa 59 85 a0 fd ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x260]
 5b2ff0bbd8d:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
 5b2ff0bbd95:	c5 ca 59 b5 50 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x1b0]
 5b2ff0bbd9d:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
 5b2ff0bbda5:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
 5b2ff0bbdad:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff0bbdb1:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bbdb5:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
 5b2ff0bbdbd:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bbdc1:	4c 8b 15 e7 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5e7]        # 0x5b2ff0b93af
 5b2ff0bbdc8:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0bbdcd:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
 5b2ff0bbdd1:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0bbdd5:	0f 87 04 00 00 00                               	ja     0x5b2ff0bbddf
 5b2ff0bbddb:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0bbddf:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
 5b2ff0bbde7:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
 5b2ff0bbdee:	0f 85 28 00 00 00                               	jne    0x5b2ff0bbe1c
 5b2ff0bbdf4:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0bbdfe:	4c 8b 15 aa d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd5aa]        # 0x5b2ff0b93af
 5b2ff0bbe05:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0bbe0a:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
 5b2ff0bbe0e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bbe12:	e8 a1 17 f1 ff                                  	call   0x5b2fefcd5b8
 5b2ff0bbe17:	e9 94 00 00 00                                  	jmp    0x5b2ff0bbeb0
 5b2ff0bbe1c:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0bbe20:	0f 84 67 00 00 00                               	je     0x5b2ff0bbe8d
 5b2ff0bbe26:	4d 8b d0                                        	mov    r10,r8
 5b2ff0bbe29:	4d 8b c3                                        	mov    r8,r11
 5b2ff0bbe2c:	4d 8b da                                        	mov    r11,r10
 5b2ff0bbe2f:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
 5b2ff0bbe39:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
 5b2ff0bbe43:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
 5b2ff0bbe48:	7a 06                                           	jp     0x5b2ff0bbe50
 5b2ff0bbe4a:	0f 84 2a 00 00 00                               	je     0x5b2ff0bbe7a
 5b2ff0bbe50:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff0bbe54:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
 5b2ff0bbe59:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
 5b2ff0bbe5d:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
 5b2ff0bbe61:	0f 86 49 00 00 00                               	jbe    0x5b2ff0bbeb0
 5b2ff0bbe67:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bbe6b:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bbe70:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bbe75:	e9 5b 00 00 00                                  	jmp    0x5b2ff0bbed5
 5b2ff0bbe7a:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bbe7e:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bbe83:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bbe88:	e9 44 00 00 00                                  	jmp    0x5b2ff0bbed1
 5b2ff0bbe8d:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0bbe97:	4c 8b 15 11 d5 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd511]        # 0x5b2ff0b93af
 5b2ff0bbe9e:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0bbea3:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
 5b2ff0bbea7:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bbeab:	e8 08 17 f1 ff                                  	call   0x5b2fefcd5b8
 5b2ff0bbeb0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bbeb4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bbeb9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bbebe:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
 5b2ff0bbec2:	0f 87 09 00 00 00                               	ja     0x5b2ff0bbed1
 5b2ff0bbec8:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
 5b2ff0bbecc:	e9 04 00 00 00                                  	jmp    0x5b2ff0bbed5
 5b2ff0bbed1:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0bbed5:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bbed8:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bbedc:	c4 c1 42 59 b4 08 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0bbee6:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
 5b2ff0bbeea:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
 5b2ff0bbeee:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
 5b2ff0bbef8:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
 5b2ff0bbefd:	c4 c1 7a 11 b4 08 90 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x190],xmm6
 5b2ff0bbf07:	c4 41 42 59 8c 08 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0bbf11:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
 5b2ff0bbf1b:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
 5b2ff0bbf20:	c4 41 7a 11 8c 08 94 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x194],xmm9
 5b2ff0bbf2a:	c4 c1 42 59 bc 08 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0bbf34:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
 5b2ff0bbf3e:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
 5b2ff0bbf43:	c4 c1 7a 11 bc 08 98 01 00 00                   	vmovss DWORD PTR [r8+rcx*1+0x198],xmm7
 5b2ff0bbf4d:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff0bbf51:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0bbf55:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff0bbf5a:	c4 c1 7a 10 ac 08 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rcx*1+0x19c]
 5b2ff0bbf64:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bbf68:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bbf6b:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0bbf71:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
 5b2ff0bbf77:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
 5b2ff0bbf7f:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
 5b2ff0bbf83:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
 5b2ff0bbf87:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
 5b2ff0bbf8c:	e8 cf f2 f0 ff                                  	call   0x5b2fefcb260
 5b2ff0bbf91:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0bbf95:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0bbf9a:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0bbfa0:	48 8b 8d 50 ff ff ff                            	mov    rcx,QWORD PTR [rbp-0xb0]
 5b2ff0bbfa7:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0bbfab:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0bbfb0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0bbfb6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0bbfbc:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bbfc1:	48 8b bd 10 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x1f0]
 5b2ff0bbfc8:	4c 8b 9d 00 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x200]
 5b2ff0bbfcf:	4c 8b bd e8 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x218]
 5b2ff0bbfd6:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bbfde:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0bbfe6:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0bbfee:	c5 7b 10 8d 18 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1e8]
 5b2ff0bbff6:	48 8b b5 a0 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x360]
 5b2ff0bbffd:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0bc003:	e9 02 00 00 00                                  	jmp    0x5b2ff0bc00a
 5b2ff0bc008:	8b d0                                           	mov    edx,eax
 5b2ff0bc00a:	f6 85 68 fd ff ff 08                            	test   BYTE PTR [rbp-0x298],0x8
 5b2ff0bc011:	0f 85 0a 00 00 00                               	jne    0x5b2ff0bc021
 5b2ff0bc017:	c4 41 79 28 f1                                  	vmovapd xmm14,xmm9
 5b2ff0bc01c:	e9 49 57 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0bc021:	43 8b 84 04 c8 3c 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0x3cc8]
 5b2ff0bc029:	43 83 bc 04 c8 3c 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0x3cc8],0x0
 5b2ff0bc032:	0f 84 3c 00 00 00                               	je     0x5b2ff0bc074
 5b2ff0bc038:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
 5b2ff0bc03e:	c1 e8 03                                        	shr    eax,0x3
 5b2ff0bc041:	83 e0 03                                        	and    eax,0x3
 5b2ff0bc044:	8b 9d 20 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1e0]
 5b2ff0bc04a:	0b d8                                           	or     ebx,eax
 5b2ff0bc04c:	8b 85 58 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3a8]
 5b2ff0bc052:	03 d8                                           	add    ebx,eax
 5b2ff0bc054:	41 0f b6 1c 1c                                  	movzx  ebx,BYTE PTR [r12+rbx*1]
 5b2ff0bc059:	8b 85 30 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xd0]
 5b2ff0bc05f:	83 e0 07                                        	and    eax,0x7
 5b2ff0bc062:	4c 8b d1                                        	mov    r10,rcx
 5b2ff0bc065:	8b c8                                           	mov    ecx,eax
 5b2ff0bc067:	49 8b c2                                        	mov    rax,r10
 5b2ff0bc06a:	d3 e3                                           	shl    ebx,cl
 5b2ff0bc06c:	f6 c3 80                                        	test   bl,0x80
 5b2ff0bc06f:	74 a6                                           	je     0x5b2ff0bc017
 5b2ff0bc071:	48 8b c8                                        	mov    rcx,rax
 5b2ff0bc074:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
 5b2ff0bc07b:	48 8b 9d 58 fe ff ff                            	mov    rbx,QWORD PTR [rbp-0x1a8]
 5b2ff0bc082:	48 8d 14 03                                     	lea    rdx,[rbx+rax*1]
 5b2ff0bc086:	c4 e1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,rdx
 5b2ff0bc08b:	c5 c2 59 c0                                     	vmulss xmm0,xmm7,xmm0
 5b2ff0bc08f:	c5 b2 59 c8                                     	vmulss xmm1,xmm9,xmm0
 5b2ff0bc093:	48 8b d1                                        	mov    rdx,rcx
 5b2ff0bc096:	48 8b 8d 50 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x3b0]
 5b2ff0bc09d:	48 8d 04 11                                     	lea    rax,[rcx+rdx*1]
 5b2ff0bc0a1:	c4 61 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,rax
 5b2ff0bc0a6:	c4 41 42 59 db                                  	vmulss xmm11,xmm7,xmm11
 5b2ff0bc0ab:	c4 c1 12 59 d3                                  	vmulss xmm2,xmm13,xmm11
 5b2ff0bc0b0:	c5 72 58 f2                                     	vaddss xmm14,xmm1,xmm2
 5b2ff0bc0b4:	c5 aa 5c d8                                     	vsubss xmm3,xmm10,xmm0
 5b2ff0bc0b8:	c4 c1 62 5c db                                  	vsubss xmm3,xmm3,xmm11
 5b2ff0bc0bd:	c5 9a 59 e3                                     	vmulss xmm4,xmm12,xmm3
 5b2ff0bc0c1:	c5 0a 58 f4                                     	vaddss xmm14,xmm14,xmm4
 5b2ff0bc0c5:	c4 41 78 2e c6                                  	vucomiss xmm8,xmm14
 5b2ff0bc0ca:	0f 83 47 ff ff ff                               	jae    0x5b2ff0bc017
 5b2ff0bc0d0:	c4 c1 62 59 5c 3c 18                            	vmulss xmm3,xmm3,DWORD PTR [r12+rdi*1+0x18]
 5b2ff0bc0d7:	c4 81 7a 59 44 3c 18                            	vmulss xmm0,xmm0,DWORD PTR [r12+r15*1+0x18]
 5b2ff0bc0de:	c4 01 22 59 5c 1c 18                            	vmulss xmm11,xmm11,DWORD PTR [r12+r11*1+0x18]
 5b2ff0bc0e5:	c4 c1 7a 58 c3                                  	vaddss xmm0,xmm0,xmm11
 5b2ff0bc0ea:	c5 e2 58 c0                                     	vaddss xmm0,xmm3,xmm0
 5b2ff0bc0ee:	c5 ca 58 c0                                     	vaddss xmm0,xmm6,xmm0
 5b2ff0bc0f2:	43 8b 44 04 68                                  	mov    eax,DWORD PTR [r12+r8*1+0x68]
 5b2ff0bc0f7:	43 83 7c 04 68 00                               	cmp    DWORD PTR [r12+r8*1+0x68],0x0
 5b2ff0bc0fd:	0f 85 0b 00 00 00                               	jne    0x5b2ff0bc10e
 5b2ff0bc103:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
 5b2ff0bc109:	e9 c7 00 00 00                                  	jmp    0x5b2ff0bc1d5
 5b2ff0bc10e:	43 8b 84 04 a4 00 00 00                         	mov    eax,DWORD PTR [r12+r8*1+0xa4]
 5b2ff0bc116:	43 83 bc 04 a4 00 00 00 00                      	cmp    DWORD PTR [r12+r8*1+0xa4],0x0
 5b2ff0bc11f:	75 e2                                           	jne    0x5b2ff0bc103
 5b2ff0bc121:	43 8b 44 04 0c                                  	mov    eax,DWORD PTR [r12+r8*1+0xc]
 5b2ff0bc126:	43 8b 1c 04                                     	mov    ebx,DWORD PTR [r12+r8*1]
 5b2ff0bc12a:	0f af 9d 28 ff ff ff                            	imul   ebx,DWORD PTR [rbp-0xd8]
 5b2ff0bc131:	8d 04 98                                        	lea    eax,[rax+rbx*4]
 5b2ff0bc134:	8b 9d 30 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0xd0]
 5b2ff0bc13a:	8d 04 98                                        	lea    eax,[rax+rbx*4]
 5b2ff0bc13d:	c4 41 7a 10 1c 04                               	vmovss xmm11,DWORD PTR [r12+rax*1]
 5b2ff0bc143:	43 8b 44 04 6c                                  	mov    eax,DWORD PTR [r12+r8*1+0x6c]
 5b2ff0bc148:	2d 00 02 00 00                                  	sub    eax,0x200
 5b2ff0bc14d:	83 f8 08                                        	cmp    eax,0x8
 5b2ff0bc150:	0f 83 0b 00 00 00                               	jae    0x5b2ff0bc161
 5b2ff0bc156:	4c 8d 15 4b 5c 00 00                            	lea    r10,[rip+0x5c4b]        # 0x5b2ff0c1da8
 5b2ff0bc15d:	41 ff 24 c2                                     	jmp    QWORD PTR [r10+rax*8]
 5b2ff0bc161:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0bc165:	0f 87 6a 00 00 00                               	ja     0x5b2ff0bc1d5
 5b2ff0bc16b:	e9 a7 fe ff ff                                  	jmp    0x5b2ff0bc017
 5b2ff0bc170:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bc175:	0f 83 5a 00 00 00                               	jae    0x5b2ff0bc1d5
 5b2ff0bc17b:	e9 97 fe ff ff                                  	jmp    0x5b2ff0bc017
 5b2ff0bc180:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bc185:	0f 8a 4a 00 00 00                               	jp     0x5b2ff0bc1d5
 5b2ff0bc18b:	0f 84 86 fe ff ff                               	je     0x5b2ff0bc017
 5b2ff0bc191:	e9 3f 00 00 00                                  	jmp    0x5b2ff0bc1d5
 5b2ff0bc196:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bc19b:	0f 87 34 00 00 00                               	ja     0x5b2ff0bc1d5
 5b2ff0bc1a1:	e9 71 fe ff ff                                  	jmp    0x5b2ff0bc017
 5b2ff0bc1a6:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0bc1aa:	0f 83 25 00 00 00                               	jae    0x5b2ff0bc1d5
 5b2ff0bc1b0:	e9 62 fe ff ff                                  	jmp    0x5b2ff0bc017
 5b2ff0bc1b5:	c4 c1 78 2e c3                                  	vucomiss xmm0,xmm11
 5b2ff0bc1ba:	0f 8a 57 fe ff ff                               	jp     0x5b2ff0bc017
 5b2ff0bc1c0:	0f 84 0f 00 00 00                               	je     0x5b2ff0bc1d5
 5b2ff0bc1c6:	e9 4c fe ff ff                                  	jmp    0x5b2ff0bc017
 5b2ff0bc1cb:	c5 78 2e d8                                     	vucomiss xmm11,xmm0
 5b2ff0bc1cf:	0f 86 42 fe ff ff                               	jbe    0x5b2ff0bc017
 5b2ff0bc1d5:	c4 41 2a 5e de                                  	vdivss xmm11,xmm10,xmm14
 5b2ff0bc1da:	c4 41 78 28 db                                  	vmovaps xmm11,xmm11
 5b2ff0bc1df:	c4 42 79 18 f3                                  	vbroadcastss xmm14,xmm11
 5b2ff0bc1e4:	c4 c1 7a 6f 5c 3c 20                            	vmovdqu xmm3,XMMWORD PTR [r12+rdi*1+0x20]
 5b2ff0bc1eb:	c4 e2 79 18 ec                                  	vbroadcastss xmm5,xmm4
 5b2ff0bc1f0:	c5 e0 59 dd                                     	vmulps xmm3,xmm3,xmm5
 5b2ff0bc1f4:	c4 81 7a 6f 6c 3c 20                            	vmovdqu xmm5,XMMWORD PTR [r12+r15*1+0x20]
 5b2ff0bc1fb:	c5 fb 11 85 20 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe0],xmm0
 5b2ff0bc203:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff0bc208:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
 5b2ff0bc20c:	c4 e2 79 18 ea                                  	vbroadcastss xmm5,xmm2
 5b2ff0bc211:	c4 81 7a 6f 74 1c 20                            	vmovdqu xmm6,XMMWORD PTR [r12+r11*1+0x20]
 5b2ff0bc218:	c5 d0 59 f6                                     	vmulps xmm6,xmm5,xmm6
 5b2ff0bc21c:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff0bc220:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
 5b2ff0bc224:	c5 88 59 c0                                     	vmulps xmm0,xmm14,xmm0
 5b2ff0bc228:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
 5b2ff0bc22b:	c4 c1 7a 7f 84 04 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rax*1+0x190],xmm0
 5b2ff0bc235:	c4 c1 7a 10 b4 3c 98 00 00 00                   	vmovss xmm6,DWORD PTR [r12+rdi*1+0x98]
 5b2ff0bc23f:	c4 01 7a 10 b4 3c 98 00 00 00                   	vmovss xmm14,DWORD PTR [r12+r15*1+0x98]
 5b2ff0bc249:	c4 81 7a 10 9c 1c 98 00 00 00                   	vmovss xmm3,DWORD PTR [r12+r11*1+0x98]
 5b2ff0bc253:	c4 c1 7a 7f 04 04                               	vmovdqu XMMWORD PTR [r12+rax*1],xmm0
 5b2ff0bc259:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bc260:	45 8b 84 3c 34 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x134]
 5b2ff0bc268:	45 8d 58 ff                                     	lea    r11d,[r8-0x1]
 5b2ff0bc26c:	c5 fb 11 95 00 ff ff ff                         	vmovsd QWORD PTR [rbp-0x100],xmm2
 5b2ff0bc274:	c5 fb 11 8d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm1
 5b2ff0bc27c:	c5 fb 11 a5 30 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1d0],xmm4
 5b2ff0bc284:	c5 7b 11 9d 18 ff ff ff                         	vmovsd QWORD PTR [rbp-0xe8],xmm11
 5b2ff0bc28c:	c5 fb 11 b5 50 fe ff ff                         	vmovsd QWORD PTR [rbp-0x1b0],xmm6
 5b2ff0bc294:	c5 7b 11 b5 b8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x148],xmm14
 5b2ff0bc29c:	c5 fb 11 9d c8 fe ff ff                         	vmovsd QWORD PTR [rbp-0x138],xmm3
 5b2ff0bc2a4:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0bc2a8:	0f 86 4b 04 00 00                               	jbe    0x5b2ff0bc6f9
 5b2ff0bc2ae:	45 8b 84 3c 30 01 00 00                         	mov    r8d,DWORD PTR [r12+rdi*1+0x130]
 5b2ff0bc2b6:	41 83 bc 3c 30 01 00 00 00                      	cmp    DWORD PTR [r12+rdi*1+0x130],0x0
 5b2ff0bc2bf:	0f 85 0a 00 00 00                               	jne    0x5b2ff0bc2cf
 5b2ff0bc2c5:	8b c8                                           	mov    ecx,eax
 5b2ff0bc2c7:	4d 8b c4                                        	mov    r8,r12
 5b2ff0bc2ca:	e9 e0 04 00 00                                  	jmp    0x5b2ff0bc7af
 5b2ff0bc2cf:	44 8d 80 90 00 00 00                            	lea    r8d,[rax+0x90]
 5b2ff0bc2d6:	44 8d 58 70                                     	lea    r11d,[rax+0x70]
 5b2ff0bc2da:	41 53                                           	push   r11
 5b2ff0bc2dc:	4c 89 85 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r8
 5b2ff0bc2e3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc2e7:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0bc2ea:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0bc2ed:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
 5b2ff0bc2f0:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0bc2f3:	c5 f9 28 dc                                     	vmovapd xmm3,xmm4
 5b2ff0bc2f7:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0bc2fc:	45 8b c8                                        	mov    r9d,r8d
 5b2ff0bc2ff:	e8 14 ef f0 ff                                  	call   0x5b2fefcb218
 5b2ff0bc304:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bc308:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bc30f:	45 8b 9c 38 38 01 00 00                         	mov    r11d,DWORD PTR [r8+rdi*1+0x138]
 5b2ff0bc317:	45 85 db                                        	test   r11d,r11d
 5b2ff0bc31a:	0f 85 62 01 00 00                               	jne    0x5b2ff0bc482
 5b2ff0bc320:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bc323:	45 8b 5c 08 70                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x70]
 5b2ff0bc328:	41 83 7c 08 70 00                               	cmp    DWORD PTR [r8+rcx*1+0x70],0x0
 5b2ff0bc32e:	0f 84 43 00 00 00                               	je     0x5b2ff0bc377
 5b2ff0bc334:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bc33a:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bc33e:	41 53                                           	push   r11
 5b2ff0bc340:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc344:	8b 85 b8 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x348]
 5b2ff0bc34a:	33 d2                                           	xor    edx,edx
 5b2ff0bc34c:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
 5b2ff0bc353:	e8 e8 ee f0 ff                                  	call   0x5b2fefcb240
 5b2ff0bc358:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bc35b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bc35f:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0bc366:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bc370:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bc377:	45 8b 5c 08 74                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x74]
 5b2ff0bc37c:	41 83 7c 08 74 00                               	cmp    DWORD PTR [r8+rcx*1+0x74],0x0
 5b2ff0bc382:	0f 84 46 00 00 00                               	je     0x5b2ff0bc3ce
 5b2ff0bc388:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bc38e:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bc392:	41 53                                           	push   r11
 5b2ff0bc394:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc398:	8b 85 90 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x370]
 5b2ff0bc39e:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff0bc3a3:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
 5b2ff0bc3aa:	e8 91 ee f0 ff                                  	call   0x5b2fefcb240
 5b2ff0bc3af:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bc3b2:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bc3b6:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0bc3bd:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bc3c7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bc3ce:	45 8b 5c 08 78                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x78]
 5b2ff0bc3d3:	41 83 7c 08 78 00                               	cmp    DWORD PTR [r8+rcx*1+0x78],0x0
 5b2ff0bc3d9:	0f 84 46 00 00 00                               	je     0x5b2ff0bc425
 5b2ff0bc3df:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bc3e5:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bc3e9:	41 53                                           	push   r11
 5b2ff0bc3eb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc3ef:	8b 85 88 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x378]
 5b2ff0bc3f5:	ba 02 00 00 00                                  	mov    edx,0x2
 5b2ff0bc3fa:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
 5b2ff0bc401:	e8 3a ee f0 ff                                  	call   0x5b2fefcb240
 5b2ff0bc406:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bc409:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bc40d:	c4 c1 7a 6f 44 08 50                            	vmovdqu xmm0,XMMWORD PTR [r8+rcx*1+0x50]
 5b2ff0bc414:	c4 c1 7a 7f 84 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rcx*1+0x190],xmm0
 5b2ff0bc41e:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bc425:	45 8b 5c 08 7c                                  	mov    r11d,DWORD PTR [r8+rcx*1+0x7c]
 5b2ff0bc42a:	41 83 7c 08 7c 00                               	cmp    DWORD PTR [r8+rcx*1+0x7c],0x0
 5b2ff0bc430:	0f 84 79 03 00 00                               	je     0x5b2ff0bc7af
 5b2ff0bc436:	8d 99 90 01 00 00                               	lea    ebx,[rcx+0x190]
 5b2ff0bc43c:	44 8d 59 50                                     	lea    r11d,[rcx+0x50]
 5b2ff0bc440:	41 53                                           	push   r11
 5b2ff0bc442:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc446:	8b 85 08 fc ff ff                               	mov    eax,DWORD PTR [rbp-0x3f8]
 5b2ff0bc44c:	ba 03 00 00 00                                  	mov    edx,0x3
 5b2ff0bc451:	44 8b 8d 08 fe ff ff                            	mov    r9d,DWORD PTR [rbp-0x1f8]
 5b2ff0bc458:	e8 e3 ed f0 ff                                  	call   0x5b2fefcb240
 5b2ff0bc45d:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bc460:	48 8b 7d d8                                     	mov    rdi,QWORD PTR [rbp-0x28]
 5b2ff0bc464:	c5 fa 6f 44 0f 50                               	vmovdqu xmm0,XMMWORD PTR [rdi+rcx*1+0x50]
 5b2ff0bc46a:	c5 fa 7f 84 0f 90 01 00 00                      	vmovdqu XMMWORD PTR [rdi+rcx*1+0x190],xmm0
 5b2ff0bc473:	4c 8b c7                                        	mov    r8,rdi
 5b2ff0bc476:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bc47d:	e9 2d 03 00 00                                  	jmp    0x5b2ff0bc7af
 5b2ff0bc482:	8b 4d e0                                        	mov    ecx,DWORD PTR [rbp-0x20]
 5b2ff0bc485:	4d 8b e0                                        	mov    r12,r8
 5b2ff0bc488:	c4 c1 7a 10 84 0c 98 00 00 00                   	vmovss xmm0,DWORD PTR [r12+rcx*1+0x98]
 5b2ff0bc492:	41 ba 00 00 00 bf                               	mov    r10d,0xbf000000
 5b2ff0bc498:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0bc49d:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bc4a1:	c4 c1 7a 10 7c 0c 08                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0x8]
 5b2ff0bc4a8:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0bc4ac:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0bc4b0:	c4 c1 7a 10 bc 0c 90 00 00 00                   	vmovss xmm7,DWORD PTR [r12+rcx*1+0x90]
 5b2ff0bc4ba:	c5 c2 58 fe                                     	vaddss xmm7,xmm7,xmm6
 5b2ff0bc4be:	c4 41 7a 10 04 0c                               	vmovss xmm8,DWORD PTR [r12+rcx*1]
 5b2ff0bc4c4:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0bc4c8:	c4 c1 42 59 f8                                  	vmulss xmm7,xmm7,xmm8
 5b2ff0bc4cd:	c4 41 7a 10 84 0c 94 00 00 00                   	vmovss xmm8,DWORD PTR [r12+rcx*1+0x94]
 5b2ff0bc4d7:	c5 3a 58 c6                                     	vaddss xmm8,xmm8,xmm6
 5b2ff0bc4db:	c4 41 7a 10 4c 0c 04                            	vmovss xmm9,DWORD PTR [r12+rcx*1+0x4]
 5b2ff0bc4e2:	c5 b2 58 f6                                     	vaddss xmm6,xmm9,xmm6
 5b2ff0bc4e6:	c5 ba 59 f6                                     	vmulss xmm6,xmm8,xmm6
 5b2ff0bc4ea:	c5 c2 58 f6                                     	vaddss xmm6,xmm7,xmm6
 5b2ff0bc4ee:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bc4f2:	41 ba 00 00 80 40                               	mov    r10d,0x40800000
 5b2ff0bc4f8:	c4 c1 79 6e f2                                  	vmovd  xmm6,r10d
 5b2ff0bc4fd:	c5 fa 59 c6                                     	vmulss xmm0,xmm0,xmm6
 5b2ff0bc501:	c5 c9 76 f6                                     	vpcmpeqd xmm6,xmm6,xmm6
 5b2ff0bc505:	c5 c9 72 f6 19                                  	vpslld xmm6,xmm6,0x19
 5b2ff0bc50a:	c5 c9 72 d6 02                                  	vpsrld xmm6,xmm6,0x2
 5b2ff0bc50f:	c5 f8 2e c6                                     	vucomiss xmm0,xmm6
 5b2ff0bc513:	0f 87 09 00 00 00                               	ja     0x5b2ff0bc522
 5b2ff0bc519:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0bc51d:	e9 04 00 00 00                                  	jmp    0x5b2ff0bc526
 5b2ff0bc522:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0bc526:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bc52b:	c5 78 2e c0                                     	vucomiss xmm8,xmm0
 5b2ff0bc52f:	0f 87 09 00 00 00                               	ja     0x5b2ff0bc53e
 5b2ff0bc535:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff0bc539:	e9 05 00 00 00                                  	jmp    0x5b2ff0bc543
 5b2ff0bc53e:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0bc543:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff0bc548:	41 83 fb 01                                     	cmp    r11d,0x1
 5b2ff0bc54c:	0f 84 a1 00 00 00                               	je     0x5b2ff0bc5f3
 5b2ff0bc552:	4c 8b 7d d0                                     	mov    r15,QWORD PTR [rbp-0x30]
 5b2ff0bc556:	c4 81 7a 10 bc 3c 24 37 00 00                   	vmovss xmm7,DWORD PTR [r12+r15*1+0x3724]
 5b2ff0bc560:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bc564:	0f 87 09 00 00 00                               	ja     0x5b2ff0bc573
 5b2ff0bc56a:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0bc56e:	e9 04 00 00 00                                  	jmp    0x5b2ff0bc577
 5b2ff0bc573:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0bc577:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bc57b:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bc58b
 5b2ff0bc581:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0bc586:	e9 05 00 00 00                                  	jmp    0x5b2ff0bc590
 5b2ff0bc58b:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bc590:	c5 f8 59 c0                                     	vmulps xmm0,xmm0,xmm0
 5b2ff0bc594:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bc599:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0bc59e:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bc5a2:	4c 8b 15 28 e0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe028]        # 0x5b2ff0ba5d1
 5b2ff0bc5a9:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0bc5ae:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0bc5b3:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0bc5b7:	c4 41 7a 6f 9c 0c b0 00 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+rcx*1+0xb0]
 5b2ff0bc5c1:	41 83 fb 03                                     	cmp    r11d,0x3
 5b2ff0bc5c5:	0f 85 04 00 00 00                               	jne    0x5b2ff0bc5cf
 5b2ff0bc5cb:	c5 79 28 d8                                     	vmovapd xmm11,xmm0
 5b2ff0bc5cf:	c4 c1 78 59 c3                                  	vmulps xmm0,xmm0,xmm11
 5b2ff0bc5d4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bc5d8:	c5 a8 5d c0                                     	vminps xmm0,xmm10,xmm0
 5b2ff0bc5dc:	c4 01 7a 6f 8c 3c 18 37 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+r15*1+0x3718]
 5b2ff0bc5e6:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0bc5eb:	4d 8b df                                        	mov    r11,r15
 5b2ff0bc5ee:	e9 cc 00 00 00                                  	jmp    0x5b2ff0bc6bf
 5b2ff0bc5f3:	c4 c1 7a 10 7c 0c 0c                            	vmovss xmm7,DWORD PTR [r12+rcx*1+0xc]
 5b2ff0bc5fa:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bc5fe:	0f 87 09 00 00 00                               	ja     0x5b2ff0bc60d
 5b2ff0bc604:	c5 79 28 cf                                     	vmovapd xmm9,xmm7
 5b2ff0bc608:	e9 04 00 00 00                                  	jmp    0x5b2ff0bc611
 5b2ff0bc60d:	c5 79 28 ce                                     	vmovapd xmm9,xmm6
 5b2ff0bc611:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bc615:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bc625
 5b2ff0bc61b:	c4 c1 79 28 f9                                  	vmovapd xmm7,xmm9
 5b2ff0bc620:	e9 05 00 00 00                                  	jmp    0x5b2ff0bc62a
 5b2ff0bc625:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bc62a:	c4 41 7a 6f 8c 0c b0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r12+rcx*1+0xb0]
 5b2ff0bc634:	c4 41 79 70 d1 03                               	vpshufd xmm10,xmm9,0x3
 5b2ff0bc63a:	c4 c1 42 59 fa                                  	vmulss xmm7,xmm7,xmm10
 5b2ff0bc63f:	c5 f8 2e fe                                     	vucomiss xmm7,xmm6
 5b2ff0bc643:	0f 87 09 00 00 00                               	ja     0x5b2ff0bc652
 5b2ff0bc649:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff0bc64d:	e9 04 00 00 00                                  	jmp    0x5b2ff0bc656
 5b2ff0bc652:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff0bc656:	c5 78 2e c7                                     	vucomiss xmm8,xmm7
 5b2ff0bc65a:	0f 87 0a 00 00 00                               	ja     0x5b2ff0bc66a
 5b2ff0bc660:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff0bc665:	e9 05 00 00 00                                  	jmp    0x5b2ff0bc66f
 5b2ff0bc66a:	c4 c1 79 28 f8                                  	vmovapd xmm7,xmm8
 5b2ff0bc66f:	c4 41 7a 6f 94 0c c0 00 00 00                   	vmovdqu xmm10,XMMWORD PTR [r12+rcx*1+0xc0]
 5b2ff0bc679:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bc67e:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0bc682:	c4 01 7a 6f 9c 1c 30 36 00 00                   	vmovdqu xmm11,XMMWORD PTR [r12+r11*1+0x3630]
 5b2ff0bc68c:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0bc691:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0bc696:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0bc69a:	4c 8b 15 30 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf30]        # 0x5b2ff0ba5d1
 5b2ff0bc6a1:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0bc6a6:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0bc6ab:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0bc6af:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0bc6b3:	c5 a0 5f c0                                     	vmaxps xmm0,xmm11,xmm0
 5b2ff0bc6b7:	c5 98 5d c0                                     	vminps xmm0,xmm12,xmm0
 5b2ff0bc6bb:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff0bc6bf:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0bc6c4:	c5 b0 5f c0                                     	vmaxps xmm0,xmm9,xmm0
 5b2ff0bc6c8:	4c 8b 15 02 df ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffdf02]        # 0x5b2ff0ba5d1
 5b2ff0bc6cf:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0bc6d4:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0bc6d9:	c5 b0 5d c0                                     	vminps xmm0,xmm9,xmm0
 5b2ff0bc6dd:	c4 c1 7a 7f 84 0c 90 01 00 00                   	vmovdqu XMMWORD PTR [r12+rcx*1+0x190],xmm0
 5b2ff0bc6e7:	c4 c1 7a 11 bc 0c 9c 01 00 00                   	vmovss DWORD PTR [r12+rcx*1+0x19c],xmm7
 5b2ff0bc6f1:	4d 8b c4                                        	mov    r8,r12
 5b2ff0bc6f4:	e9 b6 00 00 00                                  	jmp    0x5b2ff0bc7af
 5b2ff0bc6f9:	4c 8b 9d 10 fe ff ff                            	mov    r11,QWORD PTR [rbp-0x1f0]
 5b2ff0bc700:	c4 81 7a 10 44 1c 50                            	vmovss xmm0,DWORD PTR [r12+r11*1+0x50]
 5b2ff0bc707:	c5 fa 59 c4                                     	vmulss xmm0,xmm0,xmm4
 5b2ff0bc70b:	c4 81 7a 10 6c 3c 50                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x50]
 5b2ff0bc712:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0bc716:	48 8b bd 00 fe ff ff                            	mov    rdi,QWORD PTR [rbp-0x200]
 5b2ff0bc71d:	c4 c1 6a 59 74 3c 50                            	vmulss xmm6,xmm2,DWORD PTR [r12+rdi*1+0x50]
 5b2ff0bc724:	c5 d2 58 f6                                     	vaddss xmm6,xmm5,xmm6
 5b2ff0bc728:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bc72c:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
 5b2ff0bc731:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bc735:	c4 01 7a 10 5c 1c 54                            	vmovss xmm11,DWORD PTR [r12+r11*1+0x54]
 5b2ff0bc73c:	c5 22 59 dc                                     	vmulss xmm11,xmm11,xmm4
 5b2ff0bc740:	c4 81 7a 10 6c 3c 54                            	vmovss xmm5,DWORD PTR [r12+r15*1+0x54]
 5b2ff0bc747:	c5 d2 59 e9                                     	vmulss xmm5,xmm5,xmm1
 5b2ff0bc74b:	c5 fb 11 85 a0 fd ff ff                         	vmovsd QWORD PTR [rbp-0x260],xmm0
 5b2ff0bc753:	c4 c1 6a 59 44 3c 54                            	vmulss xmm0,xmm2,DWORD PTR [r12+rdi*1+0x54]
 5b2ff0bc75a:	c5 d2 58 c0                                     	vaddss xmm0,xmm5,xmm0
 5b2ff0bc75e:	c5 a2 58 c0                                     	vaddss xmm0,xmm11,xmm0
 5b2ff0bc762:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bc766:	8d b8 90 00 00 00                               	lea    edi,[rax+0x90]
 5b2ff0bc76c:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc770:	8b c8                                           	mov    ecx,eax
 5b2ff0bc772:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0bc775:	41 8b d0                                        	mov    edx,r8d
 5b2ff0bc778:	c5 fb 10 8d a0 fd ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0x260]
 5b2ff0bc780:	c5 f9 28 d0                                     	vmovapd xmm2,xmm0
 5b2ff0bc784:	8b df                                           	mov    ebx,edi
 5b2ff0bc786:	e8 a5 ed f0 ff                                  	call   0x5b2fefcb530
 5b2ff0bc78b:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
 5b2ff0bc78e:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bc792:	c4 c1 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x90]
 5b2ff0bc79c:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
 5b2ff0bc7a6:	8b cb                                           	mov    ecx,ebx
 5b2ff0bc7a8:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bc7af:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0bc7b3:	47 8b a4 18 ec 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xec]
 5b2ff0bc7bb:	43 83 bc 18 ec 00 00 00 00                      	cmp    DWORD PTR [r8+r11*1+0xec],0x0
 5b2ff0bc7c4:	0f 85 2c 00 00 00                               	jne    0x5b2ff0bc7f6
 5b2ff0bc7ca:	c4 c1 7a 10 84 08 98 01 00 00                   	vmovss xmm0,DWORD PTR [r8+rcx*1+0x198]
 5b2ff0bc7d4:	c4 c1 7a 10 b4 08 94 01 00 00                   	vmovss xmm6,DWORD PTR [r8+rcx*1+0x194]
 5b2ff0bc7de:	c4 c1 7a 10 bc 08 90 01 00 00                   	vmovss xmm7,DWORD PTR [r8+rcx*1+0x190]
 5b2ff0bc7e8:	49 8b fb                                        	mov    rdi,r11
 5b2ff0bc7eb:	8b d9                                           	mov    ebx,ecx
 5b2ff0bc7ed:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0bc7f1:	e9 dd 01 00 00                                  	jmp    0x5b2ff0bc9d3
 5b2ff0bc7f6:	c5 fb 10 85 50 fe ff ff                         	vmovsd xmm0,QWORD PTR [rbp-0x1b0]
 5b2ff0bc7fe:	c5 fa 59 85 30 fe ff ff                         	vmulss xmm0,xmm0,DWORD PTR [rbp-0x1d0]
 5b2ff0bc806:	c5 fb 10 b5 b8 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x148]
 5b2ff0bc80e:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
 5b2ff0bc816:	c5 fb 10 bd 00 ff ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x100]
 5b2ff0bc81e:	c5 c2 59 bd c8 fe ff ff                         	vmulss xmm7,xmm7,DWORD PTR [rbp-0x138]
 5b2ff0bc826:	c5 ca 58 f7                                     	vaddss xmm6,xmm6,xmm7
 5b2ff0bc82a:	c5 fa 58 c6                                     	vaddss xmm0,xmm0,xmm6
 5b2ff0bc82e:	c5 fb 10 b5 18 ff ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0xe8]
 5b2ff0bc836:	c5 ca 59 c0                                     	vmulss xmm0,xmm6,xmm0
 5b2ff0bc83a:	4c 8b 15 6e cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb6e]        # 0x5b2ff0b93af
 5b2ff0bc841:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0bc846:	c5 c0 57 ff                                     	vxorps xmm7,xmm7,xmm7
 5b2ff0bc84a:	c5 f8 2e f8                                     	vucomiss xmm7,xmm0
 5b2ff0bc84e:	0f 87 04 00 00 00                               	ja     0x5b2ff0bc858
 5b2ff0bc854:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0bc858:	47 8b a4 18 f0 00 00 00                         	mov    r12d,DWORD PTR [r8+r11*1+0xf0]
 5b2ff0bc860:	41 81 c4 00 f8 ff ff                            	add    r12d,0xfffff800
 5b2ff0bc867:	0f 85 28 00 00 00                               	jne    0x5b2ff0bc895
 5b2ff0bc86d:	c4 81 7a 10 84 18 f4 00 00 00                   	vmovss xmm0,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0bc877:	4c 8b 15 31 cb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcb31]        # 0x5b2ff0b93af
 5b2ff0bc87e:	c4 c1 78 57 02                                  	vxorps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0bc883:	c5 ca 59 c8                                     	vmulss xmm1,xmm6,xmm0
 5b2ff0bc887:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc88b:	e8 28 0d f1 ff                                  	call   0x5b2fefcd5b8
 5b2ff0bc890:	e9 94 00 00 00                                  	jmp    0x5b2ff0bc929
 5b2ff0bc895:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0bc899:	0f 84 67 00 00 00                               	je     0x5b2ff0bc906
 5b2ff0bc89f:	4d 8b d0                                        	mov    r10,r8
 5b2ff0bc8a2:	4d 8b c3                                        	mov    r8,r11
 5b2ff0bc8a5:	4d 8b da                                        	mov    r11,r10
 5b2ff0bc8a8:	c4 81 7a 10 84 03 fc 00 00 00                   	vmovss xmm0,DWORD PTR [r11+r8*1+0xfc]
 5b2ff0bc8b2:	c4 01 7a 5c 84 03 f8 00 00 00                   	vsubss xmm8,xmm0,DWORD PTR [r11+r8*1+0xf8]
 5b2ff0bc8bc:	c4 c1 78 2e f8                                  	vucomiss xmm7,xmm8
 5b2ff0bc8c1:	7a 06                                           	jp     0x5b2ff0bc8c9
 5b2ff0bc8c3:	0f 84 2a 00 00 00                               	je     0x5b2ff0bc8f3
 5b2ff0bc8c9:	c5 fa 5c c6                                     	vsubss xmm0,xmm0,xmm6
 5b2ff0bc8cd:	c4 c1 7a 5e c8                                  	vdivss xmm1,xmm0,xmm8
 5b2ff0bc8d2:	c5 f8 28 c9                                     	vmovaps xmm1,xmm1
 5b2ff0bc8d6:	c5 f8 2e f9                                     	vucomiss xmm7,xmm1
 5b2ff0bc8da:	0f 86 49 00 00 00                               	jbe    0x5b2ff0bc929
 5b2ff0bc8e0:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bc8e4:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bc8e9:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bc8ee:	e9 5b 00 00 00                                  	jmp    0x5b2ff0bc94e
 5b2ff0bc8f3:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bc8f7:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bc8fc:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bc901:	e9 44 00 00 00                                  	jmp    0x5b2ff0bc94a
 5b2ff0bc906:	c4 81 4a 59 84 18 f4 00 00 00                   	vmulss xmm0,xmm6,DWORD PTR [r8+r11*1+0xf4]
 5b2ff0bc910:	4c 8b 15 98 ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffca98]        # 0x5b2ff0b93af
 5b2ff0bc917:	c4 c1 78 57 32                                  	vxorps xmm6,xmm0,XMMWORD PTR [r10]
 5b2ff0bc91c:	c5 fa 59 ce                                     	vmulss xmm1,xmm0,xmm6
 5b2ff0bc920:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc924:	e8 8f 0c f1 ff                                  	call   0x5b2fefcd5b8
 5b2ff0bc929:	c5 f9 76 c0                                     	vpcmpeqd xmm0,xmm0,xmm0
 5b2ff0bc92d:	c5 f9 72 f0 19                                  	vpslld xmm0,xmm0,0x19
 5b2ff0bc932:	c5 f9 72 d0 02                                  	vpsrld xmm0,xmm0,0x2
 5b2ff0bc937:	c5 f8 2e c8                                     	vucomiss xmm1,xmm0
 5b2ff0bc93b:	0f 87 09 00 00 00                               	ja     0x5b2ff0bc94a
 5b2ff0bc941:	c5 f9 28 f9                                     	vmovapd xmm7,xmm1
 5b2ff0bc945:	e9 04 00 00 00                                  	jmp    0x5b2ff0bc94e
 5b2ff0bc94a:	c5 f9 28 f8                                     	vmovapd xmm7,xmm0
 5b2ff0bc94e:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
 5b2ff0bc951:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bc955:	c4 c1 42 59 b4 18 90 01 00 00                   	vmulss xmm6,xmm7,DWORD PTR [r8+rbx*1+0x190]
 5b2ff0bc95f:	c5 7a 5c c7                                     	vsubss xmm8,xmm0,xmm7
 5b2ff0bc963:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
 5b2ff0bc967:	c4 41 3a 59 8c 38 00 01 00 00                   	vmulss xmm9,xmm8,DWORD PTR [r8+rdi*1+0x100]
 5b2ff0bc971:	c4 c1 4a 58 f1                                  	vaddss xmm6,xmm6,xmm9
 5b2ff0bc976:	c4 c1 7a 11 b4 18 90 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x190],xmm6
 5b2ff0bc980:	c4 41 42 59 8c 18 94 01 00 00                   	vmulss xmm9,xmm7,DWORD PTR [r8+rbx*1+0x194]
 5b2ff0bc98a:	c4 41 3a 59 94 38 04 01 00 00                   	vmulss xmm10,xmm8,DWORD PTR [r8+rdi*1+0x104]
 5b2ff0bc994:	c4 41 32 58 ca                                  	vaddss xmm9,xmm9,xmm10
 5b2ff0bc999:	c4 41 7a 11 8c 18 94 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x194],xmm9
 5b2ff0bc9a3:	c4 c1 42 59 bc 18 98 01 00 00                   	vmulss xmm7,xmm7,DWORD PTR [r8+rbx*1+0x198]
 5b2ff0bc9ad:	c4 41 3a 59 84 38 08 01 00 00                   	vmulss xmm8,xmm8,DWORD PTR [r8+rdi*1+0x108]
 5b2ff0bc9b7:	c4 c1 42 58 f8                                  	vaddss xmm7,xmm7,xmm8
 5b2ff0bc9bc:	c4 c1 7a 11 bc 18 98 01 00 00                   	vmovss DWORD PTR [r8+rbx*1+0x198],xmm7
 5b2ff0bc9c6:	c5 79 28 c7                                     	vmovapd xmm8,xmm7
 5b2ff0bc9ca:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0bc9ce:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff0bc9d3:	c4 c1 7a 10 ac 18 9c 01 00 00                   	vmovss xmm5,DWORD PTR [r8+rbx*1+0x19c]
 5b2ff0bc9dd:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bc9e1:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bc9e4:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0bc9ea:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
 5b2ff0bc9f0:	c5 fb 10 8d 20 ff ff ff                         	vmovsd xmm1,QWORD PTR [rbp-0xe0]
 5b2ff0bc9f8:	c5 f9 28 d7                                     	vmovapd xmm2,xmm7
 5b2ff0bc9fc:	c5 f9 28 de                                     	vmovapd xmm3,xmm6
 5b2ff0bca00:	c4 c1 79 28 e0                                  	vmovapd xmm4,xmm8
 5b2ff0bca05:	e8 56 e8 f0 ff                                  	call   0x5b2fefcb260
 5b2ff0bca0a:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0bca0e:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0bca13:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0bca17:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0bca1c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0bca22:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0bca28:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bca2d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bca35:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0bca3d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0bca45:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0bca4d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0bca53:	e9 12 4d 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0bca58:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
 5b2ff0bca5c:	4c 8b bd 60 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xa0]
 5b2ff0bca63:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0bca67:	4e 89 7c 02 70                                  	mov    QWORD PTR [rdx+r8*1+0x70],r15
 5b2ff0bca6c:	4a 8d 0c 3f                                     	lea    rcx,[rdi+r15*1]
 5b2ff0bca70:	4a 89 8c 02 80 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x80],rcx
 5b2ff0bca78:	49 8b df                                        	mov    rbx,r15
 5b2ff0bca7b:	48 2b 9d d0 fc ff ff                            	sub    rbx,QWORD PTR [rbp-0x330]
 5b2ff0bca82:	4a 89 5c 02 78                                  	mov    QWORD PTR [rdx+r8*1+0x78],rbx
 5b2ff0bca87:	4c 8d 1c 1f                                     	lea    r11,[rdi+rbx*1]
 5b2ff0bca8b:	4e 89 9c 02 88 00 00 00                         	mov    QWORD PTR [rdx+r8*1+0x88],r11
 5b2ff0bca93:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
 5b2ff0bca9a:	4a 89 74 02 50                                  	mov    QWORD PTR [rdx+r8*1+0x50],rsi
 5b2ff0bca9f:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
 5b2ff0bcaa6:	4c 8d 24 37                                     	lea    r12,[rdi+rsi*1]
 5b2ff0bcaaa:	4e 89 64 02 60                                  	mov    QWORD PTR [rdx+r8*1+0x60],r12
 5b2ff0bcaaf:	48 8b c6                                        	mov    rax,rsi
 5b2ff0bcab2:	48 2b 85 f0 fc ff ff                            	sub    rax,QWORD PTR [rbp-0x310]
 5b2ff0bcab9:	4a 89 44 02 58                                  	mov    QWORD PTR [rdx+r8*1+0x58],rax
 5b2ff0bcabe:	4c 8d 0c 07                                     	lea    r9,[rdi+rax*1]
 5b2ff0bcac2:	4e 89 4c 02 68                                  	mov    QWORD PTR [rdx+r8*1+0x68],r9
 5b2ff0bcac7:	c5 f9 ef c0                                     	vpxor  xmm0,xmm0,xmm0
 5b2ff0bcacb:	c4 a1 7a 7f 44 02 40                            	vmovdqu XMMWORD PTR [rdx+r8*1+0x40],xmm0
 5b2ff0bcad2:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
 5b2ff0bcad9:	48 89 9d b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rbx
 5b2ff0bcae0:	4c 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r11
 5b2ff0bcae7:	4c 89 a5 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r12
 5b2ff0bcaee:	48 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rax
 5b2ff0bcaf5:	4c 89 8d 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r9
 5b2ff0bcafc:	33 ff                                           	xor    edi,edi
 5b2ff0bcafe:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
 5b2ff0bcb02:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0bcb06:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
 5b2ff0bcb0a:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
 5b2ff0bcb10:	c4 c1 79 28 fa                                  	vmovapd xmm7,xmm10
 5b2ff0bcb15:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
 5b2ff0bcb1c:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
 5b2ff0bcb23:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
 5b2ff0bcb2a:	c4 c1 79 28 f1                                  	vmovapd xmm6,xmm9
 5b2ff0bcb2f:	e9 10 00 00 00                                  	jmp    0x5b2ff0bcb44
 5b2ff0bcb34:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bcb3d:	0f 1f 00                                        	nop    DWORD PTR [rax]
 5b2ff0bcb40:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
 5b2ff0bcb44:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0bcb49:	0f 85 63 4f 00 00                               	jne    0x5b2ff0c1ab2
 5b2ff0bcb4f:	8b cf                                           	mov    ecx,edi
 5b2ff0bcb51:	41 bf 01 00 00 00                               	mov    r15d,0x1
 5b2ff0bcb57:	41 d3 e7                                        	shl    r15d,cl
 5b2ff0bcb5a:	44 85 bd 68 fd ff ff                            	test   DWORD PTR [rbp-0x298],r15d
 5b2ff0bcb61:	0f 84 69 01 00 00                               	je     0x5b2ff0bccd0
 5b2ff0bcb67:	41 8d 4c b8 40                                  	lea    ecx,[r8+rdi*4+0x40]
 5b2ff0bcb6c:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
 5b2ff0bcb73:	45 8d 7c f8 70                                  	lea    r15d,[r8+rdi*8+0x70]
 5b2ff0bcb78:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
 5b2ff0bcb7c:	c4 41 82 2a cf                                  	vcvtsi2ss xmm9,xmm15,r15
 5b2ff0bcb81:	c4 41 4a 59 c9                                  	vmulss xmm9,xmm6,xmm9
 5b2ff0bcb86:	c4 41 42 5c d1                                  	vsubss xmm10,xmm7,xmm9
 5b2ff0bcb8b:	45 8d 7c f8 50                                  	lea    r15d,[r8+rdi*8+0x50]
 5b2ff0bcb90:	4e 8b 3c 3a                                     	mov    r15,QWORD PTR [rdx+r15*1]
 5b2ff0bcb94:	c4 41 82 2a df                                  	vcvtsi2ss xmm11,xmm15,r15
 5b2ff0bcb99:	c4 41 4a 59 db                                  	vmulss xmm11,xmm6,xmm11
 5b2ff0bcb9e:	c4 41 2a 5c d3                                  	vsubss xmm10,xmm10,xmm11
 5b2ff0bcba3:	c4 21 2a 59 54 0a 18                            	vmulss xmm10,xmm10,DWORD PTR [rdx+r9*1+0x18]
 5b2ff0bcbaa:	c4 21 32 59 4c 22 18                            	vmulss xmm9,xmm9,DWORD PTR [rdx+r12*1+0x18]
 5b2ff0bcbb1:	c5 22 59 5c 02 18                               	vmulss xmm11,xmm11,DWORD PTR [rdx+rax*1+0x18]
 5b2ff0bcbb7:	c4 41 32 58 cb                                  	vaddss xmm9,xmm9,xmm11
 5b2ff0bcbbc:	c4 41 2a 58 c9                                  	vaddss xmm9,xmm10,xmm9
 5b2ff0bcbc1:	c4 41 72 58 c9                                  	vaddss xmm9,xmm1,xmm9
 5b2ff0bcbc6:	c5 7a 11 0c 0a                                  	vmovss DWORD PTR [rdx+rcx*1],xmm9
 5b2ff0bcbcb:	44 8b 7c 32 68                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0x68]
 5b2ff0bcbd0:	83 7c 32 68 00                                  	cmp    DWORD PTR [rdx+rsi*1+0x68],0x0
 5b2ff0bcbd5:	0f 84 f5 00 00 00                               	je     0x5b2ff0bccd0
 5b2ff0bcbdb:	44 8b bc 32 a4 00 00 00                         	mov    r15d,DWORD PTR [rdx+rsi*1+0xa4]
 5b2ff0bcbe3:	83 bc 32 a4 00 00 00 00                         	cmp    DWORD PTR [rdx+rsi*1+0xa4],0x0
 5b2ff0bcbeb:	0f 85 df 00 00 00                               	jne    0x5b2ff0bccd0
 5b2ff0bcbf1:	44 8b 7c 32 0c                                  	mov    r15d,DWORD PTR [rdx+rsi*1+0xc]
 5b2ff0bcbf6:	8b 0c 32                                        	mov    ecx,DWORD PTR [rdx+rsi*1]
 5b2ff0bcbf9:	44 8b c7                                        	mov    r8d,edi
 5b2ff0bcbfc:	41 d1 e8                                        	shr    r8d,1
 5b2ff0bcbff:	45 03 c3                                        	add    r8d,r11d
 5b2ff0bcc02:	44 0f af c1                                     	imul   r8d,ecx
 5b2ff0bcc06:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
 5b2ff0bcc0a:	45 8d 04 98                                     	lea    r8d,[r8+rbx*4]
 5b2ff0bcc0e:	44 8b ff                                        	mov    r15d,edi
 5b2ff0bcc11:	41 83 e7 01                                     	and    r15d,0x1
 5b2ff0bcc15:	47 8d 04 b8                                     	lea    r8d,[r8+r15*4]
 5b2ff0bcc19:	c4 21 7a 10 14 02                               	vmovss xmm10,DWORD PTR [rdx+r8*1]
 5b2ff0bcc1f:	44 8b 44 32 6c                                  	mov    r8d,DWORD PTR [rdx+rsi*1+0x6c]
 5b2ff0bcc24:	41 81 e8 00 02 00 00                            	sub    r8d,0x200
 5b2ff0bcc2b:	41 83 f8 08                                     	cmp    r8d,0x8
 5b2ff0bcc2f:	0f 83 0b 00 00 00                               	jae    0x5b2ff0bcc40
 5b2ff0bcc35:	4c 8d 15 2c 51 00 00                            	lea    r10,[rip+0x512c]        # 0x5b2ff0c1d68
 5b2ff0bcc3c:	43 ff 24 c2                                     	jmp    QWORD PTR [r10+r8*8]
 5b2ff0bcc40:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
 5b2ff0bcc45:	0f 87 85 00 00 00                               	ja     0x5b2ff0bccd0
 5b2ff0bcc4b:	e9 67 00 00 00                                  	jmp    0x5b2ff0bccb7
 5b2ff0bcc50:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
 5b2ff0bcc55:	0f 83 75 00 00 00                               	jae    0x5b2ff0bccd0
 5b2ff0bcc5b:	e9 57 00 00 00                                  	jmp    0x5b2ff0bccb7
 5b2ff0bcc60:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
 5b2ff0bcc65:	0f 8a 65 00 00 00                               	jp     0x5b2ff0bccd0
 5b2ff0bcc6b:	0f 84 46 00 00 00                               	je     0x5b2ff0bccb7
 5b2ff0bcc71:	e9 5a 00 00 00                                  	jmp    0x5b2ff0bccd0
 5b2ff0bcc76:	c4 41 78 2e ca                                  	vucomiss xmm9,xmm10
 5b2ff0bcc7b:	0f 87 4f 00 00 00                               	ja     0x5b2ff0bccd0
 5b2ff0bcc81:	e9 31 00 00 00                                  	jmp    0x5b2ff0bccb7
 5b2ff0bcc86:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
 5b2ff0bcc8b:	0f 83 3f 00 00 00                               	jae    0x5b2ff0bccd0
 5b2ff0bcc91:	e9 21 00 00 00                                  	jmp    0x5b2ff0bccb7
 5b2ff0bcc96:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
 5b2ff0bcc9b:	0f 8a 16 00 00 00                               	jp     0x5b2ff0bccb7
 5b2ff0bcca1:	0f 84 29 00 00 00                               	je     0x5b2ff0bccd0
 5b2ff0bcca7:	e9 0b 00 00 00                                  	jmp    0x5b2ff0bccb7
 5b2ff0bccac:	c4 41 78 2e d1                                  	vucomiss xmm10,xmm9
 5b2ff0bccb1:	0f 87 19 00 00 00                               	ja     0x5b2ff0bccd0
 5b2ff0bccb7:	44 8b bd 30 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x1d0]
 5b2ff0bccbe:	41 83 f7 ff                                     	xor    r15d,0xffffffff
 5b2ff0bccc2:	44 23 bd 68 fd ff ff                            	and    r15d,DWORD PTR [rbp-0x298]
 5b2ff0bccc9:	4c 89 bd 68 fd ff ff                            	mov    QWORD PTR [rbp-0x298],r15
 5b2ff0bccd0:	83 c7 01                                        	add    edi,0x1
 5b2ff0bccd3:	83 ff 04                                        	cmp    edi,0x4
 5b2ff0bccd6:	0f 85 64 fe ff ff                               	jne    0x5b2ff0bcb40
 5b2ff0bccdc:	8b bd 68 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x298]
 5b2ff0bcce2:	85 ff                                           	test   edi,edi
 5b2ff0bcce4:	0f 85 1d 00 00 00                               	jne    0x5b2ff0bcd07
 5b2ff0bccea:	4c 8b c6                                        	mov    r8,rsi
 5b2ff0bcced:	c5 79 28 d7                                     	vmovapd xmm10,xmm7
 5b2ff0bccf1:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0bccf5:	c5 f9 28 f1                                     	vmovapd xmm6,xmm1
 5b2ff0bccf9:	4c 8b e2                                        	mov    r12,rdx
 5b2ff0bccfc:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0bcd02:	e9 63 4a 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0bcd07:	c4 61 82 2a 8d 60 ff ff ff                      	vcvtsi2ss xmm9,xmm15,QWORD PTR [rbp-0xa0]
 5b2ff0bcd10:	c4 42 79 18 c9                                  	vbroadcastss xmm9,xmm9
 5b2ff0bcd15:	c4 61 82 2a 95 b0 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x150]
 5b2ff0bcd1e:	c4 43 31 21 ca 10                               	vinsertps xmm9,xmm9,xmm10,0x10
 5b2ff0bcd24:	c4 61 82 2a 95 b8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x148]
 5b2ff0bcd2d:	c4 43 31 21 ca 20                               	vinsertps xmm9,xmm9,xmm10,0x20
 5b2ff0bcd33:	c4 61 82 2a 95 c8 fe ff ff                      	vcvtsi2ss xmm10,xmm15,QWORD PTR [rbp-0x138]
 5b2ff0bcd3c:	c4 43 31 21 ca 30                               	vinsertps xmm9,xmm9,xmm10,0x30
 5b2ff0bcd42:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
 5b2ff0bcd4a:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
 5b2ff0bcd4f:	4c 8d 42 1c                                     	lea    r8,[rdx+0x1c]
 5b2ff0bcd53:	c4 02 79 18 1c 20                               	vbroadcastss xmm11,DWORD PTR [r8+r12*1]
 5b2ff0bcd59:	c4 41 30 59 db                                  	vmulps xmm11,xmm9,xmm11
 5b2ff0bcd5e:	c4 e1 82 2a 95 50 ff ff ff                      	vcvtsi2ss xmm2,xmm15,QWORD PTR [rbp-0xb0]
 5b2ff0bcd67:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
 5b2ff0bcd6c:	c4 e1 82 2a 9d 00 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0x100]
 5b2ff0bcd75:	c4 e3 69 21 d3 10                               	vinsertps xmm2,xmm2,xmm3,0x10
 5b2ff0bcd7b:	c4 e1 82 2a 9d 18 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe8]
 5b2ff0bcd84:	c4 e3 69 21 d3 20                               	vinsertps xmm2,xmm2,xmm3,0x20
 5b2ff0bcd8a:	c4 e1 82 2a 9d 20 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xe0]
 5b2ff0bcd93:	c4 e3 69 21 d3 30                               	vinsertps xmm2,xmm2,xmm3,0x30
 5b2ff0bcd99:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
 5b2ff0bcd9d:	c4 c2 79 18 1c 00                               	vbroadcastss xmm3,DWORD PTR [r8+rax*1]
 5b2ff0bcda3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
 5b2ff0bcda7:	c5 a0 58 e3                                     	vaddps xmm4,xmm11,xmm3
 5b2ff0bcdab:	4c 8b 15 1f d8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd81f]        # 0x5b2ff0ba5d1
 5b2ff0bcdb2:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0bcdb7:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff0bcdbb:	c4 41 50 5c c9                                  	vsubps xmm9,xmm5,xmm9
 5b2ff0bcdc0:	c5 30 5c ca                                     	vsubps xmm9,xmm9,xmm2
 5b2ff0bcdc4:	c4 82 79 18 14 08                               	vbroadcastss xmm2,DWORD PTR [r8+r9*1]
 5b2ff0bcdca:	c5 30 59 ca                                     	vmulps xmm9,xmm9,xmm2
 5b2ff0bcdce:	c4 c1 58 58 d1                                  	vaddps xmm2,xmm4,xmm9
 5b2ff0bcdd3:	c5 d9 ef e4                                     	vpxor  xmm4,xmm4,xmm4
 5b2ff0bcdd7:	c5 e8 c2 f4 02                                  	vcmpleps xmm6,xmm2,xmm4
 5b2ff0bcddc:	c5 78 50 c6                                     	vmovmskps r8d,xmm6
 5b2ff0bcde0:	41 83 f0 ff                                     	xor    r8d,0xffffffff
 5b2ff0bcde4:	44 23 c7                                        	and    r8d,edi
 5b2ff0bcde7:	0f 85 16 00 00 00                               	jne    0x5b2ff0bce03
 5b2ff0bcded:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
 5b2ff0bcdf4:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
 5b2ff0bcdf7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bcdfe:	e9 7c 2a 00 00                                  	jmp    0x5b2ff0bf87f
 5b2ff0bce03:	c5 d0 5e f2                                     	vdivps xmm6,xmm5,xmm2
 5b2ff0bce07:	48 8d 7a 2c                                     	lea    rdi,[rdx+0x2c]
 5b2ff0bce0b:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
 5b2ff0bce11:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0bce15:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
 5b2ff0bce1b:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
 5b2ff0bce1f:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
 5b2ff0bce23:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
 5b2ff0bce29:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
 5b2ff0bce2d:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
 5b2ff0bce31:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
 5b2ff0bce35:	48 8d 7a 28                                     	lea    rdi,[rdx+0x28]
 5b2ff0bce39:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
 5b2ff0bce3f:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0bce43:	c5 f8 11 bd d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm7
 5b2ff0bce4b:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
 5b2ff0bce51:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
 5b2ff0bce55:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
 5b2ff0bce59:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
 5b2ff0bce5f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
 5b2ff0bce63:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
 5b2ff0bce67:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
 5b2ff0bce6b:	48 8d 7a 24                                     	lea    rdi,[rdx+0x24]
 5b2ff0bce6f:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
 5b2ff0bce75:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0bce79:	c5 f8 11 bd a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm7
 5b2ff0bce81:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
 5b2ff0bce87:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
 5b2ff0bce8b:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
 5b2ff0bce8f:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
 5b2ff0bce95:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
 5b2ff0bce99:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
 5b2ff0bce9d:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
 5b2ff0bcea1:	48 8d 7a 20                                     	lea    rdi,[rdx+0x20]
 5b2ff0bcea5:	c4 a2 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [rdi+r12*1]
 5b2ff0bceab:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0bceaf:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
 5b2ff0bceb7:	c4 e2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [rdi+rax*1]
 5b2ff0bcebd:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
 5b2ff0bcec1:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
 5b2ff0bcec5:	c4 a2 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [rdi+r9*1]
 5b2ff0bcecb:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
 5b2ff0bcecf:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
 5b2ff0bced3:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
 5b2ff0bced7:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bcede:	44 8b bc 3a 34 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x134]
 5b2ff0bcee6:	41 83 ef 01                                     	sub    r15d,0x1
 5b2ff0bceea:	4c 89 85 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],r8
 5b2ff0bcef1:	41 83 ff 01                                     	cmp    r15d,0x1
 5b2ff0bcef5:	0f 86 5a 17 00 00                               	jbe    0x5b2ff0be655
 5b2ff0bcefb:	44 8b bc 3a 38 01 00 00                         	mov    r15d,DWORD PTR [rdx+rdi*1+0x138]
 5b2ff0bcf03:	83 bc 3a 38 01 00 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0x138],0x0
 5b2ff0bcf0b:	0f 85 24 00 00 00                               	jne    0x5b2ff0bcf35
 5b2ff0bcf11:	c5 78 10 85 f0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x110]
 5b2ff0bcf19:	c5 f9 28 c7                                     	vmovapd xmm0,xmm7
 5b2ff0bcf1d:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
 5b2ff0bcf25:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
 5b2ff0bcf2d:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
 5b2ff0bcf30:	e9 d7 28 00 00                                  	jmp    0x5b2ff0bf80c
 5b2ff0bcf35:	4d 8b f8                                        	mov    r15,r8
 5b2ff0bcf38:	41 83 e7 08                                     	and    r15d,0x8
 5b2ff0bcf3c:	49 8b c8                                        	mov    rcx,r8
 5b2ff0bcf3f:	83 e1 04                                        	and    ecx,0x4
 5b2ff0bcf42:	4c 89 bd b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],r15
 5b2ff0bcf49:	4d 8b f8                                        	mov    r15,r8
 5b2ff0bcf4c:	41 83 e7 02                                     	and    r15d,0x2
 5b2ff0bcf50:	41 83 e0 01                                     	and    r8d,0x1
 5b2ff0bcf54:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
 5b2ff0bcf5c:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
 5b2ff0bcf64:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
 5b2ff0bcf6c:	c5 78 11 8d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm9
 5b2ff0bcf74:	c5 f8 11 9d 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm3
 5b2ff0bcf7c:	c5 78 11 9d f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm11
 5b2ff0bcf84:	c5 f8 11 ad d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm5
 5b2ff0bcf8c:	c5 f8 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm4
 5b2ff0bcf94:	48 89 8d 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rcx
 5b2ff0bcf9b:	4c 89 bd 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r15
 5b2ff0bcfa2:	4c 89 85 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],r8
 5b2ff0bcfa9:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0bcfac:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0bcfb0:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
 5b2ff0bcfb8:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
 5b2ff0bcfc0:	e9 6a 00 00 00                                  	jmp    0x5b2ff0bd02f
 5b2ff0bcfc5:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bcfce:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bcfd7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bcfe0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bcfe9:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bcff2:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bcffb:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
 5b2ff0bd000:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
 5b2ff0bd008:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
 5b2ff0bd010:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bd017:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
 5b2ff0bd01f:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
 5b2ff0bd027:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
 5b2ff0bd02f:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0bd032:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
 5b2ff0bd038:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
 5b2ff0bd03f:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
 5b2ff0bd046:	4c 89 85 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r8
 5b2ff0bd04d:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0bd052:	0f 85 e4 4a 00 00                               	jne    0x5b2ff0c1b3c
 5b2ff0bd058:	44 8b 8c 3a 3c 01 00 00                         	mov    r9d,DWORD PTR [rdx+rdi*1+0x13c]
 5b2ff0bd060:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0bd063:	41 d3 e9                                        	shr    r9d,cl
 5b2ff0bd066:	41 f6 c1 01                                     	test   r9b,0x1
 5b2ff0bd06a:	0f 85 2d 00 00 00                               	jne    0x5b2ff0bd09d
 5b2ff0bd070:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
 5b2ff0bd077:	45 8b c8                                        	mov    r9d,r8d
 5b2ff0bd07a:	41 c1 e1 06                                     	shl    r9d,0x6
 5b2ff0bd07e:	41 03 c9                                        	add    ecx,r9d
 5b2ff0bd081:	c5 fa 7f 6c 0a 30                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x30],xmm5
 5b2ff0bd087:	c5 fa 7f 6c 0a 20                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x20],xmm5
 5b2ff0bd08d:	c5 fa 7f 6c 0a 10                               	vmovdqu XMMWORD PTR [rdx+rcx*1+0x10],xmm5
 5b2ff0bd093:	c5 fa 7f 2c 0a                                  	vmovdqu XMMWORD PTR [rdx+rcx*1],xmm5
 5b2ff0bd098:	e9 11 12 00 00                                  	jmp    0x5b2ff0be2ae
 5b2ff0bd09d:	41 8d 8b 90 00 00 00                            	lea    ecx,[r11+0x90]
 5b2ff0bd0a4:	45 8b c8                                        	mov    r9d,r8d
 5b2ff0bd0a7:	41 c1 e1 06                                     	shl    r9d,0x6
 5b2ff0bd0ab:	44 03 c9                                        	add    r9d,ecx
 5b2ff0bd0ae:	41 6b c8 4c                                     	imul   ecx,r8d,0x4c
 5b2ff0bd0b2:	03 c8                                           	add    ecx,eax
 5b2ff0bd0b4:	8b 7c 0a 38                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x38]
 5b2ff0bd0b8:	83 7c 0a 38 00                                  	cmp    DWORD PTR [rdx+rcx*1+0x38],0x0
 5b2ff0bd0bd:	0f 85 a2 11 00 00                               	jne    0x5b2ff0be265
 5b2ff0bd0c3:	41 8b f8                                        	mov    edi,r8d
 5b2ff0bd0c6:	c1 e7 04                                        	shl    edi,0x4
 5b2ff0bd0c9:	46 8d 04 27                                     	lea    r8d,[rdi+r12*1]
 5b2ff0bd0cd:	4c 8d 62 04                                     	lea    r12,[rdx+0x4]
 5b2ff0bd0d1:	c4 02 79 18 04 04                               	vbroadcastss xmm8,DWORD PTR [r12+r8*1]
 5b2ff0bd0d7:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
 5b2ff0bd0dc:	41 8d 04 3f                                     	lea    eax,[r15+rdi*1]
 5b2ff0bd0e0:	c4 42 79 18 14 04                               	vbroadcastss xmm10,DWORD PTR [r12+rax*1]
 5b2ff0bd0e6:	c4 41 60 59 d2                                  	vmulps xmm10,xmm3,xmm10
 5b2ff0bd0eb:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
 5b2ff0bd0f0:	03 fb                                           	add    edi,ebx
 5b2ff0bd0f2:	c4 42 79 18 14 3c                               	vbroadcastss xmm10,DWORD PTR [r12+rdi*1]
 5b2ff0bd0f8:	c4 41 30 59 d2                                  	vmulps xmm10,xmm9,xmm10
 5b2ff0bd0fd:	c4 41 38 58 c2                                  	vaddps xmm8,xmm8,xmm10
 5b2ff0bd102:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
 5b2ff0bd107:	c4 22 79 18 14 02                               	vbroadcastss xmm10,DWORD PTR [rdx+r8*1]
 5b2ff0bd10d:	c4 41 20 59 d2                                  	vmulps xmm10,xmm11,xmm10
 5b2ff0bd112:	c4 62 79 18 24 02                               	vbroadcastss xmm12,DWORD PTR [rdx+rax*1]
 5b2ff0bd118:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
 5b2ff0bd11d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
 5b2ff0bd122:	c4 62 79 18 24 3a                               	vbroadcastss xmm12,DWORD PTR [rdx+rdi*1]
 5b2ff0bd128:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
 5b2ff0bd12d:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
 5b2ff0bd132:	c4 41 48 59 d2                                  	vmulps xmm10,xmm6,xmm10
 5b2ff0bd137:	44 8b 24 0a                                     	mov    r12d,DWORD PTR [rdx+rcx*1]
 5b2ff0bd13b:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0bd13f:	0f 85 22 0e 00 00                               	jne    0x5b2ff0bdf67
 5b2ff0bd145:	44 8b 7c 0a 28                                  	mov    r15d,DWORD PTR [rdx+rcx*1+0x28]
 5b2ff0bd14a:	45 85 ff                                        	test   r15d,r15d
 5b2ff0bd14d:	0f 84 14 0e 00 00                               	je     0x5b2ff0bdf67
 5b2ff0bd153:	8b 5c 0a 1c                                     	mov    ebx,DWORD PTR [rdx+rcx*1+0x1c]
 5b2ff0bd157:	85 db                                           	test   ebx,ebx
 5b2ff0bd159:	0f 8e 08 0e 00 00                               	jle    0x5b2ff0bdf67
 5b2ff0bd15f:	44 8b 5c 0a 20                                  	mov    r11d,DWORD PTR [rdx+rcx*1+0x20]
 5b2ff0bd164:	45 85 db                                        	test   r11d,r11d
 5b2ff0bd167:	0f 8e f6 0d 00 00                               	jle    0x5b2ff0bdf63
 5b2ff0bd16d:	44 8b d3                                        	mov    r10d,ebx
 5b2ff0bd170:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
 5b2ff0bd175:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
 5b2ff0bd17a:	8b 7c 0a 10                                     	mov    edi,DWORD PTR [rdx+rcx*1+0x10]
 5b2ff0bd17e:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0bd181:	81 ff 2f 81 00 00                               	cmp    edi,0x812f
 5b2ff0bd187:	41 0f 95 c0                                     	setne  r8b
 5b2ff0bd18b:	81 ff 00 29 00 00                               	cmp    edi,0x2900
 5b2ff0bd191:	40 0f 95 c7                                     	setne  dil
 5b2ff0bd195:	40 0f b6 ff                                     	movzx  edi,dil
 5b2ff0bd199:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
 5b2ff0bd1a0:	41 23 f8                                        	and    edi,r8d
 5b2ff0bd1a3:	0f 85 0f 00 00 00                               	jne    0x5b2ff0bd1b8
 5b2ff0bd1a9:	c4 41 58 5f d2                                  	vmaxps xmm10,xmm4,xmm10
 5b2ff0bd1ae:	c4 41 50 5d d2                                  	vminps xmm10,xmm5,xmm10
 5b2ff0bd1b3:	e9 0b 00 00 00                                  	jmp    0x5b2ff0bd1c3
 5b2ff0bd1b8:	c4 43 79 08 ea 09                               	vroundps xmm13,xmm10,0x9
 5b2ff0bd1be:	c4 41 28 5c d5                                  	vsubps xmm10,xmm10,xmm13
 5b2ff0bd1c3:	c4 41 18 59 d2                                  	vmulps xmm10,xmm12,xmm10
 5b2ff0bd1c8:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0bd1cb:	c4 41 82 2a e2                                  	vcvtsi2ss xmm12,xmm15,r10
 5b2ff0bd1d0:	c4 42 79 18 e4                                  	vbroadcastss xmm12,xmm12
 5b2ff0bd1d5:	44 8b 44 0a 14                                  	mov    r8d,DWORD PTR [rdx+rcx*1+0x14]
 5b2ff0bd1da:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0bd1dd:	41 81 f8 2f 81 00 00                            	cmp    r8d,0x812f
 5b2ff0bd1e4:	41 0f 95 c4                                     	setne  r12b
 5b2ff0bd1e8:	41 81 f8 00 29 00 00                            	cmp    r8d,0x2900
 5b2ff0bd1ef:	41 0f 95 c0                                     	setne  r8b
 5b2ff0bd1f3:	45 0f b6 c0                                     	movzx  r8d,r8b
 5b2ff0bd1f7:	45 23 c4                                        	and    r8d,r12d
 5b2ff0bd1fa:	0f 85 0f 00 00 00                               	jne    0x5b2ff0bd20f
 5b2ff0bd200:	c4 41 58 5f c0                                  	vmaxps xmm8,xmm4,xmm8
 5b2ff0bd205:	c4 41 50 5d c0                                  	vminps xmm8,xmm5,xmm8
 5b2ff0bd20a:	e9 0b 00 00 00                                  	jmp    0x5b2ff0bd21a
 5b2ff0bd20f:	c4 43 79 08 e8 09                               	vroundps xmm13,xmm8,0x9
 5b2ff0bd215:	c4 41 38 5c c5                                  	vsubps xmm8,xmm8,xmm13
 5b2ff0bd21a:	c4 41 18 59 c0                                  	vmulps xmm8,xmm12,xmm8
 5b2ff0bd21f:	49 ba 00 00 00 bf 00 00 00 bf                   	movabs r10,0xbf000000bf000000
 5b2ff0bd229:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0bd22e:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0bd233:	c4 41 38 58 ec                                  	vaddps xmm13,xmm8,xmm12
 5b2ff0bd238:	44 8b 64 0a 0c                                  	mov    r12d,DWORD PTR [rdx+rcx*1+0xc]
 5b2ff0bd23d:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0bd240:	81 7c 0a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rcx*1+0xc],0x2600
 5b2ff0bd248:	41 0f 94 c4                                     	sete   r12b
 5b2ff0bd24c:	45 85 e4                                        	test   r12d,r12d
 5b2ff0bd24f:	0f 85 66 00 00 00                               	jne    0x5b2ff0bd2bb
 5b2ff0bd255:	c4 43 79 08 c5 09                               	vroundps xmm8,xmm13,0x9
 5b2ff0bd25b:	49 ba 50 08 09 67 4c 63 00 00                   	movabs r10,0x634c67090850
 5b2ff0bd265:	c4 41 38 54 32                                  	vandps xmm14,xmm8,XMMWORD PTR [r10]
 5b2ff0bd26a:	49 ba 00 00 00 4f 00 00 00 4f                   	movabs r10,0x4f0000004f000000
 5b2ff0bd274:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
 5b2ff0bd279:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
 5b2ff0bd27d:	c5 08 c2 f1 01                                  	vcmpltps xmm14,xmm14,xmm1
 5b2ff0bd282:	4c 8b 15 95 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd95]        # 0x5b2ff0b901e
 5b2ff0bd289:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0bd28f:	c4 c1 38 54 e7                                  	vandps xmm4,xmm8,xmm15
 5b2ff0bd294:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0bd29a:	c5 fa 5b e4                                     	vcvttps2dq xmm4,xmm4
 5b2ff0bd29e:	c4 c1 59 ef e7                                  	vpxor  xmm4,xmm4,xmm15
 5b2ff0bd2a3:	c4 41 28 58 d4                                  	vaddps xmm10,xmm10,xmm12
 5b2ff0bd2a8:	c4 41 79 28 e0                                  	vmovapd xmm12,xmm8
 5b2ff0bd2ad:	c4 41 79 28 c5                                  	vmovapd xmm8,xmm13
 5b2ff0bd2b2:	c5 79 28 ec                                     	vmovapd xmm13,xmm4
 5b2ff0bd2b6:	e9 49 00 00 00                                  	jmp    0x5b2ff0bd304
 5b2ff0bd2bb:	c4 43 79 08 e0 09                               	vroundps xmm12,xmm8,0x9
 5b2ff0bd2c1:	4c 8b 15 95 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff95]        # 0x5b2ff0bd25d
 5b2ff0bd2c8:	c4 41 18 54 2a                                  	vandps xmm13,xmm12,XMMWORD PTR [r10]
 5b2ff0bd2cd:	4c 8b 15 98 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff98]        # 0x5b2ff0bd26c
 5b2ff0bd2d4:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
 5b2ff0bd2d9:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
 5b2ff0bd2dd:	c5 10 c2 f1 01                                  	vcmpltps xmm14,xmm13,xmm1
 5b2ff0bd2e2:	4c 8b 15 35 bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd35]        # 0x5b2ff0b901e
 5b2ff0bd2e9:	c4 41 18 c2 fc 00                               	vcmpeqps xmm15,xmm12,xmm12
 5b2ff0bd2ef:	c4 41 18 54 ef                                  	vandps xmm13,xmm12,xmm15
 5b2ff0bd2f4:	c4 41 18 c2 3a 0d                               	vcmpgeps xmm15,xmm12,XMMWORD PTR [r10]
 5b2ff0bd2fa:	c4 41 7a 5b ed                                  	vcvttps2dq xmm13,xmm13
 5b2ff0bd2ff:	c4 41 11 ef ef                                  	vpxor  xmm13,xmm13,xmm15
 5b2ff0bd304:	c4 c3 79 08 e2 09                               	vroundps xmm4,xmm10,0x9
 5b2ff0bd30a:	4c 8b 15 0d bd ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffbd0d]        # 0x5b2ff0b901e
 5b2ff0bd311:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
 5b2ff0bd316:	c4 c1 58 54 c7                                  	vandps xmm0,xmm4,xmm15
 5b2ff0bd31b:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
 5b2ff0bd321:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
 5b2ff0bd325:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
 5b2ff0bd32a:	49 ba 00 00 00 80 00 00 00 80                   	movabs r10,0x8000000080000000
 5b2ff0bd334:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
 5b2ff0bd339:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
 5b2ff0bd33d:	4c 8b 15 19 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffff19]        # 0x5b2ff0bd25d
 5b2ff0bd344:	c4 41 58 54 0a                                  	vandps xmm9,xmm4,XMMWORD PTR [r10]
 5b2ff0bd349:	c5 30 c2 c9 01                                  	vcmpltps xmm9,xmm9,xmm1
 5b2ff0bd34e:	c5 31 df fe                                     	vpandn xmm15,xmm9,xmm6
 5b2ff0bd352:	c4 c1 79 db c1                                  	vpand  xmm0,xmm0,xmm9
 5b2ff0bd357:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0bd35c:	8d 43 ff                                        	lea    eax,[rbx-0x1]
 5b2ff0bd35f:	c5 79 6e c8                                     	vmovd  xmm9,eax
 5b2ff0bd363:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
 5b2ff0bd368:	8b 44 0a 2c                                     	mov    eax,DWORD PTR [rdx+rcx*1+0x2c]
 5b2ff0bd36c:	c4 e2 79 3d ca                                  	vpmaxsd xmm1,xmm0,xmm2
 5b2ff0bd371:	c4 c2 71 39 c9                                  	vpminsd xmm1,xmm1,xmm9
 5b2ff0bd376:	85 ff                                           	test   edi,edi
 5b2ff0bd378:	0f 84 58 00 00 00                               	je     0x5b2ff0bd3d6
 5b2ff0bd37e:	c5 f9 6e c8                                     	vmovd  xmm1,eax
 5b2ff0bd382:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
 5b2ff0bd387:	c5 f9 db c9                                     	vpand  xmm1,xmm0,xmm1
 5b2ff0bd38b:	85 c0                                           	test   eax,eax
 5b2ff0bd38d:	0f 85 43 00 00 00                               	jne    0x5b2ff0bd3d6
 5b2ff0bd393:	c5 f9 6e cb                                     	vmovd  xmm1,ebx
 5b2ff0bd397:	c5 f9 70 c9 00                                  	vpshufd xmm1,xmm1,0x0
 5b2ff0bd39c:	c4 c1 79 66 d9                                  	vpcmpgtd xmm3,xmm0,xmm9
 5b2ff0bd3a1:	c5 e1 db d9                                     	vpand  xmm3,xmm3,xmm1
 5b2ff0bd3a5:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0bd3aa:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
 5b2ff0bd3af:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
 5b2ff0bd3b3:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
 5b2ff0bd3b7:	c4 41 71 db db                                  	vpand  xmm11,xmm1,xmm11
 5b2ff0bd3bc:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
 5b2ff0bd3c1:	c4 c1 79 fe cb                                  	vpaddd xmm1,xmm0,xmm11
 5b2ff0bd3c6:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
 5b2ff0bd3ce:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
 5b2ff0bd3d6:	c5 09 df fe                                     	vpandn xmm15,xmm14,xmm6
 5b2ff0bd3da:	c4 c1 11 db f6                                  	vpand  xmm6,xmm13,xmm14
 5b2ff0bd3df:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0bd3e4:	45 8d 4b ff                                     	lea    r9d,[r11-0x1]
 5b2ff0bd3e8:	c4 41 79 6e e9                                  	vmovd  xmm13,r9d
 5b2ff0bd3ed:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0bd3f2:	8b 4c 0a 30                                     	mov    ecx,DWORD PTR [rdx+rcx*1+0x30]
 5b2ff0bd3f6:	c4 62 49 3d f2                                  	vpmaxsd xmm14,xmm6,xmm2
 5b2ff0bd3fb:	c4 42 09 39 f5                                  	vpminsd xmm14,xmm14,xmm13
 5b2ff0bd400:	45 85 c0                                        	test   r8d,r8d
 5b2ff0bd403:	0f 84 4a 00 00 00                               	je     0x5b2ff0bd453
 5b2ff0bd409:	c5 79 6e f1                                     	vmovd  xmm14,ecx
 5b2ff0bd40d:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
 5b2ff0bd412:	c5 09 db f6                                     	vpand  xmm14,xmm14,xmm6
 5b2ff0bd416:	85 c9                                           	test   ecx,ecx
 5b2ff0bd418:	0f 85 35 00 00 00                               	jne    0x5b2ff0bd453
 5b2ff0bd41e:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
 5b2ff0bd423:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
 5b2ff0bd428:	c4 c1 49 66 dd                                  	vpcmpgtd xmm3,xmm6,xmm13
 5b2ff0bd42d:	c4 c1 61 db de                                  	vpand  xmm3,xmm3,xmm14
 5b2ff0bd432:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0bd437:	c4 c2 61 0a df                                  	vpsignd xmm3,xmm3,xmm15
 5b2ff0bd43c:	c5 69 66 de                                     	vpcmpgtd xmm11,xmm2,xmm6
 5b2ff0bd440:	c5 21 df fb                                     	vpandn xmm15,xmm11,xmm3
 5b2ff0bd444:	c4 41 09 db db                                  	vpand  xmm11,xmm14,xmm11
 5b2ff0bd449:	c4 41 21 eb df                                  	vpor   xmm11,xmm11,xmm15
 5b2ff0bd44e:	c4 41 49 fe f3                                  	vpaddd xmm14,xmm6,xmm11
 5b2ff0bd453:	c5 f9 6e db                                     	vmovd  xmm3,ebx
 5b2ff0bd457:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
 5b2ff0bd45c:	c4 62 09 40 f3                                  	vpmulld xmm14,xmm14,xmm3
 5b2ff0bd461:	c5 09 fe d9                                     	vpaddd xmm11,xmm14,xmm1
 5b2ff0bd465:	c4 63 79 16 db 03                               	vpextrd ebx,xmm11,0x3
 5b2ff0bd46b:	c4 43 79 16 d9 02                               	vpextrd r9d,xmm11,0x2
 5b2ff0bd471:	48 89 9d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rbx
 5b2ff0bd478:	c4 63 79 16 db 01                               	vpextrd ebx,xmm11,0x1
 5b2ff0bd47e:	4c 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r9
 5b2ff0bd485:	c4 41 79 7e d9                                  	vmovd  r9d,xmm11
 5b2ff0bd48a:	45 85 e4                                        	test   r12d,r12d
 5b2ff0bd48d:	0f 85 df 08 00 00                               	jne    0x5b2ff0bdd72
 5b2ff0bd493:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
 5b2ff0bd497:	c4 62 79 3d da                                  	vpmaxsd xmm11,xmm0,xmm2
 5b2ff0bd49c:	c4 42 21 39 d9                                  	vpminsd xmm11,xmm11,xmm9
 5b2ff0bd4a1:	85 ff                                           	test   edi,edi
 5b2ff0bd4a3:	0f 84 41 00 00 00                               	je     0x5b2ff0bd4ea
 5b2ff0bd4a9:	c5 79 6e d8                                     	vmovd  xmm11,eax
 5b2ff0bd4ad:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
 5b2ff0bd4b2:	c4 41 79 db db                                  	vpand  xmm11,xmm0,xmm11
 5b2ff0bd4b7:	85 c0                                           	test   eax,eax
 5b2ff0bd4b9:	0f 85 2b 00 00 00                               	jne    0x5b2ff0bd4ea
 5b2ff0bd4bf:	c4 41 79 66 c9                                  	vpcmpgtd xmm9,xmm0,xmm9
 5b2ff0bd4c4:	c5 31 db cb                                     	vpand  xmm9,xmm9,xmm3
 5b2ff0bd4c8:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0bd4cd:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
 5b2ff0bd4d2:	c5 69 66 d8                                     	vpcmpgtd xmm11,xmm2,xmm0
 5b2ff0bd4d6:	c4 41 21 df f9                                  	vpandn xmm15,xmm11,xmm9
 5b2ff0bd4db:	c4 41 61 db cb                                  	vpand  xmm9,xmm3,xmm11
 5b2ff0bd4e0:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff0bd4e5:	c4 41 79 fe d9                                  	vpaddd xmm11,xmm0,xmm9
 5b2ff0bd4ea:	c5 c9 fe c7                                     	vpaddd xmm0,xmm6,xmm7
 5b2ff0bd4ee:	c4 e2 79 3d f2                                  	vpmaxsd xmm6,xmm0,xmm2
 5b2ff0bd4f3:	c4 c2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm13
 5b2ff0bd4f8:	45 85 c0                                        	test   r8d,r8d
 5b2ff0bd4fb:	0f 84 49 00 00 00                               	je     0x5b2ff0bd54a
 5b2ff0bd501:	c5 f9 6e f1                                     	vmovd  xmm6,ecx
 5b2ff0bd505:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff0bd50a:	c5 c9 db f0                                     	vpand  xmm6,xmm6,xmm0
 5b2ff0bd50e:	85 c9                                           	test   ecx,ecx
 5b2ff0bd510:	0f 85 34 00 00 00                               	jne    0x5b2ff0bd54a
 5b2ff0bd516:	c4 c1 79 6e f3                                  	vmovd  xmm6,r11d
 5b2ff0bd51b:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff0bd520:	c4 41 79 66 cd                                  	vpcmpgtd xmm9,xmm0,xmm13
 5b2ff0bd525:	c5 31 db ce                                     	vpand  xmm9,xmm9,xmm6
 5b2ff0bd529:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0bd52e:	c4 42 31 0a cf                                  	vpsignd xmm9,xmm9,xmm15
 5b2ff0bd533:	c5 69 66 e8                                     	vpcmpgtd xmm13,xmm2,xmm0
 5b2ff0bd537:	c4 41 11 df f9                                  	vpandn xmm15,xmm13,xmm9
 5b2ff0bd53c:	c4 c1 49 db f5                                  	vpand  xmm6,xmm6,xmm13
 5b2ff0bd541:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0bd546:	c5 f9 fe f6                                     	vpaddd xmm6,xmm0,xmm6
 5b2ff0bd54a:	c4 e2 49 40 c3                                  	vpmulld xmm0,xmm6,xmm3
 5b2ff0bd54f:	c5 f9 fe f1                                     	vpaddd xmm6,xmm0,xmm1
 5b2ff0bd553:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
 5b2ff0bd55a:	0f 84 71 00 00 00                               	je     0x5b2ff0bd5d1
 5b2ff0bd560:	83 bd a0 fd ff ff 00                            	cmp    DWORD PTR [rbp-0x260],0x0
 5b2ff0bd567:	0f 85 07 00 00 00                               	jne    0x5b2ff0bd574
 5b2ff0bd56d:	33 ff                                           	xor    edi,edi
 5b2ff0bd56f:	e9 07 00 00 00                                  	jmp    0x5b2ff0bd57b
 5b2ff0bd574:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
 5b2ff0bd578:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bd57b:	83 bd 30 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1d0],0x0
 5b2ff0bd582:	0f 85 08 00 00 00                               	jne    0x5b2ff0bd590
 5b2ff0bd588:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0bd58b:	e9 08 00 00 00                                  	jmp    0x5b2ff0bd598
 5b2ff0bd590:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
 5b2ff0bd594:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
 5b2ff0bd598:	83 bd 50 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x1b0],0x0
 5b2ff0bd59f:	0f 85 08 00 00 00                               	jne    0x5b2ff0bd5ad
 5b2ff0bd5a5:	45 33 db                                        	xor    r11d,r11d
 5b2ff0bd5a8:	e9 0f 00 00 00                                  	jmp    0x5b2ff0bd5bc
 5b2ff0bd5ad:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
 5b2ff0bd5b4:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
 5b2ff0bd5b8:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0bd5bc:	83 bd b0 fe ff ff 00                            	cmp    DWORD PTR [rbp-0x150],0x0
 5b2ff0bd5c3:	0f 85 3c 00 00 00                               	jne    0x5b2ff0bd605
 5b2ff0bd5c9:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0bd5cc:	e9 43 00 00 00                                  	jmp    0x5b2ff0bd614
 5b2ff0bd5d1:	c5 71 fe cf                                     	vpaddd xmm9,xmm1,xmm7
 5b2ff0bd5d5:	c4 41 21 76 c9                                  	vpcmpeqd xmm9,xmm11,xmm9
 5b2ff0bd5da:	c4 c1 78 50 f9                                  	vmovmskps edi,xmm9
 5b2ff0bd5df:	83 ff 0f                                        	cmp    edi,0xf
 5b2ff0bd5e2:	0f 84 f8 02 00 00                               	je     0x5b2ff0bd8e0
 5b2ff0bd5e8:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
 5b2ff0bd5ee:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd5f2:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
 5b2ff0bd5f6:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
 5b2ff0bd5fa:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
 5b2ff0bd5fe:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
 5b2ff0bd602:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bd605:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
 5b2ff0bd60c:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
 5b2ff0bd610:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
 5b2ff0bd614:	c4 41 21 fe ce                                  	vpaddd xmm9,xmm11,xmm14
 5b2ff0bd619:	c5 79 6e ef                                     	vmovd  xmm13,edi
 5b2ff0bd61d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0bd622:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
 5b2ff0bd629:	0f 84 8a 00 00 00                               	je     0x5b2ff0bd6b9
 5b2ff0bd62f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
 5b2ff0bd636:	0f 85 07 00 00 00                               	jne    0x5b2ff0bd643
 5b2ff0bd63c:	33 ff                                           	xor    edi,edi
 5b2ff0bd63e:	e9 0b 00 00 00                                  	jmp    0x5b2ff0bd64e
 5b2ff0bd643:	c5 79 7e cf                                     	vmovd  edi,xmm9
 5b2ff0bd647:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd64b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bd64e:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
 5b2ff0bd655:	0f 85 07 00 00 00                               	jne    0x5b2ff0bd662
 5b2ff0bd65b:	33 c0                                           	xor    eax,eax
 5b2ff0bd65d:	e9 0d 00 00 00                                  	jmp    0x5b2ff0bd66f
 5b2ff0bd662:	c4 63 79 16 c8 01                               	vpextrd eax,xmm9,0x1
 5b2ff0bd668:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
 5b2ff0bd66c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
 5b2ff0bd66f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
 5b2ff0bd676:	0f 85 07 00 00 00                               	jne    0x5b2ff0bd683
 5b2ff0bd67c:	33 db                                           	xor    ebx,ebx
 5b2ff0bd67e:	e9 0d 00 00 00                                  	jmp    0x5b2ff0bd690
 5b2ff0bd683:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
 5b2ff0bd689:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
 5b2ff0bd68d:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
 5b2ff0bd690:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
 5b2ff0bd697:	0f 85 41 00 00 00                               	jne    0x5b2ff0bd6de
 5b2ff0bd69d:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
 5b2ff0bd6a3:	c5 79 6e ef                                     	vmovd  xmm13,edi
 5b2ff0bd6a7:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0bd6ac:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
 5b2ff0bd6b2:	33 c9                                           	xor    ecx,ecx
 5b2ff0bd6b4:	e9 54 00 00 00                                  	jmp    0x5b2ff0bd70d
 5b2ff0bd6b9:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
 5b2ff0bd6bf:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd6c3:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
 5b2ff0bd6c6:	c5 79 7e cf                                     	vmovd  edi,xmm9
 5b2ff0bd6ca:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd6ce:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bd6d1:	c4 63 79 16 cb 02                               	vpextrd ebx,xmm9,0x2
 5b2ff0bd6d7:	41 8d 1c 9f                                     	lea    ebx,[r15+rbx*4]
 5b2ff0bd6db:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
 5b2ff0bd6de:	c4 63 79 16 c9 03                               	vpextrd ecx,xmm9,0x3
 5b2ff0bd6e4:	41 8d 0c 8f                                     	lea    ecx,[r15+rcx*4]
 5b2ff0bd6e8:	8b 0c 0a                                        	mov    ecx,DWORD PTR [rdx+rcx*1]
 5b2ff0bd6eb:	c4 43 11 22 c8 01                               	vpinsrd xmm9,xmm13,r8d,0x1
 5b2ff0bd6f1:	c5 79 6e ef                                     	vmovd  xmm13,edi
 5b2ff0bd6f5:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0bd6fa:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
 5b2ff0bd700:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
 5b2ff0bd707:	0f 84 78 00 00 00                               	je     0x5b2ff0bd785
 5b2ff0bd70d:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
 5b2ff0bd714:	0f 85 07 00 00 00                               	jne    0x5b2ff0bd721
 5b2ff0bd71a:	33 ff                                           	xor    edi,edi
 5b2ff0bd71c:	e9 0b 00 00 00                                  	jmp    0x5b2ff0bd72c
 5b2ff0bd721:	c5 f9 7e f7                                     	vmovd  edi,xmm6
 5b2ff0bd725:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd729:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bd72c:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
 5b2ff0bd733:	0f 85 08 00 00 00                               	jne    0x5b2ff0bd741
 5b2ff0bd739:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0bd73c:	e9 0e 00 00 00                                  	jmp    0x5b2ff0bd74f
 5b2ff0bd741:	c4 c3 79 16 f0 01                               	vpextrd r8d,xmm6,0x1
 5b2ff0bd747:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
 5b2ff0bd74b:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
 5b2ff0bd74f:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
 5b2ff0bd756:	0f 85 07 00 00 00                               	jne    0x5b2ff0bd763
 5b2ff0bd75c:	33 c0                                           	xor    eax,eax
 5b2ff0bd75e:	e9 0d 00 00 00                                  	jmp    0x5b2ff0bd770
 5b2ff0bd763:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
 5b2ff0bd769:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
 5b2ff0bd76d:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
 5b2ff0bd770:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
 5b2ff0bd777:	0f 85 2e 00 00 00                               	jne    0x5b2ff0bd7ab
 5b2ff0bd77d:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0bd780:	e9 34 00 00 00                                  	jmp    0x5b2ff0bd7b9
 5b2ff0bd785:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
 5b2ff0bd78b:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd78f:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
 5b2ff0bd793:	c5 f9 7e f7                                     	vmovd  edi,xmm6
 5b2ff0bd797:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd79b:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bd79e:	c4 e3 79 16 f0 02                               	vpextrd eax,xmm6,0x2
 5b2ff0bd7a4:	41 8d 04 87                                     	lea    eax,[r15+rax*4]
 5b2ff0bd7a8:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
 5b2ff0bd7ab:	c4 c3 79 16 f1 03                               	vpextrd r9d,xmm6,0x3
 5b2ff0bd7b1:	47 8d 0c 8f                                     	lea    r9d,[r15+r9*4]
 5b2ff0bd7b5:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
 5b2ff0bd7b9:	c4 c3 31 22 f3 02                               	vpinsrd xmm6,xmm9,r11d,0x2
 5b2ff0bd7bf:	c4 63 11 22 cb 02                               	vpinsrd xmm9,xmm13,ebx,0x2
 5b2ff0bd7c5:	c4 c1 79 fe c3                                  	vpaddd xmm0,xmm0,xmm11
 5b2ff0bd7ca:	c5 79 6e df                                     	vmovd  xmm11,edi
 5b2ff0bd7ce:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
 5b2ff0bd7d3:	c4 43 21 22 d8 01                               	vpinsrd xmm11,xmm11,r8d,0x1
 5b2ff0bd7d9:	c4 63 21 22 d8 02                               	vpinsrd xmm11,xmm11,eax,0x2
 5b2ff0bd7df:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
 5b2ff0bd7e6:	0f 84 7a 00 00 00                               	je     0x5b2ff0bd866
 5b2ff0bd7ec:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
 5b2ff0bd7f3:	0f 85 07 00 00 00                               	jne    0x5b2ff0bd800
 5b2ff0bd7f9:	33 ff                                           	xor    edi,edi
 5b2ff0bd7fb:	e9 0b 00 00 00                                  	jmp    0x5b2ff0bd80b
 5b2ff0bd800:	c5 f9 7e c7                                     	vmovd  edi,xmm0
 5b2ff0bd804:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd808:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bd80b:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
 5b2ff0bd812:	0f 85 08 00 00 00                               	jne    0x5b2ff0bd820
 5b2ff0bd818:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0bd81b:	e9 0e 00 00 00                                  	jmp    0x5b2ff0bd82e
 5b2ff0bd820:	c4 c3 79 16 c0 01                               	vpextrd r8d,xmm0,0x1
 5b2ff0bd826:	47 8d 04 87                                     	lea    r8d,[r15+r8*4]
 5b2ff0bd82a:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
 5b2ff0bd82e:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
 5b2ff0bd835:	0f 85 08 00 00 00                               	jne    0x5b2ff0bd843
 5b2ff0bd83b:	45 33 db                                        	xor    r11d,r11d
 5b2ff0bd83e:	e9 0e 00 00 00                                  	jmp    0x5b2ff0bd851
 5b2ff0bd843:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
 5b2ff0bd849:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
 5b2ff0bd84d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0bd851:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
 5b2ff0bd858:	0f 85 2f 00 00 00                               	jne    0x5b2ff0bd88d
 5b2ff0bd85e:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0bd861:	e9 35 00 00 00                                  	jmp    0x5b2ff0bd89b
 5b2ff0bd866:	c4 e3 79 16 c7 01                               	vpextrd edi,xmm0,0x1
 5b2ff0bd86c:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd870:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
 5b2ff0bd874:	c5 f9 7e c7                                     	vmovd  edi,xmm0
 5b2ff0bd878:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd87c:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bd87f:	c4 c3 79 16 c3 02                               	vpextrd r11d,xmm0,0x2
 5b2ff0bd885:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
 5b2ff0bd889:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0bd88d:	c4 e3 79 16 c0 03                               	vpextrd eax,xmm0,0x3
 5b2ff0bd893:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
 5b2ff0bd897:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
 5b2ff0bd89b:	c4 c3 49 22 c4 03                               	vpinsrd xmm0,xmm6,r12d,0x3
 5b2ff0bd8a1:	c4 e3 31 22 f1 03                               	vpinsrd xmm6,xmm9,ecx,0x3
 5b2ff0bd8a7:	c5 79 6e cf                                     	vmovd  xmm9,edi
 5b2ff0bd8ab:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
 5b2ff0bd8b0:	c4 43 31 22 c8 01                               	vpinsrd xmm9,xmm9,r8d,0x1
 5b2ff0bd8b6:	c4 43 31 22 cb 02                               	vpinsrd xmm9,xmm9,r11d,0x2
 5b2ff0bd8bc:	c4 43 31 22 cf 03                               	vpinsrd xmm9,xmm9,r15d,0x3
 5b2ff0bd8c2:	c4 43 21 22 d9 03                               	vpinsrd xmm11,xmm11,r9d,0x3
 5b2ff0bd8c8:	c5 79 28 fe                                     	vmovapd xmm15,xmm6
 5b2ff0bd8cc:	c4 c1 79 28 f3                                  	vmovapd xmm6,xmm11
 5b2ff0bd8d1:	c4 41 79 28 df                                  	vmovapd xmm11,xmm15
 5b2ff0bd8d6:	c4 41 79 28 e9                                  	vmovapd xmm13,xmm9
 5b2ff0bd8db:	e9 95 00 00 00                                  	jmp    0x5b2ff0bd975
 5b2ff0bd8e0:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
 5b2ff0bd8e4:	c5 fb 10 04 3a                                  	vmovsd xmm0,QWORD PTR [rdx+rdi*1]
 5b2ff0bd8e9:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
 5b2ff0bd8ed:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
 5b2ff0bd8f2:	c4 c1 79 6c c1                                  	vpunpcklqdq xmm0,xmm0,xmm9
 5b2ff0bd8f7:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
 5b2ff0bd8fd:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bd901:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
 5b2ff0bd906:	44 8b 85 c8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x138]
 5b2ff0bd90d:	43 8d 3c 87                                     	lea    edi,[r15+r8*4]
 5b2ff0bd911:	c5 7b 10 1c 3a                                  	vmovsd xmm11,QWORD PTR [rdx+rdi*1]
 5b2ff0bd916:	c4 41 31 6c cb                                  	vpunpcklqdq xmm9,xmm9,xmm11
 5b2ff0bd91b:	c4 41 78 c6 d9 dd                               	vshufps xmm11,xmm0,xmm9,0xdd
 5b2ff0bd921:	c4 c1 78 c6 c1 88                               	vshufps xmm0,xmm0,xmm9,0x88
 5b2ff0bd927:	c5 c9 72 f6 02                                  	vpslld xmm6,xmm6,0x2
 5b2ff0bd92c:	c5 f9 7e f7                                     	vmovd  edi,xmm6
 5b2ff0bd930:	41 03 ff                                        	add    edi,r15d
 5b2ff0bd933:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
 5b2ff0bd938:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
 5b2ff0bd93e:	41 03 ff                                        	add    edi,r15d
 5b2ff0bd941:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
 5b2ff0bd946:	c4 41 31 6c cd                                  	vpunpcklqdq xmm9,xmm9,xmm13
 5b2ff0bd94b:	c4 e3 79 16 f7 02                               	vpextrd edi,xmm6,0x2
 5b2ff0bd951:	41 03 ff                                        	add    edi,r15d
 5b2ff0bd954:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
 5b2ff0bd959:	c4 e3 79 16 f7 03                               	vpextrd edi,xmm6,0x3
 5b2ff0bd95f:	41 03 ff                                        	add    edi,r15d
 5b2ff0bd962:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
 5b2ff0bd967:	c5 91 6c f6                                     	vpunpcklqdq xmm6,xmm13,xmm6
 5b2ff0bd96b:	c5 30 c6 ee dd                                  	vshufps xmm13,xmm9,xmm6,0xdd
 5b2ff0bd970:	c5 b0 c6 f6 88                                  	vshufps xmm6,xmm9,xmm6,0x88
 5b2ff0bd975:	c4 41 38 5c c4                                  	vsubps xmm8,xmm8,xmm12
 5b2ff0bd97a:	c4 41 50 5c c8                                  	vsubps xmm9,xmm5,xmm8
 5b2ff0bd97f:	c5 28 5c d4                                     	vsubps xmm10,xmm10,xmm4
 5b2ff0bd983:	c4 41 50 5c e2                                  	vsubps xmm12,xmm5,xmm10
 5b2ff0bd988:	49 ba ff 00 00 00 ff 00 00 00                   	movabs r10,0xff000000ff
 5b2ff0bd992:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0bd997:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0bd99c:	c4 c1 79 db ce                                  	vpand  xmm1,xmm0,xmm14
 5b2ff0bd9a1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bd9a6:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff0bd9ac:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff0bd9b1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bd9b6:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff0bd9bb:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff0bd9bf:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff0bd9c3:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff0bd9c8:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
 5b2ff0bd9cc:	c4 c1 21 db de                                  	vpand  xmm3,xmm11,xmm14
 5b2ff0bd9d1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bd9d6:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
 5b2ff0bd9dc:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
 5b2ff0bd9e1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bd9e6:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
 5b2ff0bd9eb:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
 5b2ff0bd9ef:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
 5b2ff0bd9f3:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
 5b2ff0bd9f8:	c5 a8 59 db                                     	vmulps xmm3,xmm10,xmm3
 5b2ff0bd9fc:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
 5b2ff0bda00:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0bda04:	c4 c1 49 db de                                  	vpand  xmm3,xmm6,xmm14
 5b2ff0bda09:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bda0e:	c4 63 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm3,0x55
 5b2ff0bda14:	c4 c1 61 fa df                                  	vpsubd xmm3,xmm3,xmm15
 5b2ff0bda19:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bda1e:	c5 e1 72 d3 01                                  	vpsrld xmm3,xmm3,0x1
 5b2ff0bda23:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
 5b2ff0bda27:	c5 e0 58 db                                     	vaddps xmm3,xmm3,xmm3
 5b2ff0bda2b:	c4 c1 60 58 df                                  	vaddps xmm3,xmm3,xmm15
 5b2ff0bda30:	c5 98 59 db                                     	vmulps xmm3,xmm12,xmm3
 5b2ff0bda34:	c4 c1 11 db e6                                  	vpand  xmm4,xmm13,xmm14
 5b2ff0bda39:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bda3e:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff0bda44:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff0bda49:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bda4e:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff0bda53:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff0bda57:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff0bda5b:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff0bda60:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
 5b2ff0bda64:	c5 e0 58 dc                                     	vaddps xmm3,xmm3,xmm4
 5b2ff0bda68:	c5 b8 59 db                                     	vmulps xmm3,xmm8,xmm3
 5b2ff0bda6c:	c5 f0 58 cb                                     	vaddps xmm1,xmm1,xmm3
 5b2ff0bda70:	49 ba 81 80 80 3b 81 80 80 3b                   	movabs r10,0x3b8080813b808081
 5b2ff0bda7a:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0bda7f:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0bda83:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
 5b2ff0bda87:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
 5b2ff0bda8e:	c4 a1 7a 7f 0c 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm1
 5b2ff0bda94:	c5 f1 72 d0 10                                  	vpsrld xmm1,xmm0,0x10
 5b2ff0bda99:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
 5b2ff0bda9e:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdaa3:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff0bdaa9:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff0bdaae:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdab3:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff0bdab8:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff0bdabc:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff0bdac0:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff0bdac5:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
 5b2ff0bdac9:	c4 c1 59 72 d3 10                               	vpsrld xmm4,xmm11,0x10
 5b2ff0bdacf:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
 5b2ff0bdad4:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdad9:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff0bdadf:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff0bdae4:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdae9:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff0bdaee:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff0bdaf2:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff0bdaf6:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff0bdafb:	c5 a8 59 e4                                     	vmulps xmm4,xmm10,xmm4
 5b2ff0bdaff:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
 5b2ff0bdb03:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0bdb07:	c5 d9 72 d6 10                                  	vpsrld xmm4,xmm6,0x10
 5b2ff0bdb0c:	c4 c1 59 db e6                                  	vpand  xmm4,xmm4,xmm14
 5b2ff0bdb11:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdb16:	c4 63 01 0e fc 55                               	vpblendw xmm15,xmm15,xmm4,0x55
 5b2ff0bdb1c:	c4 c1 59 fa e7                                  	vpsubd xmm4,xmm4,xmm15
 5b2ff0bdb21:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdb26:	c5 d9 72 d4 01                                  	vpsrld xmm4,xmm4,0x1
 5b2ff0bdb2b:	c5 f8 5b e4                                     	vcvtdq2ps xmm4,xmm4
 5b2ff0bdb2f:	c5 d8 58 e4                                     	vaddps xmm4,xmm4,xmm4
 5b2ff0bdb33:	c4 c1 58 58 e7                                  	vaddps xmm4,xmm4,xmm15
 5b2ff0bdb38:	c5 98 59 e4                                     	vmulps xmm4,xmm12,xmm4
 5b2ff0bdb3c:	c4 c1 69 72 d5 10                               	vpsrld xmm2,xmm13,0x10
 5b2ff0bdb42:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
 5b2ff0bdb47:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdb4c:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
 5b2ff0bdb52:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
 5b2ff0bdb57:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdb5c:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
 5b2ff0bdb61:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff0bdb65:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
 5b2ff0bdb69:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
 5b2ff0bdb6e:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
 5b2ff0bdb72:	c5 d8 58 d2                                     	vaddps xmm2,xmm4,xmm2
 5b2ff0bdb76:	c5 b8 59 d2                                     	vmulps xmm2,xmm8,xmm2
 5b2ff0bdb7a:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
 5b2ff0bdb7e:	c5 f0 59 cb                                     	vmulps xmm1,xmm1,xmm3
 5b2ff0bdb82:	c4 a1 7a 7f 4c 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm1
 5b2ff0bdb89:	c5 f1 72 d0 08                                  	vpsrld xmm1,xmm0,0x8
 5b2ff0bdb8e:	c4 c1 71 db ce                                  	vpand  xmm1,xmm1,xmm14
 5b2ff0bdb93:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdb98:	c4 63 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm1,0x55
 5b2ff0bdb9e:	c4 c1 71 fa cf                                  	vpsubd xmm1,xmm1,xmm15
 5b2ff0bdba3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdba8:	c5 f1 72 d1 01                                  	vpsrld xmm1,xmm1,0x1
 5b2ff0bdbad:	c5 f8 5b c9                                     	vcvtdq2ps xmm1,xmm1
 5b2ff0bdbb1:	c5 f0 58 c9                                     	vaddps xmm1,xmm1,xmm1
 5b2ff0bdbb5:	c4 c1 70 58 cf                                  	vaddps xmm1,xmm1,xmm15
 5b2ff0bdbba:	c5 98 59 c9                                     	vmulps xmm1,xmm12,xmm1
 5b2ff0bdbbe:	c4 c1 69 72 d3 08                               	vpsrld xmm2,xmm11,0x8
 5b2ff0bdbc4:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
 5b2ff0bdbc9:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdbce:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
 5b2ff0bdbd4:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
 5b2ff0bdbd9:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdbde:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
 5b2ff0bdbe3:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff0bdbe7:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
 5b2ff0bdbeb:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
 5b2ff0bdbf0:	c5 a8 59 d2                                     	vmulps xmm2,xmm10,xmm2
 5b2ff0bdbf4:	c5 f0 58 ca                                     	vaddps xmm1,xmm1,xmm2
 5b2ff0bdbf8:	c5 b0 59 c9                                     	vmulps xmm1,xmm9,xmm1
 5b2ff0bdbfc:	c5 e9 72 d6 08                                  	vpsrld xmm2,xmm6,0x8
 5b2ff0bdc01:	c4 c1 69 db d6                                  	vpand  xmm2,xmm2,xmm14
 5b2ff0bdc06:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdc0b:	c4 63 01 0e fa 55                               	vpblendw xmm15,xmm15,xmm2,0x55
 5b2ff0bdc11:	c4 c1 69 fa d7                                  	vpsubd xmm2,xmm2,xmm15
 5b2ff0bdc16:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdc1b:	c5 e9 72 d2 01                                  	vpsrld xmm2,xmm2,0x1
 5b2ff0bdc20:	c5 f8 5b d2                                     	vcvtdq2ps xmm2,xmm2
 5b2ff0bdc24:	c5 e8 58 d2                                     	vaddps xmm2,xmm2,xmm2
 5b2ff0bdc28:	c4 c1 68 58 d7                                  	vaddps xmm2,xmm2,xmm15
 5b2ff0bdc2d:	c5 98 59 d2                                     	vmulps xmm2,xmm12,xmm2
 5b2ff0bdc31:	c4 c1 59 72 d5 08                               	vpsrld xmm4,xmm13,0x8
 5b2ff0bdc37:	c4 41 59 db f6                                  	vpand  xmm14,xmm4,xmm14
 5b2ff0bdc3c:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdc41:	c4 43 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm14,0x55
 5b2ff0bdc47:	c4 41 09 fa f7                                  	vpsubd xmm14,xmm14,xmm15
 5b2ff0bdc4c:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdc51:	c4 c1 09 72 d6 01                               	vpsrld xmm14,xmm14,0x1
 5b2ff0bdc57:	c4 41 78 5b f6                                  	vcvtdq2ps xmm14,xmm14
 5b2ff0bdc5c:	c4 41 08 58 f6                                  	vaddps xmm14,xmm14,xmm14
 5b2ff0bdc61:	c4 41 08 58 f7                                  	vaddps xmm14,xmm14,xmm15
 5b2ff0bdc66:	c4 41 28 59 f6                                  	vmulps xmm14,xmm10,xmm14
 5b2ff0bdc6b:	c4 41 68 58 f6                                  	vaddps xmm14,xmm2,xmm14
 5b2ff0bdc70:	c4 41 38 59 f6                                  	vmulps xmm14,xmm8,xmm14
 5b2ff0bdc75:	c4 41 70 58 f6                                  	vaddps xmm14,xmm1,xmm14
 5b2ff0bdc7a:	c5 08 59 f3                                     	vmulps xmm14,xmm14,xmm3
 5b2ff0bdc7e:	c4 21 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm14
 5b2ff0bdc85:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
 5b2ff0bdc8a:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdc8f:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0bdc95:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0bdc9a:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdc9f:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0bdca4:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0bdca8:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0bdcac:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0bdcb1:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
 5b2ff0bdcb5:	c4 c1 21 72 d3 18                               	vpsrld xmm11,xmm11,0x18
 5b2ff0bdcbb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdcc0:	c4 43 01 0e fb 55                               	vpblendw xmm15,xmm15,xmm11,0x55
 5b2ff0bdcc6:	c4 41 21 fa df                                  	vpsubd xmm11,xmm11,xmm15
 5b2ff0bdccb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdcd0:	c4 c1 21 72 d3 01                               	vpsrld xmm11,xmm11,0x1
 5b2ff0bdcd6:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
 5b2ff0bdcdb:	c4 41 20 58 db                                  	vaddps xmm11,xmm11,xmm11
 5b2ff0bdce0:	c4 41 20 58 df                                  	vaddps xmm11,xmm11,xmm15
 5b2ff0bdce5:	c4 41 28 59 db                                  	vmulps xmm11,xmm10,xmm11
 5b2ff0bdcea:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0bdcef:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0bdcf3:	c5 c9 72 d6 18                                  	vpsrld xmm6,xmm6,0x18
 5b2ff0bdcf8:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdcfd:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
 5b2ff0bdd03:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
 5b2ff0bdd08:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdd0d:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
 5b2ff0bdd12:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
 5b2ff0bdd16:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
 5b2ff0bdd1a:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
 5b2ff0bdd1f:	c5 98 59 f6                                     	vmulps xmm6,xmm12,xmm6
 5b2ff0bdd23:	c4 c1 31 72 d5 18                               	vpsrld xmm9,xmm13,0x18
 5b2ff0bdd29:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdd2e:	c4 43 01 0e f9 55                               	vpblendw xmm15,xmm15,xmm9,0x55
 5b2ff0bdd34:	c4 41 31 fa cf                                  	vpsubd xmm9,xmm9,xmm15
 5b2ff0bdd39:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdd3e:	c4 c1 31 72 d1 01                               	vpsrld xmm9,xmm9,0x1
 5b2ff0bdd44:	c4 41 78 5b c9                                  	vcvtdq2ps xmm9,xmm9
 5b2ff0bdd49:	c4 41 30 58 c9                                  	vaddps xmm9,xmm9,xmm9
 5b2ff0bdd4e:	c4 41 30 58 cf                                  	vaddps xmm9,xmm9,xmm15
 5b2ff0bdd53:	c4 41 28 59 c9                                  	vmulps xmm9,xmm10,xmm9
 5b2ff0bdd58:	c4 c1 48 58 f1                                  	vaddps xmm6,xmm6,xmm9
 5b2ff0bdd5d:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
 5b2ff0bdd61:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff0bdd65:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
 5b2ff0bdd6d:	e9 cd 01 00 00                                  	jmp    0x5b2ff0bdf3f
 5b2ff0bdd72:	83 bd 20 ff ff ff 0f                            	cmp    DWORD PTR [rbp-0xe0],0xf
 5b2ff0bdd79:	0f 84 71 00 00 00                               	je     0x5b2ff0bddf0
 5b2ff0bdd7f:	f6 85 20 ff ff ff 01                            	test   BYTE PTR [rbp-0xe0],0x1
 5b2ff0bdd86:	0f 85 07 00 00 00                               	jne    0x5b2ff0bdd93
 5b2ff0bdd8c:	33 ff                                           	xor    edi,edi
 5b2ff0bdd8e:	e9 07 00 00 00                                  	jmp    0x5b2ff0bdd9a
 5b2ff0bdd93:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
 5b2ff0bdd97:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bdd9a:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
 5b2ff0bdda1:	0f 85 08 00 00 00                               	jne    0x5b2ff0bddaf
 5b2ff0bdda7:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0bddaa:	e9 08 00 00 00                                  	jmp    0x5b2ff0bddb7
 5b2ff0bddaf:	45 8d 04 9f                                     	lea    r8d,[r15+rbx*4]
 5b2ff0bddb3:	46 8b 04 02                                     	mov    r8d,DWORD PTR [rdx+r8*1]
 5b2ff0bddb7:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
 5b2ff0bddbe:	0f 85 08 00 00 00                               	jne    0x5b2ff0bddcc
 5b2ff0bddc4:	45 33 db                                        	xor    r11d,r11d
 5b2ff0bddc7:	e9 0f 00 00 00                                  	jmp    0x5b2ff0bdddb
 5b2ff0bddcc:	44 8b 9d b8 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x148]
 5b2ff0bddd3:	47 8d 1c 9f                                     	lea    r11d,[r15+r11*4]
 5b2ff0bddd7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0bdddb:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
 5b2ff0bdde2:	0f 85 25 00 00 00                               	jne    0x5b2ff0bde0d
 5b2ff0bdde8:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0bddeb:	e9 2c 00 00 00                                  	jmp    0x5b2ff0bde1c
 5b2ff0bddf0:	8b bd b8 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x148]
 5b2ff0bddf6:	41 8d 3c bf                                     	lea    edi,[r15+rdi*4]
 5b2ff0bddfa:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
 5b2ff0bddfe:	41 8d 3c 9f                                     	lea    edi,[r15+rbx*4]
 5b2ff0bde02:	44 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+rdi*1]
 5b2ff0bde06:	43 8d 3c 8f                                     	lea    edi,[r15+r9*4]
 5b2ff0bde0a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bde0d:	44 8b a5 c8 fe ff ff                            	mov    r12d,DWORD PTR [rbp-0x138]
 5b2ff0bde14:	47 8d 24 a7                                     	lea    r12d,[r15+r12*4]
 5b2ff0bde18:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
 5b2ff0bde1c:	c5 f9 6e c7                                     	vmovd  xmm0,edi
 5b2ff0bde20:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bde25:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
 5b2ff0bde2b:	c4 c3 79 22 c3 02                               	vpinsrd xmm0,xmm0,r11d,0x2
 5b2ff0bde31:	c4 c3 79 22 c4 03                               	vpinsrd xmm0,xmm0,r12d,0x3
 5b2ff0bde37:	4c 8b 15 4c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb4c]        # 0x5b2ff0bd98a
 5b2ff0bde3e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
 5b2ff0bde43:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
 5b2ff0bde47:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
 5b2ff0bde4b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bde50:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0bde56:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0bde5b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bde60:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0bde66:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0bde6b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0bde70:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0bde75:	4c 8b 15 f6 fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffbf6]        # 0x5b2ff0bda72
 5b2ff0bde7c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0bde81:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0bde86:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
 5b2ff0bde8b:	44 8b 9d 00 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x100]
 5b2ff0bde92:	c4 21 7a 7f 04 1a                               	vmovdqu XMMWORD PTR [rdx+r11*1],xmm8
 5b2ff0bde98:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
 5b2ff0bde9d:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
 5b2ff0bdea1:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdea6:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0bdeac:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0bdeb1:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdeb6:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0bdebc:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0bdec1:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0bdec6:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0bdecb:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
 5b2ff0bded0:	c4 21 7a 7f 44 1a 20                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x20],xmm8
 5b2ff0bded7:	c5 b9 72 d0 08                                  	vpsrld xmm8,xmm0,0x8
 5b2ff0bdedc:	c5 b9 db f6                                     	vpand  xmm6,xmm8,xmm6
 5b2ff0bdee0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdee5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
 5b2ff0bdeeb:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
 5b2ff0bdef0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdef5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
 5b2ff0bdefa:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
 5b2ff0bdefe:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
 5b2ff0bdf02:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
 5b2ff0bdf07:	c4 c1 48 59 f1                                  	vmulps xmm6,xmm6,xmm9
 5b2ff0bdf0c:	c4 a1 7a 7f 74 1a 10                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x10],xmm6
 5b2ff0bdf13:	c5 f9 72 d0 18                                  	vpsrld xmm0,xmm0,0x18
 5b2ff0bdf18:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bdf1d:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0bdf23:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0bdf28:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bdf2d:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0bdf32:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0bdf36:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0bdf3a:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0bdf3f:	4c 8b 15 2c fb ff ff                            	mov    r10,QWORD PTR [rip+0xfffffffffffffb2c]        # 0x5b2ff0bda72
 5b2ff0bdf46:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
 5b2ff0bdf4b:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
 5b2ff0bdf4f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
 5b2ff0bdf53:	c4 a1 7a 7f 44 1a 30                            	vmovdqu XMMWORD PTR [rdx+r11*1+0x30],xmm0
 5b2ff0bdf5a:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0bdf5e:	e9 4b 03 00 00                                  	jmp    0x5b2ff0be2ae
 5b2ff0bdf63:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0bdf67:	4c 8d 7a 08                                     	lea    r15,[rdx+0x8]
 5b2ff0bdf6b:	c4 82 79 18 04 07                               	vbroadcastss xmm0,DWORD PTR [r15+r8*1]
 5b2ff0bdf71:	c5 a0 59 c0                                     	vmulps xmm0,xmm11,xmm0
 5b2ff0bdf75:	c4 42 79 18 24 07                               	vbroadcastss xmm12,DWORD PTR [r15+rax*1]
 5b2ff0bdf7b:	c5 79 28 eb                                     	vmovapd xmm13,xmm3
 5b2ff0bdf7f:	c4 41 10 59 e4                                  	vmulps xmm12,xmm13,xmm12
 5b2ff0bdf84:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
 5b2ff0bdf89:	c4 42 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [r15+rdi*1]
 5b2ff0bdf8f:	c4 41 30 59 e4                                  	vmulps xmm12,xmm9,xmm12
 5b2ff0bdf94:	c4 c1 78 58 c4                                  	vaddps xmm0,xmm0,xmm12
 5b2ff0bdf99:	c5 c8 59 d8                                     	vmulps xmm3,xmm6,xmm0
 5b2ff0bdf9d:	41 83 fc 03                                     	cmp    r12d,0x3
 5b2ff0bdfa1:	0f 84 7a 02 00 00                               	je     0x5b2ff0be221
 5b2ff0bdfa7:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
 5b2ff0bdfaf:	41 8b fb                                        	mov    edi,r11d
 5b2ff0bdfb2:	c5 fa 7f 84 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm0
 5b2ff0bdfbb:	c5 fa 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm0
 5b2ff0bdfc4:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
 5b2ff0bdfcd:	c5 7a 7f 94 3a f0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1f0],xmm10
 5b2ff0bdfd6:	c5 7a 7f 84 3a e0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1e0],xmm8
 5b2ff0bdfdf:	c5 fa 7f 9c 3a d0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1d0],xmm3
 5b2ff0bdfe8:	c5 fa 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm0
 5b2ff0bdff1:	4c 89 8d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r9
 5b2ff0bdff8:	48 89 8d c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rcx
 5b2ff0bdfff:	45 33 c0                                        	xor    r8d,r8d
 5b2ff0be002:	e9 46 00 00 00                                  	jmp    0x5b2ff0be04d
 5b2ff0be007:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0be010:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0be019:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0be022:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0be02b:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0be034:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0be03d:	0f 1f 00                                        	nop    DWORD PTR [rax]
 5b2ff0be040:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
 5b2ff0be046:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0be049:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0be04d:	4c 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],r8
 5b2ff0be054:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0be059:	0f 85 54 3b 00 00                               	jne    0x5b2ff0c1bb3
 5b2ff0be05f:	8b c1                                           	mov    eax,ecx
 5b2ff0be061:	41 8b c8                                        	mov    ecx,r8d
 5b2ff0be064:	4c 8b 9d 20 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xe0]
 5b2ff0be06b:	41 d3 eb                                        	shr    r11d,cl
 5b2ff0be06e:	41 f6 c3 01                                     	test   r11b,0x1
 5b2ff0be072:	0f 84 ff 00 00 00                               	je     0x5b2ff0be177
 5b2ff0be078:	8b 4c 02 10                                     	mov    ecx,DWORD PTR [rdx+rax*1+0x10]
 5b2ff0be07c:	44 8b 5c 02 0c                                  	mov    r11d,DWORD PTR [rdx+rax*1+0xc]
 5b2ff0be081:	44 8b 64 02 08                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x8]
 5b2ff0be086:	44 8b 64 02 04                                  	mov    r12d,DWORD PTR [rdx+rax*1+0x4]
 5b2ff0be08b:	44 8b 3c 02                                     	mov    r15d,DWORD PTR [rdx+rax*1]
 5b2ff0be08f:	41 83 ff 02                                     	cmp    r15d,0x2
 5b2ff0be093:	0f 84 89 00 00 00                               	je     0x5b2ff0be122
 5b2ff0be099:	45 85 ff                                        	test   r15d,r15d
 5b2ff0be09c:	0f 85 32 00 00 00                               	jne    0x5b2ff0be0d4
 5b2ff0be0a2:	46 8d bc 87 f0 01 00 00                         	lea    r15d,[rdi+r8*4+0x1f0]
 5b2ff0be0aa:	c4 a1 7a 10 0c 3a                               	vmovss xmm1,DWORD PTR [rdx+r15*1]
 5b2ff0be0b0:	44 8d bf 90 01 00 00                            	lea    r15d,[rdi+0x190]
 5b2ff0be0b7:	41 8b d8                                        	mov    ebx,r8d
 5b2ff0be0ba:	c1 e3 04                                        	shl    ebx,0x4
 5b2ff0be0bd:	41 03 df                                        	add    ebx,r15d
 5b2ff0be0c0:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0be0c4:	41 8b c4                                        	mov    eax,r12d
 5b2ff0be0c7:	41 8b d3                                        	mov    edx,r11d
 5b2ff0be0ca:	e8 51 d1 f0 ff                                  	call   0x5b2fefcb220
 5b2ff0be0cf:	e9 a3 00 00 00                                  	jmp    0x5b2ff0be177
 5b2ff0be0d4:	4c 8b fa                                        	mov    r15,rdx
 5b2ff0be0d7:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
 5b2ff0be0dc:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
 5b2ff0be0e4:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
 5b2ff0be0ea:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
 5b2ff0be0f2:	c4 41 7a 10 04 17                               	vmovss xmm8,DWORD PTR [r15+rdx*1]
 5b2ff0be0f8:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
 5b2ff0be0fe:	41 8b f0                                        	mov    esi,r8d
 5b2ff0be101:	c1 e6 04                                        	shl    esi,0x4
 5b2ff0be104:	03 d6                                           	add    edx,esi
 5b2ff0be106:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0be10a:	41 8b c4                                        	mov    eax,r12d
 5b2ff0be10d:	44 8b ca                                        	mov    r9d,edx
 5b2ff0be110:	41 8b d3                                        	mov    edx,r11d
 5b2ff0be113:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
 5b2ff0be118:	e8 1b d1 f0 ff                                  	call   0x5b2fefcb238
 5b2ff0be11d:	e9 55 00 00 00                                  	jmp    0x5b2ff0be177
 5b2ff0be122:	4c 8b fa                                        	mov    r15,rdx
 5b2ff0be125:	41 8b 5c 07 14                                  	mov    ebx,DWORD PTR [r15+rax*1+0x14]
 5b2ff0be12a:	45 8b 4c 07 18                                  	mov    r9d,DWORD PTR [r15+rax*1+0x18]
 5b2ff0be12f:	42 8d 94 87 f0 01 00 00                         	lea    edx,[rdi+r8*4+0x1f0]
 5b2ff0be137:	c4 c1 7a 10 0c 17                               	vmovss xmm1,DWORD PTR [r15+rdx*1]
 5b2ff0be13d:	42 8d 94 87 e0 01 00 00                         	lea    edx,[rdi+r8*4+0x1e0]
 5b2ff0be145:	c4 c1 7a 10 14 17                               	vmovss xmm2,DWORD PTR [r15+rdx*1]
 5b2ff0be14b:	42 8d 94 87 d0 01 00 00                         	lea    edx,[rdi+r8*4+0x1d0]
 5b2ff0be153:	c4 c1 7a 10 1c 17                               	vmovss xmm3,DWORD PTR [r15+rdx*1]
 5b2ff0be159:	8d 97 90 01 00 00                               	lea    edx,[rdi+0x190]
 5b2ff0be15f:	41 8b f0                                        	mov    esi,r8d
 5b2ff0be162:	c1 e6 04                                        	shl    esi,0x4
 5b2ff0be165:	03 d6                                           	add    edx,esi
 5b2ff0be167:	52                                              	push   rdx
 5b2ff0be168:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0be16c:	41 8b c4                                        	mov    eax,r12d
 5b2ff0be16f:	41 8b d3                                        	mov    edx,r11d
 5b2ff0be172:	e8 b1 d0 f0 ff                                  	call   0x5b2fefcb228
 5b2ff0be177:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
 5b2ff0be17e:	41 83 c0 01                                     	add    r8d,0x1
 5b2ff0be182:	41 83 f8 04                                     	cmp    r8d,0x4
 5b2ff0be186:	0f 85 b4 fe ff ff                               	jne    0x5b2ff0be040
 5b2ff0be18c:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
 5b2ff0be18f:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0be193:	c4 c1 7a 6f 84 18 b0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0x1b0]
 5b2ff0be19d:	c4 c1 7a 6f b4 18 c0 01 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0x1c0]
 5b2ff0be1a7:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
 5b2ff0be1ab:	c4 41 7a 6f 84 18 90 01 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x190]
 5b2ff0be1b5:	c4 41 7a 6f 8c 18 a0 01 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0x1a0]
 5b2ff0be1bf:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
 5b2ff0be1c4:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
 5b2ff0be1c8:	8b 8d 00 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0x100]
 5b2ff0be1ce:	c4 41 7a 7f 5c 08 30                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x30],xmm11
 5b2ff0be1d5:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
 5b2ff0be1d9:	c4 c1 7a 7f 7c 08 20                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x20],xmm7
 5b2ff0be1e0:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
 5b2ff0be1e4:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
 5b2ff0be1e9:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
 5b2ff0be1ed:	c4 c1 7a 7f 7c 08 10                            	vmovdqu XMMWORD PTR [r8+rcx*1+0x10],xmm7
 5b2ff0be1f4:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
 5b2ff0be1f8:	c4 c1 7a 7f 04 08                               	vmovdqu XMMWORD PTR [r8+rcx*1],xmm0
 5b2ff0be1fe:	44 8b db                                        	mov    r11d,ebx
 5b2ff0be201:	49 8b d0                                        	mov    rdx,r8
 5b2ff0be204:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
 5b2ff0be20c:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
 5b2ff0be214:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
 5b2ff0be21c:	e9 8d 00 00 00                                  	jmp    0x5b2ff0be2ae
 5b2ff0be221:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0be225:	8b c1                                           	mov    eax,ecx
 5b2ff0be227:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
 5b2ff0be22c:	c4 c1 79 28 d0                                  	vmovapd xmm2,xmm8
 5b2ff0be231:	41 8b c9                                        	mov    ecx,r9d
 5b2ff0be234:	48 8b 95 20 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xe0]
 5b2ff0be23b:	e8 e8 d2 f0 ff                                  	call   0x5b2fefcb528
 5b2ff0be240:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0be244:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0be248:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
 5b2ff0be250:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
 5b2ff0be258:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
 5b2ff0be260:	e9 49 00 00 00                                  	jmp    0x5b2ff0be2ae
 5b2ff0be265:	48 8b fa                                        	mov    rdi,rdx
 5b2ff0be268:	48 8d 57 3c                                     	lea    rdx,[rdi+0x3c]
 5b2ff0be26c:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
 5b2ff0be272:	c4 a1 7a 7f 04 0f                               	vmovdqu XMMWORD PTR [rdi+r9*1],xmm0
 5b2ff0be278:	48 8d 57 40                                     	lea    rdx,[rdi+0x40]
 5b2ff0be27c:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
 5b2ff0be282:	c4 a1 7a 7f 44 0f 10                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x10],xmm0
 5b2ff0be289:	48 8d 57 44                                     	lea    rdx,[rdi+0x44]
 5b2ff0be28d:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
 5b2ff0be293:	c4 a1 7a 7f 44 0f 20                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x20],xmm0
 5b2ff0be29a:	48 8d 57 48                                     	lea    rdx,[rdi+0x48]
 5b2ff0be29e:	c4 e2 79 18 04 0a                               	vbroadcastss xmm0,DWORD PTR [rdx+rcx*1]
 5b2ff0be2a4:	c4 a1 7a 7f 44 0f 30                            	vmovdqu XMMWORD PTR [rdi+r9*1+0x30],xmm0
 5b2ff0be2ab:	48 8b d7                                        	mov    rdx,rdi
 5b2ff0be2ae:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
 5b2ff0be2b5:	41 83 c0 01                                     	add    r8d,0x1
 5b2ff0be2b9:	41 83 f8 04                                     	cmp    r8d,0x4
 5b2ff0be2bd:	0f 85 3d ed ff ff                               	jne    0x5b2ff0bd000
 5b2ff0be2c3:	41 8b db                                        	mov    ebx,r11d
 5b2ff0be2c6:	c5 fa 6f 84 1a 90 00 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x90]
 5b2ff0be2cf:	4c 8b 15 4b ef ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffef4b]        # 0x5b2ff0bd221
 5b2ff0be2d6:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
 5b2ff0be2db:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
 5b2ff0be2df:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff0be2e3:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
 5b2ff0be2eb:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
 5b2ff0be2ef:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
 5b2ff0be2f4:	c5 7a 6f 84 1a a0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xa0]
 5b2ff0be2fd:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
 5b2ff0be301:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
 5b2ff0be309:	c5 30 58 ce                                     	vaddps xmm9,xmm9,xmm6
 5b2ff0be30d:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
 5b2ff0be312:	c4 c1 78 58 c0                                  	vaddps xmm0,xmm0,xmm8
 5b2ff0be317:	c5 7a 6f 84 1a b0 00 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0xb0]
 5b2ff0be320:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
 5b2ff0be324:	c5 78 10 95 a0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x160]
 5b2ff0be32c:	c5 a8 58 f6                                     	vaddps xmm6,xmm10,xmm6
 5b2ff0be330:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
 5b2ff0be334:	c5 f8 58 c6                                     	vaddps xmm0,xmm0,xmm6
 5b2ff0be338:	49 ba 00 00 80 40 00 00 80 40                   	movabs r10,0x4080000040800000
 5b2ff0be342:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
 5b2ff0be347:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
 5b2ff0be34b:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
 5b2ff0be34f:	c5 f8 10 b5 c0 fd ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x240]
 5b2ff0be357:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
 5b2ff0be35b:	c5 79 28 dd                                     	vmovapd xmm11,xmm5
 5b2ff0be35f:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0be363:	c5 78 59 c0                                     	vmulps xmm8,xmm0,xmm0
 5b2ff0be367:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
 5b2ff0be36c:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0be371:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0be378:	44 8b 84 3a 38 01 00 00                         	mov    r8d,DWORD PTR [rdx+rdi*1+0x138]
 5b2ff0be380:	4d 8b d8                                        	mov    r11,r8
 5b2ff0be383:	41 83 c3 ff                                     	add    r11d,0xffffffff
 5b2ff0be387:	0f 85 f3 00 00 00                               	jne    0x5b2ff0be480
 5b2ff0be38d:	c5 7a 6f 84 1a 70 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rbx*1+0x170]
 5b2ff0be396:	c5 7a 6f 8c 1a 30 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x130]
 5b2ff0be39f:	4c 8d 82 38 36 00 00                            	lea    r8,[rdx+0x3638]
 5b2ff0be3a6:	4c 8b 65 d0                                     	mov    r12,QWORD PTR [rbp-0x30]
 5b2ff0be3aa:	c4 02 79 18 14 20                               	vbroadcastss xmm10,DWORD PTR [r8+r12*1]
 5b2ff0be3b0:	c4 41 78 58 d2                                  	vaddps xmm10,xmm0,xmm10
 5b2ff0be3b5:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
 5b2ff0be3ba:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
 5b2ff0be3bf:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
 5b2ff0be3c4:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
 5b2ff0be3c9:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0be3ce:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
 5b2ff0be3d3:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
 5b2ff0be3d8:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0be3dd:	c5 7a 6f 8c 1a 60 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x160]
 5b2ff0be3e6:	c5 7a 6f 94 1a 20 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x120]
 5b2ff0be3ef:	4c 8d 82 34 36 00 00                            	lea    r8,[rdx+0x3634]
 5b2ff0be3f6:	c4 02 79 18 24 20                               	vbroadcastss xmm12,DWORD PTR [r8+r12*1]
 5b2ff0be3fc:	c4 41 78 58 e4                                  	vaddps xmm12,xmm0,xmm12
 5b2ff0be401:	c4 41 48 5f e4                                  	vmaxps xmm12,xmm6,xmm12
 5b2ff0be406:	c4 41 20 5d e4                                  	vminps xmm12,xmm11,xmm12
 5b2ff0be40b:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
 5b2ff0be410:	c4 41 48 5f d2                                  	vmaxps xmm10,xmm6,xmm10
 5b2ff0be415:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
 5b2ff0be41a:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
 5b2ff0be41f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
 5b2ff0be424:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0be429:	c5 7a 6f 94 1a 50 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x150]
 5b2ff0be432:	c5 7a 6f a4 1a 10 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x110]
 5b2ff0be43b:	4c 8d 82 30 36 00 00                            	lea    r8,[rdx+0x3630]
 5b2ff0be442:	c4 02 79 18 2c 20                               	vbroadcastss xmm13,DWORD PTR [r8+r12*1]
 5b2ff0be448:	c4 c1 78 58 c5                                  	vaddps xmm0,xmm0,xmm13
 5b2ff0be44d:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
 5b2ff0be451:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0be455:	c5 98 59 c0                                     	vmulps xmm0,xmm12,xmm0
 5b2ff0be459:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
 5b2ff0be45d:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0be461:	c5 a8 58 c0                                     	vaddps xmm0,xmm10,xmm0
 5b2ff0be465:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
 5b2ff0be469:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0be46d:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
 5b2ff0be472:	c5 79 28 c0                                     	vmovapd xmm8,xmm0
 5b2ff0be476:	c4 c1 79 28 c7                                  	vmovapd xmm0,xmm15
 5b2ff0be47b:	e9 89 01 00 00                                  	jmp    0x5b2ff0be609
 5b2ff0be480:	41 83 fb 02                                     	cmp    r11d,0x2
 5b2ff0be484:	0f 84 86 00 00 00                               	je     0x5b2ff0be510
 5b2ff0be48a:	c5 fa 6f 84 1a 30 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rbx*1+0x130]
 5b2ff0be493:	c5 b8 59 c0                                     	vmulps xmm0,xmm8,xmm0
 5b2ff0be497:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
 5b2ff0be49b:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0be49f:	c5 7a 6f 8c 1a 20 01 00 00                      	vmovdqu xmm9,XMMWORD PTR [rdx+rbx*1+0x120]
 5b2ff0be4a8:	c4 41 38 59 c9                                  	vmulps xmm9,xmm8,xmm9
 5b2ff0be4ad:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
 5b2ff0be4b2:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0be4b7:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
 5b2ff0be4be:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0be4c2:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
 5b2ff0be4c8:	c4 41 30 59 ca                                  	vmulps xmm9,xmm9,xmm10
 5b2ff0be4cd:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
 5b2ff0be4d2:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0be4d7:	c5 7a 6f 94 1a 10 01 00 00                      	vmovdqu xmm10,XMMWORD PTR [rdx+rbx*1+0x110]
 5b2ff0be4e0:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
 5b2ff0be4e5:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
 5b2ff0be4ea:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0be4ef:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
 5b2ff0be4f6:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
 5b2ff0be4fc:	c4 41 38 59 c2                                  	vmulps xmm8,xmm8,xmm10
 5b2ff0be501:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
 5b2ff0be506:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0be50b:	e9 58 00 00 00                                  	jmp    0x5b2ff0be568
 5b2ff0be510:	c4 c1 38 59 c0                                  	vmulps xmm0,xmm8,xmm8
 5b2ff0be515:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
 5b2ff0be519:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0be51d:	4c 8d a2 1c 37 00 00                            	lea    r12,[rdx+0x371c]
 5b2ff0be524:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0be528:	c4 02 79 18 04 1c                               	vbroadcastss xmm8,DWORD PTR [r12+r11*1]
 5b2ff0be52e:	c4 41 78 59 c0                                  	vmulps xmm8,xmm0,xmm8
 5b2ff0be533:	c4 41 48 5f c0                                  	vmaxps xmm8,xmm6,xmm8
 5b2ff0be538:	c4 41 20 5d c0                                  	vminps xmm8,xmm11,xmm8
 5b2ff0be53d:	4c 8d a2 18 37 00 00                            	lea    r12,[rdx+0x3718]
 5b2ff0be544:	c4 02 79 18 0c 1c                               	vbroadcastss xmm9,DWORD PTR [r12+r11*1]
 5b2ff0be54a:	c4 41 78 59 c9                                  	vmulps xmm9,xmm0,xmm9
 5b2ff0be54f:	c4 41 48 5f c9                                  	vmaxps xmm9,xmm6,xmm9
 5b2ff0be554:	c4 41 20 5d c9                                  	vminps xmm9,xmm11,xmm9
 5b2ff0be559:	c4 41 79 28 f8                                  	vmovapd xmm15,xmm8
 5b2ff0be55e:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
 5b2ff0be563:	c4 41 79 28 cf                                  	vmovapd xmm9,xmm15
 5b2ff0be568:	4c 8d a2 20 37 00 00                            	lea    r12,[rdx+0x3720]
 5b2ff0be56f:	c4 02 79 18 14 1c                               	vbroadcastss xmm10,DWORD PTR [r12+r11*1]
 5b2ff0be575:	c4 c1 78 59 c2                                  	vmulps xmm0,xmm0,xmm10
 5b2ff0be57a:	c5 c8 5f c0                                     	vmaxps xmm0,xmm6,xmm0
 5b2ff0be57e:	c5 a0 5d c0                                     	vminps xmm0,xmm11,xmm0
 5b2ff0be582:	41 83 f8 01                                     	cmp    r8d,0x1
 5b2ff0be586:	0f 84 7a 00 00 00                               	je     0x5b2ff0be606
 5b2ff0be58c:	c4 a1 7a 10 b4 1a 24 37 00 00                   	vmovss xmm6,DWORD PTR [rdx+r11*1+0x3724]
 5b2ff0be596:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
 5b2ff0be59b:	c4 c1 19 72 f4 19                               	vpslld xmm12,xmm12,0x19
 5b2ff0be5a1:	c4 c1 19 72 d4 02                               	vpsrld xmm12,xmm12,0x2
 5b2ff0be5a7:	c4 c1 78 2e f4                                  	vucomiss xmm6,xmm12
 5b2ff0be5ac:	0f 87 09 00 00 00                               	ja     0x5b2ff0be5bb
 5b2ff0be5b2:	c5 79 28 d6                                     	vmovapd xmm10,xmm6
 5b2ff0be5b6:	e9 05 00 00 00                                  	jmp    0x5b2ff0be5c0
 5b2ff0be5bb:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
 5b2ff0be5c0:	c4 41 10 57 ed                                  	vxorps xmm13,xmm13,xmm13
 5b2ff0be5c5:	c5 78 2e ee                                     	vucomiss xmm13,xmm6
 5b2ff0be5c9:	0f 87 0a 00 00 00                               	ja     0x5b2ff0be5d9
 5b2ff0be5cf:	c4 c1 79 28 f2                                  	vmovapd xmm6,xmm10
 5b2ff0be5d4:	e9 05 00 00 00                                  	jmp    0x5b2ff0be5de
 5b2ff0be5d9:	c4 c1 79 28 f5                                  	vmovapd xmm6,xmm13
 5b2ff0be5de:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
 5b2ff0be5e3:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0be5e7:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0be5eb:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0be5f0:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
 5b2ff0be5f5:	8b c3                                           	mov    eax,ebx
 5b2ff0be5f7:	49 8b f3                                        	mov    rsi,r11
 5b2ff0be5fa:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
 5b2ff0be601:	e9 06 12 00 00                                  	jmp    0x5b2ff0bf80c
 5b2ff0be606:	4d 8b e3                                        	mov    r12,r11
 5b2ff0be609:	c5 78 10 a5 d0 fe ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x130]
 5b2ff0be611:	c4 41 48 5f d4                                  	vmaxps xmm10,xmm6,xmm12
 5b2ff0be616:	c4 41 20 5d d2                                  	vminps xmm10,xmm11,xmm10
 5b2ff0be61b:	c5 7a 6f a4 1a 40 01 00 00                      	vmovdqu xmm12,XMMWORD PTR [rdx+rbx*1+0x140]
 5b2ff0be624:	c4 41 28 59 d4                                  	vmulps xmm10,xmm10,xmm12
 5b2ff0be629:	c4 c1 48 5f f2                                  	vmaxps xmm6,xmm6,xmm10
 5b2ff0be62e:	c5 a0 5d f6                                     	vminps xmm6,xmm11,xmm6
 5b2ff0be632:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0be636:	c5 f9 28 f0                                     	vmovapd xmm6,xmm0
 5b2ff0be63a:	c4 c1 79 28 c0                                  	vmovapd xmm0,xmm8
 5b2ff0be63f:	c4 41 79 28 c1                                  	vmovapd xmm8,xmm9
 5b2ff0be644:	8b c3                                           	mov    eax,ebx
 5b2ff0be646:	49 8b f4                                        	mov    rsi,r12
 5b2ff0be649:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
 5b2ff0be650:	e9 b7 11 00 00                                  	jmp    0x5b2ff0bf80c
 5b2ff0be655:	44 8b 7c 3a 38                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x38]
 5b2ff0be65a:	c5 f8 11 bd 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm7
 5b2ff0be662:	83 7c 3a 38 00                                  	cmp    DWORD PTR [rdx+rdi*1+0x38],0x0
 5b2ff0be667:	0f 85 b1 10 00 00                               	jne    0x5b2ff0bf71e
 5b2ff0be66d:	4c 8d 7a 54                                     	lea    r15,[rdx+0x54]
 5b2ff0be671:	c4 82 79 18 14 27                               	vbroadcastss xmm2,DWORD PTR [r15+r12*1]
 5b2ff0be677:	c5 a0 59 d2                                     	vmulps xmm2,xmm11,xmm2
 5b2ff0be67b:	c4 c2 79 18 3c 07                               	vbroadcastss xmm7,DWORD PTR [r15+rax*1]
 5b2ff0be681:	c5 e0 59 ff                                     	vmulps xmm7,xmm3,xmm7
 5b2ff0be685:	c5 e8 58 ff                                     	vaddps xmm7,xmm2,xmm7
 5b2ff0be689:	c4 82 79 18 14 0f                               	vbroadcastss xmm2,DWORD PTR [r15+r9*1]
 5b2ff0be68f:	c5 b0 59 d2                                     	vmulps xmm2,xmm9,xmm2
 5b2ff0be693:	c5 c0 58 fa                                     	vaddps xmm7,xmm7,xmm2
 5b2ff0be697:	c5 c8 59 d7                                     	vmulps xmm2,xmm6,xmm7
 5b2ff0be69b:	4c 8d 7a 50                                     	lea    r15,[rdx+0x50]
 5b2ff0be69f:	c4 82 79 18 3c 27                               	vbroadcastss xmm7,DWORD PTR [r15+r12*1]
 5b2ff0be6a5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
 5b2ff0be6a9:	c4 42 79 18 04 07                               	vbroadcastss xmm8,DWORD PTR [r15+rax*1]
 5b2ff0be6af:	c4 41 60 59 c0                                  	vmulps xmm8,xmm3,xmm8
 5b2ff0be6b4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
 5b2ff0be6b9:	c4 02 79 18 04 0f                               	vbroadcastss xmm8,DWORD PTR [r15+r9*1]
 5b2ff0be6bf:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
 5b2ff0be6c4:	c4 c1 40 58 f8                                  	vaddps xmm7,xmm7,xmm8
 5b2ff0be6c9:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
 5b2ff0be6cd:	44 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+rdi*1]
 5b2ff0be6d1:	41 83 ff 01                                     	cmp    r15d,0x1
 5b2ff0be6d5:	0f 85 28 0d 00 00                               	jne    0x5b2ff0bf403
 5b2ff0be6db:	8b 4c 3a 28                                     	mov    ecx,DWORD PTR [rdx+rdi*1+0x28]
 5b2ff0be6df:	85 c9                                           	test   ecx,ecx
 5b2ff0be6e1:	0f 84 1c 0d 00 00                               	je     0x5b2ff0bf403
 5b2ff0be6e7:	44 8b 5c 3a 1c                                  	mov    r11d,DWORD PTR [rdx+rdi*1+0x1c]
 5b2ff0be6ec:	45 85 db                                        	test   r11d,r11d
 5b2ff0be6ef:	0f 8e 0e 0d 00 00                               	jle    0x5b2ff0bf403
 5b2ff0be6f5:	8b 5c 3a 20                                     	mov    ebx,DWORD PTR [rdx+rdi*1+0x20]
 5b2ff0be6f9:	85 db                                           	test   ebx,ebx
 5b2ff0be6fb:	0f 8e fc 0c 00 00                               	jle    0x5b2ff0bf3fd
 5b2ff0be701:	45 8b d3                                        	mov    r10d,r11d
 5b2ff0be704:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0be709:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff0be70e:	44 8b 7c 3a 10                                  	mov    r15d,DWORD PTR [rdx+rdi*1+0x10]
 5b2ff0be713:	33 f6                                           	xor    esi,esi
 5b2ff0be715:	41 81 ff 2f 81 00 00                            	cmp    r15d,0x812f
 5b2ff0be71c:	40 0f 95 c6                                     	setne  sil
 5b2ff0be720:	41 81 ff 00 29 00 00                            	cmp    r15d,0x2900
 5b2ff0be727:	41 0f 95 c7                                     	setne  r15b
 5b2ff0be72b:	45 0f b6 ff                                     	movzx  r15d,r15b
 5b2ff0be72f:	44 23 fe                                        	and    r15d,esi
 5b2ff0be732:	0f 85 0d 00 00 00                               	jne    0x5b2ff0be745
 5b2ff0be738:	c5 d8 5f f7                                     	vmaxps xmm6,xmm4,xmm7
 5b2ff0be73c:	c5 d0 5d f6                                     	vminps xmm6,xmm5,xmm6
 5b2ff0be740:	e9 0a 00 00 00                                  	jmp    0x5b2ff0be74f
 5b2ff0be745:	c4 e3 79 08 f7 09                               	vroundps xmm6,xmm7,0x9
 5b2ff0be74b:	c5 c0 5c f6                                     	vsubps xmm6,xmm7,xmm6
 5b2ff0be74f:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
 5b2ff0be753:	44 8b d3                                        	mov    r10d,ebx
 5b2ff0be756:	c4 c1 82 2a f2                                  	vcvtsi2ss xmm6,xmm15,r10
 5b2ff0be75b:	c4 e2 79 18 f6                                  	vbroadcastss xmm6,xmm6
 5b2ff0be760:	8b 74 3a 14                                     	mov    esi,DWORD PTR [rdx+rdi*1+0x14]
 5b2ff0be764:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0be767:	81 fe 2f 81 00 00                               	cmp    esi,0x812f
 5b2ff0be76d:	41 0f 95 c1                                     	setne  r9b
 5b2ff0be771:	81 fe 00 29 00 00                               	cmp    esi,0x2900
 5b2ff0be777:	40 0f 95 c6                                     	setne  sil
 5b2ff0be77b:	40 0f b6 f6                                     	movzx  esi,sil
 5b2ff0be77f:	41 23 f1                                        	and    esi,r9d
 5b2ff0be782:	0f 85 0d 00 00 00                               	jne    0x5b2ff0be795
 5b2ff0be788:	c5 d8 5f fa                                     	vmaxps xmm7,xmm4,xmm2
 5b2ff0be78c:	c5 d0 5d ff                                     	vminps xmm7,xmm5,xmm7
 5b2ff0be790:	e9 0a 00 00 00                                  	jmp    0x5b2ff0be79f
 5b2ff0be795:	c4 e3 79 08 fa 09                               	vroundps xmm7,xmm2,0x9
 5b2ff0be79b:	c5 e8 5c ff                                     	vsubps xmm7,xmm2,xmm7
 5b2ff0be79f:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
 5b2ff0be7a3:	4c 8b 15 77 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea77]        # 0x5b2ff0bd221
 5b2ff0be7aa:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0be7af:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0be7b3:	c5 48 58 c7                                     	vaddps xmm8,xmm6,xmm7
 5b2ff0be7b7:	44 8b 4c 3a 0c                                  	mov    r9d,DWORD PTR [rdx+rdi*1+0xc]
 5b2ff0be7bc:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0be7bf:	81 7c 3a 0c 00 26 00 00                         	cmp    DWORD PTR [rdx+rdi*1+0xc],0x2600
 5b2ff0be7c7:	41 0f 94 c1                                     	sete   r9b
 5b2ff0be7cb:	45 85 c9                                        	test   r9d,r9d
 5b2ff0be7ce:	0f 85 5b 00 00 00                               	jne    0x5b2ff0be82f
 5b2ff0be7d4:	c4 c3 79 08 f0 09                               	vroundps xmm6,xmm8,0x9
 5b2ff0be7da:	4c 8b 15 7c ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7c]        # 0x5b2ff0bd25d
 5b2ff0be7e1:	c4 41 48 54 0a                                  	vandps xmm9,xmm6,XMMWORD PTR [r10]
 5b2ff0be7e6:	4c 8b 15 7f ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea7f]        # 0x5b2ff0bd26c
 5b2ff0be7ed:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
 5b2ff0be7f2:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
 5b2ff0be7f7:	c4 41 30 c2 cb 01                               	vcmpltps xmm9,xmm9,xmm11
 5b2ff0be7fd:	4c 8b 15 1a a8 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa81a]        # 0x5b2ff0b901e
 5b2ff0be804:	c5 48 c2 fe 00                                  	vcmpeqps xmm15,xmm6,xmm6
 5b2ff0be809:	c4 c1 48 54 d7                                  	vandps xmm2,xmm6,xmm15
 5b2ff0be80e:	c4 41 48 c2 3a 0d                               	vcmpgeps xmm15,xmm6,XMMWORD PTR [r10]
 5b2ff0be814:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
 5b2ff0be818:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
 5b2ff0be81d:	c5 f8 58 c7                                     	vaddps xmm0,xmm0,xmm7
 5b2ff0be821:	c5 f9 28 fe                                     	vmovapd xmm7,xmm6
 5b2ff0be825:	c4 c1 79 28 f0                                  	vmovapd xmm6,xmm8
 5b2ff0be82a:	e9 49 00 00 00                                  	jmp    0x5b2ff0be878
 5b2ff0be82f:	c4 e3 79 08 fe 09                               	vroundps xmm7,xmm6,0x9
 5b2ff0be835:	4c 8b 15 21 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea21]        # 0x5b2ff0bd25d
 5b2ff0be83c:	c4 41 40 54 02                                  	vandps xmm8,xmm7,XMMWORD PTR [r10]
 5b2ff0be841:	4c 8b 15 24 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea24]        # 0x5b2ff0bd26c
 5b2ff0be848:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
 5b2ff0be84d:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
 5b2ff0be852:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
 5b2ff0be858:	4c 8b 15 bf a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa7bf]        # 0x5b2ff0b901e
 5b2ff0be85f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
 5b2ff0be864:	c4 c1 40 54 d7                                  	vandps xmm2,xmm7,xmm15
 5b2ff0be869:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
 5b2ff0be86f:	c5 fa 5b d2                                     	vcvttps2dq xmm2,xmm2
 5b2ff0be873:	c4 c1 69 ef d7                                  	vpxor  xmm2,xmm2,xmm15
 5b2ff0be878:	c4 63 79 08 c0 09                               	vroundps xmm8,xmm0,0x9
 5b2ff0be87e:	4c 8b 15 99 a7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa799]        # 0x5b2ff0b901e
 5b2ff0be885:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0be88b:	c4 c1 38 54 df                                  	vandps xmm3,xmm8,xmm15
 5b2ff0be890:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0be896:	c5 fa 5b db                                     	vcvttps2dq xmm3,xmm3
 5b2ff0be89a:	c4 c1 61 ef df                                  	vpxor  xmm3,xmm3,xmm15
 5b2ff0be89f:	4c 8b 15 86 ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea86]        # 0x5b2ff0bd32c
 5b2ff0be8a6:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
 5b2ff0be8ab:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
 5b2ff0be8af:	4c 8b 15 a7 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe9a7]        # 0x5b2ff0bd25d
 5b2ff0be8b6:	c4 c1 38 54 2a                                  	vandps xmm5,xmm8,XMMWORD PTR [r10]
 5b2ff0be8bb:	c4 c1 50 c2 eb 01                               	vcmpltps xmm5,xmm5,xmm11
 5b2ff0be8c1:	c5 51 df fc                                     	vpandn xmm15,xmm5,xmm4
 5b2ff0be8c5:	c5 e1 db dd                                     	vpand  xmm3,xmm3,xmm5
 5b2ff0be8c9:	c4 c1 61 eb df                                  	vpor   xmm3,xmm3,xmm15
 5b2ff0be8ce:	41 8d 43 ff                                     	lea    eax,[r11-0x1]
 5b2ff0be8d2:	c5 f9 6e e8                                     	vmovd  xmm5,eax
 5b2ff0be8d6:	c5 f9 70 ed 00                                  	vpshufd xmm5,xmm5,0x0
 5b2ff0be8db:	8b 44 3a 2c                                     	mov    eax,DWORD PTR [rdx+rdi*1+0x2c]
 5b2ff0be8df:	c5 78 10 95 40 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2c0]
 5b2ff0be8e7:	c4 42 61 3d e2                                  	vpmaxsd xmm12,xmm3,xmm10
 5b2ff0be8ec:	c4 62 19 39 e5                                  	vpminsd xmm12,xmm12,xmm5
 5b2ff0be8f1:	45 85 ff                                        	test   r15d,r15d
 5b2ff0be8f4:	0f 84 53 00 00 00                               	je     0x5b2ff0be94d
 5b2ff0be8fa:	c5 79 6e e0                                     	vmovd  xmm12,eax
 5b2ff0be8fe:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0be903:	c4 41 61 db e4                                  	vpand  xmm12,xmm3,xmm12
 5b2ff0be908:	85 c0                                           	test   eax,eax
 5b2ff0be90a:	0f 85 3d 00 00 00                               	jne    0x5b2ff0be94d
 5b2ff0be910:	c4 41 79 6e e3                                  	vmovd  xmm12,r11d
 5b2ff0be915:	c4 42 79 58 e4                                  	vpbroadcastd xmm12,xmm12
 5b2ff0be91a:	c5 61 66 ed                                     	vpcmpgtd xmm13,xmm3,xmm5
 5b2ff0be91e:	c4 41 11 db ec                                  	vpand  xmm13,xmm13,xmm12
 5b2ff0be923:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0be928:	c4 42 11 0a ef                                  	vpsignd xmm13,xmm13,xmm15
 5b2ff0be92d:	c5 29 66 f3                                     	vpcmpgtd xmm14,xmm10,xmm3
 5b2ff0be931:	c4 41 09 df fd                                  	vpandn xmm15,xmm14,xmm13
 5b2ff0be936:	c4 41 19 db e6                                  	vpand  xmm12,xmm12,xmm14
 5b2ff0be93b:	c4 41 19 eb e7                                  	vpor   xmm12,xmm12,xmm15
 5b2ff0be940:	c4 41 61 fe e4                                  	vpaddd xmm12,xmm3,xmm12
 5b2ff0be945:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0be94d:	c5 31 df fc                                     	vpandn xmm15,xmm9,xmm4
 5b2ff0be951:	c4 41 69 db c9                                  	vpand  xmm9,xmm2,xmm9
 5b2ff0be956:	c4 41 31 eb cf                                  	vpor   xmm9,xmm9,xmm15
 5b2ff0be95b:	44 8d 63 ff                                     	lea    r12d,[rbx-0x1]
 5b2ff0be95f:	c4 c1 79 6e d4                                  	vmovd  xmm2,r12d
 5b2ff0be964:	c5 f9 70 d2 00                                  	vpshufd xmm2,xmm2,0x0
 5b2ff0be969:	44 8b 64 3a 30                                  	mov    r12d,DWORD PTR [rdx+rdi*1+0x30]
 5b2ff0be96e:	c4 42 31 3d ea                                  	vpmaxsd xmm13,xmm9,xmm10
 5b2ff0be973:	c4 62 11 39 ea                                  	vpminsd xmm13,xmm13,xmm2
 5b2ff0be978:	85 f6                                           	test   esi,esi
 5b2ff0be97a:	0f 84 4c 00 00 00                               	je     0x5b2ff0be9cc
 5b2ff0be980:	c4 41 79 6e ec                                  	vmovd  xmm13,r12d
 5b2ff0be985:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0be98a:	c4 41 11 db e9                                  	vpand  xmm13,xmm13,xmm9
 5b2ff0be98f:	45 85 e4                                        	test   r12d,r12d
 5b2ff0be992:	0f 85 34 00 00 00                               	jne    0x5b2ff0be9cc
 5b2ff0be998:	c5 79 6e eb                                     	vmovd  xmm13,ebx
 5b2ff0be99c:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0be9a1:	c5 31 66 f2                                     	vpcmpgtd xmm14,xmm9,xmm2
 5b2ff0be9a5:	c4 41 09 db f5                                  	vpand  xmm14,xmm14,xmm13
 5b2ff0be9aa:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0be9af:	c4 42 09 0a f7                                  	vpsignd xmm14,xmm14,xmm15
 5b2ff0be9b4:	c4 c1 29 66 c9                                  	vpcmpgtd xmm1,xmm10,xmm9
 5b2ff0be9b9:	c4 41 71 df fe                                  	vpandn xmm15,xmm1,xmm14
 5b2ff0be9be:	c5 11 db e9                                     	vpand  xmm13,xmm13,xmm1
 5b2ff0be9c2:	c4 41 11 eb ef                                  	vpor   xmm13,xmm13,xmm15
 5b2ff0be9c7:	c4 41 31 fe ed                                  	vpaddd xmm13,xmm9,xmm13
 5b2ff0be9cc:	c4 41 79 6e f3                                  	vmovd  xmm14,r11d
 5b2ff0be9d1:	c4 42 79 58 f6                                  	vpbroadcastd xmm14,xmm14
 5b2ff0be9d6:	c4 42 11 40 ee                                  	vpmulld xmm13,xmm13,xmm14
 5b2ff0be9db:	c4 c1 11 fe cc                                  	vpaddd xmm1,xmm13,xmm12
 5b2ff0be9e0:	c4 c3 79 16 cb 03                               	vpextrd r11d,xmm1,0x3
 5b2ff0be9e6:	c4 e3 79 16 cf 02                               	vpextrd edi,xmm1,0x2
 5b2ff0be9ec:	4c 89 9d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r11
 5b2ff0be9f3:	c4 c3 79 16 cb 01                               	vpextrd r11d,xmm1,0x1
 5b2ff0be9f9:	48 89 bd 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rdi
 5b2ff0bea00:	c5 f9 7e cf                                     	vmovd  edi,xmm1
 5b2ff0bea04:	45 85 c9                                        	test   r9d,r9d
 5b2ff0bea07:	0f 85 19 08 00 00                               	jne    0x5b2ff0bf226
 5b2ff0bea0d:	c5 f8 10 8d 10 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x3f0]
 5b2ff0bea15:	c5 e1 fe d9                                     	vpaddd xmm3,xmm3,xmm1
 5b2ff0bea19:	c5 f8 11 b5 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm6
 5b2ff0bea21:	c4 c2 61 3d f2                                  	vpmaxsd xmm6,xmm3,xmm10
 5b2ff0bea26:	c4 e2 49 39 f5                                  	vpminsd xmm6,xmm6,xmm5
 5b2ff0bea2b:	45 85 ff                                        	test   r15d,r15d
 5b2ff0bea2e:	0f 84 3d 00 00 00                               	je     0x5b2ff0bea71
 5b2ff0bea34:	c5 f9 6e f0                                     	vmovd  xmm6,eax
 5b2ff0bea38:	c5 f9 70 f6 00                                  	vpshufd xmm6,xmm6,0x0
 5b2ff0bea3d:	c5 e1 db f6                                     	vpand  xmm6,xmm3,xmm6
 5b2ff0bea41:	85 c0                                           	test   eax,eax
 5b2ff0bea43:	0f 85 28 00 00 00                               	jne    0x5b2ff0bea71
 5b2ff0bea49:	c5 e1 66 f5                                     	vpcmpgtd xmm6,xmm3,xmm5
 5b2ff0bea4d:	c4 c1 49 db f6                                  	vpand  xmm6,xmm6,xmm14
 5b2ff0bea52:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0bea57:	c4 c2 49 0a f7                                  	vpsignd xmm6,xmm6,xmm15
 5b2ff0bea5c:	c5 a9 66 eb                                     	vpcmpgtd xmm5,xmm10,xmm3
 5b2ff0bea60:	c5 51 df fe                                     	vpandn xmm15,xmm5,xmm6
 5b2ff0bea64:	c5 89 db f5                                     	vpand  xmm6,xmm14,xmm5
 5b2ff0bea68:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0bea6d:	c5 e1 fe f6                                     	vpaddd xmm6,xmm3,xmm6
 5b2ff0bea71:	c5 31 fe c9                                     	vpaddd xmm9,xmm9,xmm1
 5b2ff0bea75:	c4 c2 31 3d da                                  	vpmaxsd xmm3,xmm9,xmm10
 5b2ff0bea7a:	c4 e2 61 39 da                                  	vpminsd xmm3,xmm3,xmm2
 5b2ff0bea7f:	85 f6                                           	test   esi,esi
 5b2ff0bea81:	0f 84 49 00 00 00                               	je     0x5b2ff0bead0
 5b2ff0bea87:	c4 c1 79 6e dc                                  	vmovd  xmm3,r12d
 5b2ff0bea8c:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
 5b2ff0bea91:	c4 c1 61 db d9                                  	vpand  xmm3,xmm3,xmm9
 5b2ff0bea96:	45 85 e4                                        	test   r12d,r12d
 5b2ff0bea99:	0f 85 31 00 00 00                               	jne    0x5b2ff0bead0
 5b2ff0bea9f:	c5 f9 6e db                                     	vmovd  xmm3,ebx
 5b2ff0beaa3:	c5 f9 70 db 00                                  	vpshufd xmm3,xmm3,0x0
 5b2ff0beaa8:	c5 b1 66 d2                                     	vpcmpgtd xmm2,xmm9,xmm2
 5b2ff0beaac:	c5 e9 db d3                                     	vpand  xmm2,xmm2,xmm3
 5b2ff0beab0:	c4 41 01 76 ff                                  	vpcmpeqd xmm15,xmm15,xmm15
 5b2ff0beab5:	c4 c2 69 0a d7                                  	vpsignd xmm2,xmm2,xmm15
 5b2ff0beaba:	c4 c1 29 66 e9                                  	vpcmpgtd xmm5,xmm10,xmm9
 5b2ff0beabf:	c5 51 df fa                                     	vpandn xmm15,xmm5,xmm2
 5b2ff0beac3:	c5 e1 db d5                                     	vpand  xmm2,xmm3,xmm5
 5b2ff0beac7:	c4 c1 69 eb d7                                  	vpor   xmm2,xmm2,xmm15
 5b2ff0beacc:	c5 b1 fe da                                     	vpaddd xmm3,xmm9,xmm2
 5b2ff0bead0:	c4 42 61 40 ce                                  	vpmulld xmm9,xmm3,xmm14
 5b2ff0bead5:	c4 41 31 fe f4                                  	vpaddd xmm14,xmm9,xmm12
 5b2ff0beada:	41 83 f8 0f                                     	cmp    r8d,0xf
 5b2ff0beade:	0f 85 18 00 00 00                               	jne    0x5b2ff0beafc
 5b2ff0beae4:	c5 19 fe e1                                     	vpaddd xmm12,xmm12,xmm1
 5b2ff0beae8:	c4 41 49 76 e4                                  	vpcmpeqd xmm12,xmm6,xmm12
 5b2ff0beaed:	c4 41 78 50 e4                                  	vmovmskps r12d,xmm12
 5b2ff0beaf2:	41 83 fc 0f                                     	cmp    r12d,0xf
 5b2ff0beaf6:	0f 84 24 03 00 00                               	je     0x5b2ff0bee20
 5b2ff0beafc:	4d 8b e0                                        	mov    r12,r8
 5b2ff0beaff:	41 83 e4 08                                     	and    r12d,0x8
 5b2ff0beb03:	4d 8b f8                                        	mov    r15,r8
 5b2ff0beb06:	41 83 e7 04                                     	and    r15d,0x4
 5b2ff0beb0a:	49 8b c0                                        	mov    rax,r8
 5b2ff0beb0d:	83 e0 02                                        	and    eax,0x2
 5b2ff0beb10:	49 8b d8                                        	mov    rbx,r8
 5b2ff0beb13:	83 e3 01                                        	and    ebx,0x1
 5b2ff0beb16:	41 83 f8 0f                                     	cmp    r8d,0xf
 5b2ff0beb1a:	0f 84 6c 00 00 00                               	je     0x5b2ff0beb8c
 5b2ff0beb20:	85 db                                           	test   ebx,ebx
 5b2ff0beb22:	0f 85 07 00 00 00                               	jne    0x5b2ff0beb2f
 5b2ff0beb28:	33 ff                                           	xor    edi,edi
 5b2ff0beb2a:	e9 06 00 00 00                                  	jmp    0x5b2ff0beb35
 5b2ff0beb2f:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0beb32:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0beb35:	85 c0                                           	test   eax,eax
 5b2ff0beb37:	0f 85 08 00 00 00                               	jne    0x5b2ff0beb45
 5b2ff0beb3d:	45 33 db                                        	xor    r11d,r11d
 5b2ff0beb40:	e9 08 00 00 00                                  	jmp    0x5b2ff0beb4d
 5b2ff0beb45:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
 5b2ff0beb49:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0beb4d:	45 85 ff                                        	test   r15d,r15d
 5b2ff0beb50:	0f 85 08 00 00 00                               	jne    0x5b2ff0beb5e
 5b2ff0beb56:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0beb59:	e9 0f 00 00 00                                  	jmp    0x5b2ff0beb6d
 5b2ff0beb5e:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
 5b2ff0beb65:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
 5b2ff0beb69:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
 5b2ff0beb6d:	45 85 e4                                        	test   r12d,r12d
 5b2ff0beb70:	0f 85 33 00 00 00                               	jne    0x5b2ff0beba9
 5b2ff0beb76:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
 5b2ff0beb7b:	c5 79 6e ef                                     	vmovd  xmm13,edi
 5b2ff0beb7f:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0beb84:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0beb87:	e9 43 00 00 00                                  	jmp    0x5b2ff0bebcf
 5b2ff0beb8c:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
 5b2ff0beb90:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0beb94:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0beb97:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0beb9a:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
 5b2ff0beba1:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
 5b2ff0beba5:	46 8b 3c 22                                     	mov    r15d,DWORD PTR [rdx+r12*1]
 5b2ff0beba9:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
 5b2ff0bebaf:	44 8d 24 81                                     	lea    r12d,[rcx+rax*4]
 5b2ff0bebb3:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
 5b2ff0bebb7:	c4 41 49 fe e5                                  	vpaddd xmm12,xmm6,xmm13
 5b2ff0bebbc:	c5 79 6e ef                                     	vmovd  xmm13,edi
 5b2ff0bebc0:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0bebc5:	41 83 f8 0f                                     	cmp    r8d,0xf
 5b2ff0bebc9:	0f 84 66 00 00 00                               	je     0x5b2ff0bec35
 5b2ff0bebcf:	41 f6 c0 01                                     	test   r8b,0x1
 5b2ff0bebd3:	0f 85 07 00 00 00                               	jne    0x5b2ff0bebe0
 5b2ff0bebd9:	33 ff                                           	xor    edi,edi
 5b2ff0bebdb:	e9 0a 00 00 00                                  	jmp    0x5b2ff0bebea
 5b2ff0bebe0:	c5 79 7e e7                                     	vmovd  edi,xmm12
 5b2ff0bebe4:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bebe7:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bebea:	41 f6 c0 02                                     	test   r8b,0x2
 5b2ff0bebee:	0f 85 07 00 00 00                               	jne    0x5b2ff0bebfb
 5b2ff0bebf4:	33 c0                                           	xor    eax,eax
 5b2ff0bebf6:	e9 0c 00 00 00                                  	jmp    0x5b2ff0bec07
 5b2ff0bebfb:	c4 63 79 16 e0 01                               	vpextrd eax,xmm12,0x1
 5b2ff0bec01:	8d 04 81                                        	lea    eax,[rcx+rax*4]
 5b2ff0bec04:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
 5b2ff0bec07:	41 f6 c0 04                                     	test   r8b,0x4
 5b2ff0bec0b:	0f 85 07 00 00 00                               	jne    0x5b2ff0bec18
 5b2ff0bec11:	33 db                                           	xor    ebx,ebx
 5b2ff0bec13:	e9 0c 00 00 00                                  	jmp    0x5b2ff0bec24
 5b2ff0bec18:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
 5b2ff0bec1e:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
 5b2ff0bec21:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
 5b2ff0bec24:	41 f6 c0 08                                     	test   r8b,0x8
 5b2ff0bec28:	0f 85 29 00 00 00                               	jne    0x5b2ff0bec57
 5b2ff0bec2e:	33 f6                                           	xor    esi,esi
 5b2ff0bec30:	e9 2e 00 00 00                                  	jmp    0x5b2ff0bec63
 5b2ff0bec35:	c4 63 79 16 e7 01                               	vpextrd edi,xmm12,0x1
 5b2ff0bec3b:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bec3e:	8b 04 3a                                        	mov    eax,DWORD PTR [rdx+rdi*1]
 5b2ff0bec41:	c5 79 7e e7                                     	vmovd  edi,xmm12
 5b2ff0bec45:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bec48:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bec4b:	c4 63 79 16 e3 02                               	vpextrd ebx,xmm12,0x2
 5b2ff0bec51:	8d 1c 99                                        	lea    ebx,[rcx+rbx*4]
 5b2ff0bec54:	8b 1c 1a                                        	mov    ebx,DWORD PTR [rdx+rbx*1]
 5b2ff0bec57:	c4 63 79 16 e6 03                               	vpextrd esi,xmm12,0x3
 5b2ff0bec5d:	8d 34 b1                                        	lea    esi,[rcx+rsi*4]
 5b2ff0bec60:	8b 34 32                                        	mov    esi,DWORD PTR [rdx+rsi*1]
 5b2ff0bec63:	c4 43 11 22 e3 01                               	vpinsrd xmm12,xmm13,r11d,0x1
 5b2ff0bec69:	c5 79 6e ef                                     	vmovd  xmm13,edi
 5b2ff0bec6d:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0bec72:	c4 63 11 22 e8 01                               	vpinsrd xmm13,xmm13,eax,0x1
 5b2ff0bec78:	41 83 f8 0f                                     	cmp    r8d,0xf
 5b2ff0bec7c:	0f 84 6a 00 00 00                               	je     0x5b2ff0becec
 5b2ff0bec82:	41 f6 c0 01                                     	test   r8b,0x1
 5b2ff0bec86:	0f 85 07 00 00 00                               	jne    0x5b2ff0bec93
 5b2ff0bec8c:	33 ff                                           	xor    edi,edi
 5b2ff0bec8e:	e9 0a 00 00 00                                  	jmp    0x5b2ff0bec9d
 5b2ff0bec93:	c5 79 7e f7                                     	vmovd  edi,xmm14
 5b2ff0bec97:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bec9a:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bec9d:	41 f6 c0 02                                     	test   r8b,0x2
 5b2ff0beca1:	0f 85 08 00 00 00                               	jne    0x5b2ff0becaf
 5b2ff0beca7:	45 33 db                                        	xor    r11d,r11d
 5b2ff0becaa:	e9 0e 00 00 00                                  	jmp    0x5b2ff0becbd
 5b2ff0becaf:	c4 43 79 16 f3 01                               	vpextrd r11d,xmm14,0x1
 5b2ff0becb5:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
 5b2ff0becb9:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0becbd:	41 f6 c0 04                                     	test   r8b,0x4
 5b2ff0becc1:	0f 85 07 00 00 00                               	jne    0x5b2ff0becce
 5b2ff0becc7:	33 c0                                           	xor    eax,eax
 5b2ff0becc9:	e9 0c 00 00 00                                  	jmp    0x5b2ff0becda
 5b2ff0becce:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
 5b2ff0becd4:	8d 04 81                                        	lea    eax,[rcx+rax*4]
 5b2ff0becd7:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
 5b2ff0becda:	41 f6 c0 08                                     	test   r8b,0x8
 5b2ff0becde:	0f 85 2b 00 00 00                               	jne    0x5b2ff0bed0f
 5b2ff0bece4:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0bece7:	e9 31 00 00 00                                  	jmp    0x5b2ff0bed1d
 5b2ff0becec:	c4 63 79 16 f7 01                               	vpextrd edi,xmm14,0x1
 5b2ff0becf2:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0becf5:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
 5b2ff0becf9:	c5 79 7e f7                                     	vmovd  edi,xmm14
 5b2ff0becfd:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bed00:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bed03:	c4 63 79 16 f0 02                               	vpextrd eax,xmm14,0x2
 5b2ff0bed09:	8d 04 81                                        	lea    eax,[rcx+rax*4]
 5b2ff0bed0c:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
 5b2ff0bed0f:	c4 43 79 16 f1 03                               	vpextrd r9d,xmm14,0x3
 5b2ff0bed15:	46 8d 0c 89                                     	lea    r9d,[rcx+r9*4]
 5b2ff0bed19:	46 8b 0c 0a                                     	mov    r9d,DWORD PTR [rdx+r9*1]
 5b2ff0bed1d:	c4 43 19 22 e7 02                               	vpinsrd xmm12,xmm12,r15d,0x2
 5b2ff0bed23:	c4 63 11 22 eb 02                               	vpinsrd xmm13,xmm13,ebx,0x2
 5b2ff0bed29:	c5 b1 fe f6                                     	vpaddd xmm6,xmm9,xmm6
 5b2ff0bed2d:	c5 79 6e cf                                     	vmovd  xmm9,edi
 5b2ff0bed31:	c4 42 79 58 c9                                  	vpbroadcastd xmm9,xmm9
 5b2ff0bed36:	c4 43 31 22 cb 01                               	vpinsrd xmm9,xmm9,r11d,0x1
 5b2ff0bed3c:	c4 63 31 22 c8 02                               	vpinsrd xmm9,xmm9,eax,0x2
 5b2ff0bed42:	41 83 f8 0f                                     	cmp    r8d,0xf
 5b2ff0bed46:	0f 84 6c 00 00 00                               	je     0x5b2ff0bedb8
 5b2ff0bed4c:	41 f6 c0 01                                     	test   r8b,0x1
 5b2ff0bed50:	0f 85 07 00 00 00                               	jne    0x5b2ff0bed5d
 5b2ff0bed56:	33 ff                                           	xor    edi,edi
 5b2ff0bed58:	e9 0a 00 00 00                                  	jmp    0x5b2ff0bed67
 5b2ff0bed5d:	c5 f9 7e f7                                     	vmovd  edi,xmm6
 5b2ff0bed61:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bed64:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bed67:	41 f6 c0 02                                     	test   r8b,0x2
 5b2ff0bed6b:	0f 85 08 00 00 00                               	jne    0x5b2ff0bed79
 5b2ff0bed71:	45 33 db                                        	xor    r11d,r11d
 5b2ff0bed74:	e9 0e 00 00 00                                  	jmp    0x5b2ff0bed87
 5b2ff0bed79:	c4 c3 79 16 f3 01                               	vpextrd r11d,xmm6,0x1
 5b2ff0bed7f:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
 5b2ff0bed83:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0bed87:	41 f6 c0 04                                     	test   r8b,0x4
 5b2ff0bed8b:	0f 85 08 00 00 00                               	jne    0x5b2ff0bed99
 5b2ff0bed91:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0bed94:	e9 0e 00 00 00                                  	jmp    0x5b2ff0beda7
 5b2ff0bed99:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
 5b2ff0bed9f:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
 5b2ff0beda3:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
 5b2ff0beda7:	41 f6 c0 08                                     	test   r8b,0x8
 5b2ff0bedab:	0f 85 2c 00 00 00                               	jne    0x5b2ff0beddd
 5b2ff0bedb1:	33 c0                                           	xor    eax,eax
 5b2ff0bedb3:	e9 31 00 00 00                                  	jmp    0x5b2ff0bede9
 5b2ff0bedb8:	c4 e3 79 16 f7 01                               	vpextrd edi,xmm6,0x1
 5b2ff0bedbe:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bedc1:	44 8b 1c 3a                                     	mov    r11d,DWORD PTR [rdx+rdi*1]
 5b2ff0bedc5:	c5 f9 7e f7                                     	vmovd  edi,xmm6
 5b2ff0bedc9:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bedcc:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bedcf:	c4 c3 79 16 f7 02                               	vpextrd r15d,xmm6,0x2
 5b2ff0bedd5:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
 5b2ff0bedd9:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
 5b2ff0beddd:	c4 e3 79 16 f0 03                               	vpextrd eax,xmm6,0x3
 5b2ff0bede3:	8d 04 81                                        	lea    eax,[rcx+rax*4]
 5b2ff0bede6:	8b 04 02                                        	mov    eax,DWORD PTR [rdx+rax*1]
 5b2ff0bede9:	c4 c3 19 22 f4 03                               	vpinsrd xmm6,xmm12,r12d,0x3
 5b2ff0bedef:	c4 63 11 22 e6 03                               	vpinsrd xmm12,xmm13,esi,0x3
 5b2ff0bedf5:	c4 43 31 22 c9 03                               	vpinsrd xmm9,xmm9,r9d,0x3
 5b2ff0bedfb:	c5 79 6e ef                                     	vmovd  xmm13,edi
 5b2ff0bedff:	c4 42 79 58 ed                                  	vpbroadcastd xmm13,xmm13
 5b2ff0bee04:	c4 43 11 22 eb 01                               	vpinsrd xmm13,xmm13,r11d,0x1
 5b2ff0bee0a:	c4 43 11 22 ef 02                               	vpinsrd xmm13,xmm13,r15d,0x2
 5b2ff0bee10:	c4 63 11 22 e8 03                               	vpinsrd xmm13,xmm13,eax,0x3
 5b2ff0bee16:	c4 41 79 28 f5                                  	vmovapd xmm14,xmm13
 5b2ff0bee1b:	e9 95 00 00 00                                  	jmp    0x5b2ff0beeb5
 5b2ff0bee20:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bee23:	c5 fb 10 34 3a                                  	vmovsd xmm6,QWORD PTR [rdx+rdi*1]
 5b2ff0bee28:	42 8d 3c 99                                     	lea    edi,[rcx+r11*4]
 5b2ff0bee2c:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
 5b2ff0bee31:	c4 c1 49 6c f1                                  	vpunpcklqdq xmm6,xmm6,xmm9
 5b2ff0bee36:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
 5b2ff0bee3d:	42 8d 3c a1                                     	lea    edi,[rcx+r12*4]
 5b2ff0bee41:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
 5b2ff0bee46:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
 5b2ff0bee4d:	42 8d 3c b9                                     	lea    edi,[rcx+r15*4]
 5b2ff0bee51:	c5 7b 10 24 3a                                  	vmovsd xmm12,QWORD PTR [rdx+rdi*1]
 5b2ff0bee56:	c4 41 31 6c cc                                  	vpunpcklqdq xmm9,xmm9,xmm12
 5b2ff0bee5b:	c4 41 48 c6 e1 dd                               	vshufps xmm12,xmm6,xmm9,0xdd
 5b2ff0bee61:	c4 c1 48 c6 f1 88                               	vshufps xmm6,xmm6,xmm9,0x88
 5b2ff0bee67:	c4 c1 31 72 f6 02                               	vpslld xmm9,xmm14,0x2
 5b2ff0bee6d:	c5 79 7e cf                                     	vmovd  edi,xmm9
 5b2ff0bee71:	03 f9                                           	add    edi,ecx
 5b2ff0bee73:	c5 7b 10 2c 3a                                  	vmovsd xmm13,QWORD PTR [rdx+rdi*1]
 5b2ff0bee78:	c4 63 79 16 cf 01                               	vpextrd edi,xmm9,0x1
 5b2ff0bee7e:	03 f9                                           	add    edi,ecx
 5b2ff0bee80:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
 5b2ff0bee85:	c4 41 11 6c ee                                  	vpunpcklqdq xmm13,xmm13,xmm14
 5b2ff0bee8a:	c4 63 79 16 cf 02                               	vpextrd edi,xmm9,0x2
 5b2ff0bee90:	03 f9                                           	add    edi,ecx
 5b2ff0bee92:	c5 7b 10 34 3a                                  	vmovsd xmm14,QWORD PTR [rdx+rdi*1]
 5b2ff0bee97:	c4 63 79 16 cf 03                               	vpextrd edi,xmm9,0x3
 5b2ff0bee9d:	03 f9                                           	add    edi,ecx
 5b2ff0bee9f:	c5 7b 10 0c 3a                                  	vmovsd xmm9,QWORD PTR [rdx+rdi*1]
 5b2ff0beea4:	c4 41 09 6c c9                                  	vpunpcklqdq xmm9,xmm14,xmm9
 5b2ff0beea9:	c4 41 10 c6 f1 dd                               	vshufps xmm14,xmm13,xmm9,0xdd
 5b2ff0beeaf:	c4 41 10 c6 c9 88                               	vshufps xmm9,xmm13,xmm9,0x88
 5b2ff0beeb5:	c5 91 72 d6 18                                  	vpsrld xmm13,xmm6,0x18
 5b2ff0beeba:	c4 c1 69 72 d4 18                               	vpsrld xmm2,xmm12,0x18
 5b2ff0beec0:	c5 11 6b ea                                     	vpackssdw xmm13,xmm13,xmm2
 5b2ff0beec4:	c5 e9 ef d2                                     	vpxor  xmm2,xmm2,xmm2
 5b2ff0beec8:	c4 c3 69 0f dd 08                               	vpalignr xmm3,xmm2,xmm13,0x8
 5b2ff0beece:	c5 11 61 eb                                     	vpunpcklwd xmm13,xmm13,xmm3
 5b2ff0beed2:	49 ba 00 01 00 00 00 01 00 00                   	movabs r10,0x10000000100
 5b2ff0beedc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0beee1:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0beee5:	c4 c1 78 5c c0                                  	vsubps xmm0,xmm0,xmm8
 5b2ff0beeea:	c5 78 10 85 50 fd ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x2b0]
 5b2ff0beef2:	c4 c1 78 59 c0                                  	vmulps xmm0,xmm0,xmm8
 5b2ff0beef7:	49 ba 00 00 00 3f 00 00 00 3f                   	movabs r10,0x3f0000003f000000
 5b2ff0bef01:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0bef06:	c5 d1 6c ed                                     	vpunpcklqdq xmm5,xmm5,xmm5
 5b2ff0bef0a:	c5 f8 58 c5                                     	vaddps xmm0,xmm0,xmm5
 5b2ff0bef0e:	4c 8b 15 09 a1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa109]        # 0x5b2ff0b901e
 5b2ff0bef15:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
 5b2ff0bef1a:	c4 c1 78 54 cf                                  	vandps xmm1,xmm0,xmm15
 5b2ff0bef1f:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
 5b2ff0bef25:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
 5b2ff0bef29:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
 5b2ff0bef2e:	4c 8b 15 28 e3 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe328]        # 0x5b2ff0bd25d
 5b2ff0bef35:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0bef3a:	c4 c1 78 c2 c3 01                               	vcmpltps xmm0,xmm0,xmm11
 5b2ff0bef40:	c5 79 df fc                                     	vpandn xmm15,xmm0,xmm4
 5b2ff0bef44:	c5 f1 db c0                                     	vpand  xmm0,xmm1,xmm0
 5b2ff0bef48:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0bef4d:	c5 e1 fa c8                                     	vpsubd xmm1,xmm3,xmm0
 5b2ff0bef51:	c5 f1 6b c0                                     	vpackssdw xmm0,xmm1,xmm0
 5b2ff0bef55:	c4 e3 69 0f c8 08                               	vpalignr xmm1,xmm2,xmm0,0x8
 5b2ff0bef5b:	c5 f9 61 c1                                     	vpunpcklwd xmm0,xmm0,xmm1
 5b2ff0bef5f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
 5b2ff0bef63:	c5 f8 10 8d 80 fe ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x180]
 5b2ff0bef6b:	c5 f0 5c ff                                     	vsubps xmm7,xmm1,xmm7
 5b2ff0bef6f:	c4 c1 40 59 f8                                  	vmulps xmm7,xmm7,xmm8
 5b2ff0bef74:	c5 c0 58 fd                                     	vaddps xmm7,xmm7,xmm5
 5b2ff0bef78:	4c 8b 15 9f a0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa09f]        # 0x5b2ff0b901e
 5b2ff0bef7f:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
 5b2ff0bef84:	c4 c1 40 54 cf                                  	vandps xmm1,xmm7,xmm15
 5b2ff0bef89:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
 5b2ff0bef8f:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
 5b2ff0bef93:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
 5b2ff0bef98:	4c 8b 15 be e2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe2be]        # 0x5b2ff0bd25d
 5b2ff0bef9f:	c4 c1 40 54 3a                                  	vandps xmm7,xmm7,XMMWORD PTR [r10]
 5b2ff0befa4:	c4 c1 40 c2 fb 01                               	vcmpltps xmm7,xmm7,xmm11
 5b2ff0befaa:	c5 41 df fc                                     	vpandn xmm15,xmm7,xmm4
 5b2ff0befae:	c5 f1 db ff                                     	vpand  xmm7,xmm1,xmm7
 5b2ff0befb2:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0befb7:	c5 61 fa df                                     	vpsubd xmm11,xmm3,xmm7
 5b2ff0befbb:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
 5b2ff0befc0:	c4 c1 71 72 d1 18                               	vpsrld xmm1,xmm9,0x18
 5b2ff0befc6:	c4 c1 61 72 d6 18                               	vpsrld xmm3,xmm14,0x18
 5b2ff0befcc:	c5 f1 6b cb                                     	vpackssdw xmm1,xmm1,xmm3
 5b2ff0befd0:	c4 e3 69 0f d9 08                               	vpalignr xmm3,xmm2,xmm1,0x8
 5b2ff0befd6:	c5 f1 61 cb                                     	vpunpcklwd xmm1,xmm1,xmm3
 5b2ff0befda:	c5 f1 f5 c8                                     	vpmaddwd xmm1,xmm1,xmm0
 5b2ff0befde:	c4 e2 71 40 cf                                  	vpmulld xmm1,xmm1,xmm7
 5b2ff0befe3:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
 5b2ff0befe7:	49 ba 00 80 00 00 00 80 00 00                   	movabs r10,0x800000008000
 5b2ff0beff1:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
 5b2ff0beff6:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
 5b2ff0beffa:	c5 11 fe e9                                     	vpaddd xmm13,xmm13,xmm1
 5b2ff0beffe:	c4 c1 11 72 d5 10                               	vpsrld xmm13,xmm13,0x10
 5b2ff0bf004:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bf009:	c4 43 01 0e fd 55                               	vpblendw xmm15,xmm15,xmm13,0x55
 5b2ff0bf00f:	c4 41 11 fa ef                                  	vpsubd xmm13,xmm13,xmm15
 5b2ff0bf014:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bf019:	c4 c1 11 72 d5 01                               	vpsrld xmm13,xmm13,0x1
 5b2ff0bf01f:	c4 41 78 5b ed                                  	vcvtdq2ps xmm13,xmm13
 5b2ff0bf024:	c4 41 10 58 ed                                  	vaddps xmm13,xmm13,xmm13
 5b2ff0bf029:	c4 41 10 58 ef                                  	vaddps xmm13,xmm13,xmm15
 5b2ff0bf02e:	4c 8b 15 3d ea ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffea3d]        # 0x5b2ff0bda72
 5b2ff0bf035:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0bf03a:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0bf03e:	c5 10 59 eb                                     	vmulps xmm13,xmm13,xmm3
 5b2ff0bf042:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
 5b2ff0bf045:	c5 7a 7f ac 02 c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1c0],xmm13
 5b2ff0bf04e:	c5 91 72 d6 10                                  	vpsrld xmm13,xmm6,0x10
 5b2ff0bf053:	4c 8b 15 30 e9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe930]        # 0x5b2ff0bd98a
 5b2ff0bf05a:	c4 c1 f9 6e e2                                  	vmovq  xmm4,r10
 5b2ff0bf05f:	c5 d9 6c e4                                     	vpunpcklqdq xmm4,xmm4,xmm4
 5b2ff0bf063:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
 5b2ff0bf067:	c4 c1 51 72 d4 10                               	vpsrld xmm5,xmm12,0x10
 5b2ff0bf06d:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
 5b2ff0bf071:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
 5b2ff0bf075:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
 5b2ff0bf07b:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
 5b2ff0bf07f:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
 5b2ff0bf083:	c4 42 11 40 eb                                  	vpmulld xmm13,xmm13,xmm11
 5b2ff0bf088:	c4 c1 51 72 d1 10                               	vpsrld xmm5,xmm9,0x10
 5b2ff0bf08e:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
 5b2ff0bf092:	c4 c1 39 72 d6 10                               	vpsrld xmm8,xmm14,0x10
 5b2ff0bf098:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
 5b2ff0bf09c:	c4 41 51 6b c0                                  	vpackssdw xmm8,xmm5,xmm8
 5b2ff0bf0a1:	c4 c3 69 0f e8 08                               	vpalignr xmm5,xmm2,xmm8,0x8
 5b2ff0bf0a7:	c5 39 61 c5                                     	vpunpcklwd xmm8,xmm8,xmm5
 5b2ff0bf0ab:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
 5b2ff0bf0af:	c4 62 39 40 c7                                  	vpmulld xmm8,xmm8,xmm7
 5b2ff0bf0b4:	c4 41 11 fe c0                                  	vpaddd xmm8,xmm13,xmm8
 5b2ff0bf0b9:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
 5b2ff0bf0bd:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
 5b2ff0bf0c3:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bf0c8:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0bf0ce:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0bf0d3:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bf0d8:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0bf0de:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0bf0e3:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0bf0e8:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0bf0ed:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
 5b2ff0bf0f1:	c5 7a 7f 84 02 b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1b0],xmm8
 5b2ff0bf0fa:	c5 b9 72 d6 08                                  	vpsrld xmm8,xmm6,0x8
 5b2ff0bf0ff:	c5 39 db c4                                     	vpand  xmm8,xmm8,xmm4
 5b2ff0bf103:	c4 c1 11 72 d4 08                               	vpsrld xmm13,xmm12,0x8
 5b2ff0bf109:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
 5b2ff0bf10d:	c4 41 39 6b c5                                  	vpackssdw xmm8,xmm8,xmm13
 5b2ff0bf112:	c4 43 69 0f e8 08                               	vpalignr xmm13,xmm2,xmm8,0x8
 5b2ff0bf118:	c4 41 39 61 c5                                  	vpunpcklwd xmm8,xmm8,xmm13
 5b2ff0bf11d:	c5 39 f5 c0                                     	vpmaddwd xmm8,xmm8,xmm0
 5b2ff0bf121:	c4 42 39 40 c3                                  	vpmulld xmm8,xmm8,xmm11
 5b2ff0bf126:	c4 c1 11 72 d1 08                               	vpsrld xmm13,xmm9,0x8
 5b2ff0bf12c:	c5 11 db ec                                     	vpand  xmm13,xmm13,xmm4
 5b2ff0bf130:	c4 c1 51 72 d6 08                               	vpsrld xmm5,xmm14,0x8
 5b2ff0bf136:	c5 d1 db ec                                     	vpand  xmm5,xmm5,xmm4
 5b2ff0bf13a:	c5 11 6b ed                                     	vpackssdw xmm13,xmm13,xmm5
 5b2ff0bf13e:	c4 c3 69 0f ed 08                               	vpalignr xmm5,xmm2,xmm13,0x8
 5b2ff0bf144:	c5 11 61 ed                                     	vpunpcklwd xmm13,xmm13,xmm5
 5b2ff0bf148:	c5 11 f5 e8                                     	vpmaddwd xmm13,xmm13,xmm0
 5b2ff0bf14c:	c4 62 11 40 ef                                  	vpmulld xmm13,xmm13,xmm7
 5b2ff0bf151:	c4 41 39 fe c5                                  	vpaddd xmm8,xmm8,xmm13
 5b2ff0bf156:	c5 39 fe c1                                     	vpaddd xmm8,xmm8,xmm1
 5b2ff0bf15a:	c4 c1 39 72 d0 10                               	vpsrld xmm8,xmm8,0x10
 5b2ff0bf160:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bf165:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0bf16b:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0bf170:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bf175:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0bf17b:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0bf180:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0bf185:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0bf18a:	c5 38 59 c3                                     	vmulps xmm8,xmm8,xmm3
 5b2ff0bf18e:	c5 7a 7f 84 02 a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x1a0],xmm8
 5b2ff0bf197:	c5 c9 db f4                                     	vpand  xmm6,xmm6,xmm4
 5b2ff0bf19b:	c5 19 db c4                                     	vpand  xmm8,xmm12,xmm4
 5b2ff0bf19f:	c4 c1 49 6b f0                                  	vpackssdw xmm6,xmm6,xmm8
 5b2ff0bf1a4:	c4 63 69 0f c6 08                               	vpalignr xmm8,xmm2,xmm6,0x8
 5b2ff0bf1aa:	c4 c1 49 61 f0                                  	vpunpcklwd xmm6,xmm6,xmm8
 5b2ff0bf1af:	c5 c9 f5 f0                                     	vpmaddwd xmm6,xmm6,xmm0
 5b2ff0bf1b3:	c4 c2 49 40 f3                                  	vpmulld xmm6,xmm6,xmm11
 5b2ff0bf1b8:	c5 31 db c4                                     	vpand  xmm8,xmm9,xmm4
 5b2ff0bf1bc:	c5 09 db cc                                     	vpand  xmm9,xmm14,xmm4
 5b2ff0bf1c0:	c4 41 39 6b c1                                  	vpackssdw xmm8,xmm8,xmm9
 5b2ff0bf1c5:	c4 43 69 0f c8 08                               	vpalignr xmm9,xmm2,xmm8,0x8
 5b2ff0bf1cb:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
 5b2ff0bf1d0:	c5 b9 f5 c0                                     	vpmaddwd xmm0,xmm8,xmm0
 5b2ff0bf1d4:	c4 e2 79 40 c7                                  	vpmulld xmm0,xmm0,xmm7
 5b2ff0bf1d9:	c5 c9 fe c0                                     	vpaddd xmm0,xmm6,xmm0
 5b2ff0bf1dd:	c5 f9 fe c1                                     	vpaddd xmm0,xmm0,xmm1
 5b2ff0bf1e1:	c5 f9 72 d0 10                                  	vpsrld xmm0,xmm0,0x10
 5b2ff0bf1e6:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bf1eb:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0bf1f1:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0bf1f6:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bf1fb:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0bf200:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0bf204:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0bf208:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0bf20d:	c5 f8 59 c3                                     	vmulps xmm0,xmm0,xmm3
 5b2ff0bf211:	c5 fa 7f 84 02 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rax*1+0x190],xmm0
 5b2ff0bf21a:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bf221:	e9 53 05 00 00                                  	jmp    0x5b2ff0bf779
 5b2ff0bf226:	41 83 f8 0f                                     	cmp    r8d,0xf
 5b2ff0bf22a:	0f 84 64 00 00 00                               	je     0x5b2ff0bf294
 5b2ff0bf230:	41 f6 c0 01                                     	test   r8b,0x1
 5b2ff0bf234:	0f 85 07 00 00 00                               	jne    0x5b2ff0bf241
 5b2ff0bf23a:	33 ff                                           	xor    edi,edi
 5b2ff0bf23c:	e9 06 00 00 00                                  	jmp    0x5b2ff0bf247
 5b2ff0bf241:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bf244:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bf247:	41 f6 c0 02                                     	test   r8b,0x2
 5b2ff0bf24b:	0f 85 08 00 00 00                               	jne    0x5b2ff0bf259
 5b2ff0bf251:	45 33 db                                        	xor    r11d,r11d
 5b2ff0bf254:	e9 08 00 00 00                                  	jmp    0x5b2ff0bf261
 5b2ff0bf259:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
 5b2ff0bf25d:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0bf261:	41 f6 c0 04                                     	test   r8b,0x4
 5b2ff0bf265:	0f 85 08 00 00 00                               	jne    0x5b2ff0bf273
 5b2ff0bf26b:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0bf26e:	e9 0f 00 00 00                                  	jmp    0x5b2ff0bf282
 5b2ff0bf273:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
 5b2ff0bf27a:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
 5b2ff0bf27e:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
 5b2ff0bf282:	41 f6 c0 08                                     	test   r8b,0x8
 5b2ff0bf286:	0f 85 25 00 00 00                               	jne    0x5b2ff0bf2b1
 5b2ff0bf28c:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0bf28f:	e9 2c 00 00 00                                  	jmp    0x5b2ff0bf2c0
 5b2ff0bf294:	44 8b a5 00 ff ff ff                            	mov    r12d,DWORD PTR [rbp-0x100]
 5b2ff0bf29b:	46 8d 24 a1                                     	lea    r12d,[rcx+r12*4]
 5b2ff0bf29f:	46 8b 24 22                                     	mov    r12d,DWORD PTR [rdx+r12*1]
 5b2ff0bf2a3:	46 8d 1c 99                                     	lea    r11d,[rcx+r11*4]
 5b2ff0bf2a7:	46 8b 1c 1a                                     	mov    r11d,DWORD PTR [rdx+r11*1]
 5b2ff0bf2ab:	8d 3c b9                                        	lea    edi,[rcx+rdi*4]
 5b2ff0bf2ae:	8b 3c 3a                                        	mov    edi,DWORD PTR [rdx+rdi*1]
 5b2ff0bf2b1:	44 8b bd 18 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0xe8]
 5b2ff0bf2b8:	46 8d 3c b9                                     	lea    r15d,[rcx+r15*4]
 5b2ff0bf2bc:	46 8b 3c 3a                                     	mov    r15d,DWORD PTR [rdx+r15*1]
 5b2ff0bf2c0:	c5 f9 6e c7                                     	vmovd  xmm0,edi
 5b2ff0bf2c4:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bf2c9:	c4 c3 79 22 c3 01                               	vpinsrd xmm0,xmm0,r11d,0x1
 5b2ff0bf2cf:	c4 c3 79 22 c4 02                               	vpinsrd xmm0,xmm0,r12d,0x2
 5b2ff0bf2d5:	c4 c3 79 22 c7 03                               	vpinsrd xmm0,xmm0,r15d,0x3
 5b2ff0bf2db:	c5 c9 72 d0 18                                  	vpsrld xmm6,xmm0,0x18
 5b2ff0bf2e0:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bf2e5:	c4 63 01 0e fe 55                               	vpblendw xmm15,xmm15,xmm6,0x55
 5b2ff0bf2eb:	c4 c1 49 fa f7                                  	vpsubd xmm6,xmm6,xmm15
 5b2ff0bf2f0:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bf2f5:	c5 c9 72 d6 01                                  	vpsrld xmm6,xmm6,0x1
 5b2ff0bf2fa:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
 5b2ff0bf2fe:	c5 c8 58 f6                                     	vaddps xmm6,xmm6,xmm6
 5b2ff0bf302:	c4 c1 48 58 f7                                  	vaddps xmm6,xmm6,xmm15
 5b2ff0bf307:	4c 8b 15 64 e7 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe764]        # 0x5b2ff0bda72
 5b2ff0bf30e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0bf313:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0bf317:	c5 c8 59 f7                                     	vmulps xmm6,xmm6,xmm7
 5b2ff0bf31b:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0bf31e:	c5 fa 7f b4 3a c0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1c0],xmm6
 5b2ff0bf327:	4c 8b 15 5c e6 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffe65c]        # 0x5b2ff0bd98a
 5b2ff0bf32e:	c4 c1 f9 6e f2                                  	vmovq  xmm6,r10
 5b2ff0bf333:	c5 c9 6c f6                                     	vpunpcklqdq xmm6,xmm6,xmm6
 5b2ff0bf337:	c5 79 db c6                                     	vpand  xmm8,xmm0,xmm6
 5b2ff0bf33b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bf340:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0bf346:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0bf34b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bf350:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0bf356:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0bf35b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0bf360:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0bf365:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
 5b2ff0bf369:	c5 7a 7f 84 3a 90 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x190],xmm8
 5b2ff0bf372:	c5 b9 72 d0 10                                  	vpsrld xmm8,xmm0,0x10
 5b2ff0bf377:	c5 39 db c6                                     	vpand  xmm8,xmm8,xmm6
 5b2ff0bf37b:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bf380:	c4 43 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm8,0x55
 5b2ff0bf386:	c4 41 39 fa c7                                  	vpsubd xmm8,xmm8,xmm15
 5b2ff0bf38b:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bf390:	c4 c1 39 72 d0 01                               	vpsrld xmm8,xmm8,0x1
 5b2ff0bf396:	c4 41 78 5b c0                                  	vcvtdq2ps xmm8,xmm8
 5b2ff0bf39b:	c4 41 38 58 c0                                  	vaddps xmm8,xmm8,xmm8
 5b2ff0bf3a0:	c4 41 38 58 c7                                  	vaddps xmm8,xmm8,xmm15
 5b2ff0bf3a5:	c5 38 59 c7                                     	vmulps xmm8,xmm8,xmm7
 5b2ff0bf3a9:	c5 7a 7f 84 3a b0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1b0],xmm8
 5b2ff0bf3b2:	c5 f9 72 d0 08                                  	vpsrld xmm0,xmm0,0x8
 5b2ff0bf3b7:	c5 f9 db c6                                     	vpand  xmm0,xmm0,xmm6
 5b2ff0bf3bb:	c4 41 01 ef ff                                  	vpxor  xmm15,xmm15,xmm15
 5b2ff0bf3c0:	c4 63 01 0e f8 55                               	vpblendw xmm15,xmm15,xmm0,0x55
 5b2ff0bf3c6:	c4 c1 79 fa c7                                  	vpsubd xmm0,xmm0,xmm15
 5b2ff0bf3cb:	c4 41 78 5b ff                                  	vcvtdq2ps xmm15,xmm15
 5b2ff0bf3d0:	c5 f9 72 d0 01                                  	vpsrld xmm0,xmm0,0x1
 5b2ff0bf3d5:	c5 f8 5b c0                                     	vcvtdq2ps xmm0,xmm0
 5b2ff0bf3d9:	c5 f8 58 c0                                     	vaddps xmm0,xmm0,xmm0
 5b2ff0bf3dd:	c4 c1 78 58 c7                                  	vaddps xmm0,xmm0,xmm15
 5b2ff0bf3e2:	c5 f8 59 c7                                     	vmulps xmm0,xmm0,xmm7
 5b2ff0bf3e6:	c5 fa 7f 84 3a a0 01 00 00                      	vmovdqu XMMWORD PTR [rdx+rdi*1+0x1a0],xmm0
 5b2ff0bf3ef:	8b c7                                           	mov    eax,edi
 5b2ff0bf3f1:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bf3f8:	e9 7c 03 00 00                                  	jmp    0x5b2ff0bf779
 5b2ff0bf3fd:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
 5b2ff0bf403:	4c 8d 5a 58                                     	lea    r11,[rdx+0x58]
 5b2ff0bf407:	c4 02 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [r11+r12*1]
 5b2ff0bf40d:	c4 41 20 59 c0                                  	vmulps xmm8,xmm11,xmm8
 5b2ff0bf412:	c4 42 79 18 1c 03                               	vbroadcastss xmm11,DWORD PTR [r11+rax*1]
 5b2ff0bf418:	c4 41 60 59 db                                  	vmulps xmm11,xmm3,xmm11
 5b2ff0bf41d:	c4 41 38 58 c3                                  	vaddps xmm8,xmm8,xmm11
 5b2ff0bf422:	c4 02 79 18 1c 0b                               	vbroadcastss xmm11,DWORD PTR [r11+r9*1]
 5b2ff0bf428:	c4 41 30 59 cb                                  	vmulps xmm9,xmm9,xmm11
 5b2ff0bf42d:	c4 41 38 58 c1                                  	vaddps xmm8,xmm8,xmm9
 5b2ff0bf432:	c4 c1 48 59 d8                                  	vmulps xmm3,xmm6,xmm8
 5b2ff0bf437:	41 83 ff 03                                     	cmp    r15d,0x3
 5b2ff0bf43b:	0f 84 a5 02 00 00                               	je     0x5b2ff0bf6e6
 5b2ff0bf441:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0bf445:	c4 a1 7a 7f 84 1a c0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xc0],xmm0
 5b2ff0bf44f:	c4 a1 7a 7f 84 1a b0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xb0],xmm0
 5b2ff0bf459:	c4 a1 7a 7f 84 1a a0 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0xa0],xmm0
 5b2ff0bf463:	c4 a1 7a 7f bc 1a f0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1f0],xmm7
 5b2ff0bf46d:	c4 a1 7a 7f 94 1a e0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1e0],xmm2
 5b2ff0bf477:	c4 a1 7a 7f 9c 1a d0 01 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x1d0],xmm3
 5b2ff0bf481:	c4 a1 7a 7f 84 1a 90 00 00 00                   	vmovdqu XMMWORD PTR [rdx+r11*1+0x90],xmm0
 5b2ff0bf48b:	4c 8b ff                                        	mov    r15,rdi
 5b2ff0bf48e:	33 ff                                           	xor    edi,edi
 5b2ff0bf490:	e9 41 00 00 00                                  	jmp    0x5b2ff0bf4d6
 5b2ff0bf495:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bf49e:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bf4a7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bf4b0:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0bf4b9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
 5b2ff0bf4c0:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
 5b2ff0bf4c7:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0bf4cb:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0bf4cf:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
 5b2ff0bf4d6:	48 89 bd 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],rdi
 5b2ff0bf4dd:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0bf4e2:	0f 85 e9 26 00 00                               	jne    0x5b2ff0c1bd1
 5b2ff0bf4e8:	8b cf                                           	mov    ecx,edi
 5b2ff0bf4ea:	41 d3 e8                                        	shr    r8d,cl
 5b2ff0bf4ed:	41 f6 c0 01                                     	test   r8b,0x1
 5b2ff0bf4f1:	0f 84 4c 01 00 00                               	je     0x5b2ff0bf643
 5b2ff0bf4f7:	42 8b 4c 3a 10                                  	mov    ecx,DWORD PTR [rdx+r15*1+0x10]
 5b2ff0bf4fc:	46 8b 44 3a 0c                                  	mov    r8d,DWORD PTR [rdx+r15*1+0xc]
 5b2ff0bf501:	4c 89 85 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],r8
 5b2ff0bf508:	46 8b 44 3a 08                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x8]
 5b2ff0bf50d:	46 8b 44 3a 04                                  	mov    r8d,DWORD PTR [rdx+r15*1+0x4]
 5b2ff0bf512:	4c 89 85 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],r8
 5b2ff0bf519:	46 8b 04 3a                                     	mov    r8d,DWORD PTR [rdx+r15*1]
 5b2ff0bf51d:	41 83 f8 02                                     	cmp    r8d,0x2
 5b2ff0bf521:	0f 84 b2 00 00 00                               	je     0x5b2ff0bf5d9
 5b2ff0bf527:	48 89 8d b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rcx
 5b2ff0bf52e:	45 85 c0                                        	test   r8d,r8d
 5b2ff0bf531:	0f 85 44 00 00 00                               	jne    0x5b2ff0bf57b
 5b2ff0bf537:	45 8d 84 bb f0 01 00 00                         	lea    r8d,[r11+rdi*4+0x1f0]
 5b2ff0bf53f:	c4 a1 7a 10 34 02                               	vmovss xmm6,DWORD PTR [rdx+r8*1]
 5b2ff0bf545:	45 8d 83 90 00 00 00                            	lea    r8d,[r11+0x90]
 5b2ff0bf54c:	8b cf                                           	mov    ecx,edi
 5b2ff0bf54e:	c1 e1 04                                        	shl    ecx,0x4
 5b2ff0bf551:	44 03 c1                                        	add    r8d,ecx
 5b2ff0bf554:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf558:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
 5b2ff0bf55e:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
 5b2ff0bf564:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
 5b2ff0bf56a:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0bf56e:	41 8b d8                                        	mov    ebx,r8d
 5b2ff0bf571:	e8 aa bc f0 ff                                  	call   0x5b2fefcb220
 5b2ff0bf576:	e9 c8 00 00 00                                  	jmp    0x5b2ff0bf643
 5b2ff0bf57b:	4c 8b c2                                        	mov    r8,rdx
 5b2ff0bf57e:	43 8b 5c 38 14                                  	mov    ebx,DWORD PTR [r8+r15*1+0x14]
 5b2ff0bf583:	44 8b d7                                        	mov    r10d,edi
 5b2ff0bf586:	41 8b fb                                        	mov    edi,r11d
 5b2ff0bf589:	45 8b da                                        	mov    r11d,r10d
 5b2ff0bf58c:	42 8d 94 9f f0 01 00 00                         	lea    edx,[rdi+r11*4+0x1f0]
 5b2ff0bf594:	c4 c1 7a 10 0c 10                               	vmovss xmm1,DWORD PTR [r8+rdx*1]
 5b2ff0bf59a:	42 8d 94 9f e0 01 00 00                         	lea    edx,[rdi+r11*4+0x1e0]
 5b2ff0bf5a2:	c4 c1 7a 10 14 10                               	vmovss xmm2,DWORD PTR [r8+rdx*1]
 5b2ff0bf5a8:	8d 97 90 00 00 00                               	lea    edx,[rdi+0x90]
 5b2ff0bf5ae:	41 8b cb                                        	mov    ecx,r11d
 5b2ff0bf5b1:	c1 e1 04                                        	shl    ecx,0x4
 5b2ff0bf5b4:	03 d1                                           	add    edx,ecx
 5b2ff0bf5b6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf5ba:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
 5b2ff0bf5c0:	44 8b ca                                        	mov    r9d,edx
 5b2ff0bf5c3:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
 5b2ff0bf5c9:	8b 8d b8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x148]
 5b2ff0bf5cf:	e8 64 bc f0 ff                                  	call   0x5b2fefcb238
 5b2ff0bf5d4:	e9 6a 00 00 00                                  	jmp    0x5b2ff0bf643
 5b2ff0bf5d9:	4c 8b c2                                        	mov    r8,rdx
 5b2ff0bf5dc:	4d 8b e7                                        	mov    r12,r15
 5b2ff0bf5df:	43 8b 5c 20 14                                  	mov    ebx,DWORD PTR [r8+r12*1+0x14]
 5b2ff0bf5e4:	47 8b 4c 20 18                                  	mov    r9d,DWORD PTR [r8+r12*1+0x18]
 5b2ff0bf5e9:	44 8b d7                                        	mov    r10d,edi
 5b2ff0bf5ec:	41 8b fb                                        	mov    edi,r11d
 5b2ff0bf5ef:	45 8b da                                        	mov    r11d,r10d
 5b2ff0bf5f2:	46 8d bc 9f f0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1f0]
 5b2ff0bf5fa:	c4 81 7a 10 0c 38                               	vmovss xmm1,DWORD PTR [r8+r15*1]
 5b2ff0bf600:	46 8d bc 9f e0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1e0]
 5b2ff0bf608:	c4 81 7a 10 14 38                               	vmovss xmm2,DWORD PTR [r8+r15*1]
 5b2ff0bf60e:	46 8d bc 9f d0 01 00 00                         	lea    r15d,[rdi+r11*4+0x1d0]
 5b2ff0bf616:	c4 81 7a 10 1c 38                               	vmovss xmm3,DWORD PTR [r8+r15*1]
 5b2ff0bf61c:	44 8d bf 90 00 00 00                            	lea    r15d,[rdi+0x90]
 5b2ff0bf623:	41 8b c3                                        	mov    eax,r11d
 5b2ff0bf626:	c1 e0 04                                        	shl    eax,0x4
 5b2ff0bf629:	44 03 f8                                        	add    r15d,eax
 5b2ff0bf62c:	41 57                                           	push   r15
 5b2ff0bf62e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf632:	8b 85 00 ff ff ff                               	mov    eax,DWORD PTR [rbp-0x100]
 5b2ff0bf638:	8b 95 c8 fe ff ff                               	mov    edx,DWORD PTR [rbp-0x138]
 5b2ff0bf63e:	e8 e5 bb f0 ff                                  	call   0x5b2fefcb228
 5b2ff0bf643:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
 5b2ff0bf649:	83 c7 01                                        	add    edi,0x1
 5b2ff0bf64c:	83 ff 04                                        	cmp    edi,0x4
 5b2ff0bf64f:	0f 85 6b fe ff ff                               	jne    0x5b2ff0bf4c0
 5b2ff0bf655:	8b 5d e0                                        	mov    ebx,DWORD PTR [rbp-0x20]
 5b2ff0bf658:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bf65c:	c4 c1 7a 6f 84 18 b0 00 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+rbx*1+0xb0]
 5b2ff0bf666:	c4 c1 7a 6f b4 18 c0 00 00 00                   	vmovdqu xmm6,XMMWORD PTR [r8+rbx*1+0xc0]
 5b2ff0bf670:	c5 f9 6a fe                                     	vpunpckhdq xmm7,xmm0,xmm6
 5b2ff0bf674:	c4 41 7a 6f 84 18 90 00 00 00                   	vmovdqu xmm8,XMMWORD PTR [r8+rbx*1+0x90]
 5b2ff0bf67e:	c4 41 7a 6f 8c 18 a0 00 00 00                   	vmovdqu xmm9,XMMWORD PTR [r8+rbx*1+0xa0]
 5b2ff0bf688:	c4 41 39 6a d1                                  	vpunpckhdq xmm10,xmm8,xmm9
 5b2ff0bf68d:	c5 29 6d df                                     	vpunpckhqdq xmm11,xmm10,xmm7
 5b2ff0bf691:	c4 41 7a 7f 9c 18 c0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1c0],xmm11
 5b2ff0bf69b:	c5 a9 6c ff                                     	vpunpcklqdq xmm7,xmm10,xmm7
 5b2ff0bf69f:	c4 c1 7a 7f bc 18 b0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1b0],xmm7
 5b2ff0bf6a9:	c5 f9 62 c6                                     	vpunpckldq xmm0,xmm0,xmm6
 5b2ff0bf6ad:	c4 c1 39 62 f1                                  	vpunpckldq xmm6,xmm8,xmm9
 5b2ff0bf6b2:	c5 c9 6d f8                                     	vpunpckhqdq xmm7,xmm6,xmm0
 5b2ff0bf6b6:	c4 c1 7a 7f bc 18 a0 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x1a0],xmm7
 5b2ff0bf6c0:	c5 c9 6c c0                                     	vpunpcklqdq xmm0,xmm6,xmm0
 5b2ff0bf6c4:	c4 c1 7a 7f 84 18 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+rbx*1+0x190],xmm0
 5b2ff0bf6ce:	8b c3                                           	mov    eax,ebx
 5b2ff0bf6d0:	49 8b d0                                        	mov    rdx,r8
 5b2ff0bf6d3:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bf6da:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
 5b2ff0bf6e1:	e9 93 00 00 00                                  	jmp    0x5b2ff0bf779
 5b2ff0bf6e6:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0bf6ea:	41 8d 8b 90 01 00 00                            	lea    ecx,[r11+0x190]
 5b2ff0bf6f1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf6f5:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0bf6f8:	c5 f9 28 cf                                     	vmovapd xmm1,xmm7
 5b2ff0bf6fc:	49 8b d0                                        	mov    rdx,r8
 5b2ff0bf6ff:	e8 24 be f0 ff                                  	call   0x5b2fefcb528
 5b2ff0bf704:	8b 45 e0                                        	mov    eax,DWORD PTR [rbp-0x20]
 5b2ff0bf707:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0bf70b:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0bf712:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
 5b2ff0bf719:	e9 5b 00 00 00                                  	jmp    0x5b2ff0bf779
 5b2ff0bf71e:	4c 8b fa                                        	mov    r15,rdx
 5b2ff0bf721:	49 8d 57 3c                                     	lea    rdx,[r15+0x3c]
 5b2ff0bf725:	c4 e2 79 18 04 3a                               	vbroadcastss xmm0,DWORD PTR [rdx+rdi*1]
 5b2ff0bf72b:	8b 55 e0                                        	mov    edx,DWORD PTR [rbp-0x20]
 5b2ff0bf72e:	c4 c1 7a 7f 84 17 90 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x190],xmm0
 5b2ff0bf738:	49 8d 4f 40                                     	lea    rcx,[r15+0x40]
 5b2ff0bf73c:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
 5b2ff0bf742:	c4 c1 7a 7f 84 17 a0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1a0],xmm0
 5b2ff0bf74c:	49 8d 4f 44                                     	lea    rcx,[r15+0x44]
 5b2ff0bf750:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
 5b2ff0bf756:	c4 c1 7a 7f 84 17 b0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1b0],xmm0
 5b2ff0bf760:	49 8d 4f 48                                     	lea    rcx,[r15+0x48]
 5b2ff0bf764:	c4 e2 79 18 04 39                               	vbroadcastss xmm0,DWORD PTR [rcx+rdi*1]
 5b2ff0bf76a:	c4 c1 7a 7f 84 17 c0 01 00 00                   	vmovdqu XMMWORD PTR [r15+rdx*1+0x1c0],xmm0
 5b2ff0bf774:	8b c2                                           	mov    eax,edx
 5b2ff0bf776:	49 8b d7                                        	mov    rdx,r15
 5b2ff0bf779:	c5 fa 6f 84 02 90 01 00 00                      	vmovdqu xmm0,XMMWORD PTR [rdx+rax*1+0x190]
 5b2ff0bf782:	44 8b 9c 3a 34 01 00 00                         	mov    r11d,DWORD PTR [rdx+rdi*1+0x134]
 5b2ff0bf78a:	83 bc 3a 34 01 00 00 02                         	cmp    DWORD PTR [rdx+rdi*1+0x134],0x2
 5b2ff0bf792:	0f 84 55 00 00 00                               	je     0x5b2ff0bf7ed
 5b2ff0bf798:	c5 fa 6f b4 02 c0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1c0]
 5b2ff0bf7a1:	c5 f8 10 bd d0 fe ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x130]
 5b2ff0bf7a9:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
 5b2ff0bf7ad:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
 5b2ff0bf7b6:	c5 78 10 85 a0 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x160]
 5b2ff0bf7be:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
 5b2ff0bf7c2:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
 5b2ff0bf7cb:	c5 78 10 8d f0 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x110]
 5b2ff0bf7d3:	c4 41 30 59 c0                                  	vmulps xmm8,xmm9,xmm8
 5b2ff0bf7d8:	c5 78 10 8d 90 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x170]
 5b2ff0bf7e0:	c5 b0 59 c0                                     	vmulps xmm0,xmm9,xmm0
 5b2ff0bf7e4:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
 5b2ff0bf7e8:	e9 1f 00 00 00                                  	jmp    0x5b2ff0bf80c
 5b2ff0bf7ed:	c5 fa 6f bc 02 c0 01 00 00                      	vmovdqu xmm7,XMMWORD PTR [rdx+rax*1+0x1c0]
 5b2ff0bf7f6:	c5 fa 6f b4 02 b0 01 00 00                      	vmovdqu xmm6,XMMWORD PTR [rdx+rax*1+0x1b0]
 5b2ff0bf7ff:	c5 7a 6f 84 02 a0 01 00 00                      	vmovdqu xmm8,XMMWORD PTR [rdx+rax*1+0x1a0]
 5b2ff0bf808:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
 5b2ff0bf80c:	c5 49 6a cf                                     	vpunpckhdq xmm9,xmm6,xmm7
 5b2ff0bf810:	c4 41 79 6a d0                                  	vpunpckhdq xmm10,xmm0,xmm8
 5b2ff0bf815:	c4 41 29 6d d9                                  	vpunpckhqdq xmm11,xmm10,xmm9
 5b2ff0bf81a:	c5 7a 7f 5c 02 30                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x30],xmm11
 5b2ff0bf820:	c4 41 29 6c c9                                  	vpunpcklqdq xmm9,xmm10,xmm9
 5b2ff0bf825:	c5 7a 7f 4c 02 20                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x20],xmm9
 5b2ff0bf82b:	c5 c9 62 f7                                     	vpunpckldq xmm6,xmm6,xmm7
 5b2ff0bf82f:	c4 c1 79 62 c0                                  	vpunpckldq xmm0,xmm0,xmm8
 5b2ff0bf834:	c5 f9 6d fe                                     	vpunpckhqdq xmm7,xmm0,xmm6
 5b2ff0bf838:	c5 fa 7f 7c 02 10                               	vmovdqu XMMWORD PTR [rdx+rax*1+0x10],xmm7
 5b2ff0bf83e:	c5 f9 6c c6                                     	vpunpcklqdq xmm0,xmm0,xmm6
 5b2ff0bf842:	c5 fa 7f 04 02                                  	vmovdqu XMMWORD PTR [rdx+rax*1],xmm0
 5b2ff0bf847:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
 5b2ff0bf84c:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
 5b2ff0bf850:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
 5b2ff0bf855:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
 5b2ff0bf85a:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bf85f:	c5 78 10 95 00 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x300]
 5b2ff0bf867:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0bf86f:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0bf877:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0bf87f:	41 f6 c0 01                                     	test   r8b,0x1
 5b2ff0bf883:	0f 84 63 00 00 00                               	je     0x5b2ff0bf8ec
 5b2ff0bf889:	c5 fa 10 44 02 40                               	vmovss xmm0,DWORD PTR [rdx+rax*1+0x40]
 5b2ff0bf88f:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
 5b2ff0bf896:	0f 85 35 00 00 00                               	jne    0x5b2ff0bf8d1
 5b2ff0bf89c:	c5 fa 10 14 02                                  	vmovss xmm2,DWORD PTR [rdx+rax*1]
 5b2ff0bf8a1:	c5 fa 10 5c 02 04                               	vmovss xmm3,DWORD PTR [rdx+rax*1+0x4]
 5b2ff0bf8a7:	c5 fa 10 64 02 08                               	vmovss xmm4,DWORD PTR [rdx+rax*1+0x8]
 5b2ff0bf8ad:	c5 fa 10 6c 02 0c                               	vmovss xmm5,DWORD PTR [rdx+rax*1+0xc]
 5b2ff0bf8b3:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf8b7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bf8ba:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0bf8c0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff0bf8c3:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
 5b2ff0bf8c7:	e8 94 b9 f0 ff                                  	call   0x5b2fefcb260
 5b2ff0bf8cc:	e9 1b 00 00 00                                  	jmp    0x5b2ff0bf8ec
 5b2ff0bf8d1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf8d5:	8b d8                                           	mov    ebx,eax
 5b2ff0bf8d7:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bf8da:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0bf8e0:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff0bf8e3:	c5 f9 28 c8                                     	vmovapd xmm1,xmm0
 5b2ff0bf8e7:	e8 8c b9 f0 ff                                  	call   0x5b2fefcb278
 5b2ff0bf8ec:	f6 85 20 ff ff ff 02                            	test   BYTE PTR [rbp-0xe0],0x2
 5b2ff0bf8f3:	0f 84 6c 00 00 00                               	je     0x5b2ff0bf965
 5b2ff0bf8f9:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0bf8fc:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bf900:	c4 c1 7a 10 4c 38 44                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x44]
 5b2ff0bf907:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
 5b2ff0bf90e:	0f 85 36 00 00 00                               	jne    0x5b2ff0bf94a
 5b2ff0bf914:	c4 c1 7a 10 54 38 10                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x10]
 5b2ff0bf91b:	c4 c1 7a 10 5c 38 14                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x14]
 5b2ff0bf922:	c4 c1 7a 10 64 38 18                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x18]
 5b2ff0bf929:	c4 c1 7a 10 6c 38 1c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x1c]
 5b2ff0bf930:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf934:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bf937:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0bf93d:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff0bf940:	e8 1b b9 f0 ff                                  	call   0x5b2fefcb260
 5b2ff0bf945:	e9 1b 00 00 00                                  	jmp    0x5b2ff0bf965
 5b2ff0bf94a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf94e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bf951:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0bf957:	8b 4d a0                                        	mov    ecx,DWORD PTR [rbp-0x60]
 5b2ff0bf95a:	8b 9d a8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x358]
 5b2ff0bf960:	e8 13 b9 f0 ff                                  	call   0x5b2fefcb278
 5b2ff0bf965:	f6 85 20 ff ff ff 04                            	test   BYTE PTR [rbp-0xe0],0x4
 5b2ff0bf96c:	0f 84 72 00 00 00                               	je     0x5b2ff0bf9e4
 5b2ff0bf972:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0bf975:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bf979:	c4 c1 7a 10 4c 38 48                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x48]
 5b2ff0bf980:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
 5b2ff0bf987:	0f 85 39 00 00 00                               	jne    0x5b2ff0bf9c6
 5b2ff0bf98d:	c4 c1 7a 10 54 38 20                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x20]
 5b2ff0bf994:	c4 c1 7a 10 5c 38 24                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x24]
 5b2ff0bf99b:	c4 c1 7a 10 64 38 28                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x28]
 5b2ff0bf9a2:	c4 c1 7a 10 6c 38 2c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x2c]
 5b2ff0bf9a9:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf9ad:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bf9b0:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0bf9b6:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
 5b2ff0bf9bc:	e8 9f b8 f0 ff                                  	call   0x5b2fefcb260
 5b2ff0bf9c1:	e9 1e 00 00 00                                  	jmp    0x5b2ff0bf9e4
 5b2ff0bf9c6:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bf9ca:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bf9cd:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0bf9d3:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
 5b2ff0bf9d9:	8b 9d b0 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x350]
 5b2ff0bf9df:	e8 94 b8 f0 ff                                  	call   0x5b2fefcb278
 5b2ff0bf9e4:	f6 85 20 ff ff ff 08                            	test   BYTE PTR [rbp-0xe0],0x8
 5b2ff0bf9eb:	0f 85 4e 00 00 00                               	jne    0x5b2ff0bfa3f
 5b2ff0bf9f1:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0bf9f5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0bf9fa:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0bf9fe:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0bfa03:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0bfa09:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0bfa0f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bfa14:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bfa1c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0bfa24:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0bfa2c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0bfa34:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0bfa3a:	e9 2b 1d 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0bfa3f:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0bfa42:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bfa46:	c4 c1 7a 10 4c 38 4c                            	vmovss xmm1,DWORD PTR [r8+rdi*1+0x4c]
 5b2ff0bfa4d:	83 bd c0 fc ff ff 00                            	cmp    DWORD PTR [rbp-0x340],0x0
 5b2ff0bfa54:	0f 85 82 00 00 00                               	jne    0x5b2ff0bfadc
 5b2ff0bfa5a:	c4 c1 7a 10 54 38 30                            	vmovss xmm2,DWORD PTR [r8+rdi*1+0x30]
 5b2ff0bfa61:	c4 c1 7a 10 5c 38 34                            	vmovss xmm3,DWORD PTR [r8+rdi*1+0x34]
 5b2ff0bfa68:	c4 c1 7a 10 64 38 38                            	vmovss xmm4,DWORD PTR [r8+rdi*1+0x38]
 5b2ff0bfa6f:	c4 c1 7a 10 6c 38 3c                            	vmovss xmm5,DWORD PTR [r8+rdi*1+0x3c]
 5b2ff0bfa76:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bfa7a:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bfa7d:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0bfa83:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
 5b2ff0bfa89:	e8 d2 b7 f0 ff                                  	call   0x5b2fefcb260
 5b2ff0bfa8e:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0bfa92:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0bfa97:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0bfa9b:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0bfaa0:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0bfaa6:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0bfaac:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bfab1:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bfab9:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0bfac1:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0bfac9:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0bfad1:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0bfad7:	e9 8e 1c 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0bfadc:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0bfae0:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0bfae3:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0bfae9:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
 5b2ff0bfaef:	8b 9d c8 fc ff ff                               	mov    ebx,DWORD PTR [rbp-0x338]
 5b2ff0bfaf5:	e8 7e b7 f0 ff                                  	call   0x5b2fefcb278
 5b2ff0bfafa:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0bfafe:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0bfb03:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0bfb07:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0bfb0c:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0bfb12:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0bfb18:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bfb1d:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bfb25:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0bfb2d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0bfb35:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0bfb3d:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0bfb43:	e9 22 1c 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0bfb48:	44 8b c3                                        	mov    r8d,ebx
 5b2ff0bfb4b:	41 83 e0 01                                     	and    r8d,0x1
 5b2ff0bfb4f:	41 f7 d8                                        	neg    r8d
 5b2ff0bfb52:	c4 c1 79 6e c0                                  	vmovd  xmm0,r8d
 5b2ff0bfb57:	c5 f9 70 c0 00                                  	vpshufd xmm0,xmm0,0x0
 5b2ff0bfb5c:	44 8b c3                                        	mov    r8d,ebx
 5b2ff0bfb5f:	41 c1 e0 1e                                     	shl    r8d,0x1e
 5b2ff0bfb63:	41 c1 f8 1f                                     	sar    r8d,0x1f
 5b2ff0bfb67:	c4 c3 79 22 c0 01                               	vpinsrd xmm0,xmm0,r8d,0x1
 5b2ff0bfb6d:	44 8b c3                                        	mov    r8d,ebx
 5b2ff0bfb70:	41 c1 e0 1d                                     	shl    r8d,0x1d
 5b2ff0bfb74:	41 c1 f8 1f                                     	sar    r8d,0x1f
 5b2ff0bfb78:	c4 c3 79 22 c0 02                               	vpinsrd xmm0,xmm0,r8d,0x2
 5b2ff0bfb7e:	44 8b c3                                        	mov    r8d,ebx
 5b2ff0bfb81:	41 c1 e0 1c                                     	shl    r8d,0x1c
 5b2ff0bfb85:	41 c1 f8 1f                                     	sar    r8d,0x1f
 5b2ff0bfb89:	c4 c3 79 22 c0 03                               	vpinsrd xmm0,xmm0,r8d,0x3
 5b2ff0bfb8f:	c4 e1 82 2a bd 60 ff ff ff                      	vcvtsi2ss xmm7,xmm15,QWORD PTR [rbp-0xa0]
 5b2ff0bfb98:	c4 e2 79 18 ff                                  	vbroadcastss xmm7,xmm7
 5b2ff0bfb9d:	4c 8b 85 60 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xa0]
 5b2ff0bfba4:	4c 2b 85 d0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x330]
 5b2ff0bfbab:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
 5b2ff0bfbb0:	c4 c3 41 21 fb 10                               	vinsertps xmm7,xmm7,xmm11,0x10
 5b2ff0bfbb6:	4c 8b ff                                        	mov    r15,rdi
 5b2ff0bfbb9:	48 8b bd 60 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xa0]
 5b2ff0bfbc0:	49 8d 14 3f                                     	lea    rdx,[r15+rdi*1]
 5b2ff0bfbc4:	c4 61 82 2a da                                  	vcvtsi2ss xmm11,xmm15,rdx
 5b2ff0bfbc9:	c4 c3 41 21 fb 20                               	vinsertps xmm7,xmm7,xmm11,0x20
 5b2ff0bfbcf:	4d 03 c7                                        	add    r8,r15
 5b2ff0bfbd2:	c4 41 82 2a d8                                  	vcvtsi2ss xmm11,xmm15,r8
 5b2ff0bfbd7:	c4 c3 41 21 fb 30                               	vinsertps xmm7,xmm7,xmm11,0x30
 5b2ff0bfbdd:	c5 78 10 9d 00 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x300]
 5b2ff0bfbe5:	c5 a0 59 ff                                     	vmulps xmm7,xmm11,xmm7
 5b2ff0bfbe9:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
 5b2ff0bfbf1:	c5 f0 59 d7                                     	vmulps xmm2,xmm1,xmm7
 5b2ff0bfbf5:	c4 e1 82 2a 9d 50 ff ff ff                      	vcvtsi2ss xmm3,xmm15,QWORD PTR [rbp-0xb0]
 5b2ff0bfbfe:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
 5b2ff0bfc03:	4c 8b 85 50 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xb0]
 5b2ff0bfc0a:	4c 2b 85 f0 fc ff ff                            	sub    r8,QWORD PTR [rbp-0x310]
 5b2ff0bfc11:	c4 c1 82 2a e0                                  	vcvtsi2ss xmm4,xmm15,r8
 5b2ff0bfc16:	c4 e3 61 21 dc 10                               	vinsertps xmm3,xmm3,xmm4,0x10
 5b2ff0bfc1c:	48 8b 95 50 ff ff ff                            	mov    rdx,QWORD PTR [rbp-0xb0]
 5b2ff0bfc23:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
 5b2ff0bfc2a:	48 8d 3c 11                                     	lea    rdi,[rcx+rdx*1]
 5b2ff0bfc2e:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
 5b2ff0bfc33:	c4 e3 61 21 dc 20                               	vinsertps xmm3,xmm3,xmm4,0x20
 5b2ff0bfc39:	4a 8d 3c 01                                     	lea    rdi,[rcx+r8*1]
 5b2ff0bfc3d:	c4 e1 82 2a e7                                  	vcvtsi2ss xmm4,xmm15,rdi
 5b2ff0bfc42:	c4 e3 61 21 dc 30                               	vinsertps xmm3,xmm3,xmm4,0x30
 5b2ff0bfc48:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
 5b2ff0bfc4c:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
 5b2ff0bfc54:	c5 d8 59 eb                                     	vmulps xmm5,xmm4,xmm3
 5b2ff0bfc58:	c5 e8 58 f5                                     	vaddps xmm6,xmm2,xmm5
 5b2ff0bfc5c:	4c 8b 15 6e a9 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffa96e]        # 0x5b2ff0ba5d1
 5b2ff0bfc63:	c4 41 f9 6e c2                                  	vmovq  xmm8,r10
 5b2ff0bfc68:	c4 41 39 6c c0                                  	vpunpcklqdq xmm8,xmm8,xmm8
 5b2ff0bfc6d:	c5 38 5c cf                                     	vsubps xmm9,xmm8,xmm7
 5b2ff0bfc71:	c5 30 5c cb                                     	vsubps xmm9,xmm9,xmm3
 5b2ff0bfc75:	c5 78 10 95 20 fd ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x2e0]
 5b2ff0bfc7d:	c4 41 28 59 d9                                  	vmulps xmm11,xmm10,xmm9
 5b2ff0bfc82:	c4 c1 48 58 f3                                  	vaddps xmm6,xmm6,xmm11
 5b2ff0bfc87:	c4 41 29 ef d2                                  	vpxor  xmm10,xmm10,xmm10
 5b2ff0bfc8c:	c5 28 c2 e6 01                                  	vcmpltps xmm12,xmm10,xmm6
 5b2ff0bfc91:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
 5b2ff0bfc95:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0bfc99:	49 8d 78 18                                     	lea    rdi,[r8+0x18]
 5b2ff0bfc9d:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
 5b2ff0bfca4:	c4 22 79 18 24 1f                               	vbroadcastss xmm12,DWORD PTR [rdi+r11*1]
 5b2ff0bfcaa:	c4 c1 40 59 fc                                  	vmulps xmm7,xmm7,xmm12
 5b2ff0bfcaf:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
 5b2ff0bfcb6:	c4 22 79 18 24 27                               	vbroadcastss xmm12,DWORD PTR [rdi+r12*1]
 5b2ff0bfcbc:	c4 41 60 59 e4                                  	vmulps xmm12,xmm3,xmm12
 5b2ff0bfcc1:	c4 c1 40 58 fc                                  	vaddps xmm7,xmm7,xmm12
 5b2ff0bfcc6:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
 5b2ff0bfccd:	c4 22 79 18 24 3f                               	vbroadcastss xmm12,DWORD PTR [rdi+r15*1]
 5b2ff0bfcd3:	c4 41 30 59 cc                                  	vmulps xmm9,xmm9,xmm12
 5b2ff0bfcd8:	c4 c1 40 58 f9                                  	vaddps xmm7,xmm7,xmm9
 5b2ff0bfcdd:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
 5b2ff0bfce5:	c5 b0 58 ff                                     	vaddps xmm7,xmm9,xmm7
 5b2ff0bfce9:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
 5b2ff0bfced:	41 8b 34 38                                     	mov    esi,DWORD PTR [r8+rdi*1]
 5b2ff0bfcf1:	44 8b ce                                        	mov    r9d,esi
 5b2ff0bfcf4:	44 0f af 8d 28 ff ff ff                         	imul   r9d,DWORD PTR [rbp-0xd8]
 5b2ff0bfcfc:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
 5b2ff0bfd02:	44 03 cb                                        	add    r9d,ebx
 5b2ff0bfd05:	0f af 75 a0                                     	imul   esi,DWORD PTR [rbp-0x60]
 5b2ff0bfd09:	03 f3                                           	add    esi,ebx
 5b2ff0bfd0b:	41 8b 5c 38 04                                  	mov    ebx,DWORD PTR [r8+rdi*1+0x4]
 5b2ff0bfd10:	41 8b 44 38 68                                  	mov    eax,DWORD PTR [r8+rdi*1+0x68]
 5b2ff0bfd15:	85 c0                                           	test   eax,eax
 5b2ff0bfd17:	0f 85 07 00 00 00                               	jne    0x5b2ff0bfd24
 5b2ff0bfd1d:	33 d2                                           	xor    edx,edx
 5b2ff0bfd1f:	e9 13 01 00 00                                  	jmp    0x5b2ff0bfe37
 5b2ff0bfd24:	41 8b 94 38 80 00 00 00                         	mov    edx,DWORD PTR [r8+rdi*1+0x80]
 5b2ff0bfd2c:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
 5b2ff0bfd35:	75 e6                                           	jne    0x5b2ff0bfd1d
 5b2ff0bfd37:	41 8b 54 38 0c                                  	mov    edx,DWORD PTR [r8+rdi*1+0xc]
 5b2ff0bfd3c:	8d 0c b2                                        	lea    ecx,[rdx+rsi*4]
 5b2ff0bfd3f:	c4 41 7b 10 24 08                               	vmovsd xmm12,QWORD PTR [r8+rcx*1]
 5b2ff0bfd45:	8b 8d 28 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd8]
 5b2ff0bfd4b:	3b cb                                           	cmp    ecx,ebx
 5b2ff0bfd4d:	0f 8c 0d 00 00 00                               	jl     0x5b2ff0bfd60
 5b2ff0bfd53:	c5 f8 10 9d 40 fd ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x2c0]
 5b2ff0bfd5b:	e9 0a 00 00 00                                  	jmp    0x5b2ff0bfd6a
 5b2ff0bfd60:	42 8d 14 8a                                     	lea    edx,[rdx+r9*4]
 5b2ff0bfd64:	c4 c1 7b 10 1c 10                               	vmovsd xmm3,QWORD PTR [r8+rdx*1]
 5b2ff0bfd6a:	c5 19 6c e3                                     	vpunpcklqdq xmm12,xmm12,xmm3
 5b2ff0bfd6e:	41 8b 54 38 6c                                  	mov    edx,DWORD PTR [r8+rdi*1+0x6c]
 5b2ff0bfd73:	81 ea 00 02 00 00                               	sub    edx,0x200
 5b2ff0bfd79:	83 fa 07                                        	cmp    edx,0x7
 5b2ff0bfd7c:	0f 83 0b 00 00 00                               	jae    0x5b2ff0bfd8d
 5b2ff0bfd82:	4c 8d 15 a7 1f 00 00                            	lea    r10,[rip+0x1fa7]        # 0x5b2ff0c1d30
 5b2ff0bfd89:	41 ff 24 d2                                     	jmp    QWORD PTR [r10+rdx*8]
 5b2ff0bfd8d:	c4 41 19 76 e4                                  	vpcmpeqd xmm12,xmm12,xmm12
 5b2ff0bfd92:	e9 48 00 00 00                                  	jmp    0x5b2ff0bfddf
 5b2ff0bfd97:	c5 18 c2 e7 02                                  	vcmpleps xmm12,xmm12,xmm7
 5b2ff0bfd9c:	e9 3e 00 00 00                                  	jmp    0x5b2ff0bfddf
 5b2ff0bfda1:	c4 41 40 c2 e4 04                               	vcmpneqps xmm12,xmm7,xmm12
 5b2ff0bfda7:	e9 33 00 00 00                                  	jmp    0x5b2ff0bfddf
 5b2ff0bfdac:	c5 18 c2 e7 01                                  	vcmpltps xmm12,xmm12,xmm7
 5b2ff0bfdb1:	e9 29 00 00 00                                  	jmp    0x5b2ff0bfddf
 5b2ff0bfdb6:	c4 41 40 c2 e4 02                               	vcmpleps xmm12,xmm7,xmm12
 5b2ff0bfdbc:	e9 1e 00 00 00                                  	jmp    0x5b2ff0bfddf
 5b2ff0bfdc1:	c4 41 40 c2 e4 00                               	vcmpeqps xmm12,xmm7,xmm12
 5b2ff0bfdc7:	e9 13 00 00 00                                  	jmp    0x5b2ff0bfddf
 5b2ff0bfdcc:	c4 41 40 c2 e4 01                               	vcmpltps xmm12,xmm7,xmm12
 5b2ff0bfdd2:	e9 08 00 00 00                                  	jmp    0x5b2ff0bfddf
 5b2ff0bfdd7:	c5 78 10 a5 40 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x2c0]
 5b2ff0bfddf:	c5 99 db c0                                     	vpand  xmm0,xmm12,xmm0
 5b2ff0bfde3:	c5 f8 50 d0                                     	vmovmskps edx,xmm0
 5b2ff0bfde7:	85 d2                                           	test   edx,edx
 5b2ff0bfde9:	0f 85 3c 00 00 00                               	jne    0x5b2ff0bfe2b
 5b2ff0bfdef:	4d 8b e0                                        	mov    r12,r8
 5b2ff0bfdf2:	4c 8b c7                                        	mov    r8,rdi
 5b2ff0bfdf5:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0bfdfa:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0bfdff:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0bfe05:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0bfe0b:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0bfe10:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0bfe18:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0bfe20:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0bfe26:	e9 3f 19 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0bfe2b:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
 5b2ff0bfe32:	ba 01 00 00 00                                  	mov    edx,0x1
 5b2ff0bfe37:	49 ba 60 42 a2 0d 60 42 a2 0d                   	movabs r10,0xda242600da24260
 5b2ff0bfe41:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0bfe46:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0bfe4b:	4c 8b 15 e7 ff ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffffe7]        # 0x5b2ff0bfe39
 5b2ff0bfe52:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0bfe57:	c5 e1 6c db                                     	vpunpcklqdq xmm3,xmm3,xmm3
 5b2ff0bfe5b:	c5 e0 c2 de 01                                  	vcmpltps xmm3,xmm3,xmm6
 5b2ff0bfe60:	c4 41 61 df fc                                  	vpandn xmm15,xmm3,xmm12
 5b2ff0bfe65:	c5 c9 db f3                                     	vpand  xmm6,xmm6,xmm3
 5b2ff0bfe69:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0bfe6e:	c5 b8 5e f6                                     	vdivps xmm6,xmm8,xmm6
 5b2ff0bfe72:	48 89 9d 00 ff ff ff                            	mov    QWORD PTR [rbp-0x100],rbx
 5b2ff0bfe79:	49 8d 58 2c                                     	lea    rbx,[r8+0x2c]
 5b2ff0bfe7d:	c4 22 79 18 24 1b                               	vbroadcastss xmm12,DWORD PTR [rbx+r11*1]
 5b2ff0bfe83:	c4 41 68 59 e4                                  	vmulps xmm12,xmm2,xmm12
 5b2ff0bfe88:	c4 a2 79 18 1c 23                               	vbroadcastss xmm3,DWORD PTR [rbx+r12*1]
 5b2ff0bfe8e:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
 5b2ff0bfe92:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
 5b2ff0bfe96:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
 5b2ff0bfe9c:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
 5b2ff0bfea0:	c5 18 58 e3                                     	vaddps xmm12,xmm12,xmm3
 5b2ff0bfea4:	c4 41 48 59 e4                                  	vmulps xmm12,xmm6,xmm12
 5b2ff0bfea9:	49 8d 58 28                                     	lea    rbx,[r8+0x28]
 5b2ff0bfead:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
 5b2ff0bfeb3:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
 5b2ff0bfeb7:	c5 f8 11 85 a0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x160],xmm0
 5b2ff0bfebf:	c4 a2 79 18 04 23                               	vbroadcastss xmm0,DWORD PTR [rbx+r12*1]
 5b2ff0bfec5:	c5 d0 59 c0                                     	vmulps xmm0,xmm5,xmm0
 5b2ff0bfec9:	c5 e0 58 c0                                     	vaddps xmm0,xmm3,xmm0
 5b2ff0bfecd:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
 5b2ff0bfed3:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
 5b2ff0bfed7:	c5 f8 58 c3                                     	vaddps xmm0,xmm0,xmm3
 5b2ff0bfedb:	c5 c8 59 c0                                     	vmulps xmm0,xmm6,xmm0
 5b2ff0bfedf:	49 8d 58 24                                     	lea    rbx,[r8+0x24]
 5b2ff0bfee3:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
 5b2ff0bfee9:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
 5b2ff0bfeed:	c5 f8 11 bd f0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x110],xmm7
 5b2ff0bfef5:	c4 a2 79 18 3c 23                               	vbroadcastss xmm7,DWORD PTR [rbx+r12*1]
 5b2ff0bfefb:	c5 d0 59 ff                                     	vmulps xmm7,xmm5,xmm7
 5b2ff0bfeff:	c5 e0 58 ff                                     	vaddps xmm7,xmm3,xmm7
 5b2ff0bff03:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
 5b2ff0bff09:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
 5b2ff0bff0d:	c5 c0 58 fb                                     	vaddps xmm7,xmm7,xmm3
 5b2ff0bff11:	c5 c8 59 ff                                     	vmulps xmm7,xmm6,xmm7
 5b2ff0bff15:	49 8d 58 20                                     	lea    rbx,[r8+0x20]
 5b2ff0bff19:	c4 a2 79 18 1c 1b                               	vbroadcastss xmm3,DWORD PTR [rbx+r11*1]
 5b2ff0bff1f:	c5 e8 59 db                                     	vmulps xmm3,xmm2,xmm3
 5b2ff0bff23:	c5 78 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm8
 5b2ff0bff2b:	c4 22 79 18 04 23                               	vbroadcastss xmm8,DWORD PTR [rbx+r12*1]
 5b2ff0bff31:	c4 41 50 59 c0                                  	vmulps xmm8,xmm5,xmm8
 5b2ff0bff36:	c4 41 60 58 c0                                  	vaddps xmm8,xmm3,xmm8
 5b2ff0bff3b:	c4 a2 79 18 1c 3b                               	vbroadcastss xmm3,DWORD PTR [rbx+r15*1]
 5b2ff0bff41:	c5 a0 59 db                                     	vmulps xmm3,xmm11,xmm3
 5b2ff0bff45:	c5 38 58 c3                                     	vaddps xmm8,xmm8,xmm3
 5b2ff0bff49:	c4 41 48 59 c0                                  	vmulps xmm8,xmm6,xmm8
 5b2ff0bff4e:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
 5b2ff0bff55:	48 89 b5 c8 fe ff ff                            	mov    QWORD PTR [rbp-0x138],rsi
 5b2ff0bff5c:	41 8b b4 18 34 01 00 00                         	mov    esi,DWORD PTR [r8+rbx*1+0x134]
 5b2ff0bff64:	4c 89 8d 18 ff ff ff                            	mov    QWORD PTR [rbp-0xe8],r9
 5b2ff0bff6b:	44 8d 4e ff                                     	lea    r9d,[rsi-0x1]
 5b2ff0bff6f:	c5 78 11 95 d0 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x130],xmm10
 5b2ff0bff77:	48 89 85 b8 fe ff ff                            	mov    QWORD PTR [rbp-0x148],rax
 5b2ff0bff7e:	48 89 95 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rdx
 5b2ff0bff85:	41 83 f9 01                                     	cmp    r9d,0x1
 5b2ff0bff89:	0f 87 fd 06 00 00                               	ja     0x5b2ff0c068c
 5b2ff0bff8f:	45 8b 4c 18 28                                  	mov    r9d,DWORD PTR [r8+rbx*1+0x28]
 5b2ff0bff94:	41 8b 7c 18 20                                  	mov    edi,DWORD PTR [r8+rbx*1+0x20]
 5b2ff0bff99:	48 89 b5 50 fe ff ff                            	mov    QWORD PTR [rbp-0x1b0],rsi
 5b2ff0bffa0:	49 8d 70 54                                     	lea    rsi,[r8+0x54]
 5b2ff0bffa4:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
 5b2ff0bffaa:	c4 22 79 18 0c 1e                               	vbroadcastss xmm9,DWORD PTR [rsi+r11*1]
 5b2ff0bffb0:	c4 22 79 18 2c 26                               	vbroadcastss xmm13,DWORD PTR [rsi+r12*1]
 5b2ff0bffb6:	41 8b 74 18 1c                                  	mov    esi,DWORD PTR [r8+rbx*1+0x1c]
 5b2ff0bffbb:	c5 02 2a f6                                     	vcvtsi2ss xmm14,xmm15,esi
 5b2ff0bffbf:	c4 42 79 18 f6                                  	vbroadcastss xmm14,xmm14
 5b2ff0bffc4:	4c 89 8d 30 fe ff ff                            	mov    QWORD PTR [rbp-0x1d0],r9
 5b2ff0bffcb:	4d 8d 48 50                                     	lea    r9,[r8+0x50]
 5b2ff0bffcf:	c4 82 79 18 0c 19                               	vbroadcastss xmm1,DWORD PTR [r9+r11*1]
 5b2ff0bffd5:	c5 e8 59 c9                                     	vmulps xmm1,xmm2,xmm1
 5b2ff0bffd9:	c4 82 79 18 24 21                               	vbroadcastss xmm4,DWORD PTR [r9+r12*1]
 5b2ff0bffdf:	c5 d0 59 e4                                     	vmulps xmm4,xmm5,xmm4
 5b2ff0bffe3:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
 5b2ff0bffe7:	c4 82 79 18 24 39                               	vbroadcastss xmm4,DWORD PTR [r9+r15*1]
 5b2ff0bffed:	c5 a0 59 e4                                     	vmulps xmm4,xmm11,xmm4
 5b2ff0bfff1:	c5 f0 58 cc                                     	vaddps xmm1,xmm1,xmm4
 5b2ff0bfff5:	c5 c8 59 c9                                     	vmulps xmm1,xmm6,xmm1
 5b2ff0bfff9:	c4 e3 79 08 e1 09                               	vroundps xmm4,xmm1,0x9
 5b2ff0bffff:	c5 f0 5c cc                                     	vsubps xmm1,xmm1,xmm4
 5b2ff0c0003:	c5 08 59 f1                                     	vmulps xmm14,xmm14,xmm1
 5b2ff0c0007:	4c 8b 15 13 d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd213]        # 0x5b2ff0bd221
 5b2ff0c000e:	c4 c1 f9 6e ca                                  	vmovq  xmm1,r10
 5b2ff0c0013:	c5 f1 6c c9                                     	vpunpcklqdq xmm1,xmm1,xmm1
 5b2ff0c0017:	c5 08 58 f1                                     	vaddps xmm14,xmm14,xmm1
 5b2ff0c001b:	c4 c3 79 08 e6 09                               	vroundps xmm4,xmm14,0x9
 5b2ff0c0021:	4c 8b 15 f6 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ff6]        # 0x5b2ff0b901e
 5b2ff0c0028:	c5 58 c2 fc 00                                  	vcmpeqps xmm15,xmm4,xmm4
 5b2ff0c002d:	c4 41 58 54 d7                                  	vandps xmm10,xmm4,xmm15
 5b2ff0c0032:	c4 41 58 c2 3a 0d                               	vcmpgeps xmm15,xmm4,XMMWORD PTR [r10]
 5b2ff0c0038:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
 5b2ff0c003d:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
 5b2ff0c0042:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
 5b2ff0c004a:	4c 8b 15 db d2 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd2db]        # 0x5b2ff0bd32c
 5b2ff0c0051:	c4 41 f9 6e e2                                  	vmovq  xmm12,r10
 5b2ff0c0056:	c4 41 19 6c e4                                  	vpunpcklqdq xmm12,xmm12,xmm12
 5b2ff0c005b:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
 5b2ff0c0063:	4c 8b 15 f3 d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1f3]        # 0x5b2ff0bd25d
 5b2ff0c006a:	c4 c1 58 54 02                                  	vandps xmm0,xmm4,XMMWORD PTR [r10]
 5b2ff0c006f:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
 5b2ff0c0077:	4c 8b 15 ee d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd1ee]        # 0x5b2ff0bd26c
 5b2ff0c007e:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0c0083:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0c0087:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
 5b2ff0c008c:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
 5b2ff0c0091:	c5 a9 db c0                                     	vpand  xmm0,xmm10,xmm0
 5b2ff0c0095:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0c009a:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
 5b2ff0c009e:	c4 81 7a 7f 84 08 90 00 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x90],xmm0
 5b2ff0c00a8:	c5 82 2a c7                                     	vcvtsi2ss xmm0,xmm15,edi
 5b2ff0c00ac:	c4 e2 79 18 c0                                  	vbroadcastss xmm0,xmm0
 5b2ff0c00b1:	c4 41 68 59 c9                                  	vmulps xmm9,xmm2,xmm9
 5b2ff0c00b6:	c4 41 50 59 d5                                  	vmulps xmm10,xmm5,xmm13
 5b2ff0c00bb:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
 5b2ff0c00c0:	c5 20 59 d3                                     	vmulps xmm10,xmm11,xmm3
 5b2ff0c00c4:	c4 41 30 58 ca                                  	vaddps xmm9,xmm9,xmm10
 5b2ff0c00c9:	c4 41 48 59 c9                                  	vmulps xmm9,xmm6,xmm9
 5b2ff0c00ce:	c4 43 79 08 d1 09                               	vroundps xmm10,xmm9,0x9
 5b2ff0c00d4:	c4 41 30 5c ca                                  	vsubps xmm9,xmm9,xmm10
 5b2ff0c00d9:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0c00de:	c5 f8 58 c1                                     	vaddps xmm0,xmm0,xmm1
 5b2ff0c00e2:	c4 63 79 08 c8 09                               	vroundps xmm9,xmm0,0x9
 5b2ff0c00e8:	4c 8b 15 2f 8f ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8f2f]        # 0x5b2ff0b901e
 5b2ff0c00ef:	c4 41 30 c2 f9 00                               	vcmpeqps xmm15,xmm9,xmm9
 5b2ff0c00f5:	c4 41 30 54 d7                                  	vandps xmm10,xmm9,xmm15
 5b2ff0c00fa:	c4 41 30 c2 3a 0d                               	vcmpgeps xmm15,xmm9,XMMWORD PTR [r10]
 5b2ff0c0100:	c4 41 7a 5b d2                                  	vcvttps2dq xmm10,xmm10
 5b2ff0c0105:	c4 41 29 ef d7                                  	vpxor  xmm10,xmm10,xmm15
 5b2ff0c010a:	4c 8b 15 4c d1 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd14c]        # 0x5b2ff0bd25d
 5b2ff0c0111:	c4 41 30 54 2a                                  	vandps xmm13,xmm9,XMMWORD PTR [r10]
 5b2ff0c0116:	c5 10 c2 ef 01                                  	vcmpltps xmm13,xmm13,xmm7
 5b2ff0c011b:	c4 41 11 df fc                                  	vpandn xmm15,xmm13,xmm12
 5b2ff0c0120:	c4 41 29 db d5                                  	vpand  xmm10,xmm10,xmm13
 5b2ff0c0125:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
 5b2ff0c012a:	c4 01 7a 7f 94 08 90 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x190],xmm10
 5b2ff0c0134:	c5 08 5c d4                                     	vsubps xmm10,xmm14,xmm4
 5b2ff0c0138:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
 5b2ff0c0140:	c4 41 28 59 d5                                  	vmulps xmm10,xmm10,xmm13
 5b2ff0c0145:	4c 8b 15 ad ed ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffedad]        # 0x5b2ff0beef9
 5b2ff0c014c:	c4 41 f9 6e f2                                  	vmovq  xmm14,r10
 5b2ff0c0151:	c4 41 09 6c f6                                  	vpunpcklqdq xmm14,xmm14,xmm14
 5b2ff0c0156:	c4 41 28 58 d6                                  	vaddps xmm10,xmm10,xmm14
 5b2ff0c015b:	4c 8b 15 bc 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8ebc]        # 0x5b2ff0b901e
 5b2ff0c0162:	c4 41 28 c2 fa 00                               	vcmpeqps xmm15,xmm10,xmm10
 5b2ff0c0168:	c4 c1 28 54 cf                                  	vandps xmm1,xmm10,xmm15
 5b2ff0c016d:	c4 41 28 c2 3a 0d                               	vcmpgeps xmm15,xmm10,XMMWORD PTR [r10]
 5b2ff0c0173:	c5 fa 5b c9                                     	vcvttps2dq xmm1,xmm1
 5b2ff0c0177:	c4 c1 71 ef cf                                  	vpxor  xmm1,xmm1,xmm15
 5b2ff0c017c:	4c 8b 15 da d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd0da]        # 0x5b2ff0bd25d
 5b2ff0c0183:	c4 41 28 54 12                                  	vandps xmm10,xmm10,XMMWORD PTR [r10]
 5b2ff0c0188:	c5 28 c2 d7 01                                  	vcmpltps xmm10,xmm10,xmm7
 5b2ff0c018d:	c4 41 29 df fc                                  	vpandn xmm15,xmm10,xmm12
 5b2ff0c0192:	c4 41 71 db d2                                  	vpand  xmm10,xmm1,xmm10
 5b2ff0c0197:	c4 41 29 eb d7                                  	vpor   xmm10,xmm10,xmm15
 5b2ff0c019c:	c4 01 7a 7f 14 08                               	vmovdqu XMMWORD PTR [r8+r9*1],xmm10
 5b2ff0c01a2:	c4 c1 78 5c c1                                  	vsubps xmm0,xmm0,xmm9
 5b2ff0c01a7:	c4 c1 78 59 c5                                  	vmulps xmm0,xmm0,xmm13
 5b2ff0c01ac:	c4 c1 78 58 c6                                  	vaddps xmm0,xmm0,xmm14
 5b2ff0c01b1:	4c 8b 15 66 8e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8e66]        # 0x5b2ff0b901e
 5b2ff0c01b8:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
 5b2ff0c01bd:	c4 41 78 54 cf                                  	vandps xmm9,xmm0,xmm15
 5b2ff0c01c2:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
 5b2ff0c01c8:	c4 41 7a 5b c9                                  	vcvttps2dq xmm9,xmm9
 5b2ff0c01cd:	c4 41 31 ef cf                                  	vpxor  xmm9,xmm9,xmm15
 5b2ff0c01d2:	4c 8b 15 84 d0 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffd084]        # 0x5b2ff0bd25d
 5b2ff0c01d9:	c4 c1 78 54 02                                  	vandps xmm0,xmm0,XMMWORD PTR [r10]
 5b2ff0c01de:	c5 f8 c2 c7 01                                  	vcmpltps xmm0,xmm0,xmm7
 5b2ff0c01e3:	c4 41 79 df fc                                  	vpandn xmm15,xmm0,xmm12
 5b2ff0c01e8:	c5 b1 db c0                                     	vpand  xmm0,xmm9,xmm0
 5b2ff0c01ec:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0c01f1:	c4 81 7a 7f 44 08 70                            	vmovdqu XMMWORD PTR [r8+r9*1+0x70],xmm0
 5b2ff0c01f8:	c4 01 7a 7f 44 08 50                            	vmovdqu XMMWORD PTR [r8+r9*1+0x50],xmm8
 5b2ff0c01ff:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
 5b2ff0c0207:	c4 81 7a 7f bc 08 f0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1f0],xmm7
 5b2ff0c0211:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
 5b2ff0c0219:	c4 81 7a 7f 84 08 e0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1e0],xmm0
 5b2ff0c0223:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
 5b2ff0c022b:	c4 01 7a 7f a4 08 d0 01 00 00                   	vmovdqu XMMWORD PTR [r8+r9*1+0x1d0],xmm12
 5b2ff0c0235:	45 8b 7c 18 34                                  	mov    r15d,DWORD PTR [r8+rbx*1+0x34]
 5b2ff0c023a:	45 8b 64 18 30                                  	mov    r12d,DWORD PTR [r8+rbx*1+0x30]
 5b2ff0c023f:	45 8b 5c 18 2c                                  	mov    r11d,DWORD PTR [r8+rbx*1+0x2c]
 5b2ff0c0244:	48 89 bd 70 fd ff ff                            	mov    QWORD PTR [rbp-0x290],rdi
 5b2ff0c024b:	4c 89 bd 88 fd ff ff                            	mov    QWORD PTR [rbp-0x278],r15
 5b2ff0c0252:	4c 89 a5 78 fd ff ff                            	mov    QWORD PTR [rbp-0x288],r12
 5b2ff0c0259:	33 c0                                           	xor    eax,eax
 5b2ff0c025b:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
 5b2ff0c0261:	e9 2a 00 00 00                                  	jmp    0x5b2ff0c0290
 5b2ff0c0266:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0c026f:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
 5b2ff0c0278:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
 5b2ff0c0280:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
 5b2ff0c0286:	45 8b cc                                        	mov    r9d,r12d
 5b2ff0c0289:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
 5b2ff0c0290:	41 80 7d b1 00                                  	cmp    BYTE PTR [r13-0x4f],0x0
 5b2ff0c0295:	0f 85 5c 19 00 00                               	jne    0x5b2ff0c1bf7
 5b2ff0c029b:	8b c8                                           	mov    ecx,eax
 5b2ff0c029d:	44 8b bd 68 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x298]
 5b2ff0c02a4:	41 d3 ef                                        	shr    r15d,cl
 5b2ff0c02a7:	41 f6 c7 01                                     	test   r15b,0x1
 5b2ff0c02ab:	0f 85 0a 00 00 00                               	jne    0x5b2ff0c02bb
 5b2ff0c02b1:	45 8b e1                                        	mov    r12d,r9d
 5b2ff0c02b4:	8b f8                                           	mov    edi,eax
 5b2ff0c02b6:	e9 3d 03 00 00                                  	jmp    0x5b2ff0c05f8
 5b2ff0c02bb:	45 8d bc 81 90 01 00 00                         	lea    r15d,[r9+rax*4+0x190]
 5b2ff0c02c3:	47 8b 3c 38                                     	mov    r15d,DWORD PTR [r8+r15*1]
 5b2ff0c02c7:	41 8d 8c 81 90 00 00 00                         	lea    ecx,[r9+rax*4+0x90]
 5b2ff0c02cf:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
 5b2ff0c02d3:	44 8d 49 01                                     	lea    r9d,[rcx+0x1]
 5b2ff0c02d7:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
 5b2ff0c02de:	45 85 db                                        	test   r11d,r11d
 5b2ff0c02e1:	0f 85 51 00 00 00                               	jne    0x5b2ff0c0338
 5b2ff0c02e7:	85 f6                                           	test   esi,esi
 5b2ff0c02e9:	0f 84 c8 19 00 00                               	je     0x5b2ff0c1cb7
 5b2ff0c02ef:	83 fe ff                                        	cmp    esi,0xffffffff
 5b2ff0c02f2:	0f 84 94 19 00 00                               	je     0x5b2ff0c1c8c
 5b2ff0c02f8:	44 8b d0                                        	mov    r10d,eax
 5b2ff0c02fb:	8b c1                                           	mov    eax,ecx
 5b2ff0c02fd:	41 8b ca                                        	mov    ecx,r10d
 5b2ff0c0300:	99                                              	cdq
 5b2ff0c0301:	f7 fe                                           	idiv   esi
 5b2ff0c0303:	8b c2                                           	mov    eax,edx
 5b2ff0c0305:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff0c0308:	23 c6                                           	and    eax,esi
 5b2ff0c030a:	03 c2                                           	add    eax,edx
 5b2ff0c030c:	83 fe ff                                        	cmp    esi,0xffffffff
 5b2ff0c030f:	0f 84 80 19 00 00                               	je     0x5b2ff0c1c95
 5b2ff0c0315:	44 8b d0                                        	mov    r10d,eax
 5b2ff0c0318:	41 8b c1                                        	mov    eax,r9d
 5b2ff0c031b:	45 8b ca                                        	mov    r9d,r10d
 5b2ff0c031e:	99                                              	cdq
 5b2ff0c031f:	f7 fe                                           	idiv   esi
 5b2ff0c0321:	8b c2                                           	mov    eax,edx
 5b2ff0c0323:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff0c0326:	23 c6                                           	and    eax,esi
 5b2ff0c0328:	03 c2                                           	add    eax,edx
 5b2ff0c032a:	45 8b d1                                        	mov    r10d,r9d
 5b2ff0c032d:	44 8b c8                                        	mov    r9d,eax
 5b2ff0c0330:	41 8b c2                                        	mov    eax,r10d
 5b2ff0c0333:	e9 0e 00 00 00                                  	jmp    0x5b2ff0c0346
 5b2ff0c0338:	41 23 cb                                        	and    ecx,r11d
 5b2ff0c033b:	45 23 cb                                        	and    r9d,r11d
 5b2ff0c033e:	44 8b d1                                        	mov    r10d,ecx
 5b2ff0c0341:	8b c8                                           	mov    ecx,eax
 5b2ff0c0343:	41 8b c2                                        	mov    eax,r10d
 5b2ff0c0346:	41 8d 57 01                                     	lea    edx,[r15+0x1]
 5b2ff0c034a:	45 85 e4                                        	test   r12d,r12d
 5b2ff0c034d:	0f 85 47 00 00 00                               	jne    0x5b2ff0c039a
 5b2ff0c0353:	85 ff                                           	test   edi,edi
 5b2ff0c0355:	0f 84 57 19 00 00                               	je     0x5b2ff0c1cb2
 5b2ff0c035b:	83 ff ff                                        	cmp    edi,0xffffffff
 5b2ff0c035e:	0f 84 3b 19 00 00                               	je     0x5b2ff0c1c9f
 5b2ff0c0364:	8b c8                                           	mov    ecx,eax
 5b2ff0c0366:	8b c2                                           	mov    eax,edx
 5b2ff0c0368:	99                                              	cdq
 5b2ff0c0369:	f7 ff                                           	idiv   edi
 5b2ff0c036b:	8b c2                                           	mov    eax,edx
 5b2ff0c036d:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff0c0370:	23 c7                                           	and    eax,edi
 5b2ff0c0372:	03 c2                                           	add    eax,edx
 5b2ff0c0374:	83 ff ff                                        	cmp    edi,0xffffffff
 5b2ff0c0377:	0f 84 2b 19 00 00                               	je     0x5b2ff0c1ca8
 5b2ff0c037d:	44 8b d0                                        	mov    r10d,eax
 5b2ff0c0380:	41 8b c7                                        	mov    eax,r15d
 5b2ff0c0383:	45 8b fa                                        	mov    r15d,r10d
 5b2ff0c0386:	99                                              	cdq
 5b2ff0c0387:	f7 ff                                           	idiv   edi
 5b2ff0c0389:	8b c2                                           	mov    eax,edx
 5b2ff0c038b:	c1 f8 1f                                        	sar    eax,0x1f
 5b2ff0c038e:	23 f8                                           	and    edi,eax
 5b2ff0c0390:	03 fa                                           	add    edi,edx
 5b2ff0c0392:	41 8b d7                                        	mov    edx,r15d
 5b2ff0c0395:	e9 0b 00 00 00                                  	jmp    0x5b2ff0c03a5
 5b2ff0c039a:	41 23 d4                                        	and    edx,r12d
 5b2ff0c039d:	45 23 e7                                        	and    r12d,r15d
 5b2ff0c03a0:	41 8b fc                                        	mov    edi,r12d
 5b2ff0c03a3:	8b c8                                           	mov    ecx,eax
 5b2ff0c03a5:	8b c1                                           	mov    eax,ecx
 5b2ff0c03a7:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
 5b2ff0c03ad:	44 8b ff                                        	mov    r15d,edi
 5b2ff0c03b0:	41 d3 e7                                        	shl    r15d,cl
 5b2ff0c03b3:	0f af fe                                        	imul   edi,esi
 5b2ff0c03b6:	45 85 db                                        	test   r11d,r11d
 5b2ff0c03b9:	41 0f 45 ff                                     	cmovne edi,r15d
 5b2ff0c03bd:	44 8d 3c 38                                     	lea    r15d,[rax+rdi*1]
 5b2ff0c03c1:	46 8d 3c bb                                     	lea    r15d,[rbx+r15*4]
 5b2ff0c03c5:	c4 81 7a 10 04 38                               	vmovss xmm0,DWORD PTR [r8+r15*1]
 5b2ff0c03cb:	c4 e2 79 30 c0                                  	vpmovzxbw xmm0,xmm0
 5b2ff0c03d0:	41 03 f9                                        	add    edi,r9d
 5b2ff0c03d3:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0c03d6:	c4 c1 7a 10 3c 38                               	vmovss xmm7,DWORD PTR [r8+rdi*1]
 5b2ff0c03dc:	c4 e2 79 30 ff                                  	vpmovzxbw xmm7,xmm7
 5b2ff0c03e1:	c5 f9 61 c7                                     	vpunpcklwd xmm0,xmm0,xmm7
 5b2ff0c03e5:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
 5b2ff0c03eb:	44 8b bd 80 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x280]
 5b2ff0c03f2:	41 8d 8c bf 00 fe ff ff                         	lea    ecx,[r15+rdi*4-0x200]
 5b2ff0c03fa:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
 5b2ff0c03fe:	41 bf 00 01 00 00                               	mov    r15d,0x100
 5b2ff0c0404:	44 8b e1                                        	mov    r12d,ecx
 5b2ff0c0407:	81 f9 00 01 00 00                               	cmp    ecx,0x100
 5b2ff0c040d:	45 0f 4d e7                                     	cmovge r12d,r15d
 5b2ff0c0411:	33 c9                                           	xor    ecx,ecx
 5b2ff0c0413:	45 85 e4                                        	test   r12d,r12d
 5b2ff0c0416:	41 0f 4f cc                                     	cmovg  ecx,r12d
 5b2ff0c041a:	44 69 e1 ff ff 00 00                            	imul   r12d,ecx,0xffff
 5b2ff0c0421:	41 81 c4 00 01 00 00                            	add    r12d,0x100
 5b2ff0c0428:	c4 c1 79 6e fc                                  	vmovd  xmm7,r12d
 5b2ff0c042d:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0c0432:	c5 f9 f5 c7                                     	vpmaddwd xmm0,xmm0,xmm7
 5b2ff0c0436:	44 8b 65 e0                                     	mov    r12d,DWORD PTR [rbp-0x20]
 5b2ff0c043a:	41 8d 4c bc 70                                  	lea    ecx,[r12+rdi*4+0x70]
 5b2ff0c043f:	41 8b 0c 08                                     	mov    ecx,DWORD PTR [r8+rcx*1]
 5b2ff0c0443:	8b f9                                           	mov    edi,ecx
 5b2ff0c0445:	81 f9 00 01 00 00                               	cmp    ecx,0x100
 5b2ff0c044b:	41 0f 4d ff                                     	cmovge edi,r15d
 5b2ff0c044f:	33 c9                                           	xor    ecx,ecx
 5b2ff0c0451:	85 ff                                           	test   edi,edi
 5b2ff0c0453:	0f 4f cf                                        	cmovg  ecx,edi
 5b2ff0c0456:	44 2b f9                                        	sub    r15d,ecx
 5b2ff0c0459:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
 5b2ff0c045e:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0c0463:	c4 c2 79 40 c0                                  	vpmulld xmm0,xmm0,xmm8
 5b2ff0c0468:	44 8b f9                                        	mov    r15d,ecx
 5b2ff0c046b:	8b 8d 88 fd ff ff                               	mov    ecx,DWORD PTR [rbp-0x278]
 5b2ff0c0471:	8b fa                                           	mov    edi,edx
 5b2ff0c0473:	d3 e7                                           	shl    edi,cl
 5b2ff0c0475:	0f af d6                                        	imul   edx,esi
 5b2ff0c0478:	45 85 db                                        	test   r11d,r11d
 5b2ff0c047b:	0f 45 d7                                        	cmovne edx,edi
 5b2ff0c047e:	8d 3c 10                                        	lea    edi,[rax+rdx*1]
 5b2ff0c0481:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0c0484:	c4 41 7a 10 04 38                               	vmovss xmm8,DWORD PTR [r8+rdi*1]
 5b2ff0c048a:	c4 42 79 30 c0                                  	vpmovzxbw xmm8,xmm8
 5b2ff0c048f:	42 8d 3c 0a                                     	lea    edi,[rdx+r9*1]
 5b2ff0c0493:	8d 3c bb                                        	lea    edi,[rbx+rdi*4]
 5b2ff0c0496:	c4 41 7a 10 0c 38                               	vmovss xmm9,DWORD PTR [r8+rdi*1]
 5b2ff0c049c:	c4 42 79 30 c9                                  	vpmovzxbw xmm9,xmm9
 5b2ff0c04a1:	c4 41 39 61 c1                                  	vpunpcklwd xmm8,xmm8,xmm9
 5b2ff0c04a6:	c5 b9 f5 ff                                     	vpmaddwd xmm7,xmm8,xmm7
 5b2ff0c04aa:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
 5b2ff0c04af:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0c04b4:	c4 c2 41 40 f8                                  	vpmulld xmm7,xmm7,xmm8
 5b2ff0c04b9:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
 5b2ff0c04bd:	4c 8b 15 25 eb ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffeb25]        # 0x5b2ff0befe9
 5b2ff0c04c4:	c4 c1 f9 6e fa                                  	vmovq  xmm7,r10
 5b2ff0c04c9:	c5 c1 6c ff                                     	vpunpcklqdq xmm7,xmm7,xmm7
 5b2ff0c04cd:	c5 f9 fe c7                                     	vpaddd xmm0,xmm0,xmm7
 5b2ff0c04d1:	c5 f9 72 e0 10                                  	vpsrad xmm0,xmm0,0x10
 5b2ff0c04d6:	c4 e2 79 2b c0                                  	vpackusdw xmm0,xmm0,xmm0
 5b2ff0c04db:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
 5b2ff0c04df:	c5 f9 7e c7                                     	vmovd  edi,xmm0
 5b2ff0c04e3:	44 8b ff                                        	mov    r15d,edi
 5b2ff0c04e6:	41 c1 ef 18                                     	shr    r15d,0x18
 5b2ff0c04ea:	8b c7                                           	mov    eax,edi
 5b2ff0c04ec:	c1 e8 10                                        	shr    eax,0x10
 5b2ff0c04ef:	8b d7                                           	mov    edx,edi
 5b2ff0c04f1:	c1 ea 08                                        	shr    edx,0x8
 5b2ff0c04f4:	40 0f b6 ff                                     	movzx  edi,dil
 5b2ff0c04f8:	44 8b d7                                        	mov    r10d,edi
 5b2ff0c04fb:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0c0500:	41 ba 81 80 80 3b                               	mov    r10d,0x3b808081
 5b2ff0c0506:	c4 c1 79 6e fa                                  	vmovd  xmm7,r10d
 5b2ff0c050b:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0c050f:	8b bd b0 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x150]
 5b2ff0c0515:	41 8d 4c bc 50                                  	lea    ecx,[r12+rdi*4+0x50]
 5b2ff0c051a:	83 bd 50 fe ff ff 02                            	cmp    DWORD PTR [rbp-0x1b0],0x2
 5b2ff0c0521:	0f 84 77 00 00 00                               	je     0x5b2ff0c059e
 5b2ff0c0527:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
 5b2ff0c052d:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
 5b2ff0c0533:	41 8d 8c bc f0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1f0]
 5b2ff0c053b:	0f b6 d2                                        	movzx  edx,dl
 5b2ff0c053e:	44 8b d2                                        	mov    r10d,edx
 5b2ff0c0541:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0c0546:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0c054a:	c4 c1 7a 59 04 08                               	vmulss xmm0,xmm0,DWORD PTR [r8+rcx*1]
 5b2ff0c0550:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
 5b2ff0c0556:	41 8d 94 bc e0 01 00 00                         	lea    edx,[r12+rdi*4+0x1e0]
 5b2ff0c055e:	0f b6 c0                                        	movzx  eax,al
 5b2ff0c0561:	44 8b d0                                        	mov    r10d,eax
 5b2ff0c0564:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0c0569:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0c056d:	c4 c1 7a 59 04 10                               	vmulss xmm0,xmm0,DWORD PTR [r8+rdx*1]
 5b2ff0c0573:	c4 c1 7a 11 04 10                               	vmovss DWORD PTR [r8+rdx*1],xmm0
 5b2ff0c0579:	41 8d 84 bc d0 01 00 00                         	lea    eax,[r12+rdi*4+0x1d0]
 5b2ff0c0581:	45 8b d7                                        	mov    r10d,r15d
 5b2ff0c0584:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0c0589:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0c058d:	c4 c1 7a 59 04 00                               	vmulss xmm0,xmm0,DWORD PTR [r8+rax*1]
 5b2ff0c0593:	c4 c1 7a 11 04 00                               	vmovss DWORD PTR [r8+rax*1],xmm0
 5b2ff0c0599:	e9 5a 00 00 00                                  	jmp    0x5b2ff0c05f8
 5b2ff0c059e:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
 5b2ff0c05a4:	41 8d 8c bc d0 01 00 00                         	lea    ecx,[r12+rdi*4+0x1d0]
 5b2ff0c05ac:	45 8b d7                                        	mov    r10d,r15d
 5b2ff0c05af:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0c05b4:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0c05b8:	c4 c1 7a 11 04 08                               	vmovss DWORD PTR [r8+rcx*1],xmm0
 5b2ff0c05be:	45 8d bc bc e0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1e0]
 5b2ff0c05c6:	0f b6 c0                                        	movzx  eax,al
 5b2ff0c05c9:	44 8b d0                                        	mov    r10d,eax
 5b2ff0c05cc:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0c05d1:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0c05d5:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
 5b2ff0c05db:	45 8d bc bc f0 01 00 00                         	lea    r15d,[r12+rdi*4+0x1f0]
 5b2ff0c05e3:	0f b6 c2                                        	movzx  eax,dl
 5b2ff0c05e6:	44 8b d0                                        	mov    r10d,eax
 5b2ff0c05e9:	c4 c1 82 2a c2                                  	vcvtsi2ss xmm0,xmm15,r10
 5b2ff0c05ee:	c5 fa 59 c7                                     	vmulss xmm0,xmm0,xmm7
 5b2ff0c05f2:	c4 81 7a 11 04 38                               	vmovss DWORD PTR [r8+r15*1],xmm0
 5b2ff0c05f8:	8d 47 01                                        	lea    eax,[rdi+0x1]
 5b2ff0c05fb:	83 f8 04                                        	cmp    eax,0x4
 5b2ff0c05fe:	0f 85 7c fc ff ff                               	jne    0x5b2ff0c0280
 5b2ff0c0604:	c4 01 7a 6f a4 20 d0 01 00 00                   	vmovdqu xmm12,XMMWORD PTR [r8+r12*1+0x1d0]
 5b2ff0c060e:	c4 81 7a 6f bc 20 f0 01 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r12*1+0x1f0]
 5b2ff0c0618:	c4 01 7a 6f 44 20 50                            	vmovdqu xmm8,XMMWORD PTR [r8+r12*1+0x50]
 5b2ff0c061f:	c4 81 7a 6f 84 20 e0 01 00 00                   	vmovdqu xmm0,XMMWORD PTR [r8+r12*1+0x1e0]
 5b2ff0c0629:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c0631:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c0639:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
 5b2ff0c0641:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
 5b2ff0c0648:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
 5b2ff0c064c:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
 5b2ff0c0654:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
 5b2ff0c065a:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
 5b2ff0c0660:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
 5b2ff0c0667:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
 5b2ff0c066e:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
 5b2ff0c0675:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
 5b2ff0c067c:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
 5b2ff0c0684:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
 5b2ff0c068c:	41 8b b4 38 ec 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xec]
 5b2ff0c0694:	c5 78 11 a5 c0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x240],xmm12
 5b2ff0c069c:	41 83 bc 38 ec 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0xec],0x0
 5b2ff0c06a5:	0f 84 04 04 00 00                               	je     0x5b2ff0c0aaf
 5b2ff0c06ab:	49 8d b0 98 00 00 00                            	lea    rsi,[r8+0x98]
 5b2ff0c06b2:	c4 a2 79 18 1c 1e                               	vbroadcastss xmm3,DWORD PTR [rsi+r11*1]
 5b2ff0c06b8:	c5 e8 59 d3                                     	vmulps xmm2,xmm2,xmm3
 5b2ff0c06bc:	c4 a2 79 18 1c 26                               	vbroadcastss xmm3,DWORD PTR [rsi+r12*1]
 5b2ff0c06c2:	c5 d0 59 db                                     	vmulps xmm3,xmm5,xmm3
 5b2ff0c06c6:	c5 e8 58 d3                                     	vaddps xmm2,xmm2,xmm3
 5b2ff0c06ca:	c4 a2 79 18 1c 3e                               	vbroadcastss xmm3,DWORD PTR [rsi+r15*1]
 5b2ff0c06d0:	c5 20 59 db                                     	vmulps xmm11,xmm11,xmm3
 5b2ff0c06d4:	c4 41 68 58 db                                  	vaddps xmm11,xmm2,xmm11
 5b2ff0c06d9:	c4 c1 48 59 f3                                  	vmulps xmm6,xmm6,xmm11
 5b2ff0c06de:	c5 28 5c de                                     	vsubps xmm11,xmm10,xmm6
 5b2ff0c06e2:	c5 a0 c2 d6 01                                  	vcmpltps xmm2,xmm11,xmm6
 5b2ff0c06e7:	c4 41 69 df fb                                  	vpandn xmm15,xmm2,xmm11
 5b2ff0c06ec:	c5 c9 db f2                                     	vpand  xmm6,xmm6,xmm2
 5b2ff0c06f0:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0c06f5:	4c 8b 15 d5 9e ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9ed5]        # 0x5b2ff0ba5d1
 5b2ff0c06fc:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
 5b2ff0c0701:	c4 41 21 6c db                                  	vpunpcklqdq xmm11,xmm11,xmm11
 5b2ff0c0706:	41 8b b4 38 f0 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0xf0]
 5b2ff0c070e:	81 fe 00 08 00 00                               	cmp    esi,0x800
 5b2ff0c0714:	0f 84 8d 01 00 00                               	je     0x5b2ff0c08a7
 5b2ff0c071a:	81 fe 01 26 00 00                               	cmp    esi,0x2601
 5b2ff0c0720:	0f 84 23 01 00 00                               	je     0x5b2ff0c0849
 5b2ff0c0726:	c4 c1 7a 10 94 38 f4 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xf4]
 5b2ff0c0730:	c5 f8 28 de                                     	vmovaps xmm3,xmm6
 5b2ff0c0734:	c5 ea 59 db                                     	vmulss xmm3,xmm2,xmm3
 5b2ff0c0738:	4c 8b 15 70 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c70]        # 0x5b2ff0b93af
 5b2ff0c073f:	c4 c1 60 57 2a                                  	vxorps xmm5,xmm3,XMMWORD PTR [r10]
 5b2ff0c0744:	c5 e2 59 dd                                     	vmulss xmm3,xmm3,xmm5
 5b2ff0c0748:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
 5b2ff0c0750:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
 5b2ff0c0758:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
 5b2ff0c0760:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
 5b2ff0c0768:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
 5b2ff0c0770:	c5 fb 11 95 b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm2
 5b2ff0c0778:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c077c:	c5 f9 28 cb                                     	vmovapd xmm1,xmm3
 5b2ff0c0780:	e8 33 ce f0 ff                                  	call   0x5b2fefcd5b8
 5b2ff0c0785:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff0c078a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c0792:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
 5b2ff0c0796:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
 5b2ff0c079e:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
 5b2ff0c07a2:	4c 8b 15 06 8c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8c06]        # 0x5b2ff0b93af
 5b2ff0c07a9:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
 5b2ff0c07ae:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
 5b2ff0c07b3:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
 5b2ff0c07bb:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c07bf:	e8 f4 cd f0 ff                                  	call   0x5b2fefcd5b8
 5b2ff0c07c4:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
 5b2ff0c07cc:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
 5b2ff0c07d2:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c07da:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
 5b2ff0c07df:	c5 7b 10 85 b0 fe ff ff                         	vmovsd xmm8,QWORD PTR [rbp-0x150]
 5b2ff0c07e7:	c5 ba 59 ff                                     	vmulss xmm7,xmm8,xmm7
 5b2ff0c07eb:	4c 8b 15 bd 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8bbd]        # 0x5b2ff0b93af
 5b2ff0c07f2:	c4 41 40 57 0a                                  	vxorps xmm9,xmm7,XMMWORD PTR [r10]
 5b2ff0c07f7:	c4 c1 42 59 c9                                  	vmulss xmm1,xmm7,xmm9
 5b2ff0c07fc:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
 5b2ff0c0804:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c0808:	e8 ab cd f0 ff                                  	call   0x5b2fefcd5b8
 5b2ff0c080d:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
 5b2ff0c0815:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
 5b2ff0c081b:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c0823:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
 5b2ff0c0828:	c5 fb 10 bd b0 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x150]
 5b2ff0c0830:	c5 c2 59 f6                                     	vmulss xmm6,xmm7,xmm6
 5b2ff0c0834:	4c 8b 15 74 8b ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8b74]        # 0x5b2ff0b93af
 5b2ff0c083b:	c4 c1 48 57 3a                                  	vxorps xmm7,xmm6,XMMWORD PTR [r10]
 5b2ff0c0840:	c5 ca 59 f7                                     	vmulss xmm6,xmm6,xmm7
 5b2ff0c0844:	e9 3a 01 00 00                                  	jmp    0x5b2ff0c0983
 5b2ff0c0849:	c4 c1 7a 10 94 38 fc 00 00 00                   	vmovss xmm2,DWORD PTR [r8+rdi*1+0xfc]
 5b2ff0c0853:	c4 c1 6a 5c 9c 38 f8 00 00 00                   	vsubss xmm3,xmm2,DWORD PTR [r8+rdi*1+0xf8]
 5b2ff0c085d:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
 5b2ff0c0861:	c5 f8 2e eb                                     	vucomiss xmm5,xmm3
 5b2ff0c0865:	7a 06                                           	jp     0x5b2ff0c086d
 5b2ff0c0867:	0f 84 2d 00 00 00                               	je     0x5b2ff0c089a
 5b2ff0c086d:	c4 e2 79 18 d2                                  	vbroadcastss xmm2,xmm2
 5b2ff0c0872:	c5 e8 5c f6                                     	vsubps xmm6,xmm2,xmm6
 5b2ff0c0876:	c5 e9 76 d2                                     	vpcmpeqd xmm2,xmm2,xmm2
 5b2ff0c087a:	c5 e9 72 f2 19                                  	vpslld xmm2,xmm2,0x19
 5b2ff0c087f:	c5 e9 72 d2 02                                  	vpsrld xmm2,xmm2,0x2
 5b2ff0c0884:	c5 ea 5e db                                     	vdivss xmm3,xmm2,xmm3
 5b2ff0c0888:	c5 f8 28 db                                     	vmovaps xmm3,xmm3
 5b2ff0c088c:	c4 e2 79 18 db                                  	vbroadcastss xmm3,xmm3
 5b2ff0c0891:	c5 c8 59 f3                                     	vmulps xmm6,xmm6,xmm3
 5b2ff0c0895:	e9 9f 01 00 00                                  	jmp    0x5b2ff0c0a39
 5b2ff0c089a:	c5 f8 10 b5 80 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x180]
 5b2ff0c08a2:	e9 92 01 00 00                                  	jmp    0x5b2ff0c0a39
 5b2ff0c08a7:	c5 f8 28 d6                                     	vmovaps xmm2,xmm6
 5b2ff0c08ab:	c4 c1 7a 10 9c 38 f4 00 00 00                   	vmovss xmm3,DWORD PTR [r8+rdi*1+0xf4]
 5b2ff0c08b5:	4c 8b 15 f3 8a ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff8af3]        # 0x5b2ff0b93af
 5b2ff0c08bc:	c4 c1 60 57 1a                                  	vxorps xmm3,xmm3,XMMWORD PTR [r10]
 5b2ff0c08c1:	c5 ea 59 d3                                     	vmulss xmm2,xmm2,xmm3
 5b2ff0c08c5:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
 5b2ff0c08cd:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
 5b2ff0c08d5:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
 5b2ff0c08dd:	c5 78 11 9d 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm11
 5b2ff0c08e5:	c5 f8 11 b5 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm6
 5b2ff0c08ed:	c5 fb 11 9d b0 fe ff ff                         	vmovsd QWORD PTR [rbp-0x150],xmm3
 5b2ff0c08f5:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c08f9:	c5 f9 28 ca                                     	vmovapd xmm1,xmm2
 5b2ff0c08fd:	e8 b6 cc f0 ff                                  	call   0x5b2fefcd5b8
 5b2ff0c0902:	c4 e2 79 18 c1                                  	vbroadcastss xmm0,xmm1
 5b2ff0c0907:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c090f:	c5 fa 16 fe                                     	vmovshdup xmm7,xmm6
 5b2ff0c0913:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
 5b2ff0c091b:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
 5b2ff0c0923:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c0927:	e8 8c cc f0 ff                                  	call   0x5b2fefcd5b8
 5b2ff0c092c:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
 5b2ff0c0934:	c4 e3 79 21 c1 10                               	vinsertps xmm0,xmm0,xmm1,0x10
 5b2ff0c093a:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c0942:	c5 f9 70 fe 02                                  	vpshufd xmm7,xmm6,0x2
 5b2ff0c0947:	c5 c2 59 8d b0 fe ff ff                         	vmulss xmm1,xmm7,DWORD PTR [rbp-0x150]
 5b2ff0c094f:	c5 f8 11 85 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm0
 5b2ff0c0957:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c095b:	e8 58 cc f0 ff                                  	call   0x5b2fefcd5b8
 5b2ff0c0960:	c5 f8 10 85 40 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x1c0]
 5b2ff0c0968:	c4 e3 79 21 c1 20                               	vinsertps xmm0,xmm0,xmm1,0x20
 5b2ff0c096e:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c0976:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
 5b2ff0c097b:	c5 ca 59 b5 b0 fe ff ff                         	vmulss xmm6,xmm6,DWORD PTR [rbp-0x150]
 5b2ff0c0983:	c5 f8 11 85 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm0
 5b2ff0c098b:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c098f:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0c0993:	e8 20 cc f0 ff                                  	call   0x5b2fefcd5b8
 5b2ff0c0998:	c5 f8 10 b5 60 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c09a0:	c4 e3 49 21 f1 30                               	vinsertps xmm6,xmm6,xmm1,0x30
 5b2ff0c09a6:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c09ae:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
 5b2ff0c09b2:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
 5b2ff0c09ba:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0c09be:	c5 78 10 95 d0 fe ff ff                         	vmovups xmm10,XMMWORD PTR [rbp-0x130]
 5b2ff0c09c6:	8b 95 20 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xe0]
 5b2ff0c09cc:	8b 85 b8 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x148]
 5b2ff0c09d2:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
 5b2ff0c09da:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
 5b2ff0c09e2:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
 5b2ff0c09ea:	c5 78 10 9d 70 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x190]
 5b2ff0c09f2:	c5 d0 57 ed                                     	vxorps xmm5,xmm5,xmm5
 5b2ff0c09f6:	4c 8b bd 10 fe ff ff                            	mov    r15,QWORD PTR [rbp-0x1f0]
 5b2ff0c09fd:	4c 8b a5 00 fe ff ff                            	mov    r12,QWORD PTR [rbp-0x200]
 5b2ff0c0a04:	4c 8b 9d e8 fd ff ff                            	mov    r11,QWORD PTR [rbp-0x218]
 5b2ff0c0a0b:	48 8b 9d 60 fd ff ff                            	mov    rbx,QWORD PTR [rbp-0x2a0]
 5b2ff0c0a12:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
 5b2ff0c0a1a:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
 5b2ff0c0a22:	48 8b 8d f8 fc ff ff                            	mov    rcx,QWORD PTR [rbp-0x308]
 5b2ff0c0a29:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
 5b2ff0c0a31:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c0a39:	c5 f8 10 95 80 fe ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x180]
 5b2ff0c0a41:	c5 e8 c2 de 01                                  	vcmpltps xmm3,xmm2,xmm6
 5b2ff0c0a46:	c5 61 df fe                                     	vpandn xmm15,xmm3,xmm6
 5b2ff0c0a4a:	c5 a1 db f3                                     	vpand  xmm6,xmm11,xmm3
 5b2ff0c0a4e:	c4 c1 49 eb f7                                  	vpor   xmm6,xmm6,xmm15
 5b2ff0c0a53:	c4 41 48 c2 da 01                               	vcmpltps xmm11,xmm6,xmm10
 5b2ff0c0a59:	c5 a0 55 f6                                     	vandnps xmm6,xmm11,xmm6
 5b2ff0c0a5d:	c5 f8 59 c6                                     	vmulps xmm0,xmm0,xmm6
 5b2ff0c0a61:	49 8d b0 08 01 00 00                            	lea    rsi,[r8+0x108]
 5b2ff0c0a68:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
 5b2ff0c0a6e:	c5 e8 5c d6                                     	vsubps xmm2,xmm2,xmm6
 5b2ff0c0a72:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
 5b2ff0c0a76:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0c0a7b:	c5 c0 59 fe                                     	vmulps xmm7,xmm7,xmm6
 5b2ff0c0a7f:	49 8d b0 04 01 00 00                            	lea    rsi,[r8+0x104]
 5b2ff0c0a86:	c4 62 79 18 1c 3e                               	vbroadcastss xmm11,DWORD PTR [rsi+rdi*1]
 5b2ff0c0a8c:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
 5b2ff0c0a90:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
 5b2ff0c0a95:	c5 b8 59 f6                                     	vmulps xmm6,xmm8,xmm6
 5b2ff0c0a99:	49 8d b0 00 01 00 00                            	lea    rsi,[r8+0x100]
 5b2ff0c0aa0:	c4 62 79 18 04 3e                               	vbroadcastss xmm8,DWORD PTR [rsi+rdi*1]
 5b2ff0c0aa6:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
 5b2ff0c0aaa:	c4 41 48 58 c0                                  	vaddps xmm8,xmm6,xmm8
 5b2ff0c0aaf:	41 8b b4 38 80 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x80]
 5b2ff0c0ab7:	41 83 bc 38 80 00 00 00 00                      	cmp    DWORD PTR [r8+rdi*1+0x80],0x0
 5b2ff0c0ac0:	0f 85 0d 00 00 00                               	jne    0x5b2ff0c0ad3
 5b2ff0c0ac6:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
 5b2ff0c0ace:	e9 83 00 00 00                                  	jmp    0x5b2ff0c0b56
 5b2ff0c0ad3:	49 8d b0 88 00 00 00                            	lea    rsi,[r8+0x88]
 5b2ff0c0ada:	c4 e2 79 18 34 3e                               	vbroadcastss xmm6,DWORD PTR [rsi+rdi*1]
 5b2ff0c0ae0:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0c0ae5:	41 8b b4 38 84 00 00 00                         	mov    esi,DWORD PTR [r8+rdi*1+0x84]
 5b2ff0c0aed:	81 ee 00 02 00 00                               	sub    esi,0x200
 5b2ff0c0af3:	83 fe 07                                        	cmp    esi,0x7
 5b2ff0c0af6:	0f 83 0b 00 00 00                               	jae    0x5b2ff0c0b07
 5b2ff0c0afc:	4c 8d 15 f5 11 00 00                            	lea    r10,[rip+0x11f5]        # 0x5b2ff0c1cf8
 5b2ff0c0b03:	41 ff 24 f2                                     	jmp    QWORD PTR [r10+rsi*8]
 5b2ff0c0b07:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
 5b2ff0c0b0c:	e9 39 00 00 00                                  	jmp    0x5b2ff0c0b4a
 5b2ff0c0b11:	c4 41 48 c2 dc 02                               	vcmpleps xmm11,xmm6,xmm12
 5b2ff0c0b17:	e9 2e 00 00 00                                  	jmp    0x5b2ff0c0b4a
 5b2ff0c0b1c:	c5 18 c2 de 04                                  	vcmpneqps xmm11,xmm12,xmm6
 5b2ff0c0b21:	e9 24 00 00 00                                  	jmp    0x5b2ff0c0b4a
 5b2ff0c0b26:	c4 41 48 c2 dc 01                               	vcmpltps xmm11,xmm6,xmm12
 5b2ff0c0b2c:	e9 19 00 00 00                                  	jmp    0x5b2ff0c0b4a
 5b2ff0c0b31:	c5 18 c2 de 02                                  	vcmpleps xmm11,xmm12,xmm6
 5b2ff0c0b36:	e9 0f 00 00 00                                  	jmp    0x5b2ff0c0b4a
 5b2ff0c0b3b:	c5 18 c2 de 00                                  	vcmpeqps xmm11,xmm12,xmm6
 5b2ff0c0b40:	e9 05 00 00 00                                  	jmp    0x5b2ff0c0b4a
 5b2ff0c0b45:	c5 18 c2 de 01                                  	vcmpltps xmm11,xmm12,xmm6
 5b2ff0c0b4a:	c5 f8 10 b5 a0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x160]
 5b2ff0c0b52:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
 5b2ff0c0b56:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
 5b2ff0c0b5a:	85 f6                                           	test   esi,esi
 5b2ff0c0b5c:	0f 84 8d f2 ff ff                               	je     0x5b2ff0bfdef
 5b2ff0c0b62:	45 8b 4c 38 58                                  	mov    r9d,DWORD PTR [r8+rdi*1+0x58]
 5b2ff0c0b67:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
 5b2ff0c0b6d:	0f 85 15 00 00 00                               	jne    0x5b2ff0c0b88
 5b2ff0c0b73:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
 5b2ff0c0b79:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
 5b2ff0c0b7f:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c0b83:	e9 1f 01 00 00                                  	jmp    0x5b2ff0c0ca7
 5b2ff0c0b88:	41 8b 74 38 48                                  	mov    esi,DWORD PTR [r8+rdi*1+0x48]
 5b2ff0c0b8d:	44 8b 8d 68 ff ff ff                            	mov    r9d,DWORD PTR [rbp-0x98]
 5b2ff0c0b94:	45 33 db                                        	xor    r11d,r11d
 5b2ff0c0b97:	44 3b ce                                        	cmp    r9d,esi
 5b2ff0c0b9a:	41 0f 9c c3                                     	setl   r11b
 5b2ff0c0b9e:	45 8b 64 38 50                                  	mov    r12d,DWORD PTR [r8+rdi*1+0x50]
 5b2ff0c0ba3:	44 03 e6                                        	add    r12d,esi
 5b2ff0c0ba6:	45 33 ff                                        	xor    r15d,r15d
 5b2ff0c0ba9:	45 3b e1                                        	cmp    r12d,r9d
 5b2ff0c0bac:	41 0f 9e c7                                     	setle  r15b
 5b2ff0c0bb0:	45 0b fb                                        	or     r15d,r11d
 5b2ff0c0bb3:	45 8b 5c 38 4c                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x4c]
 5b2ff0c0bb8:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c0bbc:	33 db                                           	xor    ebx,ebx
 5b2ff0c0bbe:	45 3b cb                                        	cmp    r9d,r11d
 5b2ff0c0bc1:	0f 9c c3                                        	setl   bl
 5b2ff0c0bc4:	41 8b cf                                        	mov    ecx,r15d
 5b2ff0c0bc7:	0b cb                                           	or     ecx,ebx
 5b2ff0c0bc9:	83 f1 ff                                        	xor    ecx,0xffffffff
 5b2ff0c0bcc:	41 8b 54 38 54                                  	mov    edx,DWORD PTR [r8+rdi*1+0x54]
 5b2ff0c0bd1:	41 03 d3                                        	add    edx,r11d
 5b2ff0c0bd4:	33 ff                                           	xor    edi,edi
 5b2ff0c0bd6:	44 3b ca                                        	cmp    r9d,edx
 5b2ff0c0bd9:	40 0f 9c c7                                     	setl   dil
 5b2ff0c0bdd:	23 cf                                           	and    ecx,edi
 5b2ff0c0bdf:	f7 d9                                           	neg    ecx
 5b2ff0c0be1:	c5 79 6e d9                                     	vmovd  xmm11,ecx
 5b2ff0c0be5:	c4 42 79 58 db                                  	vpbroadcastd xmm11,xmm11
 5b2ff0c0bea:	44 3b a5 30 ff ff ff                            	cmp    r12d,DWORD PTR [rbp-0xd0]
 5b2ff0c0bf1:	41 0f 9e c4                                     	setle  r12b
 5b2ff0c0bf5:	45 0f b6 e4                                     	movzx  r12d,r12b
 5b2ff0c0bf9:	8b 8d 30 ff ff ff                               	mov    ecx,DWORD PTR [rbp-0xd0]
 5b2ff0c0bff:	3b ce                                           	cmp    ecx,esi
 5b2ff0c0c01:	40 0f 9c c6                                     	setl   sil
 5b2ff0c0c05:	40 0f b6 f6                                     	movzx  esi,sil
 5b2ff0c0c09:	41 0b f4                                        	or     esi,r12d
 5b2ff0c0c0c:	0b de                                           	or     ebx,esi
 5b2ff0c0c0e:	83 f3 ff                                        	xor    ebx,0xffffffff
 5b2ff0c0c11:	23 fb                                           	and    edi,ebx
 5b2ff0c0c13:	f7 df                                           	neg    edi
 5b2ff0c0c15:	c4 63 21 22 df 01                               	vpinsrd xmm11,xmm11,edi,0x1
 5b2ff0c0c1b:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
 5b2ff0c0c21:	45 33 e4                                        	xor    r12d,r12d
 5b2ff0c0c24:	3b fa                                           	cmp    edi,edx
 5b2ff0c0c26:	41 0f 9c c4                                     	setl   r12b
 5b2ff0c0c2a:	41 3b fb                                        	cmp    edi,r11d
 5b2ff0c0c2d:	41 0f 9c c3                                     	setl   r11b
 5b2ff0c0c31:	45 0f b6 db                                     	movzx  r11d,r11b
 5b2ff0c0c35:	45 0b fb                                        	or     r15d,r11d
 5b2ff0c0c38:	41 83 f7 ff                                     	xor    r15d,0xffffffff
 5b2ff0c0c3c:	45 23 fc                                        	and    r15d,r12d
 5b2ff0c0c3f:	41 f7 df                                        	neg    r15d
 5b2ff0c0c42:	c4 43 21 22 df 02                               	vpinsrd xmm11,xmm11,r15d,0x2
 5b2ff0c0c48:	41 0b f3                                        	or     esi,r11d
 5b2ff0c0c4b:	83 f6 ff                                        	xor    esi,0xffffffff
 5b2ff0c0c4e:	44 23 e6                                        	and    r12d,esi
 5b2ff0c0c51:	41 f7 dc                                        	neg    r12d
 5b2ff0c0c54:	c4 43 21 22 dc 03                               	vpinsrd xmm11,xmm11,r12d,0x3
 5b2ff0c0c5a:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
 5b2ff0c0c5e:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
 5b2ff0c0c62:	85 f6                                           	test   esi,esi
 5b2ff0c0c64:	0f 85 3d 00 00 00                               	jne    0x5b2ff0c0ca7
 5b2ff0c0c6a:	4d 8b e0                                        	mov    r12,r8
 5b2ff0c0c6d:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0c0c71:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0c0c76:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0c0c7b:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0c0c81:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0c0c87:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0c0c8c:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0c0c94:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0c0c9c:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0c0ca2:	e9 c3 0a 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0c0ca7:	85 c0                                           	test   eax,eax
 5b2ff0c0ca9:	0f 85 16 00 00 00                               	jne    0x5b2ff0c0cc5
 5b2ff0c0caf:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
 5b2ff0c0cb6:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0c0cba:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
 5b2ff0c0cc0:	e9 fe 01 00 00                                  	jmp    0x5b2ff0c0ec3
 5b2ff0c0cc5:	83 bd 20 ff ff ff 00                            	cmp    DWORD PTR [rbp-0xe0],0x0
 5b2ff0c0ccc:	0f 85 42 01 00 00                               	jne    0x5b2ff0c0e14
 5b2ff0c0cd2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0c0cd7:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0c0cdb:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
 5b2ff0c0ce0:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
 5b2ff0c0ce7:	43 8d 04 bc                                     	lea    eax,[r12+r15*4]
 5b2ff0c0ceb:	c4 c1 7b 10 14 00                               	vmovsd xmm2,QWORD PTR [r8+rax*1]
 5b2ff0c0cf1:	3b bd 00 ff ff ff                               	cmp    edi,DWORD PTR [rbp-0x100]
 5b2ff0c0cf7:	0f 8c 10 00 00 00                               	jl     0x5b2ff0c0d0d
 5b2ff0c0cfd:	c4 c1 79 28 db                                  	vmovapd xmm3,xmm11
 5b2ff0c0d02:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
 5b2ff0c0d08:	e9 10 00 00 00                                  	jmp    0x5b2ff0c0d1d
 5b2ff0c0d0d:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
 5b2ff0c0d13:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
 5b2ff0c0d17:	c4 81 7b 10 1c 20                               	vmovsd xmm3,QWORD PTR [r8+r12*1]
 5b2ff0c0d1d:	c5 e9 6c d3                                     	vpunpcklqdq xmm2,xmm2,xmm3
 5b2ff0c0d21:	47 8b 64 18 6c                                  	mov    r12d,DWORD PTR [r8+r11*1+0x6c]
 5b2ff0c0d26:	41 81 ec 00 02 00 00                            	sub    r12d,0x200
 5b2ff0c0d2d:	41 83 fc 07                                     	cmp    r12d,0x7
 5b2ff0c0d31:	0f 83 0b 00 00 00                               	jae    0x5b2ff0c0d42
 5b2ff0c0d37:	4c 8d 15 82 0f 00 00                            	lea    r10,[rip+0xf82]        # 0x5b2ff0c1cc0
 5b2ff0c0d3e:	43 ff 24 e2                                     	jmp    QWORD PTR [r10+r12*8]
 5b2ff0c0d42:	c4 41 21 76 db                                  	vpcmpeqd xmm11,xmm11,xmm11
 5b2ff0c0d47:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
 5b2ff0c0d4f:	e9 74 00 00 00                                  	jmp    0x5b2ff0c0dc8
 5b2ff0c0d54:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
 5b2ff0c0d5c:	c5 68 c2 db 02                                  	vcmpleps xmm11,xmm2,xmm3
 5b2ff0c0d61:	e9 62 00 00 00                                  	jmp    0x5b2ff0c0dc8
 5b2ff0c0d66:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
 5b2ff0c0d6e:	c5 60 c2 da 04                                  	vcmpneqps xmm11,xmm3,xmm2
 5b2ff0c0d73:	e9 50 00 00 00                                  	jmp    0x5b2ff0c0dc8
 5b2ff0c0d78:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
 5b2ff0c0d80:	c5 68 c2 db 01                                  	vcmpltps xmm11,xmm2,xmm3
 5b2ff0c0d85:	e9 3e 00 00 00                                  	jmp    0x5b2ff0c0dc8
 5b2ff0c0d8a:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
 5b2ff0c0d92:	c5 60 c2 da 02                                  	vcmpleps xmm11,xmm3,xmm2
 5b2ff0c0d97:	e9 2c 00 00 00                                  	jmp    0x5b2ff0c0dc8
 5b2ff0c0d9c:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
 5b2ff0c0da4:	c5 60 c2 da 00                                  	vcmpeqps xmm11,xmm3,xmm2
 5b2ff0c0da9:	e9 1a 00 00 00                                  	jmp    0x5b2ff0c0dc8
 5b2ff0c0dae:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
 5b2ff0c0db6:	c5 60 c2 da 01                                  	vcmpltps xmm11,xmm3,xmm2
 5b2ff0c0dbb:	e9 08 00 00 00                                  	jmp    0x5b2ff0c0dc8
 5b2ff0c0dc0:	c5 f8 10 9d f0 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x110]
 5b2ff0c0dc8:	c5 a1 db f6                                     	vpand  xmm6,xmm11,xmm6
 5b2ff0c0dcc:	c5 f8 50 f6                                     	vmovmskps esi,xmm6
 5b2ff0c0dd0:	85 f6                                           	test   esi,esi
 5b2ff0c0dd2:	0f 85 4d 00 00 00                               	jne    0x5b2ff0c0e25
 5b2ff0c0dd8:	4d 8b e0                                        	mov    r12,r8
 5b2ff0c0ddb:	4d 8b c3                                        	mov    r8,r11
 5b2ff0c0dde:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0c0de3:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0c0de8:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0c0dee:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0c0df4:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0c0df9:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0c0e01:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0c0e09:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0c0e0f:	e9 56 09 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0c0e14:	44 8b bd c8 fe ff ff                            	mov    r15d,DWORD PTR [rbp-0x138]
 5b2ff0c0e1b:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0c0e1f:	8b 85 18 ff ff ff                               	mov    eax,DWORD PTR [rbp-0xe8]
 5b2ff0c0e25:	47 8b 64 18 70                                  	mov    r12d,DWORD PTR [r8+r11*1+0x70]
 5b2ff0c0e2a:	43 83 7c 18 70 00                               	cmp    DWORD PTR [r8+r11*1+0x70],0x0
 5b2ff0c0e30:	0f 84 8d 00 00 00                               	je     0x5b2ff0c0ec3
 5b2ff0c0e36:	40 f6 c6 01                                     	test   sil,0x1
 5b2ff0c0e3a:	0f 85 0d 00 00 00                               	jne    0x5b2ff0c0e4d
 5b2ff0c0e40:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
 5b2ff0c0e48:	e9 1b 00 00 00                                  	jmp    0x5b2ff0c0e68
 5b2ff0c0e4d:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
 5b2ff0c0e52:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
 5b2ff0c0e56:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
 5b2ff0c0e5e:	c5 78 28 de                                     	vmovaps xmm11,xmm6
 5b2ff0c0e62:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
 5b2ff0c0e68:	40 f6 c6 02                                     	test   sil,0x2
 5b2ff0c0e6c:	0f 84 14 00 00 00                               	je     0x5b2ff0c0e86
 5b2ff0c0e72:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
 5b2ff0c0e77:	47 8d 24 bc                                     	lea    r12d,[r12+r15*4]
 5b2ff0c0e7b:	c5 7a 16 de                                     	vmovshdup xmm11,xmm6
 5b2ff0c0e7f:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
 5b2ff0c0e86:	40 f6 c6 04                                     	test   sil,0x4
 5b2ff0c0e8a:	0f 84 14 00 00 00                               	je     0x5b2ff0c0ea4
 5b2ff0c0e90:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
 5b2ff0c0e95:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
 5b2ff0c0e99:	c5 79 70 de 02                                  	vpshufd xmm11,xmm6,0x2
 5b2ff0c0e9e:	c4 01 7a 11 1c 20                               	vmovss DWORD PTR [r8+r12*1],xmm11
 5b2ff0c0ea4:	40 f6 c6 08                                     	test   sil,0x8
 5b2ff0c0ea8:	0f 84 15 00 00 00                               	je     0x5b2ff0c0ec3
 5b2ff0c0eae:	47 8b 64 18 0c                                  	mov    r12d,DWORD PTR [r8+r11*1+0xc]
 5b2ff0c0eb3:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
 5b2ff0c0eb7:	c5 79 70 de 03                                  	vpshufd xmm11,xmm6,0x3
 5b2ff0c0ebc:	c4 01 7a 11 5c 20 04                            	vmovss DWORD PTR [r8+r12*1+0x4],xmm11
 5b2ff0c0ec3:	47 8b 64 18 74                                  	mov    r12d,DWORD PTR [r8+r11*1+0x74]
 5b2ff0c0ec8:	43 83 7c 18 74 00                               	cmp    DWORD PTR [r8+r11*1+0x74],0x0
 5b2ff0c0ece:	0f 85 0d 00 00 00                               	jne    0x5b2ff0c0ee1
 5b2ff0c0ed4:	46 8d 24 bd 00 00 00 00                         	lea    r12d,[r15*4+0x0]
 5b2ff0c0edc:	e9 d6 02 00 00                                  	jmp    0x5b2ff0c11b7
 5b2ff0c0ee1:	47 8b 64 18 78                                  	mov    r12d,DWORD PTR [r8+r11*1+0x78]
 5b2ff0c0ee6:	41 8d 9c 24 fe fc ff ff                         	lea    ebx,[r12-0x302]
 5b2ff0c0eee:	33 d2                                           	xor    edx,edx
 5b2ff0c0ef0:	83 fb 04                                        	cmp    ebx,0x4
 5b2ff0c0ef3:	0f 93 c2                                        	setae  dl
 5b2ff0c0ef6:	33 c9                                           	xor    ecx,ecx
 5b2ff0c0ef8:	41 83 fc 01                                     	cmp    r12d,0x1
 5b2ff0c0efc:	0f 97 c1                                        	seta   cl
 5b2ff0c0eff:	48 89 b5 20 ff ff ff                            	mov    QWORD PTR [rbp-0xe0],rsi
 5b2ff0c0f06:	85 ca                                           	test   edx,ecx
 5b2ff0c0f08:	0f 85 b9 05 00 00                               	jne    0x5b2ff0c14c7
 5b2ff0c0f0e:	43 8b 54 18 7c                                  	mov    edx,DWORD PTR [r8+r11*1+0x7c]
 5b2ff0c0f13:	8d 8a fe fc ff ff                               	lea    ecx,[rdx-0x302]
 5b2ff0c0f19:	45 33 c9                                        	xor    r9d,r9d
 5b2ff0c0f1c:	83 f9 04                                        	cmp    ecx,0x4
 5b2ff0c0f1f:	41 0f 93 c1                                     	setae  r9b
 5b2ff0c0f23:	33 f6                                           	xor    esi,esi
 5b2ff0c0f25:	83 fa 01                                        	cmp    edx,0x1
 5b2ff0c0f28:	40 0f 97 c6                                     	seta   sil
 5b2ff0c0f2c:	41 85 f1                                        	test   r9d,esi
 5b2ff0c0f2f:	0f 85 88 05 00 00                               	jne    0x5b2ff0c14bd
 5b2ff0c0f35:	42 8d 34 bd 00 00 00 00                         	lea    esi,[r15*4+0x0]
 5b2ff0c0f3d:	47 8b 4c 18 08                                  	mov    r9d,DWORD PTR [r8+r11*1+0x8]
 5b2ff0c0f42:	47 8d 3c b9                                     	lea    r15d,[r9+r15*4]
 5b2ff0c0f46:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
 5b2ff0c0f4c:	44 8b bd 00 ff ff ff                            	mov    r15d,DWORD PTR [rbp-0x100]
 5b2ff0c0f53:	44 3b ff                                        	cmp    r15d,edi
 5b2ff0c0f56:	0f 8e 0f 00 00 00                               	jle    0x5b2ff0c0f6b
 5b2ff0c0f5c:	45 8d 0c 81                                     	lea    r9d,[r9+rax*4]
 5b2ff0c0f60:	c4 01 7b 10 1c 08                               	vmovsd xmm11,QWORD PTR [r8+r9*1]
 5b2ff0c0f66:	e9 05 00 00 00                                  	jmp    0x5b2ff0c0f70
 5b2ff0c0f6b:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0c0f70:	c4 c1 49 6c f3                                  	vpunpcklqdq xmm6,xmm6,xmm11
 5b2ff0c0f75:	49 ba 03 8f 8f 8f 07 8f 8f 8f                   	movabs r10,0x8f8f8f078f8f8f03
 5b2ff0c0f7f:	c4 41 f9 6e da                                  	vmovq  xmm11,r10
 5b2ff0c0f84:	49 ba 0b 8f 8f 8f 0f 8f 8f 8f                   	movabs r10,0x8f8f8f0f8f8f8f0b
 5b2ff0c0f8e:	c4 43 a1 22 da 01                               	vpinsrq xmm11,xmm11,r10,0x1
 5b2ff0c0f94:	c4 42 49 00 db                                  	vpshufb xmm11,xmm6,xmm11
 5b2ff0c0f99:	c4 41 78 5b db                                  	vcvtdq2ps xmm11,xmm11
 5b2ff0c0f9e:	4c 8b 15 cd ca ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffffcacd]        # 0x5b2ff0bda72
 5b2ff0c0fa5:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff0c0faa:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff0c0fae:	c5 20 59 da                                     	vmulps xmm11,xmm11,xmm2
 5b2ff0c0fb2:	49 ba 02 8f 8f 8f 06 8f 8f 8f                   	movabs r10,0x8f8f8f068f8f8f02
 5b2ff0c0fbc:	c4 c1 f9 6e da                                  	vmovq  xmm3,r10
 5b2ff0c0fc1:	49 ba 0a 8f 8f 8f 0e 8f 8f 8f                   	movabs r10,0x8f8f8f0e8f8f8f0a
 5b2ff0c0fcb:	c4 c3 e1 22 da 01                               	vpinsrq xmm3,xmm3,r10,0x1
 5b2ff0c0fd1:	c4 e2 49 00 db                                  	vpshufb xmm3,xmm6,xmm3
 5b2ff0c0fd6:	c5 f8 5b db                                     	vcvtdq2ps xmm3,xmm3
 5b2ff0c0fda:	49 ba 01 8f 8f 8f 05 8f 8f 8f                   	movabs r10,0x8f8f8f058f8f8f01
 5b2ff0c0fe4:	c4 c1 f9 6e ea                                  	vmovq  xmm5,r10
 5b2ff0c0fe9:	49 ba 09 8f 8f 8f 0d 8f 8f 8f                   	movabs r10,0x8f8f8f0d8f8f8f09
 5b2ff0c0ff3:	c4 c3 d1 22 ea 01                               	vpinsrq xmm5,xmm5,r10,0x1
 5b2ff0c0ff9:	c4 e2 49 00 ed                                  	vpshufb xmm5,xmm6,xmm5
 5b2ff0c0ffe:	c5 f8 5b ed                                     	vcvtdq2ps xmm5,xmm5
 5b2ff0c1002:	49 ba 00 8f 8f 8f 04 8f 8f 8f                   	movabs r10,0x8f8f8f048f8f8f00
 5b2ff0c100c:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0c1011:	49 ba 08 8f 8f 8f 0c 8f 8f 8f                   	movabs r10,0x8f8f8f0c8f8f8f08
 5b2ff0c101b:	c4 43 b1 22 ca 01                               	vpinsrq xmm9,xmm9,r10,0x1
 5b2ff0c1021:	c4 c2 49 00 f1                                  	vpshufb xmm6,xmm6,xmm9
 5b2ff0c1026:	c5 f8 5b f6                                     	vcvtdq2ps xmm6,xmm6
 5b2ff0c102a:	83 fb 02                                        	cmp    ebx,0x2
 5b2ff0c102d:	0f 8c 14 00 00 00                               	jl     0x5b2ff0c1047
 5b2ff0c1033:	0f 84 69 00 00 00                               	je     0x5b2ff0c10a2
 5b2ff0c1039:	83 fb 03                                        	cmp    ebx,0x3
 5b2ff0c103c:	0f 84 45 00 00 00                               	je     0x5b2ff0c1087
 5b2ff0c1042:	e9 17 00 00 00                                  	jmp    0x5b2ff0c105e
 5b2ff0c1047:	83 fb 00                                        	cmp    ebx,0x0
 5b2ff0c104a:	0f 84 77 00 00 00                               	je     0x5b2ff0c10c7
 5b2ff0c1050:	83 fb 01                                        	cmp    ebx,0x1
 5b2ff0c1053:	0f 84 53 00 00 00                               	je     0x5b2ff0c10ac
 5b2ff0c1059:	e9 00 00 00 00                                  	jmp    0x5b2ff0c105e
 5b2ff0c105e:	45 85 e4                                        	test   r12d,r12d
 5b2ff0c1061:	0f 85 0a 00 00 00                               	jne    0x5b2ff0c1071
 5b2ff0c1067:	c4 41 31 ef c9                                  	vpxor  xmm9,xmm9,xmm9
 5b2ff0c106c:	e9 5b 00 00 00                                  	jmp    0x5b2ff0c10cc
 5b2ff0c1071:	4c 8b 15 59 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9559]        # 0x5b2ff0ba5d1
 5b2ff0c1078:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0c107d:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0c1082:	e9 45 00 00 00                                  	jmp    0x5b2ff0c10cc
 5b2ff0c1087:	4c 8b 15 43 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff9543]        # 0x5b2ff0ba5d1
 5b2ff0c108e:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0c1093:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0c1098:	c4 41 30 5c cb                                  	vsubps xmm9,xmm9,xmm11
 5b2ff0c109d:	e9 2a 00 00 00                                  	jmp    0x5b2ff0c10cc
 5b2ff0c10a2:	c4 41 79 28 cb                                  	vmovapd xmm9,xmm11
 5b2ff0c10a7:	e9 20 00 00 00                                  	jmp    0x5b2ff0c10cc
 5b2ff0c10ac:	4c 8b 15 1e 95 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff951e]        # 0x5b2ff0ba5d1
 5b2ff0c10b3:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0c10b8:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0c10bd:	c4 41 30 5c cc                                  	vsubps xmm9,xmm9,xmm12
 5b2ff0c10c2:	e9 05 00 00 00                                  	jmp    0x5b2ff0c10cc
 5b2ff0c10c7:	c4 41 79 28 cc                                  	vmovapd xmm9,xmm12
 5b2ff0c10cc:	c5 e0 59 da                                     	vmulps xmm3,xmm3,xmm2
 5b2ff0c10d0:	c5 d0 59 ea                                     	vmulps xmm5,xmm5,xmm2
 5b2ff0c10d4:	c5 c8 59 f2                                     	vmulps xmm6,xmm6,xmm2
 5b2ff0c10d8:	83 f9 02                                        	cmp    ecx,0x2
 5b2ff0c10db:	0f 8c 14 00 00 00                               	jl     0x5b2ff0c10f5
 5b2ff0c10e1:	0f 84 5e 00 00 00                               	je     0x5b2ff0c1145
 5b2ff0c10e7:	83 f9 03                                        	cmp    ecx,0x3
 5b2ff0c10ea:	0f 84 3a 00 00 00                               	je     0x5b2ff0c112a
 5b2ff0c10f0:	e9 17 00 00 00                                  	jmp    0x5b2ff0c110c
 5b2ff0c10f5:	83 f9 00                                        	cmp    ecx,0x0
 5b2ff0c10f8:	0f 84 6c 00 00 00                               	je     0x5b2ff0c116a
 5b2ff0c10fe:	83 f9 01                                        	cmp    ecx,0x1
 5b2ff0c1101:	0f 84 48 00 00 00                               	je     0x5b2ff0c114f
 5b2ff0c1107:	e9 00 00 00 00                                  	jmp    0x5b2ff0c110c
 5b2ff0c110c:	85 d2                                           	test   edx,edx
 5b2ff0c110e:	0f 84 5b 00 00 00                               	je     0x5b2ff0c116f
 5b2ff0c1114:	4c 8b 15 b6 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94b6]        # 0x5b2ff0ba5d1
 5b2ff0c111b:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0c1120:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0c1125:	e9 45 00 00 00                                  	jmp    0x5b2ff0c116f
 5b2ff0c112a:	4c 8b 15 a0 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff94a0]        # 0x5b2ff0ba5d1
 5b2ff0c1131:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0c1136:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0c113b:	c4 41 28 5c d3                                  	vsubps xmm10,xmm10,xmm11
 5b2ff0c1140:	e9 2a 00 00 00                                  	jmp    0x5b2ff0c116f
 5b2ff0c1145:	c4 41 79 28 d3                                  	vmovapd xmm10,xmm11
 5b2ff0c114a:	e9 20 00 00 00                                  	jmp    0x5b2ff0c116f
 5b2ff0c114f:	4c 8b 15 7b 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff947b]        # 0x5b2ff0ba5d1
 5b2ff0c1156:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0c115b:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0c1160:	c4 41 28 5c d4                                  	vsubps xmm10,xmm10,xmm12
 5b2ff0c1165:	e9 05 00 00 00                                  	jmp    0x5b2ff0c116f
 5b2ff0c116a:	c4 41 79 28 d4                                  	vmovapd xmm10,xmm12
 5b2ff0c116f:	c4 41 18 59 e1                                  	vmulps xmm12,xmm12,xmm9
 5b2ff0c1174:	c4 41 20 59 da                                  	vmulps xmm11,xmm11,xmm10
 5b2ff0c1179:	c4 41 18 58 e3                                  	vaddps xmm12,xmm12,xmm11
 5b2ff0c117e:	c4 c1 78 59 c1                                  	vmulps xmm0,xmm0,xmm9
 5b2ff0c1183:	c4 41 60 59 da                                  	vmulps xmm11,xmm3,xmm10
 5b2ff0c1188:	c4 c1 78 58 c3                                  	vaddps xmm0,xmm0,xmm11
 5b2ff0c118d:	c4 c1 40 59 f9                                  	vmulps xmm7,xmm7,xmm9
 5b2ff0c1192:	c4 41 50 59 da                                  	vmulps xmm11,xmm5,xmm10
 5b2ff0c1197:	c4 c1 40 58 fb                                  	vaddps xmm7,xmm7,xmm11
 5b2ff0c119c:	c4 41 38 59 c1                                  	vmulps xmm8,xmm8,xmm9
 5b2ff0c11a1:	c4 c1 48 59 f2                                  	vmulps xmm6,xmm6,xmm10
 5b2ff0c11a6:	c5 38 58 c6                                     	vaddps xmm8,xmm8,xmm6
 5b2ff0c11aa:	44 8b e6                                        	mov    r12d,esi
 5b2ff0c11ad:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
 5b2ff0c11b3:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c11b7:	c5 c9 ef f6                                     	vpxor  xmm6,xmm6,xmm6
 5b2ff0c11bb:	4c 8b 15 0f 94 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff940f]        # 0x5b2ff0ba5d1
 5b2ff0c11c2:	c4 41 f9 6e ca                                  	vmovq  xmm9,r10
 5b2ff0c11c7:	c4 41 31 6c c9                                  	vpunpcklqdq xmm9,xmm9,xmm9
 5b2ff0c11cc:	4c 8b 15 fe 93 ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff93fe]        # 0x5b2ff0ba5d1
 5b2ff0c11d3:	c4 41 f9 6e d2                                  	vmovq  xmm10,r10
 5b2ff0c11d8:	c4 41 29 6c d2                                  	vpunpcklqdq xmm10,xmm10,xmm10
 5b2ff0c11dd:	c4 41 28 c2 d8 01                               	vcmpltps xmm11,xmm10,xmm8
 5b2ff0c11e3:	c4 41 21 df f8                                  	vpandn xmm15,xmm11,xmm8
 5b2ff0c11e8:	c4 41 31 db c3                                  	vpand  xmm8,xmm9,xmm11
 5b2ff0c11ed:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
 5b2ff0c11f2:	c4 41 21 ef db                                  	vpxor  xmm11,xmm11,xmm11
 5b2ff0c11f7:	c4 c1 38 c2 d3 01                               	vcmpltps xmm2,xmm8,xmm11
 5b2ff0c11fd:	c4 41 68 55 c0                                  	vandnps xmm8,xmm2,xmm8
 5b2ff0c1202:	49 ba 00 00 7f 43 00 00 7f 43                   	movabs r10,0x437f0000437f0000
 5b2ff0c120c:	c4 c1 f9 6e d2                                  	vmovq  xmm2,r10
 5b2ff0c1211:	c5 e9 6c d2                                     	vpunpcklqdq xmm2,xmm2,xmm2
 5b2ff0c1215:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
 5b2ff0c1219:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
 5b2ff0c121f:	4c 8b 15 f8 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7df8]        # 0x5b2ff0b901e
 5b2ff0c1226:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0c122c:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
 5b2ff0c1231:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0c1237:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
 5b2ff0c123c:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
 5b2ff0c1241:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
 5b2ff0c1246:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
 5b2ff0c124b:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
 5b2ff0c1251:	c5 a8 c2 df 01                                  	vcmpltps xmm3,xmm10,xmm7
 5b2ff0c1256:	c5 61 df ff                                     	vpandn xmm15,xmm3,xmm7
 5b2ff0c125a:	c5 b1 db fb                                     	vpand  xmm7,xmm9,xmm3
 5b2ff0c125e:	c4 c1 41 eb ff                                  	vpor   xmm7,xmm7,xmm15
 5b2ff0c1263:	c4 c1 40 c2 db 01                               	vcmpltps xmm3,xmm7,xmm11
 5b2ff0c1269:	c5 e0 55 ff                                     	vandnps xmm7,xmm3,xmm7
 5b2ff0c126d:	c5 c0 59 fa                                     	vmulps xmm7,xmm7,xmm2
 5b2ff0c1271:	c4 e3 79 08 ff 08                               	vroundps xmm7,xmm7,0x8
 5b2ff0c1277:	4c 8b 15 a0 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7da0]        # 0x5b2ff0b901e
 5b2ff0c127e:	c5 40 c2 ff 00                                  	vcmpeqps xmm15,xmm7,xmm7
 5b2ff0c1283:	c4 c1 40 54 ff                                  	vandps xmm7,xmm7,xmm15
 5b2ff0c1288:	c4 41 40 c2 3a 0d                               	vcmpgeps xmm15,xmm7,XMMWORD PTR [r10]
 5b2ff0c128e:	c5 fa 5b ff                                     	vcvttps2dq xmm7,xmm7
 5b2ff0c1292:	c4 c1 41 ef ff                                  	vpxor  xmm7,xmm7,xmm15
 5b2ff0c1297:	c5 c1 6b ff                                     	vpackssdw xmm7,xmm7,xmm7
 5b2ff0c129b:	c5 c1 67 ff                                     	vpackuswb xmm7,xmm7,xmm7
 5b2ff0c129f:	c4 e3 41 0e fe fc                               	vpblendw xmm7,xmm7,xmm6,0xfc
 5b2ff0c12a5:	c5 b9 60 ff                                     	vpunpcklbw xmm7,xmm8,xmm7
 5b2ff0c12a9:	c5 28 c2 c0 01                                  	vcmpltps xmm8,xmm10,xmm0
 5b2ff0c12ae:	c5 39 df f8                                     	vpandn xmm15,xmm8,xmm0
 5b2ff0c12b2:	c4 c1 31 db c0                                  	vpand  xmm0,xmm9,xmm8
 5b2ff0c12b7:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0c12bc:	c4 41 78 c2 c3 01                               	vcmpltps xmm8,xmm0,xmm11
 5b2ff0c12c2:	c5 b8 55 c0                                     	vandnps xmm0,xmm8,xmm0
 5b2ff0c12c6:	c5 f8 59 c2                                     	vmulps xmm0,xmm0,xmm2
 5b2ff0c12ca:	c4 e3 79 08 c0 08                               	vroundps xmm0,xmm0,0x8
 5b2ff0c12d0:	4c 8b 15 47 7d ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7d47]        # 0x5b2ff0b901e
 5b2ff0c12d7:	c5 78 c2 f8 00                                  	vcmpeqps xmm15,xmm0,xmm0
 5b2ff0c12dc:	c4 c1 78 54 c7                                  	vandps xmm0,xmm0,xmm15
 5b2ff0c12e1:	c4 41 78 c2 3a 0d                               	vcmpgeps xmm15,xmm0,XMMWORD PTR [r10]
 5b2ff0c12e7:	c5 fa 5b c0                                     	vcvttps2dq xmm0,xmm0
 5b2ff0c12eb:	c4 c1 79 ef c7                                  	vpxor  xmm0,xmm0,xmm15
 5b2ff0c12f0:	c5 f9 6b c0                                     	vpackssdw xmm0,xmm0,xmm0
 5b2ff0c12f4:	c5 f9 67 c0                                     	vpackuswb xmm0,xmm0,xmm0
 5b2ff0c12f8:	c4 e3 79 0e c6 fc                               	vpblendw xmm0,xmm0,xmm6,0xfc
 5b2ff0c12fe:	c4 41 28 c2 c4 01                               	vcmpltps xmm8,xmm10,xmm12
 5b2ff0c1304:	c4 41 39 df fc                                  	vpandn xmm15,xmm8,xmm12
 5b2ff0c1309:	c4 41 31 db c0                                  	vpand  xmm8,xmm9,xmm8
 5b2ff0c130e:	c4 41 39 eb c7                                  	vpor   xmm8,xmm8,xmm15
 5b2ff0c1313:	c4 41 38 c2 cb 01                               	vcmpltps xmm9,xmm8,xmm11
 5b2ff0c1319:	c4 41 30 55 c0                                  	vandnps xmm8,xmm9,xmm8
 5b2ff0c131e:	c5 38 59 c2                                     	vmulps xmm8,xmm8,xmm2
 5b2ff0c1322:	c4 43 79 08 c0 08                               	vroundps xmm8,xmm8,0x8
 5b2ff0c1328:	4c 8b 15 ef 7c ff ff                            	mov    r10,QWORD PTR [rip+0xffffffffffff7cef]        # 0x5b2ff0b901e
 5b2ff0c132f:	c4 41 38 c2 f8 00                               	vcmpeqps xmm15,xmm8,xmm8
 5b2ff0c1335:	c4 41 38 54 c7                                  	vandps xmm8,xmm8,xmm15
 5b2ff0c133a:	c4 41 38 c2 3a 0d                               	vcmpgeps xmm15,xmm8,XMMWORD PTR [r10]
 5b2ff0c1340:	c4 41 7a 5b c0                                  	vcvttps2dq xmm8,xmm8
 5b2ff0c1345:	c4 41 39 ef c7                                  	vpxor  xmm8,xmm8,xmm15
 5b2ff0c134a:	c4 41 39 6b c0                                  	vpackssdw xmm8,xmm8,xmm8
 5b2ff0c134f:	c4 41 39 67 c0                                  	vpackuswb xmm8,xmm8,xmm8
 5b2ff0c1354:	c4 63 39 0e c6 fc                               	vpblendw xmm8,xmm8,xmm6,0xfc
 5b2ff0c135a:	c4 c1 79 60 c0                                  	vpunpcklbw xmm0,xmm0,xmm8
 5b2ff0c135f:	c5 c1 61 c0                                     	vpunpcklwd xmm0,xmm7,xmm0
 5b2ff0c1363:	c4 81 7a 6f bc 18 20 05 00 00                   	vmovdqu xmm7,XMMWORD PTR [r8+r11*1+0x520]
 5b2ff0c136d:	c5 c1 76 fe                                     	vpcmpeqd xmm7,xmm7,xmm6
 5b2ff0c1371:	c4 c3 79 16 ff 01                               	vpextrd r15d,xmm7,0x1
 5b2ff0c1377:	bb 00 ff 00 00                                  	mov    ebx,0xff00
 5b2ff0c137c:	33 d2                                           	xor    edx,edx
 5b2ff0c137e:	41 f6 c7 01                                     	test   r15b,0x1
 5b2ff0c1382:	0f 45 da                                        	cmovne ebx,edx
 5b2ff0c1385:	c4 c1 79 7e ff                                  	vmovd  r15d,xmm7
 5b2ff0c138a:	b9 ff 00 00 00                                  	mov    ecx,0xff
 5b2ff0c138f:	41 f6 c7 01                                     	test   r15b,0x1
 5b2ff0c1393:	0f 45 ca                                        	cmovne ecx,edx
 5b2ff0c1396:	0b cb                                           	or     ecx,ebx
 5b2ff0c1398:	c4 c3 79 16 ff 02                               	vpextrd r15d,xmm7,0x2
 5b2ff0c139e:	bb 00 00 ff 00                                  	mov    ebx,0xff0000
 5b2ff0c13a3:	41 f6 c7 01                                     	test   r15b,0x1
 5b2ff0c13a7:	0f 45 da                                        	cmovne ebx,edx
 5b2ff0c13aa:	0b d9                                           	or     ebx,ecx
 5b2ff0c13ac:	c4 c3 79 16 ff 03                               	vpextrd r15d,xmm7,0x3
 5b2ff0c13b2:	b9 00 00 00 ff                                  	mov    ecx,0xff000000
 5b2ff0c13b7:	41 f6 c7 01                                     	test   r15b,0x1
 5b2ff0c13bb:	0f 45 ca                                        	cmovne ecx,edx
 5b2ff0c13be:	0b cb                                           	or     ecx,ebx
 5b2ff0c13c0:	c5 f9 6e f9                                     	vmovd  xmm7,ecx
 5b2ff0c13c4:	c5 f9 70 ff 00                                  	vpshufd xmm7,xmm7,0x0
 5b2ff0c13c9:	44 8b fe                                        	mov    r15d,esi
 5b2ff0c13cc:	41 83 e7 01                                     	and    r15d,0x1
 5b2ff0c13d0:	41 f7 df                                        	neg    r15d
 5b2ff0c13d3:	c4 41 79 6e c7                                  	vmovd  xmm8,r15d
 5b2ff0c13d8:	c4 42 79 58 c0                                  	vpbroadcastd xmm8,xmm8
 5b2ff0c13dd:	44 8b fe                                        	mov    r15d,esi
 5b2ff0c13e0:	41 c1 e7 1e                                     	shl    r15d,0x1e
 5b2ff0c13e4:	41 c1 ff 1f                                     	sar    r15d,0x1f
 5b2ff0c13e8:	c4 43 39 22 c7 01                               	vpinsrd xmm8,xmm8,r15d,0x1
 5b2ff0c13ee:	44 8b fe                                        	mov    r15d,esi
 5b2ff0c13f1:	41 c1 e7 1d                                     	shl    r15d,0x1d
 5b2ff0c13f5:	41 c1 ff 1f                                     	sar    r15d,0x1f
 5b2ff0c13f9:	c4 43 39 22 c7 02                               	vpinsrd xmm8,xmm8,r15d,0x2
 5b2ff0c13ff:	44 8b fe                                        	mov    r15d,esi
 5b2ff0c1402:	41 c1 e7 1c                                     	shl    r15d,0x1c
 5b2ff0c1406:	41 c1 ff 1f                                     	sar    r15d,0x1f
 5b2ff0c140a:	c4 43 39 22 c7 03                               	vpinsrd xmm8,xmm8,r15d,0x3
 5b2ff0c1410:	c4 c1 41 db f8                                  	vpand  xmm7,xmm7,xmm8
 5b2ff0c1415:	47 8b 7c 18 08                                  	mov    r15d,DWORD PTR [r8+r11*1+0x8]
 5b2ff0c141a:	45 03 e7                                        	add    r12d,r15d
 5b2ff0c141d:	c4 01 7b 10 04 20                               	vmovsd xmm8,QWORD PTR [r8+r12*1]
 5b2ff0c1423:	8b 9d 00 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x100]
 5b2ff0c1429:	3b df                                           	cmp    ebx,edi
 5b2ff0c142b:	0f 8e 0a 00 00 00                               	jle    0x5b2ff0c143b
 5b2ff0c1431:	45 8d 3c 87                                     	lea    r15d,[r15+rax*4]
 5b2ff0c1435:	c4 81 7b 10 34 38                               	vmovsd xmm6,QWORD PTR [r8+r15*1]
 5b2ff0c143b:	c5 b9 6c f6                                     	vpunpcklqdq xmm6,xmm8,xmm6
 5b2ff0c143f:	c5 41 df fe                                     	vpandn xmm15,xmm7,xmm6
 5b2ff0c1443:	c5 f9 db c7                                     	vpand  xmm0,xmm0,xmm7
 5b2ff0c1447:	c4 c1 79 eb c7                                  	vpor   xmm0,xmm0,xmm15
 5b2ff0c144c:	40 f6 c6 03                                     	test   sil,0x3
 5b2ff0c1450:	0f 84 06 00 00 00                               	je     0x5b2ff0c145c
 5b2ff0c1456:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
 5b2ff0c145c:	3b df                                           	cmp    ebx,edi
 5b2ff0c145e:	0f 8e 74 f9 ff ff                               	jle    0x5b2ff0c0dd8
 5b2ff0c1464:	40 f6 c6 0c                                     	test   sil,0xc
 5b2ff0c1468:	0f 84 6a f9 ff ff                               	je     0x5b2ff0c0dd8
 5b2ff0c146e:	47 8b 64 18 08                                  	mov    r12d,DWORD PTR [r8+r11*1+0x8]
 5b2ff0c1473:	45 8d 24 84                                     	lea    r12d,[r12+rax*4]
 5b2ff0c1477:	c5 f9 6d c0                                     	vpunpckhqdq xmm0,xmm0,xmm0
 5b2ff0c147b:	c4 81 78 13 04 20                               	vmovlps QWORD PTR [r8+r12*1],xmm0
 5b2ff0c1481:	4d 8b e0                                        	mov    r12,r8
 5b2ff0c1484:	4d 8b c3                                        	mov    r8,r11
 5b2ff0c1487:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0c148c:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0c1491:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0c1497:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0c149d:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0c14a2:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0c14aa:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0c14b2:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0c14b8:	e9 ad 02 00 00                                  	jmp    0x5b2ff0c176a
 5b2ff0c14bd:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
 5b2ff0c14c3:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c14c7:	c5 f8 11 85 b0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x250],xmm0
 5b2ff0c14cf:	c5 f8 11 bd d0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x230],xmm7
 5b2ff0c14d7:	c5 78 11 85 90 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x170],xmm8
 5b2ff0c14df:	40 f6 c6 01                                     	test   sil,0x1
 5b2ff0c14e3:	0f 84 9d 00 00 00                               	je     0x5b2ff0c1586
 5b2ff0c14e9:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
 5b2ff0c14f1:	c5 78 28 d6                                     	vmovaps xmm10,xmm6
 5b2ff0c14f5:	c4 c1 78 28 d0                                  	vmovaps xmm2,xmm8
 5b2ff0c14fa:	c5 f8 28 df                                     	vmovaps xmm3,xmm7
 5b2ff0c14fe:	c5 78 28 d8                                     	vmovaps xmm11,xmm0
 5b2ff0c1502:	c4 c1 78 28 ec                                  	vmovaps xmm5,xmm12
 5b2ff0c1507:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c150b:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c150e:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0c1514:	41 8b c9                                        	mov    ecx,r9d
 5b2ff0c1517:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
 5b2ff0c151c:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0c1521:	e8 3a 9d f0 ff                                  	call   0x5b2fefcb260
 5b2ff0c1526:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0c152a:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c152e:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
 5b2ff0c1534:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
 5b2ff0c153c:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
 5b2ff0c1544:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
 5b2ff0c154c:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
 5b2ff0c1554:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
 5b2ff0c155a:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0c155e:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
 5b2ff0c1566:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
 5b2ff0c156e:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
 5b2ff0c1576:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c157e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c1586:	40 f6 c6 02                                     	test   sil,0x2
 5b2ff0c158a:	0f 84 9d 00 00 00                               	je     0x5b2ff0c162d
 5b2ff0c1590:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
 5b2ff0c1598:	c5 7a 16 d6                                     	vmovshdup xmm10,xmm6
 5b2ff0c159c:	c4 c1 7a 16 d0                                  	vmovshdup xmm2,xmm8
 5b2ff0c15a1:	c5 fa 16 df                                     	vmovshdup xmm3,xmm7
 5b2ff0c15a5:	c5 7a 16 d8                                     	vmovshdup xmm11,xmm0
 5b2ff0c15a9:	c4 c1 7a 16 ec                                  	vmovshdup xmm5,xmm12
 5b2ff0c15ae:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c15b2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c15b5:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0c15bb:	41 8b c9                                        	mov    ecx,r9d
 5b2ff0c15be:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
 5b2ff0c15c3:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0c15c8:	e8 93 9c f0 ff                                  	call   0x5b2fefcb260
 5b2ff0c15cd:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0c15d1:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c15d5:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
 5b2ff0c15db:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
 5b2ff0c15e3:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
 5b2ff0c15eb:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
 5b2ff0c15f3:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
 5b2ff0c15fb:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
 5b2ff0c1601:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0c1605:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
 5b2ff0c160d:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
 5b2ff0c1615:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
 5b2ff0c161d:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c1625:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c162d:	40 f6 c6 04                                     	test   sil,0x4
 5b2ff0c1631:	0f 84 a1 00 00 00                               	je     0x5b2ff0c16d8
 5b2ff0c1637:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
 5b2ff0c163f:	c5 79 70 d6 02                                  	vpshufd xmm10,xmm6,0x2
 5b2ff0c1644:	c4 c1 79 70 d0 02                               	vpshufd xmm2,xmm8,0x2
 5b2ff0c164a:	c5 f9 70 df 02                                  	vpshufd xmm3,xmm7,0x2
 5b2ff0c164f:	c5 79 70 d8 02                                  	vpshufd xmm11,xmm0,0x2
 5b2ff0c1654:	c4 c1 79 70 ec 02                               	vpshufd xmm5,xmm12,0x2
 5b2ff0c165a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c165e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c1661:	8b 95 68 ff ff ff                               	mov    edx,DWORD PTR [rbp-0x98]
 5b2ff0c1667:	8b cf                                           	mov    ecx,edi
 5b2ff0c1669:	c4 c1 79 28 ca                                  	vmovapd xmm1,xmm10
 5b2ff0c166e:	c4 c1 79 28 e3                                  	vmovapd xmm4,xmm11
 5b2ff0c1673:	e8 e8 9b f0 ff                                  	call   0x5b2fefcb260
 5b2ff0c1678:	4c 8b 5d d0                                     	mov    r11,QWORD PTR [rbp-0x30]
 5b2ff0c167c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c1680:	8b bd 28 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xd8]
 5b2ff0c1686:	c5 78 10 a5 c0 fd ff ff                         	vmovups xmm12,XMMWORD PTR [rbp-0x240]
 5b2ff0c168e:	c5 f8 10 85 b0 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x250]
 5b2ff0c1696:	c5 f8 10 bd d0 fd ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x230]
 5b2ff0c169e:	c5 78 10 85 90 fe ff ff                         	vmovups xmm8,XMMWORD PTR [rbp-0x170]
 5b2ff0c16a6:	8b b5 20 ff ff ff                               	mov    esi,DWORD PTR [rbp-0xe0]
 5b2ff0c16ac:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0c16b0:	c5 78 10 8d 30 fd ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x2d0]
 5b2ff0c16b8:	c5 f8 10 a5 10 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x2f0]
 5b2ff0c16c0:	c5 f8 10 8d e0 fc ff ff                         	vmovups xmm1,XMMWORD PTR [rbp-0x320]
 5b2ff0c16c8:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c16d0:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c16d8:	40 f6 c6 08                                     	test   sil,0x8
 5b2ff0c16dc:	0f 84 f6 f6 ff ff                               	je     0x5b2ff0c0dd8
 5b2ff0c16e2:	c5 f8 10 b5 f0 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x110]
 5b2ff0c16ea:	c5 c8 c6 f6 03                                  	vshufps xmm6,xmm6,xmm6,0x3
 5b2ff0c16ef:	c4 c1 79 70 d0 03                               	vpshufd xmm2,xmm8,0x3
 5b2ff0c16f5:	c5 f9 70 df 03                                  	vpshufd xmm3,xmm7,0x3
 5b2ff0c16fa:	c5 f8 c6 c0 03                                  	vshufps xmm0,xmm0,xmm0,0x3
 5b2ff0c16ff:	c4 c1 79 70 ec 03                               	vpshufd xmm5,xmm12,0x3
 5b2ff0c1705:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c1709:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c170c:	8b 95 30 ff ff ff                               	mov    edx,DWORD PTR [rbp-0xd0]
 5b2ff0c1712:	8b cf                                           	mov    ecx,edi
 5b2ff0c1714:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0c1718:	c5 f9 28 e0                                     	vmovapd xmm4,xmm0
 5b2ff0c171c:	e8 3f 9b f0 ff                                  	call   0x5b2fefcb260
 5b2ff0c1721:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
 5b2ff0c1725:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0c172a:	4c 8b 65 d8                                     	mov    r12,QWORD PTR [rbp-0x28]
 5b2ff0c172e:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0c1733:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0c1739:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0c173f:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0c1744:	c5 fb 10 bd 28 fe ff ff                         	vmovsd xmm7,QWORD PTR [rbp-0x1d8]
 5b2ff0c174c:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0c1754:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c175c:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c1764:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0c176a:	48 8b bd 40 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0xc0]
 5b2ff0c1771:	48 2b bd 38 ff ff ff                            	sub    rdi,QWORD PTR [rbp-0xc8]
 5b2ff0c1778:	48 8b b5 50 ff ff ff                            	mov    rsi,QWORD PTR [rbp-0xb0]
 5b2ff0c177f:	48 2b b5 48 ff ff ff                            	sub    rsi,QWORD PTR [rbp-0xb8]
 5b2ff0c1786:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
 5b2ff0c178d:	48 2b 85 58 ff ff ff                            	sub    rax,QWORD PTR [rbp-0xa8]
 5b2ff0c1794:	44 8b 9d 68 ff ff ff                            	mov    r11d,DWORD PTR [rbp-0x98]
 5b2ff0c179b:	41 83 c3 02                                     	add    r11d,0x2
 5b2ff0c179f:	44 3b 9d 70 ff ff ff                            	cmp    r11d,DWORD PTR [rbp-0x90]
 5b2ff0c17a6:	0f 8c 54 85 ff ff                               	jl     0x5b2ff0b9d00
 5b2ff0c17ac:	48 8b bd 78 ff ff ff                            	mov    rdi,QWORD PTR [rbp-0x88]
 5b2ff0c17b3:	48 8b b5 38 fc ff ff                            	mov    rsi,QWORD PTR [rbp-0x3c8]
 5b2ff0c17ba:	48 03 f7                                        	add    rsi,rdi
 5b2ff0c17bd:	4c 8b 5d 88                                     	mov    r11,QWORD PTR [rbp-0x78]
 5b2ff0c17c1:	4c 8b bd 10 ff ff ff                            	mov    r15,QWORD PTR [rbp-0xf0]
 5b2ff0c17c8:	4d 03 fb                                        	add    r15,r11
 5b2ff0c17cb:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
 5b2ff0c17cf:	48 8b 9d 80 fc ff ff                            	mov    rbx,QWORD PTR [rbp-0x380]
 5b2ff0c17d6:	48 03 d8                                        	add    rbx,rax
 5b2ff0c17d9:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c17dd:	41 83 c1 02                                     	add    r9d,0x2
 5b2ff0c17e1:	44 3b 4d 98                                     	cmp    r9d,DWORD PTR [rbp-0x68]
 5b2ff0c17e5:	0f 8c 55 84 ff ff                               	jl     0x5b2ff0b9c40
 5b2ff0c17eb:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0c17ee:	81 c7 00 02 00 00                               	add    edi,0x200
 5b2ff0c17f4:	4c 8b 5d e8                                     	mov    r11,QWORD PTR [rbp-0x18]
 5b2ff0c17f8:	41 89 7b 07                                     	mov    DWORD PTR [r11+0x7],edi
 5b2ff0c17fc:	b8 ff ff ff ff                                  	mov    eax,0xffffffff
 5b2ff0c1801:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0c1804:	5d                                              	pop    rbp
 5b2ff0c1805:	c2 10 00                                        	ret    0x10
 5b2ff0c1808:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
 5b2ff0c180f:	0f 84 17 00 00 00                               	je     0x5b2ff0c182c
 5b2ff0c1815:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
 5b2ff0c181b:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
 5b2ff0c1820:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
 5b2ff0c1826:	0f 85 40 00 00 00                               	jne    0x5b2ff0c186c
 5b2ff0c182c:	c5 79 7e df                                     	vmovd  edi,xmm11
 5b2ff0c1830:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
 5b2ff0c1836:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
 5b2ff0c1839:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
 5b2ff0c183c:	41 51                                           	push   r9
 5b2ff0c183e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
 5b2ff0c1841:	41 53                                           	push   r11
 5b2ff0c1843:	57                                              	push   rdi
 5b2ff0c1844:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
 5b2ff0c1847:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
 5b2ff0c184a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c184e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c1851:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0c1854:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
 5b2ff0c1857:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0c185a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
 5b2ff0c185e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0c1862:	e8 b9 9c f0 ff                                  	call   0x5b2fefcb520
 5b2ff0c1867:	e9 df 00 00 00                                  	jmp    0x5b2ff0c194b
 5b2ff0c186c:	c5 79 7e df                                     	vmovd  edi,xmm11
 5b2ff0c1870:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
 5b2ff0c1876:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
 5b2ff0c1879:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
 5b2ff0c187c:	41 51                                           	push   r9
 5b2ff0c187e:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
 5b2ff0c1881:	41 53                                           	push   r11
 5b2ff0c1883:	57                                              	push   rdi
 5b2ff0c1884:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
 5b2ff0c1887:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
 5b2ff0c188a:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c188e:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c1891:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0c1894:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
 5b2ff0c1897:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0c189a:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
 5b2ff0c189e:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0c18a2:	e8 91 9c f0 ff                                  	call   0x5b2fefcb538
 5b2ff0c18a7:	e9 9f 00 00 00                                  	jmp    0x5b2ff0c194b
 5b2ff0c18ac:	83 bd 78 ff ff ff 00                            	cmp    DWORD PTR [rbp-0x88],0x0
 5b2ff0c18b3:	0f 84 17 00 00 00                               	je     0x5b2ff0c18d0
 5b2ff0c18b9:	8b bd 78 ff ff ff                               	mov    edi,DWORD PTR [rbp-0x88]
 5b2ff0c18bf:	45 8b 5c 38 24                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x24]
 5b2ff0c18c4:	41 83 7c 38 24 00                               	cmp    DWORD PTR [r8+rdi*1+0x24],0x0
 5b2ff0c18ca:	0f 85 40 00 00 00                               	jne    0x5b2ff0c1910
 5b2ff0c18d0:	c5 79 7e df                                     	vmovd  edi,xmm11
 5b2ff0c18d4:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
 5b2ff0c18da:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
 5b2ff0c18dd:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
 5b2ff0c18e0:	41 51                                           	push   r9
 5b2ff0c18e2:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
 5b2ff0c18e5:	41 53                                           	push   r11
 5b2ff0c18e7:	57                                              	push   rdi
 5b2ff0c18e8:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
 5b2ff0c18eb:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
 5b2ff0c18ee:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c18f2:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c18f5:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0c18f8:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
 5b2ff0c18fb:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0c18fe:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
 5b2ff0c1902:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0c1906:	e8 35 9c f0 ff                                  	call   0x5b2fefcb540
 5b2ff0c190b:	e9 3b 00 00 00                                  	jmp    0x5b2ff0c194b
 5b2ff0c1910:	c5 79 7e df                                     	vmovd  edi,xmm11
 5b2ff0c1914:	c4 43 79 16 db 01                               	vpextrd r11d,xmm11,0x1
 5b2ff0c191a:	ff 75 88                                        	push   QWORD PTR [rbp-0x78]
 5b2ff0c191d:	ff 75 90                                        	push   QWORD PTR [rbp-0x70]
 5b2ff0c1920:	41 51                                           	push   r9
 5b2ff0c1922:	ff 75 98                                        	push   QWORD PTR [rbp-0x68]
 5b2ff0c1925:	41 53                                           	push   r11
 5b2ff0c1927:	57                                              	push   rdi
 5b2ff0c1928:	ff 75 a0                                        	push   QWORD PTR [rbp-0x60]
 5b2ff0c192b:	ff 75 a8                                        	push   QWORD PTR [rbp-0x58]
 5b2ff0c192e:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c1932:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c1935:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0c1938:	8b 4d b8                                        	mov    ecx,DWORD PTR [rbp-0x48]
 5b2ff0c193b:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0c193e:	44 8b 4d 18                                     	mov    r9d,DWORD PTR [rbp+0x18]
 5b2ff0c1942:	c5 f9 28 ce                                     	vmovapd xmm1,xmm6
 5b2ff0c1946:	e8 fd 9b f0 ff                                  	call   0x5b2fefcb548
 5b2ff0c194b:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0c194f:	48 8b 7d d0                                     	mov    rdi,QWORD PTR [rbp-0x30]
 5b2ff0c1953:	45 8b 5c 38 58                                  	mov    r11d,DWORD PTR [r8+rdi*1+0x58]
 5b2ff0c1958:	41 bb ff ff ff ff                               	mov    r11d,0xffffffff
 5b2ff0c195e:	41 83 7c 38 58 00                               	cmp    DWORD PTR [r8+rdi*1+0x58],0x0
 5b2ff0c1964:	41 0f 45 c3                                     	cmovne eax,r11d
 5b2ff0c1968:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0c196c:	41 8d bb 00 02 00 00                            	lea    edi,[r11+0x200]
 5b2ff0c1973:	4c 8b 65 e8                                     	mov    r12,QWORD PTR [rbp-0x18]
 5b2ff0c1977:	41 89 7c 24 07                                  	mov    DWORD PTR [r12+0x7],edi
 5b2ff0c197c:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0c197f:	5d                                              	pop    rbp
 5b2ff0c1980:	c2 10 00                                        	ret    0x10
 5b2ff0c1983:	43 8b 7c 20 58                                  	mov    edi,DWORD PTR [r8+r12*1+0x58]
 5b2ff0c1988:	bf 01 00 00 00                                  	mov    edi,0x1
 5b2ff0c198d:	41 bf ff ff ff ff                               	mov    r15d,0xffffffff
 5b2ff0c1993:	43 83 7c 20 58 00                               	cmp    DWORD PTR [r8+r12*1+0x58],0x0
 5b2ff0c1999:	41 0f 45 ff                                     	cmovne edi,r15d
 5b2ff0c199d:	45 8d 83 00 02 00 00                            	lea    r8d,[r11+0x200]
 5b2ff0c19a4:	44 89 41 07                                     	mov    DWORD PTR [rcx+0x7],r8d
 5b2ff0c19a8:	8b c7                                           	mov    eax,edi
 5b2ff0c19aa:	48 8b e5                                        	mov    rsp,rbp
 5b2ff0c19ad:	5d                                              	pop    rbp
 5b2ff0c19ae:	c2 10 00                                        	ret    0x10
 5b2ff0c19b1:	41 b8 80 00 00 00                               	mov    r8d,0x80
 5b2ff0c19b7:	41 d1 f8                                        	sar    r8d,1
 5b2ff0c19ba:	4d 63 c0                                        	movsxd r8,r8d
 5b2ff0c19bd:	48 89 45 c8                                     	mov    QWORD PTR [rbp-0x38],rax
 5b2ff0c19c1:	48 89 55 c0                                     	mov    QWORD PTR [rbp-0x40],rdx
 5b2ff0c19c5:	48 89 7d b8                                     	mov    QWORD PTR [rbp-0x48],rdi
 5b2ff0c19c9:	48 89 5d b0                                     	mov    QWORD PTR [rbp-0x50],rbx
 5b2ff0c19cd:	c5 f8 11 85 40 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x2c0],xmm0
 5b2ff0c19d5:	4c 89 4d a8                                     	mov    QWORD PTR [rbp-0x58],r9
 5b2ff0c19d9:	49 8b c0                                        	mov    rax,r8
 5b2ff0c19dc:	e8 4f c5 f0 ff                                  	call   0x5b2fefcdf30
 5b2ff0c19e1:	48 8b 75 f0                                     	mov    rsi,QWORD PTR [rbp-0x10]
 5b2ff0c19e5:	8b 45 c8                                        	mov    eax,DWORD PTR [rbp-0x38]
 5b2ff0c19e8:	8b 55 c0                                        	mov    edx,DWORD PTR [rbp-0x40]
 5b2ff0c19eb:	8b 7d b8                                        	mov    edi,DWORD PTR [rbp-0x48]
 5b2ff0c19ee:	8b 5d b0                                        	mov    ebx,DWORD PTR [rbp-0x50]
 5b2ff0c19f1:	c5 f8 10 85 40 fd ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x2c0]
 5b2ff0c19f9:	44 8b 4d a8                                     	mov    r9d,DWORD PTR [rbp-0x58]
 5b2ff0c19fd:	e9 5c 75 ff ff                                  	jmp    0x5b2ff0b8f5e
 5b2ff0c1a02:	e8 39 c5 f0 ff                                  	call   0x5b2fefcdf40
 5b2ff0c1a07:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0c1a0c:	44 8b 4d a0                                     	mov    r9d,DWORD PTR [rbp-0x60]
 5b2ff0c1a10:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0c1a15:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0c1a1b:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0c1a21:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0c1a26:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
 5b2ff0c1a2e:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0c1a36:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c1a3e:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c1a46:	e9 21 82 ff ff                                  	jmp    0x5b2ff0b9c6c
 5b2ff0c1a4b:	e8 f0 c4 f0 ff                                  	call   0x5b2fefcdf40
 5b2ff0c1a50:	c5 fb 10 75 80                                  	vmovsd xmm6,QWORD PTR [rbp-0x80]
 5b2ff0c1a55:	44 8b 85 68 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0x98]
 5b2ff0c1a5c:	48 8b 85 60 ff ff ff                            	mov    rax,QWORD PTR [rbp-0xa0]
 5b2ff0c1a63:	c4 41 29 76 d2                                  	vpcmpeqd xmm10,xmm10,xmm10
 5b2ff0c1a68:	c4 c1 29 72 f2 19                               	vpslld xmm10,xmm10,0x19
 5b2ff0c1a6e:	c4 c1 29 72 d2 02                               	vpsrld xmm10,xmm10,0x2
 5b2ff0c1a74:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0c1a79:	48 8b bd f8 fc ff ff                            	mov    rdi,QWORD PTR [rbp-0x308]
 5b2ff0c1a80:	c5 7b 10 8d 28 fe ff ff                         	vmovsd xmm9,QWORD PTR [rbp-0x1d8]
 5b2ff0c1a88:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0c1a90:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c1a98:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c1aa0:	4c 8b 9d 08 ff ff ff                            	mov    r11,QWORD PTR [rbp-0xf8]
 5b2ff0c1aa7:	41 b9 0f 00 00 00                               	mov    r9d,0xf
 5b2ff0c1aad:	e9 8a 82 ff ff                                  	jmp    0x5b2ff0b9d3c
 5b2ff0c1ab2:	c5 f8 11 85 80 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x180],xmm0
 5b2ff0c1aba:	48 89 bd 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],rdi
 5b2ff0c1ac1:	e8 7a c4 f0 ff                                  	call   0x5b2fefcdf40
 5b2ff0c1ac6:	44 8b 45 e0                                     	mov    r8d,DWORD PTR [rbp-0x20]
 5b2ff0c1aca:	48 8b 75 d0                                     	mov    rsi,QWORD PTR [rbp-0x30]
 5b2ff0c1ace:	c5 fb 10 4d 80                                  	vmovsd xmm1,QWORD PTR [rbp-0x80]
 5b2ff0c1ad3:	44 8b 5d a0                                     	mov    r11d,DWORD PTR [rbp-0x60]
 5b2ff0c1ad7:	8b 9d 68 ff ff ff                               	mov    ebx,DWORD PTR [rbp-0x98]
 5b2ff0c1add:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0c1ae1:	c5 c1 76 ff                                     	vpcmpeqd xmm7,xmm7,xmm7
 5b2ff0c1ae5:	c5 c1 72 f7 19                                  	vpslld xmm7,xmm7,0x19
 5b2ff0c1aea:	c5 c1 72 d7 02                                  	vpsrld xmm7,xmm7,0x2
 5b2ff0c1aef:	c4 41 38 57 c0                                  	vxorps xmm8,xmm8,xmm8
 5b2ff0c1af4:	4c 8b 8d 10 fe ff ff                            	mov    r9,QWORD PTR [rbp-0x1f0]
 5b2ff0c1afb:	48 8b 85 00 fe ff ff                            	mov    rax,QWORD PTR [rbp-0x200]
 5b2ff0c1b02:	4c 8b a5 e8 fd ff ff                            	mov    r12,QWORD PTR [rbp-0x218]
 5b2ff0c1b09:	c5 f8 10 85 80 fe ff ff                         	vmovups xmm0,XMMWORD PTR [rbp-0x180]
 5b2ff0c1b11:	8b bd 08 fe ff ff                               	mov    edi,DWORD PTR [rbp-0x1f8]
 5b2ff0c1b17:	c5 fb 10 b5 28 fe ff ff                         	vmovsd xmm6,QWORD PTR [rbp-0x1d8]
 5b2ff0c1b1f:	c5 7b 10 a5 e0 fd ff ff                         	vmovsd xmm12,QWORD PTR [rbp-0x220]
 5b2ff0c1b27:	c5 7b 10 ad 38 fe ff ff                         	vmovsd xmm13,QWORD PTR [rbp-0x1c8]
 5b2ff0c1b2f:	c5 7b 10 b5 18 fe ff ff                         	vmovsd xmm14,QWORD PTR [rbp-0x1e8]
 5b2ff0c1b37:	e9 13 b0 ff ff                                  	jmp    0x5b2ff0bcb4f
 5b2ff0c1b3c:	e8 ff c3 f0 ff                                  	call   0x5b2fefcdf40
 5b2ff0c1b41:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0c1b45:	8b 45 18                                        	mov    eax,DWORD PTR [rbp+0x18]
 5b2ff0c1b48:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0c1b4c:	48 8b bd 60 fd ff ff                            	mov    rdi,QWORD PTR [rbp-0x2a0]
 5b2ff0c1b53:	c5 f8 10 95 40 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x2c0]
 5b2ff0c1b5b:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
 5b2ff0c1b63:	c5 78 10 8d 60 fe ff ff                         	vmovups xmm9,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c1b6b:	c5 f8 10 9d 40 fe ff ff                         	vmovups xmm3,XMMWORD PTR [rbp-0x1c0]
 5b2ff0c1b73:	c5 78 10 9d f0 fd ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x210]
 5b2ff0c1b7b:	c5 f8 10 bd 10 fc ff ff                         	vmovups xmm7,XMMWORD PTR [rbp-0x3f0]
 5b2ff0c1b83:	c5 f8 10 ad d0 fd ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x230]
 5b2ff0c1b8b:	c5 f8 10 a5 c0 fd ff ff                         	vmovups xmm4,XMMWORD PTR [rbp-0x240]
 5b2ff0c1b93:	44 8b 85 18 ff ff ff                            	mov    r8d,DWORD PTR [rbp-0xe8]
 5b2ff0c1b9a:	8b 9d a8 fd ff ff                               	mov    ebx,DWORD PTR [rbp-0x258]
 5b2ff0c1ba0:	44 8b bd 98 fd ff ff                            	mov    r15d,DWORD PTR [rbp-0x268]
 5b2ff0c1ba7:	44 8b a5 40 fc ff ff                            	mov    r12d,DWORD PTR [rbp-0x3c0]
 5b2ff0c1bae:	e9 a5 b4 ff ff                                  	jmp    0x5b2ff0bd058
 5b2ff0c1bb3:	e8 88 c3 f0 ff                                  	call   0x5b2fefcdf40
 5b2ff0c1bb8:	8b 7d e0                                        	mov    edi,DWORD PTR [rbp-0x20]
 5b2ff0c1bbb:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0c1bbf:	8b 8d c8 fe ff ff                               	mov    ecx,DWORD PTR [rbp-0x138]
 5b2ff0c1bc5:	44 8b 85 b8 fe ff ff                            	mov    r8d,DWORD PTR [rbp-0x148]
 5b2ff0c1bcc:	e9 8e c4 ff ff                                  	jmp    0x5b2ff0be05f
 5b2ff0c1bd1:	e8 6a c3 f0 ff                                  	call   0x5b2fefcdf40
 5b2ff0c1bd6:	44 8b 5d e0                                     	mov    r11d,DWORD PTR [rbp-0x20]
 5b2ff0c1bda:	48 8b 55 d8                                     	mov    rdx,QWORD PTR [rbp-0x28]
 5b2ff0c1bde:	4c 8b bd 60 fd ff ff                            	mov    r15,QWORD PTR [rbp-0x2a0]
 5b2ff0c1be5:	4c 8b 85 20 ff ff ff                            	mov    r8,QWORD PTR [rbp-0xe0]
 5b2ff0c1bec:	8b bd 18 ff ff ff                               	mov    edi,DWORD PTR [rbp-0xe8]
 5b2ff0c1bf2:	e9 f1 d8 ff ff                                  	jmp    0x5b2ff0bf4e8
 5b2ff0c1bf7:	c5 f8 11 b5 70 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x190],xmm6
 5b2ff0c1bff:	c5 78 11 9d 60 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1a0],xmm11
 5b2ff0c1c07:	c5 f8 11 ad 40 fe ff ff                         	vmovups XMMWORD PTR [rbp-0x1c0],xmm5
 5b2ff0c1c0f:	c5 f8 11 95 f0 fd ff ff                         	vmovups XMMWORD PTR [rbp-0x210],xmm2
 5b2ff0c1c17:	4c 89 9d 08 fe ff ff                            	mov    QWORD PTR [rbp-0x1f8],r11
 5b2ff0c1c1e:	48 89 b5 a0 fd ff ff                            	mov    QWORD PTR [rbp-0x260],rsi
 5b2ff0c1c25:	48 89 85 b0 fe ff ff                            	mov    QWORD PTR [rbp-0x150],rax
 5b2ff0c1c2c:	e8 0f c3 f0 ff                                  	call   0x5b2fefcdf40
 5b2ff0c1c31:	44 8b 4d e0                                     	mov    r9d,DWORD PTR [rbp-0x20]
 5b2ff0c1c35:	4c 8b 45 d8                                     	mov    r8,QWORD PTR [rbp-0x28]
 5b2ff0c1c39:	c5 f8 10 b5 70 fe ff ff                         	vmovups xmm6,XMMWORD PTR [rbp-0x190]
 5b2ff0c1c41:	c5 78 10 9d 60 fe ff ff                         	vmovups xmm11,XMMWORD PTR [rbp-0x1a0]
 5b2ff0c1c49:	c5 f8 10 ad 40 fe ff ff                         	vmovups xmm5,XMMWORD PTR [rbp-0x1c0]
 5b2ff0c1c51:	c5 f8 10 95 f0 fd ff ff                         	vmovups xmm2,XMMWORD PTR [rbp-0x210]
 5b2ff0c1c59:	8b 85 b0 fe ff ff                               	mov    eax,DWORD PTR [rbp-0x150]
 5b2ff0c1c5f:	8b 9d 30 fe ff ff                               	mov    ebx,DWORD PTR [rbp-0x1d0]
 5b2ff0c1c65:	44 8b 9d 08 fe ff ff                            	mov    r11d,DWORD PTR [rbp-0x1f8]
 5b2ff0c1c6c:	8b b5 a0 fd ff ff                               	mov    esi,DWORD PTR [rbp-0x260]
 5b2ff0c1c72:	44 8b a5 78 fd ff ff                            	mov    r12d,DWORD PTR [rbp-0x288]
 5b2ff0c1c79:	8b bd 70 fd ff ff                               	mov    edi,DWORD PTR [rbp-0x290]
 5b2ff0c1c7f:	c5 78 10 ad 50 fd ff ff                         	vmovups xmm13,XMMWORD PTR [rbp-0x2b0]
 5b2ff0c1c87:	e9 0f e6 ff ff                                  	jmp    0x5b2ff0c029b
 5b2ff0c1c8c:	8b c8                                           	mov    ecx,eax
 5b2ff0c1c8e:	33 d2                                           	xor    edx,edx
 5b2ff0c1c90:	e9 6e e6 ff ff                                  	jmp    0x5b2ff0c0303
 5b2ff0c1c95:	33 d2                                           	xor    edx,edx
 5b2ff0c1c97:	44 8b c8                                        	mov    r9d,eax
 5b2ff0c1c9a:	e9 82 e6 ff ff                                  	jmp    0x5b2ff0c0321
 5b2ff0c1c9f:	33 d2                                           	xor    edx,edx
 5b2ff0c1ca1:	8b c8                                           	mov    ecx,eax
 5b2ff0c1ca3:	e9 c3 e6 ff ff                                  	jmp    0x5b2ff0c036b
 5b2ff0c1ca8:	33 d2                                           	xor    edx,edx
 5b2ff0c1caa:	44 8b f8                                        	mov    r15d,eax
 5b2ff0c1cad:	e9 d7 e6 ff ff                                  	jmp    0x5b2ff0c0389
 5b2ff0c1cb2:	e8 99 bf f0 ff                                  	call   0x5b2fefcdc50
 5b2ff0c1cb7:	e8 94 bf f0 ff                                  	call   0x5b2fefcdc50
 5b2ff0c1cbc:	90                                              	nop
 5b2ff0c1cbd:	0f 1f 00                                        	nop    DWORD PTR [rax]
 5b2ff0c1cc0:	c0 0d 0c ff b2 05 00                            	ror    BYTE PTR [rip+0x5b2ff0c],0x0        # 0x5b304bf1bd3
 5b2ff0c1cc7:	00 ae 0d 0c ff b2                               	add    BYTE PTR [rsi-0x4d00f3f3],ch
 5b2ff0c1ccd:	05 00 00 9c 0d                                  	add    eax,0xd9c0000
 5b2ff0c1cd2:	0c ff                                           	or     al,0xff
 5b2ff0c1cd4:	b2 05                                           	mov    dl,0x5
 5b2ff0c1cd6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1cd8:	8a 0d 0c ff b2 05                               	mov    cl,BYTE PTR [rip+0x5b2ff0c]        # 0x5b304bf1bea
 5b2ff0c1cde:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1ce0:	78 0d                                           	js     0x5b2ff0c1cef
 5b2ff0c1ce2:	0c ff                                           	or     al,0xff
 5b2ff0c1ce4:	b2 05                                           	mov    dl,0x5
 5b2ff0c1ce6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1ce8:	66 0d 0c ff                                     	or     ax,0xff0c
 5b2ff0c1cec:	b2 05                                           	mov    dl,0x5
 5b2ff0c1cee:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1cf0:	54                                              	push   rsp
 5b2ff0c1cf1:	0d 0c ff b2 05                                  	or     eax,0x5b2ff0c
 5b2ff0c1cf6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1cf8:	4a 0b 0c ff                                     	or     rcx,QWORD PTR [rdi+r15*8]
 5b2ff0c1cfc:	b2 05                                           	mov    dl,0x5
 5b2ff0c1cfe:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d00:	45 0b 0c ff                                     	or     r9d,DWORD PTR [r15+rdi*8]
 5b2ff0c1d04:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d06:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d08:	3b 0b                                           	cmp    ecx,DWORD PTR [rbx]
 5b2ff0c1d0a:	0c ff                                           	or     al,0xff
 5b2ff0c1d0c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d0e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d10:	31 0b                                           	xor    DWORD PTR [rbx],ecx
 5b2ff0c1d12:	0c ff                                           	or     al,0xff
 5b2ff0c1d14:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d16:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d18:	26 0b 0c ff                                     	es or  ecx,DWORD PTR [rdi+rdi*8]
 5b2ff0c1d1c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d1e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d20:	1c 0b                                           	sbb    al,0xb
 5b2ff0c1d22:	0c ff                                           	or     al,0xff
 5b2ff0c1d24:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d26:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d28:	11 0b                                           	adc    DWORD PTR [rbx],ecx
 5b2ff0c1d2a:	0c ff                                           	or     al,0xff
 5b2ff0c1d2c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d2e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d30:	d7                                              	xlat   BYTE PTR ds:[rbx]
 5b2ff0c1d31:	fd                                              	std
 5b2ff0c1d32:	0b ff                                           	or     edi,edi
 5b2ff0c1d34:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d36:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d38:	cc                                              	int3
 5b2ff0c1d39:	fd                                              	std
 5b2ff0c1d3a:	0b ff                                           	or     edi,edi
 5b2ff0c1d3c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d3e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d40:	c1 fd 0b                                        	sar    ebp,0xb
 5b2ff0c1d43:	ff b2 05 00 00 b6                               	push   QWORD PTR [rdx-0x49fffffb]
 5b2ff0c1d49:	fd                                              	std
 5b2ff0c1d4a:	0b ff                                           	or     edi,edi
 5b2ff0c1d4c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d4e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d50:	ac                                              	lods   al,BYTE PTR ds:[rsi]
 5b2ff0c1d51:	fd                                              	std
 5b2ff0c1d52:	0b ff                                           	or     edi,edi
 5b2ff0c1d54:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d56:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d58:	a1 fd 0b ff b2 05 00 00 97                      	movabs eax,ds:0x97000005b2ff0bfd
 5b2ff0c1d61:	fd                                              	std
 5b2ff0c1d62:	0b ff                                           	or     edi,edi
 5b2ff0c1d64:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d66:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d68:	b7 cc                                           	mov    bh,0xcc
 5b2ff0c1d6a:	0b ff                                           	or     edi,edi
 5b2ff0c1d6c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d6e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d70:	ac                                              	lods   al,BYTE PTR ds:[rsi]
 5b2ff0c1d71:	cc                                              	int3
 5b2ff0c1d72:	0b ff                                           	or     edi,edi
 5b2ff0c1d74:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d76:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d78:	96                                              	xchg   esi,eax
 5b2ff0c1d79:	cc                                              	int3
 5b2ff0c1d7a:	0b ff                                           	or     edi,edi
 5b2ff0c1d7c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d7e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d80:	86 cc                                           	xchg   ah,cl
 5b2ff0c1d82:	0b ff                                           	or     edi,edi
 5b2ff0c1d84:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d86:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d88:	76 cc                                           	jbe    0x5b2ff0c1d56
 5b2ff0c1d8a:	0b ff                                           	or     edi,edi
 5b2ff0c1d8c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d8e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d90:	60                                              	(bad)
 5b2ff0c1d91:	cc                                              	int3
 5b2ff0c1d92:	0b ff                                           	or     edi,edi
 5b2ff0c1d94:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d96:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1d98:	50                                              	push   rax
 5b2ff0c1d99:	cc                                              	int3
 5b2ff0c1d9a:	0b ff                                           	or     edi,edi
 5b2ff0c1d9c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1d9e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1da0:	d0 cc                                           	ror    ah,1
 5b2ff0c1da2:	0b ff                                           	or     edi,edi
 5b2ff0c1da4:	b2 05                                           	mov    dl,0x5
 5b2ff0c1da6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1da8:	17                                              	(bad)
 5b2ff0c1da9:	c0 0b ff                                        	ror    BYTE PTR [rbx],0xff
 5b2ff0c1dac:	b2 05                                           	mov    dl,0x5
 5b2ff0c1dae:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1db0:	cb                                              	retf
 5b2ff0c1db1:	c1 0b ff                                        	ror    DWORD PTR [rbx],0xff
 5b2ff0c1db4:	b2 05                                           	mov    dl,0x5
 5b2ff0c1db6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1db8:	b5 c1                                           	mov    ch,0xc1
 5b2ff0c1dba:	0b ff                                           	or     edi,edi
 5b2ff0c1dbc:	b2 05                                           	mov    dl,0x5
 5b2ff0c1dbe:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1dc0:	a6                                              	cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
 5b2ff0c1dc1:	c1 0b ff                                        	ror    DWORD PTR [rbx],0xff
 5b2ff0c1dc4:	b2 05                                           	mov    dl,0x5
 5b2ff0c1dc6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1dc8:	96                                              	xchg   esi,eax
 5b2ff0c1dc9:	c1 0b ff                                        	ror    DWORD PTR [rbx],0xff
 5b2ff0c1dcc:	b2 05                                           	mov    dl,0x5
 5b2ff0c1dce:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1dd0:	80 c1 0b                                        	add    cl,0xb
 5b2ff0c1dd3:	ff b2 05 00 00 70                               	push   QWORD PTR [rdx+0x70000005]
 5b2ff0c1dd9:	c1 0b ff                                        	ror    DWORD PTR [rbx],0xff
 5b2ff0c1ddc:	b2 05                                           	mov    dl,0x5
 5b2ff0c1dde:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1de0:	d5 c1 0b                                        	{rex2 0xc1} ud2
 5b2ff0c1de3:	ff b2 05 00 00 0a                               	push   QWORD PTR [rdx+0xa000005]
 5b2ff0c1de9:	c0 0b ff                                        	ror    BYTE PTR [rbx],0xff
 5b2ff0c1dec:	b2 05                                           	mov    dl,0x5
 5b2ff0c1dee:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1df0:	51                                              	push   rcx
 5b2ff0c1df1:	b7 0b                                           	mov    bh,0xb
 5b2ff0c1df3:	ff b2 05 00 00 3b                               	push   QWORD PTR [rdx+0x3b000005]
 5b2ff0c1df9:	b7 0b                                           	mov    bh,0xb
 5b2ff0c1dfb:	ff b2 05 00 00 2c                               	push   QWORD PTR [rdx+0x2c000005]
 5b2ff0c1e01:	b7 0b                                           	mov    bh,0xb
 5b2ff0c1e03:	ff b2 05 00 00 1c                               	push   QWORD PTR [rdx+0x1c000005]
 5b2ff0c1e09:	b7 0b                                           	mov    bh,0xb
 5b2ff0c1e0b:	ff b2 05 00 00 06                               	push   QWORD PTR [rdx+0x6000005]
 5b2ff0c1e11:	b7 0b                                           	mov    bh,0xb
 5b2ff0c1e13:	ff b2 05 00 00 f6                               	push   QWORD PTR [rdx-0x9fffffb]
 5b2ff0c1e19:	b6 0b                                           	mov    dh,0xb
 5b2ff0c1e1b:	ff b2 05 00 00 5b                               	push   QWORD PTR [rdx+0x5b000005]
 5b2ff0c1e21:	b7 0b                                           	mov    bh,0xb
 5b2ff0c1e23:	ff b2 05 00 00 83                               	push   QWORD PTR [rdx-0x7cfffffb]
 5b2ff0c1e29:	b5 0b                                           	mov    ch,0xb
 5b2ff0c1e2b:	ff b2 05 00 00 c6                               	push   QWORD PTR [rdx-0x39fffffb]
 5b2ff0c1e31:	ac                                              	lods   al,BYTE PTR ds:[rsi]
 5b2ff0c1e32:	0b ff                                           	or     edi,edi
 5b2ff0c1e34:	b2 05                                           	mov    dl,0x5
 5b2ff0c1e36:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1e38:	b0 ac                                           	mov    al,0xac
 5b2ff0c1e3a:	0b ff                                           	or     edi,edi
 5b2ff0c1e3c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1e3e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1e40:	a1 ac 0b ff b2 05 00 00 91                      	movabs eax,ds:0x91000005b2ff0bac
 5b2ff0c1e49:	ac                                              	lods   al,BYTE PTR ds:[rsi]
 5b2ff0c1e4a:	0b ff                                           	or     edi,edi
 5b2ff0c1e4c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1e4e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1e50:	7b ac                                           	jnp    0x5b2ff0c1dfe
 5b2ff0c1e52:	0b ff                                           	or     edi,edi
 5b2ff0c1e54:	b2 05                                           	mov    dl,0x5
 5b2ff0c1e56:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1e58:	6b ac 0b ff b2 05 00 00                         	imul   ebp,DWORD PTR [rbx+rcx*1+0x5b2ff],0x0
 5b2ff0c1e60:	d0 ac 0b ff b2 05 00                            	shr    BYTE PTR [rbx+rcx*1+0x5b2ff],1
 5b2ff0c1e67:	00 9f aa 0b ff b2                               	add    BYTE PTR [rdi-0x4d00f456],bl
 5b2ff0c1e6d:	05 00 00 ea a1                                  	add    eax,0xa1ea0000
 5b2ff0c1e72:	0b ff                                           	or     edi,edi
 5b2ff0c1e74:	b2 05                                           	mov    dl,0x5
 5b2ff0c1e76:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1e78:	d5 a1 0b                                        	{rex2 0xa1} ud2
 5b2ff0c1e7b:	ff b2 05 00 00 c6                               	push   QWORD PTR [rdx-0x39fffffb]
 5b2ff0c1e81:	a1 0b ff b2 05 00 00 b7 a1                      	movabs eax,ds:0xa1b7000005b2ff0b
 5b2ff0c1e8a:	0b ff                                           	or     edi,edi
 5b2ff0c1e8c:	b2 05                                           	mov    dl,0x5
 5b2ff0c1e8e:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1e90:	a2 a1 0b ff b2 05 00 00 93                      	movabs ds:0x93000005b2ff0ba1,al
 5b2ff0c1e99:	a1 0b ff b2 05 00 00 f4 a1                      	movabs eax,ds:0xa1f4000005b2ff0b
 5b2ff0c1ea2:	0b ff                                           	or     edi,edi
 5b2ff0c1ea4:	b2 05                                           	mov    dl,0x5
 5b2ff0c1ea6:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1ea8:	81 00 00 00 1c 00                               	add    DWORD PTR [rax],0x1c0000
 5b2ff0c1eae:	00 00                                           	add    BYTE PTR [rax],al
 5b2ff0c1eb0:	91                                              	xchg   ecx,eax
 5b2ff0c1eb1:	01 d7                                           	add    edi,edx
 5b2ff0c1eb3:	03 05 8f 94 02 d7                               	add    eax,DWORD PTR [rip+0xffffffffd702948f]        # 0x5b2d60eb348
 5b2ff0c1eb9:	03 05 26 d7 03 05                               	add    eax,DWORD PTR [rip+0x503d726]        # 0x5b3040ff5e5
 5b2ff0c1ebf:	b0 05                                           	mov    al,0x5
 5b2ff0c1ec1:	d7                                              	xlat   BYTE PTR ds:[rbx]
 5b2ff0c1ec2:	03 05 00 00 00 00                               	add    eax,DWORD PTR [rip+0x0]        # 0x5b2ff0c1ec8
	...
